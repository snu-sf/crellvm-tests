; ModuleID = './lib-src/pop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._popserver = type { i32, i32, i8*, i32, i32, i8 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }

@pop_debug = global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@pop_error = common global [160 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not determine username\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MAILHOST\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not determine POP server\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Enter POP password:\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not determine POP password\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Out of memory in pop_open\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Username too long; recompile pop.c with larger ERROR_MAX\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Password too long; recompile pop.c with larger ERROR_MAX\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"In multi-line query in pop_stat\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"STAT\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"+OK \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"-ERR\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Unexpected response from POP server in pop_stat\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"In multi-line query in pop_list\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Out of memory in pop_list\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"LIST %d\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Unexpected response from server in pop_list\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"Badly formatted response from server in pop_list\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Too many response lines from server in pop_list\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"In multi-line query in pop_retrieve\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Out of memory in pop_retrieve\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"RETR %d\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"TOP %d %d\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Already in multi-line query in pop_multi_first\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"+OK\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Unexpected response from server in pop_multi_first\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Not in multi-line query in pop_multi_next\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"In multi-line query in pop_delete\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DELE %d\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"In multi-line query in pop_noop\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"In multi-line query in pop_last\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"Unexpected response from server in pop_last\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"RSET\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"pop3\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"Could not create socket for POP connection: \00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"Could not determine POP server's address\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"Could not connect to POP server: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [8 x i8] c"<<< %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Out of memory in pop_getline\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Error reading from server: \00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Unexpected EOF from server in pop_getline\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Error writing to POP server: \00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c">>> %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"Unexpected response from server; expecting +OK or -ERR\00", align 1

; Function Attrs: nounwind uwtable
define %struct._popserver* @pop_open(i8* %host, i8* %username, i8* %password, i32 %flags) #0 {
entry:
  %retval = alloca %struct._popserver*, align 8
  %host.addr = alloca i8*, align 8
  %username.addr = alloca i8*, align 8
  %password.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %sock = alloca i32, align 4
  %server = alloca %struct._popserver*, align 8
  %passwd = alloca %struct.passwd*, align 8
  store i8* %host, i8** %host.addr, align 8
  store i8* %username, i8** %username.addr, align 8
  store i8* %password, i8** %password.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %username.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end.24, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call, i8** %username.addr, align 8
  %1 = load i8*, i8** %username.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.then.3

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** %username.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.end.23, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true, %if.then
  %call4 = call i8* @getlogin()
  store i8* %call4, i8** %username.addr, align 8
  %4 = load i8*, i8** %username.addr, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.then.9

land.lhs.true.6:                                  ; preds = %if.then.3
  %5 = load i8*, i8** %username.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %if.end.22, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.6, %if.then.3
  %call10 = call i32 @getuid() #5
  %call11 = call %struct.passwd* @getpwuid(i32 %call10)
  store %struct.passwd* %call11, %struct.passwd** %passwd, align 8
  %7 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %tobool12 = icmp ne %struct.passwd* %7, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %if.then.9
  %8 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 0
  %9 = load i8*, i8** %pw_name, align 8
  %tobool14 = icmp ne i8* %9, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %10 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_name16 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 0
  %11 = load i8*, i8** %pw_name16, align 8
  %12 = load i8, i8* %11, align 1
  %conv17 = sext i8 %12 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.15
  %13 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_name20 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %14 = load i8*, i8** %pw_name20, align 8
  store i8* %14, i8** %username.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true.13, %if.then.9
  %call21 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end:                                           ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true.6
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %15 = load i8*, i8** %host.addr, align 8
  %tobool25 = icmp ne i8* %15, null
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %call27 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call27, i8** %host.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %16 = load i8*, i8** %host.addr, align 8
  %tobool29 = icmp ne i8* %16, null
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %call31 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %17 = load i8*, i8** %password.addr, align 8
  %tobool33 = icmp ne i8* %17, null
  br i1 %tobool33, label %if.end.43, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  %18 = load i32, i32* %flags.addr, align 4
  %and = and i32 %18, 4
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.34
  %call37 = call i8* @getpass(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call37, i8** %password.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.34
  %19 = load i8*, i8** %password.addr, align 8
  %tobool39 = icmp ne i8* %19, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %call41 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.32
  %20 = load i8*, i8** %password.addr, align 8
  %tobool44 = icmp ne i8* %20, null
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.43
  %21 = load i32, i32* %flags.addr, align 4
  %or = or i32 %21, 1
  store i32 %or, i32* %flags.addr, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.43
  %22 = load i8*, i8** %username.addr, align 8
  store i8* %22, i8** %password.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.45
  %23 = load i8*, i8** %host.addr, align 8
  %24 = load i32, i32* %flags.addr, align 4
  %call48 = call i32 @socket_connection(i8* %23, i32 %24)
  store i32 %call48, i32* %sock, align 4
  %25 = load i32, i32* %sock, align 4
  %cmp = icmp eq i32 %25, -1
  br i1 %cmp, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %call52 = call noalias i8* @malloc(i64 32) #5
  %26 = bitcast i8* %call52 to %struct._popserver*
  store %struct._popserver* %26, %struct._popserver** %server, align 8
  %27 = load %struct._popserver*, %struct._popserver** %server, align 8
  %tobool53 = icmp ne %struct._popserver* %27, null
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  %call55 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.51
  %call57 = call noalias i8* @malloc(i64 1024) #5
  %28 = load %struct._popserver*, %struct._popserver** %server, align 8
  %buffer = getelementptr inbounds %struct._popserver, %struct._popserver* %28, i32 0, i32 2
  store i8* %call57, i8** %buffer, align 8
  %29 = load %struct._popserver*, %struct._popserver** %server, align 8
  %buffer58 = getelementptr inbounds %struct._popserver, %struct._popserver* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer58, align 8
  %tobool59 = icmp ne i8* %30, null
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %if.end.56
  %call61 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #5
  %31 = load %struct._popserver*, %struct._popserver** %server, align 8
  %32 = bitcast %struct._popserver* %31 to i8*
  call void @free(i8* %32) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.56
  %33 = load i32, i32* %sock, align 4
  %34 = load %struct._popserver*, %struct._popserver** %server, align 8
  %file = getelementptr inbounds %struct._popserver, %struct._popserver* %34, i32 0, i32 0
  store i32 %33, i32* %file, align 4
  %35 = load %struct._popserver*, %struct._popserver** %server, align 8
  %data = getelementptr inbounds %struct._popserver, %struct._popserver* %35, i32 0, i32 1
  store i32 0, i32* %data, align 4
  %36 = load %struct._popserver*, %struct._popserver** %server, align 8
  %buffer_index = getelementptr inbounds %struct._popserver, %struct._popserver* %36, i32 0, i32 4
  store i32 0, i32* %buffer_index, align 4
  %37 = load %struct._popserver*, %struct._popserver** %server, align 8
  %buffer_size = getelementptr inbounds %struct._popserver, %struct._popserver* %37, i32 0, i32 3
  store i32 1024, i32* %buffer_size, align 4
  %38 = load %struct._popserver*, %struct._popserver** %server, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %38, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %in_multi, align 8
  %39 = load %struct._popserver*, %struct._popserver** %server, align 8
  %trash_started = getelementptr inbounds %struct._popserver, %struct._popserver* %39, i32 0, i32 5
  %bf.load63 = load i8, i8* %trash_started, align 8
  %bf.clear64 = and i8 %bf.load63, -3
  store i8 %bf.clear64, i8* %trash_started, align 8
  %40 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call65 = call i32 @getok(%struct._popserver* %40)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.62
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.62
  %41 = load i8*, i8** %username.addr, align 8
  %call69 = call i64 @strlen(i8* %41) #6
  %cmp70 = icmp ugt i64 %call69, 154
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.68
  %42 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %42)
  %call73 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.68
  %43 = load i8*, i8** %username.addr, align 8
  %call75 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %43) #5
  %44 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call76 = call i32 @sendline(%struct._popserver* %44, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0))
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.74
  %45 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call78 = call i32 @getok(%struct._popserver* %45)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false, %if.end.74
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false
  %46 = load i8*, i8** %password.addr, align 8
  %call82 = call i64 @strlen(i8* %46) #6
  %cmp83 = icmp ugt i64 %call82, 154
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.81
  %47 = load %struct._popserver*, %struct._popserver** %server, align 8
  call void @pop_close(%struct._popserver* %47)
  %call86 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0)) #5
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.81
  %48 = load i8*, i8** %password.addr, align 8
  %call88 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %48) #5
  %49 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call89 = call i32 @sendline(%struct._popserver* %49, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0))
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.94, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.87
  %50 = load %struct._popserver*, %struct._popserver** %server, align 8
  %call92 = call i32 @getok(%struct._popserver* %50)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.end.87
  store %struct._popserver* null, %struct._popserver** %retval
  br label %return

if.end.95:                                        ; preds = %lor.lhs.false.91
  %51 = load %struct._popserver*, %struct._popserver** %server, align 8
  store %struct._popserver* %51, %struct._popserver** %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.94, %if.then.85, %if.then.80, %if.then.72, %if.then.67, %if.then.60, %if.then.54, %if.then.50, %if.then.40, %if.then.30, %if.else
  %52 = load %struct._popserver*, %struct._popserver** %retval
  ret %struct._popserver* %52
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

declare i8* @getlogin() #2

declare %struct.passwd* @getpwuid(i32) #2

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i8* @getpass(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @socket_connection(i8* %host, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %res = alloca %struct.addrinfo*, align 8
  %it = alloca %struct.addrinfo*, align 8
  %hints = alloca %struct.addrinfo, align 8
  %ret = alloca i32, align 4
  %servent = alloca %struct.servent*, align 8
  %addr = alloca %struct.sockaddr_in, align 4
  %found_port = alloca i8, align 1
  %service = alloca i8*, align 8
  %sock = alloca i32, align 4
  %realhost = alloca i8*, align 8
  %try_count = alloca i32, align 4
  %connect_ok = alloca i32, align 4
  %in_a = alloca %struct.sockaddr_in*, align 8
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %host, i8** %host.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8 0, i8* %found_port, align 1
  store i32 0, i32* %try_count, align 4
  %0 = bitcast %struct.sockaddr_in* %addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8** %service, align 8
  %1 = load i8, i8* %found_port, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %service, align 8
  %call = call %struct.servent* @getservbyname(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0))
  store %struct.servent* %call, %struct.servent** %servent, align 8
  %3 = load %struct.servent*, %struct.servent** %servent, align 8
  %tobool1 = icmp ne %struct.servent* %3, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.servent*, %struct.servent** %servent, align 8
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %4, i32 0, i32 2
  %5 = load i32, i32* %s_port, align 4
  %conv = trunc i32 %5 to i16
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 1
  store i16 %conv, i16* %sin_port, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  %call3 = call zeroext i16 @htons(i16 zeroext 110) #7
  %sin_port4 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 1
  store i16 %call3, i16* %sin_port4, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %call6 = call i32 @socket(i32 2, i32 1, i32 0) #5
  store i32 %call6, i32* %sock, align 4
  %6 = load i32, i32* %sock, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %call9 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call9, align 4
  %call10 = call i8* @strerror(i32 %7) #5
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i32 0, i32 0), i8* %call10) #5
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %8 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 48, i32 8, i1 false)
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 1, i32* %ai_socktype, align 4
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 2, i32* %ai_flags, align 4
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 2, i32* %ai_family, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.12
  %9 = load i8*, i8** %host.addr, align 8
  %10 = load i8*, i8** %service, align 8
  %call13 = call i32 @getaddrinfo(i8* %9, i8* %10, %struct.addrinfo* %hints, %struct.addrinfo** %res)
  store i32 %call13, i32* %ret, align 4
  %11 = load i32, i32* %try_count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %try_count, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %12, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %do.body
  %13 = load i32, i32* %ret, align 4
  %cmp16 = icmp ne i32 %13, -3
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32, i32* %try_count, align 4
  %cmp18 = icmp eq i32 %14, 5
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call21 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  %15 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %15, 0
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  store %struct.addrinfo* %16, %struct.addrinfo** %it, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %tobool25 = icmp ne %struct.addrinfo* %17, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 4
  %19 = load i32, i32* %ai_addrlen, align 4
  %conv26 = zext i32 %19 to i64
  %cmp27 = icmp eq i64 %conv26, 16
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %for.body
  %20 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 5
  %21 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %in_a, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 2
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %in_a, align 8
  %sin_addr30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2
  %24 = bitcast %struct.in_addr* %sin_addr to i8*
  %25 = bitcast %struct.in_addr* %sin_addr30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 4, i32 4, i1 false)
  %26 = load i32, i32* %sock, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %27 = bitcast %struct.sockaddr_in* %addr to %struct.sockaddr*
  store %struct.sockaddr* %27, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %28 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call31 = call i32 @connect(i32 %26, %struct.sockaddr* %28, i32 16)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  br label %for.end

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %29 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 7
  %30 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %30, %struct.addrinfo** %it, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.33, %for.cond
  %31 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %cmp36 = icmp ne %struct.addrinfo* %31, null
  %conv37 = zext i1 %cmp36 to i32
  store i32 %conv37, i32* %connect_ok, align 4
  %32 = load i32, i32* %connect_ok, align 4
  %tobool38 = icmp ne i32 %32, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %for.end
  %33 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %ai_canonname = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 6
  %34 = load i8*, i8** %ai_canonname, align 8
  %call40 = call i64 @strlen(i8* %34) #6
  %add = add i64 %call40, 1
  %35 = alloca i8, i64 %add
  store i8* %35, i8** %realhost, align 8
  %36 = load i8*, i8** %realhost, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %it, align 8
  %ai_canonname41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 6
  %38 = load i8*, i8** %ai_canonname41, align 8
  %call42 = call i8* @strcpy(i8* %36, i8* %38) #5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %for.end
  %39 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %39) #5
  %40 = load i32, i32* %connect_ok, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  %41 = load i32, i32* %sock, align 4
  %call46 = call i32 @close(i32 %41)
  %call47 = call i32* @__errno_location() #7
  %42 = load i32, i32* %call47, align 4
  %call48 = call i8* @strerror(i32 %42) #5
  %call49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0), i8* %call48) #5
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.43
  %43 = load i32, i32* %sock, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.45, %if.then.20, %if.then.8
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @getok(%struct._popserver* %server) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %fromline = alloca i8*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_getline(%struct._popserver* %0, i8** %fromline)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fromline, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 3) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %fromline, align 8
  %call3 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.7, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %3 = load i8*, i8** %fromline, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %3) #5
  store i32 -1, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %call8 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.54, i32 0, i32 0)) #5
  %4 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %4)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.5, %if.then.2, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @pop_close(%struct._popserver* %server) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %0)
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %2 = bitcast %struct._popserver* %1 to i8*
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @sendline(%struct._popserver* %server, i8* %line) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %line.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 3
  %1 = alloca i8, i64 %add
  store i8* %1, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %3 = load i8*, i8** %line.addr, align 8
  %call1 = call i8* @stpcpy(i8* %2, i8* %3) #5
  %call2 = call i8* @strcpy(i8* %call1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #5
  %4 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file = getelementptr inbounds %struct._popserver, %struct._popserver* %4, i32 0, i32 0
  %5 = load i32, i32* %file, align 4
  %6 = load i8*, i8** %buf, align 8
  %7 = load i8*, i8** %buf, align 8
  %call3 = call i64 @strlen(i8* %7) #6
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @fullwrite(i32 %5, i8* %6, i32 %conv)
  store i32 %call4, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %9)
  %call6 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call6, align 4
  %call7 = call i8* @strerror(i32 %10) #5
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* %call7) #5
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8, i8* @pop_debug, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %line.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @pop_stat(%struct._popserver* %server, i32* %count, i32* %size) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %count.addr = alloca i32*, align 8
  %size.addr = alloca i32*, align 8
  %fromserver = alloca i8*, align 8
  %end_ptr = alloca i8*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call1 = call i32 @sendline(%struct._popserver* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @pop_getline(%struct._popserver* %2, i8** %fromserver)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %3 = load i8*, i8** %fromserver, align 8
  %call5 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end.4
  %4 = load i8*, i8** %fromserver, align 8
  %call8 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #6
  %cmp9 = icmp eq i32 0, %call8
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %5 = load i8*, i8** %fromserver, align 8
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %5) #5
  br label %if.end.13

if.else:                                          ; preds = %if.then.7
  %call12 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0)) #5
  %6 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %6)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %call15 = call i32* @__errno_location() #7
  store i32 0, i32* %call15, align 4
  %7 = load i8*, i8** %fromserver, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 4
  %call16 = call i64 @strtol(i8* %arrayidx, i8** %end_ptr, i32 10) #5
  %conv = trunc i64 %call16 to i32
  %8 = load i32*, i32** %count.addr, align 8
  store i32 %conv, i32* %8, align 4
  %9 = load i8*, i8** %fromserver, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8*, i8** %end_ptr, align 8
  %cmp17 = icmp eq i8* %add.ptr, %10
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.14
  %11 = load i8*, i8** %end_ptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv20 = sext i8 %12 to i32
  %cmp21 = icmp ne i32 %conv20, 32
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %call24 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call24, align 4
  %tobool25 = icmp ne i32 %13, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.19, %if.end.14
  %call27 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0)) #5
  %14 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false.23
  %15 = load i8*, i8** %end_ptr, align 8
  store i8* %15, i8** %fromserver, align 8
  %call29 = call i32* @__errno_location() #7
  store i32 0, i32* %call29, align 4
  %16 = load i8*, i8** %fromserver, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %16, i64 1
  %call31 = call i64 @strtol(i8* %add.ptr30, i8** %end_ptr, i32 10) #5
  %conv32 = trunc i64 %call31 to i32
  %17 = load i32*, i32** %size.addr, align 8
  store i32 %conv32, i32* %17, align 4
  %18 = load i8*, i8** %fromserver, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** %end_ptr, align 8
  %cmp34 = icmp eq i8* %add.ptr33, %19
  br i1 %cmp34, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.28
  %call37 = call i32* @__errno_location() #7
  %20 = load i32, i32* %call37, align 4
  %tobool38 = icmp ne i32 %20, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end.28
  %call40 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0)) #5
  %21 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %21)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.36
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.39, %if.then.26, %if.end.13, %if.then.3, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @pop_getline(%struct._popserver* %server, i8** %line) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %line.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %search_offset = alloca i32, align 4
  %cp = alloca i8*, align 8
  %found = alloca i32, align 4
  %data_used = alloca i32, align 4
  %cp75 = alloca i8*, align 8
  %data_used88 = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8** %line, i8*** %line.addr, align 8
  store i32 0, i32* %search_offset, align 4
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 1
  %1 = load i32, i32* %data, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.32

if.then:                                          ; preds = %entry
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer = getelementptr inbounds %struct._popserver, %struct._popserver* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index = getelementptr inbounds %struct._popserver, %struct._popserver* %4, i32 0, i32 4
  %5 = load i32, i32* %buffer_index, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %6 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data1 = getelementptr inbounds %struct._popserver, %struct._popserver* %6, i32 0, i32 1
  %7 = load i32, i32* %data1, align 4
  %call = call i8* @find_crlf(i8* %add.ptr, i32 %7)
  store i8* %call, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index4 = getelementptr inbounds %struct._popserver, %struct._popserver* %9, i32 0, i32 4
  %10 = load i32, i32* %buffer_index4, align 4
  store i32 %10, i32* %found, align 4
  %11 = load i8*, i8** %cp, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer6 = getelementptr inbounds %struct._popserver, %struct._popserver* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer6, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i32, i32* %found, align 4
  %conv = sext i32 %14 to i64
  %sub = sub nsw i64 %sub.ptr.sub, %conv
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, i32* %data_used, align 4
  %15 = load i8*, i8** %cp, align 8
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %data_used, align 4
  %17 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data8 = getelementptr inbounds %struct._popserver, %struct._popserver* %17, i32 0, i32 1
  %18 = load i32, i32* %data8, align 4
  %sub9 = sub nsw i32 %18, %16
  store i32 %sub9, i32* %data8, align 4
  %19 = load i32, i32* %data_used, align 4
  %20 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index10 = getelementptr inbounds %struct._popserver, %struct._popserver* %20, i32 0, i32 4
  %21 = load i32, i32* %buffer_index10, align 4
  %add = add nsw i32 %21, %19
  store i32 %add, i32* %buffer_index10, align 4
  %22 = load i8, i8* @pop_debug, align 1
  %tobool11 = trunc i8 %22 to i1
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.3
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer13 = getelementptr inbounds %struct._popserver, %struct._popserver* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer13, align 8
  %26 = load i32, i32* %found, align 4
  %idx.ext14 = sext i32 %26 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %25, i64 %idx.ext14
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* %add.ptr15)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.3
  %27 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer17 = getelementptr inbounds %struct._popserver, %struct._popserver* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer17, align 8
  %29 = load i32, i32* %found, align 4
  %idx.ext18 = sext i32 %29 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %28, i64 %idx.ext18
  %30 = load i8**, i8*** %line.addr, align 8
  store i8* %add.ptr19, i8** %30, align 8
  %31 = load i32, i32* %data_used, align 4
  %sub20 = sub nsw i32 %31, 2
  store i32 %sub20, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %32 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer21 = getelementptr inbounds %struct._popserver, %struct._popserver* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer21, align 8
  %34 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer22 = getelementptr inbounds %struct._popserver, %struct._popserver* %34, i32 0, i32 2
  %35 = load i8*, i8** %buffer22, align 8
  %36 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index23 = getelementptr inbounds %struct._popserver, %struct._popserver* %36, i32 0, i32 4
  %37 = load i32, i32* %buffer_index23, align 4
  %idx.ext24 = sext i32 %37 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %35, i64 %idx.ext24
  %38 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data26 = getelementptr inbounds %struct._popserver, %struct._popserver* %38, i32 0, i32 1
  %39 = load i32, i32* %data26, align 4
  %conv27 = sext i32 %39 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %33, i8* %add.ptr25, i64 %conv27, i32 1, i1 false)
  %40 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data28 = getelementptr inbounds %struct._popserver, %struct._popserver* %40, i32 0, i32 1
  %41 = load i32, i32* %data28, align 4
  %sub29 = sub nsw i32 %41, 1
  store i32 %sub29, i32* %search_offset, align 4
  %42 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index30 = getelementptr inbounds %struct._popserver, %struct._popserver* %42, i32 0, i32 4
  store i32 0, i32* %buffer_index30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else
  br label %if.end.34

if.else.32:                                       ; preds = %entry
  %43 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index33 = getelementptr inbounds %struct._popserver, %struct._popserver* %43, i32 0, i32 4
  store i32 0, i32* %buffer_index33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.end.31
  br label %while.body

while.body:                                       ; preds = %if.end.34, %if.end.109
  %44 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data35 = getelementptr inbounds %struct._popserver, %struct._popserver* %44, i32 0, i32 1
  %45 = load i32, i32* %data35, align 4
  %46 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_size = getelementptr inbounds %struct._popserver, %struct._popserver* %46, i32 0, i32 3
  %47 = load i32, i32* %buffer_size, align 4
  %sub36 = sub nsw i32 %47, 1
  %cmp = icmp eq i32 %45, %sub36
  br i1 %cmp, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %while.body
  %48 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_size39 = getelementptr inbounds %struct._popserver, %struct._popserver* %48, i32 0, i32 3
  %49 = load i32, i32* %buffer_size39, align 4
  %add40 = add nsw i32 %49, 1024
  store i32 %add40, i32* %buffer_size39, align 4
  %50 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer41 = getelementptr inbounds %struct._popserver, %struct._popserver* %50, i32 0, i32 2
  %51 = load i8*, i8** %buffer41, align 8
  %52 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_size42 = getelementptr inbounds %struct._popserver, %struct._popserver* %52, i32 0, i32 3
  %53 = load i32, i32* %buffer_size42, align 4
  %conv43 = sext i32 %53 to i64
  %call44 = call i8* @realloc(i8* %51, i64 %conv43) #5
  %54 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer45 = getelementptr inbounds %struct._popserver, %struct._popserver* %54, i32 0, i32 2
  store i8* %call44, i8** %buffer45, align 8
  %55 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer46 = getelementptr inbounds %struct._popserver, %struct._popserver* %55, i32 0, i32 2
  %56 = load i8*, i8** %buffer46, align 8
  %tobool47 = icmp ne i8* %56, null
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %if.then.38
  %call49 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0)) #5
  %57 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %57)
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %while.body
  %58 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file = getelementptr inbounds %struct._popserver, %struct._popserver* %58, i32 0, i32 0
  %59 = load i32, i32* %file, align 4
  %60 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer52 = getelementptr inbounds %struct._popserver, %struct._popserver* %60, i32 0, i32 2
  %61 = load i8*, i8** %buffer52, align 8
  %62 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data53 = getelementptr inbounds %struct._popserver, %struct._popserver* %62, i32 0, i32 1
  %63 = load i32, i32* %data53, align 4
  %idx.ext54 = sext i32 %63 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %61, i64 %idx.ext54
  %64 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_size56 = getelementptr inbounds %struct._popserver, %struct._popserver* %64, i32 0, i32 3
  %65 = load i32, i32* %buffer_size56, align 4
  %66 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data57 = getelementptr inbounds %struct._popserver, %struct._popserver* %66, i32 0, i32 1
  %67 = load i32, i32* %data57, align 4
  %sub58 = sub nsw i32 %65, %67
  %sub59 = sub nsw i32 %sub58, 1
  %conv60 = sext i32 %sub59 to i64
  %call61 = call i64 @read(i32 %59, i8* %add.ptr55, i64 %conv60)
  %conv62 = trunc i64 %call61 to i32
  store i32 %conv62, i32* %ret, align 4
  %68 = load i32, i32* %ret, align 4
  %cmp63 = icmp slt i32 %68, 0
  br i1 %cmp63, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.end.51
  %call66 = call i32* @__errno_location() #7
  %69 = load i32, i32* %call66, align 4
  %call67 = call i8* @strerror(i32 %69) #5
  %call68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i8* %call67) #5
  %70 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %70)
  store i32 -1, i32* %retval
  br label %return

if.else.69:                                       ; preds = %if.end.51
  %71 = load i32, i32* %ret, align 4
  %cmp70 = icmp eq i32 %71, 0
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %if.else.69
  %call73 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0)) #5
  %72 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %72)
  store i32 -1, i32* %retval
  br label %return

if.else.74:                                       ; preds = %if.else.69
  %73 = load i32, i32* %ret, align 4
  %74 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data76 = getelementptr inbounds %struct._popserver, %struct._popserver* %74, i32 0, i32 1
  %75 = load i32, i32* %data76, align 4
  %add77 = add nsw i32 %75, %73
  store i32 %add77, i32* %data76, align 4
  %76 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data78 = getelementptr inbounds %struct._popserver, %struct._popserver* %76, i32 0, i32 1
  %77 = load i32, i32* %data78, align 4
  %idxprom = sext i32 %77 to i64
  %78 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer79 = getelementptr inbounds %struct._popserver, %struct._popserver* %78, i32 0, i32 2
  %79 = load i8*, i8** %buffer79, align 8
  %arrayidx = getelementptr inbounds i8, i8* %79, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %80 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer80 = getelementptr inbounds %struct._popserver, %struct._popserver* %80, i32 0, i32 2
  %81 = load i8*, i8** %buffer80, align 8
  %82 = load i32, i32* %search_offset, align 4
  %idx.ext81 = sext i32 %82 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %81, i64 %idx.ext81
  %83 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data83 = getelementptr inbounds %struct._popserver, %struct._popserver* %83, i32 0, i32 1
  %84 = load i32, i32* %data83, align 4
  %85 = load i32, i32* %search_offset, align 4
  %sub84 = sub nsw i32 %84, %85
  %call85 = call i8* @find_crlf(i8* %add.ptr82, i32 %sub84)
  store i8* %call85, i8** %cp75, align 8
  %86 = load i8*, i8** %cp75, align 8
  %tobool86 = icmp ne i8* %86, null
  br i1 %tobool86, label %if.then.87, label %if.end.105

if.then.87:                                       ; preds = %if.else.74
  %87 = load i8*, i8** %cp75, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %87, i64 2
  %88 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer90 = getelementptr inbounds %struct._popserver, %struct._popserver* %88, i32 0, i32 2
  %89 = load i8*, i8** %buffer90, align 8
  %sub.ptr.lhs.cast91 = ptrtoint i8* %add.ptr89 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %89 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %conv94 = trunc i64 %sub.ptr.sub93 to i32
  store i32 %conv94, i32* %data_used88, align 4
  %90 = load i8*, i8** %cp75, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %data_used88, align 4
  %92 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %data95 = getelementptr inbounds %struct._popserver, %struct._popserver* %92, i32 0, i32 1
  %93 = load i32, i32* %data95, align 4
  %sub96 = sub nsw i32 %93, %91
  store i32 %sub96, i32* %data95, align 4
  %94 = load i32, i32* %data_used88, align 4
  %95 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer_index97 = getelementptr inbounds %struct._popserver, %struct._popserver* %95, i32 0, i32 4
  store i32 %94, i32* %buffer_index97, align 4
  %96 = load i8, i8* @pop_debug, align 1
  %tobool98 = trunc i8 %96 to i1
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.then.87
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer100 = getelementptr inbounds %struct._popserver, %struct._popserver* %98, i32 0, i32 2
  %99 = load i8*, i8** %buffer100, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* %99)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.then.87
  %100 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer103 = getelementptr inbounds %struct._popserver, %struct._popserver* %100, i32 0, i32 2
  %101 = load i8*, i8** %buffer103, align 8
  %102 = load i8**, i8*** %line.addr, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* %data_used88, align 4
  %sub104 = sub nsw i32 %103, 2
  store i32 %sub104, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.else.74
  %104 = load i32, i32* %ret, align 4
  %sub106 = sub nsw i32 %104, 1
  %105 = load i32, i32* %search_offset, align 4
  %add107 = add nsw i32 %105, %sub106
  store i32 %add107, i32* %search_offset, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.105
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108
  br label %while.body

return:                                           ; preds = %if.end.102, %if.then.72, %if.then.65, %if.then.48, %if.end
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @pop_trash(%struct._popserver* %server) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 0
  %1 = load i32, i32* %file, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %trash_started = getelementptr inbounds %struct._popserver, %struct._popserver* %2, i32 0, i32 5
  %bf.load = load i8, i8* %trash_started, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %if.end.13

if.end:                                           ; preds = %if.then
  %3 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %trash_started2 = getelementptr inbounds %struct._popserver, %struct._popserver* %3, i32 0, i32 5
  %bf.load3 = load i8, i8* %trash_started2, align 8
  %bf.clear4 = and i8 %bf.load3, -3
  %bf.set = or i8 %bf.clear4, 2
  store i8 %bf.set, i8* %trash_started2, align 8
  %4 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @sendline(%struct._popserver* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %5 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call5 = call i32 @sendline(%struct._popserver* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0))
  %6 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file6 = getelementptr inbounds %struct._popserver, %struct._popserver* %6, i32 0, i32 0
  %7 = load i32, i32* %file6, align 4
  %call7 = call i32 @close(i32 %7)
  %8 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file8 = getelementptr inbounds %struct._popserver, %struct._popserver* %8, i32 0, i32 0
  store i32 -1, i32* %file8, align 4
  %9 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer = getelementptr inbounds %struct._popserver, %struct._popserver* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %11 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer10 = getelementptr inbounds %struct._popserver, %struct._popserver* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer10, align 8
  call void @free(i8* %12) #5
  %13 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer11 = getelementptr inbounds %struct._popserver, %struct._popserver* %13, i32 0, i32 2
  store i8* null, i8** %buffer11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.1, %if.end.12, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @pop_list(%struct._popserver* %server, i32 %message, i32** %IDs, i32** %sizes) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %message.addr = alloca i32, align 4
  %IDs.addr = alloca i32**, align 8
  %sizes.addr = alloca i32**, align 8
  %how_many = alloca i32, align 4
  %i = alloca i32, align 4
  %fromserver = alloca i8*, align 8
  %count = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %message, i32* %message.addr, align 4
  store i32** %IDs, i32*** %IDs.addr, align 8
  store i32** %sizes, i32*** %sizes.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %message.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %how_many, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @pop_stat(%struct._popserver* %2, i32* %count, i32* %size)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  %3 = load i32, i32* %count, align 4
  store i32 %3, i32* %how_many, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.1
  %4 = load i32, i32* %how_many, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call7 = call noalias i8* @malloc(i64 %mul) #5
  %5 = bitcast i8* %call7 to i32*
  %6 = load i32**, i32*** %IDs.addr, align 8
  store i32* %5, i32** %6, align 8
  %7 = load i32, i32* %how_many, align 4
  %add8 = add nsw i32 %7, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = mul i64 %conv9, 4
  %call11 = call noalias i8* @malloc(i64 %mul10) #5
  %8 = bitcast i8* %call11 to i32*
  %9 = load i32**, i32*** %sizes.addr, align 8
  store i32* %8, i32** %9, align 8
  %10 = load i32**, i32*** %IDs.addr, align 8
  %11 = load i32*, i32** %10, align 8
  %tobool12 = icmp ne i32* %11, null
  br i1 %tobool12, label %land.lhs.true, label %if.then.14

land.lhs.true:                                    ; preds = %if.end.6
  %12 = load i32**, i32*** %sizes.addr, align 8
  %13 = load i32*, i32** %12, align 8
  %tobool13 = icmp ne i32* %13, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %if.end.6
  %call15 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %message.addr, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.then.18, label %if.else.51

if.then.18:                                       ; preds = %if.end.16
  %15 = load i32, i32* %message.addr, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %15) #5
  %16 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call20 = call i32 @sendline(%struct._popserver* %16, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %17 = load i32**, i32*** %IDs.addr, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load i32**, i32*** %sizes.addr, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22) #5
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  %23 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call24 = call i32 @pop_getline(%struct._popserver* %23, i8** %fromserver)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %24 = load i32**, i32*** %IDs.addr, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26) #5
  %27 = load i32**, i32*** %sizes.addr, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #5
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %30 = load i8*, i8** %fromserver, align 8
  %call28 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #6
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.27
  %31 = load i8*, i8** %fromserver, align 8
  %call31 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  %32 = load i8*, i8** %fromserver, align 8
  %call34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %32) #5
  br label %if.end.37

if.else.35:                                       ; preds = %if.then.30
  %call36 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0)) #5
  %33 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  %34 = load i32**, i32*** %IDs.addr, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load i32**, i32*** %sizes.addr, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  call void @free(i8* %39) #5
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.27
  %40 = load i8*, i8** %fromserver, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 4
  %call39 = call i32 @atoi(i8* %arrayidx) #6
  %41 = load i32**, i32*** %IDs.addr, align 8
  %42 = load i32*, i32** %41, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %call39, i32* %arrayidx40, align 4
  %43 = load i8*, i8** %fromserver, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %43, i64 4
  %call42 = call i8* @strchr(i8* %arrayidx41, i32 32) #6
  store i8* %call42, i8** %fromserver, align 8
  %44 = load i8*, i8** %fromserver, align 8
  %tobool43 = icmp ne i8* %44, null
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.38
  %call45 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0)) #5
  %45 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %45)
  %46 = load i32**, i32*** %IDs.addr, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #5
  %49 = load i32**, i32*** %sizes.addr, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #5
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.38
  %52 = load i8*, i8** %fromserver, align 8
  %call47 = call i32 @atoi(i8* %52) #6
  %53 = load i32**, i32*** %sizes.addr, align 8
  %54 = load i32*, i32** %53, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %call47, i32* %arrayidx48, align 4
  %55 = load i32**, i32*** %sizes.addr, align 8
  %56 = load i32*, i32** %55, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %arrayidx49, align 4
  %57 = load i32**, i32*** %IDs.addr, align 8
  %58 = load i32*, i32** %57, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %arrayidx50, align 4
  store i32 0, i32* %retval
  br label %return

if.else.51:                                       ; preds = %if.end.16
  %59 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call52 = call i32 @pop_multi_first(%struct._popserver* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8** %fromserver)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  %60 = load i32**, i32*** %IDs.addr, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  call void @free(i8* %62) #5
  %63 = load i32**, i32*** %sizes.addr, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65) #5
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.else.51
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.55
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %how_many, align 4
  %cmp56 = icmp slt i32 %66, %67
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call58 = call i32 @pop_multi_next(%struct._popserver* %68, i8** %fromserver)
  %cmp59 = icmp sle i32 %call58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body
  %69 = load i32**, i32*** %IDs.addr, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #5
  %72 = load i32**, i32*** %sizes.addr, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* %74) #5
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %for.body
  %75 = load i8*, i8** %fromserver, align 8
  %call63 = call i32 @atoi(i8* %75) #6
  %76 = load i32, i32* %i, align 4
  %idxprom = sext i32 %76 to i64
  %77 = load i32**, i32*** %IDs.addr, align 8
  %78 = load i32*, i32** %77, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %78, i64 %idxprom
  store i32 %call63, i32* %arrayidx64, align 4
  %79 = load i8*, i8** %fromserver, align 8
  %call65 = call i8* @strchr(i8* %79, i32 32) #6
  store i8* %call65, i8** %fromserver, align 8
  %80 = load i8*, i8** %fromserver, align 8
  %tobool66 = icmp ne i8* %80, null
  br i1 %tobool66, label %if.end.69, label %if.then.67

if.then.67:                                       ; preds = %if.end.62
  %call68 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0)) #5
  %81 = load i32**, i32*** %IDs.addr, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  call void @free(i8* %83) #5
  %84 = load i32**, i32*** %sizes.addr, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* %86) #5
  %87 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %87)
  store i32 -1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.62
  %88 = load i8*, i8** %fromserver, align 8
  %call70 = call i32 @atoi(i8* %88) #6
  %89 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %89 to i64
  %90 = load i32**, i32*** %sizes.addr, align 8
  %91 = load i32*, i32** %90, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %91, i64 %idxprom71
  store i32 %call70, i32* %arrayidx72, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call73 = call i32 @pop_multi_next(%struct._popserver* %93, i8** %fromserver)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %for.end
  %94 = load i32**, i32*** %IDs.addr, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  call void @free(i8* %96) #5
  %97 = load i32**, i32*** %sizes.addr, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to i8*
  call void @free(i8* %99) #5
  store i32 -1, i32* %retval
  br label %return

if.else.77:                                       ; preds = %for.end
  %100 = load i8*, i8** %fromserver, align 8
  %tobool78 = icmp ne i8* %100, null
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.else.77
  %call80 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0)) #5
  %101 = load i32**, i32*** %IDs.addr, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  call void @free(i8* %103) #5
  %104 = load i32**, i32*** %sizes.addr, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i8*
  call void @free(i8* %106) #5
  store i32 -1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.else.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  %107 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %107 to i64
  %108 = load i32**, i32*** %sizes.addr, align 8
  %109 = load i32*, i32** %108, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %109, i64 %idxprom83
  store i32 0, i32* %arrayidx84, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %110 to i64
  %111 = load i32**, i32*** %IDs.addr, align 8
  %112 = load i32*, i32** %111, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %112, i64 %idxprom85
  store i32 0, i32* %arrayidx86, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.79, %if.then.76, %if.then.67, %if.then.61, %if.then.54, %if.end.46, %if.then.44, %if.end.37, %if.then.26, %if.then.22, %if.then.14, %if.then.4, %if.then
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pop_multi_first(%struct._popserver* %server, i8* %command, i8** %response) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %command.addr = alloca i8*, align 8
  %response.addr = alloca i8**, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  store i8** %response, i8*** %response.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %2 = load i8*, i8** %command.addr, align 8
  %call1 = call i32 @sendline(%struct._popserver* %1, i8* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %4 = load i8**, i8*** %response.addr, align 8
  %call2 = call i32 @pop_getline(%struct._popserver* %3, i8** %4)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %5 = load i8**, i8*** %response.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call5 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #6
  %cmp6 = icmp eq i32 0, %call5
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %7 = load i8**, i8*** %response.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %8) #5
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %9 = load i8**, i8*** %response.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call9 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 3) #6
  %cmp10 = icmp eq i32 0, %call9
  br i1 %cmp10, label %if.then.11, label %if.else.17

if.then.11:                                       ; preds = %if.else
  %11 = load i8**, i8*** %response.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %add.ptr, i8** %11, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %13 = load i8**, i8*** %response.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv, 32
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8**, i8*** %response.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %16, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi14 = getelementptr inbounds %struct._popserver, %struct._popserver* %18, i32 0, i32 5
  %bf.load15 = load i8, i8* %in_multi14, align 8
  %bf.clear16 = and i8 %bf.load15, -2
  %bf.set = or i8 %bf.clear16, 1
  store i8 %bf.set, i8* %in_multi14, align 8
  store i32 0, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  %call18 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.17, %for.end, %if.then.7, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @pop_multi_next(%struct._popserver* %server, i8** %line) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %line.addr = alloca i8**, align 8
  %fromserver = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8** %line, i8*** %line.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call1 = call i32 @pop_getline(%struct._popserver* %1, i8** %fromserver)
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %fromserver, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv, 46
  br i1 %cmp4, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.end.3
  %4 = load i8*, i8** %fromserver, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx7, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %6 = load i8**, i8*** %line.addr, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi9 = getelementptr inbounds %struct._popserver, %struct._popserver* %7, i32 0, i32 5
  %bf.load10 = load i8, i8* %in_multi9, align 8
  %bf.clear11 = and i8 %bf.load10, -2
  store i8 %bf.clear11, i8* %in_multi9, align 8
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  %8 = load i8*, i8** %fromserver, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8**, i8*** %line.addr, align 8
  store i8* %add.ptr, i8** %9, align 8
  %10 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.end.3
  %11 = load i8*, i8** %fromserver, align 8
  %12 = load i8**, i8*** %line.addr, align 8
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.else, %if.then.8, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @pop_retrieve(%struct._popserver* %server, i32 %message, i32 %markfrom, i8** %msg_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %message.addr = alloca i32, align 4
  %markfrom.addr = alloca i32, align 4
  %msg_buf.addr = alloca i8**, align 8
  %IDs = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %bufsize = alloca i32, align 4
  %fromcount = alloca i32, align 4
  %cp = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %fromserver = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %message, i32* %message.addr, align 4
  store i32 %markfrom, i32* %markfrom.addr, align 4
  store i8** %msg_buf, i8*** %msg_buf.addr, align 8
  store i32 0, i32* %fromcount, align 4
  store i32 0, i32* %cp, align 4
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %2 = load i32, i32* %message.addr, align 4
  %call1 = call i32 @pop_list(%struct._popserver* %1, i32 %2, i32** %IDs, i32** %sizes)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %4 = load i32, i32* %message.addr, align 4
  %call4 = call i32 @pop_retrieve_first(%struct._popserver* %3, i32 %4, i8** %fromserver)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %markfrom.addr, align 4
  %tobool8 = icmp ne i32 %7, 0
  %cond = select i1 %tobool8, i32 5, i32 0
  %add = add nsw i32 %6, %cond
  store i32 %add, i32* %bufsize, align 4
  %8 = load i32, i32* %bufsize, align 4
  %conv = sext i32 %8 to i64
  %call9 = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call9, i8** %ptr, align 8
  %9 = load i32*, i32** %IDs, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10) #5
  %11 = load i32*, i32** %sizes, align 8
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12) #5
  %13 = load i8*, i8** %ptr, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0)) #5
  %14 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call13 = call i32 @pop_retrieve_flush(%struct._popserver* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.end.14
  %15 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call15 = call i32 @pop_retrieve_next(%struct._popserver* %15, i8** %fromserver)
  store i32 %call15, i32* %ret, align 4
  %cmp = icmp sge i32 %call15, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %fromserver, align 8
  %tobool17 = icmp ne i8* %16, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %while.body
  %17 = load i32, i32* %cp, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %ptr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 0, i8* %arrayidx19, align 1
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8**, i8*** %msg_buf.addr, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %cp, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.20:                                        ; preds = %while.body
  %22 = load i32, i32* %markfrom.addr, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.20
  %23 = load i8*, i8** %fromserver, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 70
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.62

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %25 = load i8*, i8** %fromserver, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %26 to i32
  %cmp29 = icmp eq i32 %conv28, 114
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.62

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %27 = load i8*, i8** %fromserver, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 111
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.62

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %29 = load i8*, i8** %fromserver, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %29, i64 3
  %30 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp eq i32 %conv38, 109
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.62

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %31 = load i8*, i8** %fromserver, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %31, i64 4
  %32 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp eq i32 %conv43, 32
  br i1 %cmp44, label %if.then.46, label %if.end.62

if.then.46:                                       ; preds = %land.lhs.true.41
  %33 = load i32, i32* %fromcount, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %fromcount, align 4
  %cmp47 = icmp eq i32 %inc, 5
  br i1 %cmp47, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %if.then.46
  %34 = load i32, i32* %bufsize, align 4
  %add50 = add nsw i32 %34, 5
  store i32 %add50, i32* %bufsize, align 4
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i32, i32* %bufsize, align 4
  %conv51 = sext i32 %36 to i64
  %call52 = call i8* @realloc(i8* %35, i64 %conv51) #5
  store i8* %call52, i8** %ptr, align 8
  %37 = load i8*, i8** %ptr, align 8
  %tobool53 = icmp ne i8* %37, null
  br i1 %tobool53, label %if.end.57, label %if.then.54

if.then.54:                                       ; preds = %if.then.49
  %call55 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0)) #5
  %38 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call56 = call i32 @pop_retrieve_flush(%struct._popserver* %38)
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.49
  store i32 0, i32* %fromcount, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.46
  %39 = load i32, i32* %cp, align 4
  %inc59 = add nsw i32 %39, 1
  store i32 %inc59, i32* %cp, align 4
  %idxprom60 = sext i32 %39 to i64
  %40 = load i8*, i8** %ptr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %40, i64 %idxprom60
  store i8 62, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.58, %land.lhs.true.41, %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true, %if.end.20
  %41 = load i32, i32* %cp, align 4
  %idxprom63 = sext i32 %41 to i64
  %42 = load i8*, i8** %ptr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %42, i64 %idxprom63
  %43 = load i8*, i8** %fromserver, align 8
  %44 = load i32, i32* %ret, align 4
  %conv65 = sext i32 %44 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx64, i8* %43, i64 %conv65, i32 1, i1 false)
  %45 = load i32, i32* %ret, align 4
  %46 = load i32, i32* %cp, align 4
  %add66 = add nsw i32 %46, %45
  store i32 %add66, i32* %cp, align 4
  %47 = load i32, i32* %cp, align 4
  %inc67 = add nsw i32 %47, 1
  store i32 %inc67, i32* %cp, align 4
  %idxprom68 = sext i32 %47 to i64
  %48 = load i8*, i8** %ptr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  store i8 10, i8* %arrayidx69, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load i8*, i8** %ptr, align 8
  call void @free(i8* %49) #5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.54, %if.then.18, %if.then.11, %if.then.6, %if.then.2, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @pop_retrieve_first(%struct._popserver* %server, i32 %message, i8** %response) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  %message.addr = alloca i32, align 4
  %response.addr = alloca i8**, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %message, i32* %message.addr, align 4
  store i8** %response, i8*** %response.addr, align 8
  %0 = load i32, i32* %message.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 %0) #5
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %2 = load i8**, i8*** %response.addr, align 8
  %call1 = call i32 @pop_multi_first(%struct._popserver* %1, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8** %2)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @pop_retrieve_flush(%struct._popserver* %server) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_multi_flush(%struct._popserver* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pop_retrieve_next(%struct._popserver* %server, i8** %line) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  %line.addr = alloca i8**, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8** %line, i8*** %line.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %1 = load i8**, i8*** %line.addr, align 8
  %call = call i32 @pop_multi_next(%struct._popserver* %0, i8** %1)
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @pop_multi_flush(%struct._popserver* %server) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %line = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.2, %if.end
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_multi_next(%struct._popserver* %1, i8** %line)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.1, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @pop_top_first(%struct._popserver* %server, i32 %message, i32 %lines, i8** %response) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  %message.addr = alloca i32, align 4
  %lines.addr = alloca i32, align 4
  %response.addr = alloca i8**, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %message, i32* %message.addr, align 4
  store i32 %lines, i32* %lines.addr, align 4
  store i8** %response, i8*** %response.addr, align 8
  %0 = load i32, i32* %message.addr, align 4
  %1 = load i32, i32* %lines.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 %0, i32 %1) #5
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %3 = load i8**, i8*** %response.addr, align 8
  %call1 = call i32 @pop_multi_first(%struct._popserver* %2, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8** %3)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @pop_top_next(%struct._popserver* %server, i8** %line) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  %line.addr = alloca i8**, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i8** %line, i8*** %line.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %1 = load i8**, i8*** %line.addr, align 8
  %call = call i32 @pop_multi_next(%struct._popserver* %0, i8** %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pop_top_flush(%struct._popserver* %server) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_multi_flush(%struct._popserver* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pop_delete(%struct._popserver* %server, i32 %message) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %message.addr = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 %message, i32* %message.addr, align 4
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %message.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 %1) #5
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @sendline(%struct._popserver* %2, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call3 = call i32 @getok(%struct._popserver* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @pop_noop(%struct._popserver* %server) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call1 = call i32 @sendline(%struct._popserver* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @getok(%struct._popserver* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @pop_last(%struct._popserver* %server) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  %fromserver = alloca i8*, align 8
  %end_ptr = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %in_multi = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 5
  %bf.load = load i8, i8* %in_multi, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call1 = call i32 @sendline(%struct._popserver* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call4 = call i32 @pop_getline(%struct._popserver* %2, i8** %fromserver)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %3 = load i8*, i8** %fromserver, align 8
  %call7 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %4 = load i8*, i8** %fromserver, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i64 160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %4) #5
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %5 = load i8*, i8** %fromserver, align 8
  %call11 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %call14 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0)) #5
  %6 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %6)
  store i32 -1, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else
  %call16 = call i32* @__errno_location() #7
  store i32 0, i32* %call16, align 4
  %7 = load i8*, i8** %fromserver, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 4
  %call17 = call i64 @strtol(i8* %arrayidx, i8** %end_ptr, i32 10) #5
  %conv = trunc i64 %call17 to i32
  store i32 %conv, i32* %count, align 4
  %8 = load i8*, i8** %fromserver, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8*, i8** %end_ptr, align 8
  %cmp18 = icmp eq i8* %add.ptr, %9
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.15
  %call20 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call20, align 4
  %tobool21 = icmp ne i32 %10, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %if.else.15
  %call23 = call i8* @strcpy(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @pop_error, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0)) #5
  %11 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  call void @pop_trash(%struct._popserver* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  %12 = load i32, i32* %count, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.13, %if.then.9, %if.then.5, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @pop_reset(%struct._popserver* %server) #0 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca %struct._popserver*, align 8
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_retrieve_flush(%struct._popserver* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call1 = call i32 @sendline(%struct._popserver* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call3 = call i32 @getok(%struct._popserver* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @pop_quit(%struct._popserver* %server) #0 {
entry:
  %server.addr = alloca %struct._popserver*, align 8
  %ret = alloca i32, align 4
  store %struct._popserver* %server, %struct._popserver** %server.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file = getelementptr inbounds %struct._popserver, %struct._popserver* %0, i32 0, i32 0
  %1 = load i32, i32* %file, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call = call i32 @pop_retrieve_flush(%struct._popserver* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call2 = call i32 @sendline(%struct._popserver* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %call4 = call i32 @getok(%struct._popserver* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %ret, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false
  %5 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %file8 = getelementptr inbounds %struct._popserver, %struct._popserver* %5, i32 0, i32 0
  %6 = load i32, i32* %file8, align 4
  %call9 = call i32 @close(i32 %6)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %entry
  %7 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %buffer = getelementptr inbounds %struct._popserver, %struct._popserver* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  call void @free(i8* %8) #5
  %9 = load %struct._popserver*, %struct._popserver** %server.addr, align 8
  %10 = bitcast %struct._popserver* %9 to i8*
  call void @free(i8* %10) #5
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct.servent* @getservbyname(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #1

; Function Attrs: nounwind uwtable
define internal i8* @find_crlf(i8* %in_string, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %in_string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %in_string, i8** %in_string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %in_string.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %in_string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %in_string.addr, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 10
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %5 = load i8*, i8** %in_string.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %in_string.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %in_string.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fullwrite(i32 %fd, i8* %buf, i32 %nbytes) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %nbytes, i32* %nbytes.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %nbytes.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %cp, align 8
  %4 = load i32, i32* %nbytes.addr, align 4
  %conv = sext i32 %4 to i64
  %call = call i64 @write(i32 %2, i8* %3, i64 %conv)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %ret, align 4
  %cmp = icmp sgt i32 %conv1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %ret, align 4
  %7 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  %8 = load i32, i32* %ret, align 4
  %9 = load i32, i32* %nbytes.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %nbytes.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
