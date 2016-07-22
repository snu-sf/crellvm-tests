; ModuleID = './_stat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }

@statmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1383 x i8], [1383 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([14 x %struct.PyMethodDef], [14 x %struct.PyMethodDef]* @stat_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"S_IFDIR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"S_IFCHR\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"S_IFBLK\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"S_IFREG\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"S_IFIFO\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"S_IFLNK\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"S_IFSOCK\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"S_IFDOOR\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"S_IFPORT\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"S_IFWHT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"S_ISUID\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"S_ISGID\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"S_ISVTX\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"S_ENFMT\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"S_IREAD\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"S_IWRITE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"S_IEXEC\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"S_IRWXU\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"S_IRUSR\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"S_IWUSR\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"S_IXUSR\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"S_IRWXG\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"S_IRGRP\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"S_IWGRP\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"S_IXGRP\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"S_IRWXO\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"S_IROTH\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"S_IWOTH\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"S_IXOTH\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"UF_NODUMP\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"UF_IMMUTABLE\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"UF_APPEND\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"UF_OPAQUE\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"UF_NOUNLINK\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"UF_COMPRESSED\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"UF_HIDDEN\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"SF_ARCHIVED\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"SF_IMMUTABLE\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"SF_APPEND\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"SF_NOUNLINK\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"SF_SNAPSHOT\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ST_MODE\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"ST_INO\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"ST_DEV\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"ST_NLINK\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"ST_UID\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"ST_GID\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"ST_SIZE\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"ST_ATIME\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"ST_MTIME\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ST_CTIME\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"_stat\00", align 1
@module_doc = internal global [1383 x i8] c"S_IFMT_: file type bits\0AS_IFDIR: directory\0AS_IFCHR: character device\0AS_IFBLK: block device\0AS_IFREG: regular file\0AS_IFIFO: fifo (named pipe)\0AS_IFLNK: symbolic link\0AS_IFSOCK: socket file\0AS_IFDOOR: door\0AS_IFPORT: event port\0AS_IFWHT: whiteout\0A\0AS_ISUID: set UID bit\0AS_ISGID: set GID bit\0AS_ENFMT: file locking enforcement\0AS_ISVTX: sticky bit\0AS_IREAD: Unix V7 synonym for S_IRUSR\0AS_IWRITE: Unix V7 synonym for S_IWUSR\0AS_IEXEC: Unix V7 synonym for S_IXUSR\0AS_IRWXU: mask for owner permissions\0AS_IRUSR: read by owner\0AS_IWUSR: write by owner\0AS_IXUSR: execute by owner\0AS_IRWXG: mask for group permissions\0AS_IRGRP: read by group\0AS_IWGRP: write by group\0AS_IXGRP: execute by group\0AS_IRWXO: mask for others (not in group) permissions\0AS_IROTH: read by others\0AS_IWOTH: write by others\0AS_IXOTH: execute by others\0A\0AUF_NODUMP: do not dump file\0AUF_IMMUTABLE: file may not be changed\0AUF_APPEND: file may only be appended to\0AUF_OPAQUE: directory is opaque when viewed through a union stack\0AUF_NOUNLINK: file may not be renamed or deleted\0AUF_COMPRESSED: OS X: file is hfs-compressed\0AUF_HIDDEN: OS X: file should not be displayed\0ASF_ARCHIVED: file may be archived\0ASF_IMMUTABLE: file may not be changed\0ASF_APPEND: file may only be appended to\0ASF_NOUNLINK: file may not be renamed or deleted\0ASF_SNAPSHOT: file is a snapshot file\0A\0AST_MODE\0AST_INO\0AST_DEV\0AST_NLINK\0AST_UID\0AST_GID\0AST_SIZE\0AST_ATIME\0AST_MTIME\0AST_CTIME\0A\00", align 16
@stat_methods = internal global [14 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDIR, i32 8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @stat_S_ISDIR_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISCHR, i32 8, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @stat_S_ISCHR_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISBLK, i32 8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stat_S_ISBLK_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISREG, i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @stat_S_ISREG_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISFIFO, i32 8, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @stat_S_ISFIFO_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISLNK, i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @stat_S_ISLNK_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISSOCK, i32 8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @stat_S_ISSOCK_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDOOR, i32 8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @stat_S_ISDOOR_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISPORT, i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @stat_S_ISPORT_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISWHT, i32 8, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @stat_S_ISWHT_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_IMODE, i32 8, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @stat_S_IMODE_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_S_IFMT, i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @stat_S_IFMT_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stat_filemode, i32 8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @stat_filemode_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [8 x i8] c"S_ISDIR\00", align 1
@stat_S_ISDIR_doc = internal global [64 x i8] c"S_ISDIR(mode) -> bool\0A\0AReturn True if mode is from a directory.\00", align 16
@.str.53 = private unnamed_addr constant [8 x i8] c"S_ISCHR\00", align 1
@stat_S_ISCHR_doc = internal global [84 x i8] c"S_ISCHR(mode) -> bool\0A\0AReturn True if mode is from a character special device file.\00", align 16
@.str.54 = private unnamed_addr constant [8 x i8] c"S_ISBLK\00", align 1
@stat_S_ISBLK_doc = internal global [80 x i8] c"S_ISBLK(mode) -> bool\0A\0AReturn True if mode is from a block special device file.\00", align 16
@.str.55 = private unnamed_addr constant [8 x i8] c"S_ISREG\00", align 1
@stat_S_ISREG_doc = internal global [67 x i8] c"S_ISREG(mode) -> bool\0A\0AReturn True if mode is from a regular file.\00", align 16
@.str.56 = private unnamed_addr constant [9 x i8] c"S_ISFIFO\00", align 1
@stat_S_ISFIFO_doc = internal global [73 x i8] c"S_ISFIFO(mode) -> bool\0A\0AReturn True if mode is from a FIFO (named pipe).\00", align 16
@.str.57 = private unnamed_addr constant [8 x i8] c"S_ISLNK\00", align 1
@stat_S_ISLNK_doc = internal global [68 x i8] c"S_ISLNK(mode) -> bool\0A\0AReturn True if mode is from a symbolic link.\00", align 16
@.str.58 = private unnamed_addr constant [9 x i8] c"S_ISSOCK\00", align 1
@stat_S_ISSOCK_doc = internal global [62 x i8] c"S_ISSOCK(mode) -> bool\0A\0AReturn True if mode is from a socket.\00", align 16
@.str.59 = private unnamed_addr constant [9 x i8] c"S_ISDOOR\00", align 1
@stat_S_ISDOOR_doc = internal global [60 x i8] c"S_ISDOOR(mode) -> bool\0A\0AReturn True if mode is from a door.\00", align 16
@.str.60 = private unnamed_addr constant [9 x i8] c"S_ISPORT\00", align 1
@stat_S_ISPORT_doc = internal global [67 x i8] c"S_ISPORT(mode) -> bool\0A\0AReturn True if mode is from an event port.\00", align 16
@.str.61 = private unnamed_addr constant [8 x i8] c"S_ISWHT\00", align 1
@stat_S_ISWHT_doc = internal global [63 x i8] c"S_ISWHT(mode) -> bool\0A\0AReturn True if mode is from a whiteout.\00", align 16
@.str.62 = private unnamed_addr constant [8 x i8] c"S_IMODE\00", align 1
@stat_S_IMODE_doc = internal global [69 x i8] c"Return the portion of the file's mode that can be set by os.chmod().\00", align 16
@.str.63 = private unnamed_addr constant [7 x i8] c"S_IFMT\00", align 1
@stat_S_IFMT_doc = internal global [68 x i8] c"Return the portion of the file's mode that describes the file type.\00", align 16
@.str.64 = private unnamed_addr constant [9 x i8] c"filemode\00", align 1
@stat_filemode_doc = internal global [59 x i8] c"Convert a file's mode to a string of the form '-rwxrwxrwx'\00", align 16
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.65 = private unnamed_addr constant [18 x i8] c"mode out of range\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__stat() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @statmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 16384)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call4 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 8192)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64 24576)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 32768)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 4096)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 40960)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 49152)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 0)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 0)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i64 0)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 2048)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64 1024)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 512)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call52 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i64 1024)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call56 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 256)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call60 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 128)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call64 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 64)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.end.63
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call68 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 448)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %if.end.67
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call72 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64 256)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.71
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call76 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 128)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %if.end.75
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call80 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 64)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call84 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 56)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.83
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call88 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 32)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call92 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 16)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.91
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call96 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 8)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.99:                                        ; preds = %if.end.95
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call100 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 7)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.103:                                       ; preds = %if.end.99
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call104 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 4)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.103
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call108 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 2)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.111:                                       ; preds = %if.end.107
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call112 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i64 1)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.111
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.115:                                       ; preds = %if.end.111
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call116 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i64 1)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.119:                                       ; preds = %if.end.115
  %31 = load %struct._object*, %struct._object** %m, align 8
  %call120 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i64 2)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.119
  %32 = load %struct._object*, %struct._object** %m, align 8
  %call124 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i64 4)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.127:                                       ; preds = %if.end.123
  %33 = load %struct._object*, %struct._object** %m, align 8
  %call128 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i64 8)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.127
  %34 = load %struct._object*, %struct._object** %m, align 8
  %call132 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i64 16)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.131
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.135:                                       ; preds = %if.end.131
  %35 = load %struct._object*, %struct._object** %m, align 8
  %call136 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i64 32)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.135
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.139:                                       ; preds = %if.end.135
  %36 = load %struct._object*, %struct._object** %m, align 8
  %call140 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i64 32768)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.139
  %37 = load %struct._object*, %struct._object** %m, align 8
  %call144 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i64 65536)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.143
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.143
  %38 = load %struct._object*, %struct._object** %m, align 8
  %call148 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i64 131072)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.151:                                       ; preds = %if.end.147
  %39 = load %struct._object*, %struct._object** %m, align 8
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 262144)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.155:                                       ; preds = %if.end.151
  %40 = load %struct._object*, %struct._object** %m, align 8
  %call156 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i64 1048576)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.155
  %41 = load %struct._object*, %struct._object** %m, align 8
  %call160 = call i32 @PyModule_AddIntConstant(%struct._object* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i64 2097152)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %if.end.159
  %42 = load %struct._object*, %struct._object** %m, align 8
  %call164 = call i32 @PyModule_AddIntConstant(%struct._object* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i64 0)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.167:                                       ; preds = %if.end.163
  %43 = load %struct._object*, %struct._object** %m, align 8
  %call168 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 1)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.167
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.171:                                       ; preds = %if.end.167
  %44 = load %struct._object*, %struct._object** %m, align 8
  %call172 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i64 2)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.171
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.175:                                       ; preds = %if.end.171
  %45 = load %struct._object*, %struct._object** %m, align 8
  %call176 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 3)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.175
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.179:                                       ; preds = %if.end.175
  %46 = load %struct._object*, %struct._object** %m, align 8
  %call180 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i64 4)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.183:                                       ; preds = %if.end.179
  %47 = load %struct._object*, %struct._object** %m, align 8
  %call184 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i64 5)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.183
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.187:                                       ; preds = %if.end.183
  %48 = load %struct._object*, %struct._object** %m, align 8
  %call188 = call i32 @PyModule_AddIntConstant(%struct._object* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i64 6)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.187
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.191:                                       ; preds = %if.end.187
  %49 = load %struct._object*, %struct._object** %m, align 8
  %call192 = call i32 @PyModule_AddIntConstant(%struct._object* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i64 7)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.191
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.195:                                       ; preds = %if.end.191
  %50 = load %struct._object*, %struct._object** %m, align 8
  %call196 = call i32 @PyModule_AddIntConstant(%struct._object* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i64 8)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.195
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.199:                                       ; preds = %if.end.195
  %51 = load %struct._object*, %struct._object** %m, align 8
  %call200 = call i32 @PyModule_AddIntConstant(%struct._object* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i64 9)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.199
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.203:                                       ; preds = %if.end.199
  %52 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.203, %if.then.202, %if.then.198, %if.then.194, %if.then.190, %if.then.186, %if.then.182, %if.then.178, %if.then.174, %if.then.170, %if.then.166, %if.then.162, %if.then.158, %if.then.154, %if.then.150, %if.then.146, %if.then.142, %if.then.138, %if.then.134, %if.then.130, %if.then.126, %if.then.122, %if.then.118, %if.then.114, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.94, %if.then.90, %if.then.86, %if.then.82, %if.then.78, %if.then.74, %if.then.70, %if.then.66, %if.then.62, %if.then.58, %if.then.54, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.14, %if.then.10, %if.then.6, %if.then.2, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISDIR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 16384
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISCHR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 8192
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISBLK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 24576
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISREG(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 32768
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISFIFO(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 4096
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISLNK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 40960
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISSOCK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %cmp2 = icmp eq i32 %and, 49152
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISDOOR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISPORT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISWHT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IMODE(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 4095
  %conv = zext i32 %and to i64
  %call2 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IFMT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 61440
  %conv = zext i32 %and to i64
  %call2 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_filemode(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %buf = alloca [10 x i8], align 1
  %mode = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %omode, %struct._object** %omode.addr, align 8
  %0 = load %struct._object*, %struct._object** %omode.addr, align 8
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %0)
  store i32 %call, i32* %mode, align 4
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %mode, align 4
  %call2 = call signext i8 @filetype(i32 %2)
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %buf, i32 0, i64 0
  store i8 %call2, i8* %arrayidx, align 1
  %3 = load i32, i32* %mode, align 4
  %arrayidx3 = getelementptr [10 x i8], [10 x i8]* %buf, i32 0, i64 1
  call void @fileperm(i32 %3, i8* %arrayidx3)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %call4 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %arraydecay, i64 10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @_PyLong_AsMode_t(%struct._object* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %mode = alloca i32, align 4
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %0)
  store i64 %call, i64* %value, align 8
  %1 = load i64, i64* %value, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %value, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %mode, align 4
  %3 = load i32, i32* %mode, align 4
  %conv2 = zext i32 %3 to i64
  %4 = load i64, i64* %value, align 8
  %cmp3 = icmp ne i64 %conv2, %4
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i32, i32* %mode, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @filetype(i32 %mode) #0 {
entry:
  %retval = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 45, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %and1 = and i32 %1, 61440
  %cmp2 = icmp eq i32 %and1, 16384
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8 100, i8* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4
  %and5 = and i32 %2, 61440
  %cmp6 = icmp eq i32 %and5, 40960
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i8 108, i8* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %3 = load i32, i32* %mode.addr, align 4
  %and9 = and i32 %3, 61440
  %cmp10 = icmp eq i32 %and9, 24576
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i8 98, i8* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %4 = load i32, i32* %mode.addr, align 4
  %and13 = and i32 %4, 61440
  %cmp14 = icmp eq i32 %and13, 8192
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i8 99, i8* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %5 = load i32, i32* %mode.addr, align 4
  %and17 = and i32 %5, 61440
  %cmp18 = icmp eq i32 %and17, 4096
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i8 112, i8* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %6 = load i32, i32* %mode.addr, align 4
  %and21 = and i32 %6, 61440
  %cmp22 = icmp eq i32 %and21, 49152
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i8 115, i8* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  store i8 63, i8* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %7 = load i8, i8* %retval
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define internal void @fileperm(i32 %mode, i8* %buf) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 114, i32 45
  %conv = trunc i32 %cond to i8
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* %mode.addr, align 4
  %and1 = and i32 %2, 128
  %tobool2 = icmp ne i32 %and1, 0
  %cond3 = select i1 %tobool2, i32 119, i32 45
  %conv4 = trunc i32 %cond3 to i8
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx5 = getelementptr i8, i8* %3, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %4 = load i32, i32* %mode.addr, align 4
  %and6 = and i32 %4, 2048
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %mode.addr, align 4
  %and8 = and i32 %5, 64
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 115, i32 83
  %conv11 = trunc i32 %cond10 to i8
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %6, i64 2
  store i8 %conv11, i8* %arrayidx12, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %mode.addr, align 4
  %and13 = and i32 %7, 64
  %tobool14 = icmp ne i32 %and13, 0
  %cond15 = select i1 %tobool14, i32 120, i32 45
  %conv16 = trunc i32 %cond15 to i8
  %8 = load i8*, i8** %buf.addr, align 8
  %arrayidx17 = getelementptr i8, i8* %8, i64 2
  store i8 %conv16, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %mode.addr, align 4
  %and18 = and i32 %9, 32
  %tobool19 = icmp ne i32 %and18, 0
  %cond20 = select i1 %tobool19, i32 114, i32 45
  %conv21 = trunc i32 %cond20 to i8
  %10 = load i8*, i8** %buf.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %10, i64 3
  store i8 %conv21, i8* %arrayidx22, align 1
  %11 = load i32, i32* %mode.addr, align 4
  %and23 = and i32 %11, 16
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 119, i32 45
  %conv26 = trunc i32 %cond25 to i8
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx27 = getelementptr i8, i8* %12, i64 4
  store i8 %conv26, i8* %arrayidx27, align 1
  %13 = load i32, i32* %mode.addr, align 4
  %and28 = and i32 %13, 1024
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.36

if.then.30:                                       ; preds = %if.end
  %14 = load i32, i32* %mode.addr, align 4
  %and31 = and i32 %14, 8
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 115, i32 83
  %conv34 = trunc i32 %cond33 to i8
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx35 = getelementptr i8, i8* %15, i64 5
  store i8 %conv34, i8* %arrayidx35, align 1
  br label %if.end.42

if.else.36:                                       ; preds = %if.end
  %16 = load i32, i32* %mode.addr, align 4
  %and37 = and i32 %16, 8
  %tobool38 = icmp ne i32 %and37, 0
  %cond39 = select i1 %tobool38, i32 120, i32 45
  %conv40 = trunc i32 %cond39 to i8
  %17 = load i8*, i8** %buf.addr, align 8
  %arrayidx41 = getelementptr i8, i8* %17, i64 5
  store i8 %conv40, i8* %arrayidx41, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %if.then.30
  %18 = load i32, i32* %mode.addr, align 4
  %and43 = and i32 %18, 4
  %tobool44 = icmp ne i32 %and43, 0
  %cond45 = select i1 %tobool44, i32 114, i32 45
  %conv46 = trunc i32 %cond45 to i8
  %19 = load i8*, i8** %buf.addr, align 8
  %arrayidx47 = getelementptr i8, i8* %19, i64 6
  store i8 %conv46, i8* %arrayidx47, align 1
  %20 = load i32, i32* %mode.addr, align 4
  %and48 = and i32 %20, 2
  %tobool49 = icmp ne i32 %and48, 0
  %cond50 = select i1 %tobool49, i32 119, i32 45
  %conv51 = trunc i32 %cond50 to i8
  %21 = load i8*, i8** %buf.addr, align 8
  %arrayidx52 = getelementptr i8, i8* %21, i64 7
  store i8 %conv51, i8* %arrayidx52, align 1
  %22 = load i32, i32* %mode.addr, align 4
  %and53 = and i32 %22, 512
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %if.end.42
  %23 = load i32, i32* %mode.addr, align 4
  %and56 = and i32 %23, 1
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 116, i32 84
  %conv59 = trunc i32 %cond58 to i8
  %24 = load i8*, i8** %buf.addr, align 8
  %arrayidx60 = getelementptr i8, i8* %24, i64 8
  store i8 %conv59, i8* %arrayidx60, align 1
  br label %if.end.67

if.else.61:                                       ; preds = %if.end.42
  %25 = load i32, i32* %mode.addr, align 4
  %and62 = and i32 %25, 1
  %tobool63 = icmp ne i32 %and62, 0
  %cond64 = select i1 %tobool63, i32 120, i32 45
  %conv65 = trunc i32 %cond64 to i8
  %26 = load i8*, i8** %buf.addr, align 8
  %arrayidx66 = getelementptr i8, i8* %26, i64 8
  store i8 %conv65, i8* %arrayidx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.61, %if.then.55
  ret void
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
