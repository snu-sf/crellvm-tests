; ModuleID = 'readmin.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"read_min(): not enough memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1

; Function Attrs: nounwind uwtable
define i64 @read_min(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  %i = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %inputfile = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %inputfile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 200, %struct._IO_FILE* %1)
  %arraydecay3 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64* %t, i64* %h) #3
  %cmp5 = icmp ne i32 %call4, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %2 = load i64, i64* %t, align 8
  %3 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 3
  store i64 %2, i64* %n_trips, align 8
  %4 = load i64, i64* %h, align 8
  %5 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org = getelementptr inbounds %struct.network, %struct.network* %5, i32 0, i32 6
  store i64 %4, i64* %m_org, align 8
  %6 = load i64, i64* %t, align 8
  %7 = load i64, i64* %t, align 8
  %add = add nsw i64 %6, %7
  %add8 = add nsw i64 %add, 1
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %n = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 2
  store i64 %add8, i64* %n, align 8
  %9 = load i64, i64* %t, align 8
  %10 = load i64, i64* %t, align 8
  %add9 = add nsw i64 %9, %10
  %11 = load i64, i64* %t, align 8
  %add10 = add nsw i64 %add9, %11
  %12 = load i64, i64* %h, align 8
  %add11 = add nsw i64 %add10, %12
  %13 = load %struct.network*, %struct.network** %net.addr, align 8
  %m = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 5
  store i64 %add11, i64* %m, align 8
  %14 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips12 = getelementptr inbounds %struct.network, %struct.network* %14, i32 0, i32 3
  %15 = load i64, i64* %n_trips12, align 8
  %cmp13 = icmp sle i64 %15, 15000
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.7
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %m15 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 5
  %17 = load i64, i64* %m15, align 8
  %18 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 4
  store i64 %17, i64* %max_m, align 8
  %19 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 9
  store i64 3000000, i64* %max_new_m, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.7
  %20 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m16 = getelementptr inbounds %struct.network, %struct.network* %20, i32 0, i32 4
  store i64 27328512, i64* %max_m16, align 8
  %21 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m17 = getelementptr inbounds %struct.network, %struct.network* %21, i32 0, i32 9
  store i64 28900000, i64* %max_new_m17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.14
  %22 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m19 = getelementptr inbounds %struct.network, %struct.network* %22, i32 0, i32 4
  %23 = load i64, i64* %max_m19, align 8
  %24 = load %struct.network*, %struct.network** %net.addr, align 8
  %m20 = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 5
  %25 = load i64, i64* %m20, align 8
  %sub = sub nsw i64 %23, %25
  %26 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %26, i32 0, i32 8
  store i64 %sub, i64* %max_residual_new_m, align 8
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %n21 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 2
  %28 = load i64, i64* %n21, align 8
  %add22 = add nsw i64 %28, 1
  %call23 = call noalias i8* @calloc(i64 %add22, i64 104) #3
  %29 = bitcast i8* %call23 to %struct.node*
  %30 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 21
  store %struct.node* %29, %struct.node** %nodes, align 8
  %31 = load %struct.network*, %struct.network** %net.addr, align 8
  %n24 = getelementptr inbounds %struct.network, %struct.network* %31, i32 0, i32 2
  %32 = load i64, i64* %n24, align 8
  %call25 = call noalias i8* @calloc(i64 %32, i64 64) #3
  %33 = bitcast i8* %call25 to %struct.arc*
  %34 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %34, i32 0, i32 25
  store %struct.arc* %33, %struct.arc** %dummy_arcs, align 8
  %35 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m26 = getelementptr inbounds %struct.network, %struct.network* %35, i32 0, i32 4
  %36 = load i64, i64* %max_m26, align 8
  %call27 = call noalias i8* @calloc(i64 %36, i64 64) #3
  %37 = bitcast i8* %call27 to %struct.arc*
  %38 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %38, i32 0, i32 23
  store %struct.arc* %37, %struct.arc** %arcs, align 8
  %39 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes28 = getelementptr inbounds %struct.network, %struct.network* %39, i32 0, i32 21
  %40 = load %struct.node*, %struct.node** %nodes28, align 8
  %tobool = icmp ne %struct.node* %40, null
  br i1 %tobool, label %land.lhs.true, label %if.then.34

land.lhs.true:                                    ; preds = %if.end.18
  %41 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs29 = getelementptr inbounds %struct.network, %struct.network* %41, i32 0, i32 23
  %42 = load %struct.arc*, %struct.arc** %arcs29, align 8
  %tobool30 = icmp ne %struct.arc* %42, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.then.34

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %43 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs32 = getelementptr inbounds %struct.network, %struct.network* %43, i32 0, i32 25
  %44 = load %struct.arc*, %struct.arc** %dummy_arcs32, align 8
  %tobool33 = icmp ne %struct.arc* %44, null
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31, %land.lhs.true, %if.end.18
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  %45 = load %struct.network*, %struct.network** %net.addr, align 8
  %call36 = call i64 @getfree(%struct.network* %45)
  store i64 -1, i64* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.31
  %46 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes38 = getelementptr inbounds %struct.network, %struct.network* %46, i32 0, i32 21
  %47 = load %struct.node*, %struct.node** %nodes38, align 8
  %48 = load %struct.network*, %struct.network** %net.addr, align 8
  %n39 = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 2
  %49 = load i64, i64* %n39, align 8
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %47, i64 %49
  %add.ptr40 = getelementptr inbounds %struct.node, %struct.node* %add.ptr, i64 1
  %50 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %50, i32 0, i32 22
  store %struct.node* %add.ptr40, %struct.node** %stop_nodes, align 8
  %51 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs41 = getelementptr inbounds %struct.network, %struct.network* %51, i32 0, i32 23
  %52 = load %struct.arc*, %struct.arc** %arcs41, align 8
  %53 = load %struct.network*, %struct.network** %net.addr, align 8
  %m42 = getelementptr inbounds %struct.network, %struct.network* %53, i32 0, i32 5
  %54 = load i64, i64* %m42, align 8
  %add.ptr43 = getelementptr inbounds %struct.arc, %struct.arc* %52, i64 %54
  %55 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %55, i32 0, i32 24
  store %struct.arc* %add.ptr43, %struct.arc** %stop_arcs, align 8
  %56 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs44 = getelementptr inbounds %struct.network, %struct.network* %56, i32 0, i32 25
  %57 = load %struct.arc*, %struct.arc** %dummy_arcs44, align 8
  %58 = load %struct.network*, %struct.network** %net.addr, align 8
  %n45 = getelementptr inbounds %struct.network, %struct.network* %58, i32 0, i32 2
  %59 = load i64, i64* %n45, align 8
  %add.ptr46 = getelementptr inbounds %struct.arc, %struct.arc* %57, i64 %59
  %60 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_dummy = getelementptr inbounds %struct.network, %struct.network* %60, i32 0, i32 26
  store %struct.arc* %add.ptr46, %struct.arc** %stop_dummy, align 8
  %61 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes47 = getelementptr inbounds %struct.network, %struct.network* %61, i32 0, i32 21
  %62 = load %struct.node*, %struct.node** %nodes47, align 8
  store %struct.node* %62, %struct.node** %node, align 8
  %63 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs48 = getelementptr inbounds %struct.network, %struct.network* %63, i32 0, i32 23
  %64 = load %struct.arc*, %struct.arc** %arcs48, align 8
  store %struct.arc* %64, %struct.arc** %arc, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %65 = load i64, i64* %i, align 8
  %66 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips49 = getelementptr inbounds %struct.network, %struct.network* %66, i32 0, i32 3
  %67 = load i64, i64* %n_trips49, align 8
  %cmp50 = icmp sle i64 %65, %67
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay51 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call52 = call i8* @fgets(i8* %arraydecay51, i32 200, %struct._IO_FILE* %68)
  %arraydecay53 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64* %t, i64* %h) #3
  %cmp55 = icmp ne i32 %call54, 2
  br i1 %cmp55, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %69 = load i64, i64* %t, align 8
  %70 = load i64, i64* %h, align 8
  %cmp56 = icmp sgt i64 %69, %70
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %for.body
  store i64 -1, i64* %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false
  %71 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 0, %71
  %conv = trunc i64 %sub59 to i32
  %72 = load i64, i64* %i, align 8
  %73 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx = getelementptr inbounds %struct.node, %struct.node* %73, i64 %72
  %number = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 12
  store i32 %conv, i32* %number, align 4
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx60 = getelementptr inbounds %struct.node, %struct.node* %75, i64 %74
  %flow = getelementptr inbounds %struct.node, %struct.node* %arrayidx60, i32 0, i32 10
  store i64 -1, i64* %flow, align 8
  %76 = load i64, i64* %i, align 8
  %conv61 = trunc i64 %76 to i32
  %77 = load i64, i64* %i, align 8
  %78 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips62 = getelementptr inbounds %struct.network, %struct.network* %78, i32 0, i32 3
  %79 = load i64, i64* %n_trips62, align 8
  %add63 = add nsw i64 %77, %79
  %80 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx64 = getelementptr inbounds %struct.node, %struct.node* %80, i64 %add63
  %number65 = getelementptr inbounds %struct.node, %struct.node* %arrayidx64, i32 0, i32 12
  store i32 %conv61, i32* %number65, align 4
  %81 = load i64, i64* %i, align 8
  %82 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips66 = getelementptr inbounds %struct.network, %struct.network* %82, i32 0, i32 3
  %83 = load i64, i64* %n_trips66, align 8
  %add67 = add nsw i64 %81, %83
  %84 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx68 = getelementptr inbounds %struct.node, %struct.node* %84, i64 %add67
  %flow69 = getelementptr inbounds %struct.node, %struct.node* %arrayidx68, i32 0, i32 10
  store i64 1, i64* %flow69, align 8
  %85 = load i64, i64* %t, align 8
  %conv70 = trunc i64 %85 to i32
  %86 = load i64, i64* %i, align 8
  %87 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx71 = getelementptr inbounds %struct.node, %struct.node* %87, i64 %86
  %time = getelementptr inbounds %struct.node, %struct.node* %arrayidx71, i32 0, i32 13
  store i32 %conv70, i32* %time, align 4
  %88 = load i64, i64* %h, align 8
  %conv72 = trunc i64 %88 to i32
  %89 = load i64, i64* %i, align 8
  %90 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips73 = getelementptr inbounds %struct.network, %struct.network* %90, i32 0, i32 3
  %91 = load i64, i64* %n_trips73, align 8
  %add74 = add nsw i64 %89, %91
  %92 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx75 = getelementptr inbounds %struct.node, %struct.node* %92, i64 %add74
  %time76 = getelementptr inbounds %struct.node, %struct.node* %arrayidx75, i32 0, i32 13
  store i32 %conv72, i32* %time76, align 4
  %93 = load %struct.network*, %struct.network** %net.addr, align 8
  %n77 = getelementptr inbounds %struct.network, %struct.network* %93, i32 0, i32 2
  %94 = load i64, i64* %n77, align 8
  %95 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx78 = getelementptr inbounds %struct.node, %struct.node* %95, i64 %94
  %96 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %96, i32 0, i32 1
  store %struct.node* %arrayidx78, %struct.node** %tail, align 8
  %97 = load i64, i64* %i, align 8
  %98 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx79 = getelementptr inbounds %struct.node, %struct.node* %98, i64 %97
  %99 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 2
  store %struct.node* %arrayidx79, %struct.node** %head, align 8
  %100 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM = getelementptr inbounds %struct.network, %struct.network* %100, i32 0, i32 18
  %101 = load i64, i64* %bigM, align 8
  %add80 = add nsw i64 %101, 15
  %102 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %102, i32 0, i32 0
  store i64 %add80, i64* %cost, align 8
  %103 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %103, i32 0, i32 7
  store i64 %add80, i64* %org_cost, align 8
  %104 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail81 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 1
  %105 = load %struct.node*, %struct.node** %tail81, align 8
  %firstout = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 7
  %106 = load %struct.arc*, %struct.arc** %firstout, align 8
  %107 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %107, i32 0, i32 4
  store %struct.arc* %106, %struct.arc** %nextout, align 8
  %108 = load %struct.arc*, %struct.arc** %arc, align 8
  %109 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail82 = getelementptr inbounds %struct.arc, %struct.arc* %109, i32 0, i32 1
  %110 = load %struct.node*, %struct.node** %tail82, align 8
  %firstout83 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 7
  store %struct.arc* %108, %struct.arc** %firstout83, align 8
  %111 = load %struct.arc*, %struct.arc** %arc, align 8
  %head84 = getelementptr inbounds %struct.arc, %struct.arc* %111, i32 0, i32 2
  %112 = load %struct.node*, %struct.node** %head84, align 8
  %firstin = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 8
  %113 = load %struct.arc*, %struct.arc** %firstin, align 8
  %114 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %114, i32 0, i32 5
  store %struct.arc* %113, %struct.arc** %nextin, align 8
  %115 = load %struct.arc*, %struct.arc** %arc, align 8
  %116 = load %struct.arc*, %struct.arc** %arc, align 8
  %head85 = getelementptr inbounds %struct.arc, %struct.arc* %116, i32 0, i32 2
  %117 = load %struct.node*, %struct.node** %head85, align 8
  %firstin86 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 8
  store %struct.arc* %115, %struct.arc** %firstin86, align 8
  %118 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %118, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arc, align 8
  %119 = load i64, i64* %i, align 8
  %120 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips87 = getelementptr inbounds %struct.network, %struct.network* %120, i32 0, i32 3
  %121 = load i64, i64* %n_trips87, align 8
  %add88 = add nsw i64 %119, %121
  %122 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx89 = getelementptr inbounds %struct.node, %struct.node* %122, i64 %add88
  %123 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail90 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 1
  store %struct.node* %arrayidx89, %struct.node** %tail90, align 8
  %124 = load %struct.network*, %struct.network** %net.addr, align 8
  %n91 = getelementptr inbounds %struct.network, %struct.network* %124, i32 0, i32 2
  %125 = load i64, i64* %n91, align 8
  %126 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx92 = getelementptr inbounds %struct.node, %struct.node* %126, i64 %125
  %127 = load %struct.arc*, %struct.arc** %arc, align 8
  %head93 = getelementptr inbounds %struct.arc, %struct.arc* %127, i32 0, i32 2
  store %struct.node* %arrayidx92, %struct.node** %head93, align 8
  %128 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost94 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 0
  store i64 15, i64* %cost94, align 8
  %129 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost95 = getelementptr inbounds %struct.arc, %struct.arc* %129, i32 0, i32 7
  store i64 15, i64* %org_cost95, align 8
  %130 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail96 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 1
  %131 = load %struct.node*, %struct.node** %tail96, align 8
  %firstout97 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 7
  %132 = load %struct.arc*, %struct.arc** %firstout97, align 8
  %133 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout98 = getelementptr inbounds %struct.arc, %struct.arc* %133, i32 0, i32 4
  store %struct.arc* %132, %struct.arc** %nextout98, align 8
  %134 = load %struct.arc*, %struct.arc** %arc, align 8
  %135 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail99 = getelementptr inbounds %struct.arc, %struct.arc* %135, i32 0, i32 1
  %136 = load %struct.node*, %struct.node** %tail99, align 8
  %firstout100 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 7
  store %struct.arc* %134, %struct.arc** %firstout100, align 8
  %137 = load %struct.arc*, %struct.arc** %arc, align 8
  %head101 = getelementptr inbounds %struct.arc, %struct.arc* %137, i32 0, i32 2
  %138 = load %struct.node*, %struct.node** %head101, align 8
  %firstin102 = getelementptr inbounds %struct.node, %struct.node* %138, i32 0, i32 8
  %139 = load %struct.arc*, %struct.arc** %firstin102, align 8
  %140 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin103 = getelementptr inbounds %struct.arc, %struct.arc* %140, i32 0, i32 5
  store %struct.arc* %139, %struct.arc** %nextin103, align 8
  %141 = load %struct.arc*, %struct.arc** %arc, align 8
  %142 = load %struct.arc*, %struct.arc** %arc, align 8
  %head104 = getelementptr inbounds %struct.arc, %struct.arc* %142, i32 0, i32 2
  %143 = load %struct.node*, %struct.node** %head104, align 8
  %firstin105 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 8
  store %struct.arc* %141, %struct.arc** %firstin105, align 8
  %144 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.arc, %struct.arc* %144, i32 1
  store %struct.arc* %incdec.ptr106, %struct.arc** %arc, align 8
  %145 = load i64, i64* %i, align 8
  %146 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx107 = getelementptr inbounds %struct.node, %struct.node* %146, i64 %145
  %147 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail108 = getelementptr inbounds %struct.arc, %struct.arc* %147, i32 0, i32 1
  store %struct.node* %arrayidx107, %struct.node** %tail108, align 8
  %148 = load i64, i64* %i, align 8
  %149 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips109 = getelementptr inbounds %struct.network, %struct.network* %149, i32 0, i32 3
  %150 = load i64, i64* %n_trips109, align 8
  %add110 = add nsw i64 %148, %150
  %151 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx111 = getelementptr inbounds %struct.node, %struct.node* %151, i64 %add110
  %152 = load %struct.arc*, %struct.arc** %arc, align 8
  %head112 = getelementptr inbounds %struct.arc, %struct.arc* %152, i32 0, i32 2
  store %struct.node* %arrayidx111, %struct.node** %head112, align 8
  %153 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM113 = getelementptr inbounds %struct.network, %struct.network* %153, i32 0, i32 18
  %154 = load i64, i64* %bigM113, align 8
  %cmp114 = icmp sgt i64 %154, 10000000
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %155 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM116 = getelementptr inbounds %struct.network, %struct.network* %155, i32 0, i32 18
  %156 = load i64, i64* %bigM116, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %156, %cond.true ], [ 10000000, %cond.false ]
  %mul = mul nsw i64 2, %cond
  %157 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost117 = getelementptr inbounds %struct.arc, %struct.arc* %157, i32 0, i32 0
  store i64 %mul, i64* %cost117, align 8
  %158 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost118 = getelementptr inbounds %struct.arc, %struct.arc* %158, i32 0, i32 7
  store i64 %mul, i64* %org_cost118, align 8
  %159 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail119 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 1
  %160 = load %struct.node*, %struct.node** %tail119, align 8
  %firstout120 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 7
  %161 = load %struct.arc*, %struct.arc** %firstout120, align 8
  %162 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout121 = getelementptr inbounds %struct.arc, %struct.arc* %162, i32 0, i32 4
  store %struct.arc* %161, %struct.arc** %nextout121, align 8
  %163 = load %struct.arc*, %struct.arc** %arc, align 8
  %164 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail122 = getelementptr inbounds %struct.arc, %struct.arc* %164, i32 0, i32 1
  %165 = load %struct.node*, %struct.node** %tail122, align 8
  %firstout123 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 7
  store %struct.arc* %163, %struct.arc** %firstout123, align 8
  %166 = load %struct.arc*, %struct.arc** %arc, align 8
  %head124 = getelementptr inbounds %struct.arc, %struct.arc* %166, i32 0, i32 2
  %167 = load %struct.node*, %struct.node** %head124, align 8
  %firstin125 = getelementptr inbounds %struct.node, %struct.node* %167, i32 0, i32 8
  %168 = load %struct.arc*, %struct.arc** %firstin125, align 8
  %169 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin126 = getelementptr inbounds %struct.arc, %struct.arc* %169, i32 0, i32 5
  store %struct.arc* %168, %struct.arc** %nextin126, align 8
  %170 = load %struct.arc*, %struct.arc** %arc, align 8
  %171 = load %struct.arc*, %struct.arc** %arc, align 8
  %head127 = getelementptr inbounds %struct.arc, %struct.arc* %171, i32 0, i32 2
  %172 = load %struct.node*, %struct.node** %head127, align 8
  %firstin128 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 8
  store %struct.arc* %170, %struct.arc** %firstin128, align 8
  %173 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr129 = getelementptr inbounds %struct.arc, %struct.arc* %173, i32 1
  store %struct.arc* %incdec.ptr129, %struct.arc** %arc, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %174 = load i64, i64* %i, align 8
  %inc = add nsw i64 %174, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %175 = load i64, i64* %i, align 8
  %176 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips130 = getelementptr inbounds %struct.network, %struct.network* %176, i32 0, i32 3
  %177 = load i64, i64* %n_trips130, align 8
  %add131 = add nsw i64 %177, 1
  %cmp132 = icmp ne i64 %175, %add131
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.end
  store i64 -1, i64* %retval
  br label %return

if.end.135:                                       ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.167, %if.end.135
  %178 = load i64, i64* %i, align 8
  %179 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org137 = getelementptr inbounds %struct.network, %struct.network* %179, i32 0, i32 6
  %180 = load i64, i64* %m_org137, align 8
  %cmp138 = icmp slt i64 %178, %180
  br i1 %cmp138, label %for.body.140, label %for.end.170

for.body.140:                                     ; preds = %for.cond.136
  %arraydecay141 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call142 = call i8* @fgets(i8* %arraydecay141, i32 200, %struct._IO_FILE* %181)
  %arraydecay143 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call144 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64* %t, i64* %h, i64* %c) #3
  %cmp145 = icmp ne i32 %call144, 3
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.body.140
  store i64 -1, i64* %retval
  br label %return

if.end.148:                                       ; preds = %for.body.140
  %182 = load i64, i64* %t, align 8
  %183 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips149 = getelementptr inbounds %struct.network, %struct.network* %183, i32 0, i32 3
  %184 = load i64, i64* %n_trips149, align 8
  %add150 = add nsw i64 %182, %184
  %185 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx151 = getelementptr inbounds %struct.node, %struct.node* %185, i64 %add150
  %186 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail152 = getelementptr inbounds %struct.arc, %struct.arc* %186, i32 0, i32 1
  store %struct.node* %arrayidx151, %struct.node** %tail152, align 8
  %187 = load i64, i64* %h, align 8
  %188 = load %struct.node*, %struct.node** %node, align 8
  %arrayidx153 = getelementptr inbounds %struct.node, %struct.node* %188, i64 %187
  %189 = load %struct.arc*, %struct.arc** %arc, align 8
  %head154 = getelementptr inbounds %struct.arc, %struct.arc* %189, i32 0, i32 2
  store %struct.node* %arrayidx153, %struct.node** %head154, align 8
  %190 = load i64, i64* %c, align 8
  %191 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost155 = getelementptr inbounds %struct.arc, %struct.arc* %191, i32 0, i32 7
  store i64 %190, i64* %org_cost155, align 8
  %192 = load i64, i64* %c, align 8
  %193 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost156 = getelementptr inbounds %struct.arc, %struct.arc* %193, i32 0, i32 0
  store i64 %192, i64* %cost156, align 8
  %194 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail157 = getelementptr inbounds %struct.arc, %struct.arc* %194, i32 0, i32 1
  %195 = load %struct.node*, %struct.node** %tail157, align 8
  %firstout158 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 7
  %196 = load %struct.arc*, %struct.arc** %firstout158, align 8
  %197 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout159 = getelementptr inbounds %struct.arc, %struct.arc* %197, i32 0, i32 4
  store %struct.arc* %196, %struct.arc** %nextout159, align 8
  %198 = load %struct.arc*, %struct.arc** %arc, align 8
  %199 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail160 = getelementptr inbounds %struct.arc, %struct.arc* %199, i32 0, i32 1
  %200 = load %struct.node*, %struct.node** %tail160, align 8
  %firstout161 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 7
  store %struct.arc* %198, %struct.arc** %firstout161, align 8
  %201 = load %struct.arc*, %struct.arc** %arc, align 8
  %head162 = getelementptr inbounds %struct.arc, %struct.arc* %201, i32 0, i32 2
  %202 = load %struct.node*, %struct.node** %head162, align 8
  %firstin163 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 8
  %203 = load %struct.arc*, %struct.arc** %firstin163, align 8
  %204 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin164 = getelementptr inbounds %struct.arc, %struct.arc* %204, i32 0, i32 5
  store %struct.arc* %203, %struct.arc** %nextin164, align 8
  %205 = load %struct.arc*, %struct.arc** %arc, align 8
  %206 = load %struct.arc*, %struct.arc** %arc, align 8
  %head165 = getelementptr inbounds %struct.arc, %struct.arc* %206, i32 0, i32 2
  %207 = load %struct.node*, %struct.node** %head165, align 8
  %firstin166 = getelementptr inbounds %struct.node, %struct.node* %207, i32 0, i32 8
  store %struct.arc* %205, %struct.arc** %firstin166, align 8
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.148
  %208 = load i64, i64* %i, align 8
  %inc168 = add nsw i64 %208, 1
  store i64 %inc168, i64* %i, align 8
  %209 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr169 = getelementptr inbounds %struct.arc, %struct.arc* %209, i32 1
  store %struct.arc* %incdec.ptr169, %struct.arc** %arc, align 8
  br label %for.cond.136

for.end.170:                                      ; preds = %for.cond.136
  %210 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs171 = getelementptr inbounds %struct.network, %struct.network* %210, i32 0, i32 24
  %211 = load %struct.arc*, %struct.arc** %stop_arcs171, align 8
  %212 = load %struct.arc*, %struct.arc** %arc, align 8
  %cmp172 = icmp ne %struct.arc* %211, %212
  br i1 %cmp172, label %if.then.174, label %if.end.190

if.then.174:                                      ; preds = %for.end.170
  %213 = load %struct.arc*, %struct.arc** %arc, align 8
  %214 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs175 = getelementptr inbounds %struct.network, %struct.network* %214, i32 0, i32 24
  store %struct.arc* %213, %struct.arc** %stop_arcs175, align 8
  %215 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs176 = getelementptr inbounds %struct.network, %struct.network* %215, i32 0, i32 23
  %216 = load %struct.arc*, %struct.arc** %arcs176, align 8
  store %struct.arc* %216, %struct.arc** %arc, align 8
  %217 = load %struct.network*, %struct.network** %net.addr, align 8
  %m177 = getelementptr inbounds %struct.network, %struct.network* %217, i32 0, i32 5
  store i64 0, i64* %m177, align 8
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.185, %if.then.174
  %218 = load %struct.arc*, %struct.arc** %arc, align 8
  %219 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs179 = getelementptr inbounds %struct.network, %struct.network* %219, i32 0, i32 24
  %220 = load %struct.arc*, %struct.arc** %stop_arcs179, align 8
  %cmp180 = icmp ult %struct.arc* %218, %220
  br i1 %cmp180, label %for.body.182, label %for.end.187

for.body.182:                                     ; preds = %for.cond.178
  %221 = load %struct.network*, %struct.network** %net.addr, align 8
  %m183 = getelementptr inbounds %struct.network, %struct.network* %221, i32 0, i32 5
  %222 = load i64, i64* %m183, align 8
  %inc184 = add nsw i64 %222, 1
  store i64 %inc184, i64* %m183, align 8
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.182
  %223 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr186 = getelementptr inbounds %struct.arc, %struct.arc* %223, i32 1
  store %struct.arc* %incdec.ptr186, %struct.arc** %arc, align 8
  br label %for.cond.178

for.end.187:                                      ; preds = %for.cond.178
  %224 = load %struct.network*, %struct.network** %net.addr, align 8
  %m188 = getelementptr inbounds %struct.network, %struct.network* %224, i32 0, i32 5
  %225 = load i64, i64* %m188, align 8
  %226 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org189 = getelementptr inbounds %struct.network, %struct.network* %226, i32 0, i32 6
  store i64 %225, i64* %m_org189, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.187, %for.end.170
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call191 = call i32 @fclose(%struct._IO_FILE* %227)
  %228 = load %struct.network*, %struct.network** %net.addr, align 8
  %clustfile = getelementptr inbounds %struct.network, %struct.network* %228, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [200 x i8], [200 x i8]* %clustfile, i32 0, i64 0
  store i8 0, i8* %arrayidx192, align 1
  store i64 1, i64* %i, align 8
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.226, %if.end.190
  %229 = load i64, i64* %i, align 8
  %230 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips194 = getelementptr inbounds %struct.network, %struct.network* %230, i32 0, i32 3
  %231 = load i64, i64* %n_trips194, align 8
  %cmp195 = icmp sle i64 %229, %231
  br i1 %cmp195, label %for.body.197, label %for.end.228

for.body.197:                                     ; preds = %for.cond.193
  %232 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM198 = getelementptr inbounds %struct.network, %struct.network* %232, i32 0, i32 18
  %233 = load i64, i64* %bigM198, align 8
  %cmp199 = icmp sgt i64 %233, 10000000
  br i1 %cmp199, label %cond.true.201, label %cond.false.203

cond.true.201:                                    ; preds = %for.body.197
  %234 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM202 = getelementptr inbounds %struct.network, %struct.network* %234, i32 0, i32 18
  %235 = load i64, i64* %bigM202, align 8
  br label %cond.end.204

cond.false.203:                                   ; preds = %for.body.197
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.201
  %cond205 = phi i64 [ %235, %cond.true.201 ], [ 10000000, %cond.false.203 ]
  %mul206 = mul nsw i64 -2, %cond205
  %236 = load i64, i64* %i, align 8
  %mul207 = mul nsw i64 3, %236
  %sub208 = sub nsw i64 %mul207, 1
  %237 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs209 = getelementptr inbounds %struct.network, %struct.network* %237, i32 0, i32 23
  %238 = load %struct.arc*, %struct.arc** %arcs209, align 8
  %arrayidx210 = getelementptr inbounds %struct.arc, %struct.arc* %238, i64 %sub208
  %cost211 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx210, i32 0, i32 0
  store i64 %mul206, i64* %cost211, align 8
  %239 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM212 = getelementptr inbounds %struct.network, %struct.network* %239, i32 0, i32 18
  %240 = load i64, i64* %bigM212, align 8
  %cmp213 = icmp sgt i64 %240, 10000000
  br i1 %cmp213, label %cond.true.215, label %cond.false.217

cond.true.215:                                    ; preds = %cond.end.204
  %241 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM216 = getelementptr inbounds %struct.network, %struct.network* %241, i32 0, i32 18
  %242 = load i64, i64* %bigM216, align 8
  br label %cond.end.218

cond.false.217:                                   ; preds = %cond.end.204
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.215
  %cond219 = phi i64 [ %242, %cond.true.215 ], [ 10000000, %cond.false.217 ]
  %mul220 = mul nsw i64 -2, %cond219
  %243 = load i64, i64* %i, align 8
  %mul221 = mul nsw i64 3, %243
  %sub222 = sub nsw i64 %mul221, 1
  %244 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs223 = getelementptr inbounds %struct.network, %struct.network* %244, i32 0, i32 23
  %245 = load %struct.arc*, %struct.arc** %arcs223, align 8
  %arrayidx224 = getelementptr inbounds %struct.arc, %struct.arc* %245, i64 %sub222
  %org_cost225 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx224, i32 0, i32 7
  store i64 %mul220, i64* %org_cost225, align 8
  br label %for.inc.226

for.inc.226:                                      ; preds = %cond.end.218
  %246 = load i64, i64* %i, align 8
  %inc227 = add nsw i64 %246, 1
  store i64 %inc227, i64* %i, align 8
  br label %for.cond.193

for.end.228:                                      ; preds = %for.cond.193
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %for.end.228, %if.then.147, %if.then.134, %if.then.57, %if.then.34, %if.then.6, %if.then
  %247 = load i64, i64* %retval
  ret i64 %247
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #1

declare i64 @getfree(%struct.network*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
