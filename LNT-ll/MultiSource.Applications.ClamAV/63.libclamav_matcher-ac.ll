; ModuleID = './MultiSource.Applications.ClamAV/63.libclamav_matcher-ac.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.bfs_list = type { %struct.cli_ac_node*, %struct.bfs_list* }
%struct.cli_ac_data = type { i32, i32*** }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cli_ac_mindepth = global i8 2, align 1
@cli_ac_maxdepth = global i8 3, align 1
@.str = private unnamed_addr constant [53 x i8] c"cli_ac_addpatt: Can't allocate memory for pt->trans\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"cli_ac_addpatt: Can't allocate memory for AC node\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"cli_ac_addpatt: Can't allocate memory for next->trans\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cli_ac_addpatt: Can't realloc ac_nodetable\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cli_ac_addpatt: Can't realloc ac_pattable\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"cli_ac_buildtrie: AC pattern matcher is not initialised\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"cli_ac_init: Can't allocate memory for ac_root\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"cli_ac_init: Can't allocate memory for ac_root->trans\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cli_ac_init: data == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"cli_ac_init: Can't allocate memory for data->offmatrix\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cli_ac_scanbuff: mdata == NULL\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"cli_ac_scanbuff: Can't allocate memory for mdata->offmatrix[%u]\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"cli_ac_scanbuff: Can't allocate memory for mdata->offmatrix[%u][0]\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Matched signature for file type %s at %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"cli_ac_addsig: Can't allocate newalt\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"cli_ac_addsig: Can't realloc new->alttable\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"cli_ac_addsig: Can't allocate newalt->str\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"cli_ac_addsig: Can't allocate altpt->next\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"cli_ac_addsig: Can't find a static subpattern of length %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (Clam)\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"cli_ac_addsig: No virus name\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"bfs_enqueue: Can't allocate memory for bfs_list\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"ac_findmatch: Unknown wildcard 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"cli_ac_addtype: Can't allocate memory for new type node\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_ac_addpatt(%struct.cli_matcher* %root, %struct.cli_ac_patt* %pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %pattern.addr = alloca %struct.cli_ac_patt*, align 8
  %pt = alloca %struct.cli_ac_node*, align 8
  %next = alloca %struct.cli_ac_node*, align 8
  %newtable = alloca %struct.cli_ac_node**, align 8
  %ph = alloca %struct.cli_ac_patt*, align 8
  %a1 = alloca %struct.cli_ac_alt*, align 8
  %a2 = alloca %struct.cli_ac_alt*, align 8
  %i = alloca i8, align 1
  %match = alloca i8, align 1
  %len = alloca i16, align 2
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store %struct.cli_ac_patt* %pattern, %struct.cli_ac_patt** %pattern.addr, align 8
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %0, i32 0, i32 7
  %1 = load i8, i8* %ac_maxdepth, align 1
  %conv = zext i8 %1 to i32
  %2 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %2, i32 0, i32 2
  %3 = load i16, i16* %length, align 2
  %conv1 = zext i16 %3 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth3 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %4, i32 0, i32 7
  %5 = load i8, i8* %ac_maxdepth3, align 1
  %conv4 = zext i8 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %length5 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %6, i32 0, i32 2
  %7 = load i16, i16* %length5, align 2
  %conv6 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, i16* %len, align 2
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i8, i8* %i, align 1
  %conv8 = zext i8 %8 to i32
  %9 = load i16, i16* %len, align 2
  %conv9 = zext i16 %9 to i32
  %cmp10 = icmp slt i32 %conv8, %conv9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8, i8* %i, align 1
  %idxprom = zext i8 %10 to i64
  %11 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern12 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %11, i32 0, i32 0
  %12 = load i16*, i16** %pattern12, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv13 = zext i16 %13 to i32
  %and = and i32 %conv13, 65280
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i8, i8* %i, align 1
  %conv14 = zext i8 %14 to i16
  store i16 %conv14, i16* %len, align 2
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8, i8* %i, align 1
  %inc = add i8 %15, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i16, i16* %len, align 2
  %conv15 = zext i16 %16 to i32
  %17 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %17, i32 0, i32 6
  %18 = load i8, i8* %ac_mindepth, align 1
  %conv16 = zext i8 %18 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  store i32 -117, i32* %retval
  br label %return

if.end.20:                                        ; preds = %for.end
  %19 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %19, i32 0, i32 8
  %20 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  store %struct.cli_ac_node* %20, %struct.cli_ac_node** %pt, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.91, %if.end.20
  %21 = load i8, i8* %i, align 1
  %conv22 = zext i8 %21 to i32
  %22 = load i16, i16* %len, align 2
  %conv23 = zext i16 %22 to i32
  %cmp24 = icmp slt i32 %conv22, %conv23
  br i1 %cmp24, label %for.body.26, label %for.end.93

for.body.26:                                      ; preds = %for.cond.21
  %23 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %trans = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %23, i32 0, i32 3
  %24 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans, align 8
  %tobool27 = icmp ne %struct.cli_ac_node** %24, null
  br i1 %tobool27, label %if.end.34, label %if.then.28

if.then.28:                                       ; preds = %for.body.26
  %call = call i8* @cli_calloc(i64 256, i64 8)
  %25 = bitcast i8* %call to %struct.cli_ac_node**
  %26 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %trans29 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %26, i32 0, i32 3
  store %struct.cli_ac_node** %25, %struct.cli_ac_node*** %trans29, align 8
  %27 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %trans30 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %27, i32 0, i32 3
  %28 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans30, align 8
  %tobool31 = icmp ne %struct.cli_ac_node** %28, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.28
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %for.body.26
  %29 = load i8, i8* %i, align 1
  %idxprom35 = zext i8 %29 to i64
  %30 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern36 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %30, i32 0, i32 0
  %31 = load i16*, i16** %pattern36, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %31, i64 %idxprom35
  %32 = load i16, i16* %arrayidx37, align 2
  %conv38 = zext i16 %32 to i32
  %and39 = and i32 %conv38, 255
  %conv40 = trunc i32 %and39 to i8
  %idxprom41 = zext i8 %conv40 to i64
  %33 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %trans42 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %33, i32 0, i32 3
  %34 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans42, align 8
  %arrayidx43 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %34, i64 %idxprom41
  %35 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx43, align 8
  store %struct.cli_ac_node* %35, %struct.cli_ac_node** %next, align 8
  %36 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %tobool44 = icmp ne %struct.cli_ac_node* %36, null
  br i1 %tobool44, label %if.end.90, label %if.then.45

if.then.45:                                       ; preds = %if.end.34
  %call46 = call i8* @cli_calloc(i64 1, i64 32)
  %37 = bitcast i8* %call46 to %struct.cli_ac_node*
  store %struct.cli_ac_node* %37, %struct.cli_ac_node** %next, align 8
  %38 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %tobool47 = icmp ne %struct.cli_ac_node* %38, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.then.45
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.45
  %39 = load i8, i8* %i, align 1
  %conv50 = zext i8 %39 to i32
  %40 = load i16, i16* %len, align 2
  %conv51 = zext i16 %40 to i32
  %sub = sub nsw i32 %conv51, 1
  %cmp52 = icmp ne i32 %conv50, %sub
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.49
  %call55 = call i8* @cli_calloc(i64 256, i64 8)
  %41 = bitcast i8* %call55 to %struct.cli_ac_node**
  %42 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %trans56 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %42, i32 0, i32 3
  store %struct.cli_ac_node** %41, %struct.cli_ac_node*** %trans56, align 8
  %43 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %trans57 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %43, i32 0, i32 3
  %44 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans57, align 8
  %tobool58 = icmp ne %struct.cli_ac_node** %44, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.54
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0))
  %45 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %46 = bitcast %struct.cli_ac_node* %45 to i8*
  call void @free(i8* %46) #4
  store i32 -114, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.54
  br label %if.end.61

if.else:                                          ; preds = %if.end.49
  %47 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %leaf = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %47, i32 0, i32 0
  store i8 1, i8* %leaf, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.end.60
  %48 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodes = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %48, i32 0, i32 12
  %49 = load i32, i32* %ac_nodes, align 4
  %inc62 = add i32 %49, 1
  store i32 %inc62, i32* %ac_nodes, align 4
  %50 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %50, i32 0, i32 9
  %51 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable, align 8
  %52 = bitcast %struct.cli_ac_node** %51 to i8*
  %53 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodes63 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %53, i32 0, i32 12
  %54 = load i32, i32* %ac_nodes63, align 4
  %conv64 = zext i32 %54 to i64
  %mul = mul i64 %conv64, 8
  %call65 = call i8* @cli_realloc(i8* %52, i64 %mul)
  %55 = bitcast i8* %call65 to %struct.cli_ac_node**
  store %struct.cli_ac_node** %55, %struct.cli_ac_node*** %newtable, align 8
  %56 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %newtable, align 8
  %tobool66 = icmp ne %struct.cli_ac_node** %56, null
  br i1 %tobool66, label %if.end.74, label %if.then.67

if.then.67:                                       ; preds = %if.end.61
  %57 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodes68 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %57, i32 0, i32 12
  %58 = load i32, i32* %ac_nodes68, align 4
  %dec = add i32 %58, -1
  store i32 %dec, i32* %ac_nodes68, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  %59 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %trans69 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %59, i32 0, i32 3
  %60 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans69, align 8
  %tobool70 = icmp ne %struct.cli_ac_node** %60, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.then.67
  %61 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %trans72 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %61, i32 0, i32 3
  %62 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans72, align 8
  %63 = bitcast %struct.cli_ac_node** %62 to i8*
  call void @free(i8* %63) #4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.then.67
  %64 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %65 = bitcast %struct.cli_ac_node* %64 to i8*
  call void @free(i8* %65) #4
  store i32 -114, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.61
  %66 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %67 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodes75 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %67, i32 0, i32 12
  %68 = load i32, i32* %ac_nodes75, align 4
  %sub76 = sub i32 %68, 1
  %idxprom77 = zext i32 %sub76 to i64
  %69 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %newtable, align 8
  %arrayidx78 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %69, i64 %idxprom77
  store %struct.cli_ac_node* %66, %struct.cli_ac_node** %arrayidx78, align 8
  %70 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %newtable, align 8
  %71 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable79 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %71, i32 0, i32 9
  store %struct.cli_ac_node** %70, %struct.cli_ac_node*** %ac_nodetable79, align 8
  %72 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  %73 = load i8, i8* %i, align 1
  %idxprom80 = zext i8 %73 to i64
  %74 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern81 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %74, i32 0, i32 0
  %75 = load i16*, i16** %pattern81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %75, i64 %idxprom80
  %76 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %76 to i32
  %and84 = and i32 %conv83, 255
  %conv85 = trunc i32 %and84 to i8
  %idxprom86 = zext i8 %conv85 to i64
  %77 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %trans87 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %77, i32 0, i32 3
  %78 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans87, align 8
  %arrayidx88 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %78, i64 %idxprom86
  store %struct.cli_ac_node* %72, %struct.cli_ac_node** %arrayidx88, align 8
  %79 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %leaf89 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %79, i32 0, i32 0
  store i8 0, i8* %leaf89, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.74, %if.end.34
  %80 = load %struct.cli_ac_node*, %struct.cli_ac_node** %next, align 8
  store %struct.cli_ac_node* %80, %struct.cli_ac_node** %pt, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %81 = load i8, i8* %i, align 1
  %inc92 = add i8 %81, 1
  store i8 %inc92, i8* %i, align 1
  br label %for.cond.21

for.end.93:                                       ; preds = %for.cond.21
  %82 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_patterns = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %82, i32 0, i32 13
  %83 = load i32, i32* %ac_patterns, align 4
  %inc94 = add i32 %83, 1
  store i32 %inc94, i32* %ac_patterns, align 4
  %84 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %84, i32 0, i32 10
  %85 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable, align 8
  %86 = bitcast %struct.cli_ac_patt** %85 to i8*
  %87 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_patterns95 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %87, i32 0, i32 13
  %88 = load i32, i32* %ac_patterns95, align 4
  %conv96 = zext i32 %88 to i64
  %mul97 = mul i64 %conv96, 8
  %call98 = call i8* @cli_realloc2(i8* %86, i64 %mul97)
  %89 = bitcast i8* %call98 to %struct.cli_ac_patt**
  %90 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable99 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %90, i32 0, i32 10
  store %struct.cli_ac_patt** %89, %struct.cli_ac_patt*** %ac_pattable99, align 8
  %91 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable100 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %91, i32 0, i32 10
  %92 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable100, align 8
  %tobool101 = icmp ne %struct.cli_ac_patt** %92, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %for.end.93
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.103:                                       ; preds = %for.end.93
  %93 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %94 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_patterns104 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %94, i32 0, i32 13
  %95 = load i32, i32* %ac_patterns104, align 4
  %sub105 = sub i32 %95, 1
  %idxprom106 = zext i32 %sub105 to i64
  %96 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable107 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %96, i32 0, i32 10
  %97 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable107, align 8
  %arrayidx108 = getelementptr inbounds %struct.cli_ac_patt*, %struct.cli_ac_patt** %97, i64 %idxprom106
  store %struct.cli_ac_patt* %93, %struct.cli_ac_patt** %arrayidx108, align 8
  %98 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %final = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %98, i32 0, i32 1
  store i8 1, i8* %final, align 1
  %99 = load i8, i8* %i, align 1
  %100 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %depth = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %100, i32 0, i32 4
  store i8 %99, i8* %depth, align 1
  %101 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %list = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %101, i32 0, i32 2
  %102 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list, align 8
  store %struct.cli_ac_patt* %102, %struct.cli_ac_patt** %ph, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.226, %if.end.103
  %103 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %tobool109 = icmp ne %struct.cli_ac_patt* %103, null
  br i1 %tobool109, label %while.body, label %while.end.228

while.body:                                       ; preds = %while.cond
  %104 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %length110 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %104, i32 0, i32 2
  %105 = load i16, i16* %length110, align 2
  %conv111 = zext i16 %105 to i32
  %106 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %length112 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %106, i32 0, i32 2
  %107 = load i16, i16* %length112, align 2
  %conv113 = zext i16 %107 to i32
  %cmp114 = icmp eq i32 %conv111, %conv113
  br i1 %cmp114, label %land.lhs.true, label %if.end.226

land.lhs.true:                                    ; preds = %while.body
  %108 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %prefix_length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %108, i32 0, i32 3
  %109 = load i16, i16* %prefix_length, align 2
  %conv116 = zext i16 %109 to i32
  %110 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix_length117 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %110, i32 0, i32 3
  %111 = load i16, i16* %prefix_length117, align 2
  %conv118 = zext i16 %111 to i32
  %cmp119 = icmp eq i32 %conv116, %conv118
  br i1 %cmp119, label %if.then.121, label %if.end.226

if.then.121:                                      ; preds = %land.lhs.true
  %112 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %pattern122 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %112, i32 0, i32 0
  %113 = load i16*, i16** %pattern122, align 8
  %114 = bitcast i16* %113 to i8*
  %115 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern123 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %115, i32 0, i32 0
  %116 = load i16*, i16** %pattern123, align 8
  %117 = bitcast i16* %116 to i8*
  %118 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %length124 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %118, i32 0, i32 2
  %119 = load i16, i16* %length124, align 2
  %conv125 = zext i16 %119 to i64
  %mul126 = mul i64 %conv125, 2
  %call127 = call i32 @memcmp(i8* %114, i8* %117, i64 %mul126) #6
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.225, label %land.lhs.true.129

land.lhs.true.129:                                ; preds = %if.then.121
  %120 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %prefix = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %120, i32 0, i32 1
  %121 = load i16*, i16** %prefix, align 8
  %122 = bitcast i16* %121 to i8*
  %123 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix130 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %123, i32 0, i32 1
  %124 = load i16*, i16** %prefix130, align 8
  %125 = bitcast i16* %124 to i8*
  %126 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %prefix_length131 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %126, i32 0, i32 3
  %127 = load i16, i16* %prefix_length131, align 2
  %conv132 = zext i16 %127 to i64
  %mul133 = mul i64 %conv132, 2
  %call134 = call i32 @memcmp(i8* %122, i8* %125, i64 %mul133) #6
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.225, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.129
  %128 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %alt = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %128, i32 0, i32 12
  %129 = load i16, i16* %alt, align 2
  %tobool137 = icmp ne i16 %129, 0
  br i1 %tobool137, label %if.else.142, label %land.lhs.true.138

land.lhs.true.138:                                ; preds = %if.then.136
  %130 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alt139 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %130, i32 0, i32 12
  %131 = load i16, i16* %alt139, align 2
  %tobool140 = icmp ne i16 %131, 0
  br i1 %tobool140, label %if.else.142, label %if.then.141

if.then.141:                                      ; preds = %land.lhs.true.138
  store i8 1, i8* %match, align 1
  br label %if.end.219

if.else.142:                                      ; preds = %land.lhs.true.138, %if.then.136
  %132 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %alt143 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %132, i32 0, i32 12
  %133 = load i16, i16* %alt143, align 2
  %conv144 = zext i16 %133 to i32
  %134 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alt145 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %134, i32 0, i32 12
  %135 = load i16, i16* %alt145, align 2
  %conv146 = zext i16 %135 to i32
  %cmp147 = icmp eq i32 %conv144, %conv146
  br i1 %cmp147, label %if.then.149, label %if.else.217

if.then.149:                                      ; preds = %if.else.142
  store i8 1, i8* %match, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.214, %if.then.149
  %136 = load i8, i8* %i, align 1
  %conv151 = zext i8 %136 to i32
  %137 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %alt152 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %137, i32 0, i32 12
  %138 = load i16, i16* %alt152, align 2
  %conv153 = zext i16 %138 to i32
  %cmp154 = icmp slt i32 %conv151, %conv153
  br i1 %cmp154, label %for.body.156, label %for.end.216

for.body.156:                                     ; preds = %for.cond.150
  %139 = load i8, i8* %i, align 1
  %idxprom157 = zext i8 %139 to i64
  %140 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %alttable = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %140, i32 0, i32 14
  %141 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable, align 8
  %arrayidx158 = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %141, i64 %idxprom157
  %142 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %arrayidx158, align 8
  store %struct.cli_ac_alt* %142, %struct.cli_ac_alt** %a1, align 8
  %143 = load i8, i8* %i, align 1
  %idxprom159 = zext i8 %143 to i64
  %144 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alttable160 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %144, i32 0, i32 14
  %145 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable160, align 8
  %arrayidx161 = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %145, i64 %idxprom159
  %146 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %arrayidx161, align 8
  store %struct.cli_ac_alt* %146, %struct.cli_ac_alt** %a2, align 8
  %147 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %num = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %147, i32 0, i32 3
  %148 = load i16, i16* %num, align 2
  %conv162 = zext i16 %148 to i32
  %149 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %num163 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %149, i32 0, i32 3
  %150 = load i16, i16* %num163, align 2
  %conv164 = zext i16 %150 to i32
  %cmp165 = icmp ne i32 %conv162, %conv164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %for.body.156
  store i8 0, i8* %match, align 1
  br label %for.end.216

if.end.168:                                       ; preds = %for.body.156
  %151 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %chmode = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %151, i32 0, i32 0
  %152 = load i8, i8* %chmode, align 1
  %conv169 = zext i8 %152 to i32
  %153 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %chmode170 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %153, i32 0, i32 0
  %154 = load i8, i8* %chmode170, align 1
  %conv171 = zext i8 %154 to i32
  %cmp172 = icmp ne i32 %conv169, %conv171
  br i1 %cmp172, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %if.end.168
  store i8 0, i8* %match, align 1
  br label %for.end.216

if.else.175:                                      ; preds = %if.end.168
  %155 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %chmode176 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %155, i32 0, i32 0
  %156 = load i8, i8* %chmode176, align 1
  %tobool177 = icmp ne i8 %156, 0
  br i1 %tobool177, label %if.then.178, label %if.else.186

if.then.178:                                      ; preds = %if.else.175
  %157 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %str = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %157, i32 0, i32 1
  %158 = load i8*, i8** %str, align 8
  %159 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %str179 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %159, i32 0, i32 1
  %160 = load i8*, i8** %str179, align 8
  %161 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %num180 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %161, i32 0, i32 3
  %162 = load i16, i16* %num180, align 2
  %conv181 = zext i16 %162 to i64
  %call182 = call i32 @memcmp(i8* %158, i8* %160, i64 %conv181) #6
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.then.178
  store i8 0, i8* %match, align 1
  br label %for.end.216

if.end.185:                                       ; preds = %if.then.178
  br label %if.end.212

if.else.186:                                      ; preds = %if.else.175
  br label %while.cond.187

while.cond.187:                                   ; preds = %if.end.204, %if.else.186
  %163 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %tobool188 = icmp ne %struct.cli_ac_alt* %163, null
  br i1 %tobool188, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.187
  %164 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %tobool189 = icmp ne %struct.cli_ac_alt* %164, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.187
  %165 = phi i1 [ false, %while.cond.187 ], [ %tobool189, %land.rhs ]
  br i1 %165, label %while.body.190, label %while.end

while.body.190:                                   ; preds = %land.end
  %166 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %len191 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %166, i32 0, i32 2
  %167 = load i16, i16* %len191, align 2
  %conv192 = zext i16 %167 to i32
  %168 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %len193 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %168, i32 0, i32 2
  %169 = load i16, i16* %len193, align 2
  %conv194 = zext i16 %169 to i32
  %cmp195 = icmp ne i32 %conv192, %conv194
  br i1 %cmp195, label %if.then.203, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.190
  %170 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %str197 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %170, i32 0, i32 1
  %171 = load i8*, i8** %str197, align 8
  %172 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %str198 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %172, i32 0, i32 1
  %173 = load i8*, i8** %str198, align 8
  %174 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %len199 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %174, i32 0, i32 2
  %175 = load i16, i16* %len199, align 2
  %conv200 = zext i16 %175 to i64
  %call201 = call i32 @memcmp(i8* %171, i8* %173, i64 %conv200) #6
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %lor.lhs.false, %while.body.190
  br label %while.end

if.end.204:                                       ; preds = %lor.lhs.false
  %176 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %next205 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %176, i32 0, i32 4
  %177 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next205, align 8
  store %struct.cli_ac_alt* %177, %struct.cli_ac_alt** %a1, align 8
  %178 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %next206 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %178, i32 0, i32 4
  %179 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next206, align 8
  store %struct.cli_ac_alt* %179, %struct.cli_ac_alt** %a2, align 8
  br label %while.cond.187

while.end:                                        ; preds = %if.then.203, %land.end
  %180 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %tobool207 = icmp ne %struct.cli_ac_alt* %180, null
  br i1 %tobool207, label %if.then.210, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %while.end
  %181 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %tobool209 = icmp ne %struct.cli_ac_alt* %181, null
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %lor.lhs.false.208, %while.end
  store i8 0, i8* %match, align 1
  br label %for.end.216

if.end.211:                                       ; preds = %lor.lhs.false.208
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.185
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %182 = load i8, i8* %i, align 1
  %inc215 = add i8 %182, 1
  store i8 %inc215, i8* %i, align 1
  br label %for.cond.150

for.end.216:                                      ; preds = %if.then.210, %if.then.184, %if.then.174, %if.then.167, %for.cond.150
  br label %if.end.218

if.else.217:                                      ; preds = %if.else.142
  store i8 0, i8* %match, align 1
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.217, %for.end.216
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.141
  %183 = load i8, i8* %match, align 1
  %tobool220 = icmp ne i8 %183, 0
  br i1 %tobool220, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.end.219
  %184 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %next_same = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %184, i32 0, i32 18
  %185 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next_same, align 8
  %186 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %next_same222 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %186, i32 0, i32 18
  store %struct.cli_ac_patt* %185, %struct.cli_ac_patt** %next_same222, align 8
  %187 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %188 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %next_same223 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %188, i32 0, i32 18
  store %struct.cli_ac_patt* %187, %struct.cli_ac_patt** %next_same223, align 8
  store i32 0, i32* %retval
  br label %return

if.end.224:                                       ; preds = %if.end.219
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %land.lhs.true.129, %if.then.121
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %land.lhs.true, %while.body
  %189 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %ph, align 8
  %next227 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %189, i32 0, i32 17
  %190 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next227, align 8
  store %struct.cli_ac_patt* %190, %struct.cli_ac_patt** %ph, align 8
  br label %while.cond

while.end.228:                                    ; preds = %while.cond
  %191 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %list229 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %191, i32 0, i32 2
  %192 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list229, align 8
  %193 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %next230 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %193, i32 0, i32 17
  store %struct.cli_ac_patt* %192, %struct.cli_ac_patt** %next230, align 8
  %194 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %195 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  %list231 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %195, i32 0, i32 2
  store %struct.cli_ac_patt* %194, %struct.cli_ac_patt** %list231, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.228, %if.then.221, %if.then.102, %if.end.73, %if.then.59, %if.then.48, %if.then.32, %if.then.19
  %196 = load i32, i32* %retval
  ret i32 %196
}

declare i8* @cli_calloc(i64, i64) #1

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @cli_realloc(i8*, i64) #1

declare i8* @cli_realloc2(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @cli_ac_buildtrie(%struct.cli_matcher* %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %tobool = icmp ne %struct.cli_matcher* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -116, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 8
  %2 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %tobool1 = icmp ne %struct.cli_ac_node* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %call = call i32 @ac_maketrans(%struct.cli_matcher* %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ac_maketrans(%struct.cli_matcher* %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %bfs = alloca %struct.bfs_list*, align 8
  %bfs_last = alloca %struct.bfs_list*, align 8
  %ac_root = alloca %struct.cli_ac_node*, align 8
  %child = alloca %struct.cli_ac_node*, align 8
  %node = alloca %struct.cli_ac_node*, align 8
  %fail = alloca %struct.cli_ac_node*, align 8
  %patt = alloca %struct.cli_ac_patt*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store %struct.bfs_list* null, %struct.bfs_list** %bfs, align 8
  store %struct.bfs_list* null, %struct.bfs_list** %bfs_last, align 8
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root1 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %0, i32 0, i32 8
  %1 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root1, align 8
  store %struct.cli_ac_node* %1, %struct.cli_ac_node** %ac_root, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %trans = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %4, i32 0, i32 3
  %5 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans, align 8
  %arrayidx = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %5, i64 %idxprom
  %6 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx, align 8
  store %struct.cli_ac_node* %6, %struct.cli_ac_node** %node, align 8
  %7 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %tobool = icmp ne %struct.cli_ac_node* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %trans3 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %10, i32 0, i32 3
  %11 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans3, align 8
  %arrayidx4 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %11, i64 %idxprom2
  store %struct.cli_ac_node* %8, %struct.cli_ac_node** %arrayidx4, align 8
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %12 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %13 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %fail5 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %13, i32 0, i32 4
  store %struct.cli_ac_node* %12, %struct.cli_ac_node** %fail5, align 8
  %14 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %call = call i32 @bfs_enqueue(%struct.bfs_list** %bfs, %struct.bfs_list** %bfs_last, %struct.cli_ac_node* %14)
  store i32 %call, i32* %ret, align 4
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.64, %if.then.12, %for.end
  %call9 = call %struct.cli_ac_node* @bfs_dequeue(%struct.bfs_list** %bfs, %struct.bfs_list** %bfs_last)
  store %struct.cli_ac_node* %call9, %struct.cli_ac_node** %node, align 8
  %tobool10 = icmp ne %struct.cli_ac_node* %call9, null
  br i1 %tobool10, label %while.body, label %while.end.65

while.body:                                       ; preds = %while.cond
  %17 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %leaf = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %17, i32 0, i32 0
  %18 = load i8, i8* %leaf, align 1
  %tobool11 = icmp ne i8 %18, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.cond

if.end.13:                                        ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.62, %if.end.13
  %19 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %19, 256
  br i1 %cmp15, label %for.body.16, label %for.end.64

for.body.16:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %trans18 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %21, i32 0, i32 3
  %22 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans18, align 8
  %arrayidx19 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %22, i64 %idxprom17
  %23 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx19, align 8
  store %struct.cli_ac_node* %23, %struct.cli_ac_node** %child, align 8
  %24 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %tobool20 = icmp ne %struct.cli_ac_node* %24, null
  br i1 %tobool20, label %if.then.21, label %if.end.61

if.then.21:                                       ; preds = %for.body.16
  %25 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  %fail22 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %25, i32 0, i32 4
  %26 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail22, align 8
  store %struct.cli_ac_node* %26, %struct.cli_ac_node** %fail, align 8
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.30, %if.then.21
  %27 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail, align 8
  %leaf24 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %27, i32 0, i32 0
  %28 = load i8, i8* %leaf24, align 1
  %conv = zext i8 %28 to i32
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.23
  %29 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail, align 8
  %trans27 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %30, i32 0, i32 3
  %31 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans27, align 8
  %arrayidx28 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %31, i64 %idxprom26
  %32 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx28, align 8
  %tobool29 = icmp ne %struct.cli_ac_node* %32, null
  %lnot = xor i1 %tobool29, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.23
  %33 = phi i1 [ true, %while.cond.23 ], [ %lnot, %lor.rhs ]
  br i1 %33, label %while.body.30, label %while.end

while.body.30:                                    ; preds = %lor.end
  %34 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail, align 8
  %fail31 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %34, i32 0, i32 4
  %35 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail31, align 8
  store %struct.cli_ac_node* %35, %struct.cli_ac_node** %fail, align 8
  br label %while.cond.23

while.end:                                        ; preds = %lor.end
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail, align 8
  %trans33 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %37, i32 0, i32 3
  %38 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans33, align 8
  %arrayidx34 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %38, i64 %idxprom32
  %39 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx34, align 8
  %40 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %fail35 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %40, i32 0, i32 4
  store %struct.cli_ac_node* %39, %struct.cli_ac_node** %fail35, align 8
  %41 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %list = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %41, i32 0, i32 2
  %42 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list, align 8
  %tobool36 = icmp ne %struct.cli_ac_patt* %42, null
  br i1 %tobool36, label %if.then.37, label %if.else.47

if.then.37:                                       ; preds = %while.end
  %43 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %list38 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %43, i32 0, i32 2
  %44 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list38, align 8
  store %struct.cli_ac_patt* %44, %struct.cli_ac_patt** %patt, align 8
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.41, %if.then.37
  %45 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %next = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %45, i32 0, i32 17
  %46 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next, align 8
  %tobool40 = icmp ne %struct.cli_ac_patt* %46, null
  br i1 %tobool40, label %while.body.41, label %while.end.43

while.body.41:                                    ; preds = %while.cond.39
  %47 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %next42 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %47, i32 0, i32 17
  %48 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next42, align 8
  store %struct.cli_ac_patt* %48, %struct.cli_ac_patt** %patt, align 8
  br label %while.cond.39

while.end.43:                                     ; preds = %while.cond.39
  %49 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %fail44 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %49, i32 0, i32 4
  %50 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail44, align 8
  %list45 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %50, i32 0, i32 2
  %51 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list45, align 8
  %52 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %next46 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %52, i32 0, i32 17
  store %struct.cli_ac_patt* %51, %struct.cli_ac_patt** %next46, align 8
  br label %if.end.51

if.else.47:                                       ; preds = %while.end
  %53 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %fail48 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %53, i32 0, i32 4
  %54 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail48, align 8
  %list49 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %54, i32 0, i32 2
  %55 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list49, align 8
  %56 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %list50 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %56, i32 0, i32 2
  store %struct.cli_ac_patt* %55, %struct.cli_ac_patt** %list50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.47, %while.end.43
  %57 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %list52 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %57, i32 0, i32 2
  %58 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list52, align 8
  %tobool53 = icmp ne %struct.cli_ac_patt* %58, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %59 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %final = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %59, i32 0, i32 1
  store i8 1, i8* %final, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %60 = load %struct.cli_ac_node*, %struct.cli_ac_node** %child, align 8
  %call56 = call i32 @bfs_enqueue(%struct.bfs_list** %bfs, %struct.bfs_list** %bfs_last, %struct.cli_ac_node* %60)
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.body.16
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %62 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %62, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.14

for.end.64:                                       ; preds = %for.cond.14
  br label %while.cond

while.end.65:                                     ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.65, %if.then.59, %if.then.7
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define i32 @cli_ac_init(%struct.cli_matcher* %root, i8 zeroext %mindepth, i8 zeroext %maxdepth) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %mindepth.addr = alloca i8, align 1
  %maxdepth.addr = alloca i8, align 1
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i8 %mindepth, i8* %mindepth.addr, align 1
  store i8 %maxdepth, i8* %maxdepth.addr, align 1
  %call = call i8* @cli_calloc(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.cli_ac_node*
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 8
  store %struct.cli_ac_node* %0, %struct.cli_ac_node** %ac_root, align 8
  %2 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root1 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %2, i32 0, i32 8
  %3 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root1, align 8
  %tobool = icmp ne %struct.cli_ac_node* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @cli_calloc(i64 256, i64 8)
  %4 = bitcast i8* %call2 to %struct.cli_ac_node**
  %5 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root3 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %5, i32 0, i32 8
  %6 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root3, align 8
  %trans = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %6, i32 0, i32 3
  store %struct.cli_ac_node** %4, %struct.cli_ac_node*** %trans, align 8
  %7 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root4 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %7, i32 0, i32 8
  %8 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root4, align 8
  %trans5 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %8, i32 0, i32 3
  %9 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans5, align 8
  %tobool6 = icmp ne %struct.cli_ac_node** %9, null
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root8 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %10, i32 0, i32 8
  %11 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root8, align 8
  %12 = bitcast %struct.cli_ac_node* %11 to i8*
  call void @free(i8* %12) #4
  store i32 -114, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %13 = load i8, i8* %mindepth.addr, align 1
  %14 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %14, i32 0, i32 6
  store i8 %13, i8* %ac_mindepth, align 1
  %15 = load i8, i8* %maxdepth.addr, align 1
  %16 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %16, i32 0, i32 7
  store i8 %15, i8* %ac_maxdepth, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @cli_ac_free(%struct.cli_matcher* %root) #0 {
entry:
  %root.addr = alloca %struct.cli_matcher*, align 8
  %i = alloca i32, align 4
  %patt = alloca %struct.cli_ac_patt*, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_patterns = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 13
  %2 = load i32, i32* %ac_patterns, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %4, i32 0, i32 10
  %5 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable, align 8
  %arrayidx = getelementptr inbounds %struct.cli_ac_patt*, %struct.cli_ac_patt** %5, i64 %idxprom
  %6 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %arrayidx, align 8
  store %struct.cli_ac_patt* %6, %struct.cli_ac_patt** %patt, align 8
  %7 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %prefix = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %7, i32 0, i32 1
  %8 = load i16*, i16** %prefix, align 8
  %tobool = icmp ne i16* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %prefix1 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %9, i32 0, i32 1
  %10 = load i16*, i16** %prefix1, align 8
  %11 = bitcast i16* %10 to i8*
  call void @free(i8* %11) #4
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %pattern = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %12, i32 0, i32 0
  %13 = load i16*, i16** %pattern, align 8
  %14 = bitcast i16* %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %virname = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %15, i32 0, i32 7
  %16 = load i8*, i8** %virname, align 8
  call void @free(i8* %16) #4
  %17 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %offset = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %17, i32 0, i32 8
  %18 = load i8*, i8** %offset, align 8
  %tobool2 = icmp ne i8* %18, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %offset4 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %19, i32 0, i32 8
  %20 = load i8*, i8** %offset4, align 8
  call void @free(i8* %20) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %21 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %alt = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %21, i32 0, i32 12
  %22 = load i16, i16* %alt, align 2
  %tobool6 = icmp ne i16 %22, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %23 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %23)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %24 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %25 = bitcast %struct.cli_ac_patt* %24 to i8*
  call void @free(i8* %25) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable9 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %27, i32 0, i32 10
  %28 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable9, align 8
  %tobool10 = icmp ne %struct.cli_ac_patt** %28, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %29 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_pattable12 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %29, i32 0, i32 10
  %30 = load %struct.cli_ac_patt**, %struct.cli_ac_patt*** %ac_pattable12, align 8
  %31 = bitcast %struct.cli_ac_patt** %30 to i8*
  call void @free(i8* %31) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.28, %if.end.13
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodes = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %33, i32 0, i32 12
  %34 = load i32, i32* %ac_nodes, align 4
  %cmp15 = icmp ult i32 %32, %34
  br i1 %cmp15, label %for.body.16, label %for.end.30

for.body.16:                                      ; preds = %for.cond.14
  %35 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %35 to i64
  %36 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %36, i32 0, i32 9
  %37 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable, align 8
  %arrayidx18 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %37, i64 %idxprom17
  %38 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx18, align 8
  %leaf = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %38, i32 0, i32 0
  %39 = load i8, i8* %leaf, align 1
  %tobool19 = icmp ne i8 %39, 0
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %for.body.16
  %40 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %40 to i64
  %41 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable22 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %41, i32 0, i32 9
  %42 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable22, align 8
  %arrayidx23 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %42, i64 %idxprom21
  %43 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx23, align 8
  %trans = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %43, i32 0, i32 3
  %44 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans, align 8
  %45 = bitcast %struct.cli_ac_node** %44 to i8*
  call void @free(i8* %45) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.body.16
  %46 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %46 to i64
  %47 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable26 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %47, i32 0, i32 9
  %48 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable26, align 8
  %arrayidx27 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %48, i64 %idxprom25
  %49 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx27, align 8
  %50 = bitcast %struct.cli_ac_node* %49 to i8*
  call void @free(i8* %50) #4
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.24
  %51 = load i32, i32* %i, align 4
  %inc29 = add i32 %51, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.14

for.end.30:                                       ; preds = %for.cond.14
  %52 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable31 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %52, i32 0, i32 9
  %53 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable31, align 8
  %tobool32 = icmp ne %struct.cli_ac_node** %53, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.end.30
  %54 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_nodetable34 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %54, i32 0, i32 9
  %55 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %ac_nodetable34, align 8
  %56 = bitcast %struct.cli_ac_node** %55 to i8*
  call void @free(i8* %56) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %for.end.30
  %57 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %57, i32 0, i32 8
  %58 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %tobool36 = icmp ne %struct.cli_ac_node* %58, null
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.35
  %59 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root38 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %59, i32 0, i32 8
  %60 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root38, align 8
  %trans39 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %60, i32 0, i32 3
  %61 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans39, align 8
  %62 = bitcast %struct.cli_ac_node** %61 to i8*
  call void @free(i8* %62) #4
  %63 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root40 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %63, i32 0, i32 8
  %64 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root40, align 8
  %65 = bitcast %struct.cli_ac_node* %64 to i8*
  call void @free(i8* %65) #4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.35
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ac_free_alt(%struct.cli_ac_patt* %p) #0 {
entry:
  %p.addr = alloca %struct.cli_ac_patt*, align 8
  %i = alloca i16, align 2
  %a1 = alloca %struct.cli_ac_alt*, align 8
  %a2 = alloca %struct.cli_ac_alt*, align 8
  store %struct.cli_ac_patt* %p, %struct.cli_ac_patt** %p.addr, align 8
  %0 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %p.addr, align 8
  %alt = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %0, i32 0, i32 12
  %1 = load i16, i16* %alt, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i16, i16* %i, align 2
  %conv = zext i16 %2 to i32
  %3 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %p.addr, align 8
  %alt1 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %3, i32 0, i32 12
  %4 = load i16, i16* %alt1, align 2
  %conv2 = zext i16 %4 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16, i16* %i, align 2
  %idxprom = zext i16 %5 to i64
  %6 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %p.addr, align 8
  %alttable = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %6, i32 0, i32 14
  %7 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable, align 8
  %arrayidx = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %7, i64 %idxprom
  %8 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %arrayidx, align 8
  store %struct.cli_ac_alt* %8, %struct.cli_ac_alt** %a1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %for.body
  %9 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %tobool4 = icmp ne %struct.cli_ac_alt* %9, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  store %struct.cli_ac_alt* %10, %struct.cli_ac_alt** %a2, align 8
  %11 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a1, align 8
  %next = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %11, i32 0, i32 4
  %12 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next, align 8
  store %struct.cli_ac_alt* %12, %struct.cli_ac_alt** %a1, align 8
  %13 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %str = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %13, i32 0, i32 1
  %14 = load i8*, i8** %str, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.body
  %15 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %str7 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %15, i32 0, i32 1
  %16 = load i8*, i8** %str7, align 8
  call void @free(i8* %16) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %while.body
  %17 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %a2, align 8
  %18 = bitcast %struct.cli_ac_alt* %17 to i8*
  call void @free(i8* %18) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %19 = load i16, i16* %i, align 2
  %inc = add i16 %19, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %p.addr, align 8
  %alttable9 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %20, i32 0, i32 14
  %21 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable9, align 8
  %22 = bitcast %struct.cli_ac_alt** %21 to i8*
  call void @free(i8* %22) #4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_ac_initdata(%struct.cli_ac_data* %data, i32 %partsigs, i8 zeroext %tracklen) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.cli_ac_data*, align 8
  %partsigs.addr = alloca i32, align 4
  %tracklen.addr = alloca i8, align 1
  store %struct.cli_ac_data* %data, %struct.cli_ac_data** %data.addr, align 8
  store i32 %partsigs, i32* %partsigs.addr, align 4
  store i8 %tracklen, i8* %tracklen.addr, align 1
  %0 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %tobool = icmp ne %struct.cli_ac_data* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %partsigs.addr, align 4
  %2 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %partsigs1 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %2, i32 0, i32 0
  store i32 %1, i32* %partsigs1, align 4
  %3 = load i32, i32* %partsigs.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %partsigs.addr, align 4
  %conv = zext i32 %4 to i64
  %call = call i8* @cli_calloc(i64 %conv, i64 8)
  %5 = bitcast i8* %call to i32***
  %6 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %6, i32 0, i32 1
  store i32*** %5, i32**** %offmatrix, align 8
  %7 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix5 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %7, i32 0, i32 1
  %8 = load i32***, i32**** %offmatrix5, align 8
  %tobool6 = icmp ne i32*** %8, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @cli_ac_freedata(%struct.cli_ac_data* %data) #0 {
entry:
  %data.addr = alloca %struct.cli_ac_data*, align 8
  %i = alloca i32, align 4
  store %struct.cli_ac_data* %data, %struct.cli_ac_data** %data.addr, align 8
  %0 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %tobool = icmp ne %struct.cli_ac_data* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %partsigs = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %1, i32 0, i32 0
  %2 = load i32, i32* %partsigs, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %partsigs2 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %4, i32 0, i32 0
  %5 = load i32, i32* %partsigs2, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %7, i32 0, i32 1
  %8 = load i32***, i32**** %offmatrix, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %8, i64 %idxprom
  %9 = load i32**, i32*** %arrayidx, align 8
  %tobool3 = icmp ne i32** %9, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %10 to i64
  %11 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix6 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %11, i32 0, i32 1
  %12 = load i32***, i32**** %offmatrix6, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %12, i64 %idxprom5
  %13 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %13, i64 0
  %14 = load i32*, i32** %arrayidx8, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #4
  %16 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %16 to i64
  %17 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix10 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %17, i32 0, i32 1
  %18 = load i32***, i32**** %offmatrix10, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %18, i64 %idxprom9
  %19 = load i32**, i32*** %arrayidx11, align 8
  %20 = bitcast i32** %19 to i8*
  call void @free(i8* %20) #4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.cli_ac_data*, %struct.cli_ac_data** %data.addr, align 8
  %offmatrix12 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %22, i32 0, i32 1
  %23 = load i32***, i32**** %offmatrix12, align 8
  %24 = bitcast i32*** %23 to i8*
  call void @free(i8* %24) #4
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_ac_scanbuff(i8* %buffer, i32 %length, i8** %virname, %struct.cli_matcher* %root, %struct.cli_ac_data* %mdata, i8 zeroext %otfrec, i32 %offset, i32 %ftype, i32 %fd, %struct.cli_matched_type** %ftoffset) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %root.addr = alloca %struct.cli_matcher*, align 8
  %mdata.addr = alloca %struct.cli_ac_data*, align 8
  %otfrec.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %ftype.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %ftoffset.addr = alloca %struct.cli_matched_type**, align 8
  %current = alloca %struct.cli_ac_node*, align 8
  %patt = alloca %struct.cli_ac_patt*, align 8
  %pt = alloca %struct.cli_ac_patt*, align 8
  %i = alloca i32, align 4
  %bp = alloca i32, align 4
  %realoff = alloca i32, align 4
  %matchend = alloca i32, align 4
  %j = alloca i16, align 2
  %offmatrix = alloca i32**, align 8
  %found = alloca i8, align 1
  %info = alloca %struct.cli_target_info, align 8
  %type = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store %struct.cli_ac_data* %mdata, %struct.cli_ac_data** %mdata.addr, align 8
  store i8 %otfrec, i8* %otfrec.addr, align 1
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %ftype, i32* %ftype.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.cli_matched_type** %ftoffset, %struct.cli_matched_type*** %ftoffset.addr, align 8
  store i32 0, i32* %type, align 4
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %0, i32 0, i32 8
  %1 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root, align 8
  %tobool = icmp ne %struct.cli_ac_node* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %tobool1 = icmp ne %struct.cli_ac_data* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = bitcast %struct.cli_target_info* %info to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 8, i1 false)
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_root4 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %4, i32 0, i32 8
  %5 = load %struct.cli_ac_node*, %struct.cli_ac_node** %ac_root4, align 8
  store %struct.cli_ac_node* %5, %struct.cli_ac_node** %current, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.520, %if.end.3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %length.addr, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.522

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %leaf = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %8, i32 0, i32 0
  %9 = load i8, i8* %leaf, align 1
  %conv = zext i8 %9 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %idxprom6 = zext i8 %12 to i64
  %13 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %trans = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %13, i32 0, i32 3
  %14 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans, align 8
  %arrayidx7 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %14, i64 %idxprom6
  %15 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx7, align 8
  %tobool8 = icmp ne %struct.cli_ac_node* %15, null
  %lnot = xor i1 %tobool8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %17 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %fail = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %17, i32 0, i32 4
  %18 = load %struct.cli_ac_node*, %struct.cli_ac_node** %fail, align 8
  store %struct.cli_ac_node* %18, %struct.cli_ac_node** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %19 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %19 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %idxprom9
  %21 = load i8, i8* %arrayidx10, align 1
  %idxprom11 = zext i8 %21 to i64
  %22 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %trans12 = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %22, i32 0, i32 3
  %23 = load %struct.cli_ac_node**, %struct.cli_ac_node*** %trans12, align 8
  %arrayidx13 = getelementptr inbounds %struct.cli_ac_node*, %struct.cli_ac_node** %23, i64 %idxprom11
  %24 = load %struct.cli_ac_node*, %struct.cli_ac_node** %arrayidx13, align 8
  store %struct.cli_ac_node* %24, %struct.cli_ac_node** %current, align 8
  %25 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %final = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %25, i32 0, i32 1
  %26 = load i8, i8* %final, align 1
  %tobool14 = icmp ne i8 %26, 0
  br i1 %tobool14, label %if.then.15, label %if.end.519

if.then.15:                                       ; preds = %while.end
  %27 = load %struct.cli_ac_node*, %struct.cli_ac_node** %current, align 8
  %list = getelementptr inbounds %struct.cli_ac_node, %struct.cli_ac_node* %27, i32 0, i32 2
  %28 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %list, align 8
  store %struct.cli_ac_patt* %28, %struct.cli_ac_patt** %patt, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.517, %if.then.15
  %29 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %tobool17 = icmp ne %struct.cli_ac_patt* %29, null
  br i1 %tobool17, label %while.body.18, label %while.end.518

while.body.18:                                    ; preds = %while.cond.16
  %30 = load i32, i32* %i, align 4
  %add = add i32 %30, 1
  %31 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %depth = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %31, i32 0, i32 4
  %32 = load i8, i8* %depth, align 1
  %conv19 = zext i8 %32 to i32
  %sub = sub i32 %add, %conv19
  store i32 %sub, i32* %bp, align 4
  %33 = load i8*, i8** %buffer.addr, align 8
  %34 = load i32, i32* %bp, align 4
  %35 = load i32, i32* %length.addr, align 4
  %36 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %call = call i32 @ac_findmatch(i8* %33, i32 %34, i32 %35, %struct.cli_ac_patt* %36, i32* %matchend)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %if.then.21, label %if.end.517

if.then.21:                                       ; preds = %while.body.18
  %37 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  store %struct.cli_ac_patt* %37, %struct.cli_ac_patt** %pt, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.514, %if.then.78, %if.then.48, %if.then.21
  %38 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %tobool23 = icmp ne %struct.cli_ac_patt* %38, null
  br i1 %tobool23, label %while.body.24, label %while.end.516

while.body.24:                                    ; preds = %while.cond.22
  %39 = load i32, i32* %offset.addr, align 4
  %40 = load i32, i32* %bp, align 4
  %add25 = add i32 %39, %40
  %41 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %prefix_length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %41, i32 0, i32 3
  %42 = load i16, i16* %prefix_length, align 2
  %conv26 = zext i16 %42 to i32
  %sub27 = sub i32 %add25, %conv26
  store i32 %sub27, i32* %realoff, align 4
  %43 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %offset28 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %43, i32 0, i32 8
  %44 = load i8*, i8** %offset28, align 8
  %tobool29 = icmp ne i8* %44, null
  br i1 %tobool29, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.24
  %45 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %target = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %45, i32 0, i32 15
  %46 = load i8, i8* %target, align 1
  %conv30 = zext i8 %46 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body.24
  %47 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %47, i32 0, i32 9
  %48 = load i32, i32* %sigid, align 4
  %tobool32 = icmp ne i32 %48, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.37

lor.lhs.false.33:                                 ; preds = %land.lhs.true
  %49 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %49, i32 0, i32 11
  %50 = load i16, i16* %partno, align 2
  %conv34 = zext i16 %50 to i32
  %cmp35 = icmp eq i32 %conv34, 1
  br i1 %cmp35, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %lor.lhs.false.33, %land.lhs.true
  %51 = load i32, i32* %fd.addr, align 4
  %cmp38 = icmp eq i32 %51, -1
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.42

land.lhs.true.40:                                 ; preds = %if.then.37
  %52 = load i32, i32* %ftype.addr, align 4
  %tobool41 = icmp ne i32 %52, 0
  br i1 %tobool41, label %lor.lhs.false.42, label %if.then.48

lor.lhs.false.42:                                 ; preds = %land.lhs.true.40, %if.then.37
  %53 = load i32, i32* %ftype.addr, align 4
  %54 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %offset43 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %54, i32 0, i32 8
  %55 = load i8*, i8** %offset43, align 8
  %56 = load i32, i32* %realoff, align 4
  %conv44 = zext i32 %56 to i64
  %57 = load i32, i32* %fd.addr, align 4
  %58 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %virname45 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %58, i32 0, i32 7
  %59 = load i8*, i8** %virname45, align 8
  %call46 = call i32 @cli_validatesig(i32 %53, i8* %55, i64 %conv44, %struct.cli_target_info* %info, i32 %57, i8* %59)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.40
  %60 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %next_same = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %60, i32 0, i32 18
  %61 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next_same, align 8
  store %struct.cli_ac_patt* %61, %struct.cli_ac_patt** %pt, align 8
  br label %while.cond.22

if.end.49:                                        ; preds = %lor.lhs.false.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %lor.lhs.false.33, %lor.lhs.false
  %62 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid51 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %62, i32 0, i32 9
  %63 = load i32, i32* %sigid51, align 4
  %tobool52 = icmp ne i32 %63, 0
  br i1 %tobool52, label %if.then.53, label %if.else.438

if.then.53:                                       ; preds = %if.end.50
  %64 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno54 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %64, i32 0, i32 11
  %65 = load i16, i16* %partno54, align 2
  %conv55 = zext i16 %65 to i32
  %cmp56 = icmp ne i32 %conv55, 1
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.80

land.lhs.true.58:                                 ; preds = %if.then.53
  %66 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid59 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %66, i32 0, i32 9
  %67 = load i32, i32* %sigid59, align 4
  %sub60 = sub i32 %67, 1
  %idxprom61 = zext i32 %sub60 to i64
  %68 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix62 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %68, i32 0, i32 1
  %69 = load i32***, i32**** %offmatrix62, align 8
  %arrayidx63 = getelementptr inbounds i32**, i32*** %69, i64 %idxprom61
  %70 = load i32**, i32*** %arrayidx63, align 8
  %tobool64 = icmp ne i32** %70, null
  br i1 %tobool64, label %lor.lhs.false.65, label %if.then.78

lor.lhs.false.65:                                 ; preds = %land.lhs.true.58
  %71 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno66 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %71, i32 0, i32 11
  %72 = load i16, i16* %partno66, align 2
  %conv67 = zext i16 %72 to i32
  %sub68 = sub nsw i32 %conv67, 2
  %idxprom69 = sext i32 %sub68 to i64
  %73 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid70 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %73, i32 0, i32 9
  %74 = load i32, i32* %sigid70, align 4
  %sub71 = sub i32 %74, 1
  %idxprom72 = zext i32 %sub71 to i64
  %75 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix73 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %75, i32 0, i32 1
  %76 = load i32***, i32**** %offmatrix73, align 8
  %arrayidx74 = getelementptr inbounds i32**, i32*** %76, i64 %idxprom72
  %77 = load i32**, i32*** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %77, i64 %idxprom69
  %78 = load i32*, i32** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx76, align 4
  %tobool77 = icmp ne i32 %79, 0
  br i1 %tobool77, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.58
  %80 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %next_same79 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %80, i32 0, i32 18
  %81 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next_same79, align 8
  store %struct.cli_ac_patt* %81, %struct.cli_ac_patt** %pt, align 8
  br label %while.cond.22

if.end.80:                                        ; preds = %lor.lhs.false.65, %if.then.53
  %82 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid81 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %82, i32 0, i32 9
  %83 = load i32, i32* %sigid81, align 4
  %sub82 = sub i32 %83, 1
  %idxprom83 = zext i32 %sub82 to i64
  %84 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix84 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %84, i32 0, i32 1
  %85 = load i32***, i32**** %offmatrix84, align 8
  %arrayidx85 = getelementptr inbounds i32**, i32*** %85, i64 %idxprom83
  %86 = load i32**, i32*** %arrayidx85, align 8
  %tobool86 = icmp ne i32** %86, null
  br i1 %tobool86, label %if.end.186, label %if.then.87

if.then.87:                                       ; preds = %if.end.80
  %87 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %87, i32 0, i32 10
  %88 = load i16, i16* %parts, align 2
  %conv88 = zext i16 %88 to i64
  %mul = mul i64 %conv88, 8
  %call89 = call i8* @cli_malloc(i64 %mul)
  %89 = bitcast i8* %call89 to i32**
  %90 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid90 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %90, i32 0, i32 9
  %91 = load i32, i32* %sigid90, align 4
  %sub91 = sub i32 %91, 1
  %idxprom92 = zext i32 %sub91 to i64
  %92 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix93 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %92, i32 0, i32 1
  %93 = load i32***, i32**** %offmatrix93, align 8
  %arrayidx94 = getelementptr inbounds i32**, i32*** %93, i64 %idxprom92
  store i32** %89, i32*** %arrayidx94, align 8
  %94 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid95 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %94, i32 0, i32 9
  %95 = load i32, i32* %sigid95, align 4
  %sub96 = sub i32 %95, 1
  %idxprom97 = zext i32 %sub96 to i64
  %96 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix98 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %96, i32 0, i32 1
  %97 = load i32***, i32**** %offmatrix98, align 8
  %arrayidx99 = getelementptr inbounds i32**, i32*** %97, i64 %idxprom97
  %98 = load i32**, i32*** %arrayidx99, align 8
  %tobool100 = icmp ne i32** %98, null
  br i1 %tobool100, label %if.end.104, label %if.then.101

if.then.101:                                      ; preds = %if.then.87
  %99 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid102 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %99, i32 0, i32 9
  %100 = load i32, i32* %sigid102, align 4
  %sub103 = sub i32 %100, 1
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i32 %sub103)
  store i32 -114, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.87
  %101 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts105 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %101, i32 0, i32 10
  %102 = load i16, i16* %parts105, align 2
  %conv106 = zext i16 %102 to i32
  %mul107 = mul nsw i32 %conv106, 9
  %conv108 = sext i32 %mul107 to i64
  %mul109 = mul i64 %conv108, 4
  %call110 = call i8* @cli_malloc(i64 %mul109)
  %103 = bitcast i8* %call110 to i32*
  %104 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid111 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %104, i32 0, i32 9
  %105 = load i32, i32* %sigid111, align 4
  %sub112 = sub i32 %105, 1
  %idxprom113 = zext i32 %sub112 to i64
  %106 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix114 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %106, i32 0, i32 1
  %107 = load i32***, i32**** %offmatrix114, align 8
  %arrayidx115 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom113
  %108 = load i32**, i32*** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %108, i64 0
  store i32* %103, i32** %arrayidx116, align 8
  %109 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid117 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %109, i32 0, i32 9
  %110 = load i32, i32* %sigid117, align 4
  %sub118 = sub i32 %110, 1
  %idxprom119 = zext i32 %sub118 to i64
  %111 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix120 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %111, i32 0, i32 1
  %112 = load i32***, i32**** %offmatrix120, align 8
  %arrayidx121 = getelementptr inbounds i32**, i32*** %112, i64 %idxprom119
  %113 = load i32**, i32*** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32*, i32** %113, i64 0
  %114 = load i32*, i32** %arrayidx122, align 8
  %tobool123 = icmp ne i32* %114, null
  br i1 %tobool123, label %if.end.137, label %if.then.124

if.then.124:                                      ; preds = %if.end.104
  %115 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid125 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %115, i32 0, i32 9
  %116 = load i32, i32* %sigid125, align 4
  %sub126 = sub i32 %116, 1
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0), i32 %sub126)
  %117 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid127 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %117, i32 0, i32 9
  %118 = load i32, i32* %sigid127, align 4
  %sub128 = sub i32 %118, 1
  %idxprom129 = zext i32 %sub128 to i64
  %119 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix130 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %119, i32 0, i32 1
  %120 = load i32***, i32**** %offmatrix130, align 8
  %arrayidx131 = getelementptr inbounds i32**, i32*** %120, i64 %idxprom129
  %121 = load i32**, i32*** %arrayidx131, align 8
  %122 = bitcast i32** %121 to i8*
  call void @free(i8* %122) #4
  %123 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid132 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %123, i32 0, i32 9
  %124 = load i32, i32* %sigid132, align 4
  %sub133 = sub i32 %124, 1
  %idxprom134 = zext i32 %sub133 to i64
  %125 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix135 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %125, i32 0, i32 1
  %126 = load i32***, i32**** %offmatrix135, align 8
  %arrayidx136 = getelementptr inbounds i32**, i32*** %126, i64 %idxprom134
  store i32** null, i32*** %arrayidx136, align 8
  store i32 -114, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.104
  %127 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid138 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %127, i32 0, i32 9
  %128 = load i32, i32* %sigid138, align 4
  %sub139 = sub i32 %128, 1
  %idxprom140 = zext i32 %sub139 to i64
  %129 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix141 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %129, i32 0, i32 1
  %130 = load i32***, i32**** %offmatrix141, align 8
  %arrayidx142 = getelementptr inbounds i32**, i32*** %130, i64 %idxprom140
  %131 = load i32**, i32*** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %131, i64 0
  %132 = load i32*, i32** %arrayidx143, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts144 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %134, i32 0, i32 10
  %135 = load i16, i16* %parts144, align 2
  %conv145 = zext i16 %135 to i32
  %mul146 = mul nsw i32 %conv145, 9
  %conv147 = sext i32 %mul146 to i64
  %mul148 = mul i64 %conv147, 4
  call void @llvm.memset.p0i8.i64(i8* %133, i8 -1, i64 %mul148, i32 4, i1 false)
  %136 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid149 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %136, i32 0, i32 9
  %137 = load i32, i32* %sigid149, align 4
  %sub150 = sub i32 %137, 1
  %idxprom151 = zext i32 %sub150 to i64
  %138 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix152 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %138, i32 0, i32 1
  %139 = load i32***, i32**** %offmatrix152, align 8
  %arrayidx153 = getelementptr inbounds i32**, i32*** %139, i64 %idxprom151
  %140 = load i32**, i32*** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %140, i64 0
  %141 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 0, i32* %arrayidx155, align 4
  store i16 1, i16* %j, align 2
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc, %if.end.137
  %142 = load i16, i16* %j, align 2
  %conv157 = zext i16 %142 to i32
  %143 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts158 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %143, i32 0, i32 10
  %144 = load i16, i16* %parts158, align 2
  %conv159 = zext i16 %144 to i32
  %cmp160 = icmp slt i32 %conv157, %conv159
  br i1 %cmp160, label %for.body.162, label %for.end

for.body.162:                                     ; preds = %for.cond.156
  %145 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid163 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %145, i32 0, i32 9
  %146 = load i32, i32* %sigid163, align 4
  %sub164 = sub i32 %146, 1
  %idxprom165 = zext i32 %sub164 to i64
  %147 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix166 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %147, i32 0, i32 1
  %148 = load i32***, i32**** %offmatrix166, align 8
  %arrayidx167 = getelementptr inbounds i32**, i32*** %148, i64 %idxprom165
  %149 = load i32**, i32*** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %149, i64 0
  %150 = load i32*, i32** %arrayidx168, align 8
  %151 = load i16, i16* %j, align 2
  %conv169 = zext i16 %151 to i32
  %mul170 = mul nsw i32 %conv169, 9
  %idx.ext = sext i32 %mul170 to i64
  %add.ptr = getelementptr inbounds i32, i32* %150, i64 %idx.ext
  %152 = load i16, i16* %j, align 2
  %idxprom171 = zext i16 %152 to i64
  %153 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid172 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %153, i32 0, i32 9
  %154 = load i32, i32* %sigid172, align 4
  %sub173 = sub i32 %154, 1
  %idxprom174 = zext i32 %sub173 to i64
  %155 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix175 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %155, i32 0, i32 1
  %156 = load i32***, i32**** %offmatrix175, align 8
  %arrayidx176 = getelementptr inbounds i32**, i32*** %156, i64 %idxprom174
  %157 = load i32**, i32*** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i32*, i32** %157, i64 %idxprom171
  store i32* %add.ptr, i32** %arrayidx177, align 8
  %158 = load i16, i16* %j, align 2
  %idxprom178 = zext i16 %158 to i64
  %159 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid179 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %159, i32 0, i32 9
  %160 = load i32, i32* %sigid179, align 4
  %sub180 = sub i32 %160, 1
  %idxprom181 = zext i32 %sub180 to i64
  %161 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix182 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %161, i32 0, i32 1
  %162 = load i32***, i32**** %offmatrix182, align 8
  %arrayidx183 = getelementptr inbounds i32**, i32*** %162, i64 %idxprom181
  %163 = load i32**, i32*** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %163, i64 %idxprom178
  %164 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 0, i32* %arrayidx185, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.162
  %165 = load i16, i16* %j, align 2
  %inc = add i16 %165, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.156

for.end:                                          ; preds = %for.cond.156
  br label %if.end.186

if.end.186:                                       ; preds = %for.end, %if.end.80
  %166 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %sigid187 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %166, i32 0, i32 9
  %167 = load i32, i32* %sigid187, align 4
  %sub188 = sub i32 %167, 1
  %idxprom189 = zext i32 %sub188 to i64
  %168 = load %struct.cli_ac_data*, %struct.cli_ac_data** %mdata.addr, align 8
  %offmatrix190 = getelementptr inbounds %struct.cli_ac_data, %struct.cli_ac_data* %168, i32 0, i32 1
  %169 = load i32***, i32**** %offmatrix190, align 8
  %arrayidx191 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom189
  %170 = load i32**, i32*** %arrayidx191, align 8
  store i32** %170, i32*** %offmatrix, align 8
  %171 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno192 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %171, i32 0, i32 11
  %172 = load i16, i16* %partno192, align 2
  %conv193 = zext i16 %172 to i32
  %cmp194 = icmp ne i32 %conv193, 1
  br i1 %cmp194, label %if.then.196, label %if.end.252

if.then.196:                                      ; preds = %if.end.186
  store i8 0, i8* %found, align 1
  store i16 1, i16* %j, align 2
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.249, %if.then.196
  %173 = load i16, i16* %j, align 2
  %conv198 = zext i16 %173 to i32
  %cmp199 = icmp sle i32 %conv198, 8
  br i1 %cmp199, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.197
  %174 = load i16, i16* %j, align 2
  %idxprom201 = zext i16 %174 to i64
  %175 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno202 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %175, i32 0, i32 11
  %176 = load i16, i16* %partno202, align 2
  %conv203 = zext i16 %176 to i32
  %sub204 = sub nsw i32 %conv203, 2
  %idxprom205 = sext i32 %sub204 to i64
  %177 = load i32**, i32*** %offmatrix, align 8
  %arrayidx206 = getelementptr inbounds i32*, i32** %177, i64 %idxprom205
  %178 = load i32*, i32** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %178, i64 %idxprom201
  %179 = load i32, i32* %arrayidx207, align 4
  %cmp208 = icmp ne i32 %179, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.197
  %180 = phi i1 [ false, %for.cond.197 ], [ %cmp208, %land.rhs ]
  br i1 %180, label %for.body.210, label %for.end.251

for.body.210:                                     ; preds = %land.end
  store i8 1, i8* %found, align 1
  %181 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %maxdist = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %181, i32 0, i32 6
  %182 = load i32, i32* %maxdist, align 4
  %tobool211 = icmp ne i32 %182, 0
  br i1 %tobool211, label %if.then.212, label %if.end.226

if.then.212:                                      ; preds = %for.body.210
  %183 = load i32, i32* %realoff, align 4
  %184 = load i16, i16* %j, align 2
  %idxprom213 = zext i16 %184 to i64
  %185 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno214 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %185, i32 0, i32 11
  %186 = load i16, i16* %partno214, align 2
  %conv215 = zext i16 %186 to i32
  %sub216 = sub nsw i32 %conv215, 2
  %idxprom217 = sext i32 %sub216 to i64
  %187 = load i32**, i32*** %offmatrix, align 8
  %arrayidx218 = getelementptr inbounds i32*, i32** %187, i64 %idxprom217
  %188 = load i32*, i32** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %188, i64 %idxprom213
  %189 = load i32, i32* %arrayidx219, align 4
  %sub220 = sub i32 %183, %189
  %190 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %maxdist221 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %190, i32 0, i32 6
  %191 = load i32, i32* %maxdist221, align 4
  %cmp222 = icmp ugt i32 %sub220, %191
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.then.212
  store i8 0, i8* %found, align 1
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.then.212
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %for.body.210
  %192 = load i8, i8* %found, align 1
  %conv227 = zext i8 %192 to i32
  %tobool228 = icmp ne i32 %conv227, 0
  br i1 %tobool228, label %land.lhs.true.229, label %if.end.245

land.lhs.true.229:                                ; preds = %if.end.226
  %193 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %mindist = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %193, i32 0, i32 5
  %194 = load i32, i32* %mindist, align 4
  %tobool230 = icmp ne i32 %194, 0
  br i1 %tobool230, label %if.then.231, label %if.end.245

if.then.231:                                      ; preds = %land.lhs.true.229
  %195 = load i32, i32* %realoff, align 4
  %196 = load i16, i16* %j, align 2
  %idxprom232 = zext i16 %196 to i64
  %197 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno233 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %197, i32 0, i32 11
  %198 = load i16, i16* %partno233, align 2
  %conv234 = zext i16 %198 to i32
  %sub235 = sub nsw i32 %conv234, 2
  %idxprom236 = sext i32 %sub235 to i64
  %199 = load i32**, i32*** %offmatrix, align 8
  %arrayidx237 = getelementptr inbounds i32*, i32** %199, i64 %idxprom236
  %200 = load i32*, i32** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %200, i64 %idxprom232
  %201 = load i32, i32* %arrayidx238, align 4
  %sub239 = sub i32 %195, %201
  %202 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %mindist240 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %202, i32 0, i32 5
  %203 = load i32, i32* %mindist240, align 4
  %cmp241 = icmp ult i32 %sub239, %203
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.231
  store i8 0, i8* %found, align 1
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.then.231
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true.229, %if.end.226
  %204 = load i8, i8* %found, align 1
  %tobool246 = icmp ne i8 %204, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.245
  br label %for.end.251

if.end.248:                                       ; preds = %if.end.245
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %205 = load i16, i16* %j, align 2
  %inc250 = add i16 %205, 1
  store i16 %inc250, i16* %j, align 2
  br label %for.cond.197

for.end.251:                                      ; preds = %if.then.247, %land.end
  br label %if.end.252

if.end.252:                                       ; preds = %for.end.251, %if.end.186
  %206 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno253 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %206, i32 0, i32 11
  %207 = load i16, i16* %partno253, align 2
  %conv254 = zext i16 %207 to i32
  %cmp255 = icmp eq i32 %conv254, 1
  br i1 %cmp255, label %if.then.267, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %if.end.252
  %208 = load i8, i8* %found, align 1
  %conv258 = zext i8 %208 to i32
  %tobool259 = icmp ne i32 %conv258, 0
  br i1 %tobool259, label %land.lhs.true.260, label %if.else

land.lhs.true.260:                                ; preds = %lor.lhs.false.257
  %209 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno261 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %209, i32 0, i32 11
  %210 = load i16, i16* %partno261, align 2
  %conv262 = zext i16 %210 to i32
  %211 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts263 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %211, i32 0, i32 10
  %212 = load i16, i16* %parts263, align 2
  %conv264 = zext i16 %212 to i32
  %cmp265 = icmp ne i32 %conv262, %conv264
  br i1 %cmp265, label %if.then.267, label %if.else

if.then.267:                                      ; preds = %land.lhs.true.260, %if.end.252
  %213 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno268 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %213, i32 0, i32 11
  %214 = load i16, i16* %partno268, align 2
  %conv269 = zext i16 %214 to i32
  %sub270 = sub nsw i32 %conv269, 1
  %idxprom271 = sext i32 %sub270 to i64
  %215 = load i32**, i32*** %offmatrix, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %215, i64 %idxprom271
  %216 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %216, i64 0
  %217 = load i32, i32* %arrayidx273, align 4
  %rem = srem i32 %217, 8
  store i32 %rem, i32* %arrayidx273, align 4
  %218 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno274 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %218, i32 0, i32 11
  %219 = load i16, i16* %partno274, align 2
  %conv275 = zext i16 %219 to i32
  %sub276 = sub nsw i32 %conv275, 1
  %idxprom277 = sext i32 %sub276 to i64
  %220 = load i32**, i32*** %offmatrix, align 8
  %arrayidx278 = getelementptr inbounds i32*, i32** %220, i64 %idxprom277
  %221 = load i32*, i32** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %221, i64 0
  %222 = load i32, i32* %arrayidx279, align 4
  %inc280 = add nsw i32 %222, 1
  store i32 %inc280, i32* %arrayidx279, align 4
  %223 = load i32, i32* %offset.addr, align 4
  %224 = load i32, i32* %matchend, align 4
  %add281 = add i32 %223, %224
  %225 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno282 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %225, i32 0, i32 11
  %226 = load i16, i16* %partno282, align 2
  %conv283 = zext i16 %226 to i32
  %sub284 = sub nsw i32 %conv283, 1
  %idxprom285 = sext i32 %sub284 to i64
  %227 = load i32**, i32*** %offmatrix, align 8
  %arrayidx286 = getelementptr inbounds i32*, i32** %227, i64 %idxprom285
  %228 = load i32*, i32** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %228, i64 0
  %229 = load i32, i32* %arrayidx287, align 4
  %idxprom288 = sext i32 %229 to i64
  %230 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno289 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %230, i32 0, i32 11
  %231 = load i16, i16* %partno289, align 2
  %conv290 = zext i16 %231 to i32
  %sub291 = sub nsw i32 %conv290, 1
  %idxprom292 = sext i32 %sub291 to i64
  %232 = load i32**, i32*** %offmatrix, align 8
  %arrayidx293 = getelementptr inbounds i32*, i32** %232, i64 %idxprom292
  %233 = load i32*, i32** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %233, i64 %idxprom288
  store i32 %add281, i32* %arrayidx294, align 4
  %234 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno295 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %234, i32 0, i32 11
  %235 = load i16, i16* %partno295, align 2
  %conv296 = zext i16 %235 to i32
  %cmp297 = icmp eq i32 %conv296, 1
  br i1 %cmp297, label %if.then.299, label %if.end.313

if.then.299:                                      ; preds = %if.then.267
  %236 = load i32, i32* %realoff, align 4
  %237 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno300 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %237, i32 0, i32 11
  %238 = load i16, i16* %partno300, align 2
  %conv301 = zext i16 %238 to i32
  %sub302 = sub nsw i32 %conv301, 1
  %idxprom303 = sext i32 %sub302 to i64
  %239 = load i32**, i32*** %offmatrix, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %239, i64 %idxprom303
  %240 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %240, i64 0
  %241 = load i32, i32* %arrayidx305, align 4
  %idxprom306 = sext i32 %241 to i64
  %242 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts307 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %242, i32 0, i32 10
  %243 = load i16, i16* %parts307, align 2
  %conv308 = zext i16 %243 to i32
  %sub309 = sub nsw i32 %conv308, 1
  %idxprom310 = sext i32 %sub309 to i64
  %244 = load i32**, i32*** %offmatrix, align 8
  %arrayidx311 = getelementptr inbounds i32*, i32** %244, i64 %idxprom310
  %245 = load i32*, i32** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %245, i64 %idxprom306
  store i32 %236, i32* %arrayidx312, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.299, %if.then.267
  br label %if.end.437

if.else:                                          ; preds = %land.lhs.true.260, %lor.lhs.false.257
  %246 = load i8, i8* %found, align 1
  %conv314 = zext i8 %246 to i32
  %tobool315 = icmp ne i32 %conv314, 0
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.436

land.lhs.true.316:                                ; preds = %if.else
  %247 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %partno317 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %247, i32 0, i32 11
  %248 = load i16, i16* %partno317, align 2
  %conv318 = zext i16 %248 to i32
  %249 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts319 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %249, i32 0, i32 10
  %250 = load i16, i16* %parts319, align 2
  %conv320 = zext i16 %250 to i32
  %cmp321 = icmp eq i32 %conv318, %conv320
  br i1 %cmp321, label %if.then.323, label %if.end.436

if.then.323:                                      ; preds = %land.lhs.true.316
  %251 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type324 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %251, i32 0, i32 16
  %252 = load i16, i16* %type324, align 2
  %tobool325 = icmp ne i16 %252, 0
  br i1 %tobool325, label %if.then.326, label %if.else.423

if.then.326:                                      ; preds = %if.then.323
  %253 = load i8, i8* %otfrec.addr, align 1
  %tobool327 = icmp ne i8 %253, 0
  br i1 %tobool327, label %if.then.328, label %if.end.422

if.then.328:                                      ; preds = %if.then.326
  %254 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type329 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %254, i32 0, i32 16
  %255 = load i16, i16* %type329, align 2
  %conv330 = zext i16 %255 to i32
  %256 = load i32, i32* %type, align 4
  %cmp331 = icmp sgt i32 %conv330, %256
  br i1 %cmp331, label %if.then.343, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %if.then.328
  %257 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type334 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %257, i32 0, i32 16
  %258 = load i16, i16* %type334, align 2
  %conv335 = zext i16 %258 to i32
  %cmp336 = icmp sge i32 %conv335, 530
  br i1 %cmp336, label %if.then.343, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %lor.lhs.false.333
  %259 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type339 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %259, i32 0, i32 16
  %260 = load i16, i16* %type339, align 2
  %conv340 = zext i16 %260 to i32
  %cmp341 = icmp eq i32 %conv340, 502
  br i1 %cmp341, label %if.then.343, label %if.end.421

if.then.343:                                      ; preds = %lor.lhs.false.338, %lor.lhs.false.333, %if.then.328
  %261 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type344 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %261, i32 0, i32 16
  %262 = load i16, i16* %type344, align 2
  %conv345 = zext i16 %262 to i32
  store i32 %conv345, i32* %type, align 4
  %263 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %tobool346 = icmp ne %struct.cli_matched_type** %263, null
  br i1 %tobool346, label %land.lhs.true.347, label %if.end.401

land.lhs.true.347:                                ; preds = %if.then.343
  %264 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %265 = load %struct.cli_matched_type*, %struct.cli_matched_type** %264, align 8
  %tobool348 = icmp ne %struct.cli_matched_type* %265, null
  br i1 %tobool348, label %lor.lhs.false.349, label %land.lhs.true.353

lor.lhs.false.349:                                ; preds = %land.lhs.true.347
  %266 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %267 = load %struct.cli_matched_type*, %struct.cli_matched_type** %266, align 8
  %cnt = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %267, i32 0, i32 2
  %268 = load i16, i16* %cnt, align 2
  %conv350 = zext i16 %268 to i32
  %cmp351 = icmp slt i32 %conv350, 10
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.401

land.lhs.true.353:                                ; preds = %lor.lhs.false.349, %land.lhs.true.347
  %269 = load i32, i32* %ftype.addr, align 4
  %cmp354 = icmp eq i32 %269, 502
  br i1 %cmp354, label %land.lhs.true.356, label %lor.lhs.false.359

land.lhs.true.356:                                ; preds = %land.lhs.true.353
  %270 = load i32, i32* %type, align 4
  %cmp357 = icmp sge i32 %270, 530
  br i1 %cmp357, label %if.then.368, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %land.lhs.true.356, %land.lhs.true.353
  %271 = load i32, i32* %ftype.addr, align 4
  %cmp360 = icmp eq i32 %271, 502
  br i1 %cmp360, label %land.lhs.true.365, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %lor.lhs.false.359
  %272 = load i32, i32* %ftype.addr, align 4
  %cmp363 = icmp eq i32 %272, 508
  br i1 %cmp363, label %land.lhs.true.365, label %if.end.401

land.lhs.true.365:                                ; preds = %lor.lhs.false.362, %lor.lhs.false.359
  %273 = load i32, i32* %type, align 4
  %cmp366 = icmp eq i32 %273, 502
  br i1 %cmp366, label %if.then.368, label %if.end.401

if.then.368:                                      ; preds = %land.lhs.true.365, %land.lhs.true.356
  store i16 1, i16* %j, align 2
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.398, %if.then.368
  %274 = load i16, i16* %j, align 2
  %conv370 = zext i16 %274 to i32
  %cmp371 = icmp sle i32 %conv370, 8
  br i1 %cmp371, label %land.rhs.373, label %land.end.379

land.rhs.373:                                     ; preds = %for.cond.369
  %275 = load i16, i16* %j, align 2
  %idxprom374 = zext i16 %275 to i64
  %276 = load i32**, i32*** %offmatrix, align 8
  %arrayidx375 = getelementptr inbounds i32*, i32** %276, i64 0
  %277 = load i32*, i32** %arrayidx375, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %277, i64 %idxprom374
  %278 = load i32, i32* %arrayidx376, align 4
  %cmp377 = icmp ne i32 %278, -1
  br label %land.end.379

land.end.379:                                     ; preds = %land.rhs.373, %for.cond.369
  %279 = phi i1 [ false, %for.cond.369 ], [ %cmp377, %land.rhs.373 ]
  br i1 %279, label %for.body.380, label %for.end.400

for.body.380:                                     ; preds = %land.end.379
  %280 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %281 = load i32, i32* %type, align 4
  %282 = load i16, i16* %j, align 2
  %idxprom381 = zext i16 %282 to i64
  %283 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts382 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %283, i32 0, i32 10
  %284 = load i16, i16* %parts382, align 2
  %conv383 = zext i16 %284 to i32
  %sub384 = sub nsw i32 %conv383, 1
  %idxprom385 = sext i32 %sub384 to i64
  %285 = load i32**, i32*** %offmatrix, align 8
  %arrayidx386 = getelementptr inbounds i32*, i32** %285, i64 %idxprom385
  %286 = load i32*, i32** %arrayidx386, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %286, i64 %idxprom381
  %287 = load i32, i32* %arrayidx387, align 4
  %conv388 = sext i32 %287 to i64
  %call389 = call i32 @ac_addtype(%struct.cli_matched_type** %280, i32 %281, i64 %conv388)
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.then.391, label %if.end.397

if.then.391:                                      ; preds = %for.body.380
  %exeinfo = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo, i32 0, i32 3
  %288 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %tobool392 = icmp ne %struct.cli_exe_section* %288, null
  br i1 %tobool392, label %if.then.393, label %if.end.396

if.then.393:                                      ; preds = %if.then.391
  %exeinfo394 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section395 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo394, i32 0, i32 3
  %289 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section395, align 8
  %290 = bitcast %struct.cli_exe_section* %289 to i8*
  call void @free(i8* %290) #4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.393, %if.then.391
  store i32 -114, i32* %retval
  br label %return

if.end.397:                                       ; preds = %for.body.380
  br label %for.inc.398

for.inc.398:                                      ; preds = %if.end.397
  %291 = load i16, i16* %j, align 2
  %inc399 = add i16 %291, 1
  store i16 %inc399, i16* %j, align 2
  br label %for.cond.369

for.end.400:                                      ; preds = %land.end.379
  br label %if.end.401

if.end.401:                                       ; preds = %for.end.400, %land.lhs.true.365, %lor.lhs.false.362, %lor.lhs.false.349, %if.then.343
  %292 = load i32**, i32*** %offmatrix, align 8
  %arrayidx402 = getelementptr inbounds i32*, i32** %292, i64 0
  %293 = load i32*, i32** %arrayidx402, align 8
  %294 = bitcast i32* %293 to i8*
  %295 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts403 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %295, i32 0, i32 10
  %296 = load i16, i16* %parts403, align 2
  %conv404 = zext i16 %296 to i32
  %mul405 = mul nsw i32 %conv404, 9
  %conv406 = sext i32 %mul405 to i64
  %mul407 = mul i64 %conv406, 4
  call void @llvm.memset.p0i8.i64(i8* %294, i8 -1, i64 %mul407, i32 4, i1 false)
  store i16 0, i16* %j, align 2
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.418, %if.end.401
  %297 = load i16, i16* %j, align 2
  %conv409 = zext i16 %297 to i32
  %298 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %parts410 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %298, i32 0, i32 10
  %299 = load i16, i16* %parts410, align 2
  %conv411 = zext i16 %299 to i32
  %cmp412 = icmp slt i32 %conv409, %conv411
  br i1 %cmp412, label %for.body.414, label %for.end.420

for.body.414:                                     ; preds = %for.cond.408
  %300 = load i16, i16* %j, align 2
  %idxprom415 = zext i16 %300 to i64
  %301 = load i32**, i32*** %offmatrix, align 8
  %arrayidx416 = getelementptr inbounds i32*, i32** %301, i64 %idxprom415
  %302 = load i32*, i32** %arrayidx416, align 8
  %arrayidx417 = getelementptr inbounds i32, i32* %302, i64 0
  store i32 0, i32* %arrayidx417, align 4
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.body.414
  %303 = load i16, i16* %j, align 2
  %inc419 = add i16 %303, 1
  store i16 %inc419, i16* %j, align 2
  br label %for.cond.408

for.end.420:                                      ; preds = %for.cond.408
  br label %if.end.421

if.end.421:                                       ; preds = %for.end.420, %lor.lhs.false.338
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.then.326
  br label %if.end.435

if.else.423:                                      ; preds = %if.then.323
  %304 = load i8**, i8*** %virname.addr, align 8
  %tobool424 = icmp ne i8** %304, null
  br i1 %tobool424, label %if.then.425, label %if.end.427

if.then.425:                                      ; preds = %if.else.423
  %305 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %virname426 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %305, i32 0, i32 7
  %306 = load i8*, i8** %virname426, align 8
  %307 = load i8**, i8*** %virname.addr, align 8
  store i8* %306, i8** %307, align 8
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.425, %if.else.423
  %exeinfo428 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section429 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo428, i32 0, i32 3
  %308 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section429, align 8
  %tobool430 = icmp ne %struct.cli_exe_section* %308, null
  br i1 %tobool430, label %if.then.431, label %if.end.434

if.then.431:                                      ; preds = %if.end.427
  %exeinfo432 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section433 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo432, i32 0, i32 3
  %309 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section433, align 8
  %310 = bitcast %struct.cli_exe_section* %309 to i8*
  call void @free(i8* %310) #4
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.431, %if.end.427
  store i32 1, i32* %retval
  br label %return

if.end.435:                                       ; preds = %if.end.422
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %land.lhs.true.316, %if.else
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %if.end.313
  br label %if.end.514

if.else.438:                                      ; preds = %if.end.50
  %311 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type439 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %311, i32 0, i32 16
  %312 = load i16, i16* %type439, align 2
  %tobool440 = icmp ne i16 %312, 0
  br i1 %tobool440, label %if.then.441, label %if.else.501

if.then.441:                                      ; preds = %if.else.438
  %313 = load i8, i8* %otfrec.addr, align 1
  %tobool442 = icmp ne i8 %313, 0
  br i1 %tobool442, label %if.then.443, label %if.end.500

if.then.443:                                      ; preds = %if.then.441
  %314 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type444 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %314, i32 0, i32 16
  %315 = load i16, i16* %type444, align 2
  %conv445 = zext i16 %315 to i32
  %316 = load i32, i32* %type, align 4
  %cmp446 = icmp sgt i32 %conv445, %316
  br i1 %cmp446, label %if.then.458, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %if.then.443
  %317 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type449 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %317, i32 0, i32 16
  %318 = load i16, i16* %type449, align 2
  %conv450 = zext i16 %318 to i32
  %cmp451 = icmp sge i32 %conv450, 530
  br i1 %cmp451, label %if.then.458, label %lor.lhs.false.453

lor.lhs.false.453:                                ; preds = %lor.lhs.false.448
  %319 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type454 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %319, i32 0, i32 16
  %320 = load i16, i16* %type454, align 2
  %conv455 = zext i16 %320 to i32
  %cmp456 = icmp eq i32 %conv455, 502
  br i1 %cmp456, label %if.then.458, label %if.end.499

if.then.458:                                      ; preds = %lor.lhs.false.453, %lor.lhs.false.448, %if.then.443
  %321 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %virname459 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %321, i32 0, i32 7
  %322 = load i8*, i8** %virname459, align 8
  %323 = load i32, i32* %realoff, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i8* %322, i32 %323)
  %324 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %type460 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %324, i32 0, i32 16
  %325 = load i16, i16* %type460, align 2
  %conv461 = zext i16 %325 to i32
  store i32 %conv461, i32* %type, align 4
  %326 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %tobool462 = icmp ne %struct.cli_matched_type** %326, null
  br i1 %tobool462, label %land.lhs.true.463, label %if.end.498

land.lhs.true.463:                                ; preds = %if.then.458
  %327 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %328 = load %struct.cli_matched_type*, %struct.cli_matched_type** %327, align 8
  %tobool464 = icmp ne %struct.cli_matched_type* %328, null
  br i1 %tobool464, label %lor.lhs.false.465, label %land.lhs.true.470

lor.lhs.false.465:                                ; preds = %land.lhs.true.463
  %329 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %330 = load %struct.cli_matched_type*, %struct.cli_matched_type** %329, align 8
  %cnt466 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %330, i32 0, i32 2
  %331 = load i16, i16* %cnt466, align 2
  %conv467 = zext i16 %331 to i32
  %cmp468 = icmp slt i32 %conv467, 10
  br i1 %cmp468, label %land.lhs.true.470, label %if.end.498

land.lhs.true.470:                                ; preds = %lor.lhs.false.465, %land.lhs.true.463
  %332 = load i32, i32* %ftype.addr, align 4
  %cmp471 = icmp eq i32 %332, 502
  br i1 %cmp471, label %land.lhs.true.473, label %lor.lhs.false.476

land.lhs.true.473:                                ; preds = %land.lhs.true.470
  %333 = load i32, i32* %type, align 4
  %cmp474 = icmp sge i32 %333, 530
  br i1 %cmp474, label %if.then.485, label %lor.lhs.false.476

lor.lhs.false.476:                                ; preds = %land.lhs.true.473, %land.lhs.true.470
  %334 = load i32, i32* %ftype.addr, align 4
  %cmp477 = icmp eq i32 %334, 502
  br i1 %cmp477, label %land.lhs.true.482, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %lor.lhs.false.476
  %335 = load i32, i32* %ftype.addr, align 4
  %cmp480 = icmp eq i32 %335, 508
  br i1 %cmp480, label %land.lhs.true.482, label %if.end.498

land.lhs.true.482:                                ; preds = %lor.lhs.false.479, %lor.lhs.false.476
  %336 = load i32, i32* %type, align 4
  %cmp483 = icmp eq i32 %336, 502
  br i1 %cmp483, label %if.then.485, label %if.end.498

if.then.485:                                      ; preds = %land.lhs.true.482, %land.lhs.true.473
  %337 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %338 = load i32, i32* %type, align 4
  %339 = load i32, i32* %realoff, align 4
  %conv486 = zext i32 %339 to i64
  %call487 = call i32 @ac_addtype(%struct.cli_matched_type** %337, i32 %338, i64 %conv486)
  %tobool488 = icmp ne i32 %call487, 0
  br i1 %tobool488, label %if.then.489, label %if.end.497

if.then.489:                                      ; preds = %if.then.485
  %exeinfo490 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section491 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo490, i32 0, i32 3
  %340 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section491, align 8
  %tobool492 = icmp ne %struct.cli_exe_section* %340, null
  br i1 %tobool492, label %if.then.493, label %if.end.496

if.then.493:                                      ; preds = %if.then.489
  %exeinfo494 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section495 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo494, i32 0, i32 3
  %341 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section495, align 8
  %342 = bitcast %struct.cli_exe_section* %341 to i8*
  call void @free(i8* %342) #4
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.493, %if.then.489
  store i32 -114, i32* %retval
  br label %return

if.end.497:                                       ; preds = %if.then.485
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %land.lhs.true.482, %lor.lhs.false.479, %lor.lhs.false.465, %if.then.458
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %lor.lhs.false.453
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.441
  br label %if.end.513

if.else.501:                                      ; preds = %if.else.438
  %343 = load i8**, i8*** %virname.addr, align 8
  %tobool502 = icmp ne i8** %343, null
  br i1 %tobool502, label %if.then.503, label %if.end.505

if.then.503:                                      ; preds = %if.else.501
  %344 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %virname504 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %344, i32 0, i32 7
  %345 = load i8*, i8** %virname504, align 8
  %346 = load i8**, i8*** %virname.addr, align 8
  store i8* %345, i8** %346, align 8
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.503, %if.else.501
  %exeinfo506 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section507 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo506, i32 0, i32 3
  %347 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section507, align 8
  %tobool508 = icmp ne %struct.cli_exe_section* %347, null
  br i1 %tobool508, label %if.then.509, label %if.end.512

if.then.509:                                      ; preds = %if.end.505
  %exeinfo510 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section511 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo510, i32 0, i32 3
  %348 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section511, align 8
  %349 = bitcast %struct.cli_exe_section* %348 to i8*
  call void @free(i8* %349) #4
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.509, %if.end.505
  store i32 1, i32* %retval
  br label %return

if.end.513:                                       ; preds = %if.end.500
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %if.end.437
  %350 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pt, align 8
  %next_same515 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %350, i32 0, i32 18
  %351 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next_same515, align 8
  store %struct.cli_ac_patt* %351, %struct.cli_ac_patt** %pt, align 8
  br label %while.cond.22

while.end.516:                                    ; preds = %while.cond.22
  br label %if.end.517

if.end.517:                                       ; preds = %while.end.516, %while.body.18
  %352 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %patt, align 8
  %next = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %352, i32 0, i32 17
  %353 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %next, align 8
  store %struct.cli_ac_patt* %353, %struct.cli_ac_patt** %patt, align 8
  br label %while.cond.16

while.end.518:                                    ; preds = %while.cond.16
  br label %if.end.519

if.end.519:                                       ; preds = %while.end.518, %while.end
  br label %for.inc.520

for.inc.520:                                      ; preds = %if.end.519
  %354 = load i32, i32* %i, align 4
  %inc521 = add i32 %354, 1
  store i32 %inc521, i32* %i, align 4
  br label %for.cond

for.end.522:                                      ; preds = %for.cond
  %exeinfo523 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section524 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo523, i32 0, i32 3
  %355 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section524, align 8
  %tobool525 = icmp ne %struct.cli_exe_section* %355, null
  br i1 %tobool525, label %if.then.526, label %if.end.529

if.then.526:                                      ; preds = %for.end.522
  %exeinfo527 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section528 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo527, i32 0, i32 3
  %356 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section528, align 8
  %357 = bitcast %struct.cli_exe_section* %356 to i8*
  call void @free(i8* %357) #4
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.526, %for.end.522
  %358 = load i8, i8* %otfrec.addr, align 1
  %conv530 = zext i8 %358 to i32
  %tobool531 = icmp ne i32 %conv530, 0
  br i1 %tobool531, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.529
  %359 = load i32, i32* %type, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.529
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %359, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.end.512, %if.end.496, %if.end.434, %if.end.396, %if.then.124, %if.then.101, %if.then.2, %if.then
  %360 = load i32, i32* %retval
  ret i32 %360
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ac_findmatch(i8* %buffer, i32 %offset, i32 %length, %struct.cli_ac_patt* %pattern, i32* %end) #5 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.cli_ac_patt*, align 8
  %end.addr = alloca i32*, align 8
  %bp = alloca i32, align 4
  %wc = alloca i16, align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %altcnt = alloca i16, align 2
  %found = alloca i8, align 1
  %alt = alloca %struct.cli_ac_alt*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store %struct.cli_ac_patt* %pattern, %struct.cli_ac_patt** %pattern.addr, align 8
  store i32* %end, i32** %end.addr, align 8
  %0 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alt_pattern = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %0, i32 0, i32 13
  %1 = load i16, i16* %alt_pattern, align 2
  store i16 %1, i16* %altcnt, align 2
  %2 = load i32, i32* %offset.addr, align 4
  %3 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %length1 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %3, i32 0, i32 2
  %4 = load i16, i16* %length1, align 2
  %conv = zext i16 %4 to i32
  %add = add i32 %2, %conv
  %5 = load i32, i32* %length.addr, align 4
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix_length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %6, i32 0, i32 3
  %7 = load i16, i16* %prefix_length, align 2
  %conv3 = zext i16 %7 to i32
  %8 = load i32, i32* %offset.addr, align 4
  %cmp4 = icmp ugt i32 %conv3, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, i32* %offset.addr, align 4
  %10 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %depth = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %10, i32 0, i32 4
  %11 = load i8, i8* %depth, align 1
  %conv6 = zext i8 %11 to i32
  %add7 = add i32 %9, %conv6
  store i32 %add7, i32* %bp, align 4
  %12 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %depth8 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %12, i32 0, i32 4
  %13 = load i8, i8* %depth8, align 1
  %conv9 = zext i8 %13 to i16
  store i16 %conv9, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %if.end
  %14 = load i16, i16* %i, align 2
  %conv10 = zext i16 %14 to i32
  %15 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %length11 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %15, i32 0, i32 2
  %16 = load i16, i16* %length11, align 2
  %conv12 = zext i16 %16 to i32
  %cmp13 = icmp slt i32 %conv10, %conv12
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, i32* %bp, align 4
  %18 = load i32, i32* %length.addr, align 4
  %cmp15 = icmp ult i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %19, label %for.body, label %for.end.113

for.body:                                         ; preds = %land.end
  %20 = load i16, i16* %i, align 2
  %idxprom = zext i16 %20 to i64
  %21 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern17 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %21, i32 0, i32 0
  %22 = load i16*, i16** %pattern17, align 8
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2
  %conv18 = zext i16 %23 to i32
  %and = and i32 %conv18, 65280
  %conv19 = trunc i32 %and to i16
  store i16 %conv19, i16* %wc, align 2
  %conv20 = zext i16 %conv19 to i32
  switch i32 %conv20, label %sw.default [
    i32 0, label %sw.bb
    i32 256, label %sw.bb.33
    i32 512, label %sw.bb.34
    i32 768, label %sw.bb.77
    i32 1024, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %for.body
  %24 = load i16, i16* %i, align 2
  %idxprom21 = zext i16 %24 to i64
  %25 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern22 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %25, i32 0, i32 0
  %26 = load i16*, i16** %pattern22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %26, i64 %idxprom21
  %27 = load i16, i16* %arrayidx23, align 2
  %conv24 = trunc i16 %27 to i8
  %conv25 = zext i8 %conv24 to i32
  %28 = load i32, i32* %bp, align 4
  %idxprom26 = zext i32 %28 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 %idxprom26
  %30 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %30 to i32
  %cmp29 = icmp ne i32 %conv25, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body
  store i8 0, i8* %found, align 1
  %31 = load i16, i16* %altcnt, align 2
  %idxprom35 = zext i16 %31 to i64
  %32 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alttable = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %32, i32 0, i32 14
  %33 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable, align 8
  %arrayidx36 = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %33, i64 %idxprom35
  %34 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %arrayidx36, align 8
  store %struct.cli_ac_alt* %34, %struct.cli_ac_alt** %alt, align 8
  %35 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %chmode = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %35, i32 0, i32 0
  %36 = load i8, i8* %chmode, align 1
  %tobool = icmp ne i8 %36, 0
  br i1 %tobool, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %sw.bb.34
  store i16 0, i16* %j, align 2
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %if.then.37
  %37 = load i16, i16* %j, align 2
  %conv39 = zext i16 %37 to i32
  %38 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %num = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %38, i32 0, i32 3
  %39 = load i16, i16* %num, align 2
  %conv40 = zext i16 %39 to i32
  %cmp41 = icmp slt i32 %conv39, %conv40
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.38
  %40 = load i16, i16* %j, align 2
  %idxprom44 = zext i16 %40 to i64
  %41 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %str = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %41, i32 0, i32 1
  %42 = load i8*, i8** %str, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 %idxprom44
  %43 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %43 to i32
  %44 = load i32, i32* %bp, align 4
  %idxprom47 = zext i32 %44 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %45, i64 %idxprom47
  %46 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %46 to i32
  %cmp50 = icmp eq i32 %conv46, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body.43
  store i8 1, i8* %found, align 1
  br label %for.end

if.end.53:                                        ; preds = %for.body.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %47 = load i16, i16* %j, align 2
  %inc = add i16 %47, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.38

for.end:                                          ; preds = %if.then.52, %for.cond.38
  br label %if.end.72

if.else:                                          ; preds = %sw.bb.34
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %if.else
  %48 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %tobool54 = icmp ne %struct.cli_ac_alt* %48, null
  br i1 %tobool54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i32, i32* %bp, align 4
  %50 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %50, i32 0, i32 2
  %51 = load i16, i16* %len, align 2
  %conv55 = zext i16 %51 to i32
  %add56 = add i32 %49, %conv55
  %52 = load i32, i32* %length.addr, align 4
  %cmp57 = icmp ule i32 %add56, %52
  br i1 %cmp57, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %while.body
  %53 = load i32, i32* %bp, align 4
  %idxprom60 = zext i32 %53 to i64
  %54 = load i8*, i8** %buffer.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %54, i64 %idxprom60
  %55 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %str62 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %55, i32 0, i32 1
  %56 = load i8*, i8** %str62, align 8
  %57 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len63 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %57, i32 0, i32 2
  %58 = load i16, i16* %len63, align 2
  %conv64 = zext i16 %58 to i64
  %call = call i32 @memcmp(i8* %arrayidx61, i8* %56, i64 %conv64) #6
  %tobool65 = icmp ne i32 %call, 0
  br i1 %tobool65, label %if.end.70, label %if.then.66

if.then.66:                                       ; preds = %if.then.59
  store i8 1, i8* %found, align 1
  %59 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len67 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %59, i32 0, i32 2
  %60 = load i16, i16* %len67, align 2
  %conv68 = zext i16 %60 to i32
  %sub = sub nsw i32 %conv68, 1
  %61 = load i32, i32* %bp, align 4
  %add69 = add i32 %61, %sub
  store i32 %add69, i32* %bp, align 4
  br label %while.end

if.end.70:                                        ; preds = %if.then.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %while.body
  %62 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %next = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %62, i32 0, i32 4
  %63 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next, align 8
  store %struct.cli_ac_alt* %63, %struct.cli_ac_alt** %alt, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.66, %while.cond
  br label %if.end.72

if.end.72:                                        ; preds = %while.end, %for.end
  %64 = load i8, i8* %found, align 1
  %tobool73 = icmp ne i8 %64, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.72
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.72
  %65 = load i16, i16* %altcnt, align 2
  %inc76 = add i16 %65, 1
  store i16 %inc76, i16* %altcnt, align 2
  br label %sw.epilog

sw.bb.77:                                         ; preds = %for.body
  %66 = load i16, i16* %i, align 2
  %idxprom78 = zext i16 %66 to i64
  %67 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern79 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %67, i32 0, i32 0
  %68 = load i16*, i16** %pattern79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %68, i64 %idxprom78
  %69 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %69 to i32
  %and82 = and i32 %conv81, 240
  %conv83 = trunc i32 %and82 to i8
  %conv84 = zext i8 %conv83 to i32
  %70 = load i32, i32* %bp, align 4
  %idxprom85 = zext i32 %70 to i64
  %71 = load i8*, i8** %buffer.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %71, i64 %idxprom85
  %72 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %72 to i32
  %and88 = and i32 %conv87, 240
  %cmp89 = icmp ne i32 %conv84, %and88
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %sw.bb.77
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %sw.bb.77
  br label %sw.epilog

sw.bb.93:                                         ; preds = %for.body
  %73 = load i16, i16* %i, align 2
  %idxprom94 = zext i16 %73 to i64
  %74 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %pattern95 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %74, i32 0, i32 0
  %75 = load i16*, i16** %pattern95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %75, i64 %idxprom94
  %76 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %76 to i32
  %and98 = and i32 %conv97, 15
  %conv99 = trunc i32 %and98 to i8
  %conv100 = zext i8 %conv99 to i32
  %77 = load i32, i32* %bp, align 4
  %idxprom101 = zext i32 %77 to i64
  %78 = load i8*, i8** %buffer.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %78, i64 %idxprom101
  %79 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %79 to i32
  %and104 = and i32 %conv103, 15
  %cmp105 = icmp ne i32 %conv100, %and104
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %sw.bb.93
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %sw.bb.93
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %80 = load i16, i16* %wc, align 2
  %conv109 = zext i16 %80 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i32 %conv109)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.108, %if.end.92, %if.end.75, %sw.bb.33, %if.end.32
  %81 = load i32, i32* %bp, align 4
  %inc110 = add i32 %81, 1
  store i32 %inc110, i32* %bp, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %sw.epilog
  %82 = load i16, i16* %i, align 2
  %inc112 = add i16 %82, 1
  store i16 %inc112, i16* %i, align 2
  br label %for.cond

for.end.113:                                      ; preds = %land.end
  %83 = load i32, i32* %bp, align 4
  %84 = load i32*, i32** %end.addr, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %85, i32 0, i32 1
  %86 = load i16*, i16** %prefix, align 8
  %tobool114 = icmp ne i16* %86, null
  br i1 %tobool114, label %if.then.115, label %if.end.245

if.then.115:                                      ; preds = %for.end.113
  store i16 0, i16* %altcnt, align 2
  %87 = load i32, i32* %offset.addr, align 4
  %88 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix_length116 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %88, i32 0, i32 3
  %89 = load i16, i16* %prefix_length116, align 2
  %conv117 = zext i16 %89 to i32
  %sub118 = sub i32 %87, %conv117
  store i32 %sub118, i32* %bp, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.242, %if.then.115
  %90 = load i16, i16* %i, align 2
  %conv120 = zext i16 %90 to i32
  %91 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix_length121 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %91, i32 0, i32 3
  %92 = load i16, i16* %prefix_length121, align 2
  %conv122 = zext i16 %92 to i32
  %cmp123 = icmp slt i32 %conv120, %conv122
  br i1 %cmp123, label %for.body.125, label %for.end.244

for.body.125:                                     ; preds = %for.cond.119
  %93 = load i16, i16* %i, align 2
  %idxprom126 = zext i16 %93 to i64
  %94 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix127 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %94, i32 0, i32 1
  %95 = load i16*, i16** %prefix127, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %95, i64 %idxprom126
  %96 = load i16, i16* %arrayidx128, align 2
  %conv129 = zext i16 %96 to i32
  %and130 = and i32 %conv129, 65280
  %conv131 = trunc i32 %and130 to i16
  store i16 %conv131, i16* %wc, align 2
  %conv132 = zext i16 %conv131 to i32
  switch i32 %conv132, label %sw.default.238 [
    i32 0, label %sw.bb.133
    i32 256, label %sw.bb.146
    i32 512, label %sw.bb.147
    i32 768, label %sw.bb.206
    i32 1024, label %sw.bb.222
  ]

sw.bb.133:                                        ; preds = %for.body.125
  %97 = load i16, i16* %i, align 2
  %idxprom134 = zext i16 %97 to i64
  %98 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix135 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %98, i32 0, i32 1
  %99 = load i16*, i16** %prefix135, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %99, i64 %idxprom134
  %100 = load i16, i16* %arrayidx136, align 2
  %conv137 = trunc i16 %100 to i8
  %conv138 = zext i8 %conv137 to i32
  %101 = load i32, i32* %bp, align 4
  %idxprom139 = zext i32 %101 to i64
  %102 = load i8*, i8** %buffer.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %102, i64 %idxprom139
  %103 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %103 to i32
  %cmp142 = icmp ne i32 %conv138, %conv141
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %sw.bb.133
  store i32 0, i32* %retval
  br label %return

if.end.145:                                       ; preds = %sw.bb.133
  br label %sw.epilog.240

sw.bb.146:                                        ; preds = %for.body.125
  br label %sw.epilog.240

sw.bb.147:                                        ; preds = %for.body.125
  store i8 0, i8* %found, align 1
  %104 = load i16, i16* %altcnt, align 2
  %idxprom148 = zext i16 %104 to i64
  %105 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %alttable149 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %105, i32 0, i32 14
  %106 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable149, align 8
  %arrayidx150 = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %106, i64 %idxprom148
  %107 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %arrayidx150, align 8
  store %struct.cli_ac_alt* %107, %struct.cli_ac_alt** %alt, align 8
  %108 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %chmode151 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %108, i32 0, i32 0
  %109 = load i8, i8* %chmode151, align 1
  %tobool152 = icmp ne i8 %109, 0
  br i1 %tobool152, label %if.then.153, label %if.else.175

if.then.153:                                      ; preds = %sw.bb.147
  store i16 0, i16* %j, align 2
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.172, %if.then.153
  %110 = load i16, i16* %j, align 2
  %conv155 = zext i16 %110 to i32
  %111 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %num156 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %111, i32 0, i32 3
  %112 = load i16, i16* %num156, align 2
  %conv157 = zext i16 %112 to i32
  %cmp158 = icmp slt i32 %conv155, %conv157
  br i1 %cmp158, label %for.body.160, label %for.end.174

for.body.160:                                     ; preds = %for.cond.154
  %113 = load i16, i16* %j, align 2
  %idxprom161 = zext i16 %113 to i64
  %114 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %str162 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %114, i32 0, i32 1
  %115 = load i8*, i8** %str162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %115, i64 %idxprom161
  %116 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %116 to i32
  %117 = load i32, i32* %bp, align 4
  %idxprom165 = zext i32 %117 to i64
  %118 = load i8*, i8** %buffer.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %118, i64 %idxprom165
  %119 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %119 to i32
  %cmp168 = icmp eq i32 %conv164, %conv167
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %for.body.160
  store i8 1, i8* %found, align 1
  br label %for.end.174

if.end.171:                                       ; preds = %for.body.160
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %120 = load i16, i16* %j, align 2
  %inc173 = add i16 %120, 1
  store i16 %inc173, i16* %j, align 2
  br label %for.cond.154

for.end.174:                                      ; preds = %if.then.170, %for.cond.154
  br label %if.end.201

if.else.175:                                      ; preds = %sw.bb.147
  br label %while.cond.176

while.cond.176:                                   ; preds = %if.end.198, %if.else.175
  %121 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %tobool177 = icmp ne %struct.cli_ac_alt* %121, null
  br i1 %tobool177, label %while.body.178, label %while.end.200

while.body.178:                                   ; preds = %while.cond.176
  %122 = load i32, i32* %bp, align 4
  %123 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len179 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %123, i32 0, i32 2
  %124 = load i16, i16* %len179, align 2
  %conv180 = zext i16 %124 to i32
  %add181 = add i32 %122, %conv180
  %125 = load i32, i32* %length.addr, align 4
  %cmp182 = icmp ule i32 %add181, %125
  br i1 %cmp182, label %if.then.184, label %if.end.198

if.then.184:                                      ; preds = %while.body.178
  %126 = load i32, i32* %bp, align 4
  %idxprom185 = zext i32 %126 to i64
  %127 = load i8*, i8** %buffer.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %127, i64 %idxprom185
  %128 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %str187 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %128, i32 0, i32 1
  %129 = load i8*, i8** %str187, align 8
  %130 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len188 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %130, i32 0, i32 2
  %131 = load i16, i16* %len188, align 2
  %conv189 = zext i16 %131 to i64
  %call190 = call i32 @memcmp(i8* %arrayidx186, i8* %129, i64 %conv189) #6
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.end.197, label %if.then.192

if.then.192:                                      ; preds = %if.then.184
  store i8 1, i8* %found, align 1
  %132 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %len193 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %132, i32 0, i32 2
  %133 = load i16, i16* %len193, align 2
  %conv194 = zext i16 %133 to i32
  %sub195 = sub nsw i32 %conv194, 1
  %134 = load i32, i32* %bp, align 4
  %add196 = add i32 %134, %sub195
  store i32 %add196, i32* %bp, align 4
  br label %while.end.200

if.end.197:                                       ; preds = %if.then.184
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %while.body.178
  %135 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %alt, align 8
  %next199 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %135, i32 0, i32 4
  %136 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next199, align 8
  store %struct.cli_ac_alt* %136, %struct.cli_ac_alt** %alt, align 8
  br label %while.cond.176

while.end.200:                                    ; preds = %if.then.192, %while.cond.176
  br label %if.end.201

if.end.201:                                       ; preds = %while.end.200, %for.end.174
  %137 = load i8, i8* %found, align 1
  %tobool202 = icmp ne i8 %137, 0
  br i1 %tobool202, label %if.end.204, label %if.then.203

if.then.203:                                      ; preds = %if.end.201
  store i32 0, i32* %retval
  br label %return

if.end.204:                                       ; preds = %if.end.201
  %138 = load i16, i16* %altcnt, align 2
  %inc205 = add i16 %138, 1
  store i16 %inc205, i16* %altcnt, align 2
  br label %sw.epilog.240

sw.bb.206:                                        ; preds = %for.body.125
  %139 = load i16, i16* %i, align 2
  %idxprom207 = zext i16 %139 to i64
  %140 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix208 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %140, i32 0, i32 1
  %141 = load i16*, i16** %prefix208, align 8
  %arrayidx209 = getelementptr inbounds i16, i16* %141, i64 %idxprom207
  %142 = load i16, i16* %arrayidx209, align 2
  %conv210 = zext i16 %142 to i32
  %and211 = and i32 %conv210, 240
  %conv212 = trunc i32 %and211 to i8
  %conv213 = zext i8 %conv212 to i32
  %143 = load i32, i32* %bp, align 4
  %idxprom214 = zext i32 %143 to i64
  %144 = load i8*, i8** %buffer.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %144, i64 %idxprom214
  %145 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %145 to i32
  %and217 = and i32 %conv216, 240
  %cmp218 = icmp ne i32 %conv213, %and217
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %sw.bb.206
  store i32 0, i32* %retval
  br label %return

if.end.221:                                       ; preds = %sw.bb.206
  br label %sw.epilog.240

sw.bb.222:                                        ; preds = %for.body.125
  %146 = load i16, i16* %i, align 2
  %idxprom223 = zext i16 %146 to i64
  %147 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %pattern.addr, align 8
  %prefix224 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %147, i32 0, i32 1
  %148 = load i16*, i16** %prefix224, align 8
  %arrayidx225 = getelementptr inbounds i16, i16* %148, i64 %idxprom223
  %149 = load i16, i16* %arrayidx225, align 2
  %conv226 = zext i16 %149 to i32
  %and227 = and i32 %conv226, 15
  %conv228 = trunc i32 %and227 to i8
  %conv229 = zext i8 %conv228 to i32
  %150 = load i32, i32* %bp, align 4
  %idxprom230 = zext i32 %150 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %151, i64 %idxprom230
  %152 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %152 to i32
  %and233 = and i32 %conv232, 15
  %cmp234 = icmp ne i32 %conv229, %and233
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %sw.bb.222
  store i32 0, i32* %retval
  br label %return

if.end.237:                                       ; preds = %sw.bb.222
  br label %sw.epilog.240

sw.default.238:                                   ; preds = %for.body.125
  %153 = load i16, i16* %wc, align 2
  %conv239 = zext i16 %153 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i32 %conv239)
  store i32 0, i32* %retval
  br label %return

sw.epilog.240:                                    ; preds = %if.end.237, %if.end.221, %if.end.204, %sw.bb.146, %if.end.145
  %154 = load i32, i32* %bp, align 4
  %inc241 = add i32 %154, 1
  store i32 %inc241, i32* %bp, align 4
  br label %for.inc.242

for.inc.242:                                      ; preds = %sw.epilog.240
  %155 = load i16, i16* %i, align 2
  %inc243 = add i16 %155, 1
  store i16 %inc243, i16* %i, align 2
  br label %for.cond.119

for.end.244:                                      ; preds = %for.cond.119
  br label %if.end.245

if.end.245:                                       ; preds = %for.end.244, %for.end.113
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.245, %sw.default.238, %if.then.236, %if.then.220, %if.then.203, %if.then.144, %sw.default, %if.then.107, %if.then.91, %if.then.74, %if.then.31, %if.then
  %156 = load i32, i32* %retval
  ret i32 %156
}

declare i32 @cli_validatesig(i32, i8*, i64, %struct.cli_target_info*, i32, i8*) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ac_addtype(%struct.cli_matched_type** %list, i32 %type, i64 %offset) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.cli_matched_type**, align 8
  %type.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %tnode = alloca %struct.cli_matched_type*, align 8
  %tnode_last = alloca %struct.cli_matched_type*, align 8
  store %struct.cli_matched_type** %list, %struct.cli_matched_type*** %list.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %list.addr, align 8
  %1 = load %struct.cli_matched_type*, %struct.cli_matched_type** %0, align 8
  %tobool = icmp ne %struct.cli_matched_type* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %list.addr, align 8
  %3 = load %struct.cli_matched_type*, %struct.cli_matched_type** %2, align 8
  %cnt = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %3, i32 0, i32 2
  %4 = load i16, i16* %cnt, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i8* @cli_calloc(i64 1, i64 32)
  %5 = bitcast i8* %call to %struct.cli_matched_type*
  store %struct.cli_matched_type* %5, %struct.cli_matched_type** %tnode, align 8
  %tobool2 = icmp ne %struct.cli_matched_type* %5, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i32, i32* %type.addr, align 4
  %7 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode, align 8
  %type5 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %7, i32 0, i32 0
  store i32 %6, i32* %type5, align 4
  %8 = load i64, i64* %offset.addr, align 8
  %9 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode, align 8
  %offset6 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %9, i32 0, i32 1
  store i64 %8, i64* %offset6, align 8
  %10 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %list.addr, align 8
  %11 = load %struct.cli_matched_type*, %struct.cli_matched_type** %10, align 8
  store %struct.cli_matched_type* %11, %struct.cli_matched_type** %tnode_last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %12 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode_last, align 8
  %tobool7 = icmp ne %struct.cli_matched_type* %12, null
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode_last, align 8
  %next = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %13, i32 0, i32 3
  %14 = load %struct.cli_matched_type*, %struct.cli_matched_type** %next, align 8
  %tobool8 = icmp ne %struct.cli_matched_type* %14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode_last, align 8
  %next9 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %16, i32 0, i32 3
  %17 = load %struct.cli_matched_type*, %struct.cli_matched_type** %next9, align 8
  store %struct.cli_matched_type* %17, %struct.cli_matched_type** %tnode_last, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode_last, align 8
  %tobool10 = icmp ne %struct.cli_matched_type* %18, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.end
  %19 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode, align 8
  %20 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode_last, align 8
  %next12 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %20, i32 0, i32 3
  store %struct.cli_matched_type* %19, %struct.cli_matched_type** %next12, align 8
  br label %if.end.13

if.else:                                          ; preds = %while.end
  %21 = load %struct.cli_matched_type*, %struct.cli_matched_type** %tnode, align 8
  %22 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %list.addr, align 8
  store %struct.cli_matched_type* %21, %struct.cli_matched_type** %22, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %23 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %list.addr, align 8
  %24 = load %struct.cli_matched_type*, %struct.cli_matched_type** %23, align 8
  %cnt14 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %24, i32 0, i32 2
  %25 = load i16, i16* %cnt14, align 2
  %inc = add i16 %25, 1
  store i16 %inc, i16* %cnt14, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @cli_ac_addsig(%struct.cli_matcher* %root, i8* %virname, i8* %hexsig, i32 %sigid, i16 zeroext %parts, i16 zeroext %partno, i16 zeroext %type, i32 %mindist, i32 %maxdist, i8* %offset, i8 zeroext %target) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %virname.addr = alloca i8*, align 8
  %hexsig.addr = alloca i8*, align 8
  %sigid.addr = alloca i32, align 4
  %parts.addr = alloca i16, align 2
  %partno.addr = alloca i16, align 2
  %type.addr = alloca i16, align 2
  %mindist.addr = alloca i32, align 4
  %maxdist.addr = alloca i32, align 4
  %offset.addr = alloca i8*, align 8
  %target.addr = alloca i8, align 1
  %new = alloca %struct.cli_ac_patt*, align 8
  %pt = alloca i8*, align 8
  %hex = alloca i8*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %ppos = alloca i16, align 2
  %pend = alloca i16, align 2
  %wprefix = alloca i8, align 1
  %zprefix = alloca i8, align 1
  %namelen = alloca i8, align 1
  %plen = alloca i8, align 1
  %newalt = alloca %struct.cli_ac_alt*, align 8
  %altpt = alloca %struct.cli_ac_alt*, align 8
  %newtable = alloca %struct.cli_ac_alt**, align 8
  %ret = alloca i32, align 4
  %error = alloca i32, align 4
  %hexcpy = alloca i8*, align 8
  %hexnew = alloca i8*, align 8
  %start = alloca i8*, align 8
  %h = alloca i8*, align 8
  %c = alloca i8*, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i8* %virname, i8** %virname.addr, align 8
  store i8* %hexsig, i8** %hexsig.addr, align 8
  store i32 %sigid, i32* %sigid.addr, align 4
  store i16 %parts, i16* %parts.addr, align 2
  store i16 %partno, i16* %partno.addr, align 2
  store i16 %type, i16* %type.addr, align 2
  store i32 %mindist, i32* %mindist.addr, align 4
  store i32 %maxdist, i32* %maxdist.addr, align 4
  store i8* %offset, i8** %offset.addr, align 8
  store i8 %target, i8* %target.addr, align 1
  store i8* null, i8** %hex, align 8
  store i16 0, i16* %ppos, align 2
  store i8 0, i8* %wprefix, align 1
  store i8 1, i8* %zprefix, align 1
  store i8 0, i8* %plen, align 1
  store i32 0, i32* %error, align 4
  %0 = load i8*, i8** %hexsig.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %div = udiv i64 %call, 2
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 6
  %2 = load i8, i8* %ac_mindepth, align 1
  %conv = zext i8 %2 to i64
  %cmp = icmp ult i64 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -117, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @cli_calloc(i64 1, i64 96)
  %3 = bitcast i8* %call2 to %struct.cli_ac_patt*
  store %struct.cli_ac_patt* %3, %struct.cli_ac_patt** %new, align 8
  %cmp3 = icmp eq %struct.cli_ac_patt* %3, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -114, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i16, i16* %type.addr, align 2
  %5 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %type7 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %5, i32 0, i32 16
  store i16 %4, i16* %type7, align 2
  %6 = load i32, i32* %sigid.addr, align 4
  %7 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %sigid8 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %7, i32 0, i32 9
  store i32 %6, i32* %sigid8, align 4
  %8 = load i16, i16* %parts.addr, align 2
  %9 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %parts9 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %9, i32 0, i32 10
  store i16 %8, i16* %parts9, align 2
  %10 = load i16, i16* %partno.addr, align 2
  %11 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %partno10 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %11, i32 0, i32 11
  store i16 %10, i16* %partno10, align 2
  %12 = load i32, i32* %mindist.addr, align 4
  %13 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %mindist11 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %13, i32 0, i32 5
  store i32 %12, i32* %mindist11, align 4
  %14 = load i32, i32* %maxdist.addr, align 4
  %15 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %maxdist12 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %15, i32 0, i32 6
  store i32 %14, i32* %maxdist12, align 4
  %16 = load i8, i8* %target.addr, align 1
  %17 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %target13 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %17, i32 0, i32 15
  store i8 %16, i8* %target13, align 1
  %18 = load i8*, i8** %hexsig.addr, align 8
  %call14 = call i8* @strchr(i8* %18, i32 40) #6
  %tobool = icmp ne i8* %call14, null
  br i1 %tobool, label %if.then.15, label %if.end.155

if.then.15:                                       ; preds = %if.end.6
  %19 = load i8*, i8** %hexsig.addr, align 8
  %call16 = call i8* @cli_strdup(i8* %19)
  store i8* %call16, i8** %hexcpy, align 8
  %tobool17 = icmp ne i8* %call16, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %21 = bitcast %struct.cli_ac_patt* %20 to i8*
  call void @free(i8* %21) #4
  store i32 -114, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %22 = load i8*, i8** %hexsig.addr, align 8
  %call20 = call i64 @strlen(i8* %22) #6
  %add = add i64 %call20, 1
  %call21 = call i8* @cli_calloc(i64 %add, i64 1)
  store i8* %call21, i8** %hexnew, align 8
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  %23 = load i8*, i8** %hexcpy, align 8
  call void @free(i8* %23) #4
  %24 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %25 = bitcast %struct.cli_ac_patt* %24 to i8*
  call void @free(i8* %25) #4
  store i32 -114, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %26 = load i8*, i8** %hexcpy, align 8
  store i8* %26, i8** %pt, align 8
  store i8* %26, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.142, %if.end.24
  %27 = load i8*, i8** %start, align 8
  %call25 = call i8* @strchr(i8* %27, i32 40) #6
  store i8* %call25, i8** %pt, align 8
  %tobool26 = icmp ne i8* %call25, null
  br i1 %tobool26, label %while.body, label %while.end.143

while.body:                                       ; preds = %while.cond
  %28 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %start, align 8
  %tobool27 = icmp ne i8* %29, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %while.body
  store i32 -116, i32* %error, align 4
  br label %while.end.143

if.end.29:                                        ; preds = %while.body
  %30 = load i8*, i8** %hexnew, align 8
  %31 = load i8*, i8** %start, align 8
  %call30 = call i8* @strcat(i8* %30, i8* %31) #4
  %32 = load i8*, i8** %hexnew, align 8
  %call31 = call i8* @strcat(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #4
  %33 = load i8*, i8** %pt, align 8
  %call32 = call i8* @strchr(i8* %33, i32 41) #6
  store i8* %call32, i8** %start, align 8
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.29
  store i32 -116, i32* %error, align 4
  br label %while.end.143

if.end.35:                                        ; preds = %if.end.29
  %34 = load i8*, i8** %start, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr36, i8** %start, align 8
  store i8 0, i8* %34, align 1
  %call37 = call i8* @cli_calloc(i64 1, i64 32)
  %35 = bitcast i8* %call37 to %struct.cli_ac_alt*
  store %struct.cli_ac_alt* %35, %struct.cli_ac_alt** %newalt, align 8
  %36 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %tobool38 = icmp ne %struct.cli_ac_alt* %36, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.35
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  store i32 -114, i32* %error, align 4
  br label %while.end.143

if.end.40:                                        ; preds = %if.end.35
  %37 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %37, i32 0, i32 12
  %38 = load i16, i16* %alt, align 2
  %inc = add i16 %38, 1
  store i16 %inc, i16* %alt, align 2
  %39 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alttable = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %39, i32 0, i32 14
  %40 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %alttable, align 8
  %41 = bitcast %struct.cli_ac_alt** %40 to i8*
  %42 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt41 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %42, i32 0, i32 12
  %43 = load i16, i16* %alt41, align 2
  %conv42 = zext i16 %43 to i64
  %mul = mul i64 %conv42, 8
  %call43 = call i8* @cli_realloc(i8* %41, i64 %mul)
  %44 = bitcast i8* %call43 to %struct.cli_ac_alt**
  store %struct.cli_ac_alt** %44, %struct.cli_ac_alt*** %newtable, align 8
  %45 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %newtable, align 8
  %tobool44 = icmp ne %struct.cli_ac_alt** %45, null
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.end.40
  %46 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt46 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %46, i32 0, i32 12
  %47 = load i16, i16* %alt46, align 2
  %dec = add i16 %47, -1
  store i16 %dec, i16* %alt46, align 2
  %48 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %49 = bitcast %struct.cli_ac_alt* %48 to i8*
  call void @free(i8* %49) #4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0))
  store i32 -114, i32* %error, align 4
  br label %while.end.143

if.end.47:                                        ; preds = %if.end.40
  %50 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %51 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt48 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %51, i32 0, i32 12
  %52 = load i16, i16* %alt48, align 2
  %conv49 = zext i16 %52 to i32
  %sub = sub nsw i32 %conv49, 1
  %idxprom = sext i32 %sub to i64
  %53 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %newtable, align 8
  %arrayidx = getelementptr inbounds %struct.cli_ac_alt*, %struct.cli_ac_alt** %53, i64 %idxprom
  store %struct.cli_ac_alt* %50, %struct.cli_ac_alt** %arrayidx, align 8
  %54 = load %struct.cli_ac_alt**, %struct.cli_ac_alt*** %newtable, align 8
  %55 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alttable50 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %55, i32 0, i32 14
  store %struct.cli_ac_alt** %54, %struct.cli_ac_alt*** %alttable50, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %56 = load i16, i16* %i, align 2
  %conv51 = zext i16 %56 to i64
  %57 = load i8*, i8** %pt, align 8
  %call52 = call i64 @strlen(i8* %57) #6
  %cmp53 = icmp ult i64 %conv51, %call52
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i16, i16* %i, align 2
  %idxprom55 = zext i16 %58 to i64
  %59 = load i8*, i8** %pt, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %59, i64 %idxprom55
  %60 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %60 to i32
  %cmp58 = icmp eq i32 %conv57, 124
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %for.body
  %61 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %61, i32 0, i32 3
  %62 = load i16, i16* %num, align 2
  %inc61 = add i16 %62, 1
  store i16 %inc61, i16* %num, align 2
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %63 = load i16, i16* %i, align 2
  %inc63 = add i16 %63, 1
  store i16 %inc63, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num64 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %64, i32 0, i32 3
  %65 = load i16, i16* %num64, align 2
  %tobool65 = icmp ne i16 %65, 0
  br i1 %tobool65, label %if.else, label %if.then.66

if.then.66:                                       ; preds = %for.end
  store i32 -116, i32* %error, align 4
  br label %while.end.143

if.else:                                          ; preds = %for.end
  %66 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num67 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %66, i32 0, i32 3
  %67 = load i16, i16* %num67, align 2
  %inc68 = add i16 %67, 1
  store i16 %inc68, i16* %num67, align 2
  br label %if.end.69

if.end.69:                                        ; preds = %if.else
  %68 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num70 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %68, i32 0, i32 3
  %69 = load i16, i16* %num70, align 2
  %conv71 = zext i16 %69 to i32
  %mul72 = mul nsw i32 3, %conv71
  %sub73 = sub nsw i32 %mul72, 1
  %70 = load i8*, i8** %pt, align 8
  %call74 = call i64 @strlen(i8* %70) #6
  %conv75 = trunc i64 %call74 to i16
  %conv76 = zext i16 %conv75 to i32
  %cmp77 = icmp eq i32 %sub73, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %if.end.69
  %71 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %chmode = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %71, i32 0, i32 0
  store i8 1, i8* %chmode, align 1
  %72 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num80 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %72, i32 0, i32 3
  %73 = load i16, i16* %num80, align 2
  %conv81 = zext i16 %73 to i64
  %call82 = call i8* @cli_malloc(i64 %conv81)
  %74 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %str = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %74, i32 0, i32 1
  store i8* %call82, i8** %str, align 8
  %75 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %str83 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %75, i32 0, i32 1
  %76 = load i8*, i8** %str83, align 8
  %tobool84 = icmp ne i8* %76, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.79
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0))
  store i32 -114, i32* %error, align 4
  br label %while.end.143

if.end.86:                                        ; preds = %if.then.79
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.69
  store i16 0, i16* %i, align 2
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.137, %if.end.87
  %77 = load i16, i16* %i, align 2
  %conv89 = zext i16 %77 to i32
  %78 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %num90 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %78, i32 0, i32 3
  %79 = load i16, i16* %num90, align 2
  %conv91 = zext i16 %79 to i32
  %cmp92 = icmp slt i32 %conv89, %conv91
  br i1 %cmp92, label %for.body.94, label %for.end.139

for.body.94:                                      ; preds = %for.cond.88
  %80 = load i8*, i8** %pt, align 8
  %81 = load i16, i16* %i, align 2
  %conv95 = zext i16 %81 to i32
  %call96 = call i8* @cli_strtok(i8* %80, i32 %conv95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  store i8* %call96, i8** %h, align 8
  %tobool97 = icmp ne i8* %call96, null
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %for.body.94
  store i32 -116, i32* %error, align 4
  br label %for.end.139

if.end.99:                                        ; preds = %for.body.94
  %82 = load i8*, i8** %h, align 8
  %call100 = call i8* @cli_hex2str(i8* %82)
  store i8* %call100, i8** %c, align 8
  %tobool101 = icmp ne i8* %call100, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.end.99
  %83 = load i8*, i8** %h, align 8
  call void @free(i8* %83) #4
  store i32 -116, i32* %error, align 4
  br label %for.end.139

if.end.103:                                       ; preds = %if.end.99
  %84 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %chmode104 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %84, i32 0, i32 0
  %85 = load i8, i8* %chmode104, align 1
  %tobool105 = icmp ne i8 %85, 0
  br i1 %tobool105, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %if.end.103
  %86 = load i8*, i8** %c, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load i16, i16* %i, align 2
  %idxprom107 = zext i16 %88 to i64
  %89 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %str108 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %89, i32 0, i32 1
  %90 = load i8*, i8** %str108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %90, i64 %idxprom107
  store i8 %87, i8* %arrayidx109, align 1
  %91 = load i8*, i8** %c, align 8
  call void @free(i8* %91) #4
  br label %if.end.136

if.else.110:                                      ; preds = %if.end.103
  %92 = load i16, i16* %i, align 2
  %tobool111 = icmp ne i16 %92, 0
  br i1 %tobool111, label %if.then.112, label %if.else.129

if.then.112:                                      ; preds = %if.else.110
  %93 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  store %struct.cli_ac_alt* %93, %struct.cli_ac_alt** %altpt, align 8
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.115, %if.then.112
  %94 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %94, i32 0, i32 4
  %95 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next, align 8
  %tobool114 = icmp ne %struct.cli_ac_alt* %95, null
  br i1 %tobool114, label %while.body.115, label %while.end

while.body.115:                                   ; preds = %while.cond.113
  %96 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next116 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %96, i32 0, i32 4
  %97 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next116, align 8
  store %struct.cli_ac_alt* %97, %struct.cli_ac_alt** %altpt, align 8
  br label %while.cond.113

while.end:                                        ; preds = %while.cond.113
  %call117 = call i8* @cli_calloc(i64 1, i64 32)
  %98 = bitcast i8* %call117 to %struct.cli_ac_alt*
  %99 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next118 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %99, i32 0, i32 4
  store %struct.cli_ac_alt* %98, %struct.cli_ac_alt** %next118, align 8
  %100 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next119 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %100, i32 0, i32 4
  %101 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next119, align 8
  %tobool120 = icmp ne %struct.cli_ac_alt* %101, null
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0))
  store i32 -114, i32* %error, align 4
  %102 = load i8*, i8** %c, align 8
  call void @free(i8* %102) #4
  %103 = load i8*, i8** %h, align 8
  call void @free(i8* %103) #4
  br label %for.end.139

if.end.122:                                       ; preds = %while.end
  %104 = load i8*, i8** %c, align 8
  %105 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next123 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %105, i32 0, i32 4
  %106 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next123, align 8
  %str124 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %106, i32 0, i32 1
  store i8* %104, i8** %str124, align 8
  %107 = load i8*, i8** %h, align 8
  %call125 = call i64 @strlen(i8* %107) #6
  %div126 = udiv i64 %call125, 2
  %conv127 = trunc i64 %div126 to i16
  %108 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %altpt, align 8
  %next128 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %108, i32 0, i32 4
  %109 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %next128, align 8
  %len = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %109, i32 0, i32 2
  store i16 %conv127, i16* %len, align 2
  br label %if.end.135

if.else.129:                                      ; preds = %if.else.110
  %110 = load i8*, i8** %c, align 8
  %111 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %str130 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %111, i32 0, i32 1
  store i8* %110, i8** %str130, align 8
  %112 = load i8*, i8** %h, align 8
  %call131 = call i64 @strlen(i8* %112) #6
  %div132 = udiv i64 %call131, 2
  %conv133 = trunc i64 %div132 to i16
  %113 = load %struct.cli_ac_alt*, %struct.cli_ac_alt** %newalt, align 8
  %len134 = getelementptr inbounds %struct.cli_ac_alt, %struct.cli_ac_alt* %113, i32 0, i32 2
  store i16 %conv133, i16* %len134, align 2
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.129, %if.end.122
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.106
  %114 = load i8*, i8** %h, align 8
  call void @free(i8* %114) #4
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %115 = load i16, i16* %i, align 2
  %inc138 = add i16 %115, 1
  store i16 %inc138, i16* %i, align 2
  br label %for.cond.88

for.end.139:                                      ; preds = %if.then.121, %if.then.102, %if.then.98, %for.cond.88
  %116 = load i32, i32* %error, align 4
  %tobool140 = icmp ne i32 %116, 0
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end.139
  br label %while.end.143

if.end.142:                                       ; preds = %for.end.139
  br label %while.cond

while.end.143:                                    ; preds = %if.then.141, %if.then.85, %if.then.66, %if.then.45, %if.then.39, %if.then.34, %if.then.28, %while.cond
  %117 = load i8*, i8** %start, align 8
  %tobool144 = icmp ne i8* %117, null
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %while.end.143
  %118 = load i8*, i8** %hexnew, align 8
  %119 = load i8*, i8** %start, align 8
  %call146 = call i8* @strcat(i8* %118, i8* %119) #4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %while.end.143
  %120 = load i8*, i8** %hexnew, align 8
  store i8* %120, i8** %hex, align 8
  %121 = load i8*, i8** %hexcpy, align 8
  call void @free(i8* %121) #4
  %122 = load i32, i32* %error, align 4
  %tobool148 = icmp ne i32 %122, 0
  br i1 %tobool148, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.end.147
  %123 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt150 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %123, i32 0, i32 12
  %124 = load i16, i16* %alt150, align 2
  %tobool151 = icmp ne i16 %124, 0
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.then.149
  %125 = load i8*, i8** %hex, align 8
  call void @free(i8* %125) #4
  %126 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %126)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.then.149
  %127 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %128 = bitcast %struct.cli_ac_patt* %127 to i8*
  call void @free(i8* %128) #4
  %129 = load i32, i32* %error, align 4
  store i32 %129, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.147
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.6
  %130 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt156 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %130, i32 0, i32 12
  %131 = load i16, i16* %alt156, align 2
  %conv157 = zext i16 %131 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.155
  %132 = load i8*, i8** %hex, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.155
  %133 = load i8*, i8** %hexsig.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %132, %cond.true ], [ %133, %cond.false ]
  %call159 = call i16* @cli_hex2ui(i8* %cond)
  %134 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %134, i32 0, i32 0
  store i16* %call159, i16** %pattern, align 8
  %cmp160 = icmp eq i16* %call159, null
  br i1 %cmp160, label %if.then.162, label %if.end.167

if.then.162:                                      ; preds = %cond.end
  %135 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt163 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %135, i32 0, i32 12
  %136 = load i16, i16* %alt163, align 2
  %tobool164 = icmp ne i16 %136, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.162
  %137 = load i8*, i8** %hex, align 8
  call void @free(i8* %137) #4
  %138 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %138)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.162
  %139 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %140 = bitcast %struct.cli_ac_patt* %139 to i8*
  call void @free(i8* %140) #4
  store i32 -116, i32* %retval
  br label %return

if.end.167:                                       ; preds = %cond.end
  %141 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt168 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %141, i32 0, i32 12
  %142 = load i16, i16* %alt168, align 2
  %conv169 = zext i16 %142 to i32
  %tobool170 = icmp ne i32 %conv169, 0
  br i1 %tobool170, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %if.end.167
  %143 = load i8*, i8** %hex, align 8
  br label %cond.end.173

cond.false.172:                                   ; preds = %if.end.167
  %144 = load i8*, i8** %hexsig.addr, align 8
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.171
  %cond174 = phi i8* [ %143, %cond.true.171 ], [ %144, %cond.false.172 ]
  %call175 = call i64 @strlen(i8* %cond174) #6
  %div176 = udiv i64 %call175, 2
  %conv177 = trunc i64 %div176 to i16
  %145 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %145, i32 0, i32 2
  store i16 %conv177, i16* %length, align 2
  %146 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt178 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %146, i32 0, i32 12
  %147 = load i16, i16* %alt178, align 2
  %tobool179 = icmp ne i16 %147, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %cond.end.173
  %148 = load i8*, i8** %hex, align 8
  call void @free(i8* %148) #4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %cond.end.173
  store i16 0, i16* %i, align 2
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.209, %if.end.181
  %149 = load i16, i16* %i, align 2
  %conv183 = zext i16 %149 to i32
  %150 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %150, i32 0, i32 7
  %151 = load i8, i8* %ac_maxdepth, align 1
  %conv184 = zext i8 %151 to i32
  %cmp185 = icmp slt i32 %conv183, %conv184
  br i1 %cmp185, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.182
  %152 = load i16, i16* %i, align 2
  %conv187 = zext i16 %152 to i32
  %153 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length188 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %153, i32 0, i32 2
  %154 = load i16, i16* %length188, align 2
  %conv189 = zext i16 %154 to i32
  %cmp190 = icmp slt i32 %conv187, %conv189
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.182
  %155 = phi i1 [ false, %for.cond.182 ], [ %cmp190, %land.rhs ]
  br i1 %155, label %for.body.192, label %for.end.211

for.body.192:                                     ; preds = %land.end
  %156 = load i16, i16* %i, align 2
  %idxprom193 = zext i16 %156 to i64
  %157 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern194 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %157, i32 0, i32 0
  %158 = load i16*, i16** %pattern194, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %158, i64 %idxprom193
  %159 = load i16, i16* %arrayidx195, align 2
  %conv196 = zext i16 %159 to i32
  %and = and i32 %conv196, 65280
  %tobool197 = icmp ne i32 %and, 0
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %for.body.192
  store i8 1, i8* %wprefix, align 1
  br label %for.end.211

if.end.199:                                       ; preds = %for.body.192
  %160 = load i8, i8* %zprefix, align 1
  %conv200 = zext i8 %160 to i32
  %tobool201 = icmp ne i32 %conv200, 0
  br i1 %tobool201, label %land.lhs.true, label %if.end.208

land.lhs.true:                                    ; preds = %if.end.199
  %161 = load i16, i16* %i, align 2
  %idxprom202 = zext i16 %161 to i64
  %162 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern203 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %162, i32 0, i32 0
  %163 = load i16*, i16** %pattern203, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %163, i64 %idxprom202
  %164 = load i16, i16* %arrayidx204, align 2
  %conv205 = zext i16 %164 to i32
  %tobool206 = icmp ne i32 %conv205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %land.lhs.true
  store i8 0, i8* %zprefix, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %land.lhs.true, %if.end.199
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %165 = load i16, i16* %i, align 2
  %inc210 = add i16 %165, 1
  store i16 %inc210, i16* %i, align 2
  br label %for.cond.182

for.end.211:                                      ; preds = %if.then.198, %land.end
  %166 = load i8, i8* %wprefix, align 1
  %conv212 = zext i8 %166 to i32
  %tobool213 = icmp ne i32 %conv212, 0
  br i1 %tobool213, label %if.then.216, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.211
  %167 = load i8, i8* %zprefix, align 1
  %conv214 = zext i8 %167 to i32
  %tobool215 = icmp ne i32 %conv214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.357

if.then.216:                                      ; preds = %lor.lhs.false, %for.end.211
  %168 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length217 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %168, i32 0, i32 2
  %169 = load i16, i16* %length217, align 2
  %conv218 = zext i16 %169 to i32
  %170 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth219 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %170, i32 0, i32 6
  %171 = load i8, i8* %ac_mindepth219, align 1
  %conv220 = zext i8 %171 to i32
  %sub221 = sub nsw i32 %conv218, %conv220
  %add222 = add nsw i32 %sub221, 1
  %conv223 = trunc i32 %add222 to i16
  store i16 %conv223, i16* %pend, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.314, %if.then.216
  %172 = load i16, i16* %i, align 2
  %conv225 = zext i16 %172 to i32
  %173 = load i16, i16* %pend, align 2
  %conv226 = zext i16 %173 to i32
  %cmp227 = icmp slt i32 %conv225, %conv226
  br i1 %cmp227, label %for.body.229, label %for.end.316

for.body.229:                                     ; preds = %for.cond.224
  %174 = load i16, i16* %i, align 2
  store i16 %174, i16* %j, align 2
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.290, %for.body.229
  %175 = load i16, i16* %j, align 2
  %conv231 = zext i16 %175 to i32
  %176 = load i16, i16* %i, align 2
  %conv232 = zext i16 %176 to i32
  %177 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth233 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %177, i32 0, i32 7
  %178 = load i8, i8* %ac_maxdepth233, align 1
  %conv234 = zext i8 %178 to i32
  %add235 = add nsw i32 %conv232, %conv234
  %cmp236 = icmp slt i32 %conv231, %add235
  br i1 %cmp236, label %land.rhs.238, label %land.end.244

land.rhs.238:                                     ; preds = %for.cond.230
  %179 = load i16, i16* %j, align 2
  %conv239 = zext i16 %179 to i32
  %180 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length240 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %180, i32 0, i32 2
  %181 = load i16, i16* %length240, align 2
  %conv241 = zext i16 %181 to i32
  %cmp242 = icmp slt i32 %conv239, %conv241
  br label %land.end.244

land.end.244:                                     ; preds = %land.rhs.238, %for.cond.230
  %182 = phi i1 [ false, %for.cond.230 ], [ %cmp242, %land.rhs.238 ]
  br i1 %182, label %for.body.245, label %for.end.292

for.body.245:                                     ; preds = %land.end.244
  %183 = load i16, i16* %j, align 2
  %idxprom246 = zext i16 %183 to i64
  %184 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern247 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %184, i32 0, i32 0
  %185 = load i16*, i16** %pattern247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %185, i64 %idxprom246
  %186 = load i16, i16* %arrayidx248, align 2
  %conv249 = zext i16 %186 to i32
  %and250 = and i32 %conv249, 65280
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %for.body.245
  br label %for.end.292

if.else.253:                                      ; preds = %for.body.245
  %187 = load i16, i16* %j, align 2
  %conv254 = zext i16 %187 to i32
  %188 = load i16, i16* %i, align 2
  %conv255 = zext i16 %188 to i32
  %sub256 = sub nsw i32 %conv254, %conv255
  %add257 = add nsw i32 %sub256, 1
  %189 = load i8, i8* %plen, align 1
  %conv258 = zext i8 %189 to i32
  %cmp259 = icmp sge i32 %add257, %conv258
  br i1 %cmp259, label %if.then.261, label %if.end.267

if.then.261:                                      ; preds = %if.else.253
  %190 = load i16, i16* %j, align 2
  %conv262 = zext i16 %190 to i32
  %191 = load i16, i16* %i, align 2
  %conv263 = zext i16 %191 to i32
  %sub264 = sub nsw i32 %conv262, %conv263
  %add265 = add nsw i32 %sub264, 1
  %conv266 = trunc i32 %add265 to i8
  store i8 %conv266, i8* %plen, align 1
  %192 = load i16, i16* %i, align 2
  store i16 %192, i16* %ppos, align 2
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.261, %if.else.253
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267
  %193 = load i8, i8* %plen, align 1
  %conv269 = zext i8 %193 to i32
  %194 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth270 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %194, i32 0, i32 7
  %195 = load i8, i8* %ac_maxdepth270, align 1
  %conv271 = zext i8 %195 to i32
  %cmp272 = icmp sge i32 %conv269, %conv271
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.289

land.lhs.true.274:                                ; preds = %if.end.268
  %196 = load i16, i16* %ppos, align 2
  %idxprom275 = zext i16 %196 to i64
  %197 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern276 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %197, i32 0, i32 0
  %198 = load i16*, i16** %pattern276, align 8
  %arrayidx277 = getelementptr inbounds i16, i16* %198, i64 %idxprom275
  %199 = load i16, i16* %arrayidx277, align 2
  %conv278 = zext i16 %199 to i32
  %tobool279 = icmp ne i32 %conv278, 0
  br i1 %tobool279, label %if.then.288, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %land.lhs.true.274
  %200 = load i16, i16* %ppos, align 2
  %conv281 = zext i16 %200 to i32
  %add282 = add nsw i32 %conv281, 1
  %idxprom283 = sext i32 %add282 to i64
  %201 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern284 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %201, i32 0, i32 0
  %202 = load i16*, i16** %pattern284, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %202, i64 %idxprom283
  %203 = load i16, i16* %arrayidx285, align 2
  %conv286 = zext i16 %203 to i32
  %tobool287 = icmp ne i32 %conv286, 0
  br i1 %tobool287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %lor.lhs.false.280, %land.lhs.true.274
  br label %for.end.292

if.end.289:                                       ; preds = %lor.lhs.false.280, %if.end.268
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %204 = load i16, i16* %j, align 2
  %inc291 = add i16 %204, 1
  store i16 %inc291, i16* %j, align 2
  br label %for.cond.230

for.end.292:                                      ; preds = %if.then.288, %if.then.252, %land.end.244
  %205 = load i8, i8* %plen, align 1
  %conv293 = zext i8 %205 to i32
  %206 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_maxdepth294 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %206, i32 0, i32 7
  %207 = load i8, i8* %ac_maxdepth294, align 1
  %conv295 = zext i8 %207 to i32
  %cmp296 = icmp sge i32 %conv293, %conv295
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.313

land.lhs.true.298:                                ; preds = %for.end.292
  %208 = load i16, i16* %ppos, align 2
  %idxprom299 = zext i16 %208 to i64
  %209 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern300 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %209, i32 0, i32 0
  %210 = load i16*, i16** %pattern300, align 8
  %arrayidx301 = getelementptr inbounds i16, i16* %210, i64 %idxprom299
  %211 = load i16, i16* %arrayidx301, align 2
  %conv302 = zext i16 %211 to i32
  %tobool303 = icmp ne i32 %conv302, 0
  br i1 %tobool303, label %if.then.312, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %land.lhs.true.298
  %212 = load i16, i16* %ppos, align 2
  %conv305 = zext i16 %212 to i32
  %add306 = add nsw i32 %conv305, 1
  %idxprom307 = sext i32 %add306 to i64
  %213 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern308 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %213, i32 0, i32 0
  %214 = load i16*, i16** %pattern308, align 8
  %arrayidx309 = getelementptr inbounds i16, i16* %214, i64 %idxprom307
  %215 = load i16, i16* %arrayidx309, align 2
  %conv310 = zext i16 %215 to i32
  %tobool311 = icmp ne i32 %conv310, 0
  br i1 %tobool311, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %lor.lhs.false.304, %land.lhs.true.298
  br label %for.end.316

if.end.313:                                       ; preds = %lor.lhs.false.304, %for.end.292
  br label %for.inc.314

for.inc.314:                                      ; preds = %if.end.313
  %216 = load i16, i16* %i, align 2
  %inc315 = add i16 %216, 1
  store i16 %inc315, i16* %i, align 2
  br label %for.cond.224

for.end.316:                                      ; preds = %if.then.312, %for.cond.224
  %217 = load i8, i8* %plen, align 1
  %conv317 = zext i8 %217 to i32
  %218 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth318 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %218, i32 0, i32 6
  %219 = load i8, i8* %ac_mindepth318, align 1
  %conv319 = zext i8 %219 to i32
  %cmp320 = icmp slt i32 %conv317, %conv319
  br i1 %cmp320, label %if.then.322, label %if.end.326

if.then.322:                                      ; preds = %for.end.316
  %220 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_mindepth323 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %220, i32 0, i32 6
  %221 = load i8, i8* %ac_mindepth323, align 1
  %conv324 = zext i8 %221 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i32 %conv324)
  %222 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %222)
  %223 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern325 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %223, i32 0, i32 0
  %224 = load i16*, i16** %pattern325, align 8
  %225 = bitcast i16* %224 to i8*
  call void @free(i8* %225) #4
  %226 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %227 = bitcast %struct.cli_ac_patt* %226 to i8*
  call void @free(i8* %227) #4
  store i32 -116, i32* %retval
  br label %return

if.end.326:                                       ; preds = %for.end.316
  %228 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern327 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %228, i32 0, i32 0
  %229 = load i16*, i16** %pattern327, align 8
  %230 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %230, i32 0, i32 1
  store i16* %229, i16** %prefix, align 8
  %231 = load i16, i16* %ppos, align 2
  %232 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix_length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %232, i32 0, i32 3
  store i16 %231, i16* %prefix_length, align 2
  %233 = load i16, i16* %ppos, align 2
  %idxprom328 = zext i16 %233 to i64
  %234 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix329 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %234, i32 0, i32 1
  %235 = load i16*, i16** %prefix329, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %235, i64 %idxprom328
  %236 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern331 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %236, i32 0, i32 0
  store i16* %arrayidx330, i16** %pattern331, align 8
  %237 = load i16, i16* %ppos, align 2
  %conv332 = zext i16 %237 to i32
  %238 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length333 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %238, i32 0, i32 2
  %239 = load i16, i16* %length333, align 2
  %conv334 = zext i16 %239 to i32
  %sub335 = sub nsw i32 %conv334, %conv332
  %conv336 = trunc i32 %sub335 to i16
  store i16 %conv336, i16* %length333, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.354, %if.end.326
  %240 = load i16, i16* %i, align 2
  %conv338 = zext i16 %240 to i32
  %241 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix_length339 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %241, i32 0, i32 3
  %242 = load i16, i16* %prefix_length339, align 2
  %conv340 = zext i16 %242 to i32
  %cmp341 = icmp slt i32 %conv338, %conv340
  br i1 %cmp341, label %for.body.343, label %for.end.356

for.body.343:                                     ; preds = %for.cond.337
  %243 = load i16, i16* %i, align 2
  %idxprom344 = zext i16 %243 to i64
  %244 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix345 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %244, i32 0, i32 1
  %245 = load i16*, i16** %prefix345, align 8
  %arrayidx346 = getelementptr inbounds i16, i16* %245, i64 %idxprom344
  %246 = load i16, i16* %arrayidx346, align 2
  %conv347 = zext i16 %246 to i32
  %and348 = and i32 %conv347, 65280
  %cmp349 = icmp eq i32 %and348, 512
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %for.body.343
  %247 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %alt_pattern = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %247, i32 0, i32 13
  %248 = load i16, i16* %alt_pattern, align 2
  %inc352 = add i16 %248, 1
  store i16 %inc352, i16* %alt_pattern, align 2
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.351, %for.body.343
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %249 = load i16, i16* %i, align 2
  %inc355 = add i16 %249, 1
  store i16 %inc355, i16* %i, align 2
  br label %for.cond.337

for.end.356:                                      ; preds = %for.cond.337
  br label %if.end.357

if.end.357:                                       ; preds = %for.end.356, %lor.lhs.false
  %250 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length358 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %250, i32 0, i32 2
  %251 = load i16, i16* %length358, align 2
  %conv359 = zext i16 %251 to i32
  %252 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %252, i32 0, i32 0
  %253 = load i16, i16* %maxpatlen, align 2
  %conv360 = zext i16 %253 to i32
  %cmp361 = icmp sgt i32 %conv359, %conv360
  br i1 %cmp361, label %if.then.363, label %if.end.366

if.then.363:                                      ; preds = %if.end.357
  %254 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length364 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %254, i32 0, i32 2
  %255 = load i16, i16* %length364, align 2
  %256 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen365 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %256, i32 0, i32 0
  store i16 %255, i16* %maxpatlen365, align 2
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.363, %if.end.357
  %257 = load i8*, i8** %virname.addr, align 8
  %call367 = call i8* @strstr(i8* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #6
  store i8* %call367, i8** %pt, align 8
  %tobool368 = icmp ne i8* %call367, null
  br i1 %tobool368, label %if.then.369, label %if.else.374

if.then.369:                                      ; preds = %if.end.366
  %258 = load i8*, i8** %virname.addr, align 8
  %call370 = call i64 @strlen(i8* %258) #6
  %259 = load i8*, i8** %pt, align 8
  %call371 = call i64 @strlen(i8* %259) #6
  %sub372 = sub i64 %call370, %call371
  %conv373 = trunc i64 %sub372 to i8
  store i8 %conv373, i8* %namelen, align 1
  br label %if.end.377

if.else.374:                                      ; preds = %if.end.366
  %260 = load i8*, i8** %virname.addr, align 8
  %call375 = call i64 @strlen(i8* %260) #6
  %conv376 = trunc i64 %call375 to i8
  store i8 %conv376, i8* %namelen, align 1
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.374, %if.then.369
  %261 = load i8, i8* %namelen, align 1
  %tobool378 = icmp ne i8 %261, 0
  br i1 %tobool378, label %if.end.387, label %if.then.379

if.then.379:                                      ; preds = %if.end.377
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0))
  %262 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix380 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %262, i32 0, i32 1
  %263 = load i16*, i16** %prefix380, align 8
  %tobool381 = icmp ne i16* %263, null
  br i1 %tobool381, label %if.then.382, label %if.else.384

if.then.382:                                      ; preds = %if.then.379
  %264 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix383 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %264, i32 0, i32 1
  %265 = load i16*, i16** %prefix383, align 8
  %266 = bitcast i16* %265 to i8*
  call void @free(i8* %266) #4
  br label %if.end.386

if.else.384:                                      ; preds = %if.then.379
  %267 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern385 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %267, i32 0, i32 0
  %268 = load i16*, i16** %pattern385, align 8
  %269 = bitcast i16* %268 to i8*
  call void @free(i8* %269) #4
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.384, %if.then.382
  %270 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %270)
  %271 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %272 = bitcast %struct.cli_ac_patt* %271 to i8*
  call void @free(i8* %272) #4
  store i32 -116, i32* %retval
  br label %return

if.end.387:                                       ; preds = %if.end.377
  %273 = load i8, i8* %namelen, align 1
  %conv388 = zext i8 %273 to i32
  %add389 = add nsw i32 %conv388, 1
  %conv390 = sext i32 %add389 to i64
  %call391 = call i8* @cli_calloc(i64 %conv390, i64 1)
  %274 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname392 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %274, i32 0, i32 7
  store i8* %call391, i8** %virname392, align 8
  %cmp393 = icmp eq i8* %call391, null
  br i1 %cmp393, label %if.then.395, label %if.end.403

if.then.395:                                      ; preds = %if.end.387
  %275 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix396 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %275, i32 0, i32 1
  %276 = load i16*, i16** %prefix396, align 8
  %tobool397 = icmp ne i16* %276, null
  br i1 %tobool397, label %if.then.398, label %if.else.400

if.then.398:                                      ; preds = %if.then.395
  %277 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix399 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %277, i32 0, i32 1
  %278 = load i16*, i16** %prefix399, align 8
  %279 = bitcast i16* %278 to i8*
  call void @free(i8* %279) #4
  br label %if.end.402

if.else.400:                                      ; preds = %if.then.395
  %280 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern401 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %280, i32 0, i32 0
  %281 = load i16*, i16** %pattern401, align 8
  %282 = bitcast i16* %281 to i8*
  call void @free(i8* %282) #4
  br label %if.end.402

if.end.402:                                       ; preds = %if.else.400, %if.then.398
  %283 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %283)
  %284 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %285 = bitcast %struct.cli_ac_patt* %284 to i8*
  call void @free(i8* %285) #4
  store i32 -114, i32* %retval
  br label %return

if.end.403:                                       ; preds = %if.end.387
  %286 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname404 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %286, i32 0, i32 7
  %287 = load i8*, i8** %virname404, align 8
  %288 = load i8*, i8** %virname.addr, align 8
  %289 = load i8, i8* %namelen, align 1
  %conv405 = zext i8 %289 to i64
  %call406 = call i8* @strncpy(i8* %287, i8* %288, i64 %conv405) #4
  %290 = load i8*, i8** %offset.addr, align 8
  %tobool407 = icmp ne i8* %290, null
  br i1 %tobool407, label %if.then.408, label %if.end.423

if.then.408:                                      ; preds = %if.end.403
  %291 = load i8*, i8** %offset.addr, align 8
  %call409 = call i8* @cli_strdup(i8* %291)
  %292 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %offset410 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %292, i32 0, i32 8
  store i8* %call409, i8** %offset410, align 8
  %293 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %offset411 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %293, i32 0, i32 8
  %294 = load i8*, i8** %offset411, align 8
  %tobool412 = icmp ne i8* %294, null
  br i1 %tobool412, label %if.end.422, label %if.then.413

if.then.413:                                      ; preds = %if.then.408
  %295 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix414 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %295, i32 0, i32 1
  %296 = load i16*, i16** %prefix414, align 8
  %tobool415 = icmp ne i16* %296, null
  br i1 %tobool415, label %if.then.416, label %if.else.418

if.then.416:                                      ; preds = %if.then.413
  %297 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix417 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %297, i32 0, i32 1
  %298 = load i16*, i16** %prefix417, align 8
  %299 = bitcast i16* %298 to i8*
  call void @free(i8* %299) #4
  br label %if.end.420

if.else.418:                                      ; preds = %if.then.413
  %300 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern419 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %300, i32 0, i32 0
  %301 = load i16*, i16** %pattern419, align 8
  %302 = bitcast i16* %301 to i8*
  call void @free(i8* %302) #4
  br label %if.end.420

if.end.420:                                       ; preds = %if.else.418, %if.then.416
  %303 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %303)
  %304 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname421 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %304, i32 0, i32 7
  %305 = load i8*, i8** %virname421, align 8
  call void @free(i8* %305) #4
  %306 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %307 = bitcast %struct.cli_ac_patt* %306 to i8*
  call void @free(i8* %307) #4
  store i32 -114, i32* %retval
  br label %return

if.end.422:                                       ; preds = %if.then.408
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.end.403
  %308 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %309 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %call424 = call i32 @cli_ac_addpatt(%struct.cli_matcher* %308, %struct.cli_ac_patt* %309)
  store i32 %call424, i32* %ret, align 4
  %tobool425 = icmp ne i32 %call424, 0
  br i1 %tobool425, label %if.then.426, label %if.end.440

if.then.426:                                      ; preds = %if.end.423
  %310 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix427 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %310, i32 0, i32 1
  %311 = load i16*, i16** %prefix427, align 8
  %tobool428 = icmp ne i16* %311, null
  br i1 %tobool428, label %if.then.429, label %if.else.431

if.then.429:                                      ; preds = %if.then.426
  %312 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %prefix430 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %312, i32 0, i32 1
  %313 = load i16*, i16** %prefix430, align 8
  %314 = bitcast i16* %313 to i8*
  call void @free(i8* %314) #4
  br label %if.end.433

if.else.431:                                      ; preds = %if.then.426
  %315 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern432 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %315, i32 0, i32 0
  %316 = load i16*, i16** %pattern432, align 8
  %317 = bitcast i16* %316 to i8*
  call void @free(i8* %317) #4
  br label %if.end.433

if.end.433:                                       ; preds = %if.else.431, %if.then.429
  %318 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname434 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %318, i32 0, i32 7
  %319 = load i8*, i8** %virname434, align 8
  call void @free(i8* %319) #4
  %320 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  call void @ac_free_alt(%struct.cli_ac_patt* %320)
  %321 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %offset435 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %321, i32 0, i32 8
  %322 = load i8*, i8** %offset435, align 8
  %tobool436 = icmp ne i8* %322, null
  br i1 %tobool436, label %if.then.437, label %if.end.439

if.then.437:                                      ; preds = %if.end.433
  %323 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %offset438 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %323, i32 0, i32 8
  %324 = load i8*, i8** %offset438, align 8
  call void @free(i8* %324) #4
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.437, %if.end.433
  %325 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %326 = bitcast %struct.cli_ac_patt* %325 to i8*
  call void @free(i8* %326) #4
  %327 = load i32, i32* %ret, align 4
  store i32 %327, i32* %retval
  br label %return

if.end.440:                                       ; preds = %if.end.423
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.440, %if.end.439, %if.end.420, %if.end.402, %if.end.386, %if.then.322, %if.end.166, %if.end.153, %if.then.23, %if.then.18, %if.then.5, %if.then
  %328 = load i32, i32* %retval
  ret i32 %328
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i8* @cli_strtok(i8*, i32, i8*) #1

declare i8* @cli_hex2str(i8*) #1

declare i16* @cli_hex2ui(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @cli_ac_setdepth(i8 zeroext %mindepth, i8 zeroext %maxdepth) #0 {
entry:
  %mindepth.addr = alloca i8, align 1
  %maxdepth.addr = alloca i8, align 1
  store i8 %mindepth, i8* %mindepth.addr, align 1
  store i8 %maxdepth, i8* %maxdepth.addr, align 1
  %0 = load i8, i8* %mindepth.addr, align 1
  store i8 %0, i8* @cli_ac_mindepth, align 1
  %1 = load i8, i8* %maxdepth.addr, align 1
  store i8 %1, i8* @cli_ac_maxdepth, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bfs_enqueue(%struct.bfs_list** %bfs, %struct.bfs_list** %last, %struct.cli_ac_node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %bfs.addr = alloca %struct.bfs_list**, align 8
  %last.addr = alloca %struct.bfs_list**, align 8
  %n.addr = alloca %struct.cli_ac_node*, align 8
  %new = alloca %struct.bfs_list*, align 8
  store %struct.bfs_list** %bfs, %struct.bfs_list*** %bfs.addr, align 8
  store %struct.bfs_list** %last, %struct.bfs_list*** %last.addr, align 8
  store %struct.cli_ac_node* %n, %struct.cli_ac_node** %n.addr, align 8
  %call = call i8* @cli_malloc(i64 16)
  %0 = bitcast i8* %call to %struct.bfs_list*
  store %struct.bfs_list* %0, %struct.bfs_list** %new, align 8
  %1 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %tobool = icmp ne %struct.bfs_list* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %next = getelementptr inbounds %struct.bfs_list, %struct.bfs_list* %2, i32 0, i32 1
  store %struct.bfs_list* null, %struct.bfs_list** %next, align 8
  %3 = load %struct.cli_ac_node*, %struct.cli_ac_node** %n.addr, align 8
  %4 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %node = getelementptr inbounds %struct.bfs_list, %struct.bfs_list* %4, i32 0, i32 0
  store %struct.cli_ac_node* %3, %struct.cli_ac_node** %node, align 8
  %5 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  %6 = load %struct.bfs_list*, %struct.bfs_list** %5, align 8
  %tobool1 = icmp ne %struct.bfs_list* %6, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %8 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  %9 = load %struct.bfs_list*, %struct.bfs_list** %8, align 8
  %next3 = getelementptr inbounds %struct.bfs_list, %struct.bfs_list* %9, i32 0, i32 1
  store %struct.bfs_list* %7, %struct.bfs_list** %next3, align 8
  %10 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %11 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  store %struct.bfs_list* %10, %struct.bfs_list** %11, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %12 = load %struct.bfs_list*, %struct.bfs_list** %new, align 8
  %13 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  store %struct.bfs_list* %12, %struct.bfs_list** %13, align 8
  %14 = load %struct.bfs_list**, %struct.bfs_list*** %bfs.addr, align 8
  store %struct.bfs_list* %12, %struct.bfs_list** %14, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct.cli_ac_node* @bfs_dequeue(%struct.bfs_list** %bfs, %struct.bfs_list** %last) #0 {
entry:
  %retval = alloca %struct.cli_ac_node*, align 8
  %bfs.addr = alloca %struct.bfs_list**, align 8
  %last.addr = alloca %struct.bfs_list**, align 8
  %lpt = alloca %struct.bfs_list*, align 8
  %pt = alloca %struct.cli_ac_node*, align 8
  store %struct.bfs_list** %bfs, %struct.bfs_list*** %bfs.addr, align 8
  store %struct.bfs_list** %last, %struct.bfs_list*** %last.addr, align 8
  %0 = load %struct.bfs_list**, %struct.bfs_list*** %bfs.addr, align 8
  %1 = load %struct.bfs_list*, %struct.bfs_list** %0, align 8
  store %struct.bfs_list* %1, %struct.bfs_list** %lpt, align 8
  %tobool = icmp ne %struct.bfs_list* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.cli_ac_node* null, %struct.cli_ac_node** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.bfs_list**, %struct.bfs_list*** %bfs.addr, align 8
  %3 = load %struct.bfs_list*, %struct.bfs_list** %2, align 8
  %next = getelementptr inbounds %struct.bfs_list, %struct.bfs_list* %3, i32 0, i32 1
  %4 = load %struct.bfs_list*, %struct.bfs_list** %next, align 8
  %5 = load %struct.bfs_list**, %struct.bfs_list*** %bfs.addr, align 8
  store %struct.bfs_list* %4, %struct.bfs_list** %5, align 8
  %6 = load %struct.bfs_list*, %struct.bfs_list** %lpt, align 8
  %node = getelementptr inbounds %struct.bfs_list, %struct.bfs_list* %6, i32 0, i32 0
  %7 = load %struct.cli_ac_node*, %struct.cli_ac_node** %node, align 8
  store %struct.cli_ac_node* %7, %struct.cli_ac_node** %pt, align 8
  %8 = load %struct.bfs_list*, %struct.bfs_list** %lpt, align 8
  %9 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  %10 = load %struct.bfs_list*, %struct.bfs_list** %9, align 8
  %cmp = icmp eq %struct.bfs_list* %8, %10
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %11 = load %struct.bfs_list**, %struct.bfs_list*** %last.addr, align 8
  store %struct.bfs_list* null, %struct.bfs_list** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  %12 = load %struct.bfs_list*, %struct.bfs_list** %lpt, align 8
  %13 = bitcast %struct.bfs_list* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.cli_ac_node*, %struct.cli_ac_node** %pt, align 8
  store %struct.cli_ac_node* %14, %struct.cli_ac_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.cli_ac_node*, %struct.cli_ac_node** %retval
  ret %struct.cli_ac_node* %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
