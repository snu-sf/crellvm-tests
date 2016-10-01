; ModuleID = './MultiSource.Benchmarks.MiBench/169.office-ispell.lookup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.strchartype = type { i8*, i8*, i8* }

@inited = internal global i32 0, align 4
@hashname = external global [4096 x i8], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@hashheader = external global %struct.hashheader, align 4
@hashsize = external global i32, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Trouble reading hash table %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Null hash table %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Truncated hash table %s:  got %d bytes, expected %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = external global i32, align 4
@hashtbl = external global %struct.dent*, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@hashstrings = external global i8*, align 8
@numsflags = external global i32, align 4
@numpflags = external global i32, align 4
@sflaglist = external global %struct.flagent*, align 8
@pflaglist = external global %struct.flagent*, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@sflagindex = external global [228 x %struct.flagptr], align 16
@.str.9 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@pflagindex = external global [228 x %struct.flagptr], align 16
@chartypes = external global %struct.strchartype*, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [96 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @linit() #0 {
entry:
  %retval = alloca i32, align 4
  %hashfd = alloca i32, align 4
  %i = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  %entry1 = alloca %struct.flagent*, align 8
  %ind = alloca %struct.flagptr*, align 8
  %nextchar = alloca i32, align 4
  %viazero = alloca i32, align 4
  %cp = alloca i8*, align 8
  %errhashname = alloca i8*, align 8
  %0 = load i32, i32* @inited, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i32 0)
  store i32 %call, i32* %hashfd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @strrchr(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i32 47) #4
  store i8* %call5, i8** %errhashname, align 8
  %2 = load i8*, i8** %errhashname, align 8
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8** %errhashname, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end.4
  %3 = load i8*, i8** %errhashname, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %errhashname, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %4 = load i32, i32* %hashfd, align 4
  %call9 = call i64 @read(i32 %4, i8* bitcast (%struct.hashheader* @hashheader to i8*), i64 3928)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* @hashsize, align 4
  %5 = load i32, i32* @hashsize, align 4
  %conv10 = sext i32 %5 to i64
  %cmp11 = icmp ult i64 %conv10, 3928
  br i1 %cmp11, label %if.then.13, label %if.else.27

if.then.13:                                       ; preds = %if.end.8
  %6 = load i32, i32* @hashsize, align 4
  %cmp14 = icmp slt i32 %6, 0
  br i1 %cmp14, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %errhashname, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  br label %if.end.26

if.else.18:                                       ; preds = %if.then.13
  %9 = load i32, i32* @hashsize, align 4
  %cmp19 = icmp eq i32 %9, 0
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %errhashname, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %11)
  br label %if.end.25

if.else.23:                                       ; preds = %if.else.18
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %errhashname, align 8
  %14 = load i32, i32* @hashsize, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* %13, i32 %14, i32 3928)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  store i32 -1, i32* %retval
  br label %return

if.else.27:                                       ; preds = %if.end.8
  %15 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 0), align 2
  %conv28 = zext i16 %15 to i32
  %cmp29 = icmp ne i32 %conv28, 38402
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.27
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %errhashname, align 8
  %18 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 0), align 2
  %conv32 = zext i16 %18 to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i8* %17, i32 38402, i32 %conv32)
  store i32 -1, i32* %retval
  br label %return

if.else.34:                                       ; preds = %if.else.27
  %19 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 31), align 2
  %conv35 = zext i16 %19 to i32
  %cmp36 = icmp ne i32 %conv35, 38402
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.else.34
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** %errhashname, align 8
  %22 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 31), align 2
  %conv39 = zext i16 %22 to i32
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i8* %21, i32 38402, i32 %conv39)
  store i32 -1, i32* %retval
  br label %return

if.else.41:                                       ; preds = %if.else.34
  %23 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %conv42 = zext i16 %23 to i32
  %cmp43 = icmp ne i32 %conv42, 3
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.41
  %24 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 2), align 2
  %conv45 = sext i16 %24 to i32
  %cmp46 = icmp ne i32 %conv45, 100
  br i1 %cmp46, label %if.then.52, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %25 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %conv49 = sext i16 %25 to i32
  %cmp50 = icmp ne i32 %conv49, 10
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false, %if.else.41
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %conv53 = zext i16 %27 to i32
  %28 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 2), align 2
  %conv54 = sext i16 %28 to i32
  %29 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %conv55 = sext i16 %29 to i32
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i32 0, i32 0), i32 %conv53, i32 %conv54, i32 %conv55, i32 3, i32 100, i32 10)
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  %30 = load i32, i32* @nodictflag, align 4
  %tobool61 = icmp ne i32 %30, 0
  br i1 %tobool61, label %if.then.62, label %if.else.74

if.then.62:                                       ; preds = %if.end.60
  store i32 1, i32* @hashsize, align 4
  %call63 = call noalias i8* @calloc(i64 1, i64 24) #5
  %31 = bitcast i8* %call63 to %struct.dent*
  store %struct.dent* %31, %struct.dent** @hashtbl, align 8
  %32 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %cmp64 = icmp eq %struct.dent* %32, null
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.62
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  %34 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %arrayidx = getelementptr inbounds %struct.dent, %struct.dent* %34, i64 0
  %word = getelementptr inbounds %struct.dent, %struct.dent* %arrayidx, i32 0, i32 1
  store i8* null, i8** %word, align 8
  %35 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %arrayidx69 = getelementptr inbounds %struct.dent, %struct.dent* %35, i64 0
  %next = getelementptr inbounds %struct.dent, %struct.dent* %arrayidx69, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %next, align 8
  %36 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %arrayidx70 = getelementptr inbounds %struct.dent, %struct.dent* %36, i64 0
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %arrayidx70, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %37 = load i64, i64* %arrayidx71, align 8
  %and = and i64 %37, -201326593
  store i64 %and, i64* %arrayidx71, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %conv72 = zext i32 %38 to i64
  %call73 = call noalias i8* @malloc(i64 %conv72) #5
  store i8* %call73, i8** @hashstrings, align 8
  br label %if.end.79

if.else.74:                                       ; preds = %if.end.60
  %39 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %conv75 = zext i32 %39 to i64
  %mul = mul i64 %conv75, 24
  %call76 = call noalias i8* @malloc(i64 %mul) #5
  %40 = bitcast i8* %call76 to %struct.dent*
  store %struct.dent* %40, %struct.dent** @hashtbl, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  store i32 %41, i32* @hashsize, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %conv77 = zext i32 %42 to i64
  %call78 = call noalias i8* @malloc(i64 %conv77) #5
  store i8* %call78, i8** @hashstrings, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %if.end.68
  %43 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 9), align 4
  store i32 %43, i32* @numsflags, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 10), align 4
  store i32 %44, i32* @numpflags, align 4
  %45 = load i32, i32* @numsflags, align 4
  %46 = load i32, i32* @numpflags, align 4
  %add = add nsw i32 %45, %46
  %conv80 = sext i32 %add to i64
  %mul81 = mul i64 %conv80, 256
  %call82 = call noalias i8* @malloc(i64 %mul81) #5
  %47 = bitcast i8* %call82 to %struct.flagent*
  store %struct.flagent* %47, %struct.flagent** @sflaglist, align 8
  %48 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %cmp83 = icmp eq %struct.dent* %48, null
  br i1 %cmp83, label %if.then.91, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.end.79
  %49 = load i8*, i8** @hashstrings, align 8
  %cmp86 = icmp eq i8* %49, null
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.85
  %50 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %cmp89 = icmp eq %struct.flagent* %50, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %lor.lhs.false.88, %lor.lhs.false.85, %if.end.79
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %lor.lhs.false.88
  %52 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %53 = load i32, i32* @numsflags, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds %struct.flagent, %struct.flagent* %52, i64 %idx.ext
  store %struct.flagent* %add.ptr, %struct.flagent** @pflaglist, align 8
  %54 = load i32, i32* @nodictflag, align 4
  %tobool94 = icmp ne i32 %54, 0
  br i1 %tobool94, label %if.then.95, label %if.else.110

if.then.95:                                       ; preds = %if.end.93
  %55 = load i32, i32* %hashfd, align 4
  %56 = load i8*, i8** @hashstrings, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %conv96 = zext i32 %57 to i64
  %call97 = call i64 @read(i32 %55, i8* %56, i64 %conv96)
  %58 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %conv98 = sext i32 %58 to i64
  %cmp99 = icmp ne i64 %call97, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.95
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.95
  %60 = load i32, i32* %hashfd, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %conv104 = sext i32 %61 to i64
  %62 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %conv105 = sext i32 %62 to i64
  %sub = sub nsw i64 %conv104, %conv105
  %63 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %conv106 = sext i32 %63 to i64
  %mul107 = mul nsw i64 %conv106, 24
  %add108 = add nsw i64 %sub, %mul107
  %call109 = call i64 @lseek(i32 %60, i64 %add108, i32 1) #5
  br label %if.end.127

if.else.110:                                      ; preds = %if.end.93
  %64 = load i32, i32* %hashfd, align 4
  %65 = load i8*, i8** @hashstrings, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %conv111 = zext i32 %66 to i64
  %call112 = call i64 @read(i32 %64, i8* %65, i64 %conv111)
  %67 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %conv113 = sext i32 %67 to i64
  %cmp114 = icmp ne i64 %call112, %conv113
  br i1 %cmp114, label %if.then.124, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %if.else.110
  %68 = load i32, i32* %hashfd, align 4
  %69 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %70 = bitcast %struct.dent* %69 to i8*
  %71 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %conv117 = zext i32 %71 to i64
  %mul118 = mul i64 %conv117, 24
  %call119 = call i64 @read(i32 %68, i8* %70, i64 %mul118)
  %72 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %conv120 = sext i32 %72 to i64
  %mul121 = mul i64 %conv120, 24
  %cmp122 = icmp ne i64 %call119, %mul121
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %lor.lhs.false.116, %if.else.110
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %lor.lhs.false.116
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.103
  %74 = load i32, i32* %hashfd, align 4
  %75 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %76 = bitcast %struct.flagent* %75 to i8*
  %77 = load i32, i32* @numsflags, align 4
  %78 = load i32, i32* @numpflags, align 4
  %add128 = add nsw i32 %77, %78
  %conv129 = zext i32 %add128 to i64
  %mul130 = mul i64 %conv129, 256
  %call131 = call i64 @read(i32 %74, i8* %76, i64 %mul130)
  %79 = load i32, i32* @numsflags, align 4
  %80 = load i32, i32* @numpflags, align 4
  %add132 = add nsw i32 %79, %80
  %conv133 = sext i32 %add132 to i64
  %mul134 = mul i64 %conv133, 256
  %cmp135 = icmp ne i64 %call131, %mul134
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.127
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.end.127
  %82 = load i32, i32* %hashfd, align 4
  %call140 = call i32 @close(i32 %82)
  %83 = load i32, i32* @nodictflag, align 4
  %tobool141 = icmp ne i32 %83, 0
  br i1 %tobool141, label %if.end.167, label %if.then.142

if.then.142:                                      ; preds = %if.end.139
  %84 = load i32, i32* @hashsize, align 4
  store i32 %84, i32* %i, align 4
  %85 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %85, %struct.dent** %dp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.142
  %86 = load i32, i32* %i, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %i, align 4
  %cmp143 = icmp sge i32 %dec, 0
  br i1 %cmp143, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load %struct.dent*, %struct.dent** %dp, align 8
  %word145 = getelementptr inbounds %struct.dent, %struct.dent* %87, i32 0, i32 1
  %88 = load i8*, i8** %word145, align 8
  %cmp146 = icmp eq i8* %88, inttoptr (i64 -1 to i8*)
  br i1 %cmp146, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %for.body
  %89 = load %struct.dent*, %struct.dent** %dp, align 8
  %word149 = getelementptr inbounds %struct.dent, %struct.dent* %89, i32 0, i32 1
  store i8* null, i8** %word149, align 8
  br label %if.end.154

if.else.150:                                      ; preds = %for.body
  %90 = load %struct.dent*, %struct.dent** %dp, align 8
  %word151 = getelementptr inbounds %struct.dent, %struct.dent* %90, i32 0, i32 1
  %91 = load i8*, i8** %word151, align 8
  %92 = ptrtoint i8* %91 to i32
  %idxprom = sext i32 %92 to i64
  %93 = load i8*, i8** @hashstrings, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %93, i64 %idxprom
  %94 = load %struct.dent*, %struct.dent** %dp, align 8
  %word153 = getelementptr inbounds %struct.dent, %struct.dent* %94, i32 0, i32 1
  store i8* %arrayidx152, i8** %word153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.150, %if.then.148
  %95 = load %struct.dent*, %struct.dent** %dp, align 8
  %next155 = getelementptr inbounds %struct.dent, %struct.dent* %95, i32 0, i32 0
  %96 = load %struct.dent*, %struct.dent** %next155, align 8
  %cmp156 = icmp eq %struct.dent* %96, inttoptr (i64 -1 to %struct.dent*)
  br i1 %cmp156, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %if.end.154
  %97 = load %struct.dent*, %struct.dent** %dp, align 8
  %next159 = getelementptr inbounds %struct.dent, %struct.dent* %97, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %next159, align 8
  br label %if.end.165

if.else.160:                                      ; preds = %if.end.154
  %98 = load %struct.dent*, %struct.dent** %dp, align 8
  %next161 = getelementptr inbounds %struct.dent, %struct.dent* %98, i32 0, i32 0
  %99 = load %struct.dent*, %struct.dent** %next161, align 8
  %100 = ptrtoint %struct.dent* %99 to i32
  %idxprom162 = sext i32 %100 to i64
  %101 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %arrayidx163 = getelementptr inbounds %struct.dent, %struct.dent* %101, i64 %idxprom162
  %102 = load %struct.dent*, %struct.dent** %dp, align 8
  %next164 = getelementptr inbounds %struct.dent, %struct.dent* %102, i32 0, i32 0
  store %struct.dent* %arrayidx163, %struct.dent** %next164, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.160, %if.then.158
  br label %for.inc

for.inc:                                          ; preds = %if.end.165
  %103 = load %struct.dent*, %struct.dent** %dp, align 8
  %incdec.ptr166 = getelementptr inbounds %struct.dent, %struct.dent* %103, i32 1
  store %struct.dent* %incdec.ptr166, %struct.dent** %dp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.167

if.end.167:                                       ; preds = %for.end, %if.end.139
  %104 = load i32, i32* @numsflags, align 4
  %105 = load i32, i32* @numpflags, align 4
  %add168 = add nsw i32 %104, %105
  store i32 %add168, i32* %i, align 4
  %106 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %106, %struct.flagent** %entry1, align 8
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.190, %if.end.167
  %107 = load i32, i32* %i, align 4
  %dec170 = add nsw i32 %107, -1
  store i32 %dec170, i32* %i, align 4
  %cmp171 = icmp sge i32 %dec170, 0
  br i1 %cmp171, label %for.body.173, label %for.end.192

for.body.173:                                     ; preds = %for.cond.169
  %108 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %108, i32 0, i32 3
  %109 = load i16, i16* %stripl, align 2
  %tobool174 = icmp ne i16 %109, 0
  br i1 %tobool174, label %if.then.175, label %if.else.179

if.then.175:                                      ; preds = %for.body.173
  %110 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %strip = getelementptr inbounds %struct.flagent, %struct.flagent* %110, i32 0, i32 0
  %111 = load i8*, i8** %strip, align 8
  %112 = ptrtoint i8* %111 to i32
  %idxprom176 = sext i32 %112 to i64
  %113 = load i8*, i8** @hashstrings, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %113, i64 %idxprom176
  %114 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %strip178 = getelementptr inbounds %struct.flagent, %struct.flagent* %114, i32 0, i32 0
  store i8* %arrayidx177, i8** %strip178, align 8
  br label %if.end.181

if.else.179:                                      ; preds = %for.body.173
  %115 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %strip180 = getelementptr inbounds %struct.flagent, %struct.flagent* %115, i32 0, i32 0
  store i8* null, i8** %strip180, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.179, %if.then.175
  %116 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %116, i32 0, i32 4
  %117 = load i16, i16* %affl, align 2
  %tobool182 = icmp ne i16 %117, 0
  br i1 %tobool182, label %if.then.183, label %if.else.187

if.then.183:                                      ; preds = %if.end.181
  %118 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %118, i32 0, i32 1
  %119 = load i8*, i8** %affix, align 8
  %120 = ptrtoint i8* %119 to i32
  %idxprom184 = sext i32 %120 to i64
  %121 = load i8*, i8** @hashstrings, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %121, i64 %idxprom184
  %122 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix186 = getelementptr inbounds %struct.flagent, %struct.flagent* %122, i32 0, i32 1
  store i8* %arrayidx185, i8** %affix186, align 8
  br label %if.end.189

if.else.187:                                      ; preds = %if.end.181
  %123 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix188 = getelementptr inbounds %struct.flagent, %struct.flagent* %123, i32 0, i32 1
  store i8* null, i8** %affix188, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.183
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %124 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %incdec.ptr191 = getelementptr inbounds %struct.flagent, %struct.flagent* %124, i32 1
  store %struct.flagent* %incdec.ptr191, %struct.flagent** %entry1, align 8
  br label %for.cond.169

for.end.192:                                      ; preds = %for.cond.169
  %125 = load i32, i32* @numsflags, align 4
  store i32 %125, i32* %i, align 4
  %126 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %126, %struct.flagent** %entry1, align 8
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.270, %for.end.192
  %127 = load i32, i32* %i, align 4
  %cmp194 = icmp sgt i32 %127, 0
  br i1 %cmp194, label %for.body.196, label %for.end.273

for.body.196:                                     ; preds = %for.cond.193
  %128 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affl197 = getelementptr inbounds %struct.flagent, %struct.flagent* %128, i32 0, i32 4
  %129 = load i16, i16* %affl197, align 2
  %conv198 = sext i16 %129 to i32
  %cmp199 = icmp eq i32 %conv198, 0
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %for.body.196
  store i8* null, i8** %cp, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i32 0, i64 0), %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %if.end.229

if.else.202:                                      ; preds = %for.body.196
  %130 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix203 = getelementptr inbounds %struct.flagent, %struct.flagent* %130, i32 0, i32 1
  %131 = load i8*, i8** %affix203, align 8
  %132 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affl204 = getelementptr inbounds %struct.flagent, %struct.flagent* %132, i32 0, i32 4
  %133 = load i16, i16* %affl204, align 2
  %conv205 = sext i16 %133 to i32
  %idx.ext206 = sext i32 %conv205 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %131, i64 %idx.ext206
  %add.ptr208 = getelementptr inbounds i8, i8* %add.ptr207, i64 -1
  store i8* %add.ptr208, i8** %cp, align 8
  %134 = load i8*, i8** %cp, align 8
  %135 = load i8, i8* %134, align 1
  %idxprom209 = zext i8 %135 to i64
  %arrayidx210 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i32 0, i64 %idxprom209
  store %struct.flagptr* %arrayidx210, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.228, %if.else.202
  %136 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents = getelementptr inbounds %struct.flagptr, %struct.flagptr* %136, i32 0, i32 1
  %137 = load i32, i32* %numents, align 4
  %cmp211 = icmp eq i32 %137, 0
  br i1 %cmp211, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %138 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu = getelementptr inbounds %struct.flagptr, %struct.flagptr* %138, i32 0, i32 0
  %fp = bitcast %union.ptr_union* %pu to %struct.flagptr**
  %139 = load %struct.flagptr*, %struct.flagptr** %fp, align 8
  %cmp213 = icmp ne %struct.flagptr* %139, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %140 = phi i1 [ false, %while.cond ], [ %cmp213, %land.rhs ]
  br i1 %140, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %141 = load i8*, i8** %cp, align 8
  %142 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix215 = getelementptr inbounds %struct.flagent, %struct.flagent* %142, i32 0, i32 1
  %143 = load i8*, i8** %affix215, align 8
  %cmp216 = icmp eq i8* %141, %143
  br i1 %cmp216, label %if.then.218, label %if.else.222

if.then.218:                                      ; preds = %while.body
  %144 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu219 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %144, i32 0, i32 0
  %fp220 = bitcast %union.ptr_union* %pu219 to %struct.flagptr**
  %145 = load %struct.flagptr*, %struct.flagptr** %fp220, align 8
  %arrayidx221 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %145, i64 0
  store %struct.flagptr* %arrayidx221, %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %if.end.228

if.else.222:                                      ; preds = %while.body
  %146 = load i8*, i8** %cp, align 8
  %incdec.ptr223 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %incdec.ptr223, i8** %cp, align 8
  %147 = load i8, i8* %incdec.ptr223, align 1
  %idxprom224 = zext i8 %147 to i64
  %148 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu225 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %148, i32 0, i32 0
  %fp226 = bitcast %union.ptr_union* %pu225 to %struct.flagptr**
  %149 = load %struct.flagptr*, %struct.flagptr** %fp226, align 8
  %arrayidx227 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %149, i64 %idxprom224
  store %struct.flagptr* %arrayidx227, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.222, %if.then.218
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.229

if.end.229:                                       ; preds = %while.end, %if.then.201
  %150 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents230 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %150, i32 0, i32 1
  %151 = load i32, i32* %numents230, align 4
  %cmp231 = icmp eq i32 %151, 0
  br i1 %cmp231, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.end.229
  %152 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %153 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu234 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %153, i32 0, i32 0
  %ent = bitcast %union.ptr_union* %pu234 to %struct.flagent**
  store %struct.flagent* %152, %struct.flagent** %ent, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.end.229
  %154 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents236 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %154, i32 0, i32 1
  %155 = load i32, i32* %numents236, align 4
  %inc = add nsw i32 %155, 1
  store i32 %inc, i32* %numents236, align 4
  %156 = load i32, i32* %viazero, align 4
  %tobool237 = icmp ne i32 %156, 0
  br i1 %tobool237, label %if.end.269, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.235
  %157 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents238 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %157, i32 0, i32 1
  %158 = load i32, i32* %numents238, align 4
  %cmp239 = icmp sge i32 %158, 4
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.269

land.lhs.true.241:                                ; preds = %land.lhs.true
  %159 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix242 = getelementptr inbounds %struct.flagent, %struct.flagent* %159, i32 0, i32 1
  %160 = load i8*, i8** %affix242, align 8
  %161 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu243 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %161, i32 0, i32 0
  %ent244 = bitcast %union.ptr_union* %pu243 to %struct.flagent**
  %162 = load %struct.flagent*, %struct.flagent** %ent244, align 8
  %affix245 = getelementptr inbounds %struct.flagent, %struct.flagent* %162, i32 0, i32 1
  %163 = load i8*, i8** %affix245, align 8
  %call246 = call i32 @strcmp(i8* %160, i8* %163) #4
  %cmp247 = icmp ne i32 %call246, 0
  br i1 %cmp247, label %if.then.249, label %if.end.269

if.then.249:                                      ; preds = %land.lhs.true.241
  %164 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu250 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %164, i32 0, i32 0
  %ent251 = bitcast %union.ptr_union* %pu250 to %struct.flagent**
  %165 = load %struct.flagent*, %struct.flagent** %ent251, align 8
  %add.ptr252 = getelementptr inbounds %struct.flagent, %struct.flagent* %165, i64 -1
  store %struct.flagent* %add.ptr252, %struct.flagent** %entry1, align 8
  %166 = load i32, i32* @numsflags, align 4
  %conv253 = sext i32 %166 to i64
  %167 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %168 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.flagent* %167 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.flagent* %168 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 256
  %sub254 = sub nsw i64 %conv253, %sub.ptr.div
  %conv255 = trunc i64 %sub254 to i32
  store i32 %conv255, i32* %i, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %add256 = add nsw i32 128, %169
  %conv257 = zext i32 %add256 to i64
  %call258 = call noalias i8* @calloc(i64 %conv257, i64 16) #5
  %170 = bitcast i8* %call258 to %struct.flagptr*
  %171 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu259 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %171, i32 0, i32 0
  %fp260 = bitcast %union.ptr_union* %pu259 to %struct.flagptr**
  store %struct.flagptr* %170, %struct.flagptr** %fp260, align 8
  %172 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu261 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %172, i32 0, i32 0
  %fp262 = bitcast %union.ptr_union* %pu261 to %struct.flagptr**
  %173 = load %struct.flagptr*, %struct.flagptr** %fp262, align 8
  %cmp263 = icmp eq %struct.flagptr* %173, null
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %if.then.249
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.267:                                       ; preds = %if.then.249
  %175 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents268 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %175, i32 0, i32 1
  store i32 0, i32* %numents268, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.267, %land.lhs.true.241, %land.lhs.true, %if.end.235
  br label %for.inc.270

for.inc.270:                                      ; preds = %if.end.269
  %176 = load i32, i32* %i, align 4
  %dec271 = add nsw i32 %176, -1
  store i32 %dec271, i32* %i, align 4
  %177 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %incdec.ptr272 = getelementptr inbounds %struct.flagent, %struct.flagent* %177, i32 1
  store %struct.flagent* %incdec.ptr272, %struct.flagent** %entry1, align 8
  br label %for.cond.193

for.end.273:                                      ; preds = %for.cond.193
  %178 = load i32, i32* @numpflags, align 4
  store i32 %178, i32* %i, align 4
  %179 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %179, %struct.flagent** %entry1, align 8
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.362, %for.end.273
  %180 = load i32, i32* %i, align 4
  %cmp275 = icmp sgt i32 %180, 0
  br i1 %cmp275, label %for.body.277, label %for.end.365

for.body.277:                                     ; preds = %for.cond.274
  %181 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affl278 = getelementptr inbounds %struct.flagent, %struct.flagent* %181, i32 0, i32 4
  %182 = load i16, i16* %affl278, align 2
  %conv279 = sext i16 %182 to i32
  %cmp280 = icmp eq i32 %conv279, 0
  br i1 %cmp280, label %if.then.282, label %if.else.283

if.then.282:                                      ; preds = %for.body.277
  store i8* null, i8** %cp, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i32 0, i64 0), %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %if.end.314

if.else.283:                                      ; preds = %for.body.277
  %183 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix284 = getelementptr inbounds %struct.flagent, %struct.flagent* %183, i32 0, i32 1
  %184 = load i8*, i8** %affix284, align 8
  store i8* %184, i8** %cp, align 8
  %185 = load i8*, i8** %cp, align 8
  %incdec.ptr285 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr285, i8** %cp, align 8
  %186 = load i8, i8* %185, align 1
  %idxprom286 = zext i8 %186 to i64
  %arrayidx287 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i32 0, i64 %idxprom286
  store %struct.flagptr* %arrayidx287, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %while.cond.288

while.cond.288:                                   ; preds = %if.end.312, %if.else.283
  %187 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents289 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %187, i32 0, i32 1
  %188 = load i32, i32* %numents289, align 4
  %cmp290 = icmp eq i32 %188, 0
  br i1 %cmp290, label %land.rhs.292, label %land.end.297

land.rhs.292:                                     ; preds = %while.cond.288
  %189 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu293 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %189, i32 0, i32 0
  %fp294 = bitcast %union.ptr_union* %pu293 to %struct.flagptr**
  %190 = load %struct.flagptr*, %struct.flagptr** %fp294, align 8
  %cmp295 = icmp ne %struct.flagptr* %190, null
  br label %land.end.297

land.end.297:                                     ; preds = %land.rhs.292, %while.cond.288
  %191 = phi i1 [ false, %while.cond.288 ], [ %cmp295, %land.rhs.292 ]
  br i1 %191, label %while.body.298, label %while.end.313

while.body.298:                                   ; preds = %land.end.297
  %192 = load i8*, i8** %cp, align 8
  %193 = load i8, i8* %192, align 1
  %conv299 = zext i8 %193 to i32
  %cmp300 = icmp eq i32 %conv299, 0
  br i1 %cmp300, label %if.then.302, label %if.else.306

if.then.302:                                      ; preds = %while.body.298
  %194 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu303 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %194, i32 0, i32 0
  %fp304 = bitcast %union.ptr_union* %pu303 to %struct.flagptr**
  %195 = load %struct.flagptr*, %struct.flagptr** %fp304, align 8
  %arrayidx305 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %195, i64 0
  store %struct.flagptr* %arrayidx305, %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %if.end.312

if.else.306:                                      ; preds = %while.body.298
  %196 = load i8*, i8** %cp, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr307, i8** %cp, align 8
  %197 = load i8, i8* %196, align 1
  %idxprom308 = zext i8 %197 to i64
  %198 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu309 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %198, i32 0, i32 0
  %fp310 = bitcast %union.ptr_union* %pu309 to %struct.flagptr**
  %199 = load %struct.flagptr*, %struct.flagptr** %fp310, align 8
  %arrayidx311 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %199, i64 %idxprom308
  store %struct.flagptr* %arrayidx311, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.306, %if.then.302
  br label %while.cond.288

while.end.313:                                    ; preds = %land.end.297
  br label %if.end.314

if.end.314:                                       ; preds = %while.end.313, %if.then.282
  %200 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents315 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %200, i32 0, i32 1
  %201 = load i32, i32* %numents315, align 4
  %cmp316 = icmp eq i32 %201, 0
  br i1 %cmp316, label %if.then.318, label %if.end.321

if.then.318:                                      ; preds = %if.end.314
  %202 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %203 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu319 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %203, i32 0, i32 0
  %ent320 = bitcast %union.ptr_union* %pu319 to %struct.flagent**
  store %struct.flagent* %202, %struct.flagent** %ent320, align 8
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.318, %if.end.314
  %204 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents322 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %204, i32 0, i32 1
  %205 = load i32, i32* %numents322, align 4
  %inc323 = add nsw i32 %205, 1
  store i32 %inc323, i32* %numents322, align 4
  %206 = load i32, i32* %viazero, align 4
  %tobool324 = icmp ne i32 %206, 0
  br i1 %tobool324, label %if.end.361, label %land.lhs.true.325

land.lhs.true.325:                                ; preds = %if.end.321
  %207 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents326 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %207, i32 0, i32 1
  %208 = load i32, i32* %numents326, align 4
  %cmp327 = icmp sge i32 %208, 4
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.361

land.lhs.true.329:                                ; preds = %land.lhs.true.325
  %209 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %affix330 = getelementptr inbounds %struct.flagent, %struct.flagent* %209, i32 0, i32 1
  %210 = load i8*, i8** %affix330, align 8
  %211 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu331 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %211, i32 0, i32 0
  %ent332 = bitcast %union.ptr_union* %pu331 to %struct.flagent**
  %212 = load %struct.flagent*, %struct.flagent** %ent332, align 8
  %affix333 = getelementptr inbounds %struct.flagent, %struct.flagent* %212, i32 0, i32 1
  %213 = load i8*, i8** %affix333, align 8
  %call334 = call i32 @strcmp(i8* %210, i8* %213) #4
  %cmp335 = icmp ne i32 %call334, 0
  br i1 %cmp335, label %if.then.337, label %if.end.361

if.then.337:                                      ; preds = %land.lhs.true.329
  %214 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu338 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %214, i32 0, i32 0
  %ent339 = bitcast %union.ptr_union* %pu338 to %struct.flagent**
  %215 = load %struct.flagent*, %struct.flagent** %ent339, align 8
  %add.ptr340 = getelementptr inbounds %struct.flagent, %struct.flagent* %215, i64 -1
  store %struct.flagent* %add.ptr340, %struct.flagent** %entry1, align 8
  %216 = load i32, i32* @numpflags, align 4
  %conv341 = sext i32 %216 to i64
  %217 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %218 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %sub.ptr.lhs.cast342 = ptrtoint %struct.flagent* %217 to i64
  %sub.ptr.rhs.cast343 = ptrtoint %struct.flagent* %218 to i64
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %sub.ptr.div345 = sdiv exact i64 %sub.ptr.sub344, 256
  %sub346 = sub nsw i64 %conv341, %sub.ptr.div345
  %conv347 = trunc i64 %sub346 to i32
  store i32 %conv347, i32* %i, align 4
  %219 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %add348 = add nsw i32 128, %219
  %conv349 = sext i32 %add348 to i64
  %call350 = call noalias i8* @calloc(i64 %conv349, i64 16) #5
  %220 = bitcast i8* %call350 to %struct.flagptr*
  %221 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu351 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %221, i32 0, i32 0
  %fp352 = bitcast %union.ptr_union* %pu351 to %struct.flagptr**
  store %struct.flagptr* %220, %struct.flagptr** %fp352, align 8
  %222 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu353 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %222, i32 0, i32 0
  %fp354 = bitcast %union.ptr_union* %pu353 to %struct.flagptr**
  %223 = load %struct.flagptr*, %struct.flagptr** %fp354, align 8
  %cmp355 = icmp eq %struct.flagptr* %223, null
  br i1 %cmp355, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %if.then.337
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.359:                                       ; preds = %if.then.337
  %225 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents360 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %225, i32 0, i32 1
  store i32 0, i32* %numents360, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.359, %land.lhs.true.329, %land.lhs.true.325, %if.end.321
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %226 = load i32, i32* %i, align 4
  %dec363 = add nsw i32 %226, -1
  store i32 %dec363, i32* %i, align 4
  %227 = load %struct.flagent*, %struct.flagent** %entry1, align 8
  %incdec.ptr364 = getelementptr inbounds %struct.flagent, %struct.flagent* %227, i32 1
  store %struct.flagent* %incdec.ptr364, %struct.flagent** %entry1, align 8
  br label %for.cond.274

for.end.365:                                      ; preds = %for.cond.274
  %228 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %cmp366 = icmp eq i32 %228, 0
  br i1 %cmp366, label %if.then.368, label %if.else.369

if.then.368:                                      ; preds = %for.end.365
  store %struct.strchartype* null, %struct.strchartype** @chartypes, align 8
  br label %if.end.429

if.else.369:                                      ; preds = %for.end.365
  %229 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %conv370 = sext i32 %229 to i64
  %mul371 = mul i64 %conv370, 24
  %call372 = call noalias i8* @malloc(i64 %mul371) #5
  %230 = bitcast i8* %call372 to %struct.strchartype*
  store %struct.strchartype* %230, %struct.strchartype** @chartypes, align 8
  %231 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %cmp373 = icmp eq %struct.strchartype* %231, null
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %if.else.369
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.377:                                       ; preds = %if.else.369
  store i32 0, i32* %i, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 14), align 4
  store i32 %233, i32* %nextchar, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.426, %if.end.377
  %234 = load i32, i32* %i, align 4
  %235 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %cmp379 = icmp slt i32 %234, %235
  br i1 %cmp379, label %for.body.381, label %for.end.428

for.body.381:                                     ; preds = %for.cond.378
  %236 = load i32, i32* %nextchar, align 4
  %idxprom382 = sext i32 %236 to i64
  %237 = load i8*, i8** @hashstrings, align 8
  %arrayidx383 = getelementptr inbounds i8, i8* %237, i64 %idxprom382
  %238 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %238 to i64
  %239 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx385 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %239, i64 %idxprom384
  %name = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx385, i32 0, i32 0
  store i8* %arrayidx383, i8** %name, align 8
  %240 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %240 to i64
  %241 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx387 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %241, i64 %idxprom386
  %name388 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx387, i32 0, i32 0
  %242 = load i8*, i8** %name388, align 8
  %call389 = call i64 @strlen(i8* %242) #4
  %add390 = add i64 %call389, 1
  %243 = load i32, i32* %nextchar, align 4
  %conv391 = sext i32 %243 to i64
  %add392 = add i64 %conv391, %add390
  %conv393 = trunc i64 %add392 to i32
  store i32 %conv393, i32* %nextchar, align 4
  %244 = load i32, i32* %nextchar, align 4
  %idxprom394 = sext i32 %244 to i64
  %245 = load i8*, i8** @hashstrings, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %245, i64 %idxprom394
  %246 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %246 to i64
  %247 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx397 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %247, i64 %idxprom396
  %deformatter = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx397, i32 0, i32 1
  store i8* %arrayidx395, i8** %deformatter, align 8
  %248 = load i32, i32* %i, align 4
  %idxprom398 = sext i32 %248 to i64
  %249 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx399 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %249, i64 %idxprom398
  %deformatter400 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx399, i32 0, i32 1
  %250 = load i8*, i8** %deformatter400, align 8
  %call401 = call i64 @strlen(i8* %250) #4
  %add402 = add i64 %call401, 1
  %251 = load i32, i32* %nextchar, align 4
  %conv403 = sext i32 %251 to i64
  %add404 = add i64 %conv403, %add402
  %conv405 = trunc i64 %add404 to i32
  store i32 %conv405, i32* %nextchar, align 4
  %252 = load i32, i32* %nextchar, align 4
  %idxprom406 = sext i32 %252 to i64
  %253 = load i8*, i8** @hashstrings, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %253, i64 %idxprom406
  %254 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %254 to i64
  %255 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx409 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %255, i64 %idxprom408
  %suffixes = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx409, i32 0, i32 2
  store i8* %arrayidx407, i8** %suffixes, align 8
  br label %while.cond.410

while.cond.410:                                   ; preds = %while.body.416, %for.body.381
  %256 = load i32, i32* %nextchar, align 4
  %idxprom411 = sext i32 %256 to i64
  %257 = load i8*, i8** @hashstrings, align 8
  %arrayidx412 = getelementptr inbounds i8, i8* %257, i64 %idxprom411
  %258 = load i8, i8* %arrayidx412, align 1
  %conv413 = sext i8 %258 to i32
  %cmp414 = icmp ne i32 %conv413, 0
  br i1 %cmp414, label %while.body.416, label %while.end.424

while.body.416:                                   ; preds = %while.cond.410
  %259 = load i32, i32* %nextchar, align 4
  %idxprom417 = sext i32 %259 to i64
  %260 = load i8*, i8** @hashstrings, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %260, i64 %idxprom417
  %call419 = call i64 @strlen(i8* %arrayidx418) #4
  %add420 = add i64 %call419, 1
  %261 = load i32, i32* %nextchar, align 4
  %conv421 = sext i32 %261 to i64
  %add422 = add i64 %conv421, %add420
  %conv423 = trunc i64 %add422 to i32
  store i32 %conv423, i32* %nextchar, align 4
  br label %while.cond.410

while.end.424:                                    ; preds = %while.cond.410
  %262 = load i32, i32* %nextchar, align 4
  %inc425 = add nsw i32 %262, 1
  store i32 %inc425, i32* %nextchar, align 4
  br label %for.inc.426

for.inc.426:                                      ; preds = %while.end.424
  %263 = load i32, i32* %i, align 4
  %inc427 = add nsw i32 %263, 1
  store i32 %inc427, i32* %i, align 4
  br label %for.cond.378

for.end.428:                                      ; preds = %for.cond.378
  br label %if.end.429

if.end.429:                                       ; preds = %for.end.428, %if.then.368
  store i32 1, i32* @inited, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.429, %if.then.375, %if.then.357, %if.then.265, %if.then.137, %if.then.124, %if.then.101, %if.then.91, %if.then.66, %if.then.52, %if.then.38, %if.then.31, %if.end.26, %if.then.2, %if.then
  %264 = load i32, i32* %retval
  ret i32 %264
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @close(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.dent* @lookup(i8* %s, i32 %dotree) #0 {
entry:
  %retval = alloca %struct.dent*, align 8
  %s.addr = alloca i8*, align 8
  %dotree.addr = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  %s1 = alloca i8*, align 8
  %schar = alloca [120 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  store i32 %dotree, i32* %dotree.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @hashsize, align 4
  %call = call i32 @hash(i8* %0, i32 %1)
  %idxprom = sext i32 %call to i64
  %2 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %arrayidx = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 %idxprom
  store %struct.dent* %arrayidx, %struct.dent** %dp, align 8
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %schar, i32 0, i32 0
  %3 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @ichartostr(i8* %arraydecay, i8* %3, i32 120, i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %schar, i32 0, i32 0
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay2, i32 475, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.dent*, %struct.dent** %dp, align 8
  %cmp = icmp ne %struct.dent* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.dent*, %struct.dent** %dp, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 1
  %7 = load i8*, i8** %word, align 8
  store i8* %7, i8** %s1, align 8
  %8 = load i8*, i8** %s1, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8*, i8** %s1, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %10 to i32
  %arrayidx6 = getelementptr inbounds [120 x i8], [120 x i8]* %schar, i32 0, i64 0
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.17

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** %s1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %arraydecay11 = getelementptr inbounds [120 x i8], [120 x i8]* %schar, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call13 = call i32 @strcmp(i8* %add.ptr, i8* %add.ptr12) #4
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.10
  %13 = load %struct.dent*, %struct.dent** %dp, align 8
  store %struct.dent* %13, %struct.dent** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.10, %land.lhs.true, %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %14 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %14, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %15 = load i64, i64* %arrayidx18, align 8
  %and = and i64 %15, 1073741824
  %tobool19 = icmp ne i64 %and, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.dent*, %struct.dent** %dp, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %16, i32 0, i32 0
  %17 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %17, %struct.dent** %dp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %18 = load %struct.dent*, %struct.dent** %dp, align 8
  %next20 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 0
  %19 = load %struct.dent*, %struct.dent** %next20, align 8
  store %struct.dent* %19, %struct.dent** %dp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %dotree.addr, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.end
  %21 = load i8*, i8** %s.addr, align 8
  %call23 = call %struct.dent* @treelookup(i8* %21)
  store %struct.dent* %call23, %struct.dent** %dp, align 8
  %22 = load %struct.dent*, %struct.dent** %dp, align 8
  store %struct.dent* %22, %struct.dent** %retval
  br label %return

if.else:                                          ; preds = %for.end
  store %struct.dent* null, %struct.dent** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.22, %if.then.16
  %23 = load %struct.dent*, %struct.dent** %retval
  ret %struct.dent* %23
}

declare i32 @hash(i8*, i32) #1

declare i32 @ichartostr(i8*, i8*, i32, i32) #1

declare %struct.dent* @treelookup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
