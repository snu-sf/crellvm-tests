; ModuleID = './MultiSource.Applications.SIBsim4/1.sim4b1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._options_t = type { i8*, %struct._junction_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._hash_env_t = type { i8**, i8*, i32, i32*, i32, i32 }
%struct._seq_t = type { i8*, i8*, i8*, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { i8*, i32, i32, i32, [4096 x i8] }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { i8** }
%struct._result_t = type { %struct._edit_script_list*, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._edit_script_list = type { %struct._edit_script_list*, %struct._edit_script*, i32, i32, i32, i32, i32 }
%struct._edit_script = type { %struct._edit_script*, i32, i8 }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.anon = type { i32, i32, i32 }
%struct._splice_score_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._hash_node_t = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@options = external global %struct._options_t, align 8
@encoding = common global [128 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [26 x i8] c"%u-%u  (%u-%u)   %u%% ==\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%u-%u  (%u-%u)   %u%%\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @SIM4(%struct._hash_env_t* %he, %struct._seq_t* %seq2, %struct._collec_t* %res) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %seq2.addr = alloca %struct._seq_t*, align 8
  %res.addr = alloca %struct._collec_t*, align 8
  %mCol = alloca %struct._collec_t, align 8
  %tem_eCol = alloca %struct._collec_t, align 8
  %align_status = alloca i32, align 4
  %curRes = alloca i32, align 4
  %r = alloca %struct._result_t*, align 8
  %eCol = alloca %struct._collec_t*, align 8
  %st = alloca %struct._sim4_stats*, align 8
  %e18 = alloca %struct._exon_t*, align 8
  %i = alloca i32, align 4
  %tem_he = alloca %struct._hash_env_t, align 8
  %j = alloca i32, align 4
  %diff = alloca i32, align 4
  %u = alloca i32, align 4
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %cost = alloca i32, align 4
  %e175 = alloca %struct._exon_t*, align 8
  %i182 = alloca i32, align 4
  %tem_he194 = alloca %struct._hash_env_t, align 8
  %j265 = alloca i32, align 4
  %diff300 = alloca i32, align 4
  %cost313 = alloca i32, align 4
  %I314 = alloca i32, align 4
  %J315 = alloca i32, align 4
  %i359 = alloca i32, align 4
  %cur = alloca %struct._exon_t*, align 8
  %next = alloca %struct._exon_t*, align 8
  %diff374 = alloca i32, align 4
  %tem_he388 = alloca %struct._hash_env_t, align 8
  %cost392 = alloca i32, align 4
  %i513 = alloca i32, align 4
  %e519 = alloca %struct._exon_t*, align 8
  %i556 = alloca i32, align 4
  %e563 = alloca %struct._exon_t*, align 8
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store %struct._seq_t* %seq2, %struct._seq_t** %seq2.addr, align 8
  store %struct._collec_t* %res, %struct._collec_t** %res.addr, align 8
  %0 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %0, i32 0, i32 2
  %1 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len1 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %2, i32 0, i32 5
  %3 = load i32, i32* %len1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @init_col(%struct._collec_t* %mCol, i32 5)
  %4 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %5 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %5, i32 0, i32 2
  %6 = load i8*, i8** %seq, align 8
  %7 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len3 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 5
  %8 = load i32, i32* %len3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %10 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  call void @exon_cores(%struct._hash_env_t* %4, i8* %6, i32 %8, i32 1, i32 1, i32 %9, %struct._collec_t* %mCol, %struct._collec_t* %10, %struct._collec_t* null)
  call void @init_col(%struct._collec_t* %tem_eCol, i32 0)
  store i32 0, i32* %curRes, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.597, %if.end
  %11 = load i32, i32* %curRes, align 4
  %12 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %12, i32 0, i32 1
  %13 = load i32, i32* %nb, align 4
  %cmp4 = icmp ult i32 %11, %13
  br i1 %cmp4, label %for.body, label %for.end.599

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %curRes, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %15, i32 0, i32 0
  %result = bitcast %union._collec_elt_t* %e to %struct._result_t***
  %16 = load %struct._result_t**, %struct._result_t*** %result, align 8
  %arrayidx = getelementptr inbounds %struct._result_t*, %struct._result_t** %16, i64 %idxprom
  %17 = load %struct._result_t*, %struct._result_t** %arrayidx, align 8
  store %struct._result_t* %17, %struct._result_t** %r, align 8
  %18 = load %struct._result_t*, %struct._result_t** %r, align 8
  %eCol5 = getelementptr inbounds %struct._result_t, %struct._result_t* %18, i32 0, i32 1
  store %struct._collec_t* %eCol5, %struct._collec_t** %eCol, align 8
  %19 = load %struct._result_t*, %struct._result_t** %r, align 8
  %st6 = getelementptr inbounds %struct._result_t, %struct._result_t* %19, i32 0, i32 5
  store %struct._sim4_stats* %st6, %struct._sim4_stats** %st, align 8
  %20 = load %struct._sim4_stats*, %struct._sim4_stats** %st, align 8
  %polyA_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %20, i32 0, i32 1
  store i32 0, i32* %polyA_cut, align 4
  %21 = load %struct._sim4_stats*, %struct._sim4_stats** %st, align 8
  %polyT_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %21, i32 0, i32 2
  store i32 0, i32* %polyT_cut, align 4
  %22 = load %struct._result_t*, %struct._result_t** %r, align 8
  %23 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq7 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %23, i32 0, i32 1
  %24 = load i8*, i8** %seq7, align 8
  %25 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq8 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %25, i32 0, i32 2
  %26 = load i8*, i8** %seq8, align 8
  call void @kill_polyA(%struct._result_t* %22, i8* %24, i8* %26)
  %27 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %27, i32 0, i32 1
  %28 = load i32, i32* %nb9, align 4
  %cmp10 = icmp eq i32 %28, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %for.inc.597

if.end.12:                                        ; preds = %for.body
  %29 = load %struct._sim4_stats*, %struct._sim4_stats** %st, align 8
  %polyT_cut13 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %29, i32 0, i32 2
  %30 = load i32, i32* %polyT_cut13, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.end.161, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.12
  %31 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e14 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %31, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e14 to %struct._exon_t***
  %32 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx15 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %32, i64 0
  %33 = load %struct._exon_t*, %struct._exon_t** %arrayidx15, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %33, i32 0, i32 1
  %34 = load i32, i32* %from2, align 4
  %cmp16 = icmp ugt i32 %34, 1
  br i1 %cmp16, label %if.then.17, label %if.end.161

if.then.17:                                       ; preds = %land.lhs.true
  %35 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %35, i32 0, i32 0
  %exon20 = bitcast %union._collec_elt_t* %e19 to %struct._exon_t***
  %36 = load %struct._exon_t**, %struct._exon_t*** %exon20, align 8
  %arrayidx21 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %36, i64 0
  %37 = load %struct._exon_t*, %struct._exon_t** %arrayidx21, align 8
  store %struct._exon_t* %37, %struct._exon_t** %e18, align 8
  store i32 0, i32* %i, align 4
  %38 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from222 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %38, i32 0, i32 1
  %39 = load i32, i32* %from222, align 4
  %sub = sub i32 %39, 1
  %cmp23 = icmp ugt i32 %sub, 60
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.59

land.lhs.true.24:                                 ; preds = %if.then.17
  %40 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %40, i32 0, i32 0
  %41 = load i32, i32* %from1, align 4
  %sub25 = sub i32 %41, 1
  %42 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart = getelementptr inbounds %struct._result_t, %struct._result_t* %42, i32 0, i32 2
  %43 = load i32, i32* %dStart, align 4
  %cmp26 = icmp ugt i32 %sub25, %43
  br i1 %cmp26, label %if.then.27, label %if.end.59

if.then.27:                                       ; preds = %land.lhs.true.24
  %44 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %44, i32 0, i32 5
  %45 = load i32, i32* %W, align 4
  %cmp28 = icmp ugt i32 10, %45
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %46 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W29 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %46, i32 0, i32 5
  %47 = load i32, i32* %W29, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ 10, %cond.false ]
  %48 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq30 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %48, i32 0, i32 2
  %49 = load i8*, i8** %seq30, align 8
  %50 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from231 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 1
  %51 = load i32, i32* %from231, align 4
  %sub32 = sub i32 %51, 1
  call void @init_hash_env(%struct._hash_env_t* %tem_he, i32 %cond, i8* %49, i32 %sub32)
  call void @bld_table(%struct._hash_env_t* %tem_he)
  %52 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq33 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %52, i32 0, i32 1
  %53 = load i8*, i8** %seq33, align 8
  %54 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart34 = getelementptr inbounds %struct._result_t, %struct._result_t* %54, i32 0, i32 2
  %55 = load i32, i32* %dStart34, align 4
  %idx.ext = zext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  %56 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %56, i32 0, i32 0
  %57 = load i32, i32* %from135, align 4
  %58 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart36 = getelementptr inbounds %struct._result_t, %struct._result_t* %58, i32 0, i32 2
  %59 = load i32, i32* %dStart36, align 4
  %sub37 = sub i32 %57, %59
  %sub38 = sub i32 %sub37, 1
  %60 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart39 = getelementptr inbounds %struct._result_t, %struct._result_t* %60, i32 0, i32 2
  %61 = load i32, i32* %dStart39, align 4
  %add = add i32 %61, 1
  %62 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  call void @exon_cores(%struct._hash_env_t* %tem_he, i8* %add.ptr, i32 %sub38, i32 1, i32 %add, i32 %62, %struct._collec_t* %mCol, %struct._collec_t* null, %struct._collec_t* %tem_eCol)
  call void @free_hash_env(%struct._hash_env_t* %tem_he)
  %nb40 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %63 = load i32, i32* %nb40, align 4
  %cmp41 = icmp ugt i32 %63, 0
  br i1 %cmp41, label %if.then.42, label %if.end.58

if.then.42:                                       ; preds = %cond.end
  call void @swap_seqs(%struct._collec_t* %tem_eCol)
  %nb43 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %64 = load i32, i32* %nb43, align 4
  %sub44 = sub i32 %64, 1
  %idxprom45 = zext i32 %sub44 to i64
  %e46 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon47 = bitcast %union._collec_elt_t* %e46 to %struct._exon_t***
  %65 = load %struct._exon_t**, %struct._exon_t*** %exon47, align 8
  %arrayidx48 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %65, i64 %idxprom45
  %66 = load %struct._exon_t*, %struct._exon_t** %arrayidx48, align 8
  %67 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq49 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %67, i32 0, i32 1
  %68 = load i8*, i8** %seq49, align 8
  %69 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len50 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %69, i32 0, i32 2
  %70 = load i32, i32* %len50, align 4
  %71 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq51 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %71, i32 0, i32 2
  %72 = load i8*, i8** %seq51, align 8
  %73 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len52 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %73, i32 0, i32 5
  %74 = load i32, i32* %len52, align 4
  call void @grow_exon_right(%struct._exon_t* %66, i8* %68, i32 %70, i8* %72, i32 %74)
  %75 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %76 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W53 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %76, i32 0, i32 5
  %77 = load i32, i32* %W53, align 4
  call void @merge(%struct._collec_t* %75, %struct._collec_t* %tem_eCol, i32 0, i32 %77)
  %nb54 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  store i32 0, i32* %nb54, align 4
  %78 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e55 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %78, i32 0, i32 0
  %exon56 = bitcast %union._collec_elt_t* %e55 to %struct._exon_t***
  %79 = load %struct._exon_t**, %struct._exon_t*** %exon56, align 8
  %arrayidx57 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %79, i64 0
  %80 = load %struct._exon_t*, %struct._exon_t** %arrayidx57, align 8
  store %struct._exon_t* %80, %struct._exon_t** %e18, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.42, %cond.end
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.24, %if.then.17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.59
  %81 = load i32, i32* %i, align 4
  %82 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb60 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %82, i32 0, i32 1
  %83 = load i32, i32* %nb60, align 4
  %cmp61 = icmp ult i32 %81, %83
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %84 = load i32, i32* %i, align 4
  %idxprom62 = zext i32 %84 to i64
  %85 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e63 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %85, i32 0, i32 0
  %exon64 = bitcast %union._collec_elt_t* %e63 to %struct._exon_t***
  %86 = load %struct._exon_t**, %struct._exon_t*** %exon64, align 8
  %arrayidx65 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %86, i64 %idxprom62
  %87 = load %struct._exon_t*, %struct._exon_t** %arrayidx65, align 8
  %88 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq66 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %88, i32 0, i32 2
  %89 = load i8*, i8** %seq66, align 8
  %call = call i32 @is_polyAT_exon_p(%struct._exon_t* %87, i8* %89)
  %tobool67 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %90 = phi i1 [ false, %while.cond ], [ %tobool67, %land.rhs ]
  br i1 %90, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %91 = load i32, i32* %i, align 4
  %add68 = add i32 %91, 1
  store i32 %add68, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %92 = load i32, i32* %i, align 4
  %cmp69 = icmp ugt i32 %92, 0
  br i1 %cmp69, label %if.then.70, label %if.end.95

if.then.70:                                       ; preds = %while.end
  store i32 0, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.then.70
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %i, align 4
  %cmp72 = icmp ult i32 %93, %94
  br i1 %cmp72, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.71
  %95 = load i32, i32* %j, align 4
  %idxprom74 = zext i32 %95 to i64
  %96 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e75 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %96, i32 0, i32 0
  %exon76 = bitcast %union._collec_elt_t* %e75 to %struct._exon_t***
  %97 = load %struct._exon_t**, %struct._exon_t*** %exon76, align 8
  %arrayidx77 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %97, i64 %idxprom74
  %98 = load %struct._exon_t*, %struct._exon_t** %arrayidx77, align 8
  %99 = bitcast %struct._exon_t* %98 to i8*
  call void @free(i8* %99) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %100 = load i32, i32* %j, align 4
  %inc = add i32 %100, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  %101 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e78 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %101, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e78 to i8***
  %102 = load i8**, i8*** %elt, align 8
  %103 = bitcast i8** %102 to i8*
  %104 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e79 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %104, i32 0, i32 0
  %elt80 = bitcast %union._collec_elt_t* %e79 to i8***
  %105 = load i8**, i8*** %elt80, align 8
  %106 = load i32, i32* %i, align 4
  %idx.ext81 = zext i32 %106 to i64
  %add.ptr82 = getelementptr inbounds i8*, i8** %105, i64 %idx.ext81
  %107 = bitcast i8** %add.ptr82 to i8*
  %108 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb83 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %108, i32 0, i32 1
  %109 = load i32, i32* %nb83, align 4
  %110 = load i32, i32* %i, align 4
  %sub84 = sub i32 %109, %110
  %conv = zext i32 %sub84 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %103, i8* %107, i64 %mul, i32 8, i1 false)
  %111 = load i32, i32* %i, align 4
  %112 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb85 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %112, i32 0, i32 1
  %113 = load i32, i32* %nb85, align 4
  %sub86 = sub i32 %113, %111
  store i32 %sub86, i32* %nb85, align 4
  %114 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb87 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %114, i32 0, i32 1
  %115 = load i32, i32* %nb87, align 4
  %cmp88 = icmp eq i32 %115, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.end
  br label %for.inc.597

if.end.91:                                        ; preds = %for.end
  %116 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e92 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %116, i32 0, i32 0
  %exon93 = bitcast %union._collec_elt_t* %e92 to %struct._exon_t***
  %117 = load %struct._exon_t**, %struct._exon_t*** %exon93, align 8
  %arrayidx94 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %117, i64 0
  %118 = load %struct._exon_t*, %struct._exon_t** %arrayidx94, align 8
  store %struct._exon_t* %118, %struct._exon_t** %e18, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.91, %while.end
  %119 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from296 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %119, i32 0, i32 1
  %120 = load i32, i32* %from296, align 4
  %sub97 = sub i32 %120, 1
  %cmp98 = icmp ugt i32 %sub97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.160

if.then.100:                                      ; preds = %if.end.95
  %121 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2101 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %121, i32 0, i32 1
  %122 = load i32, i32* %from2101, align 4
  %sub102 = sub i32 %122, 1
  %cmp103 = icmp ugt i32 %sub102, 250
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %if.then.100
  br label %cond.end.109

cond.false.106:                                   ; preds = %if.then.100
  %123 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2107 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %123, i32 0, i32 1
  %124 = load i32, i32* %from2107, align 4
  %sub108 = sub i32 %124, 1
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.105
  %cond110 = phi i32 [ 250, %cond.true.105 ], [ %sub108, %cond.false.106 ]
  store i32 %cond110, i32* %diff, align 4
  %125 = load i32, i32* %diff, align 4
  %mul111 = mul nsw i32 4, %125
  %126 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1112 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %126, i32 0, i32 0
  %127 = load i32, i32* %from1112, align 4
  %sub113 = sub nsw i32 %127, 1
  %cmp114 = icmp sgt i32 %mul111, %sub113
  br i1 %cmp114, label %cond.true.116, label %cond.false.119

cond.true.116:                                    ; preds = %cond.end.109
  %128 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1117 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %128, i32 0, i32 0
  %129 = load i32, i32* %from1117, align 4
  %sub118 = sub nsw i32 %129, 1
  br label %cond.end.121

cond.false.119:                                   ; preds = %cond.end.109
  %130 = load i32, i32* %diff, align 4
  %mul120 = mul nsw i32 4, %130
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.116
  %cond122 = phi i32 [ %sub118, %cond.true.116 ], [ %mul120, %cond.false.119 ]
  store i32 %cond122, i32* %u, align 4
  %131 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq123 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %131, i32 0, i32 2
  %132 = load i8*, i8** %seq123, align 8
  %133 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2124 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %133, i32 0, i32 1
  %134 = load i32, i32* %from2124, align 4
  %idx.ext125 = zext i32 %134 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %132, i64 %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr126, i64 -1
  %135 = load i32, i32* %diff, align 4
  %idx.ext128 = sext i32 %135 to i64
  %idx.neg = sub i64 0, %idx.ext128
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr127, i64 %idx.neg
  %136 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq130 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %136, i32 0, i32 1
  %137 = load i8*, i8** %seq130, align 8
  %138 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1131 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %138, i32 0, i32 0
  %139 = load i32, i32* %from1131, align 4
  %idx.ext132 = zext i32 %139 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %137, i64 %idx.ext132
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr133, i64 -1
  %140 = load i32, i32* %u, align 4
  %idx.ext135 = sext i32 %140 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr134, i64 %idx.neg136
  %141 = load i32, i32* %diff, align 4
  %142 = load i32, i32* %u, align 4
  %143 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2138 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %143, i32 0, i32 1
  %144 = load i32, i32* %from2138, align 4
  %sub139 = sub i32 %144, 1
  %145 = load i32, i32* %diff, align 4
  %sub140 = sub i32 %sub139, %145
  %146 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %146, i32 0, i32 0
  %147 = load i32, i32* %from1141, align 4
  %sub142 = sub i32 %147, 1
  %148 = load i32, i32* %u, align 4
  %sub143 = sub i32 %sub142, %148
  %149 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W144 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %149, i32 0, i32 5
  %150 = load i32, i32* %W144, align 4
  %call145 = call i32 @extend_bw(i8* %add.ptr129, i8* %add.ptr137, i32 %141, i32 %142, i32 %sub140, i32 %sub143, i32* %I, i32* %J, i32 %150)
  store i32 %call145, i32* %cost, align 4
  %151 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2146 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %151, i32 0, i32 1
  %152 = load i32, i32* %from2146, align 4
  %sub147 = sub nsw i32 %152, 1
  %153 = load i32, i32* %I, align 4
  %sub148 = sub nsw i32 %sub147, %153
  %154 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  %mul149 = mul nsw i32 %sub148, %154
  %155 = load i32, i32* %cost, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  %mul150 = mul nsw i32 %155, %156
  %add151 = add nsw i32 %mul149, %mul150
  %cmp152 = icmp sge i32 %add151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.159

if.then.154:                                      ; preds = %cond.end.121
  %157 = load i32, i32* %I, align 4
  %add155 = add nsw i32 %157, 1
  %158 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from2156 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %158, i32 0, i32 1
  store i32 %add155, i32* %from2156, align 4
  %159 = load i32, i32* %J, align 4
  %add157 = add nsw i32 %159, 1
  %160 = load %struct._exon_t*, %struct._exon_t** %e18, align 8
  %from1158 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %160, i32 0, i32 0
  store i32 %add157, i32* %from1158, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.154, %cond.end.121
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.95
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true, %if.end.12
  %161 = load %struct._sim4_stats*, %struct._sim4_stats** %st, align 8
  %polyA_cut162 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %161, i32 0, i32 1
  %162 = load i32, i32* %polyA_cut162, align 4
  %tobool163 = icmp ne i32 %162, 0
  br i1 %tobool163, label %if.end.354, label %land.lhs.true.164

land.lhs.true.164:                                ; preds = %if.end.161
  %163 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb165 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %163, i32 0, i32 1
  %164 = load i32, i32* %nb165, align 4
  %sub166 = sub i32 %164, 1
  %idxprom167 = zext i32 %sub166 to i64
  %165 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e168 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %165, i32 0, i32 0
  %exon169 = bitcast %union._collec_elt_t* %e168 to %struct._exon_t***
  %166 = load %struct._exon_t**, %struct._exon_t*** %exon169, align 8
  %arrayidx170 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %166, i64 %idxprom167
  %167 = load %struct._exon_t*, %struct._exon_t** %arrayidx170, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %167, i32 0, i32 3
  %168 = load i32, i32* %to2, align 4
  %169 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len171 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %169, i32 0, i32 5
  %170 = load i32, i32* %len171, align 4
  %cmp172 = icmp ult i32 %168, %170
  br i1 %cmp172, label %if.then.174, label %if.end.354

if.then.174:                                      ; preds = %land.lhs.true.164
  %171 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb176 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %171, i32 0, i32 1
  %172 = load i32, i32* %nb176, align 4
  %sub177 = sub i32 %172, 1
  %idxprom178 = zext i32 %sub177 to i64
  %173 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e179 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %173, i32 0, i32 0
  %exon180 = bitcast %union._collec_elt_t* %e179 to %struct._exon_t***
  %174 = load %struct._exon_t**, %struct._exon_t*** %exon180, align 8
  %arrayidx181 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %174, i64 %idxprom178
  %175 = load %struct._exon_t*, %struct._exon_t** %arrayidx181, align 8
  store %struct._exon_t* %175, %struct._exon_t** %e175, align 8
  store i32 0, i32* %i182, align 4
  %176 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len183 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %176, i32 0, i32 5
  %177 = load i32, i32* %len183, align 4
  %178 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2184 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %178, i32 0, i32 3
  %179 = load i32, i32* %to2184, align 4
  %sub185 = sub i32 %177, %179
  %cmp186 = icmp ugt i32 %sub185, 60
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.242

land.lhs.true.188:                                ; preds = %if.then.174
  %180 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %180, i32 0, i32 2
  %181 = load i32, i32* %to1, align 4
  %182 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart189 = getelementptr inbounds %struct._result_t, %struct._result_t* %182, i32 0, i32 2
  %183 = load i32, i32* %dStart189, align 4
  %184 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dLen = getelementptr inbounds %struct._result_t, %struct._result_t* %184, i32 0, i32 3
  %185 = load i32, i32* %dLen, align 4
  %add190 = add i32 %183, %185
  %cmp191 = icmp ult i32 %181, %add190
  br i1 %cmp191, label %if.then.193, label %if.end.242

if.then.193:                                      ; preds = %land.lhs.true.188
  %186 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W195 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %186, i32 0, i32 5
  %187 = load i32, i32* %W195, align 4
  %cmp196 = icmp ugt i32 10, %187
  br i1 %cmp196, label %cond.true.198, label %cond.false.200

cond.true.198:                                    ; preds = %if.then.193
  %188 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W199 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %188, i32 0, i32 5
  %189 = load i32, i32* %W199, align 4
  br label %cond.end.201

cond.false.200:                                   ; preds = %if.then.193
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.200, %cond.true.198
  %cond202 = phi i32 [ %189, %cond.true.198 ], [ 10, %cond.false.200 ]
  %190 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq203 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %190, i32 0, i32 2
  %191 = load i8*, i8** %seq203, align 8
  %192 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2204 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %192, i32 0, i32 3
  %193 = load i32, i32* %to2204, align 4
  %idx.ext205 = zext i32 %193 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %191, i64 %idx.ext205
  %194 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len207 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %194, i32 0, i32 5
  %195 = load i32, i32* %len207, align 4
  %196 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2208 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %196, i32 0, i32 3
  %197 = load i32, i32* %to2208, align 4
  %sub209 = sub i32 %195, %197
  call void @init_hash_env(%struct._hash_env_t* %tem_he194, i32 %cond202, i8* %add.ptr206, i32 %sub209)
  call void @bld_table(%struct._hash_env_t* %tem_he194)
  %198 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq210 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %198, i32 0, i32 1
  %199 = load i8*, i8** %seq210, align 8
  %200 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %200, i32 0, i32 2
  %201 = load i32, i32* %to1211, align 4
  %idx.ext212 = zext i32 %201 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %199, i64 %idx.ext212
  %202 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart214 = getelementptr inbounds %struct._result_t, %struct._result_t* %202, i32 0, i32 2
  %203 = load i32, i32* %dStart214, align 4
  %204 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dLen215 = getelementptr inbounds %struct._result_t, %struct._result_t* %204, i32 0, i32 3
  %205 = load i32, i32* %dLen215, align 4
  %add216 = add i32 %203, %205
  %206 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1217 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %206, i32 0, i32 2
  %207 = load i32, i32* %to1217, align 4
  %sub218 = sub i32 %add216, %207
  %208 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2219 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %208, i32 0, i32 3
  %209 = load i32, i32* %to2219, align 4
  %add220 = add i32 %209, 1
  %210 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1221 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %210, i32 0, i32 2
  %211 = load i32, i32* %to1221, align 4
  %add222 = add i32 %211, 1
  %212 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  call void @exon_cores(%struct._hash_env_t* %tem_he194, i8* %add.ptr213, i32 %sub218, i32 %add220, i32 %add222, i32 %212, %struct._collec_t* %mCol, %struct._collec_t* null, %struct._collec_t* %tem_eCol)
  call void @free_hash_env(%struct._hash_env_t* %tem_he194)
  %nb223 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %213 = load i32, i32* %nb223, align 4
  %cmp224 = icmp ugt i32 %213, 0
  br i1 %cmp224, label %if.then.226, label %if.end.241

if.then.226:                                      ; preds = %cond.end.201
  call void @swap_seqs(%struct._collec_t* %tem_eCol)
  %e227 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon228 = bitcast %union._collec_elt_t* %e227 to %struct._exon_t***
  %214 = load %struct._exon_t**, %struct._exon_t*** %exon228, align 8
  %arrayidx229 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %214, i64 0
  %215 = load %struct._exon_t*, %struct._exon_t** %arrayidx229, align 8
  %216 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq230 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %216, i32 0, i32 1
  %217 = load i8*, i8** %seq230, align 8
  %218 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq231 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %218, i32 0, i32 2
  %219 = load i8*, i8** %seq231, align 8
  call void @grow_exon_left(%struct._exon_t* %215, i8* %217, i8* %219)
  %220 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %221 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb232 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %221, i32 0, i32 1
  %222 = load i32, i32* %nb232, align 4
  %223 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W233 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %223, i32 0, i32 5
  %224 = load i32, i32* %W233, align 4
  call void @merge(%struct._collec_t* %220, %struct._collec_t* %tem_eCol, i32 %222, i32 %224)
  %nb234 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  store i32 0, i32* %nb234, align 4
  %225 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb235 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %225, i32 0, i32 1
  %226 = load i32, i32* %nb235, align 4
  %sub236 = sub i32 %226, 1
  %idxprom237 = zext i32 %sub236 to i64
  %227 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e238 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %227, i32 0, i32 0
  %exon239 = bitcast %union._collec_elt_t* %e238 to %struct._exon_t***
  %228 = load %struct._exon_t**, %struct._exon_t*** %exon239, align 8
  %arrayidx240 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %228, i64 %idxprom237
  %229 = load %struct._exon_t*, %struct._exon_t** %arrayidx240, align 8
  store %struct._exon_t* %229, %struct._exon_t** %e175, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.226, %cond.end.201
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %land.lhs.true.188, %if.then.174
  br label %while.cond.243

while.cond.243:                                   ; preds = %while.body.259, %if.end.242
  %230 = load i32, i32* %i182, align 4
  %231 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb244 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %231, i32 0, i32 1
  %232 = load i32, i32* %nb244, align 4
  %cmp245 = icmp ult i32 %230, %232
  br i1 %cmp245, label %land.rhs.247, label %land.end.258

land.rhs.247:                                     ; preds = %while.cond.243
  %233 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb248 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %233, i32 0, i32 1
  %234 = load i32, i32* %nb248, align 4
  %235 = load i32, i32* %i182, align 4
  %sub249 = sub i32 %234, %235
  %sub250 = sub i32 %sub249, 1
  %idxprom251 = zext i32 %sub250 to i64
  %236 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e252 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %236, i32 0, i32 0
  %exon253 = bitcast %union._collec_elt_t* %e252 to %struct._exon_t***
  %237 = load %struct._exon_t**, %struct._exon_t*** %exon253, align 8
  %arrayidx254 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %237, i64 %idxprom251
  %238 = load %struct._exon_t*, %struct._exon_t** %arrayidx254, align 8
  %239 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq255 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %239, i32 0, i32 2
  %240 = load i8*, i8** %seq255, align 8
  %call256 = call i32 @is_polyAT_exon_p(%struct._exon_t* %238, i8* %240)
  %tobool257 = icmp ne i32 %call256, 0
  br label %land.end.258

land.end.258:                                     ; preds = %land.rhs.247, %while.cond.243
  %241 = phi i1 [ false, %while.cond.243 ], [ %tobool257, %land.rhs.247 ]
  br i1 %241, label %while.body.259, label %while.end.261

while.body.259:                                   ; preds = %land.end.258
  %242 = load i32, i32* %i182, align 4
  %add260 = add i32 %242, 1
  store i32 %add260, i32* %i182, align 4
  br label %while.cond.243

while.end.261:                                    ; preds = %land.end.258
  %243 = load i32, i32* %i182, align 4
  %cmp262 = icmp ugt i32 %243, 0
  br i1 %cmp262, label %if.then.264, label %if.end.293

if.then.264:                                      ; preds = %while.end.261
  %244 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb266 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %244, i32 0, i32 1
  %245 = load i32, i32* %nb266, align 4
  %246 = load i32, i32* %i182, align 4
  %sub267 = sub i32 %245, %246
  store i32 %sub267, i32* %j265, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.277, %if.then.264
  %247 = load i32, i32* %j265, align 4
  %248 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb269 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %248, i32 0, i32 1
  %249 = load i32, i32* %nb269, align 4
  %cmp270 = icmp ult i32 %247, %249
  br i1 %cmp270, label %for.body.272, label %for.end.279

for.body.272:                                     ; preds = %for.cond.268
  %250 = load i32, i32* %j265, align 4
  %idxprom273 = zext i32 %250 to i64
  %251 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e274 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %251, i32 0, i32 0
  %exon275 = bitcast %union._collec_elt_t* %e274 to %struct._exon_t***
  %252 = load %struct._exon_t**, %struct._exon_t*** %exon275, align 8
  %arrayidx276 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %252, i64 %idxprom273
  %253 = load %struct._exon_t*, %struct._exon_t** %arrayidx276, align 8
  %254 = bitcast %struct._exon_t* %253 to i8*
  call void @free(i8* %254) #2
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.272
  %255 = load i32, i32* %j265, align 4
  %inc278 = add i32 %255, 1
  store i32 %inc278, i32* %j265, align 4
  br label %for.cond.268

for.end.279:                                      ; preds = %for.cond.268
  %256 = load i32, i32* %i182, align 4
  %257 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb280 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %257, i32 0, i32 1
  %258 = load i32, i32* %nb280, align 4
  %sub281 = sub i32 %258, %256
  store i32 %sub281, i32* %nb280, align 4
  %259 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb282 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %259, i32 0, i32 1
  %260 = load i32, i32* %nb282, align 4
  %cmp283 = icmp eq i32 %260, 0
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %for.end.279
  br label %for.inc.597

if.end.286:                                       ; preds = %for.end.279
  %261 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb287 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %261, i32 0, i32 1
  %262 = load i32, i32* %nb287, align 4
  %sub288 = sub i32 %262, 1
  %idxprom289 = zext i32 %sub288 to i64
  %263 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e290 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %263, i32 0, i32 0
  %exon291 = bitcast %union._collec_elt_t* %e290 to %struct._exon_t***
  %264 = load %struct._exon_t**, %struct._exon_t*** %exon291, align 8
  %arrayidx292 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %264, i64 %idxprom289
  %265 = load %struct._exon_t*, %struct._exon_t** %arrayidx292, align 8
  store %struct._exon_t* %265, %struct._exon_t** %e175, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.286, %while.end.261
  %266 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len294 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %266, i32 0, i32 5
  %267 = load i32, i32* %len294, align 4
  %268 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2295 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %268, i32 0, i32 3
  %269 = load i32, i32* %to2295, align 4
  %sub296 = sub i32 %267, %269
  %cmp297 = icmp ugt i32 %sub296, 0
  br i1 %cmp297, label %if.then.299, label %if.end.353

if.then.299:                                      ; preds = %if.end.293
  %270 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len301 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %270, i32 0, i32 5
  %271 = load i32, i32* %len301, align 4
  %272 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2302 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %272, i32 0, i32 3
  %273 = load i32, i32* %to2302, align 4
  %sub303 = sub i32 %271, %273
  %cmp304 = icmp ugt i32 %sub303, 250
  br i1 %cmp304, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %if.then.299
  br label %cond.end.311

cond.false.307:                                   ; preds = %if.then.299
  %274 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len308 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %274, i32 0, i32 5
  %275 = load i32, i32* %len308, align 4
  %276 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2309 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %276, i32 0, i32 3
  %277 = load i32, i32* %to2309, align 4
  %sub310 = sub i32 %275, %277
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.false.307, %cond.true.306
  %cond312 = phi i32 [ 250, %cond.true.306 ], [ %sub310, %cond.false.307 ]
  store i32 %cond312, i32* %diff300, align 4
  %278 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq316 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %278, i32 0, i32 2
  %279 = load i8*, i8** %seq316, align 8
  %280 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2317 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %280, i32 0, i32 3
  %281 = load i32, i32* %to2317, align 4
  %idx.ext318 = zext i32 %281 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %279, i64 %idx.ext318
  %282 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq320 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %282, i32 0, i32 1
  %283 = load i8*, i8** %seq320, align 8
  %284 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1321 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %284, i32 0, i32 2
  %285 = load i32, i32* %to1321, align 4
  %idx.ext322 = zext i32 %285 to i64
  %add.ptr323 = getelementptr inbounds i8, i8* %283, i64 %idx.ext322
  %286 = load i32, i32* %diff300, align 4
  %287 = load i32, i32* %diff300, align 4
  %mul324 = mul nsw i32 4, %287
  %288 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len325 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %288, i32 0, i32 2
  %289 = load i32, i32* %len325, align 4
  %290 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1326 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %290, i32 0, i32 2
  %291 = load i32, i32* %to1326, align 4
  %sub327 = sub i32 %289, %291
  %cmp328 = icmp sgt i32 %mul324, %sub327
  br i1 %cmp328, label %cond.true.330, label %cond.false.334

cond.true.330:                                    ; preds = %cond.end.311
  %292 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len331 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %292, i32 0, i32 2
  %293 = load i32, i32* %len331, align 4
  %294 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1332 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %294, i32 0, i32 2
  %295 = load i32, i32* %to1332, align 4
  %sub333 = sub i32 %293, %295
  br label %cond.end.336

cond.false.334:                                   ; preds = %cond.end.311
  %296 = load i32, i32* %diff300, align 4
  %mul335 = mul nsw i32 4, %296
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.334, %cond.true.330
  %cond337 = phi i32 [ %sub333, %cond.true.330 ], [ %mul335, %cond.false.334 ]
  %297 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2338 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %297, i32 0, i32 3
  %298 = load i32, i32* %to2338, align 4
  %299 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1339 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %299, i32 0, i32 2
  %300 = load i32, i32* %to1339, align 4
  %301 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W340 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %301, i32 0, i32 5
  %302 = load i32, i32* %W340, align 4
  %call341 = call i32 @extend_fw(i8* %add.ptr319, i8* %add.ptr323, i32 %286, i32 %cond337, i32 %298, i32 %300, i32* %I314, i32* %J315, i32 %302)
  store i32 %call341, i32* %cost313, align 4
  %303 = load i32, i32* %I314, align 4
  %304 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2342 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %304, i32 0, i32 3
  %305 = load i32, i32* %to2342, align 4
  %sub343 = sub nsw i32 %303, %305
  %306 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  %mul344 = mul nsw i32 %sub343, %306
  %307 = load i32, i32* %cost313, align 4
  %308 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  %mul345 = mul nsw i32 %307, %308
  %add346 = add nsw i32 %mul344, %mul345
  %cmp347 = icmp sge i32 %add346, 0
  br i1 %cmp347, label %if.then.349, label %if.end.352

if.then.349:                                      ; preds = %cond.end.336
  %309 = load i32, i32* %I314, align 4
  %310 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to2350 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %310, i32 0, i32 3
  store i32 %309, i32* %to2350, align 4
  %311 = load i32, i32* %J315, align 4
  %312 = load %struct._exon_t*, %struct._exon_t** %e175, align 8
  %to1351 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %312, i32 0, i32 2
  store i32 %311, i32* %to1351, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.349, %cond.end.336
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.293
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %land.lhs.true.164, %if.end.161
  %313 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb355 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %313, i32 0, i32 1
  %314 = load i32, i32* %nb355, align 4
  %cmp356 = icmp ugt i32 %314, 1
  br i1 %cmp356, label %if.then.358, label %if.end.505

if.then.358:                                      ; preds = %if.end.354
  store i32 1, i32* %i359, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.502, %if.then.358
  %315 = load i32, i32* %i359, align 4
  %316 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb361 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %316, i32 0, i32 1
  %317 = load i32, i32* %nb361, align 4
  %cmp362 = icmp ult i32 %315, %317
  br i1 %cmp362, label %for.body.364, label %for.end.504

for.body.364:                                     ; preds = %for.cond.360
  %318 = load i32, i32* %i359, align 4
  %sub365 = sub i32 %318, 1
  %idxprom366 = zext i32 %sub365 to i64
  %319 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e367 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %319, i32 0, i32 0
  %exon368 = bitcast %union._collec_elt_t* %e367 to %struct._exon_t***
  %320 = load %struct._exon_t**, %struct._exon_t*** %exon368, align 8
  %arrayidx369 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %320, i64 %idxprom366
  %321 = load %struct._exon_t*, %struct._exon_t** %arrayidx369, align 8
  store %struct._exon_t* %321, %struct._exon_t** %cur, align 8
  %322 = load i32, i32* %i359, align 4
  %idxprom370 = zext i32 %322 to i64
  %323 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e371 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %323, i32 0, i32 0
  %exon372 = bitcast %union._collec_elt_t* %e371 to %struct._exon_t***
  %324 = load %struct._exon_t**, %struct._exon_t*** %exon372, align 8
  %arrayidx373 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %324, i64 %idxprom370
  %325 = load %struct._exon_t*, %struct._exon_t** %arrayidx373, align 8
  store %struct._exon_t* %325, %struct._exon_t** %next, align 8
  %326 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2375 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %326, i32 0, i32 1
  %327 = load i32, i32* %from2375, align 4
  %328 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2376 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %328, i32 0, i32 3
  %329 = load i32, i32* %to2376, align 4
  %sub377 = sub i32 %327, %329
  %sub378 = sub i32 %sub377, 1
  store i32 %sub378, i32* %diff374, align 4
  %330 = load i32, i32* %diff374, align 4
  %cmp379 = icmp sgt i32 %330, 0
  br i1 %cmp379, label %if.then.381, label %if.end.501

if.then.381:                                      ; preds = %for.body.364
  %331 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1382 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %331, i32 0, i32 0
  %332 = load i32, i32* %from1382, align 4
  %sub383 = sub i32 %332, 1
  %333 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1384 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %333, i32 0, i32 2
  %334 = load i32, i32* %to1384, align 4
  %cmp385 = icmp ugt i32 %sub383, %334
  br i1 %cmp385, label %if.then.387, label %if.end.500

if.then.387:                                      ; preds = %if.then.381
  %335 = load i32, i32* %diff374, align 4
  %cmp389 = icmp sle i32 %335, 500
  br i1 %cmp389, label %if.then.391, label %if.end.452

if.then.391:                                      ; preds = %if.then.387
  %336 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq393 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %336, i32 0, i32 2
  %337 = load i8*, i8** %seq393, align 8
  %338 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2394 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %338, i32 0, i32 3
  %339 = load i32, i32* %to2394, align 4
  %idx.ext395 = zext i32 %339 to i64
  %add.ptr396 = getelementptr inbounds i8, i8* %337, i64 %idx.ext395
  %340 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq397 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %340, i32 0, i32 1
  %341 = load i8*, i8** %seq397, align 8
  %342 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1398 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %342, i32 0, i32 2
  %343 = load i32, i32* %to1398, align 4
  %idx.ext399 = zext i32 %343 to i64
  %add.ptr400 = getelementptr inbounds i8, i8* %341, i64 %idx.ext399
  %344 = load i32, i32* %diff374, align 4
  %345 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1401 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %345, i32 0, i32 0
  %346 = load i32, i32* %from1401, align 4
  %347 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1402 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %347, i32 0, i32 2
  %348 = load i32, i32* %to1402, align 4
  %sub403 = sub i32 %346, %348
  %sub404 = sub i32 %sub403, 1
  %349 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2405 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %349, i32 0, i32 3
  %350 = load i32, i32* %to2405, align 4
  %351 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1406 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %351, i32 0, i32 2
  %352 = load i32, i32* %to1406, align 4
  %353 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W407 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %353, i32 0, i32 5
  %354 = load i32, i32* %W407, align 4
  %call408 = call i32 @greedy(i8* %add.ptr396, i8* %add.ptr400, i32 %344, i32 %sub404, i32 %350, i32 %352, i32 %354, %struct._collec_t* %tem_eCol)
  store i32 %call408, i32* %cost392, align 4
  %nb409 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %355 = load i32, i32* %nb409, align 4
  %cmp410 = icmp ugt i32 %355, 0
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.451

land.lhs.true.412:                                ; preds = %if.then.391
  %356 = load i32, i32* %cost392, align 4
  %conv413 = sitofp i32 %356 to double
  %357 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W414 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %357, i32 0, i32 5
  %358 = load i32, i32* %W414, align 4
  %conv415 = uitofp i32 %358 to double
  %359 = load i32, i32* %diff374, align 4
  %conv416 = sitofp i32 %359 to double
  %mul417 = fmul double 2.000000e-01, %conv416
  %add418 = fadd double %mul417, 1.000000e+00
  %cmp419 = fcmp olt double %conv415, %add418
  br i1 %cmp419, label %cond.true.421, label %cond.false.425

cond.true.421:                                    ; preds = %land.lhs.true.412
  %360 = load i32, i32* %diff374, align 4
  %conv422 = sitofp i32 %360 to double
  %mul423 = fmul double 2.000000e-01, %conv422
  %add424 = fadd double %mul423, 1.000000e+00
  br label %cond.end.428

cond.false.425:                                   ; preds = %land.lhs.true.412
  %361 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W426 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %361, i32 0, i32 5
  %362 = load i32, i32* %W426, align 4
  %conv427 = uitofp i32 %362 to double
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.425, %cond.true.421
  %cond429 = phi double [ %add424, %cond.true.421 ], [ %conv427, %cond.false.425 ]
  %cmp430 = fcmp ole double %conv413, %cond429
  br i1 %cmp430, label %if.then.432, label %if.end.451

if.then.432:                                      ; preds = %cond.end.428
  %e433 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon434 = bitcast %union._collec_elt_t* %e433 to %struct._exon_t***
  %363 = load %struct._exon_t**, %struct._exon_t*** %exon434, align 8
  %arrayidx435 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %363, i64 0
  %364 = load %struct._exon_t*, %struct._exon_t** %arrayidx435, align 8
  %365 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq436 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %365, i32 0, i32 1
  %366 = load i8*, i8** %seq436, align 8
  %367 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq437 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %367, i32 0, i32 2
  %368 = load i8*, i8** %seq437, align 8
  call void @grow_exon_left(%struct._exon_t* %364, i8* %366, i8* %368)
  %nb438 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %369 = load i32, i32* %nb438, align 4
  %sub439 = sub i32 %369, 1
  %idxprom440 = zext i32 %sub439 to i64
  %e441 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon442 = bitcast %union._collec_elt_t* %e441 to %struct._exon_t***
  %370 = load %struct._exon_t**, %struct._exon_t*** %exon442, align 8
  %arrayidx443 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %370, i64 %idxprom440
  %371 = load %struct._exon_t*, %struct._exon_t** %arrayidx443, align 8
  %372 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq444 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %372, i32 0, i32 1
  %373 = load i8*, i8** %seq444, align 8
  %374 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len445 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %374, i32 0, i32 2
  %375 = load i32, i32* %len445, align 4
  %376 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq446 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %376, i32 0, i32 2
  %377 = load i8*, i8** %seq446, align 8
  %378 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len447 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %378, i32 0, i32 5
  %379 = load i32, i32* %len447, align 4
  call void @grow_exon_right(%struct._exon_t* %371, i8* %373, i32 %375, i8* %377, i32 %379)
  %380 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %381 = load i32, i32* %i359, align 4
  %382 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W448 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %382, i32 0, i32 5
  %383 = load i32, i32* %W448, align 4
  call void @merge(%struct._collec_t* %380, %struct._collec_t* %tem_eCol, i32 %381, i32 %383)
  %nb449 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  store i32 0, i32* %nb449, align 4
  %384 = load i32, i32* %i359, align 4
  %sub450 = sub i32 %384, 1
  store i32 %sub450, i32* %i359, align 4
  br label %for.inc.502

if.end.451:                                       ; preds = %cond.end.428, %if.then.391
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.then.387
  %385 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W453 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %385, i32 0, i32 5
  %386 = load i32, i32* %W453, align 4
  %cmp454 = icmp ugt i32 8, %386
  br i1 %cmp454, label %cond.true.456, label %cond.false.458

cond.true.456:                                    ; preds = %if.end.452
  %387 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W457 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %387, i32 0, i32 5
  %388 = load i32, i32* %W457, align 4
  br label %cond.end.459

cond.false.458:                                   ; preds = %if.end.452
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.458, %cond.true.456
  %cond460 = phi i32 [ %388, %cond.true.456 ], [ 8, %cond.false.458 ]
  %389 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq461 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %389, i32 0, i32 1
  %390 = load i8*, i8** %seq461, align 8
  %391 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1462 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %391, i32 0, i32 2
  %392 = load i32, i32* %to1462, align 4
  %idx.ext463 = zext i32 %392 to i64
  %add.ptr464 = getelementptr inbounds i8, i8* %390, i64 %idx.ext463
  %393 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1465 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %393, i32 0, i32 0
  %394 = load i32, i32* %from1465, align 4
  %395 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1466 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %395, i32 0, i32 2
  %396 = load i32, i32* %to1466, align 4
  %sub467 = sub i32 %394, %396
  %sub468 = sub i32 %sub467, 1
  call void @init_hash_env(%struct._hash_env_t* %tem_he388, i32 %cond460, i8* %add.ptr464, i32 %sub468)
  call void @bld_table(%struct._hash_env_t* %tem_he388)
  %397 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq469 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %397, i32 0, i32 2
  %398 = load i8*, i8** %seq469, align 8
  %399 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2470 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %399, i32 0, i32 3
  %400 = load i32, i32* %to2470, align 4
  %idx.ext471 = zext i32 %400 to i64
  %add.ptr472 = getelementptr inbounds i8, i8* %398, i64 %idx.ext471
  %401 = load i32, i32* %diff374, align 4
  %402 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1473 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %402, i32 0, i32 2
  %403 = load i32, i32* %to1473, align 4
  %add474 = add i32 %403, 1
  %404 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2475 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %404, i32 0, i32 3
  %405 = load i32, i32* %to2475, align 4
  %add476 = add i32 %405, 1
  %406 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  call void @exon_cores(%struct._hash_env_t* %tem_he388, i8* %add.ptr472, i32 %401, i32 %add474, i32 %add476, i32 %406, %struct._collec_t* %mCol, %struct._collec_t* null, %struct._collec_t* %tem_eCol)
  call void @free_hash_env(%struct._hash_env_t* %tem_he388)
  %nb477 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %407 = load i32, i32* %nb477, align 4
  %cmp478 = icmp ugt i32 %407, 0
  br i1 %cmp478, label %if.then.480, label %if.end.499

if.then.480:                                      ; preds = %cond.end.459
  %e481 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon482 = bitcast %union._collec_elt_t* %e481 to %struct._exon_t***
  %408 = load %struct._exon_t**, %struct._exon_t*** %exon482, align 8
  %arrayidx483 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %408, i64 0
  %409 = load %struct._exon_t*, %struct._exon_t** %arrayidx483, align 8
  %410 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq484 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %410, i32 0, i32 1
  %411 = load i8*, i8** %seq484, align 8
  %412 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq485 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %412, i32 0, i32 2
  %413 = load i8*, i8** %seq485, align 8
  call void @grow_exon_left(%struct._exon_t* %409, i8* %411, i8* %413)
  %nb486 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  %414 = load i32, i32* %nb486, align 4
  %sub487 = sub i32 %414, 1
  %idxprom488 = zext i32 %sub487 to i64
  %e489 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %exon490 = bitcast %union._collec_elt_t* %e489 to %struct._exon_t***
  %415 = load %struct._exon_t**, %struct._exon_t*** %exon490, align 8
  %arrayidx491 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %415, i64 %idxprom488
  %416 = load %struct._exon_t*, %struct._exon_t** %arrayidx491, align 8
  %417 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq492 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %417, i32 0, i32 1
  %418 = load i8*, i8** %seq492, align 8
  %419 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len493 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %419, i32 0, i32 2
  %420 = load i32, i32* %len493, align 4
  %421 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq494 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %421, i32 0, i32 2
  %422 = load i8*, i8** %seq494, align 8
  %423 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len495 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %423, i32 0, i32 5
  %424 = load i32, i32* %len495, align 4
  call void @grow_exon_right(%struct._exon_t* %416, i8* %418, i32 %420, i8* %422, i32 %424)
  %425 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %426 = load i32, i32* %i359, align 4
  %427 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W496 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %427, i32 0, i32 5
  %428 = load i32, i32* %W496, align 4
  call void @merge(%struct._collec_t* %425, %struct._collec_t* %tem_eCol, i32 %426, i32 %428)
  %nb497 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 1
  store i32 0, i32* %nb497, align 4
  %429 = load i32, i32* %i359, align 4
  %sub498 = sub i32 %429, 1
  store i32 %sub498, i32* %i359, align 4
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.480, %cond.end.459
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.381
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %for.body.364
  br label %for.inc.502

for.inc.502:                                      ; preds = %if.end.501, %if.then.432
  %430 = load i32, i32* %i359, align 4
  %inc503 = add i32 %430, 1
  store i32 %inc503, i32* %i359, align 4
  br label %for.cond.360

for.end.504:                                      ; preds = %for.cond.360
  br label %if.end.505

if.end.505:                                       ; preds = %for.end.504, %if.end.354
  %431 = load %struct._result_t*, %struct._result_t** %r, align 8
  %432 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq506 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %432, i32 0, i32 1
  %433 = load i8*, i8** %seq506, align 8
  %434 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq507 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %434, i32 0, i32 2
  %435 = load i8*, i8** %seq507, align 8
  call void @kill_polyA(%struct._result_t* %431, i8* %433, i8* %435)
  %436 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %437 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W508 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %437, i32 0, i32 5
  %438 = load i32, i32* %W508, align 4
  call void @compact_exons(%struct._collec_t* %436, i32 %438)
  %439 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb509 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %439, i32 0, i32 1
  %440 = load i32, i32* %nb509, align 4
  %cmp510 = icmp ugt i32 %440, 0
  br i1 %cmp510, label %if.then.512, label %if.end.551

if.then.512:                                      ; preds = %if.end.505
  store i32 0, i32* %i513, align 4
  br label %while.cond.514

while.cond.514:                                   ; preds = %if.end.532, %if.then.512
  %441 = load i32, i32* %i513, align 4
  %442 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb515 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %442, i32 0, i32 1
  %443 = load i32, i32* %nb515, align 4
  %cmp516 = icmp ult i32 %441, %443
  br i1 %cmp516, label %while.body.518, label %while.end.534

while.body.518:                                   ; preds = %while.cond.514
  %444 = load i32, i32* %i513, align 4
  %idxprom520 = zext i32 %444 to i64
  %445 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e521 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %445, i32 0, i32 0
  %exon522 = bitcast %union._collec_elt_t* %e521 to %struct._exon_t***
  %446 = load %struct._exon_t**, %struct._exon_t*** %exon522, align 8
  %arrayidx523 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %446, i64 %idxprom520
  %447 = load %struct._exon_t*, %struct._exon_t** %arrayidx523, align 8
  store %struct._exon_t* %447, %struct._exon_t** %e519, align 8
  %448 = load %struct._exon_t*, %struct._exon_t** %e519, align 8
  %to2524 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %448, i32 0, i32 3
  %449 = load i32, i32* %to2524, align 4
  %450 = load %struct._exon_t*, %struct._exon_t** %e519, align 8
  %from2525 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %450, i32 0, i32 1
  %451 = load i32, i32* %from2525, align 4
  %sub526 = sub i32 %449, %451
  %add527 = add i32 %sub526, 1
  %452 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W528 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %452, i32 0, i32 5
  %453 = load i32, i32* %W528, align 4
  %cmp529 = icmp uge i32 %add527, %453
  br i1 %cmp529, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %while.body.518
  br label %while.end.534

if.end.532:                                       ; preds = %while.body.518
  %454 = load %struct._exon_t*, %struct._exon_t** %e519, align 8
  %455 = bitcast %struct._exon_t* %454 to i8*
  call void @free(i8* %455) #2
  %456 = load i32, i32* %i513, align 4
  %add533 = add i32 %456, 1
  store i32 %add533, i32* %i513, align 4
  br label %while.cond.514

while.end.534:                                    ; preds = %if.then.531, %while.cond.514
  %457 = load i32, i32* %i513, align 4
  %cmp535 = icmp ugt i32 %457, 0
  br i1 %cmp535, label %if.then.537, label %if.end.550

if.then.537:                                      ; preds = %while.end.534
  %458 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e538 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %458, i32 0, i32 0
  %elt539 = bitcast %union._collec_elt_t* %e538 to i8***
  %459 = load i8**, i8*** %elt539, align 8
  %460 = bitcast i8** %459 to i8*
  %461 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e540 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %461, i32 0, i32 0
  %elt541 = bitcast %union._collec_elt_t* %e540 to i8***
  %462 = load i8**, i8*** %elt541, align 8
  %463 = load i32, i32* %i513, align 4
  %idx.ext542 = zext i32 %463 to i64
  %add.ptr543 = getelementptr inbounds i8*, i8** %462, i64 %idx.ext542
  %464 = bitcast i8** %add.ptr543 to i8*
  %465 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb544 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %465, i32 0, i32 1
  %466 = load i32, i32* %nb544, align 4
  %467 = load i32, i32* %i513, align 4
  %sub545 = sub i32 %466, %467
  %conv546 = zext i32 %sub545 to i64
  %mul547 = mul i64 %conv546, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %460, i8* %464, i64 %mul547, i32 8, i1 false)
  %468 = load i32, i32* %i513, align 4
  %469 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb548 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %469, i32 0, i32 1
  %470 = load i32, i32* %nb548, align 4
  %sub549 = sub i32 %470, %468
  store i32 %sub549, i32* %nb548, align 4
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.537, %while.end.534
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %if.end.505
  %471 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb552 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %471, i32 0, i32 1
  %472 = load i32, i32* %nb552, align 4
  %cmp553 = icmp ugt i32 %472, 0
  br i1 %cmp553, label %if.then.555, label %if.end.581

if.then.555:                                      ; preds = %if.end.551
  %473 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb557 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %473, i32 0, i32 1
  %474 = load i32, i32* %nb557, align 4
  %sub558 = sub i32 %474, 1
  store i32 %sub558, i32* %i556, align 4
  br label %while.cond.559

while.cond.559:                                   ; preds = %if.end.576, %if.then.555
  %475 = load i32, i32* %i556, align 4
  %cmp560 = icmp sge i32 %475, 0
  br i1 %cmp560, label %while.body.562, label %while.end.580

while.body.562:                                   ; preds = %while.cond.559
  %476 = load i32, i32* %i556, align 4
  %idxprom564 = sext i32 %476 to i64
  %477 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e565 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %477, i32 0, i32 0
  %exon566 = bitcast %union._collec_elt_t* %e565 to %struct._exon_t***
  %478 = load %struct._exon_t**, %struct._exon_t*** %exon566, align 8
  %arrayidx567 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %478, i64 %idxprom564
  %479 = load %struct._exon_t*, %struct._exon_t** %arrayidx567, align 8
  store %struct._exon_t* %479, %struct._exon_t** %e563, align 8
  %480 = load %struct._exon_t*, %struct._exon_t** %e563, align 8
  %to2568 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %480, i32 0, i32 3
  %481 = load i32, i32* %to2568, align 4
  %482 = load %struct._exon_t*, %struct._exon_t** %e563, align 8
  %from2569 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %482, i32 0, i32 1
  %483 = load i32, i32* %from2569, align 4
  %sub570 = sub i32 %481, %483
  %add571 = add i32 %sub570, 1
  %484 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W572 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %484, i32 0, i32 5
  %485 = load i32, i32* %W572, align 4
  %cmp573 = icmp uge i32 %add571, %485
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %while.body.562
  br label %while.end.580

if.end.576:                                       ; preds = %while.body.562
  %486 = load %struct._exon_t*, %struct._exon_t** %e563, align 8
  %487 = bitcast %struct._exon_t* %486 to i8*
  call void @free(i8* %487) #2
  %488 = load i32, i32* %i556, align 4
  %sub577 = sub nsw i32 %488, 1
  store i32 %sub577, i32* %i556, align 4
  %489 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb578 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %489, i32 0, i32 1
  %490 = load i32, i32* %nb578, align 4
  %sub579 = sub i32 %490, 1
  store i32 %sub579, i32* %nb578, align 4
  br label %while.cond.559

while.end.580:                                    ; preds = %if.then.575, %while.cond.559
  br label %if.end.581

if.end.581:                                       ; preds = %while.end.580, %if.end.551
  %491 = load %struct._result_t*, %struct._result_t** %r, align 8
  %492 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq582 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %492, i32 0, i32 1
  %493 = load i8*, i8** %seq582, align 8
  %494 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq583 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %494, i32 0, i32 2
  %495 = load i8*, i8** %seq583, align 8
  call void @slide_intron(%struct._result_t* %491, i8* %493, i8* %495)
  %496 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq584 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %496, i32 0, i32 1
  %497 = load i8*, i8** %seq584, align 8
  %498 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq585 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %498, i32 0, i32 2
  %499 = load i8*, i8** %seq585, align 8
  %500 = load %struct._sim4_stats*, %struct._sim4_stats** %st, align 8
  %nmatches = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %500, i32 0, i32 0
  %501 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %502 = load %struct._result_t*, %struct._result_t** %r, align 8
  %sList = getelementptr inbounds %struct._result_t, %struct._result_t* %502, i32 0, i32 0
  %503 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len586 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %503, i32 0, i32 2
  %504 = load i32, i32* %len586, align 4
  %505 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %len587 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %505, i32 0, i32 5
  %506 = load i32, i32* %len587, align 4
  %call588 = call i32 @pluri_align(i8* %497, i8* %499, i32* %nmatches, %struct._collec_t* %501, %struct._edit_script_list** %sList, i32 %504, i32 %506)
  store i32 %call588, i32* %align_status, align 4
  %507 = load i32, i32* %align_status, align 4
  %cmp589 = icmp ne i32 %507, 0
  br i1 %cmp589, label %if.then.593, label %lor.lhs.false.591

lor.lhs.false.591:                                ; preds = %if.end.581
  %508 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %tobool592 = icmp ne i32 %508, 0
  br i1 %tobool592, label %if.end.596, label %if.then.593

if.then.593:                                      ; preds = %lor.lhs.false.591, %if.end.581
  %509 = load %struct._result_t*, %struct._result_t** %r, align 8
  %sList594 = getelementptr inbounds %struct._result_t, %struct._result_t* %509, i32 0, i32 0
  %510 = load %struct._edit_script_list*, %struct._edit_script_list** %sList594, align 8
  call void @free_align(%struct._edit_script_list* %510)
  %511 = load %struct._result_t*, %struct._result_t** %r, align 8
  %sList595 = getelementptr inbounds %struct._result_t, %struct._result_t* %511, i32 0, i32 0
  store %struct._edit_script_list* null, %struct._edit_script_list** %sList595, align 8
  br label %if.end.596

if.end.596:                                       ; preds = %if.then.593, %lor.lhs.false.591
  br label %for.inc.597

for.inc.597:                                      ; preds = %if.end.596, %if.then.285, %if.then.90, %if.then.11
  %512 = load i32, i32* %curRes, align 4
  %inc598 = add i32 %512, 1
  store i32 %inc598, i32* %curRes, align 4
  br label %for.cond

for.end.599:                                      ; preds = %for.cond
  %e600 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %mCol, i32 0, i32 0
  %elt601 = bitcast %union._collec_elt_t* %e600 to i8***
  %513 = load i8**, i8*** %elt601, align 8
  %514 = bitcast i8** %513 to i8*
  call void @free(i8* %514) #2
  %e602 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %tem_eCol, i32 0, i32 0
  %elt603 = bitcast %union._collec_elt_t* %e602 to i8***
  %515 = load i8**, i8*** %elt603, align 8
  %516 = bitcast i8** %515 to i8*
  call void @free(i8* %516) #2
  br label %return

return:                                           ; preds = %for.end.599, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_col(%struct._collec_t* %c, i32 %size) #0 {
entry:
  %c.addr = alloca %struct._collec_t*, align 8
  %size.addr = alloca i32, align 4
  store %struct._collec_t* %c, %struct._collec_t** %c.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %size1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %2, i32 0, i32 1
  store i32 0, i32* %nb, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xmalloc(i64 %mul)
  %5 = bitcast i8* %call to i8**
  %6 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %6, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e to i8***
  store i8** %5, i8*** %elt, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %e2 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %7, i32 0, i32 0
  %elt3 = bitcast %union._collec_elt_t* %e2 to i8***
  store i8** null, i8*** %elt3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @exon_cores(%struct._hash_env_t* %he, i8* %s2, i32 %len2, i32 %offset1, i32 %offset2, i32 %K, %struct._collec_t* %mCol, %struct._collec_t* %res, %struct._collec_t* %eCol) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %s2.addr = alloca i8*, align 8
  %len2.addr = alloca i32, align 4
  %offset1.addr = alloca i32, align 4
  %offset2.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %mCol.addr = alloca %struct._collec_t*, align 8
  %res.addr = alloca %struct._collec_t*, align 8
  %eCol.addr = alloca %struct._collec_t*, align 8
  %j = alloca i32, align 4
  %last_msp = alloca i32, align 4
  %swapped = alloca i32, align 4
  %r = alloca %struct._result_t*, align 8
  %minMPos = alloca i32, align 4
  %maxMPos = alloca i32, align 4
  %cov = alloca i32, align 4
  %globScore = alloca i32, align 4
  %tested = alloca i32, align 4
  %m = alloca %struct._exon_t*, align 8
  %m33 = alloca %struct._exon_t*, align 8
  %p = alloca %struct._exon_t*, align 8
  %m78 = alloca %struct._exon_t*, align 8
  %lLast = alloca i32, align 4
  %lScore = alloca i32, align 4
  %rScore = alloca i32, align 4
  %k = alloca i32, align 4
  %e164 = alloca %struct._exon_t*, align 8
  %e221 = alloca %struct._exon_t*, align 8
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  store i32 %offset1, i32* %offset1.addr, align 4
  store i32 %offset2, i32* %offset2.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store %struct._collec_t* %res, %struct._collec_t** %res.addr, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  %0 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %cmp = icmp ne %struct._collec_t* %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %swapped, align 4
  %1 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i32, i32* %len2.addr, align 4
  %4 = load i32, i32* %K.addr, align 4
  %5 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  call void @search(%struct._hash_env_t* %1, i8* %2, i32 %3, i32 %4, %struct._collec_t* %5)
  %6 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %6, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %7 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %8 = bitcast %struct._exon_t** %7 to i8*
  %9 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 1
  %10 = load i32, i32* %nb, align 4
  %conv1 = zext i32 %10 to i64
  call void @qsort(i8* %8, i64 %conv1, i64 8, i32 (i8*, i8*)* @msp_rna_compare)
  %11 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  call void @trim_small_repeated_msps(%struct._collec_t* %11)
  %12 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e2 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %12, i32 0, i32 0
  %exon3 = bitcast %union._collec_elt_t* %e2 to %struct._exon_t***
  %13 = load %struct._exon_t**, %struct._exon_t*** %exon3, align 8
  %14 = bitcast %struct._exon_t** %13 to i8*
  %15 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb4 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %15, i32 0, i32 1
  %16 = load i32, i32* %nb4, align 4
  %conv5 = zext i32 %16 to i64
  call void @qsort(i8* %14, i64 %conv5, i64 8, i32 (i8*, i8*)* @msp_compare)
  %17 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  call void @combine_msps(%struct._collec_t* %17)
  %18 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %cmp6 = icmp eq %struct._collec_t* %18, null
  br i1 %cmp6, label %if.then, label %if.else.205

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %len2.addr, align 4
  store i32 %19, i32* %minMPos, align 4
  store i32 0, i32* %maxMPos, align 4
  store i32 0, i32* %tested, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %j, align 4
  %21 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb8 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %21, i32 0, i32 1
  %22 = load i32, i32* %nb8, align 4
  %cmp9 = icmp ult i32 %20, %22
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %j, align 4
  %idxprom = zext i32 %23 to i64
  %24 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e11 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %24, i32 0, i32 0
  %exon12 = bitcast %union._collec_elt_t* %e11 to %struct._exon_t***
  %25 = load %struct._exon_t**, %struct._exon_t*** %exon12, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %25, i64 %idxprom
  %26 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %26, %struct._exon_t** %m, align 8
  %27 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 1
  %28 = load i32, i32* %from2, align 4
  %29 = load i32, i32* %minMPos, align 4
  %cmp13 = icmp ult i32 %28, %29
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body
  %30 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from216 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %30, i32 0, i32 1
  %31 = load i32, i32* %from216, align 4
  store i32 %31, i32* %minMPos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %for.body
  %32 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 3
  %33 = load i32, i32* %to2, align 4
  %34 = load i32, i32* %maxMPos, align 4
  %cmp17 = icmp ugt i32 %33, %34
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %35 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to220 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 3
  %36 = load i32, i32* %to220, align 4
  store i32 %36, i32* %maxMPos, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %37 = load i32, i32* %j, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %maxMPos, align 4
  %39 = load i32, i32* %minMPos, align 4
  %sub = sub i32 %38, %39
  %add = add i32 %sub, 1
  store i32 %add, i32* %cov, align 4
  %40 = load i32, i32* %cov, align 4
  %div = udiv i32 %40, 4
  store i32 %div, i32* %cov, align 4
  %41 = load i32, i32* %cov, align 4
  %42 = load i32, i32* %minMPos, align 4
  %add22 = add i32 %42, %41
  store i32 %add22, i32* %minMPos, align 4
  %43 = load i32, i32* %maxMPos, align 4
  %44 = load i32, i32* %cov, align 4
  %cmp23 = icmp ugt i32 %43, %44
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.end
  %45 = load i32, i32* %cov, align 4
  %46 = load i32, i32* %maxMPos, align 4
  %sub26 = sub i32 %46, %45
  store i32 %sub26, i32* %maxMPos, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.49, %if.end.27
  %47 = load i32, i32* %j, align 4
  %48 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb29 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %48, i32 0, i32 1
  %49 = load i32, i32* %nb29, align 4
  %cmp30 = icmp ult i32 %47, %49
  br i1 %cmp30, label %for.body.32, label %for.end.51

for.body.32:                                      ; preds = %for.cond.28
  %50 = load i32, i32* %j, align 4
  %idxprom34 = zext i32 %50 to i64
  %51 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %51, i32 0, i32 0
  %exon36 = bitcast %union._collec_elt_t* %e35 to %struct._exon_t***
  %52 = load %struct._exon_t**, %struct._exon_t*** %exon36, align 8
  %arrayidx37 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %52, i64 %idxprom34
  %53 = load %struct._exon_t*, %struct._exon_t** %arrayidx37, align 8
  store %struct._exon_t* %53, %struct._exon_t** %m33, align 8
  %54 = load %struct._exon_t*, %struct._exon_t** %m33, align 8
  %from238 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %54, i32 0, i32 1
  %55 = load i32, i32* %from238, align 4
  %56 = load i32, i32* %minMPos, align 4
  %cmp39 = icmp ult i32 %55, %56
  %conv40 = zext i1 %cmp39 to i32
  %57 = load %struct._exon_t*, %struct._exon_t** %m33, align 8
  %bot = getelementptr inbounds %struct._exon_t, %struct._exon_t* %57, i32 0, i32 6
  %58 = zext i32 %conv40 to i64
  %bf.load = load i64, i64* %bot, align 4
  %bf.value = and i64 %58, 1
  %bf.shl = shl i64 %bf.value, 1
  %bf.clear = and i64 %bf.load, -3
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, i64* %bot, align 4
  %bf.result.cast = trunc i64 %bf.value to i32
  %59 = load %struct._exon_t*, %struct._exon_t** %m33, align 8
  %to241 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %59, i32 0, i32 3
  %60 = load i32, i32* %to241, align 4
  %61 = load i32, i32* %maxMPos, align 4
  %cmp42 = icmp ugt i32 %60, %61
  %conv43 = zext i1 %cmp42 to i32
  %62 = load %struct._exon_t*, %struct._exon_t** %m33, align 8
  %top = getelementptr inbounds %struct._exon_t, %struct._exon_t* %62, i32 0, i32 6
  %63 = zext i32 %conv43 to i64
  %bf.load44 = load i64, i64* %top, align 4
  %bf.value45 = and i64 %63, 1
  %bf.clear46 = and i64 %bf.load44, -2
  %bf.set47 = or i64 %bf.clear46, %bf.value45
  store i64 %bf.set47, i64* %top, align 4
  %bf.result.cast48 = trunc i64 %bf.value45 to i32
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.32
  %64 = load i32, i32* %j, align 4
  %inc50 = add i32 %64, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.28

for.end.51:                                       ; preds = %for.cond.28
  %65 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %66 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %66, i32 0, i32 1
  %67 = load i32, i32* %nb52, align 4
  %call = call i32 @link_msps(%struct._collec_t* %65, i32 0, i32 %67)
  store i32 %call, i32* %last_msp, align 4
  %68 = load i32, i32* %last_msp, align 4
  %cmp53 = icmp slt i32 %68, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.51
  br label %return

if.end.56:                                        ; preds = %for.end.51
  %69 = load i32, i32* %last_msp, align 4
  %idxprom57 = sext i32 %69 to i64
  %70 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e58 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %70, i32 0, i32 0
  %exon59 = bitcast %union._collec_elt_t* %e58 to %struct._exon_t***
  %71 = load %struct._exon_t**, %struct._exon_t*** %exon59, align 8
  %arrayidx60 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %71, i64 %idxprom57
  %72 = load %struct._exon_t*, %struct._exon_t** %arrayidx60, align 8
  %Score = getelementptr inbounds %struct._exon_t, %struct._exon_t* %72, i32 0, i32 5
  %73 = load i32, i32* %Score, align 4
  store i32 %73, i32* %globScore, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %cmp61 = icmp uge i32 %74, 50
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.end.56
  %75 = load i32, i32* %globScore, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %mul = mul i32 %75, %76
  %div64 = udiv i32 %mul, 100
  store i32 %div64, i32* %globScore, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.56
  %77 = load i32, i32* %globScore, align 4
  %div65 = udiv i32 %77, 4
  %78 = load i32, i32* %globScore, align 4
  %sub66 = sub i32 %78, %div65
  store i32 %sub66, i32* %globScore, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.63
  store i32 0, i32* %minMPos, align 4
  store i32 0, i32* %maxMPos, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.186, %if.end.67
  %79 = load i32, i32* %j, align 4
  %80 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb69 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %80, i32 0, i32 1
  %81 = load i32, i32* %nb69, align 4
  %cmp70 = icmp ult i32 %79, %81
  br i1 %cmp70, label %for.body.72, label %for.end.188

for.body.72:                                      ; preds = %for.cond.68
  %82 = load i32, i32* %j, align 4
  %sub73 = sub i32 %82, 1
  %idxprom74 = zext i32 %sub73 to i64
  %83 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e75 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %83, i32 0, i32 0
  %exon76 = bitcast %union._collec_elt_t* %e75 to %struct._exon_t***
  %84 = load %struct._exon_t**, %struct._exon_t*** %exon76, align 8
  %arrayidx77 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %84, i64 %idxprom74
  %85 = load %struct._exon_t*, %struct._exon_t** %arrayidx77, align 8
  store %struct._exon_t* %85, %struct._exon_t** %p, align 8
  %86 = load i32, i32* %j, align 4
  %idxprom79 = zext i32 %86 to i64
  %87 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e80 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %87, i32 0, i32 0
  %exon81 = bitcast %union._collec_elt_t* %e80 to %struct._exon_t***
  %88 = load %struct._exon_t**, %struct._exon_t*** %exon81, align 8
  %arrayidx82 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %88, i64 %idxprom79
  %89 = load %struct._exon_t*, %struct._exon_t** %arrayidx82, align 8
  store %struct._exon_t* %89, %struct._exon_t** %m78, align 8
  %90 = load %struct._exon_t*, %struct._exon_t** %p, align 8
  %top83 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %90, i32 0, i32 6
  %bf.load84 = load i64, i64* %top83, align 4
  %bf.clear85 = and i64 %bf.load84, 1
  %bf.cast = trunc i64 %bf.clear85 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body.72
  %91 = load %struct._exon_t*, %struct._exon_t** %m78, align 8
  %top86 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %91, i32 0, i32 6
  %bf.load87 = load i64, i64* %top86, align 4
  %bf.clear88 = and i64 %bf.load87, 1
  %bf.cast89 = trunc i64 %bf.clear88 to i32
  %tobool90 = icmp ne i32 %bf.cast89, 0
  br i1 %tobool90, label %lor.lhs.false, label %if.then.116

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.72
  %92 = load %struct._exon_t*, %struct._exon_t** %p, align 8
  %bot91 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %92, i32 0, i32 6
  %bf.load92 = load i64, i64* %bot91, align 4
  %bf.lshr = lshr i64 %bf.load92, 1
  %bf.clear93 = and i64 %bf.lshr, 1
  %bf.cast94 = trunc i64 %bf.clear93 to i32
  %tobool95 = icmp ne i32 %bf.cast94, 0
  br i1 %tobool95, label %lor.lhs.false.103, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %lor.lhs.false
  %93 = load %struct._exon_t*, %struct._exon_t** %m78, align 8
  %bot97 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %93, i32 0, i32 6
  %bf.load98 = load i64, i64* %bot97, align 4
  %bf.lshr99 = lshr i64 %bf.load98, 1
  %bf.clear100 = and i64 %bf.lshr99, 1
  %bf.cast101 = trunc i64 %bf.clear100 to i32
  %tobool102 = icmp ne i32 %bf.cast101, 0
  br i1 %tobool102, label %if.then.116, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.96, %lor.lhs.false
  %94 = load %struct._exon_t*, %struct._exon_t** %p, align 8
  %top104 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %94, i32 0, i32 6
  %bf.load105 = load i64, i64* %top104, align 4
  %bf.clear106 = and i64 %bf.load105, 1
  %bf.cast107 = trunc i64 %bf.clear106 to i32
  %tobool108 = icmp ne i32 %bf.cast107, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.185

land.lhs.true.109:                                ; preds = %lor.lhs.false.103
  %95 = load %struct._exon_t*, %struct._exon_t** %m78, align 8
  %bot110 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %95, i32 0, i32 6
  %bf.load111 = load i64, i64* %bot110, align 4
  %bf.lshr112 = lshr i64 %bf.load111, 1
  %bf.clear113 = and i64 %bf.lshr112, 1
  %bf.cast114 = trunc i64 %bf.clear113 to i32
  %tobool115 = icmp ne i32 %bf.cast114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.185

if.then.116:                                      ; preds = %land.lhs.true.109, %land.lhs.true.96, %land.lhs.true
  store i32 1, i32* %tested, align 4
  %96 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %97 = load i32, i32* %minMPos, align 4
  %98 = load i32, i32* %j, align 4
  %call117 = call i32 @link_msps(%struct._collec_t* %96, i32 %97, i32 %98)
  store i32 %call117, i32* %lLast, align 4
  %99 = load i32, i32* %lLast, align 4
  %idxprom118 = sext i32 %99 to i64
  %100 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e119 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %100, i32 0, i32 0
  %exon120 = bitcast %union._collec_elt_t* %e119 to %struct._exon_t***
  %101 = load %struct._exon_t**, %struct._exon_t*** %exon120, align 8
  %arrayidx121 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %101, i64 %idxprom118
  %102 = load %struct._exon_t*, %struct._exon_t** %arrayidx121, align 8
  %Score122 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %102, i32 0, i32 5
  %103 = load i32, i32* %Score122, align 4
  store i32 %103, i32* %lScore, align 4
  %104 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %105 = load i32, i32* %j, align 4
  %106 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb123 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %106, i32 0, i32 1
  %107 = load i32, i32* %nb123, align 4
  %call124 = call i32 @link_msps(%struct._collec_t* %104, i32 %105, i32 %107)
  store i32 %call124, i32* %last_msp, align 4
  %108 = load i32, i32* %last_msp, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e126 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %109, i32 0, i32 0
  %exon127 = bitcast %union._collec_elt_t* %e126 to %struct._exon_t***
  %110 = load %struct._exon_t**, %struct._exon_t*** %exon127, align 8
  %arrayidx128 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %110, i64 %idxprom125
  %111 = load %struct._exon_t*, %struct._exon_t** %arrayidx128, align 8
  %Score129 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %111, i32 0, i32 5
  %112 = load i32, i32* %Score129, align 4
  store i32 %112, i32* %rScore, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %cmp130 = icmp uge i32 %113, 50
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.138

land.lhs.true.132:                                ; preds = %if.then.116
  %114 = load i32, i32* %lScore, align 4
  %115 = load i32, i32* %globScore, align 4
  %cmp133 = icmp uge i32 %114, %115
  br i1 %cmp133, label %land.lhs.true.135, label %lor.lhs.false.138

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %116 = load i32, i32* %rScore, align 4
  %117 = load i32, i32* %globScore, align 4
  %cmp136 = icmp uge i32 %116, %117
  br i1 %cmp136, label %if.then.147, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %land.lhs.true.135, %land.lhs.true.132, %if.then.116
  %118 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %cmp139 = icmp ult i32 %118, 50
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.184

land.lhs.true.141:                                ; preds = %lor.lhs.false.138
  %119 = load i32, i32* %lScore, align 4
  %120 = load i32, i32* %globScore, align 4
  %cmp142 = icmp uge i32 %119, %120
  br i1 %cmp142, label %if.then.147, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %land.lhs.true.141
  %121 = load i32, i32* %rScore, align 4
  %122 = load i32, i32* %globScore, align 4
  %cmp145 = icmp uge i32 %121, %122
  br i1 %cmp145, label %if.then.147, label %if.end.184

if.then.147:                                      ; preds = %lor.lhs.false.144, %land.lhs.true.141, %land.lhs.true.135
  %123 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %call148 = call i8* @xcalloc(i64 1, i64 48)
  call void @add_col_elt(%struct._collec_t* %123, i8* %call148)
  %124 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %nb149 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %124, i32 0, i32 1
  %125 = load i32, i32* %nb149, align 4
  %sub150 = sub i32 %125, 1
  %idxprom151 = zext i32 %sub150 to i64
  %126 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %e152 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %126, i32 0, i32 0
  %result = bitcast %union._collec_elt_t* %e152 to %struct._result_t***
  %127 = load %struct._result_t**, %struct._result_t*** %result, align 8
  %arrayidx153 = getelementptr inbounds %struct._result_t*, %struct._result_t** %127, i64 %idxprom151
  %128 = load %struct._result_t*, %struct._result_t** %arrayidx153, align 8
  store %struct._result_t* %128, %struct._result_t** %r, align 8
  %129 = load i32, i32* %maxMPos, align 4
  %130 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart = getelementptr inbounds %struct._result_t, %struct._result_t* %130, i32 0, i32 2
  store i32 %129, i32* %dStart, align 4
  %131 = load %struct._exon_t*, %struct._exon_t** %m78, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %131, i32 0, i32 0
  %132 = load i32, i32* %from1, align 4
  %133 = load i32, i32* %maxMPos, align 4
  %sub154 = sub i32 %132, %133
  %134 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dLen = getelementptr inbounds %struct._result_t, %struct._result_t* %134, i32 0, i32 3
  store i32 %sub154, i32* %dLen, align 4
  %135 = load %struct._result_t*, %struct._result_t** %r, align 8
  %eCol155 = getelementptr inbounds %struct._result_t, %struct._result_t* %135, i32 0, i32 1
  store %struct._collec_t* %eCol155, %struct._collec_t** %eCol.addr, align 8
  %136 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %137 = load i32, i32* %j, align 4
  %138 = load i32, i32* %minMPos, align 4
  %sub156 = sub i32 %137, %138
  call void @init_col(%struct._collec_t* %136, i32 %sub156)
  %139 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e157 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %139, i32 0, i32 0
  %exon158 = bitcast %union._collec_elt_t* %e157 to %struct._exon_t***
  %140 = load %struct._exon_t**, %struct._exon_t*** %exon158, align 8
  %141 = load i32, i32* %lLast, align 4
  %142 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  call void @msp2exons(%struct._exon_t** %140, i32 %141, %struct._collec_t* %142, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.176, %if.then.147
  %143 = load i32, i32* %k, align 4
  %144 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb160 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %144, i32 0, i32 1
  %145 = load i32, i32* %nb160, align 4
  %cmp161 = icmp ult i32 %143, %145
  br i1 %cmp161, label %for.body.163, label %for.end.178

for.body.163:                                     ; preds = %for.cond.159
  %146 = load i32, i32* %k, align 4
  %idxprom165 = zext i32 %146 to i64
  %147 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e166 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %147, i32 0, i32 0
  %exon167 = bitcast %union._collec_elt_t* %e166 to %struct._exon_t***
  %148 = load %struct._exon_t**, %struct._exon_t*** %exon167, align 8
  %arrayidx168 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %148, i64 %idxprom165
  %149 = load %struct._exon_t*, %struct._exon_t** %arrayidx168, align 8
  store %struct._exon_t* %149, %struct._exon_t** %e164, align 8
  %150 = load i32, i32* %offset1.addr, align 4
  %151 = load %struct._exon_t*, %struct._exon_t** %e164, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %151, i32 0, i32 2
  %152 = load i32, i32* %to1, align 4
  %add169 = add i32 %152, %150
  store i32 %add169, i32* %to1, align 4
  %153 = load i32, i32* %offset1.addr, align 4
  %154 = load %struct._exon_t*, %struct._exon_t** %e164, align 8
  %from1170 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %154, i32 0, i32 0
  %155 = load i32, i32* %from1170, align 4
  %add171 = add i32 %155, %153
  store i32 %add171, i32* %from1170, align 4
  %156 = load i32, i32* %offset2.addr, align 4
  %157 = load %struct._exon_t*, %struct._exon_t** %e164, align 8
  %to2172 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %157, i32 0, i32 3
  %158 = load i32, i32* %to2172, align 4
  %add173 = add i32 %158, %156
  store i32 %add173, i32* %to2172, align 4
  %159 = load i32, i32* %offset2.addr, align 4
  %160 = load %struct._exon_t*, %struct._exon_t** %e164, align 8
  %from2174 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %160, i32 0, i32 1
  %161 = load i32, i32* %from2174, align 4
  %add175 = add i32 %161, %159
  store i32 %add175, i32* %from2174, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.163
  %162 = load i32, i32* %k, align 4
  %inc177 = add i32 %162, 1
  store i32 %inc177, i32* %k, align 4
  br label %for.cond.159

for.end.178:                                      ; preds = %for.cond.159
  %163 = load i32, i32* %j, align 4
  store i32 %163, i32* %minMPos, align 4
  %164 = load i32, i32* %lLast, align 4
  %idxprom179 = sext i32 %164 to i64
  %165 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e180 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %165, i32 0, i32 0
  %exon181 = bitcast %union._collec_elt_t* %e180 to %struct._exon_t***
  %166 = load %struct._exon_t**, %struct._exon_t*** %exon181, align 8
  %arrayidx182 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %166, i64 %idxprom179
  %167 = load %struct._exon_t*, %struct._exon_t** %arrayidx182, align 8
  %to1183 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %167, i32 0, i32 2
  %168 = load i32, i32* %to1183, align 4
  store i32 %168, i32* %maxMPos, align 4
  store i32 0, i32* %tested, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %for.end.178, %lor.lhs.false.144, %lor.lhs.false.138
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.109, %lor.lhs.false.103
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %169 = load i32, i32* %j, align 4
  %inc187 = add i32 %169, 1
  store i32 %inc187, i32* %j, align 4
  br label %for.cond.68

for.end.188:                                      ; preds = %for.cond.68
  %170 = load i32, i32* %tested, align 4
  %tobool189 = icmp ne i32 %170, 0
  br i1 %tobool189, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %for.end.188
  %171 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %172 = load i32, i32* %minMPos, align 4
  %173 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb191 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %173, i32 0, i32 1
  %174 = load i32, i32* %nb191, align 4
  %call192 = call i32 @link_msps(%struct._collec_t* %171, i32 %172, i32 %174)
  store i32 %call192, i32* %last_msp, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.190, %for.end.188
  %175 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %call194 = call i8* @xcalloc(i64 1, i64 48)
  call void @add_col_elt(%struct._collec_t* %175, i8* %call194)
  %176 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %nb195 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %176, i32 0, i32 1
  %177 = load i32, i32* %nb195, align 4
  %sub196 = sub i32 %177, 1
  %idxprom197 = zext i32 %sub196 to i64
  %178 = load %struct._collec_t*, %struct._collec_t** %res.addr, align 8
  %e198 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %178, i32 0, i32 0
  %result199 = bitcast %union._collec_elt_t* %e198 to %struct._result_t***
  %179 = load %struct._result_t**, %struct._result_t*** %result199, align 8
  %arrayidx200 = getelementptr inbounds %struct._result_t*, %struct._result_t** %179, i64 %idxprom197
  %180 = load %struct._result_t*, %struct._result_t** %arrayidx200, align 8
  store %struct._result_t* %180, %struct._result_t** %r, align 8
  %181 = load i32, i32* %maxMPos, align 4
  %182 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dStart201 = getelementptr inbounds %struct._result_t, %struct._result_t* %182, i32 0, i32 2
  store i32 %181, i32* %dStart201, align 4
  %183 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %183, i32 0, i32 2
  %184 = load i32, i32* %len, align 4
  %185 = load i32, i32* %maxMPos, align 4
  %sub202 = sub i32 %184, %185
  %186 = load %struct._result_t*, %struct._result_t** %r, align 8
  %dLen203 = getelementptr inbounds %struct._result_t, %struct._result_t* %186, i32 0, i32 3
  store i32 %sub202, i32* %dLen203, align 4
  %187 = load %struct._result_t*, %struct._result_t** %r, align 8
  %eCol204 = getelementptr inbounds %struct._result_t, %struct._result_t* %187, i32 0, i32 1
  store %struct._collec_t* %eCol204, %struct._collec_t** %eCol.addr, align 8
  br label %if.end.208

if.else.205:                                      ; preds = %entry
  %188 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %189 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb206 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %189, i32 0, i32 1
  %190 = load i32, i32* %nb206, align 4
  %call207 = call i32 @link_msps(%struct._collec_t* %188, i32 0, i32 %190)
  store i32 %call207, i32* %last_msp, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.end.193
  %191 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %size = getelementptr inbounds %struct._collec_t, %struct._collec_t* %191, i32 0, i32 2
  %192 = load i32, i32* %size, align 4
  %cmp209 = icmp eq i32 %192, 0
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %if.end.208
  %193 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %194 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb212 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %194, i32 0, i32 1
  %195 = load i32, i32* %nb212, align 4
  call void @init_col(%struct._collec_t* %193, i32 %195)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %if.end.208
  %196 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e214 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %196, i32 0, i32 0
  %exon215 = bitcast %union._collec_elt_t* %e214 to %struct._exon_t***
  %197 = load %struct._exon_t**, %struct._exon_t*** %exon215, align 8
  %198 = load i32, i32* %last_msp, align 4
  %199 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %200 = load i32, i32* %swapped, align 4
  call void @msp2exons(%struct._exon_t** %197, i32 %198, %struct._collec_t* %199, i32 %200)
  store i32 0, i32* %j, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.234, %if.end.213
  %201 = load i32, i32* %j, align 4
  %202 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb217 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %202, i32 0, i32 1
  %203 = load i32, i32* %nb217, align 4
  %cmp218 = icmp ult i32 %201, %203
  br i1 %cmp218, label %for.body.220, label %for.end.236

for.body.220:                                     ; preds = %for.cond.216
  %204 = load i32, i32* %j, align 4
  %idxprom222 = zext i32 %204 to i64
  %205 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e223 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %205, i32 0, i32 0
  %exon224 = bitcast %union._collec_elt_t* %e223 to %struct._exon_t***
  %206 = load %struct._exon_t**, %struct._exon_t*** %exon224, align 8
  %arrayidx225 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %206, i64 %idxprom222
  %207 = load %struct._exon_t*, %struct._exon_t** %arrayidx225, align 8
  store %struct._exon_t* %207, %struct._exon_t** %e221, align 8
  %208 = load i32, i32* %offset1.addr, align 4
  %209 = load %struct._exon_t*, %struct._exon_t** %e221, align 8
  %to1226 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %209, i32 0, i32 2
  %210 = load i32, i32* %to1226, align 4
  %add227 = add i32 %210, %208
  store i32 %add227, i32* %to1226, align 4
  %211 = load i32, i32* %offset1.addr, align 4
  %212 = load %struct._exon_t*, %struct._exon_t** %e221, align 8
  %from1228 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %212, i32 0, i32 0
  %213 = load i32, i32* %from1228, align 4
  %add229 = add i32 %213, %211
  store i32 %add229, i32* %from1228, align 4
  %214 = load i32, i32* %offset2.addr, align 4
  %215 = load %struct._exon_t*, %struct._exon_t** %e221, align 8
  %to2230 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %215, i32 0, i32 3
  %216 = load i32, i32* %to2230, align 4
  %add231 = add i32 %216, %214
  store i32 %add231, i32* %to2230, align 4
  %217 = load i32, i32* %offset2.addr, align 4
  %218 = load %struct._exon_t*, %struct._exon_t** %e221, align 8
  %from2232 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %218, i32 0, i32 1
  %219 = load i32, i32* %from2232, align 4
  %add233 = add i32 %219, %217
  store i32 %add233, i32* %from2232, align 4
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.body.220
  %220 = load i32, i32* %j, align 4
  %inc235 = add i32 %220, 1
  store i32 %inc235, i32* %j, align 4
  br label %for.cond.216

for.end.236:                                      ; preds = %for.cond.216
  %221 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb237 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %221, i32 0, i32 1
  store i32 0, i32* %nb237, align 4
  br label %return

return:                                           ; preds = %for.end.236, %if.then.55
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kill_polyA(%struct._result_t* %res, i8* %s1, i8* %s2) #0 {
entry:
  %res.addr = alloca %struct._result_t*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %eCol = alloca %struct._collec_t*, align 8
  %best = alloca %struct.anon, align 4
  %j = alloca i32, align 4
  %j35 = alloca i32, align 4
  %e57 = alloca %struct._exon_t*, align 8
  %cntAs1 = alloca i32, align 4
  %cntAs2 = alloca i32, align 4
  %j64 = alloca i32, align 4
  %score = alloca i32, align 4
  %s = alloca i8*, align 8
  %e140 = alloca %struct._exon_t*, align 8
  %cntTs1 = alloca i32, align 4
  %cntTs2 = alloca i32, align 4
  %j144 = alloca i32, align 4
  %score145 = alloca i32, align 4
  %s146 = alloca i8*, align 8
  store %struct._result_t* %res, %struct._result_t** %res.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol1 = getelementptr inbounds %struct._result_t, %struct._result_t* %0, i32 0, i32 1
  store %struct._collec_t* %eCol1, %struct._collec_t** %eCol, align 8
  %1 = bitcast %struct.anon* %best to i8*
  %2 = bitcast %struct.anon* %best to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 12, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 1
  %5 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %7, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %8 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %8, i64 %idxprom
  %9 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  %10 = load i8*, i8** %s2.addr, align 8
  %call = call i32 @is_polyAT_exon_p(%struct._exon_t* %9, i8* %10)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %i, align 4
  %add = add i32 %12, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %cmp2 = icmp ugt i32 %13, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %i, align 4
  %cmp3 = icmp ult i32 %14, %15
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %j, align 4
  %idxprom4 = zext i32 %16 to i64
  %17 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e5 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %17, i32 0, i32 0
  %exon6 = bitcast %union._collec_elt_t* %e5 to %struct._exon_t***
  %18 = load %struct._exon_t**, %struct._exon_t*** %exon6, align 8
  %arrayidx7 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %18, i64 %idxprom4
  %19 = load %struct._exon_t*, %struct._exon_t** %arrayidx7, align 8
  %20 = bitcast %struct._exon_t* %19 to i8*
  call void @free(i8* %20) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %j, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e8 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %22, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e8 to i8***
  %23 = load i8**, i8*** %elt, align 8
  %24 = bitcast i8** %23 to i8*
  %25 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %25, i32 0, i32 0
  %elt10 = bitcast %union._collec_elt_t* %e9 to i8***
  %26 = load i8**, i8*** %elt10, align 8
  %27 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %26, i64 %idx.ext
  %28 = bitcast i8** %add.ptr to i8*
  %29 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb11 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %29, i32 0, i32 1
  %30 = load i32, i32* %nb11, align 4
  %31 = load i32, i32* %i, align 4
  %sub = sub i32 %30, %31
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %24, i8* %28, i64 %mul, i32 8, i1 false)
  %32 = load i32, i32* %i, align 4
  %33 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb12 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %33, i32 0, i32 1
  %34 = load i32, i32* %nb12, align 4
  %sub13 = sub i32 %34, %32
  store i32 %sub13, i32* %nb12, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end
  store i32 0, i32* %i, align 4
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.29, %if.end
  %35 = load i32, i32* %i, align 4
  %36 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb15 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %36, i32 0, i32 1
  %37 = load i32, i32* %nb15, align 4
  %cmp16 = icmp ult i32 %35, %37
  br i1 %cmp16, label %land.rhs.18, label %land.end.28

land.rhs.18:                                      ; preds = %while.cond.14
  %38 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %38, i32 0, i32 1
  %39 = load i32, i32* %nb19, align 4
  %40 = load i32, i32* %i, align 4
  %sub20 = sub i32 %39, %40
  %sub21 = sub i32 %sub20, 1
  %idxprom22 = zext i32 %sub21 to i64
  %41 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e23 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %41, i32 0, i32 0
  %exon24 = bitcast %union._collec_elt_t* %e23 to %struct._exon_t***
  %42 = load %struct._exon_t**, %struct._exon_t*** %exon24, align 8
  %arrayidx25 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %42, i64 %idxprom22
  %43 = load %struct._exon_t*, %struct._exon_t** %arrayidx25, align 8
  %44 = load i8*, i8** %s2.addr, align 8
  %call26 = call i32 @is_polyAT_exon_p(%struct._exon_t* %43, i8* %44)
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.18, %while.cond.14
  %45 = phi i1 [ false, %while.cond.14 ], [ %tobool27, %land.rhs.18 ]
  br i1 %45, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %land.end.28
  %46 = load i32, i32* %i, align 4
  %add30 = add i32 %46, 1
  store i32 %add30, i32* %i, align 4
  br label %while.cond.14

while.end.31:                                     ; preds = %land.end.28
  %47 = load i32, i32* %i, align 4
  %cmp32 = icmp ugt i32 %47, 0
  br i1 %cmp32, label %if.then.34, label %if.end.52

if.then.34:                                       ; preds = %while.end.31
  %48 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb36 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %48, i32 0, i32 1
  %49 = load i32, i32* %nb36, align 4
  %50 = load i32, i32* %i, align 4
  %sub37 = sub i32 %49, %50
  store i32 %sub37, i32* %j35, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %if.then.34
  %51 = load i32, i32* %j35, align 4
  %52 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb39 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %52, i32 0, i32 1
  %53 = load i32, i32* %nb39, align 4
  %cmp40 = icmp ult i32 %51, %53
  br i1 %cmp40, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.38
  %54 = load i32, i32* %j35, align 4
  %idxprom43 = zext i32 %54 to i64
  %55 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e44 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %55, i32 0, i32 0
  %exon45 = bitcast %union._collec_elt_t* %e44 to %struct._exon_t***
  %56 = load %struct._exon_t**, %struct._exon_t*** %exon45, align 8
  %arrayidx46 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %56, i64 %idxprom43
  %57 = load %struct._exon_t*, %struct._exon_t** %arrayidx46, align 8
  %58 = bitcast %struct._exon_t* %57 to i8*
  call void @free(i8* %58) #2
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %59 = load i32, i32* %j35, align 4
  %inc48 = add i32 %59, 1
  store i32 %inc48, i32* %j35, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  %60 = load i32, i32* %i, align 4
  %61 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb50 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %61, i32 0, i32 1
  %62 = load i32, i32* %nb50, align 4
  %sub51 = sub i32 %62, %60
  store i32 %sub51, i32* %nb50, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.49, %while.end.31
  %63 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb53 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %63, i32 0, i32 1
  %64 = load i32, i32* %nb53, align 4
  %cmp54 = icmp ugt i32 %64, 0
  br i1 %cmp54, label %if.then.56, label %if.end.135

if.then.56:                                       ; preds = %if.end.52
  %65 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb58 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %65, i32 0, i32 1
  %66 = load i32, i32* %nb58, align 4
  %sub59 = sub i32 %66, 1
  %idxprom60 = zext i32 %sub59 to i64
  %67 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e61 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %67, i32 0, i32 0
  %exon62 = bitcast %union._collec_elt_t* %e61 to %struct._exon_t***
  %68 = load %struct._exon_t**, %struct._exon_t*** %exon62, align 8
  %arrayidx63 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %68, i64 %idxprom60
  %69 = load %struct._exon_t*, %struct._exon_t** %arrayidx63, align 8
  store %struct._exon_t* %69, %struct._exon_t** %e57, align 8
  store i32 0, i32* %cntAs1, align 4
  store i32 0, i32* %cntAs2, align 4
  store i32 0, i32* %j64, align 4
  store i32 0, i32* %score, align 4
  %70 = load i8*, i8** %s2.addr, align 8
  %71 = load %struct._exon_t*, %struct._exon_t** %e57, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %71, i32 0, i32 3
  %72 = load i32, i32* %to2, align 4
  %idx.ext65 = zext i32 %72 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %70, i64 %idx.ext65
  store i8* %add.ptr66, i8** %s, align 8
  %score67 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  store i32 0, i32* %score67, align 4
  br label %while.cond.68

while.cond.68:                                    ; preds = %sw.epilog, %if.then.56
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv69 = zext i8 %74 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.rhs.71, label %land.end.76

land.rhs.71:                                      ; preds = %while.cond.68
  %score72 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %75 = load i32, i32* %score72, align 4
  %76 = load i32, i32* %score, align 4
  %sub73 = sub nsw i32 %75, %76
  %cmp74 = icmp slt i32 %sub73, 10
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.71, %while.cond.68
  %77 = phi i1 [ false, %while.cond.68 ], [ %cmp74, %land.rhs.71 ]
  br i1 %77, label %while.body.77, label %while.end.91

while.body.77:                                    ; preds = %land.end.76
  %78 = load i32, i32* %j64, align 4
  %add78 = add i32 %78, 1
  store i32 %add78, i32* %j64, align 4
  %79 = load i8*, i8** %s, align 8
  %80 = load i8, i8* %79, align 1
  %conv79 = zext i8 %80 to i32
  switch i32 %conv79, label %sw.default [
    i32 65, label %sw.bb
    i32 78, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %while.body.77
  %81 = load i32, i32* %cntAs2, align 4
  %add80 = add i32 %81, 1
  store i32 %add80, i32* %cntAs2, align 4
  %82 = load i32, i32* %score, align 4
  %add81 = add nsw i32 %82, 1
  store i32 %add81, i32* %score, align 4
  %83 = load i32, i32* %score, align 4
  %score82 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %84 = load i32, i32* %score82, align 4
  %cmp83 = icmp sgt i32 %83, %84
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %sw.bb
  %85 = load i32, i32* %score, align 4
  %score86 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  store i32 %85, i32* %score86, align 4
  %86 = load i32, i32* %cntAs2, align 4
  %cnt = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  store i32 %86, i32* %cnt, align 4
  %87 = load i32, i32* %j64, align 4
  %d = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  store i32 %87, i32* %d, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %sw.bb
  br label %sw.epilog

sw.bb.88:                                         ; preds = %while.body.77
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.77
  %88 = load i32, i32* %score, align 4
  %sub89 = sub nsw i32 %88, 2
  store i32 %sub89, i32* %score, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.88, %if.end.87
  %89 = load i8*, i8** %s, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %add.ptr90, i8** %s, align 8
  br label %while.cond.68

while.end.91:                                     ; preds = %land.end.76
  %score92 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %90 = load i32, i32* %score92, align 4
  %cmp93 = icmp sgt i32 %90, 0
  br i1 %cmp93, label %land.lhs.true, label %if.end.134

land.lhs.true:                                    ; preds = %while.end.91
  %cnt95 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  %91 = load i32, i32* %cnt95, align 4
  %cmp96 = icmp uge i32 %91, 8
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.134

land.lhs.true.98:                                 ; preds = %land.lhs.true
  %cnt99 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  %92 = load i32, i32* %cnt99, align 4
  %mul100 = mul i32 %92, 10
  %d101 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  %93 = load i32, i32* %d101, align 4
  %div = udiv i32 %mul100, %93
  %cmp102 = icmp uge i32 %div, 8
  br i1 %cmp102, label %if.then.104, label %if.end.134

if.then.104:                                      ; preds = %land.lhs.true.98
  %94 = load i8*, i8** %s1.addr, align 8
  %95 = load %struct._exon_t*, %struct._exon_t** %e57, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %95, i32 0, i32 2
  %96 = load i32, i32* %to1, align 4
  %idx.ext105 = zext i32 %96 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %94, i64 %idx.ext105
  store i8* %add.ptr106, i8** %s, align 8
  store i32 0, i32* %j64, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %if.end.122, %if.then.104
  %97 = load i8*, i8** %s, align 8
  %98 = load i8, i8* %97, align 1
  %conv108 = zext i8 %98 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %land.rhs.110, label %land.end.114

land.rhs.110:                                     ; preds = %while.cond.107
  %99 = load i32, i32* %j64, align 4
  %d111 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  %100 = load i32, i32* %d111, align 4
  %cmp112 = icmp ult i32 %99, %100
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.110, %while.cond.107
  %101 = phi i1 [ false, %while.cond.107 ], [ %cmp112, %land.rhs.110 ]
  br i1 %101, label %while.body.115, label %while.end.124

while.body.115:                                   ; preds = %land.end.114
  %102 = load i32, i32* %j64, align 4
  %add116 = add i32 %102, 1
  store i32 %add116, i32* %j64, align 4
  %103 = load i8*, i8** %s, align 8
  %104 = load i8, i8* %103, align 1
  %conv117 = zext i8 %104 to i32
  %cmp118 = icmp eq i32 %conv117, 65
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %while.body.115
  %105 = load i32, i32* %cntAs1, align 4
  %add121 = add i32 %105, 1
  store i32 %add121, i32* %cntAs1, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %while.body.115
  %106 = load i8*, i8** %s, align 8
  %add.ptr123 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %add.ptr123, i8** %s, align 8
  br label %while.cond.107

while.end.124:                                    ; preds = %land.end.114
  %107 = load i32, i32* %j64, align 4
  %cmp125 = icmp ugt i32 %107, 0
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.133

land.lhs.true.127:                                ; preds = %while.end.124
  %108 = load i32, i32* %cntAs1, align 4
  %mul128 = mul i32 %108, 10
  %109 = load i32, i32* %j64, align 4
  %div129 = udiv i32 %mul128, %109
  %cmp130 = icmp ult i32 %div129, 8
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.127
  %110 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %st = getelementptr inbounds %struct._result_t, %struct._result_t* %110, i32 0, i32 5
  %polyA_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st, i32 0, i32 1
  store i32 1, i32* %polyA_cut, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true.127, %while.end.124
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %land.lhs.true.98, %land.lhs.true, %while.end.91
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.52
  %111 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %nb136 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %111, i32 0, i32 1
  %112 = load i32, i32* %nb136, align 4
  %cmp137 = icmp ugt i32 %112, 0
  br i1 %cmp137, label %if.then.139, label %if.end.227

if.then.139:                                      ; preds = %if.end.135
  %113 = load %struct._collec_t*, %struct._collec_t** %eCol, align 8
  %e141 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %113, i32 0, i32 0
  %exon142 = bitcast %union._collec_elt_t* %e141 to %struct._exon_t***
  %114 = load %struct._exon_t**, %struct._exon_t*** %exon142, align 8
  %arrayidx143 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %114, i64 0
  %115 = load %struct._exon_t*, %struct._exon_t** %arrayidx143, align 8
  store %struct._exon_t* %115, %struct._exon_t** %e140, align 8
  store i32 0, i32* %cntTs1, align 4
  store i32 0, i32* %cntTs2, align 4
  store i32 0, i32* %j144, align 4
  store i32 0, i32* %score145, align 4
  %116 = load i8*, i8** %s2.addr, align 8
  %117 = load %struct._exon_t*, %struct._exon_t** %e140, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 1
  %118 = load i32, i32* %from2, align 4
  %idx.ext147 = zext i32 %118 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %116, i64 %idx.ext147
  %add.ptr149 = getelementptr inbounds i8, i8* %add.ptr148, i64 -2
  store i8* %add.ptr149, i8** %s146, align 8
  %score150 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  store i32 0, i32* %score150, align 4
  br label %while.cond.151

while.cond.151:                                   ; preds = %sw.epilog.177, %if.then.139
  %119 = load i8*, i8** %s146, align 8
  %120 = load i8*, i8** %s2.addr, align 8
  %cmp152 = icmp uge i8* %119, %120
  br i1 %cmp152, label %land.rhs.154, label %land.end.159

land.rhs.154:                                     ; preds = %while.cond.151
  %score155 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %121 = load i32, i32* %score155, align 4
  %122 = load i32, i32* %score145, align 4
  %sub156 = sub nsw i32 %121, %122
  %cmp157 = icmp slt i32 %sub156, 10
  br label %land.end.159

land.end.159:                                     ; preds = %land.rhs.154, %while.cond.151
  %123 = phi i1 [ false, %while.cond.151 ], [ %cmp157, %land.rhs.154 ]
  br i1 %123, label %while.body.160, label %while.end.179

while.body.160:                                   ; preds = %land.end.159
  %124 = load i32, i32* %j144, align 4
  %add161 = add i32 %124, 1
  store i32 %add161, i32* %j144, align 4
  %125 = load i8*, i8** %s146, align 8
  %126 = load i8, i8* %125, align 1
  %conv162 = zext i8 %126 to i32
  switch i32 %conv162, label %sw.default.175 [
    i32 84, label %sw.bb.163
    i32 78, label %sw.bb.174
  ]

sw.bb.163:                                        ; preds = %while.body.160
  %127 = load i32, i32* %cntTs2, align 4
  %add164 = add i32 %127, 1
  store i32 %add164, i32* %cntTs2, align 4
  %128 = load i32, i32* %score145, align 4
  %add165 = add nsw i32 %128, 1
  store i32 %add165, i32* %score145, align 4
  %129 = load i32, i32* %score145, align 4
  %score166 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %130 = load i32, i32* %score166, align 4
  %cmp167 = icmp sgt i32 %129, %130
  br i1 %cmp167, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %sw.bb.163
  %131 = load i32, i32* %score145, align 4
  %score170 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  store i32 %131, i32* %score170, align 4
  %132 = load i32, i32* %cntTs2, align 4
  %cnt171 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  store i32 %132, i32* %cnt171, align 4
  %133 = load i32, i32* %j144, align 4
  %d172 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  store i32 %133, i32* %d172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %sw.bb.163
  br label %sw.epilog.177

sw.bb.174:                                        ; preds = %while.body.160
  br label %sw.epilog.177

sw.default.175:                                   ; preds = %while.body.160
  %134 = load i32, i32* %score145, align 4
  %sub176 = sub nsw i32 %134, 2
  store i32 %sub176, i32* %score145, align 4
  br label %sw.epilog.177

sw.epilog.177:                                    ; preds = %sw.default.175, %sw.bb.174, %if.end.173
  %135 = load i8*, i8** %s146, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %135, i64 -1
  store i8* %add.ptr178, i8** %s146, align 8
  br label %while.cond.151

while.end.179:                                    ; preds = %land.end.159
  %score180 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 0
  %136 = load i32, i32* %score180, align 4
  %cmp181 = icmp sgt i32 %136, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.226

land.lhs.true.183:                                ; preds = %while.end.179
  %cnt184 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  %137 = load i32, i32* %cnt184, align 4
  %cmp185 = icmp uge i32 %137, 8
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.226

land.lhs.true.187:                                ; preds = %land.lhs.true.183
  %cnt188 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 1
  %138 = load i32, i32* %cnt188, align 4
  %mul189 = mul i32 %138, 10
  %d190 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  %139 = load i32, i32* %d190, align 4
  %div191 = udiv i32 %mul189, %139
  %cmp192 = icmp uge i32 %div191, 8
  br i1 %cmp192, label %if.then.194, label %if.end.226

if.then.194:                                      ; preds = %land.lhs.true.187
  %140 = load i8*, i8** %s1.addr, align 8
  %141 = load %struct._exon_t*, %struct._exon_t** %e140, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %141, i32 0, i32 0
  %142 = load i32, i32* %from1, align 4
  %idx.ext195 = zext i32 %142 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %140, i64 %idx.ext195
  %add.ptr197 = getelementptr inbounds i8, i8* %add.ptr196, i64 -2
  store i8* %add.ptr197, i8** %s146, align 8
  store i32 0, i32* %j144, align 4
  br label %while.cond.198

while.cond.198:                                   ; preds = %if.end.213, %if.then.194
  %143 = load i8*, i8** %s146, align 8
  %144 = load i8*, i8** %s1.addr, align 8
  %cmp199 = icmp uge i8* %143, %144
  br i1 %cmp199, label %land.rhs.201, label %land.end.205

land.rhs.201:                                     ; preds = %while.cond.198
  %145 = load i32, i32* %j144, align 4
  %d202 = getelementptr inbounds %struct.anon, %struct.anon* %best, i32 0, i32 2
  %146 = load i32, i32* %d202, align 4
  %cmp203 = icmp ult i32 %145, %146
  br label %land.end.205

land.end.205:                                     ; preds = %land.rhs.201, %while.cond.198
  %147 = phi i1 [ false, %while.cond.198 ], [ %cmp203, %land.rhs.201 ]
  br i1 %147, label %while.body.206, label %while.end.215

while.body.206:                                   ; preds = %land.end.205
  %148 = load i32, i32* %j144, align 4
  %add207 = add i32 %148, 1
  store i32 %add207, i32* %j144, align 4
  %149 = load i8*, i8** %s146, align 8
  %150 = load i8, i8* %149, align 1
  %conv208 = zext i8 %150 to i32
  %cmp209 = icmp eq i32 %conv208, 84
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %while.body.206
  %151 = load i32, i32* %cntTs1, align 4
  %add212 = add i32 %151, 1
  store i32 %add212, i32* %cntTs1, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %while.body.206
  %152 = load i8*, i8** %s146, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %152, i64 -1
  store i8* %add.ptr214, i8** %s146, align 8
  br label %while.cond.198

while.end.215:                                    ; preds = %land.end.205
  %153 = load i32, i32* %j144, align 4
  %cmp216 = icmp ugt i32 %153, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.225

land.lhs.true.218:                                ; preds = %while.end.215
  %154 = load i32, i32* %cntTs1, align 4
  %mul219 = mul i32 %154, 10
  %155 = load i32, i32* %j144, align 4
  %div220 = udiv i32 %mul219, %155
  %cmp221 = icmp ult i32 %div220, 8
  br i1 %cmp221, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %land.lhs.true.218
  %156 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %st224 = getelementptr inbounds %struct._result_t, %struct._result_t* %156, i32 0, i32 5
  %polyT_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st224, i32 0, i32 2
  store i32 1, i32* %polyT_cut, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %land.lhs.true.218, %while.end.215
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %land.lhs.true.187, %land.lhs.true.183, %while.end.179
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.135
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_hash_env(%struct._hash_env_t* %he, i32 %W, i8* %seq, i32 %len) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %W.addr = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i32 %W, i32* %W.addr, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %W.addr, align 4
  %1 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W1 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1, i32 0, i32 5
  store i32 %0, i32* %W1, align 4
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq2 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %3, i32 0, i32 1
  store i8* %2, i8** %seq2, align 8
  %4 = load i32, i32* %len.addr, align 4
  %5 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len3 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %5, i32 0, i32 2
  store i32 %4, i32* %len3, align 4
  %6 = load i32, i32* %W.addr, align 4
  %7 = load i32, i32* %W.addr, align 4
  %add = add i32 %6, %7
  %sub = sub i32 %add, 2
  %shl = shl i32 1, %sub
  %sub4 = sub nsw i32 %shl, 1
  %8 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %mask = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %8, i32 0, i32 4
  store i32 %sub4, i32* %mask, align 4
  %9 = load i32, i32* %len.addr, align 4
  %add5 = add i32 %9, 1
  %conv = zext i32 %add5 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @xmalloc(i64 %mul)
  %10 = bitcast i8* %call to i32*
  %11 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %next_pos = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %11, i32 0, i32 3
  store i32* %10, i32** %next_pos, align 8
  %call6 = call i8* @xcalloc(i64 524288, i64 8)
  %12 = bitcast i8* %call6 to i8**
  %13 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %hashtab = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %13, i32 0, i32 0
  store i8** %12, i8*** %hashtab, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bld_table(%struct._hash_env_t* %he) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %ecode = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i8*, align 8
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %seq, align 8
  store i8* %1, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %3, i32 0, i32 2
  %4 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  br label %restart

restart:                                          ; preds = %if.then.17, %if.then, %while.body
  store i32 0, i32* %ecode, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %restart
  %5 = load i32, i32* %j, align 4
  %6 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %6, i32 0, i32 5
  %7 = load i32, i32* %W, align 4
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len2 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %9, i32 0, i32 2
  %10 = load i32, i32* %len2, align 4
  %cmp3 = icmp ult i32 %8, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  store i32 %14, i32* %tmp, align 4
  %15 = load i32, i32* %i, align 4
  %add = add i32 %15, 1
  store i32 %add, i32* %i, align 4
  %16 = load i32, i32* %tmp, align 4
  %cmp4 = icmp ugt i32 %16, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %restart

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %ecode, align 4
  %shl = shl i32 %17, 2
  %18 = load i32, i32* %tmp, align 4
  %add5 = add i32 %shl, %18
  store i32 %add5, i32* %ecode, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end.18, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len7 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %21, i32 0, i32 2
  %22 = load i32, i32* %len7, align 4
  %cmp8 = icmp ult i32 %20, %22
  br i1 %cmp8, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.cond.6
  %23 = load i8*, i8** %t, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr12, i8** %t, align 8
  %24 = load i8, i8* %23, align 1
  %idxprom13 = zext i8 %24 to i64
  %arrayidx14 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i32 0, i64 %idxprom13
  %25 = load i32, i32* %arrayidx14, align 4
  store i32 %25, i32* %tmp11, align 4
  %26 = load i32, i32* %i, align 4
  %add15 = add i32 %26, 1
  store i32 %add15, i32* %i, align 4
  %27 = load i32, i32* %tmp11, align 4
  %cmp16 = icmp ugt i32 %27, 3
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body.9
  br label %restart

if.end.18:                                        ; preds = %while.body.9
  %28 = load i32, i32* %ecode, align 4
  %29 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %mask = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %29, i32 0, i32 4
  %30 = load i32, i32* %mask, align 4
  %and = and i32 %28, %30
  %shl19 = shl i32 %and, 2
  %31 = load i32, i32* %tmp11, align 4
  %add20 = add i32 %shl19, %31
  store i32 %add20, i32* %ecode, align 4
  %32 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %33 = load i32, i32* %ecode, align 4
  %34 = load i32, i32* %i, align 4
  call void @add_word(%struct._hash_env_t* %32, i32 %33, i32 %34)
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_hash_env(%struct._hash_env_t* %he) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %hval = alloca i32, align 4
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  %0 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %next_pos = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %0, i32 0, i32 3
  %1 = load i32*, i32** %next_pos, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #2
  store i32 0, i32* %hval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %hval, align 4
  %cmp = icmp ult i32 %3, 524288
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %hval, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %hashtab = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %5, i32 0, i32 0
  %6 = load i8**, i8*** %hashtab, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  call void @tdestroy(i8* %7, void (i8*)* @free)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %hval, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %hval, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %hashtab1 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %9, i32 0, i32 0
  %10 = load i8**, i8*** %hashtab1, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swap_seqs(%struct._collec_t* %eCol) #0 {
entry:
  %eCol.addr = alloca %struct._collec_t*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct._exon_t*, align 8
  %tem = alloca i32, align 4
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e1 to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %e, align 8
  %7 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %7, i32 0, i32 0
  %8 = load i32, i32* %from1, align 4
  store i32 %8, i32* %tem, align 4
  %9 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %9, i32 0, i32 1
  %10 = load i32, i32* %from2, align 4
  %11 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from12 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %11, i32 0, i32 0
  store i32 %10, i32* %from12, align 4
  %12 = load i32, i32* %tem, align 4
  %13 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 1
  store i32 %12, i32* %from23, align 4
  %14 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 2
  %15 = load i32, i32* %to1, align 4
  store i32 %15, i32* %tem, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 3
  %17 = load i32, i32* %to2, align 4
  %18 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to14 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 2
  store i32 %17, i32* %to14, align 4
  %19 = load i32, i32* %tem, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to25 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 3
  store i32 %19, i32* %to25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grow_exon_right(%struct._exon_t* %e, i8* %s1, i32 %l1, i8* %s2, i32 %l2) #0 {
entry:
  %e.addr = alloca %struct._exon_t*, align 8
  %s1.addr = alloca i8*, align 8
  %l1.addr = alloca i32, align 4
  %s2.addr = alloca i8*, align 8
  %l2.addr = alloca i32, align 4
  store %struct._exon_t* %e, %struct._exon_t** %e.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i32 %l1, i32* %l1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %l2, i32* %l2.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %0, i32 0, i32 2
  %1 = load i32, i32* %to1, align 4
  %2 = load i32, i32* %l1.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %3, i32 0, i32 3
  %4 = load i32, i32* %to2, align 4
  %5 = load i32, i32* %l2.addr, align 4
  %cmp1 = icmp ult i32 %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to12 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %6, i32 0, i32 2
  %7 = load i32, i32* %to12, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 3
  %11 = load i32, i32* %to23, align 4
  %idxprom4 = zext i32 %11 to i64
  %12 = load i8*, i8** %s2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to19 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %15, i32 0, i32 2
  %16 = load i32, i32* %to19, align 4
  %add = add i32 %16, 1
  store i32 %add, i32* %to19, align 4
  %17 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to210 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 3
  %18 = load i32, i32* %to210, align 4
  %add11 = add i32 %18, 1
  store i32 %add11, i32* %to210, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge(%struct._collec_t* %eCol, %struct._collec_t* %aCol, i32 %pos, i32 %W) #0 {
entry:
  %eCol.addr = alloca %struct._collec_t*, align 8
  %aCol.addr = alloca %struct._collec_t*, align 8
  %pos.addr = alloca i32, align 4
  %W.addr = alloca i32, align 4
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  %cur = alloca %struct._exon_t*, align 8
  %next = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store %struct._collec_t* %aCol, %struct._collec_t** %aCol.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %W, i32* %W.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %add = add i32 %0, %2
  store i32 %add, i32* %last, align 4
  %3 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %3, i32 0, i32 1
  %4 = load i32, i32* %nb1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %5 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb2 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 1
  %6 = load i32, i32* %nb2, align 4
  %7 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb3 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %7, i32 0, i32 1
  %8 = load i32, i32* %nb3, align 4
  %add4 = add i32 %6, %8
  %9 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %size = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 2
  %10 = load i32, i32* %size, align 4
  %cmp5 = icmp ugt i32 %add4, %10
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb7 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 1
  %12 = load i32, i32* %nb7, align 4
  %13 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb8 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %13, i32 0, i32 1
  %14 = load i32, i32* %nb8, align 4
  %add9 = add i32 %12, %14
  %15 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %size10 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %15, i32 0, i32 2
  store i32 %add9, i32* %size10, align 4
  %16 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %16, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e to i8***
  %17 = load i8**, i8*** %elt, align 8
  %18 = bitcast i8** %17 to i8*
  %19 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %size11 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %19, i32 0, i32 2
  %20 = load i32, i32* %size11, align 4
  %conv = zext i32 %20 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xrealloc(i8* %18, i64 %mul)
  %21 = bitcast i8* %call to i8**
  %22 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e12 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %22, i32 0, i32 0
  %elt13 = bitcast %union._collec_elt_t* %e12 to i8***
  store i8** %21, i8*** %elt13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %if.end
  %23 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e15 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %23, i32 0, i32 0
  %elt16 = bitcast %union._collec_elt_t* %e15 to i8***
  %24 = load i8**, i8*** %elt16, align 8
  %25 = load i32, i32* %last, align 4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %24, i64 %idx.ext
  %26 = bitcast i8** %add.ptr to i8*
  %27 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e17 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %27, i32 0, i32 0
  %elt18 = bitcast %union._collec_elt_t* %e17 to i8***
  %28 = load i8**, i8*** %elt18, align 8
  %29 = load i32, i32* %pos.addr, align 4
  %idx.ext19 = zext i32 %29 to i64
  %add.ptr20 = getelementptr inbounds i8*, i8** %28, i64 %idx.ext19
  %30 = bitcast i8** %add.ptr20 to i8*
  %31 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb21 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %31, i32 0, i32 1
  %32 = load i32, i32* %nb21, align 4
  %33 = load i32, i32* %pos.addr, align 4
  %sub = sub i32 %32, %33
  %conv22 = zext i32 %sub to i64
  %mul23 = mul i64 %conv22, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %30, i64 %mul23, i32 8, i1 false)
  %34 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e24 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %34, i32 0, i32 0
  %elt25 = bitcast %union._collec_elt_t* %e24 to i8***
  %35 = load i8**, i8*** %elt25, align 8
  %36 = load i32, i32* %pos.addr, align 4
  %idx.ext26 = zext i32 %36 to i64
  %add.ptr27 = getelementptr inbounds i8*, i8** %35, i64 %idx.ext26
  %37 = bitcast i8** %add.ptr27 to i8*
  %38 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %e28 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %38, i32 0, i32 0
  %elt29 = bitcast %union._collec_elt_t* %e28 to i8***
  %39 = load i8**, i8*** %elt29, align 8
  %40 = bitcast i8** %39 to i8*
  %41 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb30 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %41, i32 0, i32 1
  %42 = load i32, i32* %nb30, align 4
  %conv31 = zext i32 %42 to i64
  %mul32 = mul i64 %conv31, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %40, i64 %mul32, i32 8, i1 false)
  %43 = load %struct._collec_t*, %struct._collec_t** %aCol.addr, align 8
  %nb33 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %43, i32 0, i32 1
  %44 = load i32, i32* %nb33, align 4
  %45 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb34 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %45, i32 0, i32 1
  %46 = load i32, i32* %nb34, align 4
  %add35 = add i32 %46, %44
  store i32 %add35, i32* %nb34, align 4
  %47 = load i32, i32* %last, align 4
  %48 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb36 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %48, i32 0, i32 1
  %49 = load i32, i32* %nb36, align 4
  %cmp37 = icmp ult i32 %47, %49
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.14
  %50 = load i32, i32* %last, align 4
  %add40 = add i32 %50, 1
  store i32 %add40, i32* %last, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.14
  %51 = load i32, i32* %pos.addr, align 4
  %cmp42 = icmp eq i32 %51, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %52 = load i32, i32* %pos.addr, align 4
  %add45 = add i32 %52, 1
  store i32 %add45, i32* %pos.addr, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %53 = load i32, i32* %pos.addr, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %last, align 4
  %cmp47 = icmp ult i32 %54, %55
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %i, align 4
  %sub49 = sub i32 %56, 1
  %idxprom = zext i32 %sub49 to i64
  %57 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e50 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %57, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e50 to %struct._exon_t***
  %58 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %58, i64 %idxprom
  %59 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %59, %struct._exon_t** %cur, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom51 = zext i32 %60 to i64
  %61 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %61, i32 0, i32 0
  %exon53 = bitcast %union._collec_elt_t* %e52 to %struct._exon_t***
  %62 = load %struct._exon_t**, %struct._exon_t*** %exon53, align 8
  %arrayidx54 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %62, i64 %idxprom51
  %63 = load %struct._exon_t*, %struct._exon_t** %arrayidx54, align 8
  store %struct._exon_t* %63, %struct._exon_t** %next, align 8
  %64 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %64, i32 0, i32 1
  %65 = load i32, i32* %from2, align 4
  %66 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from255 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %66, i32 0, i32 1
  %67 = load i32, i32* %from255, align 4
  %cmp56 = icmp ule i32 %65, %67
  br i1 %cmp56, label %if.then.58, label %if.end.76

if.then.58:                                       ; preds = %for.body
  %68 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %69 = bitcast %struct._exon_t* %68 to i8*
  call void @free(i8* %69) #2
  %70 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e59 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %70, i32 0, i32 0
  %elt60 = bitcast %union._collec_elt_t* %e59 to i8***
  %71 = load i8**, i8*** %elt60, align 8
  %72 = load i32, i32* %i, align 4
  %idx.ext61 = zext i32 %72 to i64
  %add.ptr62 = getelementptr inbounds i8*, i8** %71, i64 %idx.ext61
  %add.ptr63 = getelementptr inbounds i8*, i8** %add.ptr62, i64 -1
  %73 = bitcast i8** %add.ptr63 to i8*
  %74 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e64 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %74, i32 0, i32 0
  %elt65 = bitcast %union._collec_elt_t* %e64 to i8***
  %75 = load i8**, i8*** %elt65, align 8
  %76 = load i32, i32* %i, align 4
  %idx.ext66 = zext i32 %76 to i64
  %add.ptr67 = getelementptr inbounds i8*, i8** %75, i64 %idx.ext66
  %77 = bitcast i8** %add.ptr67 to i8*
  %78 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb68 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %78, i32 0, i32 1
  %79 = load i32, i32* %nb68, align 4
  %80 = load i32, i32* %i, align 4
  %sub69 = sub i32 %79, %80
  %conv70 = zext i32 %sub69 to i64
  %mul71 = mul i64 %conv70, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %73, i8* %77, i64 %mul71, i32 8, i1 false)
  %81 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb72 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %81, i32 0, i32 1
  %82 = load i32, i32* %nb72, align 4
  %sub73 = sub i32 %82, 1
  store i32 %sub73, i32* %nb72, align 4
  %83 = load i32, i32* %last, align 4
  %sub74 = sub i32 %83, 1
  store i32 %sub74, i32* %last, align 4
  %84 = load i32, i32* %i, align 4
  %sub75 = sub i32 %84, 1
  store i32 %sub75, i32* %i, align 4
  br label %for.inc

if.end.76:                                        ; preds = %for.body
  %85 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %85, i32 0, i32 3
  %86 = load i32, i32* %to2, align 4
  %87 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to277 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %87, i32 0, i32 3
  %88 = load i32, i32* %to277, align 4
  %cmp78 = icmp uge i32 %86, %88
  br i1 %cmp78, label %if.then.80, label %if.end.98

if.then.80:                                       ; preds = %if.end.76
  %89 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %90 = bitcast %struct._exon_t* %89 to i8*
  call void @free(i8* %90) #2
  %91 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb81 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %91, i32 0, i32 1
  %92 = load i32, i32* %nb81, align 4
  %sub82 = sub i32 %92, 1
  store i32 %sub82, i32* %nb81, align 4
  %93 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e83 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %93, i32 0, i32 0
  %elt84 = bitcast %union._collec_elt_t* %e83 to i8***
  %94 = load i8**, i8*** %elt84, align 8
  %95 = load i32, i32* %i, align 4
  %idx.ext85 = zext i32 %95 to i64
  %add.ptr86 = getelementptr inbounds i8*, i8** %94, i64 %idx.ext85
  %96 = bitcast i8** %add.ptr86 to i8*
  %97 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e87 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %97, i32 0, i32 0
  %elt88 = bitcast %union._collec_elt_t* %e87 to i8***
  %98 = load i8**, i8*** %elt88, align 8
  %99 = load i32, i32* %i, align 4
  %idx.ext89 = zext i32 %99 to i64
  %add.ptr90 = getelementptr inbounds i8*, i8** %98, i64 %idx.ext89
  %add.ptr91 = getelementptr inbounds i8*, i8** %add.ptr90, i64 1
  %100 = bitcast i8** %add.ptr91 to i8*
  %101 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb92 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %101, i32 0, i32 1
  %102 = load i32, i32* %nb92, align 4
  %103 = load i32, i32* %i, align 4
  %sub93 = sub i32 %102, %103
  %conv94 = zext i32 %sub93 to i64
  %mul95 = mul i64 %conv94, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %96, i8* %100, i64 %mul95, i32 8, i1 false)
  %104 = load i32, i32* %last, align 4
  %sub96 = sub i32 %104, 1
  store i32 %sub96, i32* %last, align 4
  %105 = load i32, i32* %i, align 4
  %sub97 = sub i32 %105, 1
  store i32 %sub97, i32* %i, align 4
  br label %for.inc

if.end.98:                                        ; preds = %if.end.76
  %106 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 0
  %107 = load i32, i32* %from1, align 4
  %108 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %108, i32 0, i32 2
  %109 = load i32, i32* %to1, align 4
  %add99 = add i32 %109, 1
  %add100 = add i32 %add99, 30
  %cmp101 = icmp ult i32 %107, %add100
  br i1 %cmp101, label %land.lhs.true, label %if.end.167

land.lhs.true:                                    ; preds = %if.end.98
  %110 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2103 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %110, i32 0, i32 1
  %111 = load i32, i32* %from2103, align 4
  %112 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2104 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %112, i32 0, i32 3
  %113 = load i32, i32* %to2104, align 4
  %add105 = add i32 %113, 1
  %114 = load i32, i32* %W.addr, align 4
  %add106 = add i32 %add105, %114
  %cmp107 = icmp ule i32 %111, %add106
  br i1 %cmp107, label %if.then.109, label %if.end.167

if.then.109:                                      ; preds = %land.lhs.true
  %115 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1110 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %115, i32 0, i32 0
  %116 = load i32, i32* %from1110, align 4
  %117 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1111 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 0
  %118 = load i32, i32* %from1111, align 4
  %cmp112 = icmp ugt i32 %116, %118
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.109
  %119 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1114 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %119, i32 0, i32 0
  %120 = load i32, i32* %from1114, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.109
  %121 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1115 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %121, i32 0, i32 0
  %122 = load i32, i32* %from1115, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %120, %cond.true ], [ %122, %cond.false ]
  %123 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1116 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %123, i32 0, i32 0
  store i32 %cond, i32* %from1116, align 4
  %124 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2117 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %124, i32 0, i32 1
  %125 = load i32, i32* %from2117, align 4
  %126 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2118 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %126, i32 0, i32 1
  %127 = load i32, i32* %from2118, align 4
  %cmp119 = icmp ugt i32 %125, %127
  br i1 %cmp119, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %cond.end
  %128 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2122 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %128, i32 0, i32 1
  %129 = load i32, i32* %from2122, align 4
  br label %cond.end.125

cond.false.123:                                   ; preds = %cond.end
  %130 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2124 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %130, i32 0, i32 1
  %131 = load i32, i32* %from2124, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.121
  %cond126 = phi i32 [ %129, %cond.true.121 ], [ %131, %cond.false.123 ]
  %132 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2127 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %132, i32 0, i32 1
  store i32 %cond126, i32* %from2127, align 4
  %133 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to1128 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %133, i32 0, i32 2
  %134 = load i32, i32* %to1128, align 4
  %135 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1129 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %135, i32 0, i32 2
  %136 = load i32, i32* %to1129, align 4
  %cmp130 = icmp ult i32 %134, %136
  br i1 %cmp130, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %cond.end.125
  %137 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1133 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %137, i32 0, i32 2
  %138 = load i32, i32* %to1133, align 4
  br label %cond.end.136

cond.false.134:                                   ; preds = %cond.end.125
  %139 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to1135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %139, i32 0, i32 2
  %140 = load i32, i32* %to1135, align 4
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.132
  %cond137 = phi i32 [ %138, %cond.true.132 ], [ %140, %cond.false.134 ]
  %141 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1138 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %141, i32 0, i32 2
  store i32 %cond137, i32* %to1138, align 4
  %142 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to2139 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %142, i32 0, i32 3
  %143 = load i32, i32* %to2139, align 4
  %144 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2140 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %144, i32 0, i32 3
  %145 = load i32, i32* %to2140, align 4
  %cmp141 = icmp ult i32 %143, %145
  br i1 %cmp141, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %cond.end.136
  %146 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2144 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %146, i32 0, i32 3
  %147 = load i32, i32* %to2144, align 4
  br label %cond.end.147

cond.false.145:                                   ; preds = %cond.end.136
  %148 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to2146 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %148, i32 0, i32 3
  %149 = load i32, i32* %to2146, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.143
  %cond148 = phi i32 [ %147, %cond.true.143 ], [ %149, %cond.false.145 ]
  %150 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2149 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %150, i32 0, i32 3
  store i32 %cond148, i32* %to2149, align 4
  %151 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %152 = bitcast %struct._exon_t* %151 to i8*
  call void @free(i8* %152) #2
  %153 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb150 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %153, i32 0, i32 1
  %154 = load i32, i32* %nb150, align 4
  %sub151 = sub i32 %154, 1
  store i32 %sub151, i32* %nb150, align 4
  %155 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e152 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %155, i32 0, i32 0
  %elt153 = bitcast %union._collec_elt_t* %e152 to i8***
  %156 = load i8**, i8*** %elt153, align 8
  %157 = load i32, i32* %i, align 4
  %idx.ext154 = zext i32 %157 to i64
  %add.ptr155 = getelementptr inbounds i8*, i8** %156, i64 %idx.ext154
  %158 = bitcast i8** %add.ptr155 to i8*
  %159 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e156 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %159, i32 0, i32 0
  %elt157 = bitcast %union._collec_elt_t* %e156 to i8***
  %160 = load i8**, i8*** %elt157, align 8
  %161 = load i32, i32* %i, align 4
  %idx.ext158 = zext i32 %161 to i64
  %add.ptr159 = getelementptr inbounds i8*, i8** %160, i64 %idx.ext158
  %add.ptr160 = getelementptr inbounds i8*, i8** %add.ptr159, i64 1
  %162 = bitcast i8** %add.ptr160 to i8*
  %163 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb161 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %163, i32 0, i32 1
  %164 = load i32, i32* %nb161, align 4
  %165 = load i32, i32* %i, align 4
  %sub162 = sub i32 %164, %165
  %conv163 = zext i32 %sub162 to i64
  %mul164 = mul i64 %conv163, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %158, i8* %162, i64 %mul164, i32 8, i1 false)
  %166 = load i32, i32* %last, align 4
  %sub165 = sub i32 %166, 1
  store i32 %sub165, i32* %last, align 4
  %167 = load i32, i32* %i, align 4
  %sub166 = sub i32 %167, 1
  store i32 %sub166, i32* %i, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.147, %land.lhs.true, %if.end.98
  br label %for.inc

for.inc:                                          ; preds = %if.end.167, %if.then.80, %if.then.58
  %168 = load i32, i32* %i, align 4
  %inc = add i32 %168, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_polyAT_exon_p(%struct._exon_t* %e, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct._exon_t*, align 8
  %s.addr = alloca i8*, align 8
  %cntA = alloca i32, align 4
  %cntC = alloca i32, align 4
  %cntG = alloca i32, align 4
  %cntT = alloca i32, align 4
  %cntN = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct._exon_t* %e, %struct._exon_t** %e.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %cntA, align 4
  store i32 0, i32* %cntC, align 4
  store i32 0, i32* %cntG, align 4
  store i32 0, i32* %cntT, align 4
  store i32 0, i32* %cntN, align 4
  %0 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %0, i32 0, i32 3
  %1 = load i32, i32* %to2, align 4
  %2 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %2, i32 0, i32 1
  %3 = load i32, i32* %from2, align 4
  %sub = sub i32 %1, %3
  %add = add i32 %sub, 1
  store i32 %add, i32* %len, align 4
  %4 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from21 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %4, i32 0, i32 1
  %5 = load i32, i32* %from21, align 4
  %sub2 = sub i32 %5, 1
  store i32 %sub2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %to23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %7, i32 0, i32 3
  %8 = load i32, i32* %to23, align 4
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb.5
    i32 71, label %sw.bb.7
    i32 84, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %for.body
  %12 = load i32, i32* %cntA, align 4
  %add4 = add i32 %12, 1
  store i32 %add4, i32* %cntA, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %13 = load i32, i32* %cntC, align 4
  %add6 = add i32 %13, 1
  store i32 %add6, i32* %cntC, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %14 = load i32, i32* %cntG, align 4
  %add8 = add i32 %14, 1
  store i32 %add8, i32* %cntG, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %15 = load i32, i32* %cntT, align 4
  %add10 = add i32 %15, 1
  store i32 %add10, i32* %cntT, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %16 = load i32, i32* %cntN, align 4
  %add11 = add i32 %16, 1
  store i32 %add11, i32* %cntN, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %cntN, align 4
  %19 = load i32, i32* %len, align 4
  %sub12 = sub i32 %19, %18
  store i32 %sub12, i32* %len, align 4
  %20 = load i32, i32* %len, align 4
  %cmp13 = icmp ult i32 %20, 30
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %21 = load i32, i32* %cntA, align 4
  %mul = mul i32 %21, 10
  %22 = load i32, i32* %len, align 4
  %div = udiv i32 %mul, %22
  %cmp15 = icmp uge i32 %div, 7
  br i1 %cmp15, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load i32, i32* %cntA, align 4
  %24 = load i32, i32* %cntG, align 4
  %add17 = add i32 %23, %24
  %mul18 = mul i32 %add17, 10
  %25 = load i32, i32* %len, align 4
  %div19 = udiv i32 %mul18, %25
  %cmp20 = icmp uge i32 %div19, 8
  br i1 %cmp20, label %if.then.33, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* %cntT, align 4
  %mul23 = mul i32 %26, 10
  %27 = load i32, i32* %len, align 4
  %div24 = udiv i32 %mul23, %27
  %cmp25 = icmp uge i32 %div24, 7
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.22
  %28 = load i32, i32* %cntT, align 4
  %29 = load i32, i32* %cntC, align 4
  %add28 = add i32 %28, %29
  %mul29 = mul i32 %add28, 10
  %30 = load i32, i32* %len, align 4
  %div30 = udiv i32 %mul29, %30
  %cmp31 = icmp uge i32 %div30, 8
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.22, %lor.lhs.false, %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.27
  br label %if.end.57

if.else:                                          ; preds = %for.end
  %31 = load i32, i32* %cntA, align 4
  %mul34 = mul i32 %31, 10
  %32 = load i32, i32* %len, align 4
  %div35 = udiv i32 %mul34, %32
  %cmp36 = icmp uge i32 %div35, 8
  br i1 %cmp36, label %if.then.55, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.else
  %33 = load i32, i32* %cntA, align 4
  %34 = load i32, i32* %cntG, align 4
  %add39 = add i32 %33, %34
  %mul40 = mul i32 %add39, 100
  %35 = load i32, i32* %len, align 4
  %div41 = udiv i32 %mul40, %35
  %cmp42 = icmp uge i32 %div41, 95
  br i1 %cmp42, label %if.then.55, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.38
  %36 = load i32, i32* %cntT, align 4
  %mul45 = mul i32 %36, 10
  %37 = load i32, i32* %len, align 4
  %div46 = udiv i32 %mul45, %37
  %cmp47 = icmp uge i32 %div46, 8
  br i1 %cmp47, label %if.then.55, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.44
  %38 = load i32, i32* %cntT, align 4
  %39 = load i32, i32* %cntC, align 4
  %add50 = add i32 %38, %39
  %mul51 = mul i32 %add50, 100
  %40 = load i32, i32* %len, align 4
  %div52 = udiv i32 %mul51, %40
  %cmp53 = icmp uge i32 %div52, 95
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.44, %lor.lhs.false.38, %if.else
  store i32 1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %lor.lhs.false.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.55, %if.then.33
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @extend_bw(i8* %s1, i8* %s2, i32 %m, i32 %n, i32 %offset1, i32 %offset2, i32* %line1, i32* %line2, i32 %W) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %offset1.addr = alloca i32, align 4
  %offset2.addr = alloca i32, align 4
  %line1.addr = alloca i32*, align 8
  %line2.addr = alloca i32*, align 8
  %W.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %max_d = alloca i32, align 4
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  %DELTA = alloca i32, align 4
  %ORIGIN = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %last_d = alloca i32*, align 8
  %temp_d = alloca i32*, align 8
  %min_row = alloca i32*, align 8
  %min_diag = alloca i32*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %offset1, i32* %offset1.addr, align 4
  store i32 %offset2, i32* %offset2.addr, align 4
  store i32* %line1, i32** %line1.addr, align 8
  store i32* %line2, i32** %line2.addr, align 8
  store i32 %W, i32* %W.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %DELTA, align 4
  %2 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %max_d, align 4
  %3 = load i32, i32* %m.addr, align 4
  store i32 %3, i32* %ORIGIN, align 4
  %4 = load i32, i32* %m.addr, align 4
  store i32 %4, i32* %row, align 4
  %5 = load i32, i32* %n.addr, align 4
  store i32 %5, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %row, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %7 = load i32, i32* %col, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %row, align 4
  %sub2 = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub2 to i64
  %9 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %col, align 4
  %sub3 = sub nsw i32 %11, 1
  %idxprom4 = sext i32 %sub3 to i64
  %12 = load i8*, i8** %s2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %row, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %row, align 4
  %16 = load i32, i32* %col, align 4
  %dec9 = add nsw i32 %16, -1
  store i32 %dec9, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %17 = load i32, i32* %row, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %18 = load i32, i32* %col, align 4
  %cmp12 = icmp eq i32 %18, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %19 = load i32, i32* %row, align 4
  %20 = load i32, i32* %offset1.addr, align 4
  %add14 = add nsw i32 %19, %20
  %21 = load i32*, i32** %line1.addr, align 8
  store i32 %add14, i32* %21, align 4
  %22 = load i32, i32* %col, align 4
  %23 = load i32, i32* %offset2.addr, align 4
  %add15 = add nsw i32 %22, %23
  %24 = load i32*, i32** %line2.addr, align 8
  store i32 %add15, i32* %24, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %25 = load i32, i32* %m.addr, align 4
  %26 = load i32, i32* %n.addr, align 4
  %add16 = add nsw i32 %25, %26
  %add17 = add nsw i32 %add16, 1
  %conv18 = sext i32 %add17 to i64
  %mul = mul i64 %conv18, 4
  %call = call i8* @xmalloc(i64 %mul)
  %27 = bitcast i8* %call to i32*
  store i32* %27, i32** %last_d, align 8
  %28 = load i32, i32* %m.addr, align 4
  %29 = load i32, i32* %n.addr, align 4
  %add19 = add nsw i32 %28, %29
  %add20 = add nsw i32 %add19, 1
  %conv21 = sext i32 %add20 to i64
  %mul22 = mul i64 %conv21, 4
  %call23 = call i8* @xmalloc(i64 %mul22)
  %30 = bitcast i8* %call23 to i32*
  store i32* %30, i32** %temp_d, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.32, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %m.addr, align 4
  %33 = load i32, i32* %n.addr, align 4
  %add25 = add nsw i32 %32, %33
  %cmp26 = icmp sle i32 %31, %add25
  br i1 %cmp26, label %for.body.28, label %for.end.33

for.body.28:                                      ; preds = %for.cond.24
  %34 = load i32, i32* %m.addr, align 4
  %add29 = add nsw i32 %34, 1
  %35 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load i32*, i32** %last_d, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %36, i64 %idxprom30
  store i32 %add29, i32* %arrayidx31, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %37 = load i32, i32* %k, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.24

for.end.33:                                       ; preds = %for.cond.24
  %38 = load i32, i32* %row, align 4
  %39 = load i32, i32* %ORIGIN, align 4
  %40 = load i32, i32* %DELTA, align 4
  %add34 = add nsw i32 %39, %40
  %idxprom35 = sext i32 %add34 to i64
  %41 = load i32*, i32** %last_d, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 %idxprom35
  store i32 %38, i32* %arrayidx36, align 4
  %42 = load i32, i32* %ORIGIN, align 4
  %43 = load i32, i32* %DELTA, align 4
  %add37 = add nsw i32 %42, %43
  %sub38 = sub nsw i32 %add37, 1
  store i32 %sub38, i32* %lower, align 4
  %44 = load i32, i32* %ORIGIN, align 4
  %45 = load i32, i32* %DELTA, align 4
  %add39 = add nsw i32 %44, %45
  %add40 = add nsw i32 %add39, 1
  store i32 %add40, i32* %upper, align 4
  %46 = load i32, i32* %m.addr, align 4
  %add41 = add nsw i32 %46, 1
  %conv42 = sext i32 %add41 to i64
  %mul43 = mul i64 %conv42, 4
  %call44 = call i8* @xmalloc(i64 %mul43)
  %47 = bitcast i8* %call44 to i32*
  store i32* %47, i32** %min_row, align 8
  %48 = load i32, i32* %m.addr, align 4
  %add45 = add nsw i32 %48, 1
  %conv46 = sext i32 %add45 to i64
  %mul47 = mul i64 %conv46, 4
  %call48 = call i8* @xmalloc(i64 %mul47)
  %49 = bitcast i8* %call48 to i32*
  store i32* %49, i32** %min_diag, align 8
  store i32 1, i32* %d, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.56, %for.end.33
  %50 = load i32, i32* %d, align 4
  %51 = load i32, i32* %m.addr, align 4
  %cmp50 = icmp sle i32 %50, %51
  br i1 %cmp50, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.49
  %52 = load i32, i32* %m.addr, align 4
  %add53 = add nsw i32 %52, 1
  %53 = load i32, i32* %d, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load i32*, i32** %min_row, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %54, i64 %idxprom54
  store i32 %add53, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.52
  %55 = load i32, i32* %d, align 4
  %inc57 = add nsw i32 %55, 1
  store i32 %inc57, i32* %d, align 4
  br label %for.cond.49

for.end.58:                                       ; preds = %for.cond.49
  %56 = load i32, i32* %ORIGIN, align 4
  %57 = load i32, i32* %DELTA, align 4
  %add59 = add nsw i32 %56, %57
  %idxprom60 = sext i32 %add59 to i64
  %58 = load i32*, i32** %last_d, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %58, i64 %idxprom60
  %59 = load i32, i32* %arrayidx61, align 4
  %60 = load i32*, i32** %min_row, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %arrayidx62, align 4
  %61 = load i32, i32* %ORIGIN, align 4
  %62 = load i32, i32* %DELTA, align 4
  %add63 = add nsw i32 %61, %62
  %63 = load i32*, i32** %min_diag, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %add63, i32* %arrayidx64, align 4
  store i32 0, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.256, %for.end.58
  %64 = load i32, i32* %d, align 4
  %inc65 = add nsw i32 %64, 1
  store i32 %inc65, i32* %d, align 4
  %65 = load i32, i32* %max_d, align 4
  %cmp66 = icmp sle i32 %inc65, %65
  br i1 %cmp66, label %land.rhs.68, label %land.end.89

land.rhs.68:                                      ; preds = %while.cond
  %66 = load i32, i32* %d, align 4
  %sub69 = sub nsw i32 %66, 1
  %67 = load i32, i32* %m.addr, align 4
  %68 = load i32, i32* %d, align 4
  %sub70 = sub nsw i32 %68, 1
  %idxprom71 = sext i32 %sub70 to i64
  %69 = load i32*, i32** %min_row, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %69, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4
  %sub73 = sub nsw i32 %67, %70
  %71 = load i32, i32* %W.addr, align 4
  %call74 = call i32 @good_ratio(i32 %sub73, i32 %71)
  %cmp75 = icmp sle i32 %sub69, %call74
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.68
  %72 = load i32, i32* %d, align 4
  %cmp77 = icmp sge i32 %72, 2
  br i1 %cmp77, label %land.rhs.79, label %land.end.88

land.rhs.79:                                      ; preds = %lor.rhs
  %73 = load i32, i32* %d, align 4
  %sub80 = sub nsw i32 %73, 2
  %74 = load i32, i32* %m.addr, align 4
  %75 = load i32, i32* %d, align 4
  %sub81 = sub nsw i32 %75, 2
  %idxprom82 = sext i32 %sub81 to i64
  %76 = load i32*, i32** %min_row, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %76, i64 %idxprom82
  %77 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %74, %77
  %78 = load i32, i32* %W.addr, align 4
  %call85 = call i32 @good_ratio(i32 %sub84, i32 %78)
  %cmp86 = icmp sle i32 %sub80, %call85
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.79, %lor.rhs
  %79 = phi i1 [ false, %lor.rhs ], [ %cmp86, %land.rhs.79 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.88, %land.rhs.68
  %80 = phi i1 [ true, %land.rhs.68 ], [ %79, %land.end.88 ]
  br label %land.end.89

land.end.89:                                      ; preds = %lor.end, %while.cond
  %81 = phi i1 [ false, %while.cond ], [ %80, %lor.end ]
  br i1 %81, label %while.body, label %while.end.259

while.body:                                       ; preds = %land.end.89
  %82 = load i32, i32* %lower, align 4
  store i32 %82, i32* %k, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.214, %while.body
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %upper, align 4
  %cmp91 = icmp sle i32 %83, %84
  br i1 %cmp91, label %for.body.93, label %for.end.216

for.body.93:                                      ; preds = %for.cond.90
  %85 = load i32, i32* %k, align 4
  %86 = load i32, i32* %d, align 4
  %sub94 = sub nsw i32 0, %86
  %87 = load i32, i32* %DELTA, align 4
  %add95 = add nsw i32 %sub94, %87
  %88 = load i32, i32* %ORIGIN, align 4
  %add96 = add nsw i32 %add95, %88
  %cmp97 = icmp eq i32 %85, %add96
  br i1 %cmp97, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %for.body.93
  %89 = load i32, i32* %k, align 4
  %add100 = add nsw i32 %89, 1
  %idxprom101 = sext i32 %add100 to i64
  %90 = load i32*, i32** %last_d, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %90, i64 %idxprom101
  %91 = load i32, i32* %arrayidx102, align 4
  store i32 %91, i32* %row, align 4
  br label %if.end.167

if.else:                                          ; preds = %for.body.93
  %92 = load i32, i32* %k, align 4
  %93 = load i32, i32* %d, align 4
  %94 = load i32, i32* %DELTA, align 4
  %add103 = add nsw i32 %93, %94
  %95 = load i32, i32* %ORIGIN, align 4
  %add104 = add nsw i32 %add103, %95
  %cmp105 = icmp eq i32 %92, %add104
  br i1 %cmp105, label %if.then.107, label %if.else.112

if.then.107:                                      ; preds = %if.else
  %96 = load i32, i32* %k, align 4
  %sub108 = sub nsw i32 %96, 1
  %idxprom109 = sext i32 %sub108 to i64
  %97 = load i32*, i32** %last_d, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %97, i64 %idxprom109
  %98 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %98, 1
  store i32 %sub111, i32* %row, align 4
  br label %if.end.166

if.else.112:                                      ; preds = %if.else
  %99 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %99 to i64
  %100 = load i32*, i32** %last_d, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %100, i64 %idxprom113
  %101 = load i32, i32* %arrayidx114, align 4
  %sub115 = sub nsw i32 %101, 1
  %102 = load i32, i32* %k, align 4
  %add116 = add nsw i32 %102, 1
  %idxprom117 = sext i32 %add116 to i64
  %103 = load i32*, i32** %last_d, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %103, i64 %idxprom117
  %104 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp sle i32 %sub115, %104
  br i1 %cmp119, label %land.lhs.true.121, label %if.else.135

land.lhs.true.121:                                ; preds = %if.else.112
  %105 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %105 to i64
  %106 = load i32*, i32** %last_d, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %106, i64 %idxprom122
  %107 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub nsw i32 %107, 1
  %108 = load i32, i32* %k, align 4
  %sub125 = sub nsw i32 %108, 1
  %idxprom126 = sext i32 %sub125 to i64
  %109 = load i32*, i32** %last_d, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %109, i64 %idxprom126
  %110 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %110, 1
  %cmp129 = icmp sle i32 %sub124, %sub128
  br i1 %cmp129, label %if.then.131, label %if.else.135

if.then.131:                                      ; preds = %land.lhs.true.121
  %111 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %111 to i64
  %112 = load i32*, i32** %last_d, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %112, i64 %idxprom132
  %113 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub nsw i32 %113, 1
  store i32 %sub134, i32* %row, align 4
  br label %if.end.165

if.else.135:                                      ; preds = %land.lhs.true.121, %if.else.112
  %114 = load i32, i32* %k, align 4
  %sub136 = sub nsw i32 %114, 1
  %idxprom137 = sext i32 %sub136 to i64
  %115 = load i32*, i32** %last_d, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %115, i64 %idxprom137
  %116 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %116, 1
  %117 = load i32, i32* %k, align 4
  %add140 = add nsw i32 %117, 1
  %idxprom141 = sext i32 %add140 to i64
  %118 = load i32*, i32** %last_d, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %118, i64 %idxprom141
  %119 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp sle i32 %sub139, %119
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.160

land.lhs.true.145:                                ; preds = %if.else.135
  %120 = load i32, i32* %k, align 4
  %sub146 = sub nsw i32 %120, 1
  %idxprom147 = sext i32 %sub146 to i64
  %121 = load i32*, i32** %last_d, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %121, i64 %idxprom147
  %122 = load i32, i32* %arrayidx148, align 4
  %sub149 = sub nsw i32 %122, 1
  %123 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %123 to i64
  %124 = load i32*, i32** %last_d, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %124, i64 %idxprom150
  %125 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %125, 1
  %cmp153 = icmp sle i32 %sub149, %sub152
  br i1 %cmp153, label %if.then.155, label %if.else.160

if.then.155:                                      ; preds = %land.lhs.true.145
  %126 = load i32, i32* %k, align 4
  %sub156 = sub nsw i32 %126, 1
  %idxprom157 = sext i32 %sub156 to i64
  %127 = load i32*, i32** %last_d, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %127, i64 %idxprom157
  %128 = load i32, i32* %arrayidx158, align 4
  %sub159 = sub nsw i32 %128, 1
  store i32 %sub159, i32* %row, align 4
  br label %if.end.164

if.else.160:                                      ; preds = %land.lhs.true.145, %if.else.135
  %129 = load i32, i32* %k, align 4
  %add161 = add nsw i32 %129, 1
  %idxprom162 = sext i32 %add161 to i64
  %130 = load i32*, i32** %last_d, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %130, i64 %idxprom162
  %131 = load i32, i32* %arrayidx163, align 4
  store i32 %131, i32* %row, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.160, %if.then.155
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.131
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.107
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.99
  %132 = load i32, i32* %row, align 4
  %133 = load i32, i32* %k, align 4
  %add168 = add nsw i32 %132, %133
  %134 = load i32, i32* %ORIGIN, align 4
  %sub169 = sub nsw i32 %add168, %134
  store i32 %sub169, i32* %col, align 4
  br label %while.cond.170

while.cond.170:                                   ; preds = %while.body.188, %if.end.167
  %135 = load i32, i32* %row, align 4
  %cmp171 = icmp sgt i32 %135, 0
  br i1 %cmp171, label %land.lhs.true.173, label %land.end.187

land.lhs.true.173:                                ; preds = %while.cond.170
  %136 = load i32, i32* %col, align 4
  %cmp174 = icmp sgt i32 %136, 0
  br i1 %cmp174, label %land.rhs.176, label %land.end.187

land.rhs.176:                                     ; preds = %land.lhs.true.173
  %137 = load i32, i32* %row, align 4
  %sub177 = sub nsw i32 %137, 1
  %idxprom178 = sext i32 %sub177 to i64
  %138 = load i8*, i8** %s1.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %138, i64 %idxprom178
  %139 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %139 to i32
  %140 = load i32, i32* %col, align 4
  %sub181 = sub nsw i32 %140, 1
  %idxprom182 = sext i32 %sub181 to i64
  %141 = load i8*, i8** %s2.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %141, i64 %idxprom182
  %142 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %142 to i32
  %cmp185 = icmp eq i32 %conv180, %conv184
  br label %land.end.187

land.end.187:                                     ; preds = %land.rhs.176, %land.lhs.true.173, %while.cond.170
  %143 = phi i1 [ false, %land.lhs.true.173 ], [ false, %while.cond.170 ], [ %cmp185, %land.rhs.176 ]
  br i1 %143, label %while.body.188, label %while.end

while.body.188:                                   ; preds = %land.end.187
  %144 = load i32, i32* %row, align 4
  %dec189 = add nsw i32 %144, -1
  store i32 %dec189, i32* %row, align 4
  %145 = load i32, i32* %col, align 4
  %dec190 = add nsw i32 %145, -1
  store i32 %dec190, i32* %col, align 4
  br label %while.cond.170

while.end:                                        ; preds = %land.end.187
  %146 = load i32, i32* %row, align 4
  %147 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %147 to i64
  %148 = load i32*, i32** %temp_d, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %148, i64 %idxprom191
  store i32 %146, i32* %arrayidx192, align 4
  %149 = load i32, i32* %row, align 4
  %cmp193 = icmp eq i32 %149, 0
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.201

land.lhs.true.195:                                ; preds = %while.end
  %150 = load i32, i32* %col, align 4
  %cmp196 = icmp eq i32 %150, 0
  br i1 %cmp196, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %land.lhs.true.195
  %151 = load i32*, i32** %last_d, align 8
  %152 = bitcast i32* %151 to i8*
  call void @free(i8* %152) #2
  %153 = load i32*, i32** %temp_d, align 8
  %154 = bitcast i32* %153 to i8*
  call void @free(i8* %154) #2
  %155 = load i32*, i32** %min_row, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #2
  %157 = load i32*, i32** %min_diag, align 8
  %158 = bitcast i32* %157 to i8*
  call void @free(i8* %158) #2
  %159 = load i32, i32* %row, align 4
  %160 = load i32, i32* %offset1.addr, align 4
  %add199 = add nsw i32 %159, %160
  %161 = load i32*, i32** %line1.addr, align 8
  store i32 %add199, i32* %161, align 4
  %162 = load i32, i32* %col, align 4
  %163 = load i32, i32* %offset2.addr, align 4
  %add200 = add nsw i32 %162, %163
  %164 = load i32*, i32** %line2.addr, align 8
  store i32 %add200, i32* %164, align 4
  %165 = load i32, i32* %d, align 4
  store i32 %165, i32* %retval
  br label %return

if.end.201:                                       ; preds = %land.lhs.true.195, %while.end
  %166 = load i32, i32* %row, align 4
  %cmp202 = icmp eq i32 %166, 0
  br i1 %cmp202, label %if.then.204, label %if.end.207

if.then.204:                                      ; preds = %if.end.201
  %167 = load i32*, i32** %last_d, align 8
  %168 = bitcast i32* %167 to i8*
  call void @free(i8* %168) #2
  %169 = load i32*, i32** %temp_d, align 8
  %170 = bitcast i32* %169 to i8*
  call void @free(i8* %170) #2
  %171 = load i32*, i32** %min_row, align 8
  %172 = bitcast i32* %171 to i8*
  call void @free(i8* %172) #2
  %173 = load i32*, i32** %min_diag, align 8
  %174 = bitcast i32* %173 to i8*
  call void @free(i8* %174) #2
  %175 = load i32, i32* %row, align 4
  %176 = load i32, i32* %offset1.addr, align 4
  %add205 = add nsw i32 %175, %176
  %177 = load i32*, i32** %line1.addr, align 8
  store i32 %add205, i32* %177, align 4
  %178 = load i32, i32* %col, align 4
  %179 = load i32, i32* %offset2.addr, align 4
  %add206 = add nsw i32 %178, %179
  %180 = load i32*, i32** %line2.addr, align 8
  store i32 %add206, i32* %180, align 4
  %181 = load i32, i32* %d, align 4
  store i32 %181, i32* %retval
  br label %return

if.end.207:                                       ; preds = %if.end.201
  %182 = load i32, i32* %col, align 4
  %cmp208 = icmp eq i32 %182, 0
  br i1 %cmp208, label %if.then.210, label %if.end.213

if.then.210:                                      ; preds = %if.end.207
  %183 = load i32*, i32** %last_d, align 8
  %184 = bitcast i32* %183 to i8*
  call void @free(i8* %184) #2
  %185 = load i32*, i32** %temp_d, align 8
  %186 = bitcast i32* %185 to i8*
  call void @free(i8* %186) #2
  %187 = load i32*, i32** %min_row, align 8
  %188 = bitcast i32* %187 to i8*
  call void @free(i8* %188) #2
  %189 = load i32*, i32** %min_diag, align 8
  %190 = bitcast i32* %189 to i8*
  call void @free(i8* %190) #2
  %191 = load i32, i32* %row, align 4
  %192 = load i32, i32* %offset1.addr, align 4
  %add211 = add nsw i32 %191, %192
  %193 = load i32*, i32** %line1.addr, align 8
  store i32 %add211, i32* %193, align 4
  %194 = load i32, i32* %col, align 4
  %195 = load i32, i32* %offset2.addr, align 4
  %add212 = add nsw i32 %194, %195
  %196 = load i32*, i32** %line2.addr, align 8
  store i32 %add212, i32* %196, align 4
  %197 = load i32, i32* %d, align 4
  store i32 %197, i32* %retval
  br label %return

if.end.213:                                       ; preds = %if.end.207
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %198 = load i32, i32* %k, align 4
  %inc215 = add nsw i32 %198, 1
  store i32 %inc215, i32* %k, align 4
  br label %for.cond.90

for.end.216:                                      ; preds = %for.cond.90
  %199 = load i32, i32* %ORIGIN, align 4
  %200 = load i32, i32* %DELTA, align 4
  %add217 = add nsw i32 %199, %200
  %idxprom218 = sext i32 %add217 to i64
  %201 = load i32*, i32** %last_d, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %201, i64 %idxprom218
  %202 = load i32, i32* %arrayidx219, align 4
  %203 = load i32, i32* %d, align 4
  %idxprom220 = sext i32 %203 to i64
  %204 = load i32*, i32** %min_row, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %204, i64 %idxprom220
  store i32 %202, i32* %arrayidx221, align 4
  %205 = load i32, i32* %ORIGIN, align 4
  %206 = load i32, i32* %DELTA, align 4
  %add222 = add nsw i32 %205, %206
  %207 = load i32, i32* %d, align 4
  %idxprom223 = sext i32 %207 to i64
  %208 = load i32*, i32** %min_diag, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %208, i64 %idxprom223
  store i32 %add222, i32* %arrayidx224, align 4
  %209 = load i32, i32* %lower, align 4
  store i32 %209, i32* %k, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.243, %for.end.216
  %210 = load i32, i32* %k, align 4
  %211 = load i32, i32* %upper, align 4
  %cmp226 = icmp sle i32 %210, %211
  br i1 %cmp226, label %for.body.228, label %for.end.245

for.body.228:                                     ; preds = %for.cond.225
  %212 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %212 to i64
  %213 = load i32*, i32** %temp_d, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %213, i64 %idxprom229
  %214 = load i32, i32* %arrayidx230, align 4
  %215 = load i32, i32* %d, align 4
  %idxprom231 = sext i32 %215 to i64
  %216 = load i32*, i32** %min_row, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %216, i64 %idxprom231
  %217 = load i32, i32* %arrayidx232, align 4
  %cmp233 = icmp slt i32 %214, %217
  br i1 %cmp233, label %if.then.235, label %if.end.242

if.then.235:                                      ; preds = %for.body.228
  %218 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %218 to i64
  %219 = load i32*, i32** %temp_d, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %219, i64 %idxprom236
  %220 = load i32, i32* %arrayidx237, align 4
  %221 = load i32, i32* %d, align 4
  %idxprom238 = sext i32 %221 to i64
  %222 = load i32*, i32** %min_row, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %222, i64 %idxprom238
  store i32 %220, i32* %arrayidx239, align 4
  %223 = load i32, i32* %k, align 4
  %224 = load i32, i32* %d, align 4
  %idxprom240 = sext i32 %224 to i64
  %225 = load i32*, i32** %min_diag, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %225, i64 %idxprom240
  store i32 %223, i32* %arrayidx241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.235, %for.body.228
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %226 = load i32, i32* %k, align 4
  %inc244 = add nsw i32 %226, 1
  store i32 %inc244, i32* %k, align 4
  br label %for.cond.225

for.end.245:                                      ; preds = %for.cond.225
  %227 = load i32, i32* %lower, align 4
  store i32 %227, i32* %k, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.254, %for.end.245
  %228 = load i32, i32* %k, align 4
  %229 = load i32, i32* %upper, align 4
  %cmp247 = icmp sle i32 %228, %229
  br i1 %cmp247, label %for.body.249, label %for.end.256

for.body.249:                                     ; preds = %for.cond.246
  %230 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %230 to i64
  %231 = load i32*, i32** %temp_d, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %231, i64 %idxprom250
  %232 = load i32, i32* %arrayidx251, align 4
  %233 = load i32, i32* %k, align 4
  %idxprom252 = sext i32 %233 to i64
  %234 = load i32*, i32** %last_d, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %234, i64 %idxprom252
  store i32 %232, i32* %arrayidx253, align 4
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.body.249
  %235 = load i32, i32* %k, align 4
  %inc255 = add nsw i32 %235, 1
  store i32 %inc255, i32* %k, align 4
  br label %for.cond.246

for.end.256:                                      ; preds = %for.cond.246
  %236 = load i32, i32* %lower, align 4
  %dec257 = add nsw i32 %236, -1
  store i32 %dec257, i32* %lower, align 4
  %237 = load i32, i32* %upper, align 4
  %inc258 = add nsw i32 %237, 1
  store i32 %inc258, i32* %upper, align 4
  br label %while.cond

while.end.259:                                    ; preds = %land.end.89
  br label %while.cond.260

while.cond.260:                                   ; preds = %while.body.273, %while.end.259
  %238 = load i32, i32* %d, align 4
  %cmp261 = icmp sgt i32 %238, 0
  br i1 %cmp261, label %land.rhs.263, label %land.end.272

land.rhs.263:                                     ; preds = %while.cond.260
  %239 = load i32, i32* %d, align 4
  %sub264 = sub nsw i32 %239, 1
  %idxprom265 = sext i32 %sub264 to i64
  %240 = load i32*, i32** %min_row, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %240, i64 %idxprom265
  %241 = load i32, i32* %arrayidx266, align 4
  %242 = load i32, i32* %d, align 4
  %idxprom267 = sext i32 %242 to i64
  %243 = load i32*, i32** %min_row, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %243, i64 %idxprom267
  %244 = load i32, i32* %arrayidx268, align 4
  %sub269 = sub nsw i32 %241, %244
  %cmp270 = icmp slt i32 %sub269, 3
  br label %land.end.272

land.end.272:                                     ; preds = %land.rhs.263, %while.cond.260
  %245 = phi i1 [ false, %while.cond.260 ], [ %cmp270, %land.rhs.263 ]
  br i1 %245, label %while.body.273, label %while.end.275

while.body.273:                                   ; preds = %land.end.272
  %246 = load i32, i32* %d, align 4
  %dec274 = add nsw i32 %246, -1
  store i32 %dec274, i32* %d, align 4
  br label %while.cond.260

while.end.275:                                    ; preds = %land.end.272
  %247 = load i32, i32* %d, align 4
  %idxprom276 = sext i32 %247 to i64
  %248 = load i32*, i32** %min_row, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %248, i64 %idxprom276
  %249 = load i32, i32* %arrayidx277, align 4
  %250 = load i32, i32* %offset1.addr, align 4
  %add278 = add nsw i32 %249, %250
  %251 = load i32*, i32** %line1.addr, align 8
  store i32 %add278, i32* %251, align 4
  %252 = load i32, i32* %d, align 4
  %idxprom279 = sext i32 %252 to i64
  %253 = load i32*, i32** %min_row, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %253, i64 %idxprom279
  %254 = load i32, i32* %arrayidx280, align 4
  %255 = load i32, i32* %d, align 4
  %idxprom281 = sext i32 %255 to i64
  %256 = load i32*, i32** %min_diag, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %256, i64 %idxprom281
  %257 = load i32, i32* %arrayidx282, align 4
  %add283 = add nsw i32 %254, %257
  %258 = load i32, i32* %ORIGIN, align 4
  %sub284 = sub nsw i32 %add283, %258
  %259 = load i32, i32* %offset2.addr, align 4
  %add285 = add nsw i32 %sub284, %259
  %260 = load i32*, i32** %line2.addr, align 8
  store i32 %add285, i32* %260, align 4
  %261 = load i32*, i32** %min_row, align 8
  %262 = bitcast i32* %261 to i8*
  call void @free(i8* %262) #2
  %263 = load i32*, i32** %min_diag, align 8
  %264 = bitcast i32* %263 to i8*
  call void @free(i8* %264) #2
  %265 = load i32*, i32** %last_d, align 8
  %266 = bitcast i32* %265 to i8*
  call void @free(i8* %266) #2
  %267 = load i32*, i32** %temp_d, align 8
  %268 = bitcast i32* %267 to i8*
  call void @free(i8* %268) #2
  %269 = load i32, i32* %d, align 4
  store i32 %269, i32* %retval
  br label %return

return:                                           ; preds = %while.end.275, %if.then.210, %if.then.204, %if.then.198, %if.then
  %270 = load i32, i32* %retval
  ret i32 %270
}

; Function Attrs: nounwind uwtable
define internal void @grow_exon_left(%struct._exon_t* %e, i8* %s1, i8* %s2) #0 {
entry:
  %e.addr = alloca %struct._exon_t*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store %struct._exon_t* %e, %struct._exon_t** %e.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %1, i32 0, i32 0
  %2 = load i32, i32* %from1, align 4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  store i8* %add.ptr1, i8** %p1, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %4, i32 0, i32 1
  %5 = load i32, i32* %from2, align 4
  %idx.ext2 = zext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 %idx.ext2
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr3, i64 -2
  store i8* %add.ptr4, i8** %p2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i8*, i8** %p1, align 8
  %7 = load i8*, i8** %s1.addr, align 8
  %cmp = icmp uge i8* %6, %7
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %8 = load i8*, i8** %p2, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %cmp5 = icmp uge i8* %8, %9
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %p2, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %p1, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %add.ptr9, i8** %p1, align 8
  %16 = load i8*, i8** %p2, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %add.ptr10, i8** %p2, align 8
  %17 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from111 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 0
  %18 = load i32, i32* %from111, align 4
  %sub = sub i32 %18, 1
  store i32 %sub, i32* %from111, align 4
  %19 = load %struct._exon_t*, %struct._exon_t** %e.addr, align 8
  %from212 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %19, i32 0, i32 1
  %20 = load i32, i32* %from212, align 4
  %sub13 = sub i32 %20, 1
  store i32 %sub13, i32* %from212, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @extend_fw(i8* %s1, i8* %s2, i32 %m, i32 %n, i32 %offset1, i32 %offset2, i32* %line1, i32* %line2, i32 %W) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %offset1.addr = alloca i32, align 4
  %offset2.addr = alloca i32, align 4
  %line1.addr = alloca i32*, align 8
  %line2.addr = alloca i32*, align 8
  %W.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %max_d = alloca i32, align 4
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  %ORIGIN = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %last_d = alloca i32*, align 8
  %temp_d = alloca i32*, align 8
  %max_row = alloca i32*, align 8
  %max_diag = alloca i32*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %offset1, i32* %offset1.addr, align 4
  store i32 %offset2, i32* %offset2.addr, align 4
  store i32* %line1, i32** %line1.addr, align 8
  store i32* %line2, i32** %line2.addr, align 8
  store i32 %W, i32* %W.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %max_d, align 4
  %1 = load i32, i32* %m.addr, align 4
  store i32 %1, i32* %ORIGIN, align 4
  store i32 0, i32* %row, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %col, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %4 = load i32, i32* %row, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %row, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %col, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load i8*, i8** %s2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %row, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %row, align 4
  %14 = load i32, i32* %col, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load i32, i32* %row, align 4
  %16 = load i32, i32* %m.addr, align 4
  %cmp8 = icmp eq i32 %15, %16
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %17 = load i32, i32* %row, align 4
  %18 = load i32, i32* %offset1.addr, align 4
  %add10 = add nsw i32 %17, %18
  %19 = load i32*, i32** %line1.addr, align 8
  store i32 %add10, i32* %19, align 4
  %20 = load i32, i32* %col, align 4
  %21 = load i32, i32* %offset2.addr, align 4
  %add11 = add nsw i32 %20, %21
  %22 = load i32*, i32** %line2.addr, align 8
  store i32 %add11, i32* %22, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %23 = load i32, i32* %col, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp eq i32 %23, %24
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %offset1.addr, align 4
  %add15 = add nsw i32 %25, %26
  %27 = load i32*, i32** %line1.addr, align 8
  store i32 %add15, i32* %27, align 4
  %28 = load i32, i32* %col, align 4
  %29 = load i32, i32* %offset2.addr, align 4
  %add16 = add nsw i32 %28, %29
  %30 = load i32*, i32** %line2.addr, align 8
  store i32 %add16, i32* %30, align 4
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %31 = load i32, i32* %m.addr, align 4
  %32 = load i32, i32* %n.addr, align 4
  %add18 = add nsw i32 %31, %32
  %add19 = add nsw i32 %add18, 1
  %conv20 = sext i32 %add19 to i64
  %mul = mul i64 %conv20, 4
  %call = call i8* @xmalloc(i64 %mul)
  %33 = bitcast i8* %call to i32*
  store i32* %33, i32** %last_d, align 8
  %34 = load i32, i32* %m.addr, align 4
  %35 = load i32, i32* %n.addr, align 4
  %add21 = add nsw i32 %34, %35
  %add22 = add nsw i32 %add21, 1
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 %conv23, 4
  %call25 = call i8* @xmalloc(i64 %mul24)
  %36 = bitcast i8* %call25 to i32*
  store i32* %36, i32** %temp_d, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %if.end.17
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %m.addr, align 4
  %39 = load i32, i32* %n.addr, align 4
  %add27 = add nsw i32 %38, %39
  %cmp28 = icmp sle i32 %37, %add27
  br i1 %cmp28, label %for.body.30, label %for.end.35

for.body.30:                                      ; preds = %for.cond.26
  %40 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load i32*, i32** %last_d, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 %idxprom31
  store i32 -1, i32* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.30
  %42 = load i32, i32* %k, align 4
  %inc34 = add nsw i32 %42, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  %43 = load i32, i32* %row, align 4
  %44 = load i32, i32* %ORIGIN, align 4
  %idxprom36 = sext i32 %44 to i64
  %45 = load i32*, i32** %last_d, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %45, i64 %idxprom36
  store i32 %43, i32* %arrayidx37, align 4
  %46 = load i32, i32* %ORIGIN, align 4
  %sub = sub nsw i32 %46, 1
  store i32 %sub, i32* %lower, align 4
  %47 = load i32, i32* %ORIGIN, align 4
  %add38 = add nsw i32 %47, 1
  store i32 %add38, i32* %upper, align 4
  %48 = load i32, i32* %m.addr, align 4
  %add39 = add nsw i32 %48, 1
  %conv40 = sext i32 %add39 to i64
  %mul41 = mul i64 %conv40, 4
  %call42 = call i8* @xmalloc(i64 %mul41)
  %49 = bitcast i8* %call42 to i32*
  store i32* %49, i32** %max_row, align 8
  %50 = load i32, i32* %m.addr, align 4
  %add43 = add nsw i32 %50, 1
  %conv44 = sext i32 %add43 to i64
  %mul45 = mul i64 %conv44, 4
  %call46 = call i8* @xmalloc(i64 %mul45)
  %51 = bitcast i8* %call46 to i32*
  store i32* %51, i32** %max_diag, align 8
  store i32 1, i32* %d, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.53, %for.end.35
  %52 = load i32, i32* %d, align 4
  %53 = load i32, i32* %m.addr, align 4
  %cmp48 = icmp sle i32 %52, %53
  br i1 %cmp48, label %for.body.50, label %for.end.55

for.body.50:                                      ; preds = %for.cond.47
  %54 = load i32, i32* %d, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load i32*, i32** %max_row, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %55, i64 %idxprom51
  store i32 -1, i32* %arrayidx52, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.50
  %56 = load i32, i32* %d, align 4
  %inc54 = add nsw i32 %56, 1
  store i32 %inc54, i32* %d, align 4
  br label %for.cond.47

for.end.55:                                       ; preds = %for.cond.47
  %57 = load i32, i32* %ORIGIN, align 4
  %idxprom56 = sext i32 %57 to i64
  %58 = load i32*, i32** %last_d, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %58, i64 %idxprom56
  %59 = load i32, i32* %arrayidx57, align 4
  %60 = load i32*, i32** %max_row, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %arrayidx58, align 4
  %61 = load i32, i32* %ORIGIN, align 4
  %62 = load i32*, i32** %max_diag, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %arrayidx59, align 4
  store i32 0, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.243, %for.end.55
  %63 = load i32, i32* %d, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, i32* %d, align 4
  %64 = load i32, i32* %max_d, align 4
  %cmp61 = icmp sle i32 %inc60, %64
  br i1 %cmp61, label %land.rhs.63, label %land.end.82

land.rhs.63:                                      ; preds = %while.cond
  %65 = load i32, i32* %d, align 4
  %sub64 = sub nsw i32 %65, 1
  %66 = load i32, i32* %d, align 4
  %sub65 = sub nsw i32 %66, 1
  %idxprom66 = sext i32 %sub65 to i64
  %67 = load i32*, i32** %max_row, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %67, i64 %idxprom66
  %68 = load i32, i32* %arrayidx67, align 4
  %69 = load i32, i32* %W.addr, align 4
  %call68 = call i32 @good_ratio(i32 %68, i32 %69)
  %cmp69 = icmp sle i32 %sub64, %call68
  br i1 %cmp69, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.63
  %70 = load i32, i32* %d, align 4
  %cmp71 = icmp sge i32 %70, 2
  br i1 %cmp71, label %land.rhs.73, label %land.end.81

land.rhs.73:                                      ; preds = %lor.rhs
  %71 = load i32, i32* %d, align 4
  %sub74 = sub nsw i32 %71, 2
  %72 = load i32, i32* %d, align 4
  %sub75 = sub nsw i32 %72, 2
  %idxprom76 = sext i32 %sub75 to i64
  %73 = load i32*, i32** %max_row, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %73, i64 %idxprom76
  %74 = load i32, i32* %arrayidx77, align 4
  %75 = load i32, i32* %W.addr, align 4
  %call78 = call i32 @good_ratio(i32 %74, i32 %75)
  %cmp79 = icmp sle i32 %sub74, %call78
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.73, %lor.rhs
  %76 = phi i1 [ false, %lor.rhs ], [ %cmp79, %land.rhs.73 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.81, %land.rhs.63
  %77 = phi i1 [ true, %land.rhs.63 ], [ %76, %land.end.81 ]
  br label %land.end.82

land.end.82:                                      ; preds = %lor.end, %while.cond
  %78 = phi i1 [ false, %while.cond ], [ %77, %lor.end ]
  br i1 %78, label %while.body, label %while.end.245

while.body:                                       ; preds = %land.end.82
  %79 = load i32, i32* %lower, align 4
  store i32 %79, i32* %k, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.203, %while.body
  %80 = load i32, i32* %k, align 4
  %81 = load i32, i32* %upper, align 4
  %cmp84 = icmp sle i32 %80, %81
  br i1 %cmp84, label %for.body.86, label %for.end.205

for.body.86:                                      ; preds = %for.cond.83
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %d, align 4
  %sub87 = sub nsw i32 0, %83
  %84 = load i32, i32* %ORIGIN, align 4
  %add88 = add nsw i32 %sub87, %84
  %cmp89 = icmp eq i32 %82, %add88
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %for.body.86
  %85 = load i32, i32* %k, align 4
  %add92 = add nsw i32 %85, 1
  %idxprom93 = sext i32 %add92 to i64
  %86 = load i32*, i32** %last_d, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %86, i64 %idxprom93
  %87 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %87, 1
  store i32 %add95, i32* %row, align 4
  br label %if.end.154

if.else:                                          ; preds = %for.body.86
  %88 = load i32, i32* %k, align 4
  %89 = load i32, i32* %d, align 4
  %90 = load i32, i32* %ORIGIN, align 4
  %add96 = add nsw i32 %89, %90
  %cmp97 = icmp eq i32 %88, %add96
  br i1 %cmp97, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %if.else
  %91 = load i32, i32* %k, align 4
  %sub100 = sub nsw i32 %91, 1
  %idxprom101 = sext i32 %sub100 to i64
  %92 = load i32*, i32** %last_d, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %92, i64 %idxprom101
  %93 = load i32, i32* %arrayidx102, align 4
  store i32 %93, i32* %row, align 4
  br label %if.end.153

if.else.103:                                      ; preds = %if.else
  %94 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %94 to i64
  %95 = load i32*, i32** %last_d, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %95, i64 %idxprom104
  %96 = load i32, i32* %arrayidx105, align 4
  %97 = load i32, i32* %k, align 4
  %add106 = add nsw i32 %97, 1
  %idxprom107 = sext i32 %add106 to i64
  %98 = load i32*, i32** %last_d, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %98, i64 %idxprom107
  %99 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp sge i32 %96, %99
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.124

land.lhs.true.111:                                ; preds = %if.else.103
  %100 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %100 to i64
  %101 = load i32*, i32** %last_d, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %101, i64 %idxprom112
  %102 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %102, 1
  %103 = load i32, i32* %k, align 4
  %sub115 = sub nsw i32 %103, 1
  %idxprom116 = sext i32 %sub115 to i64
  %104 = load i32*, i32** %last_d, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %104, i64 %idxprom116
  %105 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp sge i32 %add114, %105
  br i1 %cmp118, label %if.then.120, label %if.else.124

if.then.120:                                      ; preds = %land.lhs.true.111
  %106 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %106 to i64
  %107 = load i32*, i32** %last_d, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %107, i64 %idxprom121
  %108 = load i32, i32* %arrayidx122, align 4
  %add123 = add nsw i32 %108, 1
  store i32 %add123, i32* %row, align 4
  br label %if.end.152

if.else.124:                                      ; preds = %land.lhs.true.111, %if.else.103
  %109 = load i32, i32* %k, align 4
  %add125 = add nsw i32 %109, 1
  %idxprom126 = sext i32 %add125 to i64
  %110 = load i32*, i32** %last_d, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %110, i64 %idxprom126
  %111 = load i32, i32* %arrayidx127, align 4
  %add128 = add nsw i32 %111, 1
  %112 = load i32, i32* %k, align 4
  %sub129 = sub nsw i32 %112, 1
  %idxprom130 = sext i32 %sub129 to i64
  %113 = load i32*, i32** %last_d, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %113, i64 %idxprom130
  %114 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp sge i32 %add128, %114
  br i1 %cmp132, label %land.lhs.true.134, label %if.else.147

land.lhs.true.134:                                ; preds = %if.else.124
  %115 = load i32, i32* %k, align 4
  %add135 = add nsw i32 %115, 1
  %idxprom136 = sext i32 %add135 to i64
  %116 = load i32*, i32** %last_d, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %116, i64 %idxprom136
  %117 = load i32, i32* %arrayidx137, align 4
  %118 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %118 to i64
  %119 = load i32*, i32** %last_d, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %119, i64 %idxprom138
  %120 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp sge i32 %117, %120
  br i1 %cmp140, label %if.then.142, label %if.else.147

if.then.142:                                      ; preds = %land.lhs.true.134
  %121 = load i32, i32* %k, align 4
  %add143 = add nsw i32 %121, 1
  %idxprom144 = sext i32 %add143 to i64
  %122 = load i32*, i32** %last_d, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %122, i64 %idxprom144
  %123 = load i32, i32* %arrayidx145, align 4
  %add146 = add nsw i32 %123, 1
  store i32 %add146, i32* %row, align 4
  br label %if.end.151

if.else.147:                                      ; preds = %land.lhs.true.134, %if.else.124
  %124 = load i32, i32* %k, align 4
  %sub148 = sub nsw i32 %124, 1
  %idxprom149 = sext i32 %sub148 to i64
  %125 = load i32*, i32** %last_d, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %125, i64 %idxprom149
  %126 = load i32, i32* %arrayidx150, align 4
  store i32 %126, i32* %row, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.142
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.120
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.99
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.91
  %127 = load i32, i32* %row, align 4
  %128 = load i32, i32* %k, align 4
  %add155 = add nsw i32 %127, %128
  %129 = load i32, i32* %ORIGIN, align 4
  %sub156 = sub nsw i32 %add155, %129
  store i32 %sub156, i32* %col, align 4
  %130 = load i32, i32* %row, align 4
  %cmp157 = icmp sge i32 %130, 0
  br i1 %cmp157, label %if.then.159, label %if.end.179

if.then.159:                                      ; preds = %if.end.154
  br label %while.cond.160

while.cond.160:                                   ; preds = %while.body.176, %if.then.159
  %131 = load i32, i32* %row, align 4
  %132 = load i32, i32* %m.addr, align 4
  %cmp161 = icmp slt i32 %131, %132
  br i1 %cmp161, label %land.lhs.true.163, label %land.end.175

land.lhs.true.163:                                ; preds = %while.cond.160
  %133 = load i32, i32* %col, align 4
  %134 = load i32, i32* %n.addr, align 4
  %cmp164 = icmp slt i32 %133, %134
  br i1 %cmp164, label %land.rhs.166, label %land.end.175

land.rhs.166:                                     ; preds = %land.lhs.true.163
  %135 = load i32, i32* %row, align 4
  %idxprom167 = sext i32 %135 to i64
  %136 = load i8*, i8** %s1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %136, i64 %idxprom167
  %137 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %137 to i32
  %138 = load i32, i32* %col, align 4
  %idxprom170 = sext i32 %138 to i64
  %139 = load i8*, i8** %s2.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %139, i64 %idxprom170
  %140 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %140 to i32
  %cmp173 = icmp eq i32 %conv169, %conv172
  br label %land.end.175

land.end.175:                                     ; preds = %land.rhs.166, %land.lhs.true.163, %while.cond.160
  %141 = phi i1 [ false, %land.lhs.true.163 ], [ false, %while.cond.160 ], [ %cmp173, %land.rhs.166 ]
  br i1 %141, label %while.body.176, label %while.end

while.body.176:                                   ; preds = %land.end.175
  %142 = load i32, i32* %row, align 4
  %inc177 = add nsw i32 %142, 1
  store i32 %inc177, i32* %row, align 4
  %143 = load i32, i32* %col, align 4
  %inc178 = add nsw i32 %143, 1
  store i32 %inc178, i32* %col, align 4
  br label %while.cond.160

while.end:                                        ; preds = %land.end.175
  br label %if.end.179

if.end.179:                                       ; preds = %while.end, %if.end.154
  %144 = load i32, i32* %row, align 4
  %145 = load i32, i32* %k, align 4
  %idxprom180 = sext i32 %145 to i64
  %146 = load i32*, i32** %temp_d, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %146, i64 %idxprom180
  store i32 %144, i32* %arrayidx181, align 4
  %147 = load i32, i32* %row, align 4
  %148 = load i32, i32* %m.addr, align 4
  %cmp182 = icmp eq i32 %147, %148
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.190

land.lhs.true.184:                                ; preds = %if.end.179
  %149 = load i32, i32* %col, align 4
  %150 = load i32, i32* %n.addr, align 4
  %cmp185 = icmp eq i32 %149, %150
  br i1 %cmp185, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %land.lhs.true.184
  %151 = load i32*, i32** %last_d, align 8
  %152 = bitcast i32* %151 to i8*
  call void @free(i8* %152) #2
  %153 = load i32*, i32** %temp_d, align 8
  %154 = bitcast i32* %153 to i8*
  call void @free(i8* %154) #2
  %155 = load i32*, i32** %max_row, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #2
  %157 = load i32*, i32** %max_diag, align 8
  %158 = bitcast i32* %157 to i8*
  call void @free(i8* %158) #2
  %159 = load i32, i32* %row, align 4
  %160 = load i32, i32* %offset1.addr, align 4
  %add188 = add nsw i32 %159, %160
  %161 = load i32*, i32** %line1.addr, align 8
  store i32 %add188, i32* %161, align 4
  %162 = load i32, i32* %col, align 4
  %163 = load i32, i32* %offset2.addr, align 4
  %add189 = add nsw i32 %162, %163
  %164 = load i32*, i32** %line2.addr, align 8
  store i32 %add189, i32* %164, align 4
  %165 = load i32, i32* %d, align 4
  store i32 %165, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.184, %if.end.179
  %166 = load i32, i32* %row, align 4
  %167 = load i32, i32* %m.addr, align 4
  %cmp191 = icmp eq i32 %166, %167
  br i1 %cmp191, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.190
  %168 = load i32*, i32** %temp_d, align 8
  %169 = bitcast i32* %168 to i8*
  call void @free(i8* %169) #2
  %170 = load i32*, i32** %last_d, align 8
  %171 = bitcast i32* %170 to i8*
  call void @free(i8* %171) #2
  %172 = load i32*, i32** %max_row, align 8
  %173 = bitcast i32* %172 to i8*
  call void @free(i8* %173) #2
  %174 = load i32*, i32** %max_diag, align 8
  %175 = bitcast i32* %174 to i8*
  call void @free(i8* %175) #2
  %176 = load i32, i32* %row, align 4
  %177 = load i32, i32* %offset1.addr, align 4
  %add194 = add nsw i32 %176, %177
  %178 = load i32*, i32** %line1.addr, align 8
  store i32 %add194, i32* %178, align 4
  %179 = load i32, i32* %col, align 4
  %180 = load i32, i32* %offset2.addr, align 4
  %add195 = add nsw i32 %179, %180
  %181 = load i32*, i32** %line2.addr, align 8
  store i32 %add195, i32* %181, align 4
  %182 = load i32, i32* %d, align 4
  store i32 %182, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.end.190
  %183 = load i32, i32* %col, align 4
  %184 = load i32, i32* %n.addr, align 4
  %cmp197 = icmp eq i32 %183, %184
  br i1 %cmp197, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %if.end.196
  %185 = load i32*, i32** %temp_d, align 8
  %186 = bitcast i32* %185 to i8*
  call void @free(i8* %186) #2
  %187 = load i32*, i32** %last_d, align 8
  %188 = bitcast i32* %187 to i8*
  call void @free(i8* %188) #2
  %189 = load i32*, i32** %max_row, align 8
  %190 = bitcast i32* %189 to i8*
  call void @free(i8* %190) #2
  %191 = load i32*, i32** %max_diag, align 8
  %192 = bitcast i32* %191 to i8*
  call void @free(i8* %192) #2
  %193 = load i32, i32* %row, align 4
  %194 = load i32, i32* %offset1.addr, align 4
  %add200 = add nsw i32 %193, %194
  %195 = load i32*, i32** %line1.addr, align 8
  store i32 %add200, i32* %195, align 4
  %196 = load i32, i32* %col, align 4
  %197 = load i32, i32* %offset2.addr, align 4
  %add201 = add nsw i32 %196, %197
  %198 = load i32*, i32** %line2.addr, align 8
  store i32 %add201, i32* %198, align 4
  %199 = load i32, i32* %d, align 4
  store i32 %199, i32* %retval
  br label %return

if.end.202:                                       ; preds = %if.end.196
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %200 = load i32, i32* %k, align 4
  %inc204 = add nsw i32 %200, 1
  store i32 %inc204, i32* %k, align 4
  br label %for.cond.83

for.end.205:                                      ; preds = %for.cond.83
  %201 = load i32, i32* %ORIGIN, align 4
  %idxprom206 = sext i32 %201 to i64
  %202 = load i32*, i32** %last_d, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %202, i64 %idxprom206
  %203 = load i32, i32* %arrayidx207, align 4
  %204 = load i32, i32* %d, align 4
  %idxprom208 = sext i32 %204 to i64
  %205 = load i32*, i32** %max_row, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %205, i64 %idxprom208
  store i32 %203, i32* %arrayidx209, align 4
  %206 = load i32, i32* %ORIGIN, align 4
  %207 = load i32, i32* %d, align 4
  %idxprom210 = sext i32 %207 to i64
  %208 = load i32*, i32** %max_diag, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %208, i64 %idxprom210
  store i32 %206, i32* %arrayidx211, align 4
  %209 = load i32, i32* %lower, align 4
  store i32 %209, i32* %k, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.230, %for.end.205
  %210 = load i32, i32* %k, align 4
  %211 = load i32, i32* %upper, align 4
  %cmp213 = icmp sle i32 %210, %211
  br i1 %cmp213, label %for.body.215, label %for.end.232

for.body.215:                                     ; preds = %for.cond.212
  %212 = load i32, i32* %k, align 4
  %idxprom216 = sext i32 %212 to i64
  %213 = load i32*, i32** %temp_d, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %213, i64 %idxprom216
  %214 = load i32, i32* %arrayidx217, align 4
  %215 = load i32, i32* %d, align 4
  %idxprom218 = sext i32 %215 to i64
  %216 = load i32*, i32** %max_row, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %216, i64 %idxprom218
  %217 = load i32, i32* %arrayidx219, align 4
  %cmp220 = icmp sgt i32 %214, %217
  br i1 %cmp220, label %if.then.222, label %if.end.229

if.then.222:                                      ; preds = %for.body.215
  %218 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %218 to i64
  %219 = load i32*, i32** %temp_d, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %219, i64 %idxprom223
  %220 = load i32, i32* %arrayidx224, align 4
  %221 = load i32, i32* %d, align 4
  %idxprom225 = sext i32 %221 to i64
  %222 = load i32*, i32** %max_row, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %222, i64 %idxprom225
  store i32 %220, i32* %arrayidx226, align 4
  %223 = load i32, i32* %k, align 4
  %224 = load i32, i32* %d, align 4
  %idxprom227 = sext i32 %224 to i64
  %225 = load i32*, i32** %max_diag, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %225, i64 %idxprom227
  store i32 %223, i32* %arrayidx228, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.222, %for.body.215
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.229
  %226 = load i32, i32* %k, align 4
  %inc231 = add nsw i32 %226, 1
  store i32 %inc231, i32* %k, align 4
  br label %for.cond.212

for.end.232:                                      ; preds = %for.cond.212
  %227 = load i32, i32* %lower, align 4
  store i32 %227, i32* %k, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.241, %for.end.232
  %228 = load i32, i32* %k, align 4
  %229 = load i32, i32* %upper, align 4
  %cmp234 = icmp sle i32 %228, %229
  br i1 %cmp234, label %for.body.236, label %for.end.243

for.body.236:                                     ; preds = %for.cond.233
  %230 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %230 to i64
  %231 = load i32*, i32** %temp_d, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %231, i64 %idxprom237
  %232 = load i32, i32* %arrayidx238, align 4
  %233 = load i32, i32* %k, align 4
  %idxprom239 = sext i32 %233 to i64
  %234 = load i32*, i32** %last_d, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %234, i64 %idxprom239
  store i32 %232, i32* %arrayidx240, align 4
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.body.236
  %235 = load i32, i32* %k, align 4
  %inc242 = add nsw i32 %235, 1
  store i32 %inc242, i32* %k, align 4
  br label %for.cond.233

for.end.243:                                      ; preds = %for.cond.233
  %236 = load i32, i32* %lower, align 4
  %dec = add nsw i32 %236, -1
  store i32 %dec, i32* %lower, align 4
  %237 = load i32, i32* %upper, align 4
  %inc244 = add nsw i32 %237, 1
  store i32 %inc244, i32* %upper, align 4
  br label %while.cond

while.end.245:                                    ; preds = %land.end.82
  br label %while.cond.246

while.cond.246:                                   ; preds = %while.body.259, %while.end.245
  %238 = load i32, i32* %d, align 4
  %cmp247 = icmp sgt i32 %238, 0
  br i1 %cmp247, label %land.rhs.249, label %land.end.258

land.rhs.249:                                     ; preds = %while.cond.246
  %239 = load i32, i32* %d, align 4
  %idxprom250 = sext i32 %239 to i64
  %240 = load i32*, i32** %max_row, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %240, i64 %idxprom250
  %241 = load i32, i32* %arrayidx251, align 4
  %242 = load i32, i32* %d, align 4
  %sub252 = sub nsw i32 %242, 1
  %idxprom253 = sext i32 %sub252 to i64
  %243 = load i32*, i32** %max_row, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %243, i64 %idxprom253
  %244 = load i32, i32* %arrayidx254, align 4
  %sub255 = sub nsw i32 %241, %244
  %cmp256 = icmp slt i32 %sub255, 3
  br label %land.end.258

land.end.258:                                     ; preds = %land.rhs.249, %while.cond.246
  %245 = phi i1 [ false, %while.cond.246 ], [ %cmp256, %land.rhs.249 ]
  br i1 %245, label %while.body.259, label %while.end.261

while.body.259:                                   ; preds = %land.end.258
  %246 = load i32, i32* %d, align 4
  %dec260 = add nsw i32 %246, -1
  store i32 %dec260, i32* %d, align 4
  br label %while.cond.246

while.end.261:                                    ; preds = %land.end.258
  %247 = load i32, i32* %d, align 4
  %idxprom262 = sext i32 %247 to i64
  %248 = load i32*, i32** %max_row, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %248, i64 %idxprom262
  %249 = load i32, i32* %arrayidx263, align 4
  %250 = load i32, i32* %offset1.addr, align 4
  %add264 = add nsw i32 %249, %250
  %251 = load i32*, i32** %line1.addr, align 8
  store i32 %add264, i32* %251, align 4
  %252 = load i32, i32* %d, align 4
  %idxprom265 = sext i32 %252 to i64
  %253 = load i32*, i32** %max_row, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %253, i64 %idxprom265
  %254 = load i32, i32* %arrayidx266, align 4
  %255 = load i32, i32* %d, align 4
  %idxprom267 = sext i32 %255 to i64
  %256 = load i32*, i32** %max_diag, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %256, i64 %idxprom267
  %257 = load i32, i32* %arrayidx268, align 4
  %add269 = add nsw i32 %254, %257
  %258 = load i32, i32* %ORIGIN, align 4
  %sub270 = sub nsw i32 %add269, %258
  %259 = load i32, i32* %offset2.addr, align 4
  %add271 = add nsw i32 %sub270, %259
  %260 = load i32*, i32** %line2.addr, align 8
  store i32 %add271, i32* %260, align 4
  %261 = load i32*, i32** %max_row, align 8
  %262 = bitcast i32* %261 to i8*
  call void @free(i8* %262) #2
  %263 = load i32*, i32** %max_diag, align 8
  %264 = bitcast i32* %263 to i8*
  call void @free(i8* %264) #2
  %265 = load i32*, i32** %last_d, align 8
  %266 = bitcast i32* %265 to i8*
  call void @free(i8* %266) #2
  %267 = load i32*, i32** %temp_d, align 8
  %268 = bitcast i32* %267 to i8*
  call void @free(i8* %268) #2
  %269 = load i32, i32* %d, align 4
  store i32 %269, i32* %retval
  br label %return

return:                                           ; preds = %while.end.261, %if.then.199, %if.then.193, %if.then.187, %if.then.14, %if.then
  %270 = load i32, i32* %retval
  ret i32 %270
}

; Function Attrs: nounwind uwtable
define internal i32 @greedy(i8* %s1, i8* %s2, i32 %m, i32 %n, i32 %offset1, i32 %offset2, i32 %W, %struct._collec_t* %eCol) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %offset1.addr = alloca i32, align 4
  %offset2.addr = alloca i32, align 4
  %W.addr = alloca i32, align 4
  %eCol.addr = alloca %struct._collec_t*, align 8
  %col = alloca i32, align 4
  %k = alloca i32, align 4
  %blower = alloca i32, align 4
  %flower = alloca i32, align 4
  %bupper = alloca i32, align 4
  %fupper = alloca i32, align 4
  %row = alloca i32, align 4
  %DELTA = alloca i32, align 4
  %B_ORIGIN = alloca i32, align 4
  %F_ORIGIN = alloca i32, align 4
  %d = alloca i32, align 4
  %max_d = alloca i32, align 4
  %Cost = alloca i32, align 4
  %MAX_D = alloca i32, align 4
  %i = alloca i32, align 4
  %back = alloca i32, align 4
  %forth = alloca i32, align 4
  %blast_d = alloca i32*, align 8
  %flast_d = alloca i32*, align 8
  %btemp_d = alloca i32*, align 8
  %ftemp_d = alloca i32*, align 8
  %min_row = alloca i32*, align 8
  %min_diag = alloca i32*, align 8
  %max_row = alloca i32*, align 8
  %max_diag = alloca i32*, align 8
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %offset1, i32* %offset1.addr, align 4
  store i32 %offset2, i32* %offset2.addr, align 4
  store i32 %W, i32* %W.addr, align 4
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp uge i32 %0, 1000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %m.addr, align 4
  %sub = sub i32 %1, %2
  store i32 %sub, i32* %DELTA, align 4
  %3 = load i32, i32* %W.addr, align 4
  %4 = load i32, i32* %m.addr, align 4
  %conv = uitofp i32 %4 to double
  %mul = fmul double 2.000000e-01, %conv
  %add = fadd double %mul, 1.000000e+00
  %conv1 = fptoui double %add to i32
  %cmp2 = icmp ult i32 %3, %conv1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %m.addr, align 4
  %conv4 = uitofp i32 %5 to double
  %mul5 = fmul double 2.000000e-01, %conv4
  %add6 = fadd double %mul5, 1.000000e+00
  %conv7 = fptoui double %add6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %W.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, i32* %MAX_D, align 4
  store i32 %cond, i32* %max_d, align 4
  %7 = load i32, i32* %DELTA, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.52

if.then.10:                                       ; preds = %cond.end
  %8 = load i32, i32* %m.addr, align 4
  %conv11 = uitofp i32 %8 to double
  %9 = load i32, i32* %W.addr, align 4
  %conv12 = uitofp i32 %9 to double
  %10 = load i32, i32* %n.addr, align 4
  %conv13 = uitofp i32 %10 to double
  %mul14 = fmul double 1.200000e+00, %conv13
  %cmp15 = fcmp ogt double %conv12, %mul14
  br i1 %cmp15, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %if.then.10
  %11 = load i32, i32* %n.addr, align 4
  %conv18 = uitofp i32 %11 to double
  %mul19 = fmul double 1.200000e+00, %conv18
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.then.10
  %12 = load i32, i32* %W.addr, align 4
  %conv21 = uitofp i32 %12 to double
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.17
  %cond23 = phi double [ %mul19, %cond.true.17 ], [ %conv21, %cond.false.20 ]
  %cmp24 = fcmp ole double %conv11, %cond23
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %cond.end.22
  %13 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %14 = load i32, i32* %offset2.addr, align 4
  %add27 = add i32 %14, 1
  %15 = load i32, i32* %offset1.addr, align 4
  %add28 = add i32 %15, 1
  %16 = load i32, i32* %offset2.addr, align 4
  %17 = load i32, i32* %n.addr, align 4
  %add29 = add i32 %16, %17
  %18 = load i32, i32* %offset1.addr, align 4
  %19 = load i32, i32* %m.addr, align 4
  %add30 = add i32 %18, %19
  %call = call %struct._exon_t* @new_exon(i32 %add27, i32 %add28, i32 %add29, i32 %add30)
  %20 = bitcast %struct._exon_t* %call to i8*
  call void @add_col_elt(%struct._collec_t* %13, i8* %20)
  %21 = load i32, i32* %m.addr, align 4
  %22 = load i32, i32* %n.addr, align 4
  %sub31 = sub i32 %21, %22
  %23 = load i32, i32* %n.addr, align 4
  %conv32 = uitofp i32 %23 to double
  %mul33 = fmul double 2.000000e-01, %conv32
  %add34 = fadd double %mul33, 1.000000e+00
  %conv35 = fptoui double %add34 to i32
  %add36 = add i32 %sub31, %conv35
  store i32 %add36, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end.22
  %24 = load i32, i32* %W.addr, align 4
  %25 = load i32, i32* %m.addr, align 4
  %conv37 = uitofp i32 %25 to double
  %mul38 = fmul double 2.000000e-01, %conv37
  %add39 = fadd double %mul38, 1.000000e+00
  %conv40 = fptoui double %add39 to i32
  %cmp41 = icmp ult i32 %24, %conv40
  br i1 %cmp41, label %cond.true.43, label %cond.false.48

cond.true.43:                                     ; preds = %if.else
  %26 = load i32, i32* %m.addr, align 4
  %conv44 = uitofp i32 %26 to double
  %mul45 = fmul double 2.000000e-01, %conv44
  %add46 = fadd double %mul45, 1.000000e+00
  %conv47 = fptoui double %add46 to i32
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.else
  %27 = load i32, i32* %W.addr, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.43
  %cond50 = phi i32 [ %conv47, %cond.true.43 ], [ %27, %cond.false.48 ]
  %add51 = add i32 %cond50, 1
  store i32 %add51, i32* %retval
  br label %return

if.end.52:                                        ; preds = %cond.end
  %28 = load i32, i32* %MAX_D, align 4
  store i32 %28, i32* %F_ORIGIN, align 4
  %29 = load i32, i32* %MAX_D, align 4
  %30 = load i32, i32* %DELTA, align 4
  %sub53 = sub i32 %29, %30
  store i32 %sub53, i32* %B_ORIGIN, align 4
  %31 = load i32, i32* %m.addr, align 4
  store i32 %31, i32* %row, align 4
  %32 = load i32, i32* %n.addr, align 4
  store i32 %32, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %33 = load i32, i32* %row, align 4
  %cmp54 = icmp sgt i32 %33, 0
  br i1 %cmp54, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %34 = load i32, i32* %col, align 4
  %cmp56 = icmp sgt i32 %34, 0
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %35 = load i32, i32* %row, align 4
  %sub58 = sub nsw i32 %35, 1
  %idxprom = sext i32 %sub58 to i64
  %36 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx, align 1
  %conv59 = zext i8 %37 to i32
  %38 = load i32, i32* %col, align 4
  %sub60 = sub nsw i32 %38, 1
  %idxprom61 = sext i32 %sub60 to i64
  %39 = load i8*, i8** %s2.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %39, i64 %idxprom61
  %40 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %40 to i32
  %cmp64 = icmp eq i32 %conv59, %conv63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %41 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp64, %land.rhs ]
  br i1 %41, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %row, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %row, align 4
  %43 = load i32, i32* %col, align 4
  %dec66 = add nsw i32 %43, -1
  store i32 %dec66, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %44 = load i32, i32* %row, align 4
  %cmp67 = icmp eq i32 %44, 0
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %for.end
  %45 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %46 = load i32, i32* %offset2.addr, align 4
  %47 = load i32, i32* %m.addr, align 4
  %sub70 = sub i32 %46, %47
  %48 = load i32, i32* %n.addr, align 4
  %add71 = add i32 %sub70, %48
  %add72 = add i32 %add71, 1
  %49 = load i32, i32* %offset1.addr, align 4
  %add73 = add i32 %49, 1
  %50 = load i32, i32* %offset2.addr, align 4
  %51 = load i32, i32* %n.addr, align 4
  %add74 = add i32 %50, %51
  %52 = load i32, i32* %offset1.addr, align 4
  %53 = load i32, i32* %m.addr, align 4
  %add75 = add i32 %52, %53
  %call76 = call %struct._exon_t* @new_exon(i32 %add72, i32 %add73, i32 %add74, i32 %add75)
  %54 = bitcast %struct._exon_t* %call76 to i8*
  call void @add_col_elt(%struct._collec_t* %45, i8* %54)
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %for.end
  %55 = load i32, i32* %MAX_D, align 4
  %56 = load i32, i32* %n.addr, align 4
  %add78 = add i32 %55, %56
  %add79 = add i32 %add78, 1
  %conv80 = zext i32 %add79 to i64
  %mul81 = mul i64 %conv80, 4
  %call82 = call i8* @xmalloc(i64 %mul81)
  %57 = bitcast i8* %call82 to i32*
  store i32* %57, i32** %blast_d, align 8
  %58 = load i32, i32* %MAX_D, align 4
  %59 = load i32, i32* %n.addr, align 4
  %add83 = add i32 %58, %59
  %add84 = add i32 %add83, 1
  %conv85 = zext i32 %add84 to i64
  %mul86 = mul i64 %conv85, 4
  %call87 = call i8* @xmalloc(i64 %mul86)
  %60 = bitcast i8* %call87 to i32*
  store i32* %60, i32** %btemp_d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.99, %if.end.77
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %MAX_D, align 4
  %63 = load i32, i32* %n.addr, align 4
  %add89 = add i32 %62, %63
  %cmp90 = icmp ule i32 %61, %add89
  br i1 %cmp90, label %for.body.92, label %for.end.100

for.body.92:                                      ; preds = %for.cond.88
  %64 = load i32, i32* %m.addr, align 4
  %add93 = add i32 %64, 1
  %65 = load i32, i32* %i, align 4
  %idxprom94 = zext i32 %65 to i64
  %66 = load i32*, i32** %blast_d, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %66, i64 %idxprom94
  store i32 %add93, i32* %arrayidx95, align 4
  %67 = load i32, i32* %m.addr, align 4
  %add96 = add i32 %67, 1
  %68 = load i32, i32* %i, align 4
  %idxprom97 = zext i32 %68 to i64
  %69 = load i32*, i32** %btemp_d, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %69, i64 %idxprom97
  store i32 %add96, i32* %arrayidx98, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.92
  %70 = load i32, i32* %i, align 4
  %inc = add i32 %70, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.88

for.end.100:                                      ; preds = %for.cond.88
  %71 = load i32, i32* %row, align 4
  %72 = load i32, i32* %B_ORIGIN, align 4
  %73 = load i32, i32* %DELTA, align 4
  %add101 = add nsw i32 %72, %73
  %idxprom102 = sext i32 %add101 to i64
  %74 = load i32*, i32** %blast_d, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %74, i64 %idxprom102
  store i32 %71, i32* %arrayidx103, align 4
  %75 = load i32, i32* %B_ORIGIN, align 4
  %76 = load i32, i32* %DELTA, align 4
  %add104 = add nsw i32 %75, %76
  %sub105 = sub nsw i32 %add104, 1
  store i32 %sub105, i32* %blower, align 4
  %77 = load i32, i32* %B_ORIGIN, align 4
  %78 = load i32, i32* %DELTA, align 4
  %add106 = add nsw i32 %77, %78
  %add107 = add nsw i32 %add106, 1
  store i32 %add107, i32* %bupper, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.125, %for.end.100
  %79 = load i32, i32* %row, align 4
  %80 = load i32, i32* %n.addr, align 4
  %cmp109 = icmp ult i32 %79, %80
  br i1 %cmp109, label %land.lhs.true.111, label %land.end.123

land.lhs.true.111:                                ; preds = %for.cond.108
  %81 = load i32, i32* %row, align 4
  %82 = load i32, i32* %m.addr, align 4
  %cmp112 = icmp ult i32 %81, %82
  br i1 %cmp112, label %land.rhs.114, label %land.end.123

land.rhs.114:                                     ; preds = %land.lhs.true.111
  %83 = load i32, i32* %row, align 4
  %idxprom115 = sext i32 %83 to i64
  %84 = load i8*, i8** %s1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %84, i64 %idxprom115
  %85 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %85 to i32
  %86 = load i32, i32* %row, align 4
  %idxprom118 = sext i32 %86 to i64
  %87 = load i8*, i8** %s2.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %87, i64 %idxprom118
  %88 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %88 to i32
  %cmp121 = icmp eq i32 %conv117, %conv120
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.114, %land.lhs.true.111, %for.cond.108
  %89 = phi i1 [ false, %land.lhs.true.111 ], [ false, %for.cond.108 ], [ %cmp121, %land.rhs.114 ]
  br i1 %89, label %for.body.124, label %for.end.127

for.body.124:                                     ; preds = %land.end.123
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.124
  %90 = load i32, i32* %row, align 4
  %inc126 = add nsw i32 %90, 1
  store i32 %inc126, i32* %row, align 4
  br label %for.cond.108

for.end.127:                                      ; preds = %land.end.123
  %91 = load i32, i32* %row, align 4
  %92 = load i32, i32* %m.addr, align 4
  %cmp128 = icmp eq i32 %91, %92
  br i1 %cmp128, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %for.end.127
  %93 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %94 = load i32, i32* %offset2.addr, align 4
  %add131 = add i32 %94, 1
  %95 = load i32, i32* %offset1.addr, align 4
  %add132 = add i32 %95, 1
  %96 = load i32, i32* %offset2.addr, align 4
  %97 = load i32, i32* %m.addr, align 4
  %add133 = add i32 %96, %97
  %98 = load i32, i32* %offset1.addr, align 4
  %99 = load i32, i32* %m.addr, align 4
  %add134 = add i32 %98, %99
  %call135 = call %struct._exon_t* @new_exon(i32 %add131, i32 %add132, i32 %add133, i32 %add134)
  %100 = bitcast %struct._exon_t* %call135 to i8*
  call void @add_col_elt(%struct._collec_t* %93, i8* %100)
  %101 = load i32*, i32** %blast_d, align 8
  %102 = bitcast i32* %101 to i8*
  call void @free(i8* %102) #2
  %103 = load i32*, i32** %btemp_d, align 8
  %104 = bitcast i32* %103 to i8*
  call void @free(i8* %104) #2
  store i32 0, i32* %retval
  br label %return

if.end.136:                                       ; preds = %for.end.127
  %105 = load i32, i32* %MAX_D, align 4
  %106 = load i32, i32* %n.addr, align 4
  %add137 = add i32 %105, %106
  %add138 = add i32 %add137, 1
  %conv139 = zext i32 %add138 to i64
  %mul140 = mul i64 %conv139, 4
  %call141 = call i8* @xmalloc(i64 %mul140)
  %107 = bitcast i8* %call141 to i32*
  store i32* %107, i32** %flast_d, align 8
  %108 = load i32, i32* %MAX_D, align 4
  %109 = load i32, i32* %n.addr, align 4
  %add142 = add i32 %108, %109
  %add143 = add i32 %add142, 1
  %conv144 = zext i32 %add143 to i64
  %mul145 = mul i64 %conv144, 4
  %call146 = call i8* @xmalloc(i64 %mul145)
  %110 = bitcast i8* %call146 to i32*
  store i32* %110, i32** %ftemp_d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.156, %if.end.136
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %MAX_D, align 4
  %113 = load i32, i32* %n.addr, align 4
  %add148 = add i32 %112, %113
  %cmp149 = icmp ule i32 %111, %add148
  br i1 %cmp149, label %for.body.151, label %for.end.158

for.body.151:                                     ; preds = %for.cond.147
  %114 = load i32, i32* %i, align 4
  %idxprom152 = zext i32 %114 to i64
  %115 = load i32*, i32** %flast_d, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %115, i64 %idxprom152
  store i32 -1, i32* %arrayidx153, align 4
  %116 = load i32, i32* %i, align 4
  %idxprom154 = zext i32 %116 to i64
  %117 = load i32*, i32** %ftemp_d, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %117, i64 %idxprom154
  store i32 -1, i32* %arrayidx155, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.151
  %118 = load i32, i32* %i, align 4
  %inc157 = add i32 %118, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.147

for.end.158:                                      ; preds = %for.cond.147
  %119 = load i32, i32* %row, align 4
  %120 = load i32, i32* %F_ORIGIN, align 4
  %idxprom159 = sext i32 %120 to i64
  %121 = load i32*, i32** %flast_d, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %121, i64 %idxprom159
  store i32 %119, i32* %arrayidx160, align 4
  %122 = load i32, i32* %F_ORIGIN, align 4
  %sub161 = sub nsw i32 %122, 1
  store i32 %sub161, i32* %flower, align 4
  %123 = load i32, i32* %F_ORIGIN, align 4
  %add162 = add nsw i32 %123, 1
  store i32 %add162, i32* %fupper, align 4
  %124 = load i32, i32* %MAX_D, align 4
  %add163 = add i32 %124, 1
  %conv164 = zext i32 %add163 to i64
  %mul165 = mul i64 %conv164, 4
  %call166 = call i8* @xmalloc(i64 %mul165)
  %125 = bitcast i8* %call166 to i32*
  store i32* %125, i32** %max_row, align 8
  %126 = load i32, i32* %MAX_D, align 4
  %add167 = add i32 %126, 1
  %conv168 = zext i32 %add167 to i64
  %mul169 = mul i64 %conv168, 4
  %call170 = call i8* @xmalloc(i64 %mul169)
  %127 = bitcast i8* %call170 to i32*
  store i32* %127, i32** %min_row, align 8
  %128 = load i32, i32* %MAX_D, align 4
  %add171 = add i32 %128, 1
  %conv172 = zext i32 %add171 to i64
  %mul173 = mul i64 %conv172, 4
  %call174 = call i8* @xmalloc(i64 %mul173)
  %129 = bitcast i8* %call174 to i32*
  store i32* %129, i32** %max_diag, align 8
  %130 = load i32, i32* %MAX_D, align 4
  %add175 = add i32 %130, 1
  %conv176 = zext i32 %add175 to i64
  %mul177 = mul i64 %conv176, 4
  %call178 = call i8* @xmalloc(i64 %mul177)
  %131 = bitcast i8* %call178 to i32*
  store i32* %131, i32** %min_diag, align 8
  store i32 1, i32* %d, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.188, %for.end.158
  %132 = load i32, i32* %d, align 4
  %133 = load i32, i32* %MAX_D, align 4
  %cmp180 = icmp ule i32 %132, %133
  br i1 %cmp180, label %for.body.182, label %for.end.190

for.body.182:                                     ; preds = %for.cond.179
  %134 = load i32, i32* %m.addr, align 4
  %add183 = add i32 %134, 1
  %135 = load i32, i32* %d, align 4
  %idxprom184 = zext i32 %135 to i64
  %136 = load i32*, i32** %min_row, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %136, i64 %idxprom184
  store i32 %add183, i32* %arrayidx185, align 4
  %137 = load i32, i32* %d, align 4
  %idxprom186 = zext i32 %137 to i64
  %138 = load i32*, i32** %max_row, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %138, i64 %idxprom186
  store i32 -1, i32* %arrayidx187, align 4
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.182
  %139 = load i32, i32* %d, align 4
  %inc189 = add i32 %139, 1
  store i32 %inc189, i32* %d, align 4
  br label %for.cond.179

for.end.190:                                      ; preds = %for.cond.179
  %140 = load i32, i32* %B_ORIGIN, align 4
  %141 = load i32, i32* %DELTA, align 4
  %add191 = add nsw i32 %140, %141
  %idxprom192 = sext i32 %add191 to i64
  %142 = load i32*, i32** %blast_d, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %142, i64 %idxprom192
  %143 = load i32, i32* %arrayidx193, align 4
  %144 = load i32*, i32** %min_row, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %arrayidx194, align 4
  %145 = load i32, i32* %B_ORIGIN, align 4
  %146 = load i32, i32* %DELTA, align 4
  %add195 = add nsw i32 %145, %146
  %147 = load i32*, i32** %min_diag, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %add195, i32* %arrayidx196, align 4
  %148 = load i32, i32* %F_ORIGIN, align 4
  %idxprom197 = sext i32 %148 to i64
  %149 = load i32*, i32** %flast_d, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %149, i64 %idxprom197
  %150 = load i32, i32* %arrayidx198, align 4
  %151 = load i32*, i32** %max_row, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %150, i32* %arrayidx199, align 4
  %152 = load i32, i32* %F_ORIGIN, align 4
  %153 = load i32*, i32** %max_diag, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %arrayidx200, align 4
  store i32 -1, i32* %forth, align 4
  store i32 -1, i32* %back, align 4
  store i32 1, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.534, %for.end.190
  %154 = load i32, i32* %d, align 4
  %155 = load i32, i32* %max_d, align 4
  %cmp201 = icmp ule i32 %154, %155
  br i1 %cmp201, label %while.body, label %while.end.538

while.body:                                       ; preds = %while.cond
  %156 = load i32, i32* %blower, align 4
  store i32 %156, i32* %k, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.304, %while.body
  %157 = load i32, i32* %k, align 4
  %158 = load i32, i32* %bupper, align 4
  %cmp204 = icmp sle i32 %157, %158
  br i1 %cmp204, label %for.body.206, label %for.end.306

for.body.206:                                     ; preds = %for.cond.203
  %159 = load i32, i32* %k, align 4
  %160 = load i32, i32* %d, align 4
  %sub207 = sub nsw i32 0, %160
  %161 = load i32, i32* %DELTA, align 4
  %add208 = add nsw i32 %sub207, %161
  %162 = load i32, i32* %B_ORIGIN, align 4
  %add209 = add nsw i32 %add208, %162
  %cmp210 = icmp eq i32 %159, %add209
  br i1 %cmp210, label %if.then.212, label %if.else.216

if.then.212:                                      ; preds = %for.body.206
  %163 = load i32, i32* %k, align 4
  %add213 = add nsw i32 %163, 1
  %idxprom214 = sext i32 %add213 to i64
  %164 = load i32*, i32** %blast_d, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %164, i64 %idxprom214
  %165 = load i32, i32* %arrayidx215, align 4
  store i32 %165, i32* %row, align 4
  br label %if.end.278

if.else.216:                                      ; preds = %for.body.206
  %166 = load i32, i32* %k, align 4
  %167 = load i32, i32* %d, align 4
  %168 = load i32, i32* %DELTA, align 4
  %add217 = add nsw i32 %167, %168
  %169 = load i32, i32* %B_ORIGIN, align 4
  %add218 = add nsw i32 %add217, %169
  %cmp219 = icmp eq i32 %166, %add218
  br i1 %cmp219, label %if.then.221, label %if.else.226

if.then.221:                                      ; preds = %if.else.216
  %170 = load i32, i32* %k, align 4
  %sub222 = sub nsw i32 %170, 1
  %idxprom223 = sext i32 %sub222 to i64
  %171 = load i32*, i32** %blast_d, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %171, i64 %idxprom223
  %172 = load i32, i32* %arrayidx224, align 4
  %sub225 = sub nsw i32 %172, 1
  store i32 %sub225, i32* %row, align 4
  br label %if.end.277

if.else.226:                                      ; preds = %if.else.216
  %173 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %173 to i64
  %174 = load i32*, i32** %blast_d, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %174, i64 %idxprom227
  %175 = load i32, i32* %arrayidx228, align 4
  %176 = load i32, i32* %k, align 4
  %add229 = add nsw i32 %176, 1
  %idxprom230 = sext i32 %add229 to i64
  %177 = load i32*, i32** %blast_d, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %177, i64 %idxprom230
  %178 = load i32, i32* %arrayidx231, align 4
  %cmp232 = icmp sle i32 %175, %178
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.247

land.lhs.true.234:                                ; preds = %if.else.226
  %179 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %179 to i64
  %180 = load i32*, i32** %blast_d, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %180, i64 %idxprom235
  %181 = load i32, i32* %arrayidx236, align 4
  %sub237 = sub nsw i32 %181, 1
  %182 = load i32, i32* %k, align 4
  %sub238 = sub nsw i32 %182, 1
  %idxprom239 = sext i32 %sub238 to i64
  %183 = load i32*, i32** %blast_d, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %183, i64 %idxprom239
  %184 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp sle i32 %sub237, %184
  br i1 %cmp241, label %if.then.243, label %if.else.247

if.then.243:                                      ; preds = %land.lhs.true.234
  %185 = load i32, i32* %k, align 4
  %idxprom244 = sext i32 %185 to i64
  %186 = load i32*, i32** %blast_d, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %186, i64 %idxprom244
  %187 = load i32, i32* %arrayidx245, align 4
  %sub246 = sub nsw i32 %187, 1
  store i32 %sub246, i32* %row, align 4
  br label %if.end.276

if.else.247:                                      ; preds = %land.lhs.true.234, %if.else.226
  %188 = load i32, i32* %k, align 4
  %sub248 = sub nsw i32 %188, 1
  %idxprom249 = sext i32 %sub248 to i64
  %189 = load i32*, i32** %blast_d, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %189, i64 %idxprom249
  %190 = load i32, i32* %arrayidx250, align 4
  %191 = load i32, i32* %k, align 4
  %add251 = add nsw i32 %191, 1
  %idxprom252 = sext i32 %add251 to i64
  %192 = load i32*, i32** %blast_d, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %192, i64 %idxprom252
  %193 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %193, 1
  %cmp255 = icmp sle i32 %190, %sub254
  br i1 %cmp255, label %land.lhs.true.257, label %if.else.271

land.lhs.true.257:                                ; preds = %if.else.247
  %194 = load i32, i32* %k, align 4
  %sub258 = sub nsw i32 %194, 1
  %idxprom259 = sext i32 %sub258 to i64
  %195 = load i32*, i32** %blast_d, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %195, i64 %idxprom259
  %196 = load i32, i32* %arrayidx260, align 4
  %197 = load i32, i32* %k, align 4
  %idxprom261 = sext i32 %197 to i64
  %198 = load i32*, i32** %blast_d, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %198, i64 %idxprom261
  %199 = load i32, i32* %arrayidx262, align 4
  %sub263 = sub nsw i32 %199, 1
  %cmp264 = icmp sle i32 %196, %sub263
  br i1 %cmp264, label %if.then.266, label %if.else.271

if.then.266:                                      ; preds = %land.lhs.true.257
  %200 = load i32, i32* %k, align 4
  %sub267 = sub nsw i32 %200, 1
  %idxprom268 = sext i32 %sub267 to i64
  %201 = load i32*, i32** %blast_d, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %201, i64 %idxprom268
  %202 = load i32, i32* %arrayidx269, align 4
  %sub270 = sub nsw i32 %202, 1
  store i32 %sub270, i32* %row, align 4
  br label %if.end.275

if.else.271:                                      ; preds = %land.lhs.true.257, %if.else.247
  %203 = load i32, i32* %k, align 4
  %add272 = add nsw i32 %203, 1
  %idxprom273 = sext i32 %add272 to i64
  %204 = load i32*, i32** %blast_d, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %204, i64 %idxprom273
  %205 = load i32, i32* %arrayidx274, align 4
  store i32 %205, i32* %row, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.271, %if.then.266
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.243
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.221
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.212
  %206 = load i32, i32* %row, align 4
  %207 = load i32, i32* %k, align 4
  %add279 = add nsw i32 %206, %207
  %208 = load i32, i32* %B_ORIGIN, align 4
  %sub280 = sub nsw i32 %add279, %208
  store i32 %sub280, i32* %col, align 4
  br label %while.cond.281

while.cond.281:                                   ; preds = %while.body.299, %if.end.278
  %209 = load i32, i32* %row, align 4
  %cmp282 = icmp sgt i32 %209, 0
  br i1 %cmp282, label %land.lhs.true.284, label %land.end.298

land.lhs.true.284:                                ; preds = %while.cond.281
  %210 = load i32, i32* %col, align 4
  %cmp285 = icmp sgt i32 %210, 0
  br i1 %cmp285, label %land.rhs.287, label %land.end.298

land.rhs.287:                                     ; preds = %land.lhs.true.284
  %211 = load i32, i32* %row, align 4
  %sub288 = sub nsw i32 %211, 1
  %idxprom289 = sext i32 %sub288 to i64
  %212 = load i8*, i8** %s1.addr, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %212, i64 %idxprom289
  %213 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %213 to i32
  %214 = load i32, i32* %col, align 4
  %sub292 = sub nsw i32 %214, 1
  %idxprom293 = sext i32 %sub292 to i64
  %215 = load i8*, i8** %s2.addr, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %215, i64 %idxprom293
  %216 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %216 to i32
  %cmp296 = icmp eq i32 %conv291, %conv295
  br label %land.end.298

land.end.298:                                     ; preds = %land.rhs.287, %land.lhs.true.284, %while.cond.281
  %217 = phi i1 [ false, %land.lhs.true.284 ], [ false, %while.cond.281 ], [ %cmp296, %land.rhs.287 ]
  br i1 %217, label %while.body.299, label %while.end

while.body.299:                                   ; preds = %land.end.298
  %218 = load i32, i32* %row, align 4
  %dec300 = add nsw i32 %218, -1
  store i32 %dec300, i32* %row, align 4
  %219 = load i32, i32* %col, align 4
  %dec301 = add nsw i32 %219, -1
  store i32 %dec301, i32* %col, align 4
  br label %while.cond.281

while.end:                                        ; preds = %land.end.298
  %220 = load i32, i32* %row, align 4
  %221 = load i32, i32* %k, align 4
  %idxprom302 = sext i32 %221 to i64
  %222 = load i32*, i32** %btemp_d, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %222, i64 %idxprom302
  store i32 %220, i32* %arrayidx303, align 4
  br label %for.inc.304

for.inc.304:                                      ; preds = %while.end
  %223 = load i32, i32* %k, align 4
  %inc305 = add nsw i32 %223, 1
  store i32 %inc305, i32* %k, align 4
  br label %for.cond.203

for.end.306:                                      ; preds = %for.cond.203
  %224 = load i32, i32* %DELTA, align 4
  %225 = load i32, i32* %B_ORIGIN, align 4
  %add307 = add nsw i32 %224, %225
  %idxprom308 = sext i32 %add307 to i64
  %226 = load i32*, i32** %btemp_d, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %226, i64 %idxprom308
  %227 = load i32, i32* %arrayidx309, align 4
  %228 = load i32, i32* %d, align 4
  %idxprom310 = zext i32 %228 to i64
  %229 = load i32*, i32** %min_row, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %229, i64 %idxprom310
  store i32 %227, i32* %arrayidx311, align 4
  %230 = load i32, i32* %DELTA, align 4
  %231 = load i32, i32* %B_ORIGIN, align 4
  %add312 = add nsw i32 %230, %231
  %232 = load i32, i32* %d, align 4
  %idxprom313 = zext i32 %232 to i64
  %233 = load i32*, i32** %min_diag, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %233, i64 %idxprom313
  store i32 %add312, i32* %arrayidx314, align 4
  %234 = load i32, i32* %blower, align 4
  store i32 %234, i32* %k, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.340, %for.end.306
  %235 = load i32, i32* %k, align 4
  %236 = load i32, i32* %bupper, align 4
  %cmp316 = icmp sle i32 %235, %236
  br i1 %cmp316, label %for.body.318, label %for.end.342

for.body.318:                                     ; preds = %for.cond.315
  %237 = load i32, i32* %k, align 4
  %idxprom319 = sext i32 %237 to i64
  %238 = load i32*, i32** %btemp_d, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %238, i64 %idxprom319
  %239 = load i32, i32* %arrayidx320, align 4
  %240 = load i32, i32* %k, align 4
  %idxprom321 = sext i32 %240 to i64
  %241 = load i32*, i32** %blast_d, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %241, i64 %idxprom321
  store i32 %239, i32* %arrayidx322, align 4
  %242 = load i32, i32* %m.addr, align 4
  %add323 = add i32 %242, 1
  %243 = load i32, i32* %k, align 4
  %idxprom324 = sext i32 %243 to i64
  %244 = load i32*, i32** %btemp_d, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %244, i64 %idxprom324
  store i32 %add323, i32* %arrayidx325, align 4
  %245 = load i32, i32* %k, align 4
  %idxprom326 = sext i32 %245 to i64
  %246 = load i32*, i32** %blast_d, align 8
  %arrayidx327 = getelementptr inbounds i32, i32* %246, i64 %idxprom326
  %247 = load i32, i32* %arrayidx327, align 4
  %248 = load i32, i32* %d, align 4
  %idxprom328 = zext i32 %248 to i64
  %249 = load i32*, i32** %min_row, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %249, i64 %idxprom328
  %250 = load i32, i32* %arrayidx329, align 4
  %cmp330 = icmp slt i32 %247, %250
  br i1 %cmp330, label %if.then.332, label %if.end.339

if.then.332:                                      ; preds = %for.body.318
  %251 = load i32, i32* %k, align 4
  %idxprom333 = sext i32 %251 to i64
  %252 = load i32*, i32** %blast_d, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %252, i64 %idxprom333
  %253 = load i32, i32* %arrayidx334, align 4
  %254 = load i32, i32* %d, align 4
  %idxprom335 = zext i32 %254 to i64
  %255 = load i32*, i32** %min_row, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %255, i64 %idxprom335
  store i32 %253, i32* %arrayidx336, align 4
  %256 = load i32, i32* %k, align 4
  %257 = load i32, i32* %d, align 4
  %idxprom337 = zext i32 %257 to i64
  %258 = load i32*, i32** %min_diag, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %258, i64 %idxprom337
  store i32 %256, i32* %arrayidx338, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.332, %for.body.318
  br label %for.inc.340

for.inc.340:                                      ; preds = %if.end.339
  %259 = load i32, i32* %k, align 4
  %inc341 = add nsw i32 %259, 1
  store i32 %inc341, i32* %k, align 4
  br label %for.cond.315

for.end.342:                                      ; preds = %for.cond.315
  store i32 0, i32* %Cost, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.366, %for.end.342
  %260 = load i32, i32* %Cost, align 4
  %261 = load i32, i32* %d, align 4
  %cmp344 = icmp ult i32 %260, %261
  br i1 %cmp344, label %for.body.346, label %for.end.368

for.body.346:                                     ; preds = %for.cond.343
  %262 = load i32, i32* %d, align 4
  %idxprom347 = zext i32 %262 to i64
  %263 = load i32*, i32** %min_row, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %263, i64 %idxprom347
  %264 = load i32, i32* %arrayidx348, align 4
  %265 = load i32, i32* %Cost, align 4
  %idxprom349 = zext i32 %265 to i64
  %266 = load i32*, i32** %max_row, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %266, i64 %idxprom349
  %267 = load i32, i32* %arrayidx350, align 4
  %cmp351 = icmp sle i32 %264, %267
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.365

land.lhs.true.353:                                ; preds = %for.body.346
  %268 = load i32, i32* %max_d, align 4
  %269 = load i32, i32* %d, align 4
  %270 = load i32, i32* %Cost, align 4
  %add354 = add i32 %269, %270
  %cmp355 = icmp ugt i32 %268, %add354
  br i1 %cmp355, label %if.then.363, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.353
  %271 = load i32, i32* %max_d, align 4
  %272 = load i32, i32* %d, align 4
  %273 = load i32, i32* %Cost, align 4
  %add357 = add i32 %272, %273
  %cmp358 = icmp eq i32 %271, %add357
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.365

land.lhs.true.360:                                ; preds = %lor.lhs.false
  %274 = load i32, i32* %forth, align 4
  %cmp361 = icmp slt i32 %274, 0
  br i1 %cmp361, label %if.then.363, label %if.end.365

if.then.363:                                      ; preds = %land.lhs.true.360, %land.lhs.true.353
  %275 = load i32, i32* %d, align 4
  %276 = load i32, i32* %Cost, align 4
  %add364 = add i32 %275, %276
  store i32 %add364, i32* %max_d, align 4
  %277 = load i32, i32* %d, align 4
  store i32 %277, i32* %back, align 4
  %278 = load i32, i32* %Cost, align 4
  store i32 %278, i32* %forth, align 4
  br label %for.end.368

if.end.365:                                       ; preds = %land.lhs.true.360, %lor.lhs.false, %for.body.346
  br label %for.inc.366

for.inc.366:                                      ; preds = %if.end.365
  %279 = load i32, i32* %Cost, align 4
  %inc367 = add i32 %279, 1
  store i32 %inc367, i32* %Cost, align 4
  br label %for.cond.343

for.end.368:                                      ; preds = %if.then.363, %for.cond.343
  %280 = load i32, i32* %blower, align 4
  %dec369 = add nsw i32 %280, -1
  store i32 %dec369, i32* %blower, align 4
  %281 = load i32, i32* %bupper, align 4
  %inc370 = add nsw i32 %281, 1
  store i32 %inc370, i32* %bupper, align 4
  %282 = load i32, i32* %flower, align 4
  store i32 %282, i32* %k, align 4
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.472, %for.end.368
  %283 = load i32, i32* %k, align 4
  %284 = load i32, i32* %fupper, align 4
  %cmp372 = icmp sle i32 %283, %284
  br i1 %cmp372, label %for.body.374, label %for.end.474

for.body.374:                                     ; preds = %for.cond.371
  %285 = load i32, i32* %k, align 4
  %286 = load i32, i32* %d, align 4
  %sub375 = sub nsw i32 0, %286
  %287 = load i32, i32* %F_ORIGIN, align 4
  %add376 = add nsw i32 %sub375, %287
  %cmp377 = icmp eq i32 %285, %add376
  br i1 %cmp377, label %if.then.379, label %if.else.384

if.then.379:                                      ; preds = %for.body.374
  %288 = load i32, i32* %k, align 4
  %add380 = add nsw i32 %288, 1
  %idxprom381 = sext i32 %add380 to i64
  %289 = load i32*, i32** %flast_d, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %289, i64 %idxprom381
  %290 = load i32, i32* %arrayidx382, align 4
  %add383 = add nsw i32 %290, 1
  store i32 %add383, i32* %row, align 4
  br label %if.end.443

if.else.384:                                      ; preds = %for.body.374
  %291 = load i32, i32* %k, align 4
  %292 = load i32, i32* %d, align 4
  %293 = load i32, i32* %F_ORIGIN, align 4
  %add385 = add nsw i32 %292, %293
  %cmp386 = icmp eq i32 %291, %add385
  br i1 %cmp386, label %if.then.388, label %if.else.392

if.then.388:                                      ; preds = %if.else.384
  %294 = load i32, i32* %k, align 4
  %sub389 = sub nsw i32 %294, 1
  %idxprom390 = sext i32 %sub389 to i64
  %295 = load i32*, i32** %flast_d, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %295, i64 %idxprom390
  %296 = load i32, i32* %arrayidx391, align 4
  store i32 %296, i32* %row, align 4
  br label %if.end.442

if.else.392:                                      ; preds = %if.else.384
  %297 = load i32, i32* %k, align 4
  %idxprom393 = sext i32 %297 to i64
  %298 = load i32*, i32** %flast_d, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %298, i64 %idxprom393
  %299 = load i32, i32* %arrayidx394, align 4
  %300 = load i32, i32* %k, align 4
  %add395 = add nsw i32 %300, 1
  %idxprom396 = sext i32 %add395 to i64
  %301 = load i32*, i32** %flast_d, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %301, i64 %idxprom396
  %302 = load i32, i32* %arrayidx397, align 4
  %cmp398 = icmp sge i32 %299, %302
  br i1 %cmp398, label %land.lhs.true.400, label %if.else.413

land.lhs.true.400:                                ; preds = %if.else.392
  %303 = load i32, i32* %k, align 4
  %idxprom401 = sext i32 %303 to i64
  %304 = load i32*, i32** %flast_d, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %304, i64 %idxprom401
  %305 = load i32, i32* %arrayidx402, align 4
  %add403 = add nsw i32 %305, 1
  %306 = load i32, i32* %k, align 4
  %sub404 = sub nsw i32 %306, 1
  %idxprom405 = sext i32 %sub404 to i64
  %307 = load i32*, i32** %flast_d, align 8
  %arrayidx406 = getelementptr inbounds i32, i32* %307, i64 %idxprom405
  %308 = load i32, i32* %arrayidx406, align 4
  %cmp407 = icmp sge i32 %add403, %308
  br i1 %cmp407, label %if.then.409, label %if.else.413

if.then.409:                                      ; preds = %land.lhs.true.400
  %309 = load i32, i32* %k, align 4
  %idxprom410 = sext i32 %309 to i64
  %310 = load i32*, i32** %flast_d, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %310, i64 %idxprom410
  %311 = load i32, i32* %arrayidx411, align 4
  %add412 = add nsw i32 %311, 1
  store i32 %add412, i32* %row, align 4
  br label %if.end.441

if.else.413:                                      ; preds = %land.lhs.true.400, %if.else.392
  %312 = load i32, i32* %k, align 4
  %add414 = add nsw i32 %312, 1
  %idxprom415 = sext i32 %add414 to i64
  %313 = load i32*, i32** %flast_d, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %313, i64 %idxprom415
  %314 = load i32, i32* %arrayidx416, align 4
  %add417 = add nsw i32 %314, 1
  %315 = load i32, i32* %k, align 4
  %sub418 = sub nsw i32 %315, 1
  %idxprom419 = sext i32 %sub418 to i64
  %316 = load i32*, i32** %flast_d, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %316, i64 %idxprom419
  %317 = load i32, i32* %arrayidx420, align 4
  %cmp421 = icmp sge i32 %add417, %317
  br i1 %cmp421, label %land.lhs.true.423, label %if.else.436

land.lhs.true.423:                                ; preds = %if.else.413
  %318 = load i32, i32* %k, align 4
  %add424 = add nsw i32 %318, 1
  %idxprom425 = sext i32 %add424 to i64
  %319 = load i32*, i32** %flast_d, align 8
  %arrayidx426 = getelementptr inbounds i32, i32* %319, i64 %idxprom425
  %320 = load i32, i32* %arrayidx426, align 4
  %321 = load i32, i32* %k, align 4
  %idxprom427 = sext i32 %321 to i64
  %322 = load i32*, i32** %flast_d, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %322, i64 %idxprom427
  %323 = load i32, i32* %arrayidx428, align 4
  %cmp429 = icmp sge i32 %320, %323
  br i1 %cmp429, label %if.then.431, label %if.else.436

if.then.431:                                      ; preds = %land.lhs.true.423
  %324 = load i32, i32* %k, align 4
  %add432 = add nsw i32 %324, 1
  %idxprom433 = sext i32 %add432 to i64
  %325 = load i32*, i32** %flast_d, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %325, i64 %idxprom433
  %326 = load i32, i32* %arrayidx434, align 4
  %add435 = add nsw i32 %326, 1
  store i32 %add435, i32* %row, align 4
  br label %if.end.440

if.else.436:                                      ; preds = %land.lhs.true.423, %if.else.413
  %327 = load i32, i32* %k, align 4
  %sub437 = sub nsw i32 %327, 1
  %idxprom438 = sext i32 %sub437 to i64
  %328 = load i32*, i32** %flast_d, align 8
  %arrayidx439 = getelementptr inbounds i32, i32* %328, i64 %idxprom438
  %329 = load i32, i32* %arrayidx439, align 4
  store i32 %329, i32* %row, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.436, %if.then.431
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.then.409
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %if.then.388
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %if.then.379
  %330 = load i32, i32* %row, align 4
  %331 = load i32, i32* %k, align 4
  %add444 = add nsw i32 %330, %331
  %332 = load i32, i32* %F_ORIGIN, align 4
  %sub445 = sub nsw i32 %add444, %332
  store i32 %sub445, i32* %col, align 4
  %333 = load i32, i32* %row, align 4
  %cmp446 = icmp sge i32 %333, 0
  br i1 %cmp446, label %if.then.448, label %if.end.469

if.then.448:                                      ; preds = %if.end.443
  br label %while.cond.449

while.cond.449:                                   ; preds = %while.body.465, %if.then.448
  %334 = load i32, i32* %row, align 4
  %335 = load i32, i32* %m.addr, align 4
  %cmp450 = icmp ult i32 %334, %335
  br i1 %cmp450, label %land.lhs.true.452, label %land.end.464

land.lhs.true.452:                                ; preds = %while.cond.449
  %336 = load i32, i32* %col, align 4
  %337 = load i32, i32* %n.addr, align 4
  %cmp453 = icmp ult i32 %336, %337
  br i1 %cmp453, label %land.rhs.455, label %land.end.464

land.rhs.455:                                     ; preds = %land.lhs.true.452
  %338 = load i32, i32* %row, align 4
  %idxprom456 = sext i32 %338 to i64
  %339 = load i8*, i8** %s1.addr, align 8
  %arrayidx457 = getelementptr inbounds i8, i8* %339, i64 %idxprom456
  %340 = load i8, i8* %arrayidx457, align 1
  %conv458 = zext i8 %340 to i32
  %341 = load i32, i32* %col, align 4
  %idxprom459 = sext i32 %341 to i64
  %342 = load i8*, i8** %s2.addr, align 8
  %arrayidx460 = getelementptr inbounds i8, i8* %342, i64 %idxprom459
  %343 = load i8, i8* %arrayidx460, align 1
  %conv461 = zext i8 %343 to i32
  %cmp462 = icmp eq i32 %conv458, %conv461
  br label %land.end.464

land.end.464:                                     ; preds = %land.rhs.455, %land.lhs.true.452, %while.cond.449
  %344 = phi i1 [ false, %land.lhs.true.452 ], [ false, %while.cond.449 ], [ %cmp462, %land.rhs.455 ]
  br i1 %344, label %while.body.465, label %while.end.468

while.body.465:                                   ; preds = %land.end.464
  %345 = load i32, i32* %row, align 4
  %inc466 = add nsw i32 %345, 1
  store i32 %inc466, i32* %row, align 4
  %346 = load i32, i32* %col, align 4
  %inc467 = add nsw i32 %346, 1
  store i32 %inc467, i32* %col, align 4
  br label %while.cond.449

while.end.468:                                    ; preds = %land.end.464
  br label %if.end.469

if.end.469:                                       ; preds = %while.end.468, %if.end.443
  %347 = load i32, i32* %row, align 4
  %348 = load i32, i32* %k, align 4
  %idxprom470 = sext i32 %348 to i64
  %349 = load i32*, i32** %ftemp_d, align 8
  %arrayidx471 = getelementptr inbounds i32, i32* %349, i64 %idxprom470
  store i32 %347, i32* %arrayidx471, align 4
  br label %for.inc.472

for.inc.472:                                      ; preds = %if.end.469
  %350 = load i32, i32* %k, align 4
  %inc473 = add nsw i32 %350, 1
  store i32 %inc473, i32* %k, align 4
  br label %for.cond.371

for.end.474:                                      ; preds = %for.cond.371
  %351 = load i32, i32* %F_ORIGIN, align 4
  %idxprom475 = sext i32 %351 to i64
  %352 = load i32*, i32** %ftemp_d, align 8
  %arrayidx476 = getelementptr inbounds i32, i32* %352, i64 %idxprom475
  %353 = load i32, i32* %arrayidx476, align 4
  %354 = load i32, i32* %d, align 4
  %idxprom477 = zext i32 %354 to i64
  %355 = load i32*, i32** %max_row, align 8
  %arrayidx478 = getelementptr inbounds i32, i32* %355, i64 %idxprom477
  store i32 %353, i32* %arrayidx478, align 4
  %356 = load i32, i32* %F_ORIGIN, align 4
  %357 = load i32, i32* %d, align 4
  %idxprom479 = zext i32 %357 to i64
  %358 = load i32*, i32** %max_diag, align 8
  %arrayidx480 = getelementptr inbounds i32, i32* %358, i64 %idxprom479
  store i32 %356, i32* %arrayidx480, align 4
  %359 = load i32, i32* %flower, align 4
  store i32 %359, i32* %k, align 4
  br label %for.cond.481

for.cond.481:                                     ; preds = %for.inc.505, %for.end.474
  %360 = load i32, i32* %k, align 4
  %361 = load i32, i32* %fupper, align 4
  %cmp482 = icmp sle i32 %360, %361
  br i1 %cmp482, label %for.body.484, label %for.end.507

for.body.484:                                     ; preds = %for.cond.481
  %362 = load i32, i32* %k, align 4
  %idxprom485 = sext i32 %362 to i64
  %363 = load i32*, i32** %ftemp_d, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %363, i64 %idxprom485
  %364 = load i32, i32* %arrayidx486, align 4
  %365 = load i32, i32* %k, align 4
  %idxprom487 = sext i32 %365 to i64
  %366 = load i32*, i32** %flast_d, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %366, i64 %idxprom487
  store i32 %364, i32* %arrayidx488, align 4
  %367 = load i32, i32* %k, align 4
  %idxprom489 = sext i32 %367 to i64
  %368 = load i32*, i32** %ftemp_d, align 8
  %arrayidx490 = getelementptr inbounds i32, i32* %368, i64 %idxprom489
  store i32 -1, i32* %arrayidx490, align 4
  %369 = load i32, i32* %k, align 4
  %idxprom491 = sext i32 %369 to i64
  %370 = load i32*, i32** %flast_d, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %370, i64 %idxprom491
  %371 = load i32, i32* %arrayidx492, align 4
  %372 = load i32, i32* %d, align 4
  %idxprom493 = zext i32 %372 to i64
  %373 = load i32*, i32** %max_row, align 8
  %arrayidx494 = getelementptr inbounds i32, i32* %373, i64 %idxprom493
  %374 = load i32, i32* %arrayidx494, align 4
  %cmp495 = icmp sgt i32 %371, %374
  br i1 %cmp495, label %if.then.497, label %if.end.504

if.then.497:                                      ; preds = %for.body.484
  %375 = load i32, i32* %k, align 4
  %idxprom498 = sext i32 %375 to i64
  %376 = load i32*, i32** %flast_d, align 8
  %arrayidx499 = getelementptr inbounds i32, i32* %376, i64 %idxprom498
  %377 = load i32, i32* %arrayidx499, align 4
  %378 = load i32, i32* %d, align 4
  %idxprom500 = zext i32 %378 to i64
  %379 = load i32*, i32** %max_row, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %379, i64 %idxprom500
  store i32 %377, i32* %arrayidx501, align 4
  %380 = load i32, i32* %k, align 4
  %381 = load i32, i32* %d, align 4
  %idxprom502 = zext i32 %381 to i64
  %382 = load i32*, i32** %max_diag, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %382, i64 %idxprom502
  store i32 %380, i32* %arrayidx503, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.497, %for.body.484
  br label %for.inc.505

for.inc.505:                                      ; preds = %if.end.504
  %383 = load i32, i32* %k, align 4
  %inc506 = add nsw i32 %383, 1
  store i32 %inc506, i32* %k, align 4
  br label %for.cond.481

for.end.507:                                      ; preds = %for.cond.481
  store i32 0, i32* %Cost, align 4
  br label %for.cond.508

for.cond.508:                                     ; preds = %for.inc.532, %for.end.507
  %384 = load i32, i32* %Cost, align 4
  %385 = load i32, i32* %d, align 4
  %cmp509 = icmp ule i32 %384, %385
  br i1 %cmp509, label %for.body.511, label %for.end.534

for.body.511:                                     ; preds = %for.cond.508
  %386 = load i32, i32* %Cost, align 4
  %idxprom512 = zext i32 %386 to i64
  %387 = load i32*, i32** %min_row, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %387, i64 %idxprom512
  %388 = load i32, i32* %arrayidx513, align 4
  %389 = load i32, i32* %d, align 4
  %idxprom514 = zext i32 %389 to i64
  %390 = load i32*, i32** %max_row, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %390, i64 %idxprom514
  %391 = load i32, i32* %arrayidx515, align 4
  %cmp516 = icmp sle i32 %388, %391
  br i1 %cmp516, label %land.lhs.true.518, label %if.end.531

land.lhs.true.518:                                ; preds = %for.body.511
  %392 = load i32, i32* %max_d, align 4
  %393 = load i32, i32* %d, align 4
  %394 = load i32, i32* %Cost, align 4
  %add519 = add i32 %393, %394
  %cmp520 = icmp ugt i32 %392, %add519
  br i1 %cmp520, label %if.then.529, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %land.lhs.true.518
  %395 = load i32, i32* %max_d, align 4
  %396 = load i32, i32* %d, align 4
  %397 = load i32, i32* %Cost, align 4
  %add523 = add i32 %396, %397
  %cmp524 = icmp eq i32 %395, %add523
  br i1 %cmp524, label %land.lhs.true.526, label %if.end.531

land.lhs.true.526:                                ; preds = %lor.lhs.false.522
  %398 = load i32, i32* %forth, align 4
  %cmp527 = icmp slt i32 %398, 0
  br i1 %cmp527, label %if.then.529, label %if.end.531

if.then.529:                                      ; preds = %land.lhs.true.526, %land.lhs.true.518
  %399 = load i32, i32* %d, align 4
  %400 = load i32, i32* %Cost, align 4
  %add530 = add i32 %399, %400
  store i32 %add530, i32* %max_d, align 4
  %401 = load i32, i32* %Cost, align 4
  store i32 %401, i32* %back, align 4
  %402 = load i32, i32* %d, align 4
  store i32 %402, i32* %forth, align 4
  br label %for.end.534

if.end.531:                                       ; preds = %land.lhs.true.526, %lor.lhs.false.522, %for.body.511
  br label %for.inc.532

for.inc.532:                                      ; preds = %if.end.531
  %403 = load i32, i32* %Cost, align 4
  %inc533 = add i32 %403, 1
  store i32 %inc533, i32* %Cost, align 4
  br label %for.cond.508

for.end.534:                                      ; preds = %if.then.529, %for.cond.508
  %404 = load i32, i32* %flower, align 4
  %dec535 = add nsw i32 %404, -1
  store i32 %dec535, i32* %flower, align 4
  %405 = load i32, i32* %fupper, align 4
  %inc536 = add nsw i32 %405, 1
  store i32 %inc536, i32* %fupper, align 4
  %406 = load i32, i32* %d, align 4
  %inc537 = add i32 %406, 1
  store i32 %inc537, i32* %d, align 4
  br label %while.cond

while.end.538:                                    ; preds = %while.cond
  %407 = load i32, i32* %d, align 4
  %408 = load i32, i32* %MAX_D, align 4
  %cmp539 = icmp ugt i32 %407, %408
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %while.end.538
  %409 = load i32*, i32** %blast_d, align 8
  %410 = bitcast i32* %409 to i8*
  call void @free(i8* %410) #2
  %411 = load i32*, i32** %btemp_d, align 8
  %412 = bitcast i32* %411 to i8*
  call void @free(i8* %412) #2
  %413 = load i32*, i32** %flast_d, align 8
  %414 = bitcast i32* %413 to i8*
  call void @free(i8* %414) #2
  %415 = load i32*, i32** %ftemp_d, align 8
  %416 = bitcast i32* %415 to i8*
  call void @free(i8* %416) #2
  %417 = load i32*, i32** %min_row, align 8
  %418 = bitcast i32* %417 to i8*
  call void @free(i8* %418) #2
  %419 = load i32*, i32** %min_diag, align 8
  %420 = bitcast i32* %419 to i8*
  call void @free(i8* %420) #2
  %421 = load i32*, i32** %max_row, align 8
  %422 = bitcast i32* %421 to i8*
  call void @free(i8* %422) #2
  %423 = load i32*, i32** %max_diag, align 8
  %424 = bitcast i32* %423 to i8*
  call void @free(i8* %424) #2
  %425 = load i32, i32* %d, align 4
  store i32 %425, i32* %retval
  br label %return

if.end.542:                                       ; preds = %while.end.538
  %426 = load i32, i32* %m.addr, align 4
  %427 = load i32, i32* %back, align 4
  %idxprom543 = sext i32 %427 to i64
  %428 = load i32*, i32** %min_row, align 8
  %arrayidx544 = getelementptr inbounds i32, i32* %428, i64 %idxprom543
  %429 = load i32, i32* %arrayidx544, align 4
  %sub545 = sub nsw i32 %426, %429
  %430 = load i32, i32* %forth, align 4
  %idxprom546 = sext i32 %430 to i64
  %431 = load i32*, i32** %max_row, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %431, i64 %idxprom546
  %432 = load i32, i32* %arrayidx547, align 4
  %cmp548 = icmp sge i32 %sub545, %432
  br i1 %cmp548, label %if.then.550, label %if.else.567

if.then.550:                                      ; preds = %if.end.542
  %433 = load i32, i32* %back, align 4
  %idxprom551 = sext i32 %433 to i64
  %434 = load i32*, i32** %min_row, align 8
  %arrayidx552 = getelementptr inbounds i32, i32* %434, i64 %idxprom551
  %435 = load i32, i32* %arrayidx552, align 4
  store i32 %435, i32* %p1, align 4
  %436 = load i32, i32* %back, align 4
  %idxprom553 = sext i32 %436 to i64
  %437 = load i32*, i32** %min_row, align 8
  %arrayidx554 = getelementptr inbounds i32, i32* %437, i64 %idxprom553
  %438 = load i32, i32* %arrayidx554, align 4
  %439 = load i32, i32* %forth, align 4
  %idxprom555 = sext i32 %439 to i64
  %440 = load i32*, i32** %max_diag, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %440, i64 %idxprom555
  %441 = load i32, i32* %arrayidx556, align 4
  %add557 = add nsw i32 %438, %441
  %442 = load i32, i32* %F_ORIGIN, align 4
  %sub558 = sub nsw i32 %add557, %442
  store i32 %sub558, i32* %p2, align 4
  %443 = load i32, i32* %back, align 4
  %idxprom559 = sext i32 %443 to i64
  %444 = load i32*, i32** %min_row, align 8
  %arrayidx560 = getelementptr inbounds i32, i32* %444, i64 %idxprom559
  %445 = load i32, i32* %arrayidx560, align 4
  store i32 %445, i32* %q1, align 4
  %446 = load i32, i32* %back, align 4
  %idxprom561 = sext i32 %446 to i64
  %447 = load i32*, i32** %min_row, align 8
  %arrayidx562 = getelementptr inbounds i32, i32* %447, i64 %idxprom561
  %448 = load i32, i32* %arrayidx562, align 4
  %449 = load i32, i32* %back, align 4
  %idxprom563 = sext i32 %449 to i64
  %450 = load i32*, i32** %min_diag, align 8
  %arrayidx564 = getelementptr inbounds i32, i32* %450, i64 %idxprom563
  %451 = load i32, i32* %arrayidx564, align 4
  %add565 = add nsw i32 %448, %451
  %452 = load i32, i32* %B_ORIGIN, align 4
  %sub566 = sub nsw i32 %add565, %452
  store i32 %sub566, i32* %q2, align 4
  br label %if.end.584

if.else.567:                                      ; preds = %if.end.542
  %453 = load i32, i32* %forth, align 4
  %idxprom568 = sext i32 %453 to i64
  %454 = load i32*, i32** %max_row, align 8
  %arrayidx569 = getelementptr inbounds i32, i32* %454, i64 %idxprom568
  %455 = load i32, i32* %arrayidx569, align 4
  store i32 %455, i32* %p1, align 4
  %456 = load i32, i32* %forth, align 4
  %idxprom570 = sext i32 %456 to i64
  %457 = load i32*, i32** %max_row, align 8
  %arrayidx571 = getelementptr inbounds i32, i32* %457, i64 %idxprom570
  %458 = load i32, i32* %arrayidx571, align 4
  %459 = load i32, i32* %forth, align 4
  %idxprom572 = sext i32 %459 to i64
  %460 = load i32*, i32** %max_diag, align 8
  %arrayidx573 = getelementptr inbounds i32, i32* %460, i64 %idxprom572
  %461 = load i32, i32* %arrayidx573, align 4
  %add574 = add nsw i32 %458, %461
  %462 = load i32, i32* %F_ORIGIN, align 4
  %sub575 = sub nsw i32 %add574, %462
  store i32 %sub575, i32* %p2, align 4
  %463 = load i32, i32* %forth, align 4
  %idxprom576 = sext i32 %463 to i64
  %464 = load i32*, i32** %max_row, align 8
  %arrayidx577 = getelementptr inbounds i32, i32* %464, i64 %idxprom576
  %465 = load i32, i32* %arrayidx577, align 4
  store i32 %465, i32* %q1, align 4
  %466 = load i32, i32* %forth, align 4
  %idxprom578 = sext i32 %466 to i64
  %467 = load i32*, i32** %max_row, align 8
  %arrayidx579 = getelementptr inbounds i32, i32* %467, i64 %idxprom578
  %468 = load i32, i32* %arrayidx579, align 4
  %469 = load i32, i32* %back, align 4
  %idxprom580 = sext i32 %469 to i64
  %470 = load i32*, i32** %min_diag, align 8
  %arrayidx581 = getelementptr inbounds i32, i32* %470, i64 %idxprom580
  %471 = load i32, i32* %arrayidx581, align 4
  %add582 = add nsw i32 %468, %471
  %472 = load i32, i32* %B_ORIGIN, align 4
  %sub583 = sub nsw i32 %add582, %472
  store i32 %sub583, i32* %q2, align 4
  br label %if.end.584

if.end.584:                                       ; preds = %if.else.567, %if.then.550
  %473 = load i32, i32* %q1, align 4
  %cmp585 = icmp ugt i32 %473, 0
  br i1 %cmp585, label %if.then.587, label %if.end.593

if.then.587:                                      ; preds = %if.end.584
  %474 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %475 = load i32, i32* %offset2.addr, align 4
  %add588 = add i32 %475, 1
  %476 = load i32, i32* %offset1.addr, align 4
  %add589 = add i32 %476, 1
  %477 = load i32, i32* %offset2.addr, align 4
  %478 = load i32, i32* %p2, align 4
  %add590 = add i32 %477, %478
  %479 = load i32, i32* %offset1.addr, align 4
  %480 = load i32, i32* %p1, align 4
  %add591 = add i32 %479, %480
  %call592 = call %struct._exon_t* @new_exon(i32 %add588, i32 %add589, i32 %add590, i32 %add591)
  %481 = bitcast %struct._exon_t* %call592 to i8*
  call void @add_col_elt(%struct._collec_t* %474, i8* %481)
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.587, %if.end.584
  %482 = load i32, i32* %p1, align 4
  %483 = load i32, i32* %m.addr, align 4
  %cmp594 = icmp ult i32 %482, %483
  br i1 %cmp594, label %if.then.596, label %if.end.604

if.then.596:                                      ; preds = %if.end.593
  %484 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %485 = load i32, i32* %offset2.addr, align 4
  %486 = load i32, i32* %q2, align 4
  %add597 = add i32 %485, %486
  %add598 = add i32 %add597, 1
  %487 = load i32, i32* %offset1.addr, align 4
  %488 = load i32, i32* %q1, align 4
  %add599 = add i32 %487, %488
  %add600 = add i32 %add599, 1
  %489 = load i32, i32* %offset2.addr, align 4
  %490 = load i32, i32* %n.addr, align 4
  %add601 = add i32 %489, %490
  %491 = load i32, i32* %offset1.addr, align 4
  %492 = load i32, i32* %m.addr, align 4
  %add602 = add i32 %491, %492
  %call603 = call %struct._exon_t* @new_exon(i32 %add598, i32 %add600, i32 %add601, i32 %add602)
  %493 = bitcast %struct._exon_t* %call603 to i8*
  call void @add_col_elt(%struct._collec_t* %484, i8* %493)
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.596, %if.end.593
  %494 = load i32*, i32** %blast_d, align 8
  %495 = bitcast i32* %494 to i8*
  call void @free(i8* %495) #2
  %496 = load i32*, i32** %btemp_d, align 8
  %497 = bitcast i32* %496 to i8*
  call void @free(i8* %497) #2
  %498 = load i32*, i32** %flast_d, align 8
  %499 = bitcast i32* %498 to i8*
  call void @free(i8* %499) #2
  %500 = load i32*, i32** %ftemp_d, align 8
  %501 = bitcast i32* %500 to i8*
  call void @free(i8* %501) #2
  %502 = load i32*, i32** %min_row, align 8
  %503 = bitcast i32* %502 to i8*
  call void @free(i8* %503) #2
  %504 = load i32*, i32** %min_diag, align 8
  %505 = bitcast i32* %504 to i8*
  call void @free(i8* %505) #2
  %506 = load i32*, i32** %max_row, align 8
  %507 = bitcast i32* %506 to i8*
  call void @free(i8* %507) #2
  %508 = load i32*, i32** %max_diag, align 8
  %509 = bitcast i32* %508 to i8*
  call void @free(i8* %509) #2
  %510 = load i32, i32* %back, align 4
  %511 = load i32, i32* %forth, align 4
  %add605 = add nsw i32 %510, %511
  store i32 %add605, i32* %retval
  br label %return

return:                                           ; preds = %if.end.604, %if.then.541, %if.then.130, %if.then.69, %cond.end.49, %if.then.26, %if.then
  %512 = load i32, i32* %retval
  ret i32 %512
}

; Function Attrs: nounwind uwtable
define internal void @compact_exons(%struct._collec_t* %eCol, i32 %W) #0 {
entry:
  %eCol.addr = alloca %struct._collec_t*, align 8
  %W.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cur = alloca %struct._exon_t*, align 8
  %next = alloca %struct._exon_t*, align 8
  %diff = alloca i32, align 4
  %cur73 = alloca %struct._exon_t*, align 8
  %next79 = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store i32 %W, i32* %W.addr, align 4
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %4 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %cur, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %7 to i64
  %8 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e2 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %exon3 = bitcast %union._collec_elt_t* %e2 to %struct._exon_t***
  %9 = load %struct._exon_t**, %struct._exon_t*** %exon3, align 8
  %arrayidx4 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %9, i64 %idxprom1
  %10 = load %struct._exon_t*, %struct._exon_t** %arrayidx4, align 8
  store %struct._exon_t* %10, %struct._exon_t** %next, align 8
  %11 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %11, i32 0, i32 1
  %12 = load i32, i32* %from2, align 4
  %13 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from25 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 1
  %14 = load i32, i32* %from25, align 4
  %sub6 = sub i32 %12, %14
  store i32 %sub6, i32* %diff, align 4
  %15 = load i32, i32* %diff, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %cmp7 = icmp ule i32 %15, %16
  br i1 %cmp7, label %if.then, label %if.else.67

if.then:                                          ; preds = %while.body
  %17 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb8 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %17, i32 0, i32 1
  %18 = load i32, i32* %nb8, align 4
  %sub9 = sub i32 %18, 1
  store i32 %sub9, i32* %nb8, align 4
  %19 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %19, i32 0, i32 3
  %20 = load i32, i32* %to2, align 4
  %21 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to210 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %21, i32 0, i32 3
  %22 = load i32, i32* %to210, align 4
  %cmp11 = icmp ugt i32 %20, %22
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %23 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %24 = bitcast %struct._exon_t* %23 to i8*
  call void @free(i8* %24) #2
  %25 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e13 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %25, i32 0, i32 0
  %exon14 = bitcast %union._collec_elt_t* %e13 to %struct._exon_t***
  %26 = load %struct._exon_t**, %struct._exon_t*** %exon14, align 8
  %27 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %26, i64 %idx.ext
  %28 = bitcast %struct._exon_t** %add.ptr to i8*
  %29 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e15 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %29, i32 0, i32 0
  %exon16 = bitcast %union._collec_elt_t* %e15 to %struct._exon_t***
  %30 = load %struct._exon_t**, %struct._exon_t*** %exon16, align 8
  %31 = load i32, i32* %i, align 4
  %idx.ext17 = zext i32 %31 to i64
  %add.ptr18 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %30, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %add.ptr18, i64 1
  %32 = bitcast %struct._exon_t** %add.ptr19 to i8*
  %33 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb20 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %33, i32 0, i32 1
  %34 = load i32, i32* %nb20, align 4
  %35 = load i32, i32* %i, align 4
  %sub21 = sub i32 %34, %35
  %conv = zext i32 %sub21 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %28, i8* %32, i64 %mul, i32 8, i1 false)
  %36 = load i32, i32* %i, align 4
  %37 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb22 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %37, i32 0, i32 1
  %38 = load i32, i32* %nb22, align 4
  %cmp23 = icmp ult i32 %36, %38
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.12
  %39 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %39 to i64
  %40 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e27 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %40, i32 0, i32 0
  %exon28 = bitcast %union._collec_elt_t* %e27 to %struct._exon_t***
  %41 = load %struct._exon_t**, %struct._exon_t*** %exon28, align 8
  %arrayidx29 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %41, i64 %idxprom26
  %42 = load %struct._exon_t*, %struct._exon_t** %arrayidx29, align 8
  store %struct._exon_t* %42, %struct._exon_t** %next, align 8
  %43 = load i32, i32* %diff, align 4
  %44 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 2
  %45 = load i32, i32* %to1, align 4
  %add = add i32 %45, %43
  store i32 %add, i32* %to1, align 4
  %46 = load i32, i32* %diff, align 4
  %47 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to230 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %47, i32 0, i32 3
  %48 = load i32, i32* %to230, align 4
  %add31 = add i32 %48, %46
  store i32 %add31, i32* %to230, align 4
  %49 = load i32, i32* %diff, align 4
  %50 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 0
  %51 = load i32, i32* %from1, align 4
  %sub32 = sub i32 %51, %49
  store i32 %sub32, i32* %from1, align 4
  %52 = load i32, i32* %diff, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from233 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 1
  %54 = load i32, i32* %from233, align 4
  %sub34 = sub i32 %54, %52
  store i32 %sub34, i32* %from233, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.12
  br label %if.end.66

if.else:                                          ; preds = %if.then
  %55 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %56 = bitcast %struct._exon_t* %55 to i8*
  call void @free(i8* %56) #2
  %57 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %57, i32 0, i32 0
  %exon36 = bitcast %union._collec_elt_t* %e35 to %struct._exon_t***
  %58 = load %struct._exon_t**, %struct._exon_t*** %exon36, align 8
  %59 = load i32, i32* %i, align 4
  %idx.ext37 = zext i32 %59 to i64
  %add.ptr38 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %58, i64 %idx.ext37
  %add.ptr39 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %add.ptr38, i64 -1
  %60 = bitcast %struct._exon_t** %add.ptr39 to i8*
  %61 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e40 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %61, i32 0, i32 0
  %exon41 = bitcast %union._collec_elt_t* %e40 to %struct._exon_t***
  %62 = load %struct._exon_t**, %struct._exon_t*** %exon41, align 8
  %63 = load i32, i32* %i, align 4
  %idx.ext42 = zext i32 %63 to i64
  %add.ptr43 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %62, i64 %idx.ext42
  %64 = bitcast %struct._exon_t** %add.ptr43 to i8*
  %65 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb44 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %65, i32 0, i32 1
  %66 = load i32, i32* %nb44, align 4
  %67 = load i32, i32* %i, align 4
  %sub45 = sub i32 %66, %67
  %add46 = add i32 %sub45, 1
  %conv47 = zext i32 %add46 to i64
  %mul48 = mul i64 %conv47, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %60, i8* %64, i64 %mul48, i32 8, i1 false)
  %68 = load i32, i32* %i, align 4
  %cmp49 = icmp ugt i32 %68, 1
  br i1 %cmp49, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %if.else
  %69 = load i32, i32* %i, align 4
  %sub52 = sub i32 %69, 2
  %idxprom53 = zext i32 %sub52 to i64
  %70 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e54 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %70, i32 0, i32 0
  %exon55 = bitcast %union._collec_elt_t* %e54 to %struct._exon_t***
  %71 = load %struct._exon_t**, %struct._exon_t*** %exon55, align 8
  %arrayidx56 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %71, i64 %idxprom53
  %72 = load %struct._exon_t*, %struct._exon_t** %arrayidx56, align 8
  store %struct._exon_t* %72, %struct._exon_t** %cur, align 8
  %73 = load i32, i32* %diff, align 4
  %74 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to157 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %74, i32 0, i32 2
  %75 = load i32, i32* %to157, align 4
  %add58 = add i32 %75, %73
  store i32 %add58, i32* %to157, align 4
  %76 = load i32, i32* %diff, align 4
  %77 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to259 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %77, i32 0, i32 3
  %78 = load i32, i32* %to259, align 4
  %add60 = add i32 %78, %76
  store i32 %add60, i32* %to259, align 4
  %79 = load i32, i32* %diff, align 4
  %80 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from161 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %80, i32 0, i32 0
  %81 = load i32, i32* %from161, align 4
  %sub62 = sub i32 %81, %79
  store i32 %sub62, i32* %from161, align 4
  %82 = load i32, i32* %diff, align 4
  %83 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from263 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %83, i32 0, i32 1
  %84 = load i32, i32* %from263, align 4
  %sub64 = sub i32 %84, %82
  store i32 %sub64, i32* %from263, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.51, %if.else
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end
  br label %if.end.69

if.else.67:                                       ; preds = %while.body
  %85 = load i32, i32* %i, align 4
  %add68 = add i32 %85, 1
  store i32 %add68, i32* %i, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.end.66
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %86 = load i32, i32* %i, align 4
  %87 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb70 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %87, i32 0, i32 1
  %88 = load i32, i32* %nb70, align 4
  %cmp71 = icmp ult i32 %86, %88
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %i, align 4
  %sub74 = sub i32 %89, 1
  %idxprom75 = zext i32 %sub74 to i64
  %90 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e76 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %90, i32 0, i32 0
  %exon77 = bitcast %union._collec_elt_t* %e76 to %struct._exon_t***
  %91 = load %struct._exon_t**, %struct._exon_t*** %exon77, align 8
  %arrayidx78 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %91, i64 %idxprom75
  %92 = load %struct._exon_t*, %struct._exon_t** %arrayidx78, align 8
  store %struct._exon_t* %92, %struct._exon_t** %cur73, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %93 to i64
  %94 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e81 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %94, i32 0, i32 0
  %exon82 = bitcast %union._collec_elt_t* %e81 to %struct._exon_t***
  %95 = load %struct._exon_t**, %struct._exon_t*** %exon82, align 8
  %arrayidx83 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %95, i64 %idxprom80
  %96 = load %struct._exon_t*, %struct._exon_t** %arrayidx83, align 8
  store %struct._exon_t* %96, %struct._exon_t** %next79, align 8
  %97 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %from184 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %97, i32 0, i32 0
  %98 = load i32, i32* %from184, align 4
  %99 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to185 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %99, i32 0, i32 2
  %100 = load i32, i32* %to185, align 4
  %add86 = add i32 %100, 1
  %add87 = add i32 %add86, 30
  %cmp88 = icmp ult i32 %98, %add87
  br i1 %cmp88, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %101 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %from290 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 1
  %102 = load i32, i32* %from290, align 4
  %103 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to291 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %103, i32 0, i32 3
  %104 = load i32, i32* %to291, align 4
  %add92 = add i32 %104, 1
  %105 = load i32, i32* %W.addr, align 4
  %add93 = add i32 %add92, %105
  %cmp94 = icmp ule i32 %102, %add93
  br i1 %cmp94, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %106 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to196 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 2
  %107 = load i32, i32* %to196, align 4
  %108 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %from197 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %108, i32 0, i32 0
  %109 = load i32, i32* %from197, align 4
  %110 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to298 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %110, i32 0, i32 3
  %111 = load i32, i32* %to298, align 4
  %112 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %from299 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %112, i32 0, i32 1
  %113 = load i32, i32* %from299, align 4
  %call = call i32 @about_same_gap_p(i32 %107, i32 %109, i32 %111, i32 %113)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.100, label %if.end.120

if.then.100:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %114 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %to1101 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %114, i32 0, i32 2
  %115 = load i32, i32* %to1101, align 4
  %116 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to1102 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %116, i32 0, i32 2
  store i32 %115, i32* %to1102, align 4
  %117 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %to2103 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 3
  %118 = load i32, i32* %to2103, align 4
  %119 = load %struct._exon_t*, %struct._exon_t** %cur73, align 8
  %to2104 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %119, i32 0, i32 3
  store i32 %118, i32* %to2104, align 4
  %120 = load %struct._exon_t*, %struct._exon_t** %next79, align 8
  %121 = bitcast %struct._exon_t* %120 to i8*
  call void @free(i8* %121) #2
  %122 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb105 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %122, i32 0, i32 1
  %123 = load i32, i32* %nb105, align 4
  %sub106 = sub i32 %123, 1
  store i32 %sub106, i32* %nb105, align 4
  %124 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e107 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %124, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e107 to i8***
  %125 = load i8**, i8*** %elt, align 8
  %126 = load i32, i32* %i, align 4
  %idx.ext108 = zext i32 %126 to i64
  %add.ptr109 = getelementptr inbounds i8*, i8** %125, i64 %idx.ext108
  %127 = bitcast i8** %add.ptr109 to i8*
  %128 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e110 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %128, i32 0, i32 0
  %elt111 = bitcast %union._collec_elt_t* %e110 to i8***
  %129 = load i8**, i8*** %elt111, align 8
  %130 = load i32, i32* %i, align 4
  %idx.ext112 = zext i32 %130 to i64
  %add.ptr113 = getelementptr inbounds i8*, i8** %129, i64 %idx.ext112
  %add.ptr114 = getelementptr inbounds i8*, i8** %add.ptr113, i64 1
  %131 = bitcast i8** %add.ptr114 to i8*
  %132 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb115 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %132, i32 0, i32 1
  %133 = load i32, i32* %nb115, align 4
  %134 = load i32, i32* %i, align 4
  %sub116 = sub i32 %133, %134
  %conv117 = zext i32 %sub116 to i64
  %mul118 = mul i64 %conv117, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %127, i8* %131, i64 %mul118, i32 8, i1 false)
  %135 = load i32, i32* %i, align 4
  %sub119 = sub i32 %135, 1
  store i32 %sub119, i32* %i, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.100, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %136 = load i32, i32* %i, align 4
  %inc = add i32 %136, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @slide_intron(%struct._result_t* %r, i8* %seq1, i8* %seq2) #0 {
entry:
  %r.addr = alloca %struct._result_t*, align 8
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %cur = alloca %struct._exon_t*, align 8
  %next = alloca %struct._exon_t*, align 8
  %splS = alloca %struct._splice_score_t, align 4
  %cur48 = alloca %struct._exon_t*, align 8
  %next55 = alloca %struct._exon_t*, align 8
  %splS61 = alloca %struct._splice_score_t*, align 8
  %nb62 = alloca i32, align 4
  %j = alloca i32, align 4
  %nbP = alloca i32, align 4
  %fwd = alloca i32, align 4
  %rev = alloca i32, align 4
  %cur192 = alloca %struct._exon_t*, align 8
  %next199 = alloca %struct._exon_t*, align 8
  %max = alloca %struct._splice_score_t, align 4
  %cs = alloca %struct._splice_score_t, align 4
  %nb205 = alloca i32, align 4
  %j206 = alloca i32, align 4
  %cur303 = alloca %struct._exon_t*, align 8
  %next310 = alloca %struct._exon_t*, align 8
  %max316 = alloca %struct._splice_score_t, align 4
  %cs317 = alloca %struct._splice_score_t, align 4
  %nb318 = alloca i32, align 4
  %j319 = alloca i32, align 4
  store %struct._result_t* %r, %struct._result_t** %r.addr, align 8
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol = getelementptr inbounds %struct._result_t, %struct._result_t* %1, i32 0, i32 1
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %4 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol1 = getelementptr inbounds %struct._result_t, %struct._result_t* %4, i32 0, i32 1
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol1, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %cur, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol3 = getelementptr inbounds %struct._result_t, %struct._result_t* %8, i32 0, i32 1
  %e4 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol3, i32 0, i32 0
  %exon5 = bitcast %union._collec_elt_t* %e4 to %struct._exon_t***
  %9 = load %struct._exon_t**, %struct._exon_t*** %exon5, align 8
  %arrayidx6 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %9, i64 %idxprom2
  %10 = load %struct._exon_t*, %struct._exon_t** %arrayidx6, align 8
  store %struct._exon_t* %10, %struct._exon_t** %next, align 8
  %11 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %type = getelementptr inbounds %struct._exon_t, %struct._exon_t* %11, i32 0, i32 6
  %bf.load = load i64, i64* %type, align 4
  %bf.clear = and i64 %bf.load, 72057594037927935
  %bf.set = or i64 %bf.clear, -72057594037927936
  store i64 %bf.set, i64* %type, align 4
  %12 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %direction = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 6
  %bf.load7 = load i64, i64* %direction, align 4
  %bf.clear8 = and i64 %bf.load7, -12884901889
  store i64 %bf.clear8, i64* %direction, align 4
  %13 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %splScore = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 6
  %bf.load9 = load i64, i64* %splScore, align 4
  %bf.clear10 = and i64 %bf.load9, -72057576858058753
  store i64 %bf.clear10, i64* %splScore, align 4
  %14 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 1
  %15 = load i32, i32* %from2, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 3
  %17 = load i32, i32* %to2, align 4
  %sub11 = sub i32 %15, %17
  %cmp12 = icmp ne i32 %sub11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %18 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 2
  %19 = load i32, i32* %to1, align 4
  %to113 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 0
  store i32 %19, i32* %to113, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to214 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 3
  %21 = load i32, i32* %to214, align 4
  %to215 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 1
  store i32 %21, i32* %to215, align 4
  %22 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 0
  %23 = load i32, i32* %from1, align 4
  %nFrom1 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 2
  store i32 %23, i32* %nFrom1, align 4
  %24 = load i8*, i8** %seq1.addr, align 8
  %25 = load i8*, i8** %seq2.addr, align 8
  %call = call i32 @perfect_spl_p(i8* %24, i8* %25, %struct._splice_score_t* %splS)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.16, label %if.end.42

if.then.16:                                       ; preds = %if.end
  %direction17 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 6
  %26 = load i32, i32* %direction17, align 4
  %27 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction18 = getelementptr inbounds %struct._result_t, %struct._result_t* %27, i32 0, i32 4
  %28 = load i32, i32* %direction18, align 4
  %add = add nsw i32 %28, %26
  store i32 %add, i32* %direction18, align 4
  %direction19 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 6
  %29 = load i32, i32* %direction19, align 4
  %30 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %direction20 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %30, i32 0, i32 6
  %31 = zext i32 %29 to i64
  %bf.load21 = load i64, i64* %direction20, align 4
  %bf.value = and i64 %31, 3
  %bf.shl = shl i64 %bf.value, 32
  %bf.clear22 = and i64 %bf.load21, -12884901889
  %bf.set23 = or i64 %bf.clear22, %bf.shl
  store i64 %bf.set23, i64* %direction20, align 4
  %bf.result.shl = shl i64 %bf.value, 62
  %bf.result.ashr = ashr i64 %bf.result.shl, 62
  %bf.result.cast = trunc i64 %bf.result.ashr to i32
  %type24 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %splS, i32 0, i32 3
  %32 = load i32, i32* %type24, align 4
  %33 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %type25 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %33, i32 0, i32 6
  %34 = zext i32 %32 to i64
  %bf.load26 = load i64, i64* %type25, align 4
  %bf.value27 = and i64 %34, 255
  %bf.shl28 = shl i64 %bf.value27, 56
  %bf.clear29 = and i64 %bf.load26, 72057594037927935
  %bf.set30 = or i64 %bf.clear29, %bf.shl28
  store i64 %bf.set30, i64* %type25, align 4
  %bf.result.shl31 = shl i64 %bf.value27, 56
  %bf.result.ashr32 = ashr i64 %bf.result.shl31, 56
  %bf.result.cast33 = trunc i64 %bf.result.ashr32 to i32
  %35 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %mul = mul i32 %35, 2
  %add34 = add i32 4, %mul
  %36 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %splScore35 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %36, i32 0, i32 6
  %37 = zext i32 %add34 to i64
  %bf.load36 = load i64, i64* %splScore35, align 4
  %bf.value37 = and i64 %37, 4194303
  %bf.shl38 = shl i64 %bf.value37, 34
  %bf.clear39 = and i64 %bf.load36, -72057576858058753
  %bf.set40 = or i64 %bf.clear39, %bf.shl38
  store i64 %bf.set40, i64* %splScore35, align 4
  %bf.result.cast41 = trunc i64 %bf.value37 to i32
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.16, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.42, %if.then
  %38 = load i32, i32* %i, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.179, %for.end
  %39 = load i32, i32* %i, align 4
  %40 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol44 = getelementptr inbounds %struct._result_t, %struct._result_t* %40, i32 0, i32 1
  %nb45 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol44, i32 0, i32 1
  %41 = load i32, i32* %nb45, align 4
  %cmp46 = icmp ult i32 %39, %41
  br i1 %cmp46, label %for.body.47, label %for.end.181

for.body.47:                                      ; preds = %for.cond.43
  %42 = load i32, i32* %i, align 4
  %sub49 = sub i32 %42, 1
  %idxprom50 = zext i32 %sub49 to i64
  %43 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol51 = getelementptr inbounds %struct._result_t, %struct._result_t* %43, i32 0, i32 1
  %e52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol51, i32 0, i32 0
  %exon53 = bitcast %union._collec_elt_t* %e52 to %struct._exon_t***
  %44 = load %struct._exon_t**, %struct._exon_t*** %exon53, align 8
  %arrayidx54 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %44, i64 %idxprom50
  %45 = load %struct._exon_t*, %struct._exon_t** %arrayidx54, align 8
  store %struct._exon_t* %45, %struct._exon_t** %cur48, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %46 to i64
  %47 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol57 = getelementptr inbounds %struct._result_t, %struct._result_t* %47, i32 0, i32 1
  %e58 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol57, i32 0, i32 0
  %exon59 = bitcast %union._collec_elt_t* %e58 to %struct._exon_t***
  %48 = load %struct._exon_t**, %struct._exon_t*** %exon59, align 8
  %arrayidx60 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %48, i64 %idxprom56
  %49 = load %struct._exon_t*, %struct._exon_t** %arrayidx60, align 8
  store %struct._exon_t* %49, %struct._exon_t** %next55, align 8
  store i32 0, i32* %nbP, align 4
  %50 = load %struct._exon_t*, %struct._exon_t** %next55, align 8
  %from263 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 1
  %51 = load i32, i32* %from263, align 4
  %52 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to264 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %52, i32 0, i32 3
  %53 = load i32, i32* %to264, align 4
  %cmp65 = icmp ugt i32 %51, %53
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.47
  br label %for.inc.179

if.end.67:                                        ; preds = %for.body.47
  %54 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to268 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %54, i32 0, i32 3
  %55 = load i32, i32* %to268, align 4
  %56 = load %struct._exon_t*, %struct._exon_t** %next55, align 8
  %from269 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %56, i32 0, i32 1
  %57 = load i32, i32* %from269, align 4
  %sub70 = sub i32 %55, %57
  %add71 = add i32 %sub70, 2
  store i32 %add71, i32* %nb62, align 4
  %58 = load i32, i32* %nb62, align 4
  %conv = zext i32 %58 to i64
  %mul72 = mul i64 %conv, 28
  %call73 = call i8* @xmalloc(i64 %mul72)
  %59 = bitcast i8* %call73 to %struct._splice_score_t*
  store %struct._splice_score_t* %59, %struct._splice_score_t** %splS61, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.105, %if.end.67
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %nb62, align 4
  %cmp75 = icmp ult i32 %60, %61
  br i1 %cmp75, label %for.body.77, label %for.end.107

for.body.77:                                      ; preds = %for.cond.74
  %62 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to178 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %62, i32 0, i32 2
  %63 = load i32, i32* %to178, align 4
  %64 = load i32, i32* %nb62, align 4
  %sub79 = sub i32 %63, %64
  %65 = load i32, i32* %j, align 4
  %add80 = add i32 %sub79, %65
  %add81 = add i32 %add80, 1
  %66 = load i32, i32* %j, align 4
  %idxprom82 = zext i32 %66 to i64
  %67 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx83 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %67, i64 %idxprom82
  %to184 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx83, i32 0, i32 0
  store i32 %add81, i32* %to184, align 4
  %68 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to285 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %68, i32 0, i32 3
  %69 = load i32, i32* %to285, align 4
  %70 = load i32, i32* %nb62, align 4
  %sub86 = sub i32 %69, %70
  %71 = load i32, i32* %j, align 4
  %add87 = add i32 %sub86, %71
  %add88 = add i32 %add87, 1
  %72 = load i32, i32* %j, align 4
  %idxprom89 = zext i32 %72 to i64
  %73 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx90 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %73, i64 %idxprom89
  %to291 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx90, i32 0, i32 1
  store i32 %add88, i32* %to291, align 4
  %74 = load %struct._exon_t*, %struct._exon_t** %next55, align 8
  %from192 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %74, i32 0, i32 0
  %75 = load i32, i32* %from192, align 4
  %76 = load i32, i32* %j, align 4
  %add93 = add i32 %75, %76
  %77 = load i32, i32* %j, align 4
  %idxprom94 = zext i32 %77 to i64
  %78 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx95 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %78, i64 %idxprom94
  %nFrom196 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx95, i32 0, i32 2
  store i32 %add93, i32* %nFrom196, align 4
  %79 = load i8*, i8** %seq1.addr, align 8
  %80 = load i8*, i8** %seq2.addr, align 8
  %81 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %82 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %82 to i64
  %add.ptr = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %81, i64 %idx.ext
  %call97 = call i32 @perfect_spl_p(i8* %79, i8* %80, %struct._splice_score_t* %add.ptr)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %for.body.77
  %83 = load i32, i32* %nbP, align 4
  %add100 = add i32 %83, 1
  store i32 %add100, i32* %nbP, align 4
  br label %if.end.104

if.else:                                          ; preds = %for.body.77
  %84 = load i32, i32* %j, align 4
  %idxprom101 = zext i32 %84 to i64
  %85 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx102 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %85, i64 %idxprom101
  %direction103 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx102, i32 0, i32 6
  store i32 0, i32* %direction103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else, %if.then.99
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %86 = load i32, i32* %j, align 4
  %inc106 = add i32 %86, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.74

for.end.107:                                      ; preds = %for.cond.74
  %87 = load i32, i32* %nbP, align 4
  %cmp108 = icmp eq i32 %87, 1
  br i1 %cmp108, label %if.then.110, label %if.end.178

if.then.110:                                      ; preds = %for.end.107
  store i32 0, i32* %j, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.175, %if.then.110
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %nb62, align 4
  %cmp112 = icmp ult i32 %88, %89
  br i1 %cmp112, label %for.body.114, label %for.end.177

for.body.114:                                     ; preds = %for.cond.111
  %90 = load i32, i32* %j, align 4
  %idxprom115 = zext i32 %90 to i64
  %91 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx116 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %91, i64 %idxprom115
  %direction117 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx116, i32 0, i32 6
  %92 = load i32, i32* %direction117, align 4
  %cmp118 = icmp ne i32 %92, 0
  br i1 %cmp118, label %if.then.120, label %if.end.174

if.then.120:                                      ; preds = %for.body.114
  %93 = load i32, i32* %j, align 4
  %idxprom121 = zext i32 %93 to i64
  %94 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx122 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %94, i64 %idxprom121
  %direction123 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx122, i32 0, i32 6
  %95 = load i32, i32* %direction123, align 4
  %96 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction124 = getelementptr inbounds %struct._result_t, %struct._result_t* %96, i32 0, i32 4
  %97 = load i32, i32* %direction124, align 4
  %add125 = add nsw i32 %97, %95
  store i32 %add125, i32* %direction124, align 4
  %98 = load i32, i32* %j, align 4
  %idxprom126 = zext i32 %98 to i64
  %99 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx127 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %99, i64 %idxprom126
  %direction128 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx127, i32 0, i32 6
  %100 = load i32, i32* %direction128, align 4
  %101 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %direction129 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 6
  %102 = zext i32 %100 to i64
  %bf.load130 = load i64, i64* %direction129, align 4
  %bf.value131 = and i64 %102, 3
  %bf.shl132 = shl i64 %bf.value131, 32
  %bf.clear133 = and i64 %bf.load130, -12884901889
  %bf.set134 = or i64 %bf.clear133, %bf.shl132
  store i64 %bf.set134, i64* %direction129, align 4
  %bf.result.shl135 = shl i64 %bf.value131, 62
  %bf.result.ashr136 = ashr i64 %bf.result.shl135, 62
  %bf.result.cast137 = trunc i64 %bf.result.ashr136 to i32
  %103 = load i32, i32* %j, align 4
  %idxprom138 = zext i32 %103 to i64
  %104 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx139 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %104, i64 %idxprom138
  %type140 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx139, i32 0, i32 3
  %105 = load i32, i32* %type140, align 4
  %106 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %type141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 6
  %107 = zext i32 %105 to i64
  %bf.load142 = load i64, i64* %type141, align 4
  %bf.value143 = and i64 %107, 255
  %bf.shl144 = shl i64 %bf.value143, 56
  %bf.clear145 = and i64 %bf.load142, 72057594037927935
  %bf.set146 = or i64 %bf.clear145, %bf.shl144
  store i64 %bf.set146, i64* %type141, align 4
  %bf.result.shl147 = shl i64 %bf.value143, 56
  %bf.result.ashr148 = ashr i64 %bf.result.shl147, 56
  %bf.result.cast149 = trunc i64 %bf.result.ashr148 to i32
  %108 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %mul150 = mul i32 %108, 2
  %add151 = add i32 4, %mul150
  %109 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %splScore152 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %109, i32 0, i32 6
  %110 = zext i32 %add151 to i64
  %bf.load153 = load i64, i64* %splScore152, align 4
  %bf.value154 = and i64 %110, 4194303
  %bf.shl155 = shl i64 %bf.value154, 34
  %bf.clear156 = and i64 %bf.load153, -72057576858058753
  %bf.set157 = or i64 %bf.clear156, %bf.shl155
  store i64 %bf.set157, i64* %splScore152, align 4
  %bf.result.cast158 = trunc i64 %bf.value154 to i32
  %111 = load i32, i32* %j, align 4
  %idxprom159 = zext i32 %111 to i64
  %112 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx160 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %112, i64 %idxprom159
  %to1161 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx160, i32 0, i32 0
  %113 = load i32, i32* %to1161, align 4
  %114 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to1162 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %114, i32 0, i32 2
  store i32 %113, i32* %to1162, align 4
  %115 = load i32, i32* %j, align 4
  %idxprom163 = zext i32 %115 to i64
  %116 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx164 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %116, i64 %idxprom163
  %to2165 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx164, i32 0, i32 1
  %117 = load i32, i32* %to2165, align 4
  %118 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to2166 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %118, i32 0, i32 3
  store i32 %117, i32* %to2166, align 4
  %119 = load %struct._exon_t*, %struct._exon_t** %cur48, align 8
  %to2167 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %119, i32 0, i32 3
  %120 = load i32, i32* %to2167, align 4
  %add168 = add i32 %120, 1
  %121 = load %struct._exon_t*, %struct._exon_t** %next55, align 8
  %from2169 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %121, i32 0, i32 1
  store i32 %add168, i32* %from2169, align 4
  %122 = load i32, i32* %j, align 4
  %idxprom170 = zext i32 %122 to i64
  %123 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %arrayidx171 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %123, i64 %idxprom170
  %nFrom1172 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %arrayidx171, i32 0, i32 2
  %124 = load i32, i32* %nFrom1172, align 4
  %125 = load %struct._exon_t*, %struct._exon_t** %next55, align 8
  %from1173 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %125, i32 0, i32 0
  store i32 %124, i32* %from1173, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.120, %for.body.114
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.174
  %126 = load i32, i32* %j, align 4
  %inc176 = add i32 %126, 1
  store i32 %inc176, i32* %j, align 4
  br label %for.cond.111

for.end.177:                                      ; preds = %for.cond.111
  br label %if.end.178

if.end.178:                                       ; preds = %for.end.177, %for.end.107
  %127 = load %struct._splice_score_t*, %struct._splice_score_t** %splS61, align 8
  %128 = bitcast %struct._splice_score_t* %127 to i8*
  call void @free(i8* %128) #2
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178, %if.then.66
  %129 = load i32, i32* %i, align 4
  %inc180 = add i32 %129, 1
  store i32 %inc180, i32* %i, align 4
  br label %for.cond.43

for.end.181:                                      ; preds = %for.cond.43
  %130 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction182 = getelementptr inbounds %struct._result_t, %struct._result_t* %130, i32 0, i32 4
  %131 = load i32, i32* %direction182, align 4
  %cmp183 = icmp eq i32 %131, 0
  br i1 %cmp183, label %if.then.185, label %if.end.296

if.then.185:                                      ; preds = %for.end.181
  store i32 0, i32* %fwd, align 4
  store i32 0, i32* %rev, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.286, %if.then.185
  %132 = load i32, i32* %i, align 4
  %133 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol187 = getelementptr inbounds %struct._result_t, %struct._result_t* %133, i32 0, i32 1
  %nb188 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol187, i32 0, i32 1
  %134 = load i32, i32* %nb188, align 4
  %cmp189 = icmp ult i32 %132, %134
  br i1 %cmp189, label %for.body.191, label %for.end.288

for.body.191:                                     ; preds = %for.cond.186
  %135 = load i32, i32* %i, align 4
  %sub193 = sub i32 %135, 1
  %idxprom194 = zext i32 %sub193 to i64
  %136 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol195 = getelementptr inbounds %struct._result_t, %struct._result_t* %136, i32 0, i32 1
  %e196 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol195, i32 0, i32 0
  %exon197 = bitcast %union._collec_elt_t* %e196 to %struct._exon_t***
  %137 = load %struct._exon_t**, %struct._exon_t*** %exon197, align 8
  %arrayidx198 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %137, i64 %idxprom194
  %138 = load %struct._exon_t*, %struct._exon_t** %arrayidx198, align 8
  store %struct._exon_t* %138, %struct._exon_t** %cur192, align 8
  %139 = load i32, i32* %i, align 4
  %idxprom200 = zext i32 %139 to i64
  %140 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol201 = getelementptr inbounds %struct._result_t, %struct._result_t* %140, i32 0, i32 1
  %e202 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol201, i32 0, i32 0
  %exon203 = bitcast %union._collec_elt_t* %e202 to %struct._exon_t***
  %141 = load %struct._exon_t**, %struct._exon_t*** %exon203, align 8
  %arrayidx204 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %141, i64 %idxprom200
  %142 = load %struct._exon_t*, %struct._exon_t** %arrayidx204, align 8
  store %struct._exon_t* %142, %struct._exon_t** %next199, align 8
  %143 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %to2207 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %143, i32 0, i32 3
  %144 = load i32, i32* %to2207, align 4
  %add208 = add i32 %144, 1
  %145 = load %struct._exon_t*, %struct._exon_t** %next199, align 8
  %from2209 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %145, i32 0, i32 1
  %146 = load i32, i32* %from2209, align 4
  %cmp210 = icmp ult i32 %add208, %146
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %for.body.191
  br label %for.inc.286

if.end.213:                                       ; preds = %for.body.191
  %147 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %direction214 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %147, i32 0, i32 6
  %bf.load215 = load i64, i64* %direction214, align 4
  %bf.shl216 = shl i64 %bf.load215, 30
  %bf.ashr = ashr i64 %bf.shl216, 62
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp217 = icmp sgt i32 %bf.cast, 0
  br i1 %cmp217, label %if.then.219, label %if.end.225

if.then.219:                                      ; preds = %if.end.213
  %148 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %splScore220 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %148, i32 0, i32 6
  %bf.load221 = load i64, i64* %splScore220, align 4
  %bf.lshr = lshr i64 %bf.load221, 34
  %bf.clear222 = and i64 %bf.lshr, 4194303
  %bf.cast223 = trunc i64 %bf.clear222 to i32
  %149 = load i32, i32* %fwd, align 4
  %add224 = add i32 %149, %bf.cast223
  store i32 %add224, i32* %fwd, align 4
  br label %for.inc.286

if.end.225:                                       ; preds = %if.end.213
  %150 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %direction226 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %150, i32 0, i32 6
  %bf.load227 = load i64, i64* %direction226, align 4
  %bf.shl228 = shl i64 %bf.load227, 30
  %bf.ashr229 = ashr i64 %bf.shl228, 62
  %bf.cast230 = trunc i64 %bf.ashr229 to i32
  %cmp231 = icmp slt i32 %bf.cast230, 0
  br i1 %cmp231, label %if.then.233, label %if.end.240

if.then.233:                                      ; preds = %if.end.225
  %151 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %splScore234 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %151, i32 0, i32 6
  %bf.load235 = load i64, i64* %splScore234, align 4
  %bf.lshr236 = lshr i64 %bf.load235, 34
  %bf.clear237 = and i64 %bf.lshr236, 4194303
  %bf.cast238 = trunc i64 %bf.clear237 to i32
  %152 = load i32, i32* %rev, align 4
  %add239 = add i32 %152, %bf.cast238
  store i32 %add239, i32* %rev, align 4
  br label %for.inc.286

if.end.240:                                       ; preds = %if.end.225
  %153 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %to2241 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %153, i32 0, i32 3
  %154 = load i32, i32* %to2241, align 4
  %155 = load %struct._exon_t*, %struct._exon_t** %next199, align 8
  %from2242 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %155, i32 0, i32 1
  %156 = load i32, i32* %from2242, align 4
  %sub243 = sub i32 %154, %156
  %add244 = add i32 %sub243, 2
  store i32 %add244, i32* %nb205, align 4
  %type245 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 3
  store i32 -1, i32* %type245, align 4
  %score = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 4
  store i32 0, i32* %score, align 4
  %splScore246 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 5
  store i32 0, i32* %splScore246, align 4
  store i32 0, i32* %j206, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.269, %if.end.240
  %157 = load i32, i32* %j206, align 4
  %158 = load i32, i32* %nb205, align 4
  %cmp248 = icmp ult i32 %157, %158
  br i1 %cmp248, label %for.body.250, label %for.end.271

for.body.250:                                     ; preds = %for.cond.247
  %159 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %to1251 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %159, i32 0, i32 2
  %160 = load i32, i32* %to1251, align 4
  %161 = load i32, i32* %nb205, align 4
  %sub252 = sub i32 %160, %161
  %162 = load i32, i32* %j206, align 4
  %add253 = add i32 %sub252, %162
  %add254 = add i32 %add253, 1
  %to1255 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs, i32 0, i32 0
  store i32 %add254, i32* %to1255, align 4
  %163 = load %struct._exon_t*, %struct._exon_t** %cur192, align 8
  %to2256 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %163, i32 0, i32 3
  %164 = load i32, i32* %to2256, align 4
  %165 = load i32, i32* %nb205, align 4
  %sub257 = sub i32 %164, %165
  %166 = load i32, i32* %j206, align 4
  %add258 = add i32 %sub257, %166
  %add259 = add i32 %add258, 1
  %to2260 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs, i32 0, i32 1
  store i32 %add259, i32* %to2260, align 4
  %167 = load %struct._exon_t*, %struct._exon_t** %next199, align 8
  %from1261 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %167, i32 0, i32 0
  %168 = load i32, i32* %from1261, align 4
  %169 = load i32, i32* %j206, align 4
  %add262 = add i32 %168, %169
  %nFrom1263 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs, i32 0, i32 2
  store i32 %add262, i32* %nFrom1263, align 4
  %170 = load i8*, i8** %seq1.addr, align 8
  %171 = load i8*, i8** %seq2.addr, align 8
  call void @compute_max_score(i8* %170, i8* %171, %struct._splice_score_t* %cs, i32 0)
  %172 = bitcast %struct._splice_score_t* %cs to i8*
  %173 = bitcast %struct._splice_score_t* %max to i8*
  %call264 = call i32 @splice_score_compare(i8* %172, i8* %173)
  %cmp265 = icmp sgt i32 %call264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %for.body.250
  %174 = bitcast %struct._splice_score_t* %max to i8*
  %175 = bitcast %struct._splice_score_t* %cs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 28, i32 4, i1 false)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %for.body.250
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %176 = load i32, i32* %j206, align 4
  %inc270 = add i32 %176, 1
  store i32 %inc270, i32* %j206, align 4
  br label %for.cond.247

for.end.271:                                      ; preds = %for.cond.247
  %direction272 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 6
  %177 = load i32, i32* %direction272, align 4
  %cmp273 = icmp sgt i32 %177, 0
  br i1 %cmp273, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %for.end.271
  %score276 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 4
  %178 = load i32, i32* %score276, align 4
  %179 = load i32, i32* %fwd, align 4
  %add277 = add i32 %179, %178
  store i32 %add277, i32* %fwd, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %for.end.271
  %direction279 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 6
  %180 = load i32, i32* %direction279, align 4
  %cmp280 = icmp slt i32 %180, 0
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %if.end.278
  %score283 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max, i32 0, i32 4
  %181 = load i32, i32* %score283, align 4
  %182 = load i32, i32* %rev, align 4
  %add284 = add i32 %182, %181
  store i32 %add284, i32* %rev, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %if.end.278
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285, %if.then.233, %if.then.219, %if.then.212
  %183 = load i32, i32* %i, align 4
  %inc287 = add i32 %183, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond.186

for.end.288:                                      ; preds = %for.cond.186
  %184 = load i32, i32* %fwd, align 4
  %185 = load i32, i32* %rev, align 4
  %cmp289 = icmp uge i32 %184, %185
  br i1 %cmp289, label %if.then.291, label %if.else.293

if.then.291:                                      ; preds = %for.end.288
  %186 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction292 = getelementptr inbounds %struct._result_t, %struct._result_t* %186, i32 0, i32 4
  store i32 1, i32* %direction292, align 4
  br label %if.end.295

if.else.293:                                      ; preds = %for.end.288
  %187 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction294 = getelementptr inbounds %struct._result_t, %struct._result_t* %187, i32 0, i32 4
  store i32 -1, i32* %direction294, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.293, %if.then.291
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %for.end.181
  store i32 1, i32* %i, align 4
  br label %for.cond.297

for.cond.297:                                     ; preds = %for.inc.412, %if.end.296
  %188 = load i32, i32* %i, align 4
  %189 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol298 = getelementptr inbounds %struct._result_t, %struct._result_t* %189, i32 0, i32 1
  %nb299 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol298, i32 0, i32 1
  %190 = load i32, i32* %nb299, align 4
  %cmp300 = icmp ult i32 %188, %190
  br i1 %cmp300, label %for.body.302, label %for.end.414

for.body.302:                                     ; preds = %for.cond.297
  %191 = load i32, i32* %i, align 4
  %sub304 = sub i32 %191, 1
  %idxprom305 = zext i32 %sub304 to i64
  %192 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol306 = getelementptr inbounds %struct._result_t, %struct._result_t* %192, i32 0, i32 1
  %e307 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol306, i32 0, i32 0
  %exon308 = bitcast %union._collec_elt_t* %e307 to %struct._exon_t***
  %193 = load %struct._exon_t**, %struct._exon_t*** %exon308, align 8
  %arrayidx309 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %193, i64 %idxprom305
  %194 = load %struct._exon_t*, %struct._exon_t** %arrayidx309, align 8
  store %struct._exon_t* %194, %struct._exon_t** %cur303, align 8
  %195 = load i32, i32* %i, align 4
  %idxprom311 = zext i32 %195 to i64
  %196 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol312 = getelementptr inbounds %struct._result_t, %struct._result_t* %196, i32 0, i32 1
  %e313 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol312, i32 0, i32 0
  %exon314 = bitcast %union._collec_elt_t* %e313 to %struct._exon_t***
  %197 = load %struct._exon_t**, %struct._exon_t*** %exon314, align 8
  %arrayidx315 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %197, i64 %idxprom311
  %198 = load %struct._exon_t*, %struct._exon_t** %arrayidx315, align 8
  store %struct._exon_t* %198, %struct._exon_t** %next310, align 8
  %199 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %type320 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %199, i32 0, i32 6
  %bf.load321 = load i64, i64* %type320, align 4
  %bf.ashr322 = ashr i64 %bf.load321, 56
  %bf.cast323 = trunc i64 %bf.ashr322 to i32
  %cmp324 = icmp sge i32 %bf.cast323, 0
  br i1 %cmp324, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body.302
  %200 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %direction326 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %200, i32 0, i32 6
  %bf.load327 = load i64, i64* %direction326, align 4
  %bf.shl328 = shl i64 %bf.load327, 30
  %bf.ashr329 = ashr i64 %bf.shl328, 62
  %bf.cast330 = trunc i64 %bf.ashr329 to i32
  %201 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction331 = getelementptr inbounds %struct._result_t, %struct._result_t* %201, i32 0, i32 4
  %202 = load i32, i32* %direction331, align 4
  %mul332 = mul nsw i32 %bf.cast330, %202
  %cmp333 = icmp sgt i32 %mul332, 0
  br i1 %cmp333, label %if.then.340, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.302
  %203 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to2335 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %203, i32 0, i32 3
  %204 = load i32, i32* %to2335, align 4
  %add336 = add i32 %204, 1
  %205 = load %struct._exon_t*, %struct._exon_t** %next310, align 8
  %from2337 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %205, i32 0, i32 1
  %206 = load i32, i32* %from2337, align 4
  %cmp338 = icmp ult i32 %add336, %206
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.inc.412

if.end.341:                                       ; preds = %lor.lhs.false
  %207 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to2342 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %207, i32 0, i32 3
  %208 = load i32, i32* %to2342, align 4
  %209 = load %struct._exon_t*, %struct._exon_t** %next310, align 8
  %from2343 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %209, i32 0, i32 1
  %210 = load i32, i32* %from2343, align 4
  %sub344 = sub i32 %208, %210
  %add345 = add i32 %sub344, 2
  store i32 %add345, i32* %nb318, align 4
  %type346 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 3
  store i32 -1, i32* %type346, align 4
  %score347 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 4
  store i32 0, i32* %score347, align 4
  %splScore348 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 5
  store i32 0, i32* %splScore348, align 4
  store i32 0, i32* %j319, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.372, %if.end.341
  %211 = load i32, i32* %j319, align 4
  %212 = load i32, i32* %nb318, align 4
  %cmp350 = icmp ult i32 %211, %212
  br i1 %cmp350, label %for.body.352, label %for.end.374

for.body.352:                                     ; preds = %for.cond.349
  %213 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to1353 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %213, i32 0, i32 2
  %214 = load i32, i32* %to1353, align 4
  %215 = load i32, i32* %nb318, align 4
  %sub354 = sub i32 %214, %215
  %216 = load i32, i32* %j319, align 4
  %add355 = add i32 %sub354, %216
  %add356 = add i32 %add355, 1
  %to1357 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs317, i32 0, i32 0
  store i32 %add356, i32* %to1357, align 4
  %217 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to2358 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %217, i32 0, i32 3
  %218 = load i32, i32* %to2358, align 4
  %219 = load i32, i32* %nb318, align 4
  %sub359 = sub i32 %218, %219
  %220 = load i32, i32* %j319, align 4
  %add360 = add i32 %sub359, %220
  %add361 = add i32 %add360, 1
  %to2362 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs317, i32 0, i32 1
  store i32 %add361, i32* %to2362, align 4
  %221 = load %struct._exon_t*, %struct._exon_t** %next310, align 8
  %from1363 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %221, i32 0, i32 0
  %222 = load i32, i32* %from1363, align 4
  %223 = load i32, i32* %j319, align 4
  %add364 = add i32 %222, %223
  %nFrom1365 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cs317, i32 0, i32 2
  store i32 %add364, i32* %nFrom1365, align 4
  %224 = load i8*, i8** %seq1.addr, align 8
  %225 = load i8*, i8** %seq2.addr, align 8
  %226 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction366 = getelementptr inbounds %struct._result_t, %struct._result_t* %226, i32 0, i32 4
  %227 = load i32, i32* %direction366, align 4
  call void @compute_max_score(i8* %224, i8* %225, %struct._splice_score_t* %cs317, i32 %227)
  %228 = bitcast %struct._splice_score_t* %cs317 to i8*
  %229 = bitcast %struct._splice_score_t* %max316 to i8*
  %call367 = call i32 @splice_score_compare(i8* %228, i8* %229)
  %cmp368 = icmp sgt i32 %call367, 0
  br i1 %cmp368, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %for.body.352
  %230 = bitcast %struct._splice_score_t* %max316 to i8*
  %231 = bitcast %struct._splice_score_t* %cs317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* %231, i64 28, i32 4, i1 false)
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.370, %for.body.352
  br label %for.inc.372

for.inc.372:                                      ; preds = %if.end.371
  %232 = load i32, i32* %j319, align 4
  %inc373 = add i32 %232, 1
  store i32 %inc373, i32* %j319, align 4
  br label %for.cond.349

for.end.374:                                      ; preds = %for.cond.349
  %direction375 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 6
  %233 = load i32, i32* %direction375, align 4
  %234 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %direction376 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %234, i32 0, i32 6
  %235 = zext i32 %233 to i64
  %bf.load377 = load i64, i64* %direction376, align 4
  %bf.value378 = and i64 %235, 3
  %bf.shl379 = shl i64 %bf.value378, 32
  %bf.clear380 = and i64 %bf.load377, -12884901889
  %bf.set381 = or i64 %bf.clear380, %bf.shl379
  store i64 %bf.set381, i64* %direction376, align 4
  %bf.result.shl382 = shl i64 %bf.value378, 62
  %bf.result.ashr383 = ashr i64 %bf.result.shl382, 62
  %bf.result.cast384 = trunc i64 %bf.result.ashr383 to i32
  %type385 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 3
  %236 = load i32, i32* %type385, align 4
  %237 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %type386 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %237, i32 0, i32 6
  %238 = zext i32 %236 to i64
  %bf.load387 = load i64, i64* %type386, align 4
  %bf.value388 = and i64 %238, 255
  %bf.shl389 = shl i64 %bf.value388, 56
  %bf.clear390 = and i64 %bf.load387, 72057594037927935
  %bf.set391 = or i64 %bf.clear390, %bf.shl389
  store i64 %bf.set391, i64* %type386, align 4
  %bf.result.shl392 = shl i64 %bf.value388, 56
  %bf.result.ashr393 = ashr i64 %bf.result.shl392, 56
  %bf.result.cast394 = trunc i64 %bf.result.ashr393 to i32
  %score395 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 4
  %239 = load i32, i32* %score395, align 4
  %240 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %splScore396 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %240, i32 0, i32 6
  %241 = zext i32 %239 to i64
  %bf.load397 = load i64, i64* %splScore396, align 4
  %bf.value398 = and i64 %241, 4194303
  %bf.shl399 = shl i64 %bf.value398, 34
  %bf.clear400 = and i64 %bf.load397, -72057576858058753
  %bf.set401 = or i64 %bf.clear400, %bf.shl399
  store i64 %bf.set401, i64* %splScore396, align 4
  %bf.result.cast402 = trunc i64 %bf.value398 to i32
  %to1403 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 0
  %242 = load i32, i32* %to1403, align 4
  %243 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to1404 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %243, i32 0, i32 2
  store i32 %242, i32* %to1404, align 4
  %to2405 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 1
  %244 = load i32, i32* %to2405, align 4
  %245 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to2406 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %245, i32 0, i32 3
  store i32 %244, i32* %to2406, align 4
  %246 = load %struct._exon_t*, %struct._exon_t** %cur303, align 8
  %to2407 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %246, i32 0, i32 3
  %247 = load i32, i32* %to2407, align 4
  %add408 = add i32 %247, 1
  %248 = load %struct._exon_t*, %struct._exon_t** %next310, align 8
  %from2409 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %248, i32 0, i32 1
  store i32 %add408, i32* %from2409, align 4
  %nFrom1410 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %max316, i32 0, i32 2
  %249 = load i32, i32* %nFrom1410, align 4
  %250 = load %struct._exon_t*, %struct._exon_t** %next310, align 8
  %from1411 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %250, i32 0, i32 0
  store i32 %249, i32* %from1411, align 4
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.end.374, %if.then.340
  %251 = load i32, i32* %i, align 4
  %inc413 = add i32 %251, 1
  store i32 %inc413, i32* %i, align 4
  br label %for.cond.297

for.end.414:                                      ; preds = %for.cond.297
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pluri_align(i8* %seq1, i8* %seq2, i32* %num_matches, %struct._collec_t* %eCol, %struct._edit_script_list** %Aligns, i32 %M, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %num_matches.addr = alloca i32*, align 8
  %eCol.addr = alloca %struct._collec_t*, align 8
  %Aligns.addr = alloca %struct._edit_script_list**, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %eFake = alloca %struct._exon_t, align 4
  %cur = alloca %struct._exon_t*, align 8
  %diff = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %ali_dist = alloca i32, align 4
  %nmatches = alloca i32, align 4
  %head = alloca %struct._edit_script*, align 8
  %ii = alloca i32, align 4
  %prev = alloca %struct._exon_t*, align 8
  %left = alloca %struct._edit_script*, align 8
  %right = alloca %struct._edit_script*, align 8
  %prevE = alloca %struct._edit_script*, align 8
  %tmp_script = alloca %struct._edit_script*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %tmpi = alloca i32, align 4
  %di_count = alloca i32, align 4
  %alen = alloca i32, align 4
  %enew = alloca %struct._edit_script_list*, align 8
  %new = alloca %struct._edit_script*, align 8
  %j = alloca i32, align 4
  %enew189 = alloca %struct._edit_script_list*, align 8
  %enew210 = alloca %struct._edit_script_list*, align 8
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32* %num_matches, i32** %num_matches.addr, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store %struct._edit_script_list** %Aligns, %struct._edit_script_list*** %Aligns.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct._exon_t* %eFake, %struct._exon_t** %cur, align 8
  store i32 0, i32* %nmatches, align 4
  store %struct._edit_script* null, %struct._edit_script** %head, align 8
  %0 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  store %struct._edit_script_list* null, %struct._edit_script_list** %0, align 8
  store i32 0, i32* %ali_dist, align 4
  %1 = load i32, i32* %M.addr, align 4
  store i32 %1, i32* %end1, align 4
  %2 = load i32, i32* %N.addr, align 4
  store i32 %2, i32* %end2, align 4
  %3 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %3, 1
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %eFake, i32 0, i32 0
  store i32 %add, i32* %from1, align 4
  %4 = load i32, i32* %N.addr, align 4
  %add1 = add nsw i32 %4, 1
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %eFake, i32 0, i32 1
  store i32 %add1, i32* %from2, align 4
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %eFake, i32 0, i32 2
  store i32 0, i32* %to1, align 4
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %eFake, i32 0, i32 3
  store i32 0, i32* %to2, align 4
  %5 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 1
  %6 = load i32, i32* %nb, align 4
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.179, %entry
  %7 = load i32, i32* %ii, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end.180

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %10 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %10, i64 %idxprom
  %11 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %11, %struct._exon_t** %prev, align 8
  %12 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from22 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 1
  %13 = load i32, i32* %from22, align 4
  %14 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 3
  %15 = load i32, i32* %to23, align 4
  %sub4 = sub i32 %13, %15
  %sub5 = sub i32 %sub4, 1
  store i32 %sub5, i32* %diff, align 4
  %cmp6 = icmp ne i32 %sub5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to17 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 2
  %17 = load i32, i32* %to17, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %call = call i8* @xmalloc(i64 40)
  %18 = bitcast i8* %call to %struct._edit_script_list*
  store %struct._edit_script_list* %18, %struct._edit_script_list** %enew, align 8
  %19 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  %20 = load %struct._edit_script_list*, %struct._edit_script_list** %19, align 8
  %21 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %next_script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %21, i32 0, i32 0
  store %struct._edit_script_list* %20, %struct._edit_script_list** %next_script, align 8
  %22 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %23 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  store %struct._edit_script_list* %22, %struct._edit_script_list** %23, align 8
  %24 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %25 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %25, i32 0, i32 1
  store %struct._edit_script* %24, %struct._edit_script** %script, align 8
  %26 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from19 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 0
  %27 = load i32, i32* %from19, align 4
  %28 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %offset1 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %28, i32 0, i32 2
  store i32 %27, i32* %offset1, align 4
  %29 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from210 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %29, i32 0, i32 1
  %30 = load i32, i32* %from210, align 4
  %31 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %offset2 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %31, i32 0, i32 3
  store i32 %30, i32* %offset2, align 4
  %32 = load i32, i32* %end1, align 4
  %33 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %offset111 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %33, i32 0, i32 2
  %34 = load i32, i32* %offset111, align 4
  %sub12 = sub i32 %32, %34
  %add13 = add i32 %sub12, 1
  %35 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %len1 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %35, i32 0, i32 4
  store i32 %add13, i32* %len1, align 4
  %36 = load i32, i32* %end2, align 4
  %37 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %offset214 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %37, i32 0, i32 3
  %38 = load i32, i32* %offset214, align 4
  %sub15 = sub i32 %36, %38
  %add16 = add i32 %sub15, 1
  %39 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %len2 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %39, i32 0, i32 5
  store i32 %add16, i32* %len2, align 4
  %40 = load i32, i32* %ali_dist, align 4
  %41 = load %struct._edit_script_list*, %struct._edit_script_list** %enew, align 8
  %score = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %41, i32 0, i32 6
  store i32 %40, i32* %score, align 4
  store i32 0, i32* %ali_dist, align 4
  store %struct._edit_script* null, %struct._edit_script** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %42 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to117 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 2
  %43 = load i32, i32* %to117, align 4
  store i32 %43, i32* %end1, align 4
  %44 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to218 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 3
  %45 = load i32, i32* %to218, align 4
  store i32 %45, i32* %end2, align 4
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %46 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from119 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 0
  %47 = load i32, i32* %from119, align 4
  %48 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to120 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %48, i32 0, i32 2
  %49 = load i32, i32* %to120, align 4
  %sub21 = sub i32 %47, %49
  %sub22 = sub i32 %sub21, 1
  store i32 %sub22, i32* %diff, align 4
  %cmp23 = icmp ne i32 %sub22, 0
  br i1 %cmp23, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else
  %50 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to124 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 2
  %51 = load i32, i32* %to124, align 4
  %tobool25 = icmp ne i32 %51, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %land.lhs.true
  %call27 = call i8* @xmalloc(i64 16)
  %52 = bitcast i8* %call27 to %struct._edit_script*
  store %struct._edit_script* %52, %struct._edit_script** %new, align 8
  %53 = load %struct._edit_script*, %struct._edit_script** %new, align 8
  %op_type = getelementptr inbounds %struct._edit_script, %struct._edit_script* %53, i32 0, i32 2
  store i8 1, i8* %op_type, align 1
  %54 = load i32, i32* %diff, align 4
  %55 = load %struct._edit_script*, %struct._edit_script** %new, align 8
  %num = getelementptr inbounds %struct._edit_script, %struct._edit_script* %55, i32 0, i32 1
  store i32 %54, i32* %num, align 4
  %56 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %57 = load %struct._edit_script*, %struct._edit_script** %new, align 8
  %next = getelementptr inbounds %struct._edit_script, %struct._edit_script* %57, i32 0, i32 0
  store %struct._edit_script* %56, %struct._edit_script** %next, align 8
  %58 = load %struct._edit_script*, %struct._edit_script** %new, align 8
  store %struct._edit_script* %58, %struct._edit_script** %head, align 8
  br label %if.end.33

if.else.28:                                       ; preds = %land.lhs.true, %if.else
  %59 = load i32, i32* %diff, align 4
  %tobool29 = icmp ne i32 %59, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else.28
  %60 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to131 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %60, i32 0, i32 2
  %61 = load i32, i32* %to131, align 4
  store i32 %61, i32* %end1, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %62 = load i8*, i8** %seq1.addr, align 8
  %63 = load i8*, i8** %seq2.addr, align 8
  %64 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %64, i32 0, i32 0
  %65 = load i32, i32* %from135, align 4
  %sub36 = sub i32 %65, 1
  %66 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from237 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %66, i32 0, i32 1
  %67 = load i32, i32* %from237, align 4
  %sub38 = sub i32 %67, 1
  %68 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to139 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %68, i32 0, i32 2
  %69 = load i32, i32* %to139, align 4
  %70 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to240 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %70, i32 0, i32 3
  %71 = load i32, i32* %to240, align 4
  %72 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to241 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %72, i32 0, i32 3
  %73 = load i32, i32* %to241, align 4
  %74 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from242 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %74, i32 0, i32 1
  %75 = load i32, i32* %from242, align 4
  %sub43 = sub i32 %73, %75
  %add44 = add i32 %sub43, 1
  %conv = uitofp i32 %add44 to double
  %mul = fmul double 2.000000e-01, %conv
  %cmp45 = fcmp olt double 1.000000e+03, %mul
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %76 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to247 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %76, i32 0, i32 3
  %77 = load i32, i32* %to247, align 4
  %78 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from248 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %78, i32 0, i32 1
  %79 = load i32, i32* %from248, align 4
  %sub49 = sub i32 %77, %79
  %add50 = add i32 %sub49, 1
  %conv51 = uitofp i32 %add50 to double
  %mul52 = fmul double 2.000000e-01, %conv51
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul52, %cond.true ], [ 1.000000e+03, %cond.false ]
  %conv53 = fptosi double %cond to i32
  %call54 = call i32 @align_get_dist(i8* %62, i8* %63, i32 %sub36, i32 %sub38, i32 %69, i32 %71, i32 %conv53)
  store i32 %call54, i32* %diff, align 4
  %80 = load i32, i32* %diff, align 4
  %cmp55 = icmp slt i32 %80, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %cond.end
  %81 = load i8*, i8** %seq1.addr, align 8
  %82 = load i8*, i8** %seq2.addr, align 8
  %83 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from159 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %83, i32 0, i32 0
  %84 = load i32, i32* %from159, align 4
  %sub60 = sub i32 %84, 1
  %85 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from261 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %85, i32 0, i32 1
  %86 = load i32, i32* %from261, align 4
  %sub62 = sub i32 %86, 1
  %87 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to163 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %87, i32 0, i32 2
  %88 = load i32, i32* %to163, align 4
  %89 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to264 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %89, i32 0, i32 3
  %90 = load i32, i32* %to264, align 4
  %91 = load i32, i32* %diff, align 4
  %92 = load i32, i32* %M.addr, align 4
  %93 = load i32, i32* %N.addr, align 4
  call void @align_path(i8* %81, i8* %82, i32 %sub60, i32 %sub62, i32 %88, i32 %90, i32 %91, %struct._edit_script** %left, %struct._edit_script** %right, i32 %92, i32 %93)
  %94 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %cmp65 = icmp eq %struct._edit_script* %94, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.58
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.58
  call void @Condense_both_Ends(%struct._edit_script** %left, %struct._edit_script** %right, %struct._edit_script** %prevE)
  %95 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to169 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %95, i32 0, i32 2
  %96 = load i32, i32* %to169, align 4
  %tobool70 = icmp ne i32 %96, 0
  br i1 %tobool70, label %if.end.97, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %if.end.68
  %97 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %op_type72 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %97, i32 0, i32 2
  %98 = load i8, i8* %op_type72, align 1
  %conv73 = sext i8 %98 to i32
  %cmp74 = icmp eq i32 %conv73, 1
  br i1 %cmp74, label %if.then.76, label %if.end.97

if.then.76:                                       ; preds = %land.lhs.true.71
  %99 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %num77 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %99, i32 0, i32 1
  %100 = load i32, i32* %num77, align 4
  %add78 = add nsw i32 0, %100
  %101 = load i32, i32* %diff, align 4
  %sub79 = sub nsw i32 %101, %add78
  store i32 %sub79, i32* %diff, align 4
  %102 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %num80 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %102, i32 0, i32 1
  %103 = load i32, i32* %num80, align 4
  %104 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to181 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %104, i32 0, i32 2
  %105 = load i32, i32* %to181, align 4
  %sub82 = sub i32 %105, %103
  store i32 %sub82, i32* %to181, align 4
  %106 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %num83 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %106, i32 0, i32 1
  %107 = load i32, i32* %num83, align 4
  %108 = load i32, i32* %end1, align 4
  %sub84 = sub nsw i32 %108, %107
  store i32 %sub84, i32* %end1, align 4
  %109 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %tobool85 = icmp ne %struct._edit_script* %109, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.95

land.lhs.true.86:                                 ; preds = %if.then.76
  %110 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %op_type87 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %110, i32 0, i32 2
  %111 = load i8, i8* %op_type87, align 1
  %conv88 = sext i8 %111 to i32
  %cmp89 = icmp eq i32 %conv88, 1
  br i1 %cmp89, label %if.then.91, label %if.end.95

if.then.91:                                       ; preds = %land.lhs.true.86
  %112 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %num92 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %112, i32 0, i32 1
  %113 = load i32, i32* %num92, align 4
  %114 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %num93 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %114, i32 0, i32 1
  %115 = load i32, i32* %num93, align 4
  %add94 = add nsw i32 %115, %113
  store i32 %add94, i32* %num93, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.91, %land.lhs.true.86, %if.then.76
  %116 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %117 = bitcast %struct._edit_script* %116 to i8*
  call void @free(i8* %117) #2
  %118 = load %struct._edit_script*, %struct._edit_script** %prevE, align 8
  %next96 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %118, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next96, align 8
  %119 = load %struct._edit_script*, %struct._edit_script** %prevE, align 8
  store %struct._edit_script* %119, %struct._edit_script** %right, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.95, %land.lhs.true.71, %if.end.68
  %120 = load i32, i32* %ii, align 4
  %cmp98 = icmp eq i32 %120, 0
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.119

land.lhs.true.100:                                ; preds = %if.end.97
  %121 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %tobool101 = icmp ne %struct._edit_script* %121, null
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.119

land.lhs.true.102:                                ; preds = %land.lhs.true.100
  %122 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %op_type103 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %122, i32 0, i32 2
  %123 = load i8, i8* %op_type103, align 1
  %conv104 = sext i8 %123 to i32
  %cmp105 = icmp eq i32 %conv104, 1
  br i1 %cmp105, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %land.lhs.true.102
  %124 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %num108 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %124, i32 0, i32 1
  %125 = load i32, i32* %num108, align 4
  %add109 = add nsw i32 0, %125
  %126 = load i32, i32* %diff, align 4
  %sub110 = sub nsw i32 %126, %add109
  store i32 %sub110, i32* %diff, align 4
  %127 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %num111 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %127, i32 0, i32 1
  %128 = load i32, i32* %num111, align 4
  %129 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from1112 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %129, i32 0, i32 0
  %130 = load i32, i32* %from1112, align 4
  %add113 = add i32 %130, %128
  store i32 %add113, i32* %from1112, align 4
  %131 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %next114 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %131, i32 0, i32 0
  %132 = load %struct._edit_script*, %struct._edit_script** %next114, align 8
  store %struct._edit_script* %132, %struct._edit_script** %tmp_script, align 8
  %133 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %134 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %cmp115 = icmp eq %struct._edit_script* %133, %134
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.107
  %135 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  store %struct._edit_script* %135, %struct._edit_script** %right, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.then.107
  %136 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  %137 = bitcast %struct._edit_script* %136 to i8*
  call void @free(i8* %137) #2
  %138 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  store %struct._edit_script* %138, %struct._edit_script** %left, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.102, %land.lhs.true.100, %if.end.97
  %139 = load i32, i32* %diff, align 4
  %140 = load i32, i32* %ali_dist, align 4
  %add120 = add nsw i32 %140, %139
  store i32 %add120, i32* %ali_dist, align 4
  %141 = load i8*, i8** %seq1.addr, align 8
  %142 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from1121 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %142, i32 0, i32 0
  %143 = load i32, i32* %from1121, align 4
  %idx.ext = zext i32 %143 to i64
  %add.ptr = getelementptr inbounds i8, i8* %141, i64 %idx.ext
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr122, i8** %a, align 8
  %144 = load i8*, i8** %seq2.addr, align 8
  %145 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from2123 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %145, i32 0, i32 1
  %146 = load i32, i32* %from2123, align 4
  %idx.ext124 = zext i32 %146 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %144, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 -1
  store i8* %add.ptr126, i8** %b, align 8
  store i32 0, i32* %di_count, align 4
  store i32 0, i32* %tmpi, align 4
  %147 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  store %struct._edit_script* %147, %struct._edit_script** %tmp_script, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.119
  %148 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %tobool127 = icmp ne %struct._edit_script* %148, null
  br i1 %tobool127, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %149 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %op_type128 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %149, i32 0, i32 2
  %150 = load i8, i8* %op_type128, align 1
  %conv129 = sext i8 %150 to i32
  switch i32 %conv129, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.137
    i32 3, label %sw.bb.145
  ]

sw.bb:                                            ; preds = %while.body
  %151 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num130 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %151, i32 0, i32 1
  %152 = load i32, i32* %num130, align 4
  %153 = load i32, i32* %di_count, align 4
  %add131 = add nsw i32 %153, %152
  store i32 %add131, i32* %di_count, align 4
  %154 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num132 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %154, i32 0, i32 1
  %155 = load i32, i32* %num132, align 4
  %156 = load i32, i32* %tmpi, align 4
  %add133 = add nsw i32 %156, %155
  store i32 %add133, i32* %tmpi, align 4
  %157 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num134 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %157, i32 0, i32 1
  %158 = load i32, i32* %num134, align 4
  %159 = load i8*, i8** %a, align 8
  %idx.ext135 = sext i32 %158 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %159, i64 %idx.ext135
  store i8* %add.ptr136, i8** %a, align 8
  br label %sw.epilog

sw.bb.137:                                        ; preds = %while.body
  %160 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num138 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %160, i32 0, i32 1
  %161 = load i32, i32* %num138, align 4
  %162 = load i32, i32* %di_count, align 4
  %add139 = add nsw i32 %162, %161
  store i32 %add139, i32* %di_count, align 4
  %163 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num140 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %163, i32 0, i32 1
  %164 = load i32, i32* %num140, align 4
  %165 = load i32, i32* %tmpi, align 4
  %add141 = add nsw i32 %165, %164
  store i32 %add141, i32* %tmpi, align 4
  %166 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num142 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %166, i32 0, i32 1
  %167 = load i32, i32* %num142, align 4
  %168 = load i8*, i8** %b, align 8
  %idx.ext143 = sext i32 %167 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %168, i64 %idx.ext143
  store i8* %add.ptr144, i8** %b, align 8
  br label %sw.epilog

sw.bb.145:                                        ; preds = %while.body
  store i32 0, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc, %sw.bb.145
  %169 = load i32, i32* %j, align 4
  %170 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %num147 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %170, i32 0, i32 1
  %171 = load i32, i32* %num147, align 4
  %cmp148 = icmp slt i32 %169, %171
  br i1 %cmp148, label %for.body.150, label %for.end

for.body.150:                                     ; preds = %for.cond.146
  %172 = load i8*, i8** %a, align 8
  %173 = load i8, i8* %172, align 1
  %conv151 = zext i8 %173 to i32
  %174 = load i8*, i8** %b, align 8
  %175 = load i8, i8* %174, align 1
  %conv152 = zext i8 %175 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %for.body.150
  %176 = load i32, i32* %tmpi, align 4
  %inc = add nsw i32 %176, 1
  store i32 %inc, i32* %tmpi, align 4
  br label %if.end.158

if.else.156:                                      ; preds = %for.body.150
  %177 = load i32, i32* %nmatches, align 4
  %inc157 = add i32 %177, 1
  store i32 %inc157, i32* %nmatches, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.156, %if.then.155
  br label %for.inc

for.inc:                                          ; preds = %if.end.158
  %178 = load i32, i32* %j, align 4
  %inc159 = add nsw i32 %178, 1
  store i32 %inc159, i32* %j, align 4
  %179 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  %180 = load i8*, i8** %b, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr160, i8** %b, align 8
  br label %for.cond.146

for.end:                                          ; preds = %for.cond.146
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %for.end, %sw.bb.137, %sw.bb
  %181 = load %struct._edit_script*, %struct._edit_script** %tmp_script, align 8
  %next161 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %181, i32 0, i32 0
  %182 = load %struct._edit_script*, %struct._edit_script** %next161, align 8
  store %struct._edit_script* %182, %struct._edit_script** %tmp_script, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %183 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to1162 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %183, i32 0, i32 2
  %184 = load i32, i32* %to1162, align 4
  %185 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from1163 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %185, i32 0, i32 0
  %186 = load i32, i32* %from1163, align 4
  %sub164 = sub i32 %184, %186
  %add165 = add i32 %sub164, 1
  %187 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %to2166 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %187, i32 0, i32 3
  %188 = load i32, i32* %to2166, align 4
  %add167 = add i32 %add165, %188
  %189 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %from2168 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %189, i32 0, i32 1
  %190 = load i32, i32* %from2168, align 4
  %sub169 = sub i32 %add167, %190
  %add170 = add i32 %sub169, 1
  %191 = load i32, i32* %di_count, align 4
  %add171 = add i32 %add170, %191
  %conv172 = uitofp i32 %add171 to double
  %div = fdiv double %conv172, 2.000000e+00
  %conv173 = fptosi double %div to i32
  store i32 %conv173, i32* %alen, align 4
  %192 = load i32, i32* %alen, align 4
  %193 = load i32, i32* %tmpi, align 4
  %sub174 = sub nsw i32 %192, %193
  %mul175 = mul nsw i32 %sub174, 100
  %194 = load i32, i32* %alen, align 4
  %div176 = sdiv i32 %mul175, %194
  %195 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  %score177 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %195, i32 0, i32 4
  store i32 %div176, i32* %score177, align 4
  %196 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %197 = load %struct._edit_script*, %struct._edit_script** %right, align 8
  %next178 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %197, i32 0, i32 0
  store %struct._edit_script* %196, %struct._edit_script** %next178, align 8
  %198 = load %struct._edit_script*, %struct._edit_script** %left, align 8
  store %struct._edit_script* %198, %struct._edit_script** %head, align 8
  %199 = load %struct._exon_t*, %struct._exon_t** %prev, align 8
  store %struct._exon_t* %199, %struct._exon_t** %cur, align 8
  br label %for.inc.179

for.inc.179:                                      ; preds = %while.end
  %200 = load i32, i32* %ii, align 4
  %dec = add nsw i32 %200, -1
  store i32 %dec, i32* %ii, align 4
  br label %for.cond

for.end.180:                                      ; preds = %for.cond
  %201 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2181 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %201, i32 0, i32 1
  %202 = load i32, i32* %from2181, align 4
  %sub182 = sub i32 %202, 1
  store i32 %sub182, i32* %diff, align 4
  %cmp183 = icmp ne i32 %sub182, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.else.206

land.lhs.true.185:                                ; preds = %for.end.180
  %203 = load i32, i32* %diff, align 4
  %204 = load i32, i32* %N.addr, align 4
  %cmp186 = icmp ne i32 %203, %204
  br i1 %cmp186, label %if.then.188, label %if.else.206

if.then.188:                                      ; preds = %land.lhs.true.185
  %call190 = call i8* @xmalloc(i64 40)
  %205 = bitcast i8* %call190 to %struct._edit_script_list*
  store %struct._edit_script_list* %205, %struct._edit_script_list** %enew189, align 8
  %206 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  %207 = load %struct._edit_script_list*, %struct._edit_script_list** %206, align 8
  %208 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %next_script191 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %208, i32 0, i32 0
  store %struct._edit_script_list* %207, %struct._edit_script_list** %next_script191, align 8
  %209 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %210 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  store %struct._edit_script_list* %209, %struct._edit_script_list** %210, align 8
  %211 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1192 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %211, i32 0, i32 0
  %212 = load i32, i32* %from1192, align 4
  %213 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %offset1193 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %213, i32 0, i32 2
  store i32 %212, i32* %offset1193, align 4
  %214 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2194 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %214, i32 0, i32 1
  %215 = load i32, i32* %from2194, align 4
  %216 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %offset2195 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %216, i32 0, i32 3
  store i32 %215, i32* %offset2195, align 4
  %217 = load i32, i32* %end1, align 4
  %218 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %offset1196 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %218, i32 0, i32 2
  %219 = load i32, i32* %offset1196, align 4
  %sub197 = sub i32 %217, %219
  %add198 = add i32 %sub197, 1
  %220 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %len1199 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %220, i32 0, i32 4
  store i32 %add198, i32* %len1199, align 4
  %221 = load i32, i32* %end2, align 4
  %222 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %offset2200 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %222, i32 0, i32 3
  %223 = load i32, i32* %offset2200, align 4
  %sub201 = sub i32 %221, %223
  %add202 = add i32 %sub201, 1
  %224 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %len2203 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %224, i32 0, i32 5
  store i32 %add202, i32* %len2203, align 4
  %225 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %226 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %script204 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %226, i32 0, i32 1
  store %struct._edit_script* %225, %struct._edit_script** %script204, align 8
  %227 = load i32, i32* %ali_dist, align 4
  %228 = load %struct._edit_script_list*, %struct._edit_script_list** %enew189, align 8
  %score205 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %228, i32 0, i32 6
  store i32 %227, i32* %score205, align 4
  br label %if.end.227

if.else.206:                                      ; preds = %land.lhs.true.185, %for.end.180
  %229 = load i32, i32* %diff, align 4
  %230 = load i32, i32* %N.addr, align 4
  %cmp207 = icmp ne i32 %229, %230
  br i1 %cmp207, label %if.then.209, label %if.end.226

if.then.209:                                      ; preds = %if.else.206
  %call211 = call i8* @xmalloc(i64 40)
  %231 = bitcast i8* %call211 to %struct._edit_script_list*
  store %struct._edit_script_list* %231, %struct._edit_script_list** %enew210, align 8
  %232 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  %233 = load %struct._edit_script_list*, %struct._edit_script_list** %232, align 8
  %234 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %next_script212 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %234, i32 0, i32 0
  store %struct._edit_script_list* %233, %struct._edit_script_list** %next_script212, align 8
  %235 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %236 = load %struct._edit_script_list**, %struct._edit_script_list*** %Aligns.addr, align 8
  store %struct._edit_script_list* %235, %struct._edit_script_list** %236, align 8
  %237 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1213 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %237, i32 0, i32 0
  %238 = load i32, i32* %from1213, align 4
  %239 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %offset1214 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %239, i32 0, i32 2
  store i32 %238, i32* %offset1214, align 4
  %240 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %offset2215 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %240, i32 0, i32 3
  store i32 1, i32* %offset2215, align 4
  %241 = load i32, i32* %end1, align 4
  %242 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %offset1216 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %242, i32 0, i32 2
  %243 = load i32, i32* %offset1216, align 4
  %sub217 = sub i32 %241, %243
  %add218 = add i32 %sub217, 1
  %244 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %len1219 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %244, i32 0, i32 4
  store i32 %add218, i32* %len1219, align 4
  %245 = load i32, i32* %end2, align 4
  %246 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %offset2220 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %246, i32 0, i32 3
  %247 = load i32, i32* %offset2220, align 4
  %sub221 = sub i32 %245, %247
  %add222 = add i32 %sub221, 1
  %248 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %len2223 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %248, i32 0, i32 5
  store i32 %add222, i32* %len2223, align 4
  %249 = load %struct._edit_script*, %struct._edit_script** %head, align 8
  %250 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %script224 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %250, i32 0, i32 1
  store %struct._edit_script* %249, %struct._edit_script** %script224, align 8
  %251 = load i32, i32* %ali_dist, align 4
  %252 = load %struct._edit_script_list*, %struct._edit_script_list** %enew210, align 8
  %score225 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %252, i32 0, i32 6
  store i32 %251, i32* %score225, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.209, %if.else.206
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.188
  %253 = load i32, i32* %nmatches, align 4
  %254 = load i32*, i32** %num_matches.addr, align 8
  store i32 %253, i32* %254, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.227, %if.then.67, %if.then.57
  %255 = load i32, i32* %retval
  ret i32 %255
}

; Function Attrs: nounwind uwtable
define void @free_align(%struct._edit_script_list* %aligns) #0 {
entry:
  %aligns.addr = alloca %struct._edit_script_list*, align 8
  %head = alloca %struct._edit_script_list*, align 8
  store %struct._edit_script_list* %aligns, %struct._edit_script_list** %aligns.addr, align 8
  %0 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns.addr, align 8
  store %struct._edit_script_list* %0, %struct._edit_script_list** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns.addr, align 8
  store %struct._edit_script_list* %1, %struct._edit_script_list** %head, align 8
  %cmp = icmp ne %struct._edit_script_list* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns.addr, align 8
  %next_script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %2, i32 0, i32 0
  %3 = load %struct._edit_script_list*, %struct._edit_script_list** %next_script, align 8
  store %struct._edit_script_list* %3, %struct._edit_script_list** %aligns.addr, align 8
  %4 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %4, i32 0, i32 1
  %5 = load %struct._edit_script*, %struct._edit_script** %script, align 8
  call void @Free_script(%struct._edit_script* %5)
  %6 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %7 = bitcast %struct._edit_script_list* %6 to i8*
  call void @free(i8* %7) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @xmalloc(i64) #3

; Function Attrs: nounwind uwtable
define void @init_encoding() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i32 0, i64 %idxprom
  store i32 4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i32 0, i64 65), align 4
  store i32 1, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i32 0, i64 67), align 4
  store i32 2, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i32 0, i64 71), align 4
  store i32 3, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i32 0, i64 84), align 4
  ret void
}

declare i8* @xcalloc(i64, i64) #3

declare void @tdestroy(i8*, void (i8*)*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @add_word(%struct._hash_env_t* %he, i32 %ecode, i32 %pos) #4 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %ecode.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %h = alloca %struct._hash_node_t*, align 8
  %key = alloca %struct._hash_node_t**, align 8
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i32 %ecode, i32* %ecode.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %call = call i8* @xmalloc(i64 8)
  %0 = bitcast i8* %call to %struct._hash_node_t*
  store %struct._hash_node_t* %0, %struct._hash_node_t** %h, align 8
  %1 = load i32, i32* %ecode.addr, align 4
  %2 = load %struct._hash_node_t*, %struct._hash_node_t** %h, align 8
  %ecode1 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %2, i32 0, i32 0
  store i32 %1, i32* %ecode1, align 4
  %3 = load %struct._hash_node_t*, %struct._hash_node_t** %h, align 8
  %4 = bitcast %struct._hash_node_t* %3 to i8*
  %5 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %hashtab = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %5, i32 0, i32 0
  %6 = load i8**, i8*** %hashtab, align 8
  %7 = load i32, i32* %ecode.addr, align 4
  %and = and i32 %7, 524287
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds i8*, i8** %6, i64 %idx.ext
  %call2 = call i8* @tsearch(i8* %4, i8** %add.ptr, i32 (i8*, i8*)* @hash_node_compare)
  %8 = bitcast i8* %call2 to %struct._hash_node_t**
  store %struct._hash_node_t** %8, %struct._hash_node_t*** %key, align 8
  %9 = load %struct._hash_node_t**, %struct._hash_node_t*** %key, align 8
  %10 = load %struct._hash_node_t*, %struct._hash_node_t** %9, align 8
  %11 = load %struct._hash_node_t*, %struct._hash_node_t** %h, align 8
  %cmp = icmp ne %struct._hash_node_t* %10, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._hash_node_t*, %struct._hash_node_t** %h, align 8
  %13 = bitcast %struct._hash_node_t* %12 to i8*
  call void @free(i8* %13) #2
  %14 = load %struct._hash_node_t**, %struct._hash_node_t*** %key, align 8
  %15 = load %struct._hash_node_t*, %struct._hash_node_t** %14, align 8
  %pos3 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %15, i32 0, i32 1
  %16 = load i32, i32* %pos3, align 4
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %next_pos = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %18, i32 0, i32 3
  %19 = load i32*, i32** %next_pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %16, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom4 = zext i32 %20 to i64
  %21 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %next_pos5 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %21, i32 0, i32 3
  %22 = load i32*, i32** %next_pos5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %22, i64 %idxprom4
  store i32 -1, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load %struct._hash_node_t**, %struct._hash_node_t*** %key, align 8
  %25 = load %struct._hash_node_t*, %struct._hash_node_t** %24, align 8
  %pos7 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %25, i32 0, i32 1
  store i32 %23, i32* %pos7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_exons(%struct._collec_t* %eCol, i32 %direction) #0 {
entry:
  %eCol.addr = alloca %struct._collec_t*, align 8
  %direction.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %cur = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %0, i32 0, i32 1
  %1 = load i32, i32* %nb, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %last, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %last, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %6 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %6, i64 %idxprom
  %7 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %7, %struct._exon_t** %cur, align 8
  %8 = load i32, i32* %direction.addr, align 4
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %type = getelementptr inbounds %struct._exon_t, %struct._exon_t* %9, i32 0, i32 6
  %bf.load = load i64, i64* %type, align 4
  %bf.ashr = ashr i64 %bf.load, 56
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp2 = icmp slt i32 %bf.cast, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %10 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 0
  %11 = load i32, i32* %from1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add = add i32 %11, %12
  %13 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 2
  %14 = load i32, i32* %to1, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add3 = add i32 %14, %15
  %16 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  %17 = load i32, i32* %from2, align 4
  %18 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 3
  %19 = load i32, i32* %to2, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %score = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 4
  %21 = load i32, i32* %score, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %add, i32 %add3, i32 %17, i32 %19, i32 %21)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %22 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from14 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 0
  %23 = load i32, i32* %from14, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add5 = add i32 %23, %24
  %25 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to16 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %25, i32 0, i32 2
  %26 = load i32, i32* %to16, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add7 = add i32 %26, %27
  %28 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from28 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %28, i32 0, i32 1
  %29 = load i32, i32* %from28, align 4
  %30 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to29 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %30, i32 0, i32 3
  %31 = load i32, i32* %to29, align 4
  %32 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %score10 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 4
  %33 = load i32, i32* %score10, align 4
  %34 = load i32, i32* %direction.addr, align 4
  %cmp11 = icmp sgt i32 %34, 0
  %cond = select i1 %cmp11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)
  %35 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %type12 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 6
  %bf.load13 = load i64, i64* %type12, align 4
  %bf.ashr14 = ashr i64 %bf.load13, 56
  %bf.cast15 = trunc i64 %bf.ashr14 to i32
  %idxprom16 = sext i32 %bf.cast15 to i64
  %36 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx17 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %36, i64 %idxprom16
  %fwd = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fwd, i32 0, i32 0
  %37 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %type18 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %37, i32 0, i32 6
  %bf.load19 = load i64, i64* %type18, align 4
  %bf.ashr20 = ashr i64 %bf.load19, 56
  %bf.cast21 = trunc i64 %bf.ashr20 to i32
  %idxprom22 = sext i32 %bf.cast21 to i64
  %38 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx23 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %38, i64 %idxprom22
  %fwd24 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx23, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %fwd24, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay25, i64 2
  %39 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %splScore = getelementptr inbounds %struct._exon_t, %struct._exon_t* %39, i32 0, i32 6
  %bf.load26 = load i64, i64* %splScore, align 4
  %bf.lshr = lshr i64 %bf.load26, 34
  %bf.clear = and i64 %bf.lshr, 4194303
  %bf.cast27 = trunc i64 %bf.clear to i32
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %add5, i32 %add7, i32 %29, i32 %31, i32 %33, i8* %cond, i8* %arraydecay, i8* %add.ptr, i32 %bf.cast27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %last, align 4
  %idxprom29 = zext i32 %41 to i64
  %42 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e30 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %42, i32 0, i32 0
  %exon31 = bitcast %union._collec_elt_t* %e30 to %struct._exon_t***
  %43 = load %struct._exon_t**, %struct._exon_t*** %exon31, align 8
  %arrayidx32 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %43, i64 %idxprom29
  %44 = load %struct._exon_t*, %struct._exon_t** %arrayidx32, align 8
  store %struct._exon_t* %44, %struct._exon_t** %cur, align 8
  %45 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from133 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %45, i32 0, i32 0
  %46 = load i32, i32* %from133, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add34 = add i32 %46, %47
  %48 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %48, i32 0, i32 2
  %49 = load i32, i32* %to135, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add36 = add i32 %49, %50
  %51 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %from237 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %51, i32 0, i32 1
  %52 = load i32, i32* %from237, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %to238 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 3
  %54 = load i32, i32* %to238, align 4
  %55 = load %struct._exon_t*, %struct._exon_t** %cur, align 8
  %score39 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 4
  %56 = load i32, i32* %score39, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %add34, i32 %add36, i32 %52, i32 %54, i32 %56)
  ret void
}

declare i32 @printf(i8*, ...) #3

declare void @Free_script(%struct._edit_script*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @search(%struct._hash_env_t* %he, i8* %s2, i32 %len2, i32 %K, %struct._collec_t* %mCol) #0 {
entry:
  %he.addr = alloca %struct._hash_env_t*, align 8
  %s2.addr = alloca i8*, align 8
  %len2.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %mCol.addr = alloca %struct._collec_t*, align 8
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %allocated = alloca i32*, align 8
  %diag_lev = alloca i32*, align 8
  %j = alloca i32, align 4
  %hn = alloca %struct._hash_node_t, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %key = alloca %struct._hash_node_t**, align 8
  %p = alloca i32, align 4
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %0, i32 0, i32 2
  %1 = load i32, i32* %len, align 4
  %2 = load i32, i32* %len2.addr, align 4
  %add = add i32 %1, %2
  %add1 = add i32 %add, 1
  %conv = zext i32 %add1 to i64
  %call = call i8* @xcalloc(i64 %conv, i64 4)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %allocated, align 8
  %4 = load i32*, i32** %allocated, align 8
  %5 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len3 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %5, i32 0, i32 2
  %6 = load i32, i32* %len3, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %diag_lev, align 8
  %7 = load i8*, i8** %s2.addr, align 8
  store i8* %7, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len2.addr, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end.52

while.body:                                       ; preds = %while.cond
  br label %restart

restart:                                          ; preds = %if.then.28, %if.then, %while.body
  %ecode = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  store i32 0, i32* %ecode, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %restart
  %10 = load i32, i32* %j, align 4
  %11 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %11, i32 0, i32 5
  %12 = load i32, i32* %W, align 4
  %cmp5 = icmp ult i32 %10, %12
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %len2.addr, align 4
  %cmp7 = icmp ult i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %17 = load i8, i8* %16, align 1
  %idxprom = zext i8 %17 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  store i32 %18, i32* %tmp, align 4
  %19 = load i32, i32* %i, align 4
  %add9 = add i32 %19, 1
  store i32 %add9, i32* %i, align 4
  %20 = load i32, i32* %tmp, align 4
  %cmp10 = icmp ugt i32 %20, 3
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %restart

if.end:                                           ; preds = %for.body
  %ecode12 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  %21 = load i32, i32* %ecode12, align 4
  %shl = shl i32 %21, 2
  %22 = load i32, i32* %tmp, align 4
  %add13 = add i32 %shl, %22
  %ecode14 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  store i32 %add13, i32* %ecode14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.51, %for.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %len2.addr, align 4
  %cmp16 = icmp ult i32 %24, %25
  br i1 %cmp16, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %while.cond.15
  %26 = load i8*, i8** %t, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %t, align 8
  %27 = load i8, i8* %26, align 1
  %idxprom22 = zext i8 %27 to i64
  %arrayidx23 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i32 0, i64 %idxprom22
  %28 = load i32, i32* %arrayidx23, align 4
  store i32 %28, i32* %tmp20, align 4
  %29 = load i32, i32* %i, align 4
  %add25 = add i32 %29, 1
  store i32 %add25, i32* %i, align 4
  %30 = load i32, i32* %tmp20, align 4
  %cmp26 = icmp ugt i32 %30, 3
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.body.18
  br label %restart

if.end.29:                                        ; preds = %while.body.18
  %ecode30 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  %31 = load i32, i32* %ecode30, align 4
  %32 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %mask = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %32, i32 0, i32 4
  %33 = load i32, i32* %mask, align 4
  %and = and i32 %31, %33
  %shl31 = shl i32 %and, 2
  %34 = load i32, i32* %tmp20, align 4
  %add32 = add i32 %shl31, %34
  %ecode33 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  store i32 %add32, i32* %ecode33, align 4
  %35 = bitcast %struct._hash_node_t* %hn to i8*
  %36 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %hashtab = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %36, i32 0, i32 0
  %37 = load i8**, i8*** %hashtab, align 8
  %ecode34 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %hn, i32 0, i32 0
  %38 = load i32, i32* %ecode34, align 4
  %and35 = and i32 %38, 524287
  %idx.ext36 = zext i32 %and35 to i64
  %add.ptr37 = getelementptr inbounds i8*, i8** %37, i64 %idx.ext36
  %call38 = call i8* @tfind(i8* %35, i8** %add.ptr37, i32 (i8*, i8*)* @hash_node_compare)
  %39 = bitcast i8* %call38 to %struct._hash_node_t**
  store %struct._hash_node_t** %39, %struct._hash_node_t*** %key, align 8
  %40 = load %struct._hash_node_t**, %struct._hash_node_t*** %key, align 8
  %cmp39 = icmp ne %struct._hash_node_t** %40, null
  br i1 %cmp39, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %if.end.29
  %41 = load %struct._hash_node_t**, %struct._hash_node_t*** %key, align 8
  %42 = load %struct._hash_node_t*, %struct._hash_node_t** %41, align 8
  %pos = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %42, i32 0, i32 1
  %43 = load i32, i32* %pos, align 4
  store i32 %43, i32* %p, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.47, %if.then.41
  %44 = load i32, i32* %p, align 4
  %cmp44 = icmp sge i32 %44, 0
  br i1 %cmp44, label %for.body.46, label %for.end.50

for.body.46:                                      ; preds = %for.cond.43
  %45 = load i32, i32* %p, align 4
  %46 = load i32, i32* %i, align 4
  %47 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %48 = load i8*, i8** %s2.addr, align 8
  %49 = load i32, i32* %len2.addr, align 4
  %50 = load i32, i32* %K.addr, align 4
  %51 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %52 = load i32*, i32** %diag_lev, align 8
  call void @extend_hit(i32 %45, i32 %46, %struct._hash_env_t* %47, i8* %48, i32 %49, i32 %50, %struct._collec_t* %51, i32* %52)
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.46
  %53 = load i32, i32* %p, align 4
  %idxprom48 = sext i32 %53 to i64
  %54 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %next_pos = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %54, i32 0, i32 3
  %55 = load i32*, i32** %next_pos, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom48
  %56 = load i32, i32* %arrayidx49, align 4
  store i32 %56, i32* %p, align 4
  br label %for.cond.43

for.end.50:                                       ; preds = %for.cond.43
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %if.end.29
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  br label %while.cond

while.end.52:                                     ; preds = %while.cond
  %57 = load i32*, i32** %allocated, align 8
  %58 = bitcast i32* %57 to i8*
  call void @free(i8* %58) #2
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @msp_rna_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ki = alloca %struct._exon_t*, align 8
  %kj = alloca %struct._exon_t*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._exon_t**
  %2 = load %struct._exon_t*, %struct._exon_t** %1, align 8
  store %struct._exon_t* %2, %struct._exon_t** %ki, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct._exon_t**
  %5 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  store %struct._exon_t* %5, %struct._exon_t** %kj, align 8
  %6 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %6, i32 0, i32 1
  %7 = load i32, i32* %from2, align 4
  %8 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from21 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %8, i32 0, i32 1
  %9 = load i32, i32* %from21, align 4
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from22 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 1
  %11 = load i32, i32* %from22, align 4
  %12 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 1
  %13 = load i32, i32* %from23, align 4
  %cmp4 = icmp ult i32 %11, %13
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 3
  %15 = load i32, i32* %to2, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %to27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 3
  %17 = load i32, i32* %to27, align 4
  %cmp8 = icmp ugt i32 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %to211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 3
  %19 = load i32, i32* %to211, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %to212 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 3
  %21 = load i32, i32* %to212, align 4
  %cmp13 = icmp ult i32 %19, %21
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @trim_small_repeated_msps(%struct._collec_t* %mCol) #0 {
entry:
  %mCol.addr = alloca %struct._collec_t*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct._exon_t*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.18, %if.then, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %while.body, label %while.end.37

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %m, align 8
  %7 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %7, i32 0, i32 3
  %8 = load i32, i32* %to2, align 4
  %9 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %9, i32 0, i32 1
  %10 = load i32, i32* %from2, align 4
  %sub = sub i32 %8, %10
  %cmp1 = icmp uge i32 %sub, 50
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %add = add i32 %11, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond

if.end:                                           ; preds = %while.body
  %12 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to22 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 3
  %13 = load i32, i32* %to22, align 4
  %add3 = add i32 %13, 5
  store i32 %add3, i32* %end, align 4
  %14 = load i32, i32* %i, align 4
  %add4 = add i32 %14, 1
  store i32 %add4, i32* %j, align 4
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.14, %if.end
  %15 = load i32, i32* %j, align 4
  %16 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb6 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %16, i32 0, i32 1
  %17 = load i32, i32* %nb6, align 4
  %cmp7 = icmp ult i32 %15, %17
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.5
  %18 = load i32, i32* %j, align 4
  %idxprom8 = zext i32 %18 to i64
  %19 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %19, i32 0, i32 0
  %exon10 = bitcast %union._collec_elt_t* %e9 to %struct._exon_t***
  %20 = load %struct._exon_t**, %struct._exon_t*** %exon10, align 8
  %arrayidx11 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %20, i64 %idxprom8
  %21 = load %struct._exon_t*, %struct._exon_t** %arrayidx11, align 8
  %to212 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %21, i32 0, i32 3
  %22 = load i32, i32* %to212, align 4
  %23 = load i32, i32* %end, align 4
  %cmp13 = icmp ule i32 %22, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.5
  %24 = phi i1 [ false, %while.cond.5 ], [ %cmp13, %land.rhs ]
  br i1 %24, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %land.end
  %25 = load i32, i32* %j, align 4
  %add15 = add i32 %25, 1
  store i32 %add15, i32* %j, align 4
  br label %while.cond.5

while.end:                                        ; preds = %land.end
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %sub16 = sub i32 %26, %27
  %cmp17 = icmp ult i32 %sub16, 20
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %while.end
  %28 = load i32, i32* %i, align 4
  %add19 = add i32 %28, 1
  store i32 %add19, i32* %i, align 4
  br label %while.cond

if.end.20:                                        ; preds = %while.end
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %j, align 4
  %cmp21 = icmp ult i32 %30, %31
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %k, align 4
  %idxprom22 = zext i32 %32 to i64
  %33 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e23 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %33, i32 0, i32 0
  %exon24 = bitcast %union._collec_elt_t* %e23 to %struct._exon_t***
  %34 = load %struct._exon_t**, %struct._exon_t*** %exon24, align 8
  %arrayidx25 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %34, i64 %idxprom22
  %35 = load %struct._exon_t*, %struct._exon_t** %arrayidx25, align 8
  %36 = bitcast %struct._exon_t* %35 to i8*
  call void @free(i8* %36) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %k, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e26 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %38, i32 0, i32 0
  %exon27 = bitcast %union._collec_elt_t* %e26 to %struct._exon_t***
  %39 = load %struct._exon_t**, %struct._exon_t*** %exon27, align 8
  %40 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %39, i64 %idx.ext
  %41 = bitcast %struct._exon_t** %add.ptr to i8*
  %42 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e28 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %42, i32 0, i32 0
  %exon29 = bitcast %union._collec_elt_t* %e28 to %struct._exon_t***
  %43 = load %struct._exon_t**, %struct._exon_t*** %exon29, align 8
  %44 = load i32, i32* %j, align 4
  %idx.ext30 = zext i32 %44 to i64
  %add.ptr31 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %43, i64 %idx.ext30
  %45 = bitcast %struct._exon_t** %add.ptr31 to i8*
  %46 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb32 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %46, i32 0, i32 1
  %47 = load i32, i32* %nb32, align 4
  %48 = load i32, i32* %j, align 4
  %sub33 = sub i32 %47, %48
  %conv = zext i32 %sub33 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %41, i8* %45, i64 %mul, i32 8, i1 false)
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %i, align 4
  %sub34 = sub i32 %49, %50
  %51 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %51, i32 0, i32 1
  %52 = load i32, i32* %nb35, align 4
  %sub36 = sub i32 %52, %sub34
  store i32 %sub36, i32* %nb35, align 4
  br label %while.cond

while.end.37:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @msp_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ki = alloca %struct._exon_t*, align 8
  %kj = alloca %struct._exon_t*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._exon_t**
  %2 = load %struct._exon_t*, %struct._exon_t** %1, align 8
  store %struct._exon_t* %2, %struct._exon_t** %ki, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct._exon_t**
  %5 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  store %struct._exon_t* %5, %struct._exon_t** %kj, align 8
  %6 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %6, i32 0, i32 0
  %7 = load i32, i32* %from1, align 4
  %8 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from11 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %8, i32 0, i32 0
  %9 = load i32, i32* %from11, align 4
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from12 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 0
  %11 = load i32, i32* %from12, align 4
  %12 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from13 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 0
  %13 = load i32, i32* %from13, align 4
  %cmp4 = icmp ult i32 %11, %13
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 1
  %15 = load i32, i32* %from2, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  %17 = load i32, i32* %from27, align 4
  %cmp8 = icmp ugt i32 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct._exon_t*, %struct._exon_t** %ki, align 8
  %from211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 1
  %19 = load i32, i32* %from211, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %kj, align 8
  %from212 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 1
  %21 = load i32, i32* %from212, align 4
  %cmp13 = icmp ult i32 %19, %21
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @combine_msps(%struct._collec_t* %mCol) #0 {
entry:
  %mCol.addr = alloca %struct._collec_t*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct._exon_t*, align 8
  %ovl = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca %struct._exon_t*, align 8
  %o = alloca i32, align 4
  %n37 = alloca %struct._exon_t*, align 8
  %nScore = alloca i32, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.111, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1, i32 0, i32 1
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %m, align 8
  store i32 0, i32* %ovl, align 4
  %7 = load i32, i32* %i, align 4
  %add = add i32 %7, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %j, align 4
  %9 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 1
  %10 = load i32, i32* %nb1, align 4
  %cmp2 = icmp ult i32 %8, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %j, align 4
  %idxprom3 = zext i32 %11 to i64
  %12 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e4 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %12, i32 0, i32 0
  %exon5 = bitcast %union._collec_elt_t* %e4 to %struct._exon_t***
  %13 = load %struct._exon_t**, %struct._exon_t*** %exon5, align 8
  %arrayidx6 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %13, i64 %idxprom3
  %14 = load %struct._exon_t*, %struct._exon_t** %arrayidx6, align 8
  store %struct._exon_t* %14, %struct._exon_t** %n, align 8
  store i32 0, i32* %o, align 4
  %15 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %15, i32 0, i32 1
  %16 = load i32, i32* %from2, align 4
  %17 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 3
  %18 = load i32, i32* %to2, align 4
  %add7 = add i32 %18, 1
  %cmp8 = icmp ule i32 %16, %add7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to29 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %19, i32 0, i32 3
  %20 = load i32, i32* %to29, align 4
  %21 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from210 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %21, i32 0, i32 1
  %22 = load i32, i32* %from210, align 4
  %sub = sub i32 %20, %22
  %add11 = add i32 %sub, 2
  store i32 %add11, i32* %ovl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %23, i32 0, i32 0
  %24 = load i32, i32* %from1, align 4
  %25 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from112 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %25, i32 0, i32 0
  %26 = load i32, i32* %from112, align 4
  %cmp13 = icmp ugt i32 %24, %26
  br i1 %cmp13, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %27 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from114 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 0
  %28 = load i32, i32* %from114, align 4
  %29 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %29, i32 0, i32 2
  %30 = load i32, i32* %to1, align 4
  %add15 = add i32 %30, 1
  %cmp16 = icmp ule i32 %28, %add15
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %land.lhs.true
  %31 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to118 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %31, i32 0, i32 2
  %32 = load i32, i32* %to118, align 4
  %33 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from119 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %33, i32 0, i32 0
  %34 = load i32, i32* %from119, align 4
  %sub20 = sub i32 %32, %34
  %add21 = add i32 %sub20, 2
  store i32 %add21, i32* %o, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %land.lhs.true, %if.end
  %35 = load i32, i32* %ovl, align 4
  %cmp23 = icmp eq i32 %35, 0
  %conv = zext i1 %cmp23 to i32
  %36 = load i32, i32* %o, align 4
  %cmp24 = icmp eq i32 %36, 0
  %conv25 = zext i1 %cmp24 to i32
  %cmp26 = icmp eq i32 %conv, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %if.end.22
  %37 = load i32, i32* %ovl, align 4
  %38 = load i32, i32* %o, align 4
  %sub29 = sub nsw i32 %37, %38
  %call = call i32 @abs(i32 %sub29) #7
  %cmp30 = icmp sle i32 %call, 10
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.28
  br label %for.end

if.end.33:                                        ; preds = %land.lhs.true.28, %if.end.22
  store i32 0, i32* %ovl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %39 = load i32, i32* %j, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %40 = load i32, i32* %ovl, align 4
  %cmp34 = icmp ne i32 %40, 0
  br i1 %cmp34, label %if.then.36, label %if.else.109

if.then.36:                                       ; preds = %for.end
  %41 = load i32, i32* %j, align 4
  %idxprom38 = zext i32 %41 to i64
  %42 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e39 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %42, i32 0, i32 0
  %exon40 = bitcast %union._collec_elt_t* %e39 to %struct._exon_t***
  %43 = load %struct._exon_t**, %struct._exon_t*** %exon40, align 8
  %arrayidx41 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %43, i64 %idxprom38
  %44 = load %struct._exon_t*, %struct._exon_t** %arrayidx41, align 8
  store %struct._exon_t* %44, %struct._exon_t** %n37, align 8
  %45 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %score = getelementptr inbounds %struct._exon_t, %struct._exon_t* %45, i32 0, i32 4
  %46 = load i32, i32* %score, align 4
  %47 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %score42 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %47, i32 0, i32 4
  %48 = load i32, i32* %score42, align 4
  %add43 = add i32 %46, %48
  store i32 %add43, i32* %nScore, align 4
  %49 = load i32, i32* %nScore, align 4
  %50 = load i32, i32* %ovl, align 4
  %add44 = add i32 %50, 1
  %cmp45 = icmp uge i32 %49, %add44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.36
  %51 = load i32, i32* %ovl, align 4
  %add48 = add i32 %51, 1
  %52 = load i32, i32* %nScore, align 4
  %sub49 = sub i32 %52, %add48
  store i32 %sub49, i32* %nScore, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.then.36
  store i32 0, i32* %nScore, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.47
  %53 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from151 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 0
  %54 = load i32, i32* %from151, align 4
  %55 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %from152 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 0
  %56 = load i32, i32* %from152, align 4
  %cmp53 = icmp ugt i32 %54, %56
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %57 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %from155 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %57, i32 0, i32 0
  %58 = load i32, i32* %from155, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %59 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from156 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %59, i32 0, i32 0
  %60 = load i32, i32* %from156, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %58, %cond.true ], [ %60, %cond.false ]
  %61 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from157 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %61, i32 0, i32 0
  store i32 %cond, i32* %from157, align 4
  %62 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from258 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %62, i32 0, i32 1
  %63 = load i32, i32* %from258, align 4
  %64 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %from259 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %64, i32 0, i32 1
  %65 = load i32, i32* %from259, align 4
  %cmp60 = icmp ugt i32 %63, %65
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end
  %66 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %from263 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %66, i32 0, i32 1
  %67 = load i32, i32* %from263, align 4
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.end
  %68 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from265 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %68, i32 0, i32 1
  %69 = load i32, i32* %from265, align 4
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.62
  %cond67 = phi i32 [ %67, %cond.true.62 ], [ %69, %cond.false.64 ]
  %70 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %from268 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %70, i32 0, i32 1
  store i32 %cond67, i32* %from268, align 4
  %71 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to169 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %71, i32 0, i32 2
  %72 = load i32, i32* %to169, align 4
  %73 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %to170 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %73, i32 0, i32 2
  %74 = load i32, i32* %to170, align 4
  %cmp71 = icmp ult i32 %72, %74
  br i1 %cmp71, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.end.66
  %75 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %to174 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %75, i32 0, i32 2
  %76 = load i32, i32* %to174, align 4
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.end.66
  %77 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to176 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %77, i32 0, i32 2
  %78 = load i32, i32* %to176, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i32 [ %76, %cond.true.73 ], [ %78, %cond.false.75 ]
  %79 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to179 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %79, i32 0, i32 2
  store i32 %cond78, i32* %to179, align 4
  %80 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to280 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %80, i32 0, i32 3
  %81 = load i32, i32* %to280, align 4
  %82 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %to281 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %82, i32 0, i32 3
  %83 = load i32, i32* %to281, align 4
  %cmp82 = icmp ult i32 %81, %83
  br i1 %cmp82, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %cond.end.77
  %84 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %to285 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %84, i32 0, i32 3
  %85 = load i32, i32* %to285, align 4
  br label %cond.end.88

cond.false.86:                                    ; preds = %cond.end.77
  %86 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to287 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %86, i32 0, i32 3
  %87 = load i32, i32* %to287, align 4
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.84
  %cond89 = phi i32 [ %85, %cond.true.84 ], [ %87, %cond.false.86 ]
  %88 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %to290 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %88, i32 0, i32 3
  store i32 %cond89, i32* %to290, align 4
  %89 = load i32, i32* %nScore, align 4
  %90 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %score91 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %90, i32 0, i32 4
  %91 = load i32, i32* %score91, align 4
  %cmp92 = icmp ugt i32 %89, %91
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %cond.end.88
  %92 = load i32, i32* %nScore, align 4
  %93 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %score95 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %93, i32 0, i32 4
  store i32 %92, i32* %score95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %cond.end.88
  %94 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb97 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %94, i32 0, i32 1
  %95 = load i32, i32* %nb97, align 4
  %sub98 = sub i32 %95, 1
  store i32 %sub98, i32* %nb97, align 4
  %96 = load %struct._exon_t*, %struct._exon_t** %n37, align 8
  %97 = bitcast %struct._exon_t* %96 to i8*
  call void @free(i8* %97) #2
  %98 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e99 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %98, i32 0, i32 0
  %exon100 = bitcast %union._collec_elt_t* %e99 to %struct._exon_t***
  %99 = load %struct._exon_t**, %struct._exon_t*** %exon100, align 8
  %100 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %100 to i64
  %add.ptr = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %99, i64 %idx.ext
  %101 = bitcast %struct._exon_t** %add.ptr to i8*
  %102 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e101 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %102, i32 0, i32 0
  %exon102 = bitcast %union._collec_elt_t* %e101 to %struct._exon_t***
  %103 = load %struct._exon_t**, %struct._exon_t*** %exon102, align 8
  %104 = load i32, i32* %j, align 4
  %idx.ext103 = zext i32 %104 to i64
  %add.ptr104 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %103, i64 %idx.ext103
  %add.ptr105 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %add.ptr104, i64 1
  %105 = bitcast %struct._exon_t** %add.ptr105 to i8*
  %106 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb106 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %106, i32 0, i32 1
  %107 = load i32, i32* %nb106, align 4
  %108 = load i32, i32* %j, align 4
  %sub107 = sub i32 %107, %108
  %conv108 = zext i32 %sub107 to i64
  %mul = mul i64 %conv108, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %101, i8* %105, i64 %mul, i32 8, i1 false)
  br label %if.end.111

if.else.109:                                      ; preds = %for.end
  %109 = load i32, i32* %i, align 4
  %add110 = add i32 %109, 1
  store i32 %add110, i32* %i, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.end.96
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @link_msps(%struct._collec_t* %mCol, i32 %start, i32 %stop) #0 {
entry:
  %retval = alloca i32, align 4
  %mCol.addr = alloca %struct._collec_t*, align 8
  %start.addr = alloca i32, align 4
  %stop.addr = alloca i32, align 4
  %best = alloca %struct.anon.0, align 4
  %i = alloca i32, align 4
  %m = alloca %struct._exon_t*, align 8
  %m5 = alloca %struct._exon_t*, align 8
  %j = alloca i32, align 4
  %n = alloca %struct._exon_t*, align 8
  %penalty = alloca i32, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %stop, i32* %stop.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %stop.addr, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.anon.0* %best to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 8, i32 4, i1 false)
  %3 = load i32, i32* %start.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %stop.addr, align 4
  %cmp1 = icmp ult i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %7, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %8 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %8, i64 %idxprom
  %9 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %9, %struct._exon_t** %m, align 8
  %10 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %Score = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 5
  store i32 0, i32* %Score, align 4
  %11 = load %struct._exon_t*, %struct._exon_t** %m, align 8
  %prev = getelementptr inbounds %struct._exon_t, %struct._exon_t* %11, i32 0, i32 6
  %bf.load = load i64, i64* %prev, align 4
  %bf.clear = and i64 %bf.load, -4294967293
  %bf.set = or i64 %bf.clear, 4294967292
  store i64 %bf.set, i64* %prev, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %start.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.52, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %stop.addr, align 4
  %cmp3 = icmp ult i32 %14, %15
  br i1 %cmp3, label %for.body.4, label %for.end.54

for.body.4:                                       ; preds = %for.cond.2
  %16 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %16 to i64
  %17 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e7 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %17, i32 0, i32 0
  %exon8 = bitcast %union._collec_elt_t* %e7 to %struct._exon_t***
  %18 = load %struct._exon_t**, %struct._exon_t*** %exon8, align 8
  %arrayidx9 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %18, i64 %idxprom6
  %19 = load %struct._exon_t*, %struct._exon_t** %arrayidx9, align 8
  store %struct._exon_t* %19, %struct._exon_t** %m5, align 8
  %20 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %score = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 4
  %21 = load i32, i32* %score, align 4
  %22 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score10 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 5
  %23 = load i32, i32* %Score10, align 4
  %add = add i32 %23, %21
  store i32 %add, i32* %Score10, align 4
  %24 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score11 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %24, i32 0, i32 5
  %25 = load i32, i32* %Score11, align 4
  %score12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %best, i32 0, i32 1
  %26 = load i32, i32* %score12, align 4
  %cmp13 = icmp ugt i32 %25, %26
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.body.4
  %27 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score15 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 5
  %28 = load i32, i32* %Score15, align 4
  %score16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %best, i32 0, i32 1
  store i32 %28, i32* %score16, align 4
  %29 = load i32, i32* %i, align 4
  %elt = getelementptr inbounds %struct.anon.0, %struct.anon.0* %best, i32 0, i32 0
  store i32 %29, i32* %elt, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %for.body.4
  %30 = load i32, i32* %i, align 4
  %add18 = add i32 %30, 1
  store i32 %add18, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.49, %if.end.17
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %stop.addr, align 4
  %cmp20 = icmp ult i32 %31, %32
  br i1 %cmp20, label %for.body.21, label %for.end.51

for.body.21:                                      ; preds = %for.cond.19
  %33 = load i32, i32* %j, align 4
  %idxprom22 = zext i32 %33 to i64
  %34 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e23 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %34, i32 0, i32 0
  %exon24 = bitcast %union._collec_elt_t* %e23 to %struct._exon_t***
  %35 = load %struct._exon_t**, %struct._exon_t*** %exon24, align 8
  %arrayidx25 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %35, i64 %idxprom22
  %36 = load %struct._exon_t*, %struct._exon_t** %arrayidx25, align 8
  store %struct._exon_t* %36, %struct._exon_t** %n, align 8
  %37 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %38 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %call = call i32 @lies_after_p(%struct._exon_t* %37, %struct._exon_t* %38)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body.21
  %39 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score26 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %39, i32 0, i32 5
  %40 = load i32, i32* %Score26, align 4
  %41 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %Score27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %41, i32 0, i32 5
  %42 = load i32, i32* %Score27, align 4
  %cmp28 = icmp uge i32 %40, %42
  br i1 %cmp28, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %land.lhs.true
  %43 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %43, i32 0, i32 0
  %44 = load i32, i32* %from1, align 4
  %45 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %from130 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %45, i32 0, i32 0
  %46 = load i32, i32* %from130, align 4
  %sub = sub i32 %44, %46
  %call31 = call i32 @abs(i32 %sub) #7
  %shr = ashr i32 %call31, 15
  store i32 %shr, i32* %penalty, align 4
  %47 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %47, i32 0, i32 1
  %48 = load i32, i32* %from2, align 4
  %49 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %from232 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %49, i32 0, i32 1
  %50 = load i32, i32* %from232, align 4
  %sub33 = sub i32 %48, %50
  %call34 = call i32 @abs(i32 %sub33) #7
  %shr35 = ashr i32 %call34, 15
  %51 = load i32, i32* %penalty, align 4
  %add36 = add i32 %51, %shr35
  store i32 %add36, i32* %penalty, align 4
  %52 = load i32, i32* %penalty, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score37 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 5
  %54 = load i32, i32* %Score37, align 4
  %cmp38 = icmp ult i32 %52, %54
  br i1 %cmp38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.then.29
  %55 = load %struct._exon_t*, %struct._exon_t** %m5, align 8
  %Score40 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 5
  %56 = load i32, i32* %Score40, align 4
  %57 = load i32, i32* %penalty, align 4
  %sub41 = sub i32 %56, %57
  %58 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %Score42 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %58, i32 0, i32 5
  store i32 %sub41, i32* %Score42, align 4
  %59 = load i32, i32* %i, align 4
  %60 = load %struct._exon_t*, %struct._exon_t** %n, align 8
  %prev43 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %60, i32 0, i32 6
  %61 = zext i32 %59 to i64
  %bf.load44 = load i64, i64* %prev43, align 4
  %bf.value = and i64 %61, 1073741823
  %bf.shl = shl i64 %bf.value, 2
  %bf.clear45 = and i64 %bf.load44, -4294967293
  %bf.set46 = or i64 %bf.clear45, %bf.shl
  store i64 %bf.set46, i64* %prev43, align 4
  %bf.result.shl = shl i64 %bf.value, 34
  %bf.result.ashr = ashr i64 %bf.result.shl, 34
  %bf.result.cast = trunc i64 %bf.result.ashr to i32
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.39, %if.then.29
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %for.body.21
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %62 = load i32, i32* %j, align 4
  %inc50 = add i32 %62, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.19

for.end.51:                                       ; preds = %for.cond.19
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %63 = load i32, i32* %i, align 4
  %inc53 = add i32 %63, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.2

for.end.54:                                       ; preds = %for.cond.2
  %elt55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %best, i32 0, i32 0
  %64 = load i32, i32* %elt55, align 4
  store i32 %64, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @add_col_elt(%struct._collec_t* %c, i8* %elt) #0 {
entry:
  %c.addr = alloca %struct._collec_t*, align 8
  %elt.addr = alloca i8*, align 8
  store %struct._collec_t* %c, %struct._collec_t** %c.addr, align 8
  store i8* %elt, i8** %elt.addr, align 8
  %0 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %size = getelementptr inbounds %struct._collec_t, %struct._collec_t* %0, i32 0, i32 2
  %1 = load i32, i32* %size, align 4
  %2 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %2, i32 0, i32 1
  %3 = load i32, i32* %nb, align 4
  %cmp = icmp ule i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %size1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 2
  %5 = load i32, i32* %size1, align 4
  %add = add i32 %5, 5
  store i32 %add, i32* %size1, align 4
  %6 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %6, i32 0, i32 0
  %elt2 = bitcast %union._collec_elt_t* %e to i8***
  %7 = load i8**, i8*** %elt2, align 8
  %8 = bitcast i8** %7 to i8*
  %9 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %size3 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 2
  %10 = load i32, i32* %size3, align 4
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xrealloc(i8* %8, i64 %mul)
  %11 = bitcast i8* %call to i8**
  %12 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %e4 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %12, i32 0, i32 0
  %elt5 = bitcast %union._collec_elt_t* %e4 to i8***
  store i8** %11, i8*** %elt5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** %elt.addr, align 8
  %14 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %nb6 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %14, i32 0, i32 1
  %15 = load i32, i32* %nb6, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %nb6, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._collec_t*, %struct._collec_t** %c.addr, align 8
  %e7 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %16, i32 0, i32 0
  %elt8 = bitcast %union._collec_elt_t* %e7 to i8***
  %17 = load i8**, i8*** %elt8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  store i8* %13, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @msp2exons(%struct._exon_t** %msp, i32 %last_msp, %struct._collec_t* %eCol, i32 %swapped) #0 {
entry:
  %msp.addr = alloca %struct._exon_t**, align 8
  %last_msp.addr = alloca i32, align 4
  %eCol.addr = alloca %struct._collec_t*, align 8
  %swapped.addr = alloca i32, align 4
  %mp = alloca %struct._exon_t*, align 8
  %next = alloca %struct._exon_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %e58 = alloca %struct._exon_t*, align 8
  store %struct._exon_t** %msp, %struct._exon_t*** %msp.addr, align 8
  store i32 %last_msp, i32* %last_msp.addr, align 4
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store i32 %swapped, i32* %swapped.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %cond.end.43, %entry
  %0 = load i32, i32* %last_msp.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %last_msp.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._exon_t**, %struct._exon_t*** %msp.addr, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %2, i64 %idxprom
  %3 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %3, %struct._exon_t** %mp, align 8
  %4 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 1
  %5 = load i32, i32* %nb, align 4
  %cmp1 = icmp ugt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end.46

if.then:                                          ; preds = %while.body
  %6 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb2 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %6, i32 0, i32 1
  %7 = load i32, i32* %nb2, align 4
  %sub = sub i32 %7, 1
  %idxprom3 = zext i32 %sub to i64
  %8 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %9 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx4 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %9, i64 %idxprom3
  %10 = load %struct._exon_t*, %struct._exon_t** %arrayidx4, align 8
  store %struct._exon_t* %10, %struct._exon_t** %next, align 8
  %11 = load i32, i32* %swapped.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 0
  %13 = load i32, i32* %from1, align 4
  %14 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 2
  %15 = load i32, i32* %to1, align 4
  %add = add i32 %15, 30
  %cmp5 = icmp ult i32 %13, %add
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %16 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  %17 = load i32, i32* %from2, align 4
  %18 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 3
  %19 = load i32, i32* %to2, align 4
  %sub7 = sub i32 %19, 1
  %cmp8 = icmp ugt i32 %17, %sub7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.6
  %20 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to110 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 2
  %21 = load i32, i32* %to110, align 4
  %22 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to111 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 2
  %23 = load i32, i32* %to111, align 4
  %cmp12 = icmp ult i32 %21, %23
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %24 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to113 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %24, i32 0, i32 2
  %25 = load i32, i32* %to113, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %26 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to114 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 2
  %27 = load i32, i32* %to114, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %27, %cond.false ]
  %28 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to115 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %28, i32 0, i32 2
  store i32 %cond, i32* %to115, align 4
  %29 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to216 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %29, i32 0, i32 3
  %30 = load i32, i32* %to216, align 4
  %31 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to217 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %31, i32 0, i32 3
  %32 = load i32, i32* %to217, align 4
  %cmp18 = icmp ult i32 %30, %32
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %33 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %to220 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %33, i32 0, i32 3
  %34 = load i32, i32* %to220, align 4
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end
  %35 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to222 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 3
  %36 = load i32, i32* %to222, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi i32 [ %34, %cond.true.19 ], [ %36, %cond.false.21 ]
  %37 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %to225 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %37, i32 0, i32 3
  store i32 %cond24, i32* %to225, align 4
  %38 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from126 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %38, i32 0, i32 0
  %39 = load i32, i32* %from126, align 4
  %40 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %from127 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %40, i32 0, i32 0
  %41 = load i32, i32* %from127, align 4
  %cmp28 = icmp ugt i32 %39, %41
  br i1 %cmp28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.end.23
  %42 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %from130 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 0
  %43 = load i32, i32* %from130, align 4
  br label %cond.end.33

cond.false.31:                                    ; preds = %cond.end.23
  %44 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from132 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 0
  %45 = load i32, i32* %from132, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.29
  %cond34 = phi i32 [ %43, %cond.true.29 ], [ %45, %cond.false.31 ]
  %46 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 0
  store i32 %cond34, i32* %from135, align 4
  %47 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from236 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %47, i32 0, i32 1
  %48 = load i32, i32* %from236, align 4
  %49 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %from237 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %49, i32 0, i32 1
  %50 = load i32, i32* %from237, align 4
  %cmp38 = icmp ugt i32 %48, %50
  br i1 %cmp38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.33
  %51 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %from240 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %51, i32 0, i32 1
  %52 = load i32, i32* %from240, align 4
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.end.33
  %53 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from242 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 1
  %54 = load i32, i32* %from242, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.39
  %cond44 = phi i32 [ %52, %cond.true.39 ], [ %54, %cond.false.41 ]
  %55 = load %struct._exon_t*, %struct._exon_t** %next, align 8
  %from245 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 1
  store i32 %cond44, i32* %from245, align 4
  %56 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %prev = getelementptr inbounds %struct._exon_t, %struct._exon_t* %56, i32 0, i32 6
  %bf.load = load i64, i64* %prev, align 4
  %bf.shl = shl i64 %bf.load, 32
  %bf.ashr = ashr i64 %bf.shl, 34
  %bf.cast = trunc i64 %bf.ashr to i32
  store i32 %bf.cast, i32* %last_msp.addr, align 4
  %57 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %58 = bitcast %struct._exon_t* %57 to i8*
  call void @free(i8* %58) #2
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %if.then
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %while.body
  %59 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %60 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %61 = bitcast %struct._exon_t* %60 to i8*
  call void @add_col_elt(%struct._collec_t* %59, i8* %61)
  %62 = load %struct._exon_t*, %struct._exon_t** %mp, align 8
  %prev47 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %62, i32 0, i32 6
  %bf.load48 = load i64, i64* %prev47, align 4
  %bf.shl49 = shl i64 %bf.load48, 32
  %bf.ashr50 = ashr i64 %bf.shl49, 34
  %bf.cast51 = trunc i64 %bf.ashr50 to i32
  store i32 %bf.cast51, i32* %last_msp.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %63, i32 0, i32 1
  %64 = load i32, i32* %nb52, align 4
  %cmp53 = icmp ugt i32 %64, 1
  br i1 %cmp53, label %if.then.54, label %if.end.75

if.then.54:                                       ; preds = %while.end
  store i32 0, i32* %i, align 4
  %65 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb55 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %65, i32 0, i32 1
  %66 = load i32, i32* %nb55, align 4
  %sub56 = sub i32 %66, 1
  store i32 %sub56, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.54
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %i, align 4
  %cmp57 = icmp ugt i32 %67, %68
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %69 to i64
  %70 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e60 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %70, i32 0, i32 0
  %exon61 = bitcast %union._collec_elt_t* %e60 to %struct._exon_t***
  %71 = load %struct._exon_t**, %struct._exon_t*** %exon61, align 8
  %arrayidx62 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %71, i64 %idxprom59
  %72 = load %struct._exon_t*, %struct._exon_t** %arrayidx62, align 8
  store %struct._exon_t* %72, %struct._exon_t** %e58, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom63 = zext i32 %73 to i64
  %74 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e64 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %74, i32 0, i32 0
  %exon65 = bitcast %union._collec_elt_t* %e64 to %struct._exon_t***
  %75 = load %struct._exon_t**, %struct._exon_t*** %exon65, align 8
  %arrayidx66 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %75, i64 %idxprom63
  %76 = load %struct._exon_t*, %struct._exon_t** %arrayidx66, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom67 = zext i32 %77 to i64
  %78 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e68 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %78, i32 0, i32 0
  %exon69 = bitcast %union._collec_elt_t* %e68 to %struct._exon_t***
  %79 = load %struct._exon_t**, %struct._exon_t*** %exon69, align 8
  %arrayidx70 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %79, i64 %idxprom67
  store %struct._exon_t* %76, %struct._exon_t** %arrayidx70, align 8
  %80 = load %struct._exon_t*, %struct._exon_t** %e58, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom71 = zext i32 %81 to i64
  %82 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e72 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %82, i32 0, i32 0
  %exon73 = bitcast %union._collec_elt_t* %e72 to %struct._exon_t***
  %83 = load %struct._exon_t**, %struct._exon_t*** %exon73, align 8
  %arrayidx74 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %83, i64 %idxprom71
  store %struct._exon_t* %80, %struct._exon_t** %arrayidx74, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %i, align 4
  %inc = add i32 %84, 1
  store i32 %inc, i32* %i, align 4
  %85 = load i32, i32* %j, align 4
  %dec = add i32 %85, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.75

if.end.75:                                        ; preds = %for.end, %while.end
  ret void
}

declare i8* @tfind(i8*, i8**, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @hash_node_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ha = alloca %struct._hash_node_t*, align 8
  %hb = alloca %struct._hash_node_t*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._hash_node_t*
  store %struct._hash_node_t* %1, %struct._hash_node_t** %ha, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct._hash_node_t*
  store %struct._hash_node_t* %3, %struct._hash_node_t** %hb, align 8
  %4 = load %struct._hash_node_t*, %struct._hash_node_t** %ha, align 8
  %ecode = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %4, i32 0, i32 0
  %5 = load i32, i32* %ecode, align 4
  %6 = load %struct._hash_node_t*, %struct._hash_node_t** %hb, align 8
  %ecode1 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %6, i32 0, i32 0
  %7 = load i32, i32* %ecode1, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._hash_node_t*, %struct._hash_node_t** %ha, align 8
  %ecode2 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %8, i32 0, i32 0
  %9 = load i32, i32* %ecode2, align 4
  %10 = load %struct._hash_node_t*, %struct._hash_node_t** %hb, align 8
  %ecode3 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %10, i32 0, i32 0
  %11 = load i32, i32* %ecode3, align 4
  %cmp4 = icmp ugt i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @extend_hit(i32 %pos1, i32 %pos2, %struct._hash_env_t* %he, i8* %s2, i32 %len2, i32 %K, %struct._collec_t* %mCol, i32* %diag_lev) #0 {
entry:
  %pos1.addr = alloca i32, align 4
  %pos2.addr = alloca i32, align 4
  %he.addr = alloca %struct._hash_env_t*, align 8
  %s2.addr = alloca i8*, align 8
  %len2.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %mCol.addr = alloca %struct._collec_t*, align 8
  %diag_lev.addr = alloca i32*, align 8
  %beg2 = alloca i8*, align 8
  %beg1 = alloca i8*, align 8
  %end1 = alloca i8*, align 8
  %q = alloca i8*, align 8
  %s = alloca i8*, align 8
  %right_sum = alloca i32, align 4
  %left_sum = alloca i32, align 4
  %sum = alloca i32, align 4
  %diag = alloca i32, align 4
  %score = alloca i32, align 4
  store i32 %pos1, i32* %pos1.addr, align 4
  store i32 %pos2, i32* %pos2.addr, align 4
  store %struct._hash_env_t* %he, %struct._hash_env_t** %he.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store %struct._collec_t* %mCol, %struct._collec_t** %mCol.addr, align 8
  store i32* %diag_lev, i32** %diag_lev.addr, align 8
  %0 = load i32, i32* %pos2.addr, align 4
  %1 = load i32, i32* %pos1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %diag, align 4
  %2 = load i32, i32* %diag, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %diag_lev.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %pos1.addr, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %left_sum, align 4
  %6 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %6, i32 0, i32 1
  %7 = load i8*, i8** %seq, align 8
  %8 = load i32, i32* %pos1.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i32, i32* %pos2.addr, align 4
  %idx.ext1 = sext i32 %10 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %idx.ext1
  store i8* %add.ptr2, i8** %s, align 8
  %11 = load i8*, i8** %q, align 8
  store i8* %11, i8** %end1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8*, i8** %s2.addr, align 8
  %14 = load i32, i32* %len2.addr, align 4
  %idx.ext3 = zext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 %idx.ext3
  %cmp5 = icmp ult i8* %12, %add.ptr4
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %15 = load i8*, i8** %q, align 8
  %16 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq6 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %16, i32 0, i32 1
  %17 = load i8*, i8** %seq6, align 8
  %18 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %len = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %18, i32 0, i32 2
  %19 = load i32, i32* %len, align 4
  %idx.ext7 = zext i32 %19 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %17, i64 %idx.ext7
  %cmp9 = icmp ult i8* %15, %add.ptr8
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load i32, i32* %sum, align 4
  %21 = load i32, i32* %left_sum, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  %sub10 = sub nsw i32 %21, %22
  %cmp11 = icmp sge i32 %20, %sub10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv = zext i8 %25 to i32
  %26 = load i8*, i8** %q, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr12, i8** %q, align 8
  %27 = load i8, i8* %26, align 1
  %conv13 = zext i8 %27 to i32
  %cmp14 = icmp eq i32 %conv, %conv13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %28 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %29 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %30 = load i32, i32* %sum, align 4
  %add = add nsw i32 %30, %cond
  store i32 %add, i32* %sum, align 4
  %31 = load i32, i32* %sum, align 4
  %32 = load i32, i32* %left_sum, align 4
  %cmp16 = icmp sgt i32 %31, %32
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end
  %33 = load i32, i32* %sum, align 4
  store i32 %33, i32* %left_sum, align 4
  %34 = load i8*, i8** %q, align 8
  store i8* %34, i8** %end1, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %cond.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %right_sum, align 4
  %35 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq20 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %35, i32 0, i32 1
  %36 = load i8*, i8** %seq20, align 8
  %37 = load i32, i32* %pos1.addr, align 4
  %idx.ext21 = sext i32 %37 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %36, i64 %idx.ext21
  %38 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %38, i32 0, i32 5
  %39 = load i32, i32* %W, align 4
  %idx.ext23 = zext i32 %39 to i64
  %idx.neg = sub i64 0, %idx.ext23
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr22, i64 %idx.neg
  store i8* %add.ptr24, i8** %q, align 8
  store i8* %add.ptr24, i8** %beg1, align 8
  %40 = load i8*, i8** %s2.addr, align 8
  %41 = load i32, i32* %pos2.addr, align 4
  %idx.ext25 = sext i32 %41 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %40, i64 %idx.ext25
  %42 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W27 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %42, i32 0, i32 5
  %43 = load i32, i32* %W27, align 4
  %idx.ext28 = zext i32 %43 to i64
  %idx.neg29 = sub i64 0, %idx.ext28
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr26, i64 %idx.neg29
  store i8* %add.ptr30, i8** %s, align 8
  store i8* %add.ptr30, i8** %beg2, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %if.end.58, %while.end
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %s2.addr, align 8
  %cmp32 = icmp ugt i8* %44, %45
  br i1 %cmp32, label %land.lhs.true.34, label %land.end.42

land.lhs.true.34:                                 ; preds = %while.cond.31
  %46 = load i8*, i8** %q, align 8
  %47 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq35 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %47, i32 0, i32 1
  %48 = load i8*, i8** %seq35, align 8
  %cmp36 = icmp ugt i8* %46, %48
  br i1 %cmp36, label %land.rhs.38, label %land.end.42

land.rhs.38:                                      ; preds = %land.lhs.true.34
  %49 = load i32, i32* %sum, align 4
  %50 = load i32, i32* %right_sum, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  %sub39 = sub nsw i32 %50, %51
  %cmp40 = icmp sge i32 %49, %sub39
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.38, %land.lhs.true.34, %while.cond.31
  %52 = phi i1 [ false, %land.lhs.true.34 ], [ false, %while.cond.31 ], [ %cmp40, %land.rhs.38 ]
  br i1 %52, label %while.body.43, label %while.end.59

while.body.43:                                    ; preds = %land.end.42
  %53 = load i8*, i8** %s, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr44, i8** %s, align 8
  %54 = load i8, i8* %incdec.ptr44, align 1
  %conv45 = zext i8 %54 to i32
  %55 = load i8*, i8** %q, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr46, i8** %q, align 8
  %56 = load i8, i8* %incdec.ptr46, align 1
  %conv47 = zext i8 %56 to i32
  %cmp48 = icmp eq i32 %conv45, %conv47
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %while.body.43
  %57 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %while.body.43
  %58 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %57, %cond.true.50 ], [ %58, %cond.false.51 ]
  %59 = load i32, i32* %sum, align 4
  %add54 = add nsw i32 %59, %cond53
  store i32 %add54, i32* %sum, align 4
  %60 = load i32, i32* %sum, align 4
  %61 = load i32, i32* %right_sum, align 4
  %cmp55 = icmp sgt i32 %60, %61
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %cond.end.52
  %62 = load i32, i32* %sum, align 4
  store i32 %62, i32* %right_sum, align 4
  %63 = load i8*, i8** %s, align 8
  store i8* %63, i8** %beg2, align 8
  %64 = load i8*, i8** %q, align 8
  store i8* %64, i8** %beg1, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %cond.end.52
  br label %while.cond.31

while.end.59:                                     ; preds = %land.end.42
  %65 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W60 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %65, i32 0, i32 5
  %66 = load i32, i32* %W60, align 4
  %67 = load i32, i32* %left_sum, align 4
  %add61 = add i32 %66, %67
  %68 = load i32, i32* %right_sum, align 4
  %add62 = add i32 %add61, %68
  store i32 %add62, i32* %score, align 4
  %69 = load i32, i32* %score, align 4
  %70 = load i32, i32* %K.addr, align 4
  %cmp63 = icmp sge i32 %69, %70
  br i1 %cmp63, label %if.then.65, label %if.end.91

if.then.65:                                       ; preds = %while.end.59
  %71 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %72 = load i8*, i8** %beg1, align 8
  %73 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq66 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %73, i32 0, i32 1
  %74 = load i8*, i8** %seq66, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv67 = trunc i64 %sub.ptr.sub to i32
  %75 = load i8*, i8** %beg2, align 8
  %76 = load i8*, i8** %s2.addr, align 8
  %sub.ptr.lhs.cast68 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %76 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %conv71 = trunc i64 %sub.ptr.sub70 to i32
  %77 = load i8*, i8** %end1, align 8
  %78 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq72 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %78, i32 0, i32 1
  %79 = load i8*, i8** %seq72, align 8
  %sub.ptr.lhs.cast73 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %79 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %sub76 = sub nsw i64 %sub.ptr.sub75, 1
  %conv77 = trunc i64 %sub76 to i32
  %80 = load i8*, i8** %beg2, align 8
  %81 = load i8*, i8** %s2.addr, align 8
  %sub.ptr.lhs.cast78 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast79 = ptrtoint i8* %81 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %82 = load i8*, i8** %end1, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %82, i64 %sub.ptr.sub80
  %83 = load i8*, i8** %beg1, align 8
  %sub.ptr.lhs.cast82 = ptrtoint i8* %add.ptr81 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %83 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %sub85 = sub nsw i64 %sub.ptr.sub84, 1
  %conv86 = trunc i64 %sub85 to i32
  %call = call %struct._exon_t* @new_exon(i32 %conv67, i32 %conv71, i32 %conv77, i32 %conv86)
  %84 = bitcast %struct._exon_t* %call to i8*
  call void @add_col_elt(%struct._collec_t* %71, i8* %84)
  %85 = load i32, i32* %score, align 4
  %86 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %86, i32 0, i32 1
  %87 = load i32, i32* %nb, align 4
  %sub87 = sub i32 %87, 1
  %idxprom88 = zext i32 %sub87 to i64
  %88 = load %struct._collec_t*, %struct._collec_t** %mCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %88, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %89 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx89 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %89, i64 %idxprom88
  %90 = load %struct._exon_t*, %struct._exon_t** %arrayidx89, align 8
  %score90 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %90, i32 0, i32 4
  store i32 %85, i32* %score90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.65, %while.end.59
  %91 = load i8*, i8** %end1, align 8
  %92 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %seq92 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %92, i32 0, i32 1
  %93 = load i8*, i8** %seq92, align 8
  %sub.ptr.lhs.cast93 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast94 = ptrtoint i8* %93 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %94 = load %struct._hash_env_t*, %struct._hash_env_t** %he.addr, align 8
  %W96 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %94, i32 0, i32 5
  %95 = load i32, i32* %W96, align 4
  %conv97 = zext i32 %95 to i64
  %add98 = add nsw i64 %sub.ptr.sub95, %conv97
  %conv99 = trunc i64 %add98 to i32
  %96 = load i32, i32* %diag, align 4
  %idxprom100 = sext i32 %96 to i64
  %97 = load i32*, i32** %diag_lev.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %97, i64 %idxprom100
  store i32 %conv99, i32* %arrayidx101, align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._exon_t* @new_exon(i32 %f1, i32 %f2, i32 %t1, i32 %t2) #0 {
entry:
  %f1.addr = alloca i32, align 4
  %f2.addr = alloca i32, align 4
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %e = alloca %struct._exon_t*, align 8
  store i32 %f1, i32* %f1.addr, align 4
  store i32 %f2, i32* %f2.addr, align 4
  store i32 %t1, i32* %t1.addr, align 4
  store i32 %t2, i32* %t2.addr, align 4
  %call = call i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct._exon_t*
  store %struct._exon_t* %0, %struct._exon_t** %e, align 8
  %1 = load i32, i32* %f1.addr, align 4
  %2 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %2, i32 0, i32 0
  store i32 %1, i32* %from1, align 4
  %3 = load i32, i32* %f2.addr, align 4
  %4 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %4, i32 0, i32 1
  store i32 %3, i32* %from2, align 4
  %5 = load i32, i32* %t1.addr, align 4
  %6 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %6, i32 0, i32 2
  store i32 %5, i32* %to1, align 4
  %7 = load i32, i32* %t2.addr, align 4
  %8 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %8, i32 0, i32 3
  store i32 %7, i32* %to2, align 4
  %9 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  ret %struct._exon_t* %9
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lies_after_p(%struct._exon_t* %a, %struct._exon_t* %b) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._exon_t*, align 8
  %b.addr = alloca %struct._exon_t*, align 8
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p131 = alloca i32, align 4
  %p232 = alloca i32, align 4
  %p333 = alloca i32, align 4
  store %struct._exon_t* %a, %struct._exon_t** %a.addr, align 8
  store %struct._exon_t* %b, %struct._exon_t** %b.addr, align 8
  %0 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %0, i32 0, i32 0
  %1 = load i32, i32* %from1, align 4
  %2 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %2, i32 0, i32 2
  %3 = load i32, i32* %to1, align 4
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %4, i32 0, i32 1
  %5 = load i32, i32* %from2, align 4
  %6 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %6, i32 0, i32 3
  %7 = load i32, i32* %to2, align 4
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %8, i32 0, i32 1
  %9 = load i32, i32* %from23, align 4
  %10 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %from24 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 1
  %11 = load i32, i32* %from24, align 4
  %cmp5 = icmp ult i32 %9, %11
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %to26 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 3
  %13 = load i32, i32* %to26, align 4
  %14 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 3
  %15 = load i32, i32* %to27, align 4
  %cmp8 = icmp ult i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %16 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  %17 = load i32, i32* %from211, align 4
  %18 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %from212 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 1
  %19 = load i32, i32* %from212, align 4
  %sub = sub i32 %17, %19
  store i32 %sub, i32* %p1, align 4
  %20 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to213 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 3
  %21 = load i32, i32* %to213, align 4
  %22 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from214 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 1
  %23 = load i32, i32* %from214, align 4
  %sub15 = sub i32 %21, %23
  store i32 %sub15, i32* %p2, align 4
  %24 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %to216 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %24, i32 0, i32 3
  %25 = load i32, i32* %to216, align 4
  %26 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to217 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 3
  %27 = load i32, i32* %to217, align 4
  %sub18 = sub i32 %25, %27
  store i32 %sub18, i32* %p3, align 4
  %28 = load i32, i32* %p1, align 4
  %29 = load i32, i32* %p2, align 4
  %cmp19 = icmp ugt i32 %28, %29
  br i1 %cmp19, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.10
  %30 = load i32, i32* %p3, align 4
  %31 = load i32, i32* %p2, align 4
  %cmp20 = icmp ugt i32 %30, %31
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %32 = load i32, i32* %p1, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %cmp22 = icmp ugt i32 %32, %33
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.26

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %34 = load i32, i32* %p3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %cmp24 = icmp ugt i32 %34, %35
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true, %if.end.10
  br label %if.end.62

if.else:                                          ; preds = %entry
  %36 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from227 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %36, i32 0, i32 1
  %37 = load i32, i32* %from227, align 4
  %38 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to228 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %38, i32 0, i32 3
  %39 = load i32, i32* %to228, align 4
  %cmp29 = icmp ugt i32 %37, %39
  br i1 %cmp29, label %if.then.30, label %if.end.61

if.then.30:                                       ; preds = %if.else
  %40 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from134 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %40, i32 0, i32 0
  %41 = load i32, i32* %from134, align 4
  %42 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %from135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 0
  %43 = load i32, i32* %from135, align 4
  %cmp36 = icmp ult i32 %41, %43
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.then.30
  %44 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %to138 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 2
  %45 = load i32, i32* %to138, align 4
  %46 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to139 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 2
  %47 = load i32, i32* %to139, align 4
  %cmp40 = icmp ult i32 %45, %47
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.37, %if.then.30
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.37
  %48 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from143 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %48, i32 0, i32 0
  %49 = load i32, i32* %from143, align 4
  %50 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %from144 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 0
  %51 = load i32, i32* %from144, align 4
  %sub45 = sub i32 %49, %51
  store i32 %sub45, i32* %p131, align 4
  %52 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to146 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %52, i32 0, i32 2
  %53 = load i32, i32* %to146, align 4
  %54 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %from147 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %54, i32 0, i32 0
  %55 = load i32, i32* %from147, align 4
  %sub48 = sub i32 %53, %55
  store i32 %sub48, i32* %p232, align 4
  %56 = load %struct._exon_t*, %struct._exon_t** %b.addr, align 8
  %to149 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %56, i32 0, i32 2
  %57 = load i32, i32* %to149, align 4
  %58 = load %struct._exon_t*, %struct._exon_t** %a.addr, align 8
  %to150 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %58, i32 0, i32 2
  %59 = load i32, i32* %to150, align 4
  %sub51 = sub i32 %57, %59
  store i32 %sub51, i32* %p333, align 4
  %60 = load i32, i32* %p131, align 4
  %61 = load i32, i32* %p232, align 4
  %cmp52 = icmp ugt i32 %60, %61
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %if.end.42
  %62 = load i32, i32* %p333, align 4
  %63 = load i32, i32* %p232, align 4
  %cmp54 = icmp ugt i32 %62, %63
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.60

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %64 = load i32, i32* %p131, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %cmp56 = icmp ugt i32 %64, %65
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.60

land.lhs.true.57:                                 ; preds = %land.lhs.true.55
  %66 = load i32, i32* %p333, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %cmp58 = icmp ugt i32 %66, %67
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.57
  store i32 1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.57, %land.lhs.true.55, %land.lhs.true.53, %if.end.42
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.59, %if.then.41, %if.then.25, %if.then.9, %if.then.2
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i8* @xrealloc(i8*, i64) #3

declare i8* @tsearch(i8*, i8**, i32 (i8*, i8*)*) #3

declare i32 @align_get_dist(i8*, i8*, i32, i32, i32, i32, i32) #3

declare void @align_path(i8*, i8*, i32, i32, i32, i32, i32, %struct._edit_script**, %struct._edit_script**, i32, i32) #3

declare void @Condense_both_Ends(%struct._edit_script**, %struct._edit_script**, %struct._edit_script**) #3

; Function Attrs: nounwind uwtable
define internal i32 @about_same_gap_p(i32 %to1, i32 %nFrom1, i32 %to2, i32 %nFrom2) #0 {
entry:
  %retval = alloca i32, align 4
  %to1.addr = alloca i32, align 4
  %nFrom1.addr = alloca i32, align 4
  %to2.addr = alloca i32, align 4
  %nFrom2.addr = alloca i32, align 4
  %g1 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %d = alloca i32, align 4
  %tem = alloca i32, align 4
  store i32 %to1, i32* %to1.addr, align 4
  store i32 %nFrom1, i32* %nFrom1.addr, align 4
  store i32 %to2, i32* %to2.addr, align 4
  store i32 %nFrom2, i32* %nFrom2.addr, align 4
  %0 = load i32, i32* %nFrom1.addr, align 4
  %1 = load i32, i32* %to1.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %nFrom2.addr, align 4
  %3 = load i32, i32* %to2.addr, align 4
  %cmp1 = icmp ule i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %nFrom1.addr, align 4
  %5 = load i32, i32* %to1.addr, align 4
  %sub = sub i32 %4, %5
  %sub2 = sub i32 %sub, 1
  store i32 %sub2, i32* %g1, align 4
  %6 = load i32, i32* %nFrom2.addr, align 4
  %7 = load i32, i32* %to2.addr, align 4
  %sub3 = sub i32 %6, %7
  %sub4 = sub i32 %sub3, 1
  store i32 %sub4, i32* %g2, align 4
  %8 = load i32, i32* %g2, align 4
  %9 = load i32, i32* %g1, align 4
  %cmp5 = icmp ugt i32 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load i32, i32* %g1, align 4
  store i32 %10, i32* %tem, align 4
  %11 = load i32, i32* %g2, align 4
  store i32 %11, i32* %g1, align 4
  %12 = load i32, i32* %tem, align 4
  store i32 %12, i32* %g2, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %13 = load i32, i32* %g1, align 4
  %14 = load i32, i32* %g2, align 4
  %sub8 = sub i32 %13, %14
  store i32 %sub8, i32* %d, align 4
  %15 = load i32, i32* %d, align 4
  %mul = mul i32 %15, 100
  %16 = load i32, i32* %g1, align 4
  %div = udiv i32 %mul, %16
  %17 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 4
  %cmp9 = icmp ule i32 %div, %17
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @good_ratio(i32 %length, i32 %W) #0 {
entry:
  %retval = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %W.addr = alloca i32, align 4
  store i32 %length, i32* %length.addr, align 4
  store i32 %W, i32* %W.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %1 = load i32, i32* %W.addr, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp sle i32 %0, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %length.addr, align 4
  %3 = load i32, i32* %W.addr, align 4
  %mul = mul nsw i32 2, %3
  %cmp1 = icmp slt i32 %2, %mul
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  store i32 %4, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %5 = load i32, i32* %length.addr, align 4
  %conv = sitofp i32 %5 to double
  %mul4 = fmul double 0x3FC3333333333334, %conv
  %add = fadd double %mul4, 1.000000e+00
  %conv5 = fptosi double %add to i32
  store i32 %conv5, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @perfect_spl_p(i8* %seq1, i8* %seq2, %struct._splice_score_t* %splS) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %splS.addr = alloca %struct._splice_score_t*, align 8
  %score = alloca i32, align 4
  %j = alloca i32, align 4
  %splice = alloca [4 x i8], align 1
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store %struct._splice_score_t* %splS, %struct._splice_score_t** %splS.addr, align 8
  %0 = load i8*, i8** %seq1.addr, align 8
  %1 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to1 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %1, i32 0, i32 0
  %2 = load i32, i32* %to1, align 4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %3 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext1 = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext1
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %4 = load i8*, i8** %seq2.addr, align 8
  %5 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to2 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %5, i32 0, i32 1
  %6 = load i32, i32* %to2, align 4
  %idx.ext3 = zext i32 %6 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %4, i64 %idx.ext3
  %7 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext5 = zext i32 %7 to i64
  %idx.neg6 = sub i64 0, %idx.ext5
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.neg6
  %8 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %call = call i32 @SWscore(i8* %add.ptr2, i8* %add.ptr7, i32 %8)
  store i32 %call, i32* %score, align 4
  %9 = load i32, i32* %score, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i8*, i8** %seq1.addr, align 8
  %12 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %nFrom1 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %12, i32 0, i32 2
  %13 = load i32, i32* %nFrom1, align 4
  %idx.ext8 = zext i32 %13 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 -1
  %14 = load i8*, i8** %seq2.addr, align 8
  %15 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to211 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %15, i32 0, i32 1
  %16 = load i32, i32* %to211, align 4
  %idx.ext12 = zext i32 %16 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %14, i64 %idx.ext12
  %17 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %call14 = call i32 @SWscore(i8* %add.ptr10, i8* %add.ptr13, i32 %17)
  store i32 %call14, i32* %score, align 4
  %18 = load i32, i32* %score, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %cmp15 = icmp ult i32 %18, %19
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %20 = bitcast [4 x i8]* %splice to i8*
  %21 = load i8*, i8** %seq1.addr, align 8
  %22 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to118 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 0
  %23 = load i32, i32* %to118, align 4
  %idx.ext19 = zext i32 %23 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %21, i64 %idx.ext19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %add.ptr20, i64 2, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %splice, i32 0, i32 0
  %add.ptr21 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  %24 = load i8*, i8** %seq1.addr, align 8
  %25 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %nFrom122 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 2
  %26 = load i32, i32* %nFrom122, align 4
  %idx.ext23 = zext i32 %26 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %24, i64 %idx.ext23
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i64 -3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr21, i8* %add.ptr25, i64 2, i32 1, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %cmp26 = icmp ult i32 %27, %28
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay27 = getelementptr inbounds [4 x i8], [4 x i8]* %splice, i32 0, i32 0
  %29 = load i32, i32* %j, align 4
  %idxprom = zext i32 %29 to i64
  %30 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds %struct._junction_t, %struct._junction_t* %30, i64 %idxprom
  %fwd = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %fwd, i32 0, i32 0
  %call29 = call i32 @memcmp(i8* %arraydecay27, i8* %arraydecay28, i64 4) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  %31 = load i32, i32* %j, align 4
  %32 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %type = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %32, i32 0, i32 3
  store i32 %31, i32* %type, align 4
  %33 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %direction = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %33, i32 0, i32 6
  store i32 1, i32* %direction, align 4
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.body
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %splice, i32 0, i32 0
  %34 = load i32, i32* %j, align 4
  %idxprom34 = zext i32 %34 to i64
  %35 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx35 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %35, i64 %idxprom34
  %rev = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx35, i32 0, i32 1
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %rev, i32 0, i32 0
  %call37 = call i32 @memcmp(i8* %arraydecay33, i8* %arraydecay36, i64 4) #8
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.32
  %36 = load i32, i32* %j, align 4
  %37 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %type40 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %37, i32 0, i32 3
  store i32 %36, i32* %type40, align 4
  %38 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %direction41 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %38, i32 0, i32 6
  store i32 -1, i32* %direction41, align 4
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %39 = load i32, i32* %j, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.39, %if.then.31, %if.then.16, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @compute_max_score(i8* %seq1, i8* %seq2, %struct._splice_score_t* %splS, i32 %direction) #0 {
entry:
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %splS.addr = alloca %struct._splice_score_t*, align 8
  %direction.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %to1 = alloca i32, align 4
  %to2 = alloca i32, align 4
  %nFrom1 = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store %struct._splice_score_t* %splS, %struct._splice_score_t** %splS.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to11 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %0, i32 0, i32 0
  %1 = load i32, i32* %to11, align 4
  store i32 %1, i32* %to1, align 4
  %2 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to22 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %2, i32 0, i32 1
  %3 = load i32, i32* %to22, align 4
  store i32 %3, i32* %to2, align 4
  %4 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %nFrom13 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %4, i32 0, i32 2
  %5 = load i32, i32* %nFrom13, align 4
  store i32 %5, i32* %nFrom1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %mul = mul i32 %6, 2
  %add = add i32 %mul, 4
  %conv = zext i32 %add to i64
  %mul4 = mul i64 %conv, 1
  %call = call i8* @xmalloc(i64 %mul4)
  store i8* %call, i8** %s, align 8
  %7 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %score = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %7, i32 0, i32 4
  store i32 0, i32* %score, align 4
  %8 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %splScore = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %8, i32 0, i32 5
  store i32 0, i32* %splScore, align 4
  %9 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %type = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %9, i32 0, i32 3
  store i32 -1, i32* %type, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %direction.addr, align 4
  %cmp6 = icmp sge i32 %12, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i8*, i8** %seq1.addr, align 8
  %14 = load i8*, i8** %seq2.addr, align 8
  %15 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %to1, align 4
  %18 = load i32, i32* %to2, align 4
  %19 = load i32, i32* %nFrom1, align 4
  %20 = load i8*, i8** %s, align 8
  %21 = load i32, i32* %k, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds %struct._junction_t, %struct._junction_t* %22, i64 %idxprom
  %fwd = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fwd, i32 0, i32 0
  call void @compute_max_score_1(i8* %13, i8* %14, %struct._splice_score_t* %15, i32 %16, i32 %17, i32 %18, i32 %19, i8* %20, i8* %arraydecay, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load i32, i32* %direction.addr, align 4
  %cmp8 = icmp sle i32 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %24 = load i8*, i8** %seq1.addr, align 8
  %25 = load i8*, i8** %seq2.addr, align 8
  %26 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %to1, align 4
  %29 = load i32, i32* %to2, align 4
  %30 = load i32, i32* %nFrom1, align 4
  %31 = load i8*, i8** %s, align 8
  %32 = load i32, i32* %k, align 4
  %idxprom11 = zext i32 %32 to i64
  %33 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx12 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %33, i64 %idxprom11
  %rev = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx12, i32 0, i32 1
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %rev, i32 0, i32 0
  call void @compute_max_score_1(i8* %24, i8* %25, %struct._splice_score_t* %26, i32 %27, i32 %28, i32 %29, i32 %30, i8* %31, i8* %arraydecay13, i32 -1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %34 = load i32, i32* %k, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %s, align 8
  call void @free(i8* %35) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @splice_score_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %sa = alloca %struct._splice_score_t*, align 8
  %sb = alloca %struct._splice_score_t*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._splice_score_t*
  store %struct._splice_score_t* %1, %struct._splice_score_t** %sa, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct._splice_score_t*
  store %struct._splice_score_t* %3, %struct._splice_score_t** %sb, align 8
  %4 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %score = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %4, i32 0, i32 4
  %5 = load i32, i32* %score, align 4
  %6 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %score1 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %6, i32 0, i32 4
  %7 = load i32, i32* %score1, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %score2 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %8, i32 0, i32 4
  %9 = load i32, i32* %score2, align 4
  %10 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %score3 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 4
  %11 = load i32, i32* %score3, align 4
  %cmp4 = icmp ugt i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %splScore = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %12, i32 0, i32 5
  %13 = load i32, i32* %splScore, align 4
  %14 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %splScore7 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %14, i32 0, i32 5
  %15 = load i32, i32* %splScore7, align 4
  %cmp8 = icmp ult i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %16 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %splScore11 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %16, i32 0, i32 5
  %17 = load i32, i32* %splScore11, align 4
  %18 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %splScore12 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %18, i32 0, i32 5
  %19 = load i32, i32* %splScore12, align 4
  %cmp13 = icmp ugt i32 %17, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %20 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %type = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %20, i32 0, i32 3
  %21 = load i32, i32* %type, align 4
  %22 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %type16 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 3
  %23 = load i32, i32* %type16, align 4
  %cmp17 = icmp ugt i32 %21, %23
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %24 = load %struct._splice_score_t*, %struct._splice_score_t** %sa, align 8
  %type20 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %24, i32 0, i32 3
  %25 = load i32, i32* %type20, align 4
  %26 = load %struct._splice_score_t*, %struct._splice_score_t** %sb, align 8
  %type21 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %26, i32 0, i32 3
  %27 = load i32, i32* %type21, align 4
  %cmp22 = icmp ult i32 %25, %27
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.then.14, %if.then.9, %if.then.5, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @SWscore(i8* %s1, i8* %s2, i32 %len) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %score = alloca [3 x i32], align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  store i32 0, i32* %arrayidx1, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  %cond = select i1 %cmp, i32 1, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  store i32 %cond, i32* %arrayidx4, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %len.addr, align 4
  %cmp5 = icmp ult i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %6 = load i32, i32* %arrayidx7, align 4
  %7 = load i32, i32* %i, align 4
  %sub = sub i32 %7, 1
  %idxprom = zext i32 %sub to i64
  %8 = load i8*, i8** %s1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %10 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %10 to i64
  %11 = load i8*, i8** %s2.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv9, %conv12
  %cond15 = select i1 %cmp13, i32 1, i32 0
  %add = add nsw i32 %6, %cond15
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %13 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %add, %13
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %14 = load i32, i32* %arrayidx19, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %15 = load i32, i32* %arrayidx20, align 4
  %16 = load i32, i32* %i, align 4
  %sub21 = sub i32 %16, 1
  %idxprom22 = zext i32 %sub21 to i64
  %17 = load i8*, i8** %s1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %17, i64 %idxprom22
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %19 to i64
  %20 = load i8*, i8** %s2.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  %21 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv24, %conv27
  %cond30 = select i1 %cmp28, i32 1, i32 0
  %add31 = add nsw i32 %15, %cond30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond32 = phi i32 [ %14, %cond.true ], [ %add31, %cond.false ]
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  store i32 %cond32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %22 = load i32, i32* %arrayidx34, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %23 to i64
  %24 = load i8*, i8** %s1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %25 to i32
  %26 = load i32, i32* %i, align 4
  %sub38 = sub i32 %26, 1
  %idxprom39 = zext i32 %sub38 to i64
  %27 = load i8*, i8** %s2.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 %idxprom39
  %28 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %28 to i32
  %cmp42 = icmp eq i32 %conv37, %conv41
  %cond44 = select i1 %cmp42, i32 1, i32 0
  %add45 = add nsw i32 %22, %cond44
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %29 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp slt i32 %add45, %29
  br i1 %cmp47, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %30 = load i32, i32* %arrayidx50, align 4
  br label %cond.end.64

cond.false.51:                                    ; preds = %cond.end
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %31 = load i32, i32* %arrayidx52, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom53 = zext i32 %32 to i64
  %33 = load i8*, i8** %s1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %33, i64 %idxprom53
  %34 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %34 to i32
  %35 = load i32, i32* %i, align 4
  %sub56 = sub i32 %35, 1
  %idxprom57 = zext i32 %sub56 to i64
  %36 = load i8*, i8** %s2.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %36, i64 %idxprom57
  %37 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %37 to i32
  %cmp60 = icmp eq i32 %conv55, %conv59
  %cond62 = select i1 %cmp60, i32 1, i32 0
  %add63 = add nsw i32 %31, %cond62
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.51, %cond.true.49
  %cond65 = phi i32 [ %30, %cond.true.49 ], [ %add63, %cond.false.51 ]
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  store i32 %cond65, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %38 = load i32, i32* %arrayidx67, align 4
  %sub68 = sub nsw i32 %38, 1
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %39 = load i32, i32* %arrayidx69, align 4
  %sub70 = sub nsw i32 %39, 1
  %cmp71 = icmp slt i32 %sub68, %sub70
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %cond.end.64
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %40 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %40, 1
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.end.64
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %41 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %41, 1
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.73
  %cond80 = phi i32 [ %sub75, %cond.true.73 ], [ %sub78, %cond.false.76 ]
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %42 = load i32, i32* %arrayidx81, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom82 = zext i32 %43 to i64
  %44 = load i8*, i8** %s1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %44, i64 %idxprom82
  %45 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %45 to i32
  %46 = load i32, i32* %i, align 4
  %idxprom85 = zext i32 %46 to i64
  %47 = load i8*, i8** %s2.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %47, i64 %idxprom85
  %48 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %48 to i32
  %cmp88 = icmp eq i32 %conv84, %conv87
  %cond90 = select i1 %cmp88, i32 1, i32 0
  %add91 = add nsw i32 %42, %cond90
  %cmp92 = icmp slt i32 %cond80, %add91
  br i1 %cmp92, label %cond.true.94, label %cond.false.106

cond.true.94:                                     ; preds = %cond.end.79
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %49 = load i32, i32* %arrayidx95, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %50 to i64
  %51 = load i8*, i8** %s1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %51, i64 %idxprom96
  %52 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %52 to i32
  %53 = load i32, i32* %i, align 4
  %idxprom99 = zext i32 %53 to i64
  %54 = load i8*, i8** %s2.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %54, i64 %idxprom99
  %55 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %55 to i32
  %cmp102 = icmp eq i32 %conv98, %conv101
  %cond104 = select i1 %cmp102, i32 1, i32 0
  %add105 = add nsw i32 %49, %cond104
  br label %cond.end.121

cond.false.106:                                   ; preds = %cond.end.79
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %56 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %56, 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %57 = load i32, i32* %arrayidx109, align 4
  %sub110 = sub nsw i32 %57, 1
  %cmp111 = icmp slt i32 %sub108, %sub110
  br i1 %cmp111, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.false.106
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 2
  %58 = load i32, i32* %arrayidx114, align 4
  %sub115 = sub nsw i32 %58, 1
  br label %cond.end.119

cond.false.116:                                   ; preds = %cond.false.106
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 0
  %59 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %59, 1
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %cond.true.113
  %cond120 = phi i32 [ %sub115, %cond.true.113 ], [ %sub118, %cond.false.116 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.94
  %cond122 = phi i32 [ %add105, %cond.true.94 ], [ %cond120, %cond.end.119 ]
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  store i32 %cond122, i32* %arrayidx123, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.121
  %60 = load i32, i32* %i, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %score, i32 0, i64 1
  %61 = load i32, i32* %arrayidx124, align 4
  ret i32 %61
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal void @compute_max_score_1(i8* %seq1, i8* %seq2, %struct._splice_score_t* %splS, i32 %type, i32 %to1, i32 %to2, i32 %nFrom1, i8* %s, i8* %jct, i32 %dir) #0 {
entry:
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %splS.addr = alloca %struct._splice_score_t*, align 8
  %type.addr = alloca i32, align 4
  %to1.addr = alloca i32, align 4
  %to2.addr = alloca i32, align 4
  %nFrom1.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %jct.addr = alloca i8*, align 8
  %dir.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %curL = alloca %struct._splice_score_t, align 4
  %curR = alloca %struct._splice_score_t, align 4
  %i = alloca i32, align 4
  %cur = alloca %struct._splice_score_t, align 4
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store %struct._splice_score_t* %splS, %struct._splice_score_t** %splS.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %to1, i32* %to1.addr, align 4
  store i32 %to2, i32* %to2.addr, align 4
  store i32 %nFrom1, i32* %nFrom1.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %jct, i8** %jct.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i8*, i8** %jct.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %sub = sub i32 0, %3
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.146, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.148

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %type.addr, align 4
  %type1 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 3
  store i32 %6, i32* %type1, align 4
  %type2 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 3
  store i32 %6, i32* %type2, align 4
  %splScore = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 5
  store i32 0, i32* %splScore, align 4
  %splScore3 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 5
  store i32 0, i32* %splScore3, align 4
  %score = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 4
  store i32 0, i32* %score, align 4
  %score4 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 4
  store i32 0, i32* %score4, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8*, i8** %seq2.addr, align 8
  %9 = load i32, i32* %to2.addr, align 4
  %idx.ext5 = zext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %8, i64 %idx.ext5
  %10 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext7 = zext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr6, i64 %idx.neg
  %11 = load i32, i32* %j, align 4
  %idx.ext9 = sext i32 %11 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr8, i64 %idx.ext9
  %12 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %conv = zext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %add.ptr10, i64 %conv, i32 1, i1 false)
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext11 = zext i32 %14 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %13, i64 %idx.ext11
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 4
  %15 = load i8*, i8** %seq2.addr, align 8
  %16 = load i32, i32* %to2.addr, align 4
  %idx.ext14 = zext i32 %16 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %15, i64 %idx.ext14
  %17 = load i32, i32* %j, align 4
  %idx.ext16 = sext i32 %17 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr15, i64 %idx.ext16
  %18 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %conv18 = zext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr13, i8* %add.ptr17, i64 %conv18, i32 1, i1 false)
  store i32 -1, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %cmp20 = icmp sle i32 %19, 1
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %20 = load i32, i32* %type.addr, align 4
  %type23 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 3
  store i32 %20, i32* %type23, align 4
  %splScore24 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  store i32 0, i32* %splScore24, align 4
  %21 = load i32, i32* %to1.addr, align 4
  %22 = load i32, i32* %j, align 4
  %add = add i32 %21, %22
  %23 = load i32, i32* %i, align 4
  %add25 = add i32 %add, %23
  %idxprom = zext i32 %add25 to i64
  %24 = load i8*, i8** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %25 to i32
  %26 = load i8*, i8** %jct.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %cmp29 = icmp eq i32 %conv26, %conv28
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  %splScore31 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %28 = load i32, i32* %splScore31, align 4
  %add32 = add i32 %28, 1
  store i32 %add32, i32* %splScore31, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.22
  %29 = load i32, i32* %to1.addr, align 4
  %30 = load i32, i32* %j, align 4
  %add33 = add i32 %29, %30
  %31 = load i32, i32* %i, align 4
  %add34 = add i32 %add33, %31
  %add35 = add i32 %add34, 1
  %idxprom36 = zext i32 %add35 to i64
  %32 = load i8*, i8** %seq1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %34 = load i8*, i8** %jct.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %35 to i32
  %cmp41 = icmp eq i32 %conv38, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end
  %splScore44 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %36 = load i32, i32* %splScore44, align 4
  %add45 = add i32 %36, 1
  store i32 %add45, i32* %splScore44, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end
  %37 = load i8*, i8** %seq1.addr, align 8
  %38 = load i32, i32* %to1.addr, align 4
  %idx.ext47 = zext i32 %38 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %37, i64 %idx.ext47
  %39 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext49 = zext i32 %39 to i64
  %idx.neg50 = sub i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr48, i64 %idx.neg50
  %40 = load i32, i32* %j, align 4
  %idx.ext52 = sext i32 %40 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr51, i64 %idx.ext52
  %41 = load i32, i32* %i, align 4
  %idx.ext54 = sext i32 %41 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %add.ptr53, i64 %idx.ext54
  %42 = load i8*, i8** %s.addr, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %add56 = add i32 %43, 2
  %call = call i32 @SWscore(i8* %add.ptr55, i8* %42, i32 %add56)
  %score57 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 4
  store i32 %call, i32* %score57, align 4
  %44 = bitcast %struct._splice_score_t* %cur to i8*
  %45 = bitcast %struct._splice_score_t* %curL to i8*
  %call58 = call i32 @splice_score_compare(i8* %44, i8* %45)
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.end.46
  %score62 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 4
  %46 = load i32, i32* %score62, align 4
  %score63 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 4
  store i32 %46, i32* %score63, align 4
  %splScore64 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %47 = load i32, i32* %splScore64, align 4
  %splScore65 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 5
  store i32 %47, i32* %splScore65, align 4
  %48 = load i32, i32* %to1.addr, align 4
  %49 = load i32, i32* %j, align 4
  %add66 = add i32 %48, %49
  %50 = load i32, i32* %i, align 4
  %add67 = add i32 %add66, %50
  %to168 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 0
  store i32 %add67, i32* %to168, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.61, %if.end.46
  %splScore70 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  store i32 0, i32* %splScore70, align 4
  %51 = load i32, i32* %nFrom1.addr, align 4
  %sub71 = sub i32 %51, 3
  %52 = load i32, i32* %j, align 4
  %add72 = add i32 %sub71, %52
  %53 = load i32, i32* %i, align 4
  %add73 = add i32 %add72, %53
  %idxprom74 = zext i32 %add73 to i64
  %54 = load i8*, i8** %seq1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %54, i64 %idxprom74
  %55 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %55 to i32
  %56 = load i8*, i8** %jct.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %56, i64 2
  %57 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %57 to i32
  %cmp79 = icmp eq i32 %conv76, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.69
  %splScore82 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %58 = load i32, i32* %splScore82, align 4
  %add83 = add i32 %58, 1
  store i32 %add83, i32* %splScore82, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.69
  %59 = load i32, i32* %nFrom1.addr, align 4
  %sub85 = sub i32 %59, 2
  %60 = load i32, i32* %j, align 4
  %add86 = add i32 %sub85, %60
  %61 = load i32, i32* %i, align 4
  %add87 = add i32 %add86, %61
  %idxprom88 = zext i32 %add87 to i64
  %62 = load i8*, i8** %seq1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %62, i64 %idxprom88
  %63 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %63 to i32
  %64 = load i8*, i8** %jct.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %64, i64 3
  %65 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %65 to i32
  %cmp93 = icmp eq i32 %conv90, %conv92
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.84
  %splScore96 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %66 = load i32, i32* %splScore96, align 4
  %add97 = add i32 %66, 1
  store i32 %add97, i32* %splScore96, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.84
  %67 = load i8*, i8** %seq1.addr, align 8
  %68 = load i32, i32* %nFrom1.addr, align 4
  %idx.ext99 = zext i32 %68 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %67, i64 %idx.ext99
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr100, i64 -3
  %69 = load i32, i32* %j, align 4
  %idx.ext102 = sext i32 %69 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr101, i64 %idx.ext102
  %70 = load i32, i32* %i, align 4
  %idx.ext104 = sext i32 %70 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr103, i64 %idx.ext104
  %71 = load i8*, i8** %s.addr, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %idx.ext106 = zext i32 %72 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %71, i64 %idx.ext106
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr107, i64 2
  %73 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %add109 = add i32 %73, 2
  %call110 = call i32 @SWscore(i8* %add.ptr105, i8* %add.ptr108, i32 %add109)
  %score111 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 4
  store i32 %call110, i32* %score111, align 4
  %74 = bitcast %struct._splice_score_t* %cur to i8*
  %75 = bitcast %struct._splice_score_t* %curR to i8*
  %call112 = call i32 @splice_score_compare(i8* %74, i8* %75)
  %cmp113 = icmp sgt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %if.end.98
  %score116 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 4
  %76 = load i32, i32* %score116, align 4
  %score117 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 4
  store i32 %76, i32* %score117, align 4
  %splScore118 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %cur, i32 0, i32 5
  %77 = load i32, i32* %splScore118, align 4
  %splScore119 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 5
  store i32 %77, i32* %splScore119, align 4
  %78 = load i32, i32* %nFrom1.addr, align 4
  %79 = load i32, i32* %j, align 4
  %add120 = add i32 %78, %79
  %80 = load i32, i32* %i, align 4
  %add121 = add i32 %add120, %80
  %nFrom1122 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 2
  store i32 %add121, i32* %nFrom1122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.115, %if.end.98
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %score124 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 4
  %82 = load i32, i32* %score124, align 4
  %score125 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 4
  %83 = load i32, i32* %score125, align 4
  %add126 = add i32 %83, %82
  store i32 %add126, i32* %score125, align 4
  %splScore127 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 5
  %84 = load i32, i32* %splScore127, align 4
  %splScore128 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 5
  %85 = load i32, i32* %splScore128, align 4
  %add129 = add i32 %85, %84
  store i32 %add129, i32* %splScore128, align 4
  %86 = bitcast %struct._splice_score_t* %curL to i8*
  %87 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %88 = bitcast %struct._splice_score_t* %87 to i8*
  %call130 = call i32 @splice_score_compare(i8* %86, i8* %88)
  %cmp131 = icmp sgt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.145

if.then.133:                                      ; preds = %for.end
  %score134 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 4
  %89 = load i32, i32* %score134, align 4
  %90 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %score135 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %90, i32 0, i32 4
  store i32 %89, i32* %score135, align 4
  %splScore136 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 5
  %91 = load i32, i32* %splScore136, align 4
  %92 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %splScore137 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %92, i32 0, i32 5
  store i32 %91, i32* %splScore137, align 4
  %to1138 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curL, i32 0, i32 0
  %93 = load i32, i32* %to1138, align 4
  %94 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to1139 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %94, i32 0, i32 0
  store i32 %93, i32* %to1139, align 4
  %95 = load i32, i32* %to2.addr, align 4
  %96 = load i32, i32* %j, align 4
  %add140 = add i32 %95, %96
  %97 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %to2141 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %97, i32 0, i32 1
  store i32 %add140, i32* %to2141, align 4
  %nFrom1142 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %curR, i32 0, i32 2
  %98 = load i32, i32* %nFrom1142, align 4
  %99 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %nFrom1143 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %99, i32 0, i32 2
  store i32 %98, i32* %nFrom1143, align 4
  %100 = load i32, i32* %type.addr, align 4
  %101 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %type144 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %101, i32 0, i32 3
  store i32 %100, i32* %type144, align 4
  %102 = load i32, i32* %dir.addr, align 4
  %103 = load %struct._splice_score_t*, %struct._splice_score_t** %splS.addr, align 8
  %direction = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %103, i32 0, i32 6
  store i32 %102, i32* %direction, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.133, %for.end
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %104 = load i32, i32* %j, align 4
  %inc147 = add nsw i32 %104, 1
  store i32 %inc147, i32* %j, align 4
  br label %for.cond

for.end.148:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
