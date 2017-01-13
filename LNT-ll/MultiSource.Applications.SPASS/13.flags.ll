; ModuleID = './MultiSource.Applications.SPASS/13.flags.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FLAG_PROPERTY = type { i32, i32, i32, i8* }

@flag_CLEAN = constant i32 -5, align 4
@.str = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SOS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Stdin\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Interactive\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Flotter\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Loops\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Splits\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Sorts\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PSub\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DocSST\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PRew\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PCRw\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PCon\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PAED\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"PTaut\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"PObv\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PSSi\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"PSST\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"DocProof\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"PMRR\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"PUnC\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"PDer\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"PGiven\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"PLabels\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"PKept\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"DocSplit\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"PProblem\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"PEmptyClause\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"PStatistic\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"FPModel\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"FPDFGProof\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"PFlags\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"POptSkolem\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"PStrSkolem\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"PBDC\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"PBInc\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PApplyDefs\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"TimeLimit\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"IEmS\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ISoR\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"IEqR\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"IERR\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"IEqF\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"IMPm\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ISpR\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"IOPm\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ISPm\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ISpL\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"IORe\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"ISRe\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ISHy\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"IOHy\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"IURR\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"IOFc\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ISFc\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"IBUR\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"IDEF\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"IUnR\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"RFRew\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"RBRew\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"RFCRw\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"RBCRw\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"RUnC\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"RTer\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RFSub\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"RBSub\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"RFMRR\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"RBMRR\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"RObv\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"RTaut\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"RSSi\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"RSST\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"RAED\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"RCon\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"RInput\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"ApplyDefs\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"FullRed\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"SatInput\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"WDRatio\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"PrefCon\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"FuncWeight\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"VarWeight\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"PrefVar\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"BoundMode\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"BoundStart\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"BoundLoops\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"CNFOptSkolem\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"CNFProofSteps\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"CNFRenaming\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"CNFPRenaming\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"CNFStrSkolem\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"CNFFEqR\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"TDfg2OtterOptions\00", align 1
@flag_DEFAULTSTORE = internal global [96 x i32] zeroinitializer, align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str.96 = private unnamed_addr constant [27 x i8] c"list_of_settings(SPASS).{*\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"set_flag(%s,%d).\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"\0A %-30s\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c" %-30s\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c" set_flag(%s,%d).\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"*}\0Aend_of_list.\0A\00", align 1
@flag_PROPERTIES = internal global [96 x %struct.FLAG_PROPERTY] zeroinitializer, align 16
@.str.102 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @flag_Init() #0 {
entry:
  call void @flag_InitIntern(i32 0, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 4, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 1, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 2, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 3, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 11, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -2, i32 2147483647)
  call void @flag_InitIntern(i32 5, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -2, i32 2147483647)
  call void @flag_InitIntern(i32 40, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 12, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 6, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -2, i32 2147483647)
  call void @flag_InitIntern(i32 8, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 13, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 14, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 15, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 22, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 16, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 17, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 18, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 19, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 9, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 20, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 21, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 23, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 24, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 25, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 26, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 10, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 27, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 28, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 29, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 30, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 31, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 32, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 33, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 34, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 35, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 36, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 37, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 7, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 -1, i32 -2, i32 2147483647)
  call void @flag_InitIntern(i32 38, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 -1, i32 3)
  call void @flag_InitIntern(i32 59, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 60, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 61, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 62, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 63, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 64, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 65, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 66, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 67, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 68, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 69, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 70, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 71, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 72, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 73, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 74, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 75, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 77, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 78, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 76, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 79, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 80, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 81, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 82, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 86, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 87, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 0, i32 -1, i32 2147483647)
  call void @flag_InitIntern(i32 91, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 92, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 83, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 84, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 85, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 88, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 90, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 89, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 93, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 94, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 39, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 51, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 -1, i32 2147483647)
  call void @flag_InitIntern(i32 44, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 41, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 42, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 5, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 43, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 1, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 45, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i32 1, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 46, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 1, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 47, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 48, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 -1, i32 3)
  call void @flag_InitIntern(i32 49, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i32 -1, i32 -2, i32 2147483647)
  call void @flag_InitIntern(i32 50, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i32 1, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 52, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 53, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 55, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i32 100, i32 0, i32 2147483647)
  call void @flag_InitIntern(i32 56, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 57, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 -1, i32 2)
  call void @flag_InitIntern(i32 54, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 58, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i32 1, i32 -1, i32 2)
  call void @flag_InitIntern(i32 95, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 -1, i32 4)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_InitIntern(i32 %Flag, i32 %Type, i8* %Name, i32 %Value, i32 %Minimum, i32 %Maximum) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  %Name.addr = alloca i8*, align 8
  %Value.addr = alloca i32, align 4
  %Minimum.addr = alloca i32, align 4
  %Maximum.addr = alloca i32, align 4
  %property = alloca %struct.FLAG_PROPERTY*, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  store i32 %Type, i32* %Type.addr, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i32 %Value, i32* %Value.addr, align 4
  store i32 %Minimum, i32* %Minimum.addr, align 4
  store i32 %Maximum, i32* %Maximum.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i32 0, i64 %idxprom
  store %struct.FLAG_PROPERTY* %arrayidx, %struct.FLAG_PROPERTY** %property, align 8
  %2 = load i32, i32* %Type.addr, align 4
  call void @flag_CheckFlagTypeInRange(i32 %2)
  %3 = load i32, i32* %Type.addr, align 4
  %4 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %property, align 8
  %type = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %4, i32 0, i32 2
  store i32 %3, i32* %type, align 4
  %5 = load i8*, i8** %Name.addr, align 8
  %6 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %property, align 8
  %name = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %6, i32 0, i32 3
  store i8* %5, i8** %name, align 8
  %7 = load i32, i32* %Minimum.addr, align 4
  %8 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %property, align 8
  %minimum = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %8, i32 0, i32 0
  store i32 %7, i32* %minimum, align 4
  %9 = load i32, i32* %Maximum.addr, align 4
  %10 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %property, align 8
  %maximum = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %10, i32 0, i32 1
  store i32 %9, i32* %maximum, align 4
  %11 = load i32, i32* %Value.addr, align 4
  %12 = load i32, i32* %Flag.addr, align 4
  %idxprom1 = zext i32 %12 to i64
  %arrayidx2 = getelementptr inbounds [96 x i32], [96 x i32]* @flag_DEFAULTSTORE, i32 0, i64 %idxprom1
  store i32 %11, i32* %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @flag_DefaultStore() #0 {
entry:
  ret i32* getelementptr inbounds ([96 x i32], [96 x i32]* @flag_DEFAULTSTORE, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @flag_Print(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i32*, i32** %Store.addr, align 8
  call void @flag_FPrint(%struct._IO_FILE* %0, i32* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @flag_FPrint(%struct._IO_FILE* %File, i32* %Store) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %name = alloca [30 x i8], align 16
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %call1 = call i8* @flag_Name(i32 %2)
  %3 = load i32*, i32** %Store.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i32 @flag_GetFlagValue(i32* %3, i32 %4)
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* %call1, i32 %call2) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* %arraydecay4)
  %6 = load i32, i32* %i, align 4
  %add = add i32 %6, 1
  %cmp6 = icmp ult i32 %add, 96
  br i1 %cmp6, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  %arraydecay7 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %add8 = add i32 %7, 1
  %call9 = call i8* @flag_Name(i32 %add8)
  %8 = load i32*, i32** %Store.addr, align 8
  %9 = load i32, i32* %i, align 4
  %add10 = add i32 %9, 1
  %call11 = call i32 @flag_GetFlagValue(i32* %8, i32 %add10)
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* %call9, i32 %call11) #6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %arraydecay13 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* %arraydecay13)
  %11 = load i32, i32* %i, align 4
  %add15 = add i32 %11, 2
  %cmp16 = icmp ult i32 %add15, 96
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %arraydecay18 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %12 = load i32, i32* %i, align 4
  %add19 = add i32 %12, 2
  %call20 = call i8* @flag_Name(i32 %add19)
  %13 = load i32*, i32** %Store.addr, align 8
  %14 = load i32, i32* %i, align 4
  %add21 = add i32 %14, 2
  %call22 = call i32 @flag_GetFlagValue(i32* %13, i32 %add21)
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0), i8* %call20, i32 %call22) #6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %arraydecay24 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* %arraydecay24)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %16 = load i32, i32* %i, align 4
  %add27 = add i32 %16, 3
  store i32 %add27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %17)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @flag_Name(i32 %Flag) #0 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %arrayidx, i32 0, i32 3
  %2 = load i8*, i8** %name, align 8
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* %Store, i32 %FlagId) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %Value, align 4
  %4 = load i32, i32* %Value, align 4
  ret i32 %4
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @flag_Lookup(i8* %String) #0 {
entry:
  %String.addr = alloca i8*, align 8
  store i8* %String, i8** %String.addr, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %call = call i32 @flag_Id(i8* %0)
  %cmp = icmp ne i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @flag_Id(i8* %String) #0 {
entry:
  %retval = alloca i32, align 4
  %String.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %String, i8** %String.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i8* @flag_Name(i32 %1)
  %2 = load i8*, i8** %String.addr, align 8
  %call1 = call i32 @string_Equal(i8* %call, i8* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @string_Equal(i8* %S1, i8* %S2) #1 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @flag_Minimum(i32 %Flag) #0 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i32 0, i64 %idxprom
  %minimum = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %minimum, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @flag_Maximum(i32 %Flag) #0 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i32 0, i64 %idxprom
  %maximum = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %maximum, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @flag_Type(i32 %Flag) #0 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %type, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @flag_ClearInferenceRules(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @flag_IsInference(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32*, i32** %Store.addr, align 8
  %3 = load i32, i32* %i, align 4
  call void @flag_SetFlagValue(i32* %2, i32 %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsInference(i32 %Flag) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_IsOfType(i32 %1, i32 0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32, i32* %Value.addr, align 4
  call void @flag_CheckFlagValueInRange(i32 %1, i32 %2)
  %3 = load i32, i32* %Value.addr, align 4
  %4 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @flag_ClearReductionRules(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @flag_IsReduction(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32*, i32** %Store.addr, align 8
  %3 = load i32, i32* %i, align 4
  call void @flag_SetFlagValue(i32* %2, i32 %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsReduction(i32 %Flag) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_IsOfType(i32 %1, i32 2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @flag_ClearPrinting(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @flag_IsPrinting(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32*, i32** %Store.addr, align 8
  %3 = load i32, i32* %i, align 4
  call void @flag_SetFlagValue(i32* %2, i32 %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsPrinting(i32 %Flag) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_IsOfType(i32 %1, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @flag_SetReductionsToDefaults(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @flag_IsReduction(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32*, i32** %Store.addr, align 8
  %3 = load i32, i32* %i, align 4
  call void @flag_SetFlagToDefault(i32* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagToDefault(i32* %Store, i32 %Flag) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %Flag.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32*, i32** %Store.addr, align 8
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32* @flag_DefaultStore()
  %2 = load i32, i32* %Flag.addr, align 4
  %call1 = call i32 @flag_GetFlagValue(i32* %call, i32 %2)
  call void @flag_SetFlagValue(i32* %0, i32 %1, i32 %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @flag_InitFlotterSubproofFlags(i32* %Source, i32* %Target) #0 {
entry:
  %Source.addr = alloca i32*, align 8
  %Target.addr = alloca i32*, align 8
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Target, i32** %Target.addr, align 8
  %0 = load i32*, i32** %Target.addr, align 8
  call void @flag_ClearPrinting(i32* %0)
  %1 = load i32*, i32** %Target.addr, align 8
  call void @flag_ClearInferenceRules(i32* %1)
  %2 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetReductionsToDefaults(i32* %2)
  %3 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagToDefault(i32* %3, i32 58)
  %4 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagToDefault(i32* %4, i32 39)
  %5 = load i32*, i32** %Source.addr, align 8
  %6 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %5, i32* %6, i32 9)
  %7 = load i32*, i32** %Source.addr, align 8
  %8 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %7, i32* %8, i32 55)
  %9 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagValue(i32* %9, i32 77, i32 1)
  %10 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagValue(i32* %10, i32 52, i32 0)
  %11 = load i32*, i32** %Source.addr, align 8
  %12 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %11, i32* %12, i32 45)
  %13 = load i32*, i32** %Source.addr, align 8
  %14 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %13, i32* %14, i32 46)
  %15 = load i32*, i32** %Source.addr, align 8
  %16 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %15, i32* %16, i32 38)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_TransferFlag(i32* %Source, i32* %Destination, i32 %FlagId) #1 {
entry:
  %Source.addr = alloca i32*, align 8
  %Destination.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Destination, i32** %Destination.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32*, i32** %Destination.addr, align 8
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32*, i32** %Source.addr, align 8
  %3 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_GetFlagValue(i32* %2, i32 %3)
  call void @flag_SetFlagValue(i32* %0, i32 %1, i32 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @flag_InitFlotterFlags(i32* %Source, i32* %Target) #0 {
entry:
  %Source.addr = alloca i32*, align 8
  %Target.addr = alloca i32*, align 8
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Target, i32** %Target.addr, align 8
  %0 = load i32*, i32** %Source.addr, align 8
  %1 = load i32*, i32** %Target.addr, align 8
  call void @flag_InitFlotterSubproofFlags(i32* %0, i32* %1)
  %2 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagToDefault(i32* %2, i32 52)
  %3 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagToDefault(i32* %3, i32 45)
  %4 = load i32*, i32** %Target.addr, align 8
  call void @flag_SetFlagToDefault(i32* %4, i32 46)
  %5 = load i32*, i32** %Source.addr, align 8
  %6 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %5, i32* %6, i32 56)
  %7 = load i32*, i32** %Source.addr, align 8
  %8 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %7, i32* %8, i32 53)
  %9 = load i32*, i32** %Source.addr, align 8
  %10 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %9, i32* %10, i32 54)
  %11 = load i32*, i32** %Source.addr, align 8
  %12 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %11, i32* %12, i32 37)
  %13 = load i32*, i32** %Source.addr, align 8
  %14 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %13, i32* %14, i32 35)
  %15 = load i32*, i32** %Source.addr, align 8
  %16 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %15, i32* %16, i32 36)
  %17 = load i32*, i32** %Source.addr, align 8
  %18 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %17, i32* %18, i32 57)
  %19 = load i32*, i32** %Source.addr, align 8
  %20 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %19, i32* %20, i32 33)
  %21 = load i32*, i32** %Source.addr, align 8
  %22 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %21, i32* %22, i32 34)
  %23 = load i32*, i32** %Source.addr, align 8
  %24 = load i32*, i32** %Target.addr, align 8
  call void @flag_TransferFlag(i32* %23, i32* %24, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @flag_CheckStore(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %value = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %value, align 4
  %4 = load i32, i32* %value, align 4
  %cmp1 = icmp ne i32 %4, -5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %value, align 4
  call void @flag_CheckFlagValueInRange(i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Value.addr, align 4
  %2 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_Minimum(i32 %2)
  %cmp = icmp sle i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* %Value.addr, align 4
  %5 = load i32, i32* %FlagId.addr, align 4
  %call2 = call i8* @flag_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.102, i32 0, i32 0), i32 %4, i8* %call2)
  call void @misc_Error()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %Value.addr, align 4
  %7 = load i32, i32* %FlagId.addr, align 4
  %call3 = call i32 @flag_Maximum(i32 %7)
  %cmp4 = icmp sge i32 %6, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load i32, i32* %Value.addr, align 4
  %10 = load i32, i32* %FlagId.addr, align 4
  %call7 = call i8* @flag_Name(i32 %10)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagTypeInRange(i32 %Type) #1 {
entry:
  %Type.addr = alloca i32, align 4
  store i32 %Type, i32* %Type.addr, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsOfType(i32 %Flag, i32 %Type) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  store i32 %Type, i32* %Type.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Type.addr, align 4
  call void @flag_CheckFlagTypeInRange(i32 %1)
  %2 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_Type(i32 %2)
  %3 = load i32, i32* %Type.addr, align 4
  %cmp = icmp eq i32 %call, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
