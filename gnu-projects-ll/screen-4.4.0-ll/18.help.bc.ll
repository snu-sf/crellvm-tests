; ModuleID = './help.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.comm = type { i8*, i32, [1 x i8*] }
%struct.term = type { i8*, i32 }
%struct.kmap_ext = type { i8*, i32, %struct.action, %struct.action, %struct.action }
%struct.helpdata = type { i8*, %struct.action*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [188 x i32] }
%struct.copydata = type { i8*, i8*, i8*, i8* }
%struct.bindkeydata = type { i8*, %struct.action*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Use: %s [-opts] [cmd [args]]\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" or: %s -r [host.tty]\0A\0AOptions:\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"-a            Force all capabilities into each window's termcap.\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"-A -[r|R]     Adapt all windows to the new display width & height.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"-c file       Read configuration file instead of '.screenrc'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"-d (-r)       Detach the elsewhere running screen (and reattach here).\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"-dmS name     Start as daemon: Screen session in detached mode.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"-D (-r)       Detach and logout remote (and reattach here).\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"-D -RR        Do whatever is needed to get a screen session.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"-e xy         Change command characters.\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"-f            Flow control on, -fn = off, -fa = auto.\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"-h lines      Set the size of the scrollback history buffer.\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"-i            Interrupt output sooner when flow control is on.\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"-l            Login mode on (update %s), -ln = off.\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"-ls [match]   or\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"-list         Do nothing, just list our SockDir [on possible matches].\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"-L            Turn on output logging.\0A\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"-m            ignore $STY variable, do create a new screen session.\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"-O            Choose optimal output rather than exact vt100 emulation.\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"-p window     Preselect the named window if it exists.\0A\00", align 1
@.str.21 = private unnamed_addr constant [79 x i8] c"-q            Quiet startup. Exits with non-zero return code if unsuccessful.\0A\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"-Q            Commands will send the response to the stdout of the querying process.\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"-r [session]  Reattach to a detached screen process.\0A\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"-R            Reattach if possible, otherwise start a new session.\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"-s shell      Shell to execute rather than $SHELL.\0A\00", align 1
@.str.26 = private unnamed_addr constant [79 x i8] c"-S sockname   Name this session <pid>.sockname instead of <pid>.<tty>.<host>.\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"-t title      Set title. (window's name).\0A\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"-T term       Use term as $TERM for windows, rather than \22screen\22.\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"-U            Tell screen to use UTF-8 encoding.\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"-v            Print \22Screen version %s\22.\0A\00", align 1
@version = common global [60 x i8] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [72 x i8] c"-wipe [match] Do nothing, just clean up SockDir [on possible matches].\0A\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"-x            Attach to a not detached screen. (Multi display mode).\0A\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"-X            Execute <cmd> as a screen command in the specified session.\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"\0AError: \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@flayer = external global %struct.layer*, align 8
@.str.36 = private unnamed_addr constant [38 x i8] c"Window height too small for help page\00", align 1
@HelpLf = internal global %struct.LayFuncs { void (i8**, i32*)* @HelpProcess, void ()* @HelpAbort, void (i32, i32, i32, i32)* @HelpRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @DefResize, void ()* @DefRestore, void (i8*)* null }, align 8
@noargs = external global [0 x i8*], align 8
@comms = external global [0 x %struct.comm], align 8
@.str.37 = private unnamed_addr constant [16 x i8] c"Width too small\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Window size too small for copyright page\00", align 1
@CopyrightLf = internal global %struct.LayFuncs { void (i8**, i32*)* @CopyrightProcess, void ()* @CopyrightAbort, void (i32, i32, i32, i32)* @CopyrightRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @DefResize, void ()* @DefRestore, void (i8*)* null }, align 8
@cpmsg = internal constant [1230 x i8] c"\0AScreen version %v\0A\0ACopyright (c) 2010 Juergen Weigert, Sadrul Habib Chowdhury\0ACopyright (c) 2008, 2009 Juergen Weigert, Michael Schroeder, Micah Cowan, Sadrul Habib Chowdhury\0ACopyright (c) 1993-2002, 2003, 2005, 2006, 2007 Juergen Weigert, Michael Schroeder\0ACopyright (c) 1987 Oliver Laumann\0A\0AThis program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.\0A\0AThis program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.\0A\0AYou should have received a copy of the GNU General Public License along with this program (see the file COPYING); if not, see http://www.gnu.org/licenses/, or contact Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02111-1301  USA.\0A\0ASend bugreports, fixes, enhancements, t-shirts, money, beer & pizza to screen-devel@gnu.org\0A\0A\0ACapabilities:\0A+copy +remote-detach +power-detach +multi-attach +multi-user +font +color-16 +utf8 -rxvt -builtin-telnet \00", align 16
@.str.39 = private unnamed_addr constant [41 x i8] c"Window height too small for bindkey page\00", align 1
@BindkeyLf = internal global %struct.LayFuncs { void (i8**, i32*)* @BindkeyProcess, void ()* @BindkeyAbort, void (i32, i32, i32, i32)* @BindkeyRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @DefResize, void ()* @DefRestore, void (i8*)* null }, align 8
@kmap_extn = external global i32, align 4
@ZmodemLf = internal global %struct.LayFuncs { void (i8**, i32*)* @DefProcess, void ()* null, void (i32, i32, i32, i32)* @ZmodemRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @ZmodemResize, void ()* @DefRestore, void (i8*)* null }, align 8
@.str.40 = private unnamed_addr constant [36 x i8] c"Screen key bindings, page %d of %d.\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@ktab = external global [0 x %struct.action], align 8
@.str.42 = private unnamed_addr constant [35 x i8] c"Command key:  %s   Literal %s:  %s\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Command class: '%.80s'\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"[Press Space %s Return to end.]\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"for next page;\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@term = external global [0 x %struct.term], align 8
@mchar_blank = external global %struct.mchar, align 1
@blank = external global i8*, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"%s key bindings, page %d of %d.\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"[A]\00", align 1
@kmap_exts = external global %struct.kmap_ext*, align 8
@.str.54 = private unnamed_addr constant [4 x i8] c"[T]\00", align 1
@dmtab = external global [0 x %struct.action], align 8
@mmtab = external global [0 x %struct.action], align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"%s -> \00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Zmodem active on another display\00", align 1

; Function Attrs: nounwind uwtable
define void @exit_with_usage(i8* %myname, i8* %message, i8* %arg) #0 {
entry:
  %myname.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %myname.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %myname.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* %1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i32 0, i32 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.21, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.26, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.28, i32 0, i32 0))
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @version, i32 0, i32 0))
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.31, i32 0, i32 0))
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i32 0, i32 0))
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i32 0, i32 0))
  %2 = load i8*, i8** %message.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %message.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool33 = icmp ne i32 %conv, 0
  br i1 %tobool33, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0))
  %5 = load i8*, i8** %message.addr, align 8
  %6 = load i8*, i8** %arg.addr, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* %5, i8* %6)
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @display_help(i8* %class, %struct.action* %ktabp) #0 {
entry:
  %class.addr = alloca i8*, align 8
  %ktabp.addr = alloca %struct.action*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %key = alloca i32, align 4
  %mcom = alloca i32, align 4
  %mkey = alloca i32, align 4
  %l = alloca i32, align 4
  %helpdata = alloca %struct.helpdata*, align 8
  %used = alloca [188 x i32], align 16
  store i8* %class, i8** %class.addr, align 8
  store %struct.action* %ktabp, %struct.action** %ktabp.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 2
  %1 = load i32, i32* %l_height, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @InitOverlayPage(i32 824, %struct.LayFuncs* @HelpLf, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 7
  %3 = load i8*, i8** %l_data, align 8
  %4 = bitcast i8* %3 to %struct.helpdata*
  store %struct.helpdata* %4, %struct.helpdata** %helpdata, align 8
  %5 = load i8*, i8** %class.addr, align 8
  %6 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %class3 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %6, i32 0, i32 0
  store i8* %5, i8** %class3, align 8
  %7 = load %struct.action*, %struct.action** %ktabp.addr, align 8
  %8 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %ktabp4 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %8, i32 0, i32 1
  store %struct.action* %7, %struct.action** %ktabp4, align 8
  %9 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_bindings = getelementptr inbounds %struct.helpdata, %struct.helpdata* %9, i32 0, i32 10
  store i32 0, i32* %command_bindings, align 4
  %10 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %num_names = getelementptr inbounds %struct.helpdata, %struct.helpdata* %10, i32 0, i32 6
  store i32 0, i32* %num_names, align 4
  %11 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search = getelementptr inbounds %struct.helpdata, %struct.helpdata* %11, i32 0, i32 9
  store i32 0, i32* %command_search, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %12 = load i32, i32* %n, align 4
  %cmp5 = icmp sle i32 %12, 187
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %n, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [188 x i32], [188 x i32]* %used, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %n, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %mcom, align 4
  store i32 0, i32* %mkey, align 4
  store i32 0, i32* %key, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.27, %for.end
  %15 = load i32, i32* %key, align 4
  %cmp7 = icmp slt i32 %15, 338
  br i1 %cmp7, label %for.body.8, label %for.end.29

for.body.8:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %key, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.action*, %struct.action** %ktabp.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.action, %struct.action* %17, i64 %idxprom9
  %nr = getelementptr inbounds %struct.action, %struct.action* %arrayidx10, i32 0, i32 0
  %18 = load i32, i32* %nr, align 4
  store i32 %18, i32* %n, align 4
  %19 = load i32, i32* %n, align 4
  %cmp11 = icmp eq i32 %19, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.8
  br label %for.inc.27

if.end.13:                                        ; preds = %for.body.8
  %20 = load i32, i32* %key, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.action*, %struct.action** %ktabp.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.action, %struct.action* %21, i64 %idxprom14
  %args = getelementptr inbounds %struct.action, %struct.action* %arrayidx15, i32 0, i32 1
  %22 = load i8**, i8*** %args, align 8
  %cmp16 = icmp eq i8** %22, getelementptr inbounds ([0 x i8*], [0 x i8*]* @noargs, i32 0, i32 0)
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %23 = load i32, i32* %key, align 4
  %cmp18 = icmp sle i32 %23, 32
  br i1 %cmp18, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %24 = load i32, i32* %key, align 4
  %cmp19 = icmp eq i32 %24, 127
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.17
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %25 = load i32, i32* %key, align 4
  %cmp20 = icmp sgt i32 %25, 127
  %cond = select i1 %cmp20, i32 5, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i32 [ 3, %cond.true ], [ %cond, %cond.false ]
  %26 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [188 x i32], [188 x i32]* %used, i32 0, i64 %idxprom22
  %27 = load i32, i32* %arrayidx23, align 4
  %add = add nsw i32 %27, %cond21
  store i32 %add, i32* %arrayidx23, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end.13
  %28 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_bindings24 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %28, i32 0, i32 10
  %29 = load i32, i32* %command_bindings24, align 4
  %inc25 = add nsw i32 %29, 1
  store i32 %inc25, i32* %command_bindings24, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %cond.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26, %if.then.12
  %30 = load i32, i32* %key, align 4
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, i32* %key, align 4
  br label %for.cond.6

for.end.29:                                       ; preds = %for.cond.6
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.56, %for.end.29
  %31 = load i32, i32* %n, align 4
  %cmp31 = icmp sle i32 %31, 187
  br i1 %cmp31, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.30
  %32 = load i32, i32* %n, align 4
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [188 x i32], [188 x i32]* %used, i32 0, i64 %idxprom33
  %33 = load i32, i32* %arrayidx34, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.55

if.then.36:                                       ; preds = %for.body.32
  %34 = load i32, i32* %n, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom37
  %name = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx38, i32 0, i32 0
  %35 = load i8*, i8** %name, align 8
  %call39 = call i64 @strlen(i8* %35) #7
  %conv = trunc i64 %call39 to i32
  store i32 %conv, i32* %l, align 4
  %36 = load i32, i32* %l, align 4
  %37 = load i32, i32* %mcom, align 4
  %cmp40 = icmp sgt i32 %36, %37
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  %38 = load i32, i32* %l, align 4
  store i32 %38, i32* %mcom, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.36
  %39 = load i32, i32* %n, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [188 x i32], [188 x i32]* %used, i32 0, i64 %idxprom44
  %40 = load i32, i32* %arrayidx45, align 4
  %41 = load i32, i32* %mkey, align 4
  %cmp46 = icmp sgt i32 %40, %41
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.43
  %42 = load i32, i32* %n, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [188 x i32], [188 x i32]* %used, i32 0, i64 %idxprom49
  %43 = load i32, i32* %arrayidx50, align 4
  store i32 %43, i32* %mkey, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.43
  %44 = load i32, i32* %n, align 4
  %45 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %45, 1
  store i32 %inc52, i32* %i, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %nact = getelementptr inbounds %struct.helpdata, %struct.helpdata* %46, i32 0, i32 16
  %arrayidx54 = getelementptr inbounds [188 x i32], [188 x i32]* %nact, i32 0, i64 %idxprom53
  store i32 %44, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.51, %for.body.32
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %47 = load i32, i32* %n, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, i32* %n, align 4
  br label %for.cond.30

for.end.58:                                       ; preds = %for.cond.30
  br label %do.body

do.body:                                          ; preds = %for.end.58
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.59

do.body.59:                                       ; preds = %do.end
  br label %do.end.60

do.end.60:                                        ; preds = %do.body.59
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %num_names61 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %49, i32 0, i32 6
  store i32 %48, i32* %num_names61, align 4
  %50 = load i32, i32* %mkey, align 4
  %cmp62 = icmp sgt i32 %50, 256
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.end.60
  store i32 256, i32* %mkey, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %do.end.60
  %51 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %51, i32 0, i32 1
  %52 = load i32, i32* %l_width, align 4
  %53 = load i32, i32* %mcom, align 4
  %54 = load i32, i32* %mkey, align 4
  %add66 = add nsw i32 %53, %54
  %add67 = add nsw i32 %add66, 1
  %div = sdiv i32 %52, %add67
  %55 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols = getelementptr inbounds %struct.helpdata, %struct.helpdata* %55, i32 0, i32 4
  store i32 %div, i32* %numcols, align 4
  %56 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols68 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %56, i32 0, i32 4
  %57 = load i32, i32* %numcols68, align 4
  %cmp69 = icmp eq i32 %57, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.65
  call void @HelpAbort()
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  br label %return

if.end.72:                                        ; preds = %if.end.65
  %58 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width73 = getelementptr inbounds %struct.layer, %struct.layer* %58, i32 0, i32 1
  %59 = load i32, i32* %l_width73, align 4
  %60 = load i32, i32* %mcom, align 4
  %61 = load i32, i32* %mkey, align 4
  %add74 = add nsw i32 %60, %61
  %62 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols75 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %62, i32 0, i32 4
  %63 = load i32, i32* %numcols75, align 4
  %mul = mul nsw i32 %add74, %63
  %sub = sub nsw i32 %59, %mul
  %64 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols76 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %64, i32 0, i32 4
  %65 = load i32, i32* %numcols76, align 4
  %add77 = add nsw i32 %65, 1
  %div78 = sdiv i32 %sub, %add77
  %66 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %inter = getelementptr inbounds %struct.helpdata, %struct.helpdata* %66, i32 0, i32 13
  store i32 %div78, i32* %inter, align 4
  %67 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %inter79 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %67, i32 0, i32 13
  %68 = load i32, i32* %inter79, align 4
  %cmp80 = icmp sle i32 %68, 0
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.72
  %69 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %inter83 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %69, i32 0, i32 13
  store i32 1, i32* %inter83, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.72
  br label %do.body.85

do.body.85:                                       ; preds = %if.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.85
  %70 = load i32, i32* %mcom, align 4
  %71 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mcom87 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %71, i32 0, i32 14
  store i32 %70, i32* %mcom87, align 4
  %72 = load i32, i32* %mkey, align 4
  %73 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mkey88 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %73, i32 0, i32 15
  store i32 %72, i32* %mkey88, align 4
  %74 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %num_names89 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %74, i32 0, i32 6
  %75 = load i32, i32* %num_names89, align 4
  %76 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols90 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %76, i32 0, i32 4
  %77 = load i32, i32* %numcols90, align 4
  %add91 = add nsw i32 %75, %77
  %sub92 = sub nsw i32 %add91, 1
  %78 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols93 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %78, i32 0, i32 4
  %79 = load i32, i32* %numcols93, align 4
  %div94 = sdiv i32 %sub92, %79
  %80 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows = getelementptr inbounds %struct.helpdata, %struct.helpdata* %80, i32 0, i32 5
  store i32 %div94, i32* %numrows, align 4
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.86
  br label %do.end.96

do.end.96:                                        ; preds = %do.body.95
  %81 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height97 = getelementptr inbounds %struct.layer, %struct.layer* %81, i32 0, i32 2
  %82 = load i32, i32* %l_height97, align 4
  %sub98 = sub nsw i32 %82, 5
  %83 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows99 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %83, i32 0, i32 5
  %84 = load i32, i32* %numrows99, align 4
  %add100 = add nsw i32 2, %84
  %sub101 = sub nsw i32 %sub98, %add100
  %85 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip = getelementptr inbounds %struct.helpdata, %struct.helpdata* %85, i32 0, i32 7
  store i32 %sub101, i32* %numskip, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.96
  %86 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip102 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %86, i32 0, i32 7
  %87 = load i32, i32* %numskip102, align 4
  %cmp103 = icmp slt i32 %87, 0
  br i1 %cmp103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %88 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height105 = getelementptr inbounds %struct.layer, %struct.layer* %88, i32 0, i32 2
  %89 = load i32, i32* %l_height105, align 4
  %sub106 = sub nsw i32 %89, 5
  %90 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip107 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %90, i32 0, i32 7
  %91 = load i32, i32* %numskip107, align 4
  %add108 = add nsw i32 %91, %sub106
  store i32 %add108, i32* %numskip107, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height109 = getelementptr inbounds %struct.layer, %struct.layer* %92, i32 0, i32 2
  %93 = load i32, i32* %l_height109, align 4
  %sub110 = sub nsw i32 %93, 5
  %94 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip111 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %94, i32 0, i32 7
  %95 = load i32, i32* %numskip111, align 4
  %rem = srem i32 %95, %sub110
  store i32 %rem, i32* %numskip111, align 4
  br label %do.body.112

do.body.112:                                      ; preds = %while.end
  br label %do.end.113

do.end.113:                                       ; preds = %do.body.112
  %96 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip114 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %96, i32 0, i32 7
  %97 = load i32, i32* %numskip114, align 4
  %98 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height115 = getelementptr inbounds %struct.layer, %struct.layer* %98, i32 0, i32 2
  %99 = load i32, i32* %l_height115, align 4
  %div116 = sdiv i32 %99, 3
  %cmp117 = icmp sgt i32 %97, %div116
  br i1 %cmp117, label %if.then.124, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %do.end.113
  %100 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip120 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %100, i32 0, i32 7
  %101 = load i32, i32* %numskip120, align 4
  %102 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_bindings121 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %102, i32 0, i32 10
  %103 = load i32, i32* %command_bindings121, align 4
  %cmp122 = icmp sgt i32 %101, %103
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %lor.lhs.false.119, %do.end.113
  %104 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip125 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %104, i32 0, i32 7
  store i32 1, i32* %numskip125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %lor.lhs.false.119
  %105 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows127 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %105, i32 0, i32 5
  %106 = load i32, i32* %numrows127, align 4
  %add128 = add nsw i32 2, %106
  %107 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip129 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %107, i32 0, i32 7
  %108 = load i32, i32* %numskip129, align 4
  %add130 = add nsw i32 %add128, %108
  %109 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_bindings131 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %109, i32 0, i32 10
  %110 = load i32, i32* %command_bindings131, align 4
  %add132 = add nsw i32 %add130, %110
  %111 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %maxrow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %111, i32 0, i32 2
  store i32 %add132, i32* %maxrow, align 4
  %112 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %112, i32 0, i32 3
  store i32 0, i32* %grow, align 4
  %113 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %maxrow133 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %113, i32 0, i32 2
  %114 = load i32, i32* %maxrow133, align 4
  %115 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height134 = getelementptr inbounds %struct.layer, %struct.layer* %115, i32 0, i32 2
  %116 = load i32, i32* %l_height134, align 4
  %add135 = add nsw i32 %114, %116
  %sub136 = sub nsw i32 %add135, 6
  %117 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height137 = getelementptr inbounds %struct.layer, %struct.layer* %117, i32 0, i32 2
  %118 = load i32, i32* %l_height137, align 4
  %sub138 = sub nsw i32 %118, 5
  %div139 = sdiv i32 %sub136, %sub138
  %119 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numpages = getelementptr inbounds %struct.helpdata, %struct.helpdata* %119, i32 0, i32 8
  store i32 %div139, i32* %numpages, align 4
  %120 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %120, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %121 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height140 = getelementptr inbounds %struct.layer, %struct.layer* %121, i32 0, i32 2
  %122 = load i32, i32* %l_height140, align 4
  %sub141 = sub nsw i32 %122, 1
  %123 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %123, i32 0, i32 4
  store i32 %sub141, i32* %l_y, align 4
  %call142 = call i32 @helppage()
  br label %return

return:                                           ; preds = %if.end.126, %if.then.71, %if.then.1, %if.then
  ret void
}

declare void @LMsg(i32, i8*, ...) #1

declare i32 @InitOverlayPage(i32, %struct.LayFuncs*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @HelpAbort() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %2, %struct.layer** @flayer, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %5 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  %6 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  store %struct.canvas* %6, %struct.canvas** %l_cvlist5, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  store %struct.layer* %11, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %15, i32 0)
  %16 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %16, %struct.layer** @flayer, align 8
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.12, %for.end
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %19, null
  br i1 %tobool9, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer11 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 9
  store %struct.layer* %20, %struct.layer** %c_layer11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.10
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 10
  %23 = load %struct.canvas*, %struct.canvas** %c_lnext13, align 8
  store %struct.canvas* %23, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.14:                                       ; preds = %for.cond.8
  %24 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next15 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 8
  %26 = load %struct.layer*, %struct.layer** %l_next15, align 8
  %l_cvlist16 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  store %struct.canvas* %24, %struct.canvas** %l_cvlist16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %for.end.14
  call void @ExitOverlayPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @helppage() #0 {
entry:
  %retval = alloca i32, align 4
  %helpdata = alloca %struct.helpdata*, align 8
  %col = alloca i32, align 4
  %crow = alloca i32, align 4
  %n = alloca i32, align 4
  %key = alloca i32, align 4
  %x = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %Esc_buf = alloca [5 x i8], align 1
  %cbuf = alloca [256 x i8], align 16
  %ktabp = alloca %struct.action*, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.helpdata*
  store %struct.helpdata* %2, %struct.helpdata** %helpdata, align 8
  %3 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %ktabp1 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %3, i32 0, i32 1
  %4 = load %struct.action*, %struct.action** %ktabp1, align 8
  store %struct.action* %4, %struct.action** %ktabp, align 8
  %5 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %5, i32 0, i32 3
  %6 = load i32, i32* %grow, align 4
  %7 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %maxrow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %7, i32 0, i32 2
  %8 = load i32, i32* %maxrow, align 4
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow2 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %9, i32 0, i32 3
  %10 = load i32, i32* %grow2, align 4
  %11 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %refgrow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %11, i32 0, i32 11
  store i32 %10, i32* %refgrow, align 4
  %12 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search = getelementptr inbounds %struct.helpdata, %struct.helpdata* %12, i32 0, i32 9
  %13 = load i32, i32* %command_search, align 4
  %14 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %refcommand_search = getelementptr inbounds %struct.helpdata, %struct.helpdata* %14, i32 0, i32 12
  store i32 %13, i32* %refcommand_search, align 4
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LClearAll(%struct.layer* %15, i32 0)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %16 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow3 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %16, i32 0, i32 3
  %17 = load i32, i32* %grow3, align 4
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 2
  %19 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %19, 5
  %div = sdiv i32 %17, %sub
  %add = add nsw i32 %div, 1
  %20 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numpages = getelementptr inbounds %struct.helpdata, %struct.helpdata* %20, i32 0, i32 8
  %21 = load i32, i32* %numpages, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0), i32 %add, i32 %21) #5
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  call void @centerline(i8* %arraydecay4, i32 0)
  store i32 2, i32* %crow, align 4
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %Esc_buf, i32 0, i32 0
  store i8 0, i8* %arraydecay5, align 1
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  store i8 0, i8* %arraydecay6, align 1
  %22 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %22, i32 0, i32 0
  %23 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool = icmp ne %struct.canvas* %23, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %24 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 0
  %25 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 1
  %26 = load %struct.display*, %struct.display** %c_display, align 8
  %tobool8 = icmp ne %struct.display* %26, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist11 = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 0
  %28 = load %struct.canvas*, %struct.canvas** %l_cvlist11, align 8
  %c_display12 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 1
  %29 = load %struct.display*, %struct.display** %c_display12, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 1
  %30 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_MetaEsc = getelementptr inbounds %struct.acluser, %struct.acluser* %30, i32 0, i32 7
  %31 = load i32, i32* %u_MetaEsc, align 4
  call void @add_key_to_buf(i8* %arraydecay10, i32 %31)
  %arraydecay13 = getelementptr inbounds [5 x i8], [5 x i8]* %Esc_buf, i32 0, i32 0
  %32 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist14 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 0
  %33 = load %struct.canvas*, %struct.canvas** %l_cvlist14, align 8
  %c_display15 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 1
  %34 = load %struct.display*, %struct.display** %c_display15, align 8
  %d_user16 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 1
  %35 = load %struct.acluser*, %struct.acluser** %d_user16, align 8
  %u_Esc = getelementptr inbounds %struct.acluser, %struct.acluser* %35, i32 0, i32 6
  %36 = load i32, i32* %u_Esc, align 4
  call void @add_key_to_buf(i8* %arraydecay13, i32 %36)
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.end
  %arraydecay17 = getelementptr inbounds [5 x i8], [5 x i8]* %Esc_buf, i32 0, i32 0
  %call18 = call i8* @strcpy(i8* %arraydecay17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call20 = call i8* @strcpy(i8* %arraydecay19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc.139, %if.end.21
  %37 = load i32, i32* %crow, align 4
  %38 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height22 = getelementptr inbounds %struct.layer, %struct.layer* %38, i32 0, i32 2
  %39 = load i32, i32* %l_height22, align 4
  %sub23 = sub nsw i32 %39, 3
  %cmp24 = icmp slt i32 %37, %sub23
  br i1 %cmp24, label %for.body, label %for.end.141

for.body:                                         ; preds = %for.cond
  %40 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow25 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %40, i32 0, i32 3
  %41 = load i32, i32* %grow25, align 4
  %cmp26 = icmp slt i32 %41, 1
  br i1 %cmp26, label %if.then.27, label %if.else.41

if.then.27:                                       ; preds = %for.body
  %42 = load %struct.action*, %struct.action** %ktabp, align 8
  %cmp28 = icmp eq %struct.action* %42, getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @ktab, i32 0, i32 0)
  br i1 %cmp28, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.then.27
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [5 x i8], [5 x i8]* %Esc_buf, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [5 x i8], [5 x i8]* %Esc_buf, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay31, i8* %arraydecay32, i8* %arraydecay33) #5
  br label %if.end.38

if.else.35:                                       ; preds = %if.then.27
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %43 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %class = getelementptr inbounds %struct.helpdata, %struct.helpdata* %43, i32 0, i32 0
  %44 = load i8*, i8** %class, align 8
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* %44) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.29
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %45 = load i32, i32* %crow, align 4
  call void @centerline(i8* %arraydecay39, i32 %45)
  %46 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow40 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %46, i32 0, i32 3
  %47 = load i32, i32* %grow40, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %grow40, align 4
  br label %if.end.138

if.else.41:                                       ; preds = %for.body
  %48 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow42 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %48, i32 0, i32 3
  %49 = load i32, i32* %grow42, align 4
  %cmp43 = icmp sge i32 %49, 2
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.93

land.lhs.true.44:                                 ; preds = %if.else.41
  %50 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow45 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %50, i32 0, i32 3
  %51 = load i32, i32* %grow45, align 4
  %sub46 = sub nsw i32 %51, 2
  %52 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows = getelementptr inbounds %struct.helpdata, %struct.helpdata* %52, i32 0, i32 5
  %53 = load i32, i32* %numrows, align 4
  %cmp47 = icmp slt i32 %sub46, %53
  br i1 %cmp47, label %if.then.48, label %if.else.93

if.then.48:                                       ; preds = %land.lhs.true.44
  store i32 0, i32* %x, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.88, %if.then.48
  %54 = load i32, i32* %col, align 4
  %55 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numcols = getelementptr inbounds %struct.helpdata, %struct.helpdata* %55, i32 0, i32 4
  %56 = load i32, i32* %numcols, align 4
  %cmp50 = icmp slt i32 %54, %56
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.49
  %57 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows51 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %57, i32 0, i32 5
  %58 = load i32, i32* %numrows51, align 4
  %59 = load i32, i32* %col, align 4
  %mul = mul nsw i32 %58, %59
  %60 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow52 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %60, i32 0, i32 3
  %61 = load i32, i32* %grow52, align 4
  %sub53 = sub nsw i32 %61, 2
  %add54 = add nsw i32 %mul, %sub53
  store i32 %add54, i32* %n, align 4
  %62 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %num_names = getelementptr inbounds %struct.helpdata, %struct.helpdata* %62, i32 0, i32 6
  %63 = load i32, i32* %num_names, align 4
  %cmp55 = icmp slt i32 %add54, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.49
  %64 = phi i1 [ false, %for.cond.49 ], [ %cmp55, %land.rhs ]
  br i1 %64, label %for.body.56, label %for.end.90

for.body.56:                                      ; preds = %land.end
  %65 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %inter = getelementptr inbounds %struct.helpdata, %struct.helpdata* %65, i32 0, i32 13
  %66 = load i32, i32* %inter, align 4
  %67 = load i32, i32* %col, align 4
  %tobool57 = icmp ne i32 %67, 0
  %lnot = xor i1 %tobool57, true
  %lnot.ext = zext i1 %lnot to i32
  %sub58 = sub nsw i32 %66, %lnot.ext
  %68 = load i32, i32* %x, align 4
  %add59 = add nsw i32 %68, %sub58
  store i32 %add59, i32* %x, align 4
  %69 = load i32, i32* %n, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %nact = getelementptr inbounds %struct.helpdata, %struct.helpdata* %70, i32 0, i32 16
  %arrayidx = getelementptr inbounds [188 x i32], [188 x i32]* %nact, i32 0, i64 %idxprom
  %71 = load i32, i32* %arrayidx, align 4
  store i32 %71, i32* %n, align 4
  %arrayidx60 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx60, align 1
  store i32 0, i32* %key, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %for.body.56
  %72 = load i32, i32* %key, align 4
  %cmp62 = icmp slt i32 %72, 338
  br i1 %cmp62, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.61
  %73 = load i32, i32* %key, align 4
  %idxprom64 = sext i32 %73 to i64
  %74 = load %struct.action*, %struct.action** %ktabp, align 8
  %arrayidx65 = getelementptr inbounds %struct.action, %struct.action* %74, i64 %idxprom64
  %nr = getelementptr inbounds %struct.action, %struct.action* %arrayidx65, i32 0, i32 0
  %75 = load i32, i32* %nr, align 4
  %76 = load i32, i32* %n, align 4
  %cmp66 = icmp eq i32 %75, %76
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.79

land.lhs.true.67:                                 ; preds = %for.body.63
  %77 = load i32, i32* %key, align 4
  %idxprom68 = sext i32 %77 to i64
  %78 = load %struct.action*, %struct.action** %ktabp, align 8
  %arrayidx69 = getelementptr inbounds %struct.action, %struct.action* %78, i64 %idxprom68
  %args = getelementptr inbounds %struct.action, %struct.action* %arrayidx69, i32 0, i32 1
  %79 = load i8**, i8*** %args, align 8
  %cmp70 = icmp eq i8** %79, getelementptr inbounds ([0 x i8*], [0 x i8*]* @noargs, i32 0, i32 0)
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.79

land.lhs.true.71:                                 ; preds = %land.lhs.true.67
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call73 = call i64 @strlen(i8* %arraydecay72) #7
  %cmp74 = icmp ult i64 %call73, 249
  br i1 %cmp74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %land.lhs.true.71
  %arraydecay76 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call77 = call i8* @strcat(i8* %arraydecay76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #5
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %80 = load i32, i32* %key, align 4
  call void @add_key_to_buf(i8* %arraydecay78, i32 %80)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %land.lhs.true.71, %land.lhs.true.67, %for.body.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %81 = load i32, i32* %key, align 4
  %inc80 = add nsw i32 %81, 1
  store i32 %inc80, i32* %key, align 4
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  %82 = load i32, i32* %n, align 4
  %idxprom81 = sext i32 %82 to i64
  %arrayidx82 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom81
  %name = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx82, i32 0, i32 0
  %83 = load i8*, i8** %name, align 8
  %84 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mcom = getelementptr inbounds %struct.helpdata, %struct.helpdata* %84, i32 0, i32 14
  %85 = load i32, i32* %mcom, align 4
  %86 = load i32, i32* %x, align 4
  %87 = load i32, i32* %crow, align 4
  call void @PadStr(i8* %83, i32 %85, i32 %86, i32 %87)
  %88 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mcom83 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %88, i32 0, i32 14
  %89 = load i32, i32* %mcom83, align 4
  %90 = load i32, i32* %x, align 4
  %add84 = add nsw i32 %90, %89
  store i32 %add84, i32* %x, align 4
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %91 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mkey = getelementptr inbounds %struct.helpdata, %struct.helpdata* %91, i32 0, i32 15
  %92 = load i32, i32* %mkey, align 4
  %93 = load i32, i32* %x, align 4
  %94 = load i32, i32* %crow, align 4
  call void @PadStr(i8* %arraydecay85, i32 %92, i32 %93, i32 %94)
  %95 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %mkey86 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %95, i32 0, i32 15
  %96 = load i32, i32* %mkey86, align 4
  %97 = load i32, i32* %x, align 4
  %add87 = add nsw i32 %97, %96
  store i32 %add87, i32* %x, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end
  %98 = load i32, i32* %col, align 4
  %inc89 = add nsw i32 %98, 1
  store i32 %inc89, i32* %col, align 4
  br label %for.cond.49

for.end.90:                                       ; preds = %land.end
  %99 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow91 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %99, i32 0, i32 3
  %100 = load i32, i32* %grow91, align 4
  %inc92 = add nsw i32 %100, 1
  store i32 %inc92, i32* %grow91, align 4
  br label %if.end.137

if.else.93:                                       ; preds = %land.lhs.true.44, %if.else.41
  %101 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow94 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %101, i32 0, i32 3
  %102 = load i32, i32* %grow94, align 4
  %sub95 = sub nsw i32 %102, 2
  %103 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows96 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %103, i32 0, i32 5
  %104 = load i32, i32* %numrows96, align 4
  %sub97 = sub nsw i32 %sub95, %104
  %105 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip = getelementptr inbounds %struct.helpdata, %struct.helpdata* %105, i32 0, i32 7
  %106 = load i32, i32* %numskip, align 4
  %cmp98 = icmp sge i32 %sub97, %106
  br i1 %cmp98, label %land.lhs.true.99, label %if.else.133

land.lhs.true.99:                                 ; preds = %if.else.93
  %107 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow100 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %107, i32 0, i32 3
  %108 = load i32, i32* %grow100, align 4
  %sub101 = sub nsw i32 %108, 2
  %109 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numrows102 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %109, i32 0, i32 5
  %110 = load i32, i32* %numrows102, align 4
  %sub103 = sub nsw i32 %sub101, %110
  %111 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %numskip104 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %111, i32 0, i32 7
  %112 = load i32, i32* %numskip104, align 4
  %sub105 = sub nsw i32 %sub103, %112
  %113 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_bindings = getelementptr inbounds %struct.helpdata, %struct.helpdata* %113, i32 0, i32 10
  %114 = load i32, i32* %command_bindings, align 4
  %cmp106 = icmp slt i32 %sub105, %114
  br i1 %cmp106, label %if.then.107, label %if.else.133

if.then.107:                                      ; preds = %land.lhs.true.99
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %if.then.107
  %115 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search108 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %115, i32 0, i32 9
  %116 = load i32, i32* %command_search108, align 4
  %idxprom109 = sext i32 %116 to i64
  %117 = load %struct.action*, %struct.action** %ktabp, align 8
  %arrayidx110 = getelementptr inbounds %struct.action, %struct.action* %117, i64 %idxprom109
  %nr111 = getelementptr inbounds %struct.action, %struct.action* %arrayidx110, i32 0, i32 0
  %118 = load i32, i32* %nr111, align 4
  store i32 %118, i32* %n, align 4
  %cmp112 = icmp eq i32 %118, -1
  br i1 %cmp112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %119 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search113 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %119, i32 0, i32 9
  %120 = load i32, i32* %command_search113, align 4
  %idxprom114 = sext i32 %120 to i64
  %121 = load %struct.action*, %struct.action** %ktabp, align 8
  %arrayidx115 = getelementptr inbounds %struct.action, %struct.action* %121, i64 %idxprom114
  %args116 = getelementptr inbounds %struct.action, %struct.action* %arrayidx115, i32 0, i32 1
  %122 = load i8**, i8*** %args116, align 8
  %cmp117 = icmp eq i8** %122, getelementptr inbounds ([0 x i8*], [0 x i8*]* @noargs, i32 0, i32 0)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %123 = phi i1 [ true, %while.cond ], [ %cmp117, %lor.rhs ]
  br i1 %123, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %124 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search118 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %124, i32 0, i32 9
  %125 = load i32, i32* %command_search118, align 4
  %inc119 = add nsw i32 %125, 1
  store i32 %inc119, i32* %command_search118, align 4
  %cmp120 = icmp sge i32 %inc119, 338
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %arrayidx123 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx123, align 1
  %arraydecay124 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %126 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search125 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %126, i32 0, i32 9
  %127 = load i32, i32* %command_search125, align 4
  call void @add_key_to_buf(i8* %arraydecay124, i32 %127)
  %arraydecay126 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %128 = load i32, i32* %crow, align 4
  call void @PadStr(i8* %arraydecay126, i32 5, i32 0, i32 %128)
  %129 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search127 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %129, i32 0, i32 9
  %130 = load i32, i32* %command_search127, align 4
  %inc128 = add nsw i32 %130, 1
  store i32 %inc128, i32* %command_search127, align 4
  %idxprom129 = sext i32 %130 to i64
  %131 = load %struct.action*, %struct.action** %ktabp, align 8
  %arrayidx130 = getelementptr inbounds %struct.action, %struct.action* %131, i64 %idxprom129
  %132 = load i32, i32* %crow, align 4
  call void @AddAction(%struct.action* %arrayidx130, i32 5, i32 %132)
  %133 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow131 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %133, i32 0, i32 3
  %134 = load i32, i32* %grow131, align 4
  %inc132 = add nsw i32 %134, 1
  store i32 %inc132, i32* %grow131, align 4
  br label %if.end.136

if.else.133:                                      ; preds = %land.lhs.true.99, %if.else.93
  %135 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow134 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %135, i32 0, i32 3
  %136 = load i32, i32* %grow134, align 4
  %inc135 = add nsw i32 %136, 1
  store i32 %inc135, i32* %grow134, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %while.end
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %for.end.90
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.38
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %137 = load i32, i32* %crow, align 4
  %inc140 = add nsw i32 %137, 1
  store i32 %inc140, i32* %crow, align 4
  br label %for.cond

for.end.141:                                      ; preds = %for.cond
  %arraydecay142 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %138 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow143 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %138, i32 0, i32 3
  %139 = load i32, i32* %grow143, align 4
  %140 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %maxrow144 = getelementptr inbounds %struct.helpdata, %struct.helpdata* %140, i32 0, i32 2
  %141 = load i32, i32* %maxrow144, align 4
  %cmp145 = icmp slt i32 %139, %141
  %cond = select i1 %cmp145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)
  %call146 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %cond) #5
  %arraydecay147 = getelementptr inbounds [256 x i8], [256 x i8]* %cbuf, i32 0, i32 0
  %142 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height148 = getelementptr inbounds %struct.layer, %struct.layer* %142, i32 0, i32 2
  %143 = load i32, i32* %l_height148, align 4
  %sub149 = sub nsw i32 %143, 2
  call void @centerline(i8* %arraydecay147, i32 %sub149)
  %144 = load %struct.layer*, %struct.layer** @flayer, align 8
  %145 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %145, i32 0, i32 3
  %146 = load i32, i32* %l_x, align 4
  %147 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %147, i32 0, i32 4
  %148 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %144, i32 %146, i32 %148)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.141, %if.then.121, %if.then
  %149 = load i32, i32* %retval
  ret i32 %149
}

; Function Attrs: nounwind uwtable
define void @display_copyright() #0 {
entry:
  %copydata = alloca %struct.copydata*, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 2
  %3 = load i32, i32* %l_height, align 4
  %cmp1 = icmp slt i32 %3, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @InitOverlayPage(i32 32, %struct.LayFuncs* @CopyrightLf, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 7
  %5 = load i8*, i8** %l_data, align 8
  %6 = bitcast i8* %5 to %struct.copydata*
  store %struct.copydata* %6, %struct.copydata** %copydata, align 8
  %7 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %cps = getelementptr inbounds %struct.copydata, %struct.copydata* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([1230 x i8], [1230 x i8]* @cpmsg, i32 0, i32 0), i8** %cps, align 8
  %8 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps = getelementptr inbounds %struct.copydata, %struct.copydata* %8, i32 0, i32 1
  store i8* null, i8** %savedcps, align 8
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %10 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height4 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 2
  %11 = load i32, i32* %l_height4, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 4
  store i32 %sub, i32* %l_y, align 4
  call void @copypage()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copypage() #0 {
entry:
  %cps = alloca i8*, align 8
  %ws = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %l = alloca i32, align 4
  %cbuf = alloca [80 x i8], align 16
  %copydata = alloca %struct.copydata*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.copydata*
  store %struct.copydata* %2, %struct.copydata** %copydata, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LClearAll(%struct.layer* %3, i32 0)
  store i32 0, i32* %y, align 4
  store i32 0, i32* %x, align 4
  %4 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %cps1 = getelementptr inbounds %struct.copydata, %struct.copydata* %4, i32 0, i32 0
  %5 = load i8*, i8** %cps1, align 8
  store i8* %5, i8** %cps, align 8
  %6 = load i8*, i8** %cps, align 8
  %7 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %refcps = getelementptr inbounds %struct.copydata, %struct.copydata* %7, i32 0, i32 2
  store i8* %6, i8** %refcps, align 8
  %8 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps = getelementptr inbounds %struct.copydata, %struct.copydata* %8, i32 0, i32 1
  %9 = load i8*, i8** %savedcps, align 8
  %10 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %refsavedcps = getelementptr inbounds %struct.copydata, %struct.copydata* %10, i32 0, i32 3
  store i8* %9, i8** %refsavedcps, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.74, %if.then.39, %if.then, %do.end
  %11 = load i8*, i8** %cps, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %y, align 4
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 2
  %15 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %15, 3
  %cmp = icmp slt i32 %13, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %16, label %while.body, label %while.end.75

while.body:                                       ; preds = %land.end
  %17 = load i8*, i8** %cps, align 8
  store i8* %17, i8** %ws, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.7, %while.body
  %18 = load i8*, i8** %cps, align 8
  %19 = load i8, i8* %18, align 1
  %conv4 = sext i8 %19 to i32
  %cmp5 = icmp eq i32 %conv4, 32
  br i1 %cmp5, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.3
  %20 = load i8*, i8** %cps, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %cps, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %21 = load i8*, i8** %cps, align 8
  %call = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i64 2) #7
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %22 = load i8*, i8** %cps, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps10 = getelementptr inbounds %struct.copydata, %struct.copydata* %23, i32 0, i32 1
  store i8* %add.ptr, i8** %savedcps10, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @version, i32 0, i32 0), i8** %cps, align 8
  br label %while.cond

if.end:                                           ; preds = %while.end
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.22, %if.end
  %24 = load i8*, i8** %cps, align 8
  %25 = load i8, i8* %24, align 1
  %conv12 = sext i8 %25 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %land.lhs.true, label %land.end.21

land.lhs.true:                                    ; preds = %while.cond.11
  %26 = load i8*, i8** %cps, align 8
  %27 = load i8, i8* %26, align 1
  %conv14 = sext i8 %27 to i32
  %cmp15 = icmp ne i32 %conv14, 32
  br i1 %cmp15, label %land.rhs.17, label %land.end.21

land.rhs.17:                                      ; preds = %land.lhs.true
  %28 = load i8*, i8** %cps, align 8
  %29 = load i8, i8* %28, align 1
  %conv18 = sext i8 %29 to i32
  %cmp19 = icmp ne i32 %conv18, 10
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.17, %land.lhs.true, %while.cond.11
  %30 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.11 ], [ %cmp19, %land.rhs.17 ]
  br i1 %30, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %land.end.21
  %31 = load i8*, i8** %cps, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr23, i8** %cps, align 8
  br label %while.cond.11

while.end.24:                                     ; preds = %land.end.21
  %32 = load i8*, i8** %cps, align 8
  %33 = load i8*, i8** %ws, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv25, i32* %l, align 4
  %34 = load i8*, i8** %ws, align 8
  store i8* %34, i8** %cps, align 8
  %35 = load i32, i32* %l, align 4
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 1
  %37 = load i32, i32* %l_width, align 4
  %sub26 = sub nsw i32 %37, 1
  %cmp27 = icmp sgt i32 %35, %sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %while.end.24
  %38 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width30 = getelementptr inbounds %struct.layer, %struct.layer* %38, i32 0, i32 1
  %39 = load i32, i32* %l_width30, align 4
  %sub31 = sub nsw i32 %39, 1
  store i32 %sub31, i32* %l, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %while.end.24
  %40 = load i32, i32* %x, align 4
  %tobool33 = icmp ne i32 %40, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %if.end.32
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %l, align 4
  %add = add nsw i32 %41, %42
  %43 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width35 = getelementptr inbounds %struct.layer, %struct.layer* %43, i32 0, i32 1
  %44 = load i32, i32* %l_width35, align 4
  %sub36 = sub nsw i32 %44, 2
  %cmp37 = icmp sge i32 %add, %sub36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %y, align 4
  br label %while.cond

if.end.40:                                        ; preds = %land.lhs.true.34, %if.end.32
  %46 = load i32, i32* %x, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %47 = load %struct.layer*, %struct.layer** @flayer, align 8
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %y, align 4
  call void @LPutChar(%struct.layer* %47, %struct.mchar* @mchar_blank, i32 %48, i32 %49)
  %50 = load i32, i32* %x, align 4
  %inc43 = add nsw i32 %50, 1
  store i32 %inc43, i32* %x, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %51 = load i32, i32* %l, align 4
  %tobool45 = icmp ne i32 %51, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %52 = load %struct.layer*, %struct.layer** @flayer, align 8
  %53 = load i8*, i8** %ws, align 8
  %54 = load i32, i32* %l, align 4
  %55 = load i32, i32* %x, align 4
  %56 = load i32, i32* %y, align 4
  call void @LPutStr(%struct.layer* %52, i8* %53, i32 %54, %struct.mchar* @mchar_blank, i32 %55, i32 %56)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %57 = load i32, i32* %l, align 4
  %58 = load i32, i32* %x, align 4
  %add48 = add nsw i32 %58, %57
  store i32 %add48, i32* %x, align 4
  %59 = load i32, i32* %l, align 4
  %60 = load i8*, i8** %cps, align 8
  %idx.ext = sext i32 %59 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr49, i8** %cps, align 8
  %61 = load i8*, i8** %cps, align 8
  %62 = load i8, i8* %61, align 1
  %conv50 = sext i8 %62 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.59

land.lhs.true.53:                                 ; preds = %if.end.47
  %63 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps54 = getelementptr inbounds %struct.copydata, %struct.copydata* %63, i32 0, i32 1
  %64 = load i8*, i8** %savedcps54, align 8
  %tobool55 = icmp ne i8* %64, null
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %land.lhs.true.53
  %65 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps57 = getelementptr inbounds %struct.copydata, %struct.copydata* %65, i32 0, i32 1
  %66 = load i8*, i8** %savedcps57, align 8
  store i8* %66, i8** %cps, align 8
  %67 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps58 = getelementptr inbounds %struct.copydata, %struct.copydata* %67, i32 0, i32 1
  store i8* null, i8** %savedcps58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %land.lhs.true.53, %if.end.47
  %68 = load i8*, i8** %cps, align 8
  %69 = load i8, i8* %68, align 1
  %conv60 = sext i8 %69 to i32
  %cmp61 = icmp eq i32 %conv60, 10
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.59
  store i32 0, i32* %x, align 4
  %70 = load i32, i32* %y, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, i32* %y, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.59
  %71 = load i8*, i8** %cps, align 8
  %72 = load i8, i8* %71, align 1
  %conv66 = sext i8 %72 to i32
  %cmp67 = icmp eq i32 %conv66, 32
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %73 = load i8*, i8** %cps, align 8
  %74 = load i8, i8* %73, align 1
  %conv69 = sext i8 %74 to i32
  %cmp70 = icmp eq i32 %conv69, 10
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %lor.lhs.false, %if.end.65
  %75 = load i8*, i8** %cps, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr73, i8** %cps, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %lor.lhs.false
  br label %while.cond

while.end.75:                                     ; preds = %land.end
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.80, %while.end.75
  %76 = load i8*, i8** %cps, align 8
  %77 = load i8, i8* %76, align 1
  %conv77 = sext i8 %77 to i32
  %cmp78 = icmp eq i32 %conv77, 10
  br i1 %cmp78, label %while.body.80, label %while.end.82

while.body.80:                                    ; preds = %while.cond.76
  %78 = load i8*, i8** %cps, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr81, i8** %cps, align 8
  br label %while.cond.76

while.end.82:                                     ; preds = %while.cond.76
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %cbuf, i32 0, i32 0
  %79 = load i8*, i8** %cps, align 8
  %80 = load i8, i8* %79, align 1
  %conv83 = sext i8 %80 to i32
  %tobool84 = icmp ne i32 %conv83, 0
  %cond = select i1 %tobool84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %cond) #5
  %arraydecay86 = getelementptr inbounds [80 x i8], [80 x i8]* %cbuf, i32 0, i32 0
  %81 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height87 = getelementptr inbounds %struct.layer, %struct.layer* %81, i32 0, i32 2
  %82 = load i32, i32* %l_height87, align 4
  %sub88 = sub nsw i32 %82, 2
  call void @centerline(i8* %arraydecay86, i32 %sub88)
  %83 = load i8*, i8** %cps, align 8
  %84 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %cps89 = getelementptr inbounds %struct.copydata, %struct.copydata* %84, i32 0, i32 0
  store i8* %83, i8** %cps89, align 8
  %85 = load %struct.layer*, %struct.layer** @flayer, align 8
  %86 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %86, i32 0, i32 3
  %87 = load i32, i32* %l_x, align 4
  %88 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %88, i32 0, i32 4
  %89 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %85, i32 %87, i32 %89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_bindkey(i8* %title, %struct.action* %tab) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %tab.addr = alloca %struct.action*, align 8
  %bindkeydata = alloca %struct.bindkeydata*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store %struct.action* %tab, %struct.action** %tab.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 2
  %1 = load i32, i32* %l_height, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @InitOverlayPage(i32 32, %struct.LayFuncs* @BindkeyLf, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 7
  %3 = load i8*, i8** %l_data, align 8
  %4 = bitcast i8* %3 to %struct.bindkeydata*
  store %struct.bindkeydata* %4, %struct.bindkeydata** %bindkeydata, align 8
  %5 = load i8*, i8** %title.addr, align 8
  %6 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %title3 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %6, i32 0, i32 0
  store i8* %5, i8** %title3, align 8
  %7 = load %struct.action*, %struct.action** %tab.addr, align 8
  %8 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %tab4 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %8, i32 0, i32 1
  store %struct.action* %7, %struct.action** %tab4, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @kmap_extn, align 4
  %add = add nsw i32 104, %10
  %cmp5 = icmp slt i32 %9, %add
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.action*, %struct.action** %tab.addr, align 8
  %arrayidx = getelementptr inbounds %struct.action, %struct.action* %12, i64 %idxprom
  %nr = getelementptr inbounds %struct.action, %struct.action* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %nr, align 4
  %cmp6 = icmp ne i32 %13, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %14 = load i32, i32* %n, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %15 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pos = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %16, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  %17 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %page = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %17, i32 0, i32 4
  store i32 1, i32* %page, align 4
  %18 = load i32, i32* %n, align 4
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height10 = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 2
  %20 = load i32, i32* %l_height10, align 4
  %add11 = add nsw i32 %18, %20
  %sub = sub nsw i32 %add11, 6
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height12 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 2
  %22 = load i32, i32* %l_height12, align 4
  %sub13 = sub nsw i32 %22, 5
  %div = sdiv i32 %sub, %sub13
  %23 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %23, i32 0, i32 5
  store i32 %div, i32* %pages, align 4
  %24 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages14 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %24, i32 0, i32 5
  %25 = load i32, i32* %pages14, align 4
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %26 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages17 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %26, i32 0, i32 5
  store i32 1, i32* %pages17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 3
  store i32 0, i32* %l_x, align 4
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height19 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 2
  %29 = load i32, i32* %l_height19, align 4
  %sub20 = sub nsw i32 %29, 1
  %30 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 4
  store i32 %sub20, i32* %l_y, align 4
  call void @bindkeypage()
  br label %return

return:                                           ; preds = %if.end.18, %if.then.1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bindkeypage() #0 {
entry:
  %bindkeydata = alloca %struct.bindkeydata*, align 8
  %kme = alloca %struct.kmap_ext*, align 8
  %tbuf = alloca [256 x i8], align 16
  %del = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %sl = alloca i32, align 4
  %act = alloca %struct.action*, align 8
  %xch = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.bindkeydata*
  store %struct.bindkeydata* %2, %struct.bindkeydata** %bindkeydata, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LClearAll(%struct.layer* %3, i32 0)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %4 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %title = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %4, i32 0, i32 0
  %5 = load i8*, i8** %title, align 8
  %6 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %page = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %6, i32 0, i32 4
  %7 = load i32, i32* %page, align 4
  %8 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %8, i32 0, i32 5
  %9 = load i32, i32* %pages, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), i8* %5, i32 %7, i32 %9) #5
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  call void @centerline(i8* %arraydecay1, i32 0)
  store i32 2, i32* %y, align 4
  %10 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pos = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %10, i32 0, i32 2
  %11 = load i32, i32* %pos, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @kmap_extn, align 4
  %add = add nsw i32 104, %13
  %cmp = icmp slt i32 %12, %add
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, i32* %y, align 4
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 2
  %16 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %16, 3
  %cmp2 = icmp slt i32 %14, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  store i8* %arraydecay3, i8** %p, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8** %xch, align 8
  %18 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %18, 82
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %tab = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %20, i32 0, i32 1
  %21 = load %struct.action*, %struct.action** %tab, align 8
  %arrayidx = getelementptr inbounds %struct.action, %struct.action* %21, i64 %idxprom
  store %struct.action* %arrayidx, %struct.action** %act, align 8
  %22 = load %struct.action*, %struct.action** %act, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %22, i32 0, i32 0
  %23 = load i32, i32* %nr, align 4
  %cmp5 = icmp eq i32 %23, -1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 58, i8* %24, align 1
  store i32 58, i32* %del, align 4
  %25 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %25, 106
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom8
  %tcname = getelementptr inbounds %struct.term, %struct.term* %arrayidx9, i32 0, i32 0
  %26 = load i8*, i8** %tcname, align 8
  store i8* %26, i8** %s, align 8
  %27 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load i8*, i8** %s, align 8
  %call10 = call i64 @strlen(i8* %28) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %sl, align 4
  br label %if.end.62

if.else:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %29, 104
  br i1 %cmp11, label %if.then.13, label %if.else.34

if.then.13:                                       ; preds = %if.else
  %30 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %tab15 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %31, i32 0, i32 1
  %32 = load %struct.action*, %struct.action** %tab15, align 8
  %arrayidx16 = getelementptr inbounds %struct.action, %struct.action* %32, i64 %idxprom14
  store %struct.action* %arrayidx16, %struct.action** %act, align 8
  %33 = load %struct.action*, %struct.action** %act, align 8
  %nr17 = getelementptr inbounds %struct.action, %struct.action* %33, i32 0, i32 0
  %34 = load i32, i32* %nr17, align 4
  %cmp18 = icmp eq i32 %34, -1
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.13
  br label %for.inc

if.end.21:                                        ; preds = %if.then.13
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  store i8 58, i8* %35, align 1
  store i32 58, i32* %del, align 4
  %36 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %36, 84
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom24
  %tcname26 = getelementptr inbounds %struct.term, %struct.term* %arrayidx25, i32 0, i32 0
  %37 = load i8*, i8** %tcname26, align 8
  store i8* %37, i8** %s, align 8
  %38 = load i8*, i8** %s, align 8
  %tobool27 = icmp ne i8* %38, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %if.end.21
  %39 = load i8*, i8** %s, align 8
  %call29 = call i64 @strlen(i8* %39) #7
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.end.21
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi i64 [ %call29, %cond.true.28 ], [ 0, %cond.false.30 ]
  %conv33 = trunc i64 %cond32 to i32
  store i32 %conv33, i32* %sl, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8** %xch, align 8
  br label %if.end.61

if.else.34:                                       ; preds = %if.else
  %40 = load %struct.kmap_ext*, %struct.kmap_ext** @kmap_exts, align 8
  %41 = load i32, i32* %i, align 4
  %sub35 = sub nsw i32 %41, 104
  %idx.ext = sext i32 %sub35 to i64
  %add.ptr = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %40, i64 %idx.ext
  store %struct.kmap_ext* %add.ptr, %struct.kmap_ext** %kme, align 8
  store i32 0, i32* %del, align 4
  %42 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %str = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %42, i32 0, i32 0
  %43 = load i8*, i8** %str, align 8
  store i8* %43, i8** %s, align 8
  %44 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %fl = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %44, i32 0, i32 1
  %45 = load i32, i32* %fl, align 4
  %and = and i32 %45, -16385
  store i32 %and, i32* %sl, align 4
  %46 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %fl36 = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %46, i32 0, i32 1
  %47 = load i32, i32* %fl36, align 4
  %and37 = and i32 %47, 16384
  %cmp38 = icmp ne i32 %and37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.34
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8** %xch, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else.34
  %48 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %tab42 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %48, i32 0, i32 1
  %49 = load %struct.action*, %struct.action** %tab42, align 8
  %cmp43 = icmp eq %struct.action* %49, getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i32 0)
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.end.41
  %50 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %dm = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %50, i32 0, i32 3
  br label %cond.end.54

cond.false.46:                                    ; preds = %if.end.41
  %51 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %tab47 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %51, i32 0, i32 1
  %52 = load %struct.action*, %struct.action** %tab47, align 8
  %cmp48 = icmp eq %struct.action* %52, getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @mmtab, i32 0, i32 0)
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.46
  %53 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %mm = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %53, i32 0, i32 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.46
  %54 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %um = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %54, i32 0, i32 2
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi %struct.action* [ %mm, %cond.true.50 ], [ %um, %cond.false.51 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.45
  %cond55 = phi %struct.action* [ %dm, %cond.true.45 ], [ %cond53, %cond.end.52 ]
  store %struct.action* %cond55, %struct.action** %act, align 8
  %55 = load %struct.action*, %struct.action** %act, align 8
  %nr56 = getelementptr inbounds %struct.action, %struct.action* %55, i32 0, i32 0
  %56 = load i32, i32* %nr56, align 4
  %cmp57 = icmp eq i32 %56, -1
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %cond.end.54
  br label %for.inc

if.end.60:                                        ; preds = %cond.end.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %cond.end.31
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.62
  %57 = load i32, i32* %sl, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %sl, align 4
  %cmp63 = icmp sgt i32 %57, 0
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i8*, i8** %p, align 8
  %59 = load i8*, i8** %s, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr65, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %conv66 = zext i8 %60 to i32
  %call67 = call i32 @AddXChar(i8* %58, i32 %conv66)
  %61 = load i8*, i8** %p, align 8
  %idx.ext68 = sext i32 %call67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %61, i64 %idx.ext68
  store i8* %add.ptr69, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32, i32* %del, align 4
  %tobool70 = icmp ne i32 %62, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %while.end
  %63 = load i32, i32* %del, align 4
  %conv72 = trunc i32 %63 to i8
  %64 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  store i8 %conv72, i8* %64, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %while.end
  %65 = load i8*, i8** %p, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8
  store i8 32, i8* %65, align 1
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.81, %if.end.74
  %66 = load i8*, i8** %p, align 8
  %arraydecay77 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %add.ptr78 = getelementptr inbounds i8, i8* %arraydecay77, i64 15
  %cmp79 = icmp ult i8* %66, %add.ptr78
  br i1 %cmp79, label %while.body.81, label %while.end.83

while.body.81:                                    ; preds = %while.cond.76
  %67 = load i8*, i8** %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr82, i8** %p, align 8
  store i8 32, i8* %67, align 1
  br label %while.cond.76

while.end.83:                                     ; preds = %while.cond.76
  %68 = load i8*, i8** %p, align 8
  %69 = load i8*, i8** %xch, align 8
  %call84 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* %69) #5
  %70 = load i8*, i8** %p, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %70, i64 7
  store i8* %add.ptr85, i8** %p, align 8
  %71 = load i8*, i8** %p, align 8
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay86 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %72 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %72, i32 0, i32 1
  %73 = load i32, i32* %l_width, align 4
  %sub87 = sub nsw i32 %73, 1
  %conv88 = sext i32 %sub87 to i64
  %cmp89 = icmp sgt i64 %sub.ptr.sub, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %while.end.83
  %74 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width92 = getelementptr inbounds %struct.layer, %struct.layer* %74, i32 0, i32 1
  %75 = load i32, i32* %l_width92, align 4
  %sub93 = sub nsw i32 %75, 2
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i64 %idxprom94
  store i8 36, i8* %arrayidx95, align 1
  %76 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width96 = getelementptr inbounds %struct.layer, %struct.layer* %76, i32 0, i32 1
  %77 = load i32, i32* %l_width96, align 4
  %sub97 = sub nsw i32 %77, 1
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i64 %idxprom98
  store i8 0, i8* %arrayidx99, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.91, %while.end.83
  %arraydecay101 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %call103 = call i64 @strlen(i8* %arraydecay102) #7
  %conv104 = trunc i64 %call103 to i32
  %78 = load i32, i32* %y, align 4
  call void @PadStr(i8* %arraydecay101, i32 %conv104, i32 0, i32 %78)
  %79 = load %struct.action*, %struct.action** %act, align 8
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %call106 = call i64 @strlen(i8* %arraydecay105) #7
  %conv107 = trunc i64 %call106 to i32
  %80 = load i32, i32* %y, align 4
  call void @AddAction(%struct.action* %79, i32 %conv107, i32 %80)
  %81 = load i32, i32* %y, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.100, %if.then.59, %if.then.20, %if.then.6
  %82 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %82, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %83 = load i32, i32* %y, align 4
  %inc109 = add nsw i32 %83, 1
  store i32 %inc109, i32* %y, align 4
  %84 = load i32, i32* %i, align 4
  %85 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %last = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %85, i32 0, i32 3
  store i32 %84, i32* %last, align 4
  %arraydecay110 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %86 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %page111 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %86, i32 0, i32 4
  %87 = load i32, i32* %page111, align 4
  %88 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages112 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %88, i32 0, i32 5
  %89 = load i32, i32* %pages112, align 4
  %cmp113 = icmp slt i32 %87, %89
  %cond115 = select i1 %cmp113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)
  %call116 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %cond115) #5
  %arraydecay117 = getelementptr inbounds [256 x i8], [256 x i8]* %tbuf, i32 0, i32 0
  %90 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height118 = getelementptr inbounds %struct.layer, %struct.layer* %90, i32 0, i32 2
  %91 = load i32, i32* %l_height118, align 4
  %sub119 = sub nsw i32 %91, 2
  call void @centerline(i8* %arraydecay117, i32 %sub119)
  %92 = load %struct.layer*, %struct.layer** @flayer, align 8
  %93 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %93, i32 0, i32 3
  %94 = load i32, i32* %l_x, align 4
  %95 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %95, i32 0, i32 4
  %96 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %92, i32 %94, i32 %96)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ZmodemPage() #0 {
entry:
  %call = call i32 @InitOverlayPage(i32 1, %struct.LayFuncs* @ZmodemLf, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %0, i32 0)
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  %2 = load i32, i32* %l_width, align 4
  %cmp = icmp sgt i32 %2, 32
  %cond = select i1 %cmp, i32 32, i32 0
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 3
  store i32 %cond, i32* %l_x, align 4
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 4
  store i32 0, i32* %l_y, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @LRefreshAll(%struct.layer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @HelpProcess(i8** %ppbuf, i32* %plen) #0 {
entry:
  %ppbuf.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %done = alloca i32, align 4
  store i8** %ppbuf, i8*** %ppbuf.addr, align 8
  store i32* %plen, i32** %plen.addr, align 8
  store i32 0, i32* %done, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32*, i32** %plen.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp sgt i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8**, i8*** %ppbuf.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 13, label %sw.bb.3
    i32 10, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body
  %call = call i32 @helppage()
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %while.body, %while.body, %if.end
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %if.then
  %7 = load i8**, i8*** %ppbuf.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8
  %9 = load i32*, i32** %plen.addr, align 8
  %10 = load i32, i32* %9, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %9, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %done, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.end
  call void @HelpAbort()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HelpRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %helpdata = alloca %struct.helpdata*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.helpdata*
  store %struct.helpdata* %3, %struct.helpdata** %helpdata, align 8
  %4 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %refgrow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %4, i32 0, i32 11
  %5 = load i32, i32* %refgrow, align 4
  %6 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %grow = getelementptr inbounds %struct.helpdata, %struct.helpdata* %6, i32 0, i32 3
  store i32 %5, i32* %grow, align 4
  %7 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %refcommand_search = getelementptr inbounds %struct.helpdata, %struct.helpdata* %7, i32 0, i32 12
  %8 = load i32, i32* %refcommand_search, align 4
  %9 = load %struct.helpdata*, %struct.helpdata** %helpdata, align 8
  %command_search = getelementptr inbounds %struct.helpdata, %struct.helpdata* %9, i32 0, i32 9
  store i32 %8, i32* %command_search, align 4
  %call = call i32 @helppage()
  br label %if.end.6

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp ne i32 %10, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 2
  %13 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %13, 1
  %cmp2 = icmp ne i32 %11, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %16 = load i32, i32* %xs.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %xe.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  call void @LClearArea(%struct.layer* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 0, i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.3, %if.then.5, %if.end.4
  ret void
}

declare void @DefClearLine(i32, i32, i32, i32) #1

declare i32 @DefRewrite(i32, i32, i32, %struct.mchar*, i32) #1

declare i32 @DefResize(i32, i32) #1

declare void @DefRestore() #1

declare void @LClearArea(%struct.layer*, i32, i32, i32, i32, i32, i32) #1

declare void @ExitOverlayPage() #1

declare void @LClearAll(%struct.layer*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare void @centerline(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @add_key_to_buf(i8* %buf, i32 %key) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %key.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %1 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** %buf.addr, align 8
  %2 = load i32, i32* %key.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  %call1 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  br label %if.end.23

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %key.addr, align 4
  %cmp2 = icmp eq i32 %4, 32
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %5 = load i8*, i8** %buf.addr, align 8
  %call4 = call i8* @strcpy(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0)) #5
  br label %if.end.22

if.else.5:                                        ; preds = %if.else
  %6 = load i32, i32* %key.addr, align 4
  %cmp6 = icmp sge i32 %6, 256
  br i1 %cmp6, label %if.then.7, label %if.else.18

if.then.7:                                        ; preds = %if.else.5
  %7 = load i32, i32* %key.addr, align 4
  %sub = sub nsw i32 %7, 256
  %add = add nsw i32 %sub, 106
  store i32 %add, i32* %key.addr, align 4
  %8 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 58, i8* %arrayidx, align 1
  %9 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom
  %tcname = getelementptr inbounds %struct.term, %struct.term* %arrayidx8, i32 0, i32 0
  %10 = load i8*, i8** %tcname, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx9, align 1
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %11, i8* %arrayidx10, align 1
  %13 = load i32, i32* %key.addr, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom11
  %tcname13 = getelementptr inbounds %struct.term, %struct.term* %arrayidx12, i32 0, i32 0
  %14 = load i8*, i8** %tcname13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx14, align 1
  %16 = load i8*, i8** %buf.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %15, i8* %arrayidx15, align 1
  %17 = load i8*, i8** %buf.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 58, i8* %arrayidx16, align 1
  %18 = load i8*, i8** %buf.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 0, i8* %arrayidx17, align 1
  br label %if.end

if.else.18:                                       ; preds = %if.else.5
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i32, i32* %key.addr, align 4
  %call19 = call i32 @AddXChar(i8* %19, i32 %20)
  %idxprom20 = sext i32 %call19 to i64
  %21 = load i8*, i8** %buf.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom20
  store i8 0, i8* %arrayidx21, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.3
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @PadStr(i8* %str, i32 %n, i32 %x, i32 %y) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %1 = load i32, i32* %l, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  store i32 %3, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i32, i32* %l, align 4
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %4, i8* %5, i32 %6, %struct.mchar* @mchar_blank, i32 %7, i32 %8)
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load i8*, i8** @blank, align 8
  %13 = load i32, i32* %n.addr, align 4
  %14 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %13, %14
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %l, align 4
  %add = add nsw i32 %15, %16
  %17 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %11, i8* %12, i32 %sub, %struct.mchar* @mchar_blank, i32 %add, i32 %17)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AddAction(%struct.action* %act, i32 %x, i32 %y) #0 {
entry:
  %act.addr = alloca %struct.action*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %del = alloca i32, align 4
  %l = alloca i32, align 4
  %bp = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %pp = alloca i8**, align 8
  %lp = alloca i32*, align 8
  %ll = alloca i32, align 4
  %fr = alloca i32, align 4
  %mchar_dol = alloca %struct.mchar, align 1
  store %struct.action* %act, %struct.action** %act.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = bitcast %struct.mchar* %mchar_dol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), i64 6, i32 1, i1 false)
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_dol, i32 0, i32 0
  store i8 36, i8* %image, align 1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  %2 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %x.addr, align 4
  %sub1 = sub nsw i32 %sub, %3
  store i32 %sub1, i32* %fr, align 4
  %4 = load i32, i32* %fr, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.91

if.end:                                           ; preds = %entry
  %5 = load %struct.action*, %struct.action** %act.addr, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %5, i32 0, i32 0
  %6 = load i32, i32* %nr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %7) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %8 = load i32, i32* %l, align 4
  %add = add nsw i32 %8, 1
  %9 = load i32, i32* %fr, align 4
  %cmp2 = icmp sgt i32 %add, %9
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %fr, align 4
  %sub5 = sub nsw i32 %10, 1
  store i32 %sub5, i32* %l, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.action*, %struct.action** %act.addr, align 8
  %nr7 = getelementptr inbounds %struct.action, %struct.action* %11, i32 0, i32 0
  %12 = load i32, i32* %nr7, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 %idxprom8
  %name10 = getelementptr inbounds %struct.comm, %struct.comm* %arrayidx9, i32 0, i32 0
  %13 = load i8*, i8** %name10, align 8
  %14 = load i32, i32* %l, align 4
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  call void @PadStr(i8* %13, i32 %14, i32 %15, i32 %16)
  %17 = load i32, i32* %l, align 4
  %18 = load i32, i32* %x.addr, align 4
  %add11 = add nsw i32 %18, %17
  store i32 %add11, i32* %x.addr, align 4
  %19 = load i32, i32* %l, align 4
  %add12 = add nsw i32 %19, 1
  %20 = load i32, i32* %fr, align 4
  %sub13 = sub nsw i32 %20, %add12
  store i32 %sub13, i32* %fr, align 4
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %22 = load i32, i32* %fr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mchar* [ @mchar_blank, %cond.true ], [ %mchar_dol, %cond.false ]
  %23 = load i32, i32* %x.addr, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  call void @LPutChar(%struct.layer* %21, %struct.mchar* %cond, i32 %23, i32 %24)
  %25 = load %struct.action*, %struct.action** %act.addr, align 8
  %args = getelementptr inbounds %struct.action, %struct.action* %25, i32 0, i32 1
  %26 = load i8**, i8*** %args, align 8
  store i8** %26, i8*** %pp, align 8
  %27 = load %struct.action*, %struct.action** %act.addr, align 8
  %argl = getelementptr inbounds %struct.action, %struct.action* %27, i32 0, i32 2
  %28 = load i32*, i32** %argl, align 8
  store i32* %28, i32** %lp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.90, %cond.end
  %29 = load i8**, i8*** %pp, align 8
  %tobool14 = icmp ne i8** %29, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i8**, i8*** %pp, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %cp, align 8
  %cmp15 = icmp ne i8* %31, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %32, label %while.body, label %while.end.91

while.body:                                       ; preds = %land.end
  store i32 0, i32* %del, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bp, align 8
  %33 = load i32*, i32** %lp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr, i32** %lp, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %ll, align 4
  %35 = load i32, i32* %ll, align 4
  %tobool17 = icmp ne i32 %35, 0
  br i1 %tobool17, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %while.body
  %36 = load i8*, i8** %cp, align 8
  %call18 = call i8* @index(i8* %36, i32 32) #7
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %lor.lhs.false, %while.body
  %37 = load i8*, i8** %cp, align 8
  %call22 = call i8* @index(i8* %37, i32 39) #7
  %cmp23 = icmp ne i8* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.21
  store i32 34, i32* %del, align 4
  %38 = load i8*, i8** %bp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr26, i8** %bp, align 8
  store i8 34, i8* %38, align 1
  br label %if.end.28

if.else:                                          ; preds = %if.then.21
  store i32 39, i32* %del, align 4
  %39 = load i8*, i8** %bp, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr27, i8** %bp, align 8
  store i8 39, i8* %39, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.37, %if.end.29
  %40 = load i32, i32* %ll, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %ll, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %land.rhs.32, label %land.end.36

land.rhs.32:                                      ; preds = %while.cond.30
  %41 = load i8*, i8** %bp, align 8
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay33, i64 250
  %cmp34 = icmp ult i8* %41, %add.ptr
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.32, %while.cond.30
  %42 = phi i1 [ false, %while.cond.30 ], [ %cmp34, %land.rhs.32 ]
  br i1 %42, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %land.end.36
  %43 = load i8*, i8** %bp, align 8
  %44 = load i8*, i8** %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr38, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %conv39 = zext i8 %45 to i32
  %call40 = call i32 @AddXChar(i8* %43, i32 %conv39)
  %46 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %call40 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr41, i8** %bp, align 8
  br label %while.cond.30

while.end:                                        ; preds = %land.end.36
  %47 = load i32, i32* %del, align 4
  %tobool42 = icmp ne i32 %47, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %while.end
  %48 = load i32, i32* %del, align 4
  %conv44 = trunc i32 %48 to i8
  %49 = load i8*, i8** %bp, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr45, i8** %bp, align 8
  store i8 %conv44, i8* %49, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %while.end
  %50 = load i8*, i8** %bp, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %bp, align 8
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add48 = add nsw i64 %sub.ptr.sub, 1
  %52 = load i32, i32* %fr, align 4
  %conv49 = sext i32 %52 to i64
  %sub50 = sub nsw i64 %conv49, %add48
  %conv51 = trunc i64 %sub50 to i32
  store i32 %conv51, i32* %fr, align 4
  %cmp52 = icmp slt i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.71

if.then.54:                                       ; preds = %if.end.46
  %53 = load i8*, i8** %bp, align 8
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast56 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %arraydecay55 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %54 = load i32, i32* %fr, align 4
  %conv59 = sext i32 %54 to i64
  %add60 = add nsw i64 %conv59, %sub.ptr.sub58
  %conv61 = trunc i64 %add60 to i32
  store i32 %conv61, i32* %fr, align 4
  %55 = load i32, i32* %fr, align 4
  %cmp62 = icmp sgt i32 %55, 0
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.54
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %56 = load i32, i32* %fr, align 4
  %57 = load i32, i32* %x.addr, align 4
  %58 = load i32, i32* %y.addr, align 4
  call void @PadStr(i8* %arraydecay65, i32 %56, i32 %57, i32 %58)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.54
  %59 = load i32, i32* %fr, align 4
  %cmp67 = icmp eq i32 %59, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  %60 = load %struct.layer*, %struct.layer** @flayer, align 8
  %61 = load i32, i32* %x.addr, align 4
  %62 = load i32, i32* %y.addr, align 4
  call void @LPutChar(%struct.layer* %60, %struct.mchar* %mchar_dol, i32 %61, i32 %62)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.66
  br label %while.end.91

if.end.71:                                        ; preds = %if.end.46
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call74 = call i64 @strlen(i8* %arraydecay73) #7
  %conv75 = trunc i64 %call74 to i32
  %63 = load i32, i32* %x.addr, align 4
  %64 = load i32, i32* %y.addr, align 4
  call void @PadStr(i8* %arraydecay72, i32 %conv75, i32 %63, i32 %64)
  %arraydecay76 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call77 = call i64 @strlen(i8* %arraydecay76) #7
  %65 = load i32, i32* %x.addr, align 4
  %conv78 = sext i32 %65 to i64
  %add79 = add i64 %conv78, %call77
  %conv80 = trunc i64 %add79 to i32
  store i32 %conv80, i32* %x.addr, align 4
  %66 = load i8**, i8*** %pp, align 8
  %incdec.ptr81 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %incdec.ptr81, i8*** %pp, align 8
  %67 = load i8**, i8*** %pp, align 8
  %68 = load i8*, i8** %67, align 8
  %tobool82 = icmp ne i8* %68, null
  br i1 %tobool82, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.end.71
  %69 = load %struct.layer*, %struct.layer** @flayer, align 8
  %70 = load i32, i32* %fr, align 4
  %tobool84 = icmp ne i32 %70, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %if.then.83
  br label %cond.end.87

cond.false.86:                                    ; preds = %if.then.83
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi %struct.mchar* [ @mchar_blank, %cond.true.85 ], [ %mchar_dol, %cond.false.86 ]
  %71 = load i32, i32* %x.addr, align 4
  %inc89 = add nsw i32 %71, 1
  store i32 %inc89, i32* %x.addr, align 4
  %72 = load i32, i32* %y.addr, align 4
  call void @LPutChar(%struct.layer* %69, %struct.mchar* %cond88, i32 %71, i32 %72)
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.87, %if.end.71
  br label %while.cond

while.end.91:                                     ; preds = %if.then, %if.end.70, %land.end
  ret void
}

declare void @LGotoPos(%struct.layer*, i32, i32) #1

declare i32 @AddXChar(i8*, i32) #1

declare void @LPutStr(%struct.layer*, i8*, i32, %struct.mchar*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @LPutChar(%struct.layer*, %struct.mchar*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @CopyrightProcess(i8** %ppbuf, i32* %plen) #0 {
entry:
  %ppbuf.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %done = alloca i32, align 4
  %copydata = alloca %struct.copydata*, align 8
  store i8** %ppbuf, i8*** %ppbuf.addr, align 8
  store i32* %plen, i32** %plen.addr, align 8
  store i32 0, i32* %done, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.copydata*
  store %struct.copydata* %2, %struct.copydata** %copydata, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load i32*, i32** %plen.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp sgt i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8**, i8*** %ppbuf.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 13, label %sw.bb.2
    i32 10, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %cps = getelementptr inbounds %struct.copydata, %struct.copydata* %10, i32 0, i32 0
  %11 = load i8*, i8** %cps, align 8
  %12 = load i8, i8* %11, align 1
  %tobool1 = icmp ne i8 %12, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @copypage()
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %while.body, %while.body, %if.end
  call void @CopyrightAbort()
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %if.then
  %13 = load i8**, i8*** %ppbuf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %13, align 8
  %15 = load i32*, i32** %plen.addr, align 8
  %16 = load i32, i32* %15, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %15, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CopyrightAbort() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %2, %struct.layer** @flayer, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %5 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  %6 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  store %struct.canvas* %6, %struct.canvas** %l_cvlist5, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  store %struct.layer* %11, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %15, i32 0)
  %16 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %16, %struct.layer** @flayer, align 8
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.12, %for.end
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %19, null
  br i1 %tobool9, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer11 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 9
  store %struct.layer* %20, %struct.layer** %c_layer11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.10
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 10
  %23 = load %struct.canvas*, %struct.canvas** %c_lnext13, align 8
  store %struct.canvas* %23, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.14:                                       ; preds = %for.cond.8
  %24 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next15 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 8
  %26 = load %struct.layer*, %struct.layer** %l_next15, align 8
  %l_cvlist16 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  store %struct.canvas* %24, %struct.canvas** %l_cvlist16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %for.end.14
  call void @ExitOverlayPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CopyrightRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %copydata = alloca %struct.copydata*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.copydata*
  store %struct.copydata* %3, %struct.copydata** %copydata, align 8
  %4 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %refcps = getelementptr inbounds %struct.copydata, %struct.copydata* %4, i32 0, i32 2
  %5 = load i8*, i8** %refcps, align 8
  %6 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %cps = getelementptr inbounds %struct.copydata, %struct.copydata* %6, i32 0, i32 0
  store i8* %5, i8** %cps, align 8
  %7 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %refsavedcps = getelementptr inbounds %struct.copydata, %struct.copydata* %7, i32 0, i32 3
  %8 = load i8*, i8** %refsavedcps, align 8
  %9 = load %struct.copydata*, %struct.copydata** %copydata, align 8
  %savedcps = getelementptr inbounds %struct.copydata, %struct.copydata* %9, i32 0, i32 1
  store i8* %8, i8** %savedcps, align 8
  call void @copypage()
  br label %return

if.end:                                           ; preds = %do.end
  %10 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp ne i32 %10, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 2
  %13 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %13, 1
  %cmp2 = icmp ne i32 %11, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %16 = load i32, i32* %xs.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %xe.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  call void @LClearArea(%struct.layer* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 0, i32 0)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @BindkeyProcess(i8** %ppbuf, i32* %plen) #0 {
entry:
  %ppbuf.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %done = alloca i32, align 4
  %bindkeydata = alloca %struct.bindkeydata*, align 8
  store i8** %ppbuf, i8*** %ppbuf.addr, align 8
  store i32* %plen, i32** %plen.addr, align 8
  store i32 0, i32* %done, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.bindkeydata*
  store %struct.bindkeydata* %2, %struct.bindkeydata** %bindkeydata, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load i32*, i32** %plen.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp sgt i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8**, i8*** %ppbuf.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 13, label %sw.bb.4
    i32 10, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %page = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %10, i32 0, i32 4
  %11 = load i32, i32* %page, align 4
  %12 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pages = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %12, i32 0, i32 5
  %13 = load i32, i32* %pages, align 4
  %cmp1 = icmp slt i32 %11, %13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %last = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %14, i32 0, i32 3
  %15 = load i32, i32* %last, align 4
  %16 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %pos = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %16, i32 0, i32 2
  store i32 %15, i32* %pos, align 4
  %17 = load %struct.bindkeydata*, %struct.bindkeydata** %bindkeydata, align 8
  %page3 = getelementptr inbounds %struct.bindkeydata, %struct.bindkeydata* %17, i32 0, i32 4
  %18 = load i32, i32* %page3, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %page3, align 4
  call void @bindkeypage()
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %while.body, %while.body, %if.end
  store i32 1, i32* %done, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %if.then
  %19 = load i8**, i8*** %ppbuf.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %19, align 8
  %21 = load i32*, i32** %plen.addr, align 8
  %22 = load i32, i32* %21, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %21, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load i32, i32* %done, align 4
  %tobool5 = icmp ne i32 %23, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  call void @BindkeyAbort()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BindkeyAbort() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %2, %struct.layer** @flayer, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %5 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  %6 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  store %struct.canvas* %6, %struct.canvas** %l_cvlist5, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  store %struct.layer* %11, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %15, i32 0)
  %16 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %16, %struct.layer** @flayer, align 8
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.12, %for.end
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %19, null
  br i1 %tobool9, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer11 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 9
  store %struct.layer* %20, %struct.layer** %c_layer11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.10
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 10
  %23 = load %struct.canvas*, %struct.canvas** %c_lnext13, align 8
  store %struct.canvas* %23, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.14:                                       ; preds = %for.cond.8
  %24 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next15 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 8
  %26 = load %struct.layer*, %struct.layer** %l_next15, align 8
  %l_cvlist16 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  store %struct.canvas* %24, %struct.canvas** %l_cvlist16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %for.end.14
  call void @ExitOverlayPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BindkeyRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @bindkeypage()
  br label %if.end.6

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 2
  %4 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %4, 1
  %cmp2 = icmp ne i32 %2, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %7 = load i32, i32* %xs.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %xe.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  call void @LClearArea(%struct.layer* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.3, %if.then.5, %if.end.4
  ret void
}

declare void @DefProcess(i8**, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @ZmodemRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %xs.addr, align 4
  %2 = load i32, i32* %xe.addr, align 4
  %3 = load i32, i32* %isblank.addr, align 4
  call void @DefRedisplayLine(i32 %0, i32 %1, i32 %2, i32 %3)
  %4 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %xs.addr, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 1
  %8 = load i32, i32* %l_width, align 4
  %cmp2 = icmp sgt i32 %8, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width3 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 1
  %10 = load i32, i32* %l_width3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %10, %cond.false ]
  call void @LPutStr(%struct.layer* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0), i32 %cond, %struct.mchar* @mchar_blank, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ZmodemResize(i32 %wi, i32 %he) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  %0 = load i32, i32* %wi.addr, align 4
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  store i32 %0, i32* %l_width, align 4
  %2 = load i32, i32* %he.addr, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 2
  store i32 %2, i32* %l_height, align 4
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width1 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width1, align 4
  %cmp = icmp sgt i32 %5, 32
  %cond = select i1 %cmp, i32 32, i32 0
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 3
  store i32 %cond, i32* %l_x, align 4
  ret i32 0
}

declare void @DefRedisplayLine(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
