; ModuleID = './src/parsessh.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.YYSTYPE = type { i8* }
%struct.style_sheet = type { i8*, i8*, i8*, [4 x i32], [4 x i32], i8*, %struct.darray*, i32, [256 x i8], [256 x i8], %struct.words*, %struct.words*, %struct.darray* }
%struct.words = type { %struct.darray*, %struct.darray*, [256 x %struct.rule**], [256 x %struct.rule**] }
%struct.rule = type { i8*, %struct.re_pattern_buffer*, %struct.darray* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.fface_s = type { i32, i32 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.pattern = type { i8*, i64 }
%struct.faced_string = type { i8*, i32, %struct.fface_s }
%struct.sequence = type { %struct.rule*, %struct.fface_s, %struct.words*, %struct.words* }

@sshdebug = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@sshnerrs = common global i32 0, align 4
@sshchar = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Stack size increased to %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@sshpact = internal constant [200 x i16] [i16 11, i16 -2, i16 31, i16 -150, i16 39, i16 -150, i16 -150, i16 98, i16 66, i16 126, i16 183, i16 56, i16 62, i16 65, i16 75, i16 91, i16 40, i16 175, i16 77, i16 7, i16 80, i16 109, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 69, i16 60, i16 132, i16 94, i16 60, i16 133, i16 35, i16 131, i16 142, i16 140, i16 167, i16 -150, i16 126, i16 183, i16 -150, i16 168, i16 169, i16 -150, i16 8, i16 170, i16 129, i16 -150, i16 18, i16 120, i16 -150, i16 1, i16 -150, i16 -150, i16 -150, i16 154, i16 189, i16 -150, i16 18, i16 120, i16 -150, i16 4, i16 -150, i16 194, i16 -150, i16 -150, i16 -150, i16 138, i16 34, i16 143, i16 10, i16 -150, i16 172, i16 173, i16 -150, i16 -150, i16 5, i16 198, i16 196, i16 -150, i16 -150, i16 176, i16 -150, i16 -150, i16 14, i16 60, i16 -150, i16 60, i16 -150, i16 -150, i16 -150, i16 129, i16 120, i16 -150, i16 -150, i16 -150, i16 69, i16 -150, i16 -150, i16 155, i16 69, i16 120, i16 -150, i16 -150, i16 94, i16 94, i16 60, i16 60, i16 111, i16 129, i16 120, i16 60, i16 111, i16 197, i16 35, i16 -150, i16 -150, i16 146, i16 -150, i16 -150, i16 -150, i16 -150, i16 181, i16 179, i16 -150, i16 -150, i16 -150, i16 92, i16 118, i16 -150, i16 -150, i16 -150, i16 166, i16 21, i16 127, i16 -150, i16 -150, i16 22, i16 111, i16 38, i16 183, i16 148, i16 38, i16 -150, i16 -150, i16 195, i16 151, i16 152, i16 111, i16 38, i16 195, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 129, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 38, i16 195, i16 195, i16 191, i16 195, i16 183, i16 -150, i16 60, i16 60, i16 38, i16 195, i16 195, i16 -150, i16 -150, i16 195, i16 -150, i16 -150, i16 -150, i16 -150, i16 199, i16 38, i16 38, i16 195, i16 -150, i16 -150, i16 -150, i16 -150, i16 195, i16 195, i16 -150, i16 -150, i16 -150], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal constant [290 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02$%\02&#\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@sshlval = common global %union.YYSTYPE zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sshyycheck = internal constant [219 x i8] c"\1F+\1E\222\9A\055$\05\05\045\1E\03\05!?!\05\A9\AA?\AC4t\05\05\1E\B2\B3\00\18\B6>\1E#\1E\1E#G\BEI\04H#\C3\C4\1E# \8E\8F\12\13\92##Y\15[\98\99\07\1E\1E  \1E\03 $d!$\0Dh\A8\0Dnop\07dst\B1h\1C\1Dvlmlm\04$\BC\BD\1E\17 \90\05\06$\1A\09\0A\0B\0C\8E\0E\0F\A0\11\07\91\14`\16\98\18\19\1E\1B #i%$\AD\15\07\08\04qr\06\1C\1D\1E\09 \AF\B0\04$\1C\1D\1E\1F #\22%$\1C\1D\1E\1F\0F#\22%$\1C\1D\1E\1F\1E\1C\1D\1E$ \1C\1D\1E$ \06\1C\1D\09\0A##%%\07\08%&\1C\1D\07\1E\1E\1E\1E\07\1E\1E\06\09\1E\0A\1B\1Eh\10\15*d\10m\11v", align 16
@sshyytable = internal constant [219 x i8] c"<R5C]\B4c]Iky.b6\01u@]B~\B7\B8j\BA`\9A\A5\A7\04\BF\C0\05U\C1izd/Vlp\C5t\06rv\C6\C7_\7F3\A9\AAEF\ACdl\80\90\81\B2\B3$qG332\1D3H5)>%5\B6&\8E\8F\92'\85\98\99\BE69:I\8B@\8CB(;\C3\C42-3\AB\08\0940\0A\0B\0C\0D\A8\0E\0F\B5\101i\11\84\12\B1\13\142\153\A0\8A\A1>\BB\90\1E\1FL\96\97=9:2D3\BC\BDM\919:YZa\A0[\A2;9:YZ\9D\A0[\A6;9:noN9:s;aef_;3*ef+\0B\A0\A0\AF\B0!\22\87\88\A3\A4hOSTWmwx{|}\9B\9E\9F\89\AD\B9Q\86\C2\8D,\9C", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal constant [200 x i8] c"\00\00\00\02\00\01\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\10\11\12\0B\0F\0A\03\00\00\00\00\00\00\00\00\00\00\00\1F\00\00\09\00\00\1B\00\003 \00<7\008+,\00\00\06\00E@\00A\00\08UV\00\00\00\00H\00\00\0C\17\00\00\00\19\1A\00\14\1D\00$('2\22%\00\00!;6\00./\00\00\00D?\00\00\00\00W\00\00\00W\00\00\0D\0E\00\18\05\07\15\00\00#&)\00\009:-\00\00\00BC\00WW\00\00WXY[\00\00WW[GI\16\1C\1E\004=015F>W[[\00[\00N\00\00W[[R*[MJZL\00WW[QPK\5C[[OST", align 16
@sshr2 = internal constant [93 x i8] c"\00\02\01\06\00\05\04\05\04\03\02\02\04\05\05\02\02\02\02\02\03\04\05\01\02\03\03\02\05\01\03\02\01\02\01\02\01\01\02\01\01\01\03\01\01\03\01\01\03\03\02\01\04\05\03\01\01\03\03\02\01\04\05\03\01\01\03\03\02\01\04\05\01\03\05\06\05\05\04\06\05\05\04\07\07\01\01\00\01\01\03\00\03", align 16
@parsed_style_sheet = internal global %struct.style_sheet* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"<No key yet>\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<no name>\00", align 1
@highlight_level = external global i32, align 4
@Plain_fface = external global %struct.fface_s, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"cannot process `%s' which requires a2ps version %s\00", align 1
@sshfilename = external global i8*, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"Ancestors tmp\00", align 1
@No_fface = external global %struct.fface_s, align 4
@Symbol_fface = external global %struct.fface_s, align 4
@sshlineno = external global i32, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Keywords: Strings\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Keywords: Regexps\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Operators: Strings\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Operators: Regexps\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Sequence tmp\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Closing: Strings\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Closing: Regexps\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Exceptions: Strings\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Exceptions: Regexps\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@sshr1 = internal constant [93 x i8] c"\00'()****************++,--.//0112334555555667778888999::;;;;<<<==>>>>???@AABBBBBBBBBBBBBCCCCDD", align 16
@yypgoto = internal constant [30 x i16] [i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -150, i16 -28, i16 -41, i16 -46, i16 23, i16 -31, i16 -150, i16 -17, i16 171, i16 106, i16 114, i16 -42, i16 107, i16 -15, i16 200, i16 -150, i16 100, i16 -91, i16 -149], align 16
@yydefgoto = internal constant [30 x i16] [i16 -1, i16 2, i16 3, i16 7, i16 22, i16 23, i16 80, i16 24, i16 25, i16 26, i16 88, i16 27, i16 63, i16 92, i16 130, i16 131, i16 94, i16 103, i16 147, i16 32, i16 55, i16 56, i16 35, i16 65, i16 148, i16 28, i16 74, i16 75, i16 149, i16 174], align 16
@.str.25 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [200 x i8] c"\00\03()\1E\00\04*\05\06\09\0A\0B\0C\0E\0F\11\14\16\18\19\1B+,./02@\03\07\08:\07\08=\07\0D\0D\07\04!\06\09@\17\04\1E\1A\07\1E $39;<\1C\1D$7\06$39>?7\09\12\13\1E$3AB\04\04\1E\1E-:=\1E\1E\18\1E\1E1\1E\1F\22457\1E3 4\05#\1C\1D8\0734\05#\07\1E\1F7\1E3\1E7\05#\1E\1E\05\1E\06\09\1E\05#775669<%&;69?>77\15$79?C6677C\0AB\0F\1B\1E#%%\1C\1D\05%\057CC=C\10D%%7CCD5CDD\15D=77CDDD\10CCDDD", align 16
@.str.28 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@sshin = external global %struct._IO_FILE*, align 8
@msg_verbosity = external global i32, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"Parsing file `%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"---------- Right after parsing of %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"---------- End of after parsing of %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@yytname = internal constant [70 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"tSTYLE\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"tIS\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"tEND\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"tKEYWORDS\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"tARE\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"tIN\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"tOPERATORS\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"tSEQUENCES\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"tFIRST\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"tSECOND\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"tALPHABET\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"tALPHABETS\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"tDOCUMENTATION\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"tEXCEPTIONS\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"tCASE\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tCSTRING\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"tCCHAR\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"tOPTIONAL\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"tCLOSERS\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"tWRITTEN\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"tBY\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"tVERSION\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"tREQUIRES\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"tA2PS\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"tANCESTORS\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"tFACE\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"tFFLAGS\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"tSTRING\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"tLATEXSYMBOL\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"tREGEX\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"tSENSITIVENESS\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"tBACK_REF\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"style_sheet\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"definition_list\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"requirement\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"documentation\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"long_string\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"authors\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"ancestors_def\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"ancestors_list\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"case_def\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"rhs\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"a_rhs\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"rhs_list\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"fface\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"fface_sxp\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"keywords_def\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"keywords_rule_list\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"keyword_regex\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"operators_def\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"operators_rule_list\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"operator_regex\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"sequence_def\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"sequence_list\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"closers_opt\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"exception_def_opt\00", align 1
@yytoknum = internal constant [39 x i16] [i16 0, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 267, i16 268, i16 269, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 280, i16 281, i16 282, i16 283, i16 284, i16 285, i16 286, i16 287, i16 288, i16 289, i16 44, i16 40, i16 41, i16 43], align 16
@.str.106 = private unnamed_addr constant [5 x i8] c" \5C%d\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c" /%s/\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@yyrline = internal constant [93 x i16] [i16 0, i16 129, i16 129, i16 136, i16 145, i16 148, i16 157, i16 163, i16 172, i16 178, i16 186, i16 191, i16 196, i16 204, i16 211, i16 218, i16 221, i16 224, i16 227, i16 230, i16 245, i16 246, i16 249, i16 251, i16 252, i16 267, i16 270, i16 271, i16 276, i16 283, i16 291, i16 298, i16 306, i16 310, i16 322, i16 330, i16 334, i16 338, i16 342, i16 346, i16 350, i16 357, i16 363, i16 374, i16 379, i16 386, i16 396, i16 401, i16 406, i16 412, i16 426, i16 431, i16 437, i16 449, i16 453, i16 460, i16 465, i16 470, i16 475, i16 487, i16 492, i16 499, i16 509, i16 513, i16 520, i16 526, i16 532, i16 537, i16 549, i16 554, i16 560, i16 570, i16 573, i16 579, i16 602, i16 610, i16 618, i16 626, i16 634, i16 642, i16 650, i16 658, i16 666, i16 674, i16 681, i16 689, i16 693, i16 701, i16 709, i16 715, i16 721, i16 730, i16 733], align 16
@.str.110 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@yyprhs = internal constant [93 x i16] [i16 0, i16 0, i16 3, i16 5, i16 12, i16 13, i16 19, i16 24, i16 30, i16 35, i16 39, i16 42, i16 45, i16 50, i16 56, i16 62, i16 65, i16 68, i16 71, i16 74, i16 77, i16 81, i16 86, i16 92, i16 94, i16 97, i16 101, i16 105, i16 108, i16 114, i16 116, i16 120, i16 123, i16 125, i16 128, i16 130, i16 133, i16 135, i16 137, i16 140, i16 142, i16 144, i16 146, i16 150, i16 152, i16 154, i16 158, i16 160, i16 162, i16 166, i16 170, i16 173, i16 175, i16 180, i16 186, i16 190, i16 192, i16 194, i16 198, i16 202, i16 205, i16 207, i16 212, i16 218, i16 222, i16 224, i16 226, i16 230, i16 234, i16 237, i16 239, i16 244, i16 250, i16 252, i16 256, i16 262, i16 269, i16 275, i16 281, i16 286, i16 293, i16 299, i16 305, i16 310, i16 318, i16 326, i16 328, i16 330, i16 331, i16 333, i16 335, i16 339, i16 340], align 16
@yyrhs = internal constant [344 x i8] c"(\00\FF)\FF\03\1E\04*\05\03\FF\FF*\14\06:\06\FF*\06:\06\FF*\14\09=\09\FF*\09=\09\FF*\14@\FF*@\FF*0\FF*\0E\07\1E\FF*\0B\0D\04\1E\FF*\0C\0D\04\1E\FF*2\FF*,\FF*.\FF*/\FF*+\FF\19\1A\1E\FF\19\1A\18\1E\FF\0F\04-\05\0F\FF\1E\FF-\1E\FF\16\17\1E\FF\18\04\1E\FF\18\1E\FF\1B\071\05\1B\FF\1E\FF1#\1E\FF\11!\FF \FF3 \FF5\FF\1E7\FF\1E\FF7\FF\227\FF\22\FF\1F\FF5\FF6#5\FF\1C\FF\1D\FF$8%\FF\1C\FF\1D\FF8&\1C\FF8&\1D\FF\1E4\FF\1E\FF$\1E6%\FF\087\07;\05\FF\07;\05\FF9\FF<\FF;#9\FF;#<\FF34\FF3\FF$36%\FF\087\07>\05\FF\07>\05\FF9\FF?\FF>#9\FF>#?\FF34\FF3\FF$36%\FF\0A\07A\05\0A\FFB\FFA#B\FF\1E\1F7CD\FF\1E\1E77CD\FF\1E77CD\FF\1E\1E7CD\FF\1E7CD\FF3\1E77CD\FF377CD\FF3\1E7CD\FF37CD\FF$\1E6%7CD\FF$36%7CD\FF\12\FF\13\FF\FF9\FF?\FF\15=\15\FF\FF\10=\10\FF", align 16
@.str.112 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@yysyntax_error.yyunexpected = internal constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@yysyntax_error.yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@yysyntax_error.yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sshparse() #0 {
entry:
  %sshstate = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yytoken = alloca i32, align 4
  %yymsgbuf = alloca [128 x i8], align 16
  %yymsg = alloca i8*, align 8
  %yymsg_alloc = alloca i64, align 8
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca i16*, align 8
  %yyssp = alloca i16*, align 8
  %yyvsa = alloca [200 x %union.YYSTYPE], align 16
  %yyvs = alloca %union.YYSTYPE*, align 8
  %yyvsp = alloca %union.YYSTYPE*, align 8
  %yystacksize = alloca i64, align 8
  %sshval = alloca %union.YYSTYPE, align 8
  %sshyylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca i16*, align 8
  %yyptr = alloca %union.yyalloc*, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes29 = alloca i64, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %open_rule = alloca %struct.rule*, align 8
  %open_rule765 = alloca %struct.rule*, align 8
  %open_rule784 = alloca %struct.rule*, align 8
  %open_rule801 = alloca %struct.rule*, align 8
  %open_rule820 = alloca %struct.rule*, align 8
  %open_rule837 = alloca %struct.rule*, align 8
  %open_rule856 = alloca %struct.rule*, align 8
  %open_rule873 = alloca %struct.rule*, align 8
  %open_rule892 = alloca %struct.rule*, align 8
  %open_rule907 = alloca %struct.rule*, align 8
  %open_rule923 = alloca %struct.rule*, align 8
  %yysize1027 = alloca i64, align 8
  %yyalloc = alloca i64, align 8
  store i32 0, i32* %yytoken, align 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %yymsg, align 8
  store i64 128, i64* %yymsg_alloc, align 8
  %arraydecay1 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay1, i16** %yyss, align 8
  %arraydecay2 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay2, %union.YYSTYPE** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %sshyylen, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @sshdebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %sshstate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @sshnerrs, align 4
  store i32 -2, i32* @sshchar, align 4
  %2 = load i16*, i16** %yyss, align 8
  store i16* %2, i16** %yyssp, align 8
  %3 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %3, %union.YYSTYPE** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %do.end.1151, %if.end.1024, %if.end.148
  %4 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %do.end
  %5 = load i32, i32* %sshstate, align 4
  %conv = trunc i32 %5 to i16
  %6 = load i16*, i16** %yyssp, align 8
  store i16 %conv, i16* %6, align 2
  %7 = load i16*, i16** %yyss, align 8
  %8 = load i64, i64* %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 %8
  %add.ptr3 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  %9 = load i16*, i16** %yyssp, align 8
  %cmp = icmp ule i16* %add.ptr3, %9
  br i1 %cmp, label %if.then.5, label %if.end.59

if.then.5:                                        ; preds = %yysetstate
  %10 = load i16*, i16** %yyssp, align 8
  %11 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %yysize, align 8
  %12 = load i64, i64* %yystacksize, align 8
  %cmp6 = icmp ule i64 10000, %12
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %yyexhaustedlab

if.end.9:                                         ; preds = %if.then.5
  %13 = load i64, i64* %yystacksize, align 8
  %mul = mul i64 %13, 2
  store i64 %mul, i64* %yystacksize, align 8
  %14 = load i64, i64* %yystacksize, align 8
  %cmp10 = icmp ult i64 10000, %14
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i64 10000, i64* %yystacksize, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %15 = load i16*, i16** %yyss, align 8
  store i16* %15, i16** %yyss1, align 8
  %16 = load i64, i64* %yystacksize, align 8
  %mul14 = mul i64 %16, 10
  %add15 = add i64 %mul14, 7
  %call16 = call noalias i8* @malloc(i64 %add15) #3
  %17 = bitcast i8* %call16 to %union.yyalloc*
  store %union.yyalloc* %17, %union.yyalloc** %yyptr, align 8
  %18 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %tobool17 = icmp ne %union.yyalloc* %18, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  br label %yyexhaustedlab

if.end.19:                                        ; preds = %if.end.13
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %19 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss21 = bitcast %union.yyalloc* %19 to i16*
  %20 = bitcast i16* %yyss21 to i8*
  %21 = load i16*, i16** %yyss, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load i64, i64* %yysize, align 8
  %mul22 = mul i64 %23, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %mul22, i32 2, i1 false)
  %24 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss23 = bitcast %union.yyalloc* %24 to i16*
  store i16* %yyss23, i16** %yyss, align 8
  %25 = load i64, i64* %yystacksize, align 8
  %mul24 = mul i64 %25, 2
  %add25 = add i64 %mul24, 7
  store i64 %add25, i64* %yynewbytes, align 8
  %26 = load i64, i64* %yynewbytes, align 8
  %div = udiv i64 %26, 8
  %27 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr26 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %27, i64 %div
  store %union.yyalloc* %add.ptr26, %union.yyalloc** %yyptr, align 8
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.20
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %28 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs30 = bitcast %union.yyalloc* %28 to %union.YYSTYPE*
  %29 = bitcast %union.YYSTYPE* %yyvs30 to i8*
  %30 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %31 = bitcast %union.YYSTYPE* %30 to i8*
  %32 = load i64, i64* %yysize, align 8
  %mul31 = mul i64 %32, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %31, i64 %mul31, i32 8, i1 false)
  %33 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs32 = bitcast %union.yyalloc* %33 to %union.YYSTYPE*
  store %union.YYSTYPE* %yyvs32, %union.YYSTYPE** %yyvs, align 8
  %34 = load i64, i64* %yystacksize, align 8
  %mul33 = mul i64 %34, 8
  %add34 = add i64 %mul33, 7
  store i64 %add34, i64* %yynewbytes29, align 8
  %35 = load i64, i64* %yynewbytes29, align 8
  %div35 = udiv i64 %35, 8
  %36 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr36 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %36, i64 %div35
  store %union.yyalloc* %add.ptr36, %union.yyalloc** %yyptr, align 8
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.28
  %37 = load i16*, i16** %yyss1, align 8
  %arraydecay38 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp39 = icmp ne i16* %37, %arraydecay38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.37
  %38 = load i16*, i16** %yyss1, align 8
  %39 = bitcast i16* %38 to i8*
  call void @free(i8* %39) #3
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.end.37
  %40 = load i16*, i16** %yyss, align 8
  %41 = load i64, i64* %yysize, align 8
  %add.ptr43 = getelementptr inbounds i16, i16* %40, i64 %41
  %add.ptr44 = getelementptr inbounds i16, i16* %add.ptr43, i64 -1
  store i16* %add.ptr44, i16** %yyssp, align 8
  %42 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %43 = load i64, i64* %yysize, align 8
  %add.ptr45 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %42, i64 %43
  %add.ptr46 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %add.ptr45, i64 -1
  store %union.YYSTYPE* %add.ptr46, %union.YYSTYPE** %yyvsp, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.42
  %44 = load i32, i32* @sshdebug, align 4
  %tobool48 = icmp ne i32 %44, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %do.body.47
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i64, i64* %yystacksize, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64 %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %do.body.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %47 = load i16*, i16** %yyss, align 8
  %48 = load i64, i64* %yystacksize, align 8
  %add.ptr53 = getelementptr inbounds i16, i16* %47, i64 %48
  %add.ptr54 = getelementptr inbounds i16, i16* %add.ptr53, i64 -1
  %49 = load i16*, i16** %yyssp, align 8
  %cmp55 = icmp ule i16* %add.ptr54, %49
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end.52
  br label %yyabortlab

if.end.58:                                        ; preds = %do.end.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %yysetstate
  br label %do.body.60

do.body.60:                                       ; preds = %if.end.59
  %50 = load i32, i32* @sshdebug, align 4
  %tobool61 = icmp ne i32 %50, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %do.body.60
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %sshstate, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %52)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %do.body.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %yybackup

yybackup:                                         ; preds = %do.end.65
  %53 = load i32, i32* %sshstate, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* @sshpact, i32 0, i64 %idxprom
  %54 = load i16, i16* %arrayidx, align 2
  %conv66 = sext i16 %54 to i32
  store i32 %conv66, i32* %yyn, align 4
  %55 = load i32, i32* %yyn, align 4
  %cmp67 = icmp eq i32 %55, -150
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %yybackup
  br label %yydefault

if.end.70:                                        ; preds = %yybackup
  %56 = load i32, i32* @sshchar, align 4
  %cmp71 = icmp eq i32 %56, -2
  br i1 %cmp71, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.end.70
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %57 = load i32, i32* @sshdebug, align 4
  %tobool75 = icmp ne i32 %57, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %do.body.74
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %do.body.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %call80 = call i32 @sshlex()
  store i32 %call80, i32* @sshchar, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.79, %if.end.70
  %59 = load i32, i32* @sshchar, align 4
  %cmp82 = icmp sle i32 %59, 0
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.end.81
  store i32 0, i32* %yytoken, align 4
  store i32 0, i32* @sshchar, align 4
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.84
  %60 = load i32, i32* @sshdebug, align 4
  %tobool86 = icmp ne i32 %60, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.body.85
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %do.body.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.103

if.else:                                          ; preds = %if.end.81
  %62 = load i32, i32* @sshchar, align 4
  %cmp91 = icmp ule i32 %62, 289
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %63 = load i32, i32* @sshchar, align 4
  %idxprom93 = sext i32 %63 to i64
  %arrayidx94 = getelementptr inbounds [290 x i8], [290 x i8]* @yytranslate, i32 0, i64 %idxprom93
  %64 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %64 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv95, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yytoken, align 4
  br label %do.body.96

do.body.96:                                       ; preds = %cond.end
  %65 = load i32, i32* @sshdebug, align 4
  %tobool97 = icmp ne i32 %65, 0
  br i1 %tobool97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %do.body.96
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i32, i32* %yytoken, align 4
  call void @yy_symbol_print(%struct._IO_FILE* %67, i32 %68, %union.YYSTYPE* @sshlval)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %do.body.96
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %do.end.90
  %70 = load i32, i32* %yytoken, align 4
  %71 = load i32, i32* %yyn, align 4
  %add104 = add nsw i32 %71, %70
  store i32 %add104, i32* %yyn, align 4
  %72 = load i32, i32* %yyn, align 4
  %cmp105 = icmp slt i32 %72, 0
  br i1 %cmp105, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.103
  %73 = load i32, i32* %yyn, align 4
  %cmp107 = icmp slt i32 218, %73
  br i1 %cmp107, label %if.then.115, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false
  %74 = load i32, i32* %yyn, align 4
  %idxprom110 = sext i32 %74 to i64
  %arrayidx111 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyycheck, i32 0, i64 %idxprom110
  %75 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %75 to i32
  %76 = load i32, i32* %yytoken, align 4
  %cmp113 = icmp ne i32 %conv112, %76
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false, %if.end.103
  br label %yydefault

if.end.116:                                       ; preds = %lor.lhs.false.109
  %77 = load i32, i32* %yyn, align 4
  %idxprom117 = sext i32 %77 to i64
  %arrayidx118 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyytable, i32 0, i64 %idxprom117
  %78 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %78 to i32
  store i32 %conv119, i32* %yyn, align 4
  %79 = load i32, i32* %yyn, align 4
  %cmp120 = icmp sle i32 %79, 0
  br i1 %cmp120, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %if.end.116
  %80 = load i32, i32* %yyn, align 4
  %cmp123 = icmp eq i32 %80, 0
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.then.122
  %81 = load i32, i32* %yyn, align 4
  %cmp126 = icmp eq i32 %81, -1
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.then.122
  br label %yyerrlab

if.end.129:                                       ; preds = %lor.lhs.false.125
  %82 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %82
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.end.130:                                       ; preds = %if.end.116
  %83 = load i32, i32* %yyn, align 4
  %cmp131 = icmp eq i32 %83, 5
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  br label %yyacceptlab

if.end.134:                                       ; preds = %if.end.130
  %84 = load i32, i32* %yyerrstatus, align 4
  %tobool135 = icmp ne i32 %84, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.134
  %85 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.134
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.137
  %86 = load i32, i32* @sshdebug, align 4
  %tobool139 = icmp ne i32 %86, 0
  br i1 %tobool139, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %do.body.138
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = load i32, i32* %yytoken, align 4
  call void @yy_symbol_print(%struct._IO_FILE* %88, i32 %89, %union.YYSTYPE* @sshlval)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %do.body.138
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %91 = load i32, i32* @sshchar, align 4
  %cmp145 = icmp ne i32 %91, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %do.end.144
  store i32 -2, i32* @sshchar, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %do.end.144
  %92 = load i32, i32* %yyn, align 4
  store i32 %92, i32* %sshstate, align 4
  %93 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr149 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %93, i32 1
  store %union.YYSTYPE* %incdec.ptr149, %union.YYSTYPE** %yyvsp, align 8
  %94 = bitcast %union.YYSTYPE* %incdec.ptr149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast (%union.YYSTYPE* @sshlval to i8*), i64 8, i32 8, i1 false)
  br label %yynewstate

yydefault:                                        ; preds = %if.then.115, %if.then.69
  %95 = load i32, i32* %sshstate, align 4
  %idxprom150 = sext i32 %95 to i64
  %arrayidx151 = getelementptr inbounds [200 x i8], [200 x i8]* @yydefact, i32 0, i64 %idxprom150
  %96 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %96 to i32
  store i32 %conv152, i32* %yyn, align 4
  %97 = load i32, i32* %yyn, align 4
  %cmp153 = icmp eq i32 %97, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %yydefault
  br label %yyerrlab

if.end.156:                                       ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.156, %if.end.129
  %98 = load i32, i32* %yyn, align 4
  %idxprom157 = sext i32 %98 to i64
  %arrayidx158 = getelementptr inbounds [93 x i8], [93 x i8]* @sshr2, i32 0, i64 %idxprom157
  %99 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %99 to i32
  store i32 %conv159, i32* %sshyylen, align 4
  %100 = load i32, i32* %sshyylen, align 4
  %sub160 = sub nsw i32 1, %100
  %idxprom161 = sext i32 %sub160 to i64
  %101 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx162 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %101, i64 %idxprom161
  %102 = bitcast %union.YYSTYPE* %sshval to i8*
  %103 = bitcast %union.YYSTYPE* %arrayidx162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 8, i32 8, i1 false)
  br label %do.body.163

do.body.163:                                      ; preds = %yyreduce
  %104 = load i32, i32* @sshdebug, align 4
  %tobool164 = icmp ne i32 %104, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %do.body.163
  %105 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %106 = load i32, i32* %yyn, align 4
  call void @yy_reduce_print(%union.YYSTYPE* %105, i32 %106)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %do.body.163
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  %107 = load i32, i32* %yyn, align 4
  switch i32 %107, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.169
    i32 4, label %sw.bb.178
    i32 5, label %sw.bb.181
    i32 6, label %sw.bb.197
    i32 7, label %sw.bb.208
    i32 8, label %sw.bb.225
    i32 9, label %sw.bb.236
    i32 10, label %sw.bb.252
    i32 11, label %sw.bb.263
    i32 12, label %sw.bb.273
    i32 13, label %sw.bb.291
    i32 14, label %sw.bb.305
    i32 15, label %sw.bb.319
    i32 16, label %sw.bb.324
    i32 17, label %sw.bb.329
    i32 18, label %sw.bb.334
    i32 19, label %sw.bb.339
    i32 20, label %sw.bb.351
    i32 21, label %sw.bb.355
    i32 22, label %sw.bb.359
    i32 23, label %sw.bb.363
    i32 24, label %sw.bb.367
    i32 25, label %sw.bb.394
    i32 26, label %sw.bb.398
    i32 27, label %sw.bb.402
    i32 28, label %sw.bb.406
    i32 29, label %sw.bb.410
    i32 30, label %sw.bb.416
    i32 31, label %sw.bb.424
    i32 32, label %sw.bb.428
    i32 33, label %sw.bb.431
    i32 34, label %sw.bb.469
    i32 35, label %sw.bb.474
    i32 36, label %sw.bb.480
    i32 37, label %sw.bb.485
    i32 38, label %sw.bb.490
    i32 39, label %sw.bb.496
    i32 40, label %sw.bb.501
    i32 41, label %sw.bb.506
    i32 42, label %sw.bb.512
    i32 43, label %sw.bb.520
    i32 44, label %sw.bb.525
    i32 45, label %sw.bb.535
    i32 46, label %sw.bb.550
    i32 47, label %sw.bb.557
    i32 48, label %sw.bb.564
    i32 49, label %sw.bb.572
    i32 50, label %sw.bb.583
    i32 51, label %sw.bb.590
    i32 52, label %sw.bb.597
    i32 53, label %sw.bb.605
    i32 54, label %sw.bb.613
    i32 55, label %sw.bb.617
    i32 56, label %sw.bb.623
    i32 57, label %sw.bb.629
    i32 58, label %sw.bb.637
    i32 59, label %sw.bb.645
    i32 60, label %sw.bb.653
    i32 61, label %sw.bb.660
    i32 62, label %sw.bb.668
    i32 63, label %sw.bb.676
    i32 64, label %sw.bb.680
    i32 65, label %sw.bb.686
    i32 66, label %sw.bb.692
    i32 67, label %sw.bb.700
    i32 68, label %sw.bb.708
    i32 69, label %sw.bb.716
    i32 70, label %sw.bb.723
    i32 71, label %sw.bb.731
    i32 72, label %sw.bb.735
    i32 73, label %sw.bb.740
    i32 74, label %sw.bb.748
    i32 75, label %sw.bb.764
    i32 76, label %sw.bb.783
    i32 77, label %sw.bb.800
    i32 78, label %sw.bb.819
    i32 79, label %sw.bb.836
    i32 80, label %sw.bb.855
    i32 81, label %sw.bb.872
    i32 82, label %sw.bb.891
    i32 83, label %sw.bb.906
    i32 84, label %sw.bb.922
    i32 85, label %sw.bb.938
    i32 86, label %sw.bb.941
    i32 87, label %sw.bb.944
    i32 88, label %sw.bb.952
    i32 89, label %sw.bb.958
    i32 90, label %sw.bb.964
    i32 91, label %sw.bb.968
    i32 92, label %sw.bb.971
  ]

sw.bb:                                            ; preds = %do.end.167
  %108 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %108, i64 0
  %sheet = bitcast %union.YYSTYPE* %arrayidx168 to %struct.style_sheet**
  %109 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  store %struct.style_sheet* %109, %struct.style_sheet** @parsed_style_sheet, align 8
  br label %sw.epilog

sw.bb.169:                                        ; preds = %do.end.167
  %110 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx170 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %110, i64 -4
  %string = bitcast %union.YYSTYPE* %arrayidx170 to i8**
  %111 = load i8*, i8** %string, align 8
  %112 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx171 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %112, i64 -2
  %sheet172 = bitcast %union.YYSTYPE* %arrayidx171 to %struct.style_sheet**
  %113 = load %struct.style_sheet*, %struct.style_sheet** %sheet172, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %113, i32 0, i32 1
  store i8* %111, i8** %name, align 8
  %114 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx173 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %114, i64 -2
  %sheet174 = bitcast %union.YYSTYPE* %arrayidx173 to %struct.style_sheet**
  %115 = load %struct.style_sheet*, %struct.style_sheet** %sheet174, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %key, align 8
  %116 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %116, i64 -2
  %sheet176 = bitcast %union.YYSTYPE* %arrayidx175 to %struct.style_sheet**
  %117 = load %struct.style_sheet*, %struct.style_sheet** %sheet176, align 8
  %sheet177 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %117, %struct.style_sheet** %sheet177, align 8
  br label %sw.epilog

sw.bb.178:                                        ; preds = %do.end.167
  %call179 = call %struct.style_sheet* @new_style_sheet(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  %sheet180 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %call179, %struct.style_sheet** %sheet180, align 8
  br label %sw.epilog

sw.bb.181:                                        ; preds = %do.end.167
  %118 = load i32, i32* @highlight_level, align 4
  %cmp182 = icmp eq i32 %118, 2
  br i1 %cmp182, label %if.then.184, label %if.else.190

if.then.184:                                      ; preds = %sw.bb.181
  %119 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx185 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %119, i64 -1
  %words = bitcast %union.YYSTYPE* %arrayidx185 to %struct.words**
  %120 = load %struct.words*, %struct.words** %words, align 8
  %121 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  call void @words_set_no_face(%struct.words* %120, i64 %121)
  %122 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %122, i64 -4
  %sheet187 = bitcast %union.YYSTYPE* %arrayidx186 to %struct.style_sheet**
  %123 = load %struct.style_sheet*, %struct.style_sheet** %sheet187, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %123, i32 0, i32 10
  %124 = load %struct.words*, %struct.words** %keywords, align 8
  %125 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %125, i64 -1
  %words189 = bitcast %union.YYSTYPE* %arrayidx188 to %struct.words**
  %126 = load %struct.words*, %struct.words** %words189, align 8
  call void @words_merge_rules_unique(%struct.words* %124, %struct.words* %126)
  br label %if.end.193

if.else.190:                                      ; preds = %sw.bb.181
  %127 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx191 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %127, i64 -1
  %words192 = bitcast %union.YYSTYPE* %arrayidx191 to %struct.words**
  %128 = load %struct.words*, %struct.words** %words192, align 8
  call void @words_free(%struct.words* %128)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.184
  %129 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %129, i64 -4
  %sheet195 = bitcast %union.YYSTYPE* %arrayidx194 to %struct.style_sheet**
  %130 = load %struct.style_sheet*, %struct.style_sheet** %sheet195, align 8
  %sheet196 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %130, %struct.style_sheet** %sheet196, align 8
  br label %sw.epilog

sw.bb.197:                                        ; preds = %do.end.167
  %131 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %131, i64 -1
  %words199 = bitcast %union.YYSTYPE* %arrayidx198 to %struct.words**
  %132 = load %struct.words*, %struct.words** %words199, align 8
  %133 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  call void @words_set_no_face(%struct.words* %132, i64 %133)
  %134 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx200 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %134, i64 -3
  %sheet201 = bitcast %union.YYSTYPE* %arrayidx200 to %struct.style_sheet**
  %135 = load %struct.style_sheet*, %struct.style_sheet** %sheet201, align 8
  %keywords202 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %135, i32 0, i32 10
  %136 = load %struct.words*, %struct.words** %keywords202, align 8
  %137 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx203 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %137, i64 -1
  %words204 = bitcast %union.YYSTYPE* %arrayidx203 to %struct.words**
  %138 = load %struct.words*, %struct.words** %words204, align 8
  call void @words_merge_rules_unique(%struct.words* %136, %struct.words* %138)
  %139 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx205 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %139, i64 -3
  %sheet206 = bitcast %union.YYSTYPE* %arrayidx205 to %struct.style_sheet**
  %140 = load %struct.style_sheet*, %struct.style_sheet** %sheet206, align 8
  %sheet207 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %140, %struct.style_sheet** %sheet207, align 8
  br label %sw.epilog

sw.bb.208:                                        ; preds = %do.end.167
  %141 = load i32, i32* @highlight_level, align 4
  %cmp209 = icmp eq i32 %141, 2
  br i1 %cmp209, label %if.then.211, label %if.else.218

if.then.211:                                      ; preds = %sw.bb.208
  %142 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx212 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %142, i64 -1
  %words213 = bitcast %union.YYSTYPE* %arrayidx212 to %struct.words**
  %143 = load %struct.words*, %struct.words** %words213, align 8
  %144 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  call void @words_set_no_face(%struct.words* %143, i64 %144)
  %145 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %145, i64 -4
  %sheet215 = bitcast %union.YYSTYPE* %arrayidx214 to %struct.style_sheet**
  %146 = load %struct.style_sheet*, %struct.style_sheet** %sheet215, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %146, i32 0, i32 11
  %147 = load %struct.words*, %struct.words** %operators, align 8
  %148 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %148, i64 -1
  %words217 = bitcast %union.YYSTYPE* %arrayidx216 to %struct.words**
  %149 = load %struct.words*, %struct.words** %words217, align 8
  call void @words_merge_rules_unique(%struct.words* %147, %struct.words* %149)
  br label %if.end.221

if.else.218:                                      ; preds = %sw.bb.208
  %150 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %150, i64 -1
  %words220 = bitcast %union.YYSTYPE* %arrayidx219 to %struct.words**
  %151 = load %struct.words*, %struct.words** %words220, align 8
  call void @words_free(%struct.words* %151)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.211
  %152 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx222 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %152, i64 -4
  %sheet223 = bitcast %union.YYSTYPE* %arrayidx222 to %struct.style_sheet**
  %153 = load %struct.style_sheet*, %struct.style_sheet** %sheet223, align 8
  %sheet224 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %153, %struct.style_sheet** %sheet224, align 8
  br label %sw.epilog

sw.bb.225:                                        ; preds = %do.end.167
  %154 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx226 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %154, i64 -1
  %words227 = bitcast %union.YYSTYPE* %arrayidx226 to %struct.words**
  %155 = load %struct.words*, %struct.words** %words227, align 8
  %156 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  call void @words_set_no_face(%struct.words* %155, i64 %156)
  %157 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx228 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %157, i64 -3
  %sheet229 = bitcast %union.YYSTYPE* %arrayidx228 to %struct.style_sheet**
  %158 = load %struct.style_sheet*, %struct.style_sheet** %sheet229, align 8
  %operators230 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %158, i32 0, i32 11
  %159 = load %struct.words*, %struct.words** %operators230, align 8
  %160 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx231 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %160, i64 -1
  %words232 = bitcast %union.YYSTYPE* %arrayidx231 to %struct.words**
  %161 = load %struct.words*, %struct.words** %words232, align 8
  call void @words_merge_rules_unique(%struct.words* %159, %struct.words* %161)
  %162 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %162, i64 -3
  %sheet234 = bitcast %union.YYSTYPE* %arrayidx233 to %struct.style_sheet**
  %163 = load %struct.style_sheet*, %struct.style_sheet** %sheet234, align 8
  %sheet235 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %163, %struct.style_sheet** %sheet235, align 8
  br label %sw.epilog

sw.bb.236:                                        ; preds = %do.end.167
  %164 = load i32, i32* @highlight_level, align 4
  %cmp237 = icmp eq i32 %164, 2
  br i1 %cmp237, label %if.then.239, label %if.else.245

if.then.239:                                      ; preds = %sw.bb.236
  %165 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx240 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %165, i64 -2
  %sheet241 = bitcast %union.YYSTYPE* %arrayidx240 to %struct.style_sheet**
  %166 = load %struct.style_sheet*, %struct.style_sheet** %sheet241, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %166, i32 0, i32 12
  %167 = load %struct.darray*, %struct.darray** %sequences, align 8
  %168 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx242 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %168, i64 0
  %array = bitcast %union.YYSTYPE* %arrayidx242 to %struct.darray**
  %169 = load %struct.darray*, %struct.darray** %array, align 8
  call void @da_concat(%struct.darray* %167, %struct.darray* %169)
  %170 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx243 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %170, i64 0
  %array244 = bitcast %union.YYSTYPE* %arrayidx243 to %struct.darray**
  %171 = load %struct.darray*, %struct.darray** %array244, align 8
  call void @da_erase(%struct.darray* %171)
  br label %if.end.248

if.else.245:                                      ; preds = %sw.bb.236
  %172 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx246 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %172, i64 0
  %array247 = bitcast %union.YYSTYPE* %arrayidx246 to %struct.darray**
  %173 = load %struct.darray*, %struct.darray** %array247, align 8
  call void @da_free(%struct.darray* %173, void (i8*)* bitcast (void (%struct.sequence*)* @free_sequence to void (i8*)*))
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.245, %if.then.239
  %174 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %174, i64 -2
  %sheet250 = bitcast %union.YYSTYPE* %arrayidx249 to %struct.style_sheet**
  %175 = load %struct.style_sheet*, %struct.style_sheet** %sheet250, align 8
  %sheet251 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %175, %struct.style_sheet** %sheet251, align 8
  br label %sw.epilog

sw.bb.252:                                        ; preds = %do.end.167
  %176 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx253 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %176, i64 -1
  %sheet254 = bitcast %union.YYSTYPE* %arrayidx253 to %struct.style_sheet**
  %177 = load %struct.style_sheet*, %struct.style_sheet** %sheet254, align 8
  %sequences255 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %177, i32 0, i32 12
  %178 = load %struct.darray*, %struct.darray** %sequences255, align 8
  %179 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx256 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %179, i64 0
  %array257 = bitcast %union.YYSTYPE* %arrayidx256 to %struct.darray**
  %180 = load %struct.darray*, %struct.darray** %array257, align 8
  call void @da_concat(%struct.darray* %178, %struct.darray* %180)
  %181 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %181, i64 0
  %array259 = bitcast %union.YYSTYPE* %arrayidx258 to %struct.darray**
  %182 = load %struct.darray*, %struct.darray** %array259, align 8
  call void @da_erase(%struct.darray* %182)
  %183 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %183, i64 -1
  %sheet261 = bitcast %union.YYSTYPE* %arrayidx260 to %struct.style_sheet**
  %184 = load %struct.style_sheet*, %struct.style_sheet** %sheet261, align 8
  %sheet262 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %184, %struct.style_sheet** %sheet262, align 8
  br label %sw.epilog

sw.bb.263:                                        ; preds = %do.end.167
  %185 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx264 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %185, i64 -1
  %sheet265 = bitcast %union.YYSTYPE* %arrayidx264 to %struct.style_sheet**
  %186 = load %struct.style_sheet*, %struct.style_sheet** %sheet265, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %186, i32 0, i32 6
  %187 = load %struct.darray*, %struct.darray** %ancestors, align 8
  %188 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx266 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %188, i64 0
  %array267 = bitcast %union.YYSTYPE* %arrayidx266 to %struct.darray**
  %189 = load %struct.darray*, %struct.darray** %array267, align 8
  call void @da_concat(%struct.darray* %187, %struct.darray* %189)
  %190 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx268 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %190, i64 0
  %array269 = bitcast %union.YYSTYPE* %arrayidx268 to %struct.darray**
  %191 = load %struct.darray*, %struct.darray** %array269, align 8
  call void @da_erase(%struct.darray* %191)
  %192 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx270 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %192, i64 -1
  %sheet271 = bitcast %union.YYSTYPE* %arrayidx270 to %struct.style_sheet**
  %193 = load %struct.style_sheet*, %struct.style_sheet** %sheet271, align 8
  %sheet272 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %193, %struct.style_sheet** %sheet272, align 8
  br label %sw.epilog

sw.bb.273:                                        ; preds = %do.end.167
  %194 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx274 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %194, i64 -3
  %sheet275 = bitcast %union.YYSTYPE* %arrayidx274 to %struct.style_sheet**
  %195 = load %struct.style_sheet*, %struct.style_sheet** %sheet275, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %195, i32 0, i32 8
  %arraydecay276 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i32 0
  %196 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx277 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %196, i64 0
  %string278 = bitcast %union.YYSTYPE* %arrayidx277 to i8**
  %197 = load i8*, i8** %string278, align 8
  call void @string_to_array(i8* %arraydecay276, i8* %197)
  %198 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx279 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %198, i64 -3
  %sheet280 = bitcast %union.YYSTYPE* %arrayidx279 to %struct.style_sheet**
  %199 = load %struct.style_sheet*, %struct.style_sheet** %sheet280, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %199, i32 0, i32 9
  %arraydecay281 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i32 0
  %200 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 0
  %string283 = bitcast %union.YYSTYPE* %arrayidx282 to i8**
  %201 = load i8*, i8** %string283, align 8
  call void @string_to_array(i8* %arraydecay281, i8* %201)
  %202 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx284 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %202, i64 0
  %string285 = bitcast %union.YYSTYPE* %arrayidx284 to i8**
  %203 = load i8*, i8** %string285, align 8
  call void @free(i8* %203) #3
  %204 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 0
  %string287 = bitcast %union.YYSTYPE* %arrayidx286 to i8**
  store i8* null, i8** %string287, align 8
  %205 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx288 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %205, i64 -3
  %sheet289 = bitcast %union.YYSTYPE* %arrayidx288 to %struct.style_sheet**
  %206 = load %struct.style_sheet*, %struct.style_sheet** %sheet289, align 8
  %sheet290 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %206, %struct.style_sheet** %sheet290, align 8
  br label %sw.epilog

sw.bb.291:                                        ; preds = %do.end.167
  %207 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx292 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %207, i64 -4
  %sheet293 = bitcast %union.YYSTYPE* %arrayidx292 to %struct.style_sheet**
  %208 = load %struct.style_sheet*, %struct.style_sheet** %sheet293, align 8
  %alpha1294 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %208, i32 0, i32 8
  %arraydecay295 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1294, i32 0, i32 0
  %209 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx296 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %209, i64 0
  %string297 = bitcast %union.YYSTYPE* %arrayidx296 to i8**
  %210 = load i8*, i8** %string297, align 8
  call void @string_to_array(i8* %arraydecay295, i8* %210)
  %211 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx298 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %211, i64 0
  %string299 = bitcast %union.YYSTYPE* %arrayidx298 to i8**
  %212 = load i8*, i8** %string299, align 8
  call void @free(i8* %212) #3
  %213 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx300 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %213, i64 0
  %string301 = bitcast %union.YYSTYPE* %arrayidx300 to i8**
  store i8* null, i8** %string301, align 8
  %214 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx302 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %214, i64 -4
  %sheet303 = bitcast %union.YYSTYPE* %arrayidx302 to %struct.style_sheet**
  %215 = load %struct.style_sheet*, %struct.style_sheet** %sheet303, align 8
  %sheet304 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %215, %struct.style_sheet** %sheet304, align 8
  br label %sw.epilog

sw.bb.305:                                        ; preds = %do.end.167
  %216 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx306 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %216, i64 -4
  %sheet307 = bitcast %union.YYSTYPE* %arrayidx306 to %struct.style_sheet**
  %217 = load %struct.style_sheet*, %struct.style_sheet** %sheet307, align 8
  %alpha2308 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %217, i32 0, i32 9
  %arraydecay309 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2308, i32 0, i32 0
  %218 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx310 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %218, i64 0
  %string311 = bitcast %union.YYSTYPE* %arrayidx310 to i8**
  %219 = load i8*, i8** %string311, align 8
  call void @string_to_array(i8* %arraydecay309, i8* %219)
  %220 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx312 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %220, i64 0
  %string313 = bitcast %union.YYSTYPE* %arrayidx312 to i8**
  %221 = load i8*, i8** %string313, align 8
  call void @free(i8* %221) #3
  %222 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx314 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %222, i64 0
  %string315 = bitcast %union.YYSTYPE* %arrayidx314 to i8**
  store i8* null, i8** %string315, align 8
  %223 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx316 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %223, i64 -4
  %sheet317 = bitcast %union.YYSTYPE* %arrayidx316 to %struct.style_sheet**
  %224 = load %struct.style_sheet*, %struct.style_sheet** %sheet317, align 8
  %sheet318 = bitcast %union.YYSTYPE* %sshval to %struct.style_sheet**
  store %struct.style_sheet* %224, %struct.style_sheet** %sheet318, align 8
  br label %sw.epilog

sw.bb.319:                                        ; preds = %do.end.167
  %225 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx320 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %225, i64 0
  %sensitiveness = bitcast %union.YYSTYPE* %arrayidx320 to i32*
  %226 = load i32, i32* %sensitiveness, align 4
  %227 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx321 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %227, i64 -1
  %sheet322 = bitcast %union.YYSTYPE* %arrayidx321 to %struct.style_sheet**
  %228 = load %struct.style_sheet*, %struct.style_sheet** %sheet322, align 8
  %sensitiveness323 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %228, i32 0, i32 7
  store i32 %226, i32* %sensitiveness323, align 4
  br label %sw.epilog

sw.bb.324:                                        ; preds = %do.end.167
  %229 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx325 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %229, i64 0
  %string326 = bitcast %union.YYSTYPE* %arrayidx325 to i8**
  %230 = load i8*, i8** %string326, align 8
  %231 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx327 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %231, i64 -1
  %sheet328 = bitcast %union.YYSTYPE* %arrayidx327 to %struct.style_sheet**
  %232 = load %struct.style_sheet*, %struct.style_sheet** %sheet328, align 8
  %documentation = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %232, i32 0, i32 5
  store i8* %230, i8** %documentation, align 8
  br label %sw.epilog

sw.bb.329:                                        ; preds = %do.end.167
  %233 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx330 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %233, i64 0
  %string331 = bitcast %union.YYSTYPE* %arrayidx330 to i8**
  %234 = load i8*, i8** %string331, align 8
  %235 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx332 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %235, i64 -1
  %sheet333 = bitcast %union.YYSTYPE* %arrayidx332 to %struct.style_sheet**
  %236 = load %struct.style_sheet*, %struct.style_sheet** %sheet333, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %236, i32 0, i32 2
  store i8* %234, i8** %author, align 8
  br label %sw.epilog

sw.bb.334:                                        ; preds = %do.end.167
  %237 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx335 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %237, i64 -1
  %sheet336 = bitcast %union.YYSTYPE* %arrayidx335 to %struct.style_sheet**
  %238 = load %struct.style_sheet*, %struct.style_sheet** %sheet336, align 8
  %239 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx337 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %239, i64 0
  %string338 = bitcast %union.YYSTYPE* %arrayidx337 to i8**
  %240 = load i8*, i8** %string338, align 8
  call void @style_sheet_set_version(%struct.style_sheet* %238, i8* %240)
  br label %sw.epilog

sw.bb.339:                                        ; preds = %do.end.167
  %241 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx340 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %241, i64 -1
  %sheet341 = bitcast %union.YYSTYPE* %arrayidx340 to %struct.style_sheet**
  %242 = load %struct.style_sheet*, %struct.style_sheet** %sheet341, align 8
  %243 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx342 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i64 0
  %string343 = bitcast %union.YYSTYPE* %arrayidx342 to i8**
  %244 = load i8*, i8** %string343, align 8
  %call344 = call i32 @style_sheet_set_requirement(%struct.style_sheet* %242, i8* %244)
  %tobool345 = icmp ne i32 %call344, 0
  br i1 %tobool345, label %if.end.350, label %if.then.346

if.then.346:                                      ; preds = %sw.bb.339
  %call347 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0)) #3
  %245 = load i8*, i8** @sshfilename, align 8
  %246 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx348 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %246, i64 0
  %string349 = bitcast %union.YYSTYPE* %arrayidx348 to i8**
  %247 = load i8*, i8** %string349, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call347, i8* %245, i8* %247)
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.346, %sw.bb.339
  br label %sw.epilog

sw.bb.351:                                        ; preds = %do.end.167
  %248 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx352 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %248, i64 0
  %string353 = bitcast %union.YYSTYPE* %arrayidx352 to i8**
  %249 = load i8*, i8** %string353, align 8
  %string354 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %249, i8** %string354, align 8
  br label %sw.epilog

sw.bb.355:                                        ; preds = %do.end.167
  %250 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx356 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %250, i64 0
  %string357 = bitcast %union.YYSTYPE* %arrayidx356 to i8**
  %251 = load i8*, i8** %string357, align 8
  %string358 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %251, i8** %string358, align 8
  br label %sw.epilog

sw.bb.359:                                        ; preds = %do.end.167
  %252 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx360 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %252, i64 -2
  %string361 = bitcast %union.YYSTYPE* %arrayidx360 to i8**
  %253 = load i8*, i8** %string361, align 8
  %string362 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %253, i8** %string362, align 8
  br label %sw.epilog

sw.bb.363:                                        ; preds = %do.end.167
  %254 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx364 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %254, i64 0
  %string365 = bitcast %union.YYSTYPE* %arrayidx364 to i8**
  %255 = load i8*, i8** %string365, align 8
  %string366 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %255, i8** %string366, align 8
  br label %sw.epilog

sw.bb.367:                                        ; preds = %do.end.167
  %256 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx368 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %256, i64 -1
  %string369 = bitcast %union.YYSTYPE* %arrayidx368 to i8**
  %257 = load i8*, i8** %string369, align 8
  %call370 = call i64 @strlen(i8* %257) #5
  store i64 %call370, i64* %len1, align 8
  %258 = load i64, i64* %len1, align 8
  %259 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx371 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %259, i64 -1
  %string372 = bitcast %union.YYSTYPE* %arrayidx371 to i8**
  %260 = load i8*, i8** %string372, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %260, i64 %258
  store i8 10, i8* %arrayidx373, align 1
  %261 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx374 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %261, i64 0
  %string375 = bitcast %union.YYSTYPE* %arrayidx374 to i8**
  %262 = load i8*, i8** %string375, align 8
  %call376 = call i64 @strlen(i8* %262) #5
  store i64 %call376, i64* %len2, align 8
  %263 = load i64, i64* %len1, align 8
  %264 = load i64, i64* %len2, align 8
  %add377 = add i64 %263, %264
  %add378 = add i64 %add377, 2
  %mul379 = mul i64 1, %add378
  %call380 = call i8* @xmalloc(i64 %mul379)
  %string381 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %call380, i8** %string381, align 8
  %string382 = bitcast %union.YYSTYPE* %sshval to i8**
  %265 = load i8*, i8** %string382, align 8
  %266 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx383 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %266, i64 -1
  %string384 = bitcast %union.YYSTYPE* %arrayidx383 to i8**
  %267 = load i8*, i8** %string384, align 8
  %268 = load i64, i64* %len1, align 8
  %add385 = add i64 %268, 1
  %call386 = call i8* @stpncpy(i8* %265, i8* %267, i64 %add385) #3
  %269 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx387 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %269, i64 0
  %string388 = bitcast %union.YYSTYPE* %arrayidx387 to i8**
  %270 = load i8*, i8** %string388, align 8
  %call389 = call i8* @stpcpy(i8* %call386, i8* %270) #3
  %271 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx390 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %271, i64 -1
  %string391 = bitcast %union.YYSTYPE* %arrayidx390 to i8**
  %272 = load i8*, i8** %string391, align 8
  call void @free(i8* %272) #3
  %273 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx392 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %273, i64 0
  %string393 = bitcast %union.YYSTYPE* %arrayidx392 to i8**
  %274 = load i8*, i8** %string393, align 8
  call void @free(i8* %274) #3
  br label %sw.epilog

sw.bb.394:                                        ; preds = %do.end.167
  %275 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx395 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %275, i64 0
  %string396 = bitcast %union.YYSTYPE* %arrayidx395 to i8**
  %276 = load i8*, i8** %string396, align 8
  %string397 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %276, i8** %string397, align 8
  br label %sw.epilog

sw.bb.398:                                        ; preds = %do.end.167
  %277 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx399 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %277, i64 0
  %string400 = bitcast %union.YYSTYPE* %arrayidx399 to i8**
  %278 = load i8*, i8** %string400, align 8
  %string401 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %278, i8** %string401, align 8
  br label %sw.epilog

sw.bb.402:                                        ; preds = %do.end.167
  %279 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx403 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %279, i64 0
  %string404 = bitcast %union.YYSTYPE* %arrayidx403 to i8**
  %280 = load i8*, i8** %string404, align 8
  %string405 = bitcast %union.YYSTYPE* %sshval to i8**
  store i8* %280, i8** %string405, align 8
  br label %sw.epilog

sw.bb.406:                                        ; preds = %do.end.167
  %281 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx407 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %281, i64 -2
  %array408 = bitcast %union.YYSTYPE* %arrayidx407 to %struct.darray**
  %282 = load %struct.darray*, %struct.darray** %array408, align 8
  %array409 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %282, %struct.darray** %array409, align 8
  br label %sw.epilog

sw.bb.410:                                        ; preds = %do.end.167
  %call411 = call %struct.darray* @da_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i64 2, i32 1, i64 2, void (i8*, %struct._IO_FILE*)* @da_str_print, i32 (i8*, i8*)* null)
  %array412 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %call411, %struct.darray** %array412, align 8
  %array413 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  %283 = load %struct.darray*, %struct.darray** %array413, align 8
  %284 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx414 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %284, i64 0
  %string415 = bitcast %union.YYSTYPE* %arrayidx414 to i8**
  %285 = load i8*, i8** %string415, align 8
  call void @da_append(%struct.darray* %283, i8* %285)
  br label %sw.epilog

sw.bb.416:                                        ; preds = %do.end.167
  %286 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx417 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %286, i64 -2
  %array418 = bitcast %union.YYSTYPE* %arrayidx417 to %struct.darray**
  %287 = load %struct.darray*, %struct.darray** %array418, align 8
  %288 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx419 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %288, i64 0
  %string420 = bitcast %union.YYSTYPE* %arrayidx419 to i8**
  %289 = load i8*, i8** %string420, align 8
  call void @da_append(%struct.darray* %287, i8* %289)
  %290 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx421 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %290, i64 -2
  %array422 = bitcast %union.YYSTYPE* %arrayidx421 to %struct.darray**
  %291 = load %struct.darray*, %struct.darray** %array422, align 8
  %array423 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %291, %struct.darray** %array423, align 8
  br label %sw.epilog

sw.bb.424:                                        ; preds = %do.end.167
  %292 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx425 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %292, i64 0
  %sensitiveness426 = bitcast %union.YYSTYPE* %arrayidx425 to i32*
  %293 = load i32, i32* %sensitiveness426, align 4
  %sensitiveness427 = bitcast %union.YYSTYPE* %sshval to i32*
  store i32 %293, i32* %sensitiveness427, align 4
  br label %sw.epilog

sw.bb.428:                                        ; preds = %do.end.167
  %294 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx429 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %294, i64 0
  %pattern = bitcast %union.YYSTYPE* %arrayidx429 to %struct.pattern**
  %295 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %pattern430 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  store %struct.pattern* %295, %struct.pattern** %pattern430, align 8
  br label %sw.epilog

sw.bb.431:                                        ; preds = %do.end.167
  %296 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx432 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %296, i64 -1
  %pattern433 = bitcast %union.YYSTYPE* %arrayidx432 to %struct.pattern**
  %297 = load %struct.pattern*, %struct.pattern** %pattern433, align 8
  %pattern434 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  store %struct.pattern* %297, %struct.pattern** %pattern434, align 8
  %pattern435 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  %298 = load %struct.pattern*, %struct.pattern** %pattern435, align 8
  %pattern436 = getelementptr inbounds %struct.pattern, %struct.pattern* %298, i32 0, i32 0
  %299 = load i8*, i8** %pattern436, align 8
  %300 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx437 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %300, i64 -1
  %pattern438 = bitcast %union.YYSTYPE* %arrayidx437 to %struct.pattern**
  %301 = load %struct.pattern*, %struct.pattern** %pattern438, align 8
  %len = getelementptr inbounds %struct.pattern, %struct.pattern* %301, i32 0, i32 1
  %302 = load i64, i64* %len, align 8
  %303 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx439 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %303, i64 0
  %pattern440 = bitcast %union.YYSTYPE* %arrayidx439 to %struct.pattern**
  %304 = load %struct.pattern*, %struct.pattern** %pattern440, align 8
  %len441 = getelementptr inbounds %struct.pattern, %struct.pattern* %304, i32 0, i32 1
  %305 = load i64, i64* %len441, align 8
  %add442 = add i64 %302, %305
  %add443 = add i64 %add442, 1
  %mul444 = mul i64 1, %add443
  %call445 = call i8* @xrealloc(i8* %299, i64 %mul444)
  %pattern446 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  %306 = load %struct.pattern*, %struct.pattern** %pattern446, align 8
  %pattern447 = getelementptr inbounds %struct.pattern, %struct.pattern* %306, i32 0, i32 0
  store i8* %call445, i8** %pattern447, align 8
  %pattern448 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  %307 = load %struct.pattern*, %struct.pattern** %pattern448, align 8
  %pattern449 = getelementptr inbounds %struct.pattern, %struct.pattern* %307, i32 0, i32 0
  %308 = load i8*, i8** %pattern449, align 8
  %pattern450 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  %309 = load %struct.pattern*, %struct.pattern** %pattern450, align 8
  %len451 = getelementptr inbounds %struct.pattern, %struct.pattern* %309, i32 0, i32 1
  %310 = load i64, i64* %len451, align 8
  %add.ptr452 = getelementptr inbounds i8, i8* %308, i64 %310
  %311 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx453 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %311, i64 0
  %pattern454 = bitcast %union.YYSTYPE* %arrayidx453 to %struct.pattern**
  %312 = load %struct.pattern*, %struct.pattern** %pattern454, align 8
  %pattern455 = getelementptr inbounds %struct.pattern, %struct.pattern* %312, i32 0, i32 0
  %313 = load i8*, i8** %pattern455, align 8
  %314 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx456 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %314, i64 0
  %pattern457 = bitcast %union.YYSTYPE* %arrayidx456 to %struct.pattern**
  %315 = load %struct.pattern*, %struct.pattern** %pattern457, align 8
  %len458 = getelementptr inbounds %struct.pattern, %struct.pattern* %315, i32 0, i32 1
  %316 = load i64, i64* %len458, align 8
  %call459 = call i8* @strncpy(i8* %add.ptr452, i8* %313, i64 %316) #3
  %317 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx460 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %317, i64 0
  %pattern461 = bitcast %union.YYSTYPE* %arrayidx460 to %struct.pattern**
  %318 = load %struct.pattern*, %struct.pattern** %pattern461, align 8
  %len462 = getelementptr inbounds %struct.pattern, %struct.pattern* %318, i32 0, i32 1
  %319 = load i64, i64* %len462, align 8
  %pattern463 = bitcast %union.YYSTYPE* %sshval to %struct.pattern**
  %320 = load %struct.pattern*, %struct.pattern** %pattern463, align 8
  %len464 = getelementptr inbounds %struct.pattern, %struct.pattern* %320, i32 0, i32 1
  %321 = load i64, i64* %len464, align 8
  %add465 = add i64 %321, %319
  store i64 %add465, i64* %len464, align 8
  %322 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx466 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %322, i64 0
  %pattern467 = bitcast %union.YYSTYPE* %arrayidx466 to %struct.pattern**
  %323 = load %struct.pattern*, %struct.pattern** %pattern467, align 8
  %pattern468 = getelementptr inbounds %struct.pattern, %struct.pattern* %323, i32 0, i32 0
  %324 = load i8*, i8** %pattern468, align 8
  call void @free(i8* %324) #3
  br label %sw.epilog

sw.bb.469:                                        ; preds = %do.end.167
  %call470 = call %struct.darray* @rhs_new()
  %array471 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %call470, %struct.darray** %array471, align 8
  %array472 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  %325 = load %struct.darray*, %struct.darray** %array472, align 8
  %326 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx473 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %326, i64 0
  %faced_string = bitcast %union.YYSTYPE* %arrayidx473 to %struct.faced_string**
  %327 = load %struct.faced_string*, %struct.faced_string** %faced_string, align 8
  call void @rhs_add(%struct.darray* %325, %struct.faced_string* %327)
  br label %sw.epilog

sw.bb.474:                                        ; preds = %do.end.167
  %328 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx475 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %328, i64 -1
  %string476 = bitcast %union.YYSTYPE* %arrayidx475 to i8**
  %329 = load i8*, i8** %string476, align 8
  %330 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx477 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %330, i64 0
  %fface = bitcast %union.YYSTYPE* %arrayidx477 to %struct.fface_s*
  %331 = bitcast %struct.fface_s* %fface to i64*
  %332 = load i64, i64* %331, align 4
  %call478 = call %struct.faced_string* @faced_string_new(i8* %329, i32 0, i64 %332)
  %faced_string479 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call478, %struct.faced_string** %faced_string479, align 8
  br label %sw.epilog

sw.bb.480:                                        ; preds = %do.end.167
  %333 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx481 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %333, i64 0
  %string482 = bitcast %union.YYSTYPE* %arrayidx481 to i8**
  %334 = load i8*, i8** %string482, align 8
  %335 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call483 = call %struct.faced_string* @faced_string_new(i8* %334, i32 0, i64 %335)
  %faced_string484 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call483, %struct.faced_string** %faced_string484, align 8
  br label %sw.epilog

sw.bb.485:                                        ; preds = %do.end.167
  %336 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx486 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %336, i64 0
  %fface487 = bitcast %union.YYSTYPE* %arrayidx486 to %struct.fface_s*
  %337 = bitcast %struct.fface_s* %fface487 to i64*
  %338 = load i64, i64* %337, align 4
  %call488 = call %struct.faced_string* @faced_string_new(i8* null, i32 0, i64 %338)
  %faced_string489 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call488, %struct.faced_string** %faced_string489, align 8
  br label %sw.epilog

sw.bb.490:                                        ; preds = %do.end.167
  %339 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx491 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %339, i64 -1
  %integer = bitcast %union.YYSTYPE* %arrayidx491 to i32*
  %340 = load i32, i32* %integer, align 4
  %341 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx492 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %341, i64 0
  %fface493 = bitcast %union.YYSTYPE* %arrayidx492 to %struct.fface_s*
  %342 = bitcast %struct.fface_s* %fface493 to i64*
  %343 = load i64, i64* %342, align 4
  %call494 = call %struct.faced_string* @faced_string_new(i8* null, i32 %340, i64 %343)
  %faced_string495 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call494, %struct.faced_string** %faced_string495, align 8
  br label %sw.epilog

sw.bb.496:                                        ; preds = %do.end.167
  %344 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx497 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %344, i64 0
  %integer498 = bitcast %union.YYSTYPE* %arrayidx497 to i32*
  %345 = load i32, i32* %integer498, align 4
  %346 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call499 = call %struct.faced_string* @faced_string_new(i8* null, i32 %345, i64 %346)
  %faced_string500 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call499, %struct.faced_string** %faced_string500, align 8
  br label %sw.epilog

sw.bb.501:                                        ; preds = %do.end.167
  %347 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx502 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %347, i64 0
  %string503 = bitcast %union.YYSTYPE* %arrayidx502 to i8**
  %348 = load i8*, i8** %string503, align 8
  %349 = load i64, i64* bitcast (%struct.fface_s* @Symbol_fface to i64*), align 4
  %call504 = call %struct.faced_string* @faced_string_new(i8* %348, i32 0, i64 %349)
  %faced_string505 = bitcast %union.YYSTYPE* %sshval to %struct.faced_string**
  store %struct.faced_string* %call504, %struct.faced_string** %faced_string505, align 8
  br label %sw.epilog

sw.bb.506:                                        ; preds = %do.end.167
  %call507 = call %struct.darray* @rhs_new()
  %array508 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %call507, %struct.darray** %array508, align 8
  %array509 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  %350 = load %struct.darray*, %struct.darray** %array509, align 8
  %351 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx510 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %351, i64 0
  %faced_string511 = bitcast %union.YYSTYPE* %arrayidx510 to %struct.faced_string**
  %352 = load %struct.faced_string*, %struct.faced_string** %faced_string511, align 8
  call void @rhs_add(%struct.darray* %350, %struct.faced_string* %352)
  br label %sw.epilog

sw.bb.512:                                        ; preds = %do.end.167
  %353 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx513 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %353, i64 -2
  %array514 = bitcast %union.YYSTYPE* %arrayidx513 to %struct.darray**
  %354 = load %struct.darray*, %struct.darray** %array514, align 8
  %355 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx515 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %355, i64 0
  %faced_string516 = bitcast %union.YYSTYPE* %arrayidx515 to %struct.faced_string**
  %356 = load %struct.faced_string*, %struct.faced_string** %faced_string516, align 8
  call void @rhs_add(%struct.darray* %354, %struct.faced_string* %356)
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx517 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 -2
  %array518 = bitcast %union.YYSTYPE* %arrayidx517 to %struct.darray**
  %358 = load %struct.darray*, %struct.darray** %array518, align 8
  %array519 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %358, %struct.darray** %array519, align 8
  br label %sw.epilog

sw.bb.520:                                        ; preds = %do.end.167
  %359 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx521 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %359, i64 0
  %face = bitcast %union.YYSTYPE* %arrayidx521 to i32*
  %360 = load i32, i32* %face, align 4
  %fface522 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face523 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface522, i32 0, i32 0
  store i32 %360, i32* %face523, align 4
  %fface524 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface524, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  br label %sw.epilog

sw.bb.525:                                        ; preds = %do.end.167
  %fface526 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face527 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface526, i32 0, i32 0
  store i32 -1, i32* %face527, align 4
  %361 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx528 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %361, i64 0
  %fflags = bitcast %union.YYSTYPE* %arrayidx528 to i32*
  %362 = load i32, i32* %fflags, align 4
  %fface529 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags530 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface529, i32 0, i32 1
  store i32 %362, i32* %flags530, align 4
  %fface531 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags532 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface531, i32 0, i32 1
  %363 = load i32, i32* %flags532, align 4
  %or = or i32 %363, 1
  %fface533 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags534 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface533, i32 0, i32 1
  store i32 %or, i32* %flags534, align 4
  br label %sw.epilog

sw.bb.535:                                        ; preds = %do.end.167
  %fface536 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %364 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx537 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %364, i64 -1
  %fface538 = bitcast %union.YYSTYPE* %arrayidx537 to %struct.fface_s*
  %365 = bitcast %struct.fface_s* %fface536 to i8*
  %366 = bitcast %struct.fface_s* %fface538 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 8, i32 4, i1 false)
  %fface539 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face540 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface539, i32 0, i32 0
  %367 = load i32, i32* %face540, align 4
  %cmp541 = icmp eq i32 %367, -1
  br i1 %cmp541, label %if.then.543, label %if.end.549

if.then.543:                                      ; preds = %sw.bb.535
  %fface544 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags545 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface544, i32 0, i32 1
  %368 = load i32, i32* %flags545, align 4
  %or546 = or i32 %368, 1
  %fface547 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags548 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface547, i32 0, i32 1
  store i32 %or546, i32* %flags548, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.543, %sw.bb.535
  br label %sw.epilog

sw.bb.550:                                        ; preds = %do.end.167
  %369 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx551 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %369, i64 0
  %face552 = bitcast %union.YYSTYPE* %arrayidx551 to i32*
  %370 = load i32, i32* %face552, align 4
  %fface553 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face554 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface553, i32 0, i32 0
  store i32 %370, i32* %face554, align 4
  %fface555 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags556 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface555, i32 0, i32 1
  store i32 0, i32* %flags556, align 4
  br label %sw.epilog

sw.bb.557:                                        ; preds = %do.end.167
  %fface558 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face559 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface558, i32 0, i32 0
  store i32 -1, i32* %face559, align 4
  %371 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx560 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %371, i64 0
  %fflags561 = bitcast %union.YYSTYPE* %arrayidx560 to i32*
  %372 = load i32, i32* %fflags561, align 4
  %fface562 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags563 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface562, i32 0, i32 1
  store i32 %372, i32* %flags563, align 4
  br label %sw.epilog

sw.bb.564:                                        ; preds = %do.end.167
  %fface565 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %373 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx566 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %373, i64 -2
  %fface567 = bitcast %union.YYSTYPE* %arrayidx566 to %struct.fface_s*
  %374 = bitcast %struct.fface_s* %fface565 to i8*
  %375 = bitcast %struct.fface_s* %fface567 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %374, i8* %375, i64 8, i32 4, i1 false)
  %376 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx568 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %376, i64 0
  %face569 = bitcast %union.YYSTYPE* %arrayidx568 to i32*
  %377 = load i32, i32* %face569, align 4
  %fface570 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %face571 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface570, i32 0, i32 0
  store i32 %377, i32* %face571, align 4
  br label %sw.epilog

sw.bb.572:                                        ; preds = %do.end.167
  %fface573 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %378 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx574 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %378, i64 -2
  %fface575 = bitcast %union.YYSTYPE* %arrayidx574 to %struct.fface_s*
  %379 = bitcast %struct.fface_s* %fface573 to i8*
  %380 = bitcast %struct.fface_s* %fface575 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %379, i8* %380, i64 8, i32 4, i1 false)
  %fface576 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags577 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface576, i32 0, i32 1
  %381 = load i32, i32* %flags577, align 4
  %382 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx578 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %382, i64 0
  %fflags579 = bitcast %union.YYSTYPE* %arrayidx578 to i32*
  %383 = load i32, i32* %fflags579, align 4
  %or580 = or i32 %381, %383
  %fface581 = bitcast %union.YYSTYPE* %sshval to %struct.fface_s*
  %flags582 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface581, i32 0, i32 1
  store i32 %or580, i32* %flags582, align 4
  br label %sw.epilog

sw.bb.583:                                        ; preds = %do.end.167
  %384 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx584 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %384, i64 -1
  %string585 = bitcast %union.YYSTYPE* %arrayidx584 to i8**
  %385 = load i8*, i8** %string585, align 8
  %386 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx586 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %386, i64 0
  %array587 = bitcast %union.YYSTYPE* %arrayidx586 to %struct.darray**
  %387 = load %struct.darray*, %struct.darray** %array587, align 8
  %388 = load i8*, i8** @sshfilename, align 8
  %389 = load i32, i32* @sshlineno, align 4
  %conv588 = sext i32 %389 to i64
  %call589 = call %struct.rule* @rule_new(i8* %385, %struct.pattern* null, %struct.darray* %387, i8* %388, i64 %conv588)
  %rule = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call589, %struct.rule** %rule, align 8
  br label %sw.epilog

sw.bb.590:                                        ; preds = %do.end.167
  %390 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx591 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %390, i64 0
  %string592 = bitcast %union.YYSTYPE* %arrayidx591 to i8**
  %391 = load i8*, i8** %string592, align 8
  %392 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call593 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %392)
  %393 = load i8*, i8** @sshfilename, align 8
  %394 = load i32, i32* @sshlineno, align 4
  %conv594 = sext i32 %394 to i64
  %call595 = call %struct.rule* @rule_new(i8* %391, %struct.pattern* null, %struct.darray* %call593, i8* %393, i64 %conv594)
  %rule596 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call595, %struct.rule** %rule596, align 8
  br label %sw.epilog

sw.bb.597:                                        ; preds = %do.end.167
  %395 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx598 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %395, i64 -2
  %string599 = bitcast %union.YYSTYPE* %arrayidx598 to i8**
  %396 = load i8*, i8** %string599, align 8
  %397 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx600 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %397, i64 -1
  %array601 = bitcast %union.YYSTYPE* %arrayidx600 to %struct.darray**
  %398 = load %struct.darray*, %struct.darray** %array601, align 8
  %399 = load i8*, i8** @sshfilename, align 8
  %400 = load i32, i32* @sshlineno, align 4
  %conv602 = sext i32 %400 to i64
  %call603 = call %struct.rule* @rule_new(i8* %396, %struct.pattern* null, %struct.darray* %398, i8* %399, i64 %conv602)
  %rule604 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call603, %struct.rule** %rule604, align 8
  br label %sw.epilog

sw.bb.605:                                        ; preds = %do.end.167
  %401 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx606 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %401, i64 -1
  %words607 = bitcast %union.YYSTYPE* %arrayidx606 to %struct.words**
  %402 = load %struct.words*, %struct.words** %words607, align 8
  %403 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx608 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %403, i64 -3
  %fface609 = bitcast %union.YYSTYPE* %arrayidx608 to %struct.fface_s*
  %404 = bitcast %struct.fface_s* %fface609 to i64*
  %405 = load i64, i64* %404, align 4
  call void @words_set_no_face(%struct.words* %402, i64 %405)
  %406 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx610 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %406, i64 -1
  %words611 = bitcast %union.YYSTYPE* %arrayidx610 to %struct.words**
  %407 = load %struct.words*, %struct.words** %words611, align 8
  %words612 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %407, %struct.words** %words612, align 8
  br label %sw.epilog

sw.bb.613:                                        ; preds = %do.end.167
  %408 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx614 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %408, i64 -1
  %words615 = bitcast %union.YYSTYPE* %arrayidx614 to %struct.words**
  %409 = load %struct.words*, %struct.words** %words615, align 8
  %words616 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %409, %struct.words** %words616, align 8
  br label %sw.epilog

sw.bb.617:                                        ; preds = %do.end.167
  %call618 = call %struct.words* @words_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i64 100, i64 100)
  %words619 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call618, %struct.words** %words619, align 8
  %words620 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %410 = load %struct.words*, %struct.words** %words620, align 8
  %411 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx621 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %411, i64 0
  %rule622 = bitcast %union.YYSTYPE* %arrayidx621 to %struct.rule**
  %412 = load %struct.rule*, %struct.rule** %rule622, align 8
  call void @words_add_string(%struct.words* %410, %struct.rule* %412)
  br label %sw.epilog

sw.bb.623:                                        ; preds = %do.end.167
  %call624 = call %struct.words* @words_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i64 100, i64 100)
  %words625 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call624, %struct.words** %words625, align 8
  %words626 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %413 = load %struct.words*, %struct.words** %words626, align 8
  %414 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx627 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %414, i64 0
  %rule628 = bitcast %union.YYSTYPE* %arrayidx627 to %struct.rule**
  %415 = load %struct.rule*, %struct.rule** %rule628, align 8
  call void @words_add_regex(%struct.words* %413, %struct.rule* %415)
  br label %sw.epilog

sw.bb.629:                                        ; preds = %do.end.167
  %416 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx630 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %416, i64 -2
  %words631 = bitcast %union.YYSTYPE* %arrayidx630 to %struct.words**
  %417 = load %struct.words*, %struct.words** %words631, align 8
  %418 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx632 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %418, i64 0
  %rule633 = bitcast %union.YYSTYPE* %arrayidx632 to %struct.rule**
  %419 = load %struct.rule*, %struct.rule** %rule633, align 8
  call void @words_add_string(%struct.words* %417, %struct.rule* %419)
  %420 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx634 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %420, i64 -2
  %words635 = bitcast %union.YYSTYPE* %arrayidx634 to %struct.words**
  %421 = load %struct.words*, %struct.words** %words635, align 8
  %words636 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %421, %struct.words** %words636, align 8
  br label %sw.epilog

sw.bb.637:                                        ; preds = %do.end.167
  %422 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx638 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %422, i64 -2
  %words639 = bitcast %union.YYSTYPE* %arrayidx638 to %struct.words**
  %423 = load %struct.words*, %struct.words** %words639, align 8
  %424 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx640 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %424, i64 0
  %rule641 = bitcast %union.YYSTYPE* %arrayidx640 to %struct.rule**
  %425 = load %struct.rule*, %struct.rule** %rule641, align 8
  call void @words_add_regex(%struct.words* %423, %struct.rule* %425)
  %426 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx642 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %426, i64 -2
  %words643 = bitcast %union.YYSTYPE* %arrayidx642 to %struct.words**
  %427 = load %struct.words*, %struct.words** %words643, align 8
  %words644 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %427, %struct.words** %words644, align 8
  br label %sw.epilog

sw.bb.645:                                        ; preds = %do.end.167
  %428 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx646 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %428, i64 -1
  %pattern647 = bitcast %union.YYSTYPE* %arrayidx646 to %struct.pattern**
  %429 = load %struct.pattern*, %struct.pattern** %pattern647, align 8
  %430 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx648 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %430, i64 0
  %array649 = bitcast %union.YYSTYPE* %arrayidx648 to %struct.darray**
  %431 = load %struct.darray*, %struct.darray** %array649, align 8
  %432 = load i8*, i8** @sshfilename, align 8
  %433 = load i32, i32* @sshlineno, align 4
  %conv650 = sext i32 %433 to i64
  %call651 = call %struct.rule* @keyword_rule_new(i8* null, %struct.pattern* %429, %struct.darray* %431, i8* %432, i64 %conv650)
  %rule652 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call651, %struct.rule** %rule652, align 8
  br label %sw.epilog

sw.bb.653:                                        ; preds = %do.end.167
  %434 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx654 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %434, i64 0
  %pattern655 = bitcast %union.YYSTYPE* %arrayidx654 to %struct.pattern**
  %435 = load %struct.pattern*, %struct.pattern** %pattern655, align 8
  %436 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call656 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %436)
  %437 = load i8*, i8** @sshfilename, align 8
  %438 = load i32, i32* @sshlineno, align 4
  %conv657 = sext i32 %438 to i64
  %call658 = call %struct.rule* @keyword_rule_new(i8* null, %struct.pattern* %435, %struct.darray* %call656, i8* %437, i64 %conv657)
  %rule659 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call658, %struct.rule** %rule659, align 8
  br label %sw.epilog

sw.bb.660:                                        ; preds = %do.end.167
  %439 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx661 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %439, i64 -2
  %pattern662 = bitcast %union.YYSTYPE* %arrayidx661 to %struct.pattern**
  %440 = load %struct.pattern*, %struct.pattern** %pattern662, align 8
  %441 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx663 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %441, i64 -1
  %array664 = bitcast %union.YYSTYPE* %arrayidx663 to %struct.darray**
  %442 = load %struct.darray*, %struct.darray** %array664, align 8
  %443 = load i8*, i8** @sshfilename, align 8
  %444 = load i32, i32* @sshlineno, align 4
  %conv665 = sext i32 %444 to i64
  %call666 = call %struct.rule* @keyword_rule_new(i8* null, %struct.pattern* %440, %struct.darray* %442, i8* %443, i64 %conv665)
  %rule667 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call666, %struct.rule** %rule667, align 8
  br label %sw.epilog

sw.bb.668:                                        ; preds = %do.end.167
  %445 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx669 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %445, i64 -1
  %words670 = bitcast %union.YYSTYPE* %arrayidx669 to %struct.words**
  %446 = load %struct.words*, %struct.words** %words670, align 8
  %447 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx671 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %447, i64 -3
  %fface672 = bitcast %union.YYSTYPE* %arrayidx671 to %struct.fface_s*
  %448 = bitcast %struct.fface_s* %fface672 to i64*
  %449 = load i64, i64* %448, align 4
  call void @words_set_no_face(%struct.words* %446, i64 %449)
  %450 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx673 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %450, i64 -1
  %words674 = bitcast %union.YYSTYPE* %arrayidx673 to %struct.words**
  %451 = load %struct.words*, %struct.words** %words674, align 8
  %words675 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %451, %struct.words** %words675, align 8
  br label %sw.epilog

sw.bb.676:                                        ; preds = %do.end.167
  %452 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx677 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %452, i64 -1
  %words678 = bitcast %union.YYSTYPE* %arrayidx677 to %struct.words**
  %453 = load %struct.words*, %struct.words** %words678, align 8
  %words679 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %453, %struct.words** %words679, align 8
  br label %sw.epilog

sw.bb.680:                                        ; preds = %do.end.167
  %call681 = call %struct.words* @words_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i64 100, i64 100)
  %words682 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call681, %struct.words** %words682, align 8
  %words683 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %454 = load %struct.words*, %struct.words** %words683, align 8
  %455 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx684 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %455, i64 0
  %rule685 = bitcast %union.YYSTYPE* %arrayidx684 to %struct.rule**
  %456 = load %struct.rule*, %struct.rule** %rule685, align 8
  call void @words_add_string(%struct.words* %454, %struct.rule* %456)
  br label %sw.epilog

sw.bb.686:                                        ; preds = %do.end.167
  %call687 = call %struct.words* @words_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i64 100, i64 100)
  %words688 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call687, %struct.words** %words688, align 8
  %words689 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %457 = load %struct.words*, %struct.words** %words689, align 8
  %458 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx690 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %458, i64 0
  %rule691 = bitcast %union.YYSTYPE* %arrayidx690 to %struct.rule**
  %459 = load %struct.rule*, %struct.rule** %rule691, align 8
  call void @words_add_regex(%struct.words* %457, %struct.rule* %459)
  br label %sw.epilog

sw.bb.692:                                        ; preds = %do.end.167
  %460 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx693 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %460, i64 -2
  %words694 = bitcast %union.YYSTYPE* %arrayidx693 to %struct.words**
  %461 = load %struct.words*, %struct.words** %words694, align 8
  %462 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx695 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %462, i64 0
  %rule696 = bitcast %union.YYSTYPE* %arrayidx695 to %struct.rule**
  %463 = load %struct.rule*, %struct.rule** %rule696, align 8
  call void @words_add_string(%struct.words* %461, %struct.rule* %463)
  %464 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx697 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %464, i64 -2
  %words698 = bitcast %union.YYSTYPE* %arrayidx697 to %struct.words**
  %465 = load %struct.words*, %struct.words** %words698, align 8
  %words699 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %465, %struct.words** %words699, align 8
  br label %sw.epilog

sw.bb.700:                                        ; preds = %do.end.167
  %466 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx701 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %466, i64 -2
  %words702 = bitcast %union.YYSTYPE* %arrayidx701 to %struct.words**
  %467 = load %struct.words*, %struct.words** %words702, align 8
  %468 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx703 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %468, i64 0
  %rule704 = bitcast %union.YYSTYPE* %arrayidx703 to %struct.rule**
  %469 = load %struct.rule*, %struct.rule** %rule704, align 8
  call void @words_add_regex(%struct.words* %467, %struct.rule* %469)
  %470 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx705 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %470, i64 -2
  %words706 = bitcast %union.YYSTYPE* %arrayidx705 to %struct.words**
  %471 = load %struct.words*, %struct.words** %words706, align 8
  %words707 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %471, %struct.words** %words707, align 8
  br label %sw.epilog

sw.bb.708:                                        ; preds = %do.end.167
  %472 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx709 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %472, i64 -1
  %pattern710 = bitcast %union.YYSTYPE* %arrayidx709 to %struct.pattern**
  %473 = load %struct.pattern*, %struct.pattern** %pattern710, align 8
  %474 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx711 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %474, i64 0
  %array712 = bitcast %union.YYSTYPE* %arrayidx711 to %struct.darray**
  %475 = load %struct.darray*, %struct.darray** %array712, align 8
  %476 = load i8*, i8** @sshfilename, align 8
  %477 = load i32, i32* @sshlineno, align 4
  %conv713 = sext i32 %477 to i64
  %call714 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %473, %struct.darray* %475, i8* %476, i64 %conv713)
  %rule715 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call714, %struct.rule** %rule715, align 8
  br label %sw.epilog

sw.bb.716:                                        ; preds = %do.end.167
  %478 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx717 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %478, i64 0
  %pattern718 = bitcast %union.YYSTYPE* %arrayidx717 to %struct.pattern**
  %479 = load %struct.pattern*, %struct.pattern** %pattern718, align 8
  %480 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call719 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %480)
  %481 = load i8*, i8** @sshfilename, align 8
  %482 = load i32, i32* @sshlineno, align 4
  %conv720 = sext i32 %482 to i64
  %call721 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %479, %struct.darray* %call719, i8* %481, i64 %conv720)
  %rule722 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call721, %struct.rule** %rule722, align 8
  br label %sw.epilog

sw.bb.723:                                        ; preds = %do.end.167
  %483 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx724 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %483, i64 -2
  %pattern725 = bitcast %union.YYSTYPE* %arrayidx724 to %struct.pattern**
  %484 = load %struct.pattern*, %struct.pattern** %pattern725, align 8
  %485 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx726 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %485, i64 -1
  %array727 = bitcast %union.YYSTYPE* %arrayidx726 to %struct.darray**
  %486 = load %struct.darray*, %struct.darray** %array727, align 8
  %487 = load i8*, i8** @sshfilename, align 8
  %488 = load i32, i32* @sshlineno, align 4
  %conv728 = sext i32 %488 to i64
  %call729 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %484, %struct.darray* %486, i8* %487, i64 %conv728)
  %rule730 = bitcast %union.YYSTYPE* %sshval to %struct.rule**
  store %struct.rule* %call729, %struct.rule** %rule730, align 8
  br label %sw.epilog

sw.bb.731:                                        ; preds = %do.end.167
  %489 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx732 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %489, i64 -2
  %array733 = bitcast %union.YYSTYPE* %arrayidx732 to %struct.darray**
  %490 = load %struct.darray*, %struct.darray** %array733, align 8
  %array734 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %490, %struct.darray** %array734, align 8
  br label %sw.epilog

sw.bb.735:                                        ; preds = %do.end.167
  %call736 = call %struct.darray* @da_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64 100, i32 1, i64 100, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.sequence*, %struct._IO_FILE*)* @sequence_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %array737 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %call736, %struct.darray** %array737, align 8
  %array738 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  %491 = load %struct.darray*, %struct.darray** %array738, align 8
  %492 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx739 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %492, i64 0
  %sequence = bitcast %union.YYSTYPE* %arrayidx739 to %struct.sequence**
  %493 = load %struct.sequence*, %struct.sequence** %sequence, align 8
  %494 = bitcast %struct.sequence* %493 to i8*
  call void @da_append(%struct.darray* %491, i8* %494)
  br label %sw.epilog

sw.bb.740:                                        ; preds = %do.end.167
  %495 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx741 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %495, i64 -2
  %array742 = bitcast %union.YYSTYPE* %arrayidx741 to %struct.darray**
  %496 = load %struct.darray*, %struct.darray** %array742, align 8
  %497 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx743 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %497, i64 0
  %sequence744 = bitcast %union.YYSTYPE* %arrayidx743 to %struct.sequence**
  %498 = load %struct.sequence*, %struct.sequence** %sequence744, align 8
  %499 = bitcast %struct.sequence* %498 to i8*
  call void @da_append(%struct.darray* %496, i8* %499)
  %500 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx745 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %500, i64 -2
  %array746 = bitcast %union.YYSTYPE* %arrayidx745 to %struct.darray**
  %501 = load %struct.darray*, %struct.darray** %array746, align 8
  %array747 = bitcast %union.YYSTYPE* %sshval to %struct.darray**
  store %struct.darray* %501, %struct.darray** %array747, align 8
  br label %sw.epilog

sw.bb.748:                                        ; preds = %do.end.167
  %502 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx749 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %502, i64 -4
  %string750 = bitcast %union.YYSTYPE* %arrayidx749 to i8**
  %503 = load i8*, i8** %string750, align 8
  %504 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx751 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %504, i64 -3
  %string752 = bitcast %union.YYSTYPE* %arrayidx751 to i8**
  %505 = load i8*, i8** %string752, align 8
  %506 = load i64, i64* bitcast (%struct.fface_s* @Symbol_fface to i64*), align 4
  %call753 = call %struct.darray* @rhs_new_single(i8* %505, i32 0, i64 %506)
  %507 = load i8*, i8** @sshfilename, align 8
  %508 = load i32, i32* @sshlineno, align 4
  %conv754 = sext i32 %508 to i64
  %call755 = call %struct.rule* @rule_new(i8* %503, %struct.pattern* null, %struct.darray* %call753, i8* %507, i64 %conv754)
  store %struct.rule* %call755, %struct.rule** %open_rule, align 8
  %509 = load %struct.rule*, %struct.rule** %open_rule, align 8
  %510 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx756 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %510, i64 -2
  %fface757 = bitcast %union.YYSTYPE* %arrayidx756 to %struct.fface_s*
  %511 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx758 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %511, i64 -1
  %words759 = bitcast %union.YYSTYPE* %arrayidx758 to %struct.words**
  %512 = load %struct.words*, %struct.words** %words759, align 8
  %513 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx760 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %513, i64 0
  %words761 = bitcast %union.YYSTYPE* %arrayidx760 to %struct.words**
  %514 = load %struct.words*, %struct.words** %words761, align 8
  %515 = bitcast %struct.fface_s* %fface757 to i64*
  %516 = load i64, i64* %515, align 4
  %call762 = call %struct.sequence* @sequence_new(%struct.rule* %509, i64 %516, %struct.words* %512, %struct.words* %514)
  %sequence763 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call762, %struct.sequence** %sequence763, align 8
  br label %sw.epilog

sw.bb.764:                                        ; preds = %do.end.167
  %517 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx766 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %517, i64 -5
  %string767 = bitcast %union.YYSTYPE* %arrayidx766 to i8**
  %518 = load i8*, i8** %string767, align 8
  %519 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx768 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %519, i64 -4
  %string769 = bitcast %union.YYSTYPE* %arrayidx768 to i8**
  %520 = load i8*, i8** %string769, align 8
  %521 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx770 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %521, i64 -3
  %fface771 = bitcast %union.YYSTYPE* %arrayidx770 to %struct.fface_s*
  %522 = bitcast %struct.fface_s* %fface771 to i64*
  %523 = load i64, i64* %522, align 4
  %call772 = call %struct.darray* @rhs_new_single(i8* %520, i32 0, i64 %523)
  %524 = load i8*, i8** @sshfilename, align 8
  %525 = load i32, i32* @sshlineno, align 4
  %conv773 = sext i32 %525 to i64
  %call774 = call %struct.rule* @rule_new(i8* %518, %struct.pattern* null, %struct.darray* %call772, i8* %524, i64 %conv773)
  store %struct.rule* %call774, %struct.rule** %open_rule765, align 8
  %526 = load %struct.rule*, %struct.rule** %open_rule765, align 8
  %527 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx775 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %527, i64 -2
  %fface776 = bitcast %union.YYSTYPE* %arrayidx775 to %struct.fface_s*
  %528 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx777 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %528, i64 -1
  %words778 = bitcast %union.YYSTYPE* %arrayidx777 to %struct.words**
  %529 = load %struct.words*, %struct.words** %words778, align 8
  %530 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx779 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %530, i64 0
  %words780 = bitcast %union.YYSTYPE* %arrayidx779 to %struct.words**
  %531 = load %struct.words*, %struct.words** %words780, align 8
  %532 = bitcast %struct.fface_s* %fface776 to i64*
  %533 = load i64, i64* %532, align 4
  %call781 = call %struct.sequence* @sequence_new(%struct.rule* %526, i64 %533, %struct.words* %529, %struct.words* %531)
  %sequence782 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call781, %struct.sequence** %sequence782, align 8
  br label %sw.epilog

sw.bb.783:                                        ; preds = %do.end.167
  %534 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx785 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %534, i64 -4
  %string786 = bitcast %union.YYSTYPE* %arrayidx785 to i8**
  %535 = load i8*, i8** %string786, align 8
  %536 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx787 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %536, i64 -3
  %fface788 = bitcast %union.YYSTYPE* %arrayidx787 to %struct.fface_s*
  %537 = bitcast %struct.fface_s* %fface788 to i64*
  %538 = load i64, i64* %537, align 4
  %call789 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %538)
  %539 = load i8*, i8** @sshfilename, align 8
  %540 = load i32, i32* @sshlineno, align 4
  %conv790 = sext i32 %540 to i64
  %call791 = call %struct.rule* @rule_new(i8* %535, %struct.pattern* null, %struct.darray* %call789, i8* %539, i64 %conv790)
  store %struct.rule* %call791, %struct.rule** %open_rule784, align 8
  %541 = load %struct.rule*, %struct.rule** %open_rule784, align 8
  %542 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx792 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %542, i64 -2
  %fface793 = bitcast %union.YYSTYPE* %arrayidx792 to %struct.fface_s*
  %543 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx794 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %543, i64 -1
  %words795 = bitcast %union.YYSTYPE* %arrayidx794 to %struct.words**
  %544 = load %struct.words*, %struct.words** %words795, align 8
  %545 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx796 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %545, i64 0
  %words797 = bitcast %union.YYSTYPE* %arrayidx796 to %struct.words**
  %546 = load %struct.words*, %struct.words** %words797, align 8
  %547 = bitcast %struct.fface_s* %fface793 to i64*
  %548 = load i64, i64* %547, align 4
  %call798 = call %struct.sequence* @sequence_new(%struct.rule* %541, i64 %548, %struct.words* %544, %struct.words* %546)
  %sequence799 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call798, %struct.sequence** %sequence799, align 8
  br label %sw.epilog

sw.bb.800:                                        ; preds = %do.end.167
  %549 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx802 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %549, i64 -4
  %string803 = bitcast %union.YYSTYPE* %arrayidx802 to i8**
  %550 = load i8*, i8** %string803, align 8
  %551 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %551, i64 -3
  %string805 = bitcast %union.YYSTYPE* %arrayidx804 to i8**
  %552 = load i8*, i8** %string805, align 8
  %553 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx806 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %553, i64 -2
  %fface807 = bitcast %union.YYSTYPE* %arrayidx806 to %struct.fface_s*
  %554 = bitcast %struct.fface_s* %fface807 to i64*
  %555 = load i64, i64* %554, align 4
  %call808 = call %struct.darray* @rhs_new_single(i8* %552, i32 0, i64 %555)
  %556 = load i8*, i8** @sshfilename, align 8
  %557 = load i32, i32* @sshlineno, align 4
  %conv809 = sext i32 %557 to i64
  %call810 = call %struct.rule* @rule_new(i8* %550, %struct.pattern* null, %struct.darray* %call808, i8* %556, i64 %conv809)
  store %struct.rule* %call810, %struct.rule** %open_rule801, align 8
  %558 = load %struct.rule*, %struct.rule** %open_rule801, align 8
  %559 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx811 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %559, i64 -2
  %fface812 = bitcast %union.YYSTYPE* %arrayidx811 to %struct.fface_s*
  %560 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx813 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %560, i64 -1
  %words814 = bitcast %union.YYSTYPE* %arrayidx813 to %struct.words**
  %561 = load %struct.words*, %struct.words** %words814, align 8
  %562 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx815 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %562, i64 0
  %words816 = bitcast %union.YYSTYPE* %arrayidx815 to %struct.words**
  %563 = load %struct.words*, %struct.words** %words816, align 8
  %564 = bitcast %struct.fface_s* %fface812 to i64*
  %565 = load i64, i64* %564, align 4
  %call817 = call %struct.sequence* @sequence_new(%struct.rule* %558, i64 %565, %struct.words* %561, %struct.words* %563)
  %sequence818 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call817, %struct.sequence** %sequence818, align 8
  br label %sw.epilog

sw.bb.819:                                        ; preds = %do.end.167
  %566 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx821 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %566, i64 -3
  %string822 = bitcast %union.YYSTYPE* %arrayidx821 to i8**
  %567 = load i8*, i8** %string822, align 8
  %568 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx823 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %568, i64 -2
  %fface824 = bitcast %union.YYSTYPE* %arrayidx823 to %struct.fface_s*
  %569 = bitcast %struct.fface_s* %fface824 to i64*
  %570 = load i64, i64* %569, align 4
  %call825 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %570)
  %571 = load i8*, i8** @sshfilename, align 8
  %572 = load i32, i32* @sshlineno, align 4
  %conv826 = sext i32 %572 to i64
  %call827 = call %struct.rule* @rule_new(i8* %567, %struct.pattern* null, %struct.darray* %call825, i8* %571, i64 %conv826)
  store %struct.rule* %call827, %struct.rule** %open_rule820, align 8
  %573 = load %struct.rule*, %struct.rule** %open_rule820, align 8
  %574 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx828 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %574, i64 -2
  %fface829 = bitcast %union.YYSTYPE* %arrayidx828 to %struct.fface_s*
  %575 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx830 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %575, i64 -1
  %words831 = bitcast %union.YYSTYPE* %arrayidx830 to %struct.words**
  %576 = load %struct.words*, %struct.words** %words831, align 8
  %577 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx832 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %577, i64 0
  %words833 = bitcast %union.YYSTYPE* %arrayidx832 to %struct.words**
  %578 = load %struct.words*, %struct.words** %words833, align 8
  %579 = bitcast %struct.fface_s* %fface829 to i64*
  %580 = load i64, i64* %579, align 4
  %call834 = call %struct.sequence* @sequence_new(%struct.rule* %573, i64 %580, %struct.words* %576, %struct.words* %578)
  %sequence835 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call834, %struct.sequence** %sequence835, align 8
  br label %sw.epilog

sw.bb.836:                                        ; preds = %do.end.167
  %581 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx838 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %581, i64 -5
  %pattern839 = bitcast %union.YYSTYPE* %arrayidx838 to %struct.pattern**
  %582 = load %struct.pattern*, %struct.pattern** %pattern839, align 8
  %583 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx840 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %583, i64 -4
  %string841 = bitcast %union.YYSTYPE* %arrayidx840 to i8**
  %584 = load i8*, i8** %string841, align 8
  %585 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx842 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %585, i64 -3
  %fface843 = bitcast %union.YYSTYPE* %arrayidx842 to %struct.fface_s*
  %586 = bitcast %struct.fface_s* %fface843 to i64*
  %587 = load i64, i64* %586, align 4
  %call844 = call %struct.darray* @rhs_new_single(i8* %584, i32 0, i64 %587)
  %588 = load i8*, i8** @sshfilename, align 8
  %589 = load i32, i32* @sshlineno, align 4
  %conv845 = sext i32 %589 to i64
  %call846 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %582, %struct.darray* %call844, i8* %588, i64 %conv845)
  store %struct.rule* %call846, %struct.rule** %open_rule837, align 8
  %590 = load %struct.rule*, %struct.rule** %open_rule837, align 8
  %591 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx847 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %591, i64 -2
  %fface848 = bitcast %union.YYSTYPE* %arrayidx847 to %struct.fface_s*
  %592 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx849 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %592, i64 -1
  %words850 = bitcast %union.YYSTYPE* %arrayidx849 to %struct.words**
  %593 = load %struct.words*, %struct.words** %words850, align 8
  %594 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx851 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %594, i64 0
  %words852 = bitcast %union.YYSTYPE* %arrayidx851 to %struct.words**
  %595 = load %struct.words*, %struct.words** %words852, align 8
  %596 = bitcast %struct.fface_s* %fface848 to i64*
  %597 = load i64, i64* %596, align 4
  %call853 = call %struct.sequence* @sequence_new(%struct.rule* %590, i64 %597, %struct.words* %593, %struct.words* %595)
  %sequence854 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call853, %struct.sequence** %sequence854, align 8
  br label %sw.epilog

sw.bb.855:                                        ; preds = %do.end.167
  %598 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx857 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %598, i64 -4
  %pattern858 = bitcast %union.YYSTYPE* %arrayidx857 to %struct.pattern**
  %599 = load %struct.pattern*, %struct.pattern** %pattern858, align 8
  %600 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx859 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %600, i64 -3
  %fface860 = bitcast %union.YYSTYPE* %arrayidx859 to %struct.fface_s*
  %601 = bitcast %struct.fface_s* %fface860 to i64*
  %602 = load i64, i64* %601, align 4
  %call861 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %602)
  %603 = load i8*, i8** @sshfilename, align 8
  %604 = load i32, i32* @sshlineno, align 4
  %conv862 = sext i32 %604 to i64
  %call863 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %599, %struct.darray* %call861, i8* %603, i64 %conv862)
  store %struct.rule* %call863, %struct.rule** %open_rule856, align 8
  %605 = load %struct.rule*, %struct.rule** %open_rule856, align 8
  %606 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx864 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %606, i64 -2
  %fface865 = bitcast %union.YYSTYPE* %arrayidx864 to %struct.fface_s*
  %607 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx866 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %607, i64 -1
  %words867 = bitcast %union.YYSTYPE* %arrayidx866 to %struct.words**
  %608 = load %struct.words*, %struct.words** %words867, align 8
  %609 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx868 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %609, i64 0
  %words869 = bitcast %union.YYSTYPE* %arrayidx868 to %struct.words**
  %610 = load %struct.words*, %struct.words** %words869, align 8
  %611 = bitcast %struct.fface_s* %fface865 to i64*
  %612 = load i64, i64* %611, align 4
  %call870 = call %struct.sequence* @sequence_new(%struct.rule* %605, i64 %612, %struct.words* %608, %struct.words* %610)
  %sequence871 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call870, %struct.sequence** %sequence871, align 8
  br label %sw.epilog

sw.bb.872:                                        ; preds = %do.end.167
  %613 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx874 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %613, i64 -4
  %pattern875 = bitcast %union.YYSTYPE* %arrayidx874 to %struct.pattern**
  %614 = load %struct.pattern*, %struct.pattern** %pattern875, align 8
  %615 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx876 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %615, i64 -3
  %string877 = bitcast %union.YYSTYPE* %arrayidx876 to i8**
  %616 = load i8*, i8** %string877, align 8
  %617 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx878 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %617, i64 -2
  %fface879 = bitcast %union.YYSTYPE* %arrayidx878 to %struct.fface_s*
  %618 = bitcast %struct.fface_s* %fface879 to i64*
  %619 = load i64, i64* %618, align 4
  %call880 = call %struct.darray* @rhs_new_single(i8* %616, i32 0, i64 %619)
  %620 = load i8*, i8** @sshfilename, align 8
  %621 = load i32, i32* @sshlineno, align 4
  %conv881 = sext i32 %621 to i64
  %call882 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %614, %struct.darray* %call880, i8* %620, i64 %conv881)
  store %struct.rule* %call882, %struct.rule** %open_rule873, align 8
  %622 = load %struct.rule*, %struct.rule** %open_rule873, align 8
  %623 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx883 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %623, i64 -2
  %fface884 = bitcast %union.YYSTYPE* %arrayidx883 to %struct.fface_s*
  %624 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx885 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %624, i64 -1
  %words886 = bitcast %union.YYSTYPE* %arrayidx885 to %struct.words**
  %625 = load %struct.words*, %struct.words** %words886, align 8
  %626 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx887 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %626, i64 0
  %words888 = bitcast %union.YYSTYPE* %arrayidx887 to %struct.words**
  %627 = load %struct.words*, %struct.words** %words888, align 8
  %628 = bitcast %struct.fface_s* %fface884 to i64*
  %629 = load i64, i64* %628, align 4
  %call889 = call %struct.sequence* @sequence_new(%struct.rule* %622, i64 %629, %struct.words* %625, %struct.words* %627)
  %sequence890 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call889, %struct.sequence** %sequence890, align 8
  br label %sw.epilog

sw.bb.891:                                        ; preds = %do.end.167
  %630 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx893 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %630, i64 -3
  %pattern894 = bitcast %union.YYSTYPE* %arrayidx893 to %struct.pattern**
  %631 = load %struct.pattern*, %struct.pattern** %pattern894, align 8
  %632 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call895 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %632)
  %633 = load i8*, i8** @sshfilename, align 8
  %634 = load i32, i32* @sshlineno, align 4
  %conv896 = sext i32 %634 to i64
  %call897 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %631, %struct.darray* %call895, i8* %633, i64 %conv896)
  store %struct.rule* %call897, %struct.rule** %open_rule892, align 8
  %635 = load %struct.rule*, %struct.rule** %open_rule892, align 8
  %636 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx898 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %636, i64 -2
  %fface899 = bitcast %union.YYSTYPE* %arrayidx898 to %struct.fface_s*
  %637 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx900 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %637, i64 -1
  %words901 = bitcast %union.YYSTYPE* %arrayidx900 to %struct.words**
  %638 = load %struct.words*, %struct.words** %words901, align 8
  %639 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx902 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %639, i64 0
  %words903 = bitcast %union.YYSTYPE* %arrayidx902 to %struct.words**
  %640 = load %struct.words*, %struct.words** %words903, align 8
  %641 = bitcast %struct.fface_s* %fface899 to i64*
  %642 = load i64, i64* %641, align 4
  %call904 = call %struct.sequence* @sequence_new(%struct.rule* %635, i64 %642, %struct.words* %638, %struct.words* %640)
  %sequence905 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call904, %struct.sequence** %sequence905, align 8
  br label %sw.epilog

sw.bb.906:                                        ; preds = %do.end.167
  %643 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx908 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %643, i64 -5
  %string909 = bitcast %union.YYSTYPE* %arrayidx908 to i8**
  %644 = load i8*, i8** %string909, align 8
  %645 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx910 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %645, i64 -4
  %array911 = bitcast %union.YYSTYPE* %arrayidx910 to %struct.darray**
  %646 = load %struct.darray*, %struct.darray** %array911, align 8
  %647 = load i8*, i8** @sshfilename, align 8
  %648 = load i32, i32* @sshlineno, align 4
  %conv912 = sext i32 %648 to i64
  %call913 = call %struct.rule* @rule_new(i8* %644, %struct.pattern* null, %struct.darray* %646, i8* %647, i64 %conv912)
  store %struct.rule* %call913, %struct.rule** %open_rule907, align 8
  %649 = load %struct.rule*, %struct.rule** %open_rule907, align 8
  %650 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx914 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %650, i64 -2
  %fface915 = bitcast %union.YYSTYPE* %arrayidx914 to %struct.fface_s*
  %651 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx916 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %651, i64 -1
  %words917 = bitcast %union.YYSTYPE* %arrayidx916 to %struct.words**
  %652 = load %struct.words*, %struct.words** %words917, align 8
  %653 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx918 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %653, i64 0
  %words919 = bitcast %union.YYSTYPE* %arrayidx918 to %struct.words**
  %654 = load %struct.words*, %struct.words** %words919, align 8
  %655 = bitcast %struct.fface_s* %fface915 to i64*
  %656 = load i64, i64* %655, align 4
  %call920 = call %struct.sequence* @sequence_new(%struct.rule* %649, i64 %656, %struct.words* %652, %struct.words* %654)
  %sequence921 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call920, %struct.sequence** %sequence921, align 8
  br label %sw.epilog

sw.bb.922:                                        ; preds = %do.end.167
  %657 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx924 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %657, i64 -5
  %pattern925 = bitcast %union.YYSTYPE* %arrayidx924 to %struct.pattern**
  %658 = load %struct.pattern*, %struct.pattern** %pattern925, align 8
  %659 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx926 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %659, i64 -4
  %array927 = bitcast %union.YYSTYPE* %arrayidx926 to %struct.darray**
  %660 = load %struct.darray*, %struct.darray** %array927, align 8
  %661 = load i8*, i8** @sshfilename, align 8
  %662 = load i32, i32* @sshlineno, align 4
  %conv928 = sext i32 %662 to i64
  %call929 = call %struct.rule* @rule_new(i8* null, %struct.pattern* %658, %struct.darray* %660, i8* %661, i64 %conv928)
  store %struct.rule* %call929, %struct.rule** %open_rule923, align 8
  %663 = load %struct.rule*, %struct.rule** %open_rule923, align 8
  %664 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx930 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %664, i64 -2
  %fface931 = bitcast %union.YYSTYPE* %arrayidx930 to %struct.fface_s*
  %665 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx932 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %665, i64 -1
  %words933 = bitcast %union.YYSTYPE* %arrayidx932 to %struct.words**
  %666 = load %struct.words*, %struct.words** %words933, align 8
  %667 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx934 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %667, i64 0
  %words935 = bitcast %union.YYSTYPE* %arrayidx934 to %struct.words**
  %668 = load %struct.words*, %struct.words** %words935, align 8
  %669 = bitcast %struct.fface_s* %fface931 to i64*
  %670 = load i64, i64* %669, align 4
  %call936 = call %struct.sequence* @sequence_new(%struct.rule* %663, i64 %670, %struct.words* %666, %struct.words* %668)
  %sequence937 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call936, %struct.sequence** %sequence937, align 8
  br label %sw.epilog

sw.bb.938:                                        ; preds = %do.end.167
  %call939 = call %struct.sequence* @new_C_string_sequence(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %sequence940 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call939, %struct.sequence** %sequence940, align 8
  br label %sw.epilog

sw.bb.941:                                        ; preds = %do.end.167
  %call942 = call %struct.sequence* @new_C_string_sequence(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %sequence943 = bitcast %union.YYSTYPE* %sshval to %struct.sequence**
  store %struct.sequence* %call942, %struct.sequence** %sequence943, align 8
  br label %sw.epilog

sw.bb.944:                                        ; preds = %do.end.167
  %call945 = call %struct.words* @words_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i64 2, i64 2)
  %words946 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call945, %struct.words** %words946, align 8
  %words947 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %671 = load %struct.words*, %struct.words** %words947, align 8
  %call948 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %672 = load i64, i64* bitcast (%struct.fface_s* @No_fface to i64*), align 4
  %call949 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %672)
  %673 = load i8*, i8** @sshfilename, align 8
  %674 = load i32, i32* @sshlineno, align 4
  %conv950 = sext i32 %674 to i64
  %call951 = call %struct.rule* @rule_new(i8* %call948, %struct.pattern* null, %struct.darray* %call949, i8* %673, i64 %conv950)
  call void @words_add_string(%struct.words* %671, %struct.rule* %call951)
  br label %sw.epilog

sw.bb.952:                                        ; preds = %do.end.167
  %call953 = call %struct.words* @words_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i64 2, i64 2)
  %words954 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call953, %struct.words** %words954, align 8
  %words955 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %675 = load %struct.words*, %struct.words** %words955, align 8
  %676 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx956 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %676, i64 0
  %rule957 = bitcast %union.YYSTYPE* %arrayidx956 to %struct.rule**
  %677 = load %struct.rule*, %struct.rule** %rule957, align 8
  call void @words_add_string(%struct.words* %675, %struct.rule* %677)
  br label %sw.epilog

sw.bb.958:                                        ; preds = %do.end.167
  %call959 = call %struct.words* @words_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i64 2, i64 2)
  %words960 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call959, %struct.words** %words960, align 8
  %words961 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  %678 = load %struct.words*, %struct.words** %words961, align 8
  %679 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx962 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %679, i64 0
  %rule963 = bitcast %union.YYSTYPE* %arrayidx962 to %struct.rule**
  %680 = load %struct.rule*, %struct.rule** %rule963, align 8
  call void @words_add_regex(%struct.words* %678, %struct.rule* %680)
  br label %sw.epilog

sw.bb.964:                                        ; preds = %do.end.167
  %681 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx965 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %681, i64 -1
  %words966 = bitcast %union.YYSTYPE* %arrayidx965 to %struct.words**
  %682 = load %struct.words*, %struct.words** %words966, align 8
  %words967 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %682, %struct.words** %words967, align 8
  br label %sw.epilog

sw.bb.968:                                        ; preds = %do.end.167
  %call969 = call %struct.words* @words_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i64 1, i64 1)
  %words970 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %call969, %struct.words** %words970, align 8
  br label %sw.epilog

sw.bb.971:                                        ; preds = %do.end.167
  %683 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx972 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %683, i64 -1
  %words973 = bitcast %union.YYSTYPE* %arrayidx972 to %struct.words**
  %684 = load %struct.words*, %struct.words** %words973, align 8
  %words974 = bitcast %union.YYSTYPE* %sshval to %struct.words**
  store %struct.words* %684, %struct.words** %words974, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.167
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.971, %sw.bb.968, %sw.bb.964, %sw.bb.958, %sw.bb.952, %sw.bb.944, %sw.bb.941, %sw.bb.938, %sw.bb.922, %sw.bb.906, %sw.bb.891, %sw.bb.872, %sw.bb.855, %sw.bb.836, %sw.bb.819, %sw.bb.800, %sw.bb.783, %sw.bb.764, %sw.bb.748, %sw.bb.740, %sw.bb.735, %sw.bb.731, %sw.bb.723, %sw.bb.716, %sw.bb.708, %sw.bb.700, %sw.bb.692, %sw.bb.686, %sw.bb.680, %sw.bb.676, %sw.bb.668, %sw.bb.660, %sw.bb.653, %sw.bb.645, %sw.bb.637, %sw.bb.629, %sw.bb.623, %sw.bb.617, %sw.bb.613, %sw.bb.605, %sw.bb.597, %sw.bb.590, %sw.bb.583, %sw.bb.572, %sw.bb.564, %sw.bb.557, %sw.bb.550, %if.end.549, %sw.bb.525, %sw.bb.520, %sw.bb.512, %sw.bb.506, %sw.bb.501, %sw.bb.496, %sw.bb.490, %sw.bb.485, %sw.bb.480, %sw.bb.474, %sw.bb.469, %sw.bb.431, %sw.bb.428, %sw.bb.424, %sw.bb.416, %sw.bb.410, %sw.bb.406, %sw.bb.402, %sw.bb.398, %sw.bb.394, %sw.bb.367, %sw.bb.363, %sw.bb.359, %sw.bb.355, %sw.bb.351, %if.end.350, %sw.bb.334, %sw.bb.329, %sw.bb.324, %sw.bb.319, %sw.bb.305, %sw.bb.291, %sw.bb.273, %sw.bb.263, %sw.bb.252, %if.end.248, %sw.bb.225, %if.end.221, %sw.bb.197, %if.end.193, %sw.bb.178, %sw.bb.169, %sw.bb
  br label %do.body.975

do.body.975:                                      ; preds = %sw.epilog
  %685 = load i32, i32* @sshdebug, align 4
  %tobool976 = icmp ne i32 %685, 0
  br i1 %tobool976, label %if.then.977, label %if.end.983

if.then.977:                                      ; preds = %do.body.975
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call978 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %686, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0))
  %687 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %688 = load i32, i32* %yyn, align 4
  %idxprom979 = sext i32 %688 to i64
  %arrayidx980 = getelementptr inbounds [93 x i8], [93 x i8]* @sshr1, i32 0, i64 %idxprom979
  %689 = load i8, i8* %arrayidx980, align 1
  %conv981 = zext i8 %689 to i32
  call void @yy_symbol_print(%struct._IO_FILE* %687, i32 %conv981, %union.YYSTYPE* %sshval)
  %690 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call982 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %690, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.977, %do.body.975
  br label %do.end.984

do.end.984:                                       ; preds = %if.end.983
  %691 = load i32, i32* %sshyylen, align 4
  %692 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext = sext i32 %691 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr985 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %692, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr985, %union.YYSTYPE** %yyvsp, align 8
  %693 = load i32, i32* %sshyylen, align 4
  %694 = load i16*, i16** %yyssp, align 8
  %idx.ext986 = sext i32 %693 to i64
  %idx.neg987 = sub i64 0, %idx.ext986
  %add.ptr988 = getelementptr inbounds i16, i16* %694, i64 %idx.neg987
  store i16* %add.ptr988, i16** %yyssp, align 8
  store i32 0, i32* %sshyylen, align 4
  br label %do.body.989

do.body.989:                                      ; preds = %do.end.984
  %695 = load i32, i32* @sshdebug, align 4
  %tobool990 = icmp ne i32 %695, 0
  br i1 %tobool990, label %if.then.991, label %if.end.992

if.then.991:                                      ; preds = %do.body.989
  %696 = load i16*, i16** %yyss, align 8
  %697 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %696, i16* %697)
  br label %if.end.992

if.end.992:                                       ; preds = %if.then.991, %do.body.989
  br label %do.end.993

do.end.993:                                       ; preds = %if.end.992
  %698 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr994 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %698, i32 1
  store %union.YYSTYPE* %incdec.ptr994, %union.YYSTYPE** %yyvsp, align 8
  %699 = bitcast %union.YYSTYPE* %incdec.ptr994 to i8*
  %700 = bitcast %union.YYSTYPE* %sshval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %699, i8* %700, i64 8, i32 8, i1 false)
  %701 = load i32, i32* %yyn, align 4
  %idxprom995 = sext i32 %701 to i64
  %arrayidx996 = getelementptr inbounds [93 x i8], [93 x i8]* @sshr1, i32 0, i64 %idxprom995
  %702 = load i8, i8* %arrayidx996, align 1
  %conv997 = zext i8 %702 to i32
  store i32 %conv997, i32* %yyn, align 4
  %703 = load i32, i32* %yyn, align 4
  %sub998 = sub nsw i32 %703, 39
  %idxprom999 = sext i32 %sub998 to i64
  %arrayidx1000 = getelementptr inbounds [30 x i16], [30 x i16]* @yypgoto, i32 0, i64 %idxprom999
  %704 = load i16, i16* %arrayidx1000, align 2
  %conv1001 = sext i16 %704 to i32
  %705 = load i16*, i16** %yyssp, align 8
  %706 = load i16, i16* %705, align 2
  %conv1002 = sext i16 %706 to i32
  %add1003 = add nsw i32 %conv1001, %conv1002
  store i32 %add1003, i32* %sshstate, align 4
  %707 = load i32, i32* %sshstate, align 4
  %cmp1004 = icmp sle i32 0, %707
  br i1 %cmp1004, label %land.lhs.true, label %if.else.1019

land.lhs.true:                                    ; preds = %do.end.993
  %708 = load i32, i32* %sshstate, align 4
  %cmp1006 = icmp sle i32 %708, 218
  br i1 %cmp1006, label %land.lhs.true.1008, label %if.else.1019

land.lhs.true.1008:                               ; preds = %land.lhs.true
  %709 = load i32, i32* %sshstate, align 4
  %idxprom1009 = sext i32 %709 to i64
  %arrayidx1010 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyycheck, i32 0, i64 %idxprom1009
  %710 = load i8, i8* %arrayidx1010, align 1
  %conv1011 = zext i8 %710 to i32
  %711 = load i16*, i16** %yyssp, align 8
  %712 = load i16, i16* %711, align 2
  %conv1012 = sext i16 %712 to i32
  %cmp1013 = icmp eq i32 %conv1011, %conv1012
  br i1 %cmp1013, label %if.then.1015, label %if.else.1019

if.then.1015:                                     ; preds = %land.lhs.true.1008
  %713 = load i32, i32* %sshstate, align 4
  %idxprom1016 = sext i32 %713 to i64
  %arrayidx1017 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyytable, i32 0, i64 %idxprom1016
  %714 = load i8, i8* %arrayidx1017, align 1
  %conv1018 = zext i8 %714 to i32
  store i32 %conv1018, i32* %sshstate, align 4
  br label %if.end.1024

if.else.1019:                                     ; preds = %land.lhs.true.1008, %land.lhs.true, %do.end.993
  %715 = load i32, i32* %yyn, align 4
  %sub1020 = sub nsw i32 %715, 39
  %idxprom1021 = sext i32 %sub1020 to i64
  %arrayidx1022 = getelementptr inbounds [30 x i16], [30 x i16]* @yydefgoto, i32 0, i64 %idxprom1021
  %716 = load i16, i16* %arrayidx1022, align 2
  %conv1023 = sext i16 %716 to i32
  store i32 %conv1023, i32* %sshstate, align 4
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.else.1019, %if.then.1015
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.155, %if.then.128
  %717 = load i32, i32* %yyerrstatus, align 4
  %tobool1025 = icmp ne i32 %717, 0
  br i1 %tobool1025, label %if.end.1068, label %if.then.1026

if.then.1026:                                     ; preds = %yyerrlab
  %718 = load i32, i32* @sshnerrs, align 4
  %inc = add nsw i32 %718, 1
  store i32 %inc, i32* @sshnerrs, align 4
  %719 = load i32, i32* %sshstate, align 4
  %720 = load i32, i32* @sshchar, align 4
  %call1028 = call i64 @yysyntax_error(i8* null, i32 %719, i32 %720)
  store i64 %call1028, i64* %yysize1027, align 8
  %721 = load i64, i64* %yymsg_alloc, align 8
  %722 = load i64, i64* %yysize1027, align 8
  %cmp1029 = icmp ult i64 %721, %722
  br i1 %cmp1029, label %land.lhs.true.1031, label %if.end.1054

land.lhs.true.1031:                               ; preds = %if.then.1026
  %723 = load i64, i64* %yymsg_alloc, align 8
  %cmp1032 = icmp ult i64 %723, -1
  br i1 %cmp1032, label %if.then.1034, label %if.end.1054

if.then.1034:                                     ; preds = %land.lhs.true.1031
  %724 = load i64, i64* %yysize1027, align 8
  %mul1035 = mul i64 2, %724
  store i64 %mul1035, i64* %yyalloc, align 8
  %725 = load i64, i64* %yysize1027, align 8
  %726 = load i64, i64* %yyalloc, align 8
  %cmp1036 = icmp ule i64 %725, %726
  br i1 %cmp1036, label %land.lhs.true.1038, label %if.then.1041

land.lhs.true.1038:                               ; preds = %if.then.1034
  %727 = load i64, i64* %yyalloc, align 8
  %cmp1039 = icmp ule i64 %727, -1
  br i1 %cmp1039, label %if.end.1042, label %if.then.1041

if.then.1041:                                     ; preds = %land.lhs.true.1038, %if.then.1034
  store i64 -1, i64* %yyalloc, align 8
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.then.1041, %land.lhs.true.1038
  %728 = load i8*, i8** %yymsg, align 8
  %arraydecay1043 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  %cmp1044 = icmp ne i8* %728, %arraydecay1043
  br i1 %cmp1044, label %if.then.1046, label %if.end.1047

if.then.1046:                                     ; preds = %if.end.1042
  %729 = load i8*, i8** %yymsg, align 8
  call void @free(i8* %729) #3
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.then.1046, %if.end.1042
  %730 = load i64, i64* %yyalloc, align 8
  %call1048 = call noalias i8* @malloc(i64 %730) #3
  store i8* %call1048, i8** %yymsg, align 8
  %731 = load i8*, i8** %yymsg, align 8
  %tobool1049 = icmp ne i8* %731, null
  br i1 %tobool1049, label %if.then.1050, label %if.else.1051

if.then.1050:                                     ; preds = %if.end.1047
  %732 = load i64, i64* %yyalloc, align 8
  store i64 %732, i64* %yymsg_alloc, align 8
  br label %if.end.1053

if.else.1051:                                     ; preds = %if.end.1047
  %arraydecay1052 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  store i8* %arraydecay1052, i8** %yymsg, align 8
  store i64 128, i64* %yymsg_alloc, align 8
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.else.1051, %if.then.1050
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.end.1053, %land.lhs.true.1031, %if.then.1026
  %733 = load i64, i64* %yysize1027, align 8
  %cmp1055 = icmp ult i64 0, %733
  br i1 %cmp1055, label %land.lhs.true.1057, label %if.else.1062

land.lhs.true.1057:                               ; preds = %if.end.1054
  %734 = load i64, i64* %yysize1027, align 8
  %735 = load i64, i64* %yymsg_alloc, align 8
  %cmp1058 = icmp ule i64 %734, %735
  br i1 %cmp1058, label %if.then.1060, label %if.else.1062

if.then.1060:                                     ; preds = %land.lhs.true.1057
  %736 = load i8*, i8** %yymsg, align 8
  %737 = load i32, i32* %sshstate, align 4
  %738 = load i32, i32* @sshchar, align 4
  %call1061 = call i64 @yysyntax_error(i8* %736, i32 %737, i32 %738)
  %739 = load i8*, i8** %yymsg, align 8
  call void @ssherror(i8* %739)
  br label %if.end.1067

if.else.1062:                                     ; preds = %land.lhs.true.1057, %if.end.1054
  call void @ssherror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  %740 = load i64, i64* %yysize1027, align 8
  %cmp1063 = icmp ne i64 %740, 0
  br i1 %cmp1063, label %if.then.1065, label %if.end.1066

if.then.1065:                                     ; preds = %if.else.1062
  br label %yyexhaustedlab

if.end.1066:                                      ; preds = %if.else.1062
  br label %if.end.1067

if.end.1067:                                      ; preds = %if.end.1066, %if.then.1060
  br label %if.end.1068

if.end.1068:                                      ; preds = %if.end.1067, %yyerrlab
  %741 = load i32, i32* %yyerrstatus, align 4
  %cmp1069 = icmp eq i32 %741, 3
  br i1 %cmp1069, label %if.then.1071, label %if.end.1081

if.then.1071:                                     ; preds = %if.end.1068
  %742 = load i32, i32* @sshchar, align 4
  %cmp1072 = icmp sle i32 %742, 0
  br i1 %cmp1072, label %if.then.1074, label %if.else.1079

if.then.1074:                                     ; preds = %if.then.1071
  %743 = load i32, i32* @sshchar, align 4
  %cmp1075 = icmp eq i32 %743, 0
  br i1 %cmp1075, label %if.then.1077, label %if.end.1078

if.then.1077:                                     ; preds = %if.then.1074
  br label %yyabortlab

if.end.1078:                                      ; preds = %if.then.1074
  br label %if.end.1080

if.else.1079:                                     ; preds = %if.then.1071
  %744 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i32 %744, %union.YYSTYPE* @sshlval)
  store i32 -2, i32* @sshchar, align 4
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.else.1079, %if.end.1078
  br label %if.end.1081

if.end.1081:                                      ; preds = %if.end.1080, %if.end.1068
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %745 = load i32, i32* %sshyylen, align 4
  %746 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext1082 = sext i32 %745 to i64
  %idx.neg1083 = sub i64 0, %idx.ext1082
  %add.ptr1084 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %746, i64 %idx.neg1083
  store %union.YYSTYPE* %add.ptr1084, %union.YYSTYPE** %yyvsp, align 8
  %747 = load i32, i32* %sshyylen, align 4
  %748 = load i16*, i16** %yyssp, align 8
  %idx.ext1085 = sext i32 %747 to i64
  %idx.neg1086 = sub i64 0, %idx.ext1085
  %add.ptr1087 = getelementptr inbounds i16, i16* %748, i64 %idx.neg1086
  store i16* %add.ptr1087, i16** %yyssp, align 8
  store i32 0, i32* %sshyylen, align 4
  br label %do.body.1088

do.body.1088:                                     ; preds = %yyerrorlab
  %749 = load i32, i32* @sshdebug, align 4
  %tobool1089 = icmp ne i32 %749, 0
  br i1 %tobool1089, label %if.then.1090, label %if.end.1091

if.then.1090:                                     ; preds = %do.body.1088
  %750 = load i16*, i16** %yyss, align 8
  %751 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %750, i16* %751)
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1090, %do.body.1088
  br label %do.end.1092

do.end.1092:                                      ; preds = %if.end.1091
  %752 = load i16*, i16** %yyssp, align 8
  %753 = load i16, i16* %752, align 2
  %conv1093 = sext i16 %753 to i32
  store i32 %conv1093, i32* %sshstate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %do.end.1092, %if.end.1081
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end.1136, %yyerrlab1
  %754 = load i32, i32* %sshstate, align 4
  %idxprom1094 = sext i32 %754 to i64
  %arrayidx1095 = getelementptr inbounds [200 x i16], [200 x i16]* @sshpact, i32 0, i64 %idxprom1094
  %755 = load i16, i16* %arrayidx1095, align 2
  %conv1096 = sext i16 %755 to i32
  store i32 %conv1096, i32* %yyn, align 4
  %756 = load i32, i32* %yyn, align 4
  %cmp1097 = icmp ne i32 %756, -150
  br i1 %cmp1097, label %if.then.1099, label %if.end.1121

if.then.1099:                                     ; preds = %for.cond
  %757 = load i32, i32* %yyn, align 4
  %add1100 = add nsw i32 %757, 1
  store i32 %add1100, i32* %yyn, align 4
  %758 = load i32, i32* %yyn, align 4
  %cmp1101 = icmp sle i32 0, %758
  br i1 %cmp1101, label %land.lhs.true.1103, label %if.end.1120

land.lhs.true.1103:                               ; preds = %if.then.1099
  %759 = load i32, i32* %yyn, align 4
  %cmp1104 = icmp sle i32 %759, 218
  br i1 %cmp1104, label %land.lhs.true.1106, label %if.end.1120

land.lhs.true.1106:                               ; preds = %land.lhs.true.1103
  %760 = load i32, i32* %yyn, align 4
  %idxprom1107 = sext i32 %760 to i64
  %arrayidx1108 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyycheck, i32 0, i64 %idxprom1107
  %761 = load i8, i8* %arrayidx1108, align 1
  %conv1109 = zext i8 %761 to i32
  %cmp1110 = icmp eq i32 %conv1109, 1
  br i1 %cmp1110, label %if.then.1112, label %if.end.1120

if.then.1112:                                     ; preds = %land.lhs.true.1106
  %762 = load i32, i32* %yyn, align 4
  %idxprom1113 = sext i32 %762 to i64
  %arrayidx1114 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyytable, i32 0, i64 %idxprom1113
  %763 = load i8, i8* %arrayidx1114, align 1
  %conv1115 = zext i8 %763 to i32
  store i32 %conv1115, i32* %yyn, align 4
  %764 = load i32, i32* %yyn, align 4
  %cmp1116 = icmp slt i32 0, %764
  br i1 %cmp1116, label %if.then.1118, label %if.end.1119

if.then.1118:                                     ; preds = %if.then.1112
  br label %for.end

if.end.1119:                                      ; preds = %if.then.1112
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.end.1119, %land.lhs.true.1106, %land.lhs.true.1103, %if.then.1099
  br label %if.end.1121

if.end.1121:                                      ; preds = %if.end.1120, %for.cond
  %765 = load i16*, i16** %yyssp, align 8
  %766 = load i16*, i16** %yyss, align 8
  %cmp1122 = icmp eq i16* %765, %766
  br i1 %cmp1122, label %if.then.1124, label %if.end.1125

if.then.1124:                                     ; preds = %if.end.1121
  br label %yyabortlab

if.end.1125:                                      ; preds = %if.end.1121
  %767 = load i32, i32* %sshstate, align 4
  %idxprom1126 = sext i32 %767 to i64
  %arrayidx1127 = getelementptr inbounds [200 x i8], [200 x i8]* @yystos, i32 0, i64 %idxprom1126
  %768 = load i8, i8* %arrayidx1127, align 1
  %conv1128 = zext i8 %768 to i32
  %769 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %conv1128, %union.YYSTYPE* %769)
  %770 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr1129 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %770, i64 -1
  store %union.YYSTYPE* %add.ptr1129, %union.YYSTYPE** %yyvsp, align 8
  %771 = load i16*, i16** %yyssp, align 8
  %add.ptr1130 = getelementptr inbounds i16, i16* %771, i64 -1
  store i16* %add.ptr1130, i16** %yyssp, align 8
  %772 = load i16*, i16** %yyssp, align 8
  %773 = load i16, i16* %772, align 2
  %conv1131 = sext i16 %773 to i32
  store i32 %conv1131, i32* %sshstate, align 4
  br label %do.body.1132

do.body.1132:                                     ; preds = %if.end.1125
  %774 = load i32, i32* @sshdebug, align 4
  %tobool1133 = icmp ne i32 %774, 0
  br i1 %tobool1133, label %if.then.1134, label %if.end.1135

if.then.1134:                                     ; preds = %do.body.1132
  %775 = load i16*, i16** %yyss, align 8
  %776 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %775, i16* %776)
  br label %if.end.1135

if.end.1135:                                      ; preds = %if.then.1134, %do.body.1132
  br label %do.end.1136

do.end.1136:                                      ; preds = %if.end.1135
  br label %for.cond

for.end:                                          ; preds = %if.then.1118
  %777 = load i32, i32* %yyn, align 4
  %cmp1137 = icmp eq i32 %777, 5
  br i1 %cmp1137, label %if.then.1139, label %if.end.1140

if.then.1139:                                     ; preds = %for.end
  br label %yyacceptlab

if.end.1140:                                      ; preds = %for.end
  %778 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr1141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %778, i32 1
  store %union.YYSTYPE* %incdec.ptr1141, %union.YYSTYPE** %yyvsp, align 8
  %779 = bitcast %union.YYSTYPE* %incdec.ptr1141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %779, i8* bitcast (%union.YYSTYPE* @sshlval to i8*), i64 8, i32 8, i1 false)
  br label %do.body.1142

do.body.1142:                                     ; preds = %if.end.1140
  %780 = load i32, i32* @sshdebug, align 4
  %tobool1143 = icmp ne i32 %780, 0
  br i1 %tobool1143, label %if.then.1144, label %if.end.1150

if.then.1144:                                     ; preds = %do.body.1142
  %781 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %781, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %782 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %783 = load i32, i32* %yyn, align 4
  %idxprom1146 = sext i32 %783 to i64
  %arrayidx1147 = getelementptr inbounds [200 x i8], [200 x i8]* @yystos, i32 0, i64 %idxprom1146
  %784 = load i8, i8* %arrayidx1147, align 1
  %conv1148 = zext i8 %784 to i32
  %785 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yy_symbol_print(%struct._IO_FILE* %782, i32 %conv1148, %union.YYSTYPE* %785)
  %786 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %786, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.then.1144, %do.body.1142
  br label %do.end.1151

do.end.1151:                                      ; preds = %if.end.1150
  %787 = load i32, i32* %yyn, align 4
  store i32 %787, i32* %sshstate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.1139, %if.then.133
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.1124, %if.then.1077, %if.then.57
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %if.then.1065, %if.then.18, %if.then.8
  call void @ssherror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %788 = load i32, i32* @sshchar, align 4
  %cmp1152 = icmp ne i32 %788, 0
  br i1 %cmp1152, label %land.lhs.true.1154, label %if.end.1158

land.lhs.true.1154:                               ; preds = %yyreturn
  %789 = load i32, i32* @sshchar, align 4
  %cmp1155 = icmp ne i32 %789, -2
  br i1 %cmp1155, label %if.then.1157, label %if.end.1158

if.then.1157:                                     ; preds = %land.lhs.true.1154
  %790 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i32 %790, %union.YYSTYPE* @sshlval)
  br label %if.end.1158

if.end.1158:                                      ; preds = %if.then.1157, %land.lhs.true.1154, %yyreturn
  %791 = load i32, i32* %sshyylen, align 4
  %792 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext1159 = sext i32 %791 to i64
  %idx.neg1160 = sub i64 0, %idx.ext1159
  %add.ptr1161 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %792, i64 %idx.neg1160
  store %union.YYSTYPE* %add.ptr1161, %union.YYSTYPE** %yyvsp, align 8
  %793 = load i32, i32* %sshyylen, align 4
  %794 = load i16*, i16** %yyssp, align 8
  %idx.ext1162 = sext i32 %793 to i64
  %idx.neg1163 = sub i64 0, %idx.ext1162
  %add.ptr1164 = getelementptr inbounds i16, i16* %794, i64 %idx.neg1163
  store i16* %add.ptr1164, i16** %yyssp, align 8
  br label %do.body.1165

do.body.1165:                                     ; preds = %if.end.1158
  %795 = load i32, i32* @sshdebug, align 4
  %tobool1166 = icmp ne i32 %795, 0
  br i1 %tobool1166, label %if.then.1167, label %if.end.1168

if.then.1167:                                     ; preds = %do.body.1165
  %796 = load i16*, i16** %yyss, align 8
  %797 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %796, i16* %797)
  br label %if.end.1168

if.end.1168:                                      ; preds = %if.then.1167, %do.body.1165
  br label %do.end.1169

do.end.1169:                                      ; preds = %if.end.1168
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.1169
  %798 = load i16*, i16** %yyssp, align 8
  %799 = load i16*, i16** %yyss, align 8
  %cmp1170 = icmp ne i16* %798, %799
  br i1 %cmp1170, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %800 = load i16*, i16** %yyssp, align 8
  %801 = load i16, i16* %800, align 2
  %idxprom1172 = sext i16 %801 to i64
  %arrayidx1173 = getelementptr inbounds [200 x i8], [200 x i8]* @yystos, i32 0, i64 %idxprom1172
  %802 = load i8, i8* %arrayidx1173, align 1
  %conv1174 = zext i8 %802 to i32
  %803 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 %conv1174, %union.YYSTYPE* %803)
  %804 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr1175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %804, i64 -1
  store %union.YYSTYPE* %add.ptr1175, %union.YYSTYPE** %yyvsp, align 8
  %805 = load i16*, i16** %yyssp, align 8
  %add.ptr1176 = getelementptr inbounds i16, i16* %805, i64 -1
  store i16* %add.ptr1176, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %806 = load i16*, i16** %yyss, align 8
  %arraydecay1177 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp1178 = icmp ne i16* %806, %arraydecay1177
  br i1 %cmp1178, label %if.then.1180, label %if.end.1181

if.then.1180:                                     ; preds = %while.end
  %807 = load i16*, i16** %yyss, align 8
  %808 = bitcast i16* %807 to i8*
  call void @free(i8* %808) #3
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.then.1180, %while.end
  %809 = load i8*, i8** %yymsg, align 8
  %arraydecay1182 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  %cmp1183 = icmp ne i8* %809, %arraydecay1182
  br i1 %cmp1183, label %if.then.1185, label %if.end.1186

if.then.1185:                                     ; preds = %if.end.1181
  %810 = load i8*, i8** %yymsg, align 8
  call void @free(i8* %810) #3
  br label %if.end.1186

if.end.1186:                                      ; preds = %if.then.1185, %if.end.1181
  %811 = load i32, i32* %yyresult, align 4
  ret i32 %811
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @sshlex() #1

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_print(%struct._IO_FILE* %yyoutput, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yyoutput.addr = alloca %struct._IO_FILE*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store %struct._IO_FILE* %yyoutput, %struct._IO_FILE** %yyoutput.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load i32, i32* %yytype.addr, align 4
  %cmp = icmp slt i32 %0, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %2 = load i32, i32* %yytype.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %5 = load i32, i32* %yytype.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %8 = load i32, i32* %yytype.addr, align 4
  %9 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  call void @yy_symbol_value_print(%struct._IO_FILE* %7, i32 %8, %union.YYSTYPE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_reduce_print(%union.YYSTYPE* %yyvsp, i32 %sshyyrule) #0 {
entry:
  %yyvsp.addr = alloca %union.YYSTYPE*, align 8
  %sshyyrule.addr = alloca i32, align 4
  %yynrhs = alloca i32, align 4
  %yyi = alloca i32, align 4
  %yylno = alloca i64, align 8
  store %union.YYSTYPE* %yyvsp, %union.YYSTYPE** %yyvsp.addr, align 8
  store i32 %sshyyrule, i32* %sshyyrule.addr, align 4
  %0 = load i32, i32* %sshyyrule.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [93 x i8], [93 x i8]* @sshr2, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %yynrhs, align 4
  %2 = load i32, i32* %sshyyrule.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [93 x i16], [93 x i16]* @yyrline, i32 0, i64 %idxprom1
  %3 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %3 to i64
  store i64 %conv3, i64* %yylno, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %sshyyrule.addr, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i64, i64* %yylno, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i32 0, i32 0), i32 %sub, i64 %6)
  store i32 0, i32* %yyi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %yyi, align 4
  %8 = load i32, i32* %yynrhs, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* %yyi, align 4
  %add = add nsw i32 %10, 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i32 %add)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %sshyyrule.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [93 x i16], [93 x i16]* @yyprhs, i32 0, i64 %idxprom6
  %13 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %13 to i32
  %14 = load i32, i32* %yyi, align 4
  %add9 = add nsw i32 %conv8, %14
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [344 x i8], [344 x i8]* @yyrhs, i32 0, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %16 = load i32, i32* %yyi, align 4
  %add13 = add nsw i32 %16, 1
  %17 = load i32, i32* %yynrhs, align 4
  %sub14 = sub nsw i32 %add13, %17
  %idxprom15 = sext i32 %sub14 to i64
  %18 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp.addr, align 8
  %arrayidx16 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %18, i64 %idxprom15
  call void @yy_symbol_print(%struct._IO_FILE* %11, i32 %conv12, %union.YYSTYPE* %arrayidx16)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %yyi, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %yyi, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.style_sheet* @new_style_sheet(i8*) #1

declare void @words_set_no_face(%struct.words*, i64) #1

declare void @words_merge_rules_unique(%struct.words*, %struct.words*) #1

declare void @words_free(%struct.words*) #1

declare void @da_concat(%struct.darray*, %struct.darray*) #1

declare void @da_erase(%struct.darray*) #1

declare void @da_free(%struct.darray*, void (i8*)*) #1

declare void @free_sequence(%struct.sequence*) #1

declare void @string_to_array(i8*, i8*) #1

declare void @style_sheet_set_version(%struct.style_sheet*, i8*) #1

declare i32 @style_sheet_set_requirement(%struct.style_sheet*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @stpncpy(i8*, i8*, i64) #2

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #1

declare void @da_str_print(i8*, %struct._IO_FILE*) #1

declare void @da_append(%struct.darray*, i8*) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare %struct.darray* @rhs_new() #1

declare void @rhs_add(%struct.darray*, %struct.faced_string*) #1

declare %struct.faced_string* @faced_string_new(i8*, i32, i64) #1

declare %struct.rule* @rule_new(i8*, %struct.pattern*, %struct.darray*, i8*, i64) #1

declare %struct.darray* @rhs_new_single(i8*, i32, i64) #1

declare %struct.words* @words_new(i8*, i8*, i64, i64) #1

declare void @words_add_string(%struct.words*, %struct.rule*) #1

declare void @words_add_regex(%struct.words*, %struct.rule*) #1

declare %struct.rule* @keyword_rule_new(i8*, %struct.pattern*, %struct.darray*, i8*, i64) #1

declare void @sequence_self_print(%struct.sequence*, %struct._IO_FILE*) #1

declare %struct.sequence* @sequence_new(%struct.rule*, i64, %struct.words*, %struct.words*) #1

declare %struct.sequence* @new_C_string_sequence(i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @yy_stack_print(i16* %bottom, i16* %top) #0 {
entry:
  %bottom.addr = alloca i16*, align 8
  %top.addr = alloca i16*, align 8
  store i16* %bottom, i16** %bottom.addr, align 8
  store i16* %top, i16** %top.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16*, i16** %bottom.addr, align 8
  %2 = load i16*, i16** %top.addr, align 8
  %cmp = icmp ule i16* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i16*, i16** %bottom.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv = sext i16 %5 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16*, i16** %bottom.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr, i16** %bottom.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @yysyntax_error(i8* %yyresult, i32 %sshstate, i32 %sshchar) #0 {
entry:
  %retval = alloca i64, align 8
  %yyresult.addr = alloca i8*, align 8
  %sshstate.addr = alloca i32, align 4
  %sshchar.addr = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yytype = alloca i32, align 4
  %yysize0 = alloca i64, align 8
  %yysize = alloca i64, align 8
  %yysize1 = alloca i64, align 8
  %yysize_overflow = alloca i32, align 4
  %yyarg = alloca [5 x i8*], align 16
  %yyx = alloca i32, align 4
  %yyfmt = alloca i8*, align 8
  %yyf = alloca i8*, align 8
  %yyformat = alloca [60 x i8], align 16
  %yyprefix = alloca i8*, align 8
  %yyxbegin = alloca i32, align 4
  %yychecklim = alloca i32, align 4
  %yyxend = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyp = alloca i8*, align 8
  %yyi = alloca i32, align 4
  store i8* %yyresult, i8** %yyresult.addr, align 8
  store i32 %sshstate, i32* %sshstate.addr, align 4
  store i32 %sshchar, i32* %sshchar.addr, align 4
  %0 = load i32, i32* %sshstate.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [200 x i16], [200 x i16]* @sshpact, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, i32* %yyn, align 4
  %2 = load i32, i32* %yyn, align 4
  %cmp = icmp slt i32 -150, %2
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %yyn, align 4
  %cmp2 = icmp sle i32 %3, 218
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %sshchar.addr, align 4
  %cmp4 = icmp ule i32 %4, 289
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load i32, i32* %sshchar.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [290 x i8], [290 x i8]* @yytranslate, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yytype, align 4
  %7 = load i32, i32* %yytype, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom9
  %8 = load i8*, i8** %arrayidx10, align 8
  %call = call i64 @yytnamerr(i8* null, i8* %8)
  store i64 %call, i64* %yysize0, align 8
  %9 = load i64, i64* %yysize0, align 8
  store i64 %9, i64* %yysize, align 8
  store i32 0, i32* %yysize_overflow, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @yysyntax_error.yyexpecting, i32 0, i32 0), i8** %yyprefix, align 8
  %10 = load i32, i32* %yyn, align 4
  %cmp11 = icmp slt i32 %10, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %11 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %11
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %sub, %cond.true.13 ], [ 0, %cond.false.14 ]
  store i32 %cond16, i32* %yyxbegin, align 4
  %12 = load i32, i32* %yyn, align 4
  %sub17 = sub nsw i32 218, %12
  %add = add nsw i32 %sub17, 1
  store i32 %add, i32* %yychecklim, align 4
  %13 = load i32, i32* %yychecklim, align 4
  %cmp18 = icmp slt i32 %13, 39
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.15
  %14 = load i32, i32* %yychecklim, align 4
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.15
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %14, %cond.true.20 ], [ 39, %cond.false.21 ]
  store i32 %cond23, i32* %yyxend, align 4
  store i32 1, i32* %yycount, align 4
  %15 = load i32, i32* %yytype, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom24
  %16 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 0
  store i8* %16, i8** %arrayidx26, align 8
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i32 0
  %call27 = call i8* @yystpcpy(i8* %arraydecay, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @yysyntax_error.yyunexpected, i32 0, i32 0))
  store i8* %call27, i8** %yyfmt, align 8
  %17 = load i32, i32* %yyxbegin, align 4
  store i32 %17, i32* %yyx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.22
  %18 = load i32, i32* %yyx, align 4
  %19 = load i32, i32* %yyxend, align 4
  %cmp28 = icmp slt i32 %18, %19
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %yyx, align 4
  %21 = load i32, i32* %yyn, align 4
  %add30 = add nsw i32 %20, %21
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [219 x i8], [219 x i8]* @sshyycheck, i32 0, i64 %idxprom31
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %22 to i32
  %23 = load i32, i32* %yyx, align 4
  %cmp34 = icmp eq i32 %conv33, %23
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.55

land.lhs.true.36:                                 ; preds = %for.body
  %24 = load i32, i32* %yyx, align 4
  %cmp37 = icmp ne i32 %24, 1
  br i1 %cmp37, label %if.then.39, label %if.end.55

if.then.39:                                       ; preds = %land.lhs.true.36
  %25 = load i32, i32* %yycount, align 4
  %cmp40 = icmp eq i32 %25, 5
  br i1 %cmp40, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.39
  store i32 1, i32* %yycount, align 4
  %26 = load i64, i64* %yysize0, align 8
  store i64 %26, i64* %yysize, align 8
  %arrayidx43 = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i64 27
  store i8 0, i8* %arrayidx43, align 1
  br label %for.end

if.end:                                           ; preds = %if.then.39
  %27 = load i32, i32* %yyx, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom44
  %28 = load i8*, i8** %arrayidx45, align 8
  %29 = load i32, i32* %yycount, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %yycount, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 %idxprom46
  store i8* %28, i8** %arrayidx47, align 8
  %30 = load i64, i64* %yysize, align 8
  %31 = load i32, i32* %yyx, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [70 x i8*], [70 x i8*]* @yytname, i32 0, i64 %idxprom48
  %32 = load i8*, i8** %arrayidx49, align 8
  %call50 = call i64 @yytnamerr(i8* null, i8* %32)
  %add51 = add i64 %30, %call50
  store i64 %add51, i64* %yysize1, align 8
  %33 = load i64, i64* %yysize1, align 8
  %34 = load i64, i64* %yysize, align 8
  %cmp52 = icmp ult i64 %33, %34
  %conv53 = zext i1 %cmp52 to i32
  %35 = load i32, i32* %yysize_overflow, align 4
  %or = or i32 %35, %conv53
  store i32 %or, i32* %yysize_overflow, align 4
  %36 = load i64, i64* %yysize1, align 8
  store i64 %36, i64* %yysize, align 8
  %37 = load i8*, i8** %yyfmt, align 8
  %38 = load i8*, i8** %yyprefix, align 8
  %call54 = call i8* @yystpcpy(i8* %37, i8* %38)
  store i8* %call54, i8** %yyfmt, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @yysyntax_error.yyor, i32 0, i32 0), i8** %yyprefix, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %land.lhs.true.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %39 = load i32, i32* %yyx, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %yyx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.42, %for.cond
  %arraydecay57 = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i32 0
  store i8* %arraydecay57, i8** %yyf, align 8
  %40 = load i64, i64* %yysize, align 8
  %41 = load i8*, i8** %yyf, align 8
  %call58 = call i64 @strlen(i8* %41) #5
  %add59 = add i64 %40, %call58
  store i64 %add59, i64* %yysize1, align 8
  %42 = load i64, i64* %yysize1, align 8
  %43 = load i64, i64* %yysize, align 8
  %cmp60 = icmp ult i64 %42, %43
  %conv61 = zext i1 %cmp60 to i32
  %44 = load i32, i32* %yysize_overflow, align 4
  %or62 = or i32 %44, %conv61
  store i32 %or62, i32* %yysize_overflow, align 4
  %45 = load i64, i64* %yysize1, align 8
  store i64 %45, i64* %yysize, align 8
  %46 = load i32, i32* %yysize_overflow, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end
  store i64 -1, i64* %retval
  br label %return

if.end.64:                                        ; preds = %for.end
  %47 = load i8*, i8** %yyresult.addr, align 8
  %tobool65 = icmp ne i8* %47, null
  br i1 %tobool65, label %if.then.66, label %if.end.90

if.then.66:                                       ; preds = %if.end.64
  %48 = load i8*, i8** %yyresult.addr, align 8
  store i8* %48, i8** %yyp, align 8
  store i32 0, i32* %yyi, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.89, %if.then.66
  %49 = load i8*, i8** %yyf, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %yyp, align 8
  store i8 %50, i8* %51, align 1
  %conv67 = sext i8 %50 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i8*, i8** %yyp, align 8
  %53 = load i8, i8* %52, align 1
  %conv70 = sext i8 %53 to i32
  %cmp71 = icmp eq i32 %conv70, 37
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.87

land.lhs.true.73:                                 ; preds = %while.body
  %54 = load i8*, i8** %yyf, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %55 to i32
  %cmp76 = icmp eq i32 %conv75, 115
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.87

land.lhs.true.78:                                 ; preds = %land.lhs.true.73
  %56 = load i32, i32* %yyi, align 4
  %57 = load i32, i32* %yycount, align 4
  %cmp79 = icmp slt i32 %56, %57
  br i1 %cmp79, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %land.lhs.true.78
  %58 = load i8*, i8** %yyp, align 8
  %59 = load i32, i32* %yyi, align 4
  %inc82 = add nsw i32 %59, 1
  store i32 %inc82, i32* %yyi, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 %idxprom83
  %60 = load i8*, i8** %arrayidx84, align 8
  %call85 = call i64 @yytnamerr(i8* %58, i8* %60)
  %61 = load i8*, i8** %yyp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %call85
  store i8* %add.ptr, i8** %yyp, align 8
  %62 = load i8*, i8** %yyf, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %add.ptr86, i8** %yyf, align 8
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.78, %land.lhs.true.73, %while.body
  %63 = load i8*, i8** %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %yyp, align 8
  %64 = load i8*, i8** %yyf, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr88, i8** %yyf, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.81
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.90

if.end.90:                                        ; preds = %while.end, %if.end.64
  %65 = load i64, i64* %yysize, align 8
  store i64 %65, i64* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.63, %if.then
  %66 = load i64, i64* %retval
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define void @ssherror(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** @sshfilename, align 8
  %1 = load i32, i32* @sshlineno, align 4
  %2 = load i8*, i8** %msg.addr, align 8
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %0, i32 %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(i8* %yymsg, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yymsg.addr = alloca i8*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store i8* %yymsg, i8** %yymsg.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %1 = load i8*, i8** %yymsg.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8** %yymsg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i32, i32* @sshdebug, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %yymsg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %yytype.addr, align 4
  %7 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  call void @yy_symbol_print(%struct._IO_FILE* %5, i32 %6, %union.YYSTYPE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i32, i32* %yytype.addr, align 4
  switch i32 %9, label %sw.default [
  ]

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.style_sheet* @parse_style_sheet(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  store i8* %0, i8** @sshfilename, align 8
  store i32 1, i32* @sshlineno, align 4
  %1 = load i8*, i8** @sshfilename, align 8
  %call = call %struct._IO_FILE* @xrfopen(i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** @sshin, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 2116, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @sshfilename, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @sshlex_initialize()
  %5 = load i32, i32* @msg_verbosity, align 4
  %and2 = and i32 2048, %5
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  store i32 1, i32* @sshdebug, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.end
  %call6 = call i32 @sshparse()
  store i32 %call6, i32* %res, align 4
  %6 = load i32, i32* @msg_verbosity, align 4
  %and7 = and i32 4, %6
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.style_sheet*, %struct.style_sheet** @parsed_style_sheet, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %8, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i8* %9)
  %10 = load %struct.style_sheet*, %struct.style_sheet** @parsed_style_sheet, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @style_sheet_self_print(%struct.style_sheet* %10, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.style_sheet*, %struct.style_sheet** @parsed_style_sheet, align 8
  %key11 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %13, i32 0, i32 0
  %14 = load i8*, i8** %key11, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), i8* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sshin, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %15)
  %16 = load %struct.style_sheet*, %struct.style_sheet** @parsed_style_sheet, align 8
  ret %struct.style_sheet* %16
}

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare void @sshlex_initialize() #1

declare void @style_sheet_self_print(%struct.style_sheet*, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_value_print(%struct._IO_FILE* %yyoutput, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yyoutput.addr = alloca %struct._IO_FILE*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store %struct._IO_FILE* %yyoutput, %struct._IO_FILE** %yyoutput.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %tobool = icmp ne %union.YYSTYPE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %yytype.addr, align 4
  %cmp = icmp slt i32 %1, 39
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %3 = load i32, i32* %yytype.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [39 x i16], [39 x i16]* @yytoknum, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %5 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %coerce.dive = getelementptr %union.YYSTYPE, %union.YYSTYPE* %5, i32 0, i32 0
  %6 = load i8*, i8** %coerce.dive, align 8
  call void @yyprint(%struct._IO_FILE* %2, i32 %conv, i8* %6)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load i32, i32* %yytype.addr, align 4
  switch i32 %7, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yyprint(%struct._IO_FILE* %file, i32 %type, i8* %value.coerce) #0 {
entry:
  %value = alloca %union.YYSTYPE, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i32, align 4
  %coerce.dive = getelementptr %union.YYSTYPE, %union.YYSTYPE* %value, i32 0, i32 0
  store i8* %value.coerce, i8** %coerce.dive, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 289, label %sw.bb
    i32 284, label %sw.bb.1
    i32 283, label %sw.bb.3
    i32 287, label %sw.bb.6
    i32 285, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %integer = bitcast %union.YYSTYPE* %value to i32*
  %2 = load i32, i32* %integer, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %3)
  %fflags = bitcast %union.YYSTYPE* %value to i32*
  %4 = load i32, i32* %fflags, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @fflag_self_print(i32 %4, %struct._IO_FILE* %5)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %face = bitcast %union.YYSTYPE* %value to i32*
  %7 = load i32, i32* %face, align 4
  %call4 = call i8* @face_to_string(i32 %7)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* %call4)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %pattern = bitcast %union.YYSTYPE* %value to %struct.pattern**
  %9 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %pattern7 = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 0
  %10 = load i8*, i8** %pattern7, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* %10)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %string = bitcast %union.YYSTYPE* %value to i8**
  %12 = load i8*, i8** %string, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @fflag_self_print(i32, %struct._IO_FILE*) #1

declare i8* @face_to_string(i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @yytnamerr(i8* %yyres, i8* %yystr) #0 {
entry:
  %retval = alloca i64, align 8
  %yyres.addr = alloca i8*, align 8
  %yystr.addr = alloca i8*, align 8
  %yyn = alloca i64, align 8
  %yyp = alloca i8*, align 8
  store i8* %yyres, i8** %yyres.addr, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  store i64 0, i64* %yyn, align 8
  %2 = load i8*, i8** %yystr.addr, align 8
  store i8* %2, i8** %yyp, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then
  %3 = load i8*, i8** %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %yyp, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %4 to i32
  switch i32 %conv2, label %sw.default [
    i32 39, label %sw.bb
    i32 44, label %sw.bb
    i32 92, label %sw.bb.3
    i32 34, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond
  br label %do_not_strip_quotes

sw.bb.3:                                          ; preds = %for.cond
  %5 = load i8*, i8** %yyp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %yyp, align 8
  %6 = load i8, i8* %incdec.ptr4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 92
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %sw.bb.3
  br label %do_not_strip_quotes

if.end:                                           ; preds = %sw.bb.3
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %if.end
  %7 = load i8*, i8** %yyres.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.default
  %8 = load i8*, i8** %yyp, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i64, i64* %yyn, align 8
  %11 = load i8*, i8** %yyres.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 %9, i8* %arrayidx, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.default
  %12 = load i64, i64* %yyn, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %yyn, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.cond
  %13 = load i8*, i8** %yyres.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %sw.bb.11
  %14 = load i64, i64* %yyn, align 8
  %15 = load i8*, i8** %yyres.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %sw.bb.11
  %16 = load i64, i64* %yyn, align 8
  store i64 %16, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.10
  br label %for.cond

do_not_strip_quotes:                              ; preds = %if.then.8, %sw.bb
  br label %if.end.16

if.end.16:                                        ; preds = %do_not_strip_quotes, %entry
  %17 = load i8*, i8** %yyres.addr, align 8
  %tobool17 = icmp ne i8* %17, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %18 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %18) #5
  store i64 %call, i64* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %19 = load i8*, i8** %yyres.addr, align 8
  %20 = load i8*, i8** %yystr.addr, align 8
  %call20 = call i8* @yystpcpy(i8* %19, i8* %20)
  %21 = load i8*, i8** %yyres.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.end.15
  %22 = load i64, i64* %retval
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal i8* @yystpcpy(i8* %yydest, i8* %yysrc) #0 {
entry:
  %yydest.addr = alloca i8*, align 8
  %yysrc.addr = alloca i8*, align 8
  %yyd = alloca i8*, align 8
  %sshs = alloca i8*, align 8
  store i8* %yydest, i8** %yydest.addr, align 8
  store i8* %yysrc, i8** %yysrc.addr, align 8
  %0 = load i8*, i8** %yydest.addr, align 8
  store i8* %0, i8** %yyd, align 8
  %1 = load i8*, i8** %yysrc.addr, align 8
  store i8* %1, i8** %sshs, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %sshs, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %sshs, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %yyd, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %yyd, align 8
  store i8 %3, i8* %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %yyd, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  ret i8* %add.ptr
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
