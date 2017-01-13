; ModuleID = './src/xrdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._XrmHashBucketRec = type opaque
%struct._XDisplay = type opaque
%struct.anon = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XGC = type opaque
%struct.XrmValue = type { i32, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [49 x i8] c"-*-helvetica-medium-r-*--*-120-*-*-*-*-iso8859-1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@x_rm_string = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Emacs.dialog*.background: grey75\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Emacs.dialog*.font: %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"*XlwMenu*font: %s\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"*XlwMenu*background: grey75\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Emacs*verticalScrollBar.background: grey75\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Emacs*horizontalScrollBar.background: grey75\00", align 1
@x_customization_string = internal global i8* null, align 8
@globals = external global %struct.emacs_globals, align 8
@xdefaults = internal constant [11 x i8] c".Xdefaults\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"customization\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Customization\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"XFILESEARCHPATH\00", align 1
@.str.17 = private unnamed_addr constant [300 x i8] c"/usr/share/X11/%L/%T/%N%C%S:/usr/share/X11/%l/%T/%N%C%S:/usr/share/X11/%T/%N%C%S:/usr/share/X11/%L/%T/%N%S:/usr/share/X11/%l/%T/%N%S:/usr/share/X11/%T/%N%S:/usr/lib/X11/%L/%T/%N%C%S:/usr/lib/X11/%l/%T/%N%C%S:/usr/lib/X11/%T/%N%C%S:/usr/lib/X11/%L/%T/%N%S:/usr/lib/X11/%l/%T/%N%S:/usr/lib/X11/%T/%N%S\00", align 1
@search_magic_path.ns = internal constant [5 x i8] c"%N%S\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"app-defaults\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"XUSERFILESEARCHPATH\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"XAPPLRESDIR\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"/%L/%N\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"/%N\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%L/%N\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%N\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"XENVIRONMENT\00", align 1

; Function Attrs: nounwind uwtable
define %struct._XrmHashBucketRec* @x_load_resources(%struct._XDisplay* %display, i8* %xrm_string, i8* %myname, i8* %myclass) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  %xrm_string.addr = alloca i8*, align 8
  %myname.addr = alloca i8*, align 8
  %myclass.addr = alloca i8*, align 8
  %user_database = alloca %struct._XrmHashBucketRec*, align 8
  %rdb = alloca %struct._XrmHashBucketRec*, align 8
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %line = alloca [256 x i8], align 16
  %helv = alloca i8*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i8* %xrm_string, i8** %xrm_string.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %myclass, i8** %myclass.addr, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8** %helv, align 8
  %call = call i32 @XrmStringToQuark(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call, i32* @x_rm_string, align 4
  call void @XrmInitialize()
  %call1 = call %struct._XrmHashBucketRec* @XrmGetStringDatabase(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store %struct._XrmHashBucketRec* %call1, %struct._XrmHashBucketRec** %rdb, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #4
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %0 = load i8*, i8** %helv, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %0) #4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay6)
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %1 = load i8*, i8** %helv, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %1) #4
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay9)
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #4
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0)) #4
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0)) #4
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  call void @XrmPutLineResource(%struct._XrmHashBucketRec** %rdb, i8* %arraydecay18)
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call19 = call %struct._XrmHashBucketRec* @get_user_db(%struct._XDisplay* %2)
  store %struct._XrmHashBucketRec* %call19, %struct._XrmHashBucketRec** %user_database, align 8
  %3 = load i8*, i8** @x_customization_string, align 8
  call void @xfree(i8* %3)
  %4 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %user_database, align 8
  %5 = load i8*, i8** %myname.addr, align 8
  %6 = load i8*, i8** %myclass.addr, align 8
  %call20 = call i8* @x_get_customization_string(%struct._XrmHashBucketRec* %4, i8* %5, i8* %6)
  store i8* %call20, i8** @x_customization_string, align 8
  %7 = load i8*, i8** %myclass.addr, align 8
  %call21 = call %struct._XrmHashBucketRec* @get_system_app(i8* %7)
  store %struct._XrmHashBucketRec* %call21, %struct._XrmHashBucketRec** %db, align 8
  %8 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %cmp = icmp ne %struct._XrmHashBucketRec* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %9, %struct._XrmHashBucketRec** %rdb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call22 = call %struct._XrmHashBucketRec* @get_fallback(%struct._XDisplay* %10)
  store %struct._XrmHashBucketRec* %call22, %struct._XrmHashBucketRec** %db, align 8
  %11 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %cmp23 = icmp ne %struct._XrmHashBucketRec* %11, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end
  %12 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %12, %struct._XrmHashBucketRec** %rdb)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end
  %13 = load i8*, i8** %myclass.addr, align 8
  %call26 = call %struct._XrmHashBucketRec* @get_user_app(i8* %13)
  store %struct._XrmHashBucketRec* %call26, %struct._XrmHashBucketRec** %db, align 8
  %14 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %cmp27 = icmp ne %struct._XrmHashBucketRec* %14, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %15 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %15, %struct._XrmHashBucketRec** %rdb)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %16 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %user_database, align 8
  %cmp30 = icmp ne %struct._XrmHashBucketRec* %16, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %17 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %user_database, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %17, %struct._XrmHashBucketRec** %rdb)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %call33 = call %struct._XrmHashBucketRec* @get_environ_db()
  store %struct._XrmHashBucketRec* %call33, %struct._XrmHashBucketRec** %db, align 8
  %18 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %cmp34 = icmp ne %struct._XrmHashBucketRec* %18, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %19 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %19, %struct._XrmHashBucketRec** %rdb)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %20 = load i8*, i8** %xrm_string.addr, align 8
  %cmp37 = icmp ne i8* %20, null
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.end.36
  %21 = load i8*, i8** %xrm_string.addr, align 8
  %call39 = call %struct._XrmHashBucketRec* @XrmGetStringDatabase(i8* %21)
  store %struct._XrmHashBucketRec* %call39, %struct._XrmHashBucketRec** %db, align 8
  %22 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %cmp40 = icmp ne %struct._XrmHashBucketRec* %22, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  %23 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %23, %struct._XrmHashBucketRec** %rdb)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.36
  %24 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %rdb, align 8
  ret %struct._XrmHashBucketRec* %24
}

declare i32 @XrmStringToQuark(i8*) #1

declare void @XrmInitialize() #1

declare %struct._XrmHashBucketRec* @XrmGetStringDatabase(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @XrmPutLineResource(%struct._XrmHashBucketRec**, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @get_user_db(%struct._XDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %xdefs = alloca i8*, align 8
  %home = alloca i8*, align 8
  %homelen = alloca i64, align 8
  %filename = alloca i8*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  %0 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call = call i8* @XResourceManagerString(%struct._XDisplay* %0)
  store i8* %call, i8** %xdefs, align 8
  %1 = load i8*, i8** %xdefs, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %xdefs, align 8
  %call1 = call %struct._XrmHashBucketRec* @XrmGetStringDatabase(i8* %2)
  store %struct._XrmHashBucketRec* %call1, %struct._XrmHashBucketRec** %db, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i8* @gethomedir()
  store i8* %call2, i8** %home, align 8
  %3 = load i8*, i8** %home, align 8
  %call3 = call i64 @strlen(i8* %3) #5
  store i64 %call3, i64* %homelen, align 8
  %4 = load i8*, i8** %home, align 8
  %5 = load i64, i64* %homelen, align 8
  %add = add i64 %5, 11
  %call4 = call i8* @xrealloc(i8* %4, i64 %add)
  store i8* %call4, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %7 = load i64, i64* %homelen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %call5 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @xdefaults, i32 0, i32 0)) #4
  %8 = load i8*, i8** %filename, align 8
  %call6 = call %struct._XrmHashBucketRec* @XrmGetFileDatabase(i8* %8)
  store %struct._XrmHashBucketRec* %call6, %struct._XrmHashBucketRec** %db, align 8
  %9 = load i8*, i8** %filename, align 8
  call void @xfree(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %11 = bitcast %struct._XDisplay* %10 to %struct.anon*
  %default_screen = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 33
  %12 = load i32, i32* %default_screen, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %14 = bitcast %struct._XDisplay* %13 to %struct.anon*
  %screens = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 35
  %15 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %15, i64 %idxprom
  %call7 = call i8* @XScreenResourceString(%struct.Screen* %arrayidx)
  store i8* %call7, i8** %xdefs, align 8
  %16 = load i8*, i8** %xdefs, align 8
  %cmp8 = icmp ne i8* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %17 = load i8*, i8** %xdefs, align 8
  %call10 = call %struct._XrmHashBucketRec* @XrmGetStringDatabase(i8* %17)
  call void @XrmMergeDatabases(%struct._XrmHashBucketRec* %call10, %struct._XrmHashBucketRec** %db)
  %18 = load i8*, i8** %xdefs, align 8
  %call11 = call i32 @XFree(i8* %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %19 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  ret %struct._XrmHashBucketRec* %19
}

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @x_get_customization_string(%struct._XrmHashBucketRec* %db, i8* %name, i8* %class) #0 {
entry:
  %db.addr = alloca %struct._XrmHashBucketRec*, align 8
  %name.addr = alloca i8*, align 8
  %class.addr = alloca i8*, align 8
  %full_name = alloca i8*, align 8
  %full_class = alloca i8*, align 8
  %result = alloca i8*, align 8
  store %struct._XrmHashBucketRec* %db, %struct._XrmHashBucketRec** %db.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %class, i8** %class.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 14
  %add1 = add i64 %add, 3
  %1 = alloca i8, i64 %add1
  store i8* %1, i8** %full_name, align 8
  %2 = load i8*, i8** %class.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #5
  %add3 = add i64 %call2, 14
  %add4 = add i64 %add3, 3
  %3 = alloca i8, i64 %add4
  store i8* %3, i8** %full_class, align 8
  %4 = load i8*, i8** %full_name, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #4
  %6 = load i8*, i8** %full_class, align 8
  %7 = load i8*, i8** %class.addr, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)) #4
  %8 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db.addr, align 8
  %9 = load i8*, i8** %full_name, align 8
  %10 = load i8*, i8** %full_class, align 8
  %call7 = call i8* @x_get_string_resource(%struct._XrmHashBucketRec* %8, i8* %9, i8* %10)
  store i8* %call7, i8** %result, align 8
  %11 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i8*, i8** %result, align 8
  %call8 = call noalias i8* @xstrdup(i8* %12)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @get_system_app(i8* %class) #0 {
entry:
  %class.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  store i8* %class, i8** %class.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #4
  store i8* %call, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.17, i32 0, i32 0), i8** %path, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %path, align 8
  %2 = load i8*, i8** %class.addr, align 8
  %call1 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %1, i8* %2, i8* null)
  ret %struct._XrmHashBucketRec* %call1
}

declare void @XrmMergeDatabases(%struct._XrmHashBucketRec*, %struct._XrmHashBucketRec**) #1

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @get_fallback(%struct._XDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  ret %struct._XrmHashBucketRec* null
}

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @get_user_app(i8* %class) #0 {
entry:
  %class.addr = alloca i8*, align 8
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %path = alloca i8*, align 8
  %home = alloca i8*, align 8
  store i8* %class, i8** %class.addr, align 8
  store %struct._XrmHashBucketRec* null, %struct._XrmHashBucketRec** %db, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  store i8* %call, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %path, align 8
  %2 = load i8*, i8** %class.addr, align 8
  %call1 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %1, i8* %2, i8* null)
  store %struct._XrmHashBucketRec* %call1, %struct._XrmHashBucketRec** %db, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %tobool2 = icmp ne %struct._XrmHashBucketRec* %3, null
  br i1 %tobool2, label %if.end.13, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #4
  store i8* %call4, i8** %path, align 8
  %4 = load i8*, i8** %path, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then.3
  %5 = load i8*, i8** %path, align 8
  %6 = load i8*, i8** %class.addr, align 8
  %call7 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %5, i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  store %struct._XrmHashBucketRec* %call7, %struct._XrmHashBucketRec** %db, align 8
  %7 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %tobool8 = icmp ne %struct._XrmHashBucketRec* %7, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  %8 = load i8*, i8** %path, align 8
  %9 = load i8*, i8** %class.addr, align 8
  %call10 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %8, i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  store %struct._XrmHashBucketRec* %call10, %struct._XrmHashBucketRec** %db, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %10 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %tobool14 = icmp ne %struct._XrmHashBucketRec* %10, null
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i8* @gethomedir()
  store i8* %call16, i8** %home, align 8
  %11 = load i8*, i8** %home, align 8
  %12 = load i8*, i8** %class.addr, align 8
  %call17 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %11, i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0))
  store %struct._XrmHashBucketRec* %call17, %struct._XrmHashBucketRec** %db, align 8
  %13 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %tobool18 = icmp ne %struct._XrmHashBucketRec* %13, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.then.15
  %14 = load i8*, i8** %home, align 8
  %15 = load i8*, i8** %class.addr, align 8
  %call20 = call %struct._XrmHashBucketRec* @search_magic_path(i8* %14, i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  store %struct._XrmHashBucketRec* %call20, %struct._XrmHashBucketRec** %db, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.15
  %16 = load i8*, i8** %home, align 8
  call void @xfree(i8* %16)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.13
  %17 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  ret %struct._XrmHashBucketRec* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @get_environ_db() #0 {
entry:
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %p = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %home = alloca i8*, align 8
  %homelen = alloca i64, align 8
  %system_name = alloca i64, align 8
  %filenamesize = alloca i64, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)) #4
  store i8* %call, i8** %p, align 8
  store i8* null, i8** %filename, align 8
  %0 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gethomedir()
  store i8* %call1, i8** %home, align 8
  %1 = load i8*, i8** %home, align 8
  %call2 = call i64 @strlen(i8* %1) #5
  store i64 %call2, i64* %homelen, align 8
  %call3 = call i64 @Fsystem_name()
  store i64 %call3, i64* %system_name, align 8
  %2 = load i64, i64* %homelen, align 8
  %add = add i64 %2, 11
  %3 = load i64, i64* %system_name, align 8
  %call4 = call i64 @SBYTES(i64 %3)
  %add5 = add i64 %add, %call4
  store i64 %add5, i64* %filenamesize, align 8
  %4 = load i8*, i8** %home, align 8
  %5 = load i64, i64* %filenamesize, align 8
  %call6 = call i8* @xrealloc(i8* %4, i64 %5)
  store i8* %call6, i8** %filename, align 8
  store i8* %call6, i8** %p, align 8
  %6 = load i8*, i8** %filename, align 8
  %7 = load i64, i64* %homelen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %call7 = call i8* @stpcpy(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @xdefaults, i32 0, i32 0)) #4
  %8 = load i64, i64* %system_name, align 8
  %call8 = call i8* @lispstpcpy(i8* %call7, i64 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %p, align 8
  %call9 = call %struct._XrmHashBucketRec* @XrmGetFileDatabase(i8* %9)
  store %struct._XrmHashBucketRec* %call9, %struct._XrmHashBucketRec** %db, align 8
  %10 = load i8*, i8** %filename, align 8
  call void @xfree(i8* %10)
  %11 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  ret %struct._XrmHashBucketRec* %11
}

; Function Attrs: nounwind uwtable
define i8* @x_get_string_resource(%struct._XrmHashBucketRec* %rdb, i8* %name, i8* %class) #0 {
entry:
  %retval = alloca i8*, align 8
  %rdb.addr = alloca %struct._XrmHashBucketRec*, align 8
  %name.addr = alloca i8*, align 8
  %class.addr = alloca i8*, align 8
  %value = alloca %struct.XrmValue, align 8
  store %struct._XrmHashBucketRec* %rdb, %struct._XrmHashBucketRec** %rdb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %class, i8** %class.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 461), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %rdb.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %class.addr, align 8
  %4 = load i32, i32* @x_rm_string, align 4
  %call = call i32 @x_get_resource(%struct._XrmHashBucketRec* %1, i8* %2, i8* %3, i32 %4, %struct.XrmValue* %value)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %addr = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %value, i32 0, i32 1
  %5 = load i8*, i8** %addr, align 8
  store i8* %5, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i32 @x_get_resource(%struct._XrmHashBucketRec* %rdb, i8* %name, i8* %class, i32 %expected_type, %struct.XrmValue* %ret_value) #0 {
entry:
  %retval = alloca i32, align 4
  %rdb.addr = alloca %struct._XrmHashBucketRec*, align 8
  %name.addr = alloca i8*, align 8
  %class.addr = alloca i8*, align 8
  %expected_type.addr = alloca i32, align 4
  %ret_value.addr = alloca %struct.XrmValue*, align 8
  %value = alloca %struct.XrmValue, align 8
  %namelist = alloca [100 x i32], align 16
  %classlist = alloca [100 x i32], align 16
  %type = alloca i32, align 4
  store %struct._XrmHashBucketRec* %rdb, %struct._XrmHashBucketRec** %rdb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %class, i8** %class.addr, align 8
  store i32 %expected_type, i32* %expected_type.addr, align 4
  store %struct.XrmValue* %ret_value, %struct.XrmValue** %ret_value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %namelist, i32 0, i32 0
  call void @XrmStringToQuarkList(i8* %0, i32* %arraydecay)
  %1 = load i8*, i8** %class.addr, align 8
  %arraydecay1 = getelementptr inbounds [100 x i32], [100 x i32]* %classlist, i32 0, i32 0
  call void @XrmStringToQuarkList(i8* %1, i32* %arraydecay1)
  %2 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %rdb.addr, align 8
  %arraydecay2 = getelementptr inbounds [100 x i32], [100 x i32]* %namelist, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [100 x i32], [100 x i32]* %classlist, i32 0, i32 0
  %call = call i32 @XrmQGetResource(%struct._XrmHashBucketRec* %2, i32* %arraydecay2, i32* %arraydecay3, i32* %type, %struct.XrmValue* %value)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %type, align 4
  %4 = load i32, i32* %expected_type.addr, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %type, align 4
  %6 = load i32, i32* @x_rm_string, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %addr = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %value, i32 0, i32 1
  %7 = load i8*, i8** %addr, align 8
  %8 = load %struct.XrmValue*, %struct.XrmValue** %ret_value.addr, align 8
  %addr7 = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %8, i32 0, i32 1
  store i8* %7, i8** %addr7, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.XrmValue*, %struct.XrmValue** %ret_value.addr, align 8
  %addr8 = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %9, i32 0, i32 1
  %10 = load i8*, i8** %addr8, align 8
  %addr9 = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %value, i32 0, i32 1
  %11 = load i8*, i8** %addr9, align 8
  %12 = load %struct.XrmValue*, %struct.XrmValue** %ret_value.addr, align 8
  %size = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %12, i32 0, i32 0
  %13 = load i32, i32* %size, align 4
  %conv = zext i32 %13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %size10 = getelementptr inbounds %struct.XrmValue, %struct.XrmValue* %value, i32 0, i32 0
  %14 = load i32, i32* %size10, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @XResourceManagerString(%struct._XDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gethomedir() #0 {
entry:
  %retval = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  %ptr = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %call, i8** %ptr, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #4
  store i8* %call1, i8** %ptr, align 8
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #4
  store i8* %call3, i8** %ptr, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %0 = load i8*, i8** %ptr, align 8
  %call6 = call %struct.passwd* @getpwnam(i8* %0)
  store %struct.passwd* %call6, %struct.passwd** %pw, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call7 = call i32 @getuid() #4
  %call8 = call %struct.passwd* @getpwuid(i32 %call7)
  store %struct.passwd* %call8, %struct.passwd** %pw, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %1 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool = icmp ne %struct.passwd* %1, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %2 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %2, i32 0, i32 5
  %3 = load i8*, i8** %pw_dir, align 8
  store i8* %3, i8** %ptr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %4 = load i8*, i8** %ptr, align 8
  %cmp12 = icmp eq i8* %4, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %call14 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call14, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %ptr, align 8
  %call16 = call i64 @strlen(i8* %5) #5
  store i64 %call16, i64* %len, align 8
  %6 = load i64, i64* %len, align 8
  %add = add nsw i64 %6, 2
  %call17 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call17, i8** %copy, align 8
  %7 = load i8*, i8** %copy, align 8
  %8 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %call18 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #4
  %9 = load i8*, i8** %copy, align 8
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %11, i32 1, i1 false)
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare %struct._XrmHashBucketRec* @XrmGetFileDatabase(i8*) #1

declare i8* @XScreenResourceString(%struct.Screen*) #1

declare i32 @XFree(i8*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare %struct.passwd* @getpwnam(i8*) #1

declare %struct.passwd* @getpwuid(i32) #1

; Function Attrs: nounwind
declare i32 @getuid() #2

declare noalias i8* @xstrdup(i8*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @search_magic_path(i8* %search_path, i8* %class, i8* %escaped_suffix) #0 {
entry:
  %retval = alloca %struct._XrmHashBucketRec*, align 8
  %search_path.addr = alloca i8*, align 8
  %class.addr = alloca i8*, align 8
  %escaped_suffix.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %db14 = alloca %struct._XrmHashBucketRec*, align 8
  store i8* %search_path, i8** %search_path.addr, align 8
  store i8* %class, i8** %class.addr, align 8
  store i8* %escaped_suffix, i8** %escaped_suffix.addr, align 8
  %0 = load i8*, i8** %search_path.addr, align 8
  store i8* %0, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s, align 8
  store i8* %3, i8** %p, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv3, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %8 = phi i1 [ false, %for.cond.1 ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %s, align 8
  %cmp6 = icmp ugt i8* %10, %11
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load i8*, i8** %class.addr, align 8
  %16 = load i8*, i8** %escaped_suffix.addr, align 8
  %call = call %struct._XrmHashBucketRec* @magic_db(i8* %12, i64 %sub.ptr.sub, i8* %15, i8* %16)
  store %struct._XrmHashBucketRec* %call, %struct._XrmHashBucketRec** %db, align 8
  %17 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  %tobool8 = icmp ne %struct._XrmHashBucketRec* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %18 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  store %struct._XrmHashBucketRec* %18, %struct._XrmHashBucketRec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.21

if.else:                                          ; preds = %for.end
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv10 = sext i8 %20 to i32
  %cmp11 = icmp eq i32 %conv10, 58
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.else
  %call15 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @search_magic_path.ns, i32 0, i32 0)) #5
  %21 = load i8*, i8** %class.addr, align 8
  %22 = load i8*, i8** %escaped_suffix.addr, align 8
  %call16 = call %struct._XrmHashBucketRec* @magic_db(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @search_magic_path.ns, i32 0, i32 0), i64 %call15, i8* %21, i8* %22)
  store %struct._XrmHashBucketRec* %call16, %struct._XrmHashBucketRec** %db14, align 8
  %23 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db14, align 8
  %tobool17 = icmp ne %struct._XrmHashBucketRec* %23, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.13
  %24 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db14, align 8
  store %struct._XrmHashBucketRec* %24, %struct._XrmHashBucketRec** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv22 = sext i8 %26 to i32
  %cmp23 = icmp eq i32 %conv22, 58
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.21
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %28 = load i8*, i8** %p, align 8
  store i8* %28, i8** %s, align 8
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store %struct._XrmHashBucketRec* null, %struct._XrmHashBucketRec** %retval
  br label %return

return:                                           ; preds = %for.end.29, %if.then.18, %if.then.9
  %29 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %retval
  ret %struct._XrmHashBucketRec* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._XrmHashBucketRec* @magic_db(i8* %string, i64 %string_len, i8* %class, i8* %escaped_suffix) #0 {
entry:
  %retval = alloca %struct._XrmHashBucketRec*, align 8
  %string.addr = alloca i8*, align 8
  %string_len.addr = alloca i64, align 8
  %class.addr = alloca i8*, align 8
  %escaped_suffix.addr = alloca i8*, align 8
  %db = alloca %struct._XrmHashBucketRec*, align 8
  %lang = alloca i8*, align 8
  %path_size = alloca i64, align 8
  %path = alloca i8*, align 8
  %path_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %next = alloca i8*, align 8
  %next_len = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %string_len, i64* %string_len.addr, align 8
  store i8* %class, i8** %class.addr, align 8
  store i8* %escaped_suffix, i8** %escaped_suffix.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #4
  store i8* %call, i8** %lang, align 8
  store i64 100, i64* %path_size, align 8
  %0 = load i64, i64* %path_size, align 8
  %call1 = call noalias i8* @xmalloc(i64 %0)
  store i8* %call1, i8** %path, align 8
  store i64 0, i64* %path_len, align 8
  %1 = load i8*, i8** %string.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  %cmp = icmp ult i8* %2, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  store i8* %5, i8** %next, align 8
  store i64 1, i64* %next_len, align 8
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 37
  br i1 %cmp2, label %if.then, label %if.end.25

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %string.addr, align 8
  %11 = load i64, i64* %string_len.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %11
  %cmp5 = icmp uge i8* %9, %add.ptr4
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i64 0, i64* %next_len, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  switch i32 %conv8, label %sw.default [
    i32 37, label %sw.bb
    i32 67, label %sw.bb.9
    i32 78, label %sw.bb.13
    i32 84, label %sw.bb.15
    i32 83, label %sw.bb.17
    i32 76, label %sw.bb.18
    i32 108, label %sw.bb.18
    i32 116, label %sw.bb.23
    i32 99, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8** %next, align 8
  store i64 1, i64* %next_len, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.else
  %14 = load i8*, i8** @x_customization_string, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %sw.bb.9
  %15 = load i8*, i8** @x_customization_string, align 8
  store i8* %15, i8** %next, align 8
  %16 = load i8*, i8** %next, align 8
  %call11 = call i64 @strlen(i8* %16) #5
  store i64 %call11, i64* %next_len, align 8
  br label %if.end

if.else.12:                                       ; preds = %sw.bb.9
  store i64 0, i64* %next_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else
  %17 = load i8*, i8** %class.addr, align 8
  store i8* %17, i8** %next, align 8
  %18 = load i8*, i8** %class.addr, align 8
  %call14 = call i64 @strlen(i8* %18) #5
  store i64 %call14, i64* %next_len, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8** %next, align 8
  %19 = load i8*, i8** %next, align 8
  %call16 = call i64 @strlen(i8* %19) #5
  store i64 %call16, i64* %next_len, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %if.else, %sw.default
  store i64 0, i64* %next_len, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.else, %if.else
  %20 = load i8*, i8** %lang, align 8
  %tobool19 = icmp ne i8* %20, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %sw.bb.18
  %21 = load i8*, i8** %path, align 8
  call void @xfree(i8* %21)
  store %struct._XrmHashBucketRec* null, %struct._XrmHashBucketRec** %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb.18
  %22 = load i8*, i8** %lang, align 8
  store i8* %22, i8** %next, align 8
  %23 = load i8*, i8** %next, align 8
  %call22 = call i64 @strlen(i8* %23) #5
  store i64 %call22, i64* %next_len, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else, %if.else
  %24 = load i8*, i8** %path, align 8
  call void @xfree(i8* %24)
  store %struct._XrmHashBucketRec* null, %struct._XrmHashBucketRec** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.21, %sw.bb.17, %sw.bb.15, %sw.bb.13, %if.end, %sw.bb
  br label %if.end.24

if.end.24:                                        ; preds = %sw.epilog, %if.then.7
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %while.body
  %25 = load i64, i64* %path_size, align 8
  %26 = load i64, i64* %path_len, align 8
  %sub = sub nsw i64 %25, %26
  %27 = load i64, i64* %next_len, align 8
  %cmp26 = icmp sle i64 %sub, %27
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.25
  %28 = load i8*, i8** %path, align 8
  %29 = load i64, i64* %path_len, align 8
  %30 = load i64, i64* %path_size, align 8
  %sub29 = sub nsw i64 %29, %30
  %31 = load i64, i64* %next_len, align 8
  %add = add nsw i64 %sub29, %31
  %add30 = add nsw i64 %add, 1
  %call31 = call i8* @xpalloc(i8* %28, i64* %path_size, i64 %add30, i64 -1, i64 1)
  store i8* %call31, i8** %path, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.25
  %32 = load i8*, i8** %path, align 8
  %33 = load i64, i64* %path_len, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %32, i64 %33
  %34 = load i8*, i8** %next, align 8
  %35 = load i64, i64* %next_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr33, i8* %34, i64 %35, i32 1, i1 false)
  %36 = load i64, i64* %next_len, align 8
  %37 = load i64, i64* %path_len, align 8
  %add34 = add nsw i64 %37, %36
  store i64 %add34, i64* %path_len, align 8
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  %39 = load i8*, i8** %p, align 8
  %40 = load i8*, i8** %string.addr, align 8
  %41 = load i64, i64* %string_len.addr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %40, i64 %41
  %cmp37 = icmp uge i8* %39, %add.ptr36
  br i1 %cmp37, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.32
  %42 = load i8*, i8** %escaped_suffix.addr, align 8
  %tobool39 = icmp ne i8* %42, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true
  %43 = load i8*, i8** %escaped_suffix.addr, align 8
  store i8* %43, i8** %string.addr, align 8
  %44 = load i8*, i8** %string.addr, align 8
  %call41 = call i64 @strlen(i8* %44) #5
  store i64 %call41, i64* %string_len.addr, align 8
  %45 = load i8*, i8** %string.addr, align 8
  store i8* %45, i8** %p, align 8
  store i8* null, i8** %escaped_suffix.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i64, i64* %path_len, align 8
  %47 = load i8*, i8** %path, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 %46
  store i8 0, i8* %arrayidx, align 1
  %48 = load i8*, i8** %path, align 8
  %call43 = call %struct._XrmHashBucketRec* @XrmGetFileDatabase(i8* %48)
  store %struct._XrmHashBucketRec* %call43, %struct._XrmHashBucketRec** %db, align 8
  %49 = load i8*, i8** %path, align 8
  call void @xfree(i8* %49)
  %50 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %db, align 8
  store %struct._XrmHashBucketRec* %50, %struct._XrmHashBucketRec** %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.23, %if.then.20
  %51 = load %struct._XrmHashBucketRec*, %struct._XrmHashBucketRec** %retval
  ret %struct._XrmHashBucketRec* %51
}

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i64 @Fsystem_name() #1

declare i64 @SBYTES(i64) #1

declare i8* @lispstpcpy(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

declare void @XrmStringToQuarkList(i8*, i32*) #1

declare i32 @XrmQGetResource(%struct._XrmHashBucketRec*, i32*, i32*, i32*, %struct.XrmValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
