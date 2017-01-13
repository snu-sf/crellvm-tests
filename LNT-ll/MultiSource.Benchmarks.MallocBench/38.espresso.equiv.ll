; ModuleID = './MultiSource.Benchmarks.MallocBench/38.espresso.equiv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@cube = external global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [48 x i8] c"# Outputs %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"# Outputs %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"# Outputs NOT %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"# Outputs NOT %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"# No outputs are equivalent\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @find_equiv_outputs(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ipart = alloca i32, align 4
  %jpart = alloca i32, align 4
  %some_equiv = alloca i32, align 4
  %R = alloca %struct.set_family**, align 8
  %F = alloca %struct.set_family**, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 0, i32* %some_equiv, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @makeup_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %0)
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call1 = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call1 to %struct.set_family**
  store %struct.set_family** %4, %struct.set_family*** %F, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %conv4 = sext i32 %7 to i64
  %mul5 = mul i64 8, %conv4
  %call6 = call i8* @malloc(i64 %mul5)
  %8 = bitcast i8* %call6 to %struct.set_family**
  store %struct.set_family** %8, %struct.set_family*** %R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %cmp = icmp slt i32 %9, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %ipart, align 4
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 2
  %18 = load %struct.set_family*, %struct.set_family** %R12, align 8
  %19 = load i32, i32* %ipart, align 4
  %call13 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @cof_output to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %18, i32 %19)
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx15 = getelementptr inbounds %struct.set_family*, %struct.set_family** %21, i64 %idxprom14
  store %struct.set_family* %call13, %struct.set_family** %arrayidx15, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx17 = getelementptr inbounds %struct.set_family*, %struct.set_family** %23, i64 %idxprom16
  %24 = load %struct.set_family*, %struct.set_family** %arrayidx17, align 8
  %call18 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %24)
  %call19 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call18)
  %25 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx21 = getelementptr inbounds %struct.set_family*, %struct.set_family** %26, i64 %idxprom20
  store %struct.set_family* %call19, %struct.set_family** %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.102, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom23
  %31 = load i32, i32* %arrayidx24, align 4
  %sub = sub nsw i32 %31, 1
  %cmp25 = icmp slt i32 %28, %sub
  br i1 %cmp25, label %for.body.27, label %for.end.104

for.body.27:                                      ; preds = %for.cond.22
  %32 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %32, 1
  store i32 %add28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.99, %for.body.27
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %35, i64 %idxprom30
  %36 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp slt i32 %33, %36
  br i1 %cmp32, label %for.body.34, label %for.end.101

for.body.34:                                      ; preds = %for.cond.29
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 %idxprom35
  %39 = load i32, i32* %arrayidx36, align 4
  %40 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %39, %40
  store i32 %add37, i32* %ipart, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %42, i64 %idxprom38
  %43 = load i32, i32* %arrayidx39, align 4
  %44 = load i32, i32* %j, align 4
  %add40 = add nsw i32 %43, %44
  store i32 %add40, i32* %jpart, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx42 = getelementptr inbounds %struct.set_family*, %struct.set_family** %46, i64 %idxprom41
  %47 = load %struct.set_family*, %struct.set_family** %arrayidx42, align 8
  %48 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %48 to i64
  %49 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx44 = getelementptr inbounds %struct.set_family*, %struct.set_family** %49, i64 %idxprom43
  %50 = load %struct.set_family*, %struct.set_family** %arrayidx44, align 8
  %call45 = call i32 @check_equiv(%struct.set_family* %47, %struct.set_family* %50)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.34
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %ipart, align 4
  %idxprom46 = sext i32 %53 to i64
  %54 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %54, i32 0, i32 7
  %55 = load i8**, i8*** %label, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %55, i64 %idxprom46
  %56 = load i8*, i8** %arrayidx47, align 8
  %57 = load i32, i32* %jpart, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label49 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %58, i32 0, i32 7
  %59 = load i8**, i8*** %label49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %59, i64 %idxprom48
  %60 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %51, i32 %52, i8* %56, i8* %60)
  store i32 1, i32* %some_equiv, align 4
  br label %if.end.98

if.else:                                          ; preds = %for.body.34
  %61 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %61 to i64
  %62 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx53 = getelementptr inbounds %struct.set_family*, %struct.set_family** %62, i64 %idxprom52
  %63 = load %struct.set_family*, %struct.set_family** %arrayidx53, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %64 to i64
  %65 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx55 = getelementptr inbounds %struct.set_family*, %struct.set_family** %65, i64 %idxprom54
  %66 = load %struct.set_family*, %struct.set_family** %arrayidx55, align 8
  %call56 = call i32 @check_equiv(%struct.set_family* %63, %struct.set_family* %66)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.66

if.then.58:                                       ; preds = %if.else
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %ipart, align 4
  %idxprom59 = sext i32 %69 to i64
  %70 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label60 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %70, i32 0, i32 7
  %71 = load i8**, i8*** %label60, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %71, i64 %idxprom59
  %72 = load i8*, i8** %arrayidx61, align 8
  %73 = load i32, i32* %jpart, align 4
  %idxprom62 = sext i32 %73 to i64
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label63 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 7
  %75 = load i8**, i8*** %label63, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %75, i64 %idxprom62
  %76 = load i8*, i8** %arrayidx64, align 8
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i32 %67, i32 %68, i8* %72, i8* %76)
  store i32 1, i32* %some_equiv, align 4
  br label %if.end.97

if.else.66:                                       ; preds = %if.else
  %77 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %77 to i64
  %78 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx68 = getelementptr inbounds %struct.set_family*, %struct.set_family** %78, i64 %idxprom67
  %79 = load %struct.set_family*, %struct.set_family** %arrayidx68, align 8
  %80 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %80 to i64
  %81 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx70 = getelementptr inbounds %struct.set_family*, %struct.set_family** %81, i64 %idxprom69
  %82 = load %struct.set_family*, %struct.set_family** %arrayidx70, align 8
  %call71 = call i32 @check_equiv(%struct.set_family* %79, %struct.set_family* %82)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.81

if.then.73:                                       ; preds = %if.else.66
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %ipart, align 4
  %idxprom74 = sext i32 %85 to i64
  %86 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label75 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %86, i32 0, i32 7
  %87 = load i8**, i8*** %label75, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %87, i64 %idxprom74
  %88 = load i8*, i8** %arrayidx76, align 8
  %89 = load i32, i32* %jpart, align 4
  %idxprom77 = sext i32 %89 to i64
  %90 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label78 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %90, i32 0, i32 7
  %91 = load i8**, i8*** %label78, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %91, i64 %idxprom77
  %92 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i32 %83, i32 %84, i8* %88, i8* %92)
  store i32 1, i32* %some_equiv, align 4
  br label %if.end.96

if.else.81:                                       ; preds = %if.else.66
  %93 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %93 to i64
  %94 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx83 = getelementptr inbounds %struct.set_family*, %struct.set_family** %94, i64 %idxprom82
  %95 = load %struct.set_family*, %struct.set_family** %arrayidx83, align 8
  %96 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %96 to i64
  %97 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx85 = getelementptr inbounds %struct.set_family*, %struct.set_family** %97, i64 %idxprom84
  %98 = load %struct.set_family*, %struct.set_family** %arrayidx85, align 8
  %call86 = call i32 @check_equiv(%struct.set_family* %95, %struct.set_family* %98)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end

if.then.88:                                       ; preds = %if.else.81
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %j, align 4
  %101 = load i32, i32* %ipart, align 4
  %idxprom89 = sext i32 %101 to i64
  %102 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %102, i32 0, i32 7
  %103 = load i8**, i8*** %label90, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %103, i64 %idxprom89
  %104 = load i8*, i8** %arrayidx91, align 8
  %105 = load i32, i32* %jpart, align 4
  %idxprom92 = sext i32 %105 to i64
  %106 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label93 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %106, i32 0, i32 7
  %107 = load i8**, i8*** %label93, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %107, i64 %idxprom92
  %108 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i32 %99, i32 %100, i8* %104, i8* %108)
  store i32 1, i32* %some_equiv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.88, %if.else.81
  br label %if.end.96

if.end.96:                                        ; preds = %if.end, %if.then.73
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.58
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %109 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %109, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.29

for.end.101:                                      ; preds = %for.cond.29
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %110 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %110, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.22

for.end.104:                                      ; preds = %for.cond.22
  %111 = load i32, i32* %some_equiv, align 4
  %tobool105 = icmp ne i32 %111, 0
  br i1 %tobool105, label %if.end.108, label %if.then.106

if.then.106:                                      ; preds = %for.end.104
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %for.end.104
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.119, %if.end.108
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom110 = sext i32 %113 to i64
  %114 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %114, i64 %idxprom110
  %115 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp slt i32 %112, %115
  br i1 %cmp112, label %for.body.114, label %for.end.121

for.body.114:                                     ; preds = %for.cond.109
  %116 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %116 to i64
  %117 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %arrayidx116 = getelementptr inbounds %struct.set_family*, %struct.set_family** %117, i64 %idxprom115
  %118 = load %struct.set_family*, %struct.set_family** %arrayidx116, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %118)
  %119 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %119 to i64
  %120 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %arrayidx118 = getelementptr inbounds %struct.set_family*, %struct.set_family** %120, i64 %idxprom117
  %121 = load %struct.set_family*, %struct.set_family** %arrayidx118, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %121)
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.114
  %122 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %122, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.109

for.end.121:                                      ; preds = %for.cond.109
  %123 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %tobool122 = icmp ne %struct.set_family** %123, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.end.121
  %124 = load %struct.set_family**, %struct.set_family*** %F, align 8
  %125 = bitcast %struct.set_family** %124 to i8*
  call void @free(i8* %125)
  store %struct.set_family** null, %struct.set_family*** %F, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %for.end.121
  %126 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %tobool125 = icmp ne %struct.set_family** %126, null
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.124
  %127 = load %struct.set_family**, %struct.set_family*** %R, align 8
  %128 = bitcast %struct.set_family** %127 to i8*
  call void @free(i8* %128)
  store %struct.set_family** null, %struct.set_family*** %R, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.124
  %129 = load i32, i32* %retval
  ret i32 %129
}

declare i32 @makeup_labels(...) #1

declare i8* @malloc(i64) #1

declare %struct.set_family* @cof_output(...) #1

declare %struct.set_family* @complement(...) #1

declare i32** @cube1list(...) #1

declare i32 @printf(i8*, ...) #1

declare void @sf_free(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @check_equiv(%struct.set_family* %f1, %struct.set_family* %f2) #0 {
entry:
  %retval = alloca i32, align 4
  %f1.addr = alloca %struct.set_family*, align 8
  %f2.addr = alloca %struct.set_family*, align 8
  %f1list = alloca i32**, align 8
  %f2list = alloca i32**, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %f1, %struct.set_family** %f1.addr, align 8
  store %struct.set_family* %f2, %struct.set_family** %f2.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %f1.addr, align 8
  %call = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %0)
  store i32** %call, i32*** %f1list, align 8
  %1 = load %struct.set_family*, %struct.set_family** %f2.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %4 = load %struct.set_family*, %struct.set_family** %f2.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load %struct.set_family*, %struct.set_family** %f2.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %5, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32*, i32** %p, align 8
  %9 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32**, i32*** %f1list, align 8
  %11 = load i32*, i32** %p, align 8
  %call1 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** %10, i32* %11)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.set_family*, %struct.set_family** %f2.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize2, align 4
  %14 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %13 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %14, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32**, i32*** %f1list, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %15, i64 0
  %16 = load i32*, i32** %arrayidx, align 8
  %tobool5 = icmp ne i32* %16, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.end
  %17 = load i32**, i32*** %f1list, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %17, i64 0
  %18 = load i32*, i32** %arrayidx7, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19)
  %20 = load i32**, i32*** %f1list, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* null, i32** %arrayidx8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.end
  %21 = load i32**, i32*** %f1list, align 8
  %tobool10 = icmp ne i32** %21, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %22 = load i32**, i32*** %f1list, align 8
  %23 = bitcast i32** %22 to i8*
  call void @free(i8* %23)
  store i32** null, i32*** %f1list, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %24 = load %struct.set_family*, %struct.set_family** %f2.addr, align 8
  %call13 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %24)
  store i32** %call13, i32*** %f2list, align 8
  %25 = load %struct.set_family*, %struct.set_family** %f1.addr, align 8
  %data14 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data14, align 8
  store i32* %26, i32** %p, align 8
  %27 = load i32*, i32** %p, align 8
  %28 = load %struct.set_family*, %struct.set_family** %f1.addr, align 8
  %count15 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count15, align 4
  %30 = load %struct.set_family*, %struct.set_family** %f1.addr, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize16, align 4
  %mul17 = mul nsw i32 %29, %31
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i32, i32* %27, i64 %idx.ext18
  store i32* %add.ptr19, i32** %last, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %if.end.12
  %32 = load i32*, i32** %p, align 8
  %33 = load i32*, i32** %last, align 8
  %cmp21 = icmp ult i32* %32, %33
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.20
  %34 = load i32**, i32*** %f2list, align 8
  %35 = load i32*, i32** %p, align 8
  %call23 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** %34, i32* %35)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body.22
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body.22
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %36 = load %struct.set_family*, %struct.set_family** %f1.addr, align 8
  %wsize28 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 0
  %37 = load i32, i32* %wsize28, align 4
  %38 = load i32*, i32** %p, align 8
  %idx.ext29 = sext i32 %37 to i64
  %add.ptr30 = getelementptr inbounds i32, i32* %38, i64 %idx.ext29
  store i32* %add.ptr30, i32** %p, align 8
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %39 = load i32**, i32*** %f2list, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %39, i64 0
  %40 = load i32*, i32** %arrayidx32, align 8
  %tobool33 = icmp ne i32* %40, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.end.31
  %41 = load i32**, i32*** %f2list, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %41, i64 0
  %42 = load i32*, i32** %arrayidx35, align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* %43)
  %44 = load i32**, i32*** %f2list, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %44, i64 0
  store i32* null, i32** %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %for.end.31
  %45 = load i32**, i32*** %f2list, align 8
  %tobool38 = icmp ne i32** %45, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %46 = load i32**, i32*** %f2list, align 8
  %47 = bitcast i32** %46 to i8*
  call void @free(i8* %47)
  store i32** null, i32*** %f2list, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.25, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @cube_is_covered(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
