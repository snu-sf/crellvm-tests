; ModuleID = 'irs-onlybc/_stat.bc'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !521
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !521
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !352, metadata !522), !dbg !523
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @statmodule, i32 1013), !dbg !524
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !525, !tbaa !526
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !530, !tbaa !526
  %cmp = icmp eq %struct._object* %1, null, !dbg !532
  br i1 %cmp, label %if.then, label %if.end, !dbg !533

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !534

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !535, !tbaa !526
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 16384), !dbg !537
  %tobool = icmp ne i32 %call1, 0, !dbg !537
  br i1 %tobool, label %if.then.2, label %if.end.3, !dbg !538

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !541

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !542, !tbaa !526
  %call4 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 8192), !dbg !544
  %tobool5 = icmp ne i32 %call4, 0, !dbg !544
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !545

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !546
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !548

if.end.7:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !549, !tbaa !526
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64 24576), !dbg !551
  %tobool9 = icmp ne i32 %call8, 0, !dbg !551
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !552

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !555

if.end.11:                                        ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !556, !tbaa !526
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 32768), !dbg !558
  %tobool13 = icmp ne i32 %call12, 0, !dbg !558
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !559

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval, !dbg !560
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !562

if.end.15:                                        ; preds = %if.end.11
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !563, !tbaa !526
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 4096), !dbg !565
  %tobool17 = icmp ne i32 %call16, 0, !dbg !565
  br i1 %tobool17, label %if.then.18, label %if.end.19, !dbg !566

if.then.18:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval, !dbg !567
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !569

if.end.19:                                        ; preds = %if.end.15
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !570, !tbaa !526
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 40960), !dbg !572
  %tobool21 = icmp ne i32 %call20, 0, !dbg !572
  br i1 %tobool21, label %if.then.22, label %if.end.23, !dbg !573

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !576

if.end.23:                                        ; preds = %if.end.19
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !577, !tbaa !526
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 49152), !dbg !579
  %tobool25 = icmp ne i32 %call24, 0, !dbg !579
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !580

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval, !dbg !581
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !583

if.end.27:                                        ; preds = %if.end.23
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !584, !tbaa !526
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 0), !dbg !586
  %tobool29 = icmp ne i32 %call28, 0, !dbg !586
  br i1 %tobool29, label %if.then.30, label %if.end.31, !dbg !587

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval, !dbg !588
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !590

if.end.31:                                        ; preds = %if.end.27
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !591, !tbaa !526
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 0), !dbg !593
  %tobool33 = icmp ne i32 %call32, 0, !dbg !593
  br i1 %tobool33, label %if.then.34, label %if.end.35, !dbg !594

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval, !dbg !595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !597

if.end.35:                                        ; preds = %if.end.31
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !598, !tbaa !526
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i64 0), !dbg !600
  %tobool37 = icmp ne i32 %call36, 0, !dbg !600
  br i1 %tobool37, label %if.then.38, label %if.end.39, !dbg !601

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval, !dbg !602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !604

if.end.39:                                        ; preds = %if.end.35
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !605, !tbaa !526
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 2048), !dbg !607
  %tobool41 = icmp ne i32 %call40, 0, !dbg !607
  br i1 %tobool41, label %if.then.42, label %if.end.43, !dbg !608

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval, !dbg !609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !611

if.end.43:                                        ; preds = %if.end.39
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !612, !tbaa !526
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64 1024), !dbg !614
  %tobool45 = icmp ne i32 %call44, 0, !dbg !614
  br i1 %tobool45, label %if.then.46, label %if.end.47, !dbg !615

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval, !dbg !616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !618

if.end.47:                                        ; preds = %if.end.43
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !619, !tbaa !526
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 512), !dbg !621
  %tobool49 = icmp ne i32 %call48, 0, !dbg !621
  br i1 %tobool49, label %if.then.50, label %if.end.51, !dbg !622

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval, !dbg !623
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !625

if.end.51:                                        ; preds = %if.end.47
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !626, !tbaa !526
  %call52 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i64 1024), !dbg !628
  %tobool53 = icmp ne i32 %call52, 0, !dbg !628
  br i1 %tobool53, label %if.then.54, label %if.end.55, !dbg !629

if.then.54:                                       ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval, !dbg !630
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !632

if.end.55:                                        ; preds = %if.end.51
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !633, !tbaa !526
  %call56 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 256), !dbg !635
  %tobool57 = icmp ne i32 %call56, 0, !dbg !635
  br i1 %tobool57, label %if.then.58, label %if.end.59, !dbg !636

if.then.58:                                       ; preds = %if.end.55
  store %struct._object* null, %struct._object** %retval, !dbg !637
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !639

if.end.59:                                        ; preds = %if.end.55
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !640, !tbaa !526
  %call60 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 128), !dbg !642
  %tobool61 = icmp ne i32 %call60, 0, !dbg !642
  br i1 %tobool61, label %if.then.62, label %if.end.63, !dbg !643

if.then.62:                                       ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval, !dbg !644
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !646

if.end.63:                                        ; preds = %if.end.59
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !647, !tbaa !526
  %call64 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 64), !dbg !649
  %tobool65 = icmp ne i32 %call64, 0, !dbg !649
  br i1 %tobool65, label %if.then.66, label %if.end.67, !dbg !650

if.then.66:                                       ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval, !dbg !651
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !653

if.end.67:                                        ; preds = %if.end.63
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !654, !tbaa !526
  %call68 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 448), !dbg !656
  %tobool69 = icmp ne i32 %call68, 0, !dbg !656
  br i1 %tobool69, label %if.then.70, label %if.end.71, !dbg !657

if.then.70:                                       ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval, !dbg !658
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !660

if.end.71:                                        ; preds = %if.end.67
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !661, !tbaa !526
  %call72 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64 256), !dbg !663
  %tobool73 = icmp ne i32 %call72, 0, !dbg !663
  br i1 %tobool73, label %if.then.74, label %if.end.75, !dbg !664

if.then.74:                                       ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval, !dbg !665
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !667

if.end.75:                                        ; preds = %if.end.71
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !668, !tbaa !526
  %call76 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 128), !dbg !670
  %tobool77 = icmp ne i32 %call76, 0, !dbg !670
  br i1 %tobool77, label %if.then.78, label %if.end.79, !dbg !671

if.then.78:                                       ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval, !dbg !672
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !674

if.end.79:                                        ; preds = %if.end.75
  %22 = load %struct._object*, %struct._object** %m, align 8, !dbg !675, !tbaa !526
  %call80 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 64), !dbg !677
  %tobool81 = icmp ne i32 %call80, 0, !dbg !677
  br i1 %tobool81, label %if.then.82, label %if.end.83, !dbg !678

if.then.82:                                       ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval, !dbg !679
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !681

if.end.83:                                        ; preds = %if.end.79
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !682, !tbaa !526
  %call84 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 56), !dbg !684
  %tobool85 = icmp ne i32 %call84, 0, !dbg !684
  br i1 %tobool85, label %if.then.86, label %if.end.87, !dbg !685

if.then.86:                                       ; preds = %if.end.83
  store %struct._object* null, %struct._object** %retval, !dbg !686
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !688

if.end.87:                                        ; preds = %if.end.83
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !689, !tbaa !526
  %call88 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 32), !dbg !691
  %tobool89 = icmp ne i32 %call88, 0, !dbg !691
  br i1 %tobool89, label %if.then.90, label %if.end.91, !dbg !692

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval, !dbg !693
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !695

if.end.91:                                        ; preds = %if.end.87
  %25 = load %struct._object*, %struct._object** %m, align 8, !dbg !696, !tbaa !526
  %call92 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 16), !dbg !698
  %tobool93 = icmp ne i32 %call92, 0, !dbg !698
  br i1 %tobool93, label %if.then.94, label %if.end.95, !dbg !699

if.then.94:                                       ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval, !dbg !700
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !702

if.end.95:                                        ; preds = %if.end.91
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !703, !tbaa !526
  %call96 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 8), !dbg !705
  %tobool97 = icmp ne i32 %call96, 0, !dbg !705
  br i1 %tobool97, label %if.then.98, label %if.end.99, !dbg !706

if.then.98:                                       ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval, !dbg !707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !709

if.end.99:                                        ; preds = %if.end.95
  %27 = load %struct._object*, %struct._object** %m, align 8, !dbg !710, !tbaa !526
  %call100 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 7), !dbg !712
  %tobool101 = icmp ne i32 %call100, 0, !dbg !712
  br i1 %tobool101, label %if.then.102, label %if.end.103, !dbg !713

if.then.102:                                      ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval, !dbg !714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !716

if.end.103:                                       ; preds = %if.end.99
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !717, !tbaa !526
  %call104 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 4), !dbg !719
  %tobool105 = icmp ne i32 %call104, 0, !dbg !719
  br i1 %tobool105, label %if.then.106, label %if.end.107, !dbg !720

if.then.106:                                      ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval, !dbg !721
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !723

if.end.107:                                       ; preds = %if.end.103
  %29 = load %struct._object*, %struct._object** %m, align 8, !dbg !724, !tbaa !526
  %call108 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 2), !dbg !726
  %tobool109 = icmp ne i32 %call108, 0, !dbg !726
  br i1 %tobool109, label %if.then.110, label %if.end.111, !dbg !727

if.then.110:                                      ; preds = %if.end.107
  store %struct._object* null, %struct._object** %retval, !dbg !728
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !730

if.end.111:                                       ; preds = %if.end.107
  %30 = load %struct._object*, %struct._object** %m, align 8, !dbg !731, !tbaa !526
  %call112 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i64 1), !dbg !733
  %tobool113 = icmp ne i32 %call112, 0, !dbg !733
  br i1 %tobool113, label %if.then.114, label %if.end.115, !dbg !734

if.then.114:                                      ; preds = %if.end.111
  store %struct._object* null, %struct._object** %retval, !dbg !735
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !737

if.end.115:                                       ; preds = %if.end.111
  %31 = load %struct._object*, %struct._object** %m, align 8, !dbg !738, !tbaa !526
  %call116 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i64 1), !dbg !740
  %tobool117 = icmp ne i32 %call116, 0, !dbg !740
  br i1 %tobool117, label %if.then.118, label %if.end.119, !dbg !741

if.then.118:                                      ; preds = %if.end.115
  store %struct._object* null, %struct._object** %retval, !dbg !742
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !744

if.end.119:                                       ; preds = %if.end.115
  %32 = load %struct._object*, %struct._object** %m, align 8, !dbg !745, !tbaa !526
  %call120 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i64 2), !dbg !747
  %tobool121 = icmp ne i32 %call120, 0, !dbg !747
  br i1 %tobool121, label %if.then.122, label %if.end.123, !dbg !748

if.then.122:                                      ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval, !dbg !749
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !751

if.end.123:                                       ; preds = %if.end.119
  %33 = load %struct._object*, %struct._object** %m, align 8, !dbg !752, !tbaa !526
  %call124 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i64 4), !dbg !754
  %tobool125 = icmp ne i32 %call124, 0, !dbg !754
  br i1 %tobool125, label %if.then.126, label %if.end.127, !dbg !755

if.then.126:                                      ; preds = %if.end.123
  store %struct._object* null, %struct._object** %retval, !dbg !756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !758

if.end.127:                                       ; preds = %if.end.123
  %34 = load %struct._object*, %struct._object** %m, align 8, !dbg !759, !tbaa !526
  %call128 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i64 8), !dbg !761
  %tobool129 = icmp ne i32 %call128, 0, !dbg !761
  br i1 %tobool129, label %if.then.130, label %if.end.131, !dbg !762

if.then.130:                                      ; preds = %if.end.127
  store %struct._object* null, %struct._object** %retval, !dbg !763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !765

if.end.131:                                       ; preds = %if.end.127
  %35 = load %struct._object*, %struct._object** %m, align 8, !dbg !766, !tbaa !526
  %call132 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i64 16), !dbg !768
  %tobool133 = icmp ne i32 %call132, 0, !dbg !768
  br i1 %tobool133, label %if.then.134, label %if.end.135, !dbg !769

if.then.134:                                      ; preds = %if.end.131
  store %struct._object* null, %struct._object** %retval, !dbg !770
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !772

if.end.135:                                       ; preds = %if.end.131
  %36 = load %struct._object*, %struct._object** %m, align 8, !dbg !773, !tbaa !526
  %call136 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i64 32), !dbg !775
  %tobool137 = icmp ne i32 %call136, 0, !dbg !775
  br i1 %tobool137, label %if.then.138, label %if.end.139, !dbg !776

if.then.138:                                      ; preds = %if.end.135
  store %struct._object* null, %struct._object** %retval, !dbg !777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !779

if.end.139:                                       ; preds = %if.end.135
  %37 = load %struct._object*, %struct._object** %m, align 8, !dbg !780, !tbaa !526
  %call140 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i64 32768), !dbg !782
  %tobool141 = icmp ne i32 %call140, 0, !dbg !782
  br i1 %tobool141, label %if.then.142, label %if.end.143, !dbg !783

if.then.142:                                      ; preds = %if.end.139
  store %struct._object* null, %struct._object** %retval, !dbg !784
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !786

if.end.143:                                       ; preds = %if.end.139
  %38 = load %struct._object*, %struct._object** %m, align 8, !dbg !787, !tbaa !526
  %call144 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i64 65536), !dbg !789
  %tobool145 = icmp ne i32 %call144, 0, !dbg !789
  br i1 %tobool145, label %if.then.146, label %if.end.147, !dbg !790

if.then.146:                                      ; preds = %if.end.143
  store %struct._object* null, %struct._object** %retval, !dbg !791
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !793

if.end.147:                                       ; preds = %if.end.143
  %39 = load %struct._object*, %struct._object** %m, align 8, !dbg !794, !tbaa !526
  %call148 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i64 131072), !dbg !796
  %tobool149 = icmp ne i32 %call148, 0, !dbg !796
  br i1 %tobool149, label %if.then.150, label %if.end.151, !dbg !797

if.then.150:                                      ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval, !dbg !798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !800

if.end.151:                                       ; preds = %if.end.147
  %40 = load %struct._object*, %struct._object** %m, align 8, !dbg !801, !tbaa !526
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 262144), !dbg !803
  %tobool153 = icmp ne i32 %call152, 0, !dbg !803
  br i1 %tobool153, label %if.then.154, label %if.end.155, !dbg !804

if.then.154:                                      ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval, !dbg !805
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !807

if.end.155:                                       ; preds = %if.end.151
  %41 = load %struct._object*, %struct._object** %m, align 8, !dbg !808, !tbaa !526
  %call156 = call i32 @PyModule_AddIntConstant(%struct._object* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i64 1048576), !dbg !810
  %tobool157 = icmp ne i32 %call156, 0, !dbg !810
  br i1 %tobool157, label %if.then.158, label %if.end.159, !dbg !811

if.then.158:                                      ; preds = %if.end.155
  store %struct._object* null, %struct._object** %retval, !dbg !812
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !814

if.end.159:                                       ; preds = %if.end.155
  %42 = load %struct._object*, %struct._object** %m, align 8, !dbg !815, !tbaa !526
  %call160 = call i32 @PyModule_AddIntConstant(%struct._object* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i64 2097152), !dbg !817
  %tobool161 = icmp ne i32 %call160, 0, !dbg !817
  br i1 %tobool161, label %if.then.162, label %if.end.163, !dbg !818

if.then.162:                                      ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval, !dbg !819
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !821

if.end.163:                                       ; preds = %if.end.159
  %43 = load %struct._object*, %struct._object** %m, align 8, !dbg !822, !tbaa !526
  %call164 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i64 0), !dbg !824
  %tobool165 = icmp ne i32 %call164, 0, !dbg !824
  br i1 %tobool165, label %if.then.166, label %if.end.167, !dbg !825

if.then.166:                                      ; preds = %if.end.163
  store %struct._object* null, %struct._object** %retval, !dbg !826
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !828

if.end.167:                                       ; preds = %if.end.163
  %44 = load %struct._object*, %struct._object** %m, align 8, !dbg !829, !tbaa !526
  %call168 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 1), !dbg !831
  %tobool169 = icmp ne i32 %call168, 0, !dbg !831
  br i1 %tobool169, label %if.then.170, label %if.end.171, !dbg !832

if.then.170:                                      ; preds = %if.end.167
  store %struct._object* null, %struct._object** %retval, !dbg !833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !835

if.end.171:                                       ; preds = %if.end.167
  %45 = load %struct._object*, %struct._object** %m, align 8, !dbg !836, !tbaa !526
  %call172 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i64 2), !dbg !838
  %tobool173 = icmp ne i32 %call172, 0, !dbg !838
  br i1 %tobool173, label %if.then.174, label %if.end.175, !dbg !839

if.then.174:                                      ; preds = %if.end.171
  store %struct._object* null, %struct._object** %retval, !dbg !840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !842

if.end.175:                                       ; preds = %if.end.171
  %46 = load %struct._object*, %struct._object** %m, align 8, !dbg !843, !tbaa !526
  %call176 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 3), !dbg !845
  %tobool177 = icmp ne i32 %call176, 0, !dbg !845
  br i1 %tobool177, label %if.then.178, label %if.end.179, !dbg !846

if.then.178:                                      ; preds = %if.end.175
  store %struct._object* null, %struct._object** %retval, !dbg !847
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !849

if.end.179:                                       ; preds = %if.end.175
  %47 = load %struct._object*, %struct._object** %m, align 8, !dbg !850, !tbaa !526
  %call180 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i64 4), !dbg !852
  %tobool181 = icmp ne i32 %call180, 0, !dbg !852
  br i1 %tobool181, label %if.then.182, label %if.end.183, !dbg !853

if.then.182:                                      ; preds = %if.end.179
  store %struct._object* null, %struct._object** %retval, !dbg !854
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !856

if.end.183:                                       ; preds = %if.end.179
  %48 = load %struct._object*, %struct._object** %m, align 8, !dbg !857, !tbaa !526
  %call184 = call i32 @PyModule_AddIntConstant(%struct._object* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i64 5), !dbg !859
  %tobool185 = icmp ne i32 %call184, 0, !dbg !859
  br i1 %tobool185, label %if.then.186, label %if.end.187, !dbg !860

if.then.186:                                      ; preds = %if.end.183
  store %struct._object* null, %struct._object** %retval, !dbg !861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !863

if.end.187:                                       ; preds = %if.end.183
  %49 = load %struct._object*, %struct._object** %m, align 8, !dbg !864, !tbaa !526
  %call188 = call i32 @PyModule_AddIntConstant(%struct._object* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i64 6), !dbg !866
  %tobool189 = icmp ne i32 %call188, 0, !dbg !866
  br i1 %tobool189, label %if.then.190, label %if.end.191, !dbg !867

if.then.190:                                      ; preds = %if.end.187
  store %struct._object* null, %struct._object** %retval, !dbg !868
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !870

if.end.191:                                       ; preds = %if.end.187
  %50 = load %struct._object*, %struct._object** %m, align 8, !dbg !871, !tbaa !526
  %call192 = call i32 @PyModule_AddIntConstant(%struct._object* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i64 7), !dbg !873
  %tobool193 = icmp ne i32 %call192, 0, !dbg !873
  br i1 %tobool193, label %if.then.194, label %if.end.195, !dbg !874

if.then.194:                                      ; preds = %if.end.191
  store %struct._object* null, %struct._object** %retval, !dbg !875
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !877

if.end.195:                                       ; preds = %if.end.191
  %51 = load %struct._object*, %struct._object** %m, align 8, !dbg !878, !tbaa !526
  %call196 = call i32 @PyModule_AddIntConstant(%struct._object* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i64 8), !dbg !880
  %tobool197 = icmp ne i32 %call196, 0, !dbg !880
  br i1 %tobool197, label %if.then.198, label %if.end.199, !dbg !881

if.then.198:                                      ; preds = %if.end.195
  store %struct._object* null, %struct._object** %retval, !dbg !882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !884

if.end.199:                                       ; preds = %if.end.195
  %52 = load %struct._object*, %struct._object** %m, align 8, !dbg !885, !tbaa !526
  %call200 = call i32 @PyModule_AddIntConstant(%struct._object* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i64 9), !dbg !887
  %tobool201 = icmp ne i32 %call200, 0, !dbg !887
  br i1 %tobool201, label %if.then.202, label %if.end.203, !dbg !888

if.then.202:                                      ; preds = %if.end.199
  store %struct._object* null, %struct._object** %retval, !dbg !889
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !891

if.end.203:                                       ; preds = %if.end.199
  %53 = load %struct._object*, %struct._object** %m, align 8, !dbg !892, !tbaa !526
  store %struct._object* %53, %struct._object** %retval, !dbg !893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !893

cleanup:                                          ; preds = %if.end.203, %if.then.202, %if.then.198, %if.then.194, %if.then.190, %if.then.186, %if.then.182, %if.then.178, %if.then.174, %if.then.170, %if.then.166, %if.then.162, %if.then.158, %if.then.154, %if.then.150, %if.then.146, %if.then.142, %if.then.138, %if.then.134, %if.then.130, %if.then.126, %if.then.122, %if.then.118, %if.then.114, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.94, %if.then.90, %if.then.86, %if.then.82, %if.then.78, %if.then.74, %if.then.70, %if.then.66, %if.then.62, %if.then.58, %if.then.54, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.14, %if.then.10, %if.then.6, %if.then.2, %if.then
  %54 = bitcast %struct._object** %m to i8*, !dbg !894
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !894
  %55 = load %struct._object*, %struct._object** %retval, !dbg !894
  ret %struct._object* %55, !dbg !894
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
define internal %struct._object* @stat_S_ISDIR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !355, metadata !522), !dbg !895
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !356, metadata !522), !dbg !896
  %0 = bitcast i32* %mode to i8*, !dbg !897
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !897
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !357, metadata !522), !dbg !898
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !899, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !900
  store i32 %call, i32* %mode, align 4, !dbg !898, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !903, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !905
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !906

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !907
  %tobool = icmp ne %struct._object* %call1, null, !dbg !907
  br i1 %tobool, label %if.then, label %if.end, !dbg !909

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !910
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !912

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !913, !tbaa !901
  %and = and i32 %3, 61440, !dbg !916
  %cmp2 = icmp eq i32 %and, 16384, !dbg !917
  %conv = zext i1 %cmp2 to i32, !dbg !917
  %conv3 = sext i32 %conv to i64, !dbg !918
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !919
  store %struct._object* %call4, %struct._object** %retval, !dbg !920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !920

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !921
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !921
  %5 = load %struct._object*, %struct._object** %retval, !dbg !921
  ret %struct._object* %5, !dbg !921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISCHR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !367, metadata !522), !dbg !924
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !368, metadata !522), !dbg !925
  %0 = bitcast i32* %mode to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !926
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !369, metadata !522), !dbg !927
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !928, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !929
  store i32 %call, i32* %mode, align 4, !dbg !927, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !930, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !932
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !933

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !934
  %tobool = icmp ne %struct._object* %call1, null, !dbg !934
  br i1 %tobool, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !937
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !939

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !940, !tbaa !901
  %and = and i32 %3, 61440, !dbg !943
  %cmp2 = icmp eq i32 %and, 8192, !dbg !944
  %conv = zext i1 %cmp2 to i32, !dbg !944
  %conv3 = sext i32 %conv to i64, !dbg !945
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !946
  store %struct._object* %call4, %struct._object** %retval, !dbg !947
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !947

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !948
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !948
  %5 = load %struct._object*, %struct._object** %retval, !dbg !948
  ret %struct._object* %5, !dbg !948
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISBLK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !372, metadata !522), !dbg !951
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !373, metadata !522), !dbg !952
  %0 = bitcast i32* %mode to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !953
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !374, metadata !522), !dbg !954
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !955, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !956
  store i32 %call, i32* %mode, align 4, !dbg !954, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !957, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !959
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !960

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !961
  %tobool = icmp ne %struct._object* %call1, null, !dbg !961
  br i1 %tobool, label %if.then, label %if.end, !dbg !963

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !966

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !967, !tbaa !901
  %and = and i32 %3, 61440, !dbg !970
  %cmp2 = icmp eq i32 %and, 24576, !dbg !971
  %conv = zext i1 %cmp2 to i32, !dbg !971
  %conv3 = sext i32 %conv to i64, !dbg !972
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !973
  store %struct._object* %call4, %struct._object** %retval, !dbg !974
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !975
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !975
  %5 = load %struct._object*, %struct._object** %retval, !dbg !975
  ret %struct._object* %5, !dbg !975
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISREG(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !377, metadata !522), !dbg !978
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !378, metadata !522), !dbg !979
  %0 = bitcast i32* %mode to i8*, !dbg !980
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !980
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !379, metadata !522), !dbg !981
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !982, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !983
  store i32 %call, i32* %mode, align 4, !dbg !981, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !984, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !986
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !987

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !988
  %tobool = icmp ne %struct._object* %call1, null, !dbg !988
  br i1 %tobool, label %if.then, label %if.end, !dbg !990

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !991
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !993

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !994, !tbaa !901
  %and = and i32 %3, 61440, !dbg !997
  %cmp2 = icmp eq i32 %and, 32768, !dbg !998
  %conv = zext i1 %cmp2 to i32, !dbg !998
  %conv3 = sext i32 %conv to i64, !dbg !999
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !1000
  store %struct._object* %call4, %struct._object** %retval, !dbg !1001
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1001

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1002
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1002
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1002
  ret %struct._object* %5, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISFIFO(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !382, metadata !522), !dbg !1005
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !383, metadata !522), !dbg !1006
  %0 = bitcast i32* %mode to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !384, metadata !522), !dbg !1008
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1009, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1010
  store i32 %call, i32* %mode, align 4, !dbg !1008, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1011, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1013
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1014

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1015
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1015
  br i1 %tobool, label %if.then, label %if.end, !dbg !1017

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1018
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1020

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !1021, !tbaa !901
  %and = and i32 %3, 61440, !dbg !1024
  %cmp2 = icmp eq i32 %and, 4096, !dbg !1025
  %conv = zext i1 %cmp2 to i32, !dbg !1025
  %conv3 = sext i32 %conv to i64, !dbg !1026
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !1027
  store %struct._object* %call4, %struct._object** %retval, !dbg !1028
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1028

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1029
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1029
  ret %struct._object* %5, !dbg !1029
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISLNK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !387, metadata !522), !dbg !1032
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !388, metadata !522), !dbg !1033
  %0 = bitcast i32* %mode to i8*, !dbg !1034
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !389, metadata !522), !dbg !1035
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1036, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1037
  store i32 %call, i32* %mode, align 4, !dbg !1035, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1038, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1040
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1041

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1042
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1042
  br i1 %tobool, label %if.then, label %if.end, !dbg !1044

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !1048, !tbaa !901
  %and = and i32 %3, 61440, !dbg !1051
  %cmp2 = icmp eq i32 %and, 40960, !dbg !1052
  %conv = zext i1 %cmp2 to i32, !dbg !1052
  %conv3 = sext i32 %conv to i64, !dbg !1053
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !1054
  store %struct._object* %call4, %struct._object** %retval, !dbg !1055
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1055

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1056
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1056
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1056
  ret %struct._object* %5, !dbg !1056
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISSOCK(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !392, metadata !522), !dbg !1059
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !393, metadata !522), !dbg !1060
  %0 = bitcast i32* %mode to i8*, !dbg !1061
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !394, metadata !522), !dbg !1062
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1063, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1064
  store i32 %call, i32* %mode, align 4, !dbg !1062, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1065, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1067
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1068

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1069
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1069
  br i1 %tobool, label %if.then, label %if.end, !dbg !1071

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1072
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1074

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !1075, !tbaa !901
  %and = and i32 %3, 61440, !dbg !1078
  %cmp2 = icmp eq i32 %and, 49152, !dbg !1079
  %conv = zext i1 %cmp2 to i32, !dbg !1079
  %conv3 = sext i32 %conv to i64, !dbg !1080
  %call4 = call %struct._object* @PyBool_FromLong(i64 %conv3), !dbg !1081
  store %struct._object* %call4, %struct._object** %retval, !dbg !1082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1082

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1083
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1083
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1083
  ret %struct._object* %5, !dbg !1083
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISDOOR(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !397, metadata !522), !dbg !1086
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !398, metadata !522), !dbg !1087
  %0 = bitcast i32* %mode to i8*, !dbg !1088
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1088
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !399, metadata !522), !dbg !1089
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1090, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1091
  store i32 %call, i32* %mode, align 4, !dbg !1089, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1092, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1094
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1095

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1096
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1096
  br i1 %tobool, label %if.then, label %if.end, !dbg !1098

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1101

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0), !dbg !1102
  store %struct._object* %call2, %struct._object** %retval, !dbg !1105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i32* %mode to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 4, i8* %3) #1, !dbg !1106
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1106
  ret %struct._object* %4, !dbg !1106
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISPORT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !402, metadata !522), !dbg !1109
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !403, metadata !522), !dbg !1110
  %0 = bitcast i32* %mode to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !404, metadata !522), !dbg !1112
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1113, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1114
  store i32 %call, i32* %mode, align 4, !dbg !1112, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1115, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1117
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1118

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1119
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1119
  br i1 %tobool, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1122
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1124

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0), !dbg !1125
  store %struct._object* %call2, %struct._object** %retval, !dbg !1128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1128

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i32* %mode to i8*, !dbg !1129
  call void @llvm.lifetime.end(i64 4, i8* %3) #1, !dbg !1129
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1129
  ret %struct._object* %4, !dbg !1129
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_ISWHT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !407, metadata !522), !dbg !1132
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !408, metadata !522), !dbg !1133
  %0 = bitcast i32* %mode to i8*, !dbg !1134
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !409, metadata !522), !dbg !1135
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1136, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1137
  store i32 %call, i32* %mode, align 4, !dbg !1135, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1138, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1140
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1141

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1142
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1142
  br i1 %tobool, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1147

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._object* @PyBool_FromLong(i64 0), !dbg !1148
  store %struct._object* %call2, %struct._object** %retval, !dbg !1151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1151

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i32* %mode to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 4, i8* %3) #1, !dbg !1152
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1152
  ret %struct._object* %4, !dbg !1152
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IMODE(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !412, metadata !522), !dbg !1155
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !413, metadata !522), !dbg !1156
  %0 = bitcast i32* %mode to i8*, !dbg !1157
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1157
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !414, metadata !522), !dbg !1158
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1159, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1160
  store i32 %call, i32* %mode, align 4, !dbg !1158, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1161, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1163
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1164

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1165
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1165
  br i1 %tobool, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1168

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !1169, !tbaa !901
  %and = and i32 %3, 4095, !dbg !1170
  %conv = zext i32 %and to i64, !dbg !1169
  %call2 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv), !dbg !1171
  store %struct._object* %call2, %struct._object** %retval, !dbg !1172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1172

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1173
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1173
  ret %struct._object* %5, !dbg !1173
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_S_IFMT(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !417, metadata !522), !dbg !1174
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !418, metadata !522), !dbg !1175
  %0 = bitcast i32* %mode to i8*, !dbg !1176
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1176
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !419, metadata !522), !dbg !1177
  %1 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1178, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %1), !dbg !1179
  store i32 %call, i32* %mode, align 4, !dbg !1177, !tbaa !901
  %2 = load i32, i32* %mode, align 4, !dbg !1180, !tbaa !901
  %cmp = icmp eq i32 %2, -1, !dbg !1182
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1183

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1184
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1184
  br i1 %tobool, label %if.then, label %if.end, !dbg !1186

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1187
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1187

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %mode, align 4, !dbg !1188, !tbaa !901
  %and = and i32 %3, 61440, !dbg !1189
  %conv = zext i32 %and to i64, !dbg !1188
  %call2 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv), !dbg !1190
  store %struct._object* %call2, %struct._object** %retval, !dbg !1191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1191

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %mode to i8*, !dbg !1192
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !1192
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1192
  ret %struct._object* %5, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stat_filemode(%struct._object* %self, %struct._object* %omode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %omode.addr = alloca %struct._object*, align 8
  %buf = alloca [10 x i8], align 1
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !422, metadata !522), !dbg !1193
  store %struct._object* %omode, %struct._object** %omode.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %omode.addr, metadata !423, metadata !522), !dbg !1194
  %0 = bitcast [10 x i8]* %buf to i8*, !dbg !1195
  call void @llvm.lifetime.start(i64 10, i8* %0) #1, !dbg !1195
  call void @llvm.dbg.declare(metadata [10 x i8]* %buf, metadata !424, metadata !522), !dbg !1196
  %1 = bitcast i32* %mode to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1197
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !428, metadata !522), !dbg !1198
  %2 = load %struct._object*, %struct._object** %omode.addr, align 8, !dbg !1199, !tbaa !526
  %call = call i32 @_PyLong_AsMode_t(%struct._object* %2), !dbg !1200
  store i32 %call, i32* %mode, align 4, !dbg !1201, !tbaa !901
  %3 = load i32, i32* %mode, align 4, !dbg !1202, !tbaa !901
  %cmp = icmp eq i32 %3, -1, !dbg !1204
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1205

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1206
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1206
  br i1 %tobool, label %if.then, label %if.end, !dbg !1208

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1209

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %mode, align 4, !dbg !1210, !tbaa !901
  %call2 = call signext i8 @filetype(i32 %4), !dbg !1211
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %buf, i32 0, i64 0, !dbg !1212
  store i8 %call2, i8* %arrayidx, align 1, !dbg !1213, !tbaa !1214
  %5 = load i32, i32* %mode, align 4, !dbg !1215, !tbaa !901
  %arrayidx3 = getelementptr [10 x i8], [10 x i8]* %buf, i32 0, i64 1, !dbg !1216
  call void @fileperm(i32 %5, i8* %arrayidx3), !dbg !1217
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0, !dbg !1218
  %call4 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %arraydecay, i64 10), !dbg !1219
  store %struct._object* %call4, %struct._object** %retval, !dbg !1220
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1220

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %mode to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !1221
  %7 = bitcast [10 x i8]* %buf to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 10, i8* %7) #1, !dbg !1221
  %8 = load %struct._object*, %struct._object** %retval, !dbg !1221
  ret %struct._object* %8, !dbg !1221
}

; Function Attrs: nounwind uwtable
define internal i32 @_PyLong_AsMode_t(%struct._object* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !362, metadata !522), !dbg !1222
  %0 = bitcast i64* %value to i8*, !dbg !1223
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1223
  call void @llvm.dbg.declare(metadata i64* %value, metadata !363, metadata !522), !dbg !1224
  %1 = bitcast i32* %mode to i8*, !dbg !1225
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1225
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !364, metadata !522), !dbg !1226
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1227, !tbaa !526
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %2), !dbg !1228
  store i64 %call, i64* %value, align 8, !dbg !1229, !tbaa !1230
  %3 = load i64, i64* %value, align 8, !dbg !1232, !tbaa !1230
  %cmp = icmp eq i64 %3, -1, !dbg !1234
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1235

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1236
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1236
  br i1 %tobool, label %if.then, label %if.end, !dbg !1238

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !1239
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1239

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %value, align 8, !dbg !1240, !tbaa !1230
  %conv = trunc i64 %4 to i32, !dbg !1241
  store i32 %conv, i32* %mode, align 4, !dbg !1242, !tbaa !901
  %5 = load i32, i32* %mode, align 4, !dbg !1243, !tbaa !901
  %conv2 = zext i32 %5 to i64, !dbg !1245
  %6 = load i64, i64* %value, align 8, !dbg !1246, !tbaa !1230
  %cmp3 = icmp ne i64 %conv2, %6, !dbg !1247
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !1248

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1249, !tbaa !526
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0)), !dbg !1251
  store i32 -1, i32* %retval, !dbg !1252
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1252

if.end.6:                                         ; preds = %if.end
  %8 = load i32, i32* %mode, align 4, !dbg !1253, !tbaa !901
  store i32 %8, i32* %retval, !dbg !1254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1254

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %9 = bitcast i32* %mode to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !1255
  %10 = bitcast i64* %value to i8*, !dbg !1255
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1255
  %11 = load i32, i32* %retval, !dbg !1255
  ret i32 %11, !dbg !1255
}

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @filetype(i32 %mode) #0 {
entry:
  %retval = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !901
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !433, metadata !522), !dbg !1256
  %0 = load i32, i32* %mode.addr, align 4, !dbg !1257, !tbaa !901
  %and = and i32 %0, 61440, !dbg !1259
  %cmp = icmp eq i32 %and, 32768, !dbg !1260
  br i1 %cmp, label %if.then, label %if.end, !dbg !1261

if.then:                                          ; preds = %entry
  store i8 45, i8* %retval, !dbg !1262
  br label %return, !dbg !1262

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4, !dbg !1264, !tbaa !901
  %and1 = and i32 %1, 61440, !dbg !1266
  %cmp2 = icmp eq i32 %and1, 16384, !dbg !1267
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1268

if.then.3:                                        ; preds = %if.end
  store i8 100, i8* %retval, !dbg !1269
  br label %return, !dbg !1269

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4, !dbg !1271, !tbaa !901
  %and5 = and i32 %2, 61440, !dbg !1273
  %cmp6 = icmp eq i32 %and5, 40960, !dbg !1274
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1275

if.then.7:                                        ; preds = %if.end.4
  store i8 108, i8* %retval, !dbg !1276
  br label %return, !dbg !1276

if.end.8:                                         ; preds = %if.end.4
  %3 = load i32, i32* %mode.addr, align 4, !dbg !1278, !tbaa !901
  %and9 = and i32 %3, 61440, !dbg !1280
  %cmp10 = icmp eq i32 %and9, 24576, !dbg !1281
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1282

if.then.11:                                       ; preds = %if.end.8
  store i8 98, i8* %retval, !dbg !1283
  br label %return, !dbg !1283

if.end.12:                                        ; preds = %if.end.8
  %4 = load i32, i32* %mode.addr, align 4, !dbg !1285, !tbaa !901
  %and13 = and i32 %4, 61440, !dbg !1287
  %cmp14 = icmp eq i32 %and13, 8192, !dbg !1288
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1289

if.then.15:                                       ; preds = %if.end.12
  store i8 99, i8* %retval, !dbg !1290
  br label %return, !dbg !1290

if.end.16:                                        ; preds = %if.end.12
  %5 = load i32, i32* %mode.addr, align 4, !dbg !1292, !tbaa !901
  %and17 = and i32 %5, 61440, !dbg !1294
  %cmp18 = icmp eq i32 %and17, 4096, !dbg !1295
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !1296

if.then.19:                                       ; preds = %if.end.16
  store i8 112, i8* %retval, !dbg !1297
  br label %return, !dbg !1297

if.end.20:                                        ; preds = %if.end.16
  %6 = load i32, i32* %mode.addr, align 4, !dbg !1299, !tbaa !901
  %and21 = and i32 %6, 61440, !dbg !1301
  %cmp22 = icmp eq i32 %and21, 49152, !dbg !1302
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !1303

if.then.23:                                       ; preds = %if.end.20
  store i8 115, i8* %retval, !dbg !1304
  br label %return, !dbg !1304

if.end.24:                                        ; preds = %if.end.20
  store i8 63, i8* %retval, !dbg !1306
  br label %return, !dbg !1306

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %7 = load i8, i8* %retval, !dbg !1307
  ret i8 %7, !dbg !1307
}

; Function Attrs: nounwind uwtable
define internal void @fileperm(i32 %mode, i8* %buf) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !901
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !438, metadata !522), !dbg !1308
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !526
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !439, metadata !522), !dbg !1309
  %0 = load i32, i32* %mode.addr, align 4, !dbg !1310, !tbaa !901
  %and = and i32 %0, 256, !dbg !1311
  %tobool = icmp ne i32 %and, 0, !dbg !1310
  %cond = select i1 %tobool, i32 114, i32 45, !dbg !1310
  %conv = trunc i32 %cond to i8, !dbg !1310
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !1312, !tbaa !526
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !1312
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1313, !tbaa !1214
  %2 = load i32, i32* %mode.addr, align 4, !dbg !1314, !tbaa !901
  %and1 = and i32 %2, 128, !dbg !1315
  %tobool2 = icmp ne i32 %and1, 0, !dbg !1314
  %cond3 = select i1 %tobool2, i32 119, i32 45, !dbg !1314
  %conv4 = trunc i32 %cond3 to i8, !dbg !1314
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !1316, !tbaa !526
  %arrayidx5 = getelementptr i8, i8* %3, i64 1, !dbg !1316
  store i8 %conv4, i8* %arrayidx5, align 1, !dbg !1317, !tbaa !1214
  %4 = load i32, i32* %mode.addr, align 4, !dbg !1318, !tbaa !901
  %and6 = and i32 %4, 2048, !dbg !1320
  %tobool7 = icmp ne i32 %and6, 0, !dbg !1320
  br i1 %tobool7, label %if.then, label %if.else, !dbg !1321

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %mode.addr, align 4, !dbg !1322, !tbaa !901
  %and8 = and i32 %5, 64, !dbg !1324
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1322
  %cond10 = select i1 %tobool9, i32 115, i32 83, !dbg !1322
  %conv11 = trunc i32 %cond10 to i8, !dbg !1322
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !1325, !tbaa !526
  %arrayidx12 = getelementptr i8, i8* %6, i64 2, !dbg !1325
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !1326, !tbaa !1214
  br label %if.end, !dbg !1327

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %mode.addr, align 4, !dbg !1328, !tbaa !901
  %and13 = and i32 %7, 64, !dbg !1330
  %tobool14 = icmp ne i32 %and13, 0, !dbg !1328
  %cond15 = select i1 %tobool14, i32 120, i32 45, !dbg !1328
  %conv16 = trunc i32 %cond15 to i8, !dbg !1328
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !1331, !tbaa !526
  %arrayidx17 = getelementptr i8, i8* %8, i64 2, !dbg !1331
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !1332, !tbaa !1214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %mode.addr, align 4, !dbg !1333, !tbaa !901
  %and18 = and i32 %9, 32, !dbg !1334
  %tobool19 = icmp ne i32 %and18, 0, !dbg !1333
  %cond20 = select i1 %tobool19, i32 114, i32 45, !dbg !1333
  %conv21 = trunc i32 %cond20 to i8, !dbg !1333
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !1335, !tbaa !526
  %arrayidx22 = getelementptr i8, i8* %10, i64 3, !dbg !1335
  store i8 %conv21, i8* %arrayidx22, align 1, !dbg !1336, !tbaa !1214
  %11 = load i32, i32* %mode.addr, align 4, !dbg !1337, !tbaa !901
  %and23 = and i32 %11, 16, !dbg !1338
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1337
  %cond25 = select i1 %tobool24, i32 119, i32 45, !dbg !1337
  %conv26 = trunc i32 %cond25 to i8, !dbg !1337
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !1339, !tbaa !526
  %arrayidx27 = getelementptr i8, i8* %12, i64 4, !dbg !1339
  store i8 %conv26, i8* %arrayidx27, align 1, !dbg !1340, !tbaa !1214
  %13 = load i32, i32* %mode.addr, align 4, !dbg !1341, !tbaa !901
  %and28 = and i32 %13, 1024, !dbg !1343
  %tobool29 = icmp ne i32 %and28, 0, !dbg !1343
  br i1 %tobool29, label %if.then.30, label %if.else.36, !dbg !1344

if.then.30:                                       ; preds = %if.end
  %14 = load i32, i32* %mode.addr, align 4, !dbg !1345, !tbaa !901
  %and31 = and i32 %14, 8, !dbg !1347
  %tobool32 = icmp ne i32 %and31, 0, !dbg !1345
  %cond33 = select i1 %tobool32, i32 115, i32 83, !dbg !1345
  %conv34 = trunc i32 %cond33 to i8, !dbg !1345
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !1348, !tbaa !526
  %arrayidx35 = getelementptr i8, i8* %15, i64 5, !dbg !1348
  store i8 %conv34, i8* %arrayidx35, align 1, !dbg !1349, !tbaa !1214
  br label %if.end.42, !dbg !1350

if.else.36:                                       ; preds = %if.end
  %16 = load i32, i32* %mode.addr, align 4, !dbg !1351, !tbaa !901
  %and37 = and i32 %16, 8, !dbg !1353
  %tobool38 = icmp ne i32 %and37, 0, !dbg !1351
  %cond39 = select i1 %tobool38, i32 120, i32 45, !dbg !1351
  %conv40 = trunc i32 %cond39 to i8, !dbg !1351
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !1354, !tbaa !526
  %arrayidx41 = getelementptr i8, i8* %17, i64 5, !dbg !1354
  store i8 %conv40, i8* %arrayidx41, align 1, !dbg !1355, !tbaa !1214
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %if.then.30
  %18 = load i32, i32* %mode.addr, align 4, !dbg !1356, !tbaa !901
  %and43 = and i32 %18, 4, !dbg !1357
  %tobool44 = icmp ne i32 %and43, 0, !dbg !1356
  %cond45 = select i1 %tobool44, i32 114, i32 45, !dbg !1356
  %conv46 = trunc i32 %cond45 to i8, !dbg !1356
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !1358, !tbaa !526
  %arrayidx47 = getelementptr i8, i8* %19, i64 6, !dbg !1358
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !1359, !tbaa !1214
  %20 = load i32, i32* %mode.addr, align 4, !dbg !1360, !tbaa !901
  %and48 = and i32 %20, 2, !dbg !1361
  %tobool49 = icmp ne i32 %and48, 0, !dbg !1360
  %cond50 = select i1 %tobool49, i32 119, i32 45, !dbg !1360
  %conv51 = trunc i32 %cond50 to i8, !dbg !1360
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !1362, !tbaa !526
  %arrayidx52 = getelementptr i8, i8* %21, i64 7, !dbg !1362
  store i8 %conv51, i8* %arrayidx52, align 1, !dbg !1363, !tbaa !1214
  %22 = load i32, i32* %mode.addr, align 4, !dbg !1364, !tbaa !901
  %and53 = and i32 %22, 512, !dbg !1366
  %tobool54 = icmp ne i32 %and53, 0, !dbg !1366
  br i1 %tobool54, label %if.then.55, label %if.else.61, !dbg !1367

if.then.55:                                       ; preds = %if.end.42
  %23 = load i32, i32* %mode.addr, align 4, !dbg !1368, !tbaa !901
  %and56 = and i32 %23, 1, !dbg !1370
  %tobool57 = icmp ne i32 %and56, 0, !dbg !1368
  %cond58 = select i1 %tobool57, i32 116, i32 84, !dbg !1368
  %conv59 = trunc i32 %cond58 to i8, !dbg !1368
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !1371, !tbaa !526
  %arrayidx60 = getelementptr i8, i8* %24, i64 8, !dbg !1371
  store i8 %conv59, i8* %arrayidx60, align 1, !dbg !1372, !tbaa !1214
  br label %if.end.67, !dbg !1373

if.else.61:                                       ; preds = %if.end.42
  %25 = load i32, i32* %mode.addr, align 4, !dbg !1374, !tbaa !901
  %and62 = and i32 %25, 1, !dbg !1376
  %tobool63 = icmp ne i32 %and62, 0, !dbg !1374
  %cond64 = select i1 %tobool63, i32 120, i32 45, !dbg !1374
  %conv65 = trunc i32 %cond64 to i8, !dbg !1374
  %26 = load i8*, i8** %buf.addr, align 8, !dbg !1377, !tbaa !526
  %arrayidx66 = getelementptr i8, i8* %26, i64 8, !dbg !1377
  store i8 %conv65, i8* %arrayidx66, align 1, !dbg !1378, !tbaa !1214
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.61, %if.then.55
  ret void, !dbg !1379
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!518, !519}
!llvm.ident = !{!520}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11, globals: !440)
!1 = !DIFile(filename: "_stat.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !6, line: 70, baseType: !7)
!6 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !8, line: 138, baseType: !9)
!8 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !{!12, !353, !358, !365, !370, !375, !380, !385, !390, !395, !400, !405, !410, !415, !420, !429, !434}
!12 = !DISubprogram(name: "PyInit__stat", scope: !13, file: !13, line: 492, type: !14, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__stat, variables: !351)
!13 = !DIFile(filename: "./Modules/_stat.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !8, line: 181, baseType: !27)
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !31)
!31 = !{!32, !38, !42, !43, !44, !49, !111, !116, !121, !122, !127, !179, !210, !222, !228, !229, !230, !232, !234, !265, !266, !267, !276, !277, !282, !283, !285, !287, !297, !300, !318, !319, !320, !322, !324, !325, !327, !332, !337, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !18, line: 335, baseType: !33, size: 192, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !34, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !34, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !30, file: !18, line: 336, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !30, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !30, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !30, file: !18, line: 341, baseType: !45, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !16}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !30, file: !18, line: 342, baseType: !50, size: 64, align: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !16, !55, !54}
!54 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !58, line: 246, size: 1728, align: 64, elements: !59)
!58 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!59 = !{!60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !81, !82, !83, !84, !86, !88, !90, !94, !97, !99, !100, !101, !102, !103, !106, !107}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !57, file: !58, line: 247, baseType: !54, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !57, file: !58, line: 252, baseType: !62, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !57, file: !58, line: 253, baseType: !62, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !57, file: !58, line: 254, baseType: !62, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !57, file: !58, line: 255, baseType: !62, size: 64, align: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !57, file: !58, line: 256, baseType: !62, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !57, file: !58, line: 257, baseType: !62, size: 64, align: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !57, file: !58, line: 258, baseType: !62, size: 64, align: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !57, file: !58, line: 259, baseType: !62, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !57, file: !58, line: 261, baseType: !62, size: 64, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !57, file: !58, line: 262, baseType: !62, size: 64, align: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !57, file: !58, line: 263, baseType: !62, size: 64, align: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !57, file: !58, line: 265, baseType: !74, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !58, line: 161, size: 192, align: 64, elements: !76)
!76 = !{!77, !78, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !75, file: !58, line: 162, baseType: !74, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !75, file: !58, line: 163, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !75, file: !58, line: 167, baseType: !54, size: 32, align: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !57, file: !58, line: 267, baseType: !79, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !57, file: !58, line: 269, baseType: !54, size: 32, align: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !57, file: !58, line: 273, baseType: !54, size: 32, align: 32, offset: 928)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !57, file: !58, line: 275, baseType: !85, size: 64, align: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !8, line: 140, baseType: !27)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !57, file: !58, line: 279, baseType: !87, size: 16, align: 16, offset: 1024)
!87 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !57, file: !58, line: 280, baseType: !89, size: 8, align: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !57, file: !58, line: 281, baseType: !91, size: 8, align: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, align: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !57, file: !58, line: 285, baseType: !95, size: 64, align: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !58, line: 155, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !57, file: !58, line: 294, baseType: !98, size: 64, align: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !8, line: 141, baseType: !27)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !57, file: !58, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !57, file: !58, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !57, file: !58, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !57, file: !58, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !57, file: !58, line: 307, baseType: !104, size: 64, align: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !10)
!105 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !57, file: !58, line: 309, baseType: !54, size: 32, align: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !57, file: !58, line: 311, baseType: !108, size: 160, align: 8, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !30, file: !18, line: 343, baseType: !112, size: 64, align: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!16, !16, !62}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !30, file: !18, line: 344, baseType: !117, size: 64, align: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!54, !16, !62, !16}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !30, file: !18, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !30, file: !18, line: 346, baseType: !123, size: 64, align: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!16, !16}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !30, file: !18, line: 350, baseType: !128, size: 64, align: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !131)
!131 = !{!132, !137, !138, !139, !140, !141, !146, !148, !149, !150, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !130, file: !18, line: 241, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!16, !16, !16}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !130, file: !18, line: 242, baseType: !133, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !130, file: !18, line: 243, baseType: !133, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !130, file: !18, line: 244, baseType: !133, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !130, file: !18, line: 245, baseType: !133, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !130, file: !18, line: 246, baseType: !142, size: 64, align: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!16, !16, !16, !16}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !130, file: !18, line: 247, baseType: !147, size: 64, align: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !124)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !130, file: !18, line: 248, baseType: !147, size: 64, align: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !130, file: !18, line: 249, baseType: !147, size: 64, align: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !130, file: !18, line: 250, baseType: !151, size: 64, align: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!54, !16}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !130, file: !18, line: 251, baseType: !147, size: 64, align: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !130, file: !18, line: 252, baseType: !133, size: 64, align: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !130, file: !18, line: 253, baseType: !133, size: 64, align: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !130, file: !18, line: 254, baseType: !133, size: 64, align: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !130, file: !18, line: 255, baseType: !133, size: 64, align: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !130, file: !18, line: 256, baseType: !133, size: 64, align: 64, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !130, file: !18, line: 257, baseType: !147, size: 64, align: 64, offset: 1024)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !130, file: !18, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !130, file: !18, line: 259, baseType: !147, size: 64, align: 64, offset: 1152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !130, file: !18, line: 261, baseType: !133, size: 64, align: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !130, file: !18, line: 262, baseType: !133, size: 64, align: 64, offset: 1280)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !130, file: !18, line: 263, baseType: !133, size: 64, align: 64, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !130, file: !18, line: 264, baseType: !133, size: 64, align: 64, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !130, file: !18, line: 265, baseType: !142, size: 64, align: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !130, file: !18, line: 266, baseType: !133, size: 64, align: 64, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !130, file: !18, line: 267, baseType: !133, size: 64, align: 64, offset: 1600)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !130, file: !18, line: 268, baseType: !133, size: 64, align: 64, offset: 1664)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !130, file: !18, line: 269, baseType: !133, size: 64, align: 64, offset: 1728)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !130, file: !18, line: 270, baseType: !133, size: 64, align: 64, offset: 1792)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !130, file: !18, line: 272, baseType: !133, size: 64, align: 64, offset: 1856)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !130, file: !18, line: 273, baseType: !133, size: 64, align: 64, offset: 1920)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !130, file: !18, line: 274, baseType: !133, size: 64, align: 64, offset: 1984)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !130, file: !18, line: 275, baseType: !133, size: 64, align: 64, offset: 2048)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !130, file: !18, line: 277, baseType: !147, size: 64, align: 64, offset: 2112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !30, file: !18, line: 351, baseType: !180, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !183)
!183 = !{!184, !189, !190, !195, !196, !197, !202, !203, !208, !209}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !182, file: !18, line: 281, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!22, !16}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !182, file: !18, line: 282, baseType: !133, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !182, file: !18, line: 283, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!16, !16, !22}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !182, file: !18, line: 284, baseType: !191, size: 64, align: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !182, file: !18, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !182, file: !18, line: 286, baseType: !198, size: 64, align: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!54, !16, !22, !16}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !182, file: !18, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !182, file: !18, line: 288, baseType: !204, size: 64, align: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!54, !16, !16}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !182, file: !18, line: 290, baseType: !133, size: 64, align: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !182, file: !18, line: 291, baseType: !191, size: 64, align: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !30, file: !18, line: 352, baseType: !211, size: 64, align: 64, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !213, file: !18, line: 295, baseType: !185, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !213, file: !18, line: 296, baseType: !133, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !213, file: !18, line: 297, baseType: !218, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!54, !16, !16, !16}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !30, file: !18, line: 356, baseType: !223, size: 64, align: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !16}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !30, file: !18, line: 357, baseType: !142, size: 64, align: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !30, file: !18, line: 358, baseType: !123, size: 64, align: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !30, file: !18, line: 359, baseType: !231, size: 64, align: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !134)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !30, file: !18, line: 360, baseType: !233, size: 64, align: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !219)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !30, file: !18, line: 363, baseType: !235, size: 64, align: 64, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !238)
!238 = !{!239, !260}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !237, file: !18, line: 302, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!54, !16, !244, !54}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !257, !258, !259}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !18, line: 179, baseType: !4, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !246, file: !18, line: 180, baseType: !16, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !246, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !246, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !246, file: !18, line: 184, baseType: !54, size: 32, align: 32, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !246, file: !18, line: 185, baseType: !54, size: 32, align: 32, offset: 288)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !246, file: !18, line: 186, baseType: !62, size: 64, align: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !246, file: !18, line: 187, baseType: !256, size: 64, align: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !246, file: !18, line: 188, baseType: !256, size: 64, align: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !246, file: !18, line: 189, baseType: !256, size: 64, align: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !246, file: !18, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !237, file: !18, line: 303, baseType: !261, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !16, !244}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !30, file: !18, line: 366, baseType: !10, size: 64, align: 64, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !30, file: !18, line: 368, baseType: !39, size: 64, align: 64, offset: 1408)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !30, file: !18, line: 372, baseType: !268, size: 64, align: 64, offset: 1472)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!54, !16, !272, !4}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!54, !16, !4}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !30, file: !18, line: 375, baseType: !151, size: 64, align: 64, offset: 1536)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !30, file: !18, line: 379, baseType: !278, size: 64, align: 64, offset: 1600)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!16, !16, !16, !54}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !30, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !30, file: !18, line: 385, baseType: !284, size: 64, align: 64, offset: 1728)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !124)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !30, file: !18, line: 386, baseType: !286, size: 64, align: 64, offset: 1792)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !124)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !30, file: !18, line: 389, baseType: !288, size: 64, align: 64, offset: 1856)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !290, line: 40, size: 256, align: 64, elements: !291)
!290 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!291 = !{!292, !293, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !289, file: !290, line: 41, baseType: !39, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !289, file: !290, line: 42, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !290, line: 18, baseType: !134)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !289, file: !290, line: 43, baseType: !54, size: 32, align: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !289, file: !290, line: 45, baseType: !39, size: 64, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !18, line: 390, baseType: !298, size: 64, align: 64, offset: 1920)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !18, line: 390, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !18, line: 391, baseType: !301, size: 64, align: 64, offset: 1984)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !303, line: 11, size: 320, align: 64, elements: !304)
!303 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!304 = !{!305, !306, !311, !316, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 12, baseType: !62, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !302, file: !303, line: 13, baseType: !307, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !303, line: 8, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!16, !16, !4}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !302, file: !303, line: 14, baseType: !312, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !303, line: 9, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!54, !16, !16, !4}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !302, file: !303, line: 15, baseType: !62, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !302, file: !303, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !30, file: !18, line: 392, baseType: !29, size: 64, align: 64, offset: 2048)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !30, file: !18, line: 393, baseType: !16, size: 64, align: 64, offset: 2112)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !30, file: !18, line: 394, baseType: !321, size: 64, align: 64, offset: 2176)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !143)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !30, file: !18, line: 395, baseType: !323, size: 64, align: 64, offset: 2240)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !219)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !30, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !30, file: !18, line: 397, baseType: !326, size: 64, align: 64, offset: 2368)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !219)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !30, file: !18, line: 398, baseType: !328, size: 64, align: 64, offset: 2432)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!16, !29, !22}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !30, file: !18, line: 399, baseType: !333, size: 64, align: 64, offset: 2496)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!16, !29, !16, !16}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !30, file: !18, line: 400, baseType: !338, size: 64, align: 64, offset: 2560)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !4}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !30, file: !18, line: 401, baseType: !151, size: 64, align: 64, offset: 2624)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !30, file: !18, line: 402, baseType: !16, size: 64, align: 64, offset: 2688)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !30, file: !18, line: 403, baseType: !16, size: 64, align: 64, offset: 2752)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !30, file: !18, line: 404, baseType: !16, size: 64, align: 64, offset: 2816)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !30, file: !18, line: 405, baseType: !16, size: 64, align: 64, offset: 2880)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !30, file: !18, line: 406, baseType: !16, size: 64, align: 64, offset: 2944)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !30, file: !18, line: 407, baseType: !45, size: 64, align: 64, offset: 3008)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !30, file: !18, line: 410, baseType: !9, size: 32, align: 32, offset: 3072)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !30, file: !18, line: 412, baseType: !45, size: 64, align: 64, offset: 3136)
!351 = !{!352}
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !12, file: !13, line: 494, type: !16)
!353 = !DISubprogram(name: "stat_S_ISDIR", scope: !13, file: !13, line: 265, type: !135, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDIR, variables: !354)
!354 = !{!355, !356, !357}
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !353, file: !13, line: 265, type: !16)
!356 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !353, file: !13, line: 265, type: !16)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !353, file: !13, line: 265, type: !5)
!358 = !DISubprogram(name: "_PyLong_AsMode_t", scope: !13, file: !13, line: 236, type: !359, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_PyLong_AsMode_t, variables: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!5, !16}
!361 = !{!362, !363, !364}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !358, file: !13, line: 236, type: !16)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !358, file: !13, line: 238, type: !10)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !358, file: !13, line: 239, type: !5)
!365 = !DISubprogram(name: "stat_S_ISCHR", scope: !13, file: !13, line: 269, type: !135, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISCHR, variables: !366)
!366 = !{!367, !368, !369}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !365, file: !13, line: 269, type: !16)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !365, file: !13, line: 269, type: !16)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !365, file: !13, line: 269, type: !5)
!370 = !DISubprogram(name: "stat_S_ISBLK", scope: !13, file: !13, line: 273, type: !135, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISBLK, variables: !371)
!371 = !{!372, !373, !374}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !370, file: !13, line: 273, type: !16)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !370, file: !13, line: 273, type: !16)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !370, file: !13, line: 273, type: !5)
!375 = !DISubprogram(name: "stat_S_ISREG", scope: !13, file: !13, line: 277, type: !135, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISREG, variables: !376)
!376 = !{!377, !378, !379}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !375, file: !13, line: 277, type: !16)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !375, file: !13, line: 277, type: !16)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !375, file: !13, line: 277, type: !5)
!380 = !DISubprogram(name: "stat_S_ISFIFO", scope: !13, file: !13, line: 281, type: !135, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISFIFO, variables: !381)
!381 = !{!382, !383, !384}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !380, file: !13, line: 281, type: !16)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !380, file: !13, line: 281, type: !16)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !380, file: !13, line: 281, type: !5)
!385 = !DISubprogram(name: "stat_S_ISLNK", scope: !13, file: !13, line: 285, type: !135, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISLNK, variables: !386)
!386 = !{!387, !388, !389}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !385, file: !13, line: 285, type: !16)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !385, file: !13, line: 285, type: !16)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !385, file: !13, line: 285, type: !5)
!390 = !DISubprogram(name: "stat_S_ISSOCK", scope: !13, file: !13, line: 289, type: !135, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISSOCK, variables: !391)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !390, file: !13, line: 289, type: !16)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !390, file: !13, line: 289, type: !16)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !390, file: !13, line: 289, type: !5)
!395 = !DISubprogram(name: "stat_S_ISDOOR", scope: !13, file: !13, line: 293, type: !135, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISDOOR, variables: !396)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !13, line: 293, type: !16)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !395, file: !13, line: 293, type: !16)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !395, file: !13, line: 293, type: !5)
!400 = !DISubprogram(name: "stat_S_ISPORT", scope: !13, file: !13, line: 297, type: !135, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISPORT, variables: !401)
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !400, file: !13, line: 297, type: !16)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !400, file: !13, line: 297, type: !16)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !400, file: !13, line: 297, type: !5)
!405 = !DISubprogram(name: "stat_S_ISWHT", scope: !13, file: !13, line: 301, type: !135, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_ISWHT, variables: !406)
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !405, file: !13, line: 301, type: !16)
!408 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !405, file: !13, line: 301, type: !16)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !405, file: !13, line: 301, type: !5)
!410 = !DISubprogram(name: "stat_S_IMODE", scope: !13, file: !13, line: 310, type: !135, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_IMODE, variables: !411)
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !410, file: !13, line: 310, type: !16)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !410, file: !13, line: 310, type: !16)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !410, file: !13, line: 312, type: !5)
!415 = !DISubprogram(name: "stat_S_IFMT", scope: !13, file: !13, line: 323, type: !135, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_S_IFMT, variables: !416)
!416 = !{!417, !418, !419}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !415, file: !13, line: 323, type: !16)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !415, file: !13, line: 323, type: !16)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !415, file: !13, line: 325, type: !5)
!420 = !DISubprogram(name: "stat_filemode", scope: !13, file: !13, line: 384, type: !135, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @stat_filemode, variables: !421)
!421 = !{!422, !423, !424, !428}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !420, file: !13, line: 384, type: !16)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "omode", arg: 2, scope: !420, file: !13, line: 384, type: !16)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !420, file: !13, line: 386, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 80, align: 8, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 10)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !420, file: !13, line: 387, type: !5)
!429 = !DISubprogram(name: "filetype", scope: !13, file: !13, line: 335, type: !430, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i32)* @filetype, variables: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!41, !5}
!432 = !{!433}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 1, scope: !429, file: !13, line: 335, type: !5)
!434 = !DISubprogram(name: "fileperm", scope: !13, file: !13, line: 355, type: !435, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @fileperm, variables: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !5, !62}
!437 = !{!438, !439}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 1, scope: !434, file: !13, line: 355, type: !5)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !434, file: !13, line: 355, type: !62)
!440 = !{!441, !464, !468, !472, !476, !480, !484, !488, !492, !496, !500, !504, !505, !509, !513, !514}
!441 = !DIGlobalVariable(name: "statmodule", scope: !0, file: !13, line: 479, type: !442, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @statmodule)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !443, line: 47, size: 832, align: 64, elements: !444)
!443 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!444 = !{!445, !454, !455, !456, !457, !460, !461, !462, !463}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !442, file: !443, line: 48, baseType: !446, size: 320, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !443, line: 38, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !443, line: 33, size: 320, align: 64, elements: !448)
!448 = !{!449, !450, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !447, file: !443, line: 34, baseType: !17, size: 128, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !447, file: !443, line: 35, baseType: !451, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !447, file: !443, line: 36, baseType: !22, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !447, file: !443, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !442, file: !443, line: 49, baseType: !39, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !442, file: !443, line: 50, baseType: !39, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !442, file: !443, line: 51, baseType: !22, size: 64, align: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !442, file: !443, line: 52, baseType: !458, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !290, line: 47, baseType: !289)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !442, file: !443, line: 53, baseType: !151, size: 64, align: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !442, file: !443, line: 54, baseType: !268, size: 64, align: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !442, file: !443, line: 55, baseType: !151, size: 64, align: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !442, file: !443, line: 56, baseType: !338, size: 64, align: 64, offset: 768)
!464 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !13, line: 417, type: !465, isLocal: true, isDefinition: true, variable: [1383 x i8]* @module_doc)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 11064, align: 8, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 1383)
!468 = !DIGlobalVariable(name: "stat_methods", scope: !0, file: !13, line: 399, type: !469, isLocal: true, isDefinition: true, variable: [14 x %struct.PyMethodDef]* @stat_methods)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 3584, align: 64, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 14)
!472 = !DIGlobalVariable(name: "stat_S_ISDIR_doc", scope: !0, file: !13, line: 265, type: !473, isLocal: true, isDefinition: true, variable: [64 x i8]* @stat_S_ISDIR_doc)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, align: 8, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 64)
!476 = !DIGlobalVariable(name: "stat_S_ISCHR_doc", scope: !0, file: !13, line: 269, type: !477, isLocal: true, isDefinition: true, variable: [84 x i8]* @stat_S_ISCHR_doc)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 672, align: 8, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 84)
!480 = !DIGlobalVariable(name: "stat_S_ISBLK_doc", scope: !0, file: !13, line: 273, type: !481, isLocal: true, isDefinition: true, variable: [80 x i8]* @stat_S_ISBLK_doc)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, align: 8, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 80)
!484 = !DIGlobalVariable(name: "stat_S_ISREG_doc", scope: !0, file: !13, line: 277, type: !485, isLocal: true, isDefinition: true, variable: [67 x i8]* @stat_S_ISREG_doc)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 536, align: 8, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 67)
!488 = !DIGlobalVariable(name: "stat_S_ISFIFO_doc", scope: !0, file: !13, line: 281, type: !489, isLocal: true, isDefinition: true, variable: [73 x i8]* @stat_S_ISFIFO_doc)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 584, align: 8, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 73)
!492 = !DIGlobalVariable(name: "stat_S_ISLNK_doc", scope: !0, file: !13, line: 285, type: !493, isLocal: true, isDefinition: true, variable: [68 x i8]* @stat_S_ISLNK_doc)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 544, align: 8, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 68)
!496 = !DIGlobalVariable(name: "stat_S_ISSOCK_doc", scope: !0, file: !13, line: 289, type: !497, isLocal: true, isDefinition: true, variable: [62 x i8]* @stat_S_ISSOCK_doc)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 496, align: 8, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 62)
!500 = !DIGlobalVariable(name: "stat_S_ISDOOR_doc", scope: !0, file: !13, line: 293, type: !501, isLocal: true, isDefinition: true, variable: [60 x i8]* @stat_S_ISDOOR_doc)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 480, align: 8, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 60)
!504 = !DIGlobalVariable(name: "stat_S_ISPORT_doc", scope: !0, file: !13, line: 297, type: !485, isLocal: true, isDefinition: true, variable: [67 x i8]* @stat_S_ISPORT_doc)
!505 = !DIGlobalVariable(name: "stat_S_ISWHT_doc", scope: !0, file: !13, line: 301, type: !506, isLocal: true, isDefinition: true, variable: [63 x i8]* @stat_S_ISWHT_doc)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 504, align: 8, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 63)
!509 = !DIGlobalVariable(name: "stat_S_IMODE_doc", scope: !0, file: !13, line: 306, type: !510, isLocal: true, isDefinition: true, variable: [69 x i8]* @stat_S_IMODE_doc)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 552, align: 8, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 69)
!513 = !DIGlobalVariable(name: "stat_S_IFMT_doc", scope: !0, file: !13, line: 319, type: !493, isLocal: true, isDefinition: true, variable: [68 x i8]* @stat_S_IFMT_doc)
!514 = !DIGlobalVariable(name: "stat_filemode_doc", scope: !0, file: !13, line: 380, type: !515, isLocal: true, isDefinition: true, variable: [59 x i8]* @stat_filemode_doc)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 472, align: 8, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 59)
!518 = !{i32 2, !"Dwarf Version", i32 4}
!519 = !{i32 2, !"Debug Info Version", i32 3}
!520 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!521 = !DILocation(line: 494, column: 5, scope: !12)
!522 = !DIExpression()
!523 = !DILocation(line: 494, column: 15, scope: !12)
!524 = !DILocation(line: 495, column: 9, scope: !12)
!525 = !DILocation(line: 495, column: 7, scope: !12)
!526 = !{!527, !527, i64 0}
!527 = !{!"any pointer", !528, i64 0}
!528 = !{!"omnipotent char", !529, i64 0}
!529 = !{!"Simple C/C++ TBAA"}
!530 = !DILocation(line: 496, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !12, file: !13, line: 496, column: 9)
!532 = !DILocation(line: 496, column: 11, scope: !531)
!533 = !DILocation(line: 496, column: 9, scope: !12)
!534 = !DILocation(line: 497, column: 9, scope: !531)
!535 = !DILocation(line: 499, column: 33, scope: !536)
!536 = distinct !DILexicalBlock(scope: !12, file: !13, line: 499, column: 9)
!537 = !DILocation(line: 499, column: 9, scope: !536)
!538 = !DILocation(line: 499, column: 9, scope: !12)
!539 = !DILocation(line: 499, column: 57, scope: !540)
!540 = !DILexicalBlockFile(scope: !536, file: !13, discriminator: 1)
!541 = !DILocation(line: 499, column: 57, scope: !536)
!542 = !DILocation(line: 500, column: 33, scope: !543)
!543 = distinct !DILexicalBlock(scope: !12, file: !13, line: 500, column: 9)
!544 = !DILocation(line: 500, column: 9, scope: !543)
!545 = !DILocation(line: 500, column: 9, scope: !12)
!546 = !DILocation(line: 500, column: 57, scope: !547)
!547 = !DILexicalBlockFile(scope: !543, file: !13, discriminator: 1)
!548 = !DILocation(line: 500, column: 57, scope: !543)
!549 = !DILocation(line: 501, column: 33, scope: !550)
!550 = distinct !DILexicalBlock(scope: !12, file: !13, line: 501, column: 9)
!551 = !DILocation(line: 501, column: 9, scope: !550)
!552 = !DILocation(line: 501, column: 9, scope: !12)
!553 = !DILocation(line: 501, column: 57, scope: !554)
!554 = !DILexicalBlockFile(scope: !550, file: !13, discriminator: 1)
!555 = !DILocation(line: 501, column: 57, scope: !550)
!556 = !DILocation(line: 502, column: 33, scope: !557)
!557 = distinct !DILexicalBlock(scope: !12, file: !13, line: 502, column: 9)
!558 = !DILocation(line: 502, column: 9, scope: !557)
!559 = !DILocation(line: 502, column: 9, scope: !12)
!560 = !DILocation(line: 502, column: 57, scope: !561)
!561 = !DILexicalBlockFile(scope: !557, file: !13, discriminator: 1)
!562 = !DILocation(line: 502, column: 57, scope: !557)
!563 = !DILocation(line: 503, column: 33, scope: !564)
!564 = distinct !DILexicalBlock(scope: !12, file: !13, line: 503, column: 9)
!565 = !DILocation(line: 503, column: 9, scope: !564)
!566 = !DILocation(line: 503, column: 9, scope: !12)
!567 = !DILocation(line: 503, column: 57, scope: !568)
!568 = !DILexicalBlockFile(scope: !564, file: !13, discriminator: 1)
!569 = !DILocation(line: 503, column: 57, scope: !564)
!570 = !DILocation(line: 504, column: 33, scope: !571)
!571 = distinct !DILexicalBlock(scope: !12, file: !13, line: 504, column: 9)
!572 = !DILocation(line: 504, column: 9, scope: !571)
!573 = !DILocation(line: 504, column: 9, scope: !12)
!574 = !DILocation(line: 504, column: 57, scope: !575)
!575 = !DILexicalBlockFile(scope: !571, file: !13, discriminator: 1)
!576 = !DILocation(line: 504, column: 57, scope: !571)
!577 = !DILocation(line: 505, column: 33, scope: !578)
!578 = distinct !DILexicalBlock(scope: !12, file: !13, line: 505, column: 9)
!579 = !DILocation(line: 505, column: 9, scope: !578)
!580 = !DILocation(line: 505, column: 9, scope: !12)
!581 = !DILocation(line: 505, column: 58, scope: !582)
!582 = !DILexicalBlockFile(scope: !578, file: !13, discriminator: 1)
!583 = !DILocation(line: 505, column: 58, scope: !578)
!584 = !DILocation(line: 506, column: 33, scope: !585)
!585 = distinct !DILexicalBlock(scope: !12, file: !13, line: 506, column: 9)
!586 = !DILocation(line: 506, column: 9, scope: !585)
!587 = !DILocation(line: 506, column: 9, scope: !12)
!588 = !DILocation(line: 506, column: 52, scope: !589)
!589 = !DILexicalBlockFile(scope: !585, file: !13, discriminator: 1)
!590 = !DILocation(line: 506, column: 52, scope: !585)
!591 = !DILocation(line: 507, column: 33, scope: !592)
!592 = distinct !DILexicalBlock(scope: !12, file: !13, line: 507, column: 9)
!593 = !DILocation(line: 507, column: 9, scope: !592)
!594 = !DILocation(line: 507, column: 9, scope: !12)
!595 = !DILocation(line: 507, column: 52, scope: !596)
!596 = !DILexicalBlockFile(scope: !592, file: !13, discriminator: 1)
!597 = !DILocation(line: 507, column: 52, scope: !592)
!598 = !DILocation(line: 508, column: 33, scope: !599)
!599 = distinct !DILexicalBlock(scope: !12, file: !13, line: 508, column: 9)
!600 = !DILocation(line: 508, column: 9, scope: !599)
!601 = !DILocation(line: 508, column: 9, scope: !12)
!602 = !DILocation(line: 508, column: 51, scope: !603)
!603 = !DILexicalBlockFile(scope: !599, file: !13, discriminator: 1)
!604 = !DILocation(line: 508, column: 51, scope: !599)
!605 = !DILocation(line: 510, column: 33, scope: !606)
!606 = distinct !DILexicalBlock(scope: !12, file: !13, line: 510, column: 9)
!607 = !DILocation(line: 510, column: 9, scope: !606)
!608 = !DILocation(line: 510, column: 9, scope: !12)
!609 = !DILocation(line: 510, column: 55, scope: !610)
!610 = !DILexicalBlockFile(scope: !606, file: !13, discriminator: 1)
!611 = !DILocation(line: 510, column: 55, scope: !606)
!612 = !DILocation(line: 511, column: 33, scope: !613)
!613 = distinct !DILexicalBlock(scope: !12, file: !13, line: 511, column: 9)
!614 = !DILocation(line: 511, column: 9, scope: !613)
!615 = !DILocation(line: 511, column: 9, scope: !12)
!616 = !DILocation(line: 511, column: 55, scope: !617)
!617 = !DILexicalBlockFile(scope: !613, file: !13, discriminator: 1)
!618 = !DILocation(line: 511, column: 55, scope: !613)
!619 = !DILocation(line: 512, column: 33, scope: !620)
!620 = distinct !DILexicalBlock(scope: !12, file: !13, line: 512, column: 9)
!621 = !DILocation(line: 512, column: 9, scope: !620)
!622 = !DILocation(line: 512, column: 9, scope: !12)
!623 = !DILocation(line: 512, column: 55, scope: !624)
!624 = !DILexicalBlockFile(scope: !620, file: !13, discriminator: 1)
!625 = !DILocation(line: 512, column: 55, scope: !620)
!626 = !DILocation(line: 513, column: 33, scope: !627)
!627 = distinct !DILexicalBlock(scope: !12, file: !13, line: 513, column: 9)
!628 = !DILocation(line: 513, column: 9, scope: !627)
!629 = !DILocation(line: 513, column: 9, scope: !12)
!630 = !DILocation(line: 513, column: 55, scope: !631)
!631 = !DILexicalBlockFile(scope: !627, file: !13, discriminator: 1)
!632 = !DILocation(line: 513, column: 55, scope: !627)
!633 = !DILocation(line: 515, column: 33, scope: !634)
!634 = distinct !DILexicalBlock(scope: !12, file: !13, line: 515, column: 9)
!635 = !DILocation(line: 515, column: 9, scope: !634)
!636 = !DILocation(line: 515, column: 9, scope: !12)
!637 = !DILocation(line: 515, column: 54, scope: !638)
!638 = !DILexicalBlockFile(scope: !634, file: !13, discriminator: 1)
!639 = !DILocation(line: 515, column: 54, scope: !634)
!640 = !DILocation(line: 516, column: 33, scope: !641)
!641 = distinct !DILexicalBlock(scope: !12, file: !13, line: 516, column: 9)
!642 = !DILocation(line: 516, column: 9, scope: !641)
!643 = !DILocation(line: 516, column: 9, scope: !12)
!644 = !DILocation(line: 516, column: 55, scope: !645)
!645 = !DILexicalBlockFile(scope: !641, file: !13, discriminator: 1)
!646 = !DILocation(line: 516, column: 55, scope: !641)
!647 = !DILocation(line: 517, column: 33, scope: !648)
!648 = distinct !DILexicalBlock(scope: !12, file: !13, line: 517, column: 9)
!649 = !DILocation(line: 517, column: 9, scope: !648)
!650 = !DILocation(line: 517, column: 9, scope: !12)
!651 = !DILocation(line: 517, column: 54, scope: !652)
!652 = !DILexicalBlockFile(scope: !648, file: !13, discriminator: 1)
!653 = !DILocation(line: 517, column: 54, scope: !648)
!654 = !DILocation(line: 519, column: 33, scope: !655)
!655 = distinct !DILexicalBlock(scope: !12, file: !13, line: 519, column: 9)
!656 = !DILocation(line: 519, column: 9, scope: !655)
!657 = !DILocation(line: 519, column: 9, scope: !12)
!658 = !DILocation(line: 519, column: 66, scope: !659)
!659 = !DILexicalBlockFile(scope: !655, file: !13, discriminator: 1)
!660 = !DILocation(line: 519, column: 66, scope: !655)
!661 = !DILocation(line: 520, column: 33, scope: !662)
!662 = distinct !DILexicalBlock(scope: !12, file: !13, line: 520, column: 9)
!663 = !DILocation(line: 520, column: 9, scope: !662)
!664 = !DILocation(line: 520, column: 9, scope: !12)
!665 = !DILocation(line: 520, column: 54, scope: !666)
!666 = !DILexicalBlockFile(scope: !662, file: !13, discriminator: 1)
!667 = !DILocation(line: 520, column: 54, scope: !662)
!668 = !DILocation(line: 521, column: 33, scope: !669)
!669 = distinct !DILexicalBlock(scope: !12, file: !13, line: 521, column: 9)
!670 = !DILocation(line: 521, column: 9, scope: !669)
!671 = !DILocation(line: 521, column: 9, scope: !12)
!672 = !DILocation(line: 521, column: 54, scope: !673)
!673 = !DILexicalBlockFile(scope: !669, file: !13, discriminator: 1)
!674 = !DILocation(line: 521, column: 54, scope: !669)
!675 = !DILocation(line: 522, column: 33, scope: !676)
!676 = distinct !DILexicalBlock(scope: !12, file: !13, line: 522, column: 9)
!677 = !DILocation(line: 522, column: 9, scope: !676)
!678 = !DILocation(line: 522, column: 9, scope: !12)
!679 = !DILocation(line: 522, column: 54, scope: !680)
!680 = !DILexicalBlockFile(scope: !676, file: !13, discriminator: 1)
!681 = !DILocation(line: 522, column: 54, scope: !676)
!682 = !DILocation(line: 524, column: 33, scope: !683)
!683 = distinct !DILexicalBlock(scope: !12, file: !13, line: 524, column: 9)
!684 = !DILocation(line: 524, column: 9, scope: !683)
!685 = !DILocation(line: 524, column: 9, scope: !12)
!686 = !DILocation(line: 524, column: 73, scope: !687)
!687 = !DILexicalBlockFile(scope: !683, file: !13, discriminator: 1)
!688 = !DILocation(line: 524, column: 73, scope: !683)
!689 = !DILocation(line: 525, column: 33, scope: !690)
!690 = distinct !DILexicalBlock(scope: !12, file: !13, line: 525, column: 9)
!691 = !DILocation(line: 525, column: 9, scope: !690)
!692 = !DILocation(line: 525, column: 9, scope: !12)
!693 = !DILocation(line: 525, column: 61, scope: !694)
!694 = !DILexicalBlockFile(scope: !690, file: !13, discriminator: 1)
!695 = !DILocation(line: 525, column: 61, scope: !690)
!696 = !DILocation(line: 526, column: 33, scope: !697)
!697 = distinct !DILexicalBlock(scope: !12, file: !13, line: 526, column: 9)
!698 = !DILocation(line: 526, column: 9, scope: !697)
!699 = !DILocation(line: 526, column: 9, scope: !12)
!700 = !DILocation(line: 526, column: 61, scope: !701)
!701 = !DILexicalBlockFile(scope: !697, file: !13, discriminator: 1)
!702 = !DILocation(line: 526, column: 61, scope: !697)
!703 = !DILocation(line: 527, column: 33, scope: !704)
!704 = distinct !DILexicalBlock(scope: !12, file: !13, line: 527, column: 9)
!705 = !DILocation(line: 527, column: 9, scope: !704)
!706 = !DILocation(line: 527, column: 9, scope: !12)
!707 = !DILocation(line: 527, column: 61, scope: !708)
!708 = !DILexicalBlockFile(scope: !704, file: !13, discriminator: 1)
!709 = !DILocation(line: 527, column: 61, scope: !704)
!710 = !DILocation(line: 529, column: 33, scope: !711)
!711 = distinct !DILexicalBlock(scope: !12, file: !13, line: 529, column: 9)
!712 = !DILocation(line: 529, column: 9, scope: !711)
!713 = !DILocation(line: 529, column: 9, scope: !12)
!714 = !DILocation(line: 529, column: 80, scope: !715)
!715 = !DILexicalBlockFile(scope: !711, file: !13, discriminator: 1)
!716 = !DILocation(line: 529, column: 80, scope: !711)
!717 = !DILocation(line: 530, column: 33, scope: !718)
!718 = distinct !DILexicalBlock(scope: !12, file: !13, line: 530, column: 9)
!719 = !DILocation(line: 530, column: 9, scope: !718)
!720 = !DILocation(line: 530, column: 9, scope: !12)
!721 = !DILocation(line: 530, column: 68, scope: !722)
!722 = !DILexicalBlockFile(scope: !718, file: !13, discriminator: 1)
!723 = !DILocation(line: 530, column: 68, scope: !718)
!724 = !DILocation(line: 531, column: 33, scope: !725)
!725 = distinct !DILexicalBlock(scope: !12, file: !13, line: 531, column: 9)
!726 = !DILocation(line: 531, column: 9, scope: !725)
!727 = !DILocation(line: 531, column: 9, scope: !12)
!728 = !DILocation(line: 531, column: 68, scope: !729)
!729 = !DILexicalBlockFile(scope: !725, file: !13, discriminator: 1)
!730 = !DILocation(line: 531, column: 68, scope: !725)
!731 = !DILocation(line: 532, column: 33, scope: !732)
!732 = distinct !DILexicalBlock(scope: !12, file: !13, line: 532, column: 9)
!733 = !DILocation(line: 532, column: 9, scope: !732)
!734 = !DILocation(line: 532, column: 9, scope: !12)
!735 = !DILocation(line: 532, column: 68, scope: !736)
!736 = !DILexicalBlockFile(scope: !732, file: !13, discriminator: 1)
!737 = !DILocation(line: 532, column: 68, scope: !732)
!738 = !DILocation(line: 534, column: 33, scope: !739)
!739 = distinct !DILexicalBlock(scope: !12, file: !13, line: 534, column: 9)
!740 = !DILocation(line: 534, column: 9, scope: !739)
!741 = !DILocation(line: 534, column: 9, scope: !12)
!742 = !DILocation(line: 534, column: 62, scope: !743)
!743 = !DILexicalBlockFile(scope: !739, file: !13, discriminator: 1)
!744 = !DILocation(line: 534, column: 62, scope: !739)
!745 = !DILocation(line: 535, column: 33, scope: !746)
!746 = distinct !DILexicalBlock(scope: !12, file: !13, line: 535, column: 9)
!747 = !DILocation(line: 535, column: 9, scope: !746)
!748 = !DILocation(line: 535, column: 9, scope: !12)
!749 = !DILocation(line: 535, column: 65, scope: !750)
!750 = !DILexicalBlockFile(scope: !746, file: !13, discriminator: 1)
!751 = !DILocation(line: 535, column: 65, scope: !746)
!752 = !DILocation(line: 536, column: 33, scope: !753)
!753 = distinct !DILexicalBlock(scope: !12, file: !13, line: 536, column: 9)
!754 = !DILocation(line: 536, column: 9, scope: !753)
!755 = !DILocation(line: 536, column: 9, scope: !12)
!756 = !DILocation(line: 536, column: 62, scope: !757)
!757 = !DILexicalBlockFile(scope: !753, file: !13, discriminator: 1)
!758 = !DILocation(line: 536, column: 62, scope: !753)
!759 = !DILocation(line: 537, column: 33, scope: !760)
!760 = distinct !DILexicalBlock(scope: !12, file: !13, line: 537, column: 9)
!761 = !DILocation(line: 537, column: 9, scope: !760)
!762 = !DILocation(line: 537, column: 9, scope: !12)
!763 = !DILocation(line: 537, column: 62, scope: !764)
!764 = !DILexicalBlockFile(scope: !760, file: !13, discriminator: 1)
!765 = !DILocation(line: 537, column: 62, scope: !760)
!766 = !DILocation(line: 538, column: 33, scope: !767)
!767 = distinct !DILexicalBlock(scope: !12, file: !13, line: 538, column: 9)
!768 = !DILocation(line: 538, column: 9, scope: !767)
!769 = !DILocation(line: 538, column: 9, scope: !12)
!770 = !DILocation(line: 538, column: 64, scope: !771)
!771 = !DILexicalBlockFile(scope: !767, file: !13, discriminator: 1)
!772 = !DILocation(line: 538, column: 64, scope: !767)
!773 = !DILocation(line: 539, column: 33, scope: !774)
!774 = distinct !DILexicalBlock(scope: !12, file: !13, line: 539, column: 9)
!775 = !DILocation(line: 539, column: 9, scope: !774)
!776 = !DILocation(line: 539, column: 9, scope: !12)
!777 = !DILocation(line: 539, column: 66, scope: !778)
!778 = !DILexicalBlockFile(scope: !774, file: !13, discriminator: 1)
!779 = !DILocation(line: 539, column: 66, scope: !774)
!780 = !DILocation(line: 540, column: 33, scope: !781)
!781 = distinct !DILexicalBlock(scope: !12, file: !13, line: 540, column: 9)
!782 = !DILocation(line: 540, column: 9, scope: !781)
!783 = !DILocation(line: 540, column: 9, scope: !12)
!784 = !DILocation(line: 540, column: 62, scope: !785)
!785 = !DILexicalBlockFile(scope: !781, file: !13, discriminator: 1)
!786 = !DILocation(line: 540, column: 62, scope: !781)
!787 = !DILocation(line: 541, column: 33, scope: !788)
!788 = distinct !DILexicalBlock(scope: !12, file: !13, line: 541, column: 9)
!789 = !DILocation(line: 541, column: 9, scope: !788)
!790 = !DILocation(line: 541, column: 9, scope: !12)
!791 = !DILocation(line: 541, column: 64, scope: !792)
!792 = !DILexicalBlockFile(scope: !788, file: !13, discriminator: 1)
!793 = !DILocation(line: 541, column: 64, scope: !788)
!794 = !DILocation(line: 542, column: 33, scope: !795)
!795 = distinct !DILexicalBlock(scope: !12, file: !13, line: 542, column: 9)
!796 = !DILocation(line: 542, column: 9, scope: !795)
!797 = !DILocation(line: 542, column: 9, scope: !12)
!798 = !DILocation(line: 542, column: 65, scope: !799)
!799 = !DILexicalBlockFile(scope: !795, file: !13, discriminator: 1)
!800 = !DILocation(line: 542, column: 65, scope: !795)
!801 = !DILocation(line: 543, column: 33, scope: !802)
!802 = distinct !DILexicalBlock(scope: !12, file: !13, line: 543, column: 9)
!803 = !DILocation(line: 543, column: 9, scope: !802)
!804 = !DILocation(line: 543, column: 9, scope: !12)
!805 = !DILocation(line: 543, column: 62, scope: !806)
!806 = !DILexicalBlockFile(scope: !802, file: !13, discriminator: 1)
!807 = !DILocation(line: 543, column: 62, scope: !802)
!808 = !DILocation(line: 544, column: 33, scope: !809)
!809 = distinct !DILexicalBlock(scope: !12, file: !13, line: 544, column: 9)
!810 = !DILocation(line: 544, column: 9, scope: !809)
!811 = !DILocation(line: 544, column: 9, scope: !12)
!812 = !DILocation(line: 544, column: 64, scope: !813)
!813 = !DILexicalBlockFile(scope: !809, file: !13, discriminator: 1)
!814 = !DILocation(line: 544, column: 64, scope: !809)
!815 = !DILocation(line: 545, column: 33, scope: !816)
!816 = distinct !DILexicalBlock(scope: !12, file: !13, line: 545, column: 9)
!817 = !DILocation(line: 545, column: 9, scope: !816)
!818 = !DILocation(line: 545, column: 9, scope: !12)
!819 = !DILocation(line: 545, column: 64, scope: !820)
!820 = !DILexicalBlockFile(scope: !816, file: !13, discriminator: 1)
!821 = !DILocation(line: 545, column: 64, scope: !816)
!822 = !DILocation(line: 547, column: 33, scope: !823)
!823 = distinct !DILexicalBlock(scope: !12, file: !13, line: 547, column: 9)
!824 = !DILocation(line: 547, column: 9, scope: !823)
!825 = !DILocation(line: 547, column: 9, scope: !12)
!826 = !DILocation(line: 547, column: 51, scope: !827)
!827 = !DILexicalBlockFile(scope: !823, file: !13, discriminator: 1)
!828 = !DILocation(line: 547, column: 51, scope: !823)
!829 = !DILocation(line: 548, column: 33, scope: !830)
!830 = distinct !DILexicalBlock(scope: !12, file: !13, line: 548, column: 9)
!831 = !DILocation(line: 548, column: 9, scope: !830)
!832 = !DILocation(line: 548, column: 9, scope: !12)
!833 = !DILocation(line: 548, column: 50, scope: !834)
!834 = !DILexicalBlockFile(scope: !830, file: !13, discriminator: 1)
!835 = !DILocation(line: 548, column: 50, scope: !830)
!836 = !DILocation(line: 549, column: 33, scope: !837)
!837 = distinct !DILexicalBlock(scope: !12, file: !13, line: 549, column: 9)
!838 = !DILocation(line: 549, column: 9, scope: !837)
!839 = !DILocation(line: 549, column: 9, scope: !12)
!840 = !DILocation(line: 549, column: 50, scope: !841)
!841 = !DILexicalBlockFile(scope: !837, file: !13, discriminator: 1)
!842 = !DILocation(line: 549, column: 50, scope: !837)
!843 = !DILocation(line: 550, column: 33, scope: !844)
!844 = distinct !DILexicalBlock(scope: !12, file: !13, line: 550, column: 9)
!845 = !DILocation(line: 550, column: 9, scope: !844)
!846 = !DILocation(line: 550, column: 9, scope: !12)
!847 = !DILocation(line: 550, column: 52, scope: !848)
!848 = !DILexicalBlockFile(scope: !844, file: !13, discriminator: 1)
!849 = !DILocation(line: 550, column: 52, scope: !844)
!850 = !DILocation(line: 551, column: 33, scope: !851)
!851 = distinct !DILexicalBlock(scope: !12, file: !13, line: 551, column: 9)
!852 = !DILocation(line: 551, column: 9, scope: !851)
!853 = !DILocation(line: 551, column: 9, scope: !12)
!854 = !DILocation(line: 551, column: 50, scope: !855)
!855 = !DILexicalBlockFile(scope: !851, file: !13, discriminator: 1)
!856 = !DILocation(line: 551, column: 50, scope: !851)
!857 = !DILocation(line: 552, column: 33, scope: !858)
!858 = distinct !DILexicalBlock(scope: !12, file: !13, line: 552, column: 9)
!859 = !DILocation(line: 552, column: 9, scope: !858)
!860 = !DILocation(line: 552, column: 9, scope: !12)
!861 = !DILocation(line: 552, column: 50, scope: !862)
!862 = !DILexicalBlockFile(scope: !858, file: !13, discriminator: 1)
!863 = !DILocation(line: 552, column: 50, scope: !858)
!864 = !DILocation(line: 553, column: 33, scope: !865)
!865 = distinct !DILexicalBlock(scope: !12, file: !13, line: 553, column: 9)
!866 = !DILocation(line: 553, column: 9, scope: !865)
!867 = !DILocation(line: 553, column: 9, scope: !12)
!868 = !DILocation(line: 553, column: 51, scope: !869)
!869 = !DILexicalBlockFile(scope: !865, file: !13, discriminator: 1)
!870 = !DILocation(line: 553, column: 51, scope: !865)
!871 = !DILocation(line: 554, column: 33, scope: !872)
!872 = distinct !DILexicalBlock(scope: !12, file: !13, line: 554, column: 9)
!873 = !DILocation(line: 554, column: 9, scope: !872)
!874 = !DILocation(line: 554, column: 9, scope: !12)
!875 = !DILocation(line: 554, column: 52, scope: !876)
!876 = !DILexicalBlockFile(scope: !872, file: !13, discriminator: 1)
!877 = !DILocation(line: 554, column: 52, scope: !872)
!878 = !DILocation(line: 555, column: 33, scope: !879)
!879 = distinct !DILexicalBlock(scope: !12, file: !13, line: 555, column: 9)
!880 = !DILocation(line: 555, column: 9, scope: !879)
!881 = !DILocation(line: 555, column: 9, scope: !12)
!882 = !DILocation(line: 555, column: 52, scope: !883)
!883 = !DILexicalBlockFile(scope: !879, file: !13, discriminator: 1)
!884 = !DILocation(line: 555, column: 52, scope: !879)
!885 = !DILocation(line: 556, column: 33, scope: !886)
!886 = distinct !DILexicalBlock(scope: !12, file: !13, line: 556, column: 9)
!887 = !DILocation(line: 556, column: 9, scope: !886)
!888 = !DILocation(line: 556, column: 9, scope: !12)
!889 = !DILocation(line: 556, column: 52, scope: !890)
!890 = !DILexicalBlockFile(scope: !886, file: !13, discriminator: 1)
!891 = !DILocation(line: 556, column: 52, scope: !886)
!892 = !DILocation(line: 558, column: 12, scope: !12)
!893 = !DILocation(line: 558, column: 5, scope: !12)
!894 = !DILocation(line: 559, column: 1, scope: !12)
!895 = !DILocation(line: 265, column: 43, scope: !353)
!896 = !DILocation(line: 265, column: 59, scope: !353)
!897 = !DILocation(line: 265, column: 68, scope: !353)
!898 = !DILocation(line: 265, column: 75, scope: !353)
!899 = !DILocation(line: 265, column: 99, scope: !353)
!900 = !DILocation(line: 265, column: 82, scope: !353)
!901 = !{!902, !902, i64 0}
!902 = !{!"int", !528, i64 0}
!903 = !DILocation(line: 265, column: 112, scope: !904)
!904 = distinct !DILexicalBlock(scope: !353, file: !13, line: 265, column: 111)
!905 = !DILocation(line: 265, column: 117, scope: !904)
!906 = !DILocation(line: 265, column: 132, scope: !904)
!907 = !DILocation(line: 265, column: 135, scope: !908)
!908 = !DILexicalBlockFile(scope: !904, file: !13, discriminator: 1)
!909 = !DILocation(line: 265, column: 111, scope: !353)
!910 = !DILocation(line: 265, column: 153, scope: !911)
!911 = !DILexicalBlockFile(scope: !904, file: !13, discriminator: 3)
!912 = !DILocation(line: 265, column: 153, scope: !904)
!913 = !DILocation(line: 265, column: 199, scope: !914)
!914 = !DILexicalBlockFile(scope: !915, file: !13, discriminator: 4)
!915 = !DILexicalBlockFile(scope: !353, file: !13, discriminator: 2)
!916 = !DILocation(line: 265, column: 206, scope: !353)
!917 = !DILocation(line: 265, column: 217, scope: !353)
!918 = !DILocation(line: 265, column: 195, scope: !353)
!919 = !DILocation(line: 265, column: 179, scope: !353)
!920 = !DILocation(line: 265, column: 172, scope: !353)
!921 = !DILocation(line: 265, column: 233, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !13, discriminator: 6)
!923 = !DILexicalBlockFile(scope: !353, file: !13, discriminator: 5)
!924 = !DILocation(line: 269, column: 43, scope: !365)
!925 = !DILocation(line: 269, column: 59, scope: !365)
!926 = !DILocation(line: 269, column: 68, scope: !365)
!927 = !DILocation(line: 269, column: 75, scope: !365)
!928 = !DILocation(line: 269, column: 99, scope: !365)
!929 = !DILocation(line: 269, column: 82, scope: !365)
!930 = !DILocation(line: 269, column: 112, scope: !931)
!931 = distinct !DILexicalBlock(scope: !365, file: !13, line: 269, column: 111)
!932 = !DILocation(line: 269, column: 117, scope: !931)
!933 = !DILocation(line: 269, column: 132, scope: !931)
!934 = !DILocation(line: 269, column: 135, scope: !935)
!935 = !DILexicalBlockFile(scope: !931, file: !13, discriminator: 1)
!936 = !DILocation(line: 269, column: 111, scope: !365)
!937 = !DILocation(line: 269, column: 153, scope: !938)
!938 = !DILexicalBlockFile(scope: !931, file: !13, discriminator: 3)
!939 = !DILocation(line: 269, column: 153, scope: !931)
!940 = !DILocation(line: 269, column: 199, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !13, discriminator: 4)
!942 = !DILexicalBlockFile(scope: !365, file: !13, discriminator: 2)
!943 = !DILocation(line: 269, column: 206, scope: !365)
!944 = !DILocation(line: 269, column: 217, scope: !365)
!945 = !DILocation(line: 269, column: 195, scope: !365)
!946 = !DILocation(line: 269, column: 179, scope: !365)
!947 = !DILocation(line: 269, column: 172, scope: !365)
!948 = !DILocation(line: 269, column: 233, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !13, discriminator: 6)
!950 = !DILexicalBlockFile(scope: !365, file: !13, discriminator: 5)
!951 = !DILocation(line: 273, column: 43, scope: !370)
!952 = !DILocation(line: 273, column: 59, scope: !370)
!953 = !DILocation(line: 273, column: 68, scope: !370)
!954 = !DILocation(line: 273, column: 75, scope: !370)
!955 = !DILocation(line: 273, column: 99, scope: !370)
!956 = !DILocation(line: 273, column: 82, scope: !370)
!957 = !DILocation(line: 273, column: 112, scope: !958)
!958 = distinct !DILexicalBlock(scope: !370, file: !13, line: 273, column: 111)
!959 = !DILocation(line: 273, column: 117, scope: !958)
!960 = !DILocation(line: 273, column: 132, scope: !958)
!961 = !DILocation(line: 273, column: 135, scope: !962)
!962 = !DILexicalBlockFile(scope: !958, file: !13, discriminator: 1)
!963 = !DILocation(line: 273, column: 111, scope: !370)
!964 = !DILocation(line: 273, column: 153, scope: !965)
!965 = !DILexicalBlockFile(scope: !958, file: !13, discriminator: 3)
!966 = !DILocation(line: 273, column: 153, scope: !958)
!967 = !DILocation(line: 273, column: 199, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !13, discriminator: 4)
!969 = !DILexicalBlockFile(scope: !370, file: !13, discriminator: 2)
!970 = !DILocation(line: 273, column: 206, scope: !370)
!971 = !DILocation(line: 273, column: 217, scope: !370)
!972 = !DILocation(line: 273, column: 195, scope: !370)
!973 = !DILocation(line: 273, column: 179, scope: !370)
!974 = !DILocation(line: 273, column: 172, scope: !370)
!975 = !DILocation(line: 273, column: 233, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !13, discriminator: 6)
!977 = !DILexicalBlockFile(scope: !370, file: !13, discriminator: 5)
!978 = !DILocation(line: 277, column: 43, scope: !375)
!979 = !DILocation(line: 277, column: 59, scope: !375)
!980 = !DILocation(line: 277, column: 68, scope: !375)
!981 = !DILocation(line: 277, column: 75, scope: !375)
!982 = !DILocation(line: 277, column: 99, scope: !375)
!983 = !DILocation(line: 277, column: 82, scope: !375)
!984 = !DILocation(line: 277, column: 112, scope: !985)
!985 = distinct !DILexicalBlock(scope: !375, file: !13, line: 277, column: 111)
!986 = !DILocation(line: 277, column: 117, scope: !985)
!987 = !DILocation(line: 277, column: 132, scope: !985)
!988 = !DILocation(line: 277, column: 135, scope: !989)
!989 = !DILexicalBlockFile(scope: !985, file: !13, discriminator: 1)
!990 = !DILocation(line: 277, column: 111, scope: !375)
!991 = !DILocation(line: 277, column: 153, scope: !992)
!992 = !DILexicalBlockFile(scope: !985, file: !13, discriminator: 3)
!993 = !DILocation(line: 277, column: 153, scope: !985)
!994 = !DILocation(line: 277, column: 199, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !13, discriminator: 4)
!996 = !DILexicalBlockFile(scope: !375, file: !13, discriminator: 2)
!997 = !DILocation(line: 277, column: 206, scope: !375)
!998 = !DILocation(line: 277, column: 217, scope: !375)
!999 = !DILocation(line: 277, column: 195, scope: !375)
!1000 = !DILocation(line: 277, column: 179, scope: !375)
!1001 = !DILocation(line: 277, column: 172, scope: !375)
!1002 = !DILocation(line: 277, column: 233, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !13, discriminator: 6)
!1004 = !DILexicalBlockFile(scope: !375, file: !13, discriminator: 5)
!1005 = !DILocation(line: 281, column: 44, scope: !380)
!1006 = !DILocation(line: 281, column: 60, scope: !380)
!1007 = !DILocation(line: 281, column: 69, scope: !380)
!1008 = !DILocation(line: 281, column: 76, scope: !380)
!1009 = !DILocation(line: 281, column: 100, scope: !380)
!1010 = !DILocation(line: 281, column: 83, scope: !380)
!1011 = !DILocation(line: 281, column: 113, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !380, file: !13, line: 281, column: 112)
!1013 = !DILocation(line: 281, column: 118, scope: !1012)
!1014 = !DILocation(line: 281, column: 133, scope: !1012)
!1015 = !DILocation(line: 281, column: 136, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1012, file: !13, discriminator: 1)
!1017 = !DILocation(line: 281, column: 112, scope: !380)
!1018 = !DILocation(line: 281, column: 154, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1012, file: !13, discriminator: 3)
!1020 = !DILocation(line: 281, column: 154, scope: !1012)
!1021 = !DILocation(line: 281, column: 200, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !13, discriminator: 4)
!1023 = !DILexicalBlockFile(scope: !380, file: !13, discriminator: 2)
!1024 = !DILocation(line: 281, column: 207, scope: !380)
!1025 = !DILocation(line: 281, column: 218, scope: !380)
!1026 = !DILocation(line: 281, column: 196, scope: !380)
!1027 = !DILocation(line: 281, column: 180, scope: !380)
!1028 = !DILocation(line: 281, column: 173, scope: !380)
!1029 = !DILocation(line: 281, column: 234, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !13, discriminator: 6)
!1031 = !DILexicalBlockFile(scope: !380, file: !13, discriminator: 5)
!1032 = !DILocation(line: 285, column: 43, scope: !385)
!1033 = !DILocation(line: 285, column: 59, scope: !385)
!1034 = !DILocation(line: 285, column: 68, scope: !385)
!1035 = !DILocation(line: 285, column: 75, scope: !385)
!1036 = !DILocation(line: 285, column: 99, scope: !385)
!1037 = !DILocation(line: 285, column: 82, scope: !385)
!1038 = !DILocation(line: 285, column: 112, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !385, file: !13, line: 285, column: 111)
!1040 = !DILocation(line: 285, column: 117, scope: !1039)
!1041 = !DILocation(line: 285, column: 132, scope: !1039)
!1042 = !DILocation(line: 285, column: 135, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1039, file: !13, discriminator: 1)
!1044 = !DILocation(line: 285, column: 111, scope: !385)
!1045 = !DILocation(line: 285, column: 153, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1039, file: !13, discriminator: 3)
!1047 = !DILocation(line: 285, column: 153, scope: !1039)
!1048 = !DILocation(line: 285, column: 199, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !13, discriminator: 4)
!1050 = !DILexicalBlockFile(scope: !385, file: !13, discriminator: 2)
!1051 = !DILocation(line: 285, column: 206, scope: !385)
!1052 = !DILocation(line: 285, column: 217, scope: !385)
!1053 = !DILocation(line: 285, column: 195, scope: !385)
!1054 = !DILocation(line: 285, column: 179, scope: !385)
!1055 = !DILocation(line: 285, column: 172, scope: !385)
!1056 = !DILocation(line: 285, column: 233, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !13, discriminator: 6)
!1058 = !DILexicalBlockFile(scope: !385, file: !13, discriminator: 5)
!1059 = !DILocation(line: 289, column: 44, scope: !390)
!1060 = !DILocation(line: 289, column: 60, scope: !390)
!1061 = !DILocation(line: 289, column: 69, scope: !390)
!1062 = !DILocation(line: 289, column: 76, scope: !390)
!1063 = !DILocation(line: 289, column: 100, scope: !390)
!1064 = !DILocation(line: 289, column: 83, scope: !390)
!1065 = !DILocation(line: 289, column: 113, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !390, file: !13, line: 289, column: 112)
!1067 = !DILocation(line: 289, column: 118, scope: !1066)
!1068 = !DILocation(line: 289, column: 133, scope: !1066)
!1069 = !DILocation(line: 289, column: 136, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1066, file: !13, discriminator: 1)
!1071 = !DILocation(line: 289, column: 112, scope: !390)
!1072 = !DILocation(line: 289, column: 154, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1066, file: !13, discriminator: 3)
!1074 = !DILocation(line: 289, column: 154, scope: !1066)
!1075 = !DILocation(line: 289, column: 200, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !13, discriminator: 4)
!1077 = !DILexicalBlockFile(scope: !390, file: !13, discriminator: 2)
!1078 = !DILocation(line: 289, column: 207, scope: !390)
!1079 = !DILocation(line: 289, column: 218, scope: !390)
!1080 = !DILocation(line: 289, column: 196, scope: !390)
!1081 = !DILocation(line: 289, column: 180, scope: !390)
!1082 = !DILocation(line: 289, column: 173, scope: !390)
!1083 = !DILocation(line: 289, column: 234, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !13, discriminator: 6)
!1085 = !DILexicalBlockFile(scope: !390, file: !13, discriminator: 5)
!1086 = !DILocation(line: 293, column: 44, scope: !395)
!1087 = !DILocation(line: 293, column: 60, scope: !395)
!1088 = !DILocation(line: 293, column: 69, scope: !395)
!1089 = !DILocation(line: 293, column: 76, scope: !395)
!1090 = !DILocation(line: 293, column: 100, scope: !395)
!1091 = !DILocation(line: 293, column: 83, scope: !395)
!1092 = !DILocation(line: 293, column: 113, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !395, file: !13, line: 293, column: 112)
!1094 = !DILocation(line: 293, column: 118, scope: !1093)
!1095 = !DILocation(line: 293, column: 133, scope: !1093)
!1096 = !DILocation(line: 293, column: 136, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1093, file: !13, discriminator: 1)
!1098 = !DILocation(line: 293, column: 112, scope: !395)
!1099 = !DILocation(line: 293, column: 154, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1093, file: !13, discriminator: 3)
!1101 = !DILocation(line: 293, column: 154, scope: !1093)
!1102 = !DILocation(line: 293, column: 180, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !13, discriminator: 4)
!1104 = !DILexicalBlockFile(scope: !395, file: !13, discriminator: 2)
!1105 = !DILocation(line: 293, column: 173, scope: !395)
!1106 = !DILocation(line: 293, column: 200, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1108, file: !13, discriminator: 6)
!1108 = !DILexicalBlockFile(scope: !395, file: !13, discriminator: 5)
!1109 = !DILocation(line: 297, column: 44, scope: !400)
!1110 = !DILocation(line: 297, column: 60, scope: !400)
!1111 = !DILocation(line: 297, column: 69, scope: !400)
!1112 = !DILocation(line: 297, column: 76, scope: !400)
!1113 = !DILocation(line: 297, column: 100, scope: !400)
!1114 = !DILocation(line: 297, column: 83, scope: !400)
!1115 = !DILocation(line: 297, column: 113, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !400, file: !13, line: 297, column: 112)
!1117 = !DILocation(line: 297, column: 118, scope: !1116)
!1118 = !DILocation(line: 297, column: 133, scope: !1116)
!1119 = !DILocation(line: 297, column: 136, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1116, file: !13, discriminator: 1)
!1121 = !DILocation(line: 297, column: 112, scope: !400)
!1122 = !DILocation(line: 297, column: 154, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1116, file: !13, discriminator: 3)
!1124 = !DILocation(line: 297, column: 154, scope: !1116)
!1125 = !DILocation(line: 297, column: 180, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !13, discriminator: 4)
!1127 = !DILexicalBlockFile(scope: !400, file: !13, discriminator: 2)
!1128 = !DILocation(line: 297, column: 173, scope: !400)
!1129 = !DILocation(line: 297, column: 200, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !13, discriminator: 6)
!1131 = !DILexicalBlockFile(scope: !400, file: !13, discriminator: 5)
!1132 = !DILocation(line: 301, column: 43, scope: !405)
!1133 = !DILocation(line: 301, column: 59, scope: !405)
!1134 = !DILocation(line: 301, column: 68, scope: !405)
!1135 = !DILocation(line: 301, column: 75, scope: !405)
!1136 = !DILocation(line: 301, column: 99, scope: !405)
!1137 = !DILocation(line: 301, column: 82, scope: !405)
!1138 = !DILocation(line: 301, column: 112, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !405, file: !13, line: 301, column: 111)
!1140 = !DILocation(line: 301, column: 117, scope: !1139)
!1141 = !DILocation(line: 301, column: 132, scope: !1139)
!1142 = !DILocation(line: 301, column: 135, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1139, file: !13, discriminator: 1)
!1144 = !DILocation(line: 301, column: 111, scope: !405)
!1145 = !DILocation(line: 301, column: 153, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1139, file: !13, discriminator: 3)
!1147 = !DILocation(line: 301, column: 153, scope: !1139)
!1148 = !DILocation(line: 301, column: 179, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !13, discriminator: 4)
!1150 = !DILexicalBlockFile(scope: !405, file: !13, discriminator: 2)
!1151 = !DILocation(line: 301, column: 172, scope: !405)
!1152 = !DILocation(line: 301, column: 199, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1154, file: !13, discriminator: 6)
!1154 = !DILexicalBlockFile(scope: !405, file: !13, discriminator: 5)
!1155 = !DILocation(line: 310, column: 24, scope: !410)
!1156 = !DILocation(line: 310, column: 40, scope: !410)
!1157 = !DILocation(line: 312, column: 5, scope: !410)
!1158 = !DILocation(line: 312, column: 12, scope: !410)
!1159 = !DILocation(line: 312, column: 36, scope: !410)
!1160 = !DILocation(line: 312, column: 19, scope: !410)
!1161 = !DILocation(line: 313, column: 10, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !410, file: !13, line: 313, column: 9)
!1163 = !DILocation(line: 313, column: 15, scope: !1162)
!1164 = !DILocation(line: 313, column: 30, scope: !1162)
!1165 = !DILocation(line: 313, column: 33, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1162, file: !13, discriminator: 1)
!1167 = !DILocation(line: 313, column: 9, scope: !410)
!1168 = !DILocation(line: 314, column: 9, scope: !1162)
!1169 = !DILocation(line: 315, column: 36, scope: !410)
!1170 = !DILocation(line: 315, column: 41, scope: !410)
!1171 = !DILocation(line: 315, column: 12, scope: !410)
!1172 = !DILocation(line: 315, column: 5, scope: !410)
!1173 = !DILocation(line: 316, column: 1, scope: !410)
!1174 = !DILocation(line: 323, column: 23, scope: !415)
!1175 = !DILocation(line: 323, column: 39, scope: !415)
!1176 = !DILocation(line: 325, column: 5, scope: !415)
!1177 = !DILocation(line: 325, column: 12, scope: !415)
!1178 = !DILocation(line: 325, column: 36, scope: !415)
!1179 = !DILocation(line: 325, column: 19, scope: !415)
!1180 = !DILocation(line: 326, column: 10, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !415, file: !13, line: 326, column: 9)
!1182 = !DILocation(line: 326, column: 15, scope: !1181)
!1183 = !DILocation(line: 326, column: 30, scope: !1181)
!1184 = !DILocation(line: 326, column: 33, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1181, file: !13, discriminator: 1)
!1186 = !DILocation(line: 326, column: 9, scope: !415)
!1187 = !DILocation(line: 327, column: 9, scope: !1181)
!1188 = !DILocation(line: 328, column: 36, scope: !415)
!1189 = !DILocation(line: 328, column: 41, scope: !415)
!1190 = !DILocation(line: 328, column: 12, scope: !415)
!1191 = !DILocation(line: 328, column: 5, scope: !415)
!1192 = !DILocation(line: 329, column: 1, scope: !415)
!1193 = !DILocation(line: 384, column: 25, scope: !420)
!1194 = !DILocation(line: 384, column: 41, scope: !420)
!1195 = !DILocation(line: 386, column: 5, scope: !420)
!1196 = !DILocation(line: 386, column: 10, scope: !420)
!1197 = !DILocation(line: 387, column: 5, scope: !420)
!1198 = !DILocation(line: 387, column: 12, scope: !420)
!1199 = !DILocation(line: 389, column: 29, scope: !420)
!1200 = !DILocation(line: 389, column: 12, scope: !420)
!1201 = !DILocation(line: 389, column: 10, scope: !420)
!1202 = !DILocation(line: 390, column: 10, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !420, file: !13, line: 390, column: 9)
!1204 = !DILocation(line: 390, column: 15, scope: !1203)
!1205 = !DILocation(line: 390, column: 30, scope: !1203)
!1206 = !DILocation(line: 390, column: 33, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1203, file: !13, discriminator: 1)
!1208 = !DILocation(line: 390, column: 9, scope: !420)
!1209 = !DILocation(line: 391, column: 9, scope: !1203)
!1210 = !DILocation(line: 393, column: 23, scope: !420)
!1211 = !DILocation(line: 393, column: 14, scope: !420)
!1212 = !DILocation(line: 393, column: 5, scope: !420)
!1213 = !DILocation(line: 393, column: 12, scope: !420)
!1214 = !{!528, !528, i64 0}
!1215 = !DILocation(line: 394, column: 14, scope: !420)
!1216 = !DILocation(line: 394, column: 21, scope: !420)
!1217 = !DILocation(line: 394, column: 5, scope: !420)
!1218 = !DILocation(line: 395, column: 40, scope: !420)
!1219 = !DILocation(line: 395, column: 12, scope: !420)
!1220 = !DILocation(line: 395, column: 5, scope: !420)
!1221 = !DILocation(line: 396, column: 1, scope: !420)
!1222 = !DILocation(line: 236, column: 28, scope: !358)
!1223 = !DILocation(line: 238, column: 5, scope: !358)
!1224 = !DILocation(line: 238, column: 19, scope: !358)
!1225 = !DILocation(line: 239, column: 5, scope: !358)
!1226 = !DILocation(line: 239, column: 12, scope: !358)
!1227 = !DILocation(line: 241, column: 35, scope: !358)
!1228 = !DILocation(line: 241, column: 13, scope: !358)
!1229 = !DILocation(line: 241, column: 11, scope: !358)
!1230 = !{!1231, !1231, i64 0}
!1231 = !{!"long", !528, i64 0}
!1232 = !DILocation(line: 242, column: 10, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !358, file: !13, line: 242, column: 9)
!1234 = !DILocation(line: 242, column: 16, scope: !1233)
!1235 = !DILocation(line: 242, column: 38, scope: !1233)
!1236 = !DILocation(line: 242, column: 41, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1233, file: !13, discriminator: 1)
!1238 = !DILocation(line: 242, column: 9, scope: !358)
!1239 = !DILocation(line: 243, column: 9, scope: !1233)
!1240 = !DILocation(line: 245, column: 20, scope: !358)
!1241 = !DILocation(line: 245, column: 12, scope: !358)
!1242 = !DILocation(line: 245, column: 10, scope: !358)
!1243 = !DILocation(line: 246, column: 24, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !358, file: !13, line: 246, column: 9)
!1245 = !DILocation(line: 246, column: 9, scope: !1244)
!1246 = !DILocation(line: 246, column: 32, scope: !1244)
!1247 = !DILocation(line: 246, column: 29, scope: !1244)
!1248 = !DILocation(line: 246, column: 9, scope: !358)
!1249 = !DILocation(line: 247, column: 25, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !13, line: 246, column: 39)
!1251 = !DILocation(line: 247, column: 9, scope: !1250)
!1252 = !DILocation(line: 248, column: 9, scope: !1250)
!1253 = !DILocation(line: 250, column: 12, scope: !358)
!1254 = !DILocation(line: 250, column: 5, scope: !358)
!1255 = !DILocation(line: 251, column: 1, scope: !358)
!1256 = !DILocation(line: 335, column: 17, scope: !429)
!1257 = !DILocation(line: 338, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !429, file: !13, line: 338, column: 9)
!1259 = !DILocation(line: 338, column: 20, scope: !1258)
!1260 = !DILocation(line: 338, column: 31, scope: !1258)
!1261 = !DILocation(line: 338, column: 9, scope: !429)
!1262 = !DILocation(line: 338, column: 46, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1258, file: !13, discriminator: 1)
!1264 = !DILocation(line: 339, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !429, file: !13, line: 339, column: 9)
!1266 = !DILocation(line: 339, column: 20, scope: !1265)
!1267 = !DILocation(line: 339, column: 31, scope: !1265)
!1268 = !DILocation(line: 339, column: 9, scope: !429)
!1269 = !DILocation(line: 339, column: 46, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1265, file: !13, discriminator: 1)
!1271 = !DILocation(line: 340, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !429, file: !13, line: 340, column: 9)
!1273 = !DILocation(line: 340, column: 20, scope: !1272)
!1274 = !DILocation(line: 340, column: 31, scope: !1272)
!1275 = !DILocation(line: 340, column: 9, scope: !429)
!1276 = !DILocation(line: 340, column: 46, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1272, file: !13, discriminator: 1)
!1278 = !DILocation(line: 342, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !429, file: !13, line: 342, column: 9)
!1280 = !DILocation(line: 342, column: 20, scope: !1279)
!1281 = !DILocation(line: 342, column: 31, scope: !1279)
!1282 = !DILocation(line: 342, column: 9, scope: !429)
!1283 = !DILocation(line: 342, column: 46, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1279, file: !13, discriminator: 1)
!1285 = !DILocation(line: 343, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !429, file: !13, line: 343, column: 9)
!1287 = !DILocation(line: 343, column: 20, scope: !1286)
!1288 = !DILocation(line: 343, column: 31, scope: !1286)
!1289 = !DILocation(line: 343, column: 9, scope: !429)
!1290 = !DILocation(line: 343, column: 46, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1286, file: !13, discriminator: 1)
!1292 = !DILocation(line: 344, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !429, file: !13, line: 344, column: 9)
!1294 = !DILocation(line: 344, column: 20, scope: !1293)
!1295 = !DILocation(line: 344, column: 31, scope: !1293)
!1296 = !DILocation(line: 344, column: 9, scope: !429)
!1297 = !DILocation(line: 344, column: 46, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1293, file: !13, discriminator: 1)
!1299 = !DILocation(line: 345, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !429, file: !13, line: 345, column: 9)
!1301 = !DILocation(line: 345, column: 20, scope: !1300)
!1302 = !DILocation(line: 345, column: 31, scope: !1300)
!1303 = !DILocation(line: 345, column: 9, scope: !429)
!1304 = !DILocation(line: 345, column: 46, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1300, file: !13, discriminator: 1)
!1306 = !DILocation(line: 351, column: 5, scope: !429)
!1307 = !DILocation(line: 352, column: 1, scope: !429)
!1308 = !DILocation(line: 355, column: 17, scope: !434)
!1309 = !DILocation(line: 355, column: 29, scope: !434)
!1310 = !DILocation(line: 357, column: 14, scope: !434)
!1311 = !DILocation(line: 357, column: 19, scope: !434)
!1312 = !DILocation(line: 357, column: 5, scope: !434)
!1313 = !DILocation(line: 357, column: 12, scope: !434)
!1314 = !DILocation(line: 358, column: 14, scope: !434)
!1315 = !DILocation(line: 358, column: 19, scope: !434)
!1316 = !DILocation(line: 358, column: 5, scope: !434)
!1317 = !DILocation(line: 358, column: 12, scope: !434)
!1318 = !DILocation(line: 359, column: 9, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !434, file: !13, line: 359, column: 9)
!1320 = !DILocation(line: 359, column: 14, scope: !1319)
!1321 = !DILocation(line: 359, column: 9, scope: !434)
!1322 = !DILocation(line: 360, column: 18, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !13, line: 359, column: 23)
!1324 = !DILocation(line: 360, column: 23, scope: !1323)
!1325 = !DILocation(line: 360, column: 9, scope: !1323)
!1326 = !DILocation(line: 360, column: 16, scope: !1323)
!1327 = !DILocation(line: 361, column: 5, scope: !1323)
!1328 = !DILocation(line: 362, column: 18, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1319, file: !13, line: 361, column: 12)
!1330 = !DILocation(line: 362, column: 23, scope: !1329)
!1331 = !DILocation(line: 362, column: 9, scope: !1329)
!1332 = !DILocation(line: 362, column: 16, scope: !1329)
!1333 = !DILocation(line: 364, column: 14, scope: !434)
!1334 = !DILocation(line: 364, column: 19, scope: !434)
!1335 = !DILocation(line: 364, column: 5, scope: !434)
!1336 = !DILocation(line: 364, column: 12, scope: !434)
!1337 = !DILocation(line: 365, column: 14, scope: !434)
!1338 = !DILocation(line: 365, column: 19, scope: !434)
!1339 = !DILocation(line: 365, column: 5, scope: !434)
!1340 = !DILocation(line: 365, column: 12, scope: !434)
!1341 = !DILocation(line: 366, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !434, file: !13, line: 366, column: 9)
!1343 = !DILocation(line: 366, column: 14, scope: !1342)
!1344 = !DILocation(line: 366, column: 9, scope: !434)
!1345 = !DILocation(line: 367, column: 18, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !13, line: 366, column: 23)
!1347 = !DILocation(line: 367, column: 23, scope: !1346)
!1348 = !DILocation(line: 367, column: 9, scope: !1346)
!1349 = !DILocation(line: 367, column: 16, scope: !1346)
!1350 = !DILocation(line: 368, column: 5, scope: !1346)
!1351 = !DILocation(line: 369, column: 18, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !13, line: 368, column: 12)
!1353 = !DILocation(line: 369, column: 23, scope: !1352)
!1354 = !DILocation(line: 369, column: 9, scope: !1352)
!1355 = !DILocation(line: 369, column: 16, scope: !1352)
!1356 = !DILocation(line: 371, column: 14, scope: !434)
!1357 = !DILocation(line: 371, column: 19, scope: !434)
!1358 = !DILocation(line: 371, column: 5, scope: !434)
!1359 = !DILocation(line: 371, column: 12, scope: !434)
!1360 = !DILocation(line: 372, column: 14, scope: !434)
!1361 = !DILocation(line: 372, column: 19, scope: !434)
!1362 = !DILocation(line: 372, column: 5, scope: !434)
!1363 = !DILocation(line: 372, column: 12, scope: !434)
!1364 = !DILocation(line: 373, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !434, file: !13, line: 373, column: 9)
!1366 = !DILocation(line: 373, column: 14, scope: !1365)
!1367 = !DILocation(line: 373, column: 9, scope: !434)
!1368 = !DILocation(line: 374, column: 18, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !13, line: 373, column: 23)
!1370 = !DILocation(line: 374, column: 23, scope: !1369)
!1371 = !DILocation(line: 374, column: 9, scope: !1369)
!1372 = !DILocation(line: 374, column: 16, scope: !1369)
!1373 = !DILocation(line: 375, column: 5, scope: !1369)
!1374 = !DILocation(line: 376, column: 18, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1365, file: !13, line: 375, column: 12)
!1376 = !DILocation(line: 376, column: 23, scope: !1375)
!1377 = !DILocation(line: 376, column: 9, scope: !1375)
!1378 = !DILocation(line: 376, column: 16, scope: !1375)
!1379 = !DILocation(line: 378, column: 1, scope: !434)
