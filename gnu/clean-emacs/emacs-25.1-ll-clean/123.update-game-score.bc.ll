; ModuleID = './lib-src/update-game-score.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.score_entry = type { i8*, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"hrm:d:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"This program can run either suid or sgid, but not both.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't allocate score file\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: Invalid score\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Couldn't determine user id\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to lock scores file\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to read scores file\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Failed to add score\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to write scores file\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to unlock scores file\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [75 x i8] c"Usage: update-game-score [-m MAX] [-r] [-d DIR] game/scorefile SCORE DATA\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"       update-game-score -h\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c" -h\09\09Display this help.\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c" -m MAX\09\09Limit the maximum number of scores to MAX.\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c" -r\09\09Sort the scores in increasing order.\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c" -d DIR\09\09Store scores in DIR (only if not setuid).\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"/usr/local/var/games/emacs\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Not using a shared game directory, and no prefix given.\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Invalid data in score file\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c".tempXXXXXX\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c".lockfile\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %running_suid = alloca i8, align 1
  %running_sgid = alloca i8, align 1
  %lockstate = alloca i8*, align 8
  %scorefile = alloca i8*, align 8
  %end = alloca i8*, align 8
  %nl = alloca i8*, align 8
  %user = alloca i8*, align 8
  %data = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %user_prefix = alloca i8*, align 8
  %scores = alloca %struct.score_entry*, align 8
  %newscore = alloca %struct.score_entry, align 8
  %reverse = alloca i8, align 1
  %scorecount = alloca i64, align 8
  %scorealloc = alloca i64, align 8
  %max_scores = alloca i64, align 8
  %m = alloca i64, align 8
  %z = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %user_prefix, align 8
  store i8 0, i8* %reverse, align 1
  store i64 1152921504606846975, i64* %max_scores, align 8
  %call = call i64 @time(i64* null) #7
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #7
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call1 = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #7
  store i32 %call1, i32* %c, align 4
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 104, label %sw.bb
    i32 100, label %sw.bb.3
    i32 114, label %sw.bb.4
    i32 109, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  call void @usage(i32 0) #8
  unreachable

sw.bb.3:                                          ; preds = %while.body
  %3 = load i8*, i8** @optarg, align 8
  store i8* %3, i8** %user_prefix, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i8 1, i8* %reverse, align 1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %4 = load i8*, i8** @optarg, align 8
  %call6 = call i64 @strtoimax(i8* %4, i8** %end, i32 10) #7
  store i64 %call6, i64* %m, align 8
  %5 = load i8*, i8** @optarg, align 8
  %6 = load i8*, i8** %end, align 8
  %cmp7 = icmp eq i8* %5, %6
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.5
  %7 = load i8*, i8** %end, align 8
  %8 = load i8, i8* %7, align 1
  %conv9 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %9 = load i64, i64* %m, align 8
  %cmp11 = icmp slt i64 %9, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %sw.bb.5
  call void @usage(i32 1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false.10
  %10 = load i64, i64* %m, align 8
  %cmp13 = icmp ult i64 %10, 1152921504606846975
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load i64, i64* %m, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ 1152921504606846975, %cond.false ]
  store i64 %cond, i64* %max_scores, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1) #8
  unreachable

sw.epilog:                                        ; preds = %cond.end, %sw.bb.4, %sw.bb.3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %argc.addr, align 4
  %13 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %12, %13
  %cmp15 = icmp ne i32 %sub, 3
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  call void @usage(i32 1) #8
  unreachable

if.end.18:                                        ; preds = %while.end
  %call19 = call i32 @getuid() #7
  %call20 = call i32 @geteuid() #7
  %cmp21 = icmp ne i32 %call19, %call20
  %frombool = zext i1 %cmp21 to i8
  store i8 %frombool, i8* %running_suid, align 1
  %call23 = call i32 @getgid() #7
  %call24 = call i32 @getegid() #7
  %cmp25 = icmp ne i32 %call23, %call24
  %frombool27 = zext i1 %cmp25 to i8
  store i8 %frombool27, i8* %running_sgid, align 1
  %14 = load i8, i8* %running_suid, align 1
  %tobool28 = trunc i8 %14 to i1
  br i1 %tobool28, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.18
  %15 = load i8, i8* %running_sgid, align 1
  %tobool30 = trunc i8 %15 to i1
  br i1 %tobool30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true
  call void @lose(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0)) #8
  unreachable

if.end.33:                                        ; preds = %land.lhs.true, %if.end.18
  %16 = load i8, i8* %running_suid, align 1
  %tobool34 = trunc i8 %16 to i1
  br i1 %tobool34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.33
  %17 = load i8, i8* %running_sgid, align 1
  %tobool36 = trunc i8 %17 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.33
  %18 = phi i1 [ true, %if.end.33 ], [ %tobool36, %lor.rhs ]
  %19 = load i8*, i8** %user_prefix, align 8
  %call38 = call i8* @get_prefix(i1 zeroext %18, i8* %19)
  store i8* %call38, i8** %prefix, align 8
  %20 = load i8*, i8** %prefix, align 8
  %call39 = call i64 @strlen(i8* %20) #9
  %21 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  %call40 = call i64 @strlen(i8* %23) #9
  %add = add i64 %call39, %call40
  %add41 = add i64 %add, 2
  %call42 = call noalias i8* @malloc(i64 %add41) #7
  store i8* %call42, i8** %scorefile, align 8
  %24 = load i8*, i8** %scorefile, align 8
  %tobool43 = icmp ne i8* %24, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.end
  call void @lose_syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #8
  unreachable

if.end.45:                                        ; preds = %lor.end
  %25 = load i8*, i8** %scorefile, align 8
  %26 = load i8*, i8** %prefix, align 8
  %call46 = call i8* @stpcpy(i8* %25, i8* %26) #7
  store i8* %call46, i8** %z, align 8
  %27 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  store i8 47, i8* %27, align 1
  %28 = load i8*, i8** %z, align 8
  %29 = load i32, i32* @optind, align 4
  %idxprom47 = sext i32 %29 to i64
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %30, i64 %idxprom47
  %31 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i8* @strcpy(i8* %28, i8* %31) #7
  %32 = load i32, i32* @optind, align 4
  %add50 = add nsw i32 %32, 1
  %idxprom51 = sext i32 %add50 to i64
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %33, i64 %idxprom51
  %34 = load i8*, i8** %arrayidx52, align 8
  %call53 = call i8* @normalize_integer(i8* %34)
  %score = getelementptr inbounds %struct.score_entry, %struct.score_entry* %newscore, i32 0, i32 0
  store i8* %call53, i8** %score, align 8
  %score54 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %newscore, i32 0, i32 0
  %35 = load i8*, i8** %score54, align 8
  %tobool55 = icmp ne i8* %35, null
  br i1 %tobool55, label %if.end.61, label %if.then.56

if.then.56:                                       ; preds = %if.end.45
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* @optind, align 4
  %add57 = add nsw i32 %37, 1
  %idxprom58 = sext i32 %add57 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %38, i64 %idxprom58
  %39 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %39)
  ret i32 1

if.end.61:                                        ; preds = %if.end.45
  %call62 = call i8* @get_user_id()
  store i8* %call62, i8** %user, align 8
  %40 = load i8*, i8** %user, align 8
  %tobool63 = icmp ne i8* %40, null
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  call void @lose_syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #8
  unreachable

if.end.65:                                        ; preds = %if.end.61
  %41 = load i32, i32* @optind, align 4
  %add66 = add nsw i32 %41, 2
  %idxprom67 = sext i32 %add66 to i64
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %42, i64 %idxprom67
  %43 = load i8*, i8** %arrayidx68, align 8
  store i8* %43, i8** %data, align 8
  %44 = load i8*, i8** %data, align 8
  %call69 = call i64 @strlen(i8* %44) #9
  %cmp70 = icmp ugt i64 %call69, 1024
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.65
  %45 = load i8*, i8** %data, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %45, i64 1024
  store i8 0, i8* %arrayidx73, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.65
  %46 = load i8*, i8** %data, align 8
  %call75 = call i8* @strchr(i8* %46, i32 10) #9
  store i8* %call75, i8** %nl, align 8
  %47 = load i8*, i8** %nl, align 8
  %tobool76 = icmp ne i8* %47, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  %48 = load i8*, i8** %nl, align 8
  store i8 0, i8* %48, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.74
  %49 = load i8*, i8** %user, align 8
  %call79 = call i64 @strlen(i8* %49) #9
  %add80 = add i64 %call79, 1
  %50 = load i8*, i8** %data, align 8
  %call81 = call i64 @strlen(i8* %50) #9
  %add82 = add i64 %add80, %call81
  %add83 = add i64 %add82, 1
  %call84 = call noalias i8* @malloc(i64 %add83) #7
  %user_data = getelementptr inbounds %struct.score_entry, %struct.score_entry* %newscore, i32 0, i32 1
  store i8* %call84, i8** %user_data, align 8
  %user_data85 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %newscore, i32 0, i32 1
  %51 = load i8*, i8** %user_data85, align 8
  %tobool86 = icmp ne i8* %51, null
  br i1 %tobool86, label %lor.lhs.false.87, label %if.then.92

lor.lhs.false.87:                                 ; preds = %if.end.78
  %user_data88 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %newscore, i32 0, i32 1
  %52 = load i8*, i8** %user_data88, align 8
  %53 = load i8*, i8** %user, align 8
  %54 = load i8*, i8** %data, align 8
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %53, i8* %54) #7
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.87, %if.end.78
  call void @lose_syserr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #8
  unreachable

if.end.93:                                        ; preds = %lor.lhs.false.87
  %55 = load i8*, i8** %scorefile, align 8
  %call94 = call i32 @lock_file(i8* %55, i8** %lockstate)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.93
  call void @lose_syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0)) #8
  unreachable

if.end.98:                                        ; preds = %if.end.93
  %56 = load i8*, i8** %scorefile, align 8
  %call99 = call i32 @read_scores(i8* %56, %struct.score_entry** %scores, i64* %scorecount, i64* %scorealloc)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.98
  %57 = load i8*, i8** %scorefile, align 8
  %58 = load i8*, i8** %lockstate, align 8
  %call103 = call i32 @unlock_file(i8* %57, i8* %58)
  call void @lose_syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #8
  unreachable

if.end.104:                                       ; preds = %if.end.98
  %call105 = call i32 @push_score(%struct.score_entry** %scores, i64* %scorecount, i64* %scorealloc, %struct.score_entry* %newscore)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.104
  %59 = load i8*, i8** %scorefile, align 8
  %60 = load i8*, i8** %lockstate, align 8
  %call109 = call i32 @unlock_file(i8* %59, i8* %60)
  call void @lose_syserr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #8
  unreachable

if.end.110:                                       ; preds = %if.end.104
  %61 = load %struct.score_entry*, %struct.score_entry** %scores, align 8
  %62 = load i64, i64* %scorecount, align 8
  %63 = load i8, i8* %reverse, align 1
  %tobool111 = trunc i8 %63 to i1
  call void @sort_scores(%struct.score_entry* %61, i64 %62, i1 zeroext %tobool111)
  %64 = load i64, i64* %scorecount, align 8
  %65 = load i64, i64* %max_scores, align 8
  %cmp112 = icmp sgt i64 %64, %65
  br i1 %cmp112, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %if.end.110
  %66 = load i8, i8* %reverse, align 1
  %tobool115 = trunc i8 %66 to i1
  br i1 %tobool115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.then.114
  %67 = load i64, i64* %scorecount, align 8
  %68 = load i64, i64* %max_scores, align 8
  %sub117 = sub nsw i64 %67, %68
  %69 = load %struct.score_entry*, %struct.score_entry** %scores, align 8
  %add.ptr = getelementptr inbounds %struct.score_entry, %struct.score_entry* %69, i64 %sub117
  store %struct.score_entry* %add.ptr, %struct.score_entry** %scores, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.then.114
  %70 = load i64, i64* %max_scores, align 8
  store i64 %70, i64* %scorecount, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.110
  %71 = load i8*, i8** %scorefile, align 8
  %72 = load i8, i8* %running_sgid, align 1
  %tobool120 = trunc i8 %72 to i1
  %cond122 = select i1 %tobool120, i32 436, i32 420
  %73 = load %struct.score_entry*, %struct.score_entry** %scores, align 8
  %74 = load i64, i64* %scorecount, align 8
  %call123 = call i32 @write_scores(i8* %71, i32 %cond122, %struct.score_entry* %73, i64 %74)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.119
  %75 = load i8*, i8** %scorefile, align 8
  %76 = load i8*, i8** %lockstate, align 8
  %call127 = call i32 @unlock_file(i8* %75, i8* %76)
  call void @lose_syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #8
  unreachable

if.end.128:                                       ; preds = %if.end.119
  %77 = load i8*, i8** %scorefile, align 8
  %78 = load i8*, i8** %lockstate, align 8
  %call129 = call i32 @unlock_file(i8* %77, i8* %78)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.128
  call void @lose_syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #8
  unreachable

if.end.133:                                       ; preds = %if.end.128
  call void @exit(i32 0) #10
  unreachable
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(i32 %err) #2 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0))
  %6 = load i32, i32* %err.addr, align 4
  call void @exit(i32 %6) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i64 @strtoimax(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare i32 @geteuid() #1

; Function Attrs: nounwind
declare i32 @getgid() #1

; Function Attrs: nounwind
declare i32 @getegid() #1

; Function Attrs: noreturn nounwind uwtable
define internal void @lose(i8* %msg) #2 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @get_prefix(i1 zeroext %privileged, i8* %user_prefix) #0 {
entry:
  %retval = alloca i8*, align 8
  %privileged.addr = alloca i8, align 1
  %user_prefix.addr = alloca i8*, align 8
  %frombool = zext i1 %privileged to i8
  store i8 %frombool, i8* %privileged.addr, align 1
  store i8* %user_prefix, i8** %user_prefix.addr, align 8
  %0 = load i8, i8* %privileged.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %user_prefix.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @lose(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0)) #8
  unreachable

if.end.2:                                         ; preds = %if.end
  %2 = load i8*, i8** %user_prefix.addr, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noreturn nounwind uwtable
define internal void @lose_syserr(i8* %msg) #2 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32* @__errno_location() #11
  %2 = load i32, i32* %call, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %3) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), %cond.false ]
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* %1, i8* %cond)
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @normalize_integer(i8* %num) #0 {
entry:
  %retval = alloca i8*, align 8
  %num.addr = alloca i8*, align 8
  %neg = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %num, i8** %num.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %num.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %num.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #11
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %num.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %num.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %num.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  %frombool = zext i1 %cmp5 to i8
  store i8 %frombool, i8* %neg, align 1
  %10 = load i8, i8* %neg, align 1
  %tobool7 = trunc i8 %10 to i1
  br i1 %tobool7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %11 = load i8*, i8** %num.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %13 = phi i1 [ true, %while.end ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  %14 = load i8*, i8** %num.addr, align 8
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %num.addr, align 8
  %15 = load i8*, i8** %num.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv12, 48
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.20, %if.then
  %17 = load i8*, i8** %num.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr16, i8** %num.addr, align 8
  %18 = load i8, i8* %incdec.ptr16, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 48
  br i1 %cmp18, label %while.body.20, label %while.end.21

while.body.20:                                    ; preds = %while.cond.15
  br label %while.cond.15

while.end.21:                                     ; preds = %while.cond.15
  %19 = load i8*, i8** %num.addr, align 8
  %20 = load i8, i8* %19, align 1
  %tobool22 = icmp ne i8 %20, 0
  %lnot = xor i1 %tobool22, true
  %lnot23 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot23 to i32
  %21 = load i8, i8* %neg, align 1
  %tobool24 = trunc i8 %21 to i1
  %conv25 = zext i1 %tobool24 to i32
  %and26 = and i32 %conv25, %lnot.ext
  %tobool27 = icmp ne i32 %and26, 0
  %frombool28 = zext i1 %tobool27 to i8
  store i8 %frombool28, i8* %neg, align 1
  %22 = load i8*, i8** %num.addr, align 8
  %23 = load i8, i8* %22, align 1
  %tobool29 = icmp ne i8 %23, 0
  %lnot30 = xor i1 %tobool29, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %24 = load i8*, i8** %num.addr, align 8
  %idx.ext32 = sext i32 %lnot.ext31 to i64
  %idx.neg = sub i64 0, %idx.ext32
  %add.ptr33 = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr33, i8** %num.addr, align 8
  br label %if.end

if.end:                                           ; preds = %while.end.21, %lor.end
  %25 = load i8*, i8** %num.addr, align 8
  store i8* %25, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv34 = sext i8 %27 to i32
  %cmp35 = icmp sle i32 48, %conv34
  br i1 %cmp35, label %land.rhs.37, label %land.end.41

land.rhs.37:                                      ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv38 = sext i8 %29 to i32
  %cmp39 = icmp sle i32 %conv38, 57
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.37, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %cmp39, %land.rhs.37 ]
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.41
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv43 = sext i8 %33 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %num.addr, align 8
  %cmp45 = icmp eq i8* %34, %35
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false, %for.end
  %call48 = call i32* @__errno_location() #11
  store i32 0, i32* %call48, align 4
  store i8* null, i8** %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false
  %36 = load i8, i8* %neg, align 1
  %tobool50 = trunc i8 %36 to i1
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %37 = load i8*, i8** %num.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr52, i8** %num.addr, align 8
  store i8 45, i8* %incdec.ptr52, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %38 = load i8*, i8** %num.addr, align 8
  store i8* %38, i8** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.47
  %39 = load i8*, i8** %retval
  ret i8* %39
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i8* @get_user_id() #0 {
entry:
  %retval = alloca i8*, align 8
  %buf = alloca %struct.passwd*, align 8
  %uid = alloca i64, align 8
  %name = alloca i8*, align 8
  %call = call i32 @getuid() #7
  %call1 = call %struct.passwd* @getpwuid(i32 %call)
  store %struct.passwd* %call1, %struct.passwd** %buf, align 8
  %0 = load %struct.passwd*, %struct.passwd** %buf, align 8
  %tobool = icmp ne %struct.passwd* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.passwd*, %struct.passwd** %buf, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %1, i32 0, i32 0
  %2 = load i8*, i8** %pw_name, align 8
  %call2 = call i8* @strchr(i8* %2, i32 32) #9
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %3 = load %struct.passwd*, %struct.passwd** %buf, align 8
  %pw_name5 = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 0
  %4 = load i8*, i8** %pw_name5, align 8
  %call6 = call i8* @strchr(i8* %4, i32 10) #9
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %call8 = call i32 @getuid() #7
  %conv = zext i32 %call8 to i64
  store i64 %conv, i64* %uid, align 8
  %call9 = call noalias i8* @malloc(i64 25) #7
  store i8* %call9, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %tobool10 = icmp ne i8* %5, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %6 = load i8*, i8** %name, align 8
  %7 = load i64, i64* %uid, align 8
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %8 = load i8*, i8** %name, align 8
  store i8* %8, i8** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.4
  %9 = load %struct.passwd*, %struct.passwd** %buf, align 8
  %pw_name14 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %10 = load i8*, i8** %pw_name14, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.end
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @lock_file(i8* %filename, i8** %state) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %state.addr = alloca i8**, align 8
  %fd = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %attempts = alloca i32, align 4
  %lockext = alloca i8*, align 8
  %lockpath = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %state, i8*** %state.addr, align 8
  store i32 0, i32* %attempts, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8** %lockext, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %1 = load i8*, i8** %lockext, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 60
  %call3 = call noalias i8* @malloc(i64 %add2) #7
  store i8* %call3, i8** %lockpath, align 8
  %2 = load i8*, i8** %lockpath, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %lockpath, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @stpcpy(i8* %3, i8* %4) #7
  %5 = load i8*, i8** %lockext, align 8
  %call5 = call i8* @strcpy(i8* %call4, i8* %5) #7
  %6 = load i8*, i8** %lockpath, align 8
  %7 = load i8**, i8*** %state.addr, align 8
  store i8* %6, i8** %7, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %8 = load i8*, i8** %lockpath, align 8
  %call6 = call i32 (i8*, i32, ...) @open(i8* %8, i32 192, i32 384)
  store i32 %call6, i32* %fd, align 4
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call7 = call i32* @__errno_location() #11
  %9 = load i32, i32* %call7, align 4
  %cmp8 = icmp ne i32 %9, 17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %10 = load i32, i32* %attempts, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %attempts, align 4
  %11 = load i32, i32* %attempts, align 4
  %cmp11 = icmp slt i32 5, %11
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %12 = load i8*, i8** %lockpath, align 8
  %call12 = call i32 @stat(i8* %12, %struct.stat* %buf) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @time(i64* null) #7
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 13
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %13 = load i64, i64* %tv_sec, align 8
  %sub = sub nsw i64 %call14, %13
  %cmp15 = icmp slt i64 3600, %sub
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %land.lhs.true, %if.end.10
  %14 = load i8*, i8** %lockpath, align 8
  %call17 = call i32 @unlink(i8* %14) #7
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %if.then.16
  %call20 = call i32* @__errno_location() #11
  %15 = load i32, i32* %call20, align 4
  %cmp21 = icmp ne i32 %15, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.19
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.19, %if.then.16
  store i32 0, i32* %attempts, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %lor.lhs.false
  %call25 = call i32 @rand() #7
  %and = and i32 %call25, 1
  %add26 = add nsw i32 %and, 1
  %call27 = call i32 @sleep(i32 %add26)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %fd, align 4
  %call28 = call i32 @close(i32 %16)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.22, %if.then.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @read_scores(i8* %filename, %struct.score_entry** %scores, i64* %count, i64* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %scores.addr = alloca %struct.score_entry**, align 8
  %count.addr = alloca i64*, align 8
  %alloc.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %filedata = alloca i8*, align 8
  %filesize = alloca i64, align 8
  %nread = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %entry37 = alloca %struct.score_entry, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.score_entry** %scores, %struct.score_entry*** %scores.addr, align 8
  store i64* %count, i64** %count.addr, align 8
  store i64* %alloc, i64** %alloc.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %2) #7
  %call2 = call i32 @fstat(i32 %call1, %struct.stat* %st) #7
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %3 = load i64, i64* %st_size, align 8
  %cmp5 = icmp sle i64 0, %3
  br i1 %cmp5, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %if.end.4
  %st_size6 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %4 = load i64, i64* %st_size6, align 8
  %cmp7 = icmp ult i64 %4, 9223372036854775807
  br i1 %cmp7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.end.4
  %call9 = call i32* @__errno_location() #11
  store i32 75, i32* %call9, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true
  %st_size11 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %5 = load i64, i64* %st_size11, align 8
  store i64 %5, i64* %filesize, align 8
  %6 = load i64, i64* %filesize, align 8
  %add = add nsw i64 %6, 1
  %call12 = call noalias i8* @malloc(i64 %add) #7
  store i8* %call12, i8** %filedata, align 8
  %7 = load i8*, i8** %filedata, align 8
  %tobool13 = icmp ne i8* %7, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %8 = load i8*, i8** %filedata, align 8
  %9 = load i64, i64* %filesize, align 8
  %add16 = add nsw i64 %9, 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call i64 @fread(i8* %8, i64 1, i64 %add16, %struct._IO_FILE* %10)
  store i64 %call17, i64* %nread, align 8
  %11 = load i64, i64* %filesize, align 8
  %12 = load i64, i64* %nread, align 8
  %cmp18 = icmp slt i64 %11, %12
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %call20 = call i32* @__errno_location() #11
  store i32 0, i32* %call20, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.15
  %13 = load i64, i64* %nread, align 8
  %14 = load i64, i64* %filesize, align 8
  %cmp22 = icmp slt i64 %13, %14
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %15 = load i64, i64* %nread, align 8
  store i64 %15, i64* %filesize, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @ferror(%struct._IO_FILE* %16) #7
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %17)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.24
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %18 = load i64, i64* %filesize, align 8
  %19 = load i8*, i8** %filedata, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %18
  store i8 0, i8* %arrayidx, align 1
  %20 = load i8*, i8** %filedata, align 8
  %call31 = call i64 @strlen(i8* %20) #9
  %21 = load i64, i64* %filesize, align 8
  %cmp32 = icmp ne i64 %call31, %21
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.30
  %call34 = call i32* @__errno_location() #11
  store i32 0, i32* %call34, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.30
  %22 = load %struct.score_entry**, %struct.score_entry*** %scores.addr, align 8
  store %struct.score_entry* null, %struct.score_entry** %22, align 8
  %23 = load i64*, i64** %alloc.addr, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %count.addr, align 8
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %filedata, align 8
  store i8* %25, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.46, %if.end.35
  %26 = load i8*, i8** %p, align 8
  %27 = load i8*, i8** %filedata, align 8
  %28 = load i64, i64* %filesize, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %28
  %cmp36 = icmp ult i8* %26, %add.ptr
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %p, align 8
  %call38 = call i8* @read_score(i8* %29, %struct.score_entry* %entry37)
  store i8* %call38, i8** %p, align 8
  %30 = load i8*, i8** %p, align 8
  %tobool39 = icmp ne i8* %30, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %for.body
  %call41 = call i32* @__errno_location() #11
  store i32 0, i32* %call41, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body
  %31 = load %struct.score_entry**, %struct.score_entry*** %scores.addr, align 8
  %32 = load i64*, i64** %count.addr, align 8
  %33 = load i64*, i64** %alloc.addr, align 8
  %call43 = call i32 @push_score(%struct.score_entry** %31, i64* %32, i64* %33, %struct.score_entry* %entry37)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.45, %if.then.40, %if.then.33, %if.then.29, %if.then.19, %if.then.14, %if.then.8, %if.then.3, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @unlock_file(i8* %filename, i8* %state) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %state.addr = alloca i8*, align 8
  %lockpath = alloca i8*, align 8
  %saved_errno = alloca i32, align 4
  %ret = alloca i32, align 4
  %unlink_errno = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %state, i8** %state.addr, align 8
  %0 = load i8*, i8** %state.addr, align 8
  store i8* %0, i8** %lockpath, align 8
  %call = call i32* @__errno_location() #11
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %saved_errno, align 4
  %2 = load i8*, i8** %lockpath, align 8
  %call1 = call i32 @unlink(i8* %2) #7
  store i32 %call1, i32* %ret, align 4
  %call2 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call2, align 4
  store i32 %3, i32* %unlink_errno, align 4
  %4 = load i8*, i8** %lockpath, align 8
  call void @free(i8* %4) #7
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %unlink_errno, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %saved_errno, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  %call3 = call i32* @__errno_location() #11
  store i32 %cond, i32* %call3, align 4
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @push_score(%struct.score_entry** %scores, i64* %count, i64* %size, %struct.score_entry* %newscore) #0 {
entry:
  %retval = alloca i32, align 4
  %scores.addr = alloca %struct.score_entry**, align 8
  %count.addr = alloca i64*, align 8
  %size.addr = alloca i64*, align 8
  %newscore.addr = alloca %struct.score_entry*, align 8
  %newscores = alloca %struct.score_entry*, align 8
  %newsize = alloca i64, align 8
  store %struct.score_entry** %scores, %struct.score_entry*** %scores.addr, align 8
  store i64* %count, i64** %count.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.score_entry* %newscore, %struct.score_entry** %newscore.addr, align 8
  %0 = load %struct.score_entry**, %struct.score_entry*** %scores.addr, align 8
  %1 = load %struct.score_entry*, %struct.score_entry** %0, align 8
  store %struct.score_entry* %1, %struct.score_entry** %newscores, align 8
  %2 = load i64*, i64** %count.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64*, i64** %size.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %6 = load i64*, i64** %size.addr, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %newsize, align 8
  %8 = load i64, i64* %newsize, align 8
  %cmp1 = icmp sle i64 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i64 1, i64* %newsize, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* %newsize, align 8
  %cmp3 = icmp ule i64 %9, 576460752303423487
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %10 = load i64, i64* %newsize, align 8
  %mul = mul nsw i64 %10, 2
  store i64 %mul, i64* %newsize, align 8
  br label %if.end.9

if.else.5:                                        ; preds = %if.else
  %11 = load i64, i64* %newsize, align 8
  %cmp6 = icmp ult i64 %11, 1152921504606846975
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.5
  store i64 1152921504606846975, i64* %newsize, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else.5
  %call = call i32* @__errno_location() #11
  store i32 12, i32* %call, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.2
  %12 = load %struct.score_entry*, %struct.score_entry** %newscores, align 8
  %13 = bitcast %struct.score_entry* %12 to i8*
  %14 = load i64, i64* %newsize, align 8
  %mul11 = mul i64 16, %14
  %call12 = call i8* @realloc(i8* %13, i64 %mul11) #7
  %15 = bitcast i8* %call12 to %struct.score_entry*
  store %struct.score_entry* %15, %struct.score_entry** %newscores, align 8
  %16 = load %struct.score_entry*, %struct.score_entry** %newscores, align 8
  %tobool = icmp ne %struct.score_entry* %16, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %17 = load %struct.score_entry*, %struct.score_entry** %newscores, align 8
  %18 = load %struct.score_entry**, %struct.score_entry*** %scores.addr, align 8
  store %struct.score_entry* %17, %struct.score_entry** %18, align 8
  %19 = load i64, i64* %newsize, align 8
  %20 = load i64*, i64** %size.addr, align 8
  store i64 %19, i64* %20, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %21 = load i64*, i64** %count.addr, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.score_entry*, %struct.score_entry** %newscores, align 8
  %arrayidx = getelementptr inbounds %struct.score_entry, %struct.score_entry* %23, i64 %22
  %24 = load %struct.score_entry*, %struct.score_entry** %newscore.addr, align 8
  %25 = bitcast %struct.score_entry* %arrayidx to i8*
  %26 = bitcast %struct.score_entry* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load i64*, i64** %count.addr, align 8
  %28 = load i64, i64* %27, align 8
  %add = add nsw i64 %28, 1
  store i64 %add, i64* %27, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.else.8
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @sort_scores(%struct.score_entry* %scores, i64 %count, i1 zeroext %reverse) #0 {
entry:
  %scores.addr = alloca %struct.score_entry*, align 8
  %count.addr = alloca i64, align 8
  %reverse.addr = alloca i8, align 1
  store %struct.score_entry* %scores, %struct.score_entry** %scores.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %frombool = zext i1 %reverse to i8
  store i8 %frombool, i8* %reverse.addr, align 1
  %0 = load %struct.score_entry*, %struct.score_entry** %scores.addr, align 8
  %1 = bitcast %struct.score_entry* %0 to i8*
  %2 = load i64, i64* %count.addr, align 8
  %3 = load i8, i8* %reverse.addr, align 1
  %tobool = trunc i8 %3 to i1
  %cond = select i1 %tobool, i32 (i8*, i8*)* @score_compare_reverse, i32 (i8*, i8*)* @score_compare
  call void @qsort(i8* %1, i64 %2, i64 16, i32 (i8*, i8*)* %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_scores(i8* %filename, i32 %mode, %struct.score_entry* %scores, i64 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %scores.addr = alloca %struct.score_entry*, align 8
  %count.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %tempfile = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.score_entry* %scores, %struct.score_entry** %scores.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %add = add i64 %call, 11
  %add1 = add i64 %add, 1
  %call2 = call noalias i8* @malloc(i64 %add1) #7
  store i8* %call2, i8** %tempfile, align 8
  %1 = load i8*, i8** %tempfile, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %tempfile, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @stpcpy(i8* %2, i8* %3) #7
  %call4 = call i8* @strcpy(i8* %call3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)) #7
  %4 = load i8*, i8** %tempfile, align 8
  %call5 = call i32 @mkostemp(i8* %4, i32 0)
  store i32 %call5, i32* %fd, align 4
  %5 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load i32, i32* %fd, align 4
  %7 = load i32, i32* %mode.addr, align 4
  %call8 = call i32 @fchmod(i32 %6, i32 %7) #7
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load i32, i32* %fd, align 4
  %call12 = call %struct._IO_FILE* @fdopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #7
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %f, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %count.addr, align 8
  %cmp16 = icmp slt i64 %10, %11
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.score_entry*, %struct.score_entry** %scores.addr, align 8
  %arrayidx = getelementptr inbounds %struct.score_entry, %struct.score_entry* %14, i64 %13
  %score = getelementptr inbounds %struct.score_entry, %struct.score_entry* %arrayidx, i32 0, i32 0
  %15 = load i8*, i8** %score, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.score_entry*, %struct.score_entry** %scores.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %17, i64 %16
  %user_data = getelementptr inbounds %struct.score_entry, %struct.score_entry* %arrayidx17, i32 0, i32 1
  %18 = load i8*, i8** %user_data, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* %15, i8* %18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %19 = load i64, i64* %i, align 8
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %20)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  %21 = load i8*, i8** %tempfile, align 8
  %22 = load i8*, i8** %filename.addr, align 8
  %call26 = call i32 @rename(i8* %21, i8* %22) #7
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.24, %if.then.20, %if.then.14, %if.then.10, %if.then.6, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare %struct.passwd* @getpwuid(i32) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal i8* @read_score(i8* %p, %struct.score_entry* %score) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %score.addr = alloca %struct.score_entry*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct.score_entry* %score, %struct.score_entry** %score.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load %struct.score_entry*, %struct.score_entry** %score.addr, align 8
  %score1 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %1, i32 0, i32 0
  store i8* %0, i8** %score1, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %call = call i8* @strchr(i8* %2, i32 32) #9
  store i8* %call, i8** %p.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p.addr, align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 0, i8* %5, align 1
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load %struct.score_entry*, %struct.score_entry** %score.addr, align 8
  %user_data = getelementptr inbounds %struct.score_entry, %struct.score_entry* %7, i32 0, i32 1
  store i8* %6, i8** %user_data, align 8
  %8 = load i8*, i8** %p.addr, align 8
  %call2 = call i8* @strchr(i8* %8, i32 10) #9
  store i8* %call2, i8** %p.addr, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %10 = load i8*, i8** %p.addr, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load i8*, i8** %p.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %p.addr, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %p.addr, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @score_compare_reverse(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i8*, i8** %a.addr, align 8
  %call = call i32 @score_compare(i8* %0, i8* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @score_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %sa = alloca %struct.score_entry*, align 8
  %sb = alloca %struct.score_entry*, align 8
  %sca = alloca i8*, align 8
  %scb = alloca i8*, align 8
  %lena = alloca i64, align 8
  %lenb = alloca i64, align 8
  %nega = alloca i8, align 1
  %negb = alloca i8, align 1
  %diff = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.score_entry*
  store %struct.score_entry* %1, %struct.score_entry** %sa, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.score_entry*
  store %struct.score_entry* %3, %struct.score_entry** %sb, align 8
  %4 = load %struct.score_entry*, %struct.score_entry** %sa, align 8
  %score = getelementptr inbounds %struct.score_entry, %struct.score_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %score, align 8
  store i8* %5, i8** %sca, align 8
  %6 = load %struct.score_entry*, %struct.score_entry** %sb, align 8
  %score1 = getelementptr inbounds %struct.score_entry, %struct.score_entry* %6, i32 0, i32 0
  %7 = load i8*, i8** %score1, align 8
  store i8* %7, i8** %scb, align 8
  %8 = load i8*, i8** %sca, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 45
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %nega, align 1
  %10 = load i8*, i8** %scb, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  %frombool6 = zext i1 %cmp4 to i8
  store i8 %frombool6, i8* %negb, align 1
  %12 = load i8, i8* %nega, align 1
  %tobool = trunc i8 %12 to i1
  %conv7 = zext i1 %tobool to i32
  %13 = load i8, i8* %negb, align 1
  %tobool8 = trunc i8 %13 to i1
  %conv9 = zext i1 %tobool8 to i32
  %sub = sub nsw i32 %conv7, %conv9
  store i32 %sub, i32* %diff, align 4
  %14 = load i32, i32* %diff, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %diff, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i8, i8* %nega, align 1
  %tobool11 = trunc i8 %16 to i1
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %17 = load i8*, i8** %sca, align 8
  store i8* %17, i8** %tmp, align 8
  %18 = load i8*, i8** %scb, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr, i8** %sca, align 8
  %19 = load i8*, i8** %tmp, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %add.ptr13, i8** %scb, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %20 = load i8*, i8** %sca, align 8
  %call = call i64 @strlen(i8* %20) #9
  store i64 %call, i64* %lena, align 8
  %21 = load i8*, i8** %scb, align 8
  %call15 = call i64 @strlen(i8* %21) #9
  store i64 %call15, i64* %lenb, align 8
  %22 = load i64, i64* %lena, align 8
  %23 = load i64, i64* %lenb, align 8
  %cmp16 = icmp ne i64 %22, %23
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.14
  %24 = load i64, i64* %lenb, align 8
  %25 = load i64, i64* %lena, align 8
  %cmp19 = icmp ult i64 %24, %25
  %cond = select i1 %cmp19, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %26 = load i8*, i8** %scb, align 8
  %27 = load i8*, i8** %sca, align 8
  %call22 = call i32 @strcmp(i8* %26, i8* %27) #9
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.18, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @mkostemp(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #1

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare i32 @sleep(i32) #4

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
