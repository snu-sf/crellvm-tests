; ModuleID = './encoding.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoding = type { i8*, i8*, i32, i32, i32, i8* }
%struct.recodetab = type { [2 x i16]*, i32 }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.combchar = type { i32, i32, i32, i32 }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.interval = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"eucJP\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"B\02I\0401\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\02\04I\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SJIS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"BIBB01\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\02I\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"eucKR\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"B\03BB01\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"eucCN\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"B\01BB01\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Big5\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"B\18BB01\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"KOI8-R\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"CP1251\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ISO8859-2\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ISO8859-3\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ISO8859-4\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ISO8859-5\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ISO8859-6\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ISO8859-7\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ISO8859-8\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"ISO8859-9\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ISO8859-10\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"ISO8859-15\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"jis\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"GBK\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"B\19BB01\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\19\00", align 1
@encodings = global [21 x %struct.encoding] [%struct.encoding { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 1, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null, i32 161, i32 0, i32 1, i8* null }, %struct.encoding { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 191, i32 0, i32 1, i8* null }, %struct.encoding { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 -1, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null, i32 194, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* null, i32 195, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 196, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* null, i32 204, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* null, i32 199, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* null, i32 198, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* null, i32 200, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* null, i32 205, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* null, i32 214, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* null, i32 226, i32 0, i32 0, i8* null }, %struct.encoding { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct.encoding { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 226, i32 1, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0) }], align 16
@builtin_tabs = internal global [171 x [2 x i16]] [[2 x i16] [i16 48, i16 0], [2 x i16] [i16 95, i16 9646], [2 x i16] [i16 96, i16 9670], [2 x i16] [i16 97, i16 9618], [2 x i16] [i16 98, i16 9225], [2 x i16] [i16 99, i16 9228], [2 x i16] [i16 100, i16 9229], [2 x i16] [i16 101, i16 9226], [2 x i16] [i16 102, i16 176], [2 x i16] [i16 103, i16 177], [2 x i16] [i16 104, i16 9252], [2 x i16] [i16 105, i16 9227], [2 x i16] [i16 106, i16 9496], [2 x i16] [i16 107, i16 9488], [2 x i16] [i16 108, i16 9484], [2 x i16] [i16 109, i16 9492], [2 x i16] [i16 110, i16 9532], [2 x i16] [i16 111, i16 9146], [2 x i16] [i16 112, i16 9147], [2 x i16] [i16 113, i16 9472], [2 x i16] [i16 114, i16 9148], [2 x i16] [i16 115, i16 9149], [2 x i16] [i16 116, i16 9500], [2 x i16] [i16 117, i16 9508], [2 x i16] [i16 118, i16 9524], [2 x i16] [i16 119, i16 9516], [2 x i16] [i16 120, i16 9474], [2 x i16] [i16 121, i16 8804], [2 x i16] [i16 122, i16 8805], [2 x i16] [i16 123, i16 960], [2 x i16] [i16 124, i16 8800], [2 x i16] [i16 125, i16 163], [2 x i16] [i16 126, i16 183], [2 x i16] zeroinitializer, [2 x i16] [i16 52, i16 0], [2 x i16] [i16 35, i16 163], [2 x i16] [i16 64, i16 190], [2 x i16] [i16 91, i16 255], [2 x i16] [i16 92, i16 189], [2 x i16] [i16 93, i16 124], [2 x i16] [i16 123, i16 168], [2 x i16] [i16 124, i16 102], [2 x i16] [i16 125, i16 188], [2 x i16] [i16 126, i16 180], [2 x i16] zeroinitializer, [2 x i16] [i16 53, i16 0], [2 x i16] [i16 91, i16 196], [2 x i16] [i16 92, i16 214], [2 x i16] [i16 93, i16 197], [2 x i16] [i16 94, i16 220], [2 x i16] [i16 96, i16 233], [2 x i16] [i16 123, i16 228], [2 x i16] [i16 124, i16 246], [2 x i16] [i16 125, i16 229], [2 x i16] [i16 126, i16 252], [2 x i16] zeroinitializer, [2 x i16] [i16 54, i16 0], [2 x i16] [i16 64, i16 196], [2 x i16] [i16 91, i16 198], [2 x i16] [i16 92, i16 216], [2 x i16] [i16 93, i16 197], [2 x i16] [i16 94, i16 220], [2 x i16] [i16 96, i16 228], [2 x i16] [i16 123, i16 230], [2 x i16] [i16 124, i16 248], [2 x i16] [i16 125, i16 229], [2 x i16] [i16 126, i16 252], [2 x i16] zeroinitializer, [2 x i16] [i16 55, i16 0], [2 x i16] [i16 64, i16 201], [2 x i16] [i16 91, i16 196], [2 x i16] [i16 92, i16 214], [2 x i16] [i16 93, i16 197], [2 x i16] [i16 94, i16 220], [2 x i16] [i16 96, i16 233], [2 x i16] [i16 123, i16 228], [2 x i16] [i16 124, i16 246], [2 x i16] [i16 125, i16 229], [2 x i16] [i16 126, i16 252], [2 x i16] zeroinitializer, [2 x i16] [i16 61, i16 0], [2 x i16] [i16 35, i16 249], [2 x i16] [i16 64, i16 224], [2 x i16] [i16 91, i16 233], [2 x i16] [i16 92, i16 231], [2 x i16] [i16 93, i16 234], [2 x i16] [i16 94, i16 238], [2 x i16] [i16 95, i16 232], [2 x i16] [i16 96, i16 244], [2 x i16] [i16 123, i16 228], [2 x i16] [i16 124, i16 246], [2 x i16] [i16 125, i16 252], [2 x i16] [i16 126, i16 251], [2 x i16] zeroinitializer, [2 x i16] [i16 65, i16 0], [2 x i16] [i16 35, i16 163], [2 x i16] zeroinitializer, [2 x i16] [i16 75, i16 0], [2 x i16] [i16 64, i16 167], [2 x i16] [i16 91, i16 196], [2 x i16] [i16 92, i16 214], [2 x i16] [i16 93, i16 220], [2 x i16] [i16 123, i16 228], [2 x i16] [i16 124, i16 246], [2 x i16] [i16 125, i16 252], [2 x i16] [i16 126, i16 223], [2 x i16] zeroinitializer, [2 x i16] [i16 81, i16 0], [2 x i16] [i16 64, i16 224], [2 x i16] [i16 91, i16 226], [2 x i16] [i16 92, i16 231], [2 x i16] [i16 93, i16 234], [2 x i16] [i16 94, i16 238], [2 x i16] [i16 96, i16 244], [2 x i16] [i16 123, i16 233], [2 x i16] [i16 124, i16 249], [2 x i16] [i16 125, i16 232], [2 x i16] [i16 126, i16 251], [2 x i16] zeroinitializer, [2 x i16] [i16 82, i16 0], [2 x i16] [i16 35, i16 163], [2 x i16] [i16 64, i16 224], [2 x i16] [i16 91, i16 176], [2 x i16] [i16 92, i16 231], [2 x i16] [i16 93, i16 167], [2 x i16] [i16 123, i16 233], [2 x i16] [i16 124, i16 249], [2 x i16] [i16 125, i16 232], [2 x i16] [i16 126, i16 168], [2 x i16] zeroinitializer, [2 x i16] [i16 89, i16 0], [2 x i16] [i16 35, i16 163], [2 x i16] [i16 64, i16 167], [2 x i16] [i16 91, i16 176], [2 x i16] [i16 92, i16 231], [2 x i16] [i16 93, i16 233], [2 x i16] [i16 96, i16 249], [2 x i16] [i16 123, i16 224], [2 x i16] [i16 124, i16 242], [2 x i16] [i16 125, i16 232], [2 x i16] [i16 126, i16 236], [2 x i16] zeroinitializer, [2 x i16] [i16 90, i16 0], [2 x i16] [i16 35, i16 163], [2 x i16] [i16 64, i16 167], [2 x i16] [i16 91, i16 161], [2 x i16] [i16 92, i16 209], [2 x i16] [i16 93, i16 191], [2 x i16] [i16 123, i16 176], [2 x i16] [i16 124, i16 241], [2 x i16] [i16 125, i16 231], [2 x i16] zeroinitializer, [2 x i16] [i16 226, i16 0], [2 x i16] [i16 164, i16 8364], [2 x i16] [i16 166, i16 352], [2 x i16] [i16 168, i16 353], [2 x i16] [i16 180, i16 381], [2 x i16] [i16 184, i16 382], [2 x i16] [i16 188, i16 338], [2 x i16] [i16 189, i16 339], [2 x i16] [i16 190, i16 376], [2 x i16] zeroinitializer, [2 x i16] [i16 74, i16 0], [2 x i16] [i16 92, i16 165], [2 x i16] [i16 126, i16 8254], [2 x i16] zeroinitializer, [2 x i16] [i16 73, i16 0], [2 x i16] [i16 33, i16 -159], [2 x i16] [i16 -32673, i16 -97], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer], align 16
@recodetabs = internal global [256 x %struct.recodetab] zeroinitializer, align 16
@recode_mchar.rmc = internal global %struct.mchar zeroinitializer, align 1
@recode_mline.maxlen = internal global i32 0, align 4
@recode_mline.last = internal global i32 0, align 4
@recode_mline.rml = internal global [2 x %struct.mline] zeroinitializer, align 16
@recode_mline.rl = internal global %struct.mline* null, align 8
@null = external global i8*, align 8
@combchars = common global %struct.combchar** null, align 8
@display = external global %struct.display*, align 8
@flayer = external global %struct.layer*, align 8
@displays = external global %struct.display*, align 8
@utf8_isdouble.ambiguous = internal constant [156 x %struct.interval] [%struct.interval { i32 161, i32 161 }, %struct.interval { i32 164, i32 164 }, %struct.interval { i32 167, i32 168 }, %struct.interval { i32 170, i32 170 }, %struct.interval { i32 174, i32 174 }, %struct.interval { i32 176, i32 180 }, %struct.interval { i32 182, i32 186 }, %struct.interval { i32 188, i32 191 }, %struct.interval { i32 198, i32 198 }, %struct.interval { i32 208, i32 208 }, %struct.interval { i32 215, i32 216 }, %struct.interval { i32 222, i32 225 }, %struct.interval { i32 230, i32 230 }, %struct.interval { i32 232, i32 234 }, %struct.interval { i32 236, i32 237 }, %struct.interval { i32 240, i32 240 }, %struct.interval { i32 242, i32 243 }, %struct.interval { i32 247, i32 250 }, %struct.interval { i32 252, i32 252 }, %struct.interval { i32 254, i32 254 }, %struct.interval { i32 257, i32 257 }, %struct.interval { i32 273, i32 273 }, %struct.interval { i32 275, i32 275 }, %struct.interval { i32 283, i32 283 }, %struct.interval { i32 294, i32 295 }, %struct.interval { i32 299, i32 299 }, %struct.interval { i32 305, i32 307 }, %struct.interval { i32 312, i32 312 }, %struct.interval { i32 319, i32 322 }, %struct.interval { i32 324, i32 324 }, %struct.interval { i32 328, i32 331 }, %struct.interval { i32 333, i32 333 }, %struct.interval { i32 338, i32 339 }, %struct.interval { i32 358, i32 359 }, %struct.interval { i32 363, i32 363 }, %struct.interval { i32 462, i32 462 }, %struct.interval { i32 464, i32 464 }, %struct.interval { i32 466, i32 466 }, %struct.interval { i32 468, i32 468 }, %struct.interval { i32 470, i32 470 }, %struct.interval { i32 472, i32 472 }, %struct.interval { i32 474, i32 474 }, %struct.interval { i32 476, i32 476 }, %struct.interval { i32 593, i32 593 }, %struct.interval { i32 609, i32 609 }, %struct.interval { i32 708, i32 708 }, %struct.interval { i32 711, i32 711 }, %struct.interval { i32 713, i32 715 }, %struct.interval { i32 717, i32 717 }, %struct.interval { i32 720, i32 720 }, %struct.interval { i32 728, i32 731 }, %struct.interval { i32 733, i32 733 }, %struct.interval { i32 735, i32 735 }, %struct.interval { i32 913, i32 929 }, %struct.interval { i32 931, i32 937 }, %struct.interval { i32 945, i32 961 }, %struct.interval { i32 963, i32 969 }, %struct.interval { i32 1025, i32 1025 }, %struct.interval { i32 1040, i32 1103 }, %struct.interval { i32 1105, i32 1105 }, %struct.interval { i32 8208, i32 8208 }, %struct.interval { i32 8211, i32 8214 }, %struct.interval { i32 8216, i32 8217 }, %struct.interval { i32 8220, i32 8221 }, %struct.interval { i32 8224, i32 8226 }, %struct.interval { i32 8228, i32 8231 }, %struct.interval { i32 8240, i32 8240 }, %struct.interval { i32 8242, i32 8243 }, %struct.interval { i32 8245, i32 8245 }, %struct.interval { i32 8251, i32 8251 }, %struct.interval { i32 8254, i32 8254 }, %struct.interval { i32 8308, i32 8308 }, %struct.interval { i32 8319, i32 8319 }, %struct.interval { i32 8321, i32 8324 }, %struct.interval { i32 8364, i32 8364 }, %struct.interval { i32 8451, i32 8451 }, %struct.interval { i32 8453, i32 8453 }, %struct.interval { i32 8457, i32 8457 }, %struct.interval { i32 8467, i32 8467 }, %struct.interval { i32 8470, i32 8470 }, %struct.interval { i32 8481, i32 8482 }, %struct.interval { i32 8486, i32 8486 }, %struct.interval { i32 8491, i32 8491 }, %struct.interval { i32 8531, i32 8532 }, %struct.interval { i32 8539, i32 8542 }, %struct.interval { i32 8544, i32 8555 }, %struct.interval { i32 8560, i32 8569 }, %struct.interval { i32 8592, i32 8601 }, %struct.interval { i32 8632, i32 8633 }, %struct.interval { i32 8658, i32 8658 }, %struct.interval { i32 8660, i32 8660 }, %struct.interval { i32 8679, i32 8679 }, %struct.interval { i32 8704, i32 8704 }, %struct.interval { i32 8706, i32 8707 }, %struct.interval { i32 8711, i32 8712 }, %struct.interval { i32 8715, i32 8715 }, %struct.interval { i32 8719, i32 8719 }, %struct.interval { i32 8721, i32 8721 }, %struct.interval { i32 8725, i32 8725 }, %struct.interval { i32 8730, i32 8730 }, %struct.interval { i32 8733, i32 8736 }, %struct.interval { i32 8739, i32 8739 }, %struct.interval { i32 8741, i32 8741 }, %struct.interval { i32 8743, i32 8748 }, %struct.interval { i32 8750, i32 8750 }, %struct.interval { i32 8756, i32 8759 }, %struct.interval { i32 8764, i32 8765 }, %struct.interval { i32 8776, i32 8776 }, %struct.interval { i32 8780, i32 8780 }, %struct.interval { i32 8786, i32 8786 }, %struct.interval { i32 8800, i32 8801 }, %struct.interval { i32 8804, i32 8807 }, %struct.interval { i32 8810, i32 8811 }, %struct.interval { i32 8814, i32 8815 }, %struct.interval { i32 8834, i32 8835 }, %struct.interval { i32 8838, i32 8839 }, %struct.interval { i32 8853, i32 8853 }, %struct.interval { i32 8857, i32 8857 }, %struct.interval { i32 8869, i32 8869 }, %struct.interval { i32 8895, i32 8895 }, %struct.interval { i32 8978, i32 8978 }, %struct.interval { i32 9312, i32 9449 }, %struct.interval { i32 9451, i32 9547 }, %struct.interval { i32 9552, i32 9587 }, %struct.interval { i32 9600, i32 9615 }, %struct.interval { i32 9618, i32 9621 }, %struct.interval { i32 9632, i32 9633 }, %struct.interval { i32 9635, i32 9641 }, %struct.interval { i32 9650, i32 9651 }, %struct.interval { i32 9654, i32 9655 }, %struct.interval { i32 9660, i32 9661 }, %struct.interval { i32 9664, i32 9665 }, %struct.interval { i32 9670, i32 9672 }, %struct.interval { i32 9675, i32 9675 }, %struct.interval { i32 9678, i32 9681 }, %struct.interval { i32 9698, i32 9701 }, %struct.interval { i32 9711, i32 9711 }, %struct.interval { i32 9733, i32 9734 }, %struct.interval { i32 9737, i32 9737 }, %struct.interval { i32 9742, i32 9743 }, %struct.interval { i32 9748, i32 9749 }, %struct.interval { i32 9756, i32 9756 }, %struct.interval { i32 9758, i32 9758 }, %struct.interval { i32 9792, i32 9792 }, %struct.interval { i32 9794, i32 9794 }, %struct.interval { i32 9824, i32 9825 }, %struct.interval { i32 9827, i32 9829 }, %struct.interval { i32 9831, i32 9834 }, %struct.interval { i32 9836, i32 9837 }, %struct.interval { i32 9839, i32 9839 }, %struct.interval { i32 10045, i32 10045 }, %struct.interval { i32 10102, i32 10111 }, %struct.interval { i32 57344, i32 63743 }, %struct.interval { i32 65533, i32 65533 }, %struct.interval { i32 983040, i32 1048573 }, %struct.interval { i32 1048576, i32 1114109 }], align 16
@cjkwidth = external global i32, align 4
@utf8_iscomb.combining = internal constant [142 x %struct.interval] [%struct.interval { i32 768, i32 879 }, %struct.interval { i32 1155, i32 1158 }, %struct.interval { i32 1160, i32 1161 }, %struct.interval { i32 1425, i32 1469 }, %struct.interval { i32 1471, i32 1471 }, %struct.interval { i32 1473, i32 1474 }, %struct.interval { i32 1476, i32 1477 }, %struct.interval { i32 1479, i32 1479 }, %struct.interval { i32 1536, i32 1539 }, %struct.interval { i32 1552, i32 1557 }, %struct.interval { i32 1611, i32 1630 }, %struct.interval { i32 1648, i32 1648 }, %struct.interval { i32 1750, i32 1764 }, %struct.interval { i32 1767, i32 1768 }, %struct.interval { i32 1770, i32 1773 }, %struct.interval { i32 1807, i32 1807 }, %struct.interval { i32 1809, i32 1809 }, %struct.interval { i32 1840, i32 1866 }, %struct.interval { i32 1958, i32 1968 }, %struct.interval { i32 2027, i32 2035 }, %struct.interval { i32 2305, i32 2306 }, %struct.interval { i32 2364, i32 2364 }, %struct.interval { i32 2369, i32 2376 }, %struct.interval { i32 2381, i32 2381 }, %struct.interval { i32 2385, i32 2388 }, %struct.interval { i32 2402, i32 2403 }, %struct.interval { i32 2433, i32 2433 }, %struct.interval { i32 2492, i32 2492 }, %struct.interval { i32 2497, i32 2500 }, %struct.interval { i32 2509, i32 2509 }, %struct.interval { i32 2530, i32 2531 }, %struct.interval { i32 2561, i32 2562 }, %struct.interval { i32 2620, i32 2620 }, %struct.interval { i32 2625, i32 2626 }, %struct.interval { i32 2631, i32 2632 }, %struct.interval { i32 2635, i32 2637 }, %struct.interval { i32 2672, i32 2673 }, %struct.interval { i32 2689, i32 2690 }, %struct.interval { i32 2748, i32 2748 }, %struct.interval { i32 2753, i32 2757 }, %struct.interval { i32 2759, i32 2760 }, %struct.interval { i32 2765, i32 2765 }, %struct.interval { i32 2786, i32 2787 }, %struct.interval { i32 2817, i32 2817 }, %struct.interval { i32 2876, i32 2876 }, %struct.interval { i32 2879, i32 2879 }, %struct.interval { i32 2881, i32 2883 }, %struct.interval { i32 2893, i32 2893 }, %struct.interval { i32 2902, i32 2902 }, %struct.interval { i32 2946, i32 2946 }, %struct.interval { i32 3008, i32 3008 }, %struct.interval { i32 3021, i32 3021 }, %struct.interval { i32 3134, i32 3136 }, %struct.interval { i32 3142, i32 3144 }, %struct.interval { i32 3146, i32 3149 }, %struct.interval { i32 3157, i32 3158 }, %struct.interval { i32 3260, i32 3260 }, %struct.interval { i32 3263, i32 3263 }, %struct.interval { i32 3270, i32 3270 }, %struct.interval { i32 3276, i32 3277 }, %struct.interval { i32 3298, i32 3299 }, %struct.interval { i32 3393, i32 3395 }, %struct.interval { i32 3405, i32 3405 }, %struct.interval { i32 3530, i32 3530 }, %struct.interval { i32 3538, i32 3540 }, %struct.interval { i32 3542, i32 3542 }, %struct.interval { i32 3633, i32 3633 }, %struct.interval { i32 3636, i32 3642 }, %struct.interval { i32 3655, i32 3662 }, %struct.interval { i32 3761, i32 3761 }, %struct.interval { i32 3764, i32 3769 }, %struct.interval { i32 3771, i32 3772 }, %struct.interval { i32 3784, i32 3789 }, %struct.interval { i32 3864, i32 3865 }, %struct.interval { i32 3893, i32 3893 }, %struct.interval { i32 3895, i32 3895 }, %struct.interval { i32 3897, i32 3897 }, %struct.interval { i32 3953, i32 3966 }, %struct.interval { i32 3968, i32 3972 }, %struct.interval { i32 3974, i32 3975 }, %struct.interval { i32 3984, i32 3991 }, %struct.interval { i32 3993, i32 4028 }, %struct.interval { i32 4038, i32 4038 }, %struct.interval { i32 4141, i32 4144 }, %struct.interval { i32 4146, i32 4146 }, %struct.interval { i32 4150, i32 4151 }, %struct.interval { i32 4153, i32 4153 }, %struct.interval { i32 4184, i32 4185 }, %struct.interval { i32 4448, i32 4607 }, %struct.interval { i32 4959, i32 4959 }, %struct.interval { i32 5906, i32 5908 }, %struct.interval { i32 5938, i32 5940 }, %struct.interval { i32 5970, i32 5971 }, %struct.interval { i32 6002, i32 6003 }, %struct.interval { i32 6068, i32 6069 }, %struct.interval { i32 6071, i32 6077 }, %struct.interval { i32 6086, i32 6086 }, %struct.interval { i32 6089, i32 6099 }, %struct.interval { i32 6109, i32 6109 }, %struct.interval { i32 6155, i32 6157 }, %struct.interval { i32 6313, i32 6313 }, %struct.interval { i32 6432, i32 6434 }, %struct.interval { i32 6439, i32 6440 }, %struct.interval { i32 6450, i32 6450 }, %struct.interval { i32 6457, i32 6459 }, %struct.interval { i32 6679, i32 6680 }, %struct.interval { i32 6912, i32 6915 }, %struct.interval { i32 6964, i32 6964 }, %struct.interval { i32 6966, i32 6970 }, %struct.interval { i32 6972, i32 6972 }, %struct.interval { i32 6978, i32 6978 }, %struct.interval { i32 7019, i32 7027 }, %struct.interval { i32 7616, i32 7626 }, %struct.interval { i32 7678, i32 7679 }, %struct.interval { i32 8203, i32 8207 }, %struct.interval { i32 8234, i32 8238 }, %struct.interval { i32 8288, i32 8291 }, %struct.interval { i32 8298, i32 8303 }, %struct.interval { i32 8400, i32 8431 }, %struct.interval { i32 12330, i32 12335 }, %struct.interval { i32 12441, i32 12442 }, %struct.interval { i32 43014, i32 43014 }, %struct.interval { i32 43019, i32 43019 }, %struct.interval { i32 43045, i32 43046 }, %struct.interval { i32 64286, i32 64286 }, %struct.interval { i32 65024, i32 65039 }, %struct.interval { i32 65056, i32 65059 }, %struct.interval { i32 65279, i32 65279 }, %struct.interval { i32 65529, i32 65531 }, %struct.interval { i32 68097, i32 68099 }, %struct.interval { i32 68101, i32 68102 }, %struct.interval { i32 68108, i32 68111 }, %struct.interval { i32 68152, i32 68154 }, %struct.interval { i32 68159, i32 68159 }, %struct.interval { i32 119143, i32 119145 }, %struct.interval { i32 119155, i32 119170 }, %struct.interval { i32 119173, i32 119179 }, %struct.interval { i32 119210, i32 119213 }, %struct.interval { i32 119362, i32 119364 }, %struct.interval { i32 917505, i32 917505 }, %struct.interval { i32 917536, i32 917631 }, %struct.interval { i32 917760, i32 917999 }], align 16
@.str.33 = private unnamed_addr constant [4 x i8] c"euc\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1
@screenencodings = external global i8*, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"%s/%02x\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ScreenI2UTF8\00", align 1

; Function Attrs: nounwind uwtable
define void @InitBuiltinTabs() #0 {
entry:
  %p = alloca [2 x i16]*, align 8
  store [2 x i16]* getelementptr inbounds ([171 x [2 x i16]], [171 x [2 x i16]]* @builtin_tabs, i32 0, i32 0), [2 x i16]** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %0, i32 0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i32 0, i64 0
  %3 = load i16, i16* %arrayidx1, align 2
  %idxprom = zext i16 %3 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom
  %flags = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx2, i32 0, i32 1
  store i32 2, i32* %flags, align 4
  %4 = load [2 x i16]*, [2 x i16]** %p, align 8
  %add.ptr = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 1
  %5 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx3 = getelementptr inbounds [2 x i16], [2 x i16]* %5, i32 0, i64 0
  %6 = load i16, i16* %arrayidx3, align 2
  %idxprom4 = zext i16 %6 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom4
  %tab = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx5, i32 0, i32 0
  store [2 x i16]* %add.ptr, [2 x i16]** %tab, align 8
  %7 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr = getelementptr inbounds [2 x i16], [2 x i16]* %7, i32 1
  store [2 x i16]* %incdec.ptr, [2 x i16]** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx6 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i32 0, i64 0
  %9 = load i16, i16* %arrayidx6, align 2
  %tobool7 = icmp ne i16 %9, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr8 = getelementptr inbounds [2 x i16], [2 x i16]* %10, i32 1
  store [2 x i16]* %incdec.ptr8, [2 x i16]** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr9 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i32 1
  store [2 x i16]* %incdec.ptr9, [2 x i16]** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.mchar* @recode_mchar(%struct.mchar* %mc, i32 %from, i32 %to) #0 {
entry:
  %retval = alloca %struct.mchar*, align 8
  %mc.addr = alloca %struct.mchar*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.mchar* %mc, %struct.mchar** %mc.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %from.addr, align 4
  %1 = load i32, i32* %to.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load i32, i32* %from.addr, align 4
  %cmp1 = icmp ne i32 %2, 8
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %to.addr, align 4
  %cmp2 = icmp ne i32 %3, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %do.end
  %4 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  store %struct.mchar* %4, %struct.mchar** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %6 = bitcast %struct.mchar* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 0), i8* %6, i64 6, i32 1, i1 false)
  %7 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 2), align 1
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true.5, label %if.end.10

land.lhs.true.5:                                  ; preds = %if.end
  %8 = load i32, i32* %from.addr, align 4
  %cmp6 = icmp ne i32 %8, 8
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.5
  %9 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %deffont, align 4
  %conv9 = trunc i32 %10 to i8
  store i8 %conv9, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 2), align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true.5, %if.end
  %11 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 2), align 1
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %12 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  store %struct.mchar* %12, %struct.mchar** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %13 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 0), align 1
  %conv16 = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 2), align 1
  %conv17 = zext i8 %14 to i32
  %shl = shl i32 %conv17, 8
  %or = or i32 %conv16, %shl
  store i32 %or, i32* %c, align 4
  %15 = load i32, i32* %from.addr, align 4
  %cmp18 = icmp eq i32 %15, 8
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.15
  %16 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 3), align 1
  %conv21 = zext i8 %16 to i32
  %shl22 = shl i32 %conv21, 16
  %17 = load i32, i32* %c, align 4
  %or23 = or i32 %17, %shl22
  store i32 %or23, i32* %c, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.15
  %18 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 5), align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.24
  %19 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 5), align 1
  %conv26 = zext i8 %19 to i32
  store i32 %conv26, i32* %c2, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %to.addr, align 4
  %call = call i32 @recode_char_dw_to_encoding(i32 %20, i32* %c2, i32 %21)
  store i32 %call, i32* %c, align 4
  %22 = load i32, i32* %c2, align 4
  %conv27 = trunc i32 %22 to i8
  store i8 %conv27, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 5), align 1
  br label %if.end.29

if.else:                                          ; preds = %if.end.24
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %to.addr, align 4
  %call28 = call i32 @recode_char_to_encoding(i32 %23, i32 %24)
  store i32 %call28, i32* %c, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %25 = load i32, i32* %c, align 4
  %and = and i32 %25, 255
  %conv30 = trunc i32 %and to i8
  store i8 %conv30, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 0), align 1
  %26 = load i32, i32* %c, align 4
  %shr = ashr i32 %26, 8
  %and31 = and i32 %shr, 255
  %conv32 = trunc i32 %and31 to i8
  store i8 %conv32, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 2), align 1
  %27 = load i32, i32* %to.addr, align 4
  %cmp33 = icmp eq i32 %27, 8
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.29
  %28 = load i32, i32* %c, align 4
  %shr36 = ashr i32 %28, 16
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i8
  store i8 %conv38, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @recode_mchar.rmc, i32 0, i32 3), align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.29
  store %struct.mchar* @recode_mchar.rmc, %struct.mchar** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.14, %if.then
  %29 = load %struct.mchar*, %struct.mchar** %retval
  ret %struct.mchar* %29
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @recode_char_dw_to_encoding(i32 %c, i32* %c2p, i32 %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %c2p.addr = alloca i32*, align 8
  %encoding.addr = alloca i32, align 4
  %fp = alloca i8*, align 8
  %x = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %c2p, i32** %c2p.addr, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32*, i32** %c2p.addr, align 8
  %call = call i32 @recode_char_dw(i32 %1, i32* %2, i32 1, i32 -1)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %fontlist = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 5
  %4 = load i8*, i8** %fontlist, align 8
  store i8* %4, i8** %fp, align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.then.2
  %5 = load i8*, i8** %fp, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32*, i32** %c2p.addr, align 8
  %9 = load i8*, i8** %fp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %fp, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %call3 = call i32 @recode_char_dw(i32 %7, i32* %8, i32 0, i32 %conv)
  store i32 %call3, i32* %x, align 4
  %cmp4 = icmp ne i32 %call3, -1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %11 = load i32, i32* %x, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %if.end
  %12 = load i32, i32* %encoding.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom9
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx10, i32 0, i32 2
  %13 = load i32, i32* %deffont, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end.8
  %14 = load i32, i32* %c.addr, align 4
  %15 = load i32*, i32** %c2p.addr, align 8
  %16 = load i32, i32* %encoding.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom13
  %deffont15 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx14, i32 0, i32 2
  %17 = load i32, i32* %deffont15, align 4
  %call16 = call i32 @recode_char_dw(i32 %14, i32* %15, i32 0, i32 %17)
  store i32 %call16, i32* %x, align 4
  %cmp17 = icmp ne i32 %call16, -1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.12
  %18 = load i32, i32* %x, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.8
  %19 = load i32, i32* %c.addr, align 4
  %20 = load i32*, i32** %c2p.addr, align 8
  %call22 = call i32 @recode_char_dw(i32 %19, i32* %20, i32 0, i32 -1)
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.then.6, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @recode_char_to_encoding(i32 %c, i32 %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %fp = alloca i8*, align 8
  %x = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @recode_char(i32 %1, i32 1, i32 -1)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %fontlist = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 5
  %3 = load i8*, i8** %fontlist, align 8
  store i8* %3, i8** %fp, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.then.2
  %4 = load i8*, i8** %fp, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %c.addr, align 4
  %7 = load i8*, i8** %fp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %fp, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %call3 = call i32 @recode_char(i32 %6, i32 0, i32 %conv)
  store i32 %call3, i32* %x, align 4
  %cmp4 = icmp ne i32 %call3, -1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %9 = load i32, i32* %x, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %if.end
  %10 = load i32, i32* %encoding.addr, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom9
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx10, i32 0, i32 2
  %11 = load i32, i32* %deffont, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end.8
  %12 = load i32, i32* %c.addr, align 4
  %13 = load i32, i32* %encoding.addr, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom13
  %deffont15 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx14, i32 0, i32 2
  %14 = load i32, i32* %deffont15, align 4
  %call16 = call i32 @recode_char(i32 %12, i32 0, i32 %14)
  store i32 %call16, i32* %x, align 4
  %cmp17 = icmp ne i32 %call16, -1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.12
  %15 = load i32, i32* %x, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.8
  %16 = load i32, i32* %c.addr, align 4
  %call22 = call i32 @recode_char(i32 %16, i32 0, i32 -1)
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.then.6, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define %struct.mline* @recode_mline(%struct.mline* %ml, i32 %w, i32 %from, i32 %to) #0 {
entry:
  %retval = alloca %struct.mline*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %w.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %1 = load i32, i32* %to.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %from.addr, align 4
  %cmp1 = icmp ne i32 %2, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.3

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %to.addr, align 4
  %cmp2 = icmp ne i32 %3, 8
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* %w.addr, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %land.lhs.true, %entry
  %5 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  store %struct.mline* %5, %struct.mline** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %6 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 2
  %7 = load i8*, i8** %font, align 8
  %8 = load i8*, i8** @null, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.11

land.lhs.true.6:                                  ; preds = %if.end
  %9 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %9, i32 0, i32 3
  %10 = load i8*, i8** %fontx, align 8
  %11 = load i8*, i8** @null, align 8
  %cmp7 = icmp eq i8* %10, %11
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %12 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 2
  %13 = load i32, i32* %deffont, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8
  %14 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  store %struct.mline* %14, %struct.mline** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.8, %land.lhs.true.6, %if.end
  %15 = load i32, i32* %w.addr, align 4
  %16 = load i32, i32* @recode_mline.maxlen, align 4
  %cmp12 = icmp sgt i32 %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.92

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %17, 2
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom15
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx16, i32 0, i32 0
  %19 = load i8*, i8** %image, align 8
  %cmp17 = icmp eq i8* %19, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %20 = load i32, i32* %w.addr, align 4
  %conv = sext i32 %20 to i64
  %call = call noalias i8* @malloc(i64 %conv) #1
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom19
  %image21 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx20, i32 0, i32 0
  store i8* %call, i8** %image21, align 8
  br label %if.end.30

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom22
  %image24 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx23, i32 0, i32 0
  %23 = load i8*, i8** %image24, align 8
  %24 = load i32, i32* %w.addr, align 4
  %conv25 = sext i32 %24 to i64
  %call26 = call i8* @realloc(i8* %23, i64 %conv25) #1
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom27
  %image29 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx28, i32 0, i32 0
  store i8* %call26, i8** %image29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.18
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom31
  %font33 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx32, i32 0, i32 2
  %27 = load i8*, i8** %font33, align 8
  %cmp34 = icmp eq i8* %27, null
  br i1 %cmp34, label %if.then.36, label %if.else.42

if.then.36:                                       ; preds = %if.end.30
  %28 = load i32, i32* %w.addr, align 4
  %conv37 = sext i32 %28 to i64
  %call38 = call noalias i8* @malloc(i64 %conv37) #1
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom39
  %font41 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx40, i32 0, i32 2
  store i8* %call38, i8** %font41, align 8
  br label %if.end.51

if.else.42:                                       ; preds = %if.end.30
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom43
  %font45 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx44, i32 0, i32 2
  %31 = load i8*, i8** %font45, align 8
  %32 = load i32, i32* %w.addr, align 4
  %conv46 = sext i32 %32 to i64
  %call47 = call i8* @realloc(i8* %31, i64 %conv46) #1
  %33 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom48
  %font50 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx49, i32 0, i32 2
  store i8* %call47, i8** %font50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.42, %if.then.36
  %34 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom52
  %fontx54 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx53, i32 0, i32 3
  %35 = load i8*, i8** %fontx54, align 8
  %cmp55 = icmp eq i8* %35, null
  br i1 %cmp55, label %if.then.57, label %if.else.63

if.then.57:                                       ; preds = %if.end.51
  %36 = load i32, i32* %w.addr, align 4
  %conv58 = sext i32 %36 to i64
  %call59 = call noalias i8* @malloc(i64 %conv58) #1
  %37 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom60
  %fontx62 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx61, i32 0, i32 3
  store i8* %call59, i8** %fontx62, align 8
  br label %if.end.72

if.else.63:                                       ; preds = %if.end.51
  %38 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %38 to i64
  %arrayidx65 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom64
  %fontx66 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx65, i32 0, i32 3
  %39 = load i8*, i8** %fontx66, align 8
  %40 = load i32, i32* %w.addr, align 4
  %conv67 = sext i32 %40 to i64
  %call68 = call i8* @realloc(i8* %39, i64 %conv67) #1
  %41 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %41 to i64
  %arrayidx70 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom69
  %fontx71 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx70, i32 0, i32 3
  store i8* %call68, i8** %fontx71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.63, %if.then.57
  %42 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %42 to i64
  %arrayidx74 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom73
  %image75 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx74, i32 0, i32 0
  %43 = load i8*, i8** %image75, align 8
  %cmp76 = icmp eq i8* %43, null
  br i1 %cmp76, label %if.then.90, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.72
  %44 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %44 to i64
  %arrayidx80 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom79
  %font81 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx80, i32 0, i32 2
  %45 = load i8*, i8** %font81, align 8
  %cmp82 = icmp eq i8* %45, null
  br i1 %cmp82, label %if.then.90, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.78
  %46 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %46 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i64 %idxprom85
  %fontx87 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx86, i32 0, i32 3
  %47 = load i8*, i8** %fontx87, align 8
  %cmp88 = icmp eq i8* %47, null
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.lhs.false.84, %lor.lhs.false.78, %if.end.72
  store i32 0, i32* @recode_mline.maxlen, align 4
  %48 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  store %struct.mline* %48, %struct.mline** %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.84
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %w.addr, align 4
  store i32 %50, i32* @recode_mline.maxlen, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %for.end, %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.end.92
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.99, %do.end
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %w.addr, align 4
  %cmp94 = icmp slt i32 %51, %52
  br i1 %cmp94, label %for.body.96, label %for.end.101

for.body.96:                                      ; preds = %for.cond.93
  br label %do.body.97

do.body.97:                                       ; preds = %for.body.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.body.97
  br label %for.inc.99

for.inc.99:                                       ; preds = %do.end.98
  %53 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %53, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.93

for.end.101:                                      ; preds = %for.cond.93
  br label %do.body.102

do.body.102:                                      ; preds = %for.end.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.body.102
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.110, %do.end.103
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %w.addr, align 4
  %cmp105 = icmp slt i32 %54, %55
  br i1 %cmp105, label %for.body.107, label %for.end.112

for.body.107:                                     ; preds = %for.cond.104
  br label %do.body.108

do.body.108:                                      ; preds = %for.body.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.body.108
  br label %for.inc.110

for.inc.110:                                      ; preds = %do.end.109
  %56 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %56, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.104

for.end.112:                                      ; preds = %for.cond.104
  br label %do.body.113

do.body.113:                                      ; preds = %for.end.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.body.113
  store i32 0, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.121, %do.end.114
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %w.addr, align 4
  %cmp116 = icmp slt i32 %57, %58
  br i1 %cmp116, label %for.body.118, label %for.end.123

for.body.118:                                     ; preds = %for.cond.115
  br label %do.body.119

do.body.119:                                      ; preds = %for.body.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.119
  br label %for.inc.121

for.inc.121:                                      ; preds = %do.end.120
  %59 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %59, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.115

for.end.123:                                      ; preds = %for.cond.115
  br label %do.body.124

do.body.124:                                      ; preds = %for.end.123
  br label %do.end.125

do.end.125:                                       ; preds = %do.body.124
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.132, %do.end.125
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %w.addr, align 4
  %cmp127 = icmp slt i32 %60, %61
  br i1 %cmp127, label %for.body.129, label %for.end.134

for.body.129:                                     ; preds = %for.cond.126
  br label %do.body.130

do.body.130:                                      ; preds = %for.body.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.130
  br label %for.inc.132

for.inc.132:                                      ; preds = %do.end.131
  %62 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %62, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.126

for.end.134:                                      ; preds = %for.cond.126
  br label %do.body.135

do.body.135:                                      ; preds = %for.end.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.body.135
  store i32 0, i32* %i, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.143, %do.end.136
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %w.addr, align 4
  %cmp138 = icmp slt i32 %63, %64
  br i1 %cmp138, label %for.body.140, label %for.end.145

for.body.140:                                     ; preds = %for.cond.137
  br label %do.body.141

do.body.141:                                      ; preds = %for.body.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.body.141
  br label %for.inc.143

for.inc.143:                                      ; preds = %do.end.142
  %65 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %65, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.137

for.end.145:                                      ; preds = %for.cond.137
  br label %do.body.146

do.body.146:                                      ; preds = %for.end.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.body.146
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.154, %do.end.147
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %w.addr, align 4
  %cmp149 = icmp slt i32 %66, %67
  br i1 %cmp149, label %for.body.151, label %for.end.156

for.body.151:                                     ; preds = %for.cond.148
  br label %do.body.152

do.body.152:                                      ; preds = %for.body.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.body.152
  br label %for.inc.154

for.inc.154:                                      ; preds = %do.end.153
  %68 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %68, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.148

for.end.156:                                      ; preds = %for.cond.148
  br label %do.body.157

do.body.157:                                      ; preds = %for.end.156
  br label %do.end.158

do.end.158:                                       ; preds = %do.body.157
  %69 = load i32, i32* @recode_mline.last, align 4
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* getelementptr inbounds ([2 x %struct.mline], [2 x %struct.mline]* @recode_mline.rml, i32 0, i32 0), i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** @recode_mline.rl, align 8
  %70 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %70, i32 0, i32 1
  %71 = load i8*, i8** %attr, align 8
  %72 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %attr159 = getelementptr inbounds %struct.mline, %struct.mline* %72, i32 0, i32 1
  store i8* %71, i8** %attr159, align 8
  %73 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %73, i32 0, i32 4
  %74 = load i8*, i8** %color, align 8
  %75 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %color160 = getelementptr inbounds %struct.mline, %struct.mline* %75, i32 0, i32 4
  store i8* %74, i8** %color160, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.273, %do.end.158
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %w.addr, align 4
  %cmp162 = icmp slt i32 %76, %77
  br i1 %cmp162, label %for.body.164, label %for.end.275

for.body.164:                                     ; preds = %for.cond.161
  %78 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %78 to i64
  %79 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image166 = getelementptr inbounds %struct.mline, %struct.mline* %79, i32 0, i32 0
  %80 = load i8*, i8** %image166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %80, i64 %idxprom165
  %81 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %81 to i32
  %82 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %82 to i64
  %83 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font170 = getelementptr inbounds %struct.mline, %struct.mline* %83, i32 0, i32 2
  %84 = load i8*, i8** %font170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %84, i64 %idxprom169
  %85 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %85 to i32
  %shl = shl i32 %conv172, 8
  %or = or i32 %conv168, %shl
  store i32 %or, i32* %c, align 4
  %86 = load i32, i32* %from.addr, align 4
  %cmp173 = icmp eq i32 %86, 8
  br i1 %cmp173, label %if.then.175, label %if.end.182

if.then.175:                                      ; preds = %for.body.164
  %87 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %87 to i64
  %88 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx177 = getelementptr inbounds %struct.mline, %struct.mline* %88, i32 0, i32 3
  %89 = load i8*, i8** %fontx177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %89, i64 %idxprom176
  %90 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %90 to i32
  %shl180 = shl i32 %conv179, 16
  %91 = load i32, i32* %c, align 4
  %or181 = or i32 %91, %shl180
  store i32 %or181, i32* %c, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.175, %for.body.164
  %92 = load i32, i32* %from.addr, align 4
  %cmp183 = icmp ne i32 %92, 8
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.194

land.lhs.true.185:                                ; preds = %if.end.182
  %93 = load i32, i32* %c, align 4
  %cmp186 = icmp slt i32 %93, 256
  br i1 %cmp186, label %if.then.188, label %if.end.194

if.then.188:                                      ; preds = %land.lhs.true.185
  %94 = load i32, i32* %from.addr, align 4
  %idxprom189 = sext i32 %94 to i64
  %arrayidx190 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom189
  %deffont191 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx190, i32 0, i32 2
  %95 = load i32, i32* %deffont191, align 4
  %shl192 = shl i32 %95, 8
  %96 = load i32, i32* %c, align 4
  %or193 = or i32 %96, %shl192
  store i32 %or193, i32* %c, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.188, %land.lhs.true.185, %if.end.182
  %97 = load i32, i32* %from.addr, align 4
  %cmp195 = icmp ne i32 %97, 8
  br i1 %cmp195, label %land.lhs.true.197, label %lor.lhs.false.204

land.lhs.true.197:                                ; preds = %if.end.194
  %98 = load i32, i32* %c, align 4
  %and = and i32 %98, 7936
  %cmp198 = icmp ne i32 %and, 0
  br i1 %cmp198, label %land.lhs.true.200, label %lor.lhs.false.204

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %99 = load i32, i32* %c, align 4
  %and201 = and i32 %99, 57344
  %cmp202 = icmp eq i32 %and201, 0
  br i1 %cmp202, label %if.then.209, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %land.lhs.true.200, %land.lhs.true.197, %if.end.194
  %100 = load i32, i32* %from.addr, align 4
  %cmp205 = icmp eq i32 %100, 8
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.249

land.lhs.true.207:                                ; preds = %lor.lhs.false.204
  %101 = load i32, i32* %c, align 4
  %call208 = call i32 @utf8_isdouble(i32 %101)
  %tobool = icmp ne i32 %call208, 0
  br i1 %tobool, label %if.then.209, label %if.else.249

if.then.209:                                      ; preds = %land.lhs.true.207, %land.lhs.true.200
  %102 = load i32, i32* %i, align 4
  %add = add nsw i32 %102, 1
  %103 = load i32, i32* %w.addr, align 4
  %cmp210 = icmp eq i32 %add, %103
  br i1 %cmp210, label %if.then.212, label %if.else.213

if.then.212:                                      ; preds = %if.then.209
  store i32 63, i32* %c, align 4
  br label %if.end.248

if.else.213:                                      ; preds = %if.then.209
  %104 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %104, 1
  store i32 %inc214, i32* %i, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %105 to i64
  %106 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image216 = getelementptr inbounds %struct.mline, %struct.mline* %106, i32 0, i32 0
  %107 = load i8*, i8** %image216, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %107, i64 %idxprom215
  %108 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %108 to i32
  %109 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %109 to i64
  %110 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font220 = getelementptr inbounds %struct.mline, %struct.mline* %110, i32 0, i32 2
  %111 = load i8*, i8** %font220, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %111, i64 %idxprom219
  %112 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %112 to i32
  %shl223 = shl i32 %conv222, 8
  %or224 = or i32 %conv218, %shl223
  store i32 %or224, i32* %c2, align 4
  %113 = load i32, i32* %c, align 4
  %114 = load i32, i32* %to.addr, align 4
  %call225 = call i32 @recode_char_dw_to_encoding(i32 %113, i32* %c2, i32 %114)
  store i32 %call225, i32* %c, align 4
  %115 = load i32, i32* %to.addr, align 4
  %cmp226 = icmp eq i32 %115, 8
  br i1 %cmp226, label %if.then.228, label %if.end.234

if.then.228:                                      ; preds = %if.else.213
  %116 = load i32, i32* %c, align 4
  %shr = ashr i32 %116, 16
  %and229 = and i32 %shr, 255
  %conv230 = trunc i32 %and229 to i8
  %117 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %117, 1
  %idxprom231 = sext i32 %sub to i64
  %118 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %fontx232 = getelementptr inbounds %struct.mline, %struct.mline* %118, i32 0, i32 3
  %119 = load i8*, i8** %fontx232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %119, i64 %idxprom231
  store i8 %conv230, i8* %arrayidx233, align 1
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.228, %if.else.213
  %120 = load i32, i32* %c, align 4
  %shr235 = ashr i32 %120, 8
  %and236 = and i32 %shr235, 255
  %conv237 = trunc i32 %and236 to i8
  %121 = load i32, i32* %i, align 4
  %sub238 = sub nsw i32 %121, 1
  %idxprom239 = sext i32 %sub238 to i64
  %122 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %font240 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 2
  %123 = load i8*, i8** %font240, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %123, i64 %idxprom239
  store i8 %conv237, i8* %arrayidx241, align 1
  %124 = load i32, i32* %c, align 4
  %and242 = and i32 %124, 255
  %conv243 = trunc i32 %and242 to i8
  %125 = load i32, i32* %i, align 4
  %sub244 = sub nsw i32 %125, 1
  %idxprom245 = sext i32 %sub244 to i64
  %126 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %image246 = getelementptr inbounds %struct.mline, %struct.mline* %126, i32 0, i32 0
  %127 = load i8*, i8** %image246, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %127, i64 %idxprom245
  store i8 %conv243, i8* %arrayidx247, align 1
  %128 = load i32, i32* %c2, align 4
  store i32 %128, i32* %c, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.234, %if.then.212
  br label %if.end.251

if.else.249:                                      ; preds = %land.lhs.true.207, %lor.lhs.false.204
  %129 = load i32, i32* %c, align 4
  %130 = load i32, i32* %to.addr, align 4
  %call250 = call i32 @recode_char_to_encoding(i32 %129, i32 %130)
  store i32 %call250, i32* %c, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.249, %if.end.248
  %131 = load i32, i32* %c, align 4
  %and252 = and i32 %131, 255
  %conv253 = trunc i32 %and252 to i8
  %132 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %132 to i64
  %133 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %image255 = getelementptr inbounds %struct.mline, %struct.mline* %133, i32 0, i32 0
  %134 = load i8*, i8** %image255, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %134, i64 %idxprom254
  store i8 %conv253, i8* %arrayidx256, align 1
  %135 = load i32, i32* %c, align 4
  %shr257 = ashr i32 %135, 8
  %and258 = and i32 %shr257, 255
  %conv259 = trunc i32 %and258 to i8
  %136 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %136 to i64
  %137 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %font261 = getelementptr inbounds %struct.mline, %struct.mline* %137, i32 0, i32 2
  %138 = load i8*, i8** %font261, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %138, i64 %idxprom260
  store i8 %conv259, i8* %arrayidx262, align 1
  %139 = load i32, i32* %to.addr, align 4
  %cmp263 = icmp eq i32 %139, 8
  br i1 %cmp263, label %if.then.265, label %if.end.272

if.then.265:                                      ; preds = %if.end.251
  %140 = load i32, i32* %c, align 4
  %shr266 = ashr i32 %140, 16
  %and267 = and i32 %shr266, 255
  %conv268 = trunc i32 %and267 to i8
  %141 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %141 to i64
  %142 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  %fontx270 = getelementptr inbounds %struct.mline, %struct.mline* %142, i32 0, i32 3
  %143 = load i8*, i8** %fontx270, align 8
  %arrayidx271 = getelementptr inbounds i8, i8* %143, i64 %idxprom269
  store i8 %conv268, i8* %arrayidx271, align 1
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.265, %if.end.251
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %144 = load i32, i32* %i, align 4
  %inc274 = add nsw i32 %144, 1
  store i32 %inc274, i32* %i, align 4
  br label %for.cond.161

for.end.275:                                      ; preds = %for.cond.161
  %145 = load i32, i32* @recode_mline.last, align 4
  %xor = xor i32 %145, 1
  store i32 %xor, i32* @recode_mline.last, align 4
  br label %do.body.276

do.body.276:                                      ; preds = %for.end.275
  br label %do.end.277

do.end.277:                                       ; preds = %do.body.276
  store i32 0, i32* %i, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.284, %do.end.277
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %w.addr, align 4
  %cmp279 = icmp slt i32 %146, %147
  br i1 %cmp279, label %for.body.281, label %for.end.286

for.body.281:                                     ; preds = %for.cond.278
  br label %do.body.282

do.body.282:                                      ; preds = %for.body.281
  br label %do.end.283

do.end.283:                                       ; preds = %do.body.282
  br label %for.inc.284

for.inc.284:                                      ; preds = %do.end.283
  %148 = load i32, i32* %i, align 4
  %inc285 = add nsw i32 %148, 1
  store i32 %inc285, i32* %i, align 4
  br label %for.cond.278

for.end.286:                                      ; preds = %for.cond.278
  br label %do.body.287

do.body.287:                                      ; preds = %for.end.286
  br label %do.end.288

do.end.288:                                       ; preds = %do.body.287
  store i32 0, i32* %i, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.295, %do.end.288
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %w.addr, align 4
  %cmp290 = icmp slt i32 %149, %150
  br i1 %cmp290, label %for.body.292, label %for.end.297

for.body.292:                                     ; preds = %for.cond.289
  br label %do.body.293

do.body.293:                                      ; preds = %for.body.292
  br label %do.end.294

do.end.294:                                       ; preds = %do.body.293
  br label %for.inc.295

for.inc.295:                                      ; preds = %do.end.294
  %151 = load i32, i32* %i, align 4
  %inc296 = add nsw i32 %151, 1
  store i32 %inc296, i32* %i, align 4
  br label %for.cond.289

for.end.297:                                      ; preds = %for.cond.289
  br label %do.body.298

do.body.298:                                      ; preds = %for.end.297
  br label %do.end.299

do.end.299:                                       ; preds = %do.body.298
  store i32 0, i32* %i, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.306, %do.end.299
  %152 = load i32, i32* %i, align 4
  %153 = load i32, i32* %w.addr, align 4
  %cmp301 = icmp slt i32 %152, %153
  br i1 %cmp301, label %for.body.303, label %for.end.308

for.body.303:                                     ; preds = %for.cond.300
  br label %do.body.304

do.body.304:                                      ; preds = %for.body.303
  br label %do.end.305

do.end.305:                                       ; preds = %do.body.304
  br label %for.inc.306

for.inc.306:                                      ; preds = %do.end.305
  %154 = load i32, i32* %i, align 4
  %inc307 = add nsw i32 %154, 1
  store i32 %inc307, i32* %i, align 4
  br label %for.cond.300

for.end.308:                                      ; preds = %for.cond.300
  br label %do.body.309

do.body.309:                                      ; preds = %for.end.308
  br label %do.end.310

do.end.310:                                       ; preds = %do.body.309
  store i32 0, i32* %i, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.317, %do.end.310
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* %w.addr, align 4
  %cmp312 = icmp slt i32 %155, %156
  br i1 %cmp312, label %for.body.314, label %for.end.319

for.body.314:                                     ; preds = %for.cond.311
  br label %do.body.315

do.body.315:                                      ; preds = %for.body.314
  br label %do.end.316

do.end.316:                                       ; preds = %do.body.315
  br label %for.inc.317

for.inc.317:                                      ; preds = %do.end.316
  %157 = load i32, i32* %i, align 4
  %inc318 = add nsw i32 %157, 1
  store i32 %inc318, i32* %i, align 4
  br label %for.cond.311

for.end.319:                                      ; preds = %for.cond.311
  br label %do.body.320

do.body.320:                                      ; preds = %for.end.319
  br label %do.end.321

do.end.321:                                       ; preds = %do.body.320
  store i32 0, i32* %i, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.328, %do.end.321
  %158 = load i32, i32* %i, align 4
  %159 = load i32, i32* %w.addr, align 4
  %cmp323 = icmp slt i32 %158, %159
  br i1 %cmp323, label %for.body.325, label %for.end.330

for.body.325:                                     ; preds = %for.cond.322
  br label %do.body.326

do.body.326:                                      ; preds = %for.body.325
  br label %do.end.327

do.end.327:                                       ; preds = %do.body.326
  br label %for.inc.328

for.inc.328:                                      ; preds = %do.end.327
  %160 = load i32, i32* %i, align 4
  %inc329 = add nsw i32 %160, 1
  store i32 %inc329, i32* %i, align 4
  br label %for.cond.322

for.end.330:                                      ; preds = %for.cond.322
  br label %do.body.331

do.body.331:                                      ; preds = %for.end.330
  br label %do.end.332

do.end.332:                                       ; preds = %do.body.331
  store i32 0, i32* %i, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.339, %do.end.332
  %161 = load i32, i32* %i, align 4
  %162 = load i32, i32* %w.addr, align 4
  %cmp334 = icmp slt i32 %161, %162
  br i1 %cmp334, label %for.body.336, label %for.end.341

for.body.336:                                     ; preds = %for.cond.333
  br label %do.body.337

do.body.337:                                      ; preds = %for.body.336
  br label %do.end.338

do.end.338:                                       ; preds = %do.body.337
  br label %for.inc.339

for.inc.339:                                      ; preds = %do.end.338
  %163 = load i32, i32* %i, align 4
  %inc340 = add nsw i32 %163, 1
  store i32 %inc340, i32* %i, align 4
  br label %for.cond.333

for.end.341:                                      ; preds = %for.cond.333
  br label %do.body.342

do.body.342:                                      ; preds = %for.end.341
  br label %do.end.343

do.end.343:                                       ; preds = %do.body.342
  %164 = load %struct.mline*, %struct.mline** @recode_mline.rl, align 8
  store %struct.mline* %164, %struct.mline** %retval
  br label %return

return:                                           ; preds = %do.end.343, %if.then.90, %if.then.10, %if.then
  %165 = load %struct.mline*, %struct.mline** %retval
  ret %struct.mline* %165
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @utf8_isdouble(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 4352
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp sle i32 %1, 4447
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %2, 9001
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %3, 9002
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %4 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp sge i32 %4, 11904
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.11

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %5 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp sle i32 %5, 42191
  br i1 %cmp8, label %land.lhs.true.9, label %lor.lhs.false.11

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %6 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp ne i32 %6, 12351
  br i1 %cmp10, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9, %land.lhs.true.7, %lor.lhs.false.5
  %7 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp sge i32 %7, 44032
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %8 = load i32, i32* %c.addr, align 4
  %cmp14 = icmp sle i32 %8, 55203
  br i1 %cmp14, label %lor.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %9 = load i32, i32* %c.addr, align 4
  %cmp16 = icmp sge i32 %9, 63744
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.19

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %10 = load i32, i32* %c.addr, align 4
  %cmp18 = icmp sle i32 %10, 64255
  br i1 %cmp18, label %lor.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %11 = load i32, i32* %c.addr, align 4
  %cmp20 = icmp sge i32 %11, 65072
  br i1 %cmp20, label %land.lhs.true.21, label %lor.lhs.false.23

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %12 = load i32, i32* %c.addr, align 4
  %cmp22 = icmp sle i32 %12, 65135
  br i1 %cmp22, label %lor.end, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21, %lor.lhs.false.19
  %13 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp sge i32 %13, 65280
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false.27

land.lhs.true.25:                                 ; preds = %lor.lhs.false.23
  %14 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp sle i32 %14, 65376
  br i1 %cmp26, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.25, %lor.lhs.false.23
  %15 = load i32, i32* %c.addr, align 4
  %cmp28 = icmp sge i32 %15, 65504
  br i1 %cmp28, label %land.lhs.true.29, label %lor.lhs.false.31

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %16 = load i32, i32* %c.addr, align 4
  %cmp30 = icmp sle i32 %16, 65510
  br i1 %cmp30, label %lor.end, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.29, %lor.lhs.false.27
  %17 = load i32, i32* %c.addr, align 4
  %cmp32 = icmp sge i32 %17, 131072
  br i1 %cmp32, label %land.lhs.true.33, label %lor.lhs.false.35

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %18 = load i32, i32* %c.addr, align 4
  %cmp34 = icmp sle i32 %18, 196605
  br i1 %cmp34, label %lor.end, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.33, %lor.lhs.false.31
  %19 = load i32, i32* %c.addr, align 4
  %cmp36 = icmp sge i32 %19, 196608
  br i1 %cmp36, label %land.lhs.true.37, label %lor.rhs

land.lhs.true.37:                                 ; preds = %lor.lhs.false.35
  %20 = load i32, i32* %c.addr, align 4
  %cmp38 = icmp sle i32 %20, 262141
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.37, %lor.lhs.false.35, %entry
  %21 = load i32, i32* @cjkwidth, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load i32, i32* %c.addr, align 4
  %call = call i32 @bisearch(i32 %22, %struct.interval* getelementptr inbounds ([156 x %struct.interval], [156 x %struct.interval]* @utf8_isdouble.ambiguous, i32 0, i32 0), i32 155)
  %tobool39 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %23 = phi i1 [ false, %lor.rhs ], [ %tobool39, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.37, %land.lhs.true.33, %land.lhs.true.29, %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %24 = phi i1 [ true, %land.lhs.true.37 ], [ true, %land.lhs.true.33 ], [ true, %land.lhs.true.29 ], [ true, %land.lhs.true.25 ], [ true, %land.lhs.true.21 ], [ true, %land.lhs.true.17 ], [ true, %land.lhs.true.13 ], [ true, %land.lhs.true.9 ], [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %23, %land.end ]
  %lor.ext = zext i1 %24 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define void @AddUtf8(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 55296
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 57344
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %tobool = icmp ne %struct.combchar** %2, null
  br i1 %tobool, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %3 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %3, 55296
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx = getelementptr inbounds %struct.combchar*, %struct.combchar** %4, i64 %idxprom
  %5 = load %struct.combchar*, %struct.combchar** %arrayidx, align 8
  %tobool4 = icmp ne %struct.combchar* %5, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %6 = load i32, i32* %c.addr, align 4
  %sub5 = sub nsw i32 %6, 55296
  %idxprom6 = sext i32 %sub5 to i64
  %7 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx7 = getelementptr inbounds %struct.combchar*, %struct.combchar** %7, i64 %idxprom6
  %8 = load %struct.combchar*, %struct.combchar** %arrayidx7, align 8
  %c1 = getelementptr inbounds %struct.combchar, %struct.combchar* %8, i32 0, i32 0
  %9 = load i32, i32* %c1, align 4
  call void @AddUtf8(i32 %9)
  %10 = load i32, i32* %c.addr, align 4
  %sub8 = sub nsw i32 %10, 55296
  %idxprom9 = sext i32 %sub8 to i64
  %11 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx10 = getelementptr inbounds %struct.combchar*, %struct.combchar** %11, i64 %idxprom9
  %12 = load %struct.combchar*, %struct.combchar** %arrayidx10, align 8
  %c2 = getelementptr inbounds %struct.combchar, %struct.combchar* %12, i32 0, i32 1
  %13 = load i32, i32* %c2, align 4
  store i32 %13, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true, %do.end
  %14 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp sge i32 %14, 65536
  br i1 %cmp11, label %if.then.12, label %if.end.39

if.then.12:                                       ; preds = %if.end
  %15 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp sge i32 %15, 2097152
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.then.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 72
  %17 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp16 = icmp sle i32 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body.15
  call void @Resize_obuf()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %do.body.15
  %18 = load i32, i32* %c.addr, align 4
  %and = and i32 %18, 50331648
  %shr = ashr i32 %and, 12
  %xor = xor i32 %shr, 248
  %conv = trunc i32 %xor to i8
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 71
  %20 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 %conv, i8* %20, align 1
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %21 = load i32, i32* %c.addr, align 4
  %and20 = and i32 %21, 16777215
  %xor21 = xor i32 %and20, 29360128
  store i32 %xor21, i32* %c.addr, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.19, %if.then.12
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree24 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 72
  %23 = load i32, i32* %d_obuffree24, align 4
  %dec25 = add nsw i32 %23, -1
  store i32 %dec25, i32* %d_obuffree24, align 4
  %cmp26 = icmp sle i32 %dec25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.23
  call void @Resize_obuf()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.body.23
  %24 = load i32, i32* %c.addr, align 4
  %and30 = and i32 %24, 33292288
  %shr31 = ashr i32 %and30, 18
  %xor32 = xor i32 %shr31, 240
  %conv33 = trunc i32 %xor32 to i8
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp34 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 71
  %26 = load i8*, i8** %d_obufp34, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr35, i8** %d_obufp34, align 8
  store i8 %conv33, i8* %26, align 1
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.29
  %27 = load i32, i32* %c.addr, align 4
  %and37 = and i32 %27, 262143
  %xor38 = xor i32 %and37, 393216
  store i32 %xor38, i32* %c.addr, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.36, %if.end
  %28 = load i32, i32* %c.addr, align 4
  %cmp40 = icmp sge i32 %28, 2048
  br i1 %cmp40, label %if.then.42, label %if.end.59

if.then.42:                                       ; preds = %if.end.39
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree44 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 72
  %30 = load i32, i32* %d_obuffree44, align 4
  %dec45 = add nsw i32 %30, -1
  store i32 %dec45, i32* %d_obuffree44, align 4
  %cmp46 = icmp sle i32 %dec45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.43
  call void @Resize_obuf()
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body.43
  %31 = load i32, i32* %c.addr, align 4
  %and50 = and i32 %31, 520192
  %shr51 = ashr i32 %and50, 12
  %xor52 = xor i32 %shr51, 224
  %conv53 = trunc i32 %xor52 to i8
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp54 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 71
  %33 = load i8*, i8** %d_obufp54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr55, i8** %d_obufp54, align 8
  store i8 %conv53, i8* %33, align 1
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.49
  %34 = load i32, i32* %c.addr, align 4
  %and57 = and i32 %34, 4095
  %xor58 = xor i32 %and57, 4096
  store i32 %xor58, i32* %c.addr, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.56, %if.end.39
  %35 = load i32, i32* %c.addr, align 4
  %cmp60 = icmp sge i32 %35, 128
  br i1 %cmp60, label %if.then.62, label %if.end.78

if.then.62:                                       ; preds = %if.end.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree64 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 72
  %37 = load i32, i32* %d_obuffree64, align 4
  %dec65 = add nsw i32 %37, -1
  store i32 %dec65, i32* %d_obuffree64, align 4
  %cmp66 = icmp sle i32 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %do.body.63
  call void @Resize_obuf()
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %do.body.63
  %38 = load i32, i32* %c.addr, align 4
  %and70 = and i32 %38, 8128
  %shr71 = ashr i32 %and70, 6
  %xor72 = xor i32 %shr71, 192
  %conv73 = trunc i32 %xor72 to i8
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp74 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 71
  %40 = load i8*, i8** %d_obufp74, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr75, i8** %d_obufp74, align 8
  store i8 %conv73, i8* %40, align 1
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.69
  %41 = load i32, i32* %c.addr, align 4
  %and77 = and i32 %41, 63
  %or = or i32 %and77, 128
  store i32 %or, i32* %c.addr, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.76, %if.end.59
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree80 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 72
  %43 = load i32, i32* %d_obuffree80, align 4
  %dec81 = add nsw i32 %43, -1
  store i32 %dec81, i32* %d_obuffree80, align 4
  %cmp82 = icmp sle i32 %dec81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.body.79
  call void @Resize_obuf()
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %do.body.79
  %44 = load i32, i32* %c.addr, align 4
  %conv86 = trunc i32 %44 to i8
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp87 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 71
  %46 = load i8*, i8** %d_obufp87, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr88, i8** %d_obufp87, align 8
  store i8 %conv86, i8* %46, align 1
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.85
  ret void
}

declare void @Resize_obuf() #3

; Function Attrs: nounwind uwtable
define i32 @ToUtf8_comb(i8* %p, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 55296
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 57344
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %tobool = icmp ne %struct.combchar** %2, null
  br i1 %tobool, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %3 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %3, 55296
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx = getelementptr inbounds %struct.combchar*, %struct.combchar** %4, i64 %idxprom
  %5 = load %struct.combchar*, %struct.combchar** %arrayidx, align 8
  %tobool4 = icmp ne %struct.combchar* %5, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i32, i32* %c.addr, align 4
  %sub5 = sub nsw i32 %7, 55296
  %idxprom6 = sext i32 %sub5 to i64
  %8 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx7 = getelementptr inbounds %struct.combchar*, %struct.combchar** %8, i64 %idxprom6
  %9 = load %struct.combchar*, %struct.combchar** %arrayidx7, align 8
  %c1 = getelementptr inbounds %struct.combchar, %struct.combchar* %9, i32 0, i32 0
  %10 = load i32, i32* %c1, align 4
  %call = call i32 @ToUtf8_comb(i8* %6, i32 %10)
  store i32 %call, i32* %l, align 4
  %11 = load i32, i32* %l, align 4
  %12 = load i8*, i8** %p.addr, align 8
  %tobool8 = icmp ne i8* %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load i8*, i8** %p.addr, align 8
  %14 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %15 = load i32, i32* %c.addr, align 4
  %sub9 = sub nsw i32 %15, 55296
  %idxprom10 = sext i32 %sub9 to i64
  %16 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx11 = getelementptr inbounds %struct.combchar*, %struct.combchar** %16, i64 %idxprom10
  %17 = load %struct.combchar*, %struct.combchar** %arrayidx11, align 8
  %c2 = getelementptr inbounds %struct.combchar, %struct.combchar* %17, i32 0, i32 1
  %18 = load i32, i32* %c2, align 4
  %call12 = call i32 @ToUtf8(i8* %cond, i32 %18)
  %add = add nsw i32 %11, %call12
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true, %entry
  %19 = load i8*, i8** %p.addr, align 8
  %20 = load i32, i32* %c.addr, align 4
  %call13 = call i32 @ToUtf8(i8* %19, i32 %20)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @ToUtf8(i8* %p, i32 %c) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 1, i32* %l, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp sge i32 %1, 2097152
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.2
  %3 = load i32, i32* %c.addr, align 4
  %and = and i32 %3, 50331648
  %shr = ashr i32 %and, 12
  %xor = xor i32 %shr, 248
  %conv = trunc i32 %xor to i8
  %4 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 %conv, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.2
  %5 = load i32, i32* %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %l, align 4
  %6 = load i32, i32* %c.addr, align 4
  %and4 = and i32 %6, 16777215
  %xor5 = xor i32 %and4, 29360128
  store i32 %xor5, i32* %c.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %7 = load i8*, i8** %p.addr, align 8
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.6
  %8 = load i32, i32* %c.addr, align 4
  %and9 = and i32 %8, 33292288
  %shr10 = ashr i32 %and9, 18
  %xor11 = xor i32 %shr10, 240
  %conv12 = trunc i32 %xor11 to i8
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr13, i8** %p.addr, align 8
  store i8 %conv12, i8* %9, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end.6
  %10 = load i32, i32* %l, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %l, align 4
  %11 = load i32, i32* %c.addr, align 4
  %and16 = and i32 %11, 262143
  %xor17 = xor i32 %and16, 393216
  store i32 %xor17, i32* %c.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.14, %entry
  %12 = load i32, i32* %c.addr, align 4
  %cmp19 = icmp sge i32 %12, 2048
  br i1 %cmp19, label %if.then.21, label %if.end.32

if.then.21:                                       ; preds = %if.end.18
  %13 = load i8*, i8** %p.addr, align 8
  %tobool22 = icmp ne i8* %13, null
  br i1 %tobool22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.then.21
  %14 = load i32, i32* %c.addr, align 4
  %and24 = and i32 %14, 520192
  %shr25 = ashr i32 %and24, 12
  %xor26 = xor i32 %shr25, 224
  %conv27 = trunc i32 %xor26 to i8
  %15 = load i8*, i8** %p.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr28, i8** %p.addr, align 8
  store i8 %conv27, i8* %15, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.then.21
  %16 = load i32, i32* %l, align 4
  %inc30 = add nsw i32 %16, 1
  store i32 %inc30, i32* %l, align 4
  %17 = load i32, i32* %c.addr, align 4
  %and31 = and i32 %17, 4095
  %or = or i32 %and31, 4096
  store i32 %or, i32* %c.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.end.18
  %18 = load i32, i32* %c.addr, align 4
  %cmp33 = icmp sge i32 %18, 128
  br i1 %cmp33, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %if.end.32
  %19 = load i8*, i8** %p.addr, align 8
  %tobool36 = icmp ne i8* %19, null
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.then.35
  %20 = load i32, i32* %c.addr, align 4
  %and38 = and i32 %20, 8128
  %shr39 = ashr i32 %and38, 6
  %xor40 = xor i32 %shr39, 192
  %conv41 = trunc i32 %xor40 to i8
  %21 = load i8*, i8** %p.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr42, i8** %p.addr, align 8
  store i8 %conv41, i8* %21, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.then.35
  %22 = load i32, i32* %l, align 4
  %inc44 = add nsw i32 %22, 1
  store i32 %inc44, i32* %l, align 4
  %23 = load i32, i32* %c.addr, align 4
  %and45 = and i32 %23, 63
  %or46 = or i32 %and45, 128
  store i32 %or46, i32* %c.addr, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.43, %if.end.32
  %24 = load i8*, i8** %p.addr, align 8
  %tobool48 = icmp ne i8* %24, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.47
  %25 = load i32, i32* %c.addr, align 4
  %conv50 = trunc i32 %25 to i8
  %26 = load i8*, i8** %p.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr51, i8** %p.addr, align 8
  store i8 %conv50, i8* %26, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.47
  %27 = load i32, i32* %l, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @FromUtf8(i32 %c, i32* %utf8charp) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %utf8charp.addr = alloca i32*, align 8
  %utf8char = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %utf8charp, i32** %utf8charp.addr, align 8
  %0 = load i32*, i32** %utf8charp.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %utf8char, align 4
  %2 = load i32, i32* %utf8char, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %and = and i32 %3, 192
  %cmp = icmp ne i32 %and, 128
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load i32*, i32** %utf8charp.addr, align 8
  store i32 0, i32* %4, align 4
  store i32 -2, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* %c.addr, align 4
  %and2 = and i32 %5, 63
  %6 = load i32, i32* %utf8char, align 4
  %shl = shl i32 %6, 6
  %or = or i32 %and2, %shl
  store i32 %or, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i32, i32* %utf8char, align 4
  %and3 = and i32 %7, 1073741824
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.end.25, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  %and6 = and i32 %8, -2113395744
  %cmp7 = icmp eq i32 %and6, -2147483648
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.5
  store i32 -33554433, i32* %c.addr, align 4
  br label %if.end.24

if.else.9:                                        ; preds = %if.then.5
  %9 = load i32, i32* %c.addr, align 4
  %and10 = and i32 %9, 34087408
  %cmp11 = icmp eq i32 %and10, 33554432
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  store i32 -524289, i32* %c.addr, align 4
  br label %if.end.23

if.else.13:                                       ; preds = %if.else.9
  %10 = load i32, i32* %c.addr, align 4
  %and14 = and i32 %10, 532728
  %cmp15 = icmp eq i32 %and14, 524288
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.13
  store i32 -12288, i32* %c.addr, align 4
  br label %if.end.22

if.else.17:                                       ; preds = %if.else.13
  %11 = load i32, i32* %c.addr, align 4
  %and18 = and i32 %11, 8316
  %cmp19 = icmp eq i32 %and18, 8192
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.17
  store i32 -144, i32* %c.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %if.end.68

if.else.26:                                       ; preds = %entry
  %12 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp sge i32 %12, 254
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else.26
  store i32 65533, i32* %c.addr, align 4
  br label %if.end.67

if.else.29:                                       ; preds = %if.else.26
  %13 = load i32, i32* %c.addr, align 4
  %cmp30 = icmp sge i32 %13, 252
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.29
  %14 = load i32, i32* %c.addr, align 4
  %and32 = and i32 %14, 1
  %or33 = or i32 %and32, -1073741828
  store i32 %or33, i32* %c.addr, align 4
  br label %if.end.66

if.else.34:                                       ; preds = %if.else.29
  %15 = load i32, i32* %c.addr, align 4
  %cmp35 = icmp sge i32 %15, 248
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.else.34
  %16 = load i32, i32* %c.addr, align 4
  %and37 = and i32 %16, 3
  %or38 = or i32 %and37, -1073742080
  store i32 %or38, i32* %c.addr, align 4
  br label %if.end.65

if.else.39:                                       ; preds = %if.else.34
  %17 = load i32, i32* %c.addr, align 4
  %cmp40 = icmp sge i32 %17, 240
  br i1 %cmp40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.39
  %18 = load i32, i32* %c.addr, align 4
  %and42 = and i32 %18, 7
  %or43 = or i32 %and42, -1073758208
  store i32 %or43, i32* %c.addr, align 4
  br label %if.end.64

if.else.44:                                       ; preds = %if.else.39
  %19 = load i32, i32* %c.addr, align 4
  %cmp45 = icmp sge i32 %19, 224
  br i1 %cmp45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.else.44
  %20 = load i32, i32* %c.addr, align 4
  %and47 = and i32 %20, 15
  %or48 = or i32 %and47, -1074790400
  store i32 %or48, i32* %c.addr, align 4
  br label %if.end.63

if.else.49:                                       ; preds = %if.else.44
  %21 = load i32, i32* %c.addr, align 4
  %cmp50 = icmp sge i32 %21, 194
  br i1 %cmp50, label %if.then.51, label %if.else.54

if.then.51:                                       ; preds = %if.else.49
  %22 = load i32, i32* %c.addr, align 4
  %and52 = and i32 %22, 31
  %or53 = or i32 %and52, -67108864
  store i32 %or53, i32* %c.addr, align 4
  br label %if.end.62

if.else.54:                                       ; preds = %if.else.49
  %23 = load i32, i32* %c.addr, align 4
  %cmp55 = icmp sge i32 %23, 192
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.54
  store i32 -33554433, i32* %c.addr, align 4
  br label %if.end.61

if.else.57:                                       ; preds = %if.else.54
  %24 = load i32, i32* %c.addr, align 4
  %cmp58 = icmp sge i32 %24, 128
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.57
  store i32 65533, i32* %c.addr, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.else.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.51
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.46
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.41
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.36
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.31
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.28
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.25
  %25 = load i32, i32* %c.addr, align 4
  %and69 = and i32 %25, -2147483648
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.68
  %26 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %utf8char, align 4
  %27 = load i32*, i32** %utf8charp.addr, align 8
  store i32 %cond, i32* %27, align 4
  %28 = load i32, i32* %utf8char, align 4
  %tobool71 = icmp ne i32 %28, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %cond.end
  %29 = load i32, i32* %c.addr, align 4
  %and74 = and i32 %29, -8388608
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  store i32 65533, i32* %c.addr, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  %30 = load i32, i32* %c.addr, align 4
  %cmp78 = icmp sge i32 %30, 55296
  br i1 %cmp78, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.end.77
  %31 = load i32, i32* %c.addr, align 4
  %cmp79 = icmp sle i32 %31, 57343
  br i1 %cmp79, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load i32, i32* %c.addr, align 4
  %cmp80 = icmp eq i32 %32, 65534
  br i1 %cmp80, label %if.then.83, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false
  %33 = load i32, i32* %c.addr, align 4
  %cmp82 = icmp eq i32 %33, 65535
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.81, %lor.lhs.false, %land.lhs.true
  store i32 65533, i32* %c.addr, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.lhs.false.81, %if.end.77
  %34 = load i32, i32* %c.addr, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.72, %if.then.1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define void @WinSwitchEncoding(%struct.win* %p, i32 %encoding) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %encoding.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  %d = alloca %struct.display*, align 8
  %cv = alloca %struct.canvas*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %c2 = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %1 = load i32, i32* %l_encoding, align 4
  %cmp = icmp eq i32 %1, 8
  %conv = zext i1 %cmp to i32
  %2 = load i32, i32* %encoding.addr, align 4
  %cmp1 = icmp eq i32 %2, 8
  %conv2 = zext i1 %cmp1 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %encoding.addr, align 4
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_encoding6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 5
  store i32 %3, i32* %l_encoding6, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %5, %struct.layer** %oldflayer, align 8
  %6 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %6, %struct.display** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %7 = load %struct.display*, %struct.display** %d, align 8
  %tobool = icmp ne %struct.display* %7, null
  br i1 %tobool, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %8 = load %struct.display*, %struct.display** %d, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 3
  %9 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool8 = icmp ne %struct.canvas* %10, null
  br i1 %tobool8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  %13 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 9
  %14 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 7
  %15 = load i8*, i8** %l_data, align 8
  %16 = bitcast i8* %15 to %struct.win*
  %cmp10 = icmp eq %struct.win* %11, %16
  br i1 %cmp10, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %for.body.9
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer13 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 9
  %18 = load %struct.layer*, %struct.layer** %c_layer13, align 8
  store %struct.layer* %18, %struct.layer** @flayer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.then.12
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 8
  %20 = load %struct.layer*, %struct.layer** %l_next, align 8
  %tobool14 = icmp ne %struct.layer* %20, null
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %22 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp15 = icmp eq %struct.layer* %21, %22
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %while.body
  %23 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next18 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 8
  %24 = load %struct.layer*, %struct.layer** %l_next18, align 8
  store %struct.layer* %24, %struct.layer** %oldflayer, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %while.body
  call void @ExitOverlayPage()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.20

if.end.20:                                        ; preds = %while.end, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 0
  %26 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %26, %struct.canvas** %cv, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %27 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 0
  %28 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %28, %struct.display** %d, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %29 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %29, %struct.layer** @flayer, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.243, %for.end.22
  %30 = load i32, i32* %j, align 4
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer24, i32 0, i32 2
  %32 = load i32, i32* %l_height, align 4
  %33 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 77
  %34 = load i32, i32* %w_histheight, align 4
  %add = add nsw i32 %32, %34
  %cmp25 = icmp slt i32 %30, %add
  br i1 %cmp25, label %for.body.27, label %for.end.245

for.body.27:                                      ; preds = %for.cond.23
  %35 = load i32, i32* %j, align 4
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer28 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 3
  %l_height29 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer28, i32 0, i32 2
  %37 = load i32, i32* %l_height29, align 4
  %cmp30 = icmp slt i32 %35, %37
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.27
  %38 = load i32, i32* %j, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 36
  %40 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %40, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %for.body.27
  %41 = load i32, i32* %j, align 4
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer32 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 3
  %l_height33 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer32, i32 0, i32 2
  %43 = load i32, i32* %l_height33, align 4
  %sub = sub nsw i32 %41, %43
  %idxprom34 = sext i32 %sub to i64
  %44 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 79
  %45 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx35 = getelementptr inbounds %struct.mline, %struct.mline* %45, i64 %idxprom34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx35, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %46 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %46, i32 0, i32 2
  %47 = load i8*, i8** %font, align 8
  %48 = load i8*, i8** @null, align 8
  %cmp36 = icmp eq i8* %47, %48
  br i1 %cmp36, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %cond.end
  %49 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %49, i32 0, i32 3
  %50 = load i8*, i8** %fontx, align 8
  %cmp38 = icmp eq i8* %50, null
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.48

land.lhs.true.40:                                 ; preds = %land.lhs.true
  %51 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer41 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 3
  %l_encoding42 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer41, i32 0, i32 5
  %52 = load i32, i32* %l_encoding42, align 4
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom43
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx44, i32 0, i32 2
  %53 = load i32, i32* %deffont, align 4
  %cmp45 = icmp eq i32 %53, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.40
  br label %for.inc.243

if.end.48:                                        ; preds = %land.lhs.true.40, %land.lhs.true, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.240, %if.end.48
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer50 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer50, i32 0, i32 1
  %56 = load i32, i32* %l_width, align 4
  %cmp51 = icmp slt i32 %54, %56
  br i1 %cmp51, label %for.body.53, label %for.end.242

for.body.53:                                      ; preds = %for.cond.49
  %57 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %57 to i64
  %58 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %58, i32 0, i32 0
  %59 = load i8*, i8** %image, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %59, i64 %idxprom54
  %60 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %60 to i32
  %61 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %61 to i64
  %62 = load %struct.mline*, %struct.mline** %ml, align 8
  %font58 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 2
  %63 = load i8*, i8** %font58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %63, i64 %idxprom57
  %64 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %64 to i32
  %shl = shl i32 %conv60, 8
  %or = or i32 %conv56, %shl
  store i32 %or, i32* %c, align 4
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer61 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 3
  %l_encoding62 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer61, i32 0, i32 5
  %66 = load i32, i32* %l_encoding62, align 4
  %cmp63 = icmp eq i32 %66, 8
  br i1 %cmp63, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %for.body.53
  %67 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %67 to i64
  %68 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx67 = getelementptr inbounds %struct.mline, %struct.mline* %68, i32 0, i32 3
  %69 = load i8*, i8** %fontx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 %idxprom66
  %70 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %70 to i32
  %shl70 = shl i32 %conv69, 16
  %71 = load i32, i32* %c, align 4
  %or71 = or i32 %71, %shl70
  store i32 %or71, i32* %c, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %for.body.53
  %72 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer73 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  %l_encoding74 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer73, i32 0, i32 5
  %73 = load i32, i32* %l_encoding74, align 4
  %cmp75 = icmp ne i32 %73, 8
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.88

land.lhs.true.77:                                 ; preds = %if.end.72
  %74 = load i32, i32* %c, align 4
  %cmp78 = icmp slt i32 %74, 256
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %land.lhs.true.77
  %75 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer81 = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 3
  %l_encoding82 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer81, i32 0, i32 5
  %76 = load i32, i32* %l_encoding82, align 4
  %idxprom83 = sext i32 %76 to i64
  %arrayidx84 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom83
  %deffont85 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx84, i32 0, i32 2
  %77 = load i32, i32* %deffont85, align 4
  %shl86 = shl i32 %77, 8
  %78 = load i32, i32* %c, align 4
  %or87 = or i32 %78, %shl86
  store i32 %or87, i32* %c, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.end.72
  %79 = load i32, i32* %c, align 4
  %cmp89 = icmp slt i32 %79, 256
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  br label %for.inc.240

if.end.92:                                        ; preds = %if.end.88
  %80 = load %struct.mline*, %struct.mline** %ml, align 8
  %font93 = getelementptr inbounds %struct.mline, %struct.mline* %80, i32 0, i32 2
  %81 = load i8*, i8** %font93, align 8
  %82 = load i8*, i8** @null, align 8
  %cmp94 = icmp eq i8* %81, %82
  br i1 %cmp94, label %if.then.96, label %if.end.107

if.then.96:                                       ; preds = %if.end.92
  %83 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer97 = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 3
  %l_width98 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer97, i32 0, i32 1
  %84 = load i32, i32* %l_width98, align 4
  %add99 = add nsw i32 %84, 1
  %conv100 = sext i32 %add99 to i64
  %call = call noalias i8* @calloc(i64 %conv100, i64 1) #1
  %85 = load %struct.mline*, %struct.mline** %ml, align 8
  %font101 = getelementptr inbounds %struct.mline, %struct.mline* %85, i32 0, i32 2
  store i8* %call, i8** %font101, align 8
  %cmp102 = icmp eq i8* %call, null
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.96
  %86 = load i8*, i8** @null, align 8
  %87 = load %struct.mline*, %struct.mline** %ml, align 8
  %font105 = getelementptr inbounds %struct.mline, %struct.mline* %87, i32 0, i32 2
  store i8* %86, i8** %font105, align 8
  br label %for.end.242

if.end.106:                                       ; preds = %if.then.96
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.92
  %88 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer108 = getelementptr inbounds %struct.win, %struct.win* %88, i32 0, i32 3
  %l_encoding109 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer108, i32 0, i32 5
  %89 = load i32, i32* %l_encoding109, align 4
  %cmp110 = icmp ne i32 %89, 8
  br i1 %cmp110, label %land.lhs.true.112, label %lor.lhs.false

land.lhs.true.112:                                ; preds = %if.end.107
  %90 = load i32, i32* %c, align 4
  %and = and i32 %90, 7936
  %cmp113 = icmp ne i32 %and, 0
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false

land.lhs.true.115:                                ; preds = %land.lhs.true.112
  %91 = load i32, i32* %c, align 4
  %and116 = and i32 %91, 57344
  %cmp117 = icmp eq i32 %and116, 0
  br i1 %cmp117, label %if.then.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.115, %land.lhs.true.112, %if.end.107
  %92 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer119 = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 3
  %l_encoding120 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer119, i32 0, i32 5
  %93 = load i32, i32* %l_encoding120, align 4
  %cmp121 = icmp eq i32 %93, 8
  br i1 %cmp121, label %land.lhs.true.123, label %if.else.195

land.lhs.true.123:                                ; preds = %lor.lhs.false
  %94 = load i32, i32* %c, align 4
  %call124 = call i32 @utf8_isdouble(i32 %94)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.195

if.then.126:                                      ; preds = %land.lhs.true.123, %land.lhs.true.115
  %95 = load i32, i32* %i, align 4
  %add127 = add nsw i32 %95, 1
  %96 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer128 = getelementptr inbounds %struct.win, %struct.win* %96, i32 0, i32 3
  %l_width129 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer128, i32 0, i32 1
  %97 = load i32, i32* %l_width129, align 4
  %cmp130 = icmp eq i32 %add127, %97
  br i1 %cmp130, label %if.then.132, label %if.else

if.then.132:                                      ; preds = %if.then.126
  store i32 63, i32* %c, align 4
  br label %if.end.194

if.else:                                          ; preds = %if.then.126
  %98 = load i32, i32* %i, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %99 to i64
  %100 = load %struct.mline*, %struct.mline** %ml, align 8
  %image134 = getelementptr inbounds %struct.mline, %struct.mline* %100, i32 0, i32 0
  %101 = load i8*, i8** %image134, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %101, i64 %idxprom133
  %102 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %102 to i32
  %103 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %103 to i64
  %104 = load %struct.mline*, %struct.mline** %ml, align 8
  %font138 = getelementptr inbounds %struct.mline, %struct.mline* %104, i32 0, i32 2
  %105 = load i8*, i8** %font138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %105, i64 %idxprom137
  %106 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %106 to i32
  %shl141 = shl i32 %conv140, 8
  %or142 = or i32 %conv136, %shl141
  %107 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %107 to i64
  %108 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx144 = getelementptr inbounds %struct.mline, %struct.mline* %108, i32 0, i32 3
  %109 = load i8*, i8** %fontx144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %109, i64 %idxprom143
  %110 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %110 to i32
  %shl147 = shl i32 %conv146, 16
  %or148 = or i32 %or142, %shl147
  store i32 %or148, i32* %c2, align 4
  %111 = load i32, i32* %c, align 4
  %112 = load i32, i32* %encoding.addr, align 4
  %call149 = call i32 @recode_char_dw_to_encoding(i32 %111, i32* %c2, i32 %112)
  store i32 %call149, i32* %c, align 4
  %113 = load i32, i32* %encoding.addr, align 4
  %cmp150 = icmp eq i32 %113, 8
  br i1 %cmp150, label %if.then.152, label %if.else.178

if.then.152:                                      ; preds = %if.else
  %114 = load i32, i32* %c, align 4
  %cmp153 = icmp sgt i32 %114, 65536
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.171

land.lhs.true.155:                                ; preds = %if.then.152
  %115 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx156 = getelementptr inbounds %struct.mline, %struct.mline* %115, i32 0, i32 3
  %116 = load i8*, i8** %fontx156, align 8
  %117 = load i8*, i8** @null, align 8
  %cmp157 = icmp eq i8* %116, %117
  br i1 %cmp157, label %if.then.159, label %if.end.171

if.then.159:                                      ; preds = %land.lhs.true.155
  %118 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer160 = getelementptr inbounds %struct.win, %struct.win* %118, i32 0, i32 3
  %l_width161 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer160, i32 0, i32 1
  %119 = load i32, i32* %l_width161, align 4
  %add162 = add nsw i32 %119, 1
  %conv163 = sext i32 %add162 to i64
  %call164 = call noalias i8* @calloc(i64 %conv163, i64 1) #1
  %120 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx165 = getelementptr inbounds %struct.mline, %struct.mline* %120, i32 0, i32 3
  store i8* %call164, i8** %fontx165, align 8
  %cmp166 = icmp eq i8* %call164, null
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.then.159
  %121 = load i8*, i8** @null, align 8
  %122 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx169 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 3
  store i8* %121, i8** %fontx169, align 8
  br label %for.end.242

if.end.170:                                       ; preds = %if.then.159
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %land.lhs.true.155, %if.then.152
  %123 = load i32, i32* %c, align 4
  %shr = ashr i32 %123, 16
  %and172 = and i32 %shr, 255
  %conv173 = trunc i32 %and172 to i8
  %124 = load i32, i32* %i, align 4
  %sub174 = sub nsw i32 %124, 1
  %idxprom175 = sext i32 %sub174 to i64
  %125 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx176 = getelementptr inbounds %struct.mline, %struct.mline* %125, i32 0, i32 3
  %126 = load i8*, i8** %fontx176, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %126, i64 %idxprom175
  store i8 %conv173, i8* %arrayidx177, align 1
  br label %if.end.180

if.else.178:                                      ; preds = %if.else
  %127 = load i8*, i8** @null, align 8
  %128 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx179 = getelementptr inbounds %struct.mline, %struct.mline* %128, i32 0, i32 3
  store i8* %127, i8** %fontx179, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.178, %if.end.171
  %129 = load i32, i32* %c, align 4
  %shr181 = ashr i32 %129, 8
  %and182 = and i32 %shr181, 255
  %conv183 = trunc i32 %and182 to i8
  %130 = load i32, i32* %i, align 4
  %sub184 = sub nsw i32 %130, 1
  %idxprom185 = sext i32 %sub184 to i64
  %131 = load %struct.mline*, %struct.mline** %ml, align 8
  %font186 = getelementptr inbounds %struct.mline, %struct.mline* %131, i32 0, i32 2
  %132 = load i8*, i8** %font186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %132, i64 %idxprom185
  store i8 %conv183, i8* %arrayidx187, align 1
  %133 = load i32, i32* %c, align 4
  %and188 = and i32 %133, 255
  %conv189 = trunc i32 %and188 to i8
  %134 = load i32, i32* %i, align 4
  %sub190 = sub nsw i32 %134, 1
  %idxprom191 = sext i32 %sub190 to i64
  %135 = load %struct.mline*, %struct.mline** %ml, align 8
  %image192 = getelementptr inbounds %struct.mline, %struct.mline* %135, i32 0, i32 0
  %136 = load i8*, i8** %image192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %136, i64 %idxprom191
  store i8 %conv189, i8* %arrayidx193, align 1
  %137 = load i32, i32* %c2, align 4
  store i32 %137, i32* %c, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.180, %if.then.132
  br label %if.end.197

if.else.195:                                      ; preds = %land.lhs.true.123, %lor.lhs.false
  %138 = load i32, i32* %c, align 4
  %139 = load i32, i32* %encoding.addr, align 4
  %call196 = call i32 @recode_char_to_encoding(i32 %138, i32 %139)
  store i32 %call196, i32* %c, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.195, %if.end.194
  %140 = load i32, i32* %c, align 4
  %and198 = and i32 %140, 255
  %conv199 = trunc i32 %and198 to i8
  %141 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %141 to i64
  %142 = load %struct.mline*, %struct.mline** %ml, align 8
  %image201 = getelementptr inbounds %struct.mline, %struct.mline* %142, i32 0, i32 0
  %143 = load i8*, i8** %image201, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %143, i64 %idxprom200
  store i8 %conv199, i8* %arrayidx202, align 1
  %144 = load i32, i32* %c, align 4
  %shr203 = ashr i32 %144, 8
  %and204 = and i32 %shr203, 255
  %conv205 = trunc i32 %and204 to i8
  %145 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %145 to i64
  %146 = load %struct.mline*, %struct.mline** %ml, align 8
  %font207 = getelementptr inbounds %struct.mline, %struct.mline* %146, i32 0, i32 2
  %147 = load i8*, i8** %font207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %147, i64 %idxprom206
  store i8 %conv205, i8* %arrayidx208, align 1
  %148 = load i32, i32* %encoding.addr, align 4
  %cmp209 = icmp eq i32 %148, 8
  br i1 %cmp209, label %if.then.211, label %if.else.237

if.then.211:                                      ; preds = %if.end.197
  %149 = load i32, i32* %c, align 4
  %cmp212 = icmp sgt i32 %149, 65536
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.230

land.lhs.true.214:                                ; preds = %if.then.211
  %150 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx215 = getelementptr inbounds %struct.mline, %struct.mline* %150, i32 0, i32 3
  %151 = load i8*, i8** %fontx215, align 8
  %152 = load i8*, i8** @null, align 8
  %cmp216 = icmp eq i8* %151, %152
  br i1 %cmp216, label %if.then.218, label %if.end.230

if.then.218:                                      ; preds = %land.lhs.true.214
  %153 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer219 = getelementptr inbounds %struct.win, %struct.win* %153, i32 0, i32 3
  %l_width220 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer219, i32 0, i32 1
  %154 = load i32, i32* %l_width220, align 4
  %add221 = add nsw i32 %154, 1
  %conv222 = sext i32 %add221 to i64
  %call223 = call noalias i8* @calloc(i64 %conv222, i64 1) #1
  %155 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx224 = getelementptr inbounds %struct.mline, %struct.mline* %155, i32 0, i32 3
  store i8* %call223, i8** %fontx224, align 8
  %cmp225 = icmp eq i8* %call223, null
  br i1 %cmp225, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %if.then.218
  %156 = load i8*, i8** @null, align 8
  %157 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx228 = getelementptr inbounds %struct.mline, %struct.mline* %157, i32 0, i32 3
  store i8* %156, i8** %fontx228, align 8
  br label %for.end.242

if.end.229:                                       ; preds = %if.then.218
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %land.lhs.true.214, %if.then.211
  %158 = load i32, i32* %c, align 4
  %shr231 = ashr i32 %158, 16
  %and232 = and i32 %shr231, 255
  %conv233 = trunc i32 %and232 to i8
  %159 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %159 to i64
  %160 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx235 = getelementptr inbounds %struct.mline, %struct.mline* %160, i32 0, i32 3
  %161 = load i8*, i8** %fontx235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %161, i64 %idxprom234
  store i8 %conv233, i8* %arrayidx236, align 1
  br label %if.end.239

if.else.237:                                      ; preds = %if.end.197
  %162 = load i8*, i8** @null, align 8
  %163 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx238 = getelementptr inbounds %struct.mline, %struct.mline* %163, i32 0, i32 3
  store i8* %162, i8** %fontx238, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.237, %if.end.230
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.239, %if.then.91
  %164 = load i32, i32* %i, align 4
  %inc241 = add nsw i32 %164, 1
  store i32 %inc241, i32* %i, align 4
  br label %for.cond.49

for.end.242:                                      ; preds = %if.then.227, %if.then.168, %if.then.104, %for.cond.49
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.242, %if.then.47
  %165 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %165, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.23

for.end.245:                                      ; preds = %for.cond.23
  %166 = load i32, i32* %encoding.addr, align 4
  %167 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer246 = getelementptr inbounds %struct.win, %struct.win* %167, i32 0, i32 3
  %l_encoding247 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer246, i32 0, i32 5
  store i32 %166, i32* %l_encoding247, align 4
  br label %return

return:                                           ; preds = %for.end.245, %if.then
  ret void
}

declare void @ExitOverlayPage() #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @bisearch(i32 %ucs, %struct.interval* %table, i32 %max) #0 {
entry:
  %retval = alloca i32, align 4
  %ucs.addr = alloca i32, align 4
  %table.addr = alloca %struct.interval*, align 8
  %max.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %ucs, i32* %ucs.addr, align 4
  store %struct.interval* %table, %struct.interval** %table.addr, align 8
  store i32 %max, i32* %max.addr, align 4
  store i32 0, i32* %min, align 4
  %0 = load i32, i32* %ucs.addr, align 4
  %1 = load %struct.interval*, %struct.interval** %table.addr, align 8
  %arrayidx = getelementptr inbounds %struct.interval, %struct.interval* %1, i64 0
  %first = getelementptr inbounds %struct.interval, %struct.interval* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %first, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %ucs.addr, align 4
  %4 = load i32, i32* %max.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.interval*, %struct.interval** %table.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.interval, %struct.interval* %5, i64 %idxprom
  %last = getelementptr inbounds %struct.interval, %struct.interval* %arrayidx1, i32 0, i32 1
  %6 = load i32, i32* %last, align 4
  %cmp2 = icmp sgt i32 %3, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end
  %7 = load i32, i32* %max.addr, align 4
  %8 = load i32, i32* %min, align 4
  %cmp3 = icmp sge i32 %7, %8
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %min, align 4
  %10 = load i32, i32* %max.addr, align 4
  %add = add nsw i32 %9, %10
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %11 = load i32, i32* %ucs.addr, align 4
  %12 = load i32, i32* %mid, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.interval*, %struct.interval** %table.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.interval, %struct.interval* %13, i64 %idxprom4
  %last6 = getelementptr inbounds %struct.interval, %struct.interval* %arrayidx5, i32 0, i32 1
  %14 = load i32, i32* %last6, align 4
  %cmp7 = icmp sgt i32 %11, %14
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %15 = load i32, i32* %mid, align 4
  %add9 = add nsw i32 %15, 1
  store i32 %add9, i32* %min, align 4
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %ucs.addr, align 4
  %17 = load i32, i32* %mid, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.interval*, %struct.interval** %table.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.interval, %struct.interval* %18, i64 %idxprom10
  %first12 = getelementptr inbounds %struct.interval, %struct.interval* %arrayidx11, i32 0, i32 0
  %19 = load i32, i32* %first12, align 4
  %cmp13 = icmp slt i32 %16, %19
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  %20 = load i32, i32* %mid, align 4
  %sub = sub nsw i32 %20, 1
  store i32 %sub, i32* %max.addr, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.15, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @utf8_iscomb(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @bisearch(i32 %0, %struct.interval* getelementptr inbounds ([142 x %struct.interval], [142 x %struct.interval]* @utf8_iscomb.combining, i32 0, i32 0), i32 141)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @utf8_handle_comb(i32 %c, %struct.mchar* %mc) #0 {
entry:
  %c.addr = alloca i32, align 4
  %mc.addr = alloca %struct.mchar*, align 8
  %root = alloca i32, align 4
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %isdouble = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store %struct.mchar* %mc, %struct.mchar** %mc.addr, align 8
  %0 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %0, i32 0, i32 0
  %1 = load i8, i8* %image, align 1
  %conv = zext i8 %1 to i32
  %2 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %2, i32 0, i32 2
  %3 = load i8, i8* %font, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl i32 %conv1, 8
  %or = or i32 %conv, %shl
  %4 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %4, i32 0, i32 3
  %5 = load i8, i8* %fontx, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 16
  %or4 = or i32 %or, %shl3
  store i32 %or4, i32* %c1, align 4
  %6 = load i32, i32* %c1, align 4
  %cmp = icmp sge i32 %6, 4352
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load i32, i32* %c1, align 4
  %call = call i32 @utf8_isdouble(i32 %7)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %isdouble, align 4
  %9 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %tobool6 = icmp ne %struct.combchar** %9, null
  br i1 %tobool6, label %if.end.42, label %if.then

if.then:                                          ; preds = %land.end
  %call7 = call noalias i8* @calloc(i64 2050, i64 8) #1
  %10 = bitcast i8* %call7 to %struct.combchar**
  store %struct.combchar** %10, %struct.combchar*** @combchars, align 8
  %11 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %tobool8 = icmp ne %struct.combchar** %11, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %call10 = call noalias i8* @malloc(i64 16) #1
  %12 = bitcast i8* %call10 to %struct.combchar*
  %13 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx = getelementptr inbounds %struct.combchar*, %struct.combchar** %13, i64 2048
  store %struct.combchar* %12, %struct.combchar** %arrayidx, align 8
  %call11 = call noalias i8* @malloc(i64 16) #1
  %14 = bitcast i8* %call11 to %struct.combchar*
  %15 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx12 = getelementptr inbounds %struct.combchar*, %struct.combchar** %15, i64 2049
  store %struct.combchar* %14, %struct.combchar** %arrayidx12, align 8
  %16 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx13 = getelementptr inbounds %struct.combchar*, %struct.combchar** %16, i64 2048
  %17 = load %struct.combchar*, %struct.combchar** %arrayidx13, align 8
  %tobool14 = icmp ne %struct.combchar* %17, null
  br i1 %tobool14, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx15 = getelementptr inbounds %struct.combchar*, %struct.combchar** %18, i64 2049
  %19 = load %struct.combchar*, %struct.combchar** %arrayidx15, align 8
  %tobool16 = icmp ne %struct.combchar* %19, null
  br i1 %tobool16, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false, %if.end
  %20 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx18 = getelementptr inbounds %struct.combchar*, %struct.combchar** %20, i64 2048
  %21 = load %struct.combchar*, %struct.combchar** %arrayidx18, align 8
  %tobool19 = icmp ne %struct.combchar* %21, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.17
  %22 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx21 = getelementptr inbounds %struct.combchar*, %struct.combchar** %22, i64 2048
  %23 = load %struct.combchar*, %struct.combchar** %arrayidx21, align 8
  %24 = bitcast %struct.combchar* %23 to i8*
  call void @free(i8* %24) #1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.17
  %25 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx23 = getelementptr inbounds %struct.combchar*, %struct.combchar** %25, i64 2049
  %26 = load %struct.combchar*, %struct.combchar** %arrayidx23, align 8
  %tobool24 = icmp ne %struct.combchar* %26, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %27 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx26 = getelementptr inbounds %struct.combchar*, %struct.combchar** %27, i64 2049
  %28 = load %struct.combchar*, %struct.combchar** %arrayidx26, align 8
  %29 = bitcast %struct.combchar* %28 to i8*
  call void @free(i8* %29) #1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %30 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %31 = bitcast %struct.combchar** %30 to i8*
  call void @free(i8* %31) #1
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %32 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx29 = getelementptr inbounds %struct.combchar*, %struct.combchar** %32, i64 2048
  %33 = load %struct.combchar*, %struct.combchar** %arrayidx29, align 8
  %c130 = getelementptr inbounds %struct.combchar, %struct.combchar* %33, i32 0, i32 0
  store i32 0, i32* %c130, align 4
  %34 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx31 = getelementptr inbounds %struct.combchar*, %struct.combchar** %34, i64 2048
  %35 = load %struct.combchar*, %struct.combchar** %arrayidx31, align 8
  %c2 = getelementptr inbounds %struct.combchar, %struct.combchar* %35, i32 0, i32 1
  store i32 1792, i32* %c2, align 4
  %36 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx32 = getelementptr inbounds %struct.combchar*, %struct.combchar** %36, i64 2048
  %37 = load %struct.combchar*, %struct.combchar** %arrayidx32, align 8
  %next = getelementptr inbounds %struct.combchar, %struct.combchar* %37, i32 0, i32 2
  store i32 2048, i32* %next, align 4
  %38 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx33 = getelementptr inbounds %struct.combchar*, %struct.combchar** %38, i64 2048
  %39 = load %struct.combchar*, %struct.combchar** %arrayidx33, align 8
  %prev = getelementptr inbounds %struct.combchar, %struct.combchar* %39, i32 0, i32 3
  store i32 2048, i32* %prev, align 4
  %40 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx34 = getelementptr inbounds %struct.combchar*, %struct.combchar** %40, i64 2049
  %41 = load %struct.combchar*, %struct.combchar** %arrayidx34, align 8
  %c135 = getelementptr inbounds %struct.combchar, %struct.combchar* %41, i32 0, i32 0
  store i32 1792, i32* %c135, align 4
  %42 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx36 = getelementptr inbounds %struct.combchar*, %struct.combchar** %42, i64 2049
  %43 = load %struct.combchar*, %struct.combchar** %arrayidx36, align 8
  %c237 = getelementptr inbounds %struct.combchar, %struct.combchar* %43, i32 0, i32 1
  store i32 2048, i32* %c237, align 4
  %44 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx38 = getelementptr inbounds %struct.combchar*, %struct.combchar** %44, i64 2049
  %45 = load %struct.combchar*, %struct.combchar** %arrayidx38, align 8
  %next39 = getelementptr inbounds %struct.combchar, %struct.combchar* %45, i32 0, i32 2
  store i32 2049, i32* %next39, align 4
  %46 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx40 = getelementptr inbounds %struct.combchar*, %struct.combchar** %46, i64 2049
  %47 = load %struct.combchar*, %struct.combchar** %arrayidx40, align 8
  %prev41 = getelementptr inbounds %struct.combchar, %struct.combchar* %47, i32 0, i32 3
  store i32 2049, i32* %prev41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.28, %land.end
  %48 = load i32, i32* %isdouble, align 4
  %tobool43 = icmp ne i32 %48, 0
  %cond = select i1 %tobool43, i32 2049, i32 2048
  store i32 %cond, i32* %root, align 4
  %49 = load i32, i32* %root, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx44 = getelementptr inbounds %struct.combchar*, %struct.combchar** %50, i64 %idxprom
  %51 = load %struct.combchar*, %struct.combchar** %arrayidx44, align 8
  %c145 = getelementptr inbounds %struct.combchar, %struct.combchar* %51, i32 0, i32 0
  %52 = load i32, i32* %c145, align 4
  store i32 %52, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %root, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx47 = getelementptr inbounds %struct.combchar*, %struct.combchar** %55, i64 %idxprom46
  %56 = load %struct.combchar*, %struct.combchar** %arrayidx47, align 8
  %c248 = getelementptr inbounds %struct.combchar, %struct.combchar* %56, i32 0, i32 1
  %57 = load i32, i32* %c248, align 4
  %cmp49 = icmp ult i32 %53, %57
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %58 to i64
  %59 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx52 = getelementptr inbounds %struct.combchar*, %struct.combchar** %59, i64 %idxprom51
  %60 = load %struct.combchar*, %struct.combchar** %arrayidx52, align 8
  %tobool53 = icmp ne %struct.combchar* %60, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %for.body
  br label %for.end

if.end.55:                                        ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %61 to i64
  %62 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx57 = getelementptr inbounds %struct.combchar*, %struct.combchar** %62, i64 %idxprom56
  %63 = load %struct.combchar*, %struct.combchar** %arrayidx57, align 8
  %c158 = getelementptr inbounds %struct.combchar, %struct.combchar* %63, i32 0, i32 0
  %64 = load i32, i32* %c158, align 4
  %65 = load i32, i32* %c1, align 4
  %cmp59 = icmp eq i32 %64, %65
  br i1 %cmp59, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.55
  %66 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %66 to i64
  %67 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx62 = getelementptr inbounds %struct.combchar*, %struct.combchar** %67, i64 %idxprom61
  %68 = load %struct.combchar*, %struct.combchar** %arrayidx62, align 8
  %c263 = getelementptr inbounds %struct.combchar, %struct.combchar* %68, i32 0, i32 1
  %69 = load i32, i32* %c263, align 4
  %70 = load i32, i32* %c.addr, align 4
  %cmp64 = icmp eq i32 %69, %70
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.67:                                        ; preds = %land.lhs.true, %if.end.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %71 = load i32, i32* %i, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.66, %if.then.54, %for.cond
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %root, align 4
  %idxprom68 = sext i32 %73 to i64
  %74 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx69 = getelementptr inbounds %struct.combchar*, %struct.combchar** %74, i64 %idxprom68
  %75 = load %struct.combchar*, %struct.combchar** %arrayidx69, align 8
  %c270 = getelementptr inbounds %struct.combchar, %struct.combchar* %75, i32 0, i32 1
  %76 = load i32, i32* %c270, align 4
  %cmp71 = icmp eq i32 %72, %76
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %for.end
  %77 = load i32, i32* %c1, align 4
  %cmp74 = icmp sge i32 %77, 55296
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.80

land.lhs.true.76:                                 ; preds = %if.then.73
  %78 = load i32, i32* %c1, align 4
  %cmp77 = icmp slt i32 %78, 57344
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.76
  %79 = load i32, i32* %root, align 4
  %80 = load i32, i32* %c1, align 4
  %sub = sub nsw i32 %80, 55296
  call void @comb_tofront(i32 %79, i32 %sub)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %land.lhs.true.76, %if.then.73
  %81 = load i32, i32* %root, align 4
  %idxprom81 = sext i32 %81 to i64
  %82 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx82 = getelementptr inbounds %struct.combchar*, %struct.combchar** %82, i64 %idxprom81
  %83 = load %struct.combchar*, %struct.combchar** %arrayidx82, align 8
  %prev83 = getelementptr inbounds %struct.combchar, %struct.combchar* %83, i32 0, i32 3
  %84 = load i32, i32* %prev83, align 4
  store i32 %84, i32* %i, align 4
  %85 = load i32, i32* %c1, align 4
  %86 = load i32, i32* %i, align 4
  %add = add nsw i32 %86, 55296
  %cmp84 = icmp eq i32 %85, %add
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.80
  br label %do.body

do.body:                                          ; preds = %if.then.86
  br label %do.end

do.end:                                           ; preds = %do.body
  %87 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %image87 = getelementptr inbounds %struct.mchar, %struct.mchar* %87, i32 0, i32 0
  store i8 63, i8* %image87, align 1
  %88 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font88 = getelementptr inbounds %struct.mchar, %struct.mchar* %88, i32 0, i32 2
  store i8 0, i8* %font88, align 1
  br label %return

if.end.89:                                        ; preds = %if.end.80
  br label %if.end.109

if.else:                                          ; preds = %for.end
  %89 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %89 to i64
  %90 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx91 = getelementptr inbounds %struct.combchar*, %struct.combchar** %90, i64 %idxprom90
  %91 = load %struct.combchar*, %struct.combchar** %arrayidx91, align 8
  %tobool92 = icmp ne %struct.combchar* %91, null
  br i1 %tobool92, label %if.end.108, label %if.then.93

if.then.93:                                       ; preds = %if.else
  %call94 = call noalias i8* @malloc(i64 16) #1
  %92 = bitcast i8* %call94 to %struct.combchar*
  %93 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %93 to i64
  %94 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx96 = getelementptr inbounds %struct.combchar*, %struct.combchar** %94, i64 %idxprom95
  store %struct.combchar* %92, %struct.combchar** %arrayidx96, align 8
  %95 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %95 to i64
  %96 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx98 = getelementptr inbounds %struct.combchar*, %struct.combchar** %96, i64 %idxprom97
  %97 = load %struct.combchar*, %struct.combchar** %arrayidx98, align 8
  %tobool99 = icmp ne %struct.combchar* %97, null
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.then.93
  br label %return

if.end.101:                                       ; preds = %if.then.93
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %99 to i64
  %100 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx103 = getelementptr inbounds %struct.combchar*, %struct.combchar** %100, i64 %idxprom102
  %101 = load %struct.combchar*, %struct.combchar** %arrayidx103, align 8
  %prev104 = getelementptr inbounds %struct.combchar, %struct.combchar* %101, i32 0, i32 3
  store i32 %98, i32* %prev104, align 4
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %103 to i64
  %104 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx106 = getelementptr inbounds %struct.combchar*, %struct.combchar** %104, i64 %idxprom105
  %105 = load %struct.combchar*, %struct.combchar** %arrayidx106, align 8
  %next107 = getelementptr inbounds %struct.combchar, %struct.combchar* %105, i32 0, i32 2
  store i32 %102, i32* %next107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.101, %if.else
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.89
  %106 = load i32, i32* %c1, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %107 to i64
  %108 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx111 = getelementptr inbounds %struct.combchar*, %struct.combchar** %108, i64 %idxprom110
  %109 = load %struct.combchar*, %struct.combchar** %arrayidx111, align 8
  %c1112 = getelementptr inbounds %struct.combchar, %struct.combchar* %109, i32 0, i32 0
  store i32 %106, i32* %c1112, align 4
  %110 = load i32, i32* %c.addr, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %111 to i64
  %112 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx114 = getelementptr inbounds %struct.combchar*, %struct.combchar** %112, i64 %idxprom113
  %113 = load %struct.combchar*, %struct.combchar** %arrayidx114, align 8
  %c2115 = getelementptr inbounds %struct.combchar, %struct.combchar* %113, i32 0, i32 1
  store i32 %110, i32* %c2115, align 4
  %114 = load i32, i32* %i, align 4
  %and = and i32 %114, 255
  %conv116 = trunc i32 %and to i8
  %115 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %image117 = getelementptr inbounds %struct.mchar, %struct.mchar* %115, i32 0, i32 0
  store i8 %conv116, i8* %image117, align 1
  %116 = load i32, i32* %i, align 4
  %shr = ashr i32 %116, 8
  %add118 = add nsw i32 %shr, 216
  %conv119 = trunc i32 %add118 to i8
  %117 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font120 = getelementptr inbounds %struct.mchar, %struct.mchar* %117, i32 0, i32 2
  store i8 %conv119, i8* %font120, align 1
  %118 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx121 = getelementptr inbounds %struct.mchar, %struct.mchar* %118, i32 0, i32 3
  store i8 0, i8* %fontx121, align 1
  br label %do.body.122

do.body.122:                                      ; preds = %if.end.109
  br label %do.end.123

do.end.123:                                       ; preds = %do.body.122
  %119 = load i32, i32* %root, align 4
  %120 = load i32, i32* %i, align 4
  call void @comb_tofront(i32 %119, i32 %120)
  br label %return

return:                                           ; preds = %do.end.123, %if.then.100, %do.end, %if.end.27, %if.then.9
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @comb_tofront(i32 %root, i32 %i) #0 {
entry:
  %root.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %root, i32* %root.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx = getelementptr inbounds %struct.combchar*, %struct.combchar** %1, i64 %idxprom
  %2 = load %struct.combchar*, %struct.combchar** %arrayidx, align 8
  %next = getelementptr inbounds %struct.combchar, %struct.combchar* %2, i32 0, i32 2
  %3 = load i32, i32* %next, align 4
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx2 = getelementptr inbounds %struct.combchar*, %struct.combchar** %5, i64 %idxprom1
  %6 = load %struct.combchar*, %struct.combchar** %arrayidx2, align 8
  %prev = getelementptr inbounds %struct.combchar, %struct.combchar* %6, i32 0, i32 3
  %7 = load i32, i32* %prev, align 4
  %idxprom3 = zext i32 %7 to i64
  %8 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx4 = getelementptr inbounds %struct.combchar*, %struct.combchar** %8, i64 %idxprom3
  %9 = load %struct.combchar*, %struct.combchar** %arrayidx4, align 8
  %next5 = getelementptr inbounds %struct.combchar, %struct.combchar* %9, i32 0, i32 2
  store i32 %3, i32* %next5, align 4
  %10 = load i32, i32* %i.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx7 = getelementptr inbounds %struct.combchar*, %struct.combchar** %11, i64 %idxprom6
  %12 = load %struct.combchar*, %struct.combchar** %arrayidx7, align 8
  %prev8 = getelementptr inbounds %struct.combchar, %struct.combchar* %12, i32 0, i32 3
  %13 = load i32, i32* %prev8, align 4
  %14 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx10 = getelementptr inbounds %struct.combchar*, %struct.combchar** %15, i64 %idxprom9
  %16 = load %struct.combchar*, %struct.combchar** %arrayidx10, align 8
  %next11 = getelementptr inbounds %struct.combchar, %struct.combchar* %16, i32 0, i32 2
  %17 = load i32, i32* %next11, align 4
  %idxprom12 = zext i32 %17 to i64
  %18 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx13 = getelementptr inbounds %struct.combchar*, %struct.combchar** %18, i64 %idxprom12
  %19 = load %struct.combchar*, %struct.combchar** %arrayidx13, align 8
  %prev14 = getelementptr inbounds %struct.combchar, %struct.combchar* %19, i32 0, i32 3
  store i32 %13, i32* %prev14, align 4
  %20 = load i32, i32* %root.addr, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx16 = getelementptr inbounds %struct.combchar*, %struct.combchar** %21, i64 %idxprom15
  %22 = load %struct.combchar*, %struct.combchar** %arrayidx16, align 8
  %next17 = getelementptr inbounds %struct.combchar, %struct.combchar* %22, i32 0, i32 2
  %23 = load i32, i32* %next17, align 4
  %24 = load i32, i32* %i.addr, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx19 = getelementptr inbounds %struct.combchar*, %struct.combchar** %25, i64 %idxprom18
  %26 = load %struct.combchar*, %struct.combchar** %arrayidx19, align 8
  %next20 = getelementptr inbounds %struct.combchar, %struct.combchar* %26, i32 0, i32 2
  store i32 %23, i32* %next20, align 4
  %27 = load i32, i32* %root.addr, align 4
  %28 = load i32, i32* %i.addr, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx22 = getelementptr inbounds %struct.combchar*, %struct.combchar** %29, i64 %idxprom21
  %30 = load %struct.combchar*, %struct.combchar** %arrayidx22, align 8
  %prev23 = getelementptr inbounds %struct.combchar, %struct.combchar* %30, i32 0, i32 3
  store i32 %27, i32* %prev23, align 4
  %31 = load i32, i32* %i.addr, align 4
  %32 = load i32, i32* %root.addr, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx25 = getelementptr inbounds %struct.combchar*, %struct.combchar** %33, i64 %idxprom24
  %34 = load %struct.combchar*, %struct.combchar** %arrayidx25, align 8
  %next26 = getelementptr inbounds %struct.combchar, %struct.combchar* %34, i32 0, i32 2
  %35 = load i32, i32* %next26, align 4
  %idxprom27 = zext i32 %35 to i64
  %36 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx28 = getelementptr inbounds %struct.combchar*, %struct.combchar** %36, i64 %idxprom27
  %37 = load %struct.combchar*, %struct.combchar** %arrayidx28, align 8
  %prev29 = getelementptr inbounds %struct.combchar, %struct.combchar* %37, i32 0, i32 3
  store i32 %31, i32* %prev29, align 4
  %38 = load i32, i32* %i.addr, align 4
  %39 = load i32, i32* %root.addr, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx31 = getelementptr inbounds %struct.combchar*, %struct.combchar** %40, i64 %idxprom30
  %41 = load %struct.combchar*, %struct.combchar** %arrayidx31, align 8
  %next32 = getelementptr inbounds %struct.combchar, %struct.combchar* %41, i32 0, i32 2
  store i32 %38, i32* %next32, align 4
  %42 = load i32, i32* %i.addr, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load %struct.combchar**, %struct.combchar*** @combchars, align 8
  %arrayidx34 = getelementptr inbounds %struct.combchar*, %struct.combchar** %43, i64 %idxprom33
  %44 = load %struct.combchar*, %struct.combchar** %arrayidx34, align 8
  %c1 = getelementptr inbounds %struct.combchar, %struct.combchar* %44, i32 0, i32 0
  %45 = load i32, i32* %c1, align 4
  store i32 %45, i32* %i.addr, align 4
  %46 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %46, 55296
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %47 = load i32, i32* %i.addr, align 4
  %cmp35 = icmp sge i32 %47, 57344
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  ret void

if.end:                                           ; preds = %lor.lhs.false
  %48 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %48, 55296
  store i32 %sub, i32* %i.addr, align 4
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define i32 @FindEncoding(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %encoding = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @encmatch(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @encmatch(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end.4
  %5 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @encmatch(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.7, %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.7
  store i32 0, i32* %encoding, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %6 = load i32, i32* %encoding, align 4
  %cmp12 = icmp slt i32 %6, 21
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %encoding, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %name14 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %name14, align 8
  %call15 = call i32 @encmatch(i8* %7, i8* %9)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %10 = load i32, i32* %encoding, align 4
  call void @LoadFontTranslationsForEncoding(i32 %10)
  %11 = load i32, i32* %encoding, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %12 = load i32, i32* %encoding, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %encoding, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.10, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @encmatch(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %c1, align 4
  %2 = load i32, i32* %c1, align 4
  %cmp = icmp sge i32 %2, 65
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load i32, i32* %c1, align 4
  %cmp2 = icmp sle i32 %3, 90
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %c1, align 4
  %add = add nsw i32 %4, 32
  store i32 %add, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  %5 = load i32, i32* %c1, align 4
  %cmp4 = icmp sge i32 %5, 97
  br i1 %cmp4, label %land.lhs.true.6, label %land.lhs.true.9

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %c1, align 4
  %cmp7 = icmp sle i32 %6, 122
  br i1 %cmp7, label %if.end.16, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true.6, %if.end
  %7 = load i32, i32* %c1, align 4
  %cmp10 = icmp sge i32 %7, 48
  br i1 %cmp10, label %land.lhs.true.12, label %if.then.15

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %8 = load i32, i32* %c1, align 4
  %cmp13 = icmp sle i32 %8, 57
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9
  %9 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  br label %do.cond

if.end.16:                                        ; preds = %land.lhs.true.12, %land.lhs.true.6
  %10 = load i8*, i8** %s2.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv17 = zext i8 %11 to i32
  store i32 %conv17, i32* %c2, align 4
  %12 = load i32, i32* %c2, align 4
  %cmp18 = icmp sge i32 %12, 65
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.25

land.lhs.true.20:                                 ; preds = %if.end.16
  %13 = load i32, i32* %c2, align 4
  %cmp21 = icmp sle i32 %13, 90
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true.20
  %14 = load i32, i32* %c2, align 4
  %add24 = add nsw i32 %14, 32
  store i32 %add24, i32* %c2, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true.20, %if.end.16
  %15 = load i32, i32* %c2, align 4
  %cmp26 = icmp sge i32 %15, 97
  br i1 %cmp26, label %land.lhs.true.28, label %land.lhs.true.31

land.lhs.true.28:                                 ; preds = %if.end.25
  %16 = load i32, i32* %c2, align 4
  %cmp29 = icmp sle i32 %16, 122
  br i1 %cmp29, label %if.end.39, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.28, %if.end.25
  %17 = load i32, i32* %c2, align 4
  %cmp32 = icmp sge i32 %17, 48
  br i1 %cmp32, label %land.lhs.true.34, label %if.then.37

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %18 = load i32, i32* %c2, align 4
  %cmp35 = icmp sle i32 %18, 57
  br i1 %cmp35, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.34, %land.lhs.true.31
  %19 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr38, i8** %s2.addr, align 8
  br label %do.cond

if.end.39:                                        ; preds = %land.lhs.true.34, %land.lhs.true.28
  %20 = load i32, i32* %c1, align 4
  %21 = load i32, i32* %c2, align 4
  %cmp40 = icmp ne i32 %20, %21
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %22 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr44, i8** %s1.addr, align 8
  %23 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr45, i8** %s2.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.43, %if.then.37, %if.then.15
  %24 = load i32, i32* %c1, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.42
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @LoadFontTranslationsForEncoding(i32 %encoding) #0 {
entry:
  %encoding.addr = alloca i32, align 4
  %c = alloca i8*, align 8
  %f = alloca i32, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %fontlist = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 5
  %1 = load i8*, i8** %fontlist, align 8
  store i8* %1, i8** %c, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %f, align 4
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %f, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom3
  %flags = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx4, i32 0, i32 1
  %5 = load i32, i32* %flags, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %while.body
  %6 = load i32, i32* %f, align 4
  %call = call i32 @LoadFontTranslation(i32 %6, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %do.end
  %7 = load i32, i32* %encoding.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom9
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx10, i32 0, i32 2
  %8 = load i32, i32* %deffont, align 4
  store i32 %8, i32* %f, align 4
  %9 = load i32, i32* %f, align 4
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.8
  %10 = load i32, i32* %f, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom13
  %flags15 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx14, i32 0, i32 1
  %11 = load i32, i32* %flags15, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %f, align 4
  %call19 = call i32 @LoadFontTranslation(i32 %12, i8* null)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @EncodingName(i32 %encoding) #0 {
entry:
  %retval = alloca i8*, align 8
  %encoding.addr = alloca i32, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp sge i32 %0, 21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i32 @EncodingDefFont(i32 %encoding) #0 {
entry:
  %encoding.addr = alloca i32, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %deffont, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @ResetEncoding(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %c = alloca i8*, align 8
  %encoding = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %1 = load i32, i32* %l_encoding, align 4
  store i32 %1, i32* %encoding, align 4
  %2 = load i32, i32* %encoding, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %charsets = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %charsets, align 8
  store i8* %3, i8** %c, align 8
  %4 = load i8*, i8** %c, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %6 = load i8*, i8** %c, align 8
  call void @SetCharsets(%struct.win* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %encoding, align 4
  call void @LoadFontTranslationsForEncoding(i32 %7)
  %8 = load i32, i32* %encoding, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom1
  %usegr = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx2, i32 0, i32 3
  %9 = load i32, i32* %usegr, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_gr = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 58
  store i32 2, i32* %w_gr, align 4
  %11 = load i32, i32* %encoding, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom5
  %charsets7 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx6, i32 0, i32 1
  %12 = load i8*, i8** %charsets7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx8, align 1
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontE = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 40
  store i8 %13, i8* %w_FontE, align 1
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_FontE9 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 40
  store i8 0, i8* %w_FontE9, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.4
  %16 = load i32, i32* %encoding, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom11
  %noc1 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx12, i32 0, i32 4
  %17 = load i32, i32* %noc1, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_c1 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 59
  store i32 0, i32* %w_c1, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  ret void
}

declare void @SetCharsets(%struct.win*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @DecodeChar(i32 %c, i32 %encoding, i32* %statep) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %statep.addr = alloca i32*, align 8
  %t = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  store i32* %statep, i32** %statep.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.end
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32*, i32** %statep.addr, align 8
  %call = call i32 @FromUtf8(i32 %1, i32* %2)
  store i32 %call, i32* %c.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp sge i32 %3, 65536
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* %c.addr, align 4
  %and = and i32 %4, 8323072
  %shl = shl i32 %and, 8
  %5 = load i32, i32* %c.addr, align 4
  %and3 = and i32 %5, 65535
  %or = or i32 %shl, %and3
  store i32 %or, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load i32, i32* %c.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %7 = load i32, i32* %encoding.addr, align 4
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then.6, label %if.end.47

if.then.6:                                        ; preds = %if.end.4
  %8 = load i32*, i32** %statep.addr, align 8
  %9 = load i32, i32* %8, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.19, label %if.then.7

if.then.7:                                        ; preds = %if.then.6
  %10 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp sle i32 129, %10
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.7
  %11 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp sle i32 %11, 159
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.7
  %12 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp sle i32 224, %12
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp sle i32 %13, 239
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11, %land.lhs.true
  %14 = load i32, i32* %c.addr, align 4
  %15 = load i32*, i32** %statep.addr, align 8
  store i32 %14, i32* %15, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.11, %lor.lhs.false
  %16 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp slt i32 %16, 128
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %17 = load i32, i32* %c.addr, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %18 = load i32, i32* %c.addr, align 4
  %or18 = or i32 %18, 4784128
  store i32 %or18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.6
  %19 = load i32, i32* %c.addr, align 4
  store i32 %19, i32* %t, align 4
  %20 = load i32*, i32** %statep.addr, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %c.addr, align 4
  %22 = load i32*, i32** %statep.addr, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %t, align 4
  %cmp20 = icmp sle i32 64, %23
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.46

land.lhs.true.21:                                 ; preds = %if.end.19
  %24 = load i32, i32* %t, align 4
  %cmp22 = icmp sle i32 %24, 252
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.46

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %25 = load i32, i32* %t, align 4
  %cmp24 = icmp ne i32 %25, 127
  br i1 %cmp24, label %if.then.25, label %if.end.46

if.then.25:                                       ; preds = %land.lhs.true.23
  %26 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp sle i32 %26, 159
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  %27 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %27, 129
  %mul = mul nsw i32 %sub, 2
  %add = add nsw i32 %mul, 33
  store i32 %add, i32* %c.addr, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.then.25
  %28 = load i32, i32* %c.addr, align 4
  %sub28 = sub nsw i32 %28, 193
  %mul29 = mul nsw i32 %sub28, 2
  %add30 = add nsw i32 %mul29, 33
  store i32 %add30, i32* %c.addr, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.27
  %29 = load i32, i32* %t, align 4
  %cmp32 = icmp sle i32 %29, 126
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.31
  %30 = load i32, i32* %t, align 4
  %sub34 = sub nsw i32 %30, 31
  store i32 %sub34, i32* %t, align 4
  br label %if.end.42

if.else.35:                                       ; preds = %if.end.31
  %31 = load i32, i32* %t, align 4
  %cmp36 = icmp sle i32 %31, 158
  br i1 %cmp36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.35
  %32 = load i32, i32* %t, align 4
  %sub38 = sub nsw i32 %32, 32
  store i32 %sub38, i32* %t, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %if.else.35
  %33 = load i32, i32* %t, align 4
  %sub40 = sub nsw i32 %33, 126
  store i32 %sub40, i32* %t, align 4
  %34 = load i32, i32* %c.addr, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %c.addr, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.33
  %35 = load i32, i32* %c.addr, align 4
  %shl43 = shl i32 %35, 8
  %36 = load i32, i32* %t, align 4
  %or44 = or i32 %shl43, %36
  %or45 = or i32 %or44, 131072
  store i32 %or45, i32* %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.23, %land.lhs.true.21, %if.end.19
  %37 = load i32, i32* %t, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.4
  %38 = load i32, i32* %encoding.addr, align 4
  %cmp48 = icmp eq i32 %38, 1
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.47
  %39 = load i32, i32* %encoding.addr, align 4
  %cmp50 = icmp eq i32 %39, 3
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.49
  %40 = load i32, i32* %encoding.addr, align 4
  %cmp52 = icmp eq i32 %40, 4
  br i1 %cmp52, label %if.then.53, label %if.end.89

if.then.53:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.49, %if.end.47
  %41 = load i32*, i32** %statep.addr, align 8
  %42 = load i32, i32* %41, align 4
  %tobool54 = icmp ne i32 %42, 0
  br i1 %tobool54, label %if.end.60, label %if.then.55

if.then.55:                                       ; preds = %if.then.53
  %43 = load i32, i32* %c.addr, align 4
  %and56 = and i32 %43, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  %44 = load i32, i32* %c.addr, align 4
  %45 = load i32*, i32** %statep.addr, align 8
  store i32 %44, i32* %45, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.55
  %46 = load i32, i32* %c.addr, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.53
  %47 = load i32, i32* %c.addr, align 4
  store i32 %47, i32* %t, align 4
  %48 = load i32*, i32** %statep.addr, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %c.addr, align 4
  %50 = load i32*, i32** %statep.addr, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %encoding.addr, align 4
  %cmp61 = icmp eq i32 %51, 1
  br i1 %cmp61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.end.60
  %52 = load i32, i32* %c.addr, align 4
  %cmp63 = icmp eq i32 %52, 142
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.62
  %53 = load i32, i32* %t, align 4
  %or65 = or i32 %53, 4784128
  store i32 %or65, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.62
  %54 = load i32, i32* %c.addr, align 4
  %cmp67 = icmp eq i32 %54, 143
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.66
  %55 = load i32, i32* %t, align 4
  %or69 = or i32 %55, 1024
  %56 = load i32*, i32** %statep.addr, align 8
  store i32 %or69, i32* %56, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.60
  %57 = load i32, i32* %c.addr, align 4
  %and72 = and i32 %57, 65407
  store i32 %and72, i32* %c.addr, align 4
  %58 = load i32, i32* %t, align 4
  %and73 = and i32 %58, 127
  store i32 %and73, i32* %t, align 4
  %59 = load i32, i32* %c.addr, align 4
  %shl74 = shl i32 %59, 8
  %60 = load i32, i32* %t, align 4
  %or75 = or i32 %shl74, %60
  store i32 %or75, i32* %c.addr, align 4
  %61 = load i32, i32* %encoding.addr, align 4
  %cmp76 = icmp eq i32 %61, 3
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.71
  %62 = load i32, i32* %c.addr, align 4
  %or78 = or i32 %62, 196608
  store i32 %or78, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.71
  %63 = load i32, i32* %encoding.addr, align 4
  %cmp80 = icmp eq i32 %63, 4
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %64 = load i32, i32* %c.addr, align 4
  %or82 = or i32 %64, 65536
  store i32 %or82, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %65 = load i32, i32* %c.addr, align 4
  %and84 = and i32 %65, 262144
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.83
  %66 = load i32, i32* %c.addr, align 4
  store i32 %66, i32* %retval
  br label %return

if.else.87:                                       ; preds = %if.end.83
  %67 = load i32, i32* %c.addr, align 4
  %or88 = or i32 %67, 131072
  store i32 %or88, i32* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.51
  %68 = load i32, i32* %encoding.addr, align 4
  %cmp90 = icmp eq i32 %68, 5
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.89
  %69 = load i32, i32* %encoding.addr, align 4
  %cmp92 = icmp eq i32 %69, 20
  br i1 %cmp92, label %if.then.93, label %if.end.111

if.then.93:                                       ; preds = %lor.lhs.false.91, %if.end.89
  %70 = load i32*, i32** %statep.addr, align 8
  %71 = load i32, i32* %70, align 4
  %tobool94 = icmp ne i32 %71, 0
  br i1 %tobool94, label %if.end.105, label %if.then.95

if.then.95:                                       ; preds = %if.then.93
  %72 = load i32, i32* %c.addr, align 4
  %and96 = and i32 %72, 128
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %if.then.95
  %73 = load i32, i32* %encoding.addr, align 4
  %cmp99 = icmp eq i32 %73, 20
  br i1 %cmp99, label %land.lhs.true.100, label %if.end.103

land.lhs.true.100:                                ; preds = %if.then.98
  %74 = load i32, i32* %c.addr, align 4
  %cmp101 = icmp eq i32 %74, 128
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.100
  store i32 14811300, i32* %retval
  br label %return

if.end.103:                                       ; preds = %land.lhs.true.100, %if.then.98
  %75 = load i32, i32* %c.addr, align 4
  %76 = load i32*, i32** %statep.addr, align 8
  store i32 %75, i32* %76, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.95
  %77 = load i32, i32* %c.addr, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.then.93
  %78 = load i32, i32* %c.addr, align 4
  store i32 %78, i32* %t, align 4
  %79 = load i32*, i32** %statep.addr, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %c.addr, align 4
  %81 = load i32*, i32** %statep.addr, align 8
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %c.addr, align 4
  %and106 = and i32 %82, 127
  store i32 %and106, i32* %c.addr, align 4
  %83 = load i32, i32* %c.addr, align 4
  %shl107 = shl i32 %83, 8
  %84 = load i32, i32* %t, align 4
  %or108 = or i32 %shl107, %84
  %85 = load i32, i32* %encoding.addr, align 4
  %cmp109 = icmp eq i32 %85, 5
  %cond = select i1 %cmp109, i32 1572864, i32 1638400
  %or110 = or i32 %or108, %cond
  store i32 %or110, i32* %retval
  br label %return

if.end.111:                                       ; preds = %lor.lhs.false.91
  %86 = load i32, i32* %c.addr, align 4
  %87 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %87 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 2
  %88 = load i32, i32* %deffont, align 4
  %shl112 = shl i32 %88, 16
  %or113 = or i32 %86, %shl112
  store i32 %or113, i32* %retval
  br label %return

return:                                           ; preds = %if.end.111, %if.end.105, %if.end.104, %if.end.103, %if.then.102, %if.else.87, %if.then.86, %if.then.81, %if.then.77, %if.then.68, %if.then.64, %if.end.59, %if.then.58, %if.end.46, %if.end.42, %if.end.17, %if.then.16, %if.then.13, %if.end
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @EncodeChar(i8* %bp, i32 %c, i32 %encoding, i32* %fontp) #0 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %fontp.addr = alloca i32*, align 8
  %t = alloca i32, align 4
  %f = alloca i32, align 4
  %l = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c244 = alloca i32, align 4
  store i8* %bp, i8** %bp.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  store i32* %fontp, i32** %fontp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %1 = load i32*, i32** %fontp.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32*, i32** %fontp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8*, i8** %bp.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %bp.addr, align 8
  store i8 27, i8* %5, align 1
  %6 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %bp.addr, align 8
  store i8 40, i8* %6, align 1
  %7 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %bp.addr, align 8
  store i8 66, i8* %7, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  store i32 3, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %8 = load i32, i32* %c.addr, align 4
  %shr = ashr i32 %8, 16
  %and = and i32 %shr, 255
  store i32 %and, i32* %f, align 4
  %9 = load i32, i32* %encoding.addr, align 4
  %cmp9 = icmp eq i32 %9, 8
  br i1 %cmp9, label %if.then.10, label %if.end.28

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* %f, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.then.10
  %11 = load i32, i32* %f, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.then.12
  %12 = load i32, i32* %f, align 4
  %and15 = and i32 %12, 96
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.14
  %13 = load i32, i32* %c.addr, align 4
  %and18 = and i32 %13, 255
  store i32 %and18, i32* %c2, align 4
  %14 = load i32, i32* %c.addr, align 4
  %shr19 = ashr i32 %14, 8
  %and20 = and i32 %shr19, 255
  %15 = load i32, i32* %f, align 4
  %shl = shl i32 %15, 8
  %or = or i32 %and20, %shl
  store i32 %or, i32* %c.addr, align 4
  %16 = load i32, i32* %c.addr, align 4
  %17 = load i32, i32* %encoding.addr, align 4
  %call = call i32 @recode_char_dw_to_encoding(i32 %16, i32* %c2, i32 %17)
  store i32 %call, i32* %c.addr, align 4
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true.14, %if.then.12
  %18 = load i32, i32* %c.addr, align 4
  %and21 = and i32 %18, 255
  %19 = load i32, i32* %f, align 4
  %shl22 = shl i32 %19, 8
  %or23 = or i32 %and21, %shl22
  store i32 %or23, i32* %c.addr, align 4
  %20 = load i32, i32* %c.addr, align 4
  %21 = load i32, i32* %encoding.addr, align 4
  %call24 = call i32 @recode_char_to_encoding(i32 %20, i32 %21)
  store i32 %call24, i32* %c.addr, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.10
  %22 = load i8*, i8** %bp.addr, align 8
  %23 = load i32, i32* %c.addr, align 4
  %call27 = call i32 @ToUtf8(i8* %22, i32 %23)
  store i32 %call27, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.8
  %24 = load i32, i32* %f, align 4
  %cmp29 = icmp eq i32 %24, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.59

land.lhs.true.30:                                 ; preds = %if.end.28
  %25 = load i32, i32* %c.addr, align 4
  %and31 = and i32 %25, 2130771712
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.59

if.then.33:                                       ; preds = %land.lhs.true.30
  %26 = load i32, i32* %c.addr, align 4
  %cmp34 = icmp sge i32 %26, 65536
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.then.33
  %27 = load i32, i32* %c.addr, align 4
  %and36 = and i32 %27, 8323072
  %shr37 = ashr i32 %and36, 8
  %28 = load i32, i32* %c.addr, align 4
  %and38 = and i32 %28, 65535
  %or39 = or i32 %shr37, %and38
  store i32 %or39, i32* %c.addr, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.then.33
  %29 = load i32, i32* %c.addr, align 4
  %call41 = call i32 @utf8_isdouble(i32 %29)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.end.40
  store i32 65535, i32* %c244, align 4
  %30 = load i32, i32* %c.addr, align 4
  %31 = load i32, i32* %encoding.addr, align 4
  %call45 = call i32 @recode_char_dw_to_encoding(i32 %30, i32* %c244, i32 %31)
  store i32 %call45, i32* %c.addr, align 4
  %32 = load i32, i32* %c.addr, align 4
  %shl46 = shl i32 %32, 8
  %33 = load i32, i32* %c244, align 4
  %and47 = and i32 %33, 255
  %or48 = or i32 %shl46, %and47
  store i32 %or48, i32* %c.addr, align 4
  br label %if.end.55

if.else.49:                                       ; preds = %if.end.40
  %34 = load i32, i32* %c.addr, align 4
  %35 = load i32, i32* %encoding.addr, align 4
  %call50 = call i32 @recode_char_to_encoding(i32 %34, i32 %35)
  store i32 %call50, i32* %c.addr, align 4
  %36 = load i32, i32* %c.addr, align 4
  %and51 = and i32 %36, 65280
  %shl52 = shl i32 %and51, 8
  %37 = load i32, i32* %c.addr, align 4
  %and53 = and i32 %37, 255
  %or54 = or i32 %shl52, %and53
  store i32 %or54, i32* %c.addr, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.49, %if.then.43
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.56
  %38 = load i32, i32* %c.addr, align 4
  %shr58 = ashr i32 %38, 16
  store i32 %shr58, i32* %f, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.57, %land.lhs.true.30, %if.end.28
  %39 = load i32, i32* %f, align 4
  %and60 = and i32 %39, 128
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store i32 0, i32* %f, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.59
  %40 = load i32, i32* %encoding.addr, align 4
  %cmp64 = icmp eq i32 %40, 2
  br i1 %cmp64, label %if.then.65, label %if.end.91

if.then.65:                                       ; preds = %if.end.63
  %41 = load i32, i32* %f, align 4
  %cmp66 = icmp eq i32 %41, 73
  br i1 %cmp66, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.then.65
  %42 = load i32, i32* %c.addr, align 4
  %and68 = and i32 %42, 255
  %or69 = or i32 %and68, 128
  store i32 %or69, i32* %c.addr, align 4
  br label %if.end.90

if.else.70:                                       ; preds = %if.then.65
  %43 = load i32, i32* %f, align 4
  %cmp71 = icmp eq i32 %43, 2
  br i1 %cmp71, label %if.then.72, label %if.end.89

if.then.72:                                       ; preds = %if.else.70
  %44 = load i8*, i8** %bp.addr, align 8
  %tobool73 = icmp ne i8* %44, null
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.then.72
  store i32 2, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.then.72
  %45 = load i32, i32* %c.addr, align 4
  %and76 = and i32 %45, 255
  store i32 %and76, i32* %t, align 4
  %46 = load i32, i32* %c.addr, align 4
  %shr77 = ashr i32 %46, 8
  %and78 = and i32 %shr77, 255
  store i32 %and78, i32* %c.addr, align 4
  %47 = load i32, i32* %c.addr, align 4
  %and79 = and i32 %47, 1
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.75
  %48 = load i32, i32* %t, align 4
  %cmp81 = icmp sle i32 %48, 95
  %cond = select i1 %cmp81, i32 31, i32 32
  br label %cond.end

cond.false:                                       ; preds = %if.end.75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond82 = phi i32 [ %cond, %cond.true ], [ 126, %cond.false ]
  %49 = load i32, i32* %t, align 4
  %add = add nsw i32 %49, %cond82
  store i32 %add, i32* %t, align 4
  %50 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %50, 33
  %div = sdiv i32 %sub, 2
  %51 = load i32, i32* %c.addr, align 4
  %cmp83 = icmp slt i32 %51, 95
  %cond84 = select i1 %cmp83, i32 129, i32 193
  %add85 = add nsw i32 %div, %cond84
  store i32 %add85, i32* %c.addr, align 4
  %52 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %52 to i8
  %53 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr86, i8** %bp.addr, align 8
  store i8 %conv, i8* %53, align 1
  %54 = load i32, i32* %t, align 4
  %conv87 = trunc i32 %54 to i8
  %55 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr88, i8** %bp.addr, align 8
  store i8 %conv87, i8* %55, align 1
  store i32 2, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.else.70
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.67
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.63
  %56 = load i32, i32* %encoding.addr, align 4
  %cmp92 = icmp eq i32 %56, 1
  br i1 %cmp92, label %if.then.94, label %if.end.132

if.then.94:                                       ; preds = %if.end.91
  %57 = load i32, i32* %f, align 4
  %cmp95 = icmp eq i32 %57, 73
  br i1 %cmp95, label %if.then.97, label %if.end.104

if.then.97:                                       ; preds = %if.then.94
  %58 = load i8*, i8** %bp.addr, align 8
  %tobool98 = icmp ne i8* %58, null
  br i1 %tobool98, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %if.then.97
  %59 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr100, i8** %bp.addr, align 8
  store i8 -114, i8* %59, align 1
  %60 = load i32, i32* %c.addr, align 4
  %conv101 = trunc i32 %60 to i8
  %61 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr102, i8** %bp.addr, align 8
  store i8 %conv101, i8* %61, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %if.then.97
  store i32 2, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.94
  %62 = load i32, i32* %f, align 4
  %cmp105 = icmp eq i32 %62, 2
  br i1 %cmp105, label %if.then.107, label %if.end.118

if.then.107:                                      ; preds = %if.end.104
  %63 = load i8*, i8** %bp.addr, align 8
  %tobool108 = icmp ne i8* %63, null
  br i1 %tobool108, label %if.then.109, label %if.end.117

if.then.109:                                      ; preds = %if.then.107
  %64 = load i32, i32* %c.addr, align 4
  %shr110 = ashr i32 %64, 8
  %or111 = or i32 %shr110, 128
  %conv112 = trunc i32 %or111 to i8
  %65 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr113, i8** %bp.addr, align 8
  store i8 %conv112, i8* %65, align 1
  %66 = load i32, i32* %c.addr, align 4
  %or114 = or i32 %66, 128
  %conv115 = trunc i32 %or114 to i8
  %67 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr116, i8** %bp.addr, align 8
  store i8 %conv115, i8* %67, align 1
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.109, %if.then.107
  store i32 2, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.104
  %68 = load i32, i32* %f, align 4
  %cmp119 = icmp eq i32 %68, 4
  br i1 %cmp119, label %if.then.121, label %if.end.131

if.then.121:                                      ; preds = %if.end.118
  %69 = load i8*, i8** %bp.addr, align 8
  %tobool122 = icmp ne i8* %69, null
  br i1 %tobool122, label %if.then.123, label %if.end.130

if.then.123:                                      ; preds = %if.then.121
  %70 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr124, i8** %bp.addr, align 8
  store i8 -113, i8* %70, align 1
  %71 = load i32, i32* %c.addr, align 4
  %shr125 = ashr i32 %71, 8
  %conv126 = trunc i32 %shr125 to i8
  %72 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr127, i8** %bp.addr, align 8
  store i8 %conv126, i8* %72, align 1
  %73 = load i32, i32* %c.addr, align 4
  %conv128 = trunc i32 %73 to i8
  %74 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr129, i8** %bp.addr, align 8
  store i8 %conv128, i8* %74, align 1
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.123, %if.then.121
  store i32 3, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.118
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.91
  %75 = load i32, i32* %encoding.addr, align 4
  %cmp133 = icmp eq i32 %75, 3
  br i1 %cmp133, label %land.lhs.true.135, label %lor.lhs.false

land.lhs.true.135:                                ; preds = %if.end.132
  %76 = load i32, i32* %f, align 4
  %cmp136 = icmp eq i32 %76, 3
  br i1 %cmp136, label %if.then.143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.135, %if.end.132
  %77 = load i32, i32* %encoding.addr, align 4
  %cmp138 = icmp eq i32 %77, 4
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.154

land.lhs.true.140:                                ; preds = %lor.lhs.false
  %78 = load i32, i32* %f, align 4
  %cmp141 = icmp eq i32 %78, 1
  br i1 %cmp141, label %if.then.143, label %if.end.154

if.then.143:                                      ; preds = %land.lhs.true.140, %land.lhs.true.135
  %79 = load i8*, i8** %bp.addr, align 8
  %tobool144 = icmp ne i8* %79, null
  br i1 %tobool144, label %if.then.145, label %if.end.153

if.then.145:                                      ; preds = %if.then.143
  %80 = load i32, i32* %c.addr, align 4
  %shr146 = ashr i32 %80, 8
  %or147 = or i32 %shr146, 128
  %conv148 = trunc i32 %or147 to i8
  %81 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr149, i8** %bp.addr, align 8
  store i8 %conv148, i8* %81, align 1
  %82 = load i32, i32* %c.addr, align 4
  %or150 = or i32 %82, 128
  %conv151 = trunc i32 %or150 to i8
  %83 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr152, i8** %bp.addr, align 8
  store i8 %conv151, i8* %83, align 1
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.145, %if.then.143
  store i32 2, i32* %retval
  br label %return

if.end.154:                                       ; preds = %land.lhs.true.140, %lor.lhs.false
  %84 = load i32, i32* %encoding.addr, align 4
  %cmp155 = icmp eq i32 %84, 5
  br i1 %cmp155, label %land.lhs.true.157, label %lor.lhs.false.160

land.lhs.true.157:                                ; preds = %if.end.154
  %85 = load i32, i32* %f, align 4
  %cmp158 = icmp eq i32 %85, 24
  br i1 %cmp158, label %if.then.166, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %land.lhs.true.157, %if.end.154
  %86 = load i32, i32* %encoding.addr, align 4
  %cmp161 = icmp eq i32 %86, 20
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.176

land.lhs.true.163:                                ; preds = %lor.lhs.false.160
  %87 = load i32, i32* %f, align 4
  %cmp164 = icmp eq i32 %87, 25
  br i1 %cmp164, label %if.then.166, label %if.end.176

if.then.166:                                      ; preds = %land.lhs.true.163, %land.lhs.true.157
  %88 = load i8*, i8** %bp.addr, align 8
  %tobool167 = icmp ne i8* %88, null
  br i1 %tobool167, label %if.then.168, label %if.end.175

if.then.168:                                      ; preds = %if.then.166
  %89 = load i32, i32* %c.addr, align 4
  %shr169 = ashr i32 %89, 8
  %or170 = or i32 %shr169, 128
  %conv171 = trunc i32 %or170 to i8
  %90 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr172, i8** %bp.addr, align 8
  store i8 %conv171, i8* %90, align 1
  %91 = load i32, i32* %c.addr, align 4
  %conv173 = trunc i32 %91 to i8
  %92 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr174, i8** %bp.addr, align 8
  store i8 %conv173, i8* %92, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.168, %if.then.166
  store i32 2, i32* %retval
  br label %return

if.end.176:                                       ; preds = %land.lhs.true.163, %lor.lhs.false.160
  %93 = load i32, i32* %encoding.addr, align 4
  %cmp177 = icmp eq i32 %93, 20
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.186

land.lhs.true.179:                                ; preds = %if.end.176
  %94 = load i32, i32* %f, align 4
  %cmp180 = icmp eq i32 %94, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.186

land.lhs.true.182:                                ; preds = %land.lhs.true.179
  %95 = load i32, i32* %c.addr, align 4
  %cmp183 = icmp eq i32 %95, 164
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %land.lhs.true.182
  store i32 128, i32* %c.addr, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %land.lhs.true.182, %land.lhs.true.179, %if.end.176
  store i32 0, i32* %l, align 4
  %96 = load i32*, i32** %fontp.addr, align 8
  %tobool187 = icmp ne i32* %96, null
  br i1 %tobool187, label %land.lhs.true.188, label %if.end.232

land.lhs.true.188:                                ; preds = %if.end.186
  %97 = load i32, i32* %f, align 4
  %98 = load i32*, i32** %fontp.addr, align 8
  %99 = load i32, i32* %98, align 4
  %cmp189 = icmp ne i32 %97, %99
  br i1 %cmp189, label %if.then.191, label %if.end.232

if.then.191:                                      ; preds = %land.lhs.true.188
  %100 = load i32, i32* %f, align 4
  %101 = load i32*, i32** %fontp.addr, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %f, align 4
  %tobool192 = icmp ne i32 %102, 0
  br i1 %tobool192, label %land.lhs.true.193, label %if.else.214

land.lhs.true.193:                                ; preds = %if.then.191
  %103 = load i32, i32* %f, align 4
  %cmp194 = icmp slt i32 %103, 32
  br i1 %cmp194, label %if.then.196, label %if.else.214

if.then.196:                                      ; preds = %land.lhs.true.193
  %104 = load i8*, i8** %bp.addr, align 8
  %tobool197 = icmp ne i8* %104, null
  br i1 %tobool197, label %if.then.198, label %if.end.209

if.then.198:                                      ; preds = %if.then.196
  %105 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr199, i8** %bp.addr, align 8
  store i8 27, i8* %105, align 1
  %106 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr200, i8** %bp.addr, align 8
  store i8 36, i8* %106, align 1
  %107 = load i32, i32* %f, align 4
  %cmp201 = icmp sgt i32 %107, 2
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.then.198
  %108 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr204, i8** %bp.addr, align 8
  store i8 40, i8* %108, align 1
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.198
  %109 = load i32, i32* %f, align 4
  %add206 = add nsw i32 64, %109
  %conv207 = trunc i32 %add206 to i8
  %110 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr208, i8** %bp.addr, align 8
  store i8 %conv207, i8* %110, align 1
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.205, %if.then.196
  %111 = load i32, i32* %f, align 4
  %cmp210 = icmp sgt i32 %111, 2
  %cond212 = select i1 %cmp210, i32 4, i32 3
  %112 = load i32, i32* %l, align 4
  %add213 = add nsw i32 %112, %cond212
  store i32 %add213, i32* %l, align 4
  br label %if.end.231

if.else.214:                                      ; preds = %land.lhs.true.193, %if.then.191
  %113 = load i32, i32* %f, align 4
  %cmp215 = icmp slt i32 %113, 128
  br i1 %cmp215, label %if.then.217, label %if.end.230

if.then.217:                                      ; preds = %if.else.214
  %114 = load i32, i32* %f, align 4
  %cmp218 = icmp eq i32 %114, 0
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.then.217
  store i32 66, i32* %f, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.then.217
  %115 = load i8*, i8** %bp.addr, align 8
  %tobool222 = icmp ne i8* %115, null
  br i1 %tobool222, label %if.then.223, label %if.end.228

if.then.223:                                      ; preds = %if.end.221
  %116 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr224 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr224, i8** %bp.addr, align 8
  store i8 27, i8* %116, align 1
  %117 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr225 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr225, i8** %bp.addr, align 8
  store i8 40, i8* %117, align 1
  %118 = load i32, i32* %f, align 4
  %conv226 = trunc i32 %118 to i8
  %119 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr227 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr227, i8** %bp.addr, align 8
  store i8 %conv226, i8* %119, align 1
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.223, %if.end.221
  %120 = load i32, i32* %l, align 4
  %add229 = add nsw i32 %120, 3
  store i32 %add229, i32* %l, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.228, %if.else.214
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.209
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.lhs.true.188, %if.end.186
  %121 = load i32, i32* %c.addr, align 4
  %and233 = and i32 %121, 65280
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.then.235, label %if.end.242

if.then.235:                                      ; preds = %if.end.232
  %122 = load i8*, i8** %bp.addr, align 8
  %tobool236 = icmp ne i8* %122, null
  br i1 %tobool236, label %if.then.237, label %if.end.241

if.then.237:                                      ; preds = %if.then.235
  %123 = load i32, i32* %c.addr, align 4
  %shr238 = ashr i32 %123, 8
  %conv239 = trunc i32 %shr238 to i8
  %124 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr240 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr240, i8** %bp.addr, align 8
  store i8 %conv239, i8* %124, align 1
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.237, %if.then.235
  %125 = load i32, i32* %l, align 4
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %l, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.232
  %126 = load i8*, i8** %bp.addr, align 8
  %tobool243 = icmp ne i8* %126, null
  br i1 %tobool243, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %if.end.242
  %127 = load i32, i32* %c.addr, align 4
  %conv245 = trunc i32 %127 to i8
  %128 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr246 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr246, i8** %bp.addr, align 8
  store i8 %conv245, i8* %128, align 1
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.244, %if.end.242
  %129 = load i32, i32* %l, align 4
  %add248 = add nsw i32 %129, 1
  store i32 %add248, i32* %retval
  br label %return

return:                                           ; preds = %if.end.247, %if.end.175, %if.end.153, %if.end.130, %if.end.117, %if.end.103, %cond.end, %if.then.74, %if.end.26, %if.end.7, %if.then.2
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define i32 @CanEncodeFont(i32 %encoding, i32 %f) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  switch i32 %0, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.15
    i32 20, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load i32, i32* %f.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.1
  %2 = load i32, i32* %f.addr, align 4
  %cmp2 = icmp eq i32 %2, 73
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.1
  %3 = phi i1 [ true, %sw.bb.1 ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %4 = load i32, i32* %f.addr, align 4
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %lor.end.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.3
  %5 = load i32, i32* %f.addr, align 4
  %cmp5 = icmp eq i32 %5, 73
  br i1 %cmp5, label %lor.end.8, label %lor.rhs.6

lor.rhs.6:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* %f.addr, align 4
  %cmp7 = icmp eq i32 %6, 4
  br label %lor.end.8

lor.end.8:                                        ; preds = %lor.rhs.6, %lor.lhs.false, %sw.bb.3
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb.3 ], [ %cmp7, %lor.rhs.6 ]
  %lor.ext9 = zext i1 %7 to i32
  store i32 %lor.ext9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %8 = load i32, i32* %f.addr, align 4
  %cmp11 = icmp eq i32 %8, 3
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %9 = load i32, i32* %f.addr, align 4
  %cmp13 = icmp eq i32 %9, 1
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %10 = load i32, i32* %f.addr, align 4
  %cmp16 = icmp eq i32 %10, 24
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  %11 = load i32, i32* %f.addr, align 4
  %cmp19 = icmp eq i32 %11, 25
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.10, %lor.end.8, %lor.end, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @PrepareEncodedChar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %encoding = alloca i32, align 4
  %t = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %t, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 28
  %1 = load i32, i32* %d_encoding, align 4
  store i32 %1, i32* %encoding, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  %3 = load i8, i8* %font, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %f, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 27
  %5 = load i32, i32* %d_mbcs, align 4
  store i32 %5, i32* %t, align 4
  %6 = load i32, i32* %encoding, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %f, align 4
  %cmp2 = icmp eq i32 %7, 73
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* %c.addr, align 4
  %or = or i32 %8, 128
  store i32 %or, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %f, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %10 = load i32, i32* %c.addr, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %11 = load i32, i32* %t, align 4
  %cmp8 = icmp sle i32 %11, 95
  %cond = select i1 %cmp8, i32 31, i32 32
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ %cond, %cond.true ], [ 126, %cond.false ]
  %12 = load i32, i32* %t, align 4
  %add = add nsw i32 %12, %cond10
  store i32 %add, i32* %t, align 4
  %13 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %13, 33
  %div = sdiv i32 %sub, 2
  %14 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp slt i32 %14, 95
  %cond13 = select i1 %cmp11, i32 129, i32 193
  %add14 = add nsw i32 %div, %cond13
  store i32 %add14, i32* %c.addr, align 4
  %15 = load i32, i32* %t, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs15 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 27
  store i32 %15, i32* %d_mbcs15, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  %17 = load i32, i32* %c.addr, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.17:                                        ; preds = %entry
  %18 = load i32, i32* %encoding, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.then.20, label %if.end.54

if.then.20:                                       ; preds = %if.end.17
  %19 = load i32, i32* %f, align 4
  %cmp21 = icmp eq i32 %19, 73
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.then.20
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 72
  %21 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp24 = icmp sle i32 %dec, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %do.body
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 71
  %23 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 -114, i8* %23, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %24 = load i32, i32* %c.addr, align 4
  %or28 = or i32 %24, 128
  store i32 %or28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.20
  %25 = load i32, i32* %f, align 4
  %cmp30 = icmp eq i32 %25, 2
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.29
  %26 = load i32, i32* %t, align 4
  %or33 = or i32 %26, 128
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs34 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 27
  store i32 %or33, i32* %d_mbcs34, align 4
  %28 = load i32, i32* %c.addr, align 4
  %or35 = or i32 %28, 128
  store i32 %or35, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.29
  %29 = load i32, i32* %f, align 4
  %cmp37 = icmp eq i32 %29, 4
  br i1 %cmp37, label %if.then.39, label %if.end.53

if.then.39:                                       ; preds = %if.end.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree41 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 72
  %31 = load i32, i32* %d_obuffree41, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* %d_obuffree41, align 4
  %cmp43 = icmp sle i32 %dec42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.body.40
  call void @Resize_obuf()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %do.body.40
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp47 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 71
  %33 = load i8*, i8** %d_obufp47, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr48, i8** %d_obufp47, align 8
  store i8 -113, i8* %33, align 1
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.46
  %34 = load i32, i32* %t, align 4
  %or50 = or i32 %34, 128
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs51 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 27
  store i32 %or50, i32* %d_mbcs51, align 4
  %36 = load i32, i32* %c.addr, align 4
  %or52 = or i32 %36, 128
  store i32 %or52, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.36
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.17
  %37 = load i32, i32* %encoding, align 4
  %cmp55 = icmp eq i32 %37, 3
  br i1 %cmp55, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.54
  %38 = load i32, i32* %f, align 4
  %cmp57 = icmp eq i32 %38, 3
  br i1 %cmp57, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.54
  %39 = load i32, i32* %encoding, align 4
  %cmp59 = icmp eq i32 %39, 4
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.68

land.lhs.true.61:                                 ; preds = %lor.lhs.false
  %40 = load i32, i32* %f, align 4
  %cmp62 = icmp eq i32 %40, 1
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %land.lhs.true.61, %land.lhs.true
  %41 = load i32, i32* %t, align 4
  %or65 = or i32 %41, 128
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs66 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 27
  store i32 %or65, i32* %d_mbcs66, align 4
  %43 = load i32, i32* %c.addr, align 4
  %or67 = or i32 %43, 128
  store i32 %or67, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.61, %lor.lhs.false
  %44 = load i32, i32* %encoding, align 4
  %cmp69 = icmp eq i32 %44, 5
  br i1 %cmp69, label %land.lhs.true.71, label %lor.lhs.false.74

land.lhs.true.71:                                 ; preds = %if.end.68
  %45 = load i32, i32* %f, align 4
  %cmp72 = icmp eq i32 %45, 24
  br i1 %cmp72, label %if.then.80, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %land.lhs.true.71, %if.end.68
  %46 = load i32, i32* %encoding, align 4
  %cmp75 = icmp eq i32 %46, 20
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.82

land.lhs.true.77:                                 ; preds = %lor.lhs.false.74
  %47 = load i32, i32* %f, align 4
  %cmp78 = icmp eq i32 %47, 25
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %land.lhs.true.77, %land.lhs.true.71
  %48 = load i32, i32* %c.addr, align 4
  %or81 = or i32 %48, 128
  store i32 %or81, i32* %retval
  br label %return

if.end.82:                                        ; preds = %land.lhs.true.77, %lor.lhs.false.74
  %49 = load i32, i32* %c.addr, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.80, %if.then.64, %do.end.49, %if.then.32, %do.end, %if.end.16, %if.then.4
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @RecodeBuf(i8* %fbuf, i32 %flen, i32 %fenc, i32 %tenc, i8* %tbuf) #0 {
entry:
  %fbuf.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %fenc.addr = alloca i32, align 4
  %tenc.addr = alloca i32, align 4
  %tbuf.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %decstate = alloca i32, align 4
  %font = alloca i32, align 4
  store i8* %fbuf, i8** %fbuf.addr, align 8
  store i32 %flen, i32* %flen.addr, align 4
  store i32 %fenc, i32* %fenc.addr, align 4
  store i32 %tenc, i32* %tenc.addr, align 4
  store i8* %tbuf, i8** %tbuf.addr, align 8
  store i32 0, i32* %decstate, align 4
  store i32 0, i32* %font, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %flen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %fbuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %fenc.addr, align 4
  %call = call i32 @DecodeChar(i32 %5, i32 %6, i32* %decstate)
  store i32 %call, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %7, -2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %for.inc

if.end.6:                                         ; preds = %if.end
  %10 = load i8*, i8** %tbuf.addr, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %11 = load i8*, i8** %tbuf.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %tenc.addr, align 4
  %call7 = call i32 @EncodeChar(i8* %cond, i32 %13, i32 %14, i32* %font)
  %15 = load i32, i32* %j, align 4
  %add = add nsw i32 %15, %call7
  store i32 %add, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then.5
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %tbuf.addr, align 8
  %tobool8 = icmp ne i8* %17, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %for.end
  %18 = load i8*, i8** %tbuf.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idx.ext10 = sext i32 %19 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %18, i64 %idx.ext10
  br label %cond.end.13

cond.false.12:                                    ; preds = %for.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i8* [ %add.ptr11, %cond.true.9 ], [ null, %cond.false.12 ]
  %20 = load i32, i32* %tenc.addr, align 4
  %call15 = call i32 @EncodeChar(i8* %cond14, i32 -1, i32 %20, i32* %font)
  %21 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %21, %call15
  store i32 %add16, i32* %j, align 4
  %22 = load i32, i32* %j, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @ContainsSpecialDeffont(%struct.mline* %ml, i32 %xs, i32 %xe, i32 %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %ml.addr = alloca %struct.mline*, align 8
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %f = alloca i8*, align 8
  %i = alloca i8*, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %dx = alloca i32, align 4
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %encoding.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom
  %deffont = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %deffont, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %3, i32 0, i32 0
  %4 = load i8*, i8** %image, align 8
  %5 = load i32, i32* %xs.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  %6 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 2
  %7 = load i8*, i8** %font, align 8
  %8 = load i32, i32* %xs.addr, align 4
  %idx.ext2 = sext i32 %8 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 %idx.ext2
  store i8* %add.ptr3, i8** %f, align 8
  %9 = load i32, i32* %xe.addr, align 4
  %10 = load i32, i32* %xs.addr, align 4
  %sub = sub nsw i32 %9, %10
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %dx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.then.5, %if.end
  %11 = load i32, i32* %dx, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %dx, align 4
  %cmp4 = icmp sgt i32 %11, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %f, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %f, align 8
  %13 = load i8, i8* %12, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  br label %while.cond

if.end.6:                                         ; preds = %while.body
  %14 = load i8*, i8** %i, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %i, align 8
  %15 = load i8, i8* %14, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %encoding.addr, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [21 x %struct.encoding], [21 x %struct.encoding]* @encodings, i32 0, i64 %idxprom8
  %deffont10 = getelementptr inbounds %struct.encoding, %struct.encoding* %arrayidx9, i32 0, i32 2
  %18 = load i32, i32* %deffont10, align 4
  %shl = shl i32 %18, 8
  %or = or i32 %16, %shl
  %call = call i32 @recode_char_to_encoding(i32 %or, i32 8)
  store i32 %call, i32* %x, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %x, align 4
  %cmp11 = icmp ne i32 %19, %20
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.13
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.15

do.body.15:                                       ; preds = %while.end
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %do.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @LoadFontTranslation(i32 %font, i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %myfile = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %fo = alloca i32, align 4
  %x = alloca i32, align 4
  %u = alloca i32, align 4
  %c = alloca i32, align 4
  %ok = alloca i32, align 4
  %p = alloca [2 x i16]*, align 8
  %tab = alloca [2 x i16]*, align 8
  store i32 %font, i32* %font.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  store i8* %0, i8** %myfile, align 8
  %1 = load i8*, i8** %myfile, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %font.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8*, i8** @screenencodings, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** @screenencodings, align 8
  %call = call i64 @strlen(i8* %4) #5
  %cmp4 = icmp ugt i64 %call, 1014
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %5 = load i8*, i8** @screenencodings, align 8
  %6 = load i32, i32* %font.addr, align 4
  %and = and i32 %6, 255
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %5, i32 %and) #1
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay8, i8** %myfile, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.6, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %myfile, align 8
  %call10 = call %struct._IO_FILE* @secfopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  store i32 0, i32* %ok, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.117, %if.end.13
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.cond
  %8 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %8, 12
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.14
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [13 x i8], [13 x i8]* @.str.38, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp17 = icmp ne i32 %call16, %conv
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.19, %for.cond.14
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  br label %for.end.118

if.end.25:                                        ; preds = %for.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call26 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  store i32 %call26, i32* %fo, align 4
  %15 = load i32, i32* %fo, align 4
  %cmp27 = icmp eq i32 %15, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  br label %for.end.118

if.end.30:                                        ; preds = %if.end.25
  %16 = load i32, i32* %font.addr, align 4
  %cmp31 = icmp ne i32 %16, -1
  br i1 %cmp31, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.30
  %17 = load i32, i32* %font.addr, align 4
  %18 = load i32, i32* %fo, align 4
  %cmp33 = icmp ne i32 %17, %18
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  br label %for.end.118

if.end.36:                                        ; preds = %land.lhs.true, %if.end.30
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call37 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %call37, i32* %i, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call38 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  store i32 %call38, i32* %x, align 4
  %21 = load i32, i32* %x, align 4
  %cmp39 = icmp eq i32 %21, -1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  br label %for.end.118

if.end.42:                                        ; preds = %if.end.36
  %22 = load i32, i32* %i, align 4
  %shl = shl i32 %22, 8
  %23 = load i32, i32* %x, align 4
  %or = or i32 %shl, %23
  store i32 %or, i32* %i, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call43 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.42
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call44 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call44, i32* %x, align 4
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, i32* %x, align 4
  %cmp45 = icmp ne i32 %26, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp45, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call47 = call i32 @_IO_getc(%struct._IO_FILE* %28)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 1
  %conv48 = sext i32 %add to i64
  %mul = mul i64 4, %conv48
  %call49 = call noalias i8* @malloc(i64 %mul) #1
  %30 = bitcast i8* %call49 to [2 x i16]*
  store [2 x i16]* %30, [2 x i16]** %p, align 8
  %cmp50 = icmp eq [2 x i16]* %30, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %while.end
  br label %for.end.118

if.end.53:                                        ; preds = %while.end
  %31 = load [2 x i16]*, [2 x i16]** %p, align 8
  store [2 x i16]* %31, [2 x i16]** %tab, align 8
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.69, %if.end.53
  %32 = load i32, i32* %i, align 4
  %cmp55 = icmp sgt i32 %32, 0
  br i1 %cmp55, label %while.body.57, label %while.end.74

while.body.57:                                    ; preds = %while.cond.54
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call58 = call i32 @_IO_getc(%struct._IO_FILE* %33)
  store i32 %call58, i32* %x, align 4
  %34 = load i32, i32* %x, align 4
  %shl59 = shl i32 %34, 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call60 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  %or61 = or i32 %shl59, %call60
  store i32 %or61, i32* %x, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call62 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %call62, i32* %u, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call63 = call i32 @_IO_getc(%struct._IO_FILE* %37)
  store i32 %call63, i32* %c, align 4
  %38 = load i32, i32* %u, align 4
  %shl64 = shl i32 %38, 8
  %39 = load i32, i32* %c, align 4
  %or65 = or i32 %shl64, %39
  store i32 %or65, i32* %u, align 4
  %40 = load i32, i32* %c, align 4
  %cmp66 = icmp eq i32 %40, -1
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.body.57
  br label %while.end.74

if.end.69:                                        ; preds = %while.body.57
  %41 = load i32, i32* %x, align 4
  %conv70 = trunc i32 %41 to i16
  %42 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx71 = getelementptr inbounds [2 x i16], [2 x i16]* %42, i32 0, i64 0
  store i16 %conv70, i16* %arrayidx71, align 2
  %43 = load i32, i32* %u, align 4
  %conv72 = trunc i32 %43 to i16
  %44 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx73 = getelementptr inbounds [2 x i16], [2 x i16]* %44, i32 0, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2
  %45 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr = getelementptr inbounds [2 x i16], [2 x i16]* %45, i32 1
  store [2 x i16]* %incdec.ptr, [2 x i16]** %p, align 8
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond.54

while.end.74:                                     ; preds = %if.then.68, %while.cond.54
  %47 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx75 = getelementptr inbounds [2 x i16], [2 x i16]* %47, i32 0, i64 0
  store i16 0, i16* %arrayidx75, align 2
  %48 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx76 = getelementptr inbounds [2 x i16], [2 x i16]* %48, i32 0, i64 1
  store i16 0, i16* %arrayidx76, align 2
  %49 = load i32, i32* %i, align 4
  %tobool77 = icmp ne i32 %49, 0
  br i1 %tobool77, label %if.then.84, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %while.end.74
  %50 = load [2 x i16]*, [2 x i16]** %tab, align 8
  %arrayidx79 = getelementptr inbounds [2 x i16], [2 x i16]* %50, i64 0
  %arrayidx80 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx79, i32 0, i64 0
  %51 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %51 to i32
  %and82 = and i32 %conv81, 32768
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.78, %while.end.74
  %52 = load [2 x i16]*, [2 x i16]** %tab, align 8
  %53 = bitcast [2 x i16]* %52 to i8*
  call void @free(i8* %53) #1
  br label %for.end.118

if.end.85:                                        ; preds = %lor.lhs.false.78
  %54 = load i32, i32* %fo, align 4
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom86
  %tab88 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx87, i32 0, i32 0
  %55 = load [2 x i16]*, [2 x i16]** %tab88, align 8
  %tobool89 = icmp ne [2 x i16]* %55, null
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.100

land.lhs.true.90:                                 ; preds = %if.end.85
  %56 = load i32, i32* %fo, align 4
  %idxprom91 = sext i32 %56 to i64
  %arrayidx92 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom91
  %flags = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx92, i32 0, i32 1
  %57 = load i32, i32* %flags, align 4
  %and93 = and i32 %57, 1
  %cmp94 = icmp ne i32 %and93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %land.lhs.true.90
  %58 = load i32, i32* %fo, align 4
  %idxprom97 = sext i32 %58 to i64
  %arrayidx98 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom97
  %tab99 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx98, i32 0, i32 0
  %59 = load [2 x i16]*, [2 x i16]** %tab99, align 8
  %60 = bitcast [2 x i16]* %59 to i8*
  call void @free(i8* %60) #1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %land.lhs.true.90, %if.end.85
  %61 = load [2 x i16]*, [2 x i16]** %tab, align 8
  %62 = load i32, i32* %fo, align 4
  %idxprom101 = sext i32 %62 to i64
  %arrayidx102 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom101
  %tab103 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx102, i32 0, i32 0
  store [2 x i16]* %61, [2 x i16]** %tab103, align 8
  %63 = load i32, i32* %fo, align 4
  %idxprom104 = sext i32 %63 to i64
  %arrayidx105 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom104
  %flags106 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx105, i32 0, i32 1
  store i32 1, i32* %flags106, align 4
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.100
  br label %do.end.108

do.end.108:                                       ; preds = %do.body.107
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call109 = call i32 @_IO_getc(%struct._IO_FILE* %64)
  store i32 %call109, i32* %c, align 4
  %65 = load i32, i32* %c, align 4
  %cmp110 = icmp eq i32 %65, -1
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.end.108
  store i32 1, i32* %ok, align 4
  br label %for.end.118

if.end.113:                                       ; preds = %do.end.108
  %66 = load i32, i32* %c, align 4
  %cmp114 = icmp ne i32 %66, 83
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.113
  br label %for.end.118

if.end.117:                                       ; preds = %if.end.113
  store i32 1, i32* %i, align 4
  br label %for.cond

for.end.118:                                      ; preds = %if.then.116, %if.then.112, %if.then.84, %if.then.52, %if.then.41, %if.then.35, %if.then.29, %if.then.24
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call119 = call i32 @fclose(%struct._IO_FILE* %67)
  %68 = load i32, i32* %font.addr, align 4
  %cmp120 = icmp ne i32 %68, -1
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.135

land.lhs.true.122:                                ; preds = %for.end.118
  %69 = load i8*, i8** %file.addr, align 8
  %cmp123 = icmp eq i8* %69, null
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.135

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %70 = load i32, i32* %font.addr, align 4
  %idxprom126 = sext i32 %70 to i64
  %arrayidx127 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom126
  %flags128 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx127, i32 0, i32 1
  %71 = load i32, i32* %flags128, align 4
  %cmp129 = icmp eq i32 %71, 0
  br i1 %cmp129, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %land.lhs.true.125
  %72 = load i32, i32* %font.addr, align 4
  %idxprom132 = sext i32 %72 to i64
  %arrayidx133 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom132
  %flags134 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx133, i32 0, i32 1
  store i32 4, i32* %flags134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %land.lhs.true.125, %land.lhs.true.122, %for.end.118
  %73 = load i32, i32* %ok, align 4
  %tobool136 = icmp ne i32 %73, 0
  %cond = select i1 %tobool136, i32 0, i32 -1
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.then.12, %if.then.5, %if.then.3
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @secfopen(i8*, i8*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @recode_char_dw(i32 %c, i32* %c2p, i32 %to_utf, i32 %font) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %c2p.addr = alloca i32*, align 8
  %to_utf.addr = alloca i32, align 4
  %font.addr = alloca i32, align 4
  %f = alloca i32, align 4
  %p = alloca [2 x i16]*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32* %c2p, i32** %c2p.addr, align 8
  store i32 %to_utf, i32* %to_utf.addr, align 4
  store i32 %font, i32* %font.addr, align 4
  %0 = load i32, i32* %to_utf.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  store i32 %and, i32* %f, align 4
  %2 = load i32, i32* %c.addr, align 4
  %and1 = and i32 %2, 255
  %shl = shl i32 %and1, 8
  %3 = load i32*, i32** %c2p.addr, align 8
  %4 = load i32, i32* %3, align 4
  %and2 = and i32 %4, 255
  %or = or i32 %shl, %and2
  store i32 %or, i32* %c.addr, align 4
  %5 = load i32*, i32** %c2p.addr, align 8
  store i32 65535, i32* %5, align 4
  %6 = load i32, i32* %f, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom
  %tab = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx, i32 0, i32 0
  %7 = load [2 x i16]*, [2 x i16]** %tab, align 8
  store [2 x i16]* %7, [2 x i16]** %p, align 8
  %8 = load [2 x i16]*, [2 x i16]** %p, align 8
  %cmp = icmp eq [2 x i16]* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %f, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom3
  %flags = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx4, i32 0, i32 1
  %10 = load i32, i32* %flags, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %f, align 4
  %call = call i32 @LoadFontTranslation(i32 %11, i8* null)
  %12 = load i32, i32* %f, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom7
  %tab9 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx8, i32 0, i32 0
  %13 = load [2 x i16]*, [2 x i16]** %tab9, align 8
  store [2 x i16]* %13, [2 x i16]** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  %14 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool10 = icmp ne [2 x i16]* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %15 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx12 = getelementptr inbounds [2 x i16], [2 x i16]* %15, i32 0, i64 0
  %16 = load i16, i16* %arrayidx12, align 2
  %tobool13 = icmp ne i16 %16, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx14 = getelementptr inbounds [2 x i16], [2 x i16]* %17, i32 0, i64 0
  %18 = load i16, i16* %arrayidx14, align 2
  %conv = zext i16 %18 to i32
  %19 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp eq i32 %conv, %19
  br i1 %cmp15, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %for.body
  %20 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx18 = getelementptr inbounds [2 x i16], [2 x i16]* %20, i32 0, i64 1
  %21 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %21 to i32
  %call20 = call i32 @utf8_isdouble(i32 %conv19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.17
  %22 = load i32*, i32** %c2p.addr, align 8
  store i32 32, i32* %22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.17
  %23 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx24 = getelementptr inbounds [2 x i16], [2 x i16]* %23, i32 0, i64 1
  %24 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %24 to i32
  store i32 %conv25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %25 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr = getelementptr inbounds [2 x i16], [2 x i16]* %25, i32 1
  store [2 x i16]* %incdec.ptr, [2 x i16]** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end
  store i32 65311, i32* %retval
  br label %return

if.end.28:                                        ; preds = %entry
  %26 = load i32, i32* %font.addr, align 4
  %cmp29 = icmp eq i32 %26, -1
  br i1 %cmp29, label %if.then.31, label %if.end.68

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %font.addr, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.66, %if.then.31
  %27 = load i32, i32* %font.addr, align 4
  %cmp33 = icmp slt i32 %27, 24
  br i1 %cmp33, label %for.body.35, label %for.end.67

for.body.35:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %font.addr, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom36
  %tab38 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx37, i32 0, i32 0
  %29 = load [2 x i16]*, [2 x i16]** %tab38, align 8
  store [2 x i16]* %29, [2 x i16]** %p, align 8
  %30 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool39 = icmp ne [2 x i16]* %30, null
  br i1 %tobool39, label %if.then.40, label %if.end.65

if.then.40:                                       ; preds = %for.body.35
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.62, %if.then.40
  %31 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx42 = getelementptr inbounds [2 x i16], [2 x i16]* %31, i32 0, i64 1
  %32 = load i16, i16* %arrayidx42, align 2
  %tobool43 = icmp ne i16 %32, 0
  br i1 %tobool43, label %for.body.44, label %for.end.64

for.body.44:                                      ; preds = %for.cond.41
  %33 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx45 = getelementptr inbounds [2 x i16], [2 x i16]* %33, i32 0, i64 1
  %34 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %34 to i32
  %35 = load i32, i32* %c.addr, align 4
  %cmp47 = icmp eq i32 %conv46, %35
  br i1 %cmp47, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %for.body.44
  %36 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx50 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 0, i64 0
  %37 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %37 to i32
  %and52 = and i32 %conv51, 255
  %38 = load i32, i32* %font.addr, align 4
  %shl53 = shl i32 %38, 8
  %or54 = or i32 %and52, %shl53
  %or55 = or i32 %or54, 32768
  %39 = load i32*, i32** %c2p.addr, align 8
  store i32 %or55, i32* %39, align 4
  %40 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx56 = getelementptr inbounds [2 x i16], [2 x i16]* %40, i32 0, i64 0
  %41 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %41 to i32
  %shr58 = ashr i32 %conv57, 8
  %42 = load i32, i32* %font.addr, align 4
  %shl59 = shl i32 %42, 8
  %or60 = or i32 %shr58, %shl59
  store i32 %or60, i32* %retval
  br label %return

if.end.61:                                        ; preds = %for.body.44
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %43 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr63 = getelementptr inbounds [2 x i16], [2 x i16]* %43, i32 1
  store [2 x i16]* %incdec.ptr63, [2 x i16]** %p, align 8
  br label %for.cond.41

for.end.64:                                       ; preds = %for.cond.41
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %for.body.35
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %44 = load i32, i32* %font.addr, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %font.addr, align 4
  br label %for.cond.32

for.end.67:                                       ; preds = %for.cond.32
  %45 = load i32*, i32** %c2p.addr, align 8
  store i32 63, i32* %45, align 4
  store i32 63, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.28
  %46 = load i32, i32* %font.addr, align 4
  %cmp69 = icmp slt i32 %46, 32
  br i1 %cmp69, label %if.then.71, label %if.end.116

if.then.71:                                       ; preds = %if.end.68
  %47 = load i32, i32* %font.addr, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom72
  %tab74 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx73, i32 0, i32 0
  %48 = load [2 x i16]*, [2 x i16]** %tab74, align 8
  store [2 x i16]* %48, [2 x i16]** %p, align 8
  %49 = load [2 x i16]*, [2 x i16]** %p, align 8
  %cmp75 = icmp eq [2 x i16]* %49, null
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.88

land.lhs.true.77:                                 ; preds = %if.then.71
  %50 = load i32, i32* %font.addr, align 4
  %idxprom78 = sext i32 %50 to i64
  %arrayidx79 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom78
  %flags80 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx79, i32 0, i32 1
  %51 = load i32, i32* %flags80, align 4
  %cmp81 = icmp eq i32 %51, 0
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %land.lhs.true.77
  %52 = load i32, i32* %font.addr, align 4
  %call84 = call i32 @LoadFontTranslation(i32 %52, i8* null)
  %53 = load i32, i32* %font.addr, align 4
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom85
  %tab87 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx86, i32 0, i32 0
  %54 = load [2 x i16]*, [2 x i16]** %tab87, align 8
  store [2 x i16]* %54, [2 x i16]** %p, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %land.lhs.true.77, %if.then.71
  %55 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool89 = icmp ne [2 x i16]* %55, null
  br i1 %tobool89, label %if.then.90, label %if.end.115

if.then.90:                                       ; preds = %if.end.88
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.112, %if.then.90
  %56 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx92 = getelementptr inbounds [2 x i16], [2 x i16]* %56, i32 0, i64 1
  %57 = load i16, i16* %arrayidx92, align 2
  %tobool93 = icmp ne i16 %57, 0
  br i1 %tobool93, label %for.body.94, label %for.end.114

for.body.94:                                      ; preds = %for.cond.91
  %58 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx95 = getelementptr inbounds [2 x i16], [2 x i16]* %58, i32 0, i64 1
  %59 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %59 to i32
  %60 = load i32, i32* %c.addr, align 4
  %cmp97 = icmp eq i32 %conv96, %60
  br i1 %cmp97, label %if.then.99, label %if.end.111

if.then.99:                                       ; preds = %for.body.94
  %61 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx100 = getelementptr inbounds [2 x i16], [2 x i16]* %61, i32 0, i64 0
  %62 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %62 to i32
  %and102 = and i32 %conv101, 255
  %63 = load i32, i32* %font.addr, align 4
  %shl103 = shl i32 %63, 8
  %or104 = or i32 %and102, %shl103
  %or105 = or i32 %or104, 32768
  %64 = load i32*, i32** %c2p.addr, align 8
  store i32 %or105, i32* %64, align 4
  %65 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx106 = getelementptr inbounds [2 x i16], [2 x i16]* %65, i32 0, i64 0
  %66 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %66 to i32
  %shr108 = ashr i32 %conv107, 8
  %67 = load i32, i32* %font.addr, align 4
  %shl109 = shl i32 %67, 8
  %or110 = or i32 %shr108, %shl109
  store i32 %or110, i32* %retval
  br label %return

if.end.111:                                       ; preds = %for.body.94
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %68 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr113 = getelementptr inbounds [2 x i16], [2 x i16]* %68, i32 1
  store [2 x i16]* %incdec.ptr113, [2 x i16]** %p, align 8
  br label %for.cond.91

for.end.114:                                      ; preds = %for.cond.91
  br label %if.end.115

if.end.115:                                       ; preds = %for.end.114, %if.end.88
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.68
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.then.99, %for.end.67, %if.then.49, %if.end.27, %if.end.23
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @recode_char(i32 %c, i32 %to_utf, i32 %font) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %to_utf.addr = alloca i32, align 4
  %font.addr = alloca i32, align 4
  %f = alloca i32, align 4
  %p = alloca [2 x i16]*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %to_utf, i32* %to_utf.addr, align 4
  store i32 %font, i32* %font.addr, align 4
  %0 = load i32, i32* %to_utf.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.55

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* %c.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %c.addr, align 4
  %shr = ashr i32 %3, 8
  %and = and i32 %shr, 255
  store i32 %and, i32* %f, align 4
  %4 = load i32, i32* %c.addr, align 4
  %and2 = and i32 %4, 255
  store i32 %and2, i32* %c.addr, align 4
  %5 = load i32, i32* %f, align 4
  switch i32 %5, label %sw.default [
    i32 67, label %sw.bb
    i32 69, label %sw.bb.3
    i32 72, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* %f, align 4
  %xor = xor i32 %6, 118
  store i32 %xor, i32* %f, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %7 = load i32, i32* %f, align 4
  %xor4 = xor i32 %7, 115
  store i32 %xor4, i32* %f, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %8 = load i32, i32* %f, align 4
  %xor6 = xor i32 %8, 127
  store i32 %xor6, i32* %f, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb
  %9 = load i32, i32* %f, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom
  %tab = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx, i32 0, i32 0
  %10 = load [2 x i16]*, [2 x i16]** %tab, align 8
  store [2 x i16]* %10, [2 x i16]** %p, align 8
  %11 = load [2 x i16]*, [2 x i16]** %p, align 8
  %cmp7 = icmp eq [2 x i16]* %11, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %sw.epilog
  %12 = load i32, i32* %f, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom8
  %flags = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx9, i32 0, i32 1
  %13 = load i32, i32* %flags, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %f, align 4
  %call = call i32 @LoadFontTranslation(i32 %14, i8* null)
  %15 = load i32, i32* %f, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom12
  %tab14 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx13, i32 0, i32 0
  %16 = load [2 x i16]*, [2 x i16]** %tab14, align 8
  store [2 x i16]* %16, [2 x i16]** %p, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %land.lhs.true, %sw.epilog
  %17 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool16 = icmp ne [2 x i16]* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.53

if.then.17:                                       ; preds = %if.end.15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %18 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx18 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i32 0, i64 0
  %19 = load i16, i16* %arrayidx18, align 2
  %tobool19 = icmp ne i16 %19, 0
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx20 = getelementptr inbounds [2 x i16], [2 x i16]* %20, i64 0
  %arrayidx21 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx20, i32 0, i64 0
  %21 = load i16, i16* %arrayidx21, align 2
  %conv = zext i16 %21 to i32
  %and22 = and i32 %conv, 32768
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.44

land.lhs.true.24:                                 ; preds = %for.body
  %22 = load i32, i32* %c.addr, align 4
  %23 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx25 = getelementptr inbounds [2 x i16], [2 x i16]* %23, i64 0
  %arrayidx26 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx25, i32 0, i64 0
  %24 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %24 to i32
  %and28 = and i32 %conv27, 32767
  %cmp29 = icmp sle i32 %22, %and28
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.44

land.lhs.true.31:                                 ; preds = %land.lhs.true.24
  %25 = load i32, i32* %c.addr, align 4
  %26 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx32 = getelementptr inbounds [2 x i16], [2 x i16]* %26, i64 -1
  %arrayidx33 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx32, i32 0, i64 0
  %27 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %27 to i32
  %cmp35 = icmp sge i32 %25, %conv34
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %land.lhs.true.31
  %28 = load i32, i32* %c.addr, align 4
  %29 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx38 = getelementptr inbounds [2 x i16], [2 x i16]* %29, i64 -1
  %arrayidx39 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx38, i32 0, i64 0
  %30 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %30 to i32
  %sub = sub nsw i32 %28, %conv40
  %31 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx41 = getelementptr inbounds [2 x i16], [2 x i16]* %31, i64 -1
  %arrayidx42 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx41, i32 0, i64 1
  %32 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %32 to i32
  %add = add nsw i32 %sub, %conv43
  store i32 %add, i32* %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.31, %land.lhs.true.24, %for.body
  %33 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx45 = getelementptr inbounds [2 x i16], [2 x i16]* %33, i32 0, i64 0
  %34 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %34 to i32
  %35 = load i32, i32* %c.addr, align 4
  %cmp47 = icmp eq i32 %conv46, %35
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.44
  %36 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx50 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 0, i64 1
  %37 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %37 to i32
  store i32 %conv51, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %38 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr = getelementptr inbounds [2 x i16], [2 x i16]* %38, i32 1
  store [2 x i16]* %incdec.ptr, [2 x i16]** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %if.end.15
  %39 = load i32, i32* %c.addr, align 4
  %and54 = and i32 %39, 255
  store i32 %and54, i32* %retval
  br label %return

if.end.55:                                        ; preds = %entry
  %40 = load i32, i32* %font.addr, align 4
  %cmp56 = icmp eq i32 %40, -1
  br i1 %cmp56, label %if.then.58, label %if.end.119

if.then.58:                                       ; preds = %if.end.55
  %41 = load i32, i32* %c.addr, align 4
  %cmp59 = icmp slt i32 %41, 256
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  %42 = load i32, i32* %c.addr, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.58
  store i32 32, i32* %font.addr, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.117, %if.end.62
  %43 = load i32, i32* %font.addr, align 4
  %cmp64 = icmp slt i32 %43, 128
  br i1 %cmp64, label %for.body.66, label %for.end.118

for.body.66:                                      ; preds = %for.cond.63
  %44 = load i32, i32* %font.addr, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom67
  %tab69 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx68, i32 0, i32 0
  %45 = load [2 x i16]*, [2 x i16]** %tab69, align 8
  store [2 x i16]* %45, [2 x i16]** %p, align 8
  %46 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool70 = icmp ne [2 x i16]* %46, null
  br i1 %tobool70, label %if.then.71, label %if.end.116

if.then.71:                                       ; preds = %for.body.66
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.113, %if.then.71
  %47 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx73 = getelementptr inbounds [2 x i16], [2 x i16]* %47, i32 0, i64 1
  %48 = load i16, i16* %arrayidx73, align 2
  %tobool74 = icmp ne i16 %48, 0
  br i1 %tobool74, label %for.body.75, label %for.end.115

for.body.75:                                      ; preds = %for.cond.72
  %49 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx76 = getelementptr inbounds [2 x i16], [2 x i16]* %49, i64 0
  %arrayidx77 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx76, i32 0, i64 0
  %50 = load i16, i16* %arrayidx77, align 2
  %conv78 = zext i16 %50 to i32
  %and79 = and i32 %conv78, 32768
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.102

land.lhs.true.81:                                 ; preds = %for.body.75
  %51 = load i32, i32* %c.addr, align 4
  %52 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx82 = getelementptr inbounds [2 x i16], [2 x i16]* %52, i64 0
  %arrayidx83 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx82, i32 0, i64 1
  %53 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %53 to i32
  %cmp85 = icmp sle i32 %51, %conv84
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.102

land.lhs.true.87:                                 ; preds = %land.lhs.true.81
  %54 = load i32, i32* %c.addr, align 4
  %55 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx88 = getelementptr inbounds [2 x i16], [2 x i16]* %55, i64 -1
  %arrayidx89 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx88, i32 0, i64 1
  %56 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %56 to i32
  %cmp91 = icmp sge i32 %54, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %land.lhs.true.87
  %57 = load i32, i32* %c.addr, align 4
  %58 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx94 = getelementptr inbounds [2 x i16], [2 x i16]* %58, i64 -1
  %arrayidx95 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx94, i32 0, i64 1
  %59 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %59 to i32
  %sub97 = sub nsw i32 %57, %conv96
  %60 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx98 = getelementptr inbounds [2 x i16], [2 x i16]* %60, i64 -1
  %arrayidx99 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx98, i32 0, i64 0
  %61 = load i16, i16* %arrayidx99, align 2
  %conv100 = zext i16 %61 to i32
  %add101 = add nsw i32 %sub97, %conv100
  %62 = load i32, i32* %font.addr, align 4
  %shl = shl i32 %62, 8
  %or = or i32 %add101, %shl
  store i32 %or, i32* %retval
  br label %return

if.end.102:                                       ; preds = %land.lhs.true.87, %land.lhs.true.81, %for.body.75
  %63 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx103 = getelementptr inbounds [2 x i16], [2 x i16]* %63, i32 0, i64 1
  %64 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %64 to i32
  %65 = load i32, i32* %c.addr, align 4
  %cmp105 = icmp eq i32 %conv104, %65
  br i1 %cmp105, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %if.end.102
  %66 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx108 = getelementptr inbounds [2 x i16], [2 x i16]* %66, i32 0, i64 0
  %67 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %67 to i32
  %68 = load i32, i32* %font.addr, align 4
  %shl110 = shl i32 %68, 8
  %or111 = or i32 %conv109, %shl110
  store i32 %or111, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.102
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %69 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr114 = getelementptr inbounds [2 x i16], [2 x i16]* %69, i32 1
  store [2 x i16]* %incdec.ptr114, [2 x i16]** %p, align 8
  br label %for.cond.72

for.end.115:                                      ; preds = %for.cond.72
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.115, %for.body.66
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %70 = load i32, i32* %font.addr, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %font.addr, align 4
  br label %for.cond.63

for.end.118:                                      ; preds = %for.cond.63
  store i32 63, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.end.55
  %71 = load i32, i32* %c.addr, align 4
  %cmp120 = icmp slt i32 %71, 128
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.127

land.lhs.true.122:                                ; preds = %if.end.119
  %72 = load i32, i32* %font.addr, align 4
  %and123 = and i32 %72, 128
  %cmp124 = icmp ne i32 %and123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.122
  %73 = load i32, i32* %c.addr, align 4
  store i32 %73, i32* %retval
  br label %return

if.end.127:                                       ; preds = %land.lhs.true.122, %if.end.119
  %74 = load i32, i32* %font.addr, align 4
  %cmp128 = icmp sge i32 %74, 32
  br i1 %cmp128, label %if.then.130, label %if.end.205

if.then.130:                                      ; preds = %if.end.127
  %75 = load i32, i32* %font.addr, align 4
  %idxprom131 = sext i32 %75 to i64
  %arrayidx132 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom131
  %tab133 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx132, i32 0, i32 0
  %76 = load [2 x i16]*, [2 x i16]** %tab133, align 8
  store [2 x i16]* %76, [2 x i16]** %p, align 8
  %77 = load [2 x i16]*, [2 x i16]** %p, align 8
  %cmp134 = icmp eq [2 x i16]* %77, null
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.147

land.lhs.true.136:                                ; preds = %if.then.130
  %78 = load i32, i32* %font.addr, align 4
  %idxprom137 = sext i32 %78 to i64
  %arrayidx138 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom137
  %flags139 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx138, i32 0, i32 1
  %79 = load i32, i32* %flags139, align 4
  %cmp140 = icmp eq i32 %79, 0
  br i1 %cmp140, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %land.lhs.true.136
  %80 = load i32, i32* %font.addr, align 4
  %call143 = call i32 @LoadFontTranslation(i32 %80, i8* null)
  %81 = load i32, i32* %font.addr, align 4
  %idxprom144 = sext i32 %81 to i64
  %arrayidx145 = getelementptr inbounds [256 x %struct.recodetab], [256 x %struct.recodetab]* @recodetabs, i32 0, i64 %idxprom144
  %tab146 = getelementptr inbounds %struct.recodetab, %struct.recodetab* %arrayidx145, i32 0, i32 0
  %82 = load [2 x i16]*, [2 x i16]** %tab146, align 8
  store [2 x i16]* %82, [2 x i16]** %p, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.142, %land.lhs.true.136, %if.then.130
  %83 = load [2 x i16]*, [2 x i16]** %p, align 8
  %tobool148 = icmp ne [2 x i16]* %83, null
  br i1 %tobool148, label %if.then.149, label %if.end.204

if.then.149:                                      ; preds = %if.end.147
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.201, %if.then.149
  %84 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx151 = getelementptr inbounds [2 x i16], [2 x i16]* %84, i32 0, i64 1
  %85 = load i16, i16* %arrayidx151, align 2
  %tobool152 = icmp ne i16 %85, 0
  br i1 %tobool152, label %for.body.153, label %for.end.203

for.body.153:                                     ; preds = %for.cond.150
  %86 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx154 = getelementptr inbounds [2 x i16], [2 x i16]* %86, i64 0
  %arrayidx155 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx154, i32 0, i64 0
  %87 = load i16, i16* %arrayidx155, align 2
  %conv156 = zext i16 %87 to i32
  %and157 = and i32 %conv156, 32768
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %land.lhs.true.159, label %if.end.184

land.lhs.true.159:                                ; preds = %for.body.153
  %88 = load i32, i32* %c.addr, align 4
  %89 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx160 = getelementptr inbounds [2 x i16], [2 x i16]* %89, i64 0
  %arrayidx161 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx160, i32 0, i64 1
  %90 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %90 to i32
  %cmp163 = icmp sle i32 %88, %conv162
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.184

land.lhs.true.165:                                ; preds = %land.lhs.true.159
  %91 = load i32, i32* %c.addr, align 4
  %92 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx166 = getelementptr inbounds [2 x i16], [2 x i16]* %92, i64 -1
  %arrayidx167 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx166, i32 0, i64 1
  %93 = load i16, i16* %arrayidx167, align 2
  %conv168 = zext i16 %93 to i32
  %cmp169 = icmp sge i32 %91, %conv168
  br i1 %cmp169, label %if.then.171, label %if.end.184

if.then.171:                                      ; preds = %land.lhs.true.165
  %94 = load i32, i32* %c.addr, align 4
  %95 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx172 = getelementptr inbounds [2 x i16], [2 x i16]* %95, i64 -1
  %arrayidx173 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx172, i32 0, i64 1
  %96 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %96 to i32
  %sub175 = sub nsw i32 %94, %conv174
  %97 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx176 = getelementptr inbounds [2 x i16], [2 x i16]* %97, i64 -1
  %arrayidx177 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx176, i32 0, i64 0
  %98 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %98 to i32
  %add179 = add nsw i32 %sub175, %conv178
  %99 = load i32, i32* %font.addr, align 4
  %and180 = and i32 %99, 128
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.171
  br label %cond.end

cond.false:                                       ; preds = %if.then.171
  %100 = load i32, i32* %font.addr, align 4
  %shl182 = shl i32 %100, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl182, %cond.false ]
  %or183 = or i32 %add179, %cond
  store i32 %or183, i32* %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.165, %land.lhs.true.159, %for.body.153
  %101 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx185 = getelementptr inbounds [2 x i16], [2 x i16]* %101, i32 0, i64 1
  %102 = load i16, i16* %arrayidx185, align 2
  %conv186 = zext i16 %102 to i32
  %103 = load i32, i32* %c.addr, align 4
  %cmp187 = icmp eq i32 %conv186, %103
  br i1 %cmp187, label %if.then.189, label %if.end.200

if.then.189:                                      ; preds = %if.end.184
  %104 = load [2 x i16]*, [2 x i16]** %p, align 8
  %arrayidx190 = getelementptr inbounds [2 x i16], [2 x i16]* %104, i32 0, i64 0
  %105 = load i16, i16* %arrayidx190, align 2
  %conv191 = zext i16 %105 to i32
  %106 = load i32, i32* %font.addr, align 4
  %and192 = and i32 %106, 128
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %if.then.189
  br label %cond.end.197

cond.false.195:                                   ; preds = %if.then.189
  %107 = load i32, i32* %font.addr, align 4
  %shl196 = shl i32 %107, 8
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.195, %cond.true.194
  %cond198 = phi i32 [ 0, %cond.true.194 ], [ %shl196, %cond.false.195 ]
  %or199 = or i32 %conv191, %cond198
  store i32 %or199, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.end.184
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %108 = load [2 x i16]*, [2 x i16]** %p, align 8
  %incdec.ptr202 = getelementptr inbounds [2 x i16], [2 x i16]* %108, i32 1
  store [2 x i16]* %incdec.ptr202, [2 x i16]** %p, align 8
  br label %for.cond.150

for.end.203:                                      ; preds = %for.cond.150
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %if.end.147
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.127
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.205, %cond.end.197, %cond.end, %if.then.126, %for.end.118, %if.then.107, %if.then.93, %if.then.61, %if.end.53, %if.then.49, %if.then.37, %if.then.1
  %109 = load i32, i32* %retval
  ret i32 %109
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
