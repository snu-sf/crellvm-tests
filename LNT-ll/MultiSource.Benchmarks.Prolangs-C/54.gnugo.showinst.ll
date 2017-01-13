; ModuleID = './MultiSource.Benchmarks.Prolangs-C/54.gnugo.showinst.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOX\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OXOXOXOXOXOX\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"O                                                                  \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"           O\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"X                           GNU GO (Previously Hugo)               \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"           X\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"O                           the game of Go (Wei-Chi)               \00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"X                                                                  \00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"O                            version 1.1    3-1-89                 \00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"X              Copyright (C) 1989 Free Software Foundation, Inc.   \00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"O                              Author: Man L. Li                   \00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"X         GNU GO comes with ABSOLUTELY NO WARRANTY; see COPYING for\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"O         detail.   This is free software, and you are welcome to  \00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"X         redistribute it; see COPYING for copying conditions.     \00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"X              Please report all bugs, modifications, suggestions  \00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"O                         to manli@cs.uh.edu  (Internet)           \00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"OXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"XOXOXOXOXOXO\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0APress return to continue\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\0A\0ATo play this game first select number of handicap pieces (0 to\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c" 17) for the\0Ablack side.  Next choose your color (black or white).\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"  To place your piece,\0Aenter your move as coordinate on the board\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c" in column and row.  The column\0Ais from 'A' to 'T'(excluding 'I').\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"  The row is from 1 to 19.\0A\0ATo pass your move enter 'pass' for\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c" your turn.  After both you and the computer\0Apassed the game will\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c" end.  To save the board and exit enter 'save'.  The game\0Awill\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c" continue the next time you start the program.  To stop the game in\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c" the\0Amiddle of play enter 'stop' for your move.  You will be\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c" asked whether you want\0Ato count the result of the game.  If you\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c" answer 'y' then you need to remove the\0Aremaining dead pieces and\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c" fill up neutral turf on the board as instructed.\0AFinally, the\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c" computer will count all pieces for both side and show the result.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @showinst() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i32 0, i32 0))
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i32 0, i32 0))
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  %call33 = call i32 @getchar()
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0))
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0))
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i32 0, i32 0))
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i32 0, i32 0))
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i32 0, i32 0))
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i32 0, i32 0))
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i32 0, i32 0))
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i32 0, i32 0))
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0))
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.29, i32 0, i32 0))
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i32 0, i32 0))
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @getchar() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
