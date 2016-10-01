; ModuleID = './MultiSource.Benchmarks.Prolangs-C/139.unix-smail.pw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pw_node = type { i8*, i8*, i32, i8*, %struct.pw_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@pwhead = common global %struct.pw_node* null, align 8
@fullname.fname = internal global [512 x i8] zeroinitializer, align 16
@pwparse.pw_eof = internal global i32 0, align 4
@res_fname.pathlength = internal global i64 0, align 8
@res_fname.file = internal global %struct._IO_FILE* null, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"res_fname: looking for '%s'\0A\00", align 1
@fnlist = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: nounwind uwtable
define i8* @pwfnam(i8* %user) #0 {
entry:
  %retval = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %f = alloca %struct.pw_node*, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %0, %struct.pw_node** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %cmp = icmp ne %struct.pw_node* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %user.addr, align 8
  %3 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname = getelementptr inbounds %struct.pw_node, %struct.pw_node* %3, i32 0, i32 0
  %4 = load i8*, i8** %lname, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %fname = getelementptr inbounds %struct.pw_node, %struct.pw_node* %5, i32 0, i32 1
  %6 = load i8*, i8** %fname, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %vlink = getelementptr inbounds %struct.pw_node, %struct.pw_node* %7, i32 0, i32 4
  %8 = load %struct.pw_node*, %struct.pw_node** %vlink, align 8
  store %struct.pw_node* %8, %struct.pw_node** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %for.end
  %call2 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %call2, %struct.pw_node** %f, align 8
  %cmp3 = icmp ne %struct.pw_node* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %user.addr, align 8
  %10 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %10, i32 0, i32 0
  %11 = load i8*, i8** %lname4, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* %11) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.body
  %12 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %fname8 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %12, i32 0, i32 1
  %13 = load i8*, i8** %fname8, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @pwuid(i32 %uid) #0 {
entry:
  %retval = alloca i8*, align 8
  %uid.addr = alloca i32, align 4
  %f = alloca %struct.pw_node*, align 8
  store i32 %uid, i32* %uid.addr, align 4
  %0 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %0, %struct.pw_node** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %cmp = icmp ne %struct.pw_node* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %uid.addr, align 4
  %3 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %uid1 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %3, i32 0, i32 2
  %4 = load i32, i32* %uid1, align 4
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname = getelementptr inbounds %struct.pw_node, %struct.pw_node* %5, i32 0, i32 0
  %6 = load i8*, i8** %lname, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %vlink = getelementptr inbounds %struct.pw_node, %struct.pw_node* %7, i32 0, i32 4
  %8 = load %struct.pw_node*, %struct.pw_node** %vlink, align 8
  store %struct.pw_node* %8, %struct.pw_node** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %for.end
  %call = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %call, %struct.pw_node** %f, align 8
  %cmp3 = icmp ne %struct.pw_node* %call, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %uid.addr, align 4
  %10 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %uid4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %10, i32 0, i32 2
  %11 = load i32, i32* %uid4, align 4
  %cmp5 = icmp eq i32 %9, %11
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.body
  %12 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname7 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %12, i32 0, i32 0
  %13 = load i8*, i8** %lname7, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.8:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @tilde(i8* %user) #0 {
entry:
  %retval = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %f = alloca %struct.pw_node*, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %0, %struct.pw_node** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %cmp = icmp ne %struct.pw_node* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %user.addr, align 8
  %3 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname = getelementptr inbounds %struct.pw_node, %struct.pw_node* %3, i32 0, i32 0
  %4 = load i8*, i8** %lname, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %home = getelementptr inbounds %struct.pw_node, %struct.pw_node* %5, i32 0, i32 3
  %6 = load i8*, i8** %home, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %vlink = getelementptr inbounds %struct.pw_node, %struct.pw_node* %7, i32 0, i32 4
  %8 = load %struct.pw_node*, %struct.pw_node** %vlink, align 8
  store %struct.pw_node* %8, %struct.pw_node** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %for.end
  %call2 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %call2, %struct.pw_node** %f, align 8
  %cmp3 = icmp ne %struct.pw_node* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %user.addr, align 8
  %10 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %lname4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %10, i32 0, i32 0
  %11 = load i8*, i8** %lname4, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* %11) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.body
  %12 = load %struct.pw_node*, %struct.pw_node** %f, align 8
  %home8 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %12, i32 0, i32 3
  %13 = load i8*, i8** %home8, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @fullname(i8* %gecos) #0 {
entry:
  %gecos.addr = alloca i8*, align 8
  %cend = alloca i8*, align 8
  store i8* %gecos, i8** %gecos.addr, align 8
  %0 = load i8*, i8** %gecos.addr, align 8
  %call = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i8* %0) #6
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i32 44) #5
  store i8* %call1, i8** %cend, align 8
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %cend, align 8
  store i8 0, i8* %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i32 40) #5
  store i8* %call2, i8** %cend, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %2 = load i8*, i8** %cend, align 8
  store i8 0, i8* %2, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i8** %cend, align 8
  %3 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call6 = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call6, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %5 to i32
  %and = and i32 %conv7, 2048
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  %call10 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i32 45) #5
  store i8* %call10, i8** %cend, align 8
  %cmp = icmp ne i8* %call10, null
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %6 = load i8*, i8** %cend, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cend, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.then.9
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i32 0, i32 0), i8** %cend, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.5
  %7 = load i8*, i8** %cend, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define %struct.pw_node* @pwparse() #0 {
entry:
  %f = alloca %struct.pw_node*, align 8
  %p = alloca i8*, align 8
  %name = alloca i8*, align 8
  %pwent = alloca %struct.passwd*, align 8
  %i = alloca i32, align 4
  store i32 1, i32* @pwparse.pw_eof, align 4
  ret %struct.pw_node* null
}

; Function Attrs: nounwind uwtable
define i8* @res_fname(i8* %user) #0 {
entry:
  %retval = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %middle = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %s = alloca i8*, align 8
  %c = alloca i32, align 4
  %flag = alloca i32, align 4
  %namebuf = alloca [512 x i8], align 16
  %path = alloca i8*, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %user.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @res_fname.pathlength, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @fnlist, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** @res_fname.file, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %4 = load i32, i32* @debug, align 4
  %cmp6 = icmp eq i32 %4, 2
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %5 = load i8*, i8** @fnlist, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.5
  store i64 -1, i64* @res_fname.pathlength, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %call10 = call i32 @fseek(%struct._IO_FILE* %6, i64 0, i32 2)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %call11 = call i64 @ftell(%struct._IO_FILE* %7)
  store i64 %call11, i64* @res_fname.pathlength, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %8 = load i64, i64* @res_fname.pathlength, align 8
  %cmp14 = icmp eq i64 %8, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  store i64 0, i64* %lo, align 8
  %9 = load i64, i64* @res_fname.pathlength, align 8
  store i64 %9, i64* %hi, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %namebuf, i32 0, i32 0
  store i8* %arraydecay, i8** %path, align 8
  %10 = load i8*, i8** %path, align 8
  %11 = load i8*, i8** %user.addr, align 8
  %call17 = call i8* @strcpy(i8* %10, i8* %11) #6
  %12 = load i8*, i8** %path, align 8
  %call18 = call i8* @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %for.cond

for.cond:                                         ; preds = %if.end.64, %if.end.16
  %13 = load i64, i64* %hi, align 8
  %14 = load i64, i64* %lo, align 8
  %add = add nsw i64 %13, %14
  %add19 = add nsw i64 %add, 1
  %div = sdiv i64 %add19, 2
  store i64 %div, i64* %middle, align 8
  store i64 %div, i64* %pos, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %16 = load i64, i64* %pos, align 8
  %call20 = call i32 @fseek(%struct._IO_FILE* %15, i64 %16, i32 0)
  %17 = load i64, i64* %pos, align 8
  %cmp21 = icmp ne i64 %17, 0
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %call23 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  store i32 %call23, i32* %c, align 4
  %cmp24 = icmp ne i32 %call23, -1
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i32, i32* %c, align 4
  %cmp25 = icmp ne i32 %19, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.26

if.end.26:                                        ; preds = %while.end, %for.cond
  store i32 0, i32* %flag, align 4
  %21 = load i8*, i8** %path, align 8
  store i8* %21, i8** %s, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %22 = load i32, i32* %flag, align 4
  %cmp28 = icmp eq i32 %22, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.27
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  br label %solved

if.end.32:                                        ; preds = %for.body
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %call33 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call33, i32* %c, align 4
  %26 = load i32, i32* %c, align 4
  %idxprom = sext i32 %26 to i64
  %call34 = call i16** @__ctype_b_loc() #7
  %27 = load i16*, i16** %call34, align 8
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv35 = zext i16 %28 to i32
  %and = and i32 %conv35, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %29 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %29, 65
  %add36 = add nsw i32 %sub, 97
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %30 = load i32, i32* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add36, %cond.true ], [ %30, %cond.false ]
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv37 = sext i8 %32 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %call39 = call i16** @__ctype_b_loc() #7
  %33 = load i16*, i16** %call39, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %33, i64 %idxprom38
  %34 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %34 to i32
  %and42 = and i32 %conv41, 256
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.end
  %35 = load i8*, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %conv45 = sext i8 %36 to i32
  %sub46 = sub nsw i32 %conv45, 65
  %add47 = add nsw i32 %sub46, 97
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.end
  %37 = load i8*, i8** %s, align 8
  %38 = load i8, i8* %37, align 1
  %conv49 = sext i8 %38 to i32
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.44
  %cond51 = phi i32 [ %add47, %cond.true.44 ], [ %conv49, %cond.false.48 ]
  %sub52 = sub nsw i32 %cond, %cond51
  store i32 %sub52, i32* %flag, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.50
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %40 = load i64, i64* %lo, align 8
  %41 = load i64, i64* %middle, align 8
  %cmp53 = icmp sge i64 %40, %41
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.56:                                        ; preds = %for.end
  %42 = load i32, i32* %c, align 4
  %cmp57 = icmp ne i32 %42, -1
  br i1 %cmp57, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %if.end.56
  %43 = load i32, i32* %flag, align 4
  %cmp59 = icmp slt i32 %43, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true
  %44 = load i64, i64* %middle, align 8
  store i64 %44, i64* %lo, align 8
  br label %if.end.64

if.else.62:                                       ; preds = %land.lhs.true, %if.end.56
  %45 = load i64, i64* %middle, align 8
  %sub63 = sub nsw i64 %45, 1
  store i64 %sub63, i64* %hi, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  br label %for.cond

solved:                                           ; preds = %if.then.31
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.76, %solved
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %call66 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  store i32 %call66, i32* %c, align 4
  %cmp67 = icmp ne i32 %call66, -1
  br i1 %cmp67, label %land.lhs.true.69, label %land.end.75

land.lhs.true.69:                                 ; preds = %while.cond.65
  %47 = load i32, i32* %c, align 4
  %cmp70 = icmp ne i32 %47, 9
  br i1 %cmp70, label %land.rhs.72, label %land.end.75

land.rhs.72:                                      ; preds = %land.lhs.true.69
  %48 = load i32, i32* %c, align 4
  %cmp73 = icmp ne i32 %48, 10
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.72, %land.lhs.true.69, %while.cond.65
  %49 = phi i1 [ false, %land.lhs.true.69 ], [ false, %while.cond.65 ], [ %cmp73, %land.rhs.72 ]
  br i1 %49, label %while.body.76, label %while.end.79

while.body.76:                                    ; preds = %land.end.75
  %50 = load i32, i32* %c, align 4
  %conv77 = trunc i32 %50 to i8
  %51 = load i8*, i8** %path, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr78, i8** %path, align 8
  store i8 %conv77, i8* %51, align 1
  br label %while.cond.65

while.end.79:                                     ; preds = %land.end.75
  %52 = load i8*, i8** %path, align 8
  %arraydecay80 = getelementptr inbounds [512 x i8], [512 x i8]* %namebuf, i32 0, i32 0
  %cmp81 = icmp eq i8* %52, %arraydecay80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %while.end.79
  store i8* null, i8** %retval
  br label %return

if.end.84:                                        ; preds = %while.end.79
  %53 = load i8*, i8** %path, align 8
  store i8 0, i8* %53, align 1
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %namebuf, i32 0, i32 0
  %call86 = call i64 @strlen(i8* %arraydecay85) #5
  %conv87 = trunc i64 %call86 to i32
  %add88 = add i32 %conv87, 1
  %conv89 = zext i32 %add88 to i64
  %call90 = call noalias i8* @malloc(i64 %conv89) #6
  store i8* %call90, i8** %path, align 8
  %cmp91 = icmp eq i8* %call90, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.84
  store i8* null, i8** %retval
  br label %return

if.end.94:                                        ; preds = %if.end.84
  %54 = load i8*, i8** %path, align 8
  %arraydecay95 = getelementptr inbounds [512 x i8], [512 x i8]* %namebuf, i32 0, i32 0
  %call96 = call i8* @strcpy(i8* %54, i8* %arraydecay95) #6
  %55 = load i8*, i8** %path, align 8
  store i8* %55, i8** %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.93, %if.then.83, %if.then.55, %if.then.15
  %56 = load i8*, i8** %retval
  ret i8* %56
}

declare i32 @printf(i8*, ...) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare i64 @ftell(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
