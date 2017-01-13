; ModuleID = './MultiSource.Applications.d/10.arg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ArgumentState = type { i8**, i32, i8*, %struct.ArgumentDescription* }
%struct.ArgumentDescription = type { i8*, i8, i8*, i8*, i8*, i8*, void (%struct.ArgumentState*, i8*)* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s:bad argument description\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s [flags|args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  %c%c%c --%s%s%s\00", align 1
@SPACES = internal global i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arg_types_keys = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), align 8
@arg_types_desc = internal global [9 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %-9lld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" %-7s..\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" (null)   \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" %-9.3e\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %-9d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"true \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"                                                                               \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ISDfF+TL\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"int     \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"string  \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"double  \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"set off \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"set on  \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"incr    \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"toggle  \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"int64   \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"        \00", align 1

; Function Attrs: nounwind uwtable
define void @process_arg(%struct.ArgumentState* %arg_state, i32 %i, i8*** %argv) #0 {
entry:
  %arg_state.addr = alloca %struct.ArgumentState*, align 8
  %i.addr = alloca i32, align 4
  %argv.addr = alloca i8***, align 8
  %arg = alloca i8*, align 8
  %desc = alloca %struct.ArgumentDescription*, align 8
  %type2 = alloca i8, align 1
  store %struct.ArgumentState* %arg_state, %struct.ArgumentState** %arg_state.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8*** %argv, i8**** %argv.addr, align 8
  store i8* null, i8** %arg, align 8
  %0 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %desc1 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i32 0, i32 3
  %1 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc1, align 8
  store %struct.ArgumentDescription* %1, %struct.ArgumentDescription** %desc, align 8
  %2 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %3, i64 %idxprom
  %type = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx, i32 0, i32 3
  %4 = load i8*, i8** %type, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx4 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %6, i64 %idxprom3
  %type5 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx4, i32 0, i32 3
  %7 = load i8*, i8** %type5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx6, align 1
  store i8 %8, i8* %type2, align 1
  %9 = load i8, i8* %type2, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 70
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i8, i8* %type2, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 102
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %11 = load i8, i8* %type2, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 70
  %cond = select i1 %cmp13, i32 1, i32 0
  %12 = load i32, i32* %i.addr, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx16 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %13, i64 %idxprom15
  %location = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx16, i32 0, i32 4
  %14 = load i8*, i8** %location, align 8
  %15 = bitcast i8* %14 to i32*
  store i32 %cond, i32* %15, align 4
  br label %if.end.72

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i8, i8* %type2, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 84
  br i1 %cmp18, label %if.then.20, label %if.else.28

if.then.20:                                       ; preds = %if.else
  %17 = load i32, i32* %i.addr, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx22 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %18, i64 %idxprom21
  %location23 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx22, i32 0, i32 4
  %19 = load i8*, i8** %location23, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %tobool24 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  %22 = load i32, i32* %i.addr, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx26 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %23, i64 %idxprom25
  %location27 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx26, i32 0, i32 4
  %24 = load i8*, i8** %location27, align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %lnot.ext, i32* %25, align 4
  br label %if.end.71

if.else.28:                                       ; preds = %if.else
  %26 = load i8, i8* %type2, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 43
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.else.28
  %27 = load i32, i32* %i.addr, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx34 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %28, i64 %idxprom33
  %location35 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx34, i32 0, i32 4
  %29 = load i8*, i8** %location35, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %30, align 4
  br label %if.end.70

if.else.36:                                       ; preds = %if.else.28
  %32 = load i8***, i8**** %argv.addr, align 8
  %33 = load i8**, i8*** %32, align 8
  %34 = load i8*, i8** %33, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %33, align 8
  %35 = load i8, i8* %incdec.ptr, align 1
  %conv37 = sext i8 %35 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.36
  %36 = load i8***, i8**** %argv.addr, align 8
  %37 = load i8**, i8*** %36, align 8
  %38 = load i8*, i8** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.36
  %39 = load i8***, i8**** %argv.addr, align 8
  %40 = load i8**, i8*** %39, align 8
  %incdec.ptr39 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %incdec.ptr39, i8*** %39, align 8
  %41 = load i8*, i8** %incdec.ptr39, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond40 = phi i8* [ %38, %cond.true ], [ %41, %cond.false ]
  store i8* %cond40, i8** %arg, align 8
  %42 = load i8*, i8** %arg, align 8
  %tobool41 = icmp ne i8* %42, null
  br i1 %tobool41, label %if.end, label %if.then.42

if.then.42:                                       ; preds = %cond.end
  %43 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  call void @usage(%struct.ArgumentState* %43, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.42, %cond.end
  %44 = load i8, i8* %type2, align 1
  %conv43 = sext i8 %44 to i32
  switch i32 %conv43, label %sw.default [
    i32 73, label %sw.bb
    i32 68, label %sw.bb.47
    i32 76, label %sw.bb.52
    i32 83, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end
  %45 = load i8*, i8** %arg, align 8
  %call = call i32 @atoi(i8* %45) #5
  %46 = load i32, i32* %i.addr, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx45 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %47, i64 %idxprom44
  %location46 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx45, i32 0, i32 4
  %48 = load i8*, i8** %location46, align 8
  %49 = bitcast i8* %48 to i32*
  store i32 %call, i32* %49, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end
  %50 = load i8*, i8** %arg, align 8
  %call48 = call double @atof(i8* %50) #5
  %51 = load i32, i32* %i.addr, align 4
  %idxprom49 = sext i32 %51 to i64
  %52 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx50 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %52, i64 %idxprom49
  %location51 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx50, i32 0, i32 4
  %53 = load i8*, i8** %location51, align 8
  %54 = bitcast i8* %53 to double*
  store double %call48, double* %54, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end
  %55 = load i8*, i8** %arg, align 8
  %call53 = call i64 @atol(i8* %55) #5
  %56 = load i32, i32* %i.addr, align 4
  %idxprom54 = sext i32 %56 to i64
  %57 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx55 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %57, i64 %idxprom54
  %location56 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx55, i32 0, i32 4
  %58 = load i8*, i8** %location56, align 8
  %59 = bitcast i8* %58 to i64*
  store i64 %call53, i64* %59, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end
  %60 = load i32, i32* %i.addr, align 4
  %idxprom58 = sext i32 %60 to i64
  %61 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx59 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %61, i64 %idxprom58
  %location60 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx59, i32 0, i32 4
  %62 = load i8*, i8** %location60, align 8
  %63 = load i8*, i8** %arg, align 8
  %64 = load i32, i32* %i.addr, align 4
  %idxprom61 = sext i32 %64 to i64
  %65 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx62 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %65, i64 %idxprom61
  %type63 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx62, i32 0, i32 3
  %66 = load i8*, i8** %type63, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 1
  %call64 = call i32 @atoi(i8* %add.ptr) #5
  %conv65 = sext i32 %call64 to i64
  %call66 = call i8* @strncpy(i8* %62, i8* %63, i64 %conv65) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %program_name = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %68, i32 0, i32 2
  %69 = load i8*, i8** %program_name, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* %69)
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.57, %sw.bb.52, %sw.bb.47, %sw.bb
  %70 = load i8***, i8**** %argv.addr, align 8
  %71 = load i8**, i8*** %70, align 8
  %72 = load i8*, i8** %71, align 8
  %call68 = call i64 @strlen(i8* %72) #5
  %sub = sub i64 %call68, 1
  %73 = load i8***, i8**** %argv.addr, align 8
  %74 = load i8**, i8*** %73, align 8
  %75 = load i8*, i8** %74, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %75, i64 %sub
  store i8* %add.ptr69, i8** %74, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %sw.epilog, %if.then.32
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.20
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.11
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  %76 = load i32, i32* %i.addr, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx75 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %77, i64 %idxprom74
  %pfn = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx75, i32 0, i32 6
  %78 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %pfn, align 8
  %tobool76 = icmp ne void (%struct.ArgumentState*, i8*)* %78, null
  br i1 %tobool76, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.end.73
  %79 = load i32, i32* %i.addr, align 4
  %idxprom78 = sext i32 %79 to i64
  %80 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx79 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %80, i64 %idxprom78
  %pfn80 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx79, i32 0, i32 6
  %81 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %pfn80, align 8
  %82 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %83 = load i8*, i8** %arg, align 8
  call void %81(%struct.ArgumentState* %82, i8* %83)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define void @usage(%struct.ArgumentState* %arg_state, i8* %arg_unused) #0 {
entry:
  %arg_state.addr = alloca %struct.ArgumentState*, align 8
  %arg_unused.addr = alloca i8*, align 8
  %desc = alloca %struct.ArgumentDescription*, align 8
  %i = alloca i32, align 4
  store %struct.ArgumentState* %arg_state, %struct.ArgumentState** %arg_state.addr, align 8
  store i8* %arg_unused, i8** %arg_unused.addr, align 8
  %0 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %desc1 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i32 0, i32 3
  %1 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc1, align 8
  store %struct.ArgumentDescription* %1, %struct.ArgumentDescription** %desc, align 8
  %2 = load i8*, i8** %arg_unused.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %program_name = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %4, i32 0, i32 2
  %5 = load i8*, i8** %program_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %7, i64 %idxprom
  %name = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx3 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %10, i64 %idxprom2
  %description = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx3, i32 0, i32 2
  %11 = load i8*, i8** %description, align 8
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %for.inc

if.end.6:                                         ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx8 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %14, i64 %idxprom7
  %key = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx8, i32 0, i32 1
  %15 = load i8, i8* %key, align 1
  %conv = sext i8 %15 to i32
  %cmp = icmp ne i32 %conv, 32
  %cond = select i1 %cmp, i32 45, i32 32
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx11 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %17, i64 %idxprom10
  %key12 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx11, i32 0, i32 1
  %18 = load i8, i8* %key12, align 1
  %conv13 = sext i8 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx15 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %20, i64 %idxprom14
  %key16 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx15, i32 0, i32 1
  %21 = load i8, i8* %key16, align 1
  %conv17 = sext i8 %21 to i32
  %cmp18 = icmp ne i32 %conv17, 32
  %cond20 = select i1 %cmp18, i32 44, i32 32
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx22 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %23, i64 %idxprom21
  %name23 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx22, i32 0, i32 0
  %24 = load i8*, i8** %name23, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx25 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %26, i64 %idxprom24
  %name26 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx25, i32 0, i32 0
  %27 = load i8*, i8** %name26, align 8
  %call27 = call i64 @strlen(i8* %27) #5
  %add = add i64 %call27, 61
  %cmp28 = icmp ult i64 %add, 81
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx31 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %29, i64 %idxprom30
  %name32 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx31, i32 0, i32 0
  %30 = load i8*, i8** %name32, align 8
  %call33 = call i64 @strlen(i8* %30) #5
  %add34 = add i64 %call33, 61
  %31 = load i8*, i8** @SPACES, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %add34
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond36 = phi i8* [ %arrayidx35, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false ]
  %32 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx38 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %33, i64 %idxprom37
  %type = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx38, i32 0, i32 3
  %34 = load i8*, i8** %type, align 8
  %tobool39 = icmp ne i8* %34, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.47

cond.true.40:                                     ; preds = %cond.end
  %35 = load i8*, i8** @arg_types_keys, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx42 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %37, i64 %idxprom41
  %type43 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx42, i32 0, i32 3
  %38 = load i8*, i8** %type43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %39 to i32
  %call46 = call i8* @strchr(i8* %35, i32 %conv45) #5
  %40 = load i8*, i8** @arg_types_keys, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.end
  %41 = load i8*, i8** @arg_types_keys, align 8
  %call48 = call i64 @strlen(i8* %41) #5
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.40
  %cond50 = phi i64 [ %sub.ptr.sub, %cond.true.40 ], [ %call48, %cond.false.47 ]
  %arrayidx51 = getelementptr inbounds [9 x i8*], [9 x i8*]* @arg_types_desc, i32 0, i64 %cond50
  %42 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %cond, i32 %conv13, i32 %cond20, i8* %24, i8* %cond36, i8* %42)
  %43 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx54 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %44, i64 %idxprom53
  %type55 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx54, i32 0, i32 3
  %45 = load i8*, i8** %type55, align 8
  %tobool56 = icmp ne i8* %45, null
  br i1 %tobool56, label %cond.true.57, label %cond.false.63

cond.true.57:                                     ; preds = %cond.end.49
  %46 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %46 to i64
  %47 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx59 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %47, i64 %idxprom58
  %type60 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx59, i32 0, i32 3
  %48 = load i8*, i8** %type60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %49 to i32
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.end.49
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.57
  %cond65 = phi i32 [ %conv62, %cond.true.57 ], [ 0, %cond.false.63 ]
  switch i32 %cond65, label %sw.epilog [
    i32 0, label %sw.bb
    i32 76, label %sw.bb.67
    i32 83, label %sw.bb.71
    i32 68, label %sw.bb.100
    i32 43, label %sw.bb.105
    i32 73, label %sw.bb.105
    i32 84, label %sw.bb.110
    i32 102, label %sw.bb.110
    i32 70, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %cond.end.64
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.bb.67:                                         ; preds = %cond.end.64
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %52 to i64
  %53 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx69 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %53, i64 %idxprom68
  %location = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx69, i32 0, i32 4
  %54 = load i8*, i8** %location, align 8
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %56)
  br label %sw.epilog

sw.bb.71:                                         ; preds = %cond.end.64
  %57 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx73 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %58, i64 %idxprom72
  %location74 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx73, i32 0, i32 4
  %59 = load i8*, i8** %location74, align 8
  %60 = load i8, i8* %59, align 1
  %tobool75 = icmp ne i8 %60, 0
  br i1 %tobool75, label %if.then.76, label %if.else.97

if.then.76:                                       ; preds = %sw.bb.71
  %61 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %61 to i64
  %62 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx78 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %62, i64 %idxprom77
  %location79 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx78, i32 0, i32 4
  %63 = load i8*, i8** %location79, align 8
  %call80 = call i64 @strlen(i8* %63) #5
  %cmp81 = icmp ult i64 %call80, 10
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.then.76
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %65 to i64
  %66 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx85 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %66, i64 %idxprom84
  %location86 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx85, i32 0, i32 4
  %67 = load i8*, i8** %location86, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %67)
  br label %if.end.96

if.else:                                          ; preds = %if.then.76
  %68 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %68 to i64
  %69 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx89 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %69, i64 %idxprom88
  %location90 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx89, i32 0, i32 4
  %70 = load i8*, i8** %location90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %70, i64 7
  store i8 0, i8* %arrayidx91, align 1
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %72 to i64
  %73 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx93 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %73, i64 %idxprom92
  %location94 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx93, i32 0, i32 4
  %74 = load i8*, i8** %location94, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %74)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.83
  br label %if.end.99

if.else.97:                                       ; preds = %sw.bb.71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.end.96
  br label %sw.epilog

sw.bb.100:                                        ; preds = %cond.end.64
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %77 to i64
  %78 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx102 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %78, i64 %idxprom101
  %location103 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx102, i32 0, i32 4
  %79 = load i8*, i8** %location103, align 8
  %80 = bitcast i8* %79 to double*
  %81 = load double, double* %80, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double %81)
  br label %sw.epilog

sw.bb.105:                                        ; preds = %cond.end.64, %cond.end.64
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %83 to i64
  %84 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx107 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %84, i64 %idxprom106
  %location108 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx107, i32 0, i32 4
  %85 = load i8*, i8** %location108, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %87)
  br label %sw.epilog

sw.bb.110:                                        ; preds = %cond.end.64, %cond.end.64, %cond.end.64
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %89 to i64
  %90 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx112 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %90, i64 %idxprom111
  %location113 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx112, i32 0, i32 4
  %91 = load i8*, i8** %location113, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %tobool114 = icmp ne i32 %93, 0
  %cond115 = select i1 %tobool114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %cond115)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.64, %sw.bb.110, %sw.bb.105, %sw.bb.100, %if.end.99, %sw.bb.67, %sw.bb
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %95 to i64
  %96 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx118 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %96, i64 %idxprom117
  %description119 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx118, i32 0, i32 2
  %97 = load i8*, i8** %description119, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %97)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.5
  %98 = load i32, i32* %i, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @process_args(%struct.ArgumentState* %arg_state, i8** %argv) #0 {
entry:
  %arg_state.addr = alloca %struct.ArgumentState*, align 8
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %end = alloca i8*, align 8
  %desc = alloca %struct.ArgumentDescription*, align 8
  %type = alloca i8, align 1
  %env10 = alloca i8*, align 8
  store %struct.ArgumentState* %arg_state, %struct.ArgumentState** %arg_state.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %desc1 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i32 0, i32 3
  %1 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc1, align 8
  store %struct.ArgumentDescription* %1, %struct.ArgumentDescription** %desc, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %3, i64 %idxprom
  %name = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx3 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %6, i64 %idxprom2
  %env = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx3, i32 0, i32 5
  %7 = load i8*, i8** %env, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.49

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx7 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %9, i64 %idxprom6
  %type8 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx7, i32 0, i32 3
  %10 = load i8*, i8** %type8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx9, align 1
  store i8 %11, i8* %type, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx12 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %13, i64 %idxprom11
  %env13 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx12, i32 0, i32 5
  %14 = load i8*, i8** %env13, align 8
  %call = call i8* @getenv(i8* %14) #6
  store i8* %call, i8** %env10, align 8
  %15 = load i8*, i8** %env10, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.5
  br label %for.inc

if.end.16:                                        ; preds = %if.then.5
  %16 = load i8, i8* %type, align 1
  %conv = sext i8 %16 to i32
  switch i32 %conv, label %sw.epilog [
    i32 65, label %sw.bb
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 73, label %sw.bb.17
    i32 68, label %sw.bb.22
    i32 76, label %sw.bb.27
    i32 83, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.end.16, %if.end.16, %if.end.16
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.16
  %17 = load i8*, i8** %env10, align 8
  %call18 = call i64 @strtol(i8* %17, i8** null, i32 0) #6
  %conv19 = trunc i64 %call18 to i32
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx21 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %19, i64 %idxprom20
  %location = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx21, i32 0, i32 4
  %20 = load i8*, i8** %location, align 8
  %21 = bitcast i8* %20 to i32*
  store i32 %conv19, i32* %21, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.16
  %22 = load i8*, i8** %env10, align 8
  %call23 = call double @strtod(i8* %22, i8** null) #6
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx25 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %24, i64 %idxprom24
  %location26 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx25, i32 0, i32 4
  %25 = load i8*, i8** %location26, align 8
  %26 = bitcast i8* %25 to double*
  store double %call23, double* %26, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.16
  %27 = load i8*, i8** %env10, align 8
  %call28 = call i64 @strtoll(i8* %27, i8** null, i32 0) #6
  %28 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx30 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %29, i64 %idxprom29
  %location31 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx30, i32 0, i32 4
  %30 = load i8*, i8** %location31, align 8
  %31 = bitcast i8* %30 to i64*
  store i64 %call28, i64* %31, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.16
  %32 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx34 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %33, i64 %idxprom33
  %location35 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx34, i32 0, i32 4
  %34 = load i8*, i8** %location35, align 8
  %35 = load i8*, i8** %env10, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx37 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %37, i64 %idxprom36
  %type38 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx37, i32 0, i32 3
  %38 = load i8*, i8** %type38, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 1
  %call39 = call i64 @strtol(i8* %add.ptr, i8** null, i32 0) #6
  %call40 = call i8* @strncpy(i8* %34, i8* %35, i64 %call39) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.16, %sw.bb.32, %sw.bb.27, %sw.bb.22, %sw.bb.17, %sw.bb
  %39 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx42 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %40, i64 %idxprom41
  %pfn = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx42, i32 0, i32 6
  %41 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %pfn, align 8
  %tobool43 = icmp ne void (%struct.ArgumentState*, i8*)* %41, null
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %sw.epilog
  %42 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx46 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %43, i64 %idxprom45
  %pfn47 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx46, i32 0, i32 6
  %44 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %pfn47, align 8
  %45 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %46 = load i8*, i8** %env10, align 8
  call void %44(%struct.ArgumentState* %45, i8* %46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %sw.epilog
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.49, %if.then.15
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx50, align 8
  %50 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %program_name = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %50, i32 0, i32 2
  store i8* %49, i8** %program_name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.139, %for.end
  %51 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %52 = load i8*, i8** %incdec.ptr, align 8
  %tobool51 = icmp ne i8* %52, null
  br i1 %tobool51, label %while.body, label %while.end.140

while.body:                                       ; preds = %while.cond
  %53 = load i8**, i8*** %argv.addr, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %conv52 = sext i8 %55 to i32
  %cmp = icmp eq i32 %conv52, 45
  br i1 %cmp, label %if.then.54, label %if.else.126

if.then.54:                                       ; preds = %while.body
  %56 = load i8**, i8*** %argv.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %58 to i32
  %cmp57 = icmp eq i32 %conv56, 45
  br i1 %cmp57, label %if.then.59, label %if.else.102

if.then.59:                                       ; preds = %if.then.54
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.99, %if.then.59
  %59 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %59 to i64
  %60 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx62 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %60, i64 %idxprom61
  %name63 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx62, i32 0, i32 0
  %61 = load i8*, i8** %name63, align 8
  %tobool64 = icmp ne i8* %61, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %for.cond.60
  %62 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  call void @usage(%struct.ArgumentState* %62, i8* null)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %for.cond.60
  %63 = load i8**, i8*** %argv.addr, align 8
  %64 = load i8*, i8** %63, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %64, i64 2
  %call68 = call i8* @strchr(i8* %add.ptr67, i32 61) #5
  store i8* %call68, i8** %end, align 8
  %tobool69 = icmp ne i8* %call68, null
  br i1 %tobool69, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.end.66
  %65 = load i8*, i8** %end, align 8
  %66 = load i8**, i8*** %argv.addr, align 8
  %67 = load i8*, i8** %66, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %67, i64 2
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr71 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv72 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv72, i32* %len, align 4
  br label %if.end.76

if.else:                                          ; preds = %if.end.66
  %68 = load i8**, i8*** %argv.addr, align 8
  %69 = load i8*, i8** %68, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %69, i64 2
  %call74 = call i64 @strlen(i8* %add.ptr73) #5
  %conv75 = trunc i64 %call74 to i32
  store i32 %conv75, i32* %len, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.70
  %70 = load i32, i32* %len, align 4
  %conv77 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %71 to i64
  %72 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx79 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %72, i64 %idxprom78
  %name80 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx79, i32 0, i32 0
  %73 = load i8*, i8** %name80, align 8
  %call81 = call i64 @strlen(i8* %73) #5
  %cmp82 = icmp eq i64 %conv77, %call81
  br i1 %cmp82, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end.76
  %74 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx85 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %75, i64 %idxprom84
  %name86 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx85, i32 0, i32 0
  %76 = load i8*, i8** %name86, align 8
  %77 = load i8**, i8*** %argv.addr, align 8
  %78 = load i8*, i8** %77, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i32, i32* %len, align 4
  %conv88 = sext i32 %79 to i64
  %call89 = call i32 @strncmp(i8* %76, i8* %add.ptr87, i64 %conv88) #5
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.98, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true
  %80 = load i8*, i8** %end, align 8
  %tobool92 = icmp ne i8* %80, null
  br i1 %tobool92, label %if.else.96, label %if.then.93

if.then.93:                                       ; preds = %if.then.91
  %81 = load i8**, i8*** %argv.addr, align 8
  %82 = load i8*, i8** %81, align 8
  %call94 = call i64 @strlen(i8* %82) #5
  %sub = sub i64 %call94, 1
  %83 = load i8**, i8*** %argv.addr, align 8
  %84 = load i8*, i8** %83, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %84, i64 %sub
  store i8* %add.ptr95, i8** %83, align 8
  br label %if.end.97

if.else.96:                                       ; preds = %if.then.91
  %85 = load i8*, i8** %end, align 8
  %86 = load i8**, i8*** %argv.addr, align 8
  store i8* %85, i8** %86, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.96, %if.then.93
  %87 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %88 = load i32, i32* %i, align 4
  call void @process_arg(%struct.ArgumentState* %87, i32 %88, i8*** %argv.addr)
  br label %for.end.101

if.end.98:                                        ; preds = %land.lhs.true, %if.end.76
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %89 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %89, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.60

for.end.101:                                      ; preds = %if.end.97
  br label %if.end.125

if.else.102:                                      ; preds = %if.then.54
  br label %while.cond.103

while.cond.103:                                   ; preds = %for.end.124, %if.else.102
  %90 = load i8**, i8*** %argv.addr, align 8
  %91 = load i8*, i8** %90, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr104, i8** %90, align 8
  %92 = load i8, i8* %incdec.ptr104, align 1
  %tobool105 = icmp ne i8 %92, 0
  br i1 %tobool105, label %while.body.106, label %while.end

while.body.106:                                   ; preds = %while.cond.103
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.122, %while.body.106
  %93 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %93 to i64
  %94 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx109 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %94, i64 %idxprom108
  %name110 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx109, i32 0, i32 0
  %95 = load i8*, i8** %name110, align 8
  %tobool111 = icmp ne i8* %95, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %for.cond.107
  %96 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  call void @usage(%struct.ArgumentState* %96, i8* null)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %for.cond.107
  %97 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %97 to i64
  %98 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %desc, align 8
  %arrayidx115 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %98, i64 %idxprom114
  %key = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %arrayidx115, i32 0, i32 1
  %99 = load i8, i8* %key, align 1
  %conv116 = sext i8 %99 to i32
  %100 = load i8**, i8*** %argv.addr, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %conv117 = sext i8 %102 to i32
  %cmp118 = icmp eq i32 %conv116, %conv117
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.113
  %103 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %104 = load i32, i32* %i, align 4
  call void @process_arg(%struct.ArgumentState* %103, i32 %104, i8*** %argv.addr)
  br label %for.end.124

if.end.121:                                       ; preds = %if.end.113
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %105 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %105, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.107

for.end.124:                                      ; preds = %if.then.120
  br label %while.cond.103

while.end:                                        ; preds = %while.cond.103
  br label %if.end.125

if.end.125:                                       ; preds = %while.end, %for.end.101
  br label %if.end.139

if.else.126:                                      ; preds = %while.body
  %106 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %106, i32 0, i32 0
  %107 = load i8**, i8*** %file_argument, align 8
  %108 = bitcast i8** %107 to i8*
  %109 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %nfile_arguments = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %109, i32 0, i32 1
  %110 = load i32, i32* %nfile_arguments, align 4
  %add = add nsw i32 %110, 2
  %conv127 = sext i32 %add to i64
  %mul = mul i64 8, %conv127
  %call128 = call i8* @realloc(i8* %108, i64 %mul) #6
  %111 = bitcast i8* %call128 to i8**
  %112 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument129 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %112, i32 0, i32 0
  store i8** %111, i8*** %file_argument129, align 8
  %113 = load i8**, i8*** %argv.addr, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %nfile_arguments130 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %115, i32 0, i32 1
  %116 = load i32, i32* %nfile_arguments130, align 4
  %inc131 = add nsw i32 %116, 1
  store i32 %inc131, i32* %nfile_arguments130, align 4
  %idxprom132 = sext i32 %116 to i64
  %117 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument133 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %117, i32 0, i32 0
  %118 = load i8**, i8*** %file_argument133, align 8
  %arrayidx134 = getelementptr inbounds i8*, i8** %118, i64 %idxprom132
  store i8* %114, i8** %arrayidx134, align 8
  %119 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %nfile_arguments135 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %119, i32 0, i32 1
  %120 = load i32, i32* %nfile_arguments135, align 4
  %idxprom136 = sext i32 %120 to i64
  %121 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument137 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %121, i32 0, i32 0
  %122 = load i8**, i8*** %file_argument137, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %122, i64 %idxprom136
  store i8* null, i8** %arrayidx138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.126, %if.end.125
  br label %while.cond

while.end.140:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @free_args(%struct.ArgumentState* %arg_state) #0 {
entry:
  %arg_state.addr = alloca %struct.ArgumentState*, align 8
  store %struct.ArgumentState* %arg_state, %struct.ArgumentState** %arg_state.addr, align 8
  %0 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i32 0, i32 0
  %1 = load i8**, i8*** %file_argument, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %file_argument1 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %2, i32 0, i32 0
  %3 = load i8**, i8*** %file_argument1, align 8
  %4 = bitcast i8** %3 to i8*
  call void @free(i8* %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
