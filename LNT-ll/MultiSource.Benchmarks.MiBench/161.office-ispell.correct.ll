; ModuleID = './MultiSource.Benchmarks.MiBench/161.office-ispell.correct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }

@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [58 x i8] c"Whenever a word is found that is not in the dictionary,\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"it is printed on the first line of the screen.  If the dictionary\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"contains any similar words, they are listed with a number\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"next to each one.  You have the option of replacing the word\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"completely, or choosing one of the suggested words.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0D\0ACommands are:\0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"R       Replace the misspelled word completely.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Space   Accept the word this time only.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"A       Accept the word for the rest of this session.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"I       Accept the word, and put it in your private dictionary.\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"U       Accept and add lowercase version to private dictionary.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"0-n     Replace with one of the suggested words.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"L       Look up words in system dictionary.\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"X       Write the rest of this file, ignoring misspellings,\0D\0A        and start next file.\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Q       Quit immediately.  Asks for confirmation.\0D\0A        Leaves file unchanged.\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"!       Shell escape.\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"^L      Redraw screen.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"^Z      Suspend program.\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"?       Show this help screen.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"-- Type space to continue --\00", align 1
@contextsize = external global i32, align 4
@contextbufs = external global [10 x [8192 x i8]], align 16
@quit = external global i32, align 4
@infile = external global %struct._IO_FILE*, align 8
@outfile = external global %struct._IO_FILE*, align 8
@hashheader = external global %struct.hashheader, align 4
@minword = external global i32, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@currentfile = external global i8*, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"              File: %s\00", align 1
@readonly = external global i32, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"[READONLY]\00", align 1
@li = external global i32, align 4
@minimenusize = external global i32, align 4
@co = external global i32, align 4
@maxposslen = external global i32, align 4
@pcount = external global i32, align 4
@easypossibilities = external global i32, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"??: %s\00", align 1
@possibilities = external global [100 x [120 x i8]], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"0%d: %s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%2d: %s\00", align 1
@sg = external global i32, align 4
@.str.29 = private unnamed_addr constant [80 x i8] c"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\0D\0A\00", align 1
@changes = external global i32, align 4
@.str.30 = private unnamed_addr constant [51 x i8] c"Are you sure you want to throw away your changes? \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [97 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@compoundflag = external global i32, align 4
@tryhardflag = external global i32, align 4
@sortit = external global i32, align 4
@fflag = external global i32, align 4
@askfilename = external global i8*, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@Version_ID = internal global [40 x i8*] [i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@contextoffset = external global i32, align 4
@stdin = external global %struct._IO_FILE*, align 8
@math_mode = external global i32, align 4
@LaTeX_Mode = external global i8, align 1
@terse = external global i32, align 4
@tflag = external global i32, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@defdupchar = external global i32, align 4
@sflag = external global i32, align 4
@aflag = external global i32, align 4
@lflag = external global i32, align 4
@laststringch = external global i32, align 4
@vflag = external global i32, align 4
@numhits = external global i32, align 4
@hits = external global [10 x %struct.success], align 16
@Trynum = external global i32, align 4
@Try = external global [228 x i8], align 16
@uerasechar = external global i32, align 4
@ukillchar = external global i32, align 4
@.str.43 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str.49 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str.51 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str.52 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str.54 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str.55 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str.57 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str.59 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str.60 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str.61 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str.63 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str.65 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str.66 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str.68 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str.69 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str.70 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str.71 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str.73 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str.74 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str.75 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str.76 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str.77 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str.78 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@lookharder.look = internal global i32 -1, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1

; Function Attrs: nounwind uwtable
define void @givehelp(i32 %interactive) #0 {
entry:
  %interactive.addr = alloca i32, align 4
  %helpout = alloca %struct._IO_FILE*, align 8
  store i32 %interactive, i32* %interactive.addr, align 4
  %0 = load i32, i32* %interactive.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @erase()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %helpout, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %helpout, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.14, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.15, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0))
  %26 = load i32, i32* %interactive.addr, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %helpout, align 8
  %call27 = call i32 @fflush(%struct._IO_FILE* %29)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.24
  %call28 = call i32 @getchar()
  %cmp = icmp ne i32 %call28, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.29

if.end.29:                                        ; preds = %while.end, %if.end
  ret void
}

declare void @erase() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define void @checkfile() #0 {
entry:
  %bufno = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 0, i32* %bufno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bufno, align 4
  %1 = load i32, i32* @contextsize, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bufno, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %arrayidx, i32 0, i64 0
  store i8 0, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %bufno, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %bufno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.2

for.cond.2:                                       ; preds = %if.end.60, %for.end
  %4 = load i32, i32* @contextsize, align 4
  store i32 %4, i32* %bufno, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.body.5, %for.cond.2
  %5 = load i32, i32* %bufno, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %bufno, align 4
  %cmp4 = icmp sgt i32 %dec, 0
  br i1 %cmp4, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %bufno, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %arrayidx7, i32 0, i32 0
  %7 = load i32, i32* %bufno, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %arrayidx9, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay10) #5
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %8 = load i32, i32* @quit, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call12 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 8192, %struct._IO_FILE* %9)
  %cmp13 = icmp ne i8* %call12, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), %struct._IO_FILE* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.end.61

if.end:                                           ; preds = %for.end.11
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call15 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %11)
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  br label %for.end.61

if.end.18:                                        ; preds = %if.end
  %call19 = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) #6
  %conv = trunc i64 %call19 to i32
  store i32 %conv, i32* %bufsize, align 4
  %12 = load i32, i32* %bufsize, align 4
  %conv20 = sext i32 %12 to i64
  %cmp21 = icmp eq i64 %conv20, 4095
  br i1 %cmp21, label %if.then.23, label %if.end.60

if.then.23:                                       ; preds = %if.end.18
  %13 = load i32, i32* %bufsize, align 4
  %sub24 = sub nsw i32 %13, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom25
  %14 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  store i32 %conv27, i32* %ch, align 4
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.52, %if.then.23
  %15 = load i32, i32* %bufsize, align 4
  %conv29 = sext i32 %15 to i64
  %cmp30 = icmp ult i64 %conv29, 8191
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.28
  %16 = load i32, i32* %ch, align 4
  %conv32 = trunc i32 %16 to i8
  %idxprom33 = zext i8 %conv32 to i64
  %arrayidx34 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom33
  %17 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %17 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br i1 %tobool36, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %18 = load i32, i32* %ch, align 4
  %conv37 = trunc i32 %18 to i8
  %idxprom38 = zext i8 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom38
  %19 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %19 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %20 = load i32, i32* %ch, align 4
  %conv42 = trunc i32 %20 to i8
  %idxprom43 = zext i8 %conv42 to i64
  %arrayidx44 = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom43
  %21 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %21 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %22 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %tobool46, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.28
  %23 = phi i1 [ false, %while.cond.28 ], [ %22, %lor.end ]
  br i1 %23, label %while.body.47, label %while.end.59

while.body.47:                                    ; preds = %land.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call48 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %call48, i32* %ch, align 4
  %25 = load i32, i32* %ch, align 4
  %cmp49 = icmp eq i32 %25, -1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %while.body.47
  br label %while.end.59

if.end.52:                                        ; preds = %while.body.47
  %26 = load i32, i32* %ch, align 4
  %conv53 = trunc i32 %26 to i8
  %27 = load i32, i32* %bufsize, align 4
  %inc54 = add nsw i32 %27, 1
  store i32 %inc54, i32* %bufsize, align 4
  %idxprom55 = sext i32 %27 to i64
  %arrayidx56 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom55
  store i8 %conv53, i8* %arrayidx56, align 1
  %28 = load i32, i32* %bufsize, align 4
  %idxprom57 = sext i32 %28 to i64
  %arrayidx58 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom57
  store i8 0, i8* %arrayidx58, align 1
  br label %while.cond.28

while.end.59:                                     ; preds = %if.then.51, %land.end
  br label %if.end.60

if.end.60:                                        ; preds = %while.end.59, %if.end.18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  call void @checkline(%struct._IO_FILE* %29)
  br label %for.cond.2

for.end.61:                                       ; preds = %if.then.17, %while.end
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @checkline(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @correct(i8* %ctok, i32 %ctokl, i8* %itok, i32 %itokl, i8** %curchar) #0 {
entry:
  %ctok.addr = alloca i8*, align 8
  %ctokl.addr = alloca i32, align 4
  %itok.addr = alloca i8*, align 8
  %itokl.addr = alloca i32, align 4
  %curchar.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %col_ht = alloca i32, align 4
  %ncols = alloca i32, align 4
  %start_l2 = alloca i8*, align 8
  %begintoken = alloca i8*, align 8
  %buf = alloca [200 x i8], align 16
  %buf227 = alloca [100 x i8], align 16
  store i8* %ctok, i8** %ctok.addr, align 8
  store i32 %ctokl, i32* %ctokl.addr, align 4
  store i8* %itok, i8** %itok.addr, align 8
  store i32 %itokl, i32* %itokl.addr, align 4
  store i8** %curchar, i8*** %curchar.addr, align 8
  %0 = load i8**, i8*** %curchar.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %ctok.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %idx.neg = sub i64 0, %call
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg
  store i8* %add.ptr, i8** %begintoken, align 8
  %3 = load i8*, i8** %itok.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #6
  %4 = load i32, i32* @minword, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ule i64 %call1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %checkagain

checkagain:                                       ; preds = %if.end.236, %if.then.234, %if.end.180, %if.end.148, %if.then.145, %sw.bb.137, %sw.bb.136, %if.end.123, %sw.bb, %if.end
  %5 = load i8*, i8** %itok.addr, align 8
  %call3 = call i32 @good(i8* %5, i32 0, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %checkagain
  %6 = load i8*, i8** %itok.addr, align 8
  %call4 = call i32 @compoundgood(i8* %6, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %checkagain
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  call void @erase()
  %7 = load i8*, i8** %ctok.addr, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %7)
  %8 = load i8*, i8** @currentfile, align 8
  %tobool9 = icmp ne i8* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %9 = load i8*, i8** @currentfile, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* %9)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %10 = load i32, i32* @readonly, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %11 = load i8*, i8** %itok.addr, align 8
  call void @makepossibilities(i8* %11)
  %12 = load i32, i32* @li, align 4
  %13 = load i32, i32* @contextsize, align 4
  %sub = sub nsw i32 %12, %13
  %sub18 = sub nsw i32 %sub, 4
  %14 = load i32, i32* @minimenusize, align 4
  %sub19 = sub nsw i32 %sub18, %14
  store i32 %sub19, i32* %col_ht, align 4
  %15 = load i32, i32* @co, align 4
  %16 = load i32, i32* @maxposslen, align 4
  %add = add nsw i32 %16, 8
  %div = sdiv i32 %15, %add
  store i32 %div, i32* %ncols, align 4
  %17 = load i32, i32* @pcount, align 4
  %18 = load i32, i32* %ncols, align 4
  %19 = load i32, i32* %col_ht, align 4
  %mul = mul nsw i32 %18, %19
  %cmp20 = icmp sgt i32 %17, %mul
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.16
  %20 = load i32, i32* %ncols, align 4
  %21 = load i32, i32* %col_ht, align 4
  %mul23 = mul nsw i32 %20, %21
  store i32 %mul23, i32* @pcount, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @pcount, align 4
  %cmp25 = icmp slt i32 %22, %23
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* @contextsize, align 4
  %add27 = add nsw i32 3, %24
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %col_ht, align 4
  %rem = srem i32 %25, %26
  %add28 = add nsw i32 %add27, %rem
  %27 = load i32, i32* @maxposslen, align 4
  %add29 = add nsw i32 %27, 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %col_ht, align 4
  %div30 = sdiv i32 %28, %29
  %mul31 = mul nsw i32 %add29, %div30
  call void @move(i32 %add28, i32 %mul31)
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* @easypossibilities, align 4
  %cmp32 = icmp sge i32 %30, %31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx, i32 0, i32 0
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.51

if.else:                                          ; preds = %for.body
  %33 = load i32, i32* @easypossibilities, align 4
  %cmp36 = icmp sge i32 %33, 10
  br i1 %cmp36, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %if.else
  %34 = load i32, i32* %i, align 4
  %cmp38 = icmp slt i32 %34, 10
  br i1 %cmp38, label %if.then.40, label %if.else.45

if.then.40:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx42, i32 0, i32 0
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 %35, i8* %arraydecay43)
  br label %if.end.50

if.else.45:                                       ; preds = %land.lhs.true, %if.else
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx47, i32 0, i32 0
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 %37, i8* %arraydecay48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.then.40
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @move(i32 2, i32 0)
  %40 = load i32, i32* @contextsize, align 4
  store i32 %40, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.body.55, %for.end
  %41 = load i32, i32* %i, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4
  %cmp53 = icmp sgt i32 %dec, 0
  br i1 %cmp53, label %for.body.55, label %for.end.62

for.body.55:                                      ; preds = %for.cond.52
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %arrayidx57, i32 0, i32 0
  %43 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %43 to i64
  %arrayidx60 = getelementptr inbounds [10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %idxprom59
  %arraydecay61 = getelementptr inbounds [8192 x i8], [8192 x i8]* %arrayidx60, i32 0, i32 0
  call void @show_line(i8* %arraydecay58, i8* %arraydecay61, i32 0)
  br label %for.cond.52

for.end.62:                                       ; preds = %for.cond.52
  store i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %start_l2, align 8
  %44 = load i8**, i8*** %curchar.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %call63 = call i32 @line_size(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %45)
  %46 = load i32, i32* @co, align 4
  %47 = load i32, i32* @sg, align 4
  %shl = shl i32 %47, 1
  %sub64 = sub nsw i32 %46, %shl
  %sub65 = sub nsw i32 %sub64, 1
  %cmp66 = icmp sgt i32 %call63, %sub65
  br i1 %cmp66, label %if.then.68, label %if.end.93

if.then.68:                                       ; preds = %for.end.62
  %48 = load i8*, i8** %begintoken, align 8
  %49 = load i32, i32* @co, align 4
  %div69 = sdiv i32 %49, 2
  %idx.ext = sext i32 %div69 to i64
  %idx.neg70 = sub i64 0, %idx.ext
  %add.ptr71 = getelementptr inbounds i8, i8* %48, i64 %idx.neg70
  store i8* %add.ptr71, i8** %start_l2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.81, %if.then.68
  %50 = load i8*, i8** %start_l2, align 8
  %51 = load i8*, i8** %begintoken, align 8
  %cmp72 = icmp ult i8* %50, %51
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i8*, i8** %start_l2, align 8
  %53 = load i8**, i8*** %curchar.addr, align 8
  %54 = load i8*, i8** %53, align 8
  %call74 = call i32 @line_size(i8* %52, i8* %54)
  %add75 = add nsw i32 %call74, 1
  store i32 %add75, i32* %i, align 4
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* @sg, align 4
  %shl76 = shl i32 %56, 1
  %add77 = add nsw i32 %55, %shl76
  %57 = load i32, i32* @co, align 4
  %cmp78 = icmp sle i32 %add77, %57
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %while.body
  br label %while.end

if.end.81:                                        ; preds = %while.body
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* @co, align 4
  %sub82 = sub nsw i32 %58, %59
  %60 = load i8*, i8** %start_l2, align 8
  %idx.ext83 = sext i32 %sub82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %60, i64 %idx.ext83
  store i8* %add.ptr84, i8** %start_l2, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.80, %while.cond
  %61 = load i8*, i8** %start_l2, align 8
  %62 = load i8*, i8** %begintoken, align 8
  %cmp85 = icmp ugt i8* %61, %62
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %while.end
  %63 = load i8*, i8** %begintoken, align 8
  store i8* %63, i8** %start_l2, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %while.end
  %64 = load i8*, i8** %start_l2, align 8
  %cmp89 = icmp ult i8* %64, getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  store i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %start_l2, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %for.end.62
  %65 = load i8*, i8** %start_l2, align 8
  %66 = load i8*, i8** %begintoken, align 8
  %67 = load i8*, i8** %ctok.addr, align 8
  %call94 = call i64 @strlen(i8* %67) #6
  %conv95 = trunc i64 %call94 to i32
  call void @show_line(i8* %65, i8* %66, i32 %conv95)
  %68 = load i32, i32* @minimenusize, align 4
  %cmp96 = icmp ne i32 %68, 0
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.93
  %69 = load i32, i32* @li, align 4
  %sub99 = sub nsw i32 %69, 2
  call void @move(i32 %sub99, i32 0)
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.93
  br label %for.cond.102

for.cond.102:                                     ; preds = %sw.epilog, %if.end.101
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call103 = call i32 @fflush(%struct._IO_FILE* %70)
  %call104 = call i32 @getchar()
  %and = and i32 %call104, 127
  store i32 %and, i32* %c, align 4
  switch i32 %and, label %sw.default [
    i32 26, label %sw.bb
    i32 32, label %sw.bb.105
    i32 113, label %sw.bb.107
    i32 81, label %sw.bb.107
    i32 105, label %sw.bb.124
    i32 73, label %sw.bb.124
    i32 117, label %sw.bb.128
    i32 85, label %sw.bb.128
    i32 97, label %sw.bb.132
    i32 65, label %sw.bb.132
    i32 12, label %sw.bb.136
    i32 63, label %sw.bb.137
    i32 33, label %sw.bb.138
    i32 114, label %sw.bb.153
    i32 82, label %sw.bb.153
    i32 48, label %sw.bb.181
    i32 49, label %sw.bb.181
    i32 50, label %sw.bb.181
    i32 51, label %sw.bb.181
    i32 52, label %sw.bb.181
    i32 53, label %sw.bb.181
    i32 54, label %sw.bb.181
    i32 55, label %sw.bb.181
    i32 56, label %sw.bb.181
    i32 57, label %sw.bb.181
    i32 13, label %sw.bb.225
    i32 10, label %sw.bb.225
    i32 108, label %sw.bb.226
    i32 76, label %sw.bb.226
    i32 120, label %sw.bb.240
    i32 88, label %sw.bb.240
  ]

sw.bb:                                            ; preds = %for.cond.102
  call void @stop()
  call void @erase()
  br label %checkagain

sw.bb.105:                                        ; preds = %for.cond.102
  call void @erase()
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call106 = call i32 @fflush(%struct._IO_FILE* %71)
  br label %return

sw.bb.107:                                        ; preds = %for.cond.102, %for.cond.102
  %72 = load i32, i32* @changes, align 4
  %tobool108 = icmp ne i32 %72, 0
  br i1 %tobool108, label %if.then.109, label %if.else.114

if.then.109:                                      ; preds = %sw.bb.107
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call111 = call i32 @fflush(%struct._IO_FILE* %73)
  %call112 = call i32 @getchar()
  %and113 = and i32 %call112, 127
  store i32 %and113, i32* %c, align 4
  br label %if.end.115

if.else.114:                                      ; preds = %sw.bb.107
  store i32 121, i32* %c, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.114, %if.then.109
  %74 = load i32, i32* %c, align 4
  %cmp116 = icmp eq i32 %74, 121
  br i1 %cmp116, label %if.then.121, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.end.115
  %75 = load i32, i32* %c, align 4
  %cmp119 = icmp eq i32 %75, 89
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %lor.lhs.false.118, %if.end.115
  call void @erase()
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call122 = call i32 @fflush(%struct._IO_FILE* %76)
  call void @done(i32 0)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %lor.lhs.false.118
  br label %checkagain

sw.bb.124:                                        ; preds = %for.cond.102, %for.cond.102
  %77 = load i8*, i8** %ctok.addr, align 8
  %call125 = call i8* @strtosichar(i8* %77, i32 0)
  %call126 = call i8* @ichartosstr(i8* %call125, i32 1)
  call void @treeinsert(i8* %call126, i32 184, i32 1)
  call void @erase()
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call127 = call i32 @fflush(%struct._IO_FILE* %78)
  store i32 1, i32* @changes, align 4
  br label %return

sw.bb.128:                                        ; preds = %for.cond.102, %for.cond.102
  %79 = load i8*, i8** %ctok.addr, align 8
  %call129 = call i8* @strtosichar(i8* %79, i32 0)
  store i8* %call129, i8** %itok.addr, align 8
  %80 = load i8*, i8** %itok.addr, align 8
  call void @lowcase(i8* %80)
  %81 = load i8*, i8** %itok.addr, align 8
  %call130 = call i8* @ichartosstr(i8* %81, i32 1)
  call void @treeinsert(i8* %call130, i32 184, i32 1)
  call void @erase()
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call131 = call i32 @fflush(%struct._IO_FILE* %82)
  store i32 1, i32* @changes, align 4
  br label %return

sw.bb.132:                                        ; preds = %for.cond.102, %for.cond.102
  %83 = load i8*, i8** %ctok.addr, align 8
  %call133 = call i8* @strtosichar(i8* %83, i32 0)
  %call134 = call i8* @ichartosstr(i8* %call133, i32 1)
  call void @treeinsert(i8* %call134, i32 184, i32 0)
  call void @erase()
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call135 = call i32 @fflush(%struct._IO_FILE* %84)
  br label %return

sw.bb.136:                                        ; preds = %for.cond.102
  br label %checkagain

sw.bb.137:                                        ; preds = %for.cond.102
  call void @givehelp(i32 1)
  br label %checkagain

sw.bb.138:                                        ; preds = %for.cond.102
  %85 = load i32, i32* @li, align 4
  %sub139 = sub nsw i32 %85, 1
  call void @move(i32 %sub139, i32 0)
  %call140 = call i32 @putchar(i32 33)
  %arraydecay141 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call142 = call i8* @getline_ispell(i8* %arraydecay141)
  %cmp143 = icmp eq i8* %call142, null
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %sw.bb.138
  %call146 = call i32 @putchar(i32 7)
  call void @erase()
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call147 = call i32 @fflush(%struct._IO_FILE* %86)
  br label %checkagain

if.end.148:                                       ; preds = %sw.bb.138
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call150 = call i32 @fflush(%struct._IO_FILE* %87)
  %arraydecay151 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call152 = call i32 @shellescape(i8* %arraydecay151)
  call void @erase()
  br label %checkagain

sw.bb.153:                                        ; preds = %for.cond.102, %for.cond.102
  %88 = load i32, i32* @li, align 4
  %sub154 = sub nsw i32 %88, 1
  call void @move(i32 %sub154, i32 0)
  %89 = load i32, i32* @readonly, align 4
  %tobool155 = icmp ne i32 %89, 0
  br i1 %tobool155, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %sw.bb.153
  %call157 = call i32 @putchar(i32 7)
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %sw.bb.153
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0))
  %90 = load i8*, i8** %ctok.addr, align 8
  %call161 = call i8* @getline_ispell(i8* %90)
  %cmp162 = icmp eq i8* %call161, null
  br i1 %cmp162, label %if.then.164, label %if.else.167

if.then.164:                                      ; preds = %if.end.159
  %call165 = call i32 @putchar(i32 7)
  %91 = load i8*, i8** %ctok.addr, align 8
  %92 = load i8*, i8** %itok.addr, align 8
  %93 = load i32, i32* %ctokl.addr, align 4
  %call166 = call i32 @ichartostr(i8* %91, i8* %92, i32 %93, i32 0)
  br label %if.end.174

if.else.167:                                      ; preds = %if.end.159
  %94 = load i8*, i8** %begintoken, align 8
  %95 = load i8*, i8** %ctok.addr, align 8
  %96 = load i8**, i8*** %curchar.addr, align 8
  call void @inserttoken(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %94, i8* %95, i8** %96)
  %97 = load i8*, i8** %itok.addr, align 8
  %98 = load i8*, i8** %ctok.addr, align 8
  %99 = load i32, i32* %itokl.addr, align 4
  %call168 = call i32 @strtoichar(i8* %97, i8* %98, i32 %99, i32 0)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %if.else.167
  %call171 = call i32 @putchar(i32 7)
  %100 = load i8*, i8** %ctok.addr, align 8
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0), i8* %100, i32 494, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %if.else.167
  store i32 1, i32* @changes, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.164
  call void @erase()
  %101 = load i8*, i8** %itok.addr, align 8
  %call175 = call i64 @strlen(i8* %101) #6
  %102 = load i32, i32* @minword, align 4
  %conv176 = sext i32 %102 to i64
  %cmp177 = icmp ule i64 %call175, %conv176
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.174
  br label %return

if.end.180:                                       ; preds = %if.end.174
  br label %checkagain

sw.bb.181:                                        ; preds = %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102, %for.cond.102
  %103 = load i32, i32* %c, align 4
  %sub182 = sub nsw i32 %103, 48
  store i32 %sub182, i32* %i, align 4
  %104 = load i32, i32* @easypossibilities, align 4
  %cmp183 = icmp sge i32 %104, 10
  br i1 %cmp183, label %if.then.185, label %if.end.207

if.then.185:                                      ; preds = %sw.bb.181
  %call186 = call i32 @getchar()
  %and187 = and i32 %call186, 127
  store i32 %and187, i32* %c, align 4
  %105 = load i32, i32* %c, align 4
  %cmp188 = icmp sge i32 %105, 48
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.197

land.lhs.true.190:                                ; preds = %if.then.185
  %106 = load i32, i32* %c, align 4
  %cmp191 = icmp sle i32 %106, 57
  br i1 %cmp191, label %if.then.193, label %if.else.197

if.then.193:                                      ; preds = %land.lhs.true.190
  %107 = load i32, i32* %i, align 4
  %mul194 = mul nsw i32 %107, 10
  %108 = load i32, i32* %c, align 4
  %add195 = add nsw i32 %mul194, %108
  %sub196 = sub nsw i32 %add195, 48
  store i32 %sub196, i32* %i, align 4
  br label %if.end.206

if.else.197:                                      ; preds = %land.lhs.true.190, %if.then.185
  %109 = load i32, i32* %c, align 4
  %cmp198 = icmp ne i32 %109, 13
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.205

land.lhs.true.200:                                ; preds = %if.else.197
  %110 = load i32, i32* %c, align 4
  %cmp201 = icmp ne i32 %110, 10
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %land.lhs.true.200
  %call204 = call i32 @putchar(i32 7)
  br label %sw.epilog

if.end.205:                                       ; preds = %land.lhs.true.200, %if.else.197
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.193
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %sw.bb.181
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* @easypossibilities, align 4
  %cmp208 = icmp slt i32 %111, %112
  br i1 %cmp208, label %if.then.210, label %if.end.223

if.then.210:                                      ; preds = %if.end.207
  %113 = load i8*, i8** %ctok.addr, align 8
  %114 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %114 to i64
  %arrayidx212 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom211
  %arraydecay213 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx212, i32 0, i32 0
  %call214 = call i8* @strcpy(i8* %113, i8* %arraydecay213) #5
  store i32 1, i32* @changes, align 4
  %115 = load i8*, i8** %begintoken, align 8
  %116 = load i8*, i8** %ctok.addr, align 8
  %117 = load i8**, i8*** %curchar.addr, align 8
  call void @inserttoken(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %115, i8* %116, i8** %117)
  call void @erase()
  %118 = load i32, i32* @readonly, align 4
  %tobool215 = icmp ne i32 %118, 0
  br i1 %tobool215, label %if.then.216, label %if.end.222

if.then.216:                                      ; preds = %if.then.210
  %119 = load i32, i32* @li, align 4
  %sub217 = sub nsw i32 %119, 1
  call void @move(i32 %sub217, i32 0)
  %call218 = call i32 @putchar(i32 7)
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call220 = call i32 @fflush(%struct._IO_FILE* %120)
  %call221 = call i32 @sleep(i32 2)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.216, %if.then.210
  br label %return

if.end.223:                                       ; preds = %if.end.207
  %call224 = call i32 @putchar(i32 7)
  br label %sw.epilog

sw.bb.225:                                        ; preds = %for.cond.102, %for.cond.102
  br label %sw.epilog

sw.bb.226:                                        ; preds = %for.cond.102, %for.cond.102
  %121 = load i32, i32* @li, align 4
  %sub228 = sub nsw i32 %121, 1
  call void @move(i32 %sub228, i32 0)
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  %arraydecay230 = getelementptr inbounds [100 x i8], [100 x i8]* %buf227, i32 0, i32 0
  %call231 = call i8* @getline_ispell(i8* %arraydecay230)
  %cmp232 = icmp eq i8* %call231, null
  br i1 %cmp232, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %sw.bb.226
  %call235 = call i32 @putchar(i32 7)
  call void @erase()
  br label %checkagain

if.end.236:                                       ; preds = %sw.bb.226
  %call237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call238 = call i32 @fflush(%struct._IO_FILE* %122)
  %arraydecay239 = getelementptr inbounds [100 x i8], [100 x i8]* %buf227, i32 0, i32 0
  call void @lookharder(i8* %arraydecay239)
  call void @erase()
  br label %checkagain

sw.bb.240:                                        ; preds = %for.cond.102, %for.cond.102
  store i32 1, i32* @quit, align 4
  call void @erase()
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call241 = call i32 @fflush(%struct._IO_FILE* %123)
  br label %return

sw.default:                                       ; preds = %for.cond.102
  %call242 = call i32 @putchar(i32 7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.225, %if.end.223, %if.then.203
  br label %for.cond.102

return:                                           ; preds = %sw.bb.240, %if.end.222, %if.then.179, %sw.bb.132, %sw.bb.128, %sw.bb.124, %sw.bb.105, %if.then.6, %if.then
  ret void
}

declare i32 @good(i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @compoundgood(i8* %word, i32 %pfxopts) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %pfxopts.addr = alloca i32, align 4
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %savech = alloca i8, align 1
  %secondcap = alloca i64, align 8
  store i8* %word, i8** %word.addr, align 8
  store i32 %pfxopts, i32* %pfxopts.addr, align 4
  %0 = load i32, i32* @compoundflag, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %word.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %2 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %conv = sext i16 %2 to i32
  %mul = mul nsw i32 2, %conv
  %conv1 = sext i32 %mul to i64
  %cmp2 = icmp ult i64 %call, %conv1
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %3 = load i8*, i8** %word.addr, align 8
  %call6 = call i8* @strcpy(i8* %arraydecay, i8* %3) #5
  %arraydecay7 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %4 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %conv8 = sext i16 %4 to i32
  %idx.ext = sext i32 %conv8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %conv9 = sext i16 %5 to i32
  %sub = sub nsw i32 %conv9, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %savech, align 1
  %10 = load i8*, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %arraydecay13 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %11 = load i32, i32* %pfxopts.addr, align 4
  %call14 = call i32 @good(i8* %arraydecay13, i32 0, i32 0, i32 %11, i32 2)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %12 = load i8, i8* %savech, align 1
  %13 = load i8*, i8** %p, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %p, align 8
  %call16 = call i32 @good(i8* %14, i32 0, i32 1, i32 2, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.15
  %15 = load i8*, i8** %p, align 8
  %call18 = call i32 @compoundgood(i8* %15, i32 2)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %lor.lhs.false, %if.then.15
  %16 = load i8*, i8** %p, align 8
  %call21 = call i64 @whatcap(i8* %16)
  store i64 %call21, i64* %secondcap, align 8
  %arraydecay22 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %call23 = call i64 @whatcap(i8* %arraydecay22)
  switch i64 %call23, label %sw.epilog [
    i64 0, label %sw.bb
    i64 536870912, label %sw.bb
    i64 805306368, label %sw.bb
    i64 268435456, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.then.20, %if.then.20, %if.then.20
  %17 = load i64, i64* %secondcap, align 8
  %cmp24 = icmp eq i64 %17, 0
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %if.then.20
  %18 = load i64, i64* %secondcap, align 8
  %cmp27 = icmp eq i64 %18, 268435456
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.20
  br label %if.end.29

if.end.29:                                        ; preds = %sw.epilog, %lor.lhs.false
  br label %if.end.30

if.else:                                          ; preds = %for.body
  %19 = load i8, i8* %savech, align 1
  %20 = load i8*, i8** %p, align 8
  store i8 %19, i8* %20, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.bb.26, %sw.bb, %if.then.4, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @makepossibilities(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx, i32 0, i64 0
  store i8 0, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @pcount, align 4
  store i32 0, i32* @maxposslen, align 4
  store i32 0, i32* @easypossibilities, align 4
  %3 = load i8*, i8** %word.addr, align 8
  call void @wrongcapital(i8* %3)
  %4 = load i32, i32* @pcount, align 4
  %cmp2 = icmp slt i32 %4, 100
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %5 = load i8*, i8** %word.addr, align 8
  call void @missingletter(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %6 = load i32, i32* @pcount, align 4
  %cmp3 = icmp slt i32 %6, 100
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %word.addr, align 8
  call void @transposedletter(i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i32, i32* @pcount, align 4
  %cmp6 = icmp slt i32 %8, 100
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %word.addr, align 8
  call void @extraletter(i8* %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i32, i32* @pcount, align 4
  %cmp9 = icmp slt i32 %10, 100
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %11 = load i8*, i8** %word.addr, align 8
  call void @wrongletter(i8* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %12 = load i32, i32* @compoundflag, align 4
  %cmp12 = icmp ne i32 %12, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.11
  %13 = load i32, i32* @pcount, align 4
  %cmp13 = icmp slt i32 %13, 100
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %14 = load i8*, i8** %word.addr, align 8
  call void @missingspace(i8* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.11
  %15 = load i32, i32* @pcount, align 4
  store i32 %15, i32* @easypossibilities, align 4
  %16 = load i32, i32* @easypossibilities, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %17 = load i32, i32* @tryhardflag, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.15
  %18 = load i8*, i8** %word.addr, align 8
  call void @tryveryhard(i8* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %lor.lhs.false
  %19 = load i32, i32* @sortit, align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %land.lhs.true.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %20 = load i32, i32* @pcount, align 4
  %21 = load i32, i32* @easypossibilities, align 4
  %cmp21 = icmp sgt i32 %20, %21
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.38

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20, %if.end.18
  %22 = load i32, i32* @pcount, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %land.lhs.true.22
  %23 = load i32, i32* @easypossibilities, align 4
  %cmp25 = icmp sgt i32 %23, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.29

land.lhs.true.26:                                 ; preds = %if.then.24
  %24 = load i32, i32* @sortit, align 4
  %tobool27 = icmp ne i32 %24, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.26
  %25 = load i32, i32* @easypossibilities, align 4
  %conv = zext i32 %25 to i64
  call void @qsort(i8* getelementptr inbounds ([100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i32 0, i32 0), i64 %conv, i64 120, i32 (i8*, i8*)* @posscmp)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.26, %if.then.24
  %26 = load i32, i32* @pcount, align 4
  %27 = load i32, i32* @easypossibilities, align 4
  %cmp30 = icmp sgt i32 %26, %27
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.29
  %28 = load i32, i32* @easypossibilities, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx34, i32 0, i64 0
  %29 = load i32, i32* @pcount, align 4
  %30 = load i32, i32* @easypossibilities, align 4
  %sub = sub nsw i32 %29, %30
  %conv36 = zext i32 %sub to i64
  call void @qsort(i8* %arrayidx35, i64 %conv36, i64 120, i32 (i8*, i8*)* @posscmp)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.22, %lor.lhs.false.20
  ret void
}

declare void @move(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @show_line(i8* %line, i8* %invstart, i32 %invlen) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %invstart.addr = alloca i8*, align 8
  %invlen.addr = alloca i32, align 4
  %width = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8* %invstart, i8** %invstart.addr, align 8
  store i32 %invlen, i32* %invlen.addr, align 4
  %0 = load i32, i32* %invlen.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @sg, align 4
  %shl = shl i32 %1, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %width, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8*, i8** %invstart.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* @co, align 4
  %sub = sub nsw i32 %5, 1
  %cmp1 = icmp slt i32 %4, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %width, align 4
  %8 = load i8*, i8** %invstart.addr, align 8
  %9 = load i8*, i8** %line.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call = call i32 @show_char(i8** %line.addr, i32 %7, i32 1, i32 %conv)
  %10 = load i32, i32* %width, align 4
  %add = add nsw i32 %10, %call
  store i32 %add, i32* %width, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %invlen.addr, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @inverse()
  %12 = load i32, i32* %invlen.addr, align 4
  %13 = load i8*, i8** %invstart.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %invstart.addr, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.11, %if.then
  %14 = load i8*, i8** %line.addr, align 8
  %15 = load i8*, i8** %invstart.addr, align 8
  %cmp4 = icmp ult i8* %14, %15
  br i1 %cmp4, label %land.rhs.6, label %land.end.10

land.rhs.6:                                       ; preds = %while.cond.3
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* @co, align 4
  %sub7 = sub nsw i32 %17, 1
  %cmp8 = icmp slt i32 %16, %sub7
  br label %land.end.10

land.end.10:                                      ; preds = %land.rhs.6, %while.cond.3
  %18 = phi i1 [ false, %while.cond.3 ], [ %cmp8, %land.rhs.6 ]
  br i1 %18, label %while.body.11, label %while.end.18

while.body.11:                                    ; preds = %land.end.10
  %19 = load i32, i32* %width, align 4
  %20 = load i8*, i8** %invstart.addr, align 8
  %21 = load i8*, i8** %line.addr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %21 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  %call16 = call i32 @show_char(i8** %line.addr, i32 %19, i32 1, i32 %conv15)
  %22 = load i32, i32* %width, align 4
  %add17 = add nsw i32 %22, %call16
  store i32 %add17, i32* %width, align 4
  br label %while.cond.3

while.end.18:                                     ; preds = %land.end.10
  call void @normal()
  br label %if.end

if.end:                                           ; preds = %while.end.18, %while.end
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.27, %if.end
  %23 = load i8*, i8** %line.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv20 = sext i8 %24 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.26

land.rhs.22:                                      ; preds = %while.cond.19
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* @co, align 4
  %sub23 = sub nsw i32 %26, 1
  %cmp24 = icmp slt i32 %25, %sub23
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.22, %while.cond.19
  %27 = phi i1 [ false, %while.cond.19 ], [ %cmp24, %land.rhs.22 ]
  br i1 %27, label %while.body.27, label %while.end.30

while.body.27:                                    ; preds = %land.end.26
  %28 = load i32, i32* %width, align 4
  %call28 = call i32 @show_char(i8** %line.addr, i32 %28, i32 1, i32 0)
  %29 = load i32, i32* %width, align 4
  %add29 = add nsw i32 %29, %call28
  store i32 %add29, i32* %width, align 4
  br label %while.cond.19

while.end.30:                                     ; preds = %land.end.26
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @line_size(i8* %buf, i8* %bufend) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufend.addr = alloca i8*, align 8
  %width = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %bufend, i8** %bufend.addr, align 8
  store i32 0, i32* %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8*, i8** %bufend.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %width, align 4
  %6 = load i8*, i8** %bufend.addr, align 8
  %7 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %call = call i32 @show_char(i8** %buf.addr, i32 %5, i32 0, i32 %conv3)
  %8 = load i32, i32* %width, align 4
  %add = add nsw i32 %8, %call
  store i32 %add, i32* %width, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %width, align 4
  ret i32 %9
}

declare void @stop() #1

declare void @done(i32) #1

declare void @treeinsert(i8*, i32, i32) #1

declare i8* @ichartosstr(i8*, i32) #1

declare i8* @strtosichar(i8*, i32) #1

declare void @lowcase(i8*) #1

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @getline_ispell(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.41, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  %call1 = call i32 @getchar()
  %and = and i32 %call1, 127
  store i32 %and, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %2, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @putchar(i32 92)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  %call4 = call i32 @getchar()
  %and5 = and i32 %call4, 127
  store i32 %and5, i32* %c, align 4
  call void @backup()
  %4 = load i32, i32* %c, align 4
  %call6 = call i32 @putchar(i32 %4)
  %5 = load i32, i32* %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %6, align 1
  br label %if.end.41

if.else:                                          ; preds = %for.cond
  %7 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %7, 7
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.else.10:                                       ; preds = %if.else
  %8 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %8, 10
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.10
  %9 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %9, 13
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.else.10
  %10 = load i8*, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %s.addr, align 8
  store i8* %11, i8** %retval
  br label %return

if.else.16:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* %c, align 4
  %13 = load i32, i32* @uerasechar, align 4
  %cmp17 = icmp eq i32 %12, %13
  br i1 %cmp17, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.else.16
  %14 = load i8*, i8** %p, align 8
  %15 = load i8*, i8** %s.addr, align 8
  %cmp20 = icmp ne i8* %14, %15
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.19
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %incdec.ptr23, i8** %p, align 8
  call void @backup()
  %call24 = call i32 @putchar(i32 32)
  call void @backup()
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.19
  br label %if.end.38

if.else.25:                                       ; preds = %if.else.16
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* @ukillchar, align 4
  %cmp26 = icmp eq i32 %17, %18
  br i1 %cmp26, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %if.else.25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.28
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %s.addr, align 8
  %cmp29 = icmp ne i8* %19, %20
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr31, i8** %p, align 8
  call void @backup()
  %call32 = call i32 @putchar(i32 32)
  call void @backup()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.37

if.else.33:                                       ; preds = %if.else.25
  %22 = load i32, i32* %c, align 4
  %conv34 = trunc i32 %22 to i8
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  store i8 %conv34, i8* %23, align 1
  %24 = load i32, i32* %c, align 4
  %call36 = call i32 @putchar(i32 %24)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %while.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  br label %for.cond

return:                                           ; preds = %if.then.15, %if.then.9
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare i32 @shellescape(i8*) #1

declare i32 @ichartostr(i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @inserttoken(i8* %buf, i8* %start, i8* %tok, i8** %curchar) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %tok.addr = alloca i8*, align 8
  %curchar.addr = alloca i8**, align 8
  %copy = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %ew = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %tok, i8** %tok.addr, align 8
  store i8** %curchar, i8*** %curchar.addr, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %copy, i32 0, i32 0
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #5
  %1 = load i8*, i8** %buf.addr, align 8
  store i8* %1, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %copy, i32 0, i32 0
  store i8* %arraydecay1, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %start.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %q, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %p, align 8
  store i8 %5, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %8 = load i8*, i8** %q, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr2, i8** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8**, i8*** %curchar.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %12 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %q, align 8
  %13 = load i8*, i8** %tok.addr, align 8
  %call3 = call i8* @skipoverword(i8* %13)
  store i8* %call3, i8** %ew, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %14 = load i8*, i8** %tok.addr, align 8
  %15 = load i8*, i8** %ew, align 8
  %cmp4 = icmp ult i8* %14, %15
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %tok.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr5, i8** %tok.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %17, i8* %18, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i8*, i8** %p, align 8
  %20 = load i8**, i8*** %curchar.addr, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %tok.addr, align 8
  %22 = load i8, i8* %21, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %23 = load i8*, i8** %tok.addr, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %tok.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr8, i8** %tok.addr, align 8
  store i8 0, i8* %26, align 1
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.11, %if.then
  %27 = load i8*, i8** %tok.addr, align 8
  %28 = load i8, i8* %27, align 1
  %tobool10 = icmp ne i8 %28, 0
  br i1 %tobool10, label %while.body.11, label %while.end.14

while.body.11:                                    ; preds = %while.cond.9
  %29 = load i8*, i8** %tok.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr12, i8** %tok.addr, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  store i8 %30, i8* %31, align 1
  br label %while.cond.9

while.end.14:                                     ; preds = %while.cond.9
  br label %if.end

if.end:                                           ; preds = %while.end.14, %while.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.20, %if.end
  %32 = load i8*, i8** %q, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr16, i8** %q, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8
  store i8 %33, i8* %34, align 1
  %conv = sext i8 %33 to i32
  %cmp18 = icmp ne i32 %conv, 0
  br i1 %cmp18, label %while.body.20, label %while.end.21

while.body.20:                                    ; preds = %while.cond.15
  br label %while.cond.15

while.end.21:                                     ; preds = %while.cond.15
  ret void
}

declare i32 @strtoichar(i8*, i8*, i32, i32) #1

declare i32 @sleep(i32) #1

; Function Attrs: nounwind uwtable
define internal void @lookharder(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %cmd = alloca [150 x i8], align 16
  %grepstr = alloca [100 x i8], align 16
  %g = alloca i8*, align 8
  %s = alloca i8*, align 8
  %wild = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %wild, align 4
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %grepstr, i32 0, i32 0
  store i8* %arraydecay, i8** %g, align 8
  %0 = load i8*, i8** %string.addr, align 8
  store i8* %0, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 42
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %wild, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %wild, align 4
  %6 = load i8*, i8** %g, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %g, align 8
  store i8 46, i8* %6, align 1
  %7 = load i8*, i8** %g, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %g, align 8
  store i8 42, i8* %7, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i8*, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %g, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr6, i8** %g, align 8
  store i8 %9, i8* %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %g, align 8
  store i8 0, i8* %12, align 1
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %grepstr, i32 0, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.8, label %if.end.31

if.then.8:                                        ; preds = %for.end
  %14 = load i32, i32* %wild, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.8
  %15 = load i32, i32* @lookharder.look, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %land.lhs.true
  %arraydecay12 = getelementptr inbounds [150 x i8], [150 x i8]* %cmd, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %grepstr, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* %arraydecay13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0)) #5
  %arraydecay14 = getelementptr inbounds [150 x i8], [150 x i8]* %cmd, i32 0, i32 0
  %call15 = call i32 @shellescape(i8* %arraydecay14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.11
  br label %if.end.31

if.else.18:                                       ; preds = %if.then.11
  store i32 0, i32* @lookharder.look, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true, %if.then.8
  %16 = load i32, i32* %wild, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %arraydecay23 = getelementptr inbounds [100 x i8], [100 x i8]* %grepstr, i32 0, i32 0
  %call24 = call i8* @strcat(i8* %arraydecay23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0)) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %arraydecay26 = getelementptr inbounds [150 x i8], [150 x i8]* %cmd, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [100 x i8], [100 x i8]* %grepstr, i32 0, i32 0
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* %arraydecay27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0)) #5
  %arraydecay29 = getelementptr inbounds [150 x i8], [150 x i8]* %cmd, i32 0, i32 0
  %call30 = call i32 @shellescape(i8* %arraydecay29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.17, %if.end.25, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @casecmp(i8* %a, i8* %b, i32 %canonical) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %canonical.addr = alloca i32, align 4
  %ap = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %inta = alloca [184 x i8], align 16
  %intb = alloca [184 x i8], align 16
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %canonical, i32* %canonical.addr, align 4
  %arraydecay = getelementptr inbounds [184 x i8], [184 x i8]* %inta, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i32, i32* %canonical.addr, align 4
  %call = call i32 @strtoichar(i8* %arraydecay, i8* %0, i32 184, i32 %1)
  %arraydecay1 = getelementptr inbounds [184 x i8], [184 x i8]* %intb, i32 0, i32 0
  %2 = load i8*, i8** %b.addr, align 8
  %3 = load i32, i32* %canonical.addr, align 4
  %call2 = call i32 @strtoichar(i8* %arraydecay1, i8* %2, i32 184, i32 %3)
  %arraydecay3 = getelementptr inbounds [184 x i8], [184 x i8]* %inta, i32 0, i32 0
  store i8* %arraydecay3, i8** %ap, align 8
  %arraydecay4 = getelementptr inbounds [184 x i8], [184 x i8]* %intb, i32 0, i32 0
  store i8* %arraydecay4, i8** %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %ap, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %ap, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i8*, i8** %bp, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %if.end.58

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %bp, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %12 = load i8*, i8** %ap, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2
  %conv14 = zext i16 %14 to i32
  store i32 %conv14, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %15 = load i8*, i8** %ap, align 8
  %16 = load i8, i8* %15, align 1
  %idxprom15 = zext i8 %16 to i64
  %arrayidx16 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom15
  %17 = load i8, i8* %arrayidx16, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then.17, label %if.else.35

if.then.17:                                       ; preds = %if.else
  %18 = load i8*, i8** %bp, align 8
  %19 = load i8, i8* %18, align 1
  %idxprom18 = zext i8 %19 to i64
  %arrayidx19 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %21 = load i8*, i8** %ap, align 8
  %22 = load i8, i8* %21, align 1
  %idxprom22 = zext i8 %22 to i64
  %arrayidx23 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %24 = load i8*, i8** %bp, align 8
  %25 = load i8, i8* %24, align 1
  %conv25 = zext i8 %25 to i32
  %cmp26 = icmp ne i32 %conv24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false, %if.then.17
  %26 = load i8*, i8** %ap, align 8
  %27 = load i8, i8* %26, align 1
  %idxprom29 = zext i8 %27 to i64
  %arrayidx30 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom29
  %28 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %28 to i32
  %29 = load i8*, i8** %bp, align 8
  %30 = load i8, i8* %29, align 1
  %idxprom32 = zext i8 %30 to i64
  %arrayidx33 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %31 to i32
  %sub = sub nsw i32 %conv31, %conv34
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.56

if.else.35:                                       ; preds = %if.else
  %32 = load i8*, i8** %bp, align 8
  %33 = load i8, i8* %32, align 1
  %idxprom36 = zext i8 %33 to i64
  %arrayidx37 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom36
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %34 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %if.then.47, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.else.35
  %35 = load i8*, i8** %ap, align 8
  %36 = load i8, i8* %35, align 1
  %idxprom41 = zext i8 %36 to i64
  %arrayidx42 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom41
  %37 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %37 to i32
  %38 = load i8*, i8** %bp, align 8
  %39 = load i8, i8* %38, align 1
  %conv44 = zext i8 %39 to i32
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %lor.lhs.false.40, %if.else.35
  %40 = load i8*, i8** %ap, align 8
  %41 = load i8, i8* %40, align 1
  %idxprom48 = zext i8 %41 to i64
  %arrayidx49 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom48
  %42 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %42 to i32
  %43 = load i8*, i8** %bp, align 8
  %44 = load i8, i8* %43, align 1
  %idxprom51 = zext i8 %44 to i64
  %arrayidx52 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom51
  %45 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %45 to i32
  %sub54 = sub nsw i32 %conv50, %conv53
  store i32 %sub54, i32* %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.40
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %46 = load i8*, i8** %ap, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %ap, align 8
  %47 = load i8*, i8** %bp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr59, i8** %bp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i8*, i8** %bp, align 8
  %49 = load i8, i8* %48, align 1
  %conv60 = zext i8 %49 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %for.end
  %50 = load i8*, i8** %bp, align 8
  %51 = load i8, i8* %50, align 1
  %idxprom64 = zext i8 %51 to i64
  %arrayidx65 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom64
  %52 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %52 to i32
  %sub67 = sub nsw i32 0, %conv66
  store i32 %sub67, i32* %retval
  br label %return

if.end.68:                                        ; preds = %for.end
  %arraydecay69 = getelementptr inbounds [184 x i8], [184 x i8]* %inta, i32 0, i32 0
  store i8* %arraydecay69, i8** %ap, align 8
  %arraydecay70 = getelementptr inbounds [184 x i8], [184 x i8]* %intb, i32 0, i32 0
  store i8* %arraydecay70, i8** %bp, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.87, %if.end.68
  %53 = load i8*, i8** %ap, align 8
  %54 = load i8, i8* %53, align 1
  %tobool72 = icmp ne i8 %54, 0
  br i1 %tobool72, label %for.body.73, label %for.end.90

for.body.73:                                      ; preds = %for.cond.71
  %55 = load i8*, i8** %ap, align 8
  %56 = load i8, i8* %55, align 1
  %conv74 = zext i8 %56 to i32
  %57 = load i8*, i8** %bp, align 8
  %58 = load i8, i8* %57, align 1
  %conv75 = zext i8 %58 to i32
  %cmp76 = icmp ne i32 %conv74, %conv75
  br i1 %cmp76, label %if.then.78, label %if.end.86

if.then.78:                                       ; preds = %for.body.73
  %59 = load i8*, i8** %ap, align 8
  %60 = load i8, i8* %59, align 1
  %idxprom79 = zext i8 %60 to i64
  %arrayidx80 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom79
  %61 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %61 to i32
  %62 = load i8*, i8** %bp, align 8
  %63 = load i8, i8* %62, align 1
  %idxprom82 = zext i8 %63 to i64
  %arrayidx83 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom82
  %64 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %64 to i32
  %sub85 = sub nsw i32 %conv81, %conv84
  store i32 %sub85, i32* %retval
  br label %return

if.end.86:                                        ; preds = %for.body.73
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %65 = load i8*, i8** %ap, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr88, i8** %ap, align 8
  %66 = load i8*, i8** %bp, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr89, i8** %bp, align 8
  br label %for.cond.71

for.end.90:                                       ; preds = %for.cond.71
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.90, %if.then.78, %if.then.63, %if.then.47, %if.then.28, %if.then.13
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal void @wrongcapital(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i32 @good(i8* %0, i32 0, i32 1, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %1 = load i8*, i8** %word.addr, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %1) #5
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %2 = load i8*, i8** %word.addr, align 8
  %call4 = call i32 @ins_cap(i8* %arraydecay3, i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @missingletter(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %newword = alloca [121 x i8], align 16
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i8* @strcpy(i8* %add.ptr, i8* %0) #5
  %1 = load i8*, i8** %word.addr, align 8
  store i8* %1, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  store i8* %arraydecay1, i8** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @Trynum, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom7 = zext i8 %7 to i64
  %arrayidx8 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %9 = load i8*, i8** %r, align 8
  %arraydecay10 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %cmp11 = icmp eq i8* %9, %arraydecay10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body.6
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom13
  %11 = load i8, i8* %arrayidx14, align 1
  %12 = load i8*, i8** %r, align 8
  store i8 %11, i8* %12, align 1
  %arraydecay15 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %call16 = call i32 @good(i8* %arraydecay15, i32 0, i32 1, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %13 = load i8*, i8** %word.addr, align 8
  %call20 = call i32 @ins_cap(i8* %arraydecay19, i8* %13)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  br label %for.end.54

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.25, %if.then
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %r, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr26, i8** %r, align 8
  store i8 %16, i8* %17, align 1
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.52, %for.end.27
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @Trynum, align 4
  %cmp29 = icmp slt i32 %18, %19
  br i1 %cmp29, label %for.body.31, label %for.end.54

for.body.31:                                      ; preds = %for.cond.28
  %20 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom32
  %21 = load i8, i8* %arrayidx33, align 1
  %idxprom34 = zext i8 %21 to i64
  %arrayidx35 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom34
  %22 = load i8, i8* %arrayidx35, align 1
  %tobool36 = icmp ne i8 %22, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.31
  br label %for.inc.52

if.end.38:                                        ; preds = %for.body.31
  %23 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom39
  %24 = load i8, i8* %arrayidx40, align 1
  %25 = load i8*, i8** %r, align 8
  store i8 %24, i8* %25, align 1
  %arraydecay41 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %call42 = call i32 @good(i8* %arraydecay41, i32 0, i32 1, i32 0, i32 0)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.end.38
  %arraydecay45 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %26 = load i8*, i8** %word.addr, align 8
  %call46 = call i32 @ins_cap(i8* %arraydecay45, i8* %26)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.44
  br label %for.end.54

if.end.50:                                        ; preds = %if.then.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.38
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.37
  %27 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %27, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.28

for.end.54:                                       ; preds = %if.then.23, %if.then.49, %for.cond.28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @transposedletter(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %temp = alloca i8, align 1
  store i8* %word, i8** %word.addr, align 8
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #5
  %arraydecay1 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  store i8* %arraydecay1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %temp, align 1
  %5 = load i8*, i8** %p, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %p, align 8
  store i8 %6, i8* %7, align 1
  %8 = load i8, i8* %temp, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %8, i8* %arrayidx4, align 1
  %arraydecay5 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %call6 = call i32 @good(i8* %arraydecay5, i32 0, i32 1, i32 0, i32 0)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %arraydecay7 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %10 = load i8*, i8** %word.addr, align 8
  %call8 = call i32 @ins_cap(i8* %arraydecay7, i8* %10)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %temp, align 1
  %13 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx13, align 1
  %15 = load i8*, i8** %p, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* %temp, align 1
  %17 = load i8*, i8** %p, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %16, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extraletter(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %1 = load i8*, i8** %word.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr) #5
  %2 = load i8*, i8** %word.addr, align 8
  store i8* %2, i8** %p, align 8
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  store i8* %arraydecay2, i8** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.14, %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay5 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %call6 = call i32 @good(i8* %arraydecay5, i32 0, i32 1, i32 0, i32 0)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %for.body
  %arraydecay8 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %5 = load i8*, i8** %word.addr, align 8
  %call9 = call i32 @ins_cap(i8* %arraydecay8, i8* %5)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  br label %for.end

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %r, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr15, i8** %r, align 8
  store i8 %7, i8* %8, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.12, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wrongletter(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %savechar = alloca i8, align 1
  %newword = alloca [120 x i8], align 16
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %1 = load i8*, i8** %word.addr, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %1) #5
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %arraydecay2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %savechar, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @Trynum, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i8, i8* %savechar, align 1
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv10, %conv11
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  br label %for.inc

if.else:                                          ; preds = %for.body.7
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom14
  %12 = load i8, i8* %arrayidx15, align 1
  %idxprom16 = zext i8 %12 to i64
  %arrayidx17 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv18, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %i, align 4
  %cmp19 = icmp eq i32 %14, 0
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %16, 1
  %cmp21 = icmp eq i32 %15, %sub
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom25
  %18 = load i8, i8* %arrayidx26, align 1
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i64 %idxprom27
  store i8 %18, i8* %arrayidx28, align 1
  %arraydecay29 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %call30 = call i32 @good(i8* %arraydecay29, i32 0, i32 1, i32 0, i32 0)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.24
  %arraydecay33 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i32 0
  %20 = load i8*, i8** %word.addr, align 8
  %call34 = call i32 @ins_cap(i8* %arraydecay33, i8* %20)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  br label %for.end.44

if.end.38:                                        ; preds = %if.then.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.39, %if.then.23, %if.then
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %22 = load i8, i8* %savechar, align 1
  %23 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [120 x i8], [120 x i8]* %newword, i32 0, i64 %idxprom40
  store i8 %22, i8* %arrayidx41, align 1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %24, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %if.then.37, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @missingspace(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %firsthalf = alloca [10 x [120 x i8]], align 16
  %firstno = alloca i32, align 4
  %firstp = alloca i8*, align 8
  %newword = alloca [121 x i8], align 16
  %nfirsthalf = alloca i32, align 4
  %nsecondhalf = alloca i32, align 4
  %p = alloca i8*, align 8
  %secondhalf = alloca [10 x [120 x i8]], align 16
  %secondno = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nfirsthalf, align 4
  %1 = load i32, i32* %nfirsthalf, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %nfirsthalf, align 4
  %cmp2 = icmp sge i32 %2, 119
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.63

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %3 = load i8*, i8** %word.addr, align 8
  %call4 = call i8* @strcpy(i8* %add.ptr, i8* %3) #5
  %arraydecay5 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  store i8* %add.ptr6, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %if.end
  %4 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 -1
  store i8 %7, i8* %arrayidx10, align 1
  %9 = load i8*, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %arraydecay11 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %call12 = call i32 @good(i8* %arraydecay11, i32 0, i32 1, i32 0, i32 0)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.61

if.then.13:                                       ; preds = %for.body
  %arraydecay14 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %10 = load i8*, i8** %word.addr, align 8
  %arraydecay15 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %firsthalf, i32 0, i32 0
  %call16 = call i32 @save_cap(i8* %arraydecay14, i8* %10, [120 x i8]* %arraydecay15)
  store i32 %call16, i32* %nfirsthalf, align 4
  %11 = load i8*, i8** %p, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %11, i64 1
  %call18 = call i32 @good(i8* %add.ptr17, i32 0, i32 1, i32 0, i32 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.60

if.then.20:                                       ; preds = %if.then.13
  %12 = load i8*, i8** %p, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %13, i64 1
  %arraydecay23 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %secondhalf, i32 0, i32 0
  %call24 = call i32 @save_cap(i8* %add.ptr21, i8* %add.ptr22, [120 x i8]* %arraydecay23)
  store i32 %call24, i32* %nsecondhalf, align 4
  store i32 0, i32* %firstno, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.57, %if.then.20
  %14 = load i32, i32* %firstno, align 4
  %15 = load i32, i32* %nfirsthalf, align 4
  %cmp26 = icmp slt i32 %14, %15
  br i1 %cmp26, label %for.body.28, label %for.end.59

for.body.28:                                      ; preds = %for.cond.25
  %16 = load i8*, i8** %p, align 8
  %arraydecay29 = getelementptr inbounds [121 x i8], [121 x i8]* %newword, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load i32, i32* %firstno, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %firsthalf, i32 0, i64 %idxprom
  %arrayidx31 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx30, i32 0, i64 %sub.ptr.sub
  store i8* %arrayidx31, i8** %firstp, align 8
  store i32 0, i32* %secondno, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body.28
  %18 = load i32, i32* %secondno, align 4
  %19 = load i32, i32* %nsecondhalf, align 4
  %cmp33 = icmp slt i32 %18, %19
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %20 = load i8*, i8** %firstp, align 8
  store i8 32, i8* %20, align 1
  %21 = load i8*, i8** %firstp, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i32, i32* %secondno, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %secondhalf, i32 0, i64 %idxprom37
  %arraydecay39 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx38, i32 0, i32 0
  %call40 = call i8* @strcpy(i8* %add.ptr36, i8* %arraydecay39) #5
  %23 = load i32, i32* %firstno, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %firsthalf, i32 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx42, i32 0, i32 0
  %call44 = call i32 @insert(i8* %arraydecay43)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.35
  br label %for.end.63

if.end.48:                                        ; preds = %for.body.35
  %24 = load i8*, i8** %firstp, align 8
  store i8 45, i8* %24, align 1
  %25 = load i32, i32* %firstno, align 4
  %idxprom49 = sext i32 %25 to i64
  %arrayidx50 = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %firsthalf, i32 0, i64 %idxprom49
  %arraydecay51 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx50, i32 0, i32 0
  %call52 = call i32 @insert(i8* %arraydecay51)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.48
  br label %for.end.63

if.end.56:                                        ; preds = %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %26 = load i32, i32* %secondno, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %secondno, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %27 = load i32, i32* %firstno, align 4
  %inc58 = add nsw i32 %27, 1
  store i32 %inc58, i32* %firstno, align 4
  br label %for.cond.25

for.end.59:                                       ; preds = %for.cond.25
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.59, %if.then.13
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.body
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end.63:                                       ; preds = %if.then, %if.then.47, %if.then.55, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tryveryhard(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i32 @good(i8* %0, i32 1, i32 0, i32 0, i32 0)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @posscmp(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @casecmp(i8* %0, i8* %1, i32 0)
  ret i32 %call
}

declare i64 @whatcap(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ins_root_cap(i8* %word, i8* %pattern, i32 %prestrip, i32 %preadd, i32 %sufstrip, i32 %sufadd, %struct.dent* %firstdent, %struct.flagent* %pfxent, %struct.flagent* %sufent) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %prestrip.addr = alloca i32, align 4
  %preadd.addr = alloca i32, align 4
  %sufstrip.addr = alloca i32, align 4
  %sufadd.addr = alloca i32, align 4
  %firstdent.addr = alloca %struct.dent*, align 8
  %pfxent.addr = alloca %struct.flagent*, align 8
  %sufent.addr = alloca %struct.flagent*, align 8
  %i = alloca i32, align 4
  %savearea = alloca [10 x [120 x i8]], align 16
  %nsaved = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %prestrip, i32* %prestrip.addr, align 4
  store i32 %preadd, i32* %preadd.addr, align 4
  store i32 %sufstrip, i32* %sufstrip.addr, align 4
  store i32 %sufadd, i32* %sufadd.addr, align 4
  store %struct.dent* %firstdent, %struct.dent** %firstdent.addr, align 8
  store %struct.flagent* %pfxent, %struct.flagent** %pfxent.addr, align 8
  store %struct.flagent* %sufent, %struct.flagent** %sufent.addr, align 8
  store i32 0, i32* %nsaved, align 4
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load i32, i32* %prestrip.addr, align 4
  %3 = load i32, i32* %preadd.addr, align 4
  %4 = load i32, i32* %sufstrip.addr, align 4
  %5 = load i32, i32* %sufadd.addr, align 4
  %6 = load %struct.dent*, %struct.dent** %firstdent.addr, align 8
  %7 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %8 = load %struct.flagent*, %struct.flagent** %sufent.addr, align 8
  %arraydecay = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %savearea, i32 0, i32 0
  call void @save_root_cap(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dent* %6, %struct.flagent* %7, %struct.flagent* %8, [120 x i8]* %arraydecay, i32* %nsaved)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nsaved, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %savearea, i32 0, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx, i32 0, i32 0
  %call = call i32 @insert(i8* %arraydecay1)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @save_root_cap(i8* %word, i8* %pattern, i32 %prestrip, i32 %preadd, i32 %sufstrip, i32 %sufadd, %struct.dent* %firstdent, %struct.flagent* %pfxent, %struct.flagent* %sufent, [120 x i8]* %savearea, i32* %nsaved) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %prestrip.addr = alloca i32, align 4
  %preadd.addr = alloca i32, align 4
  %sufstrip.addr = alloca i32, align 4
  %sufadd.addr = alloca i32, align 4
  %firstdent.addr = alloca %struct.dent*, align 8
  %pfxent.addr = alloca %struct.flagent*, align 8
  %sufent.addr = alloca %struct.flagent*, align 8
  %savearea.addr = alloca [120 x i8]*, align 8
  %nsaved.addr = alloca i32*, align 8
  %dent = alloca %struct.dent*, align 8
  %firstisupper = alloca i32, align 4
  %newword = alloca [184 x i8], align 16
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %prestrip, i32* %prestrip.addr, align 4
  store i32 %preadd, i32* %preadd.addr, align 4
  store i32 %sufstrip, i32* %sufstrip.addr, align 4
  store i32 %sufadd, i32* %sufadd.addr, align 4
  store %struct.dent* %firstdent, %struct.dent** %firstdent.addr, align 8
  store %struct.flagent* %pfxent, %struct.flagent** %pfxent.addr, align 8
  store %struct.flagent* %sufent, %struct.flagent** %sufent.addr, align 8
  store [120 x i8]* %savearea, [120 x i8]** %savearea.addr, align 8
  store i32* %nsaved, i32** %nsaved.addr, align 8
  %0 = load i32*, i32** %nsaved.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp sge i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %2 = load i8*, i8** %word.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %2) #5
  %3 = load i8*, i8** %pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx1 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, i32* %firstisupper, align 4
  %6 = load %struct.dent*, %struct.dent** %firstdent.addr, align 8
  store %struct.dent* %6, %struct.dent** %dent, align 8
  %7 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %8 = load i64, i64* %arrayidx2, align 8
  %and = and i64 %8, 1879048192
  %cmp3 = icmp eq i64 %and, 268435456
  br i1 %cmp3, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %arraydecay6)
  %9 = load i32*, i32** %nsaved.addr, align 8
  %10 = load i32, i32* %9, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx8 = getelementptr inbounds [120 x i8], [120 x i8]* %11, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx8, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call11 = call i8* @strcpy(i8* %arraydecay9, i8* %arraydecay10) #5
  %12 = load i32*, i32** %nsaved.addr, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 4
  br label %return

if.end.12:                                        ; preds = %if.end
  %14 = load i8*, i8** %pattern.addr, align 8
  store i8* %14, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %tobool15 = icmp ne i8 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = zext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %for.end
  %arraydecay22 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %arraydecay22)
  %23 = load i32*, i32** %nsaved.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx24 = getelementptr inbounds [120 x i8], [120 x i8]* %25, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx24, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call27 = call i8* @strcpy(i8* %arraydecay25, i8* %arraydecay26) #5
  %26 = load i32*, i32** %nsaved.addr, align 8
  %27 = load i32, i32* %26, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %26, align 4
  br label %return

if.end.29:                                        ; preds = %for.end
  %28 = load i8*, i8** %pattern.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %if.end.29
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %tobool31 = icmp ne i8 %30, 0
  br i1 %tobool31, label %for.body.32, label %for.end.40

for.body.32:                                      ; preds = %for.cond.30
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %idxprom33 = zext i8 %32 to i64
  %arrayidx34 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom33
  %33 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.32
  br label %for.end.40

if.end.37:                                        ; preds = %for.body.32
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  br label %for.cond.30

for.end.40:                                       ; preds = %if.then.36, %for.cond.30
  %35 = load i8*, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %conv41 = zext i8 %36 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.152

if.then.44:                                       ; preds = %for.end.40
  %37 = load i32, i32* %firstisupper, align 4
  %tobool45 = icmp ne i32 %37, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.44
  %38 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask47 = getelementptr inbounds %struct.dent, %struct.dent* %38, i32 0, i32 2
  %arrayidx48 = getelementptr inbounds [1 x i64], [1 x i64]* %mask47, i32 0, i64 0
  %39 = load i64, i64* %arrayidx48, align 8
  %and49 = and i64 %39, 805306368
  %cmp50 = icmp eq i64 %and49, 536870912
  br i1 %cmp50, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.46
  %40 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask52 = getelementptr inbounds %struct.dent, %struct.dent* %40, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [1 x i64], [1 x i64]* %mask52, i32 0, i64 0
  %41 = load i64, i64* %arrayidx53, align 8
  %and54 = and i64 %41, 805306368
  %cmp55 = icmp eq i64 %and54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %lor.lhs.false, %if.then.46
  %arraydecay58 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %arraydecay58)
  %arrayidx59 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  %42 = load i8, i8* %arrayidx59, align 1
  %idxprom60 = zext i8 %42 to i64
  %arrayidx61 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom60
  %43 = load i8, i8* %arrayidx61, align 1
  %arrayidx62 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  store i8 %43, i8* %arrayidx62, align 1
  %44 = load i32*, i32** %nsaved.addr, align 8
  %45 = load i32, i32* %44, align 4
  %idxprom63 = sext i32 %45 to i64
  %46 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx64 = getelementptr inbounds [120 x i8], [120 x i8]* %46, i64 %idxprom63
  %arraydecay65 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx64, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call67 = call i8* @strcpy(i8* %arraydecay65, i8* %arraydecay66) #5
  %47 = load i32*, i32** %nsaved.addr, align 8
  %48 = load i32, i32* %47, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, i32* %47, align 4
  br label %return

if.end.69:                                        ; preds = %lor.lhs.false
  br label %if.end.84

if.else:                                          ; preds = %if.then.44
  %49 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask70 = getelementptr inbounds %struct.dent, %struct.dent* %49, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %mask70, i32 0, i64 0
  %50 = load i64, i64* %arrayidx71, align 8
  %and72 = and i64 %50, 805306368
  %cmp73 = icmp eq i64 %and72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.83

if.then.75:                                       ; preds = %if.else
  %arraydecay76 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %arraydecay76)
  %51 = load i32*, i32** %nsaved.addr, align 8
  %52 = load i32, i32* %51, align 4
  %idxprom77 = sext i32 %52 to i64
  %53 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx78 = getelementptr inbounds [120 x i8], [120 x i8]* %53, i64 %idxprom77
  %arraydecay79 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx78, i32 0, i32 0
  %arraydecay80 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call81 = call i8* @strcpy(i8* %arraydecay79, i8* %arraydecay80) #5
  %54 = load i32*, i32** %nsaved.addr, align 8
  %55 = load i32, i32* %54, align 4
  %inc82 = add nsw i32 %55, 1
  store i32 %inc82, i32* %54, align 4
  br label %return

if.end.83:                                        ; preds = %if.else
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.69
  br label %while.cond

while.cond:                                       ; preds = %if.end.151, %if.then.114, %if.end.84
  %56 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask85 = getelementptr inbounds %struct.dent, %struct.dent* %56, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [1 x i64], [1 x i64]* %mask85, i32 0, i64 0
  %57 = load i64, i64* %arrayidx86, align 8
  %and87 = and i64 %57, 1073741824
  %tobool88 = icmp ne i64 %and87, 0
  br i1 %tobool88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load %struct.dent*, %struct.dent** %dent, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %58, i32 0, i32 0
  %59 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %59, %struct.dent** %dent, align 8
  %60 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask89 = getelementptr inbounds %struct.dent, %struct.dent* %60, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [1 x i64], [1 x i64]* %mask89, i32 0, i64 0
  %61 = load i64, i64* %arrayidx90, align 8
  %and91 = and i64 %61, 805306368
  %cmp92 = icmp eq i64 %and91, 805306368
  br i1 %cmp92, label %if.then.114, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %while.body
  %62 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %cmp95 = icmp eq %struct.flagent* %62, null
  br i1 %cmp95, label %land.lhs.true, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.94
  %63 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask98 = getelementptr inbounds %struct.dent, %struct.dent* %63, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x i64], [1 x i64]* %mask98, i32 0, i64 0
  %64 = load i64, i64* %arrayidx99, align 8
  %65 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %65, i32 0, i32 2
  %66 = load i16, i16* %flagbit, align 2
  %conv100 = sext i16 %66 to i32
  %sh_prom = zext i32 %conv100 to i64
  %shl = shl i64 1, %sh_prom
  %and101 = and i64 %64, %shl
  %tobool102 = icmp ne i64 %and101, 0
  br i1 %tobool102, label %land.lhs.true, label %if.then.114

land.lhs.true:                                    ; preds = %lor.lhs.false.97, %lor.lhs.false.94
  %67 = load %struct.flagent*, %struct.flagent** %sufent.addr, align 8
  %cmp103 = icmp eq %struct.flagent* %67, null
  br i1 %cmp103, label %if.end.115, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true
  %68 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask106 = getelementptr inbounds %struct.dent, %struct.dent* %68, i32 0, i32 2
  %arrayidx107 = getelementptr inbounds [1 x i64], [1 x i64]* %mask106, i32 0, i64 0
  %69 = load i64, i64* %arrayidx107, align 8
  %70 = load %struct.flagent*, %struct.flagent** %sufent.addr, align 8
  %flagbit108 = getelementptr inbounds %struct.flagent, %struct.flagent* %70, i32 0, i32 2
  %71 = load i16, i16* %flagbit108, align 2
  %conv109 = sext i16 %71 to i32
  %sh_prom110 = zext i32 %conv109 to i64
  %shl111 = shl i64 1, %sh_prom110
  %and112 = and i64 %69, %shl111
  %tobool113 = icmp ne i64 %and112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false.97, %while.body
  br label %while.cond

if.end.115:                                       ; preds = %lor.lhs.false.105, %land.lhs.true
  %72 = load i32, i32* %firstisupper, align 4
  %tobool116 = icmp ne i32 %72, 0
  br i1 %tobool116, label %if.then.117, label %if.else.136

if.then.117:                                      ; preds = %if.end.115
  %73 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask118 = getelementptr inbounds %struct.dent, %struct.dent* %73, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [1 x i64], [1 x i64]* %mask118, i32 0, i64 0
  %74 = load i64, i64* %arrayidx119, align 8
  %and120 = and i64 %74, 805306368
  %cmp121 = icmp eq i64 %and120, 536870912
  br i1 %cmp121, label %if.then.123, label %if.end.135

if.then.123:                                      ; preds = %if.then.117
  %arraydecay124 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %arraydecay124)
  %arrayidx125 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  %75 = load i8, i8* %arrayidx125, align 1
  %idxprom126 = zext i8 %75 to i64
  %arrayidx127 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom126
  %76 = load i8, i8* %arrayidx127, align 1
  %arrayidx128 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  store i8 %76, i8* %arrayidx128, align 1
  %77 = load i32*, i32** %nsaved.addr, align 8
  %78 = load i32, i32* %77, align 4
  %idxprom129 = sext i32 %78 to i64
  %79 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx130 = getelementptr inbounds [120 x i8], [120 x i8]* %79, i64 %idxprom129
  %arraydecay131 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx130, i32 0, i32 0
  %arraydecay132 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call133 = call i8* @strcpy(i8* %arraydecay131, i8* %arraydecay132) #5
  %80 = load i32*, i32** %nsaved.addr, align 8
  %81 = load i32, i32* %80, align 4
  %inc134 = add nsw i32 %81, 1
  store i32 %inc134, i32* %80, align 4
  br label %return

if.end.135:                                       ; preds = %if.then.117
  br label %if.end.151

if.else.136:                                      ; preds = %if.end.115
  %82 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask137 = getelementptr inbounds %struct.dent, %struct.dent* %82, i32 0, i32 2
  %arrayidx138 = getelementptr inbounds [1 x i64], [1 x i64]* %mask137, i32 0, i64 0
  %83 = load i64, i64* %arrayidx138, align 8
  %and139 = and i64 %83, 805306368
  %cmp140 = icmp eq i64 %and139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.150

if.then.142:                                      ; preds = %if.else.136
  %arraydecay143 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %arraydecay143)
  %84 = load i32*, i32** %nsaved.addr, align 8
  %85 = load i32, i32* %84, align 4
  %idxprom144 = sext i32 %85 to i64
  %86 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx145 = getelementptr inbounds [120 x i8], [120 x i8]* %86, i64 %idxprom144
  %arraydecay146 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx145, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call148 = call i8* @strcpy(i8* %arraydecay146, i8* %arraydecay147) #5
  %87 = load i32*, i32** %nsaved.addr, align 8
  %88 = load i32, i32* %87, align 4
  %inc149 = add nsw i32 %88, 1
  store i32 %inc149, i32* %87, align 4
  br label %return

if.end.150:                                       ; preds = %if.else.136
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.135
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.152

if.end.152:                                       ; preds = %while.end, %for.end.40
  %89 = load %struct.dent*, %struct.dent** %firstdent.addr, align 8
  store %struct.dent* %89, %struct.dent** %dent, align 8
  %90 = load %struct.dent*, %struct.dent** %dent, align 8
  %word153 = getelementptr inbounds %struct.dent, %struct.dent* %90, i32 0, i32 1
  %91 = load i8*, i8** %word153, align 8
  %call154 = call i8* @strtosichar(i8* %91, i32 1)
  store i8* %call154, i8** %p, align 8
  %92 = load i8*, i8** %p, align 8
  %call155 = call i64 @strlen(i8* %92) #6
  %conv156 = trunc i64 %call155 to i32
  store i32 %conv156, i32* %len, align 4
  %93 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask157 = getelementptr inbounds %struct.dent, %struct.dent* %93, i32 0, i32 2
  %arrayidx158 = getelementptr inbounds [1 x i64], [1 x i64]* %mask157, i32 0, i64 0
  %94 = load i64, i64* %arrayidx158, align 8
  %and159 = and i64 %94, 1073741824
  %tobool160 = icmp ne i64 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.152
  %95 = load %struct.dent*, %struct.dent** %dent, align 8
  %next162 = getelementptr inbounds %struct.dent, %struct.dent* %95, i32 0, i32 0
  %96 = load %struct.dent*, %struct.dent** %next162, align 8
  store %struct.dent* %96, %struct.dent** %dent, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.152
  br label %for.cond.164

for.cond.164:                                     ; preds = %if.end.322, %if.end.163
  %97 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %cmp165 = icmp eq %struct.flagent* %97, null
  br i1 %cmp165, label %land.lhs.true.176, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %for.cond.164
  %98 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask168 = getelementptr inbounds %struct.dent, %struct.dent* %98, i32 0, i32 2
  %arrayidx169 = getelementptr inbounds [1 x i64], [1 x i64]* %mask168, i32 0, i64 0
  %99 = load i64, i64* %arrayidx169, align 8
  %100 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %flagbit170 = getelementptr inbounds %struct.flagent, %struct.flagent* %100, i32 0, i32 2
  %101 = load i16, i16* %flagbit170, align 2
  %conv171 = sext i16 %101 to i32
  %sh_prom172 = zext i32 %conv171 to i64
  %shl173 = shl i64 1, %sh_prom172
  %and174 = and i64 %99, %shl173
  %tobool175 = icmp ne i64 %and174, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.315

land.lhs.true.176:                                ; preds = %lor.lhs.false.167, %for.cond.164
  %102 = load %struct.flagent*, %struct.flagent** %sufent.addr, align 8
  %cmp177 = icmp eq %struct.flagent* %102, null
  br i1 %cmp177, label %if.then.188, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %land.lhs.true.176
  %103 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask180 = getelementptr inbounds %struct.dent, %struct.dent* %103, i32 0, i32 2
  %arrayidx181 = getelementptr inbounds [1 x i64], [1 x i64]* %mask180, i32 0, i64 0
  %104 = load i64, i64* %arrayidx181, align 8
  %105 = load %struct.flagent*, %struct.flagent** %sufent.addr, align 8
  %flagbit182 = getelementptr inbounds %struct.flagent, %struct.flagent* %105, i32 0, i32 2
  %106 = load i16, i16* %flagbit182, align 2
  %conv183 = sext i16 %106 to i32
  %sh_prom184 = zext i32 %conv183 to i64
  %shl185 = shl i64 1, %sh_prom184
  %and186 = and i64 %104, %shl185
  %tobool187 = icmp ne i64 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.315

if.then.188:                                      ; preds = %lor.lhs.false.179, %land.lhs.true.176
  %107 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask189 = getelementptr inbounds %struct.dent, %struct.dent* %107, i32 0, i32 2
  %arrayidx190 = getelementptr inbounds [1 x i64], [1 x i64]* %mask189, i32 0, i64 0
  %108 = load i64, i64* %arrayidx190, align 8
  %and191 = and i64 %108, 805306368
  %cmp192 = icmp ne i64 %and191, 805306368
  br i1 %cmp192, label %if.then.194, label %if.else.219

if.then.194:                                      ; preds = %if.then.188
  %arraydecay195 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %arraydecay195)
  %109 = load i32, i32* %firstisupper, align 4
  %tobool196 = icmp ne i32 %109, 0
  br i1 %tobool196, label %if.then.203, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %if.then.194
  %110 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask198 = getelementptr inbounds %struct.dent, %struct.dent* %110, i32 0, i32 2
  %arrayidx199 = getelementptr inbounds [1 x i64], [1 x i64]* %mask198, i32 0, i64 0
  %111 = load i64, i64* %arrayidx199, align 8
  %and200 = and i64 %111, 805306368
  %cmp201 = icmp eq i64 %and200, 536870912
  br i1 %cmp201, label %if.then.203, label %if.end.208

if.then.203:                                      ; preds = %lor.lhs.false.197, %if.then.194
  %arrayidx204 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  %112 = load i8, i8* %arrayidx204, align 1
  %idxprom205 = zext i8 %112 to i64
  %arrayidx206 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom205
  %113 = load i8, i8* %arrayidx206, align 1
  %arrayidx207 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 0
  store i8 %113, i8* %arrayidx207, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.203, %lor.lhs.false.197
  %114 = load i32*, i32** %nsaved.addr, align 8
  %115 = load i32, i32* %114, align 4
  %idxprom209 = sext i32 %115 to i64
  %116 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx210 = getelementptr inbounds [120 x i8], [120 x i8]* %116, i64 %idxprom209
  %arraydecay211 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx210, i32 0, i32 0
  %arraydecay212 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call213 = call i8* @strcpy(i8* %arraydecay211, i8* %arraydecay212) #5
  %117 = load i32*, i32** %nsaved.addr, align 8
  %118 = load i32, i32* %117, align 4
  %inc214 = add nsw i32 %118, 1
  store i32 %inc214, i32* %117, align 4
  %119 = load i32*, i32** %nsaved.addr, align 8
  %120 = load i32, i32* %119, align 4
  %cmp215 = icmp sge i32 %120, 10
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.208
  br label %return

if.end.218:                                       ; preds = %if.end.208
  br label %if.end.314

if.else.219:                                      ; preds = %if.then.188
  %121 = load %struct.dent*, %struct.dent** %dent, align 8
  %word220 = getelementptr inbounds %struct.dent, %struct.dent* %121, i32 0, i32 1
  %122 = load i8*, i8** %word220, align 8
  %call221 = call i8* @strtosichar(i8* %122, i32 1)
  store i8* %call221, i8** %p, align 8
  %123 = load i8*, i8** %p, align 8
  %124 = load i32, i32* %prestrip.addr, align 4
  %idx.ext = sext i32 %124 to i64
  %add.ptr222 = getelementptr inbounds i8, i8* %123, i64 %idx.ext
  %arraydecay223 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %125 = load i32, i32* %preadd.addr, align 4
  %idx.ext224 = sext i32 %125 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %arraydecay223, i64 %idx.ext224
  %126 = load i32, i32* %len, align 4
  %127 = load i32, i32* %prestrip.addr, align 4
  %sub = sub nsw i32 %126, %127
  %128 = load i32, i32* %sufstrip.addr, align 4
  %sub226 = sub nsw i32 %sub, %128
  %conv227 = sext i32 %sub226 to i64
  %mul = mul i64 %conv227, 1
  call void @bcopy(i8* %add.ptr222, i8* %add.ptr225, i64 %mul) #5
  %129 = load i32, i32* %prestrip.addr, align 4
  %idxprom228 = sext i32 %129 to i64
  %130 = load i8*, i8** %p, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %130, i64 %idxprom228
  %131 = load i8, i8* %arrayidx229, align 1
  %idxprom230 = zext i8 %131 to i64
  %arrayidx231 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom230
  %132 = load i8, i8* %arrayidx231, align 1
  %tobool232 = icmp ne i8 %132, 0
  br i1 %tobool232, label %if.then.233, label %if.else.247

if.then.233:                                      ; preds = %if.else.219
  store i32 0, i32* %i, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.244, %if.then.233
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %preadd.addr, align 4
  %cmp235 = icmp slt i32 %133, %134
  br i1 %cmp235, label %for.body.237, label %for.end.246

for.body.237:                                     ; preds = %for.cond.234
  %135 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %135 to i64
  %arrayidx239 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 %idxprom238
  %136 = load i8, i8* %arrayidx239, align 1
  %idxprom240 = zext i8 %136 to i64
  %arrayidx241 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom240
  %137 = load i8, i8* %arrayidx241, align 1
  %138 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %138 to i64
  %arrayidx243 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 %idxprom242
  store i8 %137, i8* %arrayidx243, align 1
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.237
  %139 = load i32, i32* %i, align 4
  %inc245 = add nsw i32 %139, 1
  store i32 %inc245, i32* %i, align 4
  br label %for.cond.234

for.end.246:                                      ; preds = %for.cond.234
  br label %if.end.261

if.else.247:                                      ; preds = %if.else.219
  store i32 0, i32* %i, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.258, %if.else.247
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %preadd.addr, align 4
  %cmp249 = icmp slt i32 %140, %141
  br i1 %cmp249, label %for.body.251, label %for.end.260

for.body.251:                                     ; preds = %for.cond.248
  %142 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %142 to i64
  %arrayidx253 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 %idxprom252
  %143 = load i8, i8* %arrayidx253, align 1
  %idxprom254 = zext i8 %143 to i64
  %arrayidx255 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom254
  %144 = load i8, i8* %arrayidx255, align 1
  %145 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %145 to i64
  %arrayidx257 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i64 %idxprom256
  store i8 %144, i8* %arrayidx257, align 1
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.body.251
  %146 = load i32, i32* %i, align 4
  %inc259 = add nsw i32 %146, 1
  store i32 %inc259, i32* %i, align 4
  br label %for.cond.248

for.end.260:                                      ; preds = %for.cond.248
  br label %if.end.261

if.end.261:                                       ; preds = %for.end.260, %for.end.246
  %147 = load i32, i32* %len, align 4
  %148 = load i32, i32* %preadd.addr, align 4
  %add = add nsw i32 %147, %148
  %149 = load i32, i32* %sufadd.addr, align 4
  %add262 = add nsw i32 %add, %149
  %150 = load i32, i32* %prestrip.addr, align 4
  %sub263 = sub nsw i32 %add262, %150
  %151 = load i32, i32* %sufstrip.addr, align 4
  %sub264 = sub nsw i32 %sub263, %151
  store i32 %sub264, i32* %limit, align 4
  %152 = load i32, i32* %len, align 4
  %153 = load i32, i32* %preadd.addr, align 4
  %add265 = add nsw i32 %152, %153
  %154 = load i32, i32* %prestrip.addr, align 4
  %sub266 = sub nsw i32 %add265, %154
  %155 = load i32, i32* %sufstrip.addr, align 4
  %sub267 = sub nsw i32 %sub266, %155
  store i32 %sub267, i32* %i, align 4
  %156 = load i32, i32* %len, align 4
  %157 = load i32, i32* %sufstrip.addr, align 4
  %sub268 = sub nsw i32 %156, %157
  %sub269 = sub nsw i32 %sub268, 1
  %158 = load i8*, i8** %p, align 8
  %idx.ext270 = sext i32 %sub269 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %158, i64 %idx.ext270
  store i8* %add.ptr271, i8** %p, align 8
  %159 = load i8*, i8** %p, align 8
  %160 = load i8, i8* %159, align 1
  %idxprom272 = zext i8 %160 to i64
  %arrayidx273 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom272
  %161 = load i8, i8* %arrayidx273, align 1
  %tobool274 = icmp ne i8 %161, 0
  br i1 %tobool274, label %if.then.275, label %if.else.289

if.then.275:                                      ; preds = %if.end.261
  %arraydecay276 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %162 = load i32, i32* %i, align 4
  %idx.ext277 = sext i32 %162 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %arraydecay276, i64 %idx.ext277
  store i8* %add.ptr278, i8** %p, align 8
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.285, %if.then.275
  %163 = load i32, i32* %i, align 4
  %164 = load i32, i32* %limit, align 4
  %cmp280 = icmp slt i32 %163, %164
  br i1 %cmp280, label %for.body.282, label %for.end.288

for.body.282:                                     ; preds = %for.cond.279
  %165 = load i8*, i8** %p, align 8
  %166 = load i8, i8* %165, align 1
  %idxprom283 = zext i8 %166 to i64
  %arrayidx284 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom283
  %167 = load i8, i8* %arrayidx284, align 1
  %168 = load i8*, i8** %p, align 8
  store i8 %167, i8* %168, align 1
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.body.282
  %169 = load i32, i32* %i, align 4
  %inc286 = add nsw i32 %169, 1
  store i32 %inc286, i32* %i, align 4
  %170 = load i8*, i8** %p, align 8
  %incdec.ptr287 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr287, i8** %p, align 8
  br label %for.cond.279

for.end.288:                                      ; preds = %for.cond.279
  br label %if.end.303

if.else.289:                                      ; preds = %if.end.261
  %arraydecay290 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %171 = load i32, i32* %i, align 4
  %idx.ext291 = sext i32 %171 to i64
  %add.ptr292 = getelementptr inbounds i8, i8* %arraydecay290, i64 %idx.ext291
  store i8* %add.ptr292, i8** %p, align 8
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.299, %if.else.289
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %limit, align 4
  %cmp294 = icmp slt i32 %172, %173
  br i1 %cmp294, label %for.body.296, label %for.end.302

for.body.296:                                     ; preds = %for.cond.293
  %174 = load i8*, i8** %p, align 8
  %175 = load i8, i8* %174, align 1
  %idxprom297 = zext i8 %175 to i64
  %arrayidx298 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom297
  %176 = load i8, i8* %arrayidx298, align 1
  %177 = load i8*, i8** %p, align 8
  store i8 %176, i8* %177, align 1
  br label %for.inc.299

for.inc.299:                                      ; preds = %for.body.296
  %178 = load i32, i32* %i, align 4
  %inc300 = add nsw i32 %178, 1
  store i32 %inc300, i32* %i, align 4
  %179 = load i8*, i8** %p, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr301, i8** %p, align 8
  br label %for.cond.293

for.end.302:                                      ; preds = %for.cond.293
  br label %if.end.303

if.end.303:                                       ; preds = %for.end.302, %for.end.288
  %180 = load i32*, i32** %nsaved.addr, align 8
  %181 = load i32, i32* %180, align 4
  %idxprom304 = sext i32 %181 to i64
  %182 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  %arrayidx305 = getelementptr inbounds [120 x i8], [120 x i8]* %182, i64 %idxprom304
  %arraydecay306 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx305, i32 0, i32 0
  %arraydecay307 = getelementptr inbounds [184 x i8], [184 x i8]* %newword, i32 0, i32 0
  %call308 = call i8* @strcpy(i8* %arraydecay306, i8* %arraydecay307) #5
  %183 = load i32*, i32** %nsaved.addr, align 8
  %184 = load i32, i32* %183, align 4
  %inc309 = add nsw i32 %184, 1
  store i32 %inc309, i32* %183, align 4
  %185 = load i32*, i32** %nsaved.addr, align 8
  %186 = load i32, i32* %185, align 4
  %cmp310 = icmp sge i32 %186, 10
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.end.303
  br label %return

if.end.313:                                       ; preds = %if.end.303
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.end.218
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %lor.lhs.false.179, %lor.lhs.false.167
  %187 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask316 = getelementptr inbounds %struct.dent, %struct.dent* %187, i32 0, i32 2
  %arrayidx317 = getelementptr inbounds [1 x i64], [1 x i64]* %mask316, i32 0, i64 0
  %188 = load i64, i64* %arrayidx317, align 8
  %and318 = and i64 %188, 1073741824
  %cmp319 = icmp eq i64 %and318, 0
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.end.315
  br label %for.end.324

if.end.322:                                       ; preds = %if.end.315
  %189 = load %struct.dent*, %struct.dent** %dent, align 8
  %next323 = getelementptr inbounds %struct.dent, %struct.dent* %189, i32 0, i32 0
  %190 = load %struct.dent*, %struct.dent** %next323, align 8
  store %struct.dent* %190, %struct.dent** %dent, align 8
  br label %for.cond.164

for.end.324:                                      ; preds = %if.then.321
  br label %return

return:                                           ; preds = %for.end.324, %if.then.312, %if.then.217, %if.then.142, %if.then.123, %if.then.75, %if.then.57, %if.then.21, %if.then.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @insert(i8* %word) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %realword = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i8* @ichartosstr(i8* %0, i32 0)
  store i8* %call, i8** %realword, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @pcount, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %realword, align 8
  %call1 = call i32 @strcmp(i8* %arraydecay, i8* %4) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @pcount, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, i32* @pcount, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom4
  %arraydecay6 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx5, i32 0, i32 0
  %7 = load i8*, i8** %realword, align 8
  %call7 = call i8* @strcpy(i8* %arraydecay6, i8* %7) #5
  %8 = load i8*, i8** %realword, align 8
  %call8 = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @maxposslen, align 4
  %cmp9 = icmp sgt i32 %9, %10
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* @maxposslen, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  %12 = load i32, i32* @pcount, align 4
  %cmp13 = icmp sge i32 %12, 100
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.15, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @askmode() #0 {
entry:
  %bufsize = alloca i32, align 4
  %ch = alloca i32, align 4
  %cp1 = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  %itok = alloca i8*, align 8
  %hadnl = alloca i32, align 4
  %0 = load i32, i32* @fflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @askfilename, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @freopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %2)
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @askfilename, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* %4)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load i8*, i8** getelementptr inbounds ([40 x i8*], [40 x i8*]* @Version_ID, i32 0, i64 0), align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %5)
  store i32 0, i32* @contextoffset, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.3, %if.end.163
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %6)
  %7 = load i32, i32* @contextoffset, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call8 = call i8* @xgets(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %8)
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  br label %while.end.164

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.16

if.else:                                          ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call12 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %9)
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  br label %while.end.164

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.11
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) #6
  %conv = trunc i64 %call17 to i32
  store i32 %conv, i32* %bufsize, align 4
  %10 = load i32, i32* %bufsize, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.end.16
  store i32 1, i32* %hadnl, align 4
  %12 = load i32, i32* %bufsize, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %bufsize, align 4
  %idxprom22 = sext i32 %dec to i64
  %arrayidx23 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom22
  store i8 0, i8* %arrayidx23, align 1
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.16
  store i32 0, i32* %hadnl, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.21
  %13 = load i32, i32* %bufsize, align 4
  %conv26 = sext i32 %13 to i64
  %cmp27 = icmp eq i64 %conv26, 4095
  br i1 %cmp27, label %if.then.29, label %if.end.64

if.then.29:                                       ; preds = %if.end.25
  %14 = load i32, i32* %bufsize, align 4
  %sub30 = sub nsw i32 %14, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom31
  %15 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %15 to i32
  store i32 %conv33, i32* %ch, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.58, %if.then.29
  %16 = load i32, i32* %bufsize, align 4
  %conv35 = sext i32 %16 to i64
  %cmp36 = icmp ult i64 %conv35, 8191
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.34
  %17 = load i32, i32* %ch, align 4
  %conv38 = trunc i32 %17 to i8
  %idxprom39 = zext i8 %conv38 to i64
  %arrayidx40 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom39
  %18 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %18 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %19 = load i32, i32* %ch, align 4
  %conv43 = trunc i32 %19 to i8
  %idxprom44 = zext i8 %conv43 to i64
  %arrayidx45 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom44
  %20 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %20 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %ch, align 4
  %conv48 = trunc i32 %21 to i8
  %idxprom49 = zext i8 %conv48 to i64
  %arrayidx50 = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom49
  %22 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %22 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %23 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %tobool52, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.34
  %24 = phi i1 [ false, %while.cond.34 ], [ %23, %lor.end ]
  br i1 %24, label %while.body.53, label %while.end

while.body.53:                                    ; preds = %land.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call54 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call54, i32* %ch, align 4
  %26 = load i32, i32* %ch, align 4
  %cmp55 = icmp eq i32 %26, -1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %while.body.53
  br label %while.end

if.end.58:                                        ; preds = %while.body.53
  %27 = load i32, i32* %ch, align 4
  %conv59 = trunc i32 %27 to i8
  %28 = load i32, i32* %bufsize, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %bufsize, align 4
  %idxprom60 = sext i32 %28 to i64
  %arrayidx61 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom60
  store i8 %conv59, i8* %arrayidx61, align 1
  %29 = load i32, i32* %bufsize, align 4
  %idxprom62 = sext i32 %29 to i64
  %arrayidx63 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  br label %while.cond.34

while.end:                                        ; preds = %if.then.57, %land.end
  br label %if.end.64

if.end.64:                                        ; preds = %while.end, %if.end.25
  %30 = load i32, i32* @contextoffset, align 4
  %cmp65 = icmp ne i32 %30, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.64
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @checkline(%struct._IO_FILE* %31)
  br label %if.end.152

if.else.68:                                       ; preds = %if.end.64
  %32 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv69 = sext i8 %32 to i32
  %cmp70 = icmp eq i32 %conv69, 42
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.else.68
  %33 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv73 = sext i8 %33 to i32
  %cmp74 = icmp eq i32 %conv73, 64
  br i1 %cmp74, label %if.then.76, label %if.else.82

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.else.68
  %call77 = call i8* @strtosichar(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 0)
  %call78 = call i8* @ichartosstr(i8* %call77, i32 1)
  %34 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv79 = sext i8 %34 to i32
  %cmp80 = icmp eq i32 %conv79, 42
  %conv81 = zext i1 %cmp80 to i32
  call void @treeinsert(i8* %call78, i32 184, i32 %conv81)
  br label %if.end.151

if.else.82:                                       ; preds = %lor.lhs.false.72
  %35 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv83 = sext i8 %35 to i32
  %cmp84 = icmp eq i32 %conv83, 38
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.else.82
  %call87 = call i8* @strtosichar(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 0)
  store i8* %call87, i8** %itok, align 8
  %36 = load i8*, i8** %itok, align 8
  call void @lowcase(i8* %36)
  %37 = load i8*, i8** %itok, align 8
  %call88 = call i8* @ichartosstr(i8* %37, i32 1)
  call void @treeinsert(i8* %call88, i32 184, i32 1)
  br label %if.end.150

if.else.89:                                       ; preds = %if.else.82
  %38 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv90 = sext i8 %38 to i32
  %cmp91 = icmp eq i32 %conv90, 35
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.89
  call void @treeoutput()
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %if.end.149

if.else.94:                                       ; preds = %if.else.89
  %39 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv95 = sext i8 %39 to i32
  %cmp96 = icmp eq i32 %conv95, 33
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.else.94
  store i32 1, i32* @terse, align 4
  br label %if.end.148

if.else.99:                                       ; preds = %if.else.94
  %40 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv100 = sext i8 %40 to i32
  %cmp101 = icmp eq i32 %conv100, 37
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.99
  store i32 0, i32* @terse, align 4
  br label %if.end.147

if.else.104:                                      ; preds = %if.else.99
  %41 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv105 = sext i8 %41 to i32
  %cmp106 = icmp eq i32 %conv105, 45
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.else.104
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @tflag, align 4
  br label %if.end.146

if.else.109:                                      ; preds = %if.else.104
  %42 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv110 = sext i8 %42 to i32
  %cmp111 = icmp eq i32 %conv110, 43
  br i1 %cmp111, label %if.then.113, label %if.else.122

if.then.113:                                      ; preds = %if.else.109
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  %call114 = call i32 @strcmp(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #6
  %cmp115 = icmp ne i32 %call114, 0
  br i1 %cmp115, label %land.rhs.117, label %land.end.121

land.rhs.117:                                     ; preds = %if.then.113
  %call118 = call i32 @strcmp(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #6
  %cmp119 = icmp ne i32 %call118, 0
  br label %land.end.121

land.end.121:                                     ; preds = %land.rhs.117, %if.then.113
  %43 = phi i1 [ false, %if.then.113 ], [ %cmp119, %land.rhs.117 ]
  %land.ext = zext i1 %43 to i32
  store i32 %land.ext, i32* @tflag, align 4
  br label %if.end.145

if.else.122:                                      ; preds = %if.else.109
  %44 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv123 = sext i8 %44 to i32
  %cmp124 = icmp eq i32 %conv123, 126
  br i1 %cmp124, label %if.then.126, label %if.else.132

if.then.126:                                      ; preds = %if.else.122
  %call127 = call i32 @findfiletype(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 1, i32* null)
  store i32 %call127, i32* @defdupchar, align 4
  %45 = load i32, i32* @defdupchar, align 4
  %cmp128 = icmp slt i32 %45, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.126
  store i32 0, i32* @defdupchar, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.then.126
  br label %if.end.144

if.else.132:                                      ; preds = %if.else.122
  %46 = load i8, i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %conv133 = sext i8 %46 to i32
  %cmp134 = icmp eq i32 %conv133, 94
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %if.else.132
  store i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %cp1, align 8
  store i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8** %cp2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.136
  %47 = load i8*, i8** %cp2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %cp2, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %cp1, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr137, i8** %cp1, align 8
  store i8 %48, i8* %49, align 1
  %conv138 = sext i8 %48 to i32
  %cmp139 = icmp ne i32 %conv138, 0
  br i1 %cmp139, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* @contextoffset, align 4
  %inc141 = add nsw i32 %50, 1
  store i32 %inc141, i32* @contextoffset, align 4
  %51 = load i32, i32* %bufsize, align 4
  %dec142 = add nsw i32 %51, -1
  store i32 %dec142, i32* %bufsize, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %for.end, %if.else.132
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @checkline(%struct._IO_FILE* %52)
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.131
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.end.121
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.108
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.103
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.98
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.93
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.86
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.76
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.67
  %53 = load i32, i32* %hadnl, align 4
  %tobool153 = icmp ne i32 %53, 0
  br i1 %tobool153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.end.152
  store i32 0, i32* @contextoffset, align 4
  br label %if.end.156

if.else.155:                                      ; preds = %if.end.152
  %54 = load i32, i32* %bufsize, align 4
  %55 = load i32, i32* @contextoffset, align 4
  %add = add nsw i32 %55, %54
  store i32 %add, i32* @contextoffset, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.155, %if.then.154
  %56 = load i32, i32* @sflag, align 4
  %tobool157 = icmp ne i32 %56, 0
  br i1 %tobool157, label %if.then.158, label %if.end.163

if.then.158:                                      ; preds = %if.end.156
  call void @stop()
  %57 = load i32, i32* @fflag, align 4
  %tobool159 = icmp ne i32 %57, 0
  br i1 %tobool159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.then.158
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @rewind(%struct._IO_FILE* %58)
  %59 = load i8*, i8** @askfilename, align 8
  %call161 = call i32 @creat(i8* %59, i32 438)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.then.158
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.156
  br label %while.body

while.end.164:                                    ; preds = %if.then.14, %if.then.10
  ret void
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i8* @xgets(i8*, i32, %struct._IO_FILE*) #1

declare void @treeoutput() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @findfiletype(i8*, i32, i32*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @creat(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @copyout(i8** %cc, i32 %cnt) #0 {
entry:
  %cc.addr = alloca i8**, align 8
  %cnt.addr = alloca i32, align 4
  store i8** %cc, i8*** %cc.addr, align 8
  store i32 %cnt, i32* %cnt.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %0 = load i32, i32* %cnt.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %cnt.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %cc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* @aflag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @lflag, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i8**, i8*** %cc.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 @_IO_putc(i32 %conv5, %struct._IO_FILE* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %10 = load i8**, i8*** %cc.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %10, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @show_char(i8** %cp, i32 %linew, i32 %output, i32 %maxw) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8**, align 8
  %linew.addr = alloca i32, align 4
  %output.addr = alloca i32, align 4
  %maxw.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %ichar = alloca i8, align 1
  %width = alloca i32, align 4
  store i8** %cp, i8*** %cp.addr, align 8
  store i32 %linew, i32* %linew.addr, align 4
  store i32 %output, i32* %output.addr, align 4
  store i32 %maxw, i32* %maxw.addr, align 4
  %0 = load i8**, i8*** %cp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %ch, align 4
  store i32 1, i32* %len, align 4
  %3 = load i8**, i8*** %cp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load i8**, i8*** %cp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call = call i32 @stringcharlen(i8* %8, i32 0)
  store i32 %call, i32* %len, align 4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  store i32 1, i32* %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ 0, %cond.false ]
  %tobool3 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %9 = phi i1 [ false, %entry ], [ %tobool3, %cond.end ]
  br i1 %9, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %10 = load i32, i32* @laststringch, align 4
  %add = add i32 128, %10
  %conv4 = trunc i32 %add to i8
  store i8 %conv4, i8* %ichar, align 1
  br label %if.end

if.else:                                          ; preds = %land.end
  %11 = load i32, i32* %ch, align 4
  %conv5 = trunc i32 %11 to i8
  store i8 %conv5, i8* %ichar, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* @vflag, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8, i8* %ichar, align 1
  %idxprom7 = zext i8 %13 to i64
  %arrayidx8 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom7
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %len, align 4
  %cmp12 = icmp eq i32 %15, 1
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true.11
  %16 = load i32, i32* %output.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %17 = load i32, i32* %ch, align 4
  %call17 = call i32 @putchar(i32 %17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.14
  %18 = load i8**, i8*** %cp.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %18, align 8
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  %20 = load i32, i32* %ch, align 4
  %cmp20 = icmp eq i32 %20, 9
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.19
  %21 = load i32, i32* %output.addr, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.22
  %call25 = call i32 @putchar(i32 9)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.22
  %22 = load i8**, i8*** %cp.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %22, align 8
  %24 = load i32, i32* %linew.addr, align 4
  %and = and i32 %24, 7
  %sub = sub nsw i32 8, %and
  store i32 %sub, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.19
  store i32 0, i32* %width, align 4
  %25 = load i32, i32* %maxw.addr, align 4
  %cmp29 = icmp ne i32 %25, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %if.end.28
  %26 = load i32, i32* %len, align 4
  %27 = load i32, i32* %maxw.addr, align 4
  %cmp32 = icmp sgt i32 %26, %27
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.31
  %28 = load i32, i32* %maxw.addr, align 4
  store i32 %28, i32* %len, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.31, %if.end.28
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %len, align 4
  %cmp36 = icmp slt i32 %29, %30
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8**, i8*** %cp.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr38, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %conv39 = zext i8 %33 to i32
  store i32 %conv39, i32* %ch, align 4
  %34 = load i32, i32* %ch, align 4
  %cmp40 = icmp sgt i32 %34, 127
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %for.body
  %35 = load i32, i32* %output.addr, align 4
  %tobool43 = icmp ne i32 %35, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.then.42
  %call45 = call i32 @putchar(i32 77)
  %call46 = call i32 @putchar(i32 45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.then.42
  %36 = load i32, i32* %width, align 4
  %add48 = add nsw i32 %36, 2
  store i32 %add48, i32* %width, align 4
  %37 = load i32, i32* %ch, align 4
  %and49 = and i32 %37, 127
  store i32 %and49, i32* %ch, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %for.body
  %38 = load i32, i32* %ch, align 4
  %cmp51 = icmp slt i32 %38, 32
  br i1 %cmp51, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %39 = load i32, i32* %ch, align 4
  %cmp53 = icmp eq i32 %39, 127
  br i1 %cmp53, label %if.then.55, label %if.else.70

if.then.55:                                       ; preds = %lor.lhs.false, %if.end.50
  %40 = load i32, i32* %output.addr, align 4
  %tobool56 = icmp ne i32 %40, 0
  br i1 %tobool56, label %if.then.57, label %if.end.68

if.then.57:                                       ; preds = %if.then.55
  %call58 = call i32 @putchar(i32 94)
  %41 = load i32, i32* %ch, align 4
  %cmp59 = icmp eq i32 %41, 127
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.then.57
  %call62 = call i32 @putchar(i32 63)
  br label %if.end.67

if.else.63:                                       ; preds = %if.then.57
  %42 = load i32, i32* %ch, align 4
  %add64 = add nsw i32 %42, 65
  %sub65 = sub nsw i32 %add64, 1
  %call66 = call i32 @putchar(i32 %sub65)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63, %if.then.61
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.55
  %43 = load i32, i32* %width, align 4
  %add69 = add nsw i32 %43, 2
  store i32 %add69, i32* %width, align 4
  br label %if.end.76

if.else.70:                                       ; preds = %lor.lhs.false
  %44 = load i32, i32* %output.addr, align 4
  %tobool71 = icmp ne i32 %44, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else.70
  %45 = load i32, i32* %ch, align 4
  %call73 = call i32 @putchar(i32 %45)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else.70
  %46 = load i32, i32* %width, align 4
  %add75 = add nsw i32 %46, 1
  store i32 %add75, i32* %width, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.74, %if.end.68
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %width, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.26, %if.end.18
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare void @inverse() #1

declare void @normal() #1

declare i32 @stringcharlen(i8*, i32) #1

declare i8* @skipoverword(i8*) #1

declare void @upcase(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ins_cap(i8* %word, i8* %pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %nsaved = alloca i32, align 4
  %savearea = alloca [10 x [120 x i8]], align 16
  store i8* %word, i8** %word.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %arraydecay = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %savearea, i32 0, i32 0
  %call = call i32 @save_cap(i8* %0, i8* %1, [120 x i8]* %arraydecay)
  store i32 %call, i32* %nsaved, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nsaved, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x [120 x i8]], [10 x [120 x i8]]* %savearea, i32 0, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx, i32 0, i32 0
  %call2 = call i32 @insert(i8* %arraydecay1)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_cap(i8* %word, i8* %pattern, [120 x i8]* %savearea) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %savearea.addr = alloca [120 x i8]*, align 8
  %hitno = alloca i32, align 4
  %nsaved = alloca i32, align 4
  %preadd = alloca i32, align 4
  %prestrip = alloca i32, align 4
  %sufadd = alloca i32, align 4
  %sufstrip = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store [120 x i8]* %savearea, [120 x i8]** %savearea.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @numhits, align 4
  store i32 %2, i32* %hitno, align 4
  store i32 0, i32* %nsaved, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.31, %if.end
  %3 = load i32, i32* %hitno, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %hitno, align 4
  %cmp2 = icmp sge i32 %dec, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %nsaved, align 4
  %cmp4 = icmp slt i32 %4, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %hitno, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom
  %prefix = getelementptr inbounds %struct.success, %struct.success* %arrayidx, i32 0, i32 1
  %7 = load %struct.flagent*, %struct.flagent** %prefix, align 8
  %tobool = icmp ne %struct.flagent* %7, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %8 = load i32, i32* %hitno, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom7
  %prefix9 = getelementptr inbounds %struct.success, %struct.success* %arrayidx8, i32 0, i32 1
  %9 = load %struct.flagent*, %struct.flagent** %prefix9, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %9, i32 0, i32 3
  %10 = load i16, i16* %stripl, align 2
  %conv10 = sext i16 %10 to i32
  store i32 %conv10, i32* %prestrip, align 4
  %11 = load i32, i32* %hitno, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom11
  %prefix13 = getelementptr inbounds %struct.success, %struct.success* %arrayidx12, i32 0, i32 1
  %12 = load %struct.flagent*, %struct.flagent** %prefix13, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %12, i32 0, i32 4
  %13 = load i16, i16* %affl, align 2
  %conv14 = sext i16 %13 to i32
  store i32 %conv14, i32* %preadd, align 4
  br label %if.end.15

if.else:                                          ; preds = %for.body
  store i32 0, i32* %preadd, align 4
  store i32 0, i32* %prestrip, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.6
  %14 = load i32, i32* %hitno, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom16
  %suffix = getelementptr inbounds %struct.success, %struct.success* %arrayidx17, i32 0, i32 2
  %15 = load %struct.flagent*, %struct.flagent** %suffix, align 8
  %tobool18 = icmp ne %struct.flagent* %15, null
  br i1 %tobool18, label %if.then.19, label %if.else.30

if.then.19:                                       ; preds = %if.end.15
  %16 = load i32, i32* %hitno, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom20
  %suffix22 = getelementptr inbounds %struct.success, %struct.success* %arrayidx21, i32 0, i32 2
  %17 = load %struct.flagent*, %struct.flagent** %suffix22, align 8
  %stripl23 = getelementptr inbounds %struct.flagent, %struct.flagent* %17, i32 0, i32 3
  %18 = load i16, i16* %stripl23, align 2
  %conv24 = sext i16 %18 to i32
  store i32 %conv24, i32* %sufstrip, align 4
  %19 = load i32, i32* %hitno, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom25
  %suffix27 = getelementptr inbounds %struct.success, %struct.success* %arrayidx26, i32 0, i32 2
  %20 = load %struct.flagent*, %struct.flagent** %suffix27, align 8
  %affl28 = getelementptr inbounds %struct.flagent, %struct.flagent* %20, i32 0, i32 4
  %21 = load i16, i16* %affl28, align 2
  %conv29 = sext i16 %21 to i32
  store i32 %conv29, i32* %sufadd, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.15
  store i32 0, i32* %sufstrip, align 4
  store i32 0, i32* %sufadd, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.19
  %22 = load i8*, i8** %word.addr, align 8
  %23 = load i8*, i8** %pattern.addr, align 8
  %24 = load i32, i32* %prestrip, align 4
  %25 = load i32, i32* %preadd, align 4
  %26 = load i32, i32* %sufstrip, align 4
  %27 = load i32, i32* %sufadd, align 4
  %28 = load i32, i32* %hitno, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom32
  %dictent = getelementptr inbounds %struct.success, %struct.success* %arrayidx33, i32 0, i32 0
  %29 = load %struct.dent*, %struct.dent** %dictent, align 8
  %30 = load i32, i32* %hitno, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom34
  %prefix36 = getelementptr inbounds %struct.success, %struct.success* %arrayidx35, i32 0, i32 1
  %31 = load %struct.flagent*, %struct.flagent** %prefix36, align 8
  %32 = load i32, i32* %hitno, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom37
  %suffix39 = getelementptr inbounds %struct.success, %struct.success* %arrayidx38, i32 0, i32 2
  %33 = load %struct.flagent*, %struct.flagent** %suffix39, align 8
  %34 = load [120 x i8]*, [120 x i8]** %savearea.addr, align 8
  call void @save_root_cap(i8* %22, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27, %struct.dent* %29, %struct.flagent* %31, %struct.flagent* %33, [120 x i8]* %34, i32* %nsaved)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %35 = load i32, i32* %nsaved, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

declare void @backup() #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
