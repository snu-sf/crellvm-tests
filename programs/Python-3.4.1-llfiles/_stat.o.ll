; ModuleID = '_stat.o.bc'
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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @statmodule, i32 1013) #1, !dbg !520
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !351, metadata !521), !dbg !522
  %cmp = icmp eq %struct._object* %call, null, !dbg !523
  br i1 %cmp, label %cleanup, label %if.end, !dbg !525

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 16384) #1, !dbg !526
  %tobool = icmp eq i32 %call1, 0, !dbg !526
  br i1 %tobool, label %if.end.3, label %cleanup, !dbg !528

if.end.3:                                         ; preds = %if.end
  %call4 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 8192) #1, !dbg !529
  %tobool5 = icmp eq i32 %call4, 0, !dbg !529
  br i1 %tobool5, label %if.end.7, label %cleanup, !dbg !531

if.end.7:                                         ; preds = %if.end.3
  %call8 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 24576) #1, !dbg !532
  %tobool9 = icmp eq i32 %call8, 0, !dbg !532
  br i1 %tobool9, label %if.end.11, label %cleanup, !dbg !534

if.end.11:                                        ; preds = %if.end.7
  %call12 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 32768) #1, !dbg !535
  %tobool13 = icmp eq i32 %call12, 0, !dbg !535
  br i1 %tobool13, label %if.end.15, label %cleanup, !dbg !537

if.end.15:                                        ; preds = %if.end.11
  %call16 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 4096) #1, !dbg !538
  %tobool17 = icmp eq i32 %call16, 0, !dbg !538
  br i1 %tobool17, label %if.end.19, label %cleanup, !dbg !540

if.end.19:                                        ; preds = %if.end.15
  %call20 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 40960) #1, !dbg !541
  %tobool21 = icmp eq i32 %call20, 0, !dbg !541
  br i1 %tobool21, label %if.end.23, label %cleanup, !dbg !543

if.end.23:                                        ; preds = %if.end.19
  %call24 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 49152) #1, !dbg !544
  %tobool25 = icmp eq i32 %call24, 0, !dbg !544
  br i1 %tobool25, label %if.end.27, label %cleanup, !dbg !546

if.end.27:                                        ; preds = %if.end.23
  %call28 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 0) #1, !dbg !547
  %tobool29 = icmp eq i32 %call28, 0, !dbg !547
  br i1 %tobool29, label %if.end.31, label %cleanup, !dbg !549

if.end.31:                                        ; preds = %if.end.27
  %call32 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 0) #1, !dbg !550
  %tobool33 = icmp eq i32 %call32, 0, !dbg !550
  br i1 %tobool33, label %if.end.35, label %cleanup, !dbg !552

if.end.35:                                        ; preds = %if.end.31
  %call36 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 0) #1, !dbg !553
  %tobool37 = icmp eq i32 %call36, 0, !dbg !553
  br i1 %tobool37, label %if.end.39, label %cleanup, !dbg !555

if.end.39:                                        ; preds = %if.end.35
  %call40 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 2048) #1, !dbg !556
  %tobool41 = icmp eq i32 %call40, 0, !dbg !556
  br i1 %tobool41, label %if.end.43, label %cleanup, !dbg !558

if.end.43:                                        ; preds = %if.end.39
  %call44 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 1024) #1, !dbg !559
  %tobool45 = icmp eq i32 %call44, 0, !dbg !559
  br i1 %tobool45, label %if.end.47, label %cleanup, !dbg !561

if.end.47:                                        ; preds = %if.end.43
  %call48 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 512) #1, !dbg !562
  %tobool49 = icmp eq i32 %call48, 0, !dbg !562
  br i1 %tobool49, label %if.end.51, label %cleanup, !dbg !564

if.end.51:                                        ; preds = %if.end.47
  %call52 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 1024) #1, !dbg !565
  %tobool53 = icmp eq i32 %call52, 0, !dbg !565
  br i1 %tobool53, label %if.end.55, label %cleanup, !dbg !567

if.end.55:                                        ; preds = %if.end.51
  %call56 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 256) #1, !dbg !568
  %tobool57 = icmp eq i32 %call56, 0, !dbg !568
  br i1 %tobool57, label %if.end.59, label %cleanup, !dbg !570

if.end.59:                                        ; preds = %if.end.55
  %call60 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 128) #1, !dbg !571
  %tobool61 = icmp eq i32 %call60, 0, !dbg !571
  br i1 %tobool61, label %if.end.63, label %cleanup, !dbg !573

if.end.63:                                        ; preds = %if.end.59
  %call64 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i64 64) #1, !dbg !574
  %tobool65 = icmp eq i32 %call64, 0, !dbg !574
  br i1 %tobool65, label %if.end.67, label %cleanup, !dbg !576

if.end.67:                                        ; preds = %if.end.63
  %call68 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 448) #1, !dbg !577
  %tobool69 = icmp eq i32 %call68, 0, !dbg !577
  br i1 %tobool69, label %if.end.71, label %cleanup, !dbg !579

if.end.71:                                        ; preds = %if.end.67
  %call72 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 256) #1, !dbg !580
  %tobool73 = icmp eq i32 %call72, 0, !dbg !580
  br i1 %tobool73, label %if.end.75, label %cleanup, !dbg !582

if.end.75:                                        ; preds = %if.end.71
  %call76 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 128) #1, !dbg !583
  %tobool77 = icmp eq i32 %call76, 0, !dbg !583
  br i1 %tobool77, label %if.end.79, label %cleanup, !dbg !585

if.end.79:                                        ; preds = %if.end.75
  %call80 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64 64) #1, !dbg !586
  %tobool81 = icmp eq i32 %call80, 0, !dbg !586
  br i1 %tobool81, label %if.end.83, label %cleanup, !dbg !588

if.end.83:                                        ; preds = %if.end.79
  %call84 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 56) #1, !dbg !589
  %tobool85 = icmp eq i32 %call84, 0, !dbg !589
  br i1 %tobool85, label %if.end.87, label %cleanup, !dbg !591

if.end.87:                                        ; preds = %if.end.83
  %call88 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 32) #1, !dbg !592
  %tobool89 = icmp eq i32 %call88, 0, !dbg !592
  br i1 %tobool89, label %if.end.91, label %cleanup, !dbg !594

if.end.91:                                        ; preds = %if.end.87
  %call92 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 16) #1, !dbg !595
  %tobool93 = icmp eq i32 %call92, 0, !dbg !595
  br i1 %tobool93, label %if.end.95, label %cleanup, !dbg !597

if.end.95:                                        ; preds = %if.end.91
  %call96 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 8) #1, !dbg !598
  %tobool97 = icmp eq i32 %call96, 0, !dbg !598
  br i1 %tobool97, label %if.end.99, label %cleanup, !dbg !600

if.end.99:                                        ; preds = %if.end.95
  %call100 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i64 7) #1, !dbg !601
  %tobool101 = icmp eq i32 %call100, 0, !dbg !601
  br i1 %tobool101, label %if.end.103, label %cleanup, !dbg !603

if.end.103:                                       ; preds = %if.end.99
  %call104 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i64 4) #1, !dbg !604
  %tobool105 = icmp eq i32 %call104, 0, !dbg !604
  br i1 %tobool105, label %if.end.107, label %cleanup, !dbg !606

if.end.107:                                       ; preds = %if.end.103
  %call108 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i64 2) #1, !dbg !607
  %tobool109 = icmp eq i32 %call108, 0, !dbg !607
  br i1 %tobool109, label %if.end.111, label %cleanup, !dbg !609

if.end.111:                                       ; preds = %if.end.107
  %call112 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 1) #1, !dbg !610
  %tobool113 = icmp eq i32 %call112, 0, !dbg !610
  br i1 %tobool113, label %if.end.115, label %cleanup, !dbg !612

if.end.115:                                       ; preds = %if.end.111
  %call116 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i64 1) #1, !dbg !613
  %tobool117 = icmp eq i32 %call116, 0, !dbg !613
  br i1 %tobool117, label %if.end.119, label %cleanup, !dbg !615

if.end.119:                                       ; preds = %if.end.115
  %call120 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i64 2) #1, !dbg !616
  %tobool121 = icmp eq i32 %call120, 0, !dbg !616
  br i1 %tobool121, label %if.end.123, label %cleanup, !dbg !618

if.end.123:                                       ; preds = %if.end.119
  %call124 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 4) #1, !dbg !619
  %tobool125 = icmp eq i32 %call124, 0, !dbg !619
  br i1 %tobool125, label %if.end.127, label %cleanup, !dbg !621

if.end.127:                                       ; preds = %if.end.123
  %call128 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 8) #1, !dbg !622
  %tobool129 = icmp eq i32 %call128, 0, !dbg !622
  br i1 %tobool129, label %if.end.131, label %cleanup, !dbg !624

if.end.131:                                       ; preds = %if.end.127
  %call132 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i64 16) #1, !dbg !625
  %tobool133 = icmp eq i32 %call132, 0, !dbg !625
  br i1 %tobool133, label %if.end.135, label %cleanup, !dbg !627

if.end.135:                                       ; preds = %if.end.131
  %call136 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i64 32) #1, !dbg !628
  %tobool137 = icmp eq i32 %call136, 0, !dbg !628
  br i1 %tobool137, label %if.end.139, label %cleanup, !dbg !630

if.end.139:                                       ; preds = %if.end.135
  %call140 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 32768) #1, !dbg !631
  %tobool141 = icmp eq i32 %call140, 0, !dbg !631
  br i1 %tobool141, label %if.end.143, label %cleanup, !dbg !633

if.end.143:                                       ; preds = %if.end.139
  %call144 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i64 65536) #1, !dbg !634
  %tobool145 = icmp eq i32 %call144, 0, !dbg !634
  br i1 %tobool145, label %if.end.147, label %cleanup, !dbg !636

if.end.147:                                       ; preds = %if.end.143
  %call148 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 131072) #1, !dbg !637
  %tobool149 = icmp eq i32 %call148, 0, !dbg !637
  br i1 %tobool149, label %if.end.151, label %cleanup, !dbg !639

if.end.151:                                       ; preds = %if.end.147
  %call152 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i64 262144) #1, !dbg !640
  %tobool153 = icmp eq i32 %call152, 0, !dbg !640
  br i1 %tobool153, label %if.end.155, label %cleanup, !dbg !642

if.end.155:                                       ; preds = %if.end.151
  %call156 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i64 1048576) #1, !dbg !643
  %tobool157 = icmp eq i32 %call156, 0, !dbg !643
  br i1 %tobool157, label %if.end.159, label %cleanup, !dbg !645

if.end.159:                                       ; preds = %if.end.155
  %call160 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i64 2097152) #1, !dbg !646
  %tobool161 = icmp eq i32 %call160, 0, !dbg !646
  br i1 %tobool161, label %if.end.163, label %cleanup, !dbg !648

if.end.163:                                       ; preds = %if.end.159
  %call164 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i64 0) #1, !dbg !649
  %tobool165 = icmp eq i32 %call164, 0, !dbg !649
  br i1 %tobool165, label %if.end.167, label %cleanup, !dbg !651

if.end.167:                                       ; preds = %if.end.163
  %call168 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i64 1) #1, !dbg !652
  %tobool169 = icmp eq i32 %call168, 0, !dbg !652
  br i1 %tobool169, label %if.end.171, label %cleanup, !dbg !654

if.end.171:                                       ; preds = %if.end.167
  %call172 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i64 2) #1, !dbg !655
  %tobool173 = icmp eq i32 %call172, 0, !dbg !655
  br i1 %tobool173, label %if.end.175, label %cleanup, !dbg !657

if.end.175:                                       ; preds = %if.end.171
  %call176 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i64 3) #1, !dbg !658
  %tobool177 = icmp eq i32 %call176, 0, !dbg !658
  br i1 %tobool177, label %if.end.179, label %cleanup, !dbg !660

if.end.179:                                       ; preds = %if.end.175
  %call180 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 4) #1, !dbg !661
  %tobool181 = icmp eq i32 %call180, 0, !dbg !661
  br i1 %tobool181, label %if.end.183, label %cleanup, !dbg !663

if.end.183:                                       ; preds = %if.end.179
  %call184 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i64 5) #1, !dbg !664
  %tobool185 = icmp eq i32 %call184, 0, !dbg !664
  br i1 %tobool185, label %if.end.187, label %cleanup, !dbg !666

if.end.187:                                       ; preds = %if.end.183
  %call188 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64 6) #1, !dbg !667
  %tobool189 = icmp eq i32 %call188, 0, !dbg !667
  br i1 %tobool189, label %if.end.191, label %cleanup, !dbg !669

if.end.191:                                       ; preds = %if.end.187
  %call192 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i64 7) #1, !dbg !670
  %tobool193 = icmp eq i32 %call192, 0, !dbg !670
  br i1 %tobool193, label %if.end.195, label %cleanup, !dbg !672

if.end.195:                                       ; preds = %if.end.191
  %call196 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i64 8) #1, !dbg !673
  %tobool197 = icmp eq i32 %call196, 0, !dbg !673
  br i1 %tobool197, label %if.end.199, label %cleanup, !dbg !675

if.end.199:                                       ; preds = %if.end.195
  %call200 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i64 9) #1, !dbg !676
  %tobool201 = icmp eq i32 %call200, 0, !dbg !676
  %call. = select i1 %tobool201, %struct._object* %call, %struct._object* null, !dbg !678
  br label %cleanup, !dbg !678

cleanup:                                          ; preds = %if.end.199, %if.end.195, %if.end.191, %if.end.187, %if.end.183, %if.end.179, %if.end.175, %if.end.171, %if.end.167, %if.end.163, %if.end.159, %if.end.155, %if.end.151, %if.end.147, %if.end.143, %if.end.139, %if.end.135, %if.end.131, %if.end.127, %if.end.123, %if.end.119, %if.end.115, %if.end.111, %if.end.107, %if.end.103, %if.end.99, %if.end.95, %if.end.91, %if.end.87, %if.end.83, %if.end.79, %if.end.75, %if.end.71, %if.end.67, %if.end.63, %if.end.59, %if.end.55, %if.end.51, %if.end.47, %if.end.43, %if.end.39, %if.end.35, %if.end.31, %if.end.27, %if.end.23, %if.end.19, %if.end.15, %if.end.11, %if.end.7, %if.end.3, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.end.3 ], [ null, %if.end.7 ], [ null, %if.end.11 ], [ null, %if.end.15 ], [ null, %if.end.19 ], [ null, %if.end.23 ], [ null, %if.end.27 ], [ null, %if.end.31 ], [ null, %if.end.35 ], [ null, %if.end.39 ], [ null, %if.end.43 ], [ null, %if.end.47 ], [ null, %if.end.51 ], [ null, %if.end.55 ], [ null, %if.end.59 ], [ null, %if.end.63 ], [ null, %if.end.67 ], [ null, %if.end.71 ], [ null, %if.end.75 ], [ null, %if.end.79 ], [ null, %if.end.83 ], [ null, %if.end.87 ], [ null, %if.end.91 ], [ null, %if.end.95 ], [ null, %if.end.99 ], [ null, %if.end.103 ], [ null, %if.end.107 ], [ null, %if.end.111 ], [ null, %if.end.115 ], [ null, %if.end.119 ], [ null, %if.end.123 ], [ null, %if.end.127 ], [ null, %if.end.131 ], [ null, %if.end.135 ], [ null, %if.end.139 ], [ null, %if.end.143 ], [ null, %if.end.147 ], [ null, %if.end.151 ], [ null, %if.end.155 ], [ null, %if.end.159 ], [ null, %if.end.163 ], [ null, %if.end.167 ], [ null, %if.end.171 ], [ null, %if.end.175 ], [ null, %if.end.179 ], [ null, %if.end.183 ], [ null, %if.end.187 ], [ null, %if.end.191 ], [ null, %if.end.195 ], [ %call., %if.end.199 ]
  ret %struct._object* %retval.0, !dbg !679
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISDIR(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !354, metadata !521), !dbg !680
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !355, metadata !521), !dbg !680
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !681
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !683
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !684
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !685
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !687

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !688
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !688
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !690

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !691
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !693
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !694

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !695, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !701
  br label %land.lhs.true, !dbg !702

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !356, metadata !521), !dbg !680
  %cmp = icmp eq i32 %conv.i, -1, !dbg !704
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !704

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !706
  %tobool = icmp eq %struct._object* %call1, null, !dbg !706
  br i1 %tobool, label %if.end, label %cleanup, !dbg !680

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !708
  %cmp2 = icmp eq i32 %and, 16384, !dbg !708
  %conv3 = zext i1 %cmp2 to i64, !dbg !708
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !708
  br label %cleanup, !dbg !680

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !711
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISCHR(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !366, metadata !521), !dbg !714
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !367, metadata !521), !dbg !714
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !715
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !717
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !718
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !719
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !720

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !721
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !721
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !722

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !723
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !724
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !725

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !726, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !727
  br label %land.lhs.true, !dbg !728

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !729
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !368, metadata !521), !dbg !714
  %cmp = icmp eq i32 %conv.i, -1, !dbg !730
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !730

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !732
  %tobool = icmp eq %struct._object* %call1, null, !dbg !732
  br i1 %tobool, label %if.end, label %cleanup, !dbg !714

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !734
  %cmp2 = icmp eq i32 %and, 8192, !dbg !734
  %conv3 = zext i1 %cmp2 to i64, !dbg !734
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !734
  br label %cleanup, !dbg !714

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !737
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISBLK(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !371, metadata !521), !dbg !740
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !372, metadata !521), !dbg !740
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !741
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !743
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !744
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !745
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !746

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !747
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !747
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !748

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !749
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !750
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !751

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !752, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !753
  br label %land.lhs.true, !dbg !754

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !755
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !373, metadata !521), !dbg !740
  %cmp = icmp eq i32 %conv.i, -1, !dbg !756
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !756

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !758
  %tobool = icmp eq %struct._object* %call1, null, !dbg !758
  br i1 %tobool, label %if.end, label %cleanup, !dbg !740

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !760
  %cmp2 = icmp eq i32 %and, 24576, !dbg !760
  %conv3 = zext i1 %cmp2 to i64, !dbg !760
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !760
  br label %cleanup, !dbg !740

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !763
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISREG(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !376, metadata !521), !dbg !766
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !377, metadata !521), !dbg !766
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !767
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !770
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !771
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !772

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !773
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !773
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !774

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !775
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !776
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !777

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !778, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !779
  br label %land.lhs.true, !dbg !780

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !378, metadata !521), !dbg !766
  %cmp = icmp eq i32 %conv.i, -1, !dbg !782
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !782

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !784
  %tobool = icmp eq %struct._object* %call1, null, !dbg !784
  br i1 %tobool, label %if.end, label %cleanup, !dbg !766

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !786
  %cmp2 = icmp eq i32 %and, 32768, !dbg !786
  %conv3 = zext i1 %cmp2 to i64, !dbg !786
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !786
  br label %cleanup, !dbg !766

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !789
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISFIFO(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !381, metadata !521), !dbg !792
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !382, metadata !521), !dbg !792
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !793
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !795
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !796
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !797
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !798

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !799
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !799
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !800

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !801
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !802
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !803

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !804, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !805
  br label %land.lhs.true, !dbg !806

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !383, metadata !521), !dbg !792
  %cmp = icmp eq i32 %conv.i, -1, !dbg !808
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !808

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !810
  %tobool = icmp eq %struct._object* %call1, null, !dbg !810
  br i1 %tobool, label %if.end, label %cleanup, !dbg !792

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !812
  %cmp2 = icmp eq i32 %and, 4096, !dbg !812
  %conv3 = zext i1 %cmp2 to i64, !dbg !812
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !812
  br label %cleanup, !dbg !792

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !815
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISLNK(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !386, metadata !521), !dbg !818
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !387, metadata !521), !dbg !818
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !819
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !821
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !822
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !823
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !824

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !825
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !825
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !826

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !827
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !828
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !829

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !830, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !831
  br label %land.lhs.true, !dbg !832

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !388, metadata !521), !dbg !818
  %cmp = icmp eq i32 %conv.i, -1, !dbg !834
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !834

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !836
  %tobool = icmp eq %struct._object* %call1, null, !dbg !836
  br i1 %tobool, label %if.end, label %cleanup, !dbg !818

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !838
  %cmp2 = icmp eq i32 %and, 40960, !dbg !838
  %conv3 = zext i1 %cmp2 to i64, !dbg !838
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !838
  br label %cleanup, !dbg !818

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !841
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISSOCK(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !391, metadata !521), !dbg !844
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !392, metadata !521), !dbg !844
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !845
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !847
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !848
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !849
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !850

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !851
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !851
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !852

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !853
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !854
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !855

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !856, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !857
  br label %land.lhs.true, !dbg !858

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !859
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !393, metadata !521), !dbg !844
  %cmp = icmp eq i32 %conv.i, -1, !dbg !860
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !860

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !862
  %tobool = icmp eq %struct._object* %call1, null, !dbg !862
  br i1 %tobool, label %if.end, label %cleanup, !dbg !844

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i8 = phi i32 [ -1, %land.lhs.true ], [ %conv.i, %_PyLong_AsMode_t.exit ]
  %and = and i32 %retval.0.i8, 61440, !dbg !864
  %cmp2 = icmp eq i32 %and, 49152, !dbg !864
  %conv3 = zext i1 %cmp2 to i64, !dbg !864
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !864
  br label %cleanup, !dbg !844

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call4, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !867
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISDOOR(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !396, metadata !521), !dbg !870
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !397, metadata !521), !dbg !870
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !871
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !873
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !874
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !875
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !876

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !877
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !877
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !878

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !879
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !880
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !881

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !882, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !883
  br label %land.lhs.true, !dbg !884

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !885
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !398, metadata !521), !dbg !870
  %cmp = icmp eq i32 %conv.i, -1, !dbg !886
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !886

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !888
  %tobool = icmp eq %struct._object* %call1, null, !dbg !888
  br i1 %tobool, label %if.end, label %cleanup, !dbg !870

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %call2 = tail call %struct._object* @PyBool_FromLong(i64 0) #1, !dbg !890
  br label %cleanup, !dbg !870

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISPORT(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !401, metadata !521), !dbg !896
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !402, metadata !521), !dbg !896
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !897
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !899
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !900
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !901
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !902

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !903
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !903
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !904

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !905
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !906
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !907

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !908, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !909
  br label %land.lhs.true, !dbg !910

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !403, metadata !521), !dbg !896
  %cmp = icmp eq i32 %conv.i, -1, !dbg !912
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !912

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !914
  %tobool = icmp eq %struct._object* %call1, null, !dbg !914
  br i1 %tobool, label %if.end, label %cleanup, !dbg !896

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %call2 = tail call %struct._object* @PyBool_FromLong(i64 0) #1, !dbg !916
  br label %cleanup, !dbg !896

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !919
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISWHT(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !406, metadata !521), !dbg !922
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !407, metadata !521), !dbg !922
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !923
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !925
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !926
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !927
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !928

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !929
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !929
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !930

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !931
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !932
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !933

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !934, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !935
  br label %land.lhs.true, !dbg !936

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !408, metadata !521), !dbg !922
  %cmp = icmp eq i32 %conv.i, -1, !dbg !938
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !938

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !940
  %tobool = icmp eq %struct._object* %call1, null, !dbg !940
  br i1 %tobool, label %if.end, label %cleanup, !dbg !922

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %call2 = tail call %struct._object* @PyBool_FromLong(i64 0) #1, !dbg !942
  br label %cleanup, !dbg !922

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !945
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IMODE(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !411, metadata !521), !dbg !948
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !412, metadata !521), !dbg !949
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !950
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !952
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !953
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !954
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !955

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !956
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !956
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !957

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !958
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !959
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !960

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !961, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !962
  br label %land.lhs.true, !dbg !963

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !413, metadata !521), !dbg !965
  %cmp = icmp eq i32 %conv.i, -1, !dbg !966
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !968

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !969
  %tobool = icmp eq %struct._object* %call1, null, !dbg !969
  br i1 %tobool, label %if.end, label %cleanup, !dbg !971

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i6 = phi i64 [ 4294967295, %land.lhs.true ], [ %call.i, %_PyLong_AsMode_t.exit ]
  %and = and i64 %retval.0.i6, 4095, !dbg !972
  %call2 = tail call %struct._object* @PyLong_FromUnsignedLong(i64 %and) #1, !dbg !973
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !975
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IFMT(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !416, metadata !521), !dbg !976
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !417, metadata !521), !dbg !977
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !978
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !980
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !981
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !982
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !983

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !984
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !984
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !985

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !986
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !987
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !988

if.then.5.i:                                      ; preds = %if.end.i
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !989, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !990
  br label %land.lhs.true, !dbg !991

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !418, metadata !521), !dbg !993
  %cmp = icmp eq i32 %conv.i, -1, !dbg !994
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !996

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !997
  %tobool = icmp eq %struct._object* %call1, null, !dbg !997
  br i1 %tobool, label %if.end, label %cleanup, !dbg !999

if.end:                                           ; preds = %land.lhs.true, %_PyLong_AsMode_t.exit
  %retval.0.i6 = phi i64 [ 4294967295, %land.lhs.true ], [ %call.i, %_PyLong_AsMode_t.exit ]
  %and = and i64 %retval.0.i6, 61440, !dbg !1000
  %call2 = tail call %struct._object* @PyLong_FromUnsignedLong(i64 %and) #1, !dbg !1001
  br label %cleanup, !dbg !1002

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !1003
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_filemode(%struct._object* nocapture readnone %self, %struct._object* %omode) #0 {
entry:
  %buf = alloca [10 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !421, metadata !521), !dbg !1004
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !422, metadata !521), !dbg !1005
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0, !dbg !1006
  call void @llvm.lifetime.start(i64 10, i8* %0) #1, !dbg !1006
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %buf, metadata !423, metadata !521), !dbg !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %omode, i64 0, metadata !361, metadata !521) #1, !dbg !1008
  %call.i = tail call i64 @PyLong_AsUnsignedLong(%struct._object* %omode) #1, !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !362, metadata !521) #1, !dbg !1011
  %cmp.i = icmp eq i64 %call.i, -1, !dbg !1012
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !1013

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1014
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !1014
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true, !dbg !1015

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %conv2.i = and i64 %call.i, 4294967295, !dbg !1016
  %cmp3.i = icmp eq i64 %conv2.i, %call.i, !dbg !1017
  br i1 %cmp3.i, label %_PyLong_AsMode_t.exit, label %if.then.5.i, !dbg !1018

if.then.5.i:                                      ; preds = %if.end.i
  %1 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1019, !tbaa !697
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !1020
  br label %land.lhs.true, !dbg !1021

_PyLong_AsMode_t.exit:                            ; preds = %if.end.i
  %conv.i = trunc i64 %call.i to i32, !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !427, metadata !521), !dbg !1023
  %cmp = icmp eq i32 %conv.i, -1, !dbg !1024
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1026

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.then.5.i, %_PyLong_AsMode_t.exit
  %call1 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1027
  %tobool = icmp eq %struct._object* %call1, null, !dbg !1027
  br i1 %tobool, label %if.end.24.i, label %cleanup, !dbg !1029

if.end:                                           ; preds = %_PyLong_AsMode_t.exit
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !432, metadata !521), !dbg !1030
  %and.i = and i32 %conv.i, 61440, !dbg !1032
  switch i32 %and.i, label %if.end.24.i [
    i32 32768, label %filetype.exit
    i32 16384, label %if.then.3.i
    i32 40960, label %if.then.7.i
    i32 24576, label %if.then.11.i
    i32 8192, label %if.then.15.i
    i32 4096, label %if.then.19.i
    i32 49152, label %if.then.23.i
  ], !dbg !1034

if.then.3.i:                                      ; preds = %if.end
  br label %filetype.exit, !dbg !1035

if.then.7.i:                                      ; preds = %if.end
  br label %filetype.exit, !dbg !1038

if.then.11.i:                                     ; preds = %if.end
  br label %filetype.exit, !dbg !1041

if.then.15.i:                                     ; preds = %if.end
  br label %filetype.exit, !dbg !1044

if.then.19.i:                                     ; preds = %if.end
  br label %filetype.exit, !dbg !1047

if.then.23.i:                                     ; preds = %if.end
  br label %filetype.exit, !dbg !1050

if.end.24.i:                                      ; preds = %land.lhs.true, %if.end
  %retval.0.i1418 = phi i32 [ %conv.i, %if.end ], [ -1, %land.lhs.true ]
  br label %filetype.exit, !dbg !1053

filetype.exit:                                    ; preds = %if.end, %if.then.3.i, %if.then.7.i, %if.then.11.i, %if.then.15.i, %if.then.19.i, %if.then.23.i, %if.end.24.i
  %retval.0.i1417 = phi i32 [ %conv.i, %if.then.3.i ], [ %conv.i, %if.then.7.i ], [ %conv.i, %if.then.11.i ], [ %conv.i, %if.then.15.i ], [ %conv.i, %if.then.19.i ], [ %conv.i, %if.then.23.i ], [ %retval.0.i1418, %if.end.24.i ], [ %conv.i, %if.end ]
  %retval.0.i.9 = phi i8 [ 100, %if.then.3.i ], [ 108, %if.then.7.i ], [ 98, %if.then.11.i ], [ 99, %if.then.15.i ], [ 112, %if.then.19.i ], [ 115, %if.then.23.i ], [ 63, %if.end.24.i ], [ 45, %if.end ], !dbg !1054
  store i8 %retval.0.i.9, i8* %0, align 1, !dbg !1055, !tbaa !1056
  %arrayidx3 = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 1, !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !437, metadata !521), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %arrayidx3, i64 0, metadata !438, metadata !521), !dbg !1060
  %and.i.10 = and i32 %retval.0.i1417, 256, !dbg !1061
  %tobool.i.11 = icmp ne i32 %and.i.10, 0, !dbg !1062
  %conv.i.12 = select i1 %tobool.i.11, i8 114, i8 45, !dbg !1062
  store i8 %conv.i.12, i8* %arrayidx3, align 1, !dbg !1063, !tbaa !1056
  %and1.i = and i32 %retval.0.i1417, 128, !dbg !1064
  %tobool2.i = icmp ne i32 %and1.i, 0, !dbg !1065
  %conv4.i = select i1 %tobool2.i, i8 119, i8 45, !dbg !1065
  %arrayidx5.i = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 2, !dbg !1066
  store i8 %conv4.i, i8* %arrayidx5.i, align 1, !dbg !1067, !tbaa !1056
  %and6.i = and i32 %retval.0.i1417, 2048, !dbg !1068
  %tobool7.i = icmp eq i32 %and6.i, 0, !dbg !1068
  %and8.i = and i32 %retval.0.i1417, 64, !dbg !1070
  %tobool9.i = icmp ne i32 %and8.i, 0, !dbg !1072
  %conv16.i = select i1 %tobool9.i, i8 120, i8 45, !dbg !1073
  %2 = lshr exact i32 %and8.i, 1, !dbg !1072
  %3 = or i32 %2, 83, !dbg !1072
  %conv11.i = trunc i32 %3 to i8, !dbg !1072
  %conv11.sink.i = select i1 %tobool7.i, i8 %conv16.i, i8 %conv11.i, !dbg !1075
  %4 = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 3, !dbg !1076
  store i8 %conv11.sink.i, i8* %4, align 1, !dbg !1077
  %and18.i = and i32 %retval.0.i1417, 32, !dbg !1078
  %tobool19.i = icmp ne i32 %and18.i, 0, !dbg !1079
  %conv21.i = select i1 %tobool19.i, i8 114, i8 45, !dbg !1079
  %arrayidx22.i = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 4, !dbg !1080
  store i8 %conv21.i, i8* %arrayidx22.i, align 1, !dbg !1081, !tbaa !1056
  %and23.i = and i32 %retval.0.i1417, 16, !dbg !1082
  %tobool24.i = icmp ne i32 %and23.i, 0, !dbg !1083
  %conv26.i = select i1 %tobool24.i, i8 119, i8 45, !dbg !1083
  %arrayidx27.i = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 5, !dbg !1084
  store i8 %conv26.i, i8* %arrayidx27.i, align 1, !dbg !1085, !tbaa !1056
  %and28.i = and i32 %retval.0.i1417, 1024, !dbg !1086
  %tobool29.i = icmp eq i32 %and28.i, 0, !dbg !1086
  %and31.i = and i32 %retval.0.i1417, 8, !dbg !1088
  %tobool32.i = icmp ne i32 %and31.i, 0, !dbg !1090
  %conv40.i = select i1 %tobool32.i, i8 120, i8 45, !dbg !1091
  %5 = shl nuw nsw i32 %and31.i, 2, !dbg !1090
  %6 = or i32 %5, 83, !dbg !1090
  %conv34.i = trunc i32 %6 to i8, !dbg !1090
  %conv34.sink.i = select i1 %tobool29.i, i8 %conv40.i, i8 %conv34.i, !dbg !1093
  %7 = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 6, !dbg !1094
  store i8 %conv34.sink.i, i8* %7, align 1, !dbg !1095
  %and43.i = and i32 %retval.0.i1417, 4, !dbg !1096
  %tobool44.i = icmp ne i32 %and43.i, 0, !dbg !1097
  %conv46.i = select i1 %tobool44.i, i8 114, i8 45, !dbg !1097
  %arrayidx47.i = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 7, !dbg !1098
  store i8 %conv46.i, i8* %arrayidx47.i, align 1, !dbg !1099, !tbaa !1056
  %and48.i = and i32 %retval.0.i1417, 2, !dbg !1100
  %tobool49.i = icmp ne i32 %and48.i, 0, !dbg !1101
  %conv51.i = select i1 %tobool49.i, i8 119, i8 45, !dbg !1101
  %arrayidx52.i = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 8, !dbg !1102
  store i8 %conv51.i, i8* %arrayidx52.i, align 1, !dbg !1103, !tbaa !1056
  %and53.i = and i32 %retval.0.i1417, 512, !dbg !1104
  %tobool54.i = icmp eq i32 %and53.i, 0, !dbg !1104
  %and56.i = and i32 %retval.0.i1417, 1, !dbg !1106
  %tobool57.i = icmp ne i32 %and56.i, 0, !dbg !1108
  %conv65.i = select i1 %tobool57.i, i8 120, i8 45, !dbg !1109
  %8 = shl nuw nsw i32 %and56.i, 5, !dbg !1108
  %9 = or i32 %8, 84, !dbg !1108
  %conv59.i = trunc i32 %9 to i8, !dbg !1108
  %conv59.sink.i = select i1 %tobool54.i, i8 %conv65.i, i8 %conv59.i, !dbg !1111
  %10 = getelementptr [10 x i8], [10 x i8]* %buf, i64 0, i64 9, !dbg !1112
  store i8 %conv59.sink.i, i8* %10, align 1, !dbg !1113
  %call4 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %0, i64 10) #1, !dbg !1114
  br label %cleanup, !dbg !1115

cleanup:                                          ; preds = %land.lhs.true, %filetype.exit
  %retval.0 = phi %struct._object* [ %call4, %filetype.exit ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 10, i8* %0) #1, !dbg !1116
  ret %struct._object* %retval.0, !dbg !1116
}

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!517, !518}
!llvm.ident = !{!519}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11, globals: !439)
!1 = !DIFile(filename: "./Modules/_stat.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !6, line: 70, baseType: !7)
!6 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !8, line: 138, baseType: !9)
!8 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !{!12, !352, !357, !364, !369, !374, !379, !384, !389, !394, !399, !404, !409, !414, !419, !428, !433}
!12 = !DISubprogram(name: "PyInit__stat", scope: !1, file: !1, line: 492, type: !13, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__stat, variables: !350)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !17, line: 109, baseType: !18)
!17 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !17, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !17, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !8, line: 181, baseType: !26)
!26 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !17, line: 108, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !17, line: 334, size: 3200, align: 64, elements: !30)
!30 = !{!31, !37, !41, !42, !43, !48, !110, !115, !120, !121, !126, !178, !209, !221, !227, !228, !229, !231, !233, !264, !265, !266, !275, !276, !281, !282, !284, !286, !296, !299, !317, !318, !319, !321, !323, !324, !326, !331, !336, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !29, file: !17, line: 335, baseType: !32, size: 192, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !17, line: 114, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 111, size: 192, align: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !33, file: !17, line: 112, baseType: !16, size: 128, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !33, file: !17, line: 113, baseType: !21, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !29, file: !17, line: 336, baseType: !38, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !29, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !29, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !29, file: !17, line: 341, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !17, line: 308, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !15}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !29, file: !17, line: 342, baseType: !49, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !17, line: 314, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !15, !54, !53}
!53 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 48, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 246, size: 1728, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!58 = !{!59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !80, !81, !82, !83, !85, !87, !89, !93, !96, !98, !99, !100, !101, !102, !105, !106}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 247, baseType: !53, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 252, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 253, baseType: !61, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 254, baseType: !61, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 255, baseType: !61, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 256, baseType: !61, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 257, baseType: !61, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 258, baseType: !61, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 259, baseType: !61, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 261, baseType: !61, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 262, baseType: !61, size: 64, align: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 263, baseType: !61, size: 64, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 265, baseType: !73, size: 64, align: 64, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 161, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !79}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !74, file: !57, line: 162, baseType: !73, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !74, file: !57, line: 163, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !74, file: !57, line: 167, baseType: !53, size: 32, align: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 267, baseType: !78, size: 64, align: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 269, baseType: !53, size: 32, align: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 273, baseType: !53, size: 32, align: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 275, baseType: !84, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !8, line: 140, baseType: !26)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 279, baseType: !86, size: 16, align: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 280, baseType: !88, size: 8, align: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 281, baseType: !90, size: 8, align: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 285, baseType: !94, size: 64, align: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 155, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 294, baseType: !97, size: 64, align: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !8, line: 141, baseType: !26)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !56, file: !57, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !56, file: !57, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !56, file: !57, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !56, file: !57, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 307, baseType: !103, size: 64, align: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 62, baseType: !10)
!104 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 309, baseType: !53, size: 32, align: 32, offset: 1536)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 311, baseType: !107, size: 160, align: 8, offset: 1568)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 20)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !29, file: !17, line: 343, baseType: !111, size: 64, align: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !17, line: 316, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!15, !15, !61}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !29, file: !17, line: 344, baseType: !116, size: 64, align: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !17, line: 318, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!53, !15, !61, !15}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !29, file: !17, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !29, file: !17, line: 346, baseType: !122, size: 64, align: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !17, line: 320, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!15, !15}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !29, file: !17, line: 350, baseType: !127, size: 64, align: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !17, line: 278, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 236, size: 2176, align: 64, elements: !130)
!130 = !{!131, !136, !137, !138, !139, !140, !145, !147, !148, !149, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !129, file: !17, line: 241, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !17, line: 166, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!15, !15, !15}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !129, file: !17, line: 242, baseType: !132, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !129, file: !17, line: 243, baseType: !132, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !129, file: !17, line: 244, baseType: !132, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !129, file: !17, line: 245, baseType: !132, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !129, file: !17, line: 246, baseType: !141, size: 64, align: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !17, line: 167, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!15, !15, !15, !15}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !129, file: !17, line: 247, baseType: !146, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !17, line: 165, baseType: !123)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !129, file: !17, line: 248, baseType: !146, size: 64, align: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !129, file: !17, line: 249, baseType: !146, size: 64, align: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !129, file: !17, line: 250, baseType: !150, size: 64, align: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !17, line: 168, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!53, !15}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !129, file: !17, line: 251, baseType: !146, size: 64, align: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !129, file: !17, line: 252, baseType: !132, size: 64, align: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !129, file: !17, line: 253, baseType: !132, size: 64, align: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !129, file: !17, line: 254, baseType: !132, size: 64, align: 64, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !129, file: !17, line: 255, baseType: !132, size: 64, align: 64, offset: 896)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !129, file: !17, line: 256, baseType: !132, size: 64, align: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !129, file: !17, line: 257, baseType: !146, size: 64, align: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !129, file: !17, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !129, file: !17, line: 259, baseType: !146, size: 64, align: 64, offset: 1152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !129, file: !17, line: 261, baseType: !132, size: 64, align: 64, offset: 1216)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !129, file: !17, line: 262, baseType: !132, size: 64, align: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !129, file: !17, line: 263, baseType: !132, size: 64, align: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !129, file: !17, line: 264, baseType: !132, size: 64, align: 64, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !129, file: !17, line: 265, baseType: !141, size: 64, align: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !129, file: !17, line: 266, baseType: !132, size: 64, align: 64, offset: 1536)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !129, file: !17, line: 267, baseType: !132, size: 64, align: 64, offset: 1600)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !129, file: !17, line: 268, baseType: !132, size: 64, align: 64, offset: 1664)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !129, file: !17, line: 269, baseType: !132, size: 64, align: 64, offset: 1728)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !129, file: !17, line: 270, baseType: !132, size: 64, align: 64, offset: 1792)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !129, file: !17, line: 272, baseType: !132, size: 64, align: 64, offset: 1856)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !129, file: !17, line: 273, baseType: !132, size: 64, align: 64, offset: 1920)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !129, file: !17, line: 274, baseType: !132, size: 64, align: 64, offset: 1984)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !129, file: !17, line: 275, baseType: !132, size: 64, align: 64, offset: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !129, file: !17, line: 277, baseType: !146, size: 64, align: 64, offset: 2112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !29, file: !17, line: 351, baseType: !179, size: 64, align: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !17, line: 292, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 280, size: 640, align: 64, elements: !182)
!182 = !{!183, !188, !189, !194, !195, !196, !201, !202, !207, !208}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !181, file: !17, line: 281, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !17, line: 169, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!21, !15}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !181, file: !17, line: 282, baseType: !132, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !181, file: !17, line: 283, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !17, line: 170, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!15, !15, !21}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !181, file: !17, line: 284, baseType: !190, size: 64, align: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !181, file: !17, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !181, file: !17, line: 286, baseType: !197, size: 64, align: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !17, line: 172, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!53, !15, !21, !15}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !181, file: !17, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !181, file: !17, line: 288, baseType: !203, size: 64, align: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !17, line: 231, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!53, !15, !15}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !181, file: !17, line: 290, baseType: !132, size: 64, align: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !181, file: !17, line: 291, baseType: !190, size: 64, align: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !29, file: !17, line: 352, baseType: !210, size: 64, align: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !17, line: 298, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 294, size: 192, align: 64, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !212, file: !17, line: 295, baseType: !184, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !212, file: !17, line: 296, baseType: !132, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !212, file: !17, line: 297, baseType: !217, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !17, line: 174, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!53, !15, !15, !15}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !29, file: !17, line: 356, baseType: !222, size: 64, align: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !17, line: 321, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !15}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !22, line: 186, baseType: !21)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !29, file: !17, line: 357, baseType: !141, size: 64, align: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !29, file: !17, line: 358, baseType: !122, size: 64, align: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !29, file: !17, line: 359, baseType: !230, size: 64, align: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !17, line: 317, baseType: !133)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !29, file: !17, line: 360, baseType: !232, size: 64, align: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !17, line: 319, baseType: !218)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !29, file: !17, line: 363, baseType: !234, size: 64, align: 64, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !17, line: 304, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 301, size: 128, align: 64, elements: !237)
!237 = !{!238, !259}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !236, file: !17, line: 302, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !17, line: 193, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!53, !15, !243, !53}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !17, line: 191, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !17, line: 178, size: 640, align: 64, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !256, !257, !258}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !17, line: 179, baseType: !4, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !245, file: !17, line: 180, baseType: !15, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !245, file: !17, line: 181, baseType: !21, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !245, file: !17, line: 182, baseType: !21, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !245, file: !17, line: 184, baseType: !53, size: 32, align: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !245, file: !17, line: 185, baseType: !53, size: 32, align: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !245, file: !17, line: 186, baseType: !61, size: 64, align: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !245, file: !17, line: 187, baseType: !255, size: 64, align: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !245, file: !17, line: 188, baseType: !255, size: 64, align: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !245, file: !17, line: 189, baseType: !255, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !245, file: !17, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !236, file: !17, line: 303, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !17, line: 194, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !15, !243}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !29, file: !17, line: 366, baseType: !10, size: 64, align: 64, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !29, file: !17, line: 368, baseType: !38, size: 64, align: 64, offset: 1408)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !29, file: !17, line: 372, baseType: !267, size: 64, align: 64, offset: 1472)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !17, line: 233, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!53, !15, !271, !4}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !17, line: 232, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!53, !15, !4}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !29, file: !17, line: 375, baseType: !150, size: 64, align: 64, offset: 1536)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !29, file: !17, line: 379, baseType: !277, size: 64, align: 64, offset: 1600)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !17, line: 322, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!15, !15, !15, !53}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !29, file: !17, line: 382, baseType: !21, size: 64, align: 64, offset: 1664)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !29, file: !17, line: 385, baseType: !283, size: 64, align: 64, offset: 1728)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !17, line: 323, baseType: !123)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !29, file: !17, line: 386, baseType: !285, size: 64, align: 64, offset: 1792)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !17, line: 324, baseType: !123)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !29, file: !17, line: 389, baseType: !287, size: 64, align: 64, offset: 1856)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !289, line: 40, size: 256, align: 64, elements: !290)
!289 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!290 = !{!291, !292, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !288, file: !289, line: 41, baseType: !38, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !288, file: !289, line: 42, baseType: !293, size: 64, align: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !289, line: 18, baseType: !133)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !288, file: !289, line: 43, baseType: !53, size: 32, align: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !288, file: !289, line: 45, baseType: !38, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !29, file: !17, line: 390, baseType: !297, size: 64, align: 64, offset: 1920)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !17, line: 390, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !29, file: !17, line: 391, baseType: !300, size: 64, align: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !302, line: 11, size: 320, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!303 = !{!304, !305, !310, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !302, line: 12, baseType: !61, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !301, file: !302, line: 13, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !302, line: 8, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!15, !15, !4}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !301, file: !302, line: 14, baseType: !311, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !302, line: 9, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!53, !15, !15, !4}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !301, file: !302, line: 15, baseType: !61, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !301, file: !302, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !29, file: !17, line: 392, baseType: !28, size: 64, align: 64, offset: 2048)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !29, file: !17, line: 393, baseType: !15, size: 64, align: 64, offset: 2112)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !29, file: !17, line: 394, baseType: !320, size: 64, align: 64, offset: 2176)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !17, line: 325, baseType: !142)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !29, file: !17, line: 395, baseType: !322, size: 64, align: 64, offset: 2240)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !17, line: 326, baseType: !218)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !29, file: !17, line: 396, baseType: !21, size: 64, align: 64, offset: 2304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !29, file: !17, line: 397, baseType: !325, size: 64, align: 64, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !17, line: 327, baseType: !218)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !29, file: !17, line: 398, baseType: !327, size: 64, align: 64, offset: 2432)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !17, line: 329, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!15, !28, !21}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !29, file: !17, line: 399, baseType: !332, size: 64, align: 64, offset: 2496)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !17, line: 328, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!15, !28, !15, !15}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !29, file: !17, line: 400, baseType: !337, size: 64, align: 64, offset: 2560)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !17, line: 307, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !4}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !29, file: !17, line: 401, baseType: !150, size: 64, align: 64, offset: 2624)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !29, file: !17, line: 402, baseType: !15, size: 64, align: 64, offset: 2688)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !29, file: !17, line: 403, baseType: !15, size: 64, align: 64, offset: 2752)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !29, file: !17, line: 404, baseType: !15, size: 64, align: 64, offset: 2816)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !29, file: !17, line: 405, baseType: !15, size: 64, align: 64, offset: 2880)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !29, file: !17, line: 406, baseType: !15, size: 64, align: 64, offset: 2944)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !29, file: !17, line: 407, baseType: !44, size: 64, align: 64, offset: 3008)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !29, file: !17, line: 410, baseType: !9, size: 32, align: 32, offset: 3072)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !29, file: !17, line: 412, baseType: !44, size: 64, align: 64, offset: 3136)
!350 = !{!351}
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !12, file: !1, line: 494, type: !15)
!352 = !DISubprogram(name: "stat_S_ISDIR", scope: !1, file: !1, line: 265, type: !134, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDIR, variables: !353)
!353 = !{!354, !355, !356}
!354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !352, file: !1, line: 265, type: !15)
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !352, file: !1, line: 265, type: !15)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !352, file: !1, line: 265, type: !5)
!357 = !DISubprogram(name: "_PyLong_AsMode_t", scope: !1, file: !1, line: 236, type: !358, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, variables: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!5, !15}
!360 = !{!361, !362, !363}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !357, file: !1, line: 236, type: !15)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !357, file: !1, line: 238, type: !10)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !357, file: !1, line: 239, type: !5)
!364 = !DISubprogram(name: "stat_S_ISCHR", scope: !1, file: !1, line: 269, type: !134, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISCHR, variables: !365)
!365 = !{!366, !367, !368}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !364, file: !1, line: 269, type: !15)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !364, file: !1, line: 269, type: !15)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !364, file: !1, line: 269, type: !5)
!369 = !DISubprogram(name: "stat_S_ISBLK", scope: !1, file: !1, line: 273, type: !134, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISBLK, variables: !370)
!370 = !{!371, !372, !373}
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !369, file: !1, line: 273, type: !15)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !369, file: !1, line: 273, type: !15)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !369, file: !1, line: 273, type: !5)
!374 = !DISubprogram(name: "stat_S_ISREG", scope: !1, file: !1, line: 277, type: !134, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISREG, variables: !375)
!375 = !{!376, !377, !378}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !374, file: !1, line: 277, type: !15)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !374, file: !1, line: 277, type: !15)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !374, file: !1, line: 277, type: !5)
!379 = !DISubprogram(name: "stat_S_ISFIFO", scope: !1, file: !1, line: 281, type: !134, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISFIFO, variables: !380)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !379, file: !1, line: 281, type: !15)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !379, file: !1, line: 281, type: !15)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !379, file: !1, line: 281, type: !5)
!384 = !DISubprogram(name: "stat_S_ISLNK", scope: !1, file: !1, line: 285, type: !134, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISLNK, variables: !385)
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !384, file: !1, line: 285, type: !15)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !384, file: !1, line: 285, type: !15)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !384, file: !1, line: 285, type: !5)
!389 = !DISubprogram(name: "stat_S_ISSOCK", scope: !1, file: !1, line: 289, type: !134, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISSOCK, variables: !390)
!390 = !{!391, !392, !393}
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !389, file: !1, line: 289, type: !15)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !389, file: !1, line: 289, type: !15)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !389, file: !1, line: 289, type: !5)
!394 = !DISubprogram(name: "stat_S_ISDOOR", scope: !1, file: !1, line: 293, type: !134, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDOOR, variables: !395)
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !394, file: !1, line: 293, type: !15)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !394, file: !1, line: 293, type: !15)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !394, file: !1, line: 293, type: !5)
!399 = !DISubprogram(name: "stat_S_ISPORT", scope: !1, file: !1, line: 297, type: !134, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISPORT, variables: !400)
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !399, file: !1, line: 297, type: !15)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !399, file: !1, line: 297, type: !15)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !399, file: !1, line: 297, type: !5)
!404 = !DISubprogram(name: "stat_S_ISWHT", scope: !1, file: !1, line: 301, type: !134, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISWHT, variables: !405)
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !404, file: !1, line: 301, type: !15)
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !404, file: !1, line: 301, type: !15)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !404, file: !1, line: 301, type: !5)
!409 = !DISubprogram(name: "stat_S_IMODE", scope: !1, file: !1, line: 310, type: !134, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_IMODE, variables: !410)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !1, line: 310, type: !15)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !409, file: !1, line: 310, type: !15)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !409, file: !1, line: 312, type: !5)
!414 = !DISubprogram(name: "stat_S_IFMT", scope: !1, file: !1, line: 323, type: !134, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_IFMT, variables: !415)
!415 = !{!416, !417, !418}
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !414, file: !1, line: 323, type: !15)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !414, file: !1, line: 323, type: !15)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !414, file: !1, line: 325, type: !5)
!419 = !DISubprogram(name: "stat_filemode", scope: !1, file: !1, line: 384, type: !134, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_filemode, variables: !420)
!420 = !{!421, !422, !423, !427}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !419, file: !1, line: 384, type: !15)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !419, file: !1, line: 384, type: !15)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !419, file: !1, line: 386, type: !424)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 80, align: 8, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 10)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !419, file: !1, line: 387, type: !5)
!428 = !DISubprogram(name: "filetype", scope: !1, file: !1, line: 335, type: !429, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!40, !5}
!431 = !{!432}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 1, scope: !428, file: !1, line: 335, type: !5)
!433 = !DISubprogram(name: "fileperm", scope: !1, file: !1, line: 355, type: !434, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, variables: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !5, !61}
!436 = !{!437, !438}
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 1, scope: !433, file: !1, line: 355, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !433, file: !1, line: 355, type: !61)
!439 = !{!440, !463, !467, !471, !475, !479, !483, !487, !491, !495, !499, !503, !504, !508, !512, !513}
!440 = !DIGlobalVariable(name: "statmodule", scope: !0, file: !1, line: 479, type: !441, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @statmodule)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !442, line: 47, size: 832, align: 64, elements: !443)
!442 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!443 = !{!444, !453, !454, !455, !456, !459, !460, !461, !462}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !441, file: !442, line: 48, baseType: !445, size: 320, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !442, line: 38, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !442, line: 33, size: 320, align: 64, elements: !447)
!447 = !{!448, !449, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !446, file: !442, line: 34, baseType: !16, size: 128, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !446, file: !442, line: 35, baseType: !450, size: 64, align: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !446, file: !442, line: 36, baseType: !21, size: 64, align: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !446, file: !442, line: 37, baseType: !15, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !441, file: !442, line: 49, baseType: !38, size: 64, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !441, file: !442, line: 50, baseType: !38, size: 64, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !441, file: !442, line: 51, baseType: !21, size: 64, align: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !441, file: !442, line: 52, baseType: !457, size: 64, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !289, line: 47, baseType: !288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !441, file: !442, line: 53, baseType: !150, size: 64, align: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !441, file: !442, line: 54, baseType: !267, size: 64, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !441, file: !442, line: 55, baseType: !150, size: 64, align: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !441, file: !442, line: 56, baseType: !337, size: 64, align: 64, offset: 768)
!463 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 417, type: !464, isLocal: true, isDefinition: true, variable: [1383 x i8]* @module_doc)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 11064, align: 8, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 1383)
!467 = !DIGlobalVariable(name: "stat_methods", scope: !0, file: !1, line: 399, type: !468, isLocal: true, isDefinition: true, variable: [14 x %struct.PyMethodDef]* @stat_methods)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 3584, align: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 14)
!471 = !DIGlobalVariable(name: "stat_S_ISDIR_doc", scope: !0, file: !1, line: 265, type: !472, isLocal: true, isDefinition: true, variable: [64 x i8]* @stat_S_ISDIR_doc)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, align: 8, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 64)
!475 = !DIGlobalVariable(name: "stat_S_ISCHR_doc", scope: !0, file: !1, line: 269, type: !476, isLocal: true, isDefinition: true, variable: [84 x i8]* @stat_S_ISCHR_doc)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 672, align: 8, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 84)
!479 = !DIGlobalVariable(name: "stat_S_ISBLK_doc", scope: !0, file: !1, line: 273, type: !480, isLocal: true, isDefinition: true, variable: [80 x i8]* @stat_S_ISBLK_doc)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 80)
!483 = !DIGlobalVariable(name: "stat_S_ISREG_doc", scope: !0, file: !1, line: 277, type: !484, isLocal: true, isDefinition: true, variable: [67 x i8]* @stat_S_ISREG_doc)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 536, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 67)
!487 = !DIGlobalVariable(name: "stat_S_ISFIFO_doc", scope: !0, file: !1, line: 281, type: !488, isLocal: true, isDefinition: true, variable: [73 x i8]* @stat_S_ISFIFO_doc)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 584, align: 8, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 73)
!491 = !DIGlobalVariable(name: "stat_S_ISLNK_doc", scope: !0, file: !1, line: 285, type: !492, isLocal: true, isDefinition: true, variable: [68 x i8]* @stat_S_ISLNK_doc)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 544, align: 8, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 68)
!495 = !DIGlobalVariable(name: "stat_S_ISSOCK_doc", scope: !0, file: !1, line: 289, type: !496, isLocal: true, isDefinition: true, variable: [62 x i8]* @stat_S_ISSOCK_doc)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 496, align: 8, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 62)
!499 = !DIGlobalVariable(name: "stat_S_ISDOOR_doc", scope: !0, file: !1, line: 293, type: !500, isLocal: true, isDefinition: true, variable: [60 x i8]* @stat_S_ISDOOR_doc)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 480, align: 8, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 60)
!503 = !DIGlobalVariable(name: "stat_S_ISPORT_doc", scope: !0, file: !1, line: 297, type: !484, isLocal: true, isDefinition: true, variable: [67 x i8]* @stat_S_ISPORT_doc)
!504 = !DIGlobalVariable(name: "stat_S_ISWHT_doc", scope: !0, file: !1, line: 301, type: !505, isLocal: true, isDefinition: true, variable: [63 x i8]* @stat_S_ISWHT_doc)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 504, align: 8, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 63)
!508 = !DIGlobalVariable(name: "stat_S_IMODE_doc", scope: !0, file: !1, line: 306, type: !509, isLocal: true, isDefinition: true, variable: [69 x i8]* @stat_S_IMODE_doc)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 552, align: 8, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 69)
!512 = !DIGlobalVariable(name: "stat_S_IFMT_doc", scope: !0, file: !1, line: 319, type: !492, isLocal: true, isDefinition: true, variable: [68 x i8]* @stat_S_IFMT_doc)
!513 = !DIGlobalVariable(name: "stat_filemode_doc", scope: !0, file: !1, line: 380, type: !514, isLocal: true, isDefinition: true, variable: [59 x i8]* @stat_filemode_doc)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 472, align: 8, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 59)
!517 = !{i32 2, !"Dwarf Version", i32 4}
!518 = !{i32 2, !"Debug Info Version", i32 3}
!519 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!520 = !DILocation(line: 495, column: 9, scope: !12)
!521 = !DIExpression()
!522 = !DILocation(line: 494, column: 15, scope: !12)
!523 = !DILocation(line: 496, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !12, file: !1, line: 496, column: 9)
!525 = !DILocation(line: 496, column: 9, scope: !12)
!526 = !DILocation(line: 499, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !12, file: !1, line: 499, column: 9)
!528 = !DILocation(line: 499, column: 9, scope: !12)
!529 = !DILocation(line: 500, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !12, file: !1, line: 500, column: 9)
!531 = !DILocation(line: 500, column: 9, scope: !12)
!532 = !DILocation(line: 501, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !12, file: !1, line: 501, column: 9)
!534 = !DILocation(line: 501, column: 9, scope: !12)
!535 = !DILocation(line: 502, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !12, file: !1, line: 502, column: 9)
!537 = !DILocation(line: 502, column: 9, scope: !12)
!538 = !DILocation(line: 503, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !12, file: !1, line: 503, column: 9)
!540 = !DILocation(line: 503, column: 9, scope: !12)
!541 = !DILocation(line: 504, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !12, file: !1, line: 504, column: 9)
!543 = !DILocation(line: 504, column: 9, scope: !12)
!544 = !DILocation(line: 505, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !12, file: !1, line: 505, column: 9)
!546 = !DILocation(line: 505, column: 9, scope: !12)
!547 = !DILocation(line: 506, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !12, file: !1, line: 506, column: 9)
!549 = !DILocation(line: 506, column: 9, scope: !12)
!550 = !DILocation(line: 507, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !12, file: !1, line: 507, column: 9)
!552 = !DILocation(line: 507, column: 9, scope: !12)
!553 = !DILocation(line: 508, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !12, file: !1, line: 508, column: 9)
!555 = !DILocation(line: 508, column: 9, scope: !12)
!556 = !DILocation(line: 510, column: 9, scope: !557)
!557 = distinct !DILexicalBlock(scope: !12, file: !1, line: 510, column: 9)
!558 = !DILocation(line: 510, column: 9, scope: !12)
!559 = !DILocation(line: 511, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !12, file: !1, line: 511, column: 9)
!561 = !DILocation(line: 511, column: 9, scope: !12)
!562 = !DILocation(line: 512, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !12, file: !1, line: 512, column: 9)
!564 = !DILocation(line: 512, column: 9, scope: !12)
!565 = !DILocation(line: 513, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !12, file: !1, line: 513, column: 9)
!567 = !DILocation(line: 513, column: 9, scope: !12)
!568 = !DILocation(line: 515, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !12, file: !1, line: 515, column: 9)
!570 = !DILocation(line: 515, column: 9, scope: !12)
!571 = !DILocation(line: 516, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !12, file: !1, line: 516, column: 9)
!573 = !DILocation(line: 516, column: 9, scope: !12)
!574 = !DILocation(line: 517, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !12, file: !1, line: 517, column: 9)
!576 = !DILocation(line: 517, column: 9, scope: !12)
!577 = !DILocation(line: 519, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !12, file: !1, line: 519, column: 9)
!579 = !DILocation(line: 519, column: 9, scope: !12)
!580 = !DILocation(line: 520, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !12, file: !1, line: 520, column: 9)
!582 = !DILocation(line: 520, column: 9, scope: !12)
!583 = !DILocation(line: 521, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !12, file: !1, line: 521, column: 9)
!585 = !DILocation(line: 521, column: 9, scope: !12)
!586 = !DILocation(line: 522, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !12, file: !1, line: 522, column: 9)
!588 = !DILocation(line: 522, column: 9, scope: !12)
!589 = !DILocation(line: 524, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !12, file: !1, line: 524, column: 9)
!591 = !DILocation(line: 524, column: 9, scope: !12)
!592 = !DILocation(line: 525, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !12, file: !1, line: 525, column: 9)
!594 = !DILocation(line: 525, column: 9, scope: !12)
!595 = !DILocation(line: 526, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !12, file: !1, line: 526, column: 9)
!597 = !DILocation(line: 526, column: 9, scope: !12)
!598 = !DILocation(line: 527, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !12, file: !1, line: 527, column: 9)
!600 = !DILocation(line: 527, column: 9, scope: !12)
!601 = !DILocation(line: 529, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !12, file: !1, line: 529, column: 9)
!603 = !DILocation(line: 529, column: 9, scope: !12)
!604 = !DILocation(line: 530, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !12, file: !1, line: 530, column: 9)
!606 = !DILocation(line: 530, column: 9, scope: !12)
!607 = !DILocation(line: 531, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !12, file: !1, line: 531, column: 9)
!609 = !DILocation(line: 531, column: 9, scope: !12)
!610 = !DILocation(line: 532, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !12, file: !1, line: 532, column: 9)
!612 = !DILocation(line: 532, column: 9, scope: !12)
!613 = !DILocation(line: 534, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !12, file: !1, line: 534, column: 9)
!615 = !DILocation(line: 534, column: 9, scope: !12)
!616 = !DILocation(line: 535, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !12, file: !1, line: 535, column: 9)
!618 = !DILocation(line: 535, column: 9, scope: !12)
!619 = !DILocation(line: 536, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !12, file: !1, line: 536, column: 9)
!621 = !DILocation(line: 536, column: 9, scope: !12)
!622 = !DILocation(line: 537, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !12, file: !1, line: 537, column: 9)
!624 = !DILocation(line: 537, column: 9, scope: !12)
!625 = !DILocation(line: 538, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !12, file: !1, line: 538, column: 9)
!627 = !DILocation(line: 538, column: 9, scope: !12)
!628 = !DILocation(line: 539, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !12, file: !1, line: 539, column: 9)
!630 = !DILocation(line: 539, column: 9, scope: !12)
!631 = !DILocation(line: 540, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !12, file: !1, line: 540, column: 9)
!633 = !DILocation(line: 540, column: 9, scope: !12)
!634 = !DILocation(line: 541, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !12, file: !1, line: 541, column: 9)
!636 = !DILocation(line: 541, column: 9, scope: !12)
!637 = !DILocation(line: 542, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !12, file: !1, line: 542, column: 9)
!639 = !DILocation(line: 542, column: 9, scope: !12)
!640 = !DILocation(line: 543, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !12, file: !1, line: 543, column: 9)
!642 = !DILocation(line: 543, column: 9, scope: !12)
!643 = !DILocation(line: 544, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !12, file: !1, line: 544, column: 9)
!645 = !DILocation(line: 544, column: 9, scope: !12)
!646 = !DILocation(line: 545, column: 9, scope: !647)
!647 = distinct !DILexicalBlock(scope: !12, file: !1, line: 545, column: 9)
!648 = !DILocation(line: 545, column: 9, scope: !12)
!649 = !DILocation(line: 547, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !12, file: !1, line: 547, column: 9)
!651 = !DILocation(line: 547, column: 9, scope: !12)
!652 = !DILocation(line: 548, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !12, file: !1, line: 548, column: 9)
!654 = !DILocation(line: 548, column: 9, scope: !12)
!655 = !DILocation(line: 549, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !12, file: !1, line: 549, column: 9)
!657 = !DILocation(line: 549, column: 9, scope: !12)
!658 = !DILocation(line: 550, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !12, file: !1, line: 550, column: 9)
!660 = !DILocation(line: 550, column: 9, scope: !12)
!661 = !DILocation(line: 551, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !12, file: !1, line: 551, column: 9)
!663 = !DILocation(line: 551, column: 9, scope: !12)
!664 = !DILocation(line: 552, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !12, file: !1, line: 552, column: 9)
!666 = !DILocation(line: 552, column: 9, scope: !12)
!667 = !DILocation(line: 553, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !12, file: !1, line: 553, column: 9)
!669 = !DILocation(line: 553, column: 9, scope: !12)
!670 = !DILocation(line: 554, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !12, file: !1, line: 554, column: 9)
!672 = !DILocation(line: 554, column: 9, scope: !12)
!673 = !DILocation(line: 555, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !12, file: !1, line: 555, column: 9)
!675 = !DILocation(line: 555, column: 9, scope: !12)
!676 = !DILocation(line: 556, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !12, file: !1, line: 556, column: 9)
!678 = !DILocation(line: 558, column: 5, scope: !12)
!679 = !DILocation(line: 559, column: 1, scope: !12)
!680 = !DILocation(line: 265, column: 1, scope: !352)
!681 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !682)
!682 = distinct !DILocation(line: 265, column: 1, scope: !352)
!683 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !682)
!684 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !682)
!685 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !682)
!686 = distinct !DILexicalBlock(scope: !357, file: !1, line: 242, column: 9)
!687 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !682)
!688 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !682)
!689 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 1)
!690 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !682)
!691 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !682)
!692 = distinct !DILexicalBlock(scope: !357, file: !1, line: 246, column: 9)
!693 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !682)
!694 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !682)
!695 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !682)
!696 = distinct !DILexicalBlock(scope: !692, file: !1, line: 246, column: 39)
!697 = !{!698, !698, i64 0}
!698 = !{!"any pointer", !699, i64 0}
!699 = !{!"omnipotent char", !700, i64 0}
!700 = !{!"Simple C/C++ TBAA"}
!701 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !682)
!702 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !682)
!703 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !682)
!704 = !DILocation(line: 265, column: 1, scope: !705)
!705 = distinct !DILexicalBlock(scope: !352, file: !1, line: 265, column: 1)
!706 = !DILocation(line: 265, column: 1, scope: !707)
!707 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 1)
!708 = !DILocation(line: 265, column: 1, scope: !709)
!709 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 4)
!710 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 2)
!711 = !DILocation(line: 265, column: 1, scope: !712)
!712 = !DILexicalBlockFile(scope: !713, file: !1, discriminator: 6)
!713 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 5)
!714 = !DILocation(line: 269, column: 1, scope: !364)
!715 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !716)
!716 = distinct !DILocation(line: 269, column: 1, scope: !364)
!717 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !716)
!718 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !716)
!719 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !716)
!720 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !716)
!721 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !716)
!722 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !716)
!723 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !716)
!724 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !716)
!725 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !716)
!726 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !716)
!727 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !716)
!728 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !716)
!729 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !716)
!730 = !DILocation(line: 269, column: 1, scope: !731)
!731 = distinct !DILexicalBlock(scope: !364, file: !1, line: 269, column: 1)
!732 = !DILocation(line: 269, column: 1, scope: !733)
!733 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 1)
!734 = !DILocation(line: 269, column: 1, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 4)
!736 = !DILexicalBlockFile(scope: !364, file: !1, discriminator: 2)
!737 = !DILocation(line: 269, column: 1, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 6)
!739 = !DILexicalBlockFile(scope: !364, file: !1, discriminator: 5)
!740 = !DILocation(line: 273, column: 1, scope: !369)
!741 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !742)
!742 = distinct !DILocation(line: 273, column: 1, scope: !369)
!743 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !742)
!744 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !742)
!745 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !742)
!746 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !742)
!747 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !742)
!748 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !742)
!749 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !742)
!750 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !742)
!751 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !742)
!752 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !742)
!753 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !742)
!754 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !742)
!755 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !742)
!756 = !DILocation(line: 273, column: 1, scope: !757)
!757 = distinct !DILexicalBlock(scope: !369, file: !1, line: 273, column: 1)
!758 = !DILocation(line: 273, column: 1, scope: !759)
!759 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!760 = !DILocation(line: 273, column: 1, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 4)
!762 = !DILexicalBlockFile(scope: !369, file: !1, discriminator: 2)
!763 = !DILocation(line: 273, column: 1, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 6)
!765 = !DILexicalBlockFile(scope: !369, file: !1, discriminator: 5)
!766 = !DILocation(line: 277, column: 1, scope: !374)
!767 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !768)
!768 = distinct !DILocation(line: 277, column: 1, scope: !374)
!769 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !768)
!770 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !768)
!771 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !768)
!772 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !768)
!773 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !768)
!774 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !768)
!775 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !768)
!776 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !768)
!777 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !768)
!778 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !768)
!779 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !768)
!780 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !768)
!781 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !768)
!782 = !DILocation(line: 277, column: 1, scope: !783)
!783 = distinct !DILexicalBlock(scope: !374, file: !1, line: 277, column: 1)
!784 = !DILocation(line: 277, column: 1, scope: !785)
!785 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 1)
!786 = !DILocation(line: 277, column: 1, scope: !787)
!787 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 4)
!788 = !DILexicalBlockFile(scope: !374, file: !1, discriminator: 2)
!789 = !DILocation(line: 277, column: 1, scope: !790)
!790 = !DILexicalBlockFile(scope: !791, file: !1, discriminator: 6)
!791 = !DILexicalBlockFile(scope: !374, file: !1, discriminator: 5)
!792 = !DILocation(line: 281, column: 1, scope: !379)
!793 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !794)
!794 = distinct !DILocation(line: 281, column: 1, scope: !379)
!795 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !794)
!796 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !794)
!797 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !794)
!798 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !794)
!799 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !794)
!800 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !794)
!801 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !794)
!802 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !794)
!803 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !794)
!804 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !794)
!805 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !794)
!806 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !794)
!807 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !794)
!808 = !DILocation(line: 281, column: 1, scope: !809)
!809 = distinct !DILexicalBlock(scope: !379, file: !1, line: 281, column: 1)
!810 = !DILocation(line: 281, column: 1, scope: !811)
!811 = !DILexicalBlockFile(scope: !809, file: !1, discriminator: 1)
!812 = !DILocation(line: 281, column: 1, scope: !813)
!813 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 4)
!814 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 2)
!815 = !DILocation(line: 281, column: 1, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 6)
!817 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 5)
!818 = !DILocation(line: 285, column: 1, scope: !384)
!819 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !820)
!820 = distinct !DILocation(line: 285, column: 1, scope: !384)
!821 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !820)
!822 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !820)
!823 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !820)
!824 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !820)
!825 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !820)
!826 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !820)
!827 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !820)
!828 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !820)
!829 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !820)
!830 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !820)
!831 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !820)
!832 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !820)
!833 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !820)
!834 = !DILocation(line: 285, column: 1, scope: !835)
!835 = distinct !DILexicalBlock(scope: !384, file: !1, line: 285, column: 1)
!836 = !DILocation(line: 285, column: 1, scope: !837)
!837 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 1)
!838 = !DILocation(line: 285, column: 1, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !1, discriminator: 4)
!840 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 2)
!841 = !DILocation(line: 285, column: 1, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !1, discriminator: 6)
!843 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 5)
!844 = !DILocation(line: 289, column: 1, scope: !389)
!845 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !846)
!846 = distinct !DILocation(line: 289, column: 1, scope: !389)
!847 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !846)
!848 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !846)
!849 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !846)
!850 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !846)
!851 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !846)
!852 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !846)
!853 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !846)
!854 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !846)
!855 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !846)
!856 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !846)
!857 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !846)
!858 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !846)
!859 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !846)
!860 = !DILocation(line: 289, column: 1, scope: !861)
!861 = distinct !DILexicalBlock(scope: !389, file: !1, line: 289, column: 1)
!862 = !DILocation(line: 289, column: 1, scope: !863)
!863 = !DILexicalBlockFile(scope: !861, file: !1, discriminator: 1)
!864 = !DILocation(line: 289, column: 1, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !1, discriminator: 4)
!866 = !DILexicalBlockFile(scope: !389, file: !1, discriminator: 2)
!867 = !DILocation(line: 289, column: 1, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !1, discriminator: 6)
!869 = !DILexicalBlockFile(scope: !389, file: !1, discriminator: 5)
!870 = !DILocation(line: 293, column: 1, scope: !394)
!871 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !872)
!872 = distinct !DILocation(line: 293, column: 1, scope: !394)
!873 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !872)
!874 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !872)
!875 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !872)
!876 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !872)
!877 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !872)
!878 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !872)
!879 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !872)
!880 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !872)
!881 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !872)
!882 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !872)
!883 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !872)
!884 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !872)
!885 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !872)
!886 = !DILocation(line: 293, column: 1, scope: !887)
!887 = distinct !DILexicalBlock(scope: !394, file: !1, line: 293, column: 1)
!888 = !DILocation(line: 293, column: 1, scope: !889)
!889 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 1)
!890 = !DILocation(line: 293, column: 1, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !1, discriminator: 4)
!892 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 2)
!893 = !DILocation(line: 293, column: 1, scope: !894)
!894 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 6)
!895 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 5)
!896 = !DILocation(line: 297, column: 1, scope: !399)
!897 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !898)
!898 = distinct !DILocation(line: 297, column: 1, scope: !399)
!899 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !898)
!900 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !898)
!901 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !898)
!902 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !898)
!903 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !898)
!904 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !898)
!905 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !898)
!906 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !898)
!907 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !898)
!908 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !898)
!909 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !898)
!910 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !898)
!911 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !898)
!912 = !DILocation(line: 297, column: 1, scope: !913)
!913 = distinct !DILexicalBlock(scope: !399, file: !1, line: 297, column: 1)
!914 = !DILocation(line: 297, column: 1, scope: !915)
!915 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 1)
!916 = !DILocation(line: 297, column: 1, scope: !917)
!917 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 4)
!918 = !DILexicalBlockFile(scope: !399, file: !1, discriminator: 2)
!919 = !DILocation(line: 297, column: 1, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !1, discriminator: 6)
!921 = !DILexicalBlockFile(scope: !399, file: !1, discriminator: 5)
!922 = !DILocation(line: 301, column: 1, scope: !404)
!923 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !924)
!924 = distinct !DILocation(line: 301, column: 1, scope: !404)
!925 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !924)
!926 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !924)
!927 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !924)
!928 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !924)
!929 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !924)
!930 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !924)
!931 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !924)
!932 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !924)
!933 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !924)
!934 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !924)
!935 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !924)
!936 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !924)
!937 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !924)
!938 = !DILocation(line: 301, column: 1, scope: !939)
!939 = distinct !DILexicalBlock(scope: !404, file: !1, line: 301, column: 1)
!940 = !DILocation(line: 301, column: 1, scope: !941)
!941 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 1)
!942 = !DILocation(line: 301, column: 1, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !1, discriminator: 4)
!944 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 2)
!945 = !DILocation(line: 301, column: 1, scope: !946)
!946 = !DILexicalBlockFile(scope: !947, file: !1, discriminator: 6)
!947 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 5)
!948 = !DILocation(line: 310, column: 24, scope: !409)
!949 = !DILocation(line: 310, column: 40, scope: !409)
!950 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !951)
!951 = distinct !DILocation(line: 312, column: 19, scope: !409)
!952 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !951)
!953 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !951)
!954 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !951)
!955 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !951)
!956 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !951)
!957 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !951)
!958 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !951)
!959 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !951)
!960 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !951)
!961 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !951)
!962 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !951)
!963 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !951)
!964 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !951)
!965 = !DILocation(line: 312, column: 12, scope: !409)
!966 = !DILocation(line: 313, column: 15, scope: !967)
!967 = distinct !DILexicalBlock(scope: !409, file: !1, line: 313, column: 9)
!968 = !DILocation(line: 313, column: 30, scope: !967)
!969 = !DILocation(line: 313, column: 33, scope: !970)
!970 = !DILexicalBlockFile(scope: !967, file: !1, discriminator: 1)
!971 = !DILocation(line: 313, column: 9, scope: !409)
!972 = !DILocation(line: 315, column: 41, scope: !409)
!973 = !DILocation(line: 315, column: 12, scope: !409)
!974 = !DILocation(line: 315, column: 5, scope: !409)
!975 = !DILocation(line: 316, column: 1, scope: !409)
!976 = !DILocation(line: 323, column: 23, scope: !414)
!977 = !DILocation(line: 323, column: 39, scope: !414)
!978 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !979)
!979 = distinct !DILocation(line: 325, column: 19, scope: !414)
!980 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !979)
!981 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !979)
!982 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !979)
!983 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !979)
!984 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !979)
!985 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !979)
!986 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !979)
!987 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !979)
!988 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !979)
!989 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !979)
!990 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !979)
!991 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !979)
!992 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !979)
!993 = !DILocation(line: 325, column: 12, scope: !414)
!994 = !DILocation(line: 326, column: 15, scope: !995)
!995 = distinct !DILexicalBlock(scope: !414, file: !1, line: 326, column: 9)
!996 = !DILocation(line: 326, column: 30, scope: !995)
!997 = !DILocation(line: 326, column: 33, scope: !998)
!998 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!999 = !DILocation(line: 326, column: 9, scope: !414)
!1000 = !DILocation(line: 328, column: 41, scope: !414)
!1001 = !DILocation(line: 328, column: 12, scope: !414)
!1002 = !DILocation(line: 328, column: 5, scope: !414)
!1003 = !DILocation(line: 329, column: 1, scope: !414)
!1004 = !DILocation(line: 384, column: 25, scope: !419)
!1005 = !DILocation(line: 384, column: 41, scope: !419)
!1006 = !DILocation(line: 386, column: 5, scope: !419)
!1007 = !DILocation(line: 386, column: 10, scope: !419)
!1008 = !DILocation(line: 236, column: 28, scope: !357, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 389, column: 12, scope: !419)
!1010 = !DILocation(line: 241, column: 13, scope: !357, inlinedAt: !1009)
!1011 = !DILocation(line: 238, column: 19, scope: !357, inlinedAt: !1009)
!1012 = !DILocation(line: 242, column: 16, scope: !686, inlinedAt: !1009)
!1013 = !DILocation(line: 242, column: 38, scope: !686, inlinedAt: !1009)
!1014 = !DILocation(line: 242, column: 41, scope: !689, inlinedAt: !1009)
!1015 = !DILocation(line: 242, column: 9, scope: !357, inlinedAt: !1009)
!1016 = !DILocation(line: 246, column: 9, scope: !692, inlinedAt: !1009)
!1017 = !DILocation(line: 246, column: 29, scope: !692, inlinedAt: !1009)
!1018 = !DILocation(line: 246, column: 9, scope: !357, inlinedAt: !1009)
!1019 = !DILocation(line: 247, column: 25, scope: !696, inlinedAt: !1009)
!1020 = !DILocation(line: 247, column: 9, scope: !696, inlinedAt: !1009)
!1021 = !DILocation(line: 248, column: 9, scope: !696, inlinedAt: !1009)
!1022 = !DILocation(line: 245, column: 12, scope: !357, inlinedAt: !1009)
!1023 = !DILocation(line: 387, column: 12, scope: !419)
!1024 = !DILocation(line: 390, column: 15, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !419, file: !1, line: 390, column: 9)
!1026 = !DILocation(line: 390, column: 30, scope: !1025)
!1027 = !DILocation(line: 390, column: 33, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1025, file: !1, discriminator: 1)
!1029 = !DILocation(line: 390, column: 9, scope: !419)
!1030 = !DILocation(line: 335, column: 17, scope: !428, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 393, column: 14, scope: !419)
!1032 = !DILocation(line: 338, column: 9, scope: !1033, inlinedAt: !1031)
!1033 = distinct !DILexicalBlock(scope: !428, file: !1, line: 338, column: 9)
!1034 = !DILocation(line: 338, column: 9, scope: !428, inlinedAt: !1031)
!1035 = !DILocation(line: 339, column: 25, scope: !1036, inlinedAt: !1031)
!1036 = !DILexicalBlockFile(scope: !1037, file: !1, discriminator: 1)
!1037 = distinct !DILexicalBlock(scope: !428, file: !1, line: 339, column: 9)
!1038 = !DILocation(line: 340, column: 25, scope: !1039, inlinedAt: !1031)
!1039 = !DILexicalBlockFile(scope: !1040, file: !1, discriminator: 1)
!1040 = distinct !DILexicalBlock(scope: !428, file: !1, line: 340, column: 9)
!1041 = !DILocation(line: 342, column: 25, scope: !1042, inlinedAt: !1031)
!1042 = !DILexicalBlockFile(scope: !1043, file: !1, discriminator: 1)
!1043 = distinct !DILexicalBlock(scope: !428, file: !1, line: 342, column: 9)
!1044 = !DILocation(line: 343, column: 25, scope: !1045, inlinedAt: !1031)
!1045 = !DILexicalBlockFile(scope: !1046, file: !1, discriminator: 1)
!1046 = distinct !DILexicalBlock(scope: !428, file: !1, line: 343, column: 9)
!1047 = !DILocation(line: 344, column: 25, scope: !1048, inlinedAt: !1031)
!1048 = !DILexicalBlockFile(scope: !1049, file: !1, discriminator: 1)
!1049 = distinct !DILexicalBlock(scope: !428, file: !1, line: 344, column: 9)
!1050 = !DILocation(line: 345, column: 25, scope: !1051, inlinedAt: !1031)
!1051 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 1)
!1052 = distinct !DILexicalBlock(scope: !428, file: !1, line: 345, column: 9)
!1053 = !DILocation(line: 351, column: 5, scope: !428, inlinedAt: !1031)
!1054 = !DILocation(line: 393, column: 14, scope: !419)
!1055 = !DILocation(line: 393, column: 12, scope: !419)
!1056 = !{!699, !699, i64 0}
!1057 = !DILocation(line: 394, column: 21, scope: !419)
!1058 = !DILocation(line: 355, column: 17, scope: !433, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 394, column: 5, scope: !419)
!1060 = !DILocation(line: 355, column: 29, scope: !433, inlinedAt: !1059)
!1061 = !DILocation(line: 357, column: 19, scope: !433, inlinedAt: !1059)
!1062 = !DILocation(line: 357, column: 14, scope: !433, inlinedAt: !1059)
!1063 = !DILocation(line: 357, column: 12, scope: !433, inlinedAt: !1059)
!1064 = !DILocation(line: 358, column: 19, scope: !433, inlinedAt: !1059)
!1065 = !DILocation(line: 358, column: 14, scope: !433, inlinedAt: !1059)
!1066 = !DILocation(line: 358, column: 5, scope: !433, inlinedAt: !1059)
!1067 = !DILocation(line: 358, column: 12, scope: !433, inlinedAt: !1059)
!1068 = !DILocation(line: 359, column: 14, scope: !1069, inlinedAt: !1059)
!1069 = distinct !DILexicalBlock(scope: !433, file: !1, line: 359, column: 9)
!1070 = !DILocation(line: 360, column: 23, scope: !1071, inlinedAt: !1059)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 359, column: 25)
!1072 = !DILocation(line: 360, column: 18, scope: !1071, inlinedAt: !1059)
!1073 = !DILocation(line: 362, column: 18, scope: !1074, inlinedAt: !1059)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 361, column: 12)
!1075 = !DILocation(line: 359, column: 9, scope: !433, inlinedAt: !1059)
!1076 = !DILocation(line: 362, column: 9, scope: !1074, inlinedAt: !1059)
!1077 = !DILocation(line: 362, column: 16, scope: !1074, inlinedAt: !1059)
!1078 = !DILocation(line: 364, column: 19, scope: !433, inlinedAt: !1059)
!1079 = !DILocation(line: 364, column: 14, scope: !433, inlinedAt: !1059)
!1080 = !DILocation(line: 364, column: 5, scope: !433, inlinedAt: !1059)
!1081 = !DILocation(line: 364, column: 12, scope: !433, inlinedAt: !1059)
!1082 = !DILocation(line: 365, column: 19, scope: !433, inlinedAt: !1059)
!1083 = !DILocation(line: 365, column: 14, scope: !433, inlinedAt: !1059)
!1084 = !DILocation(line: 365, column: 5, scope: !433, inlinedAt: !1059)
!1085 = !DILocation(line: 365, column: 12, scope: !433, inlinedAt: !1059)
!1086 = !DILocation(line: 366, column: 14, scope: !1087, inlinedAt: !1059)
!1087 = distinct !DILexicalBlock(scope: !433, file: !1, line: 366, column: 9)
!1088 = !DILocation(line: 367, column: 23, scope: !1089, inlinedAt: !1059)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 366, column: 25)
!1090 = !DILocation(line: 367, column: 18, scope: !1089, inlinedAt: !1059)
!1091 = !DILocation(line: 369, column: 18, scope: !1092, inlinedAt: !1059)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 368, column: 12)
!1093 = !DILocation(line: 366, column: 9, scope: !433, inlinedAt: !1059)
!1094 = !DILocation(line: 369, column: 9, scope: !1092, inlinedAt: !1059)
!1095 = !DILocation(line: 369, column: 16, scope: !1092, inlinedAt: !1059)
!1096 = !DILocation(line: 371, column: 19, scope: !433, inlinedAt: !1059)
!1097 = !DILocation(line: 371, column: 14, scope: !433, inlinedAt: !1059)
!1098 = !DILocation(line: 371, column: 5, scope: !433, inlinedAt: !1059)
!1099 = !DILocation(line: 371, column: 12, scope: !433, inlinedAt: !1059)
!1100 = !DILocation(line: 372, column: 19, scope: !433, inlinedAt: !1059)
!1101 = !DILocation(line: 372, column: 14, scope: !433, inlinedAt: !1059)
!1102 = !DILocation(line: 372, column: 5, scope: !433, inlinedAt: !1059)
!1103 = !DILocation(line: 372, column: 12, scope: !433, inlinedAt: !1059)
!1104 = !DILocation(line: 373, column: 14, scope: !1105, inlinedAt: !1059)
!1105 = distinct !DILexicalBlock(scope: !433, file: !1, line: 373, column: 9)
!1106 = !DILocation(line: 374, column: 23, scope: !1107, inlinedAt: !1059)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 373, column: 25)
!1108 = !DILocation(line: 374, column: 18, scope: !1107, inlinedAt: !1059)
!1109 = !DILocation(line: 376, column: 18, scope: !1110, inlinedAt: !1059)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 375, column: 12)
!1111 = !DILocation(line: 373, column: 9, scope: !433, inlinedAt: !1059)
!1112 = !DILocation(line: 376, column: 9, scope: !1110, inlinedAt: !1059)
!1113 = !DILocation(line: 376, column: 16, scope: !1110, inlinedAt: !1059)
!1114 = !DILocation(line: 395, column: 12, scope: !419)
!1115 = !DILocation(line: 395, column: 5, scope: !419)
!1116 = !DILocation(line: 396, column: 1, scope: !419)
