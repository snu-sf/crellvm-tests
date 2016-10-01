; ModuleID = './MultiSource.Benchmarks.MallocBench/27.espresso.verify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@.str = private unnamed_addr constant [49 x i8] c"some minterm in F is not covered by Fold u Dold\0A\00", align 1
@verbose_debug = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"some minterm in Fold is not covered by F u Dold\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Warning: cannot permute columns without names\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"PLA_verify: PLA's are not the same size\0A\00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"ON-SET and DC-SET are disjoint\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Some minterm(s) belong to both the ON-SET and DC-SET !\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"ON-SET and OFF-SET are disjoint\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Some minterm(s) belong to both the ON-SET and OFF-SET !\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DC-SET and OFF-SET are disjoint\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Some minterm(s) belong to both the OFF-SET and DC-SET !\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Union of ON-SET, OFF-SET and DC-SET is the universe\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"There are minterms left unspecified !\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @verify(%struct.set_family* %F, %struct.set_family* %Fold, %struct.set_family* %Dold) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %Fold.addr = alloca %struct.set_family*, align 8
  %Dold.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %FD = alloca i32**, align 8
  %verify_error = alloca i32, align 4
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  store %struct.set_family* %Fold, %struct.set_family** %Fold.addr, align 8
  store %struct.set_family* %Dold, %struct.set_family** %Dold.addr, align 8
  store i32 0, i32* %verify_error, align 4
  %0 = load %struct.set_family*, %struct.set_family** %Fold.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %Dold.addr, align 8
  %call = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %0, %struct.set_family* %1)
  store i32** %call, i32*** %FD, align 8
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 5
  %3 = load i32*, i32** %data, align 8
  store i32* %3, i32** %p, align 8
  %4 = load i32*, i32** %p, align 8
  %5 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %6, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32*, i32** %p, align 8
  %10 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32**, i32*** %FD, align 8
  %12 = load i32*, i32** %p, align 8
  %call1 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** %11, i32* %12)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %verify_error, align 4
  %13 = load i32, i32* @verbose_debug, align 4
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %14 = load i32*, i32** %p, align 8
  %call5 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %14)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %call5)
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %wsize8 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize8, align 4
  %17 = load i32*, i32** %p, align 8
  %idx.ext9 = sext i32 %16 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %17, i64 %idx.ext9
  store i32* %add.ptr10, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %18 = load i32**, i32*** %FD, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %18, i64 0
  %19 = load i32*, i32** %arrayidx, align 8
  %tobool11 = icmp ne i32* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.end
  %20 = load i32**, i32*** %FD, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %20, i64 0
  %21 = load i32*, i32** %arrayidx13, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22)
  %23 = load i32**, i32*** %FD, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %23, i64 0
  store i32* null, i32** %arrayidx14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %for.end
  %24 = load i32**, i32*** %FD, align 8
  %tobool16 = icmp ne i32** %24, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %25 = load i32**, i32*** %FD, align 8
  %26 = bitcast i32** %25 to i8*
  call void @free(i8* %26)
  store i32** null, i32*** %FD, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %27 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %28 = load %struct.set_family*, %struct.set_family** %Dold.addr, align 8
  %call19 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %27, %struct.set_family* %28)
  store i32** %call19, i32*** %FD, align 8
  %29 = load %struct.set_family*, %struct.set_family** %Fold.addr, align 8
  %data20 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 5
  %30 = load i32*, i32** %data20, align 8
  store i32* %30, i32** %p, align 8
  %31 = load i32*, i32** %p, align 8
  %32 = load %struct.set_family*, %struct.set_family** %Fold.addr, align 8
  %count21 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count21, align 4
  %34 = load %struct.set_family*, %struct.set_family** %Fold.addr, align 8
  %wsize22 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %35 = load i32, i32* %wsize22, align 4
  %mul23 = mul nsw i32 %33, %35
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i32, i32* %31, i64 %idx.ext24
  store i32* %add.ptr25, i32** %last, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.40, %if.end.18
  %36 = load i32*, i32** %p, align 8
  %37 = load i32*, i32** %last, align 8
  %cmp27 = icmp ult i32* %36, %37
  br i1 %cmp27, label %for.body.28, label %for.end.44

for.body.28:                                      ; preds = %for.cond.26
  %38 = load i32**, i32*** %FD, align 8
  %39 = load i32*, i32** %p, align 8
  %call29 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** %38, i32* %39)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.39, label %if.then.31

if.then.31:                                       ; preds = %for.body.28
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %verify_error, align 4
  %40 = load i32, i32* @verbose_debug, align 4
  %tobool33 = icmp ne i32 %40, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.then.31
  %41 = load i32*, i32** %p, align 8
  %call35 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %41)
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %call35)
  br label %if.end.38

if.else.37:                                       ; preds = %if.then.31
  br label %for.end.44

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body.28
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %42 = load %struct.set_family*, %struct.set_family** %Fold.addr, align 8
  %wsize41 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 0
  %43 = load i32, i32* %wsize41, align 4
  %44 = load i32*, i32** %p, align 8
  %idx.ext42 = sext i32 %43 to i64
  %add.ptr43 = getelementptr inbounds i32, i32* %44, i64 %idx.ext42
  store i32* %add.ptr43, i32** %p, align 8
  br label %for.cond.26

for.end.44:                                       ; preds = %if.else.37, %for.cond.26
  %45 = load i32**, i32*** %FD, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %45, i64 0
  %46 = load i32*, i32** %arrayidx45, align 8
  %tobool46 = icmp ne i32* %46, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %for.end.44
  %47 = load i32**, i32*** %FD, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %47, i64 0
  %48 = load i32*, i32** %arrayidx48, align 8
  %49 = bitcast i32* %48 to i8*
  call void @free(i8* %49)
  %50 = load i32**, i32*** %FD, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %50, i64 0
  store i32* null, i32** %arrayidx49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %for.end.44
  %51 = load i32**, i32*** %FD, align 8
  %tobool51 = icmp ne i32** %51, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %52 = load i32**, i32*** %FD, align 8
  %53 = bitcast i32** %52 to i8*
  call void @free(i8* %53)
  store i32** null, i32*** %FD, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %54 = load i32, i32* %verify_error, align 4
  ret i32 %54
}

declare i32** @cube2list(...) #1

declare i32 @cube_is_covered(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PLA_verify(%struct.PLA_t* %PLA1, %struct.PLA_t* %PLA2) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA1.addr = alloca %struct.PLA_t*, align 8
  %PLA2.addr = alloca %struct.PLA_t*, align 8
  store %struct.PLA_t* %PLA1, %struct.PLA_t** %PLA1.addr, align 8
  store %struct.PLA_t* %PLA2, %struct.PLA_t** %PLA2.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 7
  %1 = load i8**, i8*** %label, align 8
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 7
  %3 = load i8**, i8*** %label1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %label4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 7
  %6 = load i8**, i8*** %label4, align 8
  %cmp5 = icmp ne i8** %6, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %label7 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 7
  %8 = load i8**, i8*** %label7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx8, align 8
  %cmp9 = icmp ne i8* %9, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %call = call i32 @PLA_permute(%struct.PLA_t* %10, %struct.PLA_t* %11)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 0
  %14 = load %struct.set_family*, %struct.set_family** %F, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %15 = load i32, i32* %sf_size, align 4
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %F11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %16, i32 0, i32 0
  %17 = load %struct.set_family*, %struct.set_family** %F11, align 8
  %sf_size12 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 1
  %18 = load i32, i32* %sf_size12, align 4
  %cmp13 = icmp ne i32 %15, %18
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %F17 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 0
  %21 = load %struct.set_family*, %struct.set_family** %F17, align 8
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 0
  %23 = load %struct.set_family*, %struct.set_family** %F18, align 8
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 1
  %25 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call19 = call i32 @verify(%struct.set_family* %21, %struct.set_family* %23, %struct.set_family* %25)
  store i32 %call19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.else
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @PLA_permute(%struct.PLA_t* %PLA1, %struct.PLA_t* %PLA2) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA1.addr = alloca %struct.PLA_t*, align 8
  %PLA2.addr = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %permute = alloca i32*, align 8
  %npermute = alloca i32, align 4
  %labi = alloca i8*, align 8
  %label = alloca i8**, align 8
  store %struct.PLA_t* %PLA1, %struct.PLA_t** %PLA1.addr, align 8
  store %struct.PLA_t* %PLA2, %struct.PLA_t** %PLA2.addr, align 8
  store i32 0, i32* %npermute, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 1
  %2 = load i32, i32* %sf_size, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %permute, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %F1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 0
  %6 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %sf_size2 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 1
  %7 = load i32, i32* %sf_size2, align 4
  %cmp = icmp slt i32 %4, %7
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA2.addr, align 8
  %label4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 7
  %10 = load i8**, i8*** %label4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  store i8* %11, i8** %labi, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F6 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 0
  %14 = load %struct.set_family*, %struct.set_family** %F6, align 8
  %sf_size7 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %15 = load i32, i32* %sf_size7, align 4
  %cmp8 = icmp slt i32 %12, %15
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.5
  %16 = load i8*, i8** %labi, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 7
  %19 = load i8**, i8*** %label12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %19, i64 %idxprom11
  %20 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i32 @strcmp(i8* %16, i8* %20) #3
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %npermute, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %npermute, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32*, i32** %permute, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  store i32 %21, i32* %arrayidx18, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then, %for.cond.5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F23 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 0
  %27 = load %struct.set_family*, %struct.set_family** %F23, align 8
  %cmp24 = icmp ne %struct.set_family* %27, null
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %for.end.22
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F27 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %28, i32 0, i32 0
  %29 = load %struct.set_family*, %struct.set_family** %F27, align 8
  %30 = load i32*, i32** %permute, align 8
  %31 = load i32, i32* %npermute, align 4
  %call28 = call %struct.set_family* (%struct.set_family*, i32*, i32, ...) bitcast (%struct.set_family* (...)* @sf_permute to %struct.set_family* (%struct.set_family*, i32*, i32, ...)*)(%struct.set_family* %29, i32* %30, i32 %31)
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %F29 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 0
  store %struct.set_family* %call28, %struct.set_family** %F29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %for.end.22
  %33 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %33, i32 0, i32 2
  %34 = load %struct.set_family*, %struct.set_family** %R, align 8
  %cmp31 = icmp ne %struct.set_family* %34, null
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.30
  %35 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %R34 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %35, i32 0, i32 2
  %36 = load %struct.set_family*, %struct.set_family** %R34, align 8
  %37 = load i32*, i32** %permute, align 8
  %38 = load i32, i32* %npermute, align 4
  %call35 = call %struct.set_family* (%struct.set_family*, i32*, i32, ...) bitcast (%struct.set_family* (...)* @sf_permute to %struct.set_family* (%struct.set_family*, i32*, i32, ...)*)(%struct.set_family* %36, i32* %37, i32 %38)
  %39 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %R36 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %39, i32 0, i32 2
  store %struct.set_family* %call35, %struct.set_family** %R36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.30
  %40 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %40, i32 0, i32 1
  %41 = load %struct.set_family*, %struct.set_family** %D, align 8
  %cmp38 = icmp ne %struct.set_family* %41, null
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.37
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %D41 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 1
  %43 = load %struct.set_family*, %struct.set_family** %D41, align 8
  %44 = load i32*, i32** %permute, align 8
  %45 = load i32, i32* %npermute, align 4
  %call42 = call %struct.set_family* (%struct.set_family*, i32*, i32, ...) bitcast (%struct.set_family* (...)* @sf_permute to %struct.set_family* (%struct.set_family*, i32*, i32, ...)*)(%struct.set_family* %43, i32* %44, i32 %45)
  %46 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %D43 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %46, i32 0, i32 1
  store %struct.set_family* %call42, %struct.set_family** %D43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.37
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %conv45 = sext i32 %47 to i64
  %mul46 = mul i64 8, %conv45
  %call47 = call i8* @malloc(i64 %mul46)
  %48 = bitcast i8* %call47 to i8**
  store i8** %48, i8*** %label, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.59, %if.end.44
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %npermute, align 4
  %cmp49 = icmp slt i32 %49, %50
  br i1 %cmp49, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.48
  %51 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %51 to i64
  %52 = load i32*, i32** %permute, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %52, i64 %idxprom52
  %53 = load i32, i32* %arrayidx53, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %54, i32 0, i32 7
  %55 = load i8**, i8*** %label55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %55, i64 %idxprom54
  %56 = load i8*, i8** %arrayidx56, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = load i8**, i8*** %label, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %58, i64 %idxprom57
  store i8* %56, i8** %arrayidx58, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.51
  %59 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %59, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  %60 = load i32, i32* %npermute, align 4
  store i32 %60, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.68, %for.end.61
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp63 = icmp slt i32 %61, %62
  br i1 %cmp63, label %for.body.65, label %for.end.70

for.body.65:                                      ; preds = %for.cond.62
  %63 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %63 to i64
  %64 = load i8**, i8*** %label, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %64, i64 %idxprom66
  store i8* null, i8** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.65
  %65 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %65, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.62

for.end.70:                                       ; preds = %for.cond.62
  %66 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label71 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %66, i32 0, i32 7
  %67 = load i8**, i8*** %label71, align 8
  %tobool = icmp ne i8** %67, null
  br i1 %tobool, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %for.end.70
  %68 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label73 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %68, i32 0, i32 7
  %69 = load i8**, i8*** %label73, align 8
  %70 = bitcast i8** %69 to i8*
  call void @free(i8* %70)
  %71 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label74 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %71, i32 0, i32 7
  store i8** null, i8*** %label74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %for.end.70
  %72 = load i8**, i8*** %label, align 8
  %73 = load %struct.PLA_t*, %struct.PLA_t** %PLA1.addr, align 8
  %label76 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %73, i32 0, i32 7
  store i8** %72, i8*** %label76, align 8
  %74 = load i32*, i32** %permute, align 8
  %tobool77 = icmp ne i32* %74, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  %75 = load i32*, i32** %permute, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* %76)
  store i32* null, i32** %permute, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.75
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.set_family* @sf_permute(...) #1

; Function Attrs: nounwind uwtable
define i32 @check_consistency(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %verify_error = alloca i32, align 4
  %T = alloca %struct.set_family*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 0, i32* %verify_error, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 1
  %3 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %1, %struct.set_family* %3)
  store %struct.set_family* %call, %struct.set_family** %T, align 8
  %4 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.4

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0))
  %6 = load i32, i32* @verbose_debug, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %7 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  store i32 1, i32* %verify_error, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %9)
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F6 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 0
  %11 = load %struct.set_family*, %struct.set_family** %F6, align 8
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 2
  %13 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call7 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %11, %struct.set_family* %13)
  store %struct.set_family* %call7, %struct.set_family** %T, align 8
  %14 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count8, align 4
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.17

if.else.12:                                       ; preds = %if.end.4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0))
  %16 = load i32, i32* @verbose_debug, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.12
  %17 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else.12
  store i32 1, i32* %verify_error, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fflush(%struct._IO_FILE* %18)
  %19 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %19)
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D19 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 1
  %21 = load %struct.set_family*, %struct.set_family** %D19, align 8
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R20 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 2
  %23 = load %struct.set_family*, %struct.set_family** %R20, align 8
  %call21 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %21, %struct.set_family* %23)
  store %struct.set_family* %call21, %struct.set_family** %T, align 8
  %24 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count22 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 3
  %25 = load i32, i32* %count22, align 4
  %cmp23 = icmp eq i32 %25, 0
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.end.17
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.31

if.else.26:                                       ; preds = %if.end.17
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0))
  %26 = load i32, i32* @verbose_debug, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  %27 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %27)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.26
  store i32 1, i32* %verify_error, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %28)
  %29 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %29)
  %30 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F33 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %30, i32 0, i32 0
  %31 = load %struct.set_family*, %struct.set_family** %F33, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D34 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 1
  %33 = load %struct.set_family*, %struct.set_family** %D34, align 8
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R35 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 2
  %35 = load %struct.set_family*, %struct.set_family** %R35, align 8
  %call36 = call i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube3list to i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %31, %struct.set_family* %33, %struct.set_family* %35)
  %call37 = call i32 (i32**, ...) bitcast (i32 (...)* @tautology to i32 (i32**, ...)*)(i32** %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.end.31
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.51

if.else.41:                                       ; preds = %if.end.31
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F42 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 0
  %37 = load %struct.set_family*, %struct.set_family** %F42, align 8
  %38 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D43 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %38, i32 0, i32 1
  %39 = load %struct.set_family*, %struct.set_family** %D43, align 8
  %40 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R44 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %40, i32 0, i32 2
  %41 = load %struct.set_family*, %struct.set_family** %R44, align 8
  %call45 = call i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube3list to i32** (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %37, %struct.set_family* %39, %struct.set_family* %41)
  %call46 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call45)
  store %struct.set_family* %call46, %struct.set_family** %T, align 8
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0))
  %42 = load i32, i32* @verbose_debug, align 4
  %tobool48 = icmp ne i32 %42, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.41
  %43 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @cprint to void (%struct.set_family*, ...)*)(%struct.set_family* %43)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.else.41
  store i32 1, i32* %verify_error, align 4
  %44 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %44)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call52 = call i32 @fflush(%struct._IO_FILE* %45)
  %46 = load i32, i32* %verify_error, align 4
  ret i32 %46
}

declare %struct.set_family* @cv_intersect(...) #1

declare void @cprint(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @sf_free(...) #1

declare i32 @tautology(...) #1

declare i32** @cube3list(...) #1

declare %struct.set_family* @complement(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
