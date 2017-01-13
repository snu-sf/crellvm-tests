; ModuleID = './termcap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.term = type { i8*, i32 }
%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.kmap_ext = type { i8*, i32, %struct.action, %struct.action, %struct.action }

@display = external global %struct.display*, align 8
@term = external global [0 x %struct.term], align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot find terminfo entry for '%s'.\00", align 1
@extra_incap = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@strnomem = external global [0 x i8], align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Illegal tc type in entry #%d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"You can't run screen on a hardcopy terminal.\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"You can't run screen on a terminal that overstrikes.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Clear screen capability required.\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Addressable cursor capability required.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\1B[m\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\1B[3%p1%dm\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\1B[4%p1%dm\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\1B[39;49m\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\1B(B\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\1B(0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"rxvt\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\1B[M\00", align 1
@nwin_options = external global %struct.NewWindow, align 8
@nwin_undef = external global %struct.NewWindow, align 8
@nwin_default = external global %struct.NewWindow, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Warning: 'so' but no 'se' capability.\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Warning: 'us' but no 'ue' capability.\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Warning: 'm?' but no 'me' capability.\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"\1B(%p1%c\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"l+m+k+j+u+t+v+w+q-x|n+o~s_p\22r#`+a:f'g#~o.v-^+<,>h#I#0#y<z>\00", align 1
@Z0width = external global i32, align 4
@Z1width = external global i32, align 4
@hardstatusemu = external global i32, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"\0F7\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\008\00", align 1
@kmap_extn = external global i32, align 4
@kmap_exts = external global %struct.kmap_ext*, align 8
@umtab = external global [0 x %struct.action], align 8
@dmtab = external global [0 x %struct.action], align 8
@mmtab = external global [0 x %struct.action], align 8
@DefaultEsc = external global i32, align 4
@displays = external global %struct.display*, align 8
@DefaultMetaEsc = external global i32, align 4
@.str.31 = private unnamed_addr constant [36 x i8] c"Warning: escape char set back to ^A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"vt100\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"SCREENCAP\00", align 1
@Termcap = common global [2056 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [11 x i8] c"TERMCAP=%s\00", align 1
@Term = common global [773 x i8] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [12 x i8] c"TERM=screen\00", align 1
@Termcaplen = internal global i32 0, align 4
@screenterm = common global [33 x i8] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%s-bce\00", align 1
@tcLineLen = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"too_long\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"TERMCAP=SC|%s|VT 100/ANSI X3.64 virtual terminal:\00", align 1
@extra_outcap = common global i8* null, align 8
@TermcapConst = internal constant [224 x i8] c"\5C\0A\09:DO=\5CE[%dB:LE=\5CE[%dD:RI=\5CE[%dC:UP=\5CE[%dA:bs:bt=\5CE[Z:\5C\0A\09:cd=\5CE[J:ce=\5CE[K:cl=\5CE[H\5CE[J:cm=\5CE[%i%d;%dH:ct=\5CE[3g:\5C\0A\09:do=^J:nd=\5CE[C:pt:rc=\5CE8:rs=\5CEc:sc=\5CE7:st=\5CEH:up=\5CEM:\5C\0A\09:le=^H:bl=^G:cr=^M:it#8:ho=\5CE[H:nw=\5CEE:ta=^I:is=\5CE)0:\00", align 16
@.str.42 = private unnamed_addr constant [13 x i8] c"li#%d:co#%d:\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"am:\00", align 1
@force_vt = external global i32, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"xn:\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"xv:\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"LP:\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"sr=\5CEM:\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"al=\5CE[L:\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"AL=\5CE[%dL:\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"cs=\5CE[%i%d;%dr:\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"dl=\5CE[M:\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"DL=\5CE[%dM:\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"dc=\5CE[P:\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"DC=\5CE[%dP:\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"im=\5CE[4h:\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"ei=\5CE[4l:\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"mi:\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"IC=\5CE[%d@:\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"ks=\5CE[?1h\5CE=:\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"ke=\5CE[?1l\5CE>:\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"vi=\5CE[?25l:\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ve=\5CE[34h\5CE[?25h:\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"vs=\5CE[34l:\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"ti=\5CE[?1049h:\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"te=\5CE[?1049l:\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"us=\5CE[4m:\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"ue=\5CE[24m:\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"so=\5CE[3m:\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"se=\5CE[23m:\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"mb=\5CE[5m:\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"md=\5CE[1m:\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"mh=\5CE[2m:\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"mr=\5CE[7m:\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"me=\5CE[m:ms:\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"Co#8:pa#64:AF=\5CE[3%dm:AB=\5CE[4%dm:op=\5CE[39;49m:AX:\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"vb=\5CEg:\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"G0:\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"as=\5CE(0:\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"ae=\5CE(B:\00", align 1
@.str.80 = private unnamed_addr constant [75 x i8] c"ac=\5C140\5C140aaffggjjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~..--++,,hhII00:\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"po=\5CE[5i:\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"pf=\5CE[4i:\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"Z0=\5CE[?3h:\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Z1=\5CE[?3l:\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"WS=\5CE[8;%d;%dt:\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"\5C\0A\09:\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"TERMCAP overflow - sorry.\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"\5C072\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@real_uid = external global i32, align 4
@real_gid = external global i32, align 4
@eff_uid = external global i32, align 4
@eff_gid = external global i32, align 4

; Function Attrs: nounwind uwtable
define i8* @gettermcapstring(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 201
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.term, %struct.term* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom6
  %tcname = getelementptr inbounds %struct.term, %struct.term* %arrayidx7, i32 0, i32 0
  %6 = load i8*, i8** %tcname, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7) #6
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.5
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx11 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 %idxprom10
  %str = bitcast %union.tcu* %arrayidx11 to i8**
  %10 = load i8*, i8** %str, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.4
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @InitTermcap(i32 %wi, i32 %he) #0 {
entry:
  %retval = alloca i32, align 4
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %tbuf = alloca [2048 x i8], align 16
  %tp = alloca i8*, align 8
  %t = alloca i32, align 4
  %xue = alloca i32, align 4
  %xse = alloca i32, align 4
  %xme = alloca i32, align 4
  %enc = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = bitcast [2048 x i8]* %tbuf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 2048, i32 16, i1 false)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 13
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  %2 = load i8, i8* %arraydecay, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.2
  %arraydecay4 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tbuf, i32 0, i32 0
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_termname5 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 13
  %arraydecay6 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname5, i32 0, i32 0
  %call = call i32 @e_tgetent(i8* %arraydecay4, i8* %arraydecay6)
  %cmp7 = icmp ne i32 %call, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end.2
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_termname9 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 13
  %arraydecay10 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname9, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* %arraydecay10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body.11

do.body.11:                                       ; preds = %if.end
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %5 = load i8*, i8** @extra_incap, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.12
  %6 = load i8*, i8** @extra_incap, align 8
  %call13 = call i64 @strlen(i8* %6) #6
  %add = add i64 %call13, 1
  br label %cond.end

cond.false:                                       ; preds = %do.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ]
  %add14 = add i64 2048, %cond
  %call15 = call noalias i8* @malloc(i64 %add14) #2
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_tentry = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 14
  store i8* %call15, i8** %d_tentry, align 8
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %cond.end
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tentry20 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 14
  %9 = load i8*, i8** %d_tentry20, align 8
  store i8* %9, i8** %tp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %10 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %10, 201
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.term, %struct.term* %arrayidx, i32 0, i32 1
  %12 = load i32, i32* %type, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom23
  %tcname = getelementptr inbounds %struct.term, %struct.term* %arrayidx24, i32 0, i32 0
  %14 = load i8*, i8** %tcname, align 8
  %call25 = call i32 @e_tgetflag(i8* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %15 to i64
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx27 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 %idxprom26
  %flg = bitcast %union.tcu* %arrayidx27 to i32*
  store i32 %call25, i32* %flg, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom29
  %tcname31 = getelementptr inbounds %struct.term, %struct.term* %arrayidx30, i32 0, i32 0
  %18 = load i8*, i8** %tcname31, align 8
  %call32 = call i32 @e_tgetnum(i8* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %19 to i64
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs34 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 83
  %arrayidx35 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs34, i32 0, i64 %idxprom33
  %num = bitcast %union.tcu* %arrayidx35 to i32*
  store i32 %call32, i32* %num, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom37
  %tcname39 = getelementptr inbounds %struct.term, %struct.term* %arrayidx38, i32 0, i32 0
  %22 = load i8*, i8** %tcname39, align 8
  %call40 = call i8* @e_tgetstr(i8* %22, i8** %tp)
  %23 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %23 to i64
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs42 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 83
  %arrayidx43 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs42, i32 0, i64 %idxprom41
  %str = bitcast %union.tcu* %arrayidx43 to i8**
  store i8* %call40, i8** %str, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %25 to i64
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs45 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 83
  %arrayidx46 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs45, i32 0, i64 %idxprom44
  %str47 = bitcast %union.tcu* %arrayidx46 to i8**
  %27 = load i8*, i8** %str47, align 8
  %tobool48 = icmp ne i8* %27, null
  br i1 %tobool48, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %sw.bb.36
  %28 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %28 to i64
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs50 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 83
  %arrayidx51 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs50, i32 0, i64 %idxprom49
  %str52 = bitcast %union.tcu* %arrayidx51 to i8**
  %30 = load i8*, i8** %str52, align 8
  %31 = load i8, i8* %30, align 1
  %conv53 = sext i8 %31 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %32 to i64
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs58 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx59 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs58, i32 0, i64 %idxprom57
  %str60 = bitcast %union.tcu* %arrayidx59 to i8**
  store i8* null, i8** %str60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %land.lhs.true, %sw.bb.36
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %34) #7
  unreachable

sw.epilog:                                        ; preds = %if.end.61, %sw.bb.28, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs62 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 83
  %arrayidx63 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs62, i32 0, i64 2
  %flg64 = bitcast %union.tcu* %arrayidx63 to i32*
  %37 = load i32, i32* %flg64, align 4
  %tobool65 = icmp ne i32 %37, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %for.end
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs68 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 83
  %arrayidx69 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs68, i32 0, i64 3
  %flg70 = bitcast %union.tcu* %arrayidx69 to i32*
  %39 = load i32, i32* %flg70, align 4
  %tobool71 = icmp ne i32 %39, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.67
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs74 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 83
  %arrayidx75 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs74, i32 0, i64 34
  %str76 = bitcast %union.tcu* %arrayidx75 to i8**
  %41 = load i8*, i8** %str76, align 8
  %tobool77 = icmp ne i8* %41, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.73
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.73
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs80 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 83
  %arrayidx81 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs80, i32 0, i64 5
  %str82 = bitcast %union.tcu* %arrayidx81 to i8**
  %43 = load i8*, i8** %str82, align 8
  %tobool83 = icmp ne i8* %43, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.79
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.79
  %call86 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #2
  store i8* %call86, i8** %s, align 8
  %tobool87 = icmp ne i8* %call86, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.96

land.lhs.true.88:                                 ; preds = %if.end.85
  %44 = load i8*, i8** %s, align 8
  %call89 = call i32 @atoi(i8* %44) #6
  store i32 %call89, i32* %i, align 4
  %cmp90 = icmp sgt i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %land.lhs.true.88
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs93 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 83
  %arrayidx94 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs93, i32 0, i64 1
  %num95 = bitcast %union.tcu* %arrayidx94 to i32*
  store i32 %45, i32* %num95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %land.lhs.true.88, %if.end.85
  %call97 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #2
  store i8* %call97, i8** %s, align 8
  %tobool98 = icmp ne i8* %call97, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.107

land.lhs.true.99:                                 ; preds = %if.end.96
  %47 = load i8*, i8** %s, align 8
  %call100 = call i32 @atoi(i8* %47) #6
  store i32 %call100, i32* %i, align 4
  %cmp101 = icmp sgt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %land.lhs.true.99
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs104 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 83
  %arrayidx105 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs104, i32 0, i64 0
  %num106 = bitcast %union.tcu* %arrayidx105 to i32*
  store i32 %48, i32* %num106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %land.lhs.true.99, %if.end.96
  %50 = load i32, i32* %wi.addr, align 4
  %tobool108 = icmp ne i32 %50, 0
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.end.107
  %51 = load i32, i32* %wi.addr, align 4
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs110 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx111 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs110, i32 0, i64 1
  %num112 = bitcast %union.tcu* %arrayidx111 to i32*
  store i32 %51, i32* %num112, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.107
  %53 = load i32, i32* %he.addr, align 4
  %tobool114 = icmp ne i32 %53, 0
  br i1 %tobool114, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %if.end.113
  %54 = load i32, i32* %he.addr, align 4
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs116 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 83
  %arrayidx117 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs116, i32 0, i64 0
  %num118 = bitcast %union.tcu* %arrayidx117 to i32*
  store i32 %54, i32* %num118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %if.end.113
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs120 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 83
  %arrayidx121 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs120, i32 0, i64 1
  %num122 = bitcast %union.tcu* %arrayidx121 to i32*
  %57 = load i32, i32* %num122, align 4
  %cmp123 = icmp sle i32 %57, 0
  br i1 %cmp123, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.end.119
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs126 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 83
  %arrayidx127 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs126, i32 0, i64 1
  %num128 = bitcast %union.tcu* %arrayidx127 to i32*
  store i32 80, i32* %num128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.end.119
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs130 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 83
  %arrayidx131 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs130, i32 0, i64 0
  %num132 = bitcast %union.tcu* %arrayidx131 to i32*
  %60 = load i32, i32* %num132, align 4
  %cmp133 = icmp sle i32 %60, 0
  br i1 %cmp133, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.129
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs136 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 83
  %arrayidx137 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs136, i32 0, i64 0
  %num138 = bitcast %union.tcu* %arrayidx137 to i32*
  store i32 24, i32* %num138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.129
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs140 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 83
  %arrayidx141 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs140, i32 0, i64 95
  %flg142 = bitcast %union.tcu* %arrayidx141 to i32*
  %63 = load i32, i32* %flg142, align 4
  %tobool143 = icmp ne i32 %63, 0
  br i1 %tobool143, label %if.then.144, label %if.end.270

if.then.144:                                      ; preds = %if.end.139
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs145 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 83
  %arrayidx146 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs145, i32 0, i64 60
  %str147 = bitcast %union.tcu* %arrayidx146 to i8**
  %65 = load i8*, i8** %str147, align 8
  %tobool148 = icmp ne i8* %65, null
  br i1 %tobool148, label %if.end.173, label %land.lhs.true.149

land.lhs.true.149:                                ; preds = %if.then.144
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs150 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 83
  %arrayidx151 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs150, i32 0, i64 55
  %str152 = bitcast %union.tcu* %arrayidx151 to i8**
  %67 = load i8*, i8** %str152, align 8
  %tobool153 = icmp ne i8* %67, null
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.173

land.lhs.true.154:                                ; preds = %land.lhs.true.149
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs155 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 83
  %arrayidx156 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs155, i32 0, i64 55
  %str157 = bitcast %union.tcu* %arrayidx156 to i8**
  %69 = load i8*, i8** %str157, align 8
  %call158 = call i8* @InStr(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %tobool159 = icmp ne i8* %call158, null
  br i1 %tobool159, label %if.then.166, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %land.lhs.true.154
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs161 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 83
  %arrayidx162 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs161, i32 0, i64 55
  %str163 = bitcast %union.tcu* %arrayidx162 to i8**
  %71 = load i8*, i8** %str163, align 8
  %call164 = call i8* @InStr(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %tobool165 = icmp ne i8* %call164, null
  br i1 %tobool165, label %if.then.166, label %if.end.173

if.then.166:                                      ; preds = %lor.lhs.false.160, %land.lhs.true.154
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs167 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 83
  %arrayidx168 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs167, i32 0, i64 60
  %str169 = bitcast %union.tcu* %arrayidx168 to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8** %str169, align 8
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs170 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 83
  %arrayidx171 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs170, i32 0, i64 61
  %str172 = bitcast %union.tcu* %arrayidx171 to i8**
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8** %str172, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.166, %lor.lhs.false.160, %land.lhs.true.149, %if.then.144
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs174 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 83
  %arrayidx175 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs174, i32 0, i64 64
  %str176 = bitcast %union.tcu* %arrayidx175 to i8**
  %75 = load i8*, i8** %str176, align 8
  %tobool177 = icmp ne i8* %75, null
  br i1 %tobool177, label %land.lhs.true.178, label %if.end.188

land.lhs.true.178:                                ; preds = %if.end.173
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs179 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 83
  %arrayidx180 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs179, i32 0, i64 64
  %str181 = bitcast %union.tcu* %arrayidx180 to i8**
  %77 = load i8*, i8** %str181, align 8
  %call182 = call i8* @InStr(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %tobool183 = icmp ne i8* %call182, null
  br i1 %tobool183, label %if.then.184, label %if.end.188

if.then.184:                                      ; preds = %land.lhs.true.178
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs185 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 83
  %arrayidx186 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs185, i32 0, i64 67
  %flg187 = bitcast %union.tcu* %arrayidx186 to i32*
  store i32 1, i32* %flg187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.184, %land.lhs.true.178, %if.end.173
  %79 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs189 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 83
  %arrayidx190 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs189, i32 0, i64 64
  %str191 = bitcast %union.tcu* %arrayidx190 to i8**
  %80 = load i8*, i8** %str191, align 8
  %tobool192 = icmp ne i8* %80, null
  br i1 %tobool192, label %land.lhs.true.193, label %if.end.209

land.lhs.true.193:                                ; preds = %if.end.188
  %81 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs194 = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 83
  %arrayidx195 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs194, i32 0, i64 64
  %str196 = bitcast %union.tcu* %arrayidx195 to i8**
  %82 = load i8*, i8** %str196, align 8
  %call197 = call i8* @InStr(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %tobool198 = icmp ne i8* %call197, null
  br i1 %tobool198, label %if.then.205, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.193
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs200 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 83
  %arrayidx201 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs200, i32 0, i64 64
  %str202 = bitcast %union.tcu* %arrayidx201 to i8**
  %84 = load i8*, i8** %str202, align 8
  %call203 = call i8* @InStr(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %tobool204 = icmp ne i8* %call203, null
  br i1 %tobool204, label %if.then.205, label %if.end.209

if.then.205:                                      ; preds = %lor.lhs.false.199, %land.lhs.true.193
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs206 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 83
  %arrayidx207 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs206, i32 0, i64 64
  %str208 = bitcast %union.tcu* %arrayidx207 to i8**
  store i8* null, i8** %str208, align 8
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.205, %lor.lhs.false.199, %if.end.188
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs210 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 83
  %arrayidx211 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs210, i32 0, i64 104
  %str212 = bitcast %union.tcu* %arrayidx211 to i8**
  %87 = load i8*, i8** %str212, align 8
  %tobool213 = icmp ne i8* %87, null
  br i1 %tobool213, label %land.lhs.true.214, label %lor.lhs.false.220

land.lhs.true.214:                                ; preds = %if.end.209
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs215 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 83
  %arrayidx216 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs215, i32 0, i64 104
  %str217 = bitcast %union.tcu* %arrayidx216 to i8**
  %89 = load i8*, i8** %str217, align 8
  %call218 = call i8* @InStr(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %tobool219 = icmp ne i8* %call218, null
  br i1 %tobool219, label %if.then.231, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %land.lhs.true.214, %if.end.209
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs221 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 83
  %arrayidx222 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs221, i32 0, i64 101
  %str223 = bitcast %union.tcu* %arrayidx222 to i8**
  %91 = load i8*, i8** %str223, align 8
  %tobool224 = icmp ne i8* %91, null
  br i1 %tobool224, label %land.lhs.true.225, label %if.end.235

land.lhs.true.225:                                ; preds = %lor.lhs.false.220
  %92 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs226 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 83
  %arrayidx227 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs226, i32 0, i64 101
  %str228 = bitcast %union.tcu* %arrayidx227 to i8**
  %93 = load i8*, i8** %str228, align 8
  %call229 = call i8* @InStr(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %tobool230 = icmp ne i8* %call229, null
  br i1 %tobool230, label %if.then.231, label %if.end.235

if.then.231:                                      ; preds = %land.lhs.true.225, %land.lhs.true.214
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs232 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 83
  %arrayidx233 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs232, i32 0, i64 97
  %flg234 = bitcast %union.tcu* %arrayidx233 to i32*
  store i32 1, i32* %flg234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.231, %land.lhs.true.225, %lor.lhs.false.220
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_termname236 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 13
  %arraydecay237 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname236, i32 0, i32 0
  %call238 = call i8* @InStr(i8* %arraydecay237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %tobool239 = icmp ne i8* %call238, null
  br i1 %tobool239, label %if.then.256, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %if.end.235
  %96 = load %struct.display*, %struct.display** @display, align 8
  %d_termname241 = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 13
  %arraydecay242 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname241, i32 0, i32 0
  %call243 = call i8* @InStr(i8* %arraydecay242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %tobool244 = icmp ne i8* %call243, null
  br i1 %tobool244, label %if.then.256, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false.240
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs246 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 83
  %arrayidx247 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs246, i32 0, i64 106
  %str248 = bitcast %union.tcu* %arrayidx247 to i8**
  %98 = load i8*, i8** %str248, align 8
  %tobool249 = icmp ne i8* %98, null
  br i1 %tobool249, label %land.lhs.true.250, label %if.end.260

land.lhs.true.250:                                ; preds = %lor.lhs.false.245
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs251 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 83
  %arrayidx252 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs251, i32 0, i64 106
  %str253 = bitcast %union.tcu* %arrayidx252 to i8**
  %100 = load i8*, i8** %str253, align 8
  %call254 = call i8* @InStr(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %tobool255 = icmp ne i8* %call254, null
  br i1 %tobool255, label %if.then.256, label %if.end.260

if.then.256:                                      ; preds = %land.lhs.true.250, %lor.lhs.false.240, %if.end.235
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs257 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 83
  %arrayidx258 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs257, i32 0, i64 96
  %flg259 = bitcast %union.tcu* %arrayidx258 to i32*
  store i32 1, i32* %flg259, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.256, %land.lhs.true.250, %lor.lhs.false.245
  %102 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs261 = getelementptr inbounds %struct.display, %struct.display* %102, i32 0, i32 83
  %arrayidx262 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs261, i32 0, i64 96
  %flg263 = bitcast %union.tcu* %arrayidx262 to i32*
  %103 = load i32, i32* %flg263, align 4
  %tobool264 = icmp ne i32 %103, 0
  br i1 %tobool264, label %if.then.265, label %if.end.269

if.then.265:                                      ; preds = %if.end.260
  %104 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs266 = getelementptr inbounds %struct.display, %struct.display* %104, i32 0, i32 83
  %arrayidx267 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs266, i32 0, i64 66
  %flg268 = bitcast %union.tcu* %arrayidx267 to i32*
  store i32 1, i32* %flg268, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.265, %if.end.260
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.139
  %105 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 6), align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 6), align 4
  %cmp271 = icmp eq i32 %105, %106
  br i1 %cmp271, label %if.then.273, label %if.end.287

if.then.273:                                      ; preds = %if.end.270
  %107 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs274 = getelementptr inbounds %struct.display, %struct.display* %107, i32 0, i32 83
  %arrayidx275 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs274, i32 0, i64 88
  %flg276 = bitcast %union.tcu* %arrayidx275 to i32*
  %108 = load i32, i32* %flg276, align 4
  %tobool277 = icmp ne i32 %108, 0
  br i1 %tobool277, label %cond.true.278, label %cond.false.279

cond.true.278:                                    ; preds = %if.then.273
  br label %cond.end.285

cond.false.279:                                   ; preds = %if.then.273
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs280 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 83
  %arrayidx281 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs280, i32 0, i64 89
  %flg282 = bitcast %union.tcu* %arrayidx281 to i32*
  %110 = load i32, i32* %flg282, align 4
  %tobool283 = icmp ne i32 %110, 0
  %cond284 = select i1 %tobool283, i32 1, i32 4
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.279, %cond.true.278
  %cond286 = phi i32 [ 0, %cond.true.278 ], [ %cond284, %cond.false.279 ]
  store i32 %cond286, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 6), align 4
  br label %if.end.287

if.end.287:                                       ; preds = %cond.end.285, %if.end.270
  %111 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs288 = getelementptr inbounds %struct.display, %struct.display* %111, i32 0, i32 83
  %arrayidx289 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs288, i32 0, i64 83
  %flg290 = bitcast %union.tcu* %arrayidx289 to i32*
  %112 = load i32, i32* %flg290, align 4
  %tobool291 = icmp ne i32 %112, 0
  br i1 %tobool291, label %lor.lhs.false.292, label %lor.end

lor.lhs.false.292:                                ; preds = %if.end.287
  %113 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs293 = getelementptr inbounds %struct.display, %struct.display* %113, i32 0, i32 83
  %arrayidx294 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs293, i32 0, i64 84
  %flg295 = bitcast %union.tcu* %arrayidx294 to i32*
  %114 = load i32, i32* %flg295, align 4
  %tobool296 = icmp ne i32 %114, 0
  br i1 %tobool296, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.292
  %115 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs297 = getelementptr inbounds %struct.display, %struct.display* %115, i32 0, i32 83
  %arrayidx298 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs297, i32 0, i64 85
  %flg299 = bitcast %union.tcu* %arrayidx298 to i32*
  %116 = load i32, i32* %flg299, align 4
  %tobool300 = icmp ne i32 %116, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.292, %if.end.287
  %117 = phi i1 [ true, %lor.lhs.false.292 ], [ true, %if.end.287 ], [ %tobool300, %lor.rhs ]
  %lor.ext = zext i1 %117 to i32
  %118 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs301 = getelementptr inbounds %struct.display, %struct.display* %118, i32 0, i32 83
  %arrayidx302 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs301, i32 0, i64 87
  %flg303 = bitcast %union.tcu* %arrayidx302 to i32*
  %119 = load i32, i32* %flg303, align 4
  %or = or i32 %119, %lor.ext
  store i32 %or, i32* %flg303, align 4
  %120 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs304 = getelementptr inbounds %struct.display, %struct.display* %120, i32 0, i32 83
  %arrayidx305 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs304, i32 0, i64 42
  %str306 = bitcast %union.tcu* %arrayidx305 to i8**
  %121 = load i8*, i8** %str306, align 8
  %tobool307 = icmp ne i8* %121, null
  br i1 %tobool307, label %if.end.312, label %if.then.308

if.then.308:                                      ; preds = %lor.end
  %122 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs309 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 83
  %arrayidx310 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs309, i32 0, i64 42
  %str311 = bitcast %union.tcu* %arrayidx310 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8** %str311, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.308, %lor.end
  %123 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs313 = getelementptr inbounds %struct.display, %struct.display* %123, i32 0, i32 83
  %arrayidx314 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs313, i32 0, i64 13
  %str315 = bitcast %union.tcu* %arrayidx314 to i8**
  %124 = load i8*, i8** %str315, align 8
  %tobool316 = icmp ne i8* %124, null
  br i1 %tobool316, label %if.end.333, label %if.then.317

if.then.317:                                      ; preds = %if.end.312
  %125 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs318 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 83
  %arrayidx319 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs318, i32 0, i64 12
  %flg320 = bitcast %union.tcu* %arrayidx319 to i32*
  %126 = load i32, i32* %flg320, align 4
  %tobool321 = icmp ne i32 %126, 0
  br i1 %tobool321, label %if.then.322, label %if.else

if.then.322:                                      ; preds = %if.then.317
  %127 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs323 = getelementptr inbounds %struct.display, %struct.display* %127, i32 0, i32 83
  %arrayidx324 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs323, i32 0, i64 13
  %str325 = bitcast %union.tcu* %arrayidx324 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8** %str325, align 8
  br label %if.end.332

if.else:                                          ; preds = %if.then.317
  %128 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs326 = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 83
  %arrayidx327 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs326, i32 0, i64 14
  %str328 = bitcast %union.tcu* %arrayidx327 to i8**
  %129 = load i8*, i8** %str328, align 8
  %130 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs329 = getelementptr inbounds %struct.display, %struct.display* %130, i32 0, i32 83
  %arrayidx330 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs329, i32 0, i64 13
  %str331 = bitcast %union.tcu* %arrayidx330 to i8**
  store i8* %129, i8** %str331, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.else, %if.then.322
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.end.312
  %131 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs334 = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 83
  %arrayidx335 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs334, i32 0, i64 7
  %str336 = bitcast %union.tcu* %arrayidx335 to i8**
  %132 = load i8*, i8** %str336, align 8
  %tobool337 = icmp ne i8* %132, null
  br i1 %tobool337, label %if.end.342, label %if.then.338

if.then.338:                                      ; preds = %if.end.333
  %133 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs339 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 83
  %arrayidx340 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs339, i32 0, i64 7
  %str341 = bitcast %union.tcu* %arrayidx340 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8** %str341, align 8
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.338, %if.end.333
  %134 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs343 = getelementptr inbounds %struct.display, %struct.display* %134, i32 0, i32 83
  %arrayidx344 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs343, i32 0, i64 19
  %str345 = bitcast %union.tcu* %arrayidx344 to i8**
  %135 = load i8*, i8** %str345, align 8
  %tobool346 = icmp ne i8* %135, null
  br i1 %tobool346, label %if.end.351, label %if.then.347

if.then.347:                                      ; preds = %if.end.342
  %136 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs348 = getelementptr inbounds %struct.display, %struct.display* %136, i32 0, i32 83
  %arrayidx349 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs348, i32 0, i64 19
  %str350 = bitcast %union.tcu* %arrayidx349 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8** %str350, align 8
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.347, %if.end.342
  %137 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs352 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 83
  %arrayidx353 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs352, i32 0, i64 58
  %num354 = bitcast %union.tcu* %arrayidx353 to i32*
  %138 = load i32, i32* %num354, align 4
  %cmp355 = icmp sgt i32 %138, 0
  br i1 %cmp355, label %if.then.357, label %if.end.364

if.then.357:                                      ; preds = %if.end.351
  %139 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs358 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 83
  %arrayidx359 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs358, i32 0, i64 53
  %str360 = bitcast %union.tcu* %arrayidx359 to i8**
  store i8* null, i8** %str360, align 8
  %140 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs361 = getelementptr inbounds %struct.display, %struct.display* %140, i32 0, i32 83
  %arrayidx362 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs361, i32 0, i64 48
  %str363 = bitcast %union.tcu* %arrayidx362 to i8**
  store i8* null, i8** %str363, align 8
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.357, %if.end.351
  %141 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs365 = getelementptr inbounds %struct.display, %struct.display* %141, i32 0, i32 83
  %arrayidx366 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs365, i32 0, i64 57
  %num367 = bitcast %union.tcu* %arrayidx366 to i32*
  %142 = load i32, i32* %num367, align 4
  %cmp368 = icmp sgt i32 %142, 0
  br i1 %cmp368, label %if.then.370, label %if.end.377

if.then.370:                                      ; preds = %if.end.364
  %143 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs371 = getelementptr inbounds %struct.display, %struct.display* %143, i32 0, i32 83
  %arrayidx372 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs371, i32 0, i64 54
  %str373 = bitcast %union.tcu* %arrayidx372 to i8**
  store i8* null, i8** %str373, align 8
  %144 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs374 = getelementptr inbounds %struct.display, %struct.display* %144, i32 0, i32 83
  %arrayidx375 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs374, i32 0, i64 51
  %str376 = bitcast %union.tcu* %arrayidx375 to i8**
  store i8* null, i8** %str376, align 8
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.370, %if.end.364
  %145 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs378 = getelementptr inbounds %struct.display, %struct.display* %145, i32 0, i32 83
  %arrayidx379 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs378, i32 0, i64 58
  %num380 = bitcast %union.tcu* %arrayidx379 to i32*
  %146 = load i32, i32* %num380, align 4
  %cmp381 = icmp sgt i32 %146, 0
  br i1 %cmp381, label %land.lhs.true.383, label %if.end.405

land.lhs.true.383:                                ; preds = %if.end.377
  %147 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs384 = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 83
  %arrayidx385 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs384, i32 0, i64 57
  %num386 = bitcast %union.tcu* %arrayidx385 to i32*
  %148 = load i32, i32* %num386, align 4
  %cmp387 = icmp sgt i32 %148, 0
  br i1 %cmp387, label %if.then.389, label %if.end.405

if.then.389:                                      ; preds = %land.lhs.true.383
  %149 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs390 = getelementptr inbounds %struct.display, %struct.display* %149, i32 0, i32 83
  %arrayidx391 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs390, i32 0, i64 55
  %str392 = bitcast %union.tcu* %arrayidx391 to i8**
  store i8* null, i8** %str392, align 8
  %150 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs393 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 83
  %arrayidx394 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs393, i32 0, i64 52
  %str395 = bitcast %union.tcu* %arrayidx394 to i8**
  store i8* null, i8** %str395, align 8
  %151 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs396 = getelementptr inbounds %struct.display, %struct.display* %151, i32 0, i32 83
  %arrayidx397 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs396, i32 0, i64 50
  %str398 = bitcast %union.tcu* %arrayidx397 to i8**
  store i8* null, i8** %str398, align 8
  %152 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs399 = getelementptr inbounds %struct.display, %struct.display* %152, i32 0, i32 83
  %arrayidx400 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs399, i32 0, i64 49
  %str401 = bitcast %union.tcu* %arrayidx400 to i8**
  store i8* null, i8** %str401, align 8
  %153 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs402 = getelementptr inbounds %struct.display, %struct.display* %153, i32 0, i32 83
  %arrayidx403 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs402, i32 0, i64 47
  %str404 = bitcast %union.tcu* %arrayidx403 to i8**
  store i8* null, i8** %str404, align 8
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.389, %land.lhs.true.383, %if.end.377
  store i32 4, i32* %xue, align 4
  store i32 2, i32* %xse, align 4
  store i32 1, i32* %xme, align 4
  %154 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs406 = getelementptr inbounds %struct.display, %struct.display* %154, i32 0, i32 83
  %arrayidx407 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs406, i32 0, i64 51
  %str408 = bitcast %union.tcu* %arrayidx407 to i8**
  %155 = load i8*, i8** %str408, align 8
  %tobool409 = icmp ne i8* %155, null
  br i1 %tobool409, label %land.lhs.true.410, label %if.end.427

land.lhs.true.410:                                ; preds = %if.end.405
  %156 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs411 = getelementptr inbounds %struct.display, %struct.display* %156, i32 0, i32 83
  %arrayidx412 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs411, i32 0, i64 54
  %str413 = bitcast %union.tcu* %arrayidx412 to i8**
  %157 = load i8*, i8** %str413, align 8
  %cmp414 = icmp eq i8* %157, null
  br i1 %cmp414, label %if.then.416, label %if.end.427

if.then.416:                                      ; preds = %land.lhs.true.410
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0))
  %158 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs417 = getelementptr inbounds %struct.display, %struct.display* %158, i32 0, i32 83
  %arrayidx418 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs417, i32 0, i64 55
  %str419 = bitcast %union.tcu* %arrayidx418 to i8**
  %159 = load i8*, i8** %str419, align 8
  %tobool420 = icmp ne i8* %159, null
  br i1 %tobool420, label %if.then.421, label %if.else.422

if.then.421:                                      ; preds = %if.then.416
  %160 = load i32, i32* %xme, align 4
  store i32 %160, i32* %xse, align 4
  br label %if.end.426

if.else.422:                                      ; preds = %if.then.416
  %161 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs423 = getelementptr inbounds %struct.display, %struct.display* %161, i32 0, i32 83
  %arrayidx424 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs423, i32 0, i64 51
  %str425 = bitcast %union.tcu* %arrayidx424 to i8**
  store i8* null, i8** %str425, align 8
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.422, %if.then.421
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %land.lhs.true.410, %if.end.405
  %162 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs428 = getelementptr inbounds %struct.display, %struct.display* %162, i32 0, i32 83
  %arrayidx429 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs428, i32 0, i64 48
  %str430 = bitcast %union.tcu* %arrayidx429 to i8**
  %163 = load i8*, i8** %str430, align 8
  %tobool431 = icmp ne i8* %163, null
  br i1 %tobool431, label %land.lhs.true.432, label %if.end.449

land.lhs.true.432:                                ; preds = %if.end.427
  %164 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs433 = getelementptr inbounds %struct.display, %struct.display* %164, i32 0, i32 83
  %arrayidx434 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs433, i32 0, i64 53
  %str435 = bitcast %union.tcu* %arrayidx434 to i8**
  %165 = load i8*, i8** %str435, align 8
  %cmp436 = icmp eq i8* %165, null
  br i1 %cmp436, label %if.then.438, label %if.end.449

if.then.438:                                      ; preds = %land.lhs.true.432
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0))
  %166 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs439 = getelementptr inbounds %struct.display, %struct.display* %166, i32 0, i32 83
  %arrayidx440 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs439, i32 0, i64 55
  %str441 = bitcast %union.tcu* %arrayidx440 to i8**
  %167 = load i8*, i8** %str441, align 8
  %tobool442 = icmp ne i8* %167, null
  br i1 %tobool442, label %if.then.443, label %if.else.444

if.then.443:                                      ; preds = %if.then.438
  %168 = load i32, i32* %xme, align 4
  store i32 %168, i32* %xue, align 4
  br label %if.end.448

if.else.444:                                      ; preds = %if.then.438
  %169 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs445 = getelementptr inbounds %struct.display, %struct.display* %169, i32 0, i32 83
  %arrayidx446 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs445, i32 0, i64 48
  %str447 = bitcast %union.tcu* %arrayidx446 to i8**
  store i8* null, i8** %str447, align 8
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.444, %if.then.443
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %land.lhs.true.432, %if.end.427
  %170 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs450 = getelementptr inbounds %struct.display, %struct.display* %170, i32 0, i32 83
  %arrayidx451 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs450, i32 0, i64 47
  %str452 = bitcast %union.tcu* %arrayidx451 to i8**
  %171 = load i8*, i8** %str452, align 8
  %tobool453 = icmp ne i8* %171, null
  br i1 %tobool453, label %land.lhs.true.469, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %if.end.449
  %172 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs455 = getelementptr inbounds %struct.display, %struct.display* %172, i32 0, i32 83
  %arrayidx456 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs455, i32 0, i64 49
  %str457 = bitcast %union.tcu* %arrayidx456 to i8**
  %173 = load i8*, i8** %str457, align 8
  %tobool458 = icmp ne i8* %173, null
  br i1 %tobool458, label %land.lhs.true.469, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %lor.lhs.false.454
  %174 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs460 = getelementptr inbounds %struct.display, %struct.display* %174, i32 0, i32 83
  %arrayidx461 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs460, i32 0, i64 50
  %str462 = bitcast %union.tcu* %arrayidx461 to i8**
  %175 = load i8*, i8** %str462, align 8
  %tobool463 = icmp ne i8* %175, null
  br i1 %tobool463, label %land.lhs.true.469, label %lor.lhs.false.464

lor.lhs.false.464:                                ; preds = %lor.lhs.false.459
  %176 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs465 = getelementptr inbounds %struct.display, %struct.display* %176, i32 0, i32 83
  %arrayidx466 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs465, i32 0, i64 52
  %str467 = bitcast %union.tcu* %arrayidx466 to i8**
  %177 = load i8*, i8** %str467, align 8
  %tobool468 = icmp ne i8* %177, null
  br i1 %tobool468, label %land.lhs.true.469, label %if.end.488

land.lhs.true.469:                                ; preds = %lor.lhs.false.464, %lor.lhs.false.459, %lor.lhs.false.454, %if.end.449
  %178 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs470 = getelementptr inbounds %struct.display, %struct.display* %178, i32 0, i32 83
  %arrayidx471 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs470, i32 0, i64 55
  %str472 = bitcast %union.tcu* %arrayidx471 to i8**
  %179 = load i8*, i8** %str472, align 8
  %cmp473 = icmp eq i8* %179, null
  br i1 %cmp473, label %if.then.475, label %if.end.488

if.then.475:                                      ; preds = %land.lhs.true.469
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0))
  %180 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs476 = getelementptr inbounds %struct.display, %struct.display* %180, i32 0, i32 83
  %arrayidx477 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs476, i32 0, i64 52
  %str478 = bitcast %union.tcu* %arrayidx477 to i8**
  store i8* null, i8** %str478, align 8
  %181 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs479 = getelementptr inbounds %struct.display, %struct.display* %181, i32 0, i32 83
  %arrayidx480 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs479, i32 0, i64 50
  %str481 = bitcast %union.tcu* %arrayidx480 to i8**
  store i8* null, i8** %str481, align 8
  %182 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs482 = getelementptr inbounds %struct.display, %struct.display* %182, i32 0, i32 83
  %arrayidx483 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs482, i32 0, i64 49
  %str484 = bitcast %union.tcu* %arrayidx483 to i8**
  store i8* null, i8** %str484, align 8
  %183 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs485 = getelementptr inbounds %struct.display, %struct.display* %183, i32 0, i32 83
  %arrayidx486 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs485, i32 0, i64 47
  %str487 = bitcast %union.tcu* %arrayidx486 to i8**
  store i8* null, i8** %str487, align 8
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.475, %land.lhs.true.469, %lor.lhs.false.464
  %184 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs489 = getelementptr inbounds %struct.display, %struct.display* %184, i32 0, i32 83
  %arrayidx490 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs489, i32 0, i64 53
  %str491 = bitcast %union.tcu* %arrayidx490 to i8**
  %185 = load i8*, i8** %str491, align 8
  %tobool492 = icmp ne i8* %185, null
  br i1 %tobool492, label %land.lhs.true.493, label %if.end.509

land.lhs.true.493:                                ; preds = %if.end.488
  %186 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs494 = getelementptr inbounds %struct.display, %struct.display* %186, i32 0, i32 83
  %arrayidx495 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs494, i32 0, i64 54
  %str496 = bitcast %union.tcu* %arrayidx495 to i8**
  %187 = load i8*, i8** %str496, align 8
  %tobool497 = icmp ne i8* %187, null
  br i1 %tobool497, label %land.lhs.true.498, label %if.end.509

land.lhs.true.498:                                ; preds = %land.lhs.true.493
  %188 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs499 = getelementptr inbounds %struct.display, %struct.display* %188, i32 0, i32 83
  %arrayidx500 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs499, i32 0, i64 54
  %str501 = bitcast %union.tcu* %arrayidx500 to i8**
  %189 = load i8*, i8** %str501, align 8
  %190 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs502 = getelementptr inbounds %struct.display, %struct.display* %190, i32 0, i32 83
  %arrayidx503 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs502, i32 0, i64 53
  %str504 = bitcast %union.tcu* %arrayidx503 to i8**
  %191 = load i8*, i8** %str504, align 8
  %call505 = call i32 @strcmp(i8* %189, i8* %191) #6
  %cmp506 = icmp eq i32 %call505, 0
  br i1 %cmp506, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %land.lhs.true.498
  %192 = load i32, i32* %xue, align 4
  store i32 %192, i32* %xse, align 4
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.508, %land.lhs.true.498, %land.lhs.true.493, %if.end.488
  %193 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs510 = getelementptr inbounds %struct.display, %struct.display* %193, i32 0, i32 83
  %arrayidx511 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs510, i32 0, i64 54
  %str512 = bitcast %union.tcu* %arrayidx511 to i8**
  %194 = load i8*, i8** %str512, align 8
  %tobool513 = icmp ne i8* %194, null
  br i1 %tobool513, label %land.lhs.true.514, label %if.end.530

land.lhs.true.514:                                ; preds = %if.end.509
  %195 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs515 = getelementptr inbounds %struct.display, %struct.display* %195, i32 0, i32 83
  %arrayidx516 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs515, i32 0, i64 55
  %str517 = bitcast %union.tcu* %arrayidx516 to i8**
  %196 = load i8*, i8** %str517, align 8
  %tobool518 = icmp ne i8* %196, null
  br i1 %tobool518, label %land.lhs.true.519, label %if.end.530

land.lhs.true.519:                                ; preds = %land.lhs.true.514
  %197 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs520 = getelementptr inbounds %struct.display, %struct.display* %197, i32 0, i32 83
  %arrayidx521 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs520, i32 0, i64 55
  %str522 = bitcast %union.tcu* %arrayidx521 to i8**
  %198 = load i8*, i8** %str522, align 8
  %199 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs523 = getelementptr inbounds %struct.display, %struct.display* %199, i32 0, i32 83
  %arrayidx524 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs523, i32 0, i64 54
  %str525 = bitcast %union.tcu* %arrayidx524 to i8**
  %200 = load i8*, i8** %str525, align 8
  %call526 = call i32 @strcmp(i8* %198, i8* %200) #6
  %cmp527 = icmp eq i32 %call526, 0
  br i1 %cmp527, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %land.lhs.true.519
  %201 = load i32, i32* %xme, align 4
  store i32 %201, i32* %xse, align 4
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.529, %land.lhs.true.519, %land.lhs.true.514, %if.end.509
  %202 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs531 = getelementptr inbounds %struct.display, %struct.display* %202, i32 0, i32 83
  %arrayidx532 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs531, i32 0, i64 53
  %str533 = bitcast %union.tcu* %arrayidx532 to i8**
  %203 = load i8*, i8** %str533, align 8
  %tobool534 = icmp ne i8* %203, null
  br i1 %tobool534, label %land.lhs.true.535, label %if.end.551

land.lhs.true.535:                                ; preds = %if.end.530
  %204 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs536 = getelementptr inbounds %struct.display, %struct.display* %204, i32 0, i32 83
  %arrayidx537 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs536, i32 0, i64 55
  %str538 = bitcast %union.tcu* %arrayidx537 to i8**
  %205 = load i8*, i8** %str538, align 8
  %tobool539 = icmp ne i8* %205, null
  br i1 %tobool539, label %land.lhs.true.540, label %if.end.551

land.lhs.true.540:                                ; preds = %land.lhs.true.535
  %206 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs541 = getelementptr inbounds %struct.display, %struct.display* %206, i32 0, i32 83
  %arrayidx542 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs541, i32 0, i64 55
  %str543 = bitcast %union.tcu* %arrayidx542 to i8**
  %207 = load i8*, i8** %str543, align 8
  %208 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs544 = getelementptr inbounds %struct.display, %struct.display* %208, i32 0, i32 83
  %arrayidx545 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs544, i32 0, i64 53
  %str546 = bitcast %union.tcu* %arrayidx545 to i8**
  %209 = load i8*, i8** %str546, align 8
  %call547 = call i32 @strcmp(i8* %207, i8* %209) #6
  %cmp548 = icmp eq i32 %call547, 0
  br i1 %cmp548, label %if.then.550, label %if.end.551

if.then.550:                                      ; preds = %land.lhs.true.540
  %210 = load i32, i32* %xme, align 4
  store i32 %210, i32* %xue, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.550, %land.lhs.true.540, %land.lhs.true.535, %if.end.530
  store i32 0, i32* %i, align 4
  br label %for.cond.552

for.cond.552:                                     ; preds = %for.inc.578, %if.end.551
  %211 = load i32, i32* %i, align 4
  %cmp553 = icmp slt i32 %211, 6
  br i1 %cmp553, label %for.body.555, label %for.end.580

for.body.555:                                     ; preds = %for.cond.552
  %212 = load i32, i32* %i, align 4
  %add556 = add nsw i32 47, %212
  %idxprom557 = sext i32 %add556 to i64
  %213 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs558 = getelementptr inbounds %struct.display, %struct.display* %213, i32 0, i32 83
  %arrayidx559 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs558, i32 0, i64 %idxprom557
  %str560 = bitcast %union.tcu* %arrayidx559 to i8**
  %214 = load i8*, i8** %str560, align 8
  %215 = load i32, i32* %i, align 4
  %idxprom561 = sext i32 %215 to i64
  %216 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab = getelementptr inbounds %struct.display, %struct.display* %216, i32 0, i32 84
  %arrayidx562 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab, i32 0, i64 %idxprom561
  store i8* %214, i8** %arrayidx562, align 8
  %217 = load i32, i32* %i, align 4
  %cmp563 = icmp eq i32 %217, 4
  br i1 %cmp563, label %cond.true.565, label %cond.false.566

cond.true.565:                                    ; preds = %for.body.555
  %218 = load i32, i32* %xse, align 4
  br label %cond.end.573

cond.false.566:                                   ; preds = %for.body.555
  %219 = load i32, i32* %i, align 4
  %cmp567 = icmp eq i32 %219, 1
  br i1 %cmp567, label %cond.true.569, label %cond.false.570

cond.true.569:                                    ; preds = %cond.false.566
  %220 = load i32, i32* %xue, align 4
  br label %cond.end.571

cond.false.570:                                   ; preds = %cond.false.566
  %221 = load i32, i32* %xme, align 4
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.false.570, %cond.true.569
  %cond572 = phi i32 [ %220, %cond.true.569 ], [ %221, %cond.false.570 ]
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.end.571, %cond.true.565
  %cond574 = phi i32 [ %218, %cond.true.565 ], [ %cond572, %cond.end.571 ]
  %conv575 = trunc i32 %cond574 to i8
  %222 = load i32, i32* %i, align 4
  %idxprom576 = sext i32 %222 to i64
  %223 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtyp = getelementptr inbounds %struct.display, %struct.display* %223, i32 0, i32 85
  %arrayidx577 = getelementptr inbounds [6 x i8], [6 x i8]* %d_attrtyp, i32 0, i64 %idxprom576
  store i8 %conv575, i8* %arrayidx577, align 1
  br label %for.inc.578

for.inc.578:                                      ; preds = %cond.end.573
  %224 = load i32, i32* %i, align 4
  %inc579 = add nsw i32 %224, 1
  store i32 %inc579, i32* %i, align 4
  br label %for.cond.552

for.end.580:                                      ; preds = %for.cond.552
  store i8* null, i8** %s, align 8
  store i32 0, i32* %t, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.581

for.cond.581:                                     ; preds = %for.inc.595, %for.end.580
  %225 = load i32, i32* %i, align 4
  %cmp582 = icmp slt i32 %225, 6
  br i1 %cmp582, label %for.body.584, label %for.end.597

for.body.584:                                     ; preds = %for.cond.581
  %226 = load i32, i32* %i, align 4
  %idxprom585 = sext i32 %226 to i64
  %227 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab586 = getelementptr inbounds %struct.display, %struct.display* %227, i32 0, i32 84
  %arrayidx587 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab586, i32 0, i64 %idxprom585
  %228 = load i8*, i8** %arrayidx587, align 8
  store i8* %228, i8** %s, align 8
  %tobool588 = icmp ne i8* %228, null
  br i1 %tobool588, label %if.then.589, label %if.end.594

if.then.589:                                      ; preds = %for.body.584
  %229 = load i32, i32* %i, align 4
  %idxprom590 = sext i32 %229 to i64
  %230 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtyp591 = getelementptr inbounds %struct.display, %struct.display* %230, i32 0, i32 85
  %arrayidx592 = getelementptr inbounds [6 x i8], [6 x i8]* %d_attrtyp591, i32 0, i64 %idxprom590
  %231 = load i8, i8* %arrayidx592, align 1
  %conv593 = sext i8 %231 to i32
  store i32 %conv593, i32* %t, align 4
  br label %for.end.597

if.end.594:                                       ; preds = %for.body.584
  br label %for.inc.595

for.inc.595:                                      ; preds = %if.end.594
  %232 = load i32, i32* %i, align 4
  %inc596 = add nsw i32 %232, 1
  store i32 %inc596, i32* %i, align 4
  br label %for.cond.581

for.end.597:                                      ; preds = %if.then.589, %for.cond.581
  store i32 0, i32* %i, align 4
  br label %for.cond.598

for.cond.598:                                     ; preds = %for.inc.624, %for.end.597
  %233 = load i32, i32* %i, align 4
  %cmp599 = icmp slt i32 %233, 6
  br i1 %cmp599, label %for.body.601, label %for.end.626

for.body.601:                                     ; preds = %for.cond.598
  %234 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %234 to i64
  %235 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab603 = getelementptr inbounds %struct.display, %struct.display* %235, i32 0, i32 84
  %arrayidx604 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab603, i32 0, i64 %idxprom602
  %236 = load i8*, i8** %arrayidx604, align 8
  %cmp605 = icmp eq i8* %236, null
  br i1 %cmp605, label %if.then.607, label %if.else.615

if.then.607:                                      ; preds = %for.body.601
  %237 = load i8*, i8** %s, align 8
  %238 = load i32, i32* %i, align 4
  %idxprom608 = sext i32 %238 to i64
  %239 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab609 = getelementptr inbounds %struct.display, %struct.display* %239, i32 0, i32 84
  %arrayidx610 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab609, i32 0, i64 %idxprom608
  store i8* %237, i8** %arrayidx610, align 8
  %240 = load i32, i32* %t, align 4
  %conv611 = trunc i32 %240 to i8
  %241 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %241 to i64
  %242 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtyp613 = getelementptr inbounds %struct.display, %struct.display* %242, i32 0, i32 85
  %arrayidx614 = getelementptr inbounds [6 x i8], [6 x i8]* %d_attrtyp613, i32 0, i64 %idxprom612
  store i8 %conv611, i8* %arrayidx614, align 1
  br label %if.end.623

if.else.615:                                      ; preds = %for.body.601
  %243 = load i32, i32* %i, align 4
  %idxprom616 = sext i32 %243 to i64
  %244 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab617 = getelementptr inbounds %struct.display, %struct.display* %244, i32 0, i32 84
  %arrayidx618 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab617, i32 0, i64 %idxprom616
  %245 = load i8*, i8** %arrayidx618, align 8
  store i8* %245, i8** %s, align 8
  %246 = load i32, i32* %i, align 4
  %idxprom619 = sext i32 %246 to i64
  %247 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtyp620 = getelementptr inbounds %struct.display, %struct.display* %247, i32 0, i32 85
  %arrayidx621 = getelementptr inbounds [6 x i8], [6 x i8]* %d_attrtyp620, i32 0, i64 %idxprom619
  %248 = load i8, i8* %arrayidx621, align 1
  %conv622 = sext i8 %248 to i32
  store i32 %conv622, i32* %t, align 4
  br label %if.end.623

if.end.623:                                       ; preds = %if.else.615, %if.then.607
  br label %for.inc.624

for.inc.624:                                      ; preds = %if.end.623
  %249 = load i32, i32* %i, align 4
  %inc625 = add nsw i32 %249, 1
  store i32 %inc625, i32* %i, align 4
  br label %for.cond.598

for.end.626:                                      ; preds = %for.cond.598
  %250 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs627 = getelementptr inbounds %struct.display, %struct.display* %250, i32 0, i32 83
  %arrayidx628 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs627, i32 0, i64 60
  %str629 = bitcast %union.tcu* %arrayidx628 to i8**
  %251 = load i8*, i8** %str629, align 8
  %tobool630 = icmp ne i8* %251, null
  br i1 %tobool630, label %if.then.646, label %lor.lhs.false.631

lor.lhs.false.631:                                ; preds = %for.end.626
  %252 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs632 = getelementptr inbounds %struct.display, %struct.display* %252, i32 0, i32 83
  %arrayidx633 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs632, i32 0, i64 61
  %str634 = bitcast %union.tcu* %arrayidx633 to i8**
  %253 = load i8*, i8** %str634, align 8
  %tobool635 = icmp ne i8* %253, null
  br i1 %tobool635, label %if.then.646, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %lor.lhs.false.631
  %254 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs637 = getelementptr inbounds %struct.display, %struct.display* %254, i32 0, i32 83
  %arrayidx638 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs637, i32 0, i64 62
  %str639 = bitcast %union.tcu* %arrayidx638 to i8**
  %255 = load i8*, i8** %str639, align 8
  %tobool640 = icmp ne i8* %255, null
  br i1 %tobool640, label %if.then.646, label %lor.lhs.false.641

lor.lhs.false.641:                                ; preds = %lor.lhs.false.636
  %256 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs642 = getelementptr inbounds %struct.display, %struct.display* %256, i32 0, i32 83
  %arrayidx643 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs642, i32 0, i64 63
  %str644 = bitcast %union.tcu* %arrayidx643 to i8**
  %257 = load i8*, i8** %str644, align 8
  %tobool645 = icmp ne i8* %257, null
  br i1 %tobool645, label %if.then.646, label %if.end.647

if.then.646:                                      ; preds = %lor.lhs.false.641, %lor.lhs.false.636, %lor.lhs.false.631, %for.end.626
  %258 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %258, i32 0, i32 86
  store i32 1, i32* %d_hascolor, align 4
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.646, %lor.lhs.false.641
  %259 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs648 = getelementptr inbounds %struct.display, %struct.display* %259, i32 0, i32 83
  %arrayidx649 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs648, i32 0, i64 33
  %flg650 = bitcast %union.tcu* %arrayidx649 to i32*
  %260 = load i32, i32* %flg650, align 4
  %tobool651 = icmp ne i32 %260, 0
  br i1 %tobool651, label %if.then.652, label %if.end.656

if.then.652:                                      ; preds = %if.end.647
  %261 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs653 = getelementptr inbounds %struct.display, %struct.display* %261, i32 0, i32 83
  %arrayidx654 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs653, i32 0, i64 66
  %flg655 = bitcast %union.tcu* %arrayidx654 to i32*
  store i32 1, i32* %flg655, align 4
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.652, %if.end.647
  %262 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs657 = getelementptr inbounds %struct.display, %struct.display* %262, i32 0, i32 83
  %arrayidx658 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs657, i32 0, i64 10
  %str659 = bitcast %union.tcu* %arrayidx658 to i8**
  %263 = load i8*, i8** %str659, align 8
  %tobool660 = icmp ne i8* %263, null
  br i1 %tobool660, label %if.end.668, label %if.then.661

if.then.661:                                      ; preds = %if.end.656
  %264 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs662 = getelementptr inbounds %struct.display, %struct.display* %264, i32 0, i32 83
  %arrayidx663 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs662, i32 0, i64 19
  %str664 = bitcast %union.tcu* %arrayidx663 to i8**
  %265 = load i8*, i8** %str664, align 8
  %266 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs665 = getelementptr inbounds %struct.display, %struct.display* %266, i32 0, i32 83
  %arrayidx666 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs665, i32 0, i64 10
  %str667 = bitcast %union.tcu* %arrayidx666 to i8**
  store i8* %265, i8** %str667, align 8
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.661, %if.end.656
  %267 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs669 = getelementptr inbounds %struct.display, %struct.display* %267, i32 0, i32 83
  %arrayidx670 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs669, i32 0, i64 20
  %str671 = bitcast %union.tcu* %arrayidx670 to i8**
  %268 = load i8*, i8** %str671, align 8
  %tobool672 = icmp ne i8* %268, null
  br i1 %tobool672, label %if.end.680, label %if.then.673

if.then.673:                                      ; preds = %if.end.668
  %269 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs674 = getelementptr inbounds %struct.display, %struct.display* %269, i32 0, i32 83
  %arrayidx675 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs674, i32 0, i64 19
  %str676 = bitcast %union.tcu* %arrayidx675 to i8**
  %270 = load i8*, i8** %str676, align 8
  %271 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs677 = getelementptr inbounds %struct.display, %struct.display* %271, i32 0, i32 83
  %arrayidx678 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs677, i32 0, i64 20
  %str679 = bitcast %union.tcu* %arrayidx678 to i8**
  store i8* %270, i8** %str679, align 8
  br label %if.end.680

if.end.680:                                       ; preds = %if.then.673, %if.end.668
  %272 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs681 = getelementptr inbounds %struct.display, %struct.display* %272, i32 0, i32 83
  %arrayidx682 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs681, i32 0, i64 26
  %flg683 = bitcast %union.tcu* %arrayidx682 to i32*
  %273 = load i32, i32* %flg683, align 4
  %tobool684 = icmp ne i32 %273, 0
  br i1 %tobool684, label %if.then.685, label %if.end.692

if.then.685:                                      ; preds = %if.end.680
  %274 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs686 = getelementptr inbounds %struct.display, %struct.display* %274, i32 0, i32 83
  %arrayidx687 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs686, i32 0, i64 27
  %str688 = bitcast %union.tcu* %arrayidx687 to i8**
  store i8* null, i8** %str688, align 8
  %275 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs689 = getelementptr inbounds %struct.display, %struct.display* %275, i32 0, i32 83
  %arrayidx690 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs689, i32 0, i64 29
  %str691 = bitcast %union.tcu* %arrayidx690 to i8**
  store i8* null, i8** %str691, align 8
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.685, %if.end.680
  %276 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs693 = getelementptr inbounds %struct.display, %struct.display* %276, i32 0, i32 83
  %arrayidx694 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs693, i32 0, i64 28
  %str695 = bitcast %union.tcu* %arrayidx694 to i8**
  %277 = load i8*, i8** %str695, align 8
  %cmp696 = icmp eq i8* %277, null
  br i1 %cmp696, label %if.then.698, label %if.end.702

if.then.698:                                      ; preds = %if.end.692
  %278 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs699 = getelementptr inbounds %struct.display, %struct.display* %278, i32 0, i32 83
  %arrayidx700 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs699, i32 0, i64 27
  %str701 = bitcast %union.tcu* %arrayidx700 to i8**
  store i8* null, i8** %str701, align 8
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.698, %if.end.692
  %279 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs703 = getelementptr inbounds %struct.display, %struct.display* %279, i32 0, i32 83
  %arrayidx704 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs703, i32 0, i64 29
  %str705 = bitcast %union.tcu* %arrayidx704 to i8**
  %280 = load i8*, i8** %str705, align 8
  %tobool706 = icmp ne i8* %280, null
  br i1 %tobool706, label %land.lhs.true.707, label %if.end.726

land.lhs.true.707:                                ; preds = %if.end.702
  %281 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs708 = getelementptr inbounds %struct.display, %struct.display* %281, i32 0, i32 83
  %arrayidx709 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs708, i32 0, i64 27
  %str710 = bitcast %union.tcu* %arrayidx709 to i8**
  %282 = load i8*, i8** %str710, align 8
  %tobool711 = icmp ne i8* %282, null
  br i1 %tobool711, label %land.lhs.true.712, label %if.end.726

land.lhs.true.712:                                ; preds = %land.lhs.true.707
  %283 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs713 = getelementptr inbounds %struct.display, %struct.display* %283, i32 0, i32 83
  %arrayidx714 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs713, i32 0, i64 29
  %str715 = bitcast %union.tcu* %arrayidx714 to i8**
  %284 = load i8*, i8** %str715, align 8
  %285 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs716 = getelementptr inbounds %struct.display, %struct.display* %285, i32 0, i32 83
  %arrayidx717 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs716, i32 0, i64 27
  %str718 = bitcast %union.tcu* %arrayidx717 to i8**
  %286 = load i8*, i8** %str718, align 8
  %call719 = call i32 @strcmp(i8* %284, i8* %286) #6
  %cmp720 = icmp eq i32 %call719, 0
  br i1 %cmp720, label %if.then.722, label %if.end.726

if.then.722:                                      ; preds = %land.lhs.true.712
  %287 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs723 = getelementptr inbounds %struct.display, %struct.display* %287, i32 0, i32 83
  %arrayidx724 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs723, i32 0, i64 29
  %str725 = bitcast %union.tcu* %arrayidx724 to i8**
  store i8* null, i8** %str725, align 8
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.722, %land.lhs.true.712, %land.lhs.true.707, %if.end.702
  %288 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs727 = getelementptr inbounds %struct.display, %struct.display* %288, i32 0, i32 83
  %arrayidx728 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs727, i32 0, i64 70
  %str729 = bitcast %union.tcu* %arrayidx728 to i8**
  %289 = load i8*, i8** %str729, align 8
  %cmp730 = icmp eq i8* %289, null
  br i1 %cmp730, label %if.then.732, label %if.end.736

if.then.732:                                      ; preds = %if.end.726
  %290 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs733 = getelementptr inbounds %struct.display, %struct.display* %290, i32 0, i32 83
  %arrayidx734 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs733, i32 0, i64 69
  %str735 = bitcast %union.tcu* %arrayidx734 to i8**
  store i8* null, i8** %str735, align 8
  br label %if.end.736

if.end.736:                                       ; preds = %if.then.732, %if.end.726
  %291 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs737 = getelementptr inbounds %struct.display, %struct.display* %291, i32 0, i32 83
  %arrayidx738 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs737, i32 0, i64 94
  %str739 = bitcast %union.tcu* %arrayidx738 to i8**
  %292 = load i8*, i8** %str739, align 8
  %cmp740 = icmp eq i8* %292, null
  br i1 %cmp740, label %if.then.742, label %if.end.746

if.then.742:                                      ; preds = %if.end.736
  %293 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs743 = getelementptr inbounds %struct.display, %struct.display* %293, i32 0, i32 83
  %arrayidx744 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs743, i32 0, i64 93
  %str745 = bitcast %union.tcu* %arrayidx744 to i8**
  store i8* null, i8** %str745, align 8
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.742, %if.end.736
  %294 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs747 = getelementptr inbounds %struct.display, %struct.display* %294, i32 0, i32 83
  %arrayidx748 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs747, i32 0, i64 82
  %str749 = bitcast %union.tcu* %arrayidx748 to i8**
  %295 = load i8*, i8** %str749, align 8
  %cmp750 = icmp eq i8* %295, null
  br i1 %cmp750, label %if.then.752, label %if.end.759

if.then.752:                                      ; preds = %if.end.746
  %296 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs753 = getelementptr inbounds %struct.display, %struct.display* %296, i32 0, i32 83
  %arrayidx754 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs753, i32 0, i64 81
  %str755 = bitcast %union.tcu* %arrayidx754 to i8**
  store i8* null, i8** %str755, align 8
  %297 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs756 = getelementptr inbounds %struct.display, %struct.display* %297, i32 0, i32 83
  %arrayidx757 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs756, i32 0, i64 80
  %str758 = bitcast %union.tcu* %arrayidx757 to i8**
  store i8* null, i8** %str758, align 8
  br label %if.end.759

if.end.759:                                       ; preds = %if.then.752, %if.end.746
  %298 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs760 = getelementptr inbounds %struct.display, %struct.display* %298, i32 0, i32 83
  %arrayidx761 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs760, i32 0, i64 72
  %str762 = bitcast %union.tcu* %arrayidx761 to i8**
  %299 = load i8*, i8** %str762, align 8
  %cmp763 = icmp eq i8* %299, null
  br i1 %cmp763, label %if.then.765, label %if.end.769

if.then.765:                                      ; preds = %if.end.759
  %300 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs766 = getelementptr inbounds %struct.display, %struct.display* %300, i32 0, i32 83
  %arrayidx767 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs766, i32 0, i64 71
  %str768 = bitcast %union.tcu* %arrayidx767 to i8**
  store i8* null, i8** %str768, align 8
  br label %if.end.769

if.end.769:                                       ; preds = %if.then.765, %if.end.759
  %301 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs770 = getelementptr inbounds %struct.display, %struct.display* %301, i32 0, i32 83
  %arrayidx771 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs770, i32 0, i64 97
  %flg772 = bitcast %union.tcu* %arrayidx771 to i32*
  %302 = load i32, i32* %flg772, align 4
  %tobool773 = icmp ne i32 %302, 0
  br i1 %tobool773, label %if.then.774, label %if.else.801

if.then.774:                                      ; preds = %if.end.769
  %303 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs775 = getelementptr inbounds %struct.display, %struct.display* %303, i32 0, i32 83
  %arrayidx776 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs775, i32 0, i64 98
  %str777 = bitcast %union.tcu* %arrayidx776 to i8**
  %304 = load i8*, i8** %str777, align 8
  %cmp778 = icmp eq i8* %304, null
  br i1 %cmp778, label %if.then.780, label %if.end.784

if.then.780:                                      ; preds = %if.then.774
  %305 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs781 = getelementptr inbounds %struct.display, %struct.display* %305, i32 0, i32 83
  %arrayidx782 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs781, i32 0, i64 98
  %str783 = bitcast %union.tcu* %arrayidx782 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** %str783, align 8
  br label %if.end.784

if.end.784:                                       ; preds = %if.then.780, %if.then.774
  %306 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs785 = getelementptr inbounds %struct.display, %struct.display* %306, i32 0, i32 83
  %arrayidx786 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs785, i32 0, i64 99
  %str787 = bitcast %union.tcu* %arrayidx786 to i8**
  %307 = load i8*, i8** %str787, align 8
  %cmp788 = icmp eq i8* %307, null
  br i1 %cmp788, label %if.then.790, label %if.end.794

if.then.790:                                      ; preds = %if.end.784
  %308 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs791 = getelementptr inbounds %struct.display, %struct.display* %308, i32 0, i32 83
  %arrayidx792 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs791, i32 0, i64 99
  %str793 = bitcast %union.tcu* %arrayidx792 to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8** %str793, align 8
  br label %if.end.794

if.end.794:                                       ; preds = %if.then.790, %if.end.784
  %309 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs795 = getelementptr inbounds %struct.display, %struct.display* %309, i32 0, i32 83
  %arrayidx796 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs795, i32 0, i64 103
  %str797 = bitcast %union.tcu* %arrayidx796 to i8**
  store i8* null, i8** %str797, align 8
  %310 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs798 = getelementptr inbounds %struct.display, %struct.display* %310, i32 0, i32 83
  %arrayidx799 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs798, i32 0, i64 104
  %str800 = bitcast %union.tcu* %arrayidx799 to i8**
  store i8* null, i8** %str800, align 8
  br label %if.end.875

if.else.801:                                      ; preds = %if.end.769
  %311 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs802 = getelementptr inbounds %struct.display, %struct.display* %311, i32 0, i32 83
  %arrayidx803 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs802, i32 0, i64 103
  %str804 = bitcast %union.tcu* %arrayidx803 to i8**
  %312 = load i8*, i8** %str804, align 8
  %tobool805 = icmp ne i8* %312, null
  br i1 %tobool805, label %if.then.816, label %lor.lhs.false.806

lor.lhs.false.806:                                ; preds = %if.else.801
  %313 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs807 = getelementptr inbounds %struct.display, %struct.display* %313, i32 0, i32 83
  %arrayidx808 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs807, i32 0, i64 101
  %str809 = bitcast %union.tcu* %arrayidx808 to i8**
  %314 = load i8*, i8** %str809, align 8
  %tobool810 = icmp ne i8* %314, null
  br i1 %tobool810, label %land.lhs.true.811, label %if.else.861

land.lhs.true.811:                                ; preds = %lor.lhs.false.806
  %315 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs812 = getelementptr inbounds %struct.display, %struct.display* %315, i32 0, i32 83
  %arrayidx813 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs812, i32 0, i64 102
  %str814 = bitcast %union.tcu* %arrayidx813 to i8**
  %316 = load i8*, i8** %str814, align 8
  %tobool815 = icmp ne i8* %316, null
  br i1 %tobool815, label %if.then.816, label %if.else.861

if.then.816:                                      ; preds = %land.lhs.true.811, %if.else.801
  %317 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs817 = getelementptr inbounds %struct.display, %struct.display* %317, i32 0, i32 83
  %arrayidx818 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs817, i32 0, i64 101
  %str819 = bitcast %union.tcu* %arrayidx818 to i8**
  %318 = load i8*, i8** %str819, align 8
  %tobool820 = icmp ne i8* %318, null
  br i1 %tobool820, label %land.lhs.true.821, label %cond.false.830

land.lhs.true.821:                                ; preds = %if.then.816
  %319 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs822 = getelementptr inbounds %struct.display, %struct.display* %319, i32 0, i32 83
  %arrayidx823 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs822, i32 0, i64 102
  %str824 = bitcast %union.tcu* %arrayidx823 to i8**
  %320 = load i8*, i8** %str824, align 8
  %tobool825 = icmp ne i8* %320, null
  br i1 %tobool825, label %cond.true.826, label %cond.false.830

cond.true.826:                                    ; preds = %land.lhs.true.821
  %321 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs827 = getelementptr inbounds %struct.display, %struct.display* %321, i32 0, i32 83
  %arrayidx828 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs827, i32 0, i64 101
  %str829 = bitcast %union.tcu* %arrayidx828 to i8**
  %322 = load i8*, i8** %str829, align 8
  br label %cond.end.831

cond.false.830:                                   ; preds = %land.lhs.true.821, %if.then.816
  br label %cond.end.831

cond.end.831:                                     ; preds = %cond.false.830, %cond.true.826
  %cond832 = phi i8* [ %322, %cond.true.826 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %cond.false.830 ]
  %323 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs833 = getelementptr inbounds %struct.display, %struct.display* %323, i32 0, i32 83
  %arrayidx834 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs833, i32 0, i64 98
  %str835 = bitcast %union.tcu* %arrayidx834 to i8**
  store i8* %cond832, i8** %str835, align 8
  %324 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs836 = getelementptr inbounds %struct.display, %struct.display* %324, i32 0, i32 83
  %arrayidx837 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs836, i32 0, i64 101
  %str838 = bitcast %union.tcu* %arrayidx837 to i8**
  %325 = load i8*, i8** %str838, align 8
  %tobool839 = icmp ne i8* %325, null
  br i1 %tobool839, label %land.lhs.true.840, label %cond.false.849

land.lhs.true.840:                                ; preds = %cond.end.831
  %326 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs841 = getelementptr inbounds %struct.display, %struct.display* %326, i32 0, i32 83
  %arrayidx842 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs841, i32 0, i64 102
  %str843 = bitcast %union.tcu* %arrayidx842 to i8**
  %327 = load i8*, i8** %str843, align 8
  %tobool844 = icmp ne i8* %327, null
  br i1 %tobool844, label %cond.true.845, label %cond.false.849

cond.true.845:                                    ; preds = %land.lhs.true.840
  %328 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs846 = getelementptr inbounds %struct.display, %struct.display* %328, i32 0, i32 83
  %arrayidx847 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs846, i32 0, i64 102
  %str848 = bitcast %union.tcu* %arrayidx847 to i8**
  %329 = load i8*, i8** %str848, align 8
  br label %cond.end.850

cond.false.849:                                   ; preds = %land.lhs.true.840, %cond.end.831
  br label %cond.end.850

cond.end.850:                                     ; preds = %cond.false.849, %cond.true.845
  %cond851 = phi i8* [ %329, %cond.true.845 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %cond.false.849 ]
  %330 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs852 = getelementptr inbounds %struct.display, %struct.display* %330, i32 0, i32 83
  %arrayidx853 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs852, i32 0, i64 99
  %str854 = bitcast %union.tcu* %arrayidx853 to i8**
  store i8* %cond851, i8** %str854, align 8
  %331 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs855 = getelementptr inbounds %struct.display, %struct.display* %331, i32 0, i32 83
  %arrayidx856 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs855, i32 0, i64 103
  %str857 = bitcast %union.tcu* %arrayidx856 to i8**
  %332 = load i8*, i8** %str857, align 8
  %333 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs858 = getelementptr inbounds %struct.display, %struct.display* %333, i32 0, i32 83
  %arrayidx859 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs858, i32 0, i64 100
  %str860 = bitcast %union.tcu* %arrayidx859 to i8**
  store i8* %332, i8** %str860, align 8
  br label %if.end.874

if.else.861:                                      ; preds = %land.lhs.true.811, %lor.lhs.false.806
  %334 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs862 = getelementptr inbounds %struct.display, %struct.display* %334, i32 0, i32 83
  %arrayidx863 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs862, i32 0, i64 99
  %str864 = bitcast %union.tcu* %arrayidx863 to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8** %str864, align 8
  %335 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs865 = getelementptr inbounds %struct.display, %struct.display* %335, i32 0, i32 83
  %arrayidx866 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs865, i32 0, i64 98
  %str867 = bitcast %union.tcu* %arrayidx866 to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8** %str867, align 8
  %336 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs868 = getelementptr inbounds %struct.display, %struct.display* %336, i32 0, i32 83
  %arrayidx869 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs868, i32 0, i64 100
  %str870 = bitcast %union.tcu* %arrayidx869 to i8**
  store i8* null, i8** %str870, align 8
  %337 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs871 = getelementptr inbounds %struct.display, %struct.display* %337, i32 0, i32 83
  %arrayidx872 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs871, i32 0, i64 103
  %str873 = bitcast %union.tcu* %arrayidx872 to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8** %str873, align 8
  br label %if.end.874

if.end.874:                                       ; preds = %if.else.861, %cond.end.850
  br label %if.end.875

if.end.875:                                       ; preds = %if.end.874, %if.end.794
  store i32 0, i32* %i, align 4
  br label %for.cond.876

for.cond.876:                                     ; preds = %for.inc.883, %if.end.875
  %338 = load i32, i32* %i, align 4
  %cmp877 = icmp slt i32 %338, 256
  br i1 %cmp877, label %for.body.879, label %for.end.885

for.body.879:                                     ; preds = %for.cond.876
  %339 = load i32, i32* %i, align 4
  %conv880 = trunc i32 %339 to i8
  %340 = load i32, i32* %i, align 4
  %idxprom881 = sext i32 %340 to i64
  %341 = load %struct.display*, %struct.display** @display, align 8
  %d_c0_tab = getelementptr inbounds %struct.display, %struct.display* %341, i32 0, i32 88
  %arrayidx882 = getelementptr inbounds [256 x i8], [256 x i8]* %d_c0_tab, i32 0, i64 %idxprom881
  store i8 %conv880, i8* %arrayidx882, align 1
  br label %for.inc.883

for.inc.883:                                      ; preds = %for.body.879
  %342 = load i32, i32* %i, align 4
  %inc884 = add nsw i32 %342, 1
  store i32 %inc884, i32* %i, align 4
  br label %for.cond.876

for.end.885:                                      ; preds = %for.cond.876
  %343 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs886 = getelementptr inbounds %struct.display, %struct.display* %343, i32 0, i32 83
  %arrayidx887 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs886, i32 0, i64 103
  %str888 = bitcast %union.tcu* %arrayidx887 to i8**
  %344 = load i8*, i8** %str888, align 8
  %tobool889 = icmp ne i8* %344, null
  br i1 %tobool889, label %if.then.890, label %if.end.909

if.then.890:                                      ; preds = %for.end.885
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i32 0, i32 0), i8** %s, align 8
  %345 = load i8*, i8** %s, align 8
  %call891 = call i64 @strlen(i8* %345) #6
  %sub = sub i64 %call891, 2
  %and = and i64 %sub, -2
  %conv892 = trunc i64 %and to i32
  store i32 %conv892, i32* %i, align 4
  br label %for.cond.893

for.cond.893:                                     ; preds = %for.inc.906, %if.then.890
  %346 = load i32, i32* %i, align 4
  %cmp894 = icmp sge i32 %346, 0
  br i1 %cmp894, label %for.body.896, label %for.end.908

for.body.896:                                     ; preds = %for.cond.893
  %347 = load i32, i32* %i, align 4
  %add897 = add nsw i32 %347, 1
  %idxprom898 = sext i32 %add897 to i64
  %348 = load i8*, i8** %s, align 8
  %arrayidx899 = getelementptr inbounds i8, i8* %348, i64 %idxprom898
  %349 = load i8, i8* %arrayidx899, align 1
  %350 = load i32, i32* %i, align 4
  %idxprom900 = sext i32 %350 to i64
  %351 = load i8*, i8** %s, align 8
  %arrayidx901 = getelementptr inbounds i8, i8* %351, i64 %idxprom900
  %352 = load i8, i8* %arrayidx901, align 1
  %conv902 = zext i8 %352 to i32
  %idxprom903 = sext i32 %conv902 to i64
  %353 = load %struct.display*, %struct.display** @display, align 8
  %d_c0_tab904 = getelementptr inbounds %struct.display, %struct.display* %353, i32 0, i32 88
  %arrayidx905 = getelementptr inbounds [256 x i8], [256 x i8]* %d_c0_tab904, i32 0, i64 %idxprom903
  store i8 %349, i8* %arrayidx905, align 1
  br label %for.inc.906

for.inc.906:                                      ; preds = %for.body.896
  %354 = load i32, i32* %i, align 4
  %sub907 = sub nsw i32 %354, 2
  store i32 %sub907, i32* %i, align 4
  br label %for.cond.893

for.end.908:                                      ; preds = %for.cond.893
  br label %if.end.909

if.end.909:                                       ; preds = %for.end.908, %for.end.885
  %355 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs910 = getelementptr inbounds %struct.display, %struct.display* %355, i32 0, i32 83
  %arrayidx911 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs910, i32 0, i64 100
  %str912 = bitcast %union.tcu* %arrayidx911 to i8**
  %356 = load i8*, i8** %str912, align 8
  %tobool913 = icmp ne i8* %356, null
  br i1 %tobool913, label %if.then.914, label %if.end.944

if.then.914:                                      ; preds = %if.end.909
  %357 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs915 = getelementptr inbounds %struct.display, %struct.display* %357, i32 0, i32 83
  %arrayidx916 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs915, i32 0, i64 100
  %str917 = bitcast %union.tcu* %arrayidx916 to i8**
  %358 = load i8*, i8** %str917, align 8
  %call918 = call i64 @strlen(i8* %358) #6
  %sub919 = sub i64 %call918, 2
  %and920 = and i64 %sub919, -2
  %conv921 = trunc i64 %and920 to i32
  store i32 %conv921, i32* %i, align 4
  br label %for.cond.922

for.cond.922:                                     ; preds = %for.inc.941, %if.then.914
  %359 = load i32, i32* %i, align 4
  %cmp923 = icmp sge i32 %359, 0
  br i1 %cmp923, label %for.body.925, label %for.end.943

for.body.925:                                     ; preds = %for.cond.922
  %360 = load i32, i32* %i, align 4
  %add926 = add nsw i32 %360, 1
  %idxprom927 = sext i32 %add926 to i64
  %361 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs928 = getelementptr inbounds %struct.display, %struct.display* %361, i32 0, i32 83
  %arrayidx929 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs928, i32 0, i64 100
  %str930 = bitcast %union.tcu* %arrayidx929 to i8**
  %362 = load i8*, i8** %str930, align 8
  %arrayidx931 = getelementptr inbounds i8, i8* %362, i64 %idxprom927
  %363 = load i8, i8* %arrayidx931, align 1
  %364 = load i32, i32* %i, align 4
  %idxprom932 = sext i32 %364 to i64
  %365 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs933 = getelementptr inbounds %struct.display, %struct.display* %365, i32 0, i32 83
  %arrayidx934 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs933, i32 0, i64 100
  %str935 = bitcast %union.tcu* %arrayidx934 to i8**
  %366 = load i8*, i8** %str935, align 8
  %arrayidx936 = getelementptr inbounds i8, i8* %366, i64 %idxprom932
  %367 = load i8, i8* %arrayidx936, align 1
  %conv937 = zext i8 %367 to i32
  %idxprom938 = sext i32 %conv937 to i64
  %368 = load %struct.display*, %struct.display** @display, align 8
  %d_c0_tab939 = getelementptr inbounds %struct.display, %struct.display* %368, i32 0, i32 88
  %arrayidx940 = getelementptr inbounds [256 x i8], [256 x i8]* %d_c0_tab939, i32 0, i64 %idxprom938
  store i8 %363, i8* %arrayidx940, align 1
  br label %for.inc.941

for.inc.941:                                      ; preds = %for.body.925
  %369 = load i32, i32* %i, align 4
  %sub942 = sub nsw i32 %369, 2
  store i32 %sub942, i32* %i, align 4
  br label %for.cond.922

for.end.943:                                      ; preds = %for.cond.922
  br label %if.end.944

if.end.944:                                       ; preds = %for.end.943, %if.end.909
  br label %do.body.945

do.body.945:                                      ; preds = %if.end.944
  br label %do.end.946

do.end.946:                                       ; preds = %do.body.945
  %370 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs947 = getelementptr inbounds %struct.display, %struct.display* %370, i32 0, i32 83
  %arrayidx948 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs947, i32 0, i64 74
  %str949 = bitcast %union.tcu* %arrayidx948 to i8**
  %371 = load i8*, i8** %str949, align 8
  %cmp950 = icmp eq i8* %371, null
  br i1 %cmp950, label %if.then.952, label %if.end.956

if.then.952:                                      ; preds = %do.end.946
  %372 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs953 = getelementptr inbounds %struct.display, %struct.display* %372, i32 0, i32 83
  %arrayidx954 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs953, i32 0, i64 73
  %str955 = bitcast %union.tcu* %arrayidx954 to i8**
  store i8* null, i8** %str955, align 8
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.952, %do.end.946
  br label %do.body.957

do.body.957:                                      ; preds = %if.end.956
  br label %do.end.958

do.end.958:                                       ; preds = %do.body.957
  %373 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs959 = getelementptr inbounds %struct.display, %struct.display* %373, i32 0, i32 83
  %arrayidx960 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs959, i32 0, i64 105
  %str961 = bitcast %union.tcu* %arrayidx960 to i8**
  %374 = load i8*, i8** %str961, align 8
  %tobool962 = icmp ne i8* %374, null
  br i1 %tobool962, label %if.then.963, label %if.end.971

if.then.963:                                      ; preds = %do.end.958
  %375 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs964 = getelementptr inbounds %struct.display, %struct.display* %375, i32 0, i32 83
  %arrayidx965 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs964, i32 0, i64 105
  %str966 = bitcast %union.tcu* %arrayidx965 to i8**
  %376 = load i8*, i8** %str966, align 8
  %call967 = call i32 @CreateTransTable(i8* %376)
  %tobool968 = icmp ne i32 %call967, 0
  br i1 %tobool968, label %if.then.969, label %if.end.970

if.then.969:                                      ; preds = %if.then.963
  store i32 -1, i32* %retval
  br label %return

if.end.970:                                       ; preds = %if.then.963
  br label %if.end.971

if.end.971:                                       ; preds = %if.end.970, %do.end.958
  %377 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs972 = getelementptr inbounds %struct.display, %struct.display* %377, i32 0, i32 83
  %arrayidx973 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs972, i32 0, i64 46
  %str974 = bitcast %union.tcu* %arrayidx973 to i8**
  %378 = load i8*, i8** %str974, align 8
  %cmp975 = icmp eq i8* %378, null
  br i1 %cmp975, label %if.then.977, label %if.end.981

if.then.977:                                      ; preds = %if.end.971
  %379 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs978 = getelementptr inbounds %struct.display, %struct.display* %379, i32 0, i32 83
  %arrayidx979 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs978, i32 0, i64 45
  %str980 = bitcast %union.tcu* %arrayidx979 to i8**
  store i8* null, i8** %str980, align 8
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.977, %if.end.971
  store i32 132, i32* @Z0width, align 4
  store i32 80, i32* @Z1width, align 4
  call void @CheckScreenSize(i32 0)
  %380 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs982 = getelementptr inbounds %struct.display, %struct.display* %380, i32 0, i32 83
  %arrayidx983 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs982, i32 0, i64 77
  %str984 = bitcast %union.tcu* %arrayidx983 to i8**
  %381 = load i8*, i8** %str984, align 8
  %cmp985 = icmp eq i8* %381, null
  br i1 %cmp985, label %if.then.999, label %lor.lhs.false.987

lor.lhs.false.987:                                ; preds = %if.end.981
  %382 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs988 = getelementptr inbounds %struct.display, %struct.display* %382, i32 0, i32 83
  %arrayidx989 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs988, i32 0, i64 78
  %str990 = bitcast %union.tcu* %arrayidx989 to i8**
  %383 = load i8*, i8** %str990, align 8
  %cmp991 = icmp eq i8* %383, null
  br i1 %cmp991, label %if.then.999, label %lor.lhs.false.993

lor.lhs.false.993:                                ; preds = %lor.lhs.false.987
  %384 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs994 = getelementptr inbounds %struct.display, %struct.display* %384, i32 0, i32 83
  %arrayidx995 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs994, i32 0, i64 79
  %str996 = bitcast %union.tcu* %arrayidx995 to i8**
  %385 = load i8*, i8** %str996, align 8
  %cmp997 = icmp eq i8* %385, null
  br i1 %cmp997, label %if.then.999, label %if.end.1003

if.then.999:                                      ; preds = %lor.lhs.false.993, %lor.lhs.false.987, %if.end.981
  %386 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1000 = getelementptr inbounds %struct.display, %struct.display* %386, i32 0, i32 83
  %arrayidx1001 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1000, i32 0, i64 75
  %flg1002 = bitcast %union.tcu* %arrayidx1001 to i32*
  store i32 0, i32* %flg1002, align 4
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.999, %lor.lhs.false.993
  %387 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1004 = getelementptr inbounds %struct.display, %struct.display* %387, i32 0, i32 83
  %arrayidx1005 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1004, i32 0, i64 75
  %flg1006 = bitcast %union.tcu* %arrayidx1005 to i32*
  %388 = load i32, i32* %flg1006, align 4
  %tobool1007 = icmp ne i32 %388, 0
  br i1 %tobool1007, label %if.then.1008, label %if.end.1021

if.then.1008:                                     ; preds = %if.end.1003
  br label %do.body.1009

do.body.1009:                                     ; preds = %if.then.1008
  br label %do.end.1010

do.end.1010:                                      ; preds = %do.body.1009
  %389 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1011 = getelementptr inbounds %struct.display, %struct.display* %389, i32 0, i32 83
  %arrayidx1012 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1011, i32 0, i64 76
  %num1013 = bitcast %union.tcu* %arrayidx1012 to i32*
  %390 = load i32, i32* %num1013, align 4
  %cmp1014 = icmp slt i32 %390, 0
  br i1 %cmp1014, label %if.then.1016, label %if.end.1020

if.then.1016:                                     ; preds = %do.end.1010
  %391 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1017 = getelementptr inbounds %struct.display, %struct.display* %391, i32 0, i32 83
  %arrayidx1018 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1017, i32 0, i64 76
  %num1019 = bitcast %union.tcu* %arrayidx1018 to i32*
  store i32 0, i32* %num1019, align 4
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.then.1016, %do.end.1010
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.end.1020, %if.end.1003
  %392 = load i32, i32* @hardstatusemu, align 4
  %and1022 = and i32 %392, -9
  %393 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %393, i32 0, i32 36
  store i32 %and1022, i32* %d_has_hstatus, align 4
  %394 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1023 = getelementptr inbounds %struct.display, %struct.display* %394, i32 0, i32 83
  %arrayidx1024 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1023, i32 0, i64 75
  %flg1025 = bitcast %union.tcu* %arrayidx1024 to i32*
  %395 = load i32, i32* %flg1025, align 4
  %tobool1026 = icmp ne i32 %395, 0
  br i1 %tobool1026, label %land.lhs.true.1027, label %if.end.1032

land.lhs.true.1027:                               ; preds = %if.end.1021
  %396 = load i32, i32* @hardstatusemu, align 4
  %and1028 = and i32 %396, 8
  %tobool1029 = icmp ne i32 %and1028, 0
  br i1 %tobool1029, label %if.end.1032, label %if.then.1030

if.then.1030:                                     ; preds = %land.lhs.true.1027
  %397 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus1031 = getelementptr inbounds %struct.display, %struct.display* %397, i32 0, i32 36
  store i32 3, i32* %d_has_hstatus1031, align 4
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.then.1030, %land.lhs.true.1027, %if.end.1021
  %398 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1033 = getelementptr inbounds %struct.display, %struct.display* %398, i32 0, i32 83
  %arrayidx1034 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1033, i32 0, i64 92
  %str1035 = bitcast %union.tcu* %arrayidx1034 to i8**
  %399 = load i8*, i8** %str1035, align 8
  %tobool1036 = icmp ne i8* %399, null
  br i1 %tobool1036, label %if.then.1037, label %if.end.1046

if.then.1037:                                     ; preds = %if.end.1032
  %400 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1038 = getelementptr inbounds %struct.display, %struct.display* %400, i32 0, i32 83
  %arrayidx1039 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1038, i32 0, i64 92
  %str1040 = bitcast %union.tcu* %arrayidx1039 to i8**
  %401 = load i8*, i8** %str1040, align 8
  %call1041 = call i32 @FindEncoding(i8* %401)
  store i32 %call1041, i32* %enc, align 4
  %402 = load i32, i32* %enc, align 4
  %cmp1042 = icmp ne i32 %402, -1
  br i1 %cmp1042, label %if.then.1044, label %if.end.1045

if.then.1044:                                     ; preds = %if.then.1037
  %403 = load i32, i32* %enc, align 4
  %404 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %404, i32 0, i32 28
  store i32 %403, i32* %d_encoding, align 4
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.then.1044, %if.then.1037
  br label %if.end.1046

if.end.1046:                                      ; preds = %if.end.1045, %if.end.1032
  %405 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1047 = getelementptr inbounds %struct.display, %struct.display* %405, i32 0, i32 83
  %arrayidx1048 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1047, i32 0, i64 158
  %str1049 = bitcast %union.tcu* %arrayidx1048 to i8**
  %406 = load i8*, i8** %str1049, align 8
  %tobool1050 = icmp ne i8* %406, null
  br i1 %tobool1050, label %if.end.1063, label %land.lhs.true.1051

land.lhs.true.1051:                               ; preds = %if.end.1046
  %407 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1052 = getelementptr inbounds %struct.display, %struct.display* %407, i32 0, i32 83
  %arrayidx1053 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1052, i32 0, i64 159
  %str1054 = bitcast %union.tcu* %arrayidx1053 to i8**
  %408 = load i8*, i8** %str1054, align 8
  %tobool1055 = icmp ne i8* %408, null
  br i1 %tobool1055, label %if.then.1056, label %if.end.1063

if.then.1056:                                     ; preds = %land.lhs.true.1051
  %409 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1057 = getelementptr inbounds %struct.display, %struct.display* %409, i32 0, i32 83
  %arrayidx1058 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1057, i32 0, i64 159
  %str1059 = bitcast %union.tcu* %arrayidx1058 to i8**
  %410 = load i8*, i8** %str1059, align 8
  %411 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1060 = getelementptr inbounds %struct.display, %struct.display* %411, i32 0, i32 83
  %arrayidx1061 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1060, i32 0, i64 158
  %str1062 = bitcast %union.tcu* %arrayidx1061 to i8**
  store i8* %410, i8** %str1062, align 8
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.then.1056, %land.lhs.true.1051, %if.end.1046
  %412 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1064 = getelementptr inbounds %struct.display, %struct.display* %412, i32 0, i32 83
  %arrayidx1065 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1064, i32 0, i64 160
  %str1066 = bitcast %union.tcu* %arrayidx1065 to i8**
  %413 = load i8*, i8** %str1066, align 8
  %tobool1067 = icmp ne i8* %413, null
  br i1 %tobool1067, label %if.end.1080, label %land.lhs.true.1068

land.lhs.true.1068:                               ; preds = %if.end.1063
  %414 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1069 = getelementptr inbounds %struct.display, %struct.display* %414, i32 0, i32 83
  %arrayidx1070 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1069, i32 0, i64 161
  %str1071 = bitcast %union.tcu* %arrayidx1070 to i8**
  %415 = load i8*, i8** %str1071, align 8
  %tobool1072 = icmp ne i8* %415, null
  br i1 %tobool1072, label %if.then.1073, label %if.end.1080

if.then.1073:                                     ; preds = %land.lhs.true.1068
  %416 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1074 = getelementptr inbounds %struct.display, %struct.display* %416, i32 0, i32 83
  %arrayidx1075 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1074, i32 0, i64 161
  %str1076 = bitcast %union.tcu* %arrayidx1075 to i8**
  %417 = load i8*, i8** %str1076, align 8
  %418 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1077 = getelementptr inbounds %struct.display, %struct.display* %418, i32 0, i32 83
  %arrayidx1078 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1077, i32 0, i64 160
  %str1079 = bitcast %union.tcu* %arrayidx1078 to i8**
  store i8* %417, i8** %str1079, align 8
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.then.1073, %land.lhs.true.1068, %if.end.1063
  %419 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1081 = getelementptr inbounds %struct.display, %struct.display* %419, i32 0, i32 83
  %arrayidx1082 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1081, i32 0, i64 8
  %str1083 = bitcast %union.tcu* %arrayidx1082 to i8**
  %420 = load i8*, i8** %str1083, align 8
  %call1084 = call i32 @CalcCost(i8* %420)
  %421 = load %struct.display*, %struct.display** @display, align 8
  %d_UPcost = getelementptr inbounds %struct.display, %struct.display* %421, i32 0, i32 90
  store i32 %call1084, i32* %d_UPcost, align 4
  %422 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1085 = getelementptr inbounds %struct.display, %struct.display* %422, i32 0, i32 83
  %arrayidx1086 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1085, i32 0, i64 10
  %str1087 = bitcast %union.tcu* %arrayidx1086 to i8**
  %423 = load i8*, i8** %str1087, align 8
  %call1088 = call i32 @CalcCost(i8* %423)
  %424 = load %struct.display*, %struct.display** @display, align 8
  %d_DOcost = getelementptr inbounds %struct.display, %struct.display* %424, i32 0, i32 91
  store i32 %call1088, i32* %d_DOcost, align 4
  %425 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1089 = getelementptr inbounds %struct.display, %struct.display* %425, i32 0, i32 83
  %arrayidx1090 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1089, i32 0, i64 19
  %str1091 = bitcast %union.tcu* %arrayidx1090 to i8**
  %426 = load i8*, i8** %str1091, align 8
  %call1092 = call i32 @CalcCost(i8* %426)
  %427 = load %struct.display*, %struct.display** @display, align 8
  %d_NLcost = getelementptr inbounds %struct.display, %struct.display* %427, i32 0, i32 97
  store i32 %call1092, i32* %d_NLcost, align 4
  %428 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1093 = getelementptr inbounds %struct.display, %struct.display* %428, i32 0, i32 83
  %arrayidx1094 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1093, i32 0, i64 13
  %str1095 = bitcast %union.tcu* %arrayidx1094 to i8**
  %429 = load i8*, i8** %str1095, align 8
  %call1096 = call i32 @CalcCost(i8* %429)
  %430 = load %struct.display*, %struct.display** @display, align 8
  %d_LEcost = getelementptr inbounds %struct.display, %struct.display* %430, i32 0, i32 92
  store i32 %call1096, i32* %d_LEcost, align 4
  %431 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1097 = getelementptr inbounds %struct.display, %struct.display* %431, i32 0, i32 83
  %arrayidx1098 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1097, i32 0, i64 16
  %str1099 = bitcast %union.tcu* %arrayidx1098 to i8**
  %432 = load i8*, i8** %str1099, align 8
  %call1100 = call i32 @CalcCost(i8* %432)
  %433 = load %struct.display*, %struct.display** @display, align 8
  %d_NDcost = getelementptr inbounds %struct.display, %struct.display* %433, i32 0, i32 93
  store i32 %call1100, i32* %d_NDcost, align 4
  %434 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1101 = getelementptr inbounds %struct.display, %struct.display* %434, i32 0, i32 83
  %arrayidx1102 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1101, i32 0, i64 7
  %str1103 = bitcast %union.tcu* %arrayidx1102 to i8**
  %435 = load i8*, i8** %str1103, align 8
  %call1104 = call i32 @CalcCost(i8* %435)
  %436 = load %struct.display*, %struct.display** @display, align 8
  %d_CRcost = getelementptr inbounds %struct.display, %struct.display* %436, i32 0, i32 94
  store i32 %call1104, i32* %d_CRcost, align 4
  %437 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1105 = getelementptr inbounds %struct.display, %struct.display* %437, i32 0, i32 83
  %arrayidx1106 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1105, i32 0, i64 27
  %str1107 = bitcast %union.tcu* %arrayidx1106 to i8**
  %438 = load i8*, i8** %str1107, align 8
  %call1108 = call i32 @CalcCost(i8* %438)
  %439 = load %struct.display*, %struct.display** @display, align 8
  %d_IMcost = getelementptr inbounds %struct.display, %struct.display* %439, i32 0, i32 95
  store i32 %call1108, i32* %d_IMcost, align 4
  %440 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1109 = getelementptr inbounds %struct.display, %struct.display* %440, i32 0, i32 83
  %arrayidx1110 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1109, i32 0, i64 28
  %str1111 = bitcast %union.tcu* %arrayidx1110 to i8**
  %441 = load i8*, i8** %str1111, align 8
  %call1112 = call i32 @CalcCost(i8* %441)
  %442 = load %struct.display*, %struct.display** @display, align 8
  %d_EIcost = getelementptr inbounds %struct.display, %struct.display* %442, i32 0, i32 96
  store i32 %call1112, i32* %d_EIcost, align 4
  %443 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1113 = getelementptr inbounds %struct.display, %struct.display* %443, i32 0, i32 83
  %arrayidx1114 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1113, i32 0, i64 90
  %flg1115 = bitcast %union.tcu* %arrayidx1114 to i32*
  %444 = load i32, i32* %flg1115, align 4
  %tobool1116 = icmp ne i32 %444, 0
  br i1 %tobool1116, label %if.then.1117, label %if.end.1120

if.then.1117:                                     ; preds = %if.end.1080
  br label %do.body.1118

do.body.1118:                                     ; preds = %if.then.1117
  br label %do.end.1119

do.end.1119:                                      ; preds = %do.body.1118
  %445 = load %struct.display*, %struct.display** @display, align 8
  %d_auto_nuke = getelementptr inbounds %struct.display, %struct.display* %445, i32 0, i32 73
  store i32 1, i32* %d_auto_nuke, align 4
  br label %if.end.1120

if.end.1120:                                      ; preds = %do.end.1119, %if.end.1080
  %446 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1121 = getelementptr inbounds %struct.display, %struct.display* %446, i32 0, i32 83
  %arrayidx1122 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1121, i32 0, i64 91
  %num1123 = bitcast %union.tcu* %arrayidx1122 to i32*
  %447 = load i32, i32* %num1123, align 4
  %cmp1124 = icmp sgt i32 %447, 0
  br i1 %cmp1124, label %if.then.1126, label %if.end.1134

if.then.1126:                                     ; preds = %if.end.1120
  br label %do.body.1127

do.body.1127:                                     ; preds = %if.then.1126
  br label %do.end.1128

do.end.1128:                                      ; preds = %do.body.1127
  %448 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1129 = getelementptr inbounds %struct.display, %struct.display* %448, i32 0, i32 83
  %arrayidx1130 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1129, i32 0, i64 91
  %num1131 = bitcast %union.tcu* %arrayidx1130 to i32*
  %449 = load i32, i32* %num1131, align 4
  %450 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %450, i32 0, i32 69
  store i32 %449, i32* %d_obufmax, align 4
  %451 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %451, i32 0, i32 68
  %452 = load i32, i32* %d_obuflen, align 4
  %453 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax1132 = getelementptr inbounds %struct.display, %struct.display* %453, i32 0, i32 69
  %454 = load i32, i32* %d_obufmax1132, align 4
  %sub1133 = sub nsw i32 %452, %454
  %455 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %455, i32 0, i32 70
  store i32 %sub1133, i32* %d_obuflenmax, align 4
  br label %if.end.1134

if.end.1134:                                      ; preds = %do.end.1128, %if.end.1120
  %456 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1135 = getelementptr inbounds %struct.display, %struct.display* %456, i32 0, i32 83
  %arrayidx1136 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1135, i32 0, i64 106
  %str1137 = bitcast %union.tcu* %arrayidx1136 to i8**
  %457 = load i8*, i8** %str1137, align 8
  %tobool1138 = icmp ne i8* %457, null
  br i1 %tobool1138, label %land.lhs.true.1139, label %if.end.1157

land.lhs.true.1139:                               ; preds = %if.end.1134
  %458 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1140 = getelementptr inbounds %struct.display, %struct.display* %458, i32 0, i32 83
  %arrayidx1141 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1140, i32 0, i64 116
  %str1142 = bitcast %union.tcu* %arrayidx1141 to i8**
  %459 = load i8*, i8** %str1142, align 8
  %tobool1143 = icmp ne i8* %459, null
  br i1 %tobool1143, label %land.lhs.true.1144, label %if.end.1157

land.lhs.true.1144:                               ; preds = %land.lhs.true.1139
  %460 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1145 = getelementptr inbounds %struct.display, %struct.display* %460, i32 0, i32 83
  %arrayidx1146 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1145, i32 0, i64 106
  %str1147 = bitcast %union.tcu* %arrayidx1146 to i8**
  %461 = load i8*, i8** %str1147, align 8
  %462 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1148 = getelementptr inbounds %struct.display, %struct.display* %462, i32 0, i32 83
  %arrayidx1149 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1148, i32 0, i64 116
  %str1150 = bitcast %union.tcu* %arrayidx1149 to i8**
  %463 = load i8*, i8** %str1150, align 8
  %call1151 = call i32 @strcmp(i8* %461, i8* %463) #6
  %tobool1152 = icmp ne i32 %call1151, 0
  br i1 %tobool1152, label %if.end.1157, label %if.then.1153

if.then.1153:                                     ; preds = %land.lhs.true.1144
  %464 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1154 = getelementptr inbounds %struct.display, %struct.display* %464, i32 0, i32 83
  %arrayidx1155 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1154, i32 0, i64 106
  %str1156 = bitcast %union.tcu* %arrayidx1155 to i8**
  store i8* null, i8** %str1156, align 8
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.then.1153, %land.lhs.true.1144, %land.lhs.true.1139, %if.end.1134
  %465 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1158 = getelementptr inbounds %struct.display, %struct.display* %465, i32 0, i32 83
  %arrayidx1159 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1158, i32 0, i64 165
  %str1160 = bitcast %union.tcu* %arrayidx1159 to i8**
  %466 = load i8*, i8** %str1160, align 8
  %tobool1161 = icmp ne i8* %466, null
  br i1 %tobool1161, label %land.lhs.true.1162, label %if.end.1172

land.lhs.true.1162:                               ; preds = %if.end.1157
  %467 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1163 = getelementptr inbounds %struct.display, %struct.display* %467, i32 0, i32 83
  %arrayidx1164 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1163, i32 0, i64 165
  %str1165 = bitcast %union.tcu* %arrayidx1164 to i8**
  %468 = load i8*, i8** %str1165, align 8
  %call1166 = call i32 @strcmp(i8* %468, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #6
  %tobool1167 = icmp ne i32 %call1166, 0
  br i1 %tobool1167, label %if.end.1172, label %if.then.1168

if.then.1168:                                     ; preds = %land.lhs.true.1162
  %469 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1169 = getelementptr inbounds %struct.display, %struct.display* %469, i32 0, i32 83
  %arrayidx1170 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1169, i32 0, i64 165
  %str1171 = bitcast %union.tcu* %arrayidx1170 to i8**
  store i8* null, i8** %str1171, align 8
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.then.1168, %land.lhs.true.1162, %if.end.1157
  %470 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1173 = getelementptr inbounds %struct.display, %struct.display* %470, i32 0, i32 83
  %arrayidx1174 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1173, i32 0, i64 169
  %str1175 = bitcast %union.tcu* %arrayidx1174 to i8**
  %471 = load i8*, i8** %str1175, align 8
  %tobool1176 = icmp ne i8* %471, null
  br i1 %tobool1176, label %land.lhs.true.1177, label %if.end.1187

land.lhs.true.1177:                               ; preds = %if.end.1172
  %472 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1178 = getelementptr inbounds %struct.display, %struct.display* %472, i32 0, i32 83
  %arrayidx1179 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1178, i32 0, i64 169
  %str1180 = bitcast %union.tcu* %arrayidx1179 to i8**
  %473 = load i8*, i8** %str1180, align 8
  %call1181 = call i32 @strcmp(i8* %473, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)) #6
  %tobool1182 = icmp ne i32 %call1181, 0
  br i1 %tobool1182, label %if.end.1187, label %if.then.1183

if.then.1183:                                     ; preds = %land.lhs.true.1177
  %474 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1184 = getelementptr inbounds %struct.display, %struct.display* %474, i32 0, i32 83
  %arrayidx1185 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1184, i32 0, i64 169
  %str1186 = bitcast %union.tcu* %arrayidx1185 to i8**
  store i8* null, i8** %str1186, align 8
  br label %if.end.1187

if.end.1187:                                      ; preds = %if.then.1183, %land.lhs.true.1177, %if.end.1172
  %475 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %475, i32 0, i32 74
  store i32 0, i32* %d_nseqs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1188

for.cond.1188:                                    ; preds = %for.inc.1193, %if.end.1187
  %476 = load i32, i32* %i, align 4
  %cmp1189 = icmp slt i32 %476, 82
  br i1 %cmp1189, label %for.body.1191, label %for.end.1195

for.body.1191:                                    ; preds = %for.cond.1188
  %477 = load i32, i32* %i, align 4
  %call1192 = call i32 @remap(i32 %477, i32 1)
  br label %for.inc.1193

for.inc.1193:                                     ; preds = %for.body.1191
  %478 = load i32, i32* %i, align 4
  %inc1194 = add nsw i32 %478, 1
  store i32 %inc1194, i32* %i, align 4
  br label %for.cond.1188

for.end.1195:                                     ; preds = %for.cond.1188
  store i32 0, i32* %i, align 4
  br label %for.cond.1196

for.cond.1196:                                    ; preds = %for.inc.1202, %for.end.1195
  %479 = load i32, i32* %i, align 4
  %480 = load i32, i32* @kmap_extn, align 4
  %cmp1197 = icmp slt i32 %479, %480
  br i1 %cmp1197, label %for.body.1199, label %for.end.1204

for.body.1199:                                    ; preds = %for.cond.1196
  %481 = load i32, i32* %i, align 4
  %add1200 = add nsw i32 %481, 104
  %call1201 = call i32 @remap(i32 %add1200, i32 1)
  br label %for.inc.1202

for.inc.1202:                                     ; preds = %for.body.1199
  %482 = load i32, i32* %i, align 4
  %inc1203 = add nsw i32 %482, 1
  store i32 %inc1203, i32* %i, align 4
  br label %for.cond.1196

for.end.1204:                                     ; preds = %for.cond.1196
  %483 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %483, i32 0, i32 76
  %484 = load i8*, i8** %d_kmaps, align 8
  %add.ptr = getelementptr inbounds i8, i8* %484, i64 3
  %485 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp = getelementptr inbounds %struct.display, %struct.display* %485, i32 0, i32 77
  store i8* %add.ptr, i8** %d_seqp, align 8
  %486 = load %struct.display*, %struct.display** @display, align 8
  %d_seql = getelementptr inbounds %struct.display, %struct.display* %486, i32 0, i32 78
  store i32 0, i32* %d_seql, align 4
  %487 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh = getelementptr inbounds %struct.display, %struct.display* %487, i32 0, i32 79
  store i8* null, i8** %d_seqh, align 8
  %488 = load %struct.display*, %struct.display** @display, align 8
  %d_tcinited = getelementptr inbounds %struct.display, %struct.display* %488, i32 0, i32 15
  store i8 1, i8* %d_tcinited, align 1
  %call1205 = call i8* @MakeTermcap(i32 0)
  call void @CheckEscape()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.1204, %if.then.969, %if.then.84, %if.then.78, %if.then.72, %if.then.66, %if.then.18, %if.then
  %489 = load i32, i32* %retval
  ret i32 %489
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @e_tgetent(i8* %bp, i8* %name) #0 {
entry:
  %bp.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %bp, i8** %bp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %0)
  %1 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %1)
  %2 = load i8*, i8** %bp.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @tgetent(i8* %2, i8* %3)
  store i32 %call, i32* %r, align 4
  %4 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %4)
  %5 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %5)
  %6 = load i32, i32* %r, align 4
  ret i32 %6
}

declare void @Msg(i32, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @e_tgetflag(i8* %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %cap.addr = alloca i8*, align 8
  %buf = alloca [2 x i8], align 1
  %bufp = alloca i8*, align 8
  %tep = alloca i8*, align 8
  store i8* %cap, i8** %cap.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bufp, align 8
  %0 = load i8*, i8** %cap.addr, align 8
  %call = call i8* @findcap(i8* %0, i8** %bufp, i32 2)
  store i8* %call, i8** %tep, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tep, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 64
  %cond = select i1 %cmp, i32 0, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %cap.addr, align 8
  %call2 = call i32 @tgetflag(i8* %3)
  %cmp3 = icmp sgt i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @e_tgetnum(i8* %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %cap.addr = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  %bufp = alloca i8*, align 8
  %tep = alloca i8*, align 8
  %c = alloca i8, align 1
  %res = alloca i32, align 4
  %base = alloca i32, align 4
  store i8* %cap, i8** %cap.addr, align 8
  store i32 10, i32* %base, align 4
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bufp, align 8
  %0 = load i8*, i8** %cap.addr, align 8
  %call = call i8* @findcap(i8* %0, i8** %bufp, i32 20)
  store i8* %call, i8** %tep, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tep, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %3 = load i8, i8* %c, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8, i8* %c, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 48
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 8, i32* %base, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %5 = load i8*, i8** %tep, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %tep, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp sge i32 %conv8, 48
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8, i8* %c, align 1
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp sle i32 %conv11, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %res, align 4
  %10 = load i32, i32* %base, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i8, i8* %c, align 1
  %conv14 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv14, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %res, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.15:                                        ; preds = %entry
  %13 = load i8*, i8** %cap.addr, align 8
  %call16 = call i32 @tgetnum(i8* %13)
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %while.end, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i8* @e_tgetstr(i8* %cap, i8** %tepp) #0 {
entry:
  %retval = alloca i8*, align 8
  %cap.addr = alloca i8*, align 8
  %tepp.addr = alloca i8**, align 8
  %tep = alloca i8*, align 8
  store i8* %cap, i8** %cap.addr, align 8
  store i8** %tepp, i8*** %tepp.addr, align 8
  %0 = load i8*, i8** %cap.addr, align 8
  %1 = load i8**, i8*** %tepp.addr, align 8
  %call = call i8* @findcap(i8* %0, i8** %1, i32 0)
  store i8* %call, i8** %tep, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tep, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i8*, i8** %tep, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %4, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %cap.addr, align 8
  %6 = load i8**, i8*** %tepp.addr, align 8
  %call2 = call i8* @tgetstr(i8* %5, i8** %6)
  store i8* %call2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i8* @InStr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @CreateTransTable(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %curchar = alloca i32, align 4
  %templ = alloca i8*, align 8
  %arg = alloca i8*, align 8
  %templlen = alloca i32, align 4
  %templnsub = alloca i32, align 4
  %p = alloca i8*, align 8
  %sx = alloca i8*, align 8
  %ctable = alloca i8**, align 8
  %l = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call noalias i8* @calloc(i64 256, i64 8) #2
  %0 = bitcast i8* %call to i8***
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 89
  store i8*** %0, i8**** %d_xtable, align 8
  %cmp = icmp eq i8*** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.194, %if.end
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end.195

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 92
  br i1 %cmp1, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 44
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 37
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %land.lhs.true
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %lor.lhs.false.10, %while.body
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr17, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv18 = zext i8 %14 to i32
  store i32 %conv18, i32* %curchar, align 4
  %15 = load i32, i32* %curchar, align 4
  %cmp19 = icmp eq i32 %15, 66
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store i32 0, i32* %curchar, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  %16 = load i8*, i8** %s.addr, align 8
  store i8* %16, i8** %templ, align 8
  store i32 0, i32* %templlen, align 4
  store i32 0, i32* %templnsub, align 4
  %17 = load i32, i32* %curchar, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable23 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 89
  %19 = load i8***, i8**** %d_xtable23, align 8
  %arrayidx24 = getelementptr inbounds i8**, i8*** %19, i64 %idxprom
  %20 = load i8**, i8*** %arrayidx24, align 8
  %cmp25 = icmp eq i8** %20, null
  br i1 %cmp25, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.end.22
  %call28 = call noalias i8* @calloc(i64 257, i64 8) #2
  %21 = bitcast i8* %call28 to i8**
  %22 = load i32, i32* %curchar, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable30 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 89
  %24 = load i8***, i8**** %d_xtable30, align 8
  %arrayidx31 = getelementptr inbounds i8**, i8*** %24, i64 %idxprom29
  store i8** %21, i8*** %arrayidx31, align 8
  %cmp32 = icmp eq i8** %21, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.27
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  call void @FreeTransTable()
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.22
  %25 = load i32, i32* %curchar, align 4
  %idxprom37 = sext i32 %25 to i64
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable38 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 89
  %27 = load i8***, i8**** %d_xtable38, align 8
  %arrayidx39 = getelementptr inbounds i8**, i8*** %27, i64 %idxprom37
  %28 = load i8**, i8*** %arrayidx39, align 8
  store i8** %28, i8*** %ctable, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %29 = load i8*, i8** %s.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = sext i8 %30 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load i8*, i8** %s.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv42 = sext i8 %32 to i32
  %cmp43 = icmp ne i32 %conv42, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp43, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %34 = load i8*, i8** %s.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv45 = sext i8 %35 to i32
  %cmp46 = icmp eq i32 %conv45, 92
  br i1 %cmp46, label %land.lhs.true.48, label %if.else

land.lhs.true.48:                                 ; preds = %for.body
  %36 = load i8*, i8** %s.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %37 to i32
  %cmp51 = icmp eq i32 %conv50, 92
  br i1 %cmp51, label %if.then.63, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.48
  %38 = load i8*, i8** %s.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %39 to i32
  %cmp56 = icmp eq i32 %conv55, 44
  br i1 %cmp56, label %if.then.63, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.53
  %40 = load i8*, i8** %s.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %41 to i32
  %cmp61 = icmp eq i32 %conv60, 37
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.53, %land.lhs.true.48
  %42 = load i8*, i8** %s.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr64, i8** %s.addr, align 8
  br label %if.end.70

if.else:                                          ; preds = %lor.lhs.false.58, %for.body
  %43 = load i8*, i8** %s.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv65 = sext i8 %44 to i32
  %cmp66 = icmp eq i32 %conv65, 37
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.else
  %45 = load i32, i32* %templnsub, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %templnsub, align 4
  br label %for.inc

if.end.69:                                        ; preds = %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.63
  %46 = load i32, i32* %templlen, align 4
  %inc71 = add nsw i32 %46, 1
  store i32 %inc71, i32* %templlen, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.70, %if.then.68
  %47 = load i8*, i8** %s.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr72, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %48 = load i8*, i8** %s.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr73, i8** %s.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv74 = sext i8 %49 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.end
  br label %while.end.195

if.end.78:                                        ; preds = %for.end
  br label %while.cond.79

while.cond.79:                                    ; preds = %do.end.188, %if.end.78
  %50 = load i8*, i8** %s.addr, align 8
  %51 = load i8, i8* %50, align 1
  %conv80 = sext i8 %51 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  br i1 %tobool81, label %land.rhs.82, label %land.end.86

land.rhs.82:                                      ; preds = %while.cond.79
  %52 = load i8*, i8** %s.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv83 = sext i8 %53 to i32
  %cmp84 = icmp ne i32 %conv83, 44
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.82, %while.cond.79
  %54 = phi i1 [ false, %while.cond.79 ], [ %cmp84, %land.rhs.82 ]
  br i1 %54, label %while.body.87, label %while.end

while.body.87:                                    ; preds = %land.end.86
  %55 = load i8*, i8** %s.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr88, i8** %s.addr, align 8
  %56 = load i8, i8* %55, align 1
  %conv89 = zext i8 %56 to i32
  store i32 %conv89, i32* %c, align 4
  %57 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 -1
  %58 = load i8, i8* %add.ptr, align 1
  %conv90 = sext i8 %58 to i32
  %cmp91 = icmp eq i32 %conv90, 92
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.114

land.lhs.true.93:                                 ; preds = %while.body.87
  %59 = load i8*, i8** %s.addr, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %59, i64 -1
  %arrayidx95 = getelementptr inbounds i8, i8* %add.ptr94, i64 1
  %60 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %60 to i32
  %cmp97 = icmp eq i32 %conv96, 92
  br i1 %cmp97, label %if.then.111, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.93
  %61 = load i8*, i8** %s.addr, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %61, i64 -1
  %arrayidx101 = getelementptr inbounds i8, i8* %add.ptr100, i64 1
  %62 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %62 to i32
  %cmp103 = icmp eq i32 %conv102, 44
  br i1 %cmp103, label %if.then.111, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.99
  %63 = load i8*, i8** %s.addr, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %63, i64 -1
  %arrayidx107 = getelementptr inbounds i8, i8* %add.ptr106, i64 1
  %64 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %64 to i32
  %cmp109 = icmp eq i32 %conv108, 37
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false.99, %land.lhs.true.93
  %65 = load i8*, i8** %s.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr112, i8** %s.addr, align 8
  %66 = load i8, i8* %65, align 1
  %conv113 = zext i8 %66 to i32
  store i32 %conv113, i32* %c, align 4
  br label %if.end.119

if.else.114:                                      ; preds = %lor.lhs.false.105, %while.body.87
  %67 = load i32, i32* %c, align 4
  %cmp115 = icmp eq i32 %67, 37
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.else.114
  store i32 256, i32* %c, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.else.114
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.111
  %68 = load i32, i32* %c, align 4
  %idxprom120 = sext i32 %68 to i64
  %69 = load i8**, i8*** %ctable, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %69, i64 %idxprom120
  %70 = load i8*, i8** %arrayidx121, align 8
  %tobool122 = icmp ne i8* %70, null
  br i1 %tobool122, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %if.end.119
  %71 = load i32, i32* %c, align 4
  %idxprom124 = sext i32 %71 to i64
  %72 = load i8**, i8*** %ctable, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %72, i64 %idxprom124
  %73 = load i8*, i8** %arrayidx125, align 8
  call void @free(i8* %73) #2
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %if.end.119
  %74 = load i8*, i8** %s.addr, align 8
  store i8* %74, i8** %arg, align 8
  %call127 = call i32 @copyarg(i8** %s.addr, i8* null)
  store i32 %call127, i32* %l, align 4
  %75 = load i32, i32* %c, align 4
  %cmp128 = icmp ne i32 %75, 256
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.126
  %76 = load i32, i32* %l, align 4
  %77 = load i32, i32* %templnsub, align 4
  %mul = mul nsw i32 %76, %77
  %78 = load i32, i32* %templlen, align 4
  %add = add nsw i32 %mul, %78
  store i32 %add, i32* %l, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.126
  %79 = load i32, i32* %l, align 4
  %add132 = add nsw i32 %79, 1
  %conv133 = sext i32 %add132 to i64
  %call134 = call noalias i8* @malloc(i64 %conv133) #2
  %80 = load i32, i32* %c, align 4
  %idxprom135 = sext i32 %80 to i64
  %81 = load i8**, i8*** %ctable, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %81, i64 %idxprom135
  store i8* %call134, i8** %arrayidx136, align 8
  %cmp137 = icmp eq i8* %call134, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.131
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  call void @FreeTransTable()
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.131
  %82 = load i32, i32* %c, align 4
  %idxprom141 = sext i32 %82 to i64
  %83 = load i8**, i8*** %ctable, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %83, i64 %idxprom141
  %84 = load i8*, i8** %arrayidx142, align 8
  store i8* %84, i8** %sx, align 8
  %85 = load i32, i32* %c, align 4
  %cmp143 = icmp eq i32 %85, 256
  br i1 %cmp143, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.140
  br label %cond.end

cond.false:                                       ; preds = %if.end.140
  %86 = load i8*, i8** %templ, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), %cond.true ], [ %86, %cond.false ]
  store i8* %cond, i8** %p, align 8
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.184, %cond.end
  %87 = load i8*, i8** %p, align 8
  %88 = load i8, i8* %87, align 1
  %conv146 = sext i8 %88 to i32
  %tobool147 = icmp ne i32 %conv146, 0
  br i1 %tobool147, label %land.rhs.148, label %land.end.152

land.rhs.148:                                     ; preds = %for.cond.145
  %89 = load i8*, i8** %p, align 8
  %90 = load i8, i8* %89, align 1
  %conv149 = sext i8 %90 to i32
  %cmp150 = icmp ne i32 %conv149, 44
  br label %land.end.152

land.end.152:                                     ; preds = %land.rhs.148, %for.cond.145
  %91 = phi i1 [ false, %for.cond.145 ], [ %cmp150, %land.rhs.148 ]
  br i1 %91, label %for.body.153, label %for.end.186

for.body.153:                                     ; preds = %land.end.152
  %92 = load i8*, i8** %p, align 8
  %93 = load i8, i8* %92, align 1
  %conv154 = sext i8 %93 to i32
  %cmp155 = icmp eq i32 %conv154, 92
  br i1 %cmp155, label %land.lhs.true.157, label %if.else.174

land.lhs.true.157:                                ; preds = %for.body.153
  %94 = load i8*, i8** %p, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %95 to i32
  %cmp160 = icmp eq i32 %conv159, 92
  br i1 %cmp160, label %if.then.172, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %land.lhs.true.157
  %96 = load i8*, i8** %p, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %97 to i32
  %cmp165 = icmp eq i32 %conv164, 44
  br i1 %cmp165, label %if.then.172, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %lor.lhs.false.162
  %98 = load i8*, i8** %p, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %99 to i32
  %cmp170 = icmp eq i32 %conv169, 37
  br i1 %cmp170, label %if.then.172, label %if.else.174

if.then.172:                                      ; preds = %lor.lhs.false.167, %lor.lhs.false.162, %land.lhs.true.157
  %100 = load i8*, i8** %p, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr173, i8** %p, align 8
  br label %if.end.182

if.else.174:                                      ; preds = %lor.lhs.false.167, %for.body.153
  %101 = load i8*, i8** %p, align 8
  %102 = load i8, i8* %101, align 1
  %conv175 = sext i8 %102 to i32
  %cmp176 = icmp eq i32 %conv175, 37
  br i1 %cmp176, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.else.174
  %103 = load i8*, i8** %arg, align 8
  store i8* %103, i8** %s.addr, align 8
  %104 = load i8*, i8** %sx, align 8
  %call179 = call i32 @copyarg(i8** %s.addr, i8* %104)
  %105 = load i8*, i8** %sx, align 8
  %idx.ext = sext i32 %call179 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %105, i64 %idx.ext
  store i8* %add.ptr180, i8** %sx, align 8
  br label %for.inc.184

if.end.181:                                       ; preds = %if.else.174
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.172
  %106 = load i8*, i8** %p, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %sx, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr183, i8** %sx, align 8
  store i8 %107, i8* %108, align 1
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.182, %if.then.178
  %109 = load i8*, i8** %p, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr185, i8** %p, align 8
  br label %for.cond.145

for.end.186:                                      ; preds = %land.end.152
  %110 = load i8*, i8** %sx, align 8
  store i8 0, i8* %110, align 1
  br label %do.body

do.body:                                          ; preds = %for.end.186
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.187

do.body.187:                                      ; preds = %do.end
  br label %do.end.188

do.end.188:                                       ; preds = %do.body.187
  br label %while.cond.79

while.end:                                        ; preds = %land.end.86
  %111 = load i8*, i8** %s.addr, align 8
  %112 = load i8, i8* %111, align 1
  %conv189 = sext i8 %112 to i32
  %cmp190 = icmp eq i32 %conv189, 44
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %while.end
  %113 = load i8*, i8** %s.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr193, i8** %s.addr, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %while.end
  br label %while.cond

while.end.195:                                    ; preds = %if.then.77, %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.195, %if.then.139, %if.then.34, %if.then
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare void @CheckScreenSize(i32) #3

declare i32 @FindEncoding(i8*) #3

declare i32 @CalcCost(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @remap(i32 %n, i32 %map) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %map.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %fl = alloca i32, align 4
  %domap = alloca i32, align 4
  %a1 = alloca %struct.action*, align 8
  %a2 = alloca %struct.action*, align 8
  %tab = alloca %struct.action*, align 8
  %l = alloca i32, align 4
  %kme = alloca %struct.kmap_ext*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %map, i32* %map.addr, align 4
  store i8* null, i8** %s, align 8
  store i32 0, i32* %fl, align 4
  store i32 0, i32* %domap, align 4
  store i32 0, i32* %l, align 4
  store %struct.kmap_ext* null, %struct.kmap_ext** %kme, align 8
  store %struct.action* null, %struct.action** %a1, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 104
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kmap_ext*, %struct.kmap_ext** @kmap_exts, align 8
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 104
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %1, i64 %idx.ext
  store %struct.kmap_ext* %add.ptr, %struct.kmap_ext** %kme, align 8
  %3 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %str = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %3, i32 0, i32 0
  %4 = load i8*, i8** %str, align 8
  store i8* %4, i8** %s, align 8
  %5 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %fl1 = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %5, i32 0, i32 1
  %6 = load i32, i32* %fl1, align 4
  %and = and i32 %6, -16385
  store i32 %and, i32* %l, align 4
  %7 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %fl2 = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %7, i32 0, i32 1
  %8 = load i32, i32* %fl2, align 4
  %and3 = and i32 %8, 16384
  store i32 %and3, i32* %fl, align 4
  %9 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %um = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %9, i32 0, i32 2
  store %struct.action* %um, %struct.action** %a1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.action* getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i32 0), %struct.action** %tab, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.92, %if.end
  store %struct.action* null, %struct.action** %a2, align 8
  %10 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %10, 104
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %for.cond
  %11 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.action*, %struct.action** %tab, align 8
  %arrayidx = getelementptr inbounds %struct.action, %struct.action* %12, i64 %idxprom
  store %struct.action* %arrayidx, %struct.action** %a1, align 8
  %13 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp sge i32 %13, 82
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %14 = load i32, i32* %n.addr, align 4
  %sub8 = sub nsw i32 %14, 22
  store i32 %sub8, i32* %n.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.5
  %15 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %15, 106
  %idxprom10 = sext i32 %add to i64
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx11 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 %idxprom10
  %str12 = bitcast %union.tcu* %arrayidx11 to i8**
  %17 = load i8*, i8** %str12, align 8
  store i8* %17, i8** %s, align 8
  %18 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %19 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %19) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %l, align 4
  %20 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp sge i32 %20, 60
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %cond.end
  %21 = load i32, i32* %n.addr, align 4
  %add16 = add nsw i32 %21, 22
  %idxprom17 = sext i32 %add16 to i64
  %22 = load %struct.action*, %struct.action** %tab, align 8
  %arrayidx18 = getelementptr inbounds %struct.action, %struct.action* %22, i64 %idxprom17
  store %struct.action* %arrayidx18, %struct.action** %a2, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %cond.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.cond
  %23 = load i8*, i8** %s, align 8
  %cmp21 = icmp eq i8* %23, null
  br i1 %cmp21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %24 = load i32, i32* %l, align 4
  %cmp23 = icmp eq i32 %24, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false
  %25 = load %struct.action*, %struct.action** %a1, align 8
  %tobool27 = icmp ne %struct.action* %25, null
  br i1 %tobool27, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.26
  %26 = load %struct.action*, %struct.action** %a1, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %26, i32 0, i32 0
  %27 = load i32, i32* %nr, align 4
  %cmp28 = icmp eq i32 %27, -1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store %struct.action* null, %struct.action** %a1, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true, %if.end.26
  %28 = load %struct.action*, %struct.action** %a2, align 8
  %tobool32 = icmp ne %struct.action* %28, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %if.end.31
  %29 = load %struct.action*, %struct.action** %a2, align 8
  %nr34 = getelementptr inbounds %struct.action, %struct.action* %29, i32 0, i32 0
  %30 = load i32, i32* %nr34, align 4
  %cmp35 = icmp eq i32 %30, -1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store %struct.action* null, %struct.action** %a2, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.33, %if.end.31
  %31 = load %struct.action*, %struct.action** %a1, align 8
  %tobool39 = icmp ne %struct.action* %31, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.54

land.lhs.true.40:                                 ; preds = %if.end.38
  %32 = load %struct.action*, %struct.action** %a1, align 8
  %nr41 = getelementptr inbounds %struct.action, %struct.action* %32, i32 0, i32 0
  %33 = load i32, i32* %nr41, align 4
  %cmp42 = icmp eq i32 %33, 158
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.54

land.lhs.true.44:                                 ; preds = %land.lhs.true.40
  %34 = load %struct.action*, %struct.action** %a1, align 8
  %args = getelementptr inbounds %struct.action, %struct.action* %34, i32 0, i32 1
  %35 = load i8**, i8*** %args, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx45, align 8
  %tobool46 = icmp ne i8* %36, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.54

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %37 = load %struct.action*, %struct.action** %a1, align 8
  %args48 = getelementptr inbounds %struct.action, %struct.action* %37, i32 0, i32 1
  %38 = load i8**, i8*** %args48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %38, i64 0
  %39 = load i8*, i8** %arrayidx49, align 8
  %40 = load i8*, i8** %s, align 8
  %call50 = call i32 @strcmp(i8* %39, i8* %40) #6
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true.47
  store %struct.action* null, %struct.action** %a1, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true.47, %land.lhs.true.44, %land.lhs.true.40, %if.end.38
  %41 = load %struct.action*, %struct.action** %a2, align 8
  %tobool55 = icmp ne %struct.action* %41, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.71

land.lhs.true.56:                                 ; preds = %if.end.54
  %42 = load %struct.action*, %struct.action** %a2, align 8
  %nr57 = getelementptr inbounds %struct.action, %struct.action* %42, i32 0, i32 0
  %43 = load i32, i32* %nr57, align 4
  %cmp58 = icmp eq i32 %43, 158
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.71

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %44 = load %struct.action*, %struct.action** %a2, align 8
  %args61 = getelementptr inbounds %struct.action, %struct.action* %44, i32 0, i32 1
  %45 = load i8**, i8*** %args61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx62, align 8
  %tobool63 = icmp ne i8* %46, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.71

land.lhs.true.64:                                 ; preds = %land.lhs.true.60
  %47 = load %struct.action*, %struct.action** %a2, align 8
  %args65 = getelementptr inbounds %struct.action, %struct.action* %47, i32 0, i32 1
  %48 = load i8**, i8*** %args65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx66, align 8
  %50 = load i8*, i8** %s, align 8
  %call67 = call i32 @strcmp(i8* %49, i8* %50) #6
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.64
  store %struct.action* null, %struct.action** %a2, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.64, %land.lhs.true.60, %land.lhs.true.56, %if.end.54
  %51 = load %struct.action*, %struct.action** %a1, align 8
  %tobool72 = icmp ne %struct.action* %51, null
  br i1 %tobool72, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.71
  %52 = load %struct.action*, %struct.action** %a2, align 8
  %tobool73 = icmp ne %struct.action* %52, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.71
  %53 = phi i1 [ true, %if.end.71 ], [ %tobool73, %lor.rhs ]
  %lor.ext = zext i1 %53 to i32
  %54 = load i32, i32* %domap, align 4
  %or = or i32 %54, %lor.ext
  store i32 %or, i32* %domap, align 4
  %55 = load %struct.action*, %struct.action** %tab, align 8
  %cmp74 = icmp eq %struct.action* %55, getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i32 0)
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %lor.end
  store %struct.action* getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i32 0), %struct.action** %tab, align 8
  %56 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %tobool77 = icmp ne %struct.kmap_ext* %56, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.then.76
  %57 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %dm = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %57, i32 0, i32 3
  br label %cond.end.80

cond.false.79:                                    ; preds = %if.then.76
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi %struct.action* [ %dm, %cond.true.78 ], [ null, %cond.false.79 ]
  store %struct.action* %cond81, %struct.action** %a1, align 8
  br label %if.end.92

if.else:                                          ; preds = %lor.end
  %58 = load %struct.action*, %struct.action** %tab, align 8
  %cmp82 = icmp eq %struct.action* %58, getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i32 0)
  br i1 %cmp82, label %if.then.84, label %if.else.90

if.then.84:                                       ; preds = %if.else
  store %struct.action* getelementptr inbounds ([0 x %struct.action], [0 x %struct.action]* @mmtab, i32 0, i32 0), %struct.action** %tab, align 8
  %59 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %tobool85 = icmp ne %struct.kmap_ext* %59, null
  br i1 %tobool85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %if.then.84
  %60 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %mm = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %60, i32 0, i32 4
  br label %cond.end.88

cond.false.87:                                    ; preds = %if.then.84
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.86
  %cond89 = phi %struct.action* [ %mm, %cond.true.86 ], [ null, %cond.false.87 ]
  store %struct.action* %cond89, %struct.action** %a1, align 8
  br label %if.end.91

if.else.90:                                       ; preds = %if.else
  br label %for.end

if.end.91:                                        ; preds = %cond.end.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %cond.end.80
  br label %for.cond

for.end:                                          ; preds = %if.else.90
  %61 = load i32, i32* %n.addr, align 4
  %cmp93 = icmp slt i32 %61, 82
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.end
  store i32 1, i32* %domap, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %for.end
  %62 = load i32, i32* %map.addr, align 4
  %cmp97 = icmp eq i32 %62, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.102

land.lhs.true.99:                                 ; preds = %if.end.96
  %63 = load i32, i32* %domap, align 4
  %tobool100 = icmp ne i32 %63, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.99
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %land.lhs.true.99, %if.end.96
  %64 = load i32, i32* %map.addr, align 4
  %tobool103 = icmp ne i32 %64, 0
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.107

land.lhs.true.104:                                ; preds = %if.end.102
  %65 = load i32, i32* %domap, align 4
  %tobool105 = icmp ne i32 %65, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %land.lhs.true.104
  store i32 0, i32* %retval
  br label %return

if.end.107:                                       ; preds = %land.lhs.true.104, %if.end.102
  br label %do.body

do.body:                                          ; preds = %if.end.107
  br label %do.end

do.end:                                           ; preds = %do.body
  %66 = load i32, i32* %map.addr, align 4
  %tobool108 = icmp ne i32 %66, 0
  br i1 %tobool108, label %if.then.109, label %if.else.112

if.then.109:                                      ; preds = %do.end
  %67 = load i8*, i8** %s, align 8
  %68 = load i32, i32* %l, align 4
  %69 = load i32, i32* %n.addr, align 4
  %70 = load i32, i32* %fl, align 4
  %or110 = or i32 %69, %70
  %call111 = call i32 @addmapseq(i8* %67, i32 %68, i32 %or110)
  store i32 %call111, i32* %retval
  br label %return

if.else.112:                                      ; preds = %do.end
  %71 = load i8*, i8** %s, align 8
  %72 = load i32, i32* %l, align 4
  %call113 = call i32 @remmapseq(i8* %71, i32 %72)
  store i32 %call113, i32* %retval
  br label %return

return:                                           ; preds = %if.else.112, %if.then.109, %if.then.106, %if.then.101, %if.then.25
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i8* @MakeTermcap(i32 %aflag) #0 {
entry:
  %retval = alloca i8*, align 8
  %aflag.addr = alloca i32, align 4
  %buf = alloca [2048 x i8], align 16
  %p = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %s = alloca i8*, align 8
  %ch = alloca i8, align 1
  %tname = alloca i8*, align 8
  %i = alloca i32, align 4
  %wi = alloca i32, align 4
  %he = alloca i32, align 4
  %act = alloca %struct.action*, align 8
  store i32 %aflag, i32* %aflag.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 16
  %2 = load i32, i32* %d_width, align 4
  store i32 %2, i32* %wi, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 17
  %4 = load i32, i32* %d_height, align 4
  store i32 %4, i32* %he, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 13
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  store i8* %arraydecay, i8** %tname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 80, i32* %wi, align 4
  store i32 24, i32* %he, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8** %tname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #2
  store i8* %call, i8** %s, align 8
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %6 = load i8*, i8** %s, align 8
  %call2 = call i64 @strlen(i8* %6) #6
  %cmp = icmp ult i64 %call2, 2048
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %s, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %7) #2
  %call5 = call i8* @strcpy(i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)) #2
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.3
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  store i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i8** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  store i32 0, i32* @Termcaplen, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %8 = load i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0), align 1
  %conv = sext i8 %8 to i32
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.12
  %call15 = call i64 @strlen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0)) #6
  %cmp16 = icmp ugt i64 %call15, 765
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %lor.lhs.false, %do.end.12
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  %call21 = call i8* @strncpy(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i64 32) #2
  store i8 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i64 32), align 1
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.20, %lor.lhs.false
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %call24 = call i8* @strcpy(i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #2
  store i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i64 5), i8** %p, align 8
  %9 = load i32, i32* %aflag.addr, align 4
  %tobool25 = icmp ne i32 %9, 0
  br i1 %tobool25, label %if.end.39, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %do.body.23
  %call27 = call i64 @strlen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0)) #6
  %10 = load i8*, i8** %tname, align 8
  %call28 = call i64 @strlen(i8* %10) #6
  %add = add i64 %call27, %call28
  %cmp29 = icmp ult i64 %add, 767
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %land.lhs.true.26
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %tname, align 8
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0), i8* %12) #2
  %arraydecay33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %13 = load i8*, i8** %p, align 8
  %call34 = call i32 @e_tgetent(i8* %arraydecay33, i8* %13)
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.31
  br label %do.end.58

if.end.38:                                        ; preds = %if.then.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.26, %do.body.23
  %14 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 17), align 4
  %tobool40 = icmp ne i32 %14, 0
  br i1 %tobool40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %if.end.39
  %15 = load i8*, i8** %p, align 8
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0)) #2
  %arraydecay43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %16 = load i8*, i8** %p, align 8
  %call44 = call i32 @e_tgetent(i8* %arraydecay43, i8* %16)
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.41
  br label %do.end.58

if.end.48:                                        ; preds = %if.then.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.39
  %17 = load i8*, i8** %p, align 8
  %call50 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @screenterm, i32 0, i32 0)) #2
  %arraydecay51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %18 = load i8*, i8** %p, align 8
  %call52 = call i32 @e_tgetent(i8* %arraydecay51, i8* %18)
  %cmp53 = icmp eq i32 %call52, 1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  br label %do.end.58

if.end.56:                                        ; preds = %if.end.49
  %19 = load i8*, i8** %p, align 8
  %call57 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #2
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.56, %if.then.55, %if.then.47, %if.then.37
  store i32 100, i32* @tcLineLen, align 4
  %call59 = call i64 @strlen(i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i32 0)) #6
  %cmp60 = icmp ugt i64 %call59, 2008
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %do.end.58
  %call63 = call i8* @strcpy(i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)) #2
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %do.end.58
  %call65 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([773 x i8], [773 x i8]* @Term, i32 0, i64 5)) #2
  %call66 = call i64 @strlen(i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0)) #6
  %conv67 = trunc i64 %call66 to i32
  store i32 %conv67, i32* @Termcaplen, align 4
  br label %do.body.68

do.body.68:                                       ; preds = %if.end.64
  br label %do.end.69

do.end.69:                                        ; preds = %do.body.68
  %20 = load i8*, i8** @extra_outcap, align 8
  %tobool70 = icmp ne i8* %20, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.77

land.lhs.true.71:                                 ; preds = %do.end.69
  %21 = load i8*, i8** @extra_outcap, align 8
  %22 = load i8, i8* %21, align 1
  %conv72 = sext i8 %22 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %land.lhs.true.71
  %23 = load i8*, i8** @extra_outcap, align 8
  store i8* %23, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.74
  %24 = load i8*, i8** %cp, align 8
  %call75 = call i8* @index(i8* %24, i32 58) #6
  store i8* %call75, i8** %p, align 8
  %tobool76 = icmp ne i8* %call75, null
  br i1 %tobool76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %26 = load i8, i8* %incdec.ptr, align 1
  store i8 %26, i8* %ch, align 1
  %27 = load i8*, i8** %p, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %cp, align 8
  call void @AddCap(i8* %28)
  %29 = load i8, i8* %ch, align 1
  %30 = load i8*, i8** %p, align 8
  store i8 %29, i8* %30, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i8*, i8** %p, align 8
  store i8* %31, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 100, i32* @tcLineLen, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %land.lhs.true.71, %do.end.69
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.body.78
  %32 = load i32, i32* @Termcaplen, align 4
  %conv80 = sext i32 %32 to i64
  %call81 = call i64 @strlen(i8* getelementptr inbounds ([224 x i8], [224 x i8]* @TermcapConst, i32 0, i32 0)) #6
  %add82 = add i64 %conv80, %call81
  %cmp83 = icmp ult i64 %add82, 2048
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %do.end.79
  %33 = load i32, i32* @Termcaplen, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i64 %idx.ext
  %call86 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @TermcapConst, i32 0, i32 0)) #2
  %call87 = call i64 @strlen(i8* getelementptr inbounds ([224 x i8], [224 x i8]* @TermcapConst, i32 0, i32 0)) #6
  %34 = load i32, i32* @Termcaplen, align 4
  %conv88 = sext i32 %34 to i64
  %add89 = add i64 %conv88, %call87
  %conv90 = trunc i64 %add89 to i32
  store i32 %conv90, i32* @Termcaplen, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %do.end.79
  %arraydecay92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %35 = load i32, i32* %he, align 4
  %36 = load i32, i32* %wi, align 4
  %call93 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 %35, i32 %36) #2
  %arraydecay94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @AddCap(i8* %arraydecay94)
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0))
  %37 = load i32, i32* %aflag.addr, align 4
  %tobool95 = icmp ne i32 %37, 0
  br i1 %tobool95, label %if.then.110, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.end.91
  %38 = load i32, i32* @force_vt, align 4
  %tobool97 = icmp ne i32 %38, 0
  br i1 %tobool97, label %land.lhs.true.98, label %lor.lhs.false.100

land.lhs.true.98:                                 ; preds = %lor.lhs.false.96
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 86
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %40 = load i32, i32* %flg, align 4
  %tobool99 = icmp ne i32 %40, 0
  br i1 %tobool99, label %lor.lhs.false.100, label %if.then.110

lor.lhs.false.100:                                ; preds = %land.lhs.true.98, %lor.lhs.false.96
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs101 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 83
  %arrayidx102 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs101, i32 0, i64 87
  %flg103 = bitcast %union.tcu* %arrayidx102 to i32*
  %42 = load i32, i32* %flg103, align 4
  %tobool104 = icmp ne i32 %42, 0
  br i1 %tobool104, label %if.then.110, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.100
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs106 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 83
  %arrayidx107 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs106, i32 0, i64 83
  %flg108 = bitcast %union.tcu* %arrayidx107 to i32*
  %44 = load i32, i32* %flg108, align 4
  %tobool109 = icmp ne i32 %44, 0
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false.100, %land.lhs.true.98, %if.end.91
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %lor.lhs.false.105
  %45 = load i32, i32* %aflag.addr, align 4
  %tobool112 = icmp ne i32 %45, 0
  br i1 %tobool112, label %if.then.132, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.111
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs114 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 83
  %arrayidx115 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs114, i32 0, i64 18
  %str = bitcast %union.tcu* %arrayidx115 to i8**
  %47 = load i8*, i8** %str, align 8
  %tobool116 = icmp ne i8* %47, null
  br i1 %tobool116, label %land.lhs.true.117, label %lor.lhs.false.122

land.lhs.true.117:                                ; preds = %lor.lhs.false.113
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs118 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 83
  %arrayidx119 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs118, i32 0, i64 21
  %str120 = bitcast %union.tcu* %arrayidx119 to i8**
  %49 = load i8*, i8** %str120, align 8
  %tobool121 = icmp ne i8* %49, null
  br i1 %tobool121, label %if.then.132, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.117, %lor.lhs.false.113
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs123 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 83
  %arrayidx124 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs123, i32 0, i64 22
  %str125 = bitcast %union.tcu* %arrayidx124 to i8**
  %51 = load i8*, i8** %str125, align 8
  %tobool126 = icmp ne i8* %51, null
  br i1 %tobool126, label %if.then.132, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.122
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs128 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx129 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs128, i32 0, i64 23
  %str130 = bitcast %union.tcu* %arrayidx129 to i8**
  %53 = load i8*, i8** %str130, align 8
  %tobool131 = icmp ne i8* %53, null
  br i1 %tobool131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false.122, %land.lhs.true.117, %if.end.111
  call void @AddCap(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.140

if.else.133:                                      ; preds = %lor.lhs.false.127
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs134 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 83
  %arrayidx135 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs134, i32 0, i64 21
  %str136 = bitcast %union.tcu* %arrayidx135 to i8**
  %55 = load i8*, i8** %str136, align 8
  %tobool137 = icmp ne i8* %55, null
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.else.133
  call void @AddCap(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.else.133
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.132
  %56 = load i32, i32* %aflag.addr, align 4
  %tobool141 = icmp ne i32 %56, 0
  br i1 %tobool141, label %if.then.147, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.140
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs143 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 83
  %arrayidx144 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs143, i32 0, i64 18
  %str145 = bitcast %union.tcu* %arrayidx144 to i8**
  %58 = load i8*, i8** %str145, align 8
  %tobool146 = icmp ne i8* %58, null
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false.142, %if.end.140
  call void @AddCap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %lor.lhs.false.142
  %59 = load i32, i32* %aflag.addr, align 4
  %tobool149 = icmp ne i32 %59, 0
  br i1 %tobool149, label %if.then.165, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.148
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs151 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 83
  %arrayidx152 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs151, i32 0, i64 18
  %str153 = bitcast %union.tcu* %arrayidx152 to i8**
  %61 = load i8*, i8** %str153, align 8
  %tobool154 = icmp ne i8* %61, null
  br i1 %tobool154, label %if.then.165, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.150
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs156 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 83
  %arrayidx157 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs156, i32 0, i64 24
  %str158 = bitcast %union.tcu* %arrayidx157 to i8**
  %63 = load i8*, i8** %str158, align 8
  %tobool159 = icmp ne i8* %63, null
  br i1 %tobool159, label %if.then.165, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.155
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs161 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 83
  %arrayidx162 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs161, i32 0, i64 25
  %str163 = bitcast %union.tcu* %arrayidx162 to i8**
  %65 = load i8*, i8** %str163, align 8
  %tobool164 = icmp ne i8* %65, null
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %lor.lhs.false.160, %lor.lhs.false.155, %lor.lhs.false.150, %if.end.148
  call void @AddCap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %lor.lhs.false.160
  %66 = load i32, i32* %aflag.addr, align 4
  %tobool167 = icmp ne i32 %66, 0
  br i1 %tobool167, label %if.then.178, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %if.end.166
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs169 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 83
  %arrayidx170 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs169, i32 0, i64 31
  %str171 = bitcast %union.tcu* %arrayidx170 to i8**
  %68 = load i8*, i8** %str171, align 8
  %tobool172 = icmp ne i8* %68, null
  br i1 %tobool172, label %if.then.178, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %lor.lhs.false.168
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs174 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 83
  %arrayidx175 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs174, i32 0, i64 32
  %str176 = bitcast %union.tcu* %arrayidx175 to i8**
  %70 = load i8*, i8** %str176, align 8
  %tobool177 = icmp ne i8* %70, null
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %lor.lhs.false.173, %lor.lhs.false.168, %if.end.166
  call void @AddCap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %lor.lhs.false.173
  %71 = load i32, i32* %aflag.addr, align 4
  %tobool180 = icmp ne i32 %71, 0
  br i1 %tobool180, label %if.then.196, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.end.179
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs182 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 83
  %arrayidx183 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs182, i32 0, i64 30
  %str184 = bitcast %union.tcu* %arrayidx183 to i8**
  %73 = load i8*, i8** %str184, align 8
  %tobool185 = icmp ne i8* %73, null
  br i1 %tobool185, label %if.then.196, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %lor.lhs.false.181
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs187 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 83
  %arrayidx188 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs187, i32 0, i64 29
  %str189 = bitcast %union.tcu* %arrayidx188 to i8**
  %75 = load i8*, i8** %str189, align 8
  %tobool190 = icmp ne i8* %75, null
  br i1 %tobool190, label %if.then.196, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %lor.lhs.false.186
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs192 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 83
  %arrayidx193 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs192, i32 0, i64 27
  %str194 = bitcast %union.tcu* %arrayidx193 to i8**
  %77 = load i8*, i8** %str194, align 8
  %tobool195 = icmp ne i8* %77, null
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %lor.lhs.false.191, %lor.lhs.false.186, %lor.lhs.false.181, %if.end.179
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %lor.lhs.false.191
  call void @AddCap(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0))
  %78 = load %struct.display*, %struct.display** @display, align 8
  %tobool198 = icmp ne %struct.display* %78, null
  br i1 %tobool198, label %if.then.199, label %if.end.307

if.then.199:                                      ; preds = %if.end.197
  %79 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs200 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 83
  %arrayidx201 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs200, i32 0, i64 48
  %str202 = bitcast %union.tcu* %arrayidx201 to i8**
  %80 = load i8*, i8** %str202, align 8
  %tobool203 = icmp ne i8* %80, null
  br i1 %tobool203, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.then.199
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %if.then.199
  %81 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs206 = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 83
  %arrayidx207 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs206, i32 0, i64 51
  %str208 = bitcast %union.tcu* %arrayidx207 to i8**
  %82 = load i8*, i8** %str208, align 8
  %tobool209 = icmp ne i8* %82, null
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.205
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %if.end.205
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs212 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 83
  %arrayidx213 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs212, i32 0, i64 52
  %str214 = bitcast %union.tcu* %arrayidx213 to i8**
  %84 = load i8*, i8** %str214, align 8
  %tobool215 = icmp ne i8* %84, null
  br i1 %tobool215, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.211
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.211
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs218 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 83
  %arrayidx219 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs218, i32 0, i64 49
  %str220 = bitcast %union.tcu* %arrayidx219 to i8**
  %86 = load i8*, i8** %str220, align 8
  %tobool221 = icmp ne i8* %86, null
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.217
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %if.end.217
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs224 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 83
  %arrayidx225 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs224, i32 0, i64 47
  %str226 = bitcast %union.tcu* %arrayidx225 to i8**
  %88 = load i8*, i8** %str226, align 8
  %tobool227 = icmp ne i8* %88, null
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.223
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %if.end.223
  %89 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs230 = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 83
  %arrayidx231 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs230, i32 0, i64 50
  %str232 = bitcast %union.tcu* %arrayidx231 to i8**
  %90 = load i8*, i8** %str232, align 8
  %tobool233 = icmp ne i8* %90, null
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.end.229
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %if.end.229
  %91 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs236 = getelementptr inbounds %struct.display, %struct.display* %91, i32 0, i32 83
  %arrayidx237 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs236, i32 0, i64 52
  %str238 = bitcast %union.tcu* %arrayidx237 to i8**
  %92 = load i8*, i8** %str238, align 8
  %tobool239 = icmp ne i8* %92, null
  br i1 %tobool239, label %if.then.255, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %if.end.235
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs241 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 83
  %arrayidx242 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs241, i32 0, i64 49
  %str243 = bitcast %union.tcu* %arrayidx242 to i8**
  %94 = load i8*, i8** %str243, align 8
  %tobool244 = icmp ne i8* %94, null
  br i1 %tobool244, label %if.then.255, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false.240
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs246 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 83
  %arrayidx247 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs246, i32 0, i64 47
  %str248 = bitcast %union.tcu* %arrayidx247 to i8**
  %96 = load i8*, i8** %str248, align 8
  %tobool249 = icmp ne i8* %96, null
  br i1 %tobool249, label %if.then.255, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %lor.lhs.false.245
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs251 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 83
  %arrayidx252 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs251, i32 0, i64 50
  %str253 = bitcast %union.tcu* %arrayidx252 to i8**
  %98 = load i8*, i8** %str253, align 8
  %tobool254 = icmp ne i8* %98, null
  br i1 %tobool254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %lor.lhs.false.250, %lor.lhs.false.245, %lor.lhs.false.240, %if.end.235
  call void @AddCap(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %lor.lhs.false.250
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 86
  %100 = load i32, i32* %d_hascolor, align 4
  %tobool257 = icmp ne i32 %100, 0
  br i1 %tobool257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.256
  call void @AddCap(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.end.256
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs260 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 83
  %arrayidx261 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs260, i32 0, i64 43
  %str262 = bitcast %union.tcu* %arrayidx261 to i8**
  %102 = load i8*, i8** %str262, align 8
  %tobool263 = icmp ne i8* %102, null
  br i1 %tobool263, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.end.259
  call void @AddCap(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %if.end.259
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs266 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 83
  %arrayidx267 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs266, i32 0, i64 97
  %flg268 = bitcast %union.tcu* %arrayidx267 to i32*
  %104 = load i32, i32* %flg268, align 4
  %tobool269 = icmp ne i32 %104, 0
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.end.265
  call void @AddCap(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %if.end.265
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs272 = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 83
  %arrayidx273 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs272, i32 0, i64 100
  %str274 = bitcast %union.tcu* %arrayidx273 to i8**
  %106 = load i8*, i8** %str274, align 8
  %tobool275 = icmp ne i8* %106, null
  br i1 %tobool275, label %if.then.287, label %lor.lhs.false.276

lor.lhs.false.276:                                ; preds = %if.end.271
  %107 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs277 = getelementptr inbounds %struct.display, %struct.display* %107, i32 0, i32 83
  %arrayidx278 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs277, i32 0, i64 98
  %str279 = bitcast %union.tcu* %arrayidx278 to i8**
  %108 = load i8*, i8** %str279, align 8
  %tobool280 = icmp ne i8* %108, null
  br i1 %tobool280, label %land.lhs.true.281, label %if.end.288

land.lhs.true.281:                                ; preds = %lor.lhs.false.276
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs282 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 83
  %arrayidx283 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs282, i32 0, i64 98
  %str284 = bitcast %union.tcu* %arrayidx283 to i8**
  %110 = load i8*, i8** %str284, align 8
  %111 = load i8, i8* %110, align 1
  %conv285 = sext i8 %111 to i32
  %tobool286 = icmp ne i32 %conv285, 0
  br i1 %tobool286, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %land.lhs.true.281, %if.end.271
  call void @AddCap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %land.lhs.true.281, %lor.lhs.false.276
  %112 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs289 = getelementptr inbounds %struct.display, %struct.display* %112, i32 0, i32 83
  %arrayidx290 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs289, i32 0, i64 73
  %str291 = bitcast %union.tcu* %arrayidx290 to i8**
  %113 = load i8*, i8** %str291, align 8
  %tobool292 = icmp ne i8* %113, null
  br i1 %tobool292, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.288
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.293, %if.end.288
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs295 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 83
  %arrayidx296 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs295, i32 0, i64 45
  %str297 = bitcast %union.tcu* %arrayidx296 to i8**
  %115 = load i8*, i8** %str297, align 8
  %tobool298 = icmp ne i8* %115, null
  br i1 %tobool298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.end.294
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0))
  call void @AddCap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %if.end.294
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs301 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 83
  %arrayidx302 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs301, i32 0, i64 44
  %str303 = bitcast %union.tcu* %arrayidx302 to i8**
  %117 = load i8*, i8** %str303, align 8
  %tobool304 = icmp ne i8* %117, null
  br i1 %tobool304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.300
  call void @AddCap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.end.300
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.197
  store i32 106, i32* %i, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.424, %if.end.307
  %118 = load i32, i32* %i, align 4
  %cmp309 = icmp slt i32 %118, 201
  br i1 %cmp309, label %for.body.311, label %for.end.425

for.body.311:                                     ; preds = %for.cond.308
  %119 = load i32, i32* %i, align 4
  %cmp312 = icmp slt i32 %119, 188
  br i1 %cmp312, label %if.then.314, label %if.end.385

if.then.314:                                      ; preds = %for.body.311
  %120 = load i32, i32* %i, align 4
  %cmp315 = icmp sge i32 %120, 170
  br i1 %cmp315, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.then.314
  br label %for.inc.424

if.end.318:                                       ; preds = %if.then.314
  %121 = load i32, i32* %i, align 4
  %cmp319 = icmp sge i32 %121, 166
  br i1 %cmp319, label %land.lhs.true.321, label %if.else.333

land.lhs.true.321:                                ; preds = %if.end.318
  %122 = load i32, i32* %i, align 4
  %cmp322 = icmp slt i32 %122, 188
  br i1 %cmp322, label %if.then.324, label %if.else.333

if.then.324:                                      ; preds = %land.lhs.true.321
  %123 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %123, 84
  %idxprom = sext i32 %sub to i64
  %arrayidx325 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i64 %idxprom
  store %struct.action* %arrayidx325, %struct.action** %act, align 8
  %124 = load %struct.action*, %struct.action** %act, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %124, i32 0, i32 0
  %125 = load i32, i32* %nr, align 4
  %cmp326 = icmp eq i32 %125, -1
  br i1 %cmp326, label %if.then.328, label %if.end.332

if.then.328:                                      ; preds = %if.then.324
  %126 = load i32, i32* %i, align 4
  %sub329 = sub nsw i32 %126, 84
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i64 %idxprom330
  store %struct.action* %arrayidx331, %struct.action** %act, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.328, %if.then.324
  br label %if.end.345

if.else.333:                                      ; preds = %land.lhs.true.321, %if.end.318
  %127 = load i32, i32* %i, align 4
  %sub334 = sub nsw i32 %127, 106
  %idxprom335 = sext i32 %sub334 to i64
  %arrayidx336 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i64 %idxprom335
  store %struct.action* %arrayidx336, %struct.action** %act, align 8
  %128 = load %struct.action*, %struct.action** %act, align 8
  %nr337 = getelementptr inbounds %struct.action, %struct.action* %128, i32 0, i32 0
  %129 = load i32, i32* %nr337, align 4
  %cmp338 = icmp eq i32 %129, -1
  br i1 %cmp338, label %if.then.340, label %if.end.344

if.then.340:                                      ; preds = %if.else.333
  %130 = load i32, i32* %i, align 4
  %sub341 = sub nsw i32 %130, 106
  %idxprom342 = sext i32 %sub341 to i64
  %arrayidx343 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i64 %idxprom342
  store %struct.action* %arrayidx343, %struct.action** %act, align 8
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.340, %if.else.333
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.332
  %131 = load %struct.action*, %struct.action** %act, align 8
  %nr346 = getelementptr inbounds %struct.action, %struct.action* %131, i32 0, i32 0
  %132 = load i32, i32* %nr346, align 4
  %cmp347 = icmp eq i32 %132, -1
  br i1 %cmp347, label %land.lhs.true.349, label %if.end.369

land.lhs.true.349:                                ; preds = %if.end.345
  %133 = load i32, i32* %i, align 4
  %cmp350 = icmp eq i32 %133, 159
  br i1 %cmp350, label %if.then.355, label %lor.lhs.false.352

lor.lhs.false.352:                                ; preds = %land.lhs.true.349
  %134 = load i32, i32* %i, align 4
  %cmp353 = icmp eq i32 %134, 161
  br i1 %cmp353, label %if.then.355, label %if.end.369

if.then.355:                                      ; preds = %lor.lhs.false.352, %land.lhs.true.349
  %135 = load i32, i32* %i, align 4
  %sub356 = sub nsw i32 %135, 106
  %sub357 = sub nsw i32 %sub356, 1
  %idxprom358 = sext i32 %sub357 to i64
  %arrayidx359 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i64 %idxprom358
  store %struct.action* %arrayidx359, %struct.action** %act, align 8
  %136 = load %struct.action*, %struct.action** %act, align 8
  %nr360 = getelementptr inbounds %struct.action, %struct.action* %136, i32 0, i32 0
  %137 = load i32, i32* %nr360, align 4
  %cmp361 = icmp eq i32 %137, -1
  br i1 %cmp361, label %if.then.363, label %if.end.368

if.then.363:                                      ; preds = %if.then.355
  %138 = load i32, i32* %i, align 4
  %sub364 = sub nsw i32 %138, 106
  %sub365 = sub nsw i32 %sub364, 1
  %idxprom366 = sext i32 %sub365 to i64
  %arrayidx367 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i64 %idxprom366
  store %struct.action* %arrayidx367, %struct.action** %act, align 8
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.363, %if.then.355
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %lor.lhs.false.352, %if.end.345
  %139 = load %struct.action*, %struct.action** %act, align 8
  %nr370 = getelementptr inbounds %struct.action, %struct.action* %139, i32 0, i32 0
  %140 = load i32, i32* %nr370, align 4
  %cmp371 = icmp ne i32 %140, -1
  br i1 %cmp371, label %if.then.373, label %if.end.384

if.then.373:                                      ; preds = %if.end.369
  %141 = load %struct.action*, %struct.action** %act, align 8
  %nr374 = getelementptr inbounds %struct.action, %struct.action* %141, i32 0, i32 0
  %142 = load i32, i32* %nr374, align 4
  %cmp375 = icmp eq i32 %142, 158
  br i1 %cmp375, label %if.then.377, label %if.end.383

if.then.377:                                      ; preds = %if.then.373
  %143 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %143 to i64
  %arrayidx379 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom378
  %tcname = getelementptr inbounds %struct.term, %struct.term* %arrayidx379, i32 0, i32 0
  %144 = load i8*, i8** %tcname, align 8
  %arraydecay380 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %145 = load %struct.action*, %struct.action** %act, align 8
  %args = getelementptr inbounds %struct.action, %struct.action* %145, i32 0, i32 1
  %146 = load i8**, i8*** %args, align 8
  %arrayidx381 = getelementptr inbounds i8*, i8** %146, i64 0
  %147 = load i8*, i8** %arrayidx381, align 8
  call void @MakeString(i8* %144, i8* %arraydecay380, i32 2048, i8* %147)
  %arraydecay382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @AddCap(i8* %arraydecay382)
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.377, %if.then.373
  br label %for.inc.424

if.end.384:                                       ; preds = %if.end.369
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %for.body.311
  %148 = load %struct.display*, %struct.display** @display, align 8
  %cmp386 = icmp eq %struct.display* %148, null
  br i1 %cmp386, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %if.end.385
  br label %for.inc.424

if.end.389:                                       ; preds = %if.end.385
  %149 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %149 to i64
  %arrayidx391 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom390
  %type = getelementptr inbounds %struct.term, %struct.term* %arrayidx391, i32 0, i32 1
  %150 = load i32, i32* %type, align 4
  switch i32 %150, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.409
  ]

sw.bb:                                            ; preds = %if.end.389
  %151 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %151 to i64
  %152 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs393 = getelementptr inbounds %struct.display, %struct.display* %152, i32 0, i32 83
  %arrayidx394 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs393, i32 0, i64 %idxprom392
  %str395 = bitcast %union.tcu* %arrayidx394 to i8**
  %153 = load i8*, i8** %str395, align 8
  %cmp396 = icmp eq i8* %153, null
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %sw.bb
  br label %sw.epilog

if.end.399:                                       ; preds = %sw.bb
  %154 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %154 to i64
  %arrayidx401 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom400
  %tcname402 = getelementptr inbounds %struct.term, %struct.term* %arrayidx401, i32 0, i32 0
  %155 = load i8*, i8** %tcname402, align 8
  %arraydecay403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %156 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %156 to i64
  %157 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs405 = getelementptr inbounds %struct.display, %struct.display* %157, i32 0, i32 83
  %arrayidx406 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs405, i32 0, i64 %idxprom404
  %str407 = bitcast %union.tcu* %arrayidx406 to i8**
  %158 = load i8*, i8** %str407, align 8
  call void @MakeString(i8* %155, i8* %arraydecay403, i32 2048, i8* %158)
  %arraydecay408 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @AddCap(i8* %arraydecay408)
  br label %sw.epilog

sw.bb.409:                                        ; preds = %if.end.389
  %159 = load i32, i32* %i, align 4
  %idxprom410 = sext i32 %159 to i64
  %160 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs411 = getelementptr inbounds %struct.display, %struct.display* %160, i32 0, i32 83
  %arrayidx412 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs411, i32 0, i64 %idxprom410
  %flg413 = bitcast %union.tcu* %arrayidx412 to i32*
  %161 = load i32, i32* %flg413, align 4
  %cmp414 = icmp eq i32 %161, 0
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %sw.bb.409
  br label %sw.epilog

if.end.417:                                       ; preds = %sw.bb.409
  %arraydecay418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %162 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %162 to i64
  %arrayidx420 = getelementptr inbounds [0 x %struct.term], [0 x %struct.term]* @term, i32 0, i64 %idxprom419
  %tcname421 = getelementptr inbounds %struct.term, %struct.term* %arrayidx420, i32 0, i32 0
  %163 = load i8*, i8** %tcname421, align 8
  %call422 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay418, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* %163) #2
  %arraydecay423 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @AddCap(i8* %arraydecay423)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.389
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.417, %if.then.416, %if.end.399, %if.then.398
  br label %for.inc.424

for.inc.424:                                      ; preds = %sw.epilog, %if.then.388, %if.end.383, %if.then.317
  %164 = load i32, i32* %i, align 4
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.308

for.end.425:                                      ; preds = %for.cond.308
  br label %do.body.426

do.body.426:                                      ; preds = %for.end.425
  br label %do.end.427

do.end.427:                                       ; preds = %do.body.426
  store i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %do.end.427, %do.end.7
  %165 = load i8*, i8** %retval
  ret i8* %165
}

; Function Attrs: nounwind uwtable
define void @CheckEscape() #0 {
entry:
  %odisplay = alloca %struct.display*, align 8
  %i = alloca i32, align 4
  %nr = alloca i32, align 4
  %kme = alloca %struct.kmap_ext*, align 8
  %0 = load i32, i32* @DefaultEsc, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %1, %struct.display** %odisplay, align 8
  %2 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %2, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %if.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %3, null
  br i1 %tobool, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 74
  %6 = load i32, i32* %d_nseqs, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 76
  %9 = load i8*, i8** %d_kmaps, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add to i64
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps5 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 76
  %13 = load i8*, i8** %d_kmaps5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom4
  %14 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  %or = or i32 %shl, %conv7
  %and = and i32 %or, -16385
  store i32 %and, i32* %nr, align 4
  %15 = load i32, i32* %nr, align 4
  %cmp8 = icmp slt i32 %15, 104
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body.3
  %16 = load i32, i32* %nr, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i64 %idxprom11
  %nr13 = getelementptr inbounds %struct.action, %struct.action* %arrayidx12, i32 0, i32 0
  %17 = load i32, i32* %nr13, align 4
  %cmp14 = icmp eq i32 %17, 35
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.10
  br label %for.end

if.end.17:                                        ; preds = %if.then.10
  %18 = load i32, i32* %nr, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @umtab, i32 0, i64 %idxprom18
  %nr20 = getelementptr inbounds %struct.action, %struct.action* %arrayidx19, i32 0, i32 0
  %19 = load i32, i32* %nr20, align 4
  %cmp21 = icmp eq i32 %19, -1
  br i1 %cmp21, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.17
  %20 = load i32, i32* %nr, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [0 x %struct.action], [0 x %struct.action]* @dmtab, i32 0, i64 %idxprom23
  %nr25 = getelementptr inbounds %struct.action, %struct.action* %arrayidx24, i32 0, i32 0
  %21 = load i32, i32* %nr25, align 4
  %cmp26 = icmp eq i32 %21, 35
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.29:                                        ; preds = %land.lhs.true, %if.end.17
  br label %if.end.46

if.else:                                          ; preds = %for.body.3
  %22 = load %struct.kmap_ext*, %struct.kmap_ext** @kmap_exts, align 8
  %23 = load i32, i32* %nr, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %22, i64 %idx.ext
  %add.ptr30 = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %add.ptr, i64 -104
  store %struct.kmap_ext* %add.ptr30, %struct.kmap_ext** %kme, align 8
  %24 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %um = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %24, i32 0, i32 2
  %nr31 = getelementptr inbounds %struct.action, %struct.action* %um, i32 0, i32 0
  %25 = load i32, i32* %nr31, align 4
  %cmp32 = icmp eq i32 %25, 35
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  br label %for.end

if.end.35:                                        ; preds = %if.else
  %26 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %um36 = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %26, i32 0, i32 2
  %nr37 = getelementptr inbounds %struct.action, %struct.action* %um36, i32 0, i32 0
  %27 = load i32, i32* %nr37, align 4
  %cmp38 = icmp eq i32 %27, -1
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.end.35
  %28 = load %struct.kmap_ext*, %struct.kmap_ext** %kme, align 8
  %dm = getelementptr inbounds %struct.kmap_ext, %struct.kmap_ext* %28, i32 0, i32 3
  %nr41 = getelementptr inbounds %struct.action, %struct.action* %dm, i32 0, i32 0
  %29 = load i32, i32* %nr41, align 4
  %cmp42 = icmp eq i32 %29, 35
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.40
  br label %for.end

if.end.45:                                        ; preds = %land.lhs.true.40, %if.end.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %30 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %30, 2
  %idxprom48 = sext i32 %add47 to i64
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps49 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 76
  %32 = load i8*, i8** %d_kmaps49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %32, i64 %idxprom48
  %33 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %33 to i32
  %mul = mul nsw i32 %conv51, 2
  %add52 = add nsw i32 %mul, 4
  %34 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %34, %add52
  store i32 %add53, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then.44, %if.then.34, %if.then.28, %if.then.16, %for.cond.1
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 0
  %36 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %36, %struct.display** @display, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %37 = load %struct.display*, %struct.display** @display, align 8
  %cmp56 = icmp eq %struct.display* %37, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.55
  %38 = load %struct.display*, %struct.display** %odisplay, align 8
  store %struct.display* %38, %struct.display** @display, align 8
  br label %return

if.end.59:                                        ; preds = %for.end.55
  call void @SetEscape(%struct.acluser* null, i32 1, i32 97)
  %39 = load %struct.display*, %struct.display** %odisplay, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 1
  %40 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_Esc = getelementptr inbounds %struct.acluser, %struct.acluser* %40, i32 0, i32 6
  %41 = load i32, i32* %u_Esc, align 4
  %cmp60 = icmp eq i32 %41, -1
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.59
  %42 = load i32, i32* @DefaultEsc, align 4
  %43 = load %struct.display*, %struct.display** %odisplay, align 8
  %d_user63 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 1
  %44 = load %struct.acluser*, %struct.acluser** %d_user63, align 8
  %u_Esc64 = getelementptr inbounds %struct.acluser, %struct.acluser* %44, i32 0, i32 6
  store i32 %42, i32* %u_Esc64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.59
  %45 = load %struct.display*, %struct.display** %odisplay, align 8
  %d_user66 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 1
  %46 = load %struct.acluser*, %struct.acluser** %d_user66, align 8
  %u_MetaEsc = getelementptr inbounds %struct.acluser, %struct.acluser* %46, i32 0, i32 7
  %47 = load i32, i32* %u_MetaEsc, align 4
  %cmp67 = icmp eq i32 %47, -1
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.65
  %48 = load i32, i32* @DefaultMetaEsc, align 4
  %49 = load %struct.display*, %struct.display** %odisplay, align 8
  %d_user70 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 1
  %50 = load %struct.acluser*, %struct.acluser** %d_user70, align 8
  %u_MetaEsc71 = getelementptr inbounds %struct.acluser, %struct.acluser* %50, i32 0, i32 7
  store i32 %48, i32* %u_MetaEsc71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.end.65
  store %struct.display* null, %struct.display** @display, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  %51 = load %struct.display*, %struct.display** %odisplay, align 8
  store %struct.display* %51, %struct.display** @display, align 8
  br label %return

return:                                           ; preds = %if.end.72, %if.then.58, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @addmapseq(i8* %seq, i32 %k, i32 %nr) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %k.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %mo = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32 %nr, i32* %nr.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp sge i32 %0, 254
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %seq.addr, align 8
  %2 = load i32, i32* %k.addr, align 4
  %call = call i32 @findseq_ge(i8* %1, i32 %2, i8** %p)
  store i32 %call, i32* %j, align 4
  %3 = load i32, i32* %j, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %nr.addr, align 4
  %shr = ashr i32 %4, 8
  %conv = trunc i32 %shr to i8
  %5 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i32, i32* %nr.addr, align 4
  %conv3 = trunc i32 %6 to i8
  %7 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 76
  %10 = load i8*, i8** %d_kmaps, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv6, i32* %i, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 74
  %12 = load i32, i32* %d_nseqs, align 4
  %13 = load i32, i32* %k.addr, align 4
  %mul = mul nsw i32 2, %13
  %add = add nsw i32 %12, %mul
  %add7 = add nsw i32 %add, 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_aseqs = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 75
  %15 = load i32, i32* %d_aseqs, align 4
  %cmp8 = icmp sge i32 %add7, %15
  br i1 %cmp8, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end.5
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps11 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 76
  %17 = load i8*, i8** %d_kmaps11, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_aseqs12 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 75
  %19 = load i32, i32* %d_aseqs12, align 4
  %add13 = add nsw i32 %19, 256
  %call14 = call i8* @xrealloc(i8* %17, i32 %add13)
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps15 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 76
  store i8* %call14, i8** %d_kmaps15, align 8
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_aseqs16 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 75
  %22 = load i32, i32* %d_aseqs16, align 4
  %add17 = add nsw i32 %22, 256
  store i32 %add17, i32* %d_aseqs16, align 4
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps18 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 76
  %24 = load i8*, i8** %d_kmaps18, align 8
  %25 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.10, %if.end.5
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps20 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 76
  %27 = load i8*, i8** %d_kmaps20, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 77
  store i8* %add.ptr21, i8** %d_seqp, align 8
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_seql = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 78
  store i32 0, i32* %d_seql, align 4
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 79
  store i8* null, i8** %d_seqh, align 8
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 80
  call void @evdeq(%struct.event* %d_mapev)
  %32 = load i32, i32* %j, align 4
  %cmp22 = icmp sgt i32 %32, 0
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.19
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %p, align 8
  %35 = load i32, i32* %k.addr, align 4
  %mul25 = mul nsw i32 2, %35
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %34, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 4
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs29 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 74
  %37 = load i32, i32* %d_nseqs29, align 4
  %38 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %37, %38
  %conv30 = sext i32 %sub to i64
  call void @bcopy(i8* %33, i8* %add.ptr28, i64 %conv30) #2
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.end.19
  %39 = load i32, i32* %nr.addr, align 4
  %shr32 = ashr i32 %39, 8
  %conv33 = trunc i32 %shr32 to i8
  %40 = load i8*, i8** %p, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %conv33, i8* %arrayidx34, align 1
  %41 = load i32, i32* %nr.addr, align 4
  %conv35 = trunc i32 %41 to i8
  %42 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %conv35, i8* %arrayidx36, align 1
  %43 = load i32, i32* %k.addr, align 4
  %conv37 = trunc i32 %43 to i8
  %44 = load i8*, i8** %p, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %conv37, i8* %arrayidx38, align 1
  %45 = load i8*, i8** %seq.addr, align 8
  %46 = load i8*, i8** %p, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i32, i32* %k.addr, align 4
  %conv40 = sext i32 %47 to i64
  call void @bcopy(i8* %45, i8* %add.ptr39, i64 %conv40) #2
  %48 = load i8*, i8** %p, align 8
  %49 = load i32, i32* %k.addr, align 4
  %idx.ext41 = sext i32 %49 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %48, i64 %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 3
  %50 = load i32, i32* %k.addr, align 4
  %add44 = add nsw i32 %50, 1
  %conv45 = sext i32 %add44 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr43, i8 0, i64 %conv45, i32 1, i1 false)
  %51 = load i32, i32* %k.addr, align 4
  %mul46 = mul nsw i32 2, %51
  %add47 = add nsw i32 %mul46, 4
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs48 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 74
  %53 = load i32, i32* %d_nseqs48, align 4
  %add49 = add nsw i32 %53, %add47
  store i32 %add49, i32* %d_nseqs48, align 4
  %54 = load i32, i32* %j, align 4
  %cmp50 = icmp sgt i32 %54, 0
  br i1 %cmp50, label %if.then.52, label %if.end.89

if.then.52:                                       ; preds = %if.end.31
  %55 = load i8*, i8** %p, align 8
  %56 = load i32, i32* %k.addr, align 4
  %mul53 = mul nsw i32 2, %56
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %55, i64 %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr55, i64 4
  store i8* %add.ptr56, i8** %q, align 8
  %57 = load i8*, i8** %q, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %58 to i32
  store i32 %conv58, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %k.addr, align 4
  %cmp59 = icmp slt i32 %59, %60
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %i, align 4
  %add61 = add nsw i32 3, %61
  %idxprom = sext i32 %add61 to i64
  %62 = load i8*, i8** %p, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %62, i64 %idxprom
  %63 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %63 to i32
  %64 = load i32, i32* %i, align 4
  %add64 = add nsw i32 3, %64
  %idxprom65 = sext i32 %add64 to i64
  %65 = load i8*, i8** %q, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %65, i64 %idxprom65
  %66 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %66 to i32
  %cmp68 = icmp ne i32 %conv63, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %for.body
  %67 = load i32, i32* %k.addr, align 4
  %conv71 = trunc i32 %67 to i8
  %68 = load i32, i32* %k.addr, align 4
  %add72 = add nsw i32 %68, 4
  %69 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %add72, %69
  %idxprom74 = sext i32 %add73 to i64
  %70 = load i8*, i8** %p, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %70, i64 %idxprom74
  store i8 %conv71, i8* %arrayidx75, align 1
  br label %for.end

if.end.76:                                        ; preds = %for.body
  %71 = load i8*, i8** %p, align 8
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %l, align 4
  %add77 = add nsw i32 %73, 4
  %74 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %add77, %74
  %idxprom79 = sext i32 %add78 to i64
  %75 = load i8*, i8** %q, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %75, i64 %idxprom79
  %76 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %76 to i32
  %tobool = icmp ne i32 %conv81, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %77 = load i32, i32* %l, align 4
  %add82 = add nsw i32 %77, 4
  %78 = load i32, i32* %i, align 4
  %add83 = add nsw i32 %add82, %78
  %idxprom84 = sext i32 %add83 to i64
  %79 = load i8*, i8** %q, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %79, i64 %idxprom84
  %80 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %80 to i32
  %81 = load i32, i32* %k.addr, align 4
  %add87 = add nsw i32 %conv86, %81
  %add88 = add nsw i32 %add87, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add88, %cond.true ], [ 0, %cond.false ]
  call void @setseqoff(i8* %71, i32 %72, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.70, %for.cond
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %if.end.31
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps90 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 76
  %84 = load i8*, i8** %d_kmaps90, align 8
  store i8* %84, i8** %q, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.168, %if.end.89
  %85 = load i8*, i8** %q, align 8
  %86 = load i8*, i8** %p, align 8
  %cmp92 = icmp ult i8* %85, %86
  br i1 %cmp92, label %for.body.94, label %for.end.173

for.body.94:                                      ; preds = %for.cond.91
  %87 = load i8*, i8** %q, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %87, i64 2
  %88 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %88 to i32
  store i32 %conv96, i32* %l, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.165, %for.body.94
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %l, align 4
  %cmp98 = icmp slt i32 %89, %90
  br i1 %cmp98, label %for.body.100, label %for.end.167

for.body.100:                                     ; preds = %for.cond.97
  %91 = load i32, i32* %m, align 4
  store i32 %91, i32* %mo, align 4
  %92 = load i32, i32* %m, align 4
  %tobool101 = icmp ne i32 %92, 0
  br i1 %tobool101, label %if.end.112, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.100
  %93 = load i32, i32* %j, align 4
  %add102 = add nsw i32 3, %93
  %idxprom103 = sext i32 %add102 to i64
  %94 = load i8*, i8** %q, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %94, i64 %idxprom103
  %95 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %95 to i32
  %96 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %96 to i64
  %97 = load i8*, i8** %seq.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %97, i64 %idxprom106
  %98 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %98 to i32
  %cmp109 = icmp ne i32 %conv105, %conv108
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true
  store i32 1, i32* %m, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %land.lhs.true, %for.body.100
  %99 = load i32, i32* %l, align 4
  %add113 = add nsw i32 %99, 4
  %100 = load i32, i32* %j, align 4
  %add114 = add nsw i32 %add113, %100
  %idxprom115 = sext i32 %add114 to i64
  %101 = load i8*, i8** %q, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %101, i64 %idxprom115
  %102 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %102 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %if.end.112
  %103 = load i32, i32* %mo, align 4
  %tobool121 = icmp ne i32 %103, 0
  br i1 %tobool121, label %if.end.130, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %if.then.120
  %104 = load i32, i32* %m, align 4
  %tobool123 = icmp ne i32 %104, 0
  br i1 %tobool123, label %if.then.124, label %if.end.130

if.then.124:                                      ; preds = %land.lhs.true.122
  %105 = load i8*, i8** %q, align 8
  %106 = load i32, i32* %j, align 4
  %107 = load i8*, i8** %p, align 8
  %108 = load i8*, i8** %q, align 8
  %sub.ptr.lhs.cast125 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %108 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %sub128 = sub nsw i64 %sub.ptr.sub127, 4
  %div = sdiv i64 %sub128, 2
  %conv129 = trunc i64 %div to i32
  call void @setseqoff(i8* %105, i32 %106, i32 %conv129)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.124, %land.lhs.true.122, %if.then.120
  br label %if.end.164

if.else:                                          ; preds = %if.end.112
  %109 = load i8*, i8** %q, align 8
  %110 = load i32, i32* %l, align 4
  %add131 = add nsw i32 %110, 4
  %111 = load i32, i32* %j, align 4
  %add132 = add nsw i32 %add131, %111
  %idxprom133 = sext i32 %add132 to i64
  %112 = load i8*, i8** %q, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %112, i64 %idxprom133
  %113 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %113 to i32
  %mul136 = mul nsw i32 %conv135, 2
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %109, i64 %idx.ext137
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr138, i64 4
  %114 = load i8*, i8** %p, align 8
  %cmp140 = icmp ugt i8* %add.ptr139, %114
  br i1 %cmp140, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %115 = load i8*, i8** %q, align 8
  %116 = load i32, i32* %l, align 4
  %add142 = add nsw i32 %116, 4
  %117 = load i32, i32* %j, align 4
  %add143 = add nsw i32 %add142, %117
  %idxprom144 = sext i32 %add143 to i64
  %118 = load i8*, i8** %q, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %118, i64 %idxprom144
  %119 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %119 to i32
  %mul147 = mul nsw i32 %conv146, 2
  %idx.ext148 = sext i32 %mul147 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %115, i64 %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr149, i64 4
  %120 = load i8*, i8** %p, align 8
  %cmp151 = icmp eq i8* %add.ptr150, %120
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.163

land.lhs.true.153:                                ; preds = %lor.lhs.false
  %121 = load i32, i32* %m, align 4
  %tobool154 = icmp ne i32 %121, 0
  br i1 %tobool154, label %if.end.163, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.153, %if.else
  %122 = load i8*, i8** %q, align 8
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %l, align 4
  %add156 = add nsw i32 %124, 4
  %125 = load i32, i32* %j, align 4
  %add157 = add nsw i32 %add156, %125
  %idxprom158 = sext i32 %add157 to i64
  %126 = load i8*, i8** %q, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %126, i64 %idxprom158
  %127 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %127 to i32
  %128 = load i32, i32* %k.addr, align 4
  %add161 = add nsw i32 %conv160, %128
  %add162 = add nsw i32 %add161, 2
  call void @setseqoff(i8* %122, i32 %123, i32 %add162)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.155, %land.lhs.true.153, %lor.lhs.false
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.130
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %129 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %129, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.97

for.end.167:                                      ; preds = %for.cond.97
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %130 = load i32, i32* %l, align 4
  %mul169 = mul nsw i32 2, %130
  %add170 = add nsw i32 %mul169, 4
  %131 = load i8*, i8** %q, align 8
  %idx.ext171 = sext i32 %add170 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %131, i64 %idx.ext171
  store i8* %add.ptr172, i8** %q, align 8
  br label %for.cond.91

for.end.173:                                      ; preds = %for.cond.91
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.173, %if.then.2, %if.then
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define internal i32 @remmapseq(i8* %seq, i32 %k) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %k.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp sge i32 %0, 254
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %seq.addr, align 8
  %2 = load i32, i32* %k.addr, align 4
  %call = call i32 @findseq_ge(i8* %1, i32 %2, i8** %p)
  store i32 %call, i32* %j, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 76
  %4 = load i8*, i8** %d_kmaps, align 8
  store i8* %4, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %if.end
  %5 = load i8*, i8** %q, align 8
  %6 = load i8*, i8** %p, align 8
  %cmp2 = icmp ult i8* %5, %6
  br i1 %cmp2, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %q, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %l, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %11 = load i8*, i8** %q, align 8
  %12 = load i32, i32* %l, align 4
  %add = add nsw i32 %12, 4
  %13 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add, %13
  %idxprom = sext i32 %add7 to i64
  %14 = load i8*, i8** %q, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %mul = mul nsw i32 %conv9, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  %16 = load i8*, i8** %p, align 8
  %cmp11 = icmp eq i8* %add.ptr10, %16
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.6
  %17 = load i8*, i8** %q, align 8
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %k.addr, align 4
  %add14 = add nsw i32 %19, 4
  %20 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %add14, %20
  %idxprom16 = sext i32 %add15 to i64
  %21 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 %idxprom16
  %22 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %22 to i32
  %tobool = icmp ne i32 %conv18, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %23 = load i32, i32* %l, align 4
  %add19 = add nsw i32 %23, 4
  %24 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %add19, %24
  %idxprom21 = sext i32 %add20 to i64
  %25 = load i8*, i8** %q, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  %26 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %26 to i32
  %27 = load i32, i32* %k.addr, align 4
  %add24 = add nsw i32 %27, 4
  %28 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %add24, %28
  %idxprom26 = sext i32 %add25 to i64
  %29 = load i8*, i8** %p, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 %idxprom26
  %30 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %30 to i32
  %add29 = add nsw i32 %conv23, %conv28
  %31 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %add29, %31
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  call void @setseqoff(i8* %17, i32 %18, i32 %cond)
  br label %if.end.51

if.else:                                          ; preds = %for.body.6
  %32 = load i8*, i8** %q, align 8
  %33 = load i32, i32* %l, align 4
  %add30 = add nsw i32 %33, 4
  %34 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %add30, %34
  %idxprom32 = sext i32 %add31 to i64
  %35 = load i8*, i8** %q, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %35, i64 %idxprom32
  %36 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %36 to i32
  %mul35 = mul nsw i32 %conv34, 2
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 4
  %37 = load i8*, i8** %p, align 8
  %cmp39 = icmp ugt i8* %add.ptr38, %37
  br i1 %cmp39, label %if.then.41, label %if.end.50

if.then.41:                                       ; preds = %if.else
  %38 = load i32, i32* %k.addr, align 4
  %add42 = add nsw i32 %38, 2
  %39 = load i32, i32* %l, align 4
  %add43 = add nsw i32 %39, 4
  %40 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %add43, %40
  %idxprom45 = sext i32 %add44 to i64
  %41 = load i8*, i8** %q, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %41, i64 %idxprom45
  %42 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %42 to i32
  %sub48 = sub nsw i32 %conv47, %add42
  %conv49 = trunc i32 %sub48 to i8
  store i8 %conv49, i8* %arrayidx46, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.41, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end
  %44 = load i32, i32* %l, align 4
  %mul53 = mul nsw i32 2, %44
  %add54 = add nsw i32 %mul53, 4
  %45 = load i8*, i8** %q, align 8
  %idx.ext55 = sext i32 %add54 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %45, i64 %idx.ext55
  store i8* %add.ptr56, i8** %q, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps58 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 76
  %47 = load i8*, i8** %d_kmaps58, align 8
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 74
  %49 = load i32, i32* %d_nseqs, align 4
  %idx.ext59 = sext i32 %49 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %47, i64 %idx.ext59
  %50 = load i8*, i8** %p, align 8
  %51 = load i32, i32* %k.addr, align 4
  %mul61 = mul nsw i32 2, %51
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %50, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 4
  %cmp65 = icmp ugt i8* %add.ptr60, %add.ptr64
  br i1 %cmp65, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %for.end.57
  %52 = load i8*, i8** %p, align 8
  %53 = load i32, i32* %k.addr, align 4
  %mul68 = mul nsw i32 2, %53
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %52, i64 %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 4
  %54 = load i8*, i8** %p, align 8
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps72 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 76
  %56 = load i8*, i8** %d_kmaps72, align 8
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs73 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 74
  %58 = load i32, i32* %d_nseqs73, align 4
  %idx.ext74 = sext i32 %58 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %56, i64 %idx.ext74
  %59 = load i8*, i8** %p, align 8
  %60 = load i32, i32* %k.addr, align 4
  %mul76 = mul nsw i32 2, %60
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %59, i64 %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr78, i64 4
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr75 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @bcopy(i8* %add.ptr71, i8* %54, i64 %sub.ptr.sub) #2
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.67, %for.end.57
  %61 = load i32, i32* %k.addr, align 4
  %mul81 = mul nsw i32 2, %61
  %add82 = add nsw i32 %mul81, 4
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs83 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 74
  %63 = load i32, i32* %d_nseqs83, align 4
  %sub84 = sub nsw i32 %63, %add82
  store i32 %sub84, i32* %d_nseqs83, align 4
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps85 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 76
  %65 = load i8*, i8** %d_kmaps85, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 77
  store i8* %add.ptr86, i8** %d_seqp, align 8
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_seql = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 78
  store i32 0, i32* %d_seql, align 4
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 79
  store i8* null, i8** %d_seqh, align 8
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 80
  call void @evdeq(%struct.event* %d_mapev)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare void @SetEscape(%struct.acluser*, i32, i32) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @AddCap(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @tcLineLen, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %add = add nsw i32 %0, %conv
  %cmp = icmp sgt i32 %add, 55
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @Termcaplen, align 4
  %cmp2 = icmp slt i32 %2, 2043
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @Termcaplen, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i64 %idx.ext
  %call4 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0)) #2
  %4 = load i32, i32* @Termcaplen, align 4
  %add5 = add nsw i32 %4, 4
  store i32 %add5, i32* @Termcaplen, align 4
  store i32 0, i32* @tcLineLen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* @Termcaplen, align 4
  %6 = load i32, i32* %n, align 4
  %add6 = add nsw i32 %5, %6
  %cmp7 = icmp slt i32 %add6, 2047
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %7 = load i32, i32* @Termcaplen, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* getelementptr inbounds ([2056 x i8], [2056 x i8]* @Termcap, i32 0, i32 0), i64 %idx.ext10
  %8 = load i8*, i8** %s.addr, align 8
  %call12 = call i8* @strcpy(i8* %add.ptr11, i8* %8) #2
  %9 = load i32, i32* %n, align 4
  %10 = load i32, i32* @Termcaplen, align 4
  %add13 = add nsw i32 %10, %9
  store i32 %add13, i32* @Termcaplen, align 4
  %11 = load i32, i32* %n, align 4
  %12 = load i32, i32* @tcLineLen, align 4
  %add14 = add nsw i32 %12, %11
  store i32 %add14, i32* @tcLineLen, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.89, i32 0, i32 0)) #7
  unreachable

if.end.15:                                        ; preds = %if.then.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MakeString(i8* %cap, i8* %buf, i32 %buflen, i8* %s) #0 {
entry:
  %cap.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pmax = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %cap, i8** %cap.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %buflen, i32* %buflen.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i32, i32* %buflen.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -9
  store i8* %add.ptr1, i8** %pmax, align 8
  %3 = load i8*, i8** %cap.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cap.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %p, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %cap.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  store i8 61, i8* %9, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr5, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8*, i8** %pmax, align 8
  %cmp = icmp ult i8* %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %c, align 4
  switch i32 %15, label %sw.default [
    i32 27, label %sw.bb
    i32 58, label %sw.bb.9
    i32 94, label %sw.bb.11
    i32 92, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %while.body
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 92, i8* %16, align 1
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 69, i8* %17, align 1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %18 = load i8*, i8** %p, align 8
  %call = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #2
  %19 = load i8*, i8** %p, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr10, i8** %p, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body, %while.body
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  store i8 92, i8* %20, align 1
  %21 = load i32, i32* %c, align 4
  %conv13 = trunc i32 %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 %conv13, i8* %22, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %23 = load i32, i32* %c, align 4
  %cmp15 = icmp uge i32 %23, 200
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %24 = load i8*, i8** %p, align 8
  %25 = load i32, i32* %c, align 4
  %and = and i32 %25, 255
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 %and) #2
  %26 = load i8*, i8** %p, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr18, i8** %p, align 8
  br label %if.end.28

if.else:                                          ; preds = %sw.default
  %27 = load i32, i32* %c, align 4
  %cmp19 = icmp ult i32 %27, 32
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  store i8 94, i8* %28, align 1
  %29 = load i32, i32* %c, align 4
  %add = add i32 %29, 64
  %conv23 = trunc i32 %add to i8
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr24, i8** %p, align 8
  store i8 %conv23, i8* %30, align 1
  br label %if.end

if.else.25:                                       ; preds = %if.else
  %31 = load i32, i32* %c, align 4
  %conv26 = trunc i32 %31 to i8
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  store i8 %conv26, i8* %32, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %sw.bb.11, %sw.bb.9, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 58, i8* %33, align 1
  %34 = load i8*, i8** %p, align 8
  store i8 0, i8* %34, align 1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind uwtable
define void @FreeTransTable() #0 {
entry:
  %p = alloca i8***, align 8
  %q = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 89
  %1 = load i8***, i8**** %d_xtable, align 8
  store i8*** %1, i8**** %p, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 256
  br i1 %cmp1, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = load i8***, i8**** %p, align 8
  %4 = load i8**, i8*** %3, align 8
  %cmp2 = icmp eq i8** %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.inc.10

if.end.4:                                         ; preds = %for.body
  %5 = load i8***, i8**** %p, align 8
  %6 = load i8**, i8*** %5, align 8
  store i8** %6, i8*** %q, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end.4
  %7 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %7, 257
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %8 = load i8**, i8*** %q, align 8
  %9 = load i8*, i8** %8, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.7
  %10 = load i8**, i8*** %q, align 8
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* %11) #2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  %13 = load i8**, i8*** %q, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %q, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %14 = load i8***, i8**** %p, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = bitcast i8** %15 to i8*
  call void @free(i8* %16) #2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end, %if.then.3
  %17 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i, align 4
  %18 = load i8***, i8**** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8**, i8*** %18, i32 1
  store i8*** %incdec.ptr12, i8**** %p, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable14 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 89
  %20 = load i8***, i8**** %d_xtable14, align 8
  %21 = bitcast i8*** %20 to i8*
  call void @free(i8* %21) #2
  br label %return

return:                                           ; preds = %for.end.13, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @copyarg(i8** %pp, i8* %s) #0 {
entry:
  %pp.addr = alloca i8**, align 8
  %s.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8** %pp, i8*** %pp.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %l, align 4
  %0 = load i8**, i8*** %pp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv1, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 44
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %13 = load i8*, i8** %p, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 37
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false, %land.lhs.true
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.13, %for.body
  %16 = load i8*, i8** %s.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %s.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr20, i8** %s.addr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  %20 = load i32, i32* %l, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %l, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 44
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %for.end
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.end
  %25 = load i8*, i8** %p, align 8
  %26 = load i8**, i8*** %pp.addr, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %l, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @findseq_ge(i8* %seq, i32 %k, i8** %sp) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %k.addr = alloca i32, align 4
  %sp.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i8** %sp, i8*** %sp.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 76
  %1 = load i8*, i8** %d_kmaps, align 8
  store i8* %1, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps1 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 76
  %4 = load i8*, i8** %d_kmaps1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 74
  %6 = load i32, i32* %d_nseqs, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  store i32 %conv3, i32* %l, align 4
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 3
  store i8* %add.ptr, i8** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %k.addr, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %l, align 4
  %cmp6 = icmp eq i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  %14 = load i32, i32* %l, align 4
  %15 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %j, align 4
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %j, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %18 to i32
  %19 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load i8*, i8** %seq.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  %21 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %21 to i32
  %cmp13 = icmp ne i32 %conv9, %conv12
  br i1 %cmp13, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.else
  %22 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 %idxprom16
  %24 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %24 to i32
  %25 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i8*, i8** %seq.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 %idxprom19
  %27 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %27 to i32
  %sub22 = sub nsw i32 %conv18, %conv21
  store i32 %sub22, i32* %j, align 4
  br label %if.end

if.else.23:                                       ; preds = %if.else
  br label %for.inc

if.end:                                           ; preds = %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  br label %for.end

for.inc:                                          ; preds = %if.else.23
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.24
  %29 = load i32, i32* %j, align 4
  %cmp25 = icmp sge i32 %29, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end
  %30 = load i8*, i8** %p, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %30, i64 -3
  %31 = load i8**, i8*** %sp.addr, align 8
  store i8* %add.ptr28, i8** %31, align 8
  %32 = load i32, i32* %j, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.end
  %33 = load i32, i32* %l, align 4
  %mul = mul nsw i32 2, %33
  %add = add nsw i32 %mul, 1
  %34 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr30, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i8*, i8** %p, align 8
  %36 = load i8**, i8*** %sp.addr, align 8
  store i8* %35, i8** %36, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.27
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i8* @xrealloc(i8*, i32) #3

declare void @evdeq(%struct.event*) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @setseqoff(i8* %p, i32 %i, i32 %o) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %o.addr = alloca i32, align 4
  %q = alloca i8*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %o, i32* %o.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 2
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %k, align 4
  %2 = load i32, i32* %o.addr, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %o.addr, align 4
  %conv2 = trunc i32 %3 to i8
  %4 = load i32, i32* %k, align 4
  %add = add nsw i32 %4, 4
  %5 = load i32, i32* %i.addr, align 4
  %add3 = add nsw i32 %add, %5
  %idxprom = sext i32 %add3 to i64
  %6 = load i8*, i8** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %8, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  store i8* %add.ptr5, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i8*, i8** %q, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  store i32 %conv7, i32* %l, align 4
  %11 = load i8*, i8** %q, align 8
  %12 = load i32, i32* %l, align 4
  %mul8 = mul nsw i32 %12, 2
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 %idx.ext9
  %13 = load i8*, i8** %p.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 2
  %cmp11 = icmp sge i64 %div, 256
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %for.cond
  %14 = load i8*, i8** %q, align 8
  %15 = load i8*, i8** %p.addr, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %15 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub = sub nsw i64 %sub.ptr.sub16, 4
  %div17 = sdiv i64 %sub, 2
  %conv18 = trunc i64 %div17 to i8
  %16 = load i32, i32* %k, align 4
  %add19 = add nsw i32 %16, 4
  %17 = load i32, i32* %i.addr, align 4
  %add20 = add nsw i32 %add19, %17
  %idxprom21 = sext i32 %add20 to i64
  %18 = load i8*, i8** %p.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 %idxprom21
  store i8 %conv18, i8* %arrayidx22, align 1
  br label %return

if.end.23:                                        ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %19 = load i32, i32* %l, align 4
  %mul24 = mul nsw i32 %19, 2
  %add25 = add nsw i32 %mul24, 4
  %20 = load i8*, i8** %q, align 8
  %idx.ext26 = sext i32 %add25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %20, i64 %idx.ext26
  store i8* %add.ptr27, i8** %q, align 8
  br label %for.cond

return:                                           ; preds = %if.then.13, %if.then
  ret void
}

declare void @xseteuid(i32) #3

declare void @xsetegid(i32) #3

declare i32 @tgetent(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @findcap(i8* %cap, i8** %tepp, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %cap.addr = alloca i8*, align 8
  %tepp.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  %tep = alloca i8*, align 8
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %mode = alloca i32, align 4
  %num = alloca i32, align 4
  %capl = alloca i32, align 4
  store i8* %cap, i8** %cap.addr, align 8
  store i8** %tepp, i8*** %tepp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %num, align 4
  %0 = load i8*, i8** @extra_incap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %tepp.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %tep, align 8
  %3 = load i8*, i8** %cap.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %capl, align 4
  store i8* null, i8** %cp, align 8
  store i32 0, i32* %mode, align 4
  %4 = load i8*, i8** @extra_incap, align 8
  store i8* %4, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.108, %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %tobool1 = icmp ne i8 %6, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %cap.addr, align 8
  %9 = load i32, i32* %capl, align 4
  %conv2 = sext i32 %9 to i64
  %call3 = call i32 @strncmp(i8* %7, i8* %8, i64 %conv2) #6
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then.5, label %if.end.37

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %capl, align 4
  %11 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %c, align 1
  %14 = load i8, i8* %c, align 1
  %conv6 = sext i8 %14 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.5
  %15 = load i8, i8* %c, align 1
  %conv8 = sext i8 %15 to i32
  %cmp9 = icmp ne i32 %conv8, 58
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.16

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %16 = load i8, i8* %c, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp ne i32 %conv12, 64
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.11
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true, %if.then.5
  %18 = load i8, i8* %c, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %19 = load i8, i8* %c, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 64
  br i1 %cmp21, label %if.then.35, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %20 = load i8, i8* %c, align 1
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 61
  br i1 %cmp25, label %if.then.35, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %21 = load i8, i8* %c, align 1
  %conv28 = sext i8 %21 to i32
  %cmp29 = icmp eq i32 %conv28, 58
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %22 = load i8, i8* %c, align 1
  %conv32 = sext i8 %22 to i32
  %cmp33 = icmp eq i32 %conv32, 35
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false, %if.end.16
  %23 = load i8*, i8** %tep, align 8
  store i8* %23, i8** %cp, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %lor.lhs.false.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.104, %if.then.96, %if.end.37
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %c, align 1
  %tobool38 = icmp ne i8 %25, 0
  br i1 %tobool38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  %27 = load i32, i32* %mode, align 4
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %while.body
  %28 = load i8, i8* %c, align 1
  %conv43 = sext i8 %28 to i32
  %cmp44 = icmp eq i32 %conv43, 58
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.42
  br label %while.end

if.end.47:                                        ; preds = %if.then.42
  %29 = load i8, i8* %c, align 1
  %conv48 = sext i8 %29 to i32
  %cmp49 = icmp eq i32 %conv48, 94
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  store i32 1, i32* %mode, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.47
  %30 = load i8, i8* %c, align 1
  %conv53 = sext i8 %30 to i32
  %cmp54 = icmp eq i32 %conv53, 92
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  store i32 2, i32* %mode, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.52
  br label %if.end.76

if.else:                                          ; preds = %while.body
  %31 = load i32, i32* %mode, align 4
  %cmp58 = icmp eq i32 %31, 1
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else
  store i32 0, i32* %mode, align 4
  %32 = load i8, i8* %c, align 1
  %conv61 = sext i8 %32 to i32
  %and = and i32 %conv61, 31
  %conv62 = trunc i32 %and to i8
  store i8 %conv62, i8* %c, align 1
  br label %if.end.75

if.else.63:                                       ; preds = %if.else
  %33 = load i32, i32* %mode, align 4
  %cmp64 = icmp eq i32 %33, 2
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.else.63
  store i32 0, i32* %mode, align 4
  %34 = load i8, i8* %c, align 1
  %conv67 = sext i8 %34 to i32
  switch i32 %conv67, label %sw.epilog [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 69, label %sw.bb.68
    i32 110, label %sw.bb.69
    i32 114, label %sw.bb.70
    i32 116, label %sw.bb.71
    i32 98, label %sw.bb.72
    i32 102, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66, %if.then.66
  store i32 3, i32* %mode, align 4
  store i32 0, i32* %num, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.then.66
  store i8 27, i8* %c, align 1
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then.66
  store i8 10, i8* %c, align 1
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.then.66
  store i8 13, i8* %c, align 1
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.then.66
  store i8 9, i8* %c, align 1
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.then.66
  store i8 8, i8* %c, align 1
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.then.66
  store i8 12, i8* %c, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.66, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb
  br label %if.end.74

if.end.74:                                        ; preds = %sw.epilog, %if.else.63
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.60
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.57
  %35 = load i32, i32* %mode, align 4
  %cmp77 = icmp sgt i32 %35, 2
  br i1 %cmp77, label %if.then.79, label %if.end.94

if.then.79:                                       ; preds = %if.end.76
  %36 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %36, 8
  %37 = load i8, i8* %c, align 1
  %conv80 = sext i8 %37 to i32
  %sub = sub nsw i32 %conv80, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %num, align 4
  %38 = load i32, i32* %mode, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %mode, align 4
  %cmp81 = icmp eq i32 %38, 5
  br i1 %cmp81, label %if.then.91, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.then.79
  %39 = load i8*, i8** %p, align 8
  %40 = load i8, i8* %39, align 1
  %conv84 = sext i8 %40 to i32
  %cmp85 = icmp slt i32 %conv84, 48
  br i1 %cmp85, label %if.then.91, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.83
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %conv88 = sext i8 %42 to i32
  %cmp89 = icmp sgt i32 %conv88, 57
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %lor.lhs.false.87, %lor.lhs.false.83, %if.then.79
  %43 = load i32, i32* %num, align 4
  %conv92 = trunc i32 %43 to i8
  store i8 %conv92, i8* %c, align 1
  store i32 0, i32* %mode, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %lor.lhs.false.87
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.76
  %44 = load i32, i32* %mode, align 4
  %tobool95 = icmp ne i32 %44, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.94
  br label %while.cond

if.end.97:                                        ; preds = %if.end.94
  %45 = load i8*, i8** %cp, align 8
  %tobool98 = icmp ne i8* %45, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.104

land.lhs.true.99:                                 ; preds = %if.end.97
  %46 = load i32, i32* %n.addr, align 4
  %cmp100 = icmp ne i32 %46, 1
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %land.lhs.true.99
  %47 = load i8, i8* %c, align 1
  %48 = load i8*, i8** %cp, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr103, i8** %cp, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %land.lhs.true.99, %if.end.97
  br label %while.cond

while.end:                                        ; preds = %if.then.46, %while.cond
  %50 = load i8*, i8** %cp, align 8
  %tobool105 = icmp ne i8* %50, null
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %while.end
  %51 = load i8*, i8** %cp, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr107, i8** %cp, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %cp, align 8
  %53 = load i8**, i8*** %tepp.addr, align 8
  store i8* %52, i8** %53, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.106
  br label %do.end

do.end:                                           ; preds = %do.body
  %54 = load i8*, i8** %tep, align 8
  store i8* %54, i8** %retval
  br label %return

if.end.108:                                       ; preds = %while.end
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %55 = load i8*, i8** %retval
  ret i8* %55
}

declare i8* @tgetstr(i8*, i8**) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @tgetflag(i8*) #3

declare i32 @tgetnum(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
