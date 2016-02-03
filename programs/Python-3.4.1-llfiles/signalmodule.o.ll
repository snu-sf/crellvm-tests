; ModuleID = 'signalmodule.o.bc'
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
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct.anon = type { i32, %struct._object* }
%struct._frame = type opaque
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.__sigset_t = type { [16 x i64] }
%struct.siginfo_t = type { i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon.3, [80 x i8] }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }

@wakeup_fd = internal global i32 -1, align 4
@main_thread = internal unnamed_addr global i64 0, align 8
@main_pid = internal unnamed_addr global i32 0, align 4
@signalmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1462 x i8], [1462 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @signal_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal unnamed_addr global i1 false
@SiginfoType = internal global %struct._typeobject zeroinitializer, align 8
@struct_siginfo_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([226 x i8], [226 x i8]* @struct_siginfo__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([8 x %struct.PyStructSequence_Field], [8 x %struct.PyStructSequence_Field]* @struct_siginfo_fields, i32 0, i32 0), i32 7 }, align 8
@.str = private unnamed_addr constant [15 x i8] c"struct_siginfo\00", align 1
@DefaultHandler = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SIG_DFL\00", align 1
@IgnoreHandler = internal unnamed_addr global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"SIG_IGN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NSIG\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SIG_BLOCK\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SIG_UNBLOCK\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SIG_SETMASK\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"default_int_handler\00", align 1
@IntHandler = internal unnamed_addr global %struct._object* null, align 8
@Handlers = internal global [65 x %struct.anon] zeroinitializer, align 16
@_Py_NoneStruct = external global %struct._object, align 8
@old_siginthandler = internal unnamed_addr global void (i32)* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"SIGHUP\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SIGINT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SIGQUIT\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SIGTRAP\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SIGIOT\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SIGKILL\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SIGBUS\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"SIGSYS\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"SIGPIPE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"SIGALRM\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SIGUSR1\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"SIGUSR2\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SIGCLD\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"SIGCHLD\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"SIGPWR\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"SIGIO\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SIGURG\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"SIGWINCH\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SIGPOLL\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SIGSTOP\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"SIGTSTP\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"SIGCONT\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SIGTTIN\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"SIGTTOU\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"SIGVTALRM\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"SIGPROF\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"SIGXCPU\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"SIGXFSZ\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"SIGRTMIN\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"SIGRTMAX\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ITIMER_REAL\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"ITIMER_VIRTUAL\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ITIMER_PROF\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"signal.ItimerError\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@ItimerError = internal unnamed_addr global %struct._object* null, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"ItimerError\00", align 1
@is_tripped = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [5 x i8] c"(iO)\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@module_doc = internal global [1462 x i8] c"This module provides mechanisms to use signal handlers in Python.\0A\0AFunctions:\0A\0Aalarm() -- cause SIGALRM after a specified time [Unix only]\0Asetitimer() -- cause a signal (described below) after a specified\0A               float time and the timer may restart then [Unix only]\0Agetitimer() -- get current value of timer [Unix only]\0Asignal() -- set the action for a given signal\0Agetsignal() -- get the signal action for a given signal\0Apause() -- wait until a signal arrives [Unix only]\0Adefault_int_handler() -- default SIGINT handler\0A\0Asignal constants:\0ASIG_DFL -- used to refer to the system default handler\0ASIG_IGN -- used to ignore the signal\0ANSIG -- number of defined signals\0ASIGINT, SIGTERM, etc. -- signal numbers\0A\0Aitimer constants:\0AITIMER_REAL -- decrements in real time, and delivers SIGALRM upon\0A               expiration\0AITIMER_VIRTUAL -- decrements only when the process is executing,\0A               and delivers SIGVTALRM upon expiration\0AITIMER_PROF -- decrements both when the process is executing and\0A               when the system is executing on behalf of the process.\0A               Coupled with ITIMER_VIRTUAL, this timer is usually\0A               used to profile the time spent by the application\0A               in user and kernel space. SIGPROF is delivered upon\0A               expiration.\0A\0A\0A*** IMPORTANT NOTICE ***\0AA signal handler function is called with two arguments:\0Athe first is the signal number, the second is the interrupted stack frame.\00", align 16
@signal_methods = internal global [16 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_alarm, i32 1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @alarm_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_setitimer, i32 1, i8* getelementptr inbounds ([281 x i8], [281 x i8]* @setitimer_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_getitimer, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @getitimer_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_signal, i32 1, i8* getelementptr inbounds ([370 x i8], [370 x i8]* @signal_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_getsignal, i32 1, i8* getelementptr inbounds ([308 x i8], [308 x i8]* @getsignal_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_set_wakeup_fd, i32 1, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @set_wakeup_fd_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_siginterrupt, i32 1, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @siginterrupt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @signal_pause to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @pause_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_default_int_handler, i32 1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @default_int_handler_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_pthread_kill, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @signal_pthread_kill_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_pthread_sigmask, i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @signal_pthread_sigmask_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @signal_sigpending to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @signal_sigpending_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_sigwait, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @signal_sigwait_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_sigwaitinfo, i32 1, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @signal_sigwaitinfo_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @signal_sigtimedwait, i32 1, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @signal_sigtimedwait_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.50 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@alarm_doc = internal global [81 x i8] c"alarm(seconds)\0A\0AArrange for SIGALRM to arrive after the given number of seconds.\00", align 16
@.str.51 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@setitimer_doc = internal global [281 x i8] c"setitimer(which, seconds[, interval])\0A\0ASets given itimer (one of ITIMER_REAL, ITIMER_VIRTUAL\0Aor ITIMER_PROF) to fire after value seconds and after\0Athat every interval seconds.\0AThe itimer can be cleared by setting seconds to zero.\0A\0AReturns old values as a tuple: (delay, interval).\00", align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"getitimer\00", align 1
@getitimer_doc = internal global [57 x i8] c"getitimer(which)\0A\0AReturns current value of given itimer.\00", align 16
@signal_doc = internal global [370 x i8] c"signal(sig, action) -> action\0A\0ASet the action for the given signal.  The action can be SIG_DFL,\0ASIG_IGN, or a callable Python object.  The previous action is\0Areturned.  See getsignal() for possible return values.\0A\0A*** IMPORTANT NOTICE ***\0AA signal handler function is called with two arguments:\0Athe first is the signal number, the second is the interrupted stack frame.\00", align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"getsignal\00", align 1
@getsignal_doc = internal global [308 x i8] c"getsignal(sig) -> action\0A\0AReturn the current action for the given signal.  The return value can be:\0ASIG_IGN -- if the signal is being ignored\0ASIG_DFL -- if the default action for the signal is in effect\0ANone -- if an unknown handler is in effect\0Aanything else -- the callable Python object used as a handler\00", align 16
@.str.54 = private unnamed_addr constant [14 x i8] c"set_wakeup_fd\00", align 1
@set_wakeup_fd_doc = internal global [199 x i8] c"set_wakeup_fd(fd) -> fd\0A\0ASets the fd to be written to (with '\5C0') when a signal\0Acomes in.  A library can use this to wakeup select or poll.\0AThe previous fd is returned.\0A\0AThe fd must be non-blocking.\00", align 16
@.str.55 = private unnamed_addr constant [13 x i8] c"siginterrupt\00", align 1
@siginterrupt_doc = internal global [190 x i8] c"siginterrupt(sig, flag) -> None\0Achange system call restart behaviour: if flag is False, system calls\0Awill be restarted when interrupted by signal sig, else system calls\0Awill be interrupted.\00", align 16
@.str.56 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@pause_doc = internal global [38 x i8] c"pause()\0A\0AWait until a signal arrives.\00", align 16
@default_int_handler_doc = internal global [107 x i8] c"default_int_handler(...)\0A\0AThe default handler for SIGINT installed by Python.\0AIt raises KeyboardInterrupt.\00", align 16
@.str.57 = private unnamed_addr constant [13 x i8] c"pthread_kill\00", align 1
@signal_pthread_kill_doc = internal global [60 x i8] c"pthread_kill(thread_id, signum)\0A\0ASend a signal to a thread.\00", align 16
@.str.58 = private unnamed_addr constant [16 x i8] c"pthread_sigmask\00", align 1
@signal_pthread_sigmask_doc = internal global [99 x i8] c"pthread_sigmask(how, mask) -> old mask\0A\0AFetch and/or change the signal mask of the calling thread.\00", align 16
@.str.59 = private unnamed_addr constant [11 x i8] c"sigpending\00", align 1
@signal_sigpending_doc = internal global [47 x i8] c"sigpending() -> list\0A\0AExamine pending signals.\00", align 16
@.str.60 = private unnamed_addr constant [8 x i8] c"sigwait\00", align 1
@signal_sigwait_doc = internal global [42 x i8] c"sigwait(sigset) -> signum\0A\0AWait a signal.\00", align 16
@.str.61 = private unnamed_addr constant [12 x i8] c"sigwaitinfo\00", align 1
@signal_sigwaitinfo_doc = internal global [188 x i8] c"sigwaitinfo(sigset) -> struct_siginfo\0A\0AWait synchronously for a signal until one of the signals in *sigset* is\0Adelivered.\0AReturns a struct_siginfo containing information about the signal.\00", align 16
@.str.62 = private unnamed_addr constant [13 x i8] c"sigtimedwait\00", align 1
@signal_sigtimedwait_doc = internal global [156 x i8] c"sigtimedwait(sigset, (timeout_sec, timeout_nsec)) -> struct_siginfo\0A\0ALike sigwaitinfo(), but with a timeout specified as a tuple of (seconds,\0Ananoseconds).\00", align 16
@.str.63 = private unnamed_addr constant [8 x i8] c"i:alarm\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"id|d:setitimer\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"i:getitimer\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"iO:signal\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.67 = private unnamed_addr constant [33 x i8] c"signal only works in main thread\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"signal number out of range\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.69 = private unnamed_addr constant [76 x i8] c"signal handler must be signal.SIG_IGN, signal.SIG_DFL, or a callable object\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.70 = private unnamed_addr constant [12 x i8] c"i:getsignal\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"i:set_wakeup_fd\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"set_wakeup_fd only works in main thread\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"invalid fd\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"ii:siginterrupt\00", align 1
@PyExc_KeyboardInterrupt = external global %struct._object*, align 8
@.str.75 = private unnamed_addr constant [16 x i8] c"li:pthread_kill\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"iO:pthread_sigmask\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"signal number %ld out of range\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"O:sigwait\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"O:sigwaitinfo\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"OO:sigtimedwait\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"timeout must be non-negative\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"signal.struct_siginfo\00", align 1
@struct_siginfo__doc__ = internal global [226 x i8] c"struct_siginfo: Result from sigwaitinfo or sigtimedwait.\0A\0AThis object may be accessed either as a tuple of\0A(si_signo, si_code, si_errno, si_pid, si_uid, si_status, si_band),\0Aor via the attributes si_signo, si_code, and so on.\00", align 16
@struct_siginfo_fields = internal global [8 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.88, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [9 x i8] c"si_signo\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"signal number\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"si_code\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"signal code\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"si_errno\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"errno associated with this signal\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"si_pid\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"sending process ID\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"si_uid\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"real user ID of sending process\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"si_status\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"exit value or signal\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"si_band\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"band event for SIGPOLL\00", align 1
@.str.97 = private unnamed_addr constant [65 x i8] c"Exception ignored when trying to write to the signal wakeup fd:\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PySignal_SetWakeupFd(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !380, metadata !1211), !dbg !1212
  %0 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !1213, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !381, metadata !1211), !dbg !1218
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !380, metadata !1211), !dbg !1212
  %cmp = icmp sgt i32 %fd, -1, !dbg !1219
  %.fd = select i1 %cmp, i32 %fd, i32 -1, !dbg !1221
  store volatile i32 %.fd, i32* @wakeup_fd, align 4, !dbg !1222, !tbaa !1214
  ret i32 %0, !dbg !1223
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_signal() #0 {
entry:
  %call = tail call i64 @PyThread_get_thread_ident() #2, !dbg !1224
  store i64 %call, i64* @main_thread, align 8, !dbg !1225, !tbaa !1226
  %call1 = tail call i32 @getpid() #2, !dbg !1228
  store i32 %call1, i32* @main_pid, align 4, !dbg !1229, !tbaa !1214
  %call2 = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @signalmodule, i32 1013) #2, !dbg !1230
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !386, metadata !1211), !dbg !1231
  %cmp = icmp eq %struct._object* %call2, null, !dbg !1232
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1234

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end.8, label %if.then.3, !dbg !1235

if.then.3:                                        ; preds = %if.end
  %call4 = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* nonnull @SiginfoType, %struct.PyStructSequence_Desc* nonnull @struct_siginfo_desc) #2, !dbg !1236
  %cmp5 = icmp slt i32 %call4, 0, !dbg !1240
  br i1 %cmp5, label %cleanup, label %if.end.8, !dbg !1241

if.end.8:                                         ; preds = %if.then.3, %if.end
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1242, !tbaa !1243
  %inc = add i64 %0, 1, !dbg !1242
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1242, !tbaa !1243
  %call9 = tail call i32 @PyModule_AddObject(%struct._object* %call2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i64 0, i32 0, i32 0)) #2, !dbg !1246
  store i1 true, i1* @initialized, align 1
  %call10 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call2) #2, !dbg !1247
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !387, metadata !1211), !dbg !1248
  %call11 = tail call %struct._object* @PyLong_FromVoidPtr(i8* null) #2, !dbg !1249
  store %struct._object* %call11, %struct._object** @DefaultHandler, align 8, !dbg !1250, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !388, metadata !1211), !dbg !1252
  %tobool12 = icmp eq %struct._object* %call11, null, !dbg !1253
  br i1 %tobool12, label %cleanup, label %lor.lhs.false, !dbg !1255

lor.lhs.false:                                    ; preds = %if.end.8
  %call13 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct._object* %call11) #2, !dbg !1256
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1257
  br i1 %cmp14, label %cleanup, label %if.end.16, !dbg !1258

if.end.16:                                        ; preds = %lor.lhs.false
  %call17 = tail call %struct._object* @PyLong_FromVoidPtr(i8* inttoptr (i64 1 to i8*)) #2, !dbg !1259
  store %struct._object* %call17, %struct._object** @IgnoreHandler, align 8, !dbg !1260, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !388, metadata !1211), !dbg !1252
  %tobool18 = icmp eq %struct._object* %call17, null, !dbg !1261
  br i1 %tobool18, label %cleanup, label %lor.lhs.false.19, !dbg !1263

lor.lhs.false.19:                                 ; preds = %if.end.16
  %call20 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct._object* %call17) #2, !dbg !1264
  %cmp21 = icmp slt i32 %call20, 0, !dbg !1265
  br i1 %cmp21, label %cleanup, label %if.end.23, !dbg !1266

if.end.23:                                        ; preds = %lor.lhs.false.19
  %call24 = tail call %struct._object* @PyLong_FromLong(i64 65) #2, !dbg !1267
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !388, metadata !1211), !dbg !1252
  %tobool25 = icmp eq %struct._object* %call24, null, !dbg !1268
  br i1 %tobool25, label %cleanup, label %lor.lhs.false.26, !dbg !1270

lor.lhs.false.26:                                 ; preds = %if.end.23
  %call27 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call24) #2, !dbg !1271
  %cmp28 = icmp slt i32 %call27, 0, !dbg !1272
  br i1 %cmp28, label %cleanup, label %do.body, !dbg !1273

do.body:                                          ; preds = %lor.lhs.false.26
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !390, metadata !1211), !dbg !1274
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 0, !dbg !1276
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1276, !tbaa !1243
  %dec = add i64 %1, -1, !dbg !1276
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1276, !tbaa !1243
  %cmp31 = icmp eq i64 %dec, 0, !dbg !1276
  br i1 %cmp31, label %if.else, label %if.end.33, !dbg !1278

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 1, !dbg !1279
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1279, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1279
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1279, !tbaa !1282
  tail call void %3(%struct._object* %call24) #2, !dbg !1279
  br label %if.end.33

if.end.33:                                        ; preds = %do.body, %if.else
  %call34 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 0) #2, !dbg !1285
  %tobool35 = icmp eq i32 %call34, 0, !dbg !1285
  br i1 %tobool35, label %if.end.37, label %cleanup, !dbg !1287

if.end.37:                                        ; preds = %if.end.33
  %call38 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 1) #2, !dbg !1288
  %tobool39 = icmp eq i32 %call38, 0, !dbg !1288
  br i1 %tobool39, label %if.end.41, label %cleanup, !dbg !1290

if.end.41:                                        ; preds = %if.end.37
  %call42 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 2) #2, !dbg !1291
  %tobool43 = icmp eq i32 %call42, 0, !dbg !1291
  br i1 %tobool43, label %if.end.45, label %cleanup, !dbg !1293

if.end.45:                                        ; preds = %if.end.41
  %call46 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %call10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !1294
  store %struct._object* %call46, %struct._object** @IntHandler, align 8, !dbg !1295, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %call46, i64 0, metadata !388, metadata !1211), !dbg !1252
  %tobool47 = icmp eq %struct._object* %call46, null, !dbg !1296
  br i1 %tobool47, label %cleanup, label %if.end.49, !dbg !1298

if.end.49:                                        ; preds = %if.end.45
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %call46, i64 0, i32 0, !dbg !1299
  %4 = load i64, i64* %ob_refcnt50, align 8, !dbg !1299, !tbaa !1243
  %inc51 = add i64 %4, 1, !dbg !1299
  store i64 %inc51, i64* %ob_refcnt50, align 8, !dbg !1299, !tbaa !1243
  store volatile i32 0, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 0, i32 0), align 16, !dbg !1300, !tbaa !1301
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !389, metadata !1211), !dbg !1303
  br label %for.body, !dbg !1304

for.body:                                         ; preds = %if.end.69, %if.end.49
  %indvars.iv = phi i64 [ 1, %if.end.49 ], [ %indvars.iv.next, %if.end.69 ]
  %5 = trunc i64 %indvars.iv to i32, !dbg !1305
  %call53 = tail call void (i32)* @PyOS_getsig(i32 %5) #2, !dbg !1305
  tail call void @llvm.dbg.value(metadata void (i32)* %call53, i64 0, metadata !392, metadata !1211), !dbg !1306
  %tripped = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 0, !dbg !1307
  store volatile i32 0, i32* %tripped, align 16, !dbg !1308, !tbaa !1301
  %magicptr = ptrtoint void (i32)* %call53 to i64, !dbg !1309
  switch i64 %magicptr, label %if.else.64 [
    i64 0, label %if.then.55
    i64 1, label %if.then.60
  ], !dbg !1309

if.then.55:                                       ; preds = %for.body
  %6 = load i64, i64* bitcast (%struct._object** @DefaultHandler to i64*), align 8, !dbg !1310, !tbaa !1251
  %func = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 1, !dbg !1312
  %7 = bitcast %struct._object** %func to i64*, !dbg !1313
  store i64 %6, i64* %7, align 8, !dbg !1313, !tbaa !1314
  br label %if.end.69, !dbg !1315

if.then.60:                                       ; preds = %for.body
  %8 = load i64, i64* bitcast (%struct._object** @IgnoreHandler to i64*), align 8, !dbg !1316, !tbaa !1251
  %func63 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 1, !dbg !1318
  %9 = bitcast %struct._object** %func63 to i64*, !dbg !1319
  store i64 %8, i64* %9, align 8, !dbg !1319, !tbaa !1314
  br label %if.end.69, !dbg !1320

if.else.64:                                       ; preds = %for.body
  %func67 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 1, !dbg !1321
  store volatile %struct._object* @_Py_NoneStruct, %struct._object** %func67, align 8, !dbg !1322, !tbaa !1314
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.60, %if.else.64, %if.then.55
  %func72.pre-phi = phi %struct._object** [ %func63, %if.then.60 ], [ %func67, %if.else.64 ], [ %func, %if.then.55 ], !dbg !1323
  %10 = load volatile %struct._object*, %struct._object** %func72.pre-phi, align 8, !dbg !1323, !tbaa !1314
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1323
  %11 = load i64, i64* %ob_refcnt73, align 8, !dbg !1323, !tbaa !1243
  %inc74 = add i64 %11, 1, !dbg !1323
  store i64 %inc74, i64* %ob_refcnt73, align 8, !dbg !1323, !tbaa !1243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1304
  %exitcond = icmp eq i64 %indvars.iv.next, 65, !dbg !1304
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1304

for.end:                                          ; preds = %if.end.69
  %12 = load volatile %struct._object*, %struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 1), align 8, !dbg !1324, !tbaa !1314
  %13 = load %struct._object*, %struct._object** @DefaultHandler, align 8, !dbg !1325, !tbaa !1251
  %cmp76 = icmp eq %struct._object* %12, %13, !dbg !1326
  br i1 %cmp76, label %if.then.77, label %if.end.93, !dbg !1327

if.then.77:                                       ; preds = %for.end
  %14 = load %struct._object*, %struct._object** @IntHandler, align 8, !dbg !1328, !tbaa !1251
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1328
  %15 = load i64, i64* %ob_refcnt78, align 8, !dbg !1328, !tbaa !1243
  %inc79 = add i64 %15, 1, !dbg !1328
  store i64 %inc79, i64* %ob_refcnt78, align 8, !dbg !1328, !tbaa !1243
  %16 = load volatile %struct._object*, %struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 1), align 8, !dbg !1329, !tbaa !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !396, metadata !1211), !dbg !1329
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1331
  %17 = load i64, i64* %ob_refcnt82, align 8, !dbg !1331, !tbaa !1243
  %dec83 = add i64 %17, -1, !dbg !1331
  store i64 %dec83, i64* %ob_refcnt82, align 8, !dbg !1331, !tbaa !1243
  %cmp84 = icmp eq i64 %dec83, 0, !dbg !1331
  %18 = ptrtoint %struct._object* %14 to i64, !dbg !1333
  br i1 %cmp84, label %if.else.86, label %if.end.89, !dbg !1333

if.else.86:                                       ; preds = %if.then.77
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1334
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !1334, !tbaa !1281
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1334
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8, !dbg !1334, !tbaa !1282
  tail call void %20(%struct._object* %16) #2, !dbg !1334
  %.pre = load i64, i64* bitcast (%struct._object** @IntHandler to i64*), align 8, !dbg !1336, !tbaa !1251
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.77, %if.else.86
  %21 = phi i64 [ %18, %if.then.77 ], [ %.pre, %if.else.86 ], !dbg !1336
  store i64 %21, i64* bitcast (%struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 1) to i64*), align 8, !dbg !1337, !tbaa !1314
  %call92 = tail call void (i32)* @PyOS_setsig(i32 2, void (i32)* nonnull @signal_handler) #2, !dbg !1338
  store void (i32)* %call92, void (i32)** @old_siginthandler, align 8, !dbg !1339, !tbaa !1251
  br label %if.end.93, !dbg !1340

if.end.93:                                        ; preds = %if.end.89, %for.end
  %call94 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1341
  tail call void @llvm.dbg.value(metadata %struct._object* %call94, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call95 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct._object* %call94) #2, !dbg !1342
  tail call void @llvm.dbg.value(metadata %struct._object* %call94, i64 0, metadata !400, metadata !1211), !dbg !1343
  %cmp97 = icmp eq %struct._object* %call94, null, !dbg !1345
  br i1 %cmp97, label %if.end.111, label %do.body.99, !dbg !1346

do.body.99:                                       ; preds = %if.end.93
  tail call void @llvm.dbg.value(metadata %struct._object* %call94, i64 0, metadata !402, metadata !1211), !dbg !1347
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %call94, i64 0, i32 0, !dbg !1349
  %22 = load i64, i64* %ob_refcnt101, align 8, !dbg !1349, !tbaa !1243
  %dec102 = add i64 %22, -1, !dbg !1349
  store i64 %dec102, i64* %ob_refcnt101, align 8, !dbg !1349, !tbaa !1243
  %cmp103 = icmp eq i64 %dec102, 0, !dbg !1349
  br i1 %cmp103, label %if.else.105, label %if.end.111, !dbg !1351

if.else.105:                                      ; preds = %do.body.99
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %call94, i64 0, i32 1, !dbg !1352
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8, !dbg !1352, !tbaa !1281
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1352
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8, !dbg !1352, !tbaa !1282
  tail call void %24(%struct._object* %call94) #2, !dbg !1352
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.105, %do.body.99, %if.end.93
  %call114 = tail call %struct._object* @PyLong_FromLong(i64 2) #2, !dbg !1354
  tail call void @llvm.dbg.value(metadata %struct._object* %call114, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call115 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct._object* %call114) #2, !dbg !1355
  tail call void @llvm.dbg.value(metadata %struct._object* %call114, i64 0, metadata !405, metadata !1211), !dbg !1356
  %cmp118 = icmp eq %struct._object* %call114, null, !dbg !1358
  br i1 %cmp118, label %if.end.132, label %do.body.120, !dbg !1359

do.body.120:                                      ; preds = %if.end.111
  tail call void @llvm.dbg.value(metadata %struct._object* %call114, i64 0, metadata !407, metadata !1211), !dbg !1360
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %call114, i64 0, i32 0, !dbg !1362
  %25 = load i64, i64* %ob_refcnt122, align 8, !dbg !1362, !tbaa !1243
  %dec123 = add i64 %25, -1, !dbg !1362
  store i64 %dec123, i64* %ob_refcnt122, align 8, !dbg !1362, !tbaa !1243
  %cmp124 = icmp eq i64 %dec123, 0, !dbg !1362
  br i1 %cmp124, label %if.else.126, label %if.end.132, !dbg !1364

if.else.126:                                      ; preds = %do.body.120
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %call114, i64 0, i32 1, !dbg !1365
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8, !dbg !1365, !tbaa !1281
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1365
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8, !dbg !1365, !tbaa !1282
  tail call void %27(%struct._object* %call114) #2, !dbg !1365
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.126, %do.body.120, %if.end.111
  %call135 = tail call %struct._object* @PyLong_FromLong(i64 3) #2, !dbg !1367
  tail call void @llvm.dbg.value(metadata %struct._object* %call135, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call136 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct._object* %call135) #2, !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct._object* %call135, i64 0, metadata !410, metadata !1211), !dbg !1369
  %cmp139 = icmp eq %struct._object* %call135, null, !dbg !1371
  br i1 %cmp139, label %if.end.153, label %do.body.141, !dbg !1372

do.body.141:                                      ; preds = %if.end.132
  tail call void @llvm.dbg.value(metadata %struct._object* %call135, i64 0, metadata !412, metadata !1211), !dbg !1373
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %call135, i64 0, i32 0, !dbg !1375
  %28 = load i64, i64* %ob_refcnt143, align 8, !dbg !1375, !tbaa !1243
  %dec144 = add i64 %28, -1, !dbg !1375
  store i64 %dec144, i64* %ob_refcnt143, align 8, !dbg !1375, !tbaa !1243
  %cmp145 = icmp eq i64 %dec144, 0, !dbg !1375
  br i1 %cmp145, label %if.else.147, label %if.end.153, !dbg !1377

if.else.147:                                      ; preds = %do.body.141
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %call135, i64 0, i32 1, !dbg !1378
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !1378, !tbaa !1281
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1378
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8, !dbg !1378, !tbaa !1282
  tail call void %30(%struct._object* %call135) #2, !dbg !1378
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.147, %do.body.141, %if.end.132
  %call156 = tail call %struct._object* @PyLong_FromLong(i64 4) #2, !dbg !1380
  tail call void @llvm.dbg.value(metadata %struct._object* %call156, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call157 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct._object* %call156) #2, !dbg !1381
  tail call void @llvm.dbg.value(metadata %struct._object* %call156, i64 0, metadata !415, metadata !1211), !dbg !1382
  %cmp160 = icmp eq %struct._object* %call156, null, !dbg !1384
  br i1 %cmp160, label %if.end.174, label %do.body.162, !dbg !1385

do.body.162:                                      ; preds = %if.end.153
  tail call void @llvm.dbg.value(metadata %struct._object* %call156, i64 0, metadata !417, metadata !1211), !dbg !1386
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %call156, i64 0, i32 0, !dbg !1388
  %31 = load i64, i64* %ob_refcnt164, align 8, !dbg !1388, !tbaa !1243
  %dec165 = add i64 %31, -1, !dbg !1388
  store i64 %dec165, i64* %ob_refcnt164, align 8, !dbg !1388, !tbaa !1243
  %cmp166 = icmp eq i64 %dec165, 0, !dbg !1388
  br i1 %cmp166, label %if.else.168, label %if.end.174, !dbg !1390

if.else.168:                                      ; preds = %do.body.162
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %call156, i64 0, i32 1, !dbg !1391
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8, !dbg !1391, !tbaa !1281
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1391
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8, !dbg !1391, !tbaa !1282
  tail call void %33(%struct._object* %call156) #2, !dbg !1391
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.168, %do.body.162, %if.end.153
  %call177 = tail call %struct._object* @PyLong_FromLong(i64 5) #2, !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct._object* %call177, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call178 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct._object* %call177) #2, !dbg !1394
  tail call void @llvm.dbg.value(metadata %struct._object* %call177, i64 0, metadata !420, metadata !1211), !dbg !1395
  %cmp181 = icmp eq %struct._object* %call177, null, !dbg !1397
  br i1 %cmp181, label %if.end.195, label %do.body.183, !dbg !1398

do.body.183:                                      ; preds = %if.end.174
  tail call void @llvm.dbg.value(metadata %struct._object* %call177, i64 0, metadata !422, metadata !1211), !dbg !1399
  %ob_refcnt185 = getelementptr inbounds %struct._object, %struct._object* %call177, i64 0, i32 0, !dbg !1401
  %34 = load i64, i64* %ob_refcnt185, align 8, !dbg !1401, !tbaa !1243
  %dec186 = add i64 %34, -1, !dbg !1401
  store i64 %dec186, i64* %ob_refcnt185, align 8, !dbg !1401, !tbaa !1243
  %cmp187 = icmp eq i64 %dec186, 0, !dbg !1401
  br i1 %cmp187, label %if.else.189, label %if.end.195, !dbg !1403

if.else.189:                                      ; preds = %do.body.183
  %ob_type190 = getelementptr inbounds %struct._object, %struct._object* %call177, i64 0, i32 1, !dbg !1404
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type190, align 8, !dbg !1404, !tbaa !1281
  %tp_dealloc191 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !1404
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8, !dbg !1404, !tbaa !1282
  tail call void %36(%struct._object* %call177) #2, !dbg !1404
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.189, %do.body.183, %if.end.174
  %call198 = tail call %struct._object* @PyLong_FromLong(i64 6) #2, !dbg !1406
  tail call void @llvm.dbg.value(metadata %struct._object* %call198, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call199 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call198) #2, !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %call198, i64 0, metadata !425, metadata !1211), !dbg !1408
  %cmp202 = icmp eq %struct._object* %call198, null, !dbg !1410
  br i1 %cmp202, label %if.end.216, label %do.body.204, !dbg !1411

do.body.204:                                      ; preds = %if.end.195
  tail call void @llvm.dbg.value(metadata %struct._object* %call198, i64 0, metadata !427, metadata !1211), !dbg !1412
  %ob_refcnt206 = getelementptr inbounds %struct._object, %struct._object* %call198, i64 0, i32 0, !dbg !1414
  %37 = load i64, i64* %ob_refcnt206, align 8, !dbg !1414, !tbaa !1243
  %dec207 = add i64 %37, -1, !dbg !1414
  store i64 %dec207, i64* %ob_refcnt206, align 8, !dbg !1414, !tbaa !1243
  %cmp208 = icmp eq i64 %dec207, 0, !dbg !1414
  br i1 %cmp208, label %if.else.210, label %if.end.216, !dbg !1416

if.else.210:                                      ; preds = %do.body.204
  %ob_type211 = getelementptr inbounds %struct._object, %struct._object* %call198, i64 0, i32 1, !dbg !1417
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type211, align 8, !dbg !1417, !tbaa !1281
  %tp_dealloc212 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1417
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc212, align 8, !dbg !1417, !tbaa !1282
  tail call void %39(%struct._object* %call198) #2, !dbg !1417
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.210, %do.body.204, %if.end.195
  %call219 = tail call %struct._object* @PyLong_FromLong(i64 6) #2, !dbg !1419
  tail call void @llvm.dbg.value(metadata %struct._object* %call219, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call220 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct._object* %call219) #2, !dbg !1420
  tail call void @llvm.dbg.value(metadata %struct._object* %call219, i64 0, metadata !430, metadata !1211), !dbg !1421
  %cmp223 = icmp eq %struct._object* %call219, null, !dbg !1423
  br i1 %cmp223, label %if.end.237, label %do.body.225, !dbg !1424

do.body.225:                                      ; preds = %if.end.216
  tail call void @llvm.dbg.value(metadata %struct._object* %call219, i64 0, metadata !432, metadata !1211), !dbg !1425
  %ob_refcnt227 = getelementptr inbounds %struct._object, %struct._object* %call219, i64 0, i32 0, !dbg !1427
  %40 = load i64, i64* %ob_refcnt227, align 8, !dbg !1427, !tbaa !1243
  %dec228 = add i64 %40, -1, !dbg !1427
  store i64 %dec228, i64* %ob_refcnt227, align 8, !dbg !1427, !tbaa !1243
  %cmp229 = icmp eq i64 %dec228, 0, !dbg !1427
  br i1 %cmp229, label %if.else.231, label %if.end.237, !dbg !1429

if.else.231:                                      ; preds = %do.body.225
  %ob_type232 = getelementptr inbounds %struct._object, %struct._object* %call219, i64 0, i32 1, !dbg !1430
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type232, align 8, !dbg !1430, !tbaa !1281
  %tp_dealloc233 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !1430
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc233, align 8, !dbg !1430, !tbaa !1282
  tail call void %42(%struct._object* %call219) #2, !dbg !1430
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.231, %do.body.225, %if.end.216
  %call240 = tail call %struct._object* @PyLong_FromLong(i64 8) #2, !dbg !1432
  tail call void @llvm.dbg.value(metadata %struct._object* %call240, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call241 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %struct._object* %call240) #2, !dbg !1433
  tail call void @llvm.dbg.value(metadata %struct._object* %call240, i64 0, metadata !435, metadata !1211), !dbg !1434
  %cmp244 = icmp eq %struct._object* %call240, null, !dbg !1436
  br i1 %cmp244, label %if.end.258, label %do.body.246, !dbg !1437

do.body.246:                                      ; preds = %if.end.237
  tail call void @llvm.dbg.value(metadata %struct._object* %call240, i64 0, metadata !437, metadata !1211), !dbg !1438
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %call240, i64 0, i32 0, !dbg !1440
  %43 = load i64, i64* %ob_refcnt248, align 8, !dbg !1440, !tbaa !1243
  %dec249 = add i64 %43, -1, !dbg !1440
  store i64 %dec249, i64* %ob_refcnt248, align 8, !dbg !1440, !tbaa !1243
  %cmp250 = icmp eq i64 %dec249, 0, !dbg !1440
  br i1 %cmp250, label %if.else.252, label %if.end.258, !dbg !1442

if.else.252:                                      ; preds = %do.body.246
  %ob_type253 = getelementptr inbounds %struct._object, %struct._object* %call240, i64 0, i32 1, !dbg !1443
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type253, align 8, !dbg !1443, !tbaa !1281
  %tp_dealloc254 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !1443
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc254, align 8, !dbg !1443, !tbaa !1282
  tail call void %45(%struct._object* %call240) #2, !dbg !1443
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.252, %do.body.246, %if.end.237
  %call261 = tail call %struct._object* @PyLong_FromLong(i64 9) #2, !dbg !1445
  tail call void @llvm.dbg.value(metadata %struct._object* %call261, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call262 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct._object* %call261) #2, !dbg !1446
  tail call void @llvm.dbg.value(metadata %struct._object* %call261, i64 0, metadata !440, metadata !1211), !dbg !1447
  %cmp265 = icmp eq %struct._object* %call261, null, !dbg !1449
  br i1 %cmp265, label %if.end.279, label %do.body.267, !dbg !1450

do.body.267:                                      ; preds = %if.end.258
  tail call void @llvm.dbg.value(metadata %struct._object* %call261, i64 0, metadata !442, metadata !1211), !dbg !1451
  %ob_refcnt269 = getelementptr inbounds %struct._object, %struct._object* %call261, i64 0, i32 0, !dbg !1453
  %46 = load i64, i64* %ob_refcnt269, align 8, !dbg !1453, !tbaa !1243
  %dec270 = add i64 %46, -1, !dbg !1453
  store i64 %dec270, i64* %ob_refcnt269, align 8, !dbg !1453, !tbaa !1243
  %cmp271 = icmp eq i64 %dec270, 0, !dbg !1453
  br i1 %cmp271, label %if.else.273, label %if.end.279, !dbg !1455

if.else.273:                                      ; preds = %do.body.267
  %ob_type274 = getelementptr inbounds %struct._object, %struct._object* %call261, i64 0, i32 1, !dbg !1456
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type274, align 8, !dbg !1456, !tbaa !1281
  %tp_dealloc275 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !1456
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc275, align 8, !dbg !1456, !tbaa !1282
  tail call void %48(%struct._object* %call261) #2, !dbg !1456
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.273, %do.body.267, %if.end.258
  %call282 = tail call %struct._object* @PyLong_FromLong(i64 7) #2, !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct._object* %call282, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call283 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct._object* %call282) #2, !dbg !1459
  tail call void @llvm.dbg.value(metadata %struct._object* %call282, i64 0, metadata !445, metadata !1211), !dbg !1460
  %cmp286 = icmp eq %struct._object* %call282, null, !dbg !1462
  br i1 %cmp286, label %if.end.300, label %do.body.288, !dbg !1463

do.body.288:                                      ; preds = %if.end.279
  tail call void @llvm.dbg.value(metadata %struct._object* %call282, i64 0, metadata !447, metadata !1211), !dbg !1464
  %ob_refcnt290 = getelementptr inbounds %struct._object, %struct._object* %call282, i64 0, i32 0, !dbg !1466
  %49 = load i64, i64* %ob_refcnt290, align 8, !dbg !1466, !tbaa !1243
  %dec291 = add i64 %49, -1, !dbg !1466
  store i64 %dec291, i64* %ob_refcnt290, align 8, !dbg !1466, !tbaa !1243
  %cmp292 = icmp eq i64 %dec291, 0, !dbg !1466
  br i1 %cmp292, label %if.else.294, label %if.end.300, !dbg !1468

if.else.294:                                      ; preds = %do.body.288
  %ob_type295 = getelementptr inbounds %struct._object, %struct._object* %call282, i64 0, i32 1, !dbg !1469
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type295, align 8, !dbg !1469, !tbaa !1281
  %tp_dealloc296 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !1469
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc296, align 8, !dbg !1469, !tbaa !1282
  tail call void %51(%struct._object* %call282) #2, !dbg !1469
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.294, %do.body.288, %if.end.279
  %call303 = tail call %struct._object* @PyLong_FromLong(i64 11) #2, !dbg !1471
  tail call void @llvm.dbg.value(metadata %struct._object* %call303, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call304 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call303) #2, !dbg !1472
  tail call void @llvm.dbg.value(metadata %struct._object* %call303, i64 0, metadata !450, metadata !1211), !dbg !1473
  %cmp307 = icmp eq %struct._object* %call303, null, !dbg !1475
  br i1 %cmp307, label %if.end.321, label %do.body.309, !dbg !1476

do.body.309:                                      ; preds = %if.end.300
  tail call void @llvm.dbg.value(metadata %struct._object* %call303, i64 0, metadata !452, metadata !1211), !dbg !1477
  %ob_refcnt311 = getelementptr inbounds %struct._object, %struct._object* %call303, i64 0, i32 0, !dbg !1479
  %52 = load i64, i64* %ob_refcnt311, align 8, !dbg !1479, !tbaa !1243
  %dec312 = add i64 %52, -1, !dbg !1479
  store i64 %dec312, i64* %ob_refcnt311, align 8, !dbg !1479, !tbaa !1243
  %cmp313 = icmp eq i64 %dec312, 0, !dbg !1479
  br i1 %cmp313, label %if.else.315, label %if.end.321, !dbg !1481

if.else.315:                                      ; preds = %do.body.309
  %ob_type316 = getelementptr inbounds %struct._object, %struct._object* %call303, i64 0, i32 1, !dbg !1482
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type316, align 8, !dbg !1482, !tbaa !1281
  %tp_dealloc317 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i64 0, i32 4, !dbg !1482
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc317, align 8, !dbg !1482, !tbaa !1282
  tail call void %54(%struct._object* %call303) #2, !dbg !1482
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.315, %do.body.309, %if.end.300
  %call324 = tail call %struct._object* @PyLong_FromLong(i64 31) #2, !dbg !1484
  tail call void @llvm.dbg.value(metadata %struct._object* %call324, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call325 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %struct._object* %call324) #2, !dbg !1485
  tail call void @llvm.dbg.value(metadata %struct._object* %call324, i64 0, metadata !455, metadata !1211), !dbg !1486
  %cmp328 = icmp eq %struct._object* %call324, null, !dbg !1488
  br i1 %cmp328, label %if.end.342, label %do.body.330, !dbg !1489

do.body.330:                                      ; preds = %if.end.321
  tail call void @llvm.dbg.value(metadata %struct._object* %call324, i64 0, metadata !457, metadata !1211), !dbg !1490
  %ob_refcnt332 = getelementptr inbounds %struct._object, %struct._object* %call324, i64 0, i32 0, !dbg !1492
  %55 = load i64, i64* %ob_refcnt332, align 8, !dbg !1492, !tbaa !1243
  %dec333 = add i64 %55, -1, !dbg !1492
  store i64 %dec333, i64* %ob_refcnt332, align 8, !dbg !1492, !tbaa !1243
  %cmp334 = icmp eq i64 %dec333, 0, !dbg !1492
  br i1 %cmp334, label %if.else.336, label %if.end.342, !dbg !1494

if.else.336:                                      ; preds = %do.body.330
  %ob_type337 = getelementptr inbounds %struct._object, %struct._object* %call324, i64 0, i32 1, !dbg !1495
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type337, align 8, !dbg !1495, !tbaa !1281
  %tp_dealloc338 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 4, !dbg !1495
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc338, align 8, !dbg !1495, !tbaa !1282
  tail call void %57(%struct._object* %call324) #2, !dbg !1495
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.336, %do.body.330, %if.end.321
  %call345 = tail call %struct._object* @PyLong_FromLong(i64 13) #2, !dbg !1497
  tail call void @llvm.dbg.value(metadata %struct._object* %call345, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call346 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), %struct._object* %call345) #2, !dbg !1498
  tail call void @llvm.dbg.value(metadata %struct._object* %call345, i64 0, metadata !460, metadata !1211), !dbg !1499
  %cmp349 = icmp eq %struct._object* %call345, null, !dbg !1501
  br i1 %cmp349, label %if.end.363, label %do.body.351, !dbg !1502

do.body.351:                                      ; preds = %if.end.342
  tail call void @llvm.dbg.value(metadata %struct._object* %call345, i64 0, metadata !462, metadata !1211), !dbg !1503
  %ob_refcnt353 = getelementptr inbounds %struct._object, %struct._object* %call345, i64 0, i32 0, !dbg !1505
  %58 = load i64, i64* %ob_refcnt353, align 8, !dbg !1505, !tbaa !1243
  %dec354 = add i64 %58, -1, !dbg !1505
  store i64 %dec354, i64* %ob_refcnt353, align 8, !dbg !1505, !tbaa !1243
  %cmp355 = icmp eq i64 %dec354, 0, !dbg !1505
  br i1 %cmp355, label %if.else.357, label %if.end.363, !dbg !1507

if.else.357:                                      ; preds = %do.body.351
  %ob_type358 = getelementptr inbounds %struct._object, %struct._object* %call345, i64 0, i32 1, !dbg !1508
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type358, align 8, !dbg !1508, !tbaa !1281
  %tp_dealloc359 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i64 0, i32 4, !dbg !1508
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc359, align 8, !dbg !1508, !tbaa !1282
  tail call void %60(%struct._object* %call345) #2, !dbg !1508
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.357, %do.body.351, %if.end.342
  %call366 = tail call %struct._object* @PyLong_FromLong(i64 14) #2, !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct._object* %call366, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call367 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), %struct._object* %call366) #2, !dbg !1511
  tail call void @llvm.dbg.value(metadata %struct._object* %call366, i64 0, metadata !465, metadata !1211), !dbg !1512
  %cmp370 = icmp eq %struct._object* %call366, null, !dbg !1514
  br i1 %cmp370, label %if.end.384, label %do.body.372, !dbg !1515

do.body.372:                                      ; preds = %if.end.363
  tail call void @llvm.dbg.value(metadata %struct._object* %call366, i64 0, metadata !467, metadata !1211), !dbg !1516
  %ob_refcnt374 = getelementptr inbounds %struct._object, %struct._object* %call366, i64 0, i32 0, !dbg !1518
  %61 = load i64, i64* %ob_refcnt374, align 8, !dbg !1518, !tbaa !1243
  %dec375 = add i64 %61, -1, !dbg !1518
  store i64 %dec375, i64* %ob_refcnt374, align 8, !dbg !1518, !tbaa !1243
  %cmp376 = icmp eq i64 %dec375, 0, !dbg !1518
  br i1 %cmp376, label %if.else.378, label %if.end.384, !dbg !1520

if.else.378:                                      ; preds = %do.body.372
  %ob_type379 = getelementptr inbounds %struct._object, %struct._object* %call366, i64 0, i32 1, !dbg !1521
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type379, align 8, !dbg !1521, !tbaa !1281
  %tp_dealloc380 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i64 0, i32 4, !dbg !1521
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc380, align 8, !dbg !1521, !tbaa !1282
  tail call void %63(%struct._object* %call366) #2, !dbg !1521
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.378, %do.body.372, %if.end.363
  %call387 = tail call %struct._object* @PyLong_FromLong(i64 15) #2, !dbg !1523
  tail call void @llvm.dbg.value(metadata %struct._object* %call387, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call388 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %struct._object* %call387) #2, !dbg !1524
  tail call void @llvm.dbg.value(metadata %struct._object* %call387, i64 0, metadata !470, metadata !1211), !dbg !1525
  %cmp391 = icmp eq %struct._object* %call387, null, !dbg !1527
  br i1 %cmp391, label %if.end.405, label %do.body.393, !dbg !1528

do.body.393:                                      ; preds = %if.end.384
  tail call void @llvm.dbg.value(metadata %struct._object* %call387, i64 0, metadata !472, metadata !1211), !dbg !1529
  %ob_refcnt395 = getelementptr inbounds %struct._object, %struct._object* %call387, i64 0, i32 0, !dbg !1531
  %64 = load i64, i64* %ob_refcnt395, align 8, !dbg !1531, !tbaa !1243
  %dec396 = add i64 %64, -1, !dbg !1531
  store i64 %dec396, i64* %ob_refcnt395, align 8, !dbg !1531, !tbaa !1243
  %cmp397 = icmp eq i64 %dec396, 0, !dbg !1531
  br i1 %cmp397, label %if.else.399, label %if.end.405, !dbg !1533

if.else.399:                                      ; preds = %do.body.393
  %ob_type400 = getelementptr inbounds %struct._object, %struct._object* %call387, i64 0, i32 1, !dbg !1534
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type400, align 8, !dbg !1534, !tbaa !1281
  %tp_dealloc401 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i64 0, i32 4, !dbg !1534
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc401, align 8, !dbg !1534, !tbaa !1282
  tail call void %66(%struct._object* %call387) #2, !dbg !1534
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.399, %do.body.393, %if.end.384
  %call408 = tail call %struct._object* @PyLong_FromLong(i64 10) #2, !dbg !1536
  tail call void @llvm.dbg.value(metadata %struct._object* %call408, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call409 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %struct._object* %call408) #2, !dbg !1537
  tail call void @llvm.dbg.value(metadata %struct._object* %call408, i64 0, metadata !475, metadata !1211), !dbg !1538
  %cmp412 = icmp eq %struct._object* %call408, null, !dbg !1540
  br i1 %cmp412, label %if.end.426, label %do.body.414, !dbg !1541

do.body.414:                                      ; preds = %if.end.405
  tail call void @llvm.dbg.value(metadata %struct._object* %call408, i64 0, metadata !477, metadata !1211), !dbg !1542
  %ob_refcnt416 = getelementptr inbounds %struct._object, %struct._object* %call408, i64 0, i32 0, !dbg !1544
  %67 = load i64, i64* %ob_refcnt416, align 8, !dbg !1544, !tbaa !1243
  %dec417 = add i64 %67, -1, !dbg !1544
  store i64 %dec417, i64* %ob_refcnt416, align 8, !dbg !1544, !tbaa !1243
  %cmp418 = icmp eq i64 %dec417, 0, !dbg !1544
  br i1 %cmp418, label %if.else.420, label %if.end.426, !dbg !1546

if.else.420:                                      ; preds = %do.body.414
  %ob_type421 = getelementptr inbounds %struct._object, %struct._object* %call408, i64 0, i32 1, !dbg !1547
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type421, align 8, !dbg !1547, !tbaa !1281
  %tp_dealloc422 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i64 0, i32 4, !dbg !1547
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc422, align 8, !dbg !1547, !tbaa !1282
  tail call void %69(%struct._object* %call408) #2, !dbg !1547
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.420, %do.body.414, %if.end.405
  %call429 = tail call %struct._object* @PyLong_FromLong(i64 12) #2, !dbg !1549
  tail call void @llvm.dbg.value(metadata %struct._object* %call429, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call430 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), %struct._object* %call429) #2, !dbg !1550
  tail call void @llvm.dbg.value(metadata %struct._object* %call429, i64 0, metadata !480, metadata !1211), !dbg !1551
  %cmp433 = icmp eq %struct._object* %call429, null, !dbg !1553
  br i1 %cmp433, label %if.end.447, label %do.body.435, !dbg !1554

do.body.435:                                      ; preds = %if.end.426
  tail call void @llvm.dbg.value(metadata %struct._object* %call429, i64 0, metadata !482, metadata !1211), !dbg !1555
  %ob_refcnt437 = getelementptr inbounds %struct._object, %struct._object* %call429, i64 0, i32 0, !dbg !1557
  %70 = load i64, i64* %ob_refcnt437, align 8, !dbg !1557, !tbaa !1243
  %dec438 = add i64 %70, -1, !dbg !1557
  store i64 %dec438, i64* %ob_refcnt437, align 8, !dbg !1557, !tbaa !1243
  %cmp439 = icmp eq i64 %dec438, 0, !dbg !1557
  br i1 %cmp439, label %if.else.441, label %if.end.447, !dbg !1559

if.else.441:                                      ; preds = %do.body.435
  %ob_type442 = getelementptr inbounds %struct._object, %struct._object* %call429, i64 0, i32 1, !dbg !1560
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type442, align 8, !dbg !1560, !tbaa !1281
  %tp_dealloc443 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i64 0, i32 4, !dbg !1560
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc443, align 8, !dbg !1560, !tbaa !1282
  tail call void %72(%struct._object* %call429) #2, !dbg !1560
  br label %if.end.447

if.end.447:                                       ; preds = %if.else.441, %do.body.435, %if.end.426
  %call450 = tail call %struct._object* @PyLong_FromLong(i64 17) #2, !dbg !1562
  tail call void @llvm.dbg.value(metadata %struct._object* %call450, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call451 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), %struct._object* %call450) #2, !dbg !1563
  tail call void @llvm.dbg.value(metadata %struct._object* %call450, i64 0, metadata !485, metadata !1211), !dbg !1564
  %cmp454 = icmp eq %struct._object* %call450, null, !dbg !1566
  br i1 %cmp454, label %if.end.468, label %do.body.456, !dbg !1567

do.body.456:                                      ; preds = %if.end.447
  tail call void @llvm.dbg.value(metadata %struct._object* %call450, i64 0, metadata !487, metadata !1211), !dbg !1568
  %ob_refcnt458 = getelementptr inbounds %struct._object, %struct._object* %call450, i64 0, i32 0, !dbg !1570
  %73 = load i64, i64* %ob_refcnt458, align 8, !dbg !1570, !tbaa !1243
  %dec459 = add i64 %73, -1, !dbg !1570
  store i64 %dec459, i64* %ob_refcnt458, align 8, !dbg !1570, !tbaa !1243
  %cmp460 = icmp eq i64 %dec459, 0, !dbg !1570
  br i1 %cmp460, label %if.else.462, label %if.end.468, !dbg !1572

if.else.462:                                      ; preds = %do.body.456
  %ob_type463 = getelementptr inbounds %struct._object, %struct._object* %call450, i64 0, i32 1, !dbg !1573
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type463, align 8, !dbg !1573, !tbaa !1281
  %tp_dealloc464 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !1573
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc464, align 8, !dbg !1573, !tbaa !1282
  tail call void %75(%struct._object* %call450) #2, !dbg !1573
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.462, %do.body.456, %if.end.447
  %call471 = tail call %struct._object* @PyLong_FromLong(i64 17) #2, !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct._object* %call471, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call472 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), %struct._object* %call471) #2, !dbg !1576
  tail call void @llvm.dbg.value(metadata %struct._object* %call471, i64 0, metadata !490, metadata !1211), !dbg !1577
  %cmp475 = icmp eq %struct._object* %call471, null, !dbg !1579
  br i1 %cmp475, label %if.end.489, label %do.body.477, !dbg !1580

do.body.477:                                      ; preds = %if.end.468
  tail call void @llvm.dbg.value(metadata %struct._object* %call471, i64 0, metadata !492, metadata !1211), !dbg !1581
  %ob_refcnt479 = getelementptr inbounds %struct._object, %struct._object* %call471, i64 0, i32 0, !dbg !1583
  %76 = load i64, i64* %ob_refcnt479, align 8, !dbg !1583, !tbaa !1243
  %dec480 = add i64 %76, -1, !dbg !1583
  store i64 %dec480, i64* %ob_refcnt479, align 8, !dbg !1583, !tbaa !1243
  %cmp481 = icmp eq i64 %dec480, 0, !dbg !1583
  br i1 %cmp481, label %if.else.483, label %if.end.489, !dbg !1585

if.else.483:                                      ; preds = %do.body.477
  %ob_type484 = getelementptr inbounds %struct._object, %struct._object* %call471, i64 0, i32 1, !dbg !1586
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type484, align 8, !dbg !1586, !tbaa !1281
  %tp_dealloc485 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i64 0, i32 4, !dbg !1586
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc485, align 8, !dbg !1586, !tbaa !1282
  tail call void %78(%struct._object* %call471) #2, !dbg !1586
  br label %if.end.489

if.end.489:                                       ; preds = %if.else.483, %do.body.477, %if.end.468
  %call492 = tail call %struct._object* @PyLong_FromLong(i64 30) #2, !dbg !1588
  tail call void @llvm.dbg.value(metadata %struct._object* %call492, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call493 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), %struct._object* %call492) #2, !dbg !1589
  tail call void @llvm.dbg.value(metadata %struct._object* %call492, i64 0, metadata !495, metadata !1211), !dbg !1590
  %cmp496 = icmp eq %struct._object* %call492, null, !dbg !1592
  br i1 %cmp496, label %if.end.510, label %do.body.498, !dbg !1593

do.body.498:                                      ; preds = %if.end.489
  tail call void @llvm.dbg.value(metadata %struct._object* %call492, i64 0, metadata !497, metadata !1211), !dbg !1594
  %ob_refcnt500 = getelementptr inbounds %struct._object, %struct._object* %call492, i64 0, i32 0, !dbg !1596
  %79 = load i64, i64* %ob_refcnt500, align 8, !dbg !1596, !tbaa !1243
  %dec501 = add i64 %79, -1, !dbg !1596
  store i64 %dec501, i64* %ob_refcnt500, align 8, !dbg !1596, !tbaa !1243
  %cmp502 = icmp eq i64 %dec501, 0, !dbg !1596
  br i1 %cmp502, label %if.else.504, label %if.end.510, !dbg !1598

if.else.504:                                      ; preds = %do.body.498
  %ob_type505 = getelementptr inbounds %struct._object, %struct._object* %call492, i64 0, i32 1, !dbg !1599
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type505, align 8, !dbg !1599, !tbaa !1281
  %tp_dealloc506 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i64 0, i32 4, !dbg !1599
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc506, align 8, !dbg !1599, !tbaa !1282
  tail call void %81(%struct._object* %call492) #2, !dbg !1599
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.504, %do.body.498, %if.end.489
  %call513 = tail call %struct._object* @PyLong_FromLong(i64 29) #2, !dbg !1601
  tail call void @llvm.dbg.value(metadata %struct._object* %call513, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call514 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call513) #2, !dbg !1602
  tail call void @llvm.dbg.value(metadata %struct._object* %call513, i64 0, metadata !500, metadata !1211), !dbg !1603
  %cmp517 = icmp eq %struct._object* %call513, null, !dbg !1605
  br i1 %cmp517, label %if.end.531, label %do.body.519, !dbg !1606

do.body.519:                                      ; preds = %if.end.510
  tail call void @llvm.dbg.value(metadata %struct._object* %call513, i64 0, metadata !502, metadata !1211), !dbg !1607
  %ob_refcnt521 = getelementptr inbounds %struct._object, %struct._object* %call513, i64 0, i32 0, !dbg !1609
  %82 = load i64, i64* %ob_refcnt521, align 8, !dbg !1609, !tbaa !1243
  %dec522 = add i64 %82, -1, !dbg !1609
  store i64 %dec522, i64* %ob_refcnt521, align 8, !dbg !1609, !tbaa !1243
  %cmp523 = icmp eq i64 %dec522, 0, !dbg !1609
  br i1 %cmp523, label %if.else.525, label %if.end.531, !dbg !1611

if.else.525:                                      ; preds = %do.body.519
  %ob_type526 = getelementptr inbounds %struct._object, %struct._object* %call513, i64 0, i32 1, !dbg !1612
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type526, align 8, !dbg !1612, !tbaa !1281
  %tp_dealloc527 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i64 0, i32 4, !dbg !1612
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc527, align 8, !dbg !1612, !tbaa !1282
  tail call void %84(%struct._object* %call513) #2, !dbg !1612
  br label %if.end.531

if.end.531:                                       ; preds = %if.else.525, %do.body.519, %if.end.510
  %call534 = tail call %struct._object* @PyLong_FromLong(i64 23) #2, !dbg !1614
  tail call void @llvm.dbg.value(metadata %struct._object* %call534, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call535 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %struct._object* %call534) #2, !dbg !1615
  tail call void @llvm.dbg.value(metadata %struct._object* %call534, i64 0, metadata !505, metadata !1211), !dbg !1616
  %cmp538 = icmp eq %struct._object* %call534, null, !dbg !1618
  br i1 %cmp538, label %if.end.552, label %do.body.540, !dbg !1619

do.body.540:                                      ; preds = %if.end.531
  tail call void @llvm.dbg.value(metadata %struct._object* %call534, i64 0, metadata !507, metadata !1211), !dbg !1620
  %ob_refcnt542 = getelementptr inbounds %struct._object, %struct._object* %call534, i64 0, i32 0, !dbg !1622
  %85 = load i64, i64* %ob_refcnt542, align 8, !dbg !1622, !tbaa !1243
  %dec543 = add i64 %85, -1, !dbg !1622
  store i64 %dec543, i64* %ob_refcnt542, align 8, !dbg !1622, !tbaa !1243
  %cmp544 = icmp eq i64 %dec543, 0, !dbg !1622
  br i1 %cmp544, label %if.else.546, label %if.end.552, !dbg !1624

if.else.546:                                      ; preds = %do.body.540
  %ob_type547 = getelementptr inbounds %struct._object, %struct._object* %call534, i64 0, i32 1, !dbg !1625
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type547, align 8, !dbg !1625, !tbaa !1281
  %tp_dealloc548 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i64 0, i32 4, !dbg !1625
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc548, align 8, !dbg !1625, !tbaa !1282
  tail call void %87(%struct._object* %call534) #2, !dbg !1625
  br label %if.end.552

if.end.552:                                       ; preds = %if.else.546, %do.body.540, %if.end.531
  %call555 = tail call %struct._object* @PyLong_FromLong(i64 28) #2, !dbg !1627
  tail call void @llvm.dbg.value(metadata %struct._object* %call555, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call556 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), %struct._object* %call555) #2, !dbg !1628
  tail call void @llvm.dbg.value(metadata %struct._object* %call555, i64 0, metadata !510, metadata !1211), !dbg !1629
  %cmp559 = icmp eq %struct._object* %call555, null, !dbg !1631
  br i1 %cmp559, label %if.end.573, label %do.body.561, !dbg !1632

do.body.561:                                      ; preds = %if.end.552
  tail call void @llvm.dbg.value(metadata %struct._object* %call555, i64 0, metadata !512, metadata !1211), !dbg !1633
  %ob_refcnt563 = getelementptr inbounds %struct._object, %struct._object* %call555, i64 0, i32 0, !dbg !1635
  %88 = load i64, i64* %ob_refcnt563, align 8, !dbg !1635, !tbaa !1243
  %dec564 = add i64 %88, -1, !dbg !1635
  store i64 %dec564, i64* %ob_refcnt563, align 8, !dbg !1635, !tbaa !1243
  %cmp565 = icmp eq i64 %dec564, 0, !dbg !1635
  br i1 %cmp565, label %if.else.567, label %if.end.573, !dbg !1637

if.else.567:                                      ; preds = %do.body.561
  %ob_type568 = getelementptr inbounds %struct._object, %struct._object* %call555, i64 0, i32 1, !dbg !1638
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type568, align 8, !dbg !1638, !tbaa !1281
  %tp_dealloc569 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i64 0, i32 4, !dbg !1638
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc569, align 8, !dbg !1638, !tbaa !1282
  tail call void %90(%struct._object* %call555) #2, !dbg !1638
  br label %if.end.573

if.end.573:                                       ; preds = %if.else.567, %do.body.561, %if.end.552
  %call576 = tail call %struct._object* @PyLong_FromLong(i64 29) #2, !dbg !1640
  tail call void @llvm.dbg.value(metadata %struct._object* %call576, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call577 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), %struct._object* %call576) #2, !dbg !1641
  tail call void @llvm.dbg.value(metadata %struct._object* %call576, i64 0, metadata !515, metadata !1211), !dbg !1642
  %cmp580 = icmp eq %struct._object* %call576, null, !dbg !1644
  br i1 %cmp580, label %if.end.594, label %do.body.582, !dbg !1645

do.body.582:                                      ; preds = %if.end.573
  tail call void @llvm.dbg.value(metadata %struct._object* %call576, i64 0, metadata !517, metadata !1211), !dbg !1646
  %ob_refcnt584 = getelementptr inbounds %struct._object, %struct._object* %call576, i64 0, i32 0, !dbg !1648
  %91 = load i64, i64* %ob_refcnt584, align 8, !dbg !1648, !tbaa !1243
  %dec585 = add i64 %91, -1, !dbg !1648
  store i64 %dec585, i64* %ob_refcnt584, align 8, !dbg !1648, !tbaa !1243
  %cmp586 = icmp eq i64 %dec585, 0, !dbg !1648
  br i1 %cmp586, label %if.else.588, label %if.end.594, !dbg !1650

if.else.588:                                      ; preds = %do.body.582
  %ob_type589 = getelementptr inbounds %struct._object, %struct._object* %call576, i64 0, i32 1, !dbg !1651
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type589, align 8, !dbg !1651, !tbaa !1281
  %tp_dealloc590 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i64 0, i32 4, !dbg !1651
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc590, align 8, !dbg !1651, !tbaa !1282
  tail call void %93(%struct._object* %call576) #2, !dbg !1651
  br label %if.end.594

if.end.594:                                       ; preds = %if.else.588, %do.body.582, %if.end.573
  %call597 = tail call %struct._object* @PyLong_FromLong(i64 19) #2, !dbg !1653
  tail call void @llvm.dbg.value(metadata %struct._object* %call597, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call598 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), %struct._object* %call597) #2, !dbg !1654
  tail call void @llvm.dbg.value(metadata %struct._object* %call597, i64 0, metadata !520, metadata !1211), !dbg !1655
  %cmp601 = icmp eq %struct._object* %call597, null, !dbg !1657
  br i1 %cmp601, label %if.end.615, label %do.body.603, !dbg !1658

do.body.603:                                      ; preds = %if.end.594
  tail call void @llvm.dbg.value(metadata %struct._object* %call597, i64 0, metadata !522, metadata !1211), !dbg !1659
  %ob_refcnt605 = getelementptr inbounds %struct._object, %struct._object* %call597, i64 0, i32 0, !dbg !1661
  %94 = load i64, i64* %ob_refcnt605, align 8, !dbg !1661, !tbaa !1243
  %dec606 = add i64 %94, -1, !dbg !1661
  store i64 %dec606, i64* %ob_refcnt605, align 8, !dbg !1661, !tbaa !1243
  %cmp607 = icmp eq i64 %dec606, 0, !dbg !1661
  br i1 %cmp607, label %if.else.609, label %if.end.615, !dbg !1663

if.else.609:                                      ; preds = %do.body.603
  %ob_type610 = getelementptr inbounds %struct._object, %struct._object* %call597, i64 0, i32 1, !dbg !1664
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type610, align 8, !dbg !1664, !tbaa !1281
  %tp_dealloc611 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 4, !dbg !1664
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc611, align 8, !dbg !1664, !tbaa !1282
  tail call void %96(%struct._object* %call597) #2, !dbg !1664
  br label %if.end.615

if.end.615:                                       ; preds = %if.else.609, %do.body.603, %if.end.594
  %call618 = tail call %struct._object* @PyLong_FromLong(i64 20) #2, !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct._object* %call618, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call619 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), %struct._object* %call618) #2, !dbg !1667
  tail call void @llvm.dbg.value(metadata %struct._object* %call618, i64 0, metadata !525, metadata !1211), !dbg !1668
  %cmp622 = icmp eq %struct._object* %call618, null, !dbg !1670
  br i1 %cmp622, label %if.end.636, label %do.body.624, !dbg !1671

do.body.624:                                      ; preds = %if.end.615
  tail call void @llvm.dbg.value(metadata %struct._object* %call618, i64 0, metadata !527, metadata !1211), !dbg !1672
  %ob_refcnt626 = getelementptr inbounds %struct._object, %struct._object* %call618, i64 0, i32 0, !dbg !1674
  %97 = load i64, i64* %ob_refcnt626, align 8, !dbg !1674, !tbaa !1243
  %dec627 = add i64 %97, -1, !dbg !1674
  store i64 %dec627, i64* %ob_refcnt626, align 8, !dbg !1674, !tbaa !1243
  %cmp628 = icmp eq i64 %dec627, 0, !dbg !1674
  br i1 %cmp628, label %if.else.630, label %if.end.636, !dbg !1676

if.else.630:                                      ; preds = %do.body.624
  %ob_type631 = getelementptr inbounds %struct._object, %struct._object* %call618, i64 0, i32 1, !dbg !1677
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type631, align 8, !dbg !1677, !tbaa !1281
  %tp_dealloc632 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i64 0, i32 4, !dbg !1677
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc632, align 8, !dbg !1677, !tbaa !1282
  tail call void %99(%struct._object* %call618) #2, !dbg !1677
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.630, %do.body.624, %if.end.615
  %call639 = tail call %struct._object* @PyLong_FromLong(i64 18) #2, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct._object* %call639, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call640 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), %struct._object* %call639) #2, !dbg !1680
  tail call void @llvm.dbg.value(metadata %struct._object* %call639, i64 0, metadata !530, metadata !1211), !dbg !1681
  %cmp643 = icmp eq %struct._object* %call639, null, !dbg !1683
  br i1 %cmp643, label %if.end.657, label %do.body.645, !dbg !1684

do.body.645:                                      ; preds = %if.end.636
  tail call void @llvm.dbg.value(metadata %struct._object* %call639, i64 0, metadata !532, metadata !1211), !dbg !1685
  %ob_refcnt647 = getelementptr inbounds %struct._object, %struct._object* %call639, i64 0, i32 0, !dbg !1687
  %100 = load i64, i64* %ob_refcnt647, align 8, !dbg !1687, !tbaa !1243
  %dec648 = add i64 %100, -1, !dbg !1687
  store i64 %dec648, i64* %ob_refcnt647, align 8, !dbg !1687, !tbaa !1243
  %cmp649 = icmp eq i64 %dec648, 0, !dbg !1687
  br i1 %cmp649, label %if.else.651, label %if.end.657, !dbg !1689

if.else.651:                                      ; preds = %do.body.645
  %ob_type652 = getelementptr inbounds %struct._object, %struct._object* %call639, i64 0, i32 1, !dbg !1690
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type652, align 8, !dbg !1690, !tbaa !1281
  %tp_dealloc653 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i64 0, i32 4, !dbg !1690
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc653, align 8, !dbg !1690, !tbaa !1282
  tail call void %102(%struct._object* %call639) #2, !dbg !1690
  br label %if.end.657

if.end.657:                                       ; preds = %if.else.651, %do.body.645, %if.end.636
  %call660 = tail call %struct._object* @PyLong_FromLong(i64 21) #2, !dbg !1692
  tail call void @llvm.dbg.value(metadata %struct._object* %call660, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call661 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %struct._object* %call660) #2, !dbg !1693
  tail call void @llvm.dbg.value(metadata %struct._object* %call660, i64 0, metadata !535, metadata !1211), !dbg !1694
  %cmp664 = icmp eq %struct._object* %call660, null, !dbg !1696
  br i1 %cmp664, label %if.end.678, label %do.body.666, !dbg !1697

do.body.666:                                      ; preds = %if.end.657
  tail call void @llvm.dbg.value(metadata %struct._object* %call660, i64 0, metadata !537, metadata !1211), !dbg !1698
  %ob_refcnt668 = getelementptr inbounds %struct._object, %struct._object* %call660, i64 0, i32 0, !dbg !1700
  %103 = load i64, i64* %ob_refcnt668, align 8, !dbg !1700, !tbaa !1243
  %dec669 = add i64 %103, -1, !dbg !1700
  store i64 %dec669, i64* %ob_refcnt668, align 8, !dbg !1700, !tbaa !1243
  %cmp670 = icmp eq i64 %dec669, 0, !dbg !1700
  br i1 %cmp670, label %if.else.672, label %if.end.678, !dbg !1702

if.else.672:                                      ; preds = %do.body.666
  %ob_type673 = getelementptr inbounds %struct._object, %struct._object* %call660, i64 0, i32 1, !dbg !1703
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type673, align 8, !dbg !1703, !tbaa !1281
  %tp_dealloc674 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i64 0, i32 4, !dbg !1703
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc674, align 8, !dbg !1703, !tbaa !1282
  tail call void %105(%struct._object* %call660) #2, !dbg !1703
  br label %if.end.678

if.end.678:                                       ; preds = %if.else.672, %do.body.666, %if.end.657
  %call681 = tail call %struct._object* @PyLong_FromLong(i64 22) #2, !dbg !1705
  tail call void @llvm.dbg.value(metadata %struct._object* %call681, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call682 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), %struct._object* %call681) #2, !dbg !1706
  tail call void @llvm.dbg.value(metadata %struct._object* %call681, i64 0, metadata !540, metadata !1211), !dbg !1707
  %cmp685 = icmp eq %struct._object* %call681, null, !dbg !1709
  br i1 %cmp685, label %if.end.699, label %do.body.687, !dbg !1710

do.body.687:                                      ; preds = %if.end.678
  tail call void @llvm.dbg.value(metadata %struct._object* %call681, i64 0, metadata !542, metadata !1211), !dbg !1711
  %ob_refcnt689 = getelementptr inbounds %struct._object, %struct._object* %call681, i64 0, i32 0, !dbg !1713
  %106 = load i64, i64* %ob_refcnt689, align 8, !dbg !1713, !tbaa !1243
  %dec690 = add i64 %106, -1, !dbg !1713
  store i64 %dec690, i64* %ob_refcnt689, align 8, !dbg !1713, !tbaa !1243
  %cmp691 = icmp eq i64 %dec690, 0, !dbg !1713
  br i1 %cmp691, label %if.else.693, label %if.end.699, !dbg !1715

if.else.693:                                      ; preds = %do.body.687
  %ob_type694 = getelementptr inbounds %struct._object, %struct._object* %call681, i64 0, i32 1, !dbg !1716
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type694, align 8, !dbg !1716, !tbaa !1281
  %tp_dealloc695 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i64 0, i32 4, !dbg !1716
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc695, align 8, !dbg !1716, !tbaa !1282
  tail call void %108(%struct._object* %call681) #2, !dbg !1716
  br label %if.end.699

if.end.699:                                       ; preds = %if.else.693, %do.body.687, %if.end.678
  %call702 = tail call %struct._object* @PyLong_FromLong(i64 26) #2, !dbg !1718
  tail call void @llvm.dbg.value(metadata %struct._object* %call702, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call703 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), %struct._object* %call702) #2, !dbg !1719
  tail call void @llvm.dbg.value(metadata %struct._object* %call702, i64 0, metadata !545, metadata !1211), !dbg !1720
  %cmp706 = icmp eq %struct._object* %call702, null, !dbg !1722
  br i1 %cmp706, label %if.end.720, label %do.body.708, !dbg !1723

do.body.708:                                      ; preds = %if.end.699
  tail call void @llvm.dbg.value(metadata %struct._object* %call702, i64 0, metadata !547, metadata !1211), !dbg !1724
  %ob_refcnt710 = getelementptr inbounds %struct._object, %struct._object* %call702, i64 0, i32 0, !dbg !1726
  %109 = load i64, i64* %ob_refcnt710, align 8, !dbg !1726, !tbaa !1243
  %dec711 = add i64 %109, -1, !dbg !1726
  store i64 %dec711, i64* %ob_refcnt710, align 8, !dbg !1726, !tbaa !1243
  %cmp712 = icmp eq i64 %dec711, 0, !dbg !1726
  br i1 %cmp712, label %if.else.714, label %if.end.720, !dbg !1728

if.else.714:                                      ; preds = %do.body.708
  %ob_type715 = getelementptr inbounds %struct._object, %struct._object* %call702, i64 0, i32 1, !dbg !1729
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type715, align 8, !dbg !1729, !tbaa !1281
  %tp_dealloc716 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i64 0, i32 4, !dbg !1729
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc716, align 8, !dbg !1729, !tbaa !1282
  tail call void %111(%struct._object* %call702) #2, !dbg !1729
  br label %if.end.720

if.end.720:                                       ; preds = %if.else.714, %do.body.708, %if.end.699
  %call723 = tail call %struct._object* @PyLong_FromLong(i64 27) #2, !dbg !1731
  tail call void @llvm.dbg.value(metadata %struct._object* %call723, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call724 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._object* %call723) #2, !dbg !1732
  tail call void @llvm.dbg.value(metadata %struct._object* %call723, i64 0, metadata !550, metadata !1211), !dbg !1733
  %cmp727 = icmp eq %struct._object* %call723, null, !dbg !1735
  br i1 %cmp727, label %if.end.741, label %do.body.729, !dbg !1736

do.body.729:                                      ; preds = %if.end.720
  tail call void @llvm.dbg.value(metadata %struct._object* %call723, i64 0, metadata !552, metadata !1211), !dbg !1737
  %ob_refcnt731 = getelementptr inbounds %struct._object, %struct._object* %call723, i64 0, i32 0, !dbg !1739
  %112 = load i64, i64* %ob_refcnt731, align 8, !dbg !1739, !tbaa !1243
  %dec732 = add i64 %112, -1, !dbg !1739
  store i64 %dec732, i64* %ob_refcnt731, align 8, !dbg !1739, !tbaa !1243
  %cmp733 = icmp eq i64 %dec732, 0, !dbg !1739
  br i1 %cmp733, label %if.else.735, label %if.end.741, !dbg !1741

if.else.735:                                      ; preds = %do.body.729
  %ob_type736 = getelementptr inbounds %struct._object, %struct._object* %call723, i64 0, i32 1, !dbg !1742
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type736, align 8, !dbg !1742, !tbaa !1281
  %tp_dealloc737 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i64 0, i32 4, !dbg !1742
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc737, align 8, !dbg !1742, !tbaa !1282
  tail call void %114(%struct._object* %call723) #2, !dbg !1742
  br label %if.end.741

if.end.741:                                       ; preds = %if.else.735, %do.body.729, %if.end.720
  %call744 = tail call %struct._object* @PyLong_FromLong(i64 24) #2, !dbg !1744
  tail call void @llvm.dbg.value(metadata %struct._object* %call744, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call745 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._object* %call744) #2, !dbg !1745
  tail call void @llvm.dbg.value(metadata %struct._object* %call744, i64 0, metadata !555, metadata !1211), !dbg !1746
  %cmp748 = icmp eq %struct._object* %call744, null, !dbg !1748
  br i1 %cmp748, label %if.end.762, label %do.body.750, !dbg !1749

do.body.750:                                      ; preds = %if.end.741
  tail call void @llvm.dbg.value(metadata %struct._object* %call744, i64 0, metadata !557, metadata !1211), !dbg !1750
  %ob_refcnt752 = getelementptr inbounds %struct._object, %struct._object* %call744, i64 0, i32 0, !dbg !1752
  %115 = load i64, i64* %ob_refcnt752, align 8, !dbg !1752, !tbaa !1243
  %dec753 = add i64 %115, -1, !dbg !1752
  store i64 %dec753, i64* %ob_refcnt752, align 8, !dbg !1752, !tbaa !1243
  %cmp754 = icmp eq i64 %dec753, 0, !dbg !1752
  br i1 %cmp754, label %if.else.756, label %if.end.762, !dbg !1754

if.else.756:                                      ; preds = %do.body.750
  %ob_type757 = getelementptr inbounds %struct._object, %struct._object* %call744, i64 0, i32 1, !dbg !1755
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type757, align 8, !dbg !1755, !tbaa !1281
  %tp_dealloc758 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i64 0, i32 4, !dbg !1755
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc758, align 8, !dbg !1755, !tbaa !1282
  tail call void %117(%struct._object* %call744) #2, !dbg !1755
  br label %if.end.762

if.end.762:                                       ; preds = %if.else.756, %do.body.750, %if.end.741
  %call765 = tail call %struct._object* @PyLong_FromLong(i64 25) #2, !dbg !1757
  tail call void @llvm.dbg.value(metadata %struct._object* %call765, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call766 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._object* %call765) #2, !dbg !1758
  tail call void @llvm.dbg.value(metadata %struct._object* %call765, i64 0, metadata !560, metadata !1211), !dbg !1759
  %cmp769 = icmp eq %struct._object* %call765, null, !dbg !1761
  br i1 %cmp769, label %if.end.783, label %do.body.771, !dbg !1762

do.body.771:                                      ; preds = %if.end.762
  tail call void @llvm.dbg.value(metadata %struct._object* %call765, i64 0, metadata !562, metadata !1211), !dbg !1763
  %ob_refcnt773 = getelementptr inbounds %struct._object, %struct._object* %call765, i64 0, i32 0, !dbg !1765
  %118 = load i64, i64* %ob_refcnt773, align 8, !dbg !1765, !tbaa !1243
  %dec774 = add i64 %118, -1, !dbg !1765
  store i64 %dec774, i64* %ob_refcnt773, align 8, !dbg !1765, !tbaa !1243
  %cmp775 = icmp eq i64 %dec774, 0, !dbg !1765
  br i1 %cmp775, label %if.else.777, label %if.end.783, !dbg !1767

if.else.777:                                      ; preds = %do.body.771
  %ob_type778 = getelementptr inbounds %struct._object, %struct._object* %call765, i64 0, i32 1, !dbg !1768
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type778, align 8, !dbg !1768, !tbaa !1281
  %tp_dealloc779 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i64 0, i32 4, !dbg !1768
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc779, align 8, !dbg !1768, !tbaa !1282
  tail call void %120(%struct._object* %call765) #2, !dbg !1768
  br label %if.end.783

if.end.783:                                       ; preds = %if.else.777, %do.body.771, %if.end.762
  %call786 = tail call i32 @__libc_current_sigrtmin() #2, !dbg !1770
  %conv = sext i32 %call786 to i64, !dbg !1770
  %call787 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct._object* %call787, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call788 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), %struct._object* %call787) #2, !dbg !1772
  tail call void @llvm.dbg.value(metadata %struct._object* %call787, i64 0, metadata !565, metadata !1211), !dbg !1773
  %cmp791 = icmp eq %struct._object* %call787, null, !dbg !1775
  br i1 %cmp791, label %if.end.807, label %do.body.794, !dbg !1776

do.body.794:                                      ; preds = %if.end.783
  tail call void @llvm.dbg.value(metadata %struct._object* %call787, i64 0, metadata !567, metadata !1211), !dbg !1777
  %ob_refcnt796 = getelementptr inbounds %struct._object, %struct._object* %call787, i64 0, i32 0, !dbg !1779
  %121 = load i64, i64* %ob_refcnt796, align 8, !dbg !1779, !tbaa !1243
  %dec797 = add i64 %121, -1, !dbg !1779
  store i64 %dec797, i64* %ob_refcnt796, align 8, !dbg !1779, !tbaa !1243
  %cmp798 = icmp eq i64 %dec797, 0, !dbg !1779
  br i1 %cmp798, label %if.else.801, label %if.end.807, !dbg !1781

if.else.801:                                      ; preds = %do.body.794
  %ob_type802 = getelementptr inbounds %struct._object, %struct._object* %call787, i64 0, i32 1, !dbg !1782
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type802, align 8, !dbg !1782, !tbaa !1281
  %tp_dealloc803 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i64 0, i32 4, !dbg !1782
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc803, align 8, !dbg !1782, !tbaa !1282
  tail call void %123(%struct._object* %call787) #2, !dbg !1782
  br label %if.end.807

if.end.807:                                       ; preds = %if.else.801, %do.body.794, %if.end.783
  %call810 = tail call i32 @__libc_current_sigrtmax() #2, !dbg !1784
  %conv811 = sext i32 %call810 to i64, !dbg !1784
  %call812 = tail call %struct._object* @PyLong_FromLong(i64 %conv811) #2, !dbg !1785
  tail call void @llvm.dbg.value(metadata %struct._object* %call812, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call813 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), %struct._object* %call812) #2, !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct._object* %call812, i64 0, metadata !570, metadata !1211), !dbg !1787
  %cmp816 = icmp eq %struct._object* %call812, null, !dbg !1789
  br i1 %cmp816, label %if.end.832, label %do.body.819, !dbg !1790

do.body.819:                                      ; preds = %if.end.807
  tail call void @llvm.dbg.value(metadata %struct._object* %call812, i64 0, metadata !572, metadata !1211), !dbg !1791
  %ob_refcnt821 = getelementptr inbounds %struct._object, %struct._object* %call812, i64 0, i32 0, !dbg !1793
  %124 = load i64, i64* %ob_refcnt821, align 8, !dbg !1793, !tbaa !1243
  %dec822 = add i64 %124, -1, !dbg !1793
  store i64 %dec822, i64* %ob_refcnt821, align 8, !dbg !1793, !tbaa !1243
  %cmp823 = icmp eq i64 %dec822, 0, !dbg !1793
  br i1 %cmp823, label %if.else.826, label %if.end.832, !dbg !1795

if.else.826:                                      ; preds = %do.body.819
  %ob_type827 = getelementptr inbounds %struct._object, %struct._object* %call812, i64 0, i32 1, !dbg !1796
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type827, align 8, !dbg !1796, !tbaa !1281
  %tp_dealloc828 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i64 0, i32 4, !dbg !1796
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc828, align 8, !dbg !1796, !tbaa !1282
  tail call void %126(%struct._object* %call812) #2, !dbg !1796
  br label %if.end.832

if.end.832:                                       ; preds = %if.else.826, %do.body.819, %if.end.807
  %call835 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct._object* %call835, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call836 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), %struct._object* %call835) #2, !dbg !1799
  tail call void @llvm.dbg.value(metadata %struct._object* %call835, i64 0, metadata !575, metadata !1211), !dbg !1800
  %ob_refcnt839 = getelementptr inbounds %struct._object, %struct._object* %call835, i64 0, i32 0, !dbg !1802
  %127 = load i64, i64* %ob_refcnt839, align 8, !dbg !1802, !tbaa !1243
  %dec840 = add i64 %127, -1, !dbg !1802
  store i64 %dec840, i64* %ob_refcnt839, align 8, !dbg !1802, !tbaa !1243
  %cmp841 = icmp eq i64 %dec840, 0, !dbg !1802
  br i1 %cmp841, label %if.else.844, label %if.end.847, !dbg !1804

if.else.844:                                      ; preds = %if.end.832
  %ob_type845 = getelementptr inbounds %struct._object, %struct._object* %call835, i64 0, i32 1, !dbg !1805
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type845, align 8, !dbg !1805, !tbaa !1281
  %tp_dealloc846 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i64 0, i32 4, !dbg !1805
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc846, align 8, !dbg !1805, !tbaa !1282
  tail call void %129(%struct._object* %call835) #2, !dbg !1805
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.832, %if.else.844
  %call850 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1807
  tail call void @llvm.dbg.value(metadata %struct._object* %call850, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call851 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), %struct._object* %call850) #2, !dbg !1808
  tail call void @llvm.dbg.value(metadata %struct._object* %call850, i64 0, metadata !577, metadata !1211), !dbg !1809
  %ob_refcnt854 = getelementptr inbounds %struct._object, %struct._object* %call850, i64 0, i32 0, !dbg !1811
  %130 = load i64, i64* %ob_refcnt854, align 8, !dbg !1811, !tbaa !1243
  %dec855 = add i64 %130, -1, !dbg !1811
  store i64 %dec855, i64* %ob_refcnt854, align 8, !dbg !1811, !tbaa !1243
  %cmp856 = icmp eq i64 %dec855, 0, !dbg !1811
  br i1 %cmp856, label %if.else.859, label %if.end.862, !dbg !1813

if.else.859:                                      ; preds = %if.end.847
  %ob_type860 = getelementptr inbounds %struct._object, %struct._object* %call850, i64 0, i32 1, !dbg !1814
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type860, align 8, !dbg !1814, !tbaa !1281
  %tp_dealloc861 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i64 0, i32 4, !dbg !1814
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc861, align 8, !dbg !1814, !tbaa !1282
  tail call void %132(%struct._object* %call850) #2, !dbg !1814
  br label %if.end.862

if.end.862:                                       ; preds = %if.end.847, %if.else.859
  %call865 = tail call %struct._object* @PyLong_FromLong(i64 2) #2, !dbg !1816
  tail call void @llvm.dbg.value(metadata %struct._object* %call865, i64 0, metadata !388, metadata !1211), !dbg !1252
  %call866 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), %struct._object* %call865) #2, !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct._object* %call865, i64 0, metadata !579, metadata !1211), !dbg !1818
  %ob_refcnt869 = getelementptr inbounds %struct._object, %struct._object* %call865, i64 0, i32 0, !dbg !1820
  %133 = load i64, i64* %ob_refcnt869, align 8, !dbg !1820, !tbaa !1243
  %dec870 = add i64 %133, -1, !dbg !1820
  store i64 %dec870, i64* %ob_refcnt869, align 8, !dbg !1820, !tbaa !1243
  %cmp871 = icmp eq i64 %dec870, 0, !dbg !1820
  br i1 %cmp871, label %if.else.874, label %if.end.877, !dbg !1822

if.else.874:                                      ; preds = %if.end.862
  %ob_type875 = getelementptr inbounds %struct._object, %struct._object* %call865, i64 0, i32 1, !dbg !1823
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type875, align 8, !dbg !1823, !tbaa !1281
  %tp_dealloc876 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i64 0, i32 4, !dbg !1823
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc876, align 8, !dbg !1823, !tbaa !1282
  tail call void %135(%struct._object* %call865) #2, !dbg !1823
  br label %if.end.877

if.end.877:                                       ; preds = %if.end.862, %if.else.874
  %136 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1825, !tbaa !1251
  %call880 = tail call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), %struct._object* %136, %struct._object* null) #2, !dbg !1826
  store %struct._object* %call880, %struct._object** @ItimerError, align 8, !dbg !1827, !tbaa !1251
  %cmp881 = icmp eq %struct._object* %call880, null, !dbg !1828
  br i1 %cmp881, label %if.end.885, label %if.then.883, !dbg !1830

if.then.883:                                      ; preds = %if.end.877
  %call884 = tail call i32 @PyDict_SetItemString(%struct._object* %call10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), %struct._object* %call880) #2, !dbg !1831
  br label %if.end.885, !dbg !1831

if.end.885:                                       ; preds = %if.end.877, %if.then.883
  %call886 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1832
  %tobool887 = icmp eq %struct._object* %call886, null, !dbg !1832
  br i1 %tobool887, label %cleanup, label %do.body.889, !dbg !1833

do.body.889:                                      ; preds = %if.end.885
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !581, metadata !1211), !dbg !1834
  %ob_refcnt891 = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !1836
  %137 = load i64, i64* %ob_refcnt891, align 8, !dbg !1836, !tbaa !1243
  %dec892 = add i64 %137, -1, !dbg !1836
  store i64 %dec892, i64* %ob_refcnt891, align 8, !dbg !1836, !tbaa !1243
  %cmp893 = icmp eq i64 %dec892, 0, !dbg !1836
  br i1 %cmp893, label %if.else.896, label %cleanup, !dbg !1838

if.else.896:                                      ; preds = %do.body.889
  %ob_type897 = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !1839
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type897, align 8, !dbg !1839, !tbaa !1281
  %tp_dealloc898 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i64 0, i32 4, !dbg !1839
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc898, align 8, !dbg !1839, !tbaa !1282
  tail call void %139(%struct._object* %call2) #2, !dbg !1839
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %lor.lhs.false.19, %lor.lhs.false.26, %if.end.8, %if.end.16, %if.end.23, %if.end.33, %if.end.37, %if.end.41, %if.end.45, %if.end.885, %do.body.889, %if.else.896, %if.then.3, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.then.3 ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false.19 ], [ %call2, %lor.lhs.false.26 ], [ %call2, %if.end.33 ], [ %call2, %if.end.37 ], [ %call2, %if.end.41 ], [ %call2, %if.end.885 ], [ %call2, %if.end.45 ], [ %call2, %if.end.23 ], [ %call2, %if.end.16 ], [ %call2, %if.end.8 ], [ null, %do.body.889 ], [ null, %if.else.896 ]
  ret %struct._object* %retval.0, !dbg !1841
}

declare i64 @PyThread_get_thread_ident() #3

; Function Attrs: nounwind
declare i32 @getpid() #4

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare %struct._object* @PyLong_FromVoidPtr(i8*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare void (i32)* @PyOS_getsig(i32) #3

declare void (i32)* @PyOS_setsig(i32, void (i32)*) #3

; Function Attrs: nounwind uwtable
define internal void @signal_handler(i32 %sig_num) #0 {
entry:
  %byte.i = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %sig_num, i64 0, metadata !1018, metadata !1211), !dbg !1842
  %call = tail call i32* @__errno_location() #1, !dbg !1843
  %0 = load i32, i32* %call, align 4, !dbg !1843, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1019, metadata !1211), !dbg !1844
  %call1 = tail call i32 @getpid() #2, !dbg !1845
  %1 = load i32, i32* @main_pid, align 4, !dbg !1847, !tbaa !1214
  %cmp = icmp eq i32 %call1, %1, !dbg !1848
  br i1 %cmp, label %if.then, label %if.end, !dbg !1849

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 %sig_num, i64 0, metadata !1022, metadata !1211) #2, !dbg !1850
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1853
  call void @llvm.lifetime.start(i64 1, i8* nonnull %byte.i) #2, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1024, metadata !1211) #2, !dbg !1855
  %idxprom.i = sext i32 %sig_num to i64, !dbg !1856
  %tripped.i = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %idxprom.i, i32 0, !dbg !1857
  store volatile i32 1, i32* %tripped.i, align 16, !dbg !1858, !tbaa !1301
  %2 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !1859, !tbaa !1214
  %cmp.i = icmp eq i32 %2, -1, !dbg !1861
  br i1 %cmp.i, label %if.end.13.i, label %if.then.i, !dbg !1862

if.then.i:                                        ; preds = %if.then
  %conv.i = trunc i32 %sig_num to i8, !dbg !1863
  tail call void @llvm.dbg.value(metadata i8 %conv.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1853
  store i8 %conv.i, i8* %byte.i, align 1, !dbg !1865, !tbaa !1866
  br label %while.cond.i, !dbg !1867

while.cond.i:                                     ; preds = %land.rhs.i, %if.then.i
  %3 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !1868, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1853
  %call.i = call i64 @write(i32 %3, i8* nonnull %byte.i, i64 1) #2, !dbg !1871
  %conv1.i = trunc i64 %call.i to i32, !dbg !1871
  tail call void @llvm.dbg.value(metadata i32 %conv1.i, i64 0, metadata !1024, metadata !1211) #2, !dbg !1855
  %cmp2.i = icmp eq i32 %conv1.i, -1, !dbg !1872
  br i1 %cmp2.i, label %land.rhs.i, label %if.end.13.i.loopexit, !dbg !1873

land.rhs.i:                                       ; preds = %while.cond.i
  %4 = load i32, i32* %call, align 4, !dbg !1874, !tbaa !1214
  %cmp5.i = icmp eq i32 %4, 4, !dbg !1876
  br i1 %cmp5.i, label %while.cond.i, label %if.then.9.i, !dbg !1877

if.then.9.i:                                      ; preds = %land.rhs.i
  %.lcssa = phi i32 [ %4, %land.rhs.i ]
  %conv11.i = sext i32 %.lcssa to i64, !dbg !1879
  %5 = inttoptr i64 %conv11.i to i8*, !dbg !1881
  %call12.i = tail call i32 @Py_AddPendingCall(i32 (i8*)* nonnull @report_wakeup_error, i8* %5) #2, !dbg !1882
  br label %if.end.13.i, !dbg !1882

if.end.13.i.loopexit:                             ; preds = %while.cond.i
  br label %if.end.13.i, !dbg !1883

if.end.13.i:                                      ; preds = %if.end.13.i.loopexit, %if.then.9.i, %if.then
  %6 = load volatile i32, i32* @is_tripped, align 4, !dbg !1883, !tbaa !1214
  %tobool.i = icmp eq i32 %6, 0, !dbg !1883
  br i1 %tobool.i, label %if.end.15.i, label %trip_signal.exit, !dbg !1885

if.end.15.i:                                      ; preds = %if.end.13.i
  store volatile i32 1, i32* @is_tripped, align 4, !dbg !1886, !tbaa !1214
  %call16.i = tail call i32 @Py_AddPendingCall(i32 (i8*)* nonnull @checksignals_witharg, i8* null) #2, !dbg !1887
  br label %trip_signal.exit, !dbg !1888

trip_signal.exit:                                 ; preds = %if.end.13.i, %if.end.15.i
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1853
  call void @llvm.lifetime.end(i64 1, i8* nonnull %byte.i) #2, !dbg !1889
  br label %if.end, !dbg !1891

if.end:                                           ; preds = %trip_signal.exit, %entry
  store i32 %0, i32* %call, align 4, !dbg !1892, !tbaa !1214
  ret void, !dbg !1893
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #4

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define i32 @PyErr_CheckSignals() #0 {
entry:
  %0 = load volatile i32, i32* @is_tripped, align 4, !dbg !1894, !tbaa !1214
  %tobool = icmp eq i32 %0, 0, !dbg !1894
  br i1 %tobool, label %cleanup.40, label %if.end, !dbg !1896

if.end:                                           ; preds = %entry
  %call = tail call i64 @PyThread_get_thread_ident() #2, !dbg !1897
  %1 = load i64, i64* @main_thread, align 8, !dbg !1899, !tbaa !1226
  %cmp = icmp eq i64 %call, %1, !dbg !1900
  br i1 %cmp, label %if.end.2, label %cleanup.40, !dbg !1901

if.end.2:                                         ; preds = %if.end
  store volatile i32 0, i32* @is_tripped, align 4, !dbg !1902, !tbaa !1214
  %call3 = tail call %struct._frame* @PyEval_GetFrame() #2, !dbg !1903
  %2 = bitcast %struct._frame* %call3 to %struct._object*, !dbg !1905
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !590, metadata !1211), !dbg !1906
  %tobool4 = icmp ne %struct._frame* %call3, null, !dbg !1907
  %._Py_NoneStruct = select i1 %tobool4, %struct._object* %2, %struct._object* @_Py_NoneStruct, !dbg !1908
  tail call void @llvm.dbg.value(metadata %struct._object* %._Py_NoneStruct, i64 0, metadata !590, metadata !1211), !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !589, metadata !1211), !dbg !1909
  br label %for.body, !dbg !1910

for.body:                                         ; preds = %if.end.2, %for.inc
  %indvars.iv = phi i64 [ 1, %if.end.2 ], [ %indvars.iv.next, %for.inc ]
  %tripped = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 0, !dbg !1911
  %3 = load volatile i32, i32* %tripped, align 16, !dbg !1911, !tbaa !1301
  %tobool8 = icmp eq i32 %3, 0, !dbg !1912
  br i1 %tobool8, label %for.inc, label %if.then.9, !dbg !1913

if.then.9:                                        ; preds = %for.body
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !591, metadata !1211), !dbg !1914
  %4 = trunc i64 %indvars.iv to i32, !dbg !1915
  %call10 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %4, %struct._object* %._Py_NoneStruct) #2, !dbg !1915
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !597, metadata !1211), !dbg !1916
  store volatile i32 0, i32* %tripped, align 16, !dbg !1917, !tbaa !1301
  %tobool14 = icmp eq %struct._object* %call10, null, !dbg !1918
  br i1 %tobool14, label %cleanup.40.loopexit, label %if.then.15, !dbg !1919

if.then.15:                                       ; preds = %if.then.9
  %func = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv, i32 1, !dbg !1920
  %5 = load volatile %struct._object*, %struct._object** %func, align 8, !dbg !1920, !tbaa !1314
  %call18 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %5, %struct._object* %call10, %struct._object* null) #2, !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !591, metadata !1211), !dbg !1914
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !598, metadata !1211), !dbg !1921
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !1923
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1243
  %dec = add i64 %6, -1, !dbg !1923
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1243
  %cmp19 = icmp eq i64 %dec, 0, !dbg !1923
  br i1 %cmp19, label %if.else, label %if.end.22, !dbg !1925

if.else:                                          ; preds = %if.then.15
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !1926
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1926, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1926
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1926, !tbaa !1282
  tail call void %8(%struct._object* %call10) #2, !dbg !1926
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.15
  %tobool23 = icmp eq %struct._object* %call18, null, !dbg !1928
  br i1 %tobool23, label %cleanup.40.loopexit, label %do.body.26, !dbg !1930

do.body.26:                                       ; preds = %if.end.22
  tail call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !602, metadata !1211), !dbg !1931
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %call18, i64 0, i32 0, !dbg !1933
  %9 = load i64, i64* %ob_refcnt28, align 8, !dbg !1933, !tbaa !1243
  %dec29 = add i64 %9, -1, !dbg !1933
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !1933, !tbaa !1243
  %cmp30 = icmp eq i64 %dec29, 0, !dbg !1933
  br i1 %cmp30, label %if.else.32, label %for.inc, !dbg !1935

if.else.32:                                       ; preds = %do.body.26
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %call18, i64 0, i32 1, !dbg !1936
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !1936, !tbaa !1281
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1936
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !1936, !tbaa !1282
  tail call void %11(%struct._object* %call18) #2, !dbg !1936
  br label %for.inc

for.inc:                                          ; preds = %do.body.26, %if.else.32, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1910
  %cmp7 = icmp slt i64 %indvars.iv.next, 65, !dbg !1938
  br i1 %cmp7, label %for.body, label %cleanup.40.loopexit, !dbg !1910

cleanup.40.loopexit:                              ; preds = %for.inc, %if.end.22, %if.then.9
  %retval.3.ph = phi i32 [ 0, %for.inc ], [ -1, %if.end.22 ], [ -1, %if.then.9 ]
  br label %cleanup.40, !dbg !1939

cleanup.40:                                       ; preds = %cleanup.40.loopexit, %if.end, %entry
  %retval.3 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %retval.3.ph, %cleanup.40.loopexit ]
  ret i32 %retval.3, !dbg !1939
}

declare %struct._frame* @PyEval_GetFrame() #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyErr_SetInterrupt() #0 {
entry:
  %byte.i = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1022, metadata !1211) #2, !dbg !1940
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1942
  call void @llvm.lifetime.start(i64 1, i8* nonnull %byte.i) #2, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1024, metadata !1211) #2, !dbg !1944
  store volatile i32 1, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 0), align 16, !dbg !1945, !tbaa !1301
  %0 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !1946, !tbaa !1214
  %cmp.i = icmp eq i32 %0, -1, !dbg !1947
  br i1 %cmp.i, label %if.end.13.i, label %if.then.i, !dbg !1948

if.then.i:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8 2, i64 0, metadata !1023, metadata !1211) #2, !dbg !1942
  store i8 2, i8* %byte.i, align 1, !dbg !1949, !tbaa !1866
  br label %while.cond.i, !dbg !1950

while.cond.i:                                     ; preds = %land.rhs.i, %if.then.i
  %1 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !1951, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1942
  %call.i = call i64 @write(i32 %1, i8* nonnull %byte.i, i64 1) #2, !dbg !1952
  %conv1.i = trunc i64 %call.i to i32, !dbg !1952
  tail call void @llvm.dbg.value(metadata i32 %conv1.i, i64 0, metadata !1024, metadata !1211) #2, !dbg !1944
  %cmp2.i = icmp eq i32 %conv1.i, -1, !dbg !1953
  br i1 %cmp2.i, label %land.rhs.i, label %if.end.13.i.loopexit, !dbg !1954

land.rhs.i:                                       ; preds = %while.cond.i
  %call4.i = tail call i32* @__errno_location() #1, !dbg !1955
  %2 = load i32, i32* %call4.i, align 4, !dbg !1955, !tbaa !1214
  %cmp5.i = icmp eq i32 %2, 4, !dbg !1956
  br i1 %cmp5.i, label %while.cond.i, label %if.then.9.i, !dbg !1957

if.then.9.i:                                      ; preds = %land.rhs.i
  %.lcssa = phi i32 [ %2, %land.rhs.i ]
  %conv11.i = sext i32 %.lcssa to i64, !dbg !1958
  %3 = inttoptr i64 %conv11.i to i8*, !dbg !1959
  %call12.i = tail call i32 @Py_AddPendingCall(i32 (i8*)* nonnull @report_wakeup_error, i8* %3) #2, !dbg !1960
  br label %if.end.13.i, !dbg !1960

if.end.13.i.loopexit:                             ; preds = %while.cond.i
  br label %if.end.13.i, !dbg !1961

if.end.13.i:                                      ; preds = %if.end.13.i.loopexit, %if.then.9.i, %entry
  %4 = load volatile i32, i32* @is_tripped, align 4, !dbg !1961, !tbaa !1214
  %tobool.i = icmp eq i32 %4, 0, !dbg !1961
  br i1 %tobool.i, label %if.end.15.i, label %trip_signal.exit, !dbg !1962

if.end.15.i:                                      ; preds = %if.end.13.i
  store volatile i32 1, i32* @is_tripped, align 4, !dbg !1963, !tbaa !1214
  %call16.i = tail call i32 @Py_AddPendingCall(i32 (i8*)* nonnull @checksignals_witharg, i8* null) #2, !dbg !1964
  br label %trip_signal.exit, !dbg !1965

trip_signal.exit:                                 ; preds = %if.end.13.i, %if.end.15.i
  tail call void @llvm.dbg.value(metadata i8* %byte.i, i64 0, metadata !1023, metadata !1211) #2, !dbg !1942
  call void @llvm.lifetime.end(i64 1, i8* nonnull %byte.i) #2, !dbg !1966
  ret void, !dbg !1967
}

; Function Attrs: nounwind uwtable
define void @PyOS_InitInterrupts() #0 {
entry:
  %call = tail call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #2, !dbg !1968
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !610, metadata !1211), !dbg !1969
  %tobool = icmp eq %struct._object* %call, null, !dbg !1970
  br i1 %tobool, label %if.end.2, label %do.body, !dbg !1971

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !611, metadata !1211), !dbg !1972
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1974
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !1243
  %dec = add i64 %0, -1, !dbg !1974
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !1243
  %cmp = icmp eq i64 %dec, 0, !dbg !1974
  br i1 %cmp, label %if.else, label %if.end.2, !dbg !1976

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1977
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1977, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1977
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1977, !tbaa !1282
  tail call void %2(%struct._object* %call) #2, !dbg !1977
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %do.body, %entry
  ret void, !dbg !1979
}

declare %struct._object* @PyImport_ImportModule(i8*) #3

; Function Attrs: nounwind uwtable
define void @PyOS_FiniInterrupts() #0 {
entry:
  %0 = load void (i32)*, void (i32)** @old_siginthandler, align 8, !dbg !1980, !tbaa !1251
  %call.i = tail call void (i32)* @PyOS_setsig(i32 2, void (i32)* %0) #2, !dbg !1982
  store void (i32)* null, void (i32)** @old_siginthandler, align 8, !dbg !1983, !tbaa !1251
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1036, metadata !1211) #2, !dbg !1984
  br label %for.body.i, !dbg !1985

for.body.i:                                       ; preds = %if.end.22.i, %entry
  %indvars.iv.i = phi i64 [ 1, %entry ], [ %indvars.iv.next.i, %if.end.22.i ], !dbg !1986
  %func1.i = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.i, i32 1, !dbg !1987
  %1 = load volatile %struct._object*, %struct._object** %func1.i, align 8, !dbg !1987, !tbaa !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1037, metadata !1211) #2, !dbg !1988
  %tripped.i = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.i, i32 0, !dbg !1989
  store volatile i32 0, i32* %tripped.i, align 16, !dbg !1990, !tbaa !1301
  store volatile %struct._object* null, %struct._object** %func1.i, align 8, !dbg !1991, !tbaa !1314
  %2 = trunc i64 %indvars.iv.i to i32, !dbg !1992
  %cmp7.i = icmp ne i32 %2, 2, !dbg !1992
  %cmp8.i = icmp ne %struct._object* %1, null, !dbg !1994
  %or.cond.i = and i1 %cmp7.i, %cmp8.i, !dbg !1995
  %cmp10.i = icmp ne %struct._object* %1, @_Py_NoneStruct, !dbg !1996
  %or.cond81.i = and i1 %cmp10.i, %or.cond.i, !dbg !1995
  %or.cond81.not.i = xor i1 %or.cond81.i, true, !dbg !1995
  %3 = load %struct._object*, %struct._object** @DefaultHandler, align 8, !dbg !1986
  %cmp12.i = icmp eq %struct._object* %1, %3, !dbg !1997
  %or.cond114.i = or i1 %cmp12.i, %or.cond81.not.i, !dbg !1995
  %4 = load %struct._object*, %struct._object** @IgnoreHandler, align 8, !dbg !1986
  %cmp14.i = icmp eq %struct._object* %1, %4, !dbg !1998
  %or.cond115.i = or i1 %cmp14.i, %or.cond114.i, !dbg !1995
  br i1 %or.cond115.i, label %do.body.i, label %if.then.i, !dbg !1995

if.then.i:                                        ; preds = %for.body.i
  %call15.i = tail call void (i32)* @PyOS_setsig(i32 %2, void (i32)* null) #2, !dbg !1999
  br label %do.body.i, !dbg !1999

do.body.i:                                        ; preds = %if.then.i, %for.body.i
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1038, metadata !1211) #2, !dbg !2000
  br i1 %cmp8.i, label %do.body.18.i, label %if.end.22.i, !dbg !2002

do.body.18.i:                                     ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1043, metadata !1211) #2, !dbg !2003
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2005
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2005, !tbaa !1243
  %dec.i = add i64 %5, -1, !dbg !2005
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2005, !tbaa !1243
  %cmp19.i = icmp eq i64 %dec.i, 0, !dbg !2005
  br i1 %cmp19.i, label %if.else.i, label %if.end.22.i, !dbg !2007

if.else.i:                                        ; preds = %do.body.18.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !2008
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2008, !tbaa !1281
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2008
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2008, !tbaa !1282
  tail call void %7(%struct._object* %1) #2, !dbg !2008
  br label %if.end.22.i, !dbg !1986

if.end.22.i:                                      ; preds = %if.else.i, %do.body.18.i, %do.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1985
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 65, !dbg !1985
  br i1 %exitcond.i, label %do.body.25.i, label %for.body.i, !dbg !1985

do.body.25.i:                                     ; preds = %if.end.22.i
  %8 = load %struct._object*, %struct._object** @IntHandler, align 8, !dbg !2010, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !1046, metadata !1211) #2, !dbg !2010
  %cmp26.i = icmp eq %struct._object* %8, null, !dbg !2012
  br i1 %cmp26.i, label %if.end.40.i, label %if.then.27.i, !dbg !2013

if.then.27.i:                                     ; preds = %do.body.25.i
  store %struct._object* null, %struct._object** @IntHandler, align 8, !dbg !2014, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !1048, metadata !1211) #2, !dbg !2016
  %ob_refcnt30.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !2018
  %9 = load i64, i64* %ob_refcnt30.i, align 8, !dbg !2018, !tbaa !1243
  %dec31.i = add i64 %9, -1, !dbg !2018
  store i64 %dec31.i, i64* %ob_refcnt30.i, align 8, !dbg !2018, !tbaa !1243
  %cmp32.i = icmp eq i64 %dec31.i, 0, !dbg !2018
  br i1 %cmp32.i, label %if.else.34.i, label %if.end.40.i, !dbg !2020

if.else.34.i:                                     ; preds = %if.then.27.i
  %ob_type35.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !2021
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type35.i, align 8, !dbg !2021, !tbaa !1281
  %tp_dealloc36.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2021
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36.i, align 8, !dbg !2021, !tbaa !1282
  tail call void %11(%struct._object* %8) #2, !dbg !2021
  br label %if.end.40.i, !dbg !1986

if.end.40.i:                                      ; preds = %if.else.34.i, %if.then.27.i, %do.body.25.i
  %12 = load %struct._object*, %struct._object** @DefaultHandler, align 8, !dbg !2023, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !1052, metadata !1211) #2, !dbg !2023
  %cmp45.i = icmp eq %struct._object* %12, null, !dbg !2025
  br i1 %cmp45.i, label %if.end.59.i, label %if.then.46.i, !dbg !2026

if.then.46.i:                                     ; preds = %if.end.40.i
  store %struct._object* null, %struct._object** @DefaultHandler, align 8, !dbg !2027, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !1054, metadata !1211) #2, !dbg !2029
  %ob_refcnt49.i = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !2031
  %13 = load i64, i64* %ob_refcnt49.i, align 8, !dbg !2031, !tbaa !1243
  %dec50.i = add i64 %13, -1, !dbg !2031
  store i64 %dec50.i, i64* %ob_refcnt49.i, align 8, !dbg !2031, !tbaa !1243
  %cmp51.i = icmp eq i64 %dec50.i, 0, !dbg !2031
  br i1 %cmp51.i, label %if.else.53.i, label %if.end.59.i, !dbg !2033

if.else.53.i:                                     ; preds = %if.then.46.i
  %ob_type54.i = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !2034
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type54.i, align 8, !dbg !2034, !tbaa !1281
  %tp_dealloc55.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2034
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55.i, align 8, !dbg !2034, !tbaa !1282
  tail call void %15(%struct._object* %12) #2, !dbg !2034
  br label %if.end.59.i, !dbg !1986

if.end.59.i:                                      ; preds = %if.else.53.i, %if.then.46.i, %if.end.40.i
  %16 = load %struct._object*, %struct._object** @IgnoreHandler, align 8, !dbg !2036, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !1058, metadata !1211) #2, !dbg !2036
  %cmp64.i = icmp eq %struct._object* %16, null, !dbg !2038
  br i1 %cmp64.i, label %finisignal.exit, label %if.then.65.i, !dbg !2039

if.then.65.i:                                     ; preds = %if.end.59.i
  store %struct._object* null, %struct._object** @IgnoreHandler, align 8, !dbg !2040, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !1060, metadata !1211) #2, !dbg !2042
  %ob_refcnt68.i = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !2044
  %17 = load i64, i64* %ob_refcnt68.i, align 8, !dbg !2044, !tbaa !1243
  %dec69.i = add i64 %17, -1, !dbg !2044
  store i64 %dec69.i, i64* %ob_refcnt68.i, align 8, !dbg !2044, !tbaa !1243
  %cmp70.i = icmp eq i64 %dec69.i, 0, !dbg !2044
  br i1 %cmp70.i, label %if.else.72.i, label %finisignal.exit, !dbg !2046

if.else.72.i:                                     ; preds = %if.then.65.i
  %ob_type73.i = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !2047
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type73.i, align 8, !dbg !2047, !tbaa !1281
  %tp_dealloc74.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !2047
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74.i, align 8, !dbg !2047, !tbaa !1282
  tail call void %19(%struct._object* %16) #2, !dbg !2047
  br label %finisignal.exit, !dbg !1986

finisignal.exit:                                  ; preds = %if.end.59.i, %if.then.65.i, %if.else.72.i
  ret void, !dbg !2049
}

; Function Attrs: nounwind uwtable
define i32 @PyOS_InterruptOccurred() #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 0), align 16, !dbg !2050, !tbaa !1301
  %tobool = icmp eq i32 %0, 0, !dbg !2052
  br i1 %tobool, label %return, label %if.then, !dbg !2053

if.then:                                          ; preds = %entry
  %call = tail call i64 @PyThread_get_thread_ident() #2, !dbg !2054
  %1 = load i64, i64* @main_thread, align 8, !dbg !2057, !tbaa !1226
  %cmp = icmp eq i64 %call, %1, !dbg !2058
  br i1 %cmp, label %if.end, label %return, !dbg !2059

if.end:                                           ; preds = %if.then
  store volatile i32 0, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 2, i32 0), align 16, !dbg !2060, !tbaa !1301
  br label %return, !dbg !2061

return:                                           ; preds = %entry, %if.then, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !2062
}

; Function Attrs: nounwind uwtable
define void @PyOS_AfterFork() #0 {
entry:
  %0 = load volatile i32, i32* @is_tripped, align 4, !dbg !2063, !tbaa !1214
  %tobool.i = icmp eq i32 %0, 0, !dbg !2063
  br i1 %tobool.i, label %_clear_pending_signals.exit, label %if.end.i, !dbg !2066

if.end.i:                                         ; preds = %entry
  store volatile i32 0, i32* @is_tripped, align 4, !dbg !2067, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1066, metadata !1211), !dbg !2068
  br label %for.body.i, !dbg !2069

for.body.i:                                       ; preds = %for.body.i, %if.end.i
  %indvars.iv.i = phi i64 [ 1, %if.end.i ], [ %indvars.iv.next.i.7, %for.body.i ], !dbg !2071
  %tripped.i = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.i, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2069
  %tripped.i.1 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.1, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2, !dbg !2069
  %tripped.i.2 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.1, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.2, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3, !dbg !2069
  %tripped.i.3 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.2, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.3, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4, !dbg !2069
  %tripped.i.4 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.3, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.4, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5, !dbg !2069
  %tripped.i.5 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.4, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.5, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6, !dbg !2069
  %tripped.i.6 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.5, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.6, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7, !dbg !2069
  %tripped.i.7 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %indvars.iv.next.i.6, i32 0, !dbg !2072
  store volatile i32 0, i32* %tripped.i.7, align 16, !dbg !2075, !tbaa !1301
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8, !dbg !2069
  %exitcond.i.7 = icmp eq i64 %indvars.iv.next.i.7, 65, !dbg !2069
  br i1 %exitcond.i.7, label %_clear_pending_signals.exit.loopexit, label %for.body.i, !dbg !2069

_clear_pending_signals.exit.loopexit:             ; preds = %for.body.i
  br label %_clear_pending_signals.exit, !dbg !2076

_clear_pending_signals.exit:                      ; preds = %_clear_pending_signals.exit.loopexit, %entry
  tail call void @PyThread_ReInitTLS() #2, !dbg !2076
  tail call void @_PyGILState_Reinit() #2, !dbg !2077
  tail call void @PyEval_ReInitThreads() #2, !dbg !2078
  %call = tail call i64 @PyThread_get_thread_ident() #2, !dbg !2079
  store i64 %call, i64* @main_thread, align 8, !dbg !2080, !tbaa !1226
  %call1 = tail call i32 @getpid() #2, !dbg !2081
  store i32 %call1, i32* @main_pid, align 4, !dbg !2082, !tbaa !1214
  tail call void @_PyImport_ReInitLock() #2, !dbg !2083
  ret void, !dbg !2084
}

declare void @PyThread_ReInitTLS() #3

declare void @_PyGILState_Reinit() #3

declare void @PyEval_ReInitThreads() #3

declare void @_PyImport_ReInitLock() #3

; Function Attrs: nounwind uwtable
define i32 @_PyOS_IsMainThread() #0 {
entry:
  %call = tail call i64 @PyThread_get_thread_ident() #2, !dbg !2085
  %0 = load i64, i64* @main_thread, align 8, !dbg !2086, !tbaa !1226
  %cmp = icmp eq i64 %call, %0, !dbg !2087
  %conv = zext i1 %cmp to i32, !dbg !2087
  ret i32 %conv, !dbg !2088
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_alarm(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %t = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !621, metadata !1211), !dbg !2089
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !622, metadata !1211), !dbg !2090
  %0 = bitcast i32* %t to i8*, !dbg !2091
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32* %t, i64 0, metadata !623, metadata !1211), !dbg !2092
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32* nonnull %t) #2, !dbg !2093
  %tobool = icmp eq i32 %call, 0, !dbg !2093
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2095

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %t, i64 0, metadata !623, metadata !1211), !dbg !2092
  %1 = load i32, i32* %t, align 4, !dbg !2096, !tbaa !1214
  %call1 = call i32 @alarm(i32 %1) #2, !dbg !2097
  %conv = zext i32 %call1 to i64, !dbg !2098
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !2099
  br label %cleanup, !dbg !2100

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !2101
  ret %struct._object* %retval.0, !dbg !2101
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_setitimer(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %first = alloca double, align 8
  %interval = alloca double, align 8
  %which = alloca i32, align 4
  %new = alloca %struct.itimerval, align 8
  %old = alloca %struct.itimerval, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !626, metadata !1211), !dbg !2102
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !627, metadata !1211), !dbg !2103
  %0 = bitcast double* %first to i8*, !dbg !2104
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2104
  %1 = bitcast double* %interval to i8*, !dbg !2105
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2105
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !629, metadata !1211), !dbg !2106
  store double 0.000000e+00, double* %interval, align 8, !dbg !2106, !tbaa !2107
  %2 = bitcast i32* %which to i8*, !dbg !2109
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2109
  %3 = bitcast %struct.itimerval* %new to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 32, i8* %3) #2, !dbg !2110
  %4 = bitcast %struct.itimerval* %old to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 32, i8* %4) #2, !dbg !2110
  tail call void @llvm.dbg.value(metadata double* %first, i64 0, metadata !628, metadata !1211), !dbg !2111
  tail call void @llvm.dbg.value(metadata double* %interval, i64 0, metadata !629, metadata !1211), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32* %which, i64 0, metadata !630, metadata !1211), !dbg !2112
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i32* nonnull %which, double* nonnull %first, double* nonnull %interval) #2, !dbg !2113
  %tobool = icmp eq i32 %call, 0, !dbg !2113
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2115

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata double* %first, i64 0, metadata !628, metadata !1211), !dbg !2111
  %5 = load double, double* %first, align 8, !dbg !2116, !tbaa !2107
  call void @llvm.dbg.value(metadata double %5, i64 0, metadata !649, metadata !1211) #2, !dbg !2117
  %call.i = call double @floor(double %5) #1, !dbg !2119
  %conv.i = fptosi double %call.i to i64, !dbg !2119
  %tv_sec.i = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i64 0, i32 1, i32 0, !dbg !2120
  store i64 %conv.i, i64* %tv_sec.i, align 8, !dbg !2121, !tbaa !2122
  %call1.i = call double @fmod(double %5, double 1.000000e+00) #2, !dbg !2124
  %mul.i = fmul double %call1.i, 1.000000e+06, !dbg !2125
  %conv2.i = fptosi double %mul.i to i64, !dbg !2124
  %tv_usec.i = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i64 0, i32 1, i32 1, !dbg !2126
  store i64 %conv2.i, i64* %tv_usec.i, align 8, !dbg !2127, !tbaa !2128
  call void @llvm.dbg.value(metadata double* %interval, i64 0, metadata !629, metadata !1211), !dbg !2106
  %6 = load double, double* %interval, align 8, !dbg !2129, !tbaa !2107
  call void @llvm.dbg.value(metadata double %6, i64 0, metadata !649, metadata !1211) #2, !dbg !2130
  %call.i.10 = call double @floor(double %6) #1, !dbg !2132
  %conv.i.11 = fptosi double %call.i.10 to i64, !dbg !2132
  %tv_sec.i.12 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i64 0, i32 0, i32 0, !dbg !2133
  store i64 %conv.i.11, i64* %tv_sec.i.12, align 8, !dbg !2134, !tbaa !2122
  %call1.i.13 = call double @fmod(double %6, double 1.000000e+00) #2, !dbg !2135
  %mul.i.14 = fmul double %call1.i.13, 1.000000e+06, !dbg !2136
  %conv2.i.15 = fptosi double %mul.i.14 to i64, !dbg !2135
  %tv_usec.i.16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i64 0, i32 0, i32 1, !dbg !2137
  store i64 %conv2.i.15, i64* %tv_usec.i.16, align 8, !dbg !2138, !tbaa !2128
  call void @llvm.dbg.value(metadata i32* %which, i64 0, metadata !630, metadata !1211), !dbg !2112
  %7 = load i32, i32* %which, align 4, !dbg !2139, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.itimerval* %new, i64 0, metadata !631, metadata !1211), !dbg !2141
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !643, metadata !1211), !dbg !2142
  %call1 = call i32 @setitimer(i32 %7, %struct.itimerval* nonnull %new, %struct.itimerval* nonnull %old) #2, !dbg !2143
  %cmp = icmp eq i32 %call1, 0, !dbg !2144
  br i1 %cmp, label %if.end.4, label %if.then.2, !dbg !2145

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @ItimerError, align 8, !dbg !2146, !tbaa !1251
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8) #2, !dbg !2148
  br label %cleanup, !dbg !2149

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !643, metadata !1211), !dbg !2142
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !656, metadata !1211) #2, !dbg !2150
  %call.i.17 = call %struct._object* @PyTuple_New(i64 2) #2, !dbg !2152
  call void @llvm.dbg.value(metadata %struct._object* %call.i.17, i64 0, metadata !657, metadata !1211) #2, !dbg !2153
  %cmp.i = icmp eq %struct._object* %call.i.17, null, !dbg !2154
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2156

if.end.i:                                         ; preds = %if.end.4
  %it_value.idx.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 1, i32 0, !dbg !2157
  %it_value.idx.val.i = load i64, i64* %it_value.idx.i, align 8, !dbg !2157, !tbaa !2122
  %it_value.idx44.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 1, i32 1, !dbg !2157
  %it_value.idx44.val.i = load i64, i64* %it_value.idx44.i, align 8, !dbg !2157, !tbaa !2128
  %conv.i.i = sitofp i64 %it_value.idx.val.i to double, !dbg !2158
  %conv1.i.i = sitofp i64 %it_value.idx44.val.i to double, !dbg !2160
  %div.i.i = fdiv double %conv1.i.i, 1.000000e+06, !dbg !2161
  %add.i.i = fadd double %conv.i.i, %div.i.i, !dbg !2162
  %call2.i = call %struct._object* @PyFloat_FromDouble(double %add.i.i) #2, !dbg !2163
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !658, metadata !1211) #2, !dbg !2164
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2165
  br i1 %tobool.i, label %do.body.i, label %if.end.7.i, !dbg !2166

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i.17, i64 0, metadata !659, metadata !1211) #2, !dbg !2167
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i.17, i64 0, i32 0, !dbg !2169
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2169, !tbaa !1243
  %dec.i = add i64 %9, -1, !dbg !2169
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2169, !tbaa !1243
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !2169
  br i1 %cmp4.i, label %if.else.i, label %cleanup, !dbg !2171

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i.17, i64 0, i32 1, !dbg !2172
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2172, !tbaa !1281
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2172
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2172, !tbaa !1282
  call void %11(%struct._object* %call.i.17) #2, !dbg !2172
  br label %cleanup, !dbg !2157

if.end.7.i:                                       ; preds = %if.end.i
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i.17, i64 1, i32 1, !dbg !2174
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !2174
  store %struct._object* %call2.i, %struct._object** %arrayidx.i, align 8, !dbg !2174, !tbaa !1251
  %it_interval.idx.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 0, i32 0, !dbg !2157
  %it_interval.idx.val.i = load i64, i64* %it_interval.idx.i, align 8, !dbg !2157, !tbaa !2122
  %it_interval.idx43.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 0, i32 1, !dbg !2157
  %it_interval.idx43.val.i = load i64, i64* %it_interval.idx43.i, align 8, !dbg !2157, !tbaa !2128
  %conv.i.45.i = sitofp i64 %it_interval.idx.val.i to double, !dbg !2175
  %conv1.i.46.i = sitofp i64 %it_interval.idx43.val.i to double, !dbg !2177
  %div.i.47.i = fdiv double %conv1.i.46.i, 1.000000e+06, !dbg !2178
  %add.i.48.i = fadd double %conv.i.45.i, %div.i.47.i, !dbg !2179
  %call9.i = call %struct._object* @PyFloat_FromDouble(double %add.i.48.i) #2, !dbg !2180
  call void @llvm.dbg.value(metadata %struct._object* %call9.i, i64 0, metadata !658, metadata !1211) #2, !dbg !2164
  %tobool10.i = icmp eq %struct._object* %call9.i, null, !dbg !2181
  br i1 %tobool10.i, label %do.body.12.i, label %if.end.24.i, !dbg !2182

do.body.12.i:                                     ; preds = %if.end.7.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i.17, i64 0, metadata !663, metadata !1211) #2, !dbg !2183
  %ob_refcnt14.i = getelementptr inbounds %struct._object, %struct._object* %call.i.17, i64 0, i32 0, !dbg !2185
  %12 = load i64, i64* %ob_refcnt14.i, align 8, !dbg !2185, !tbaa !1243
  %dec15.i = add i64 %12, -1, !dbg !2185
  store i64 %dec15.i, i64* %ob_refcnt14.i, align 8, !dbg !2185, !tbaa !1243
  %cmp16.i = icmp eq i64 %dec15.i, 0, !dbg !2185
  br i1 %cmp16.i, label %if.else.18.i, label %cleanup, !dbg !2187

if.else.18.i:                                     ; preds = %do.body.12.i
  %ob_type19.i = getelementptr inbounds %struct._object, %struct._object* %call.i.17, i64 0, i32 1, !dbg !2188
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type19.i, align 8, !dbg !2188, !tbaa !1281
  %tp_dealloc20.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2188
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20.i, align 8, !dbg !2188, !tbaa !1282
  call void %14(%struct._object* %call.i.17) #2, !dbg !2188
  br label %cleanup, !dbg !2157

if.end.24.i:                                      ; preds = %if.end.7.i
  %arrayidx26.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !2190
  %15 = bitcast %struct._typeobject** %arrayidx26.i to %struct._object**, !dbg !2190
  store %struct._object* %call9.i, %struct._object** %15, align 8, !dbg !2190, !tbaa !1251
  br label %cleanup, !dbg !2191

cleanup:                                          ; preds = %if.end.24.i, %if.else.18.i, %do.body.12.i, %if.else.i, %do.body.i, %if.end.4, %entry, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %entry ], [ %call.i.17, %if.end.24.i ], [ null, %if.end.4 ], [ null, %do.body.i ], [ null, %if.else.i ], [ null, %do.body.12.i ], [ null, %if.else.18.i ]
  call void @llvm.lifetime.end(i64 32, i8* %4) #2, !dbg !2192
  call void @llvm.lifetime.end(i64 32, i8* %3) #2, !dbg !2192
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !2192
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2192
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2192
  ret %struct._object* %retval.0, !dbg !2192
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_getitimer(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %which = alloca i32, align 4
  %old = alloca %struct.itimerval, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !674, metadata !1211), !dbg !2193
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !675, metadata !1211), !dbg !2194
  %0 = bitcast i32* %which to i8*, !dbg !2195
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2195
  %1 = bitcast %struct.itimerval* %old to i8*, !dbg !2196
  call void @llvm.lifetime.start(i64 32, i8* %1) #2, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32* %which, i64 0, metadata !676, metadata !1211), !dbg !2197
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32* nonnull %which) #2, !dbg !2198
  %tobool = icmp eq i32 %call, 0, !dbg !2198
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2200

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %which, i64 0, metadata !676, metadata !1211), !dbg !2197
  %2 = load i32, i32* %which, align 4, !dbg !2201, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !677, metadata !1211), !dbg !2203
  %call1 = call i32 @getitimer(i32 %2, %struct.itimerval* nonnull %old) #2, !dbg !2204
  %cmp = icmp eq i32 %call1, 0, !dbg !2205
  br i1 %cmp, label %if.end.4, label %if.then.2, !dbg !2206

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @ItimerError, align 8, !dbg !2207, !tbaa !1251
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3) #2, !dbg !2209
  br label %cleanup, !dbg !2210

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !677, metadata !1211), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.itimerval* %old, i64 0, metadata !656, metadata !1211) #2, !dbg !2211
  %call.i = call %struct._object* @PyTuple_New(i64 2) #2, !dbg !2213
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !657, metadata !1211) #2, !dbg !2214
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2215
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2216

if.end.i:                                         ; preds = %if.end.4
  %it_value.idx.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 1, i32 0, !dbg !2217
  %it_value.idx.val.i = load i64, i64* %it_value.idx.i, align 8, !dbg !2217, !tbaa !2122
  %it_value.idx44.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 1, i32 1, !dbg !2217
  %it_value.idx44.val.i = load i64, i64* %it_value.idx44.i, align 8, !dbg !2217, !tbaa !2128
  %conv.i.i = sitofp i64 %it_value.idx.val.i to double, !dbg !2218
  %conv1.i.i = sitofp i64 %it_value.idx44.val.i to double, !dbg !2220
  %div.i.i = fdiv double %conv1.i.i, 1.000000e+06, !dbg !2221
  %add.i.i = fadd double %conv.i.i, %div.i.i, !dbg !2222
  %call2.i = call %struct._object* @PyFloat_FromDouble(double %add.i.i) #2, !dbg !2223
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !658, metadata !1211) #2, !dbg !2224
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2225
  br i1 %tobool.i, label %do.body.i, label %if.end.7.i, !dbg !2226

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !659, metadata !1211) #2, !dbg !2227
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2228
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2228, !tbaa !1243
  %dec.i = add i64 %4, -1, !dbg !2228
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2228, !tbaa !1243
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !2228
  br i1 %cmp4.i, label %if.else.i, label %cleanup, !dbg !2229

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2230
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2230, !tbaa !1281
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2230
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2230, !tbaa !1282
  call void %6(%struct._object* %call.i) #2, !dbg !2230
  br label %cleanup, !dbg !2217

if.end.7.i:                                       ; preds = %if.end.i
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2231
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !2231
  store %struct._object* %call2.i, %struct._object** %arrayidx.i, align 8, !dbg !2231, !tbaa !1251
  %it_interval.idx.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 0, i32 0, !dbg !2217
  %it_interval.idx.val.i = load i64, i64* %it_interval.idx.i, align 8, !dbg !2217, !tbaa !2122
  %it_interval.idx43.i = getelementptr %struct.itimerval, %struct.itimerval* %old, i64 0, i32 0, i32 1, !dbg !2217
  %it_interval.idx43.val.i = load i64, i64* %it_interval.idx43.i, align 8, !dbg !2217, !tbaa !2128
  %conv.i.45.i = sitofp i64 %it_interval.idx.val.i to double, !dbg !2232
  %conv1.i.46.i = sitofp i64 %it_interval.idx43.val.i to double, !dbg !2234
  %div.i.47.i = fdiv double %conv1.i.46.i, 1.000000e+06, !dbg !2235
  %add.i.48.i = fadd double %conv.i.45.i, %div.i.47.i, !dbg !2236
  %call9.i = call %struct._object* @PyFloat_FromDouble(double %add.i.48.i) #2, !dbg !2237
  call void @llvm.dbg.value(metadata %struct._object* %call9.i, i64 0, metadata !658, metadata !1211) #2, !dbg !2224
  %tobool10.i = icmp eq %struct._object* %call9.i, null, !dbg !2238
  br i1 %tobool10.i, label %do.body.12.i, label %if.end.24.i, !dbg !2239

do.body.12.i:                                     ; preds = %if.end.7.i
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !663, metadata !1211) #2, !dbg !2240
  %ob_refcnt14.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2241
  %7 = load i64, i64* %ob_refcnt14.i, align 8, !dbg !2241, !tbaa !1243
  %dec15.i = add i64 %7, -1, !dbg !2241
  store i64 %dec15.i, i64* %ob_refcnt14.i, align 8, !dbg !2241, !tbaa !1243
  %cmp16.i = icmp eq i64 %dec15.i, 0, !dbg !2241
  br i1 %cmp16.i, label %if.else.18.i, label %cleanup, !dbg !2242

if.else.18.i:                                     ; preds = %do.body.12.i
  %ob_type19.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2243
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type19.i, align 8, !dbg !2243, !tbaa !1281
  %tp_dealloc20.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2243
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20.i, align 8, !dbg !2243, !tbaa !1282
  call void %9(%struct._object* %call.i) #2, !dbg !2243
  br label %cleanup, !dbg !2217

if.end.24.i:                                      ; preds = %if.end.7.i
  %arrayidx26.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !2244
  %10 = bitcast %struct._typeobject** %arrayidx26.i to %struct._object**, !dbg !2244
  store %struct._object* %call9.i, %struct._object** %10, align 8, !dbg !2244, !tbaa !1251
  br label %cleanup, !dbg !2245

cleanup:                                          ; preds = %if.end.24.i, %if.else.18.i, %do.body.12.i, %if.else.i, %do.body.i, %if.end.4, %entry, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %entry ], [ %call.i, %if.end.24.i ], [ null, %if.end.4 ], [ null, %do.body.i ], [ null, %if.else.i ], [ null, %do.body.12.i ], [ null, %if.else.18.i ]
  call void @llvm.lifetime.end(i64 32, i8* %1) #2, !dbg !2246
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !2246
  ret %struct._object* %retval.0, !dbg !2246
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_signal(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  %sig_num = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !680, metadata !1211), !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !681, metadata !1211), !dbg !2248
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2249
  %1 = bitcast i32* %sig_num to i8*, !dbg !2250
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2250
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !682, metadata !1211), !dbg !2251
  tail call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i32* nonnull %sig_num, %struct._object** nonnull %obj) #2, !dbg !2253
  %tobool = icmp eq i32 %call, 0, !dbg !2253
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2255

if.end:                                           ; preds = %entry
  %call1 = call i64 @PyThread_get_thread_ident() #2, !dbg !2256
  %2 = load i64, i64* @main_thread, align 8, !dbg !2258, !tbaa !1226
  %cmp = icmp eq i64 %call1, %2, !dbg !2259
  br i1 %cmp, label %if.end.3, label %if.then.2, !dbg !2260

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2261, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0)) #2, !dbg !2263
  br label %cleanup, !dbg !2264

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %4 = load i32, i32* %sig_num, align 4, !dbg !2265, !tbaa !1214
  %.off = add i32 %4, -1, !dbg !2267
  %5 = icmp ugt i32 %.off, 63, !dbg !2267
  br i1 %5, label %if.then.6, label %if.end.7, !dbg !2267

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2268, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0)) #2, !dbg !2270
  br label %cleanup, !dbg !2271

if.end.7:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !682, metadata !1211), !dbg !2251
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2272, !tbaa !1251
  %8 = load %struct._object*, %struct._object** @IgnoreHandler, align 8, !dbg !2274, !tbaa !1251
  %cmp8 = icmp eq %struct._object* %7, %8, !dbg !2275
  br i1 %cmp8, label %if.end.19, label %if.else, !dbg !2276

if.else:                                          ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** @DefaultHandler, align 8, !dbg !2277, !tbaa !1251
  %cmp10 = icmp eq %struct._object* %7, %9, !dbg !2279
  br i1 %cmp10, label %if.end.19, label %if.else.12, !dbg !2280

if.else.12:                                       ; preds = %if.else
  %call13 = call i32 @PyCallable_Check(%struct._object* %7) #2, !dbg !2281
  %tobool14 = icmp eq i32 %call13, 0, !dbg !2281
  br i1 %tobool14, label %if.then.15, label %if.else.12.if.end.19_crit_edge, !dbg !2283

if.else.12.if.end.19_crit_edge:                   ; preds = %if.else.12
  %.pre = load i32, i32* %sig_num, align 4, !dbg !2284, !tbaa !1214
  br label %if.end.19, !dbg !2283

if.then.15:                                       ; preds = %if.else.12
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2286, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.69, i64 0, i64 0)) #2, !dbg !2288
  br label %cleanup, !dbg !2289

if.end.19:                                        ; preds = %if.else.12.if.end.19_crit_edge, %if.else, %if.end.7
  %11 = phi i32 [ %4, %if.end.7 ], [ %4, %if.else ], [ %.pre, %if.else.12.if.end.19_crit_edge ], !dbg !2284
  %func.0 = phi void (i32)* [ inttoptr (i64 1 to void (i32)*), %if.end.7 ], [ null, %if.else ], [ @signal_handler, %if.else.12.if.end.19_crit_edge ]
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %call20 = call void (i32)* @PyOS_setsig(i32 %11, void (i32)* %func.0) #2, !dbg !2290
  %cmp21 = icmp eq void (i32)* %call20, inttoptr (i64 -1 to void (i32)*), !dbg !2291
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !2292

if.then.22:                                       ; preds = %if.end.19
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2293, !tbaa !1251
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12) #2, !dbg !2295
  br label %cleanup, !dbg !2296

if.end.24:                                        ; preds = %if.end.19
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %13 = load i32, i32* %sig_num, align 4, !dbg !2297, !tbaa !1214
  %idxprom = sext i32 %13 to i64, !dbg !2298
  %func25 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %idxprom, i32 1, !dbg !2299
  %14 = load volatile %struct._object*, %struct._object** %func25, align 8, !dbg !2299, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !684, metadata !1211), !dbg !2300
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %tripped = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %idxprom, i32 0, !dbg !2301
  store volatile i32 0, i32* %tripped, align 16, !dbg !2302, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !682, metadata !1211), !dbg !2251
  %15 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2303, !tbaa !1251
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2303
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2303, !tbaa !1243
  %inc = add i64 %16, 1, !dbg !2303
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2303, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !682, metadata !1211), !dbg !2251
  %17 = ptrtoint %struct._object* %15 to i64, !dbg !2304
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !683, metadata !1211), !dbg !2252
  %18 = load i32, i32* %sig_num, align 4, !dbg !2305, !tbaa !1214
  %idxprom28 = sext i32 %18 to i64, !dbg !2306
  %func30 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %idxprom28, i32 1, !dbg !2307
  %19 = bitcast %struct._object** %func30 to i64*, !dbg !2308
  store i64 %17, i64* %19, align 8, !dbg !2308, !tbaa !1314
  %cmp31 = icmp eq %struct._object* %14, null, !dbg !2309
  br i1 %cmp31, label %if.else.33, label %cleanup, !dbg !2311

if.else.33:                                       ; preds = %if.end.24
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2312, !tbaa !1243
  %inc34 = add i64 %20, 1, !dbg !2312
  store i64 %inc34, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2312, !tbaa !1243
  br label %cleanup, !dbg !2312

cleanup:                                          ; preds = %if.end.24, %entry, %if.else.33, %if.then.22, %if.then.15, %if.then.6, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.6 ], [ null, %if.then.22 ], [ @_Py_NoneStruct, %if.else.33 ], [ null, %if.then.15 ], [ null, %entry ], [ %14, %if.end.24 ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !2313
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2313
  ret %struct._object* %retval.0, !dbg !2313
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_getsignal(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %sig_num = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !688, metadata !1211), !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !689, metadata !1211), !dbg !2315
  %0 = bitcast i32* %sig_num to i8*, !dbg !2316
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2316
  tail call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !690, metadata !1211), !dbg !2317
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i32* nonnull %sig_num) #2, !dbg !2318
  %tobool = icmp eq i32 %call, 0, !dbg !2318
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2320

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !690, metadata !1211), !dbg !2317
  %1 = load i32, i32* %sig_num, align 4, !dbg !2321, !tbaa !1214
  %.off = add i32 %1, -1, !dbg !2323
  %2 = icmp ugt i32 %.off, 63, !dbg !2323
  br i1 %2, label %if.then.2, label %if.end.3, !dbg !2323

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2324, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0)) #2, !dbg !2326
  br label %cleanup, !dbg !2327

if.end.3:                                         ; preds = %if.end
  %idxprom = sext i32 %1 to i64, !dbg !2328
  %func = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i64 0, i64 %idxprom, i32 1, !dbg !2329
  %4 = load volatile %struct._object*, %struct._object** %func, align 8, !dbg !2329, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !691, metadata !1211), !dbg !2330
  %cmp4 = icmp eq %struct._object* %4, null, !dbg !2331
  br i1 %cmp4, label %if.else, label %if.then.5, !dbg !2333

if.then.5:                                        ; preds = %if.end.3
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !2334
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2334, !tbaa !1243
  %inc = add i64 %5, 1, !dbg !2334
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2334, !tbaa !1243
  br label %cleanup, !dbg !2336

if.else:                                          ; preds = %if.end.3
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2337, !tbaa !1243
  %inc6 = add i64 %6, 1, !dbg !2337
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2337, !tbaa !1243
  br label %cleanup, !dbg !2337

cleanup:                                          ; preds = %entry, %if.else, %if.then.5, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ %4, %if.then.5 ], [ @_Py_NoneStruct, %if.else ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !2339
  ret %struct._object* %retval.0, !dbg !2339
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_set_wakeup_fd(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %buf = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !694, metadata !1211), !dbg !2340
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !695, metadata !1211), !dbg !2341
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !2342
  call void @llvm.lifetime.start(i64 144, i8* %0) #2, !dbg !2342
  %1 = bitcast i32* %fd to i8*, !dbg !2343
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !732, metadata !1211), !dbg !2344
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0), i32* nonnull %fd) #2, !dbg !2345
  %tobool = icmp eq i32 %call, 0, !dbg !2345
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2347

if.end:                                           ; preds = %entry
  %call1 = call i64 @PyThread_get_thread_ident() #2, !dbg !2348
  %2 = load i64, i64* @main_thread, align 8, !dbg !2350, !tbaa !1226
  %cmp = icmp eq i64 %call1, %2, !dbg !2351
  br i1 %cmp, label %if.end.3, label %if.then.2, !dbg !2352

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2353, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i64 0, i64 0)) #2, !dbg !2355
  br label %cleanup, !dbg !2356

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !732, metadata !1211), !dbg !2344
  %4 = load i32, i32* %fd, align 4, !dbg !2357, !tbaa !1214
  %cmp4 = icmp eq i32 %4, -1, !dbg !2359
  br i1 %cmp4, label %if.end.8, label %land.lhs.true, !dbg !2360

land.lhs.true:                                    ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct.stat* %buf, i64 0, metadata !696, metadata !1211), !dbg !2361
  %5 = bitcast %struct.stat* %buf to %struct.stat64*, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !759, metadata !1211) #2, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.stat64* %5, i64 0, metadata !760, metadata !1211) #2, !dbg !2363
  %call.i = call i32 @__fxstat64(i32 1, i32 %4, %struct.stat64* nonnull %5) #2, !dbg !2365
  %cmp6 = icmp eq i32 %call.i, 0, !dbg !2366
  br i1 %cmp6, label %land.lhs.true.if.end.8_crit_edge, label %if.then.7, !dbg !2367

land.lhs.true.if.end.8_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i32, i32* %fd, align 4, !dbg !2368, !tbaa !1214
  br label %if.end.8, !dbg !2367

if.then.7:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2369, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0)) #2, !dbg !2371
  br label %cleanup, !dbg !2372

if.end.8:                                         ; preds = %land.lhs.true.if.end.8_crit_edge, %if.end.3
  %7 = phi i32 [ %.pre, %land.lhs.true.if.end.8_crit_edge ], [ -1, %if.end.3 ], !dbg !2368
  %8 = load volatile i32, i32* @wakeup_fd, align 4, !dbg !2373, !tbaa !1214
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !733, metadata !1211), !dbg !2374
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !732, metadata !1211), !dbg !2344
  store volatile i32 %7, i32* @wakeup_fd, align 4, !dbg !2375, !tbaa !1214
  %conv = sext i32 %8 to i64, !dbg !2376
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !2377
  br label %cleanup, !dbg !2378

cleanup:                                          ; preds = %entry, %if.end.8, %if.then.7, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.7 ], [ %call9, %if.end.8 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !2379
  call void @llvm.lifetime.end(i64 144, i8* %0) #2, !dbg !2379
  ret %struct._object* %retval.0, !dbg !2379
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_siginterrupt(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %sig_num = alloca i32, align 4
  %flag = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !763, metadata !1211), !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !764, metadata !1211), !dbg !2381
  %0 = bitcast i32* %sig_num to i8*, !dbg !2382
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2382
  %1 = bitcast i32* %flag to i8*, !dbg !2383
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2383
  tail call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !765, metadata !1211), !dbg !2384
  tail call void @llvm.dbg.value(metadata i32* %flag, i64 0, metadata !766, metadata !1211), !dbg !2385
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i32* nonnull %sig_num, i32* nonnull %flag) #2, !dbg !2386
  %tobool = icmp eq i32 %call, 0, !dbg !2386
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2388

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %sig_num, i64 0, metadata !765, metadata !1211), !dbg !2384
  %2 = load i32, i32* %sig_num, align 4, !dbg !2389, !tbaa !1214
  %.off = add i32 %2, -1, !dbg !2391
  %3 = icmp ugt i32 %.off, 63, !dbg !2391
  br i1 %3, label %if.then.2, label %if.end.3, !dbg !2391

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2392, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0)) #2, !dbg !2394
  br label %cleanup, !dbg !2395

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %flag, i64 0, metadata !766, metadata !1211), !dbg !2385
  %5 = load i32, i32* %flag, align 4, !dbg !2396, !tbaa !1214
  %call4 = call i32 @siginterrupt(i32 %2, i32 %5) #2, !dbg !2398
  %cmp5 = icmp slt i32 %call4, 0, !dbg !2399
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !2400

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2401, !tbaa !1251
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6) #2, !dbg !2403
  br label %cleanup, !dbg !2404

if.end.8:                                         ; preds = %if.end.3
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2405, !tbaa !1243
  %inc = add i64 %7, 1, !dbg !2405
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2405, !tbaa !1243
  br label %cleanup, !dbg !2406

cleanup:                                          ; preds = %entry, %if.end.8, %if.then.6, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.6 ], [ @_Py_NoneStruct, %if.end.8 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !2407
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !2407
  ret %struct._object* %retval.0, !dbg !2407
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pause(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !769, metadata !1211), !dbg !2408
  %call = tail call %struct._ts* @PyEval_SaveThread() #2, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct._ts* %call, i64 0, metadata !770, metadata !1211), !dbg !2409
  %call1 = tail call i32 @pause() #2, !dbg !2410
  tail call void @PyEval_RestoreThread(%struct._ts* %call) #2, !dbg !2411
  %call2 = tail call i32 @PyErr_CheckSignals(), !dbg !2412
  %tobool = icmp eq i32 %call2, 0, !dbg !2412
  br i1 %tobool, label %if.end, label %return, !dbg !2414

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2415, !tbaa !1243
  %inc = add i64 %0, 1, !dbg !2415
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2415, !tbaa !1243
  br label %return, !dbg !2416

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2417
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @signal_default_int_handler(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !832, metadata !1211), !dbg !2418
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !833, metadata !1211), !dbg !2419
  %0 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8, !dbg !2420, !tbaa !1251
  tail call void @PyErr_SetNone(%struct._object* %0) #2, !dbg !2421
  ret %struct._object* null, !dbg !2422
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pthread_kill(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %tid = alloca i64, align 8
  %signum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !836, metadata !1211), !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !837, metadata !1211), !dbg !2424
  %0 = bitcast i64* %tid to i8*, !dbg !2425
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2425
  %1 = bitcast i32* %signum to i8*, !dbg !2426
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64* %tid, i64 0, metadata !838, metadata !1211), !dbg !2427
  tail call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !839, metadata !1211), !dbg !2428
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0), i64* nonnull %tid, i32* nonnull %signum) #2, !dbg !2429
  %tobool = icmp eq i32 %call, 0, !dbg !2429
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2431

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %tid, i64 0, metadata !838, metadata !1211), !dbg !2427
  %2 = load i64, i64* %tid, align 8, !dbg !2432, !tbaa !1226
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !839, metadata !1211), !dbg !2428
  %3 = load i32, i32* %signum, align 4, !dbg !2433, !tbaa !1214
  %call1 = call i32 @pthread_kill(i64 %2, i32 %3) #2, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !840, metadata !1211), !dbg !2435
  %cmp = icmp eq i32 %call1, 0, !dbg !2436
  br i1 %cmp, label %if.end.5, label %if.then.2, !dbg !2438

if.then.2:                                        ; preds = %if.end
  %call3 = tail call i32* @__errno_location() #1, !dbg !2439
  store i32 %call1, i32* %call3, align 4, !dbg !2441, !tbaa !1214
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2442, !tbaa !1251
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4) #2, !dbg !2443
  br label %cleanup, !dbg !2444

if.end.5:                                         ; preds = %if.end
  %call6 = call i32 @PyErr_CheckSignals(), !dbg !2445
  %tobool7 = icmp eq i32 %call6, 0, !dbg !2445
  br i1 %tobool7, label %if.end.9, label %cleanup, !dbg !2447

if.end.9:                                         ; preds = %if.end.5
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2448, !tbaa !1243
  %inc = add i64 %5, 1, !dbg !2448
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2448, !tbaa !1243
  br label %cleanup, !dbg !2448

cleanup:                                          ; preds = %if.end.5, %entry, %if.end.9, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ @_Py_NoneStruct, %if.end.9 ], [ null, %entry ], [ null, %if.end.5 ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !2449
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2449
  ret %struct._object* %retval.0, !dbg !2449
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pthread_sigmask(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %how = alloca i32, align 4
  %signals = alloca %struct._object*, align 8
  %mask = alloca %struct.__sigset_t, align 8
  %previous = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !843, metadata !1211), !dbg !2450
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !844, metadata !1211), !dbg !2451
  %0 = bitcast i32* %how to i8*, !dbg !2452
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2452
  %1 = bitcast %struct._object** %signals to i8*, !dbg !2453
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2453
  %2 = bitcast %struct.__sigset_t* %mask to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 128, i8* %2) #2, !dbg !2454
  %3 = bitcast %struct.__sigset_t* %previous to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 128, i8* %3) #2, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32* %how, i64 0, metadata !845, metadata !1211), !dbg !2455
  tail call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !846, metadata !1211), !dbg !2456
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i64 0, i64 0), i32* nonnull %how, %struct._object** nonnull %signals) #2, !dbg !2457
  %tobool = icmp eq i32 %call, 0, !dbg !2457
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2459

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !846, metadata !1211), !dbg !2456
  %4 = load %struct._object*, %struct._object** %signals, align 8, !dbg !2460, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %mask, i64 0, metadata !847, metadata !1211), !dbg !2462
  %call1 = call fastcc i32 @iterable_to_sigset(%struct._object* %4, %struct.__sigset_t* nonnull %mask), !dbg !2463
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2463
  br i1 %tobool2, label %if.end.4, label %cleanup, !dbg !2464

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %how, i64 0, metadata !845, metadata !1211), !dbg !2455
  %5 = load i32, i32* %how, align 4, !dbg !2465, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %mask, i64 0, metadata !847, metadata !1211), !dbg !2462
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %previous, i64 0, metadata !858, metadata !1211), !dbg !2466
  %call5 = call i32 @pthread_sigmask(i32 %5, %struct.__sigset_t* nonnull %mask, %struct.__sigset_t* nonnull %previous) #2, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %call5, i64 0, metadata !859, metadata !1211), !dbg !2468
  %cmp = icmp eq i32 %call5, 0, !dbg !2469
  br i1 %cmp, label %if.end.9, label %if.then.6, !dbg !2471

if.then.6:                                        ; preds = %if.end.4
  %call7 = tail call i32* @__errno_location() #1, !dbg !2472
  store i32 %call5, i32* %call7, align 4, !dbg !2474, !tbaa !1214
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2475, !tbaa !1251
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6) #2, !dbg !2476
  br label %cleanup, !dbg !2477

if.end.9:                                         ; preds = %if.end.4
  %call10 = call i32 @PyErr_CheckSignals(), !dbg !2478
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2478
  br i1 %tobool11, label %if.end.13, label %cleanup, !dbg !2480

if.end.13:                                        ; preds = %if.end.9
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %previous, i64 0, metadata !858, metadata !1211), !dbg !2466
  %call14 = call fastcc %struct._object* @sigset_to_set(%struct.__sigset_t* byval nonnull align 8 %previous), !dbg !2481
  br label %cleanup, !dbg !2482

cleanup:                                          ; preds = %if.end.9, %if.end, %entry, %if.end.13, %if.then.6
  %retval.0 = phi %struct._object* [ null, %if.then.6 ], [ %call14, %if.end.13 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.9 ]
  call void @llvm.lifetime.end(i64 128, i8* %3) #2, !dbg !2483
  call void @llvm.lifetime.end(i64 128, i8* %2) #2, !dbg !2483
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2483
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !2483
  ret %struct._object* %retval.0, !dbg !2483
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigpending(%struct._object* nocapture readnone %self) #0 {
entry:
  %mask = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !905, metadata !1211), !dbg !2484
  %0 = bitcast %struct.__sigset_t* %mask to i8*, !dbg !2485
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !2485
  tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %mask, i64 0, metadata !907, metadata !1211), !dbg !2486
  %call = call i32 @sigpending(%struct.__sigset_t* nonnull %mask) #2, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !906, metadata !1211), !dbg !2488
  %tobool = icmp eq i32 %call, 0, !dbg !2489
  br i1 %tobool, label %if.end, label %if.then, !dbg !2491

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2492, !tbaa !1251
  %call1 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %1) #2, !dbg !2493
  br label %cleanup, !dbg !2494

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %mask, i64 0, metadata !907, metadata !1211), !dbg !2486
  %call2 = call fastcc %struct._object* @sigset_to_set(%struct.__sigset_t* byval nonnull align 8 %mask), !dbg !2495
  br label %cleanup, !dbg !2496

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call1, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !2497
  ret %struct._object* %retval.0, !dbg !2497
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigwait(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %signals = alloca %struct._object*, align 8
  %set = alloca %struct.__sigset_t, align 8
  %signum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !910, metadata !1211), !dbg !2498
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !911, metadata !1211), !dbg !2499
  %0 = bitcast %struct._object** %signals to i8*, !dbg !2500
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2500
  %1 = bitcast %struct.__sigset_t* %set to i8*, !dbg !2501
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !2501
  %2 = bitcast i32* %signum to i8*, !dbg !2502
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2502
  tail call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !912, metadata !1211), !dbg !2503
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0), %struct._object** nonnull %signals) #2, !dbg !2504
  %tobool = icmp eq i32 %call, 0, !dbg !2504
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2506

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !912, metadata !1211), !dbg !2503
  %3 = load %struct._object*, %struct._object** %signals, align 8, !dbg !2507, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !913, metadata !1211), !dbg !2509
  %call1 = call fastcc i32 @iterable_to_sigset(%struct._object* %3, %struct.__sigset_t* nonnull %set), !dbg !2510
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2510
  br i1 %tobool2, label %if.end.4, label %cleanup, !dbg !2511

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread() #2, !dbg !2512
  call void @llvm.dbg.value(metadata %struct._ts* %call5, i64 0, metadata !916, metadata !1211), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !913, metadata !1211), !dbg !2509
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !915, metadata !1211), !dbg !2513
  %call6 = call i32 @sigwait(%struct.__sigset_t* nonnull %set, i32* nonnull %signum) #2, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %call6, i64 0, metadata !914, metadata !1211), !dbg !2515
  call void @PyEval_RestoreThread(%struct._ts* %call5) #2, !dbg !2516
  %tobool7 = icmp eq i32 %call6, 0, !dbg !2517
  br i1 %tobool7, label %if.end.11, label %if.then.8, !dbg !2519

if.then.8:                                        ; preds = %if.end.4
  %call9 = tail call i32* @__errno_location() #1, !dbg !2520
  store i32 %call6, i32* %call9, align 4, !dbg !2522, !tbaa !1214
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2523, !tbaa !1251
  %call10 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4) #2, !dbg !2524
  br label %cleanup, !dbg !2525

if.end.11:                                        ; preds = %if.end.4
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !915, metadata !1211), !dbg !2513
  %5 = load i32, i32* %signum, align 4, !dbg !2526, !tbaa !1214
  %conv = sext i32 %5 to i64, !dbg !2526
  %call12 = call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !2527
  br label %cleanup, !dbg !2528

cleanup:                                          ; preds = %if.end, %entry, %if.end.11, %if.then.8
  %retval.0 = phi %struct._object* [ %call10, %if.then.8 ], [ %call12, %if.end.11 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !2529
  call void @llvm.lifetime.end(i64 128, i8* %1) #2, !dbg !2529
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2529
  ret %struct._object* %retval.0, !dbg !2529
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigwaitinfo(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %signals = alloca %struct._object*, align 8
  %set = alloca %struct.__sigset_t, align 8
  %si = alloca %struct.siginfo_t, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !920, metadata !1211), !dbg !2530
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !921, metadata !1211), !dbg !2531
  %0 = bitcast %struct._object** %signals to i8*, !dbg !2532
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2532
  %1 = bitcast %struct.__sigset_t* %set to i8*, !dbg !2533
  call void @llvm.lifetime.start(i64 128, i8* %1) #2, !dbg !2533
  %2 = bitcast %struct.siginfo_t* %si to i8*, !dbg !2534
  call void @llvm.lifetime.start(i64 128, i8* %2) #2, !dbg !2534
  tail call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !922, metadata !1211), !dbg !2535
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), %struct._object** nonnull %signals) #2, !dbg !2536
  %tobool = icmp eq i32 %call, 0, !dbg !2536
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2538

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !922, metadata !1211), !dbg !2535
  %3 = load %struct._object*, %struct._object** %signals, align 8, !dbg !2539, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !923, metadata !1211), !dbg !2541
  %call1 = call fastcc i32 @iterable_to_sigset(%struct._object* %3, %struct.__sigset_t* nonnull %set), !dbg !2542
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2542
  br i1 %tobool2, label %if.end.4, label %cleanup, !dbg !2543

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread() #2, !dbg !2544
  call void @llvm.dbg.value(metadata %struct._ts* %call5, i64 0, metadata !988, metadata !1211), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !923, metadata !1211), !dbg !2541
  call void @llvm.dbg.value(metadata %struct.siginfo_t* %si, i64 0, metadata !924, metadata !1211), !dbg !2545
  %call6 = call i32 @sigwaitinfo(%struct.__sigset_t* nonnull %set, %struct.siginfo_t* nonnull %si) #2, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %call6, i64 0, metadata !987, metadata !1211), !dbg !2547
  call void @PyEval_RestoreThread(%struct._ts* %call5) #2, !dbg !2548
  %cmp = icmp eq i32 %call6, -1, !dbg !2549
  br i1 %cmp, label %if.then.7, label %if.end.9, !dbg !2551

if.then.7:                                        ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2552, !tbaa !1251
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4) #2, !dbg !2553
  br label %cleanup, !dbg !2554

if.end.9:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct.siginfo_t* %si, i64 0, metadata !924, metadata !1211), !dbg !2545
  %call10 = call fastcc %struct._object* @fill_siginfo(%struct.siginfo_t* nonnull %si), !dbg !2555
  br label %cleanup, !dbg !2556

cleanup:                                          ; preds = %if.end, %entry, %if.end.9, %if.then.7
  %retval.0 = phi %struct._object* [ %call8, %if.then.7 ], [ %call10, %if.end.9 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 128, i8* %2) #2, !dbg !2557
  call void @llvm.lifetime.end(i64 128, i8* %1) #2, !dbg !2557
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2557
  ret %struct._object* %retval.0, !dbg !2557
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigtimedwait(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %signals = alloca %struct._object*, align 8
  %timeout = alloca %struct._object*, align 8
  %buf = alloca %struct.timespec, align 8
  %set = alloca %struct.__sigset_t, align 8
  %si = alloca %struct.siginfo_t, align 8
  %tv_sec = alloca i64, align 8
  %tv_nsec = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !1003, metadata !1211), !dbg !2558
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1004, metadata !1211), !dbg !2559
  %0 = bitcast %struct._object** %signals to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2560
  %1 = bitcast %struct._object** %timeout to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2560
  %2 = bitcast %struct.timespec* %buf to i8*, !dbg !2561
  call void @llvm.lifetime.start(i64 16, i8* %2) #2, !dbg !2561
  %3 = bitcast %struct.__sigset_t* %set to i8*, !dbg !2562
  call void @llvm.lifetime.start(i64 128, i8* %3) #2, !dbg !2562
  %4 = bitcast %struct.siginfo_t* %si to i8*, !dbg !2563
  call void @llvm.lifetime.start(i64 128, i8* %4) #2, !dbg !2563
  %5 = bitcast i64* %tv_sec to i8*, !dbg !2564
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2564
  %6 = bitcast i64* %tv_nsec to i8*, !dbg !2565
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2565
  tail call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !1005, metadata !1211), !dbg !2566
  tail call void @llvm.dbg.value(metadata %struct._object** %timeout, i64 0, metadata !1006, metadata !1211), !dbg !2567
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0), %struct._object** nonnull %signals, %struct._object** nonnull %timeout) #2, !dbg !2568
  %tobool = icmp eq i32 %call, 0, !dbg !2568
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2570

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %timeout, i64 0, metadata !1006, metadata !1211), !dbg !2567
  %7 = load %struct._object*, %struct._object** %timeout, align 8, !dbg !2571, !tbaa !1251
  call void @llvm.dbg.value(metadata i64* %tv_sec, i64 0, metadata !1010, metadata !1211), !dbg !2573
  call void @llvm.dbg.value(metadata i64* %tv_nsec, i64 0, metadata !1012, metadata !1211), !dbg !2574
  %call1 = call i32 @_PyTime_ObjectToTimespec(%struct._object* %7, i64* nonnull %tv_sec, i64* nonnull %tv_nsec, i32 0) #2, !dbg !2575
  %cmp = icmp eq i32 %call1, -1, !dbg !2576
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !2577

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %tv_sec, i64 0, metadata !1010, metadata !1211), !dbg !2573
  %8 = load i64, i64* %tv_sec, align 8, !dbg !2578, !tbaa !1226
  %tv_sec4 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i64 0, i32 0, !dbg !2579
  store i64 %8, i64* %tv_sec4, align 8, !dbg !2580, !tbaa !2581
  call void @llvm.dbg.value(metadata i64* %tv_nsec, i64 0, metadata !1012, metadata !1211), !dbg !2574
  %9 = load i64, i64* %tv_nsec, align 8, !dbg !2583, !tbaa !1226
  %tv_nsec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i64 0, i32 1, !dbg !2584
  store i64 %9, i64* %tv_nsec5, align 8, !dbg !2585, !tbaa !2586
  %10 = or i64 %9, %8, !dbg !2587
  %11 = icmp slt i64 %10, 0, !dbg !2587
  br i1 %11, label %if.then.10, label %if.end.11, !dbg !2587

if.then.10:                                       ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2589, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i64 0, i64 0)) #2, !dbg !2591
  br label %cleanup, !dbg !2592

if.end.11:                                        ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %signals, i64 0, metadata !1005, metadata !1211), !dbg !2566
  %13 = load %struct._object*, %struct._object** %signals, align 8, !dbg !2593, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !1008, metadata !1211), !dbg !2595
  %call12 = call fastcc i32 @iterable_to_sigset(%struct._object* %13, %struct.__sigset_t* nonnull %set), !dbg !2596
  %tobool13 = icmp eq i32 %call12, 0, !dbg !2596
  br i1 %tobool13, label %if.end.15, label %cleanup, !dbg !2597

if.end.15:                                        ; preds = %if.end.11
  %call16 = call %struct._ts* @PyEval_SaveThread() #2, !dbg !2598
  call void @llvm.dbg.value(metadata %struct._ts* %call16, i64 0, metadata !1014, metadata !1211), !dbg !2598
  call void @llvm.dbg.value(metadata %struct.timespec* %buf, i64 0, metadata !1007, metadata !1211), !dbg !2599
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !1008, metadata !1211), !dbg !2595
  call void @llvm.dbg.value(metadata %struct.siginfo_t* %si, i64 0, metadata !1009, metadata !1211), !dbg !2600
  %call17 = call i32 @sigtimedwait(%struct.__sigset_t* nonnull %set, %struct.siginfo_t* nonnull %si, %struct.timespec* nonnull %buf) #2, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %call17, i64 0, metadata !1013, metadata !1211), !dbg !2602
  call void @PyEval_RestoreThread(%struct._ts* %call16) #2, !dbg !2603
  %cmp18 = icmp eq i32 %call17, -1, !dbg !2604
  br i1 %cmp18, label %if.then.19, label %if.end.24, !dbg !2606

if.then.19:                                       ; preds = %if.end.15
  %call20 = tail call i32* @__errno_location() #1, !dbg !2607
  %14 = load i32, i32* %call20, align 4, !dbg !2607, !tbaa !1214
  %cmp21 = icmp eq i32 %14, 11, !dbg !2610
  br i1 %cmp21, label %if.then.22, label %if.else, !dbg !2611

if.then.22:                                       ; preds = %if.then.19
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2612, !tbaa !1243
  %inc = add i64 %15, 1, !dbg !2612
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2612, !tbaa !1243
  br label %cleanup, !dbg !2612

if.else:                                          ; preds = %if.then.19
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2613, !tbaa !1251
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16) #2, !dbg !2614
  br label %cleanup, !dbg !2615

if.end.24:                                        ; preds = %if.end.15
  call void @llvm.dbg.value(metadata %struct.siginfo_t* %si, i64 0, metadata !1009, metadata !1211), !dbg !2600
  %call25 = call fastcc %struct._object* @fill_siginfo(%struct.siginfo_t* nonnull %si), !dbg !2616
  br label %cleanup, !dbg !2617

cleanup:                                          ; preds = %if.end.11, %if.end, %entry, %if.end.24, %if.else, %if.then.22, %if.then.10
  %retval.0 = phi %struct._object* [ null, %if.then.10 ], [ @_Py_NoneStruct, %if.then.22 ], [ %call23, %if.else ], [ %call25, %if.end.24 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.11 ]
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 128, i8* %4) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 128, i8* %3) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 16, i8* %2) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2618
  ret %struct._object* %retval.0, !dbg !2618
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @alarm(i32) #4

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval* nocapture readonly, %struct.itimerval* nocapture) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind
declare double @fmod(double, double) #4

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

; Function Attrs: nounwind
declare i32 @getitimer(i32, %struct.itimerval* nocapture) #4

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyCallable_Check(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #4

; Function Attrs: nounwind
declare i32 @siginterrupt(i32, i32) #4

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @pause() #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare void @PyErr_SetNone(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @pthread_kill(i64, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iterable_to_sigset(%struct._object* %iterable, %struct.__sigset_t* %mask) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %iterable, i64 0, metadata !865, metadata !1211), !dbg !2619
  tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %mask, i64 0, metadata !866, metadata !1211), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !867, metadata !1211), !dbg !2621
  %call = tail call i32 @sigemptyset(%struct.__sigset_t* %mask) #2, !dbg !2622
  %call1 = tail call %struct._object* @PyObject_GetIter(%struct._object* %iterable) #2, !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !868, metadata !1211), !dbg !2624
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2625
  br i1 %cmp, label %if.end.46, label %while.body.preheader, !dbg !2627

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !2628

while.body:                                       ; preds = %while.body.preheader, %if.end.24
  %call2 = tail call %struct._object* @PyIter_Next(%struct._object* %call1) #2, !dbg !2628
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !869, metadata !1211), !dbg !2629
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !2630
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !2632

if.then.4:                                        ; preds = %while.body
  %call5 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2633
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !867, metadata !1211), !dbg !2621
  %not.tobool = icmp ne %struct._object* %call5, null, !dbg !2636
  %. = sext i1 %not.tobool to i32, !dbg !2636
  br label %do.body.33, !dbg !2636

if.end.7:                                         ; preds = %while.body
  %call8 = tail call i64 @PyLong_AsLong(%struct._object* %call2) #2, !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %call8, i64 0, metadata !870, metadata !1211), !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !872, metadata !1211), !dbg !2639
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !2641
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2641, !tbaa !1243
  %dec = add i64 %0, -1, !dbg !2641
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2641, !tbaa !1243
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2641
  br i1 %cmp9, label %if.else.11, label %if.end.12, !dbg !2643

if.else.11:                                       ; preds = %if.end.7
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !2644
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2644, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2644
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2644, !tbaa !1282
  tail call void %2(%struct._object* %call2) #2, !dbg !2644
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.7, %if.else.11
  %cmp13 = icmp eq i64 %call8, -1, !dbg !2646
  br i1 %cmp13, label %land.lhs.true, label %if.end.17, !dbg !2648

land.lhs.true:                                    ; preds = %if.end.12
  %call14 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2649
  %tobool15 = icmp eq %struct._object* %call14, null, !dbg !2649
  br i1 %tobool15, label %if.then.26, label %do.body.33, !dbg !2651

if.end.17:                                        ; preds = %if.end.12
  %call8.off = add i64 %call8, -1, !dbg !2652
  %3 = icmp ult i64 %call8.off, 64, !dbg !2652
  br i1 %3, label %if.end.24, label %if.then.26.loopexit, !dbg !2652

if.end.24:                                        ; preds = %if.end.17
  %conv = trunc i64 %call8 to i32, !dbg !2654
  %call22 = tail call i32 @sigaddset(%struct.__sigset_t* %mask, i32 %conv) #2, !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 %call22, i64 0, metadata !871, metadata !1211), !dbg !2656
  %tobool25 = icmp eq i32 %call22, 0, !dbg !2657
  br i1 %tobool25, label %while.body, label %if.then.26.loopexit, !dbg !2659

if.then.26.loopexit:                              ; preds = %if.end.24, %if.end.17
  %call8.lcssa81 = phi i64 [ %call8, %if.end.24 ], [ %call8, %if.end.17 ]
  br label %if.then.26, !dbg !2660

if.then.26:                                       ; preds = %if.then.26.loopexit, %land.lhs.true
  %call877 = phi i64 [ -1, %land.lhs.true ], [ %call8.lcssa81, %if.then.26.loopexit ]
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2660, !tbaa !1251
  %call27 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0), i64 %call877) #2, !dbg !2662
  br label %do.body.33, !dbg !2663

do.body.33:                                       ; preds = %if.then.26, %land.lhs.true, %if.then.4
  %result.0 = phi i32 [ -1, %land.lhs.true ], [ -1, %if.then.26 ], [ %., %if.then.4 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !875, metadata !1211), !dbg !2664
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !877, metadata !1211), !dbg !2666
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2668
  %5 = load i64, i64* %ob_refcnt35, align 8, !dbg !2668, !tbaa !1243
  %dec36 = add i64 %5, -1, !dbg !2668
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !2668, !tbaa !1243
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !2668
  br i1 %cmp37, label %if.else.40, label %if.end.46, !dbg !2670

if.else.40:                                       ; preds = %do.body.33
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2671
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2671, !tbaa !1281
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2671
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2671, !tbaa !1282
  tail call void %7(%struct._object* %call1) #2, !dbg !2671
  br label %if.end.46

if.end.46:                                        ; preds = %entry, %if.else.40, %do.body.33
  %result.073 = phi i32 [ %result.0, %if.else.40 ], [ %result.0, %do.body.33 ], [ -1, %entry ]
  ret i32 %result.073, !dbg !2673
}

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @sigset_to_set(%struct.__sigset_t* byval align 8 %mask) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata %struct.__sigset_t* %mask, metadata !884, metadata !1211), !dbg !2674
  %call = tail call %struct._object* @PySet_New(%struct._object* null) #2, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !886, metadata !1211), !dbg !2676
  %cmp = icmp eq %struct._object* %call, null, !dbg !2677
  br i1 %cmp, label %cleanup, label %for.body.preheader, !dbg !2679

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !2680

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body.preheader ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !2680
  %call2 = call i32 @sigismember(%struct.__sigset_t* nonnull %mask, i32 %0) #2, !dbg !2680
  %cmp3 = icmp eq i32 %call2, 1, !dbg !2682
  br i1 %cmp3, label %if.end.5, label %for.inc, !dbg !2683

if.end.5:                                         ; preds = %for.body
  %call6 = call %struct._object* @PyLong_FromLong(i64 %indvars.iv) #2, !dbg !2684
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !885, metadata !1211), !dbg !2685
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !2686
  br i1 %cmp7, label %do.body, label %if.end.14, !dbg !2687

do.body:                                          ; preds = %if.end.5
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !888, metadata !1211), !dbg !2688
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2690
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2690, !tbaa !1243
  %dec = add i64 %1, -1, !dbg !2690
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2690, !tbaa !1243
  %cmp10 = icmp eq i64 %dec, 0, !dbg !2690
  br i1 %cmp10, label %if.else, label %cleanup, !dbg !2692

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2693
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2693, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2693
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2693, !tbaa !1282
  call void %3(%struct._object* %call) #2, !dbg !2693
  br label %cleanup

if.end.14:                                        ; preds = %if.end.5
  %call15 = call i32 @PySet_Add(%struct._object* %call, %struct._object* %call6) #2, !dbg !2695
  %cmp16 = icmp eq i32 %call15, -1, !dbg !2696
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !2697
  %4 = load i64, i64* %ob_refcnt21, align 8, !dbg !2697, !tbaa !1243
  %dec22 = add i64 %4, -1, !dbg !2697
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2697, !tbaa !1243
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !2697
  br i1 %cmp16, label %do.body.19, label %do.body.46, !dbg !2699

do.body.19:                                       ; preds = %if.end.14
  %cmp23.lcssa = phi i1 [ %cmp23, %if.end.14 ]
  %call6.lcssa92 = phi %struct._object* [ %call6, %if.end.14 ]
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !895, metadata !1211), !dbg !2700
  br i1 %cmp23.lcssa, label %if.else.26, label %if.end.29, !dbg !2702

if.else.26:                                       ; preds = %do.body.19
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %call6.lcssa92, i64 0, i32 1, !dbg !2703
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !2703, !tbaa !1281
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2703
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !2703, !tbaa !1282
  call void %6(%struct._object* %call6.lcssa92) #2, !dbg !2703
  br label %if.end.29

if.end.29:                                        ; preds = %do.body.19, %if.else.26
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !899, metadata !1211), !dbg !2705
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2707
  %7 = load i64, i64* %ob_refcnt34, align 8, !dbg !2707, !tbaa !1243
  %dec35 = add i64 %7, -1, !dbg !2707
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !2707, !tbaa !1243
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !2707
  br i1 %cmp36, label %if.else.39, label %cleanup, !dbg !2709

if.else.39:                                       ; preds = %if.end.29
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2710
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !2710, !tbaa !1281
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2710
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !2710, !tbaa !1282
  call void %9(%struct._object* %call) #2, !dbg !2710
  br label %cleanup

do.body.46:                                       ; preds = %if.end.14
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !901, metadata !1211), !dbg !2712
  br i1 %cmp23, label %if.else.53, label %for.inc, !dbg !2714

if.else.53:                                       ; preds = %do.body.46
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !2715
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !2715, !tbaa !1281
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2715
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !2715, !tbaa !1282
  call void %11(%struct._object* %call6) #2, !dbg !2715
  br label %for.inc

for.inc:                                          ; preds = %if.else.53, %do.body.46, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2718
  %cmp1 = icmp slt i64 %indvars.iv.next, 65, !dbg !2719
  br i1 %cmp1, label %for.body, label %cleanup.loopexit, !dbg !2718

cleanup.loopexit:                                 ; preds = %for.inc
  br label %cleanup, !dbg !2720

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.39, %if.end.29, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ null, %if.end.29 ], [ null, %if.else.39 ], [ %call, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !2720
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #4

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PySet_New(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) #4

declare i32 @PySet_Add(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare i32 @sigpending(%struct.__sigset_t*) #4

declare i32 @sigwait(%struct.__sigset_t*, i32*) #3

declare i32 @sigwaitinfo(%struct.__sigset_t*, %struct.siginfo_t*) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @fill_siginfo(%struct.siginfo_t* nocapture readonly %si) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.siginfo_t* %si, i64 0, metadata !995, metadata !1211), !dbg !2721
  %call = tail call %struct._object* @PyStructSequence_New(%struct._typeobject* nonnull @SiginfoType) #2, !dbg !2722
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !996, metadata !1211), !dbg !2723
  %tobool = icmp eq %struct._object* %call, null, !dbg !2724
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2726

if.end:                                           ; preds = %entry
  %si_signo = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 0, !dbg !2727
  %0 = load i32, i32* %si_signo, align 4, !dbg !2727, !tbaa !2728
  %conv = sext i32 %0 to i64, !dbg !2727
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !2727
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !2727
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !2727
  store %struct._object* %call1, %struct._object** %arrayidx, align 8, !dbg !2727, !tbaa !1251
  %si_code = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 2, !dbg !2730
  %1 = load i32, i32* %si_code, align 4, !dbg !2730, !tbaa !2731
  %conv2 = sext i32 %1 to i64, !dbg !2730
  %call3 = tail call %struct._object* @PyLong_FromLong(i64 %conv2) #2, !dbg !2730
  %arrayidx5 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !2730
  %2 = bitcast %struct._typeobject** %arrayidx5 to %struct._object**, !dbg !2730
  store %struct._object* %call3, %struct._object** %2, align 8, !dbg !2730, !tbaa !1251
  %si_errno = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 1, !dbg !2732
  %3 = load i32, i32* %si_errno, align 4, !dbg !2732, !tbaa !2733
  %conv6 = sext i32 %3 to i64, !dbg !2732
  %call7 = tail call %struct._object* @PyLong_FromLong(i64 %conv6) #2, !dbg !2732
  %arrayidx9 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !2732
  %4 = bitcast %struct._typeobject** %arrayidx9 to %struct._object**, !dbg !2732
  store %struct._object* %call7, %struct._object** %4, align 8, !dbg !2732, !tbaa !1251
  %_sifields = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 3, !dbg !2734
  %si_pid = getelementptr inbounds %union.anon, %union.anon* %_sifields, i64 0, i32 0, i32 0, !dbg !2734
  %5 = load i32, i32* %si_pid, align 4, !dbg !2734, !tbaa !2735
  %conv10 = sext i32 %5 to i64, !dbg !2734
  %call11 = tail call %struct._object* @PyLong_FromLong(i64 %conv10) #2, !dbg !2734
  %arrayidx13 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 3, !dbg !2734
  %6 = bitcast %struct._typeobject** %arrayidx13 to %struct._object**, !dbg !2734
  store %struct._object* %call11, %struct._object** %6, align 8, !dbg !2734, !tbaa !1251
  %7 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 3, i32 0, i32 1, !dbg !2737
  %8 = load i32, i32* %7, align 4, !dbg !2737, !tbaa !2738
  %call16 = tail call %struct._object* @_PyLong_FromUid(i32 %8) #2, !dbg !2737
  %arrayidx18 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 4, !dbg !2737
  %9 = bitcast %struct._typeobject** %arrayidx18 to %struct._object**, !dbg !2737
  store %struct._object* %call16, %struct._object** %9, align 8, !dbg !2737, !tbaa !1251
  %si_status = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %si, i64 0, i32 3, i32 0, i32 2, !dbg !2739
  %10 = load i32, i32* %si_status, align 4, !dbg !2739, !tbaa !2740
  %conv20 = sext i32 %10 to i64, !dbg !2739
  %call21 = tail call %struct._object* @PyLong_FromLong(i64 %conv20) #2, !dbg !2739
  %arrayidx23 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 5, !dbg !2739
  %11 = bitcast %struct._typeobject** %arrayidx23 to %struct._object**, !dbg !2739
  store %struct._object* %call21, %struct._object** %11, align 8, !dbg !2739, !tbaa !1251
  %si_band = bitcast %union.anon* %_sifields to i64*, !dbg !2742
  %12 = load i64, i64* %si_band, align 8, !dbg !2742, !tbaa !2743
  %call25 = tail call %struct._object* @PyLong_FromLong(i64 %12) #2, !dbg !2742
  %arrayidx27 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 6, !dbg !2742
  %13 = bitcast %struct._typeobject** %arrayidx27 to %struct._object**, !dbg !2742
  store %struct._object* %call25, %struct._object** %13, align 8, !dbg !2742, !tbaa !1251
  %call28 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2745
  %tobool29 = icmp eq %struct._object* %call28, null, !dbg !2745
  br i1 %tobool29, label %cleanup, label %do.body, !dbg !2746

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !997, metadata !1211), !dbg !2747
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2749
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2749, !tbaa !1243
  %dec = add i64 %14, -1, !dbg !2749
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2749, !tbaa !1243
  %cmp = icmp eq i64 %dec, 0, !dbg !2749
  br i1 %cmp, label %if.else, label %cleanup, !dbg !2751

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2752
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2752, !tbaa !1281
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2752
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2752, !tbaa !1282
  tail call void %16(%struct._object* %call) #2, !dbg !2752
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !2754
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

declare %struct._object* @_PyLong_FromUid(i32) #3

declare i32 @_PyTime_ObjectToTimespec(%struct._object*, i64*, i64*, i32) #3

declare i32 @sigtimedwait(%struct.__sigset_t*, %struct.siginfo_t*, %struct.timespec*) #3

declare i64 @write(i32, i8* nocapture readonly, i64) #3

declare i32 @Py_AddPendingCall(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @report_wakeup_error(i8* %data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !1029, metadata !1211), !dbg !2755
  %call = tail call i32* @__errno_location() #1, !dbg !2756
  %0 = load i32, i32* %call, align 4, !dbg !2756, !tbaa !1214
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1030, metadata !1211), !dbg !2757
  %1 = ptrtoint i8* %data to i64, !dbg !2758
  %conv = trunc i64 %1 to i32, !dbg !2759
  store i32 %conv, i32* %call, align 4, !dbg !2760, !tbaa !1214
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2761, !tbaa !1251
  %call2 = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %2) #2, !dbg !2762
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.97, i64 0, i64 0)) #2, !dbg !2763
  tail call void @PyErr_WriteUnraisable(%struct._object* null) #2, !dbg !2764
  store i32 %0, i32* %call, align 4, !dbg !2765, !tbaa !1214
  ret i32 0, !dbg !2766
}

; Function Attrs: nounwind uwtable
define internal i32 @checksignals_witharg(i8* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %unused, i64 0, metadata !1033, metadata !1211), !dbg !2767
  %call = tail call i32 @PyErr_CheckSignals(), !dbg !2768
  ret i32 %call, !dbg !2769
}

declare void @PySys_WriteStderr(i8*, ...) #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1208, !1209}
!llvm.ident = !{!1210}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !14, subprograms: !375, globals: !1067)
!1 = !DIFile(filename: "./Modules/signalmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__itimer_which", file: !4, line: 92, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "ITIMER_REAL", value: 0)
!7 = !DIEnumerator(name: "ITIMER_VIRTUAL", value: 1)
!8 = !DIEnumerator(name: "ITIMER_PROF", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 57, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/pytime.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "_PyTime_ROUND_DOWN", value: 0)
!13 = !DIEnumerator(name: "_PyTime_ROUND_UP", value: 1)
!14 = !{!15, !16, !354, !28, !359, !367, !368, !55, !370, !371}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !32)
!32 = !{!33, !39, !43, !44, !45, !50, !113, !118, !123, !124, !129, !181, !212, !224, !230, !231, !232, !234, !236, !267, !268, !269, !278, !279, !284, !285, !287, !289, !299, !302, !320, !321, !322, !324, !326, !327, !329, !334, !339, !344, !345, !346, !347, !348, !349, !350, !351, !353}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !18, line: 335, baseType: !34, size: 192, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !31, file: !18, line: 336, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !31, file: !18, line: 341, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !16}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !31, file: !18, line: 342, baseType: !51, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !16, !56, !55}
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 246, size: 1728, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!60 = !{!61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !82, !83, !84, !85, !87, !89, !91, !95, !98, !100, !101, !102, !103, !104, !108, !109}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 247, baseType: !55, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 252, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 253, baseType: !63, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 254, baseType: !63, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 255, baseType: !63, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 256, baseType: !63, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 257, baseType: !63, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 258, baseType: !63, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 259, baseType: !63, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 261, baseType: !63, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 262, baseType: !63, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 263, baseType: !63, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 265, baseType: !75, size: 64, align: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 161, size: 192, align: 64, elements: !77)
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !76, file: !59, line: 162, baseType: !75, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !76, file: !59, line: 163, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !76, file: !59, line: 167, baseType: !55, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 267, baseType: !80, size: 64, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 269, baseType: !55, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 273, baseType: !55, size: 32, align: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 275, baseType: !86, size: 64, align: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !28)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 279, baseType: !88, size: 16, align: 16, offset: 1024)
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 280, baseType: !90, size: 8, align: 8, offset: 1040)
!90 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 281, baseType: !92, size: 8, align: 8, offset: 1048)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 285, baseType: !96, size: 64, align: 64, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 155, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 294, baseType: !99, size: 64, align: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !28)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !58, file: !59, line: 303, baseType: !15, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !58, file: !59, line: 304, baseType: !15, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !58, file: !59, line: 305, baseType: !15, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !58, file: !59, line: 306, baseType: !15, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 307, baseType: !105, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 309, baseType: !55, size: 32, align: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 311, baseType: !110, size: 160, align: 8, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !31, file: !18, line: 343, baseType: !114, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !16, !63}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !31, file: !18, line: 344, baseType: !119, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!55, !16, !63, !16}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !31, file: !18, line: 345, baseType: !15, size: 64, align: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !31, file: !18, line: 346, baseType: !125, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!16, !16}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !31, file: !18, line: 350, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !133)
!133 = !{!134, !139, !140, !141, !142, !143, !148, !150, !151, !152, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !132, file: !18, line: 241, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!16, !16, !16}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !132, file: !18, line: 242, baseType: !135, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !132, file: !18, line: 243, baseType: !135, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !132, file: !18, line: 244, baseType: !135, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !132, file: !18, line: 245, baseType: !135, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !132, file: !18, line: 246, baseType: !144, size: 64, align: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!16, !16, !16, !16}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !132, file: !18, line: 247, baseType: !149, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !126)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !132, file: !18, line: 248, baseType: !149, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !132, file: !18, line: 249, baseType: !149, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !132, file: !18, line: 250, baseType: !153, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!55, !16}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !132, file: !18, line: 251, baseType: !149, size: 64, align: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !132, file: !18, line: 252, baseType: !135, size: 64, align: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !132, file: !18, line: 253, baseType: !135, size: 64, align: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !132, file: !18, line: 254, baseType: !135, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !132, file: !18, line: 255, baseType: !135, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !132, file: !18, line: 256, baseType: !135, size: 64, align: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !132, file: !18, line: 257, baseType: !149, size: 64, align: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !132, file: !18, line: 258, baseType: !15, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !132, file: !18, line: 259, baseType: !149, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !132, file: !18, line: 261, baseType: !135, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !132, file: !18, line: 262, baseType: !135, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !132, file: !18, line: 263, baseType: !135, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !132, file: !18, line: 264, baseType: !135, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !132, file: !18, line: 265, baseType: !144, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !132, file: !18, line: 266, baseType: !135, size: 64, align: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !132, file: !18, line: 267, baseType: !135, size: 64, align: 64, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !132, file: !18, line: 268, baseType: !135, size: 64, align: 64, offset: 1664)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !132, file: !18, line: 269, baseType: !135, size: 64, align: 64, offset: 1728)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !132, file: !18, line: 270, baseType: !135, size: 64, align: 64, offset: 1792)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !132, file: !18, line: 272, baseType: !135, size: 64, align: 64, offset: 1856)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !132, file: !18, line: 273, baseType: !135, size: 64, align: 64, offset: 1920)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !132, file: !18, line: 274, baseType: !135, size: 64, align: 64, offset: 1984)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !132, file: !18, line: 275, baseType: !135, size: 64, align: 64, offset: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !132, file: !18, line: 277, baseType: !149, size: 64, align: 64, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !31, file: !18, line: 351, baseType: !182, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !185)
!185 = !{!186, !191, !192, !197, !198, !199, !204, !205, !210, !211}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !184, file: !18, line: 281, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!22, !16}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !184, file: !18, line: 282, baseType: !135, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !184, file: !18, line: 283, baseType: !193, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!16, !16, !22}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !184, file: !18, line: 284, baseType: !193, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !184, file: !18, line: 285, baseType: !15, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !184, file: !18, line: 286, baseType: !200, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!55, !16, !22, !16}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !184, file: !18, line: 287, baseType: !15, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !184, file: !18, line: 288, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!55, !16, !16}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !184, file: !18, line: 290, baseType: !135, size: 64, align: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !184, file: !18, line: 291, baseType: !193, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !31, file: !18, line: 352, baseType: !213, size: 64, align: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !215, file: !18, line: 295, baseType: !187, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !215, file: !18, line: 296, baseType: !135, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !215, file: !18, line: 297, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!55, !16, !16, !16}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !31, file: !18, line: 356, baseType: !225, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !16}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !31, file: !18, line: 357, baseType: !144, size: 64, align: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !31, file: !18, line: 358, baseType: !125, size: 64, align: 64, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !31, file: !18, line: 359, baseType: !233, size: 64, align: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !136)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !31, file: !18, line: 360, baseType: !235, size: 64, align: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !221)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !31, file: !18, line: 363, baseType: !237, size: 64, align: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !240)
!240 = !{!241, !262}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !239, file: !18, line: 302, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!55, !16, !246, !55}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !18, line: 179, baseType: !15, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !248, file: !18, line: 180, baseType: !16, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !248, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !248, file: !18, line: 184, baseType: !55, size: 32, align: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !248, file: !18, line: 185, baseType: !55, size: 32, align: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !248, file: !18, line: 186, baseType: !63, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !248, file: !18, line: 187, baseType: !258, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !248, file: !18, line: 188, baseType: !258, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !248, file: !18, line: 189, baseType: !258, size: 64, align: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !248, file: !18, line: 190, baseType: !15, size: 64, align: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !239, file: !18, line: 303, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !16, !246}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !31, file: !18, line: 366, baseType: !107, size: 64, align: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !31, file: !18, line: 368, baseType: !40, size: 64, align: 64, offset: 1408)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !31, file: !18, line: 372, baseType: !270, size: 64, align: 64, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!55, !16, !274, !15}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!55, !16, !15}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !31, file: !18, line: 375, baseType: !153, size: 64, align: 64, offset: 1536)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !31, file: !18, line: 379, baseType: !280, size: 64, align: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !16, !16, !55}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !31, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !31, file: !18, line: 385, baseType: !286, size: 64, align: 64, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !126)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !31, file: !18, line: 386, baseType: !288, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !126)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !31, file: !18, line: 389, baseType: !290, size: 64, align: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !292, line: 40, size: 256, align: 64, elements: !293)
!292 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!293 = !{!294, !295, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !291, file: !292, line: 41, baseType: !40, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !291, file: !292, line: 42, baseType: !296, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !292, line: 18, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !291, file: !292, line: 43, baseType: !55, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !291, file: !292, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !300, size: 64, align: 64, offset: 1920)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !18, line: 390, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !303, size: 64, align: 64, offset: 1984)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !305, line: 11, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!306 = !{!307, !308, !313, !318, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 12, baseType: !63, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !304, file: !305, line: 13, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !305, line: 8, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!16, !16, !15}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !304, file: !305, line: 14, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !305, line: 9, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!55, !16, !16, !15}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 15, baseType: !63, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !304, file: !305, line: 16, baseType: !15, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !31, file: !18, line: 392, baseType: !30, size: 64, align: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !31, file: !18, line: 393, baseType: !16, size: 64, align: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !31, file: !18, line: 394, baseType: !323, size: 64, align: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !145)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !31, file: !18, line: 395, baseType: !325, size: 64, align: 64, offset: 2240)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !221)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !31, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !31, file: !18, line: 397, baseType: !328, size: 64, align: 64, offset: 2368)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !221)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !31, file: !18, line: 398, baseType: !330, size: 64, align: 64, offset: 2432)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!16, !30, !22}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !31, file: !18, line: 399, baseType: !335, size: 64, align: 64, offset: 2496)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!16, !30, !16, !16}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !31, file: !18, line: 400, baseType: !340, size: 64, align: 64, offset: 2560)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !15}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !31, file: !18, line: 401, baseType: !153, size: 64, align: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !31, file: !18, line: 402, baseType: !16, size: 64, align: 64, offset: 2688)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !31, file: !18, line: 403, baseType: !16, size: 64, align: 64, offset: 2752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !31, file: !18, line: 404, baseType: !16, size: 64, align: 64, offset: 2816)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !31, file: !18, line: 405, baseType: !16, size: 64, align: 64, offset: 2880)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !31, file: !18, line: 406, baseType: !16, size: 64, align: 64, offset: 2944)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !31, file: !18, line: 407, baseType: !46, size: 64, align: 64, offset: 3008)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !31, file: !18, line: 410, baseType: !352, size: 32, align: 32, offset: 3072)
!352 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !31, file: !18, line: 412, baseType: !46, size: 64, align: 64, offset: 3136)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !355, line: 85, baseType: !356)
!355 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !55}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !361, line: 33, baseType: !362)
!361 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 25, size: 256, align: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !362, file: !361, line: 26, baseType: !34, size: 192, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !362, file: !361, line: 27, baseType: !366, size: 64, align: 64, offset: 192)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, align: 64, elements: !93)
!367 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !369, line: 60, baseType: !107)
!369 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!370 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_intptr_t", file: !23, line: 154, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !373, line: 267, baseType: !374)
!373 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !27, line: 195, baseType: !28)
!375 = !{!376, !382, !585, !604, !608, !615, !616, !617, !618, !619, !624, !644, !651, !667, !672, !678, !686, !692, !734, !761, !767, !830, !834, !841, !860, !880, !903, !908, !918, !990, !1001, !1016, !1020, !1025, !1031, !1034, !1064}
!376 = !DISubprogram(name: "PySignal_SetWakeupFd", scope: !1, file: !1, line: 460, type: !377, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @PySignal_SetWakeupFd, variables: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!55, !55}
!379 = !{!380, !381}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !376, file: !1, line: 460, type: !55)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_fd", scope: !376, file: !1, line: 462, type: !55)
!382 = !DISubprogram(name: "PyInit_signal", scope: !1, file: !1, line: 970, type: !383, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_signal, variables: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!16}
!385 = !{!386, !387, !388, !389, !390, !392, !396, !400, !402, !405, !407, !410, !412, !415, !417, !420, !422, !425, !427, !430, !432, !435, !437, !440, !442, !445, !447, !450, !452, !455, !457, !460, !462, !465, !467, !470, !472, !475, !477, !480, !482, !485, !487, !490, !492, !495, !497, !500, !502, !505, !507, !510, !512, !515, !517, !520, !522, !525, !527, !530, !532, !535, !537, !540, !542, !545, !547, !550, !552, !555, !557, !560, !562, !565, !567, !570, !572, !575, !577, !579, !581}
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !382, file: !1, line: 972, type: !16)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !382, file: !1, line: 972, type: !16)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !382, file: !1, line: 972, type: !16)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !382, file: !1, line: 973, type: !55)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !391, file: !1, line: 1009, type: !16)
!391 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1009, column: 5)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !393, file: !1, line: 1031, type: !356)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 1030, column: 32)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 1030, column: 5)
!395 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1030, column: 5)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !397, file: !1, line: 1045, type: !16)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 1045, column: 9)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 1042, column: 50)
!399 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1042, column: 9)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !401, file: !1, line: 1053, type: !16)
!401 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1053, column: 5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !403, file: !1, line: 1053, type: !16)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 1053, column: 5)
!404 = distinct !DILexicalBlock(scope: !401, file: !1, line: 1053, column: 5)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !406, file: !1, line: 1058, type: !16)
!406 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1058, column: 5)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !408, file: !1, line: 1058, type: !16)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 1058, column: 5)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 1058, column: 5)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !411, file: !1, line: 1068, type: !16)
!411 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1068, column: 5)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !413, file: !1, line: 1068, type: !16)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 1068, column: 5)
!414 = distinct !DILexicalBlock(scope: !411, file: !1, line: 1068, column: 5)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !416, file: !1, line: 1073, type: !16)
!416 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1073, column: 5)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !418, file: !1, line: 1073, type: !16)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 1073, column: 5)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1073, column: 5)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !421, file: !1, line: 1078, type: !16)
!421 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1078, column: 5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !1, line: 1078, type: !16)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 1078, column: 5)
!424 = distinct !DILexicalBlock(scope: !421, file: !1, line: 1078, column: 5)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !426, file: !1, line: 1083, type: !16)
!426 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1083, column: 5)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !1, line: 1083, type: !16)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 1083, column: 5)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 1083, column: 5)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !431, file: !1, line: 1088, type: !16)
!431 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1088, column: 5)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !1, line: 1088, type: !16)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 1088, column: 5)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 1088, column: 5)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !436, file: !1, line: 1098, type: !16)
!436 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1098, column: 5)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !438, file: !1, line: 1098, type: !16)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 1098, column: 5)
!439 = distinct !DILexicalBlock(scope: !436, file: !1, line: 1098, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !441, file: !1, line: 1103, type: !16)
!441 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1103, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !1, line: 1103, type: !16)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 1103, column: 5)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 1103, column: 5)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !446, file: !1, line: 1108, type: !16)
!446 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1108, column: 5)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !448, file: !1, line: 1108, type: !16)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1108, column: 5)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 1108, column: 5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !451, file: !1, line: 1113, type: !16)
!451 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1113, column: 5)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !1, line: 1113, type: !16)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1113, column: 5)
!454 = distinct !DILexicalBlock(scope: !451, file: !1, line: 1113, column: 5)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !456, file: !1, line: 1118, type: !16)
!456 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1118, column: 5)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !458, file: !1, line: 1118, type: !16)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 1118, column: 5)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 1118, column: 5)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !461, file: !1, line: 1123, type: !16)
!461 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1123, column: 5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !1, line: 1123, type: !16)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 1123, column: 5)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 1123, column: 5)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !466, file: !1, line: 1128, type: !16)
!466 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1128, column: 5)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !1, line: 1128, type: !16)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 1128, column: 5)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1128, column: 5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !471, file: !1, line: 1133, type: !16)
!471 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1133, column: 5)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !1, line: 1133, type: !16)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1133, column: 5)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 1133, column: 5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !476, file: !1, line: 1138, type: !16)
!476 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1138, column: 5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !1, line: 1138, type: !16)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 1138, column: 5)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 1138, column: 5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !481, file: !1, line: 1143, type: !16)
!481 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1143, column: 5)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !1, line: 1143, type: !16)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 1143, column: 5)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 1143, column: 5)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !486, file: !1, line: 1148, type: !16)
!486 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1148, column: 5)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !1, line: 1148, type: !16)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 1148, column: 5)
!489 = distinct !DILexicalBlock(scope: !486, file: !1, line: 1148, column: 5)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !491, file: !1, line: 1153, type: !16)
!491 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1153, column: 5)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !1, line: 1153, type: !16)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 1153, column: 5)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 1153, column: 5)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !496, file: !1, line: 1158, type: !16)
!496 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1158, column: 5)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !498, file: !1, line: 1158, type: !16)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 1158, column: 5)
!499 = distinct !DILexicalBlock(scope: !496, file: !1, line: 1158, column: 5)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !501, file: !1, line: 1163, type: !16)
!501 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1163, column: 5)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !1, line: 1163, type: !16)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 1163, column: 5)
!504 = distinct !DILexicalBlock(scope: !501, file: !1, line: 1163, column: 5)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !506, file: !1, line: 1168, type: !16)
!506 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1168, column: 5)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !1, line: 1168, type: !16)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 1168, column: 5)
!509 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1168, column: 5)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !511, file: !1, line: 1173, type: !16)
!511 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1173, column: 5)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !513, file: !1, line: 1173, type: !16)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 1173, column: 5)
!514 = distinct !DILexicalBlock(scope: !511, file: !1, line: 1173, column: 5)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !516, file: !1, line: 1178, type: !16)
!516 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1178, column: 5)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !518, file: !1, line: 1178, type: !16)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 1178, column: 5)
!519 = distinct !DILexicalBlock(scope: !516, file: !1, line: 1178, column: 5)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !521, file: !1, line: 1183, type: !16)
!521 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1183, column: 5)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !1, line: 1183, type: !16)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 1183, column: 5)
!524 = distinct !DILexicalBlock(scope: !521, file: !1, line: 1183, column: 5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !526, file: !1, line: 1188, type: !16)
!526 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1188, column: 5)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !528, file: !1, line: 1188, type: !16)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 1188, column: 5)
!529 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1188, column: 5)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !531, file: !1, line: 1193, type: !16)
!531 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1193, column: 5)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !533, file: !1, line: 1193, type: !16)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 1193, column: 5)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 1193, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !536, file: !1, line: 1198, type: !16)
!536 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1198, column: 5)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !538, file: !1, line: 1198, type: !16)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 1198, column: 5)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 1198, column: 5)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !541, file: !1, line: 1203, type: !16)
!541 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1203, column: 5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !1, line: 1203, type: !16)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 1203, column: 5)
!544 = distinct !DILexicalBlock(scope: !541, file: !1, line: 1203, column: 5)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !546, file: !1, line: 1208, type: !16)
!546 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1208, column: 5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !1, line: 1208, type: !16)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 1208, column: 5)
!549 = distinct !DILexicalBlock(scope: !546, file: !1, line: 1208, column: 5)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !551, file: !1, line: 1213, type: !16)
!551 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1213, column: 5)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !1, line: 1213, type: !16)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 1213, column: 5)
!554 = distinct !DILexicalBlock(scope: !551, file: !1, line: 1213, column: 5)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !556, file: !1, line: 1218, type: !16)
!556 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1218, column: 5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !1, line: 1218, type: !16)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 1218, column: 5)
!559 = distinct !DILexicalBlock(scope: !556, file: !1, line: 1218, column: 5)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !561, file: !1, line: 1223, type: !16)
!561 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1223, column: 5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !1, line: 1223, type: !16)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 1223, column: 5)
!564 = distinct !DILexicalBlock(scope: !561, file: !1, line: 1223, column: 5)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !566, file: !1, line: 1228, type: !16)
!566 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1228, column: 5)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !1, line: 1228, type: !16)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 1228, column: 5)
!569 = distinct !DILexicalBlock(scope: !566, file: !1, line: 1228, column: 5)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !571, file: !1, line: 1233, type: !16)
!571 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1233, column: 5)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !573, file: !1, line: 1233, type: !16)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 1233, column: 5)
!574 = distinct !DILexicalBlock(scope: !571, file: !1, line: 1233, column: 5)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !576, file: !1, line: 1244, type: !16)
!576 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1244, column: 5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !578, file: !1, line: 1249, type: !16)
!578 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1249, column: 5)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !580, file: !1, line: 1254, type: !16)
!580 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1254, column: 5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 1282, type: !16)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 1282, column: 9)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 1281, column: 27)
!584 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1281, column: 9)
!585 = !DISubprogram(name: "PyErr_CheckSignals", scope: !1, file: !1, line: 1317, type: !586, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyErr_CheckSignals, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!55}
!588 = !{!589, !590, !591, !597, !598, !602}
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !585, file: !1, line: 1319, type: !55)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !585, file: !1, line: 1320, type: !16)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !592, file: !1, line: 1351, type: !16)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 1350, column: 34)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 1350, column: 13)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 1349, column: 32)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 1349, column: 5)
!596 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1349, column: 5)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglist", scope: !592, file: !1, line: 1352, type: !16)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !1, line: 1358, type: !16)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 1358, column: 17)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 1355, column: 26)
!601 = distinct !DILexicalBlock(scope: !592, file: !1, line: 1355, column: 17)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !1, line: 1363, type: !16)
!603 = distinct !DILexicalBlock(scope: !592, file: !1, line: 1363, column: 13)
!604 = !DISubprogram(name: "PyErr_SetInterrupt", scope: !1, file: !1, line: 1375, type: !605, isLocal: false, isDefinition: true, scopeLine: 1376, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_SetInterrupt, variables: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{null}
!607 = !{}
!608 = !DISubprogram(name: "PyOS_InitInterrupts", scope: !1, file: !1, line: 1381, type: !605, isLocal: false, isDefinition: true, scopeLine: 1382, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyOS_InitInterrupts, variables: !609)
!609 = !{!610, !611}
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !608, file: !1, line: 1383, type: !16)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !1, line: 1385, type: !16)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 1385, column: 9)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 1384, column: 12)
!614 = distinct !DILexicalBlock(scope: !608, file: !1, line: 1384, column: 9)
!615 = !DISubprogram(name: "PyOS_FiniInterrupts", scope: !1, file: !1, line: 1390, type: !605, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyOS_FiniInterrupts, variables: !607)
!616 = !DISubprogram(name: "PyOS_InterruptOccurred", scope: !1, file: !1, line: 1396, type: !586, isLocal: false, isDefinition: true, scopeLine: 1397, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyOS_InterruptOccurred, variables: !607)
!617 = !DISubprogram(name: "PyOS_AfterFork", scope: !1, file: !1, line: 1422, type: !605, isLocal: false, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyOS_AfterFork, variables: !607)
!618 = !DISubprogram(name: "_PyOS_IsMainThread", scope: !1, file: !1, line: 1441, type: !586, isLocal: false, isDefinition: true, scopeLine: 1442, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyOS_IsMainThread, variables: !607)
!619 = !DISubprogram(name: "signal_alarm", scope: !1, file: !1, line: 248, type: !137, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_alarm, variables: !620)
!620 = !{!621, !622, !623}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !619, file: !1, line: 248, type: !16)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !619, file: !1, line: 248, type: !16)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !619, file: !1, line: 250, type: !55)
!624 = !DISubprogram(name: "signal_setitimer", scope: !1, file: !1, line: 472, type: !137, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_setitimer, variables: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !643}
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !624, file: !1, line: 472, type: !16)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !624, file: !1, line: 472, type: !16)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first", scope: !624, file: !1, line: 474, type: !367)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interval", scope: !624, file: !1, line: 475, type: !367)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "which", scope: !624, file: !1, line: 476, type: !55)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !624, file: !1, line: 477, type: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "itimerval", file: !4, line: 108, size: 256, align: 64, elements: !633)
!633 = !{!634, !642}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !632, file: !4, line: 111, baseType: !635, size: 128, align: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !636, line: 30, size: 128, align: 64, elements: !637)
!636 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!637 = !{!638, !640}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !635, file: !636, line: 32, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !27, line: 148, baseType: !28)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !635, file: !636, line: 33, baseType: !641, size: 64, align: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !27, line: 150, baseType: !28)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !632, file: !4, line: 113, baseType: !635, size: 128, align: 64, offset: 128)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !624, file: !1, line: 477, type: !632)
!644 = !DISubprogram(name: "timeval_from_double", scope: !1, file: !1, line: 115, type: !645, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, variables: !648)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !367, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!648 = !{!649, !650}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !644, file: !1, line: 115, type: !367)
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tv", arg: 2, scope: !644, file: !1, line: 115, type: !647)
!651 = !DISubprogram(name: "itimer_retval", scope: !1, file: !1, line: 128, type: !652, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, variables: !655)
!652 = !DISubroutineType(types: !653)
!653 = !{!16, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!655 = !{!656, !657, !658, !659, !663}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !651, file: !1, line: 128, type: !654)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !651, file: !1, line: 130, type: !16)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !651, file: !1, line: 130, type: !16)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !1, line: 137, type: !16)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 137, column: 5)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 136, column: 71)
!662 = distinct !DILexicalBlock(scope: !651, file: !1, line: 136, column: 8)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !664, file: !1, line: 144, type: !16)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 144, column: 5)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 143, column: 74)
!666 = distinct !DILexicalBlock(scope: !651, file: !1, line: 143, column: 8)
!667 = !DISubprogram(name: "double_from_timeval", scope: !1, file: !1, line: 122, type: !668, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, variables: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!367, !647}
!670 = !{!671}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tv", arg: 1, scope: !667, file: !1, line: 122, type: !647)
!672 = !DISubprogram(name: "signal_getitimer", scope: !1, file: !1, line: 507, type: !137, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_getitimer, variables: !673)
!673 = !{!674, !675, !676, !677}
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !672, file: !1, line: 507, type: !16)
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !672, file: !1, line: 507, type: !16)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "which", scope: !672, file: !1, line: 509, type: !55)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !672, file: !1, line: 510, type: !632)
!678 = !DISubprogram(name: "signal_signal", scope: !1, file: !1, line: 288, type: !137, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_signal, variables: !679)
!679 = !{!680, !681, !682, !683, !684, !685}
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !678, file: !1, line: 288, type: !16)
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !678, file: !1, line: 288, type: !16)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !678, file: !1, line: 290, type: !16)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sig_num", scope: !678, file: !1, line: 291, type: !55)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_handler", scope: !678, file: !1, line: 292, type: !16)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !678, file: !1, line: 293, type: !356)
!686 = !DISubprogram(name: "signal_getsignal", scope: !1, file: !1, line: 365, type: !137, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_getsignal, variables: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !686, file: !1, line: 365, type: !16)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !686, file: !1, line: 365, type: !16)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sig_num", scope: !686, file: !1, line: 367, type: !55)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_handler", scope: !686, file: !1, line: 368, type: !16)
!692 = !DISubprogram(name: "signal_set_wakeup_fd", scope: !1, file: !1, line: 427, type: !137, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_set_wakeup_fd, variables: !693)
!693 = !{!694, !695, !696, !732, !733}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !692, file: !1, line: 427, type: !16)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !692, file: !1, line: 427, type: !16)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !692, file: !1, line: 429, type: !697)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !698, line: 46, size: 1152, align: 64, elements: !699)
!698 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!699 = !{!700, !702, !704, !706, !708, !710, !712, !713, !714, !715, !717, !719, !726, !727, !728}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !697, file: !698, line: 48, baseType: !701, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !27, line: 133, baseType: !107)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !697, file: !698, line: 53, baseType: !703, size: 64, align: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !27, line: 136, baseType: !107)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !697, file: !698, line: 61, baseType: !705, size: 64, align: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !27, line: 139, baseType: !107)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !697, file: !698, line: 62, baseType: !707, size: 32, align: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !27, line: 138, baseType: !352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !697, file: !698, line: 64, baseType: !709, size: 32, align: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !27, line: 134, baseType: !352)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !697, file: !698, line: 65, baseType: !711, size: 32, align: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !27, line: 135, baseType: !352)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !697, file: !698, line: 67, baseType: !55, size: 32, align: 32, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !697, file: !698, line: 69, baseType: !701, size: 64, align: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !697, file: !698, line: 74, baseType: !86, size: 64, align: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !697, file: !698, line: 78, baseType: !716, size: 64, align: 64, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !27, line: 162, baseType: !28)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !697, file: !698, line: 80, baseType: !718, size: 64, align: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !27, line: 167, baseType: !28)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !697, file: !698, line: 91, baseType: !720, size: 128, align: 64, offset: 576)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !721, line: 120, size: 128, align: 64, elements: !722)
!721 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !720, file: !721, line: 122, baseType: !639, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !720, file: !721, line: 123, baseType: !725, size: 64, align: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !27, line: 184, baseType: !28)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !697, file: !698, line: 92, baseType: !720, size: 128, align: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !697, file: !698, line: 93, baseType: !720, size: 128, align: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !697, file: !698, line: 106, baseType: !729, size: 192, align: 64, offset: 960)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 192, align: 64, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 3)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !692, file: !1, line: 430, type: !55)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_fd", scope: !692, file: !1, line: 430, type: !55)
!734 = !DISubprogram(name: "fstat64", scope: !735, file: !735, line: 517, type: !736, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, variables: !758)
!735 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!736 = !DISubroutineType(types: !737)
!737 = !{!55, !55, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !698, line: 119, size: 1152, align: 64, elements: !740)
!740 = !{!741, !742, !744, !745, !746, !747, !748, !749, !750, !751, !752, !754, !755, !756, !757}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !739, file: !698, line: 121, baseType: !701, size: 64, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !739, file: !698, line: 123, baseType: !743, size: 64, align: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !27, line: 137, baseType: !107)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !739, file: !698, line: 124, baseType: !705, size: 64, align: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !739, file: !698, line: 125, baseType: !707, size: 32, align: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !739, file: !698, line: 132, baseType: !709, size: 32, align: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !739, file: !698, line: 133, baseType: !711, size: 32, align: 32, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !739, file: !698, line: 135, baseType: !55, size: 32, align: 32, offset: 288)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !739, file: !698, line: 136, baseType: !701, size: 64, align: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !739, file: !698, line: 137, baseType: !86, size: 64, align: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !739, file: !698, line: 143, baseType: !716, size: 64, align: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !739, file: !698, line: 144, baseType: !753, size: 64, align: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !27, line: 168, baseType: !28)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !739, file: !698, line: 152, baseType: !720, size: 128, align: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !739, file: !698, line: 153, baseType: !720, size: 128, align: 64, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !739, file: !698, line: 154, baseType: !720, size: 128, align: 64, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !739, file: !698, line: 164, baseType: !729, size: 192, align: 64, offset: 960)
!758 = !{!759, !760}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !734, file: !735, line: 517, type: !55)
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !734, file: !735, line: 517, type: !738)
!761 = !DISubprogram(name: "signal_siginterrupt", scope: !1, file: !1, line: 403, type: !137, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_siginterrupt, variables: !762)
!762 = !{!763, !764, !765, !766}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !1, line: 403, type: !16)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !761, file: !1, line: 403, type: !16)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sig_num", scope: !761, file: !1, line: 405, type: !55)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flag", scope: !761, file: !1, line: 406, type: !55)
!767 = !DISubprogram(name: "signal_pause", scope: !1, file: !1, line: 265, type: !127, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @signal_pause, variables: !768)
!768 = !{!769, !770}
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !767, file: !1, line: 265, type: !16)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !771, file: !1, line: 267, type: !772)
!771 = distinct !DILexicalBlock(scope: !767, file: !1, line: 267, column: 5)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !774, line: 139, baseType: !775)
!774 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !774, line: 69, size: 1536, align: 64, elements: !776)
!776 = !{!777, !779, !780, !800, !803, !804, !805, !806, !807, !808, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !775, file: !774, line: 72, baseType: !778, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !774, line: 73, baseType: !778, size: 64, align: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !775, file: !774, line: 74, baseType: !781, size: 64, align: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !774, line: 44, baseType: !783)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !774, line: 19, size: 832, align: 64, elements: !784)
!784 = !{!785, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !774, line: 21, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !783, file: !774, line: 22, baseType: !778, size: 64, align: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !783, file: !774, line: 24, baseType: !16, size: 64, align: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !783, file: !774, line: 25, baseType: !16, size: 64, align: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !783, file: !774, line: 26, baseType: !16, size: 64, align: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !783, file: !774, line: 27, baseType: !16, size: 64, align: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !783, file: !774, line: 28, baseType: !16, size: 64, align: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !783, file: !774, line: 30, baseType: !16, size: 64, align: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !783, file: !774, line: 31, baseType: !16, size: 64, align: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !783, file: !774, line: 32, baseType: !16, size: 64, align: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !783, file: !774, line: 33, baseType: !55, size: 32, align: 32, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !783, file: !774, line: 34, baseType: !55, size: 32, align: 32, offset: 672)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !783, file: !774, line: 37, baseType: !55, size: 32, align: 32, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !783, file: !774, line: 43, baseType: !16, size: 64, align: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !775, file: !774, line: 76, baseType: !801, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !774, line: 50, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !775, file: !774, line: 77, baseType: !55, size: 32, align: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !775, file: !774, line: 78, baseType: !42, size: 8, align: 8, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !775, file: !774, line: 80, baseType: !42, size: 8, align: 8, offset: 296)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !775, file: !774, line: 85, baseType: !55, size: 32, align: 32, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !775, file: !774, line: 86, baseType: !55, size: 32, align: 32, offset: 352)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !775, file: !774, line: 88, baseType: !809, size: 64, align: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !774, line: 54, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!55, !16, !801, !55, !16}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !775, file: !774, line: 89, baseType: !809, size: 64, align: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !775, file: !774, line: 90, baseType: !16, size: 64, align: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !775, file: !774, line: 91, baseType: !16, size: 64, align: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !775, file: !774, line: 93, baseType: !16, size: 64, align: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !775, file: !774, line: 94, baseType: !16, size: 64, align: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !775, file: !774, line: 95, baseType: !16, size: 64, align: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !775, file: !774, line: 97, baseType: !16, size: 64, align: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !775, file: !774, line: 98, baseType: !16, size: 64, align: 64, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !775, file: !774, line: 99, baseType: !16, size: 64, align: 64, offset: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !775, file: !774, line: 101, baseType: !16, size: 64, align: 64, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !775, file: !774, line: 103, baseType: !55, size: 32, align: 32, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !775, file: !774, line: 105, baseType: !16, size: 64, align: 64, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !775, file: !774, line: 106, baseType: !28, size: 64, align: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !775, file: !774, line: 108, baseType: !55, size: 32, align: 32, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !775, file: !774, line: 109, baseType: !16, size: 64, align: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !775, file: !774, line: 134, baseType: !341, size: 64, align: 64, offset: 1408)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !775, file: !774, line: 135, baseType: !15, size: 64, align: 64, offset: 1472)
!830 = !DISubprogram(name: "signal_default_int_handler", scope: !1, file: !1, line: 155, type: !137, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_default_int_handler, variables: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !830, file: !1, line: 155, type: !16)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !830, file: !1, line: 155, type: !16)
!834 = !DISubprogram(name: "signal_pthread_kill", scope: !1, file: !1, line: 839, type: !137, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_pthread_kill, variables: !835)
!835 = !{!836, !837, !838, !839, !840}
!836 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !834, file: !1, line: 839, type: !16)
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !834, file: !1, line: 839, type: !16)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !834, file: !1, line: 841, type: !28)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !834, file: !1, line: 842, type: !55)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !834, file: !1, line: 843, type: !55)
!841 = !DISubprogram(name: "signal_pthread_sigmask", scope: !1, file: !1, line: 618, type: !137, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_pthread_sigmask, variables: !842)
!842 = !{!843, !844, !845, !846, !847, !858, !859}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !841, file: !1, line: 618, type: !16)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !841, file: !1, line: 618, type: !16)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "how", scope: !841, file: !1, line: 620, type: !55)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signals", scope: !841, file: !1, line: 621, type: !16)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !841, file: !1, line: 622, type: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !849, line: 37, baseType: !850)
!849 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !851, line: 31, baseType: !852)
!851 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!852 = !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 28, size: 1024, align: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !852, file: !851, line: 30, baseType: !855, size: 1024, align: 64)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1024, align: 64, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 16)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous", scope: !841, file: !1, line: 622, type: !848)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !841, file: !1, line: 623, type: !55)
!860 = !DISubprogram(name: "iterable_to_sigset", scope: !1, file: !1, line: 535, type: !861, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.__sigset_t*)* @iterable_to_sigset, variables: !864)
!861 = !DISubroutineType(types: !862)
!862 = !{!55, !16, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !875, !877}
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterable", arg: 1, scope: !860, file: !1, line: 535, type: !16)
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mask", arg: 2, scope: !860, file: !1, line: 535, type: !863)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !860, file: !1, line: 537, type: !55)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterator", scope: !860, file: !1, line: 538, type: !16)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !860, file: !1, line: 538, type: !16)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !860, file: !1, line: 539, type: !28)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !860, file: !1, line: 540, type: !55)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !873, file: !1, line: 559, type: !16)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 559, column: 9)
!874 = distinct !DILexicalBlock(scope: !860, file: !1, line: 549, column: 5)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !876, file: !1, line: 575, type: !16)
!876 = distinct !DILexicalBlock(scope: !860, file: !1, line: 575, column: 5)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !878, file: !1, line: 575, type: !16)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 575, column: 5)
!879 = distinct !DILexicalBlock(scope: !876, file: !1, line: 575, column: 5)
!880 = !DISubprogram(name: "sigset_to_set", scope: !1, file: !1, line: 582, type: !881, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.__sigset_t*)* @sigset_to_set, variables: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!16, !848}
!883 = !{!884, !885, !886, !887, !888, !895, !899, !901}
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mask", arg: 1, scope: !880, file: !1, line: 582, type: !848)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !880, file: !1, line: 584, type: !16)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !880, file: !1, line: 584, type: !16)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sig", scope: !880, file: !1, line: 585, type: !55)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !889, file: !1, line: 602, type: !16)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 602, column: 13)
!890 = distinct !DILexicalBlock(scope: !891, file: !1, line: 601, column: 29)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 601, column: 13)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 591, column: 38)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 591, column: 5)
!894 = distinct !DILexicalBlock(scope: !880, file: !1, line: 591, column: 5)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !896, file: !1, line: 606, type: !16)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 606, column: 13)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 605, column: 46)
!898 = distinct !DILexicalBlock(scope: !892, file: !1, line: 605, column: 13)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !900, file: !1, line: 607, type: !16)
!900 = distinct !DILexicalBlock(scope: !897, file: !1, line: 607, column: 13)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !902, file: !1, line: 610, type: !16)
!902 = distinct !DILexicalBlock(scope: !892, file: !1, line: 610, column: 9)
!903 = !DISubprogram(name: "signal_sigpending", scope: !1, file: !1, line: 654, type: !127, isLocal: true, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @signal_sigpending, variables: !904)
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !903, file: !1, line: 654, type: !16)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !903, file: !1, line: 656, type: !55)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !903, file: !1, line: 657, type: !848)
!908 = !DISubprogram(name: "signal_sigwait", scope: !1, file: !1, line: 673, type: !137, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_sigwait, variables: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916}
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !908, file: !1, line: 673, type: !16)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !908, file: !1, line: 673, type: !16)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signals", scope: !908, file: !1, line: 675, type: !16)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !908, file: !1, line: 676, type: !848)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !908, file: !1, line: 677, type: !55)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !908, file: !1, line: 677, type: !55)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !917, file: !1, line: 685, type: !772)
!917 = distinct !DILexicalBlock(scope: !908, file: !1, line: 685, column: 5)
!918 = !DISubprogram(name: "signal_sigwaitinfo", scope: !1, file: !1, line: 756, type: !137, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_sigwaitinfo, variables: !919)
!919 = !{!920, !921, !922, !923, !924, !987, !988}
!920 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !918, file: !1, line: 756, type: !16)
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !918, file: !1, line: 756, type: !16)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signals", scope: !918, file: !1, line: 758, type: !16)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !918, file: !1, line: 759, type: !848)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "si", scope: !918, file: !1, line: 760, type: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !926, line: 127, baseType: !927)
!926 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!927 = !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 62, size: 1024, align: 64, elements: !928)
!928 = !{!929, !930, !931, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !927, file: !926, line: 64, baseType: !55, size: 32, align: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !927, file: !926, line: 65, baseType: !55, size: 32, align: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !927, file: !926, line: 67, baseType: !55, size: 32, align: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !927, file: !926, line: 126, baseType: !933, size: 896, align: 64, offset: 128)
!933 = !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !926, line: 69, size: 896, align: 64, elements: !934)
!934 = !{!935, !939, !945, !956, !962, !972, !976, !981}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !933, file: !926, line: 71, baseType: !936, size: 896, align: 32)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 896, align: 32, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 28)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !933, file: !926, line: 78, baseType: !940, size: 64, align: 32)
!940 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 74, size: 64, align: 32, elements: !941)
!941 = !{!942, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !940, file: !926, line: 76, baseType: !943, size: 32, align: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !27, line: 142, baseType: !55)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !940, file: !926, line: 77, baseType: !709, size: 32, align: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !933, file: !926, line: 86, baseType: !946, size: 128, align: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 81, size: 128, align: 64, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !946, file: !926, line: 83, baseType: !55, size: 32, align: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !946, file: !926, line: 84, baseType: !55, size: 32, align: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !946, file: !926, line: 85, baseType: !951, size: 64, align: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !926, line: 36, baseType: !952)
!952 = !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !926, line: 32, size: 64, align: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !952, file: !926, line: 34, baseType: !55, size: 32, align: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !952, file: !926, line: 35, baseType: !15, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !933, file: !926, line: 94, baseType: !957, size: 128, align: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 89, size: 128, align: 64, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !957, file: !926, line: 91, baseType: !943, size: 32, align: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !957, file: !926, line: 92, baseType: !709, size: 32, align: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !957, file: !926, line: 93, baseType: !951, size: 64, align: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !933, file: !926, line: 104, baseType: !963, size: 256, align: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 97, size: 256, align: 64, elements: !964)
!964 = !{!965, !966, !967, !968, !971}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !963, file: !926, line: 99, baseType: !943, size: 32, align: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !963, file: !926, line: 100, baseType: !709, size: 32, align: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !963, file: !926, line: 101, baseType: !55, size: 32, align: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !963, file: !926, line: 102, baseType: !969, size: 64, align: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !926, line: 58, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !27, line: 144, baseType: !28)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !963, file: !926, line: 103, baseType: !969, size: 64, align: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !933, file: !926, line: 110, baseType: !973, size: 64, align: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 107, size: 64, align: 64, elements: !974)
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !973, file: !926, line: 109, baseType: !15, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !933, file: !926, line: 117, baseType: !977, size: 128, align: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 113, size: 128, align: 64, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !977, file: !926, line: 115, baseType: !28, size: 64, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !977, file: !926, line: 116, baseType: !55, size: 32, align: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !933, file: !926, line: 125, baseType: !982, size: 128, align: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !926, line: 120, size: 128, align: 64, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !982, file: !926, line: 122, baseType: !15, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !982, file: !926, line: 123, baseType: !55, size: 32, align: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !982, file: !926, line: 124, baseType: !352, size: 32, align: 32, offset: 96)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !918, file: !1, line: 761, type: !55)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !989, file: !1, line: 769, type: !772)
!989 = distinct !DILexicalBlock(scope: !918, file: !1, line: 769, column: 5)
!990 = !DISubprogram(name: "fill_siginfo", scope: !1, file: !1, line: 731, type: !991, isLocal: true, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.siginfo_t*)* @fill_siginfo, variables: !994)
!991 = !DISubroutineType(types: !992)
!992 = !{!16, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64, align: 64)
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "si", arg: 1, scope: !990, file: !1, line: 731, type: !993)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !990, file: !1, line: 733, type: !16)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !998, file: !1, line: 746, type: !16)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 746, column: 9)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 745, column: 27)
!1000 = distinct !DILexicalBlock(scope: !990, file: !1, line: 745, column: 9)
!1001 = !DISubprogram(name: "signal_sigtimedwait", scope: !1, file: !1, line: 788, type: !137, isLocal: true, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @signal_sigtimedwait, variables: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1012, !1013, !1014}
!1003 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1001, file: !1, line: 788, type: !16)
!1004 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1001, file: !1, line: 788, type: !16)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signals", scope: !1001, file: !1, line: 790, type: !16)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !1001, file: !1, line: 790, type: !16)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !1001, file: !1, line: 791, type: !720)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !1001, file: !1, line: 792, type: !848)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "si", scope: !1001, file: !1, line: 793, type: !925)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv_sec", scope: !1001, file: !1, line: 794, type: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !721, line: 75, baseType: !639)
!1012 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv_nsec", scope: !1001, file: !1, line: 795, type: !28)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1001, file: !1, line: 796, type: !55)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !1015, file: !1, line: 816, type: !772)
!1015 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 816, column: 5)
!1016 = !DISubprogram(name: "signal_handler", scope: !1, file: !1, line: 209, type: !357, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @signal_handler, variables: !1017)
!1017 = !{!1018, !1019}
!1018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sig_num", arg: 1, scope: !1016, file: !1, line: 209, type: !55)
!1019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !1016, file: !1, line: 211, type: !55)
!1020 = !DISubprogram(name: "trip_signal", scope: !1, file: !1, line: 188, type: !357, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, variables: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sig_num", arg: 1, scope: !1020, file: !1, line: 188, type: !55)
!1023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byte", scope: !1020, file: !1, line: 190, type: !370)
!1024 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !1020, file: !1, line: 191, type: !55)
!1025 = !DISubprogram(name: "report_wakeup_error", scope: !1, file: !1, line: 175, type: !1026, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @report_wakeup_error, variables: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!55, !15}
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !1025, file: !1, line: 175, type: !15)
!1030 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !1025, file: !1, line: 177, type: !55)
!1031 = !DISubprogram(name: "checksignals_witharg", scope: !1, file: !1, line: 169, type: !1026, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @checksignals_witharg, variables: !1032)
!1032 = !{!1033}
!1033 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 1, scope: !1031, file: !1, line: 169, type: !15)
!1034 = !DISubprogram(name: "finisignal", scope: !1, file: !1, line: 1291, type: !605, isLocal: true, isDefinition: true, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: true, variables: !1035)
!1035 = !{!1036, !1037, !1038, !1043, !1046, !1048, !1052, !1054, !1058, !1060}
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1034, file: !1, line: 1293, type: !55)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !1034, file: !1, line: 1294, type: !16)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1039, file: !1, line: 1306, type: !16)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1306, column: 9)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 1299, column: 32)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 1299, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 1299, column: 5)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1044, file: !1, line: 1306, type: !16)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1306, column: 9)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 1306, column: 9)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1047, file: !1, line: 1309, type: !16)
!1047 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 1309, column: 5)
!1048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1049, file: !1, line: 1309, type: !16)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 1309, column: 5)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 1309, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 1309, column: 5)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1053, file: !1, line: 1310, type: !16)
!1053 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 1310, column: 5)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1055, file: !1, line: 1310, type: !16)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1310, column: 5)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 1310, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 1310, column: 5)
!1058 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1059, file: !1, line: 1311, type: !16)
!1059 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 1311, column: 5)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1061, file: !1, line: 1311, type: !16)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 1311, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 1311, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 1311, column: 5)
!1064 = !DISubprogram(name: "_clear_pending_signals", scope: !1, file: !1, line: 1410, type: !605, isLocal: true, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, variables: !1065)
!1065 = !{!1066}
!1066 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1064, file: !1, line: 1412, type: !55)
!1067 = !{!1068, !1069, !1072, !1083, !1084, !1085, !1086, !1087, !1088, !1090, !1092, !1115, !1119, !1121, !1125, !1129, !1133, !1137, !1141, !1145, !1149, !1153, !1157, !1161, !1165, !1169, !1173, !1177, !1181, !1195, !1199, !1204, !1207}
!1068 = !DIGlobalVariable(name: "main_thread", scope: !0, file: !1, line: 81, type: !28, isLocal: true, isDefinition: true, variable: i64* @main_thread)
!1069 = !DIGlobalVariable(name: "main_pid", scope: !0, file: !1, line: 82, type: !1070, isLocal: true, isDefinition: true, variable: i32* @main_pid)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1071, line: 98, baseType: !943)
!1071 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1072 = !DIGlobalVariable(name: "Handlers", scope: !0, file: !1, line: 88, type: !1073, isLocal: true, isDefinition: true, variable: [65 x %struct.anon]* @Handlers)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 8320, align: 64, elements: !1081)
!1074 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1075)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 85, size: 128, align: 64, elements: !1076)
!1076 = !{!1077, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tripped", scope: !1075, file: !1, line: 86, baseType: !1078, size: 32, align: 32)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !355, line: 40, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !851, line: 23, baseType: !55)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1075, file: !1, line: 87, baseType: !16, size: 64, align: 64, offset: 64)
!1081 = !{!1082}
!1082 = !DISubrange(count: 65)
!1083 = !DIGlobalVariable(name: "DefaultHandler", scope: !0, file: !1, line: 95, type: !16, isLocal: true, isDefinition: true, variable: %struct._object** @DefaultHandler)
!1084 = !DIGlobalVariable(name: "IgnoreHandler", scope: !0, file: !1, line: 96, type: !16, isLocal: true, isDefinition: true, variable: %struct._object** @IgnoreHandler)
!1085 = !DIGlobalVariable(name: "IntHandler", scope: !0, file: !1, line: 97, type: !16, isLocal: true, isDefinition: true, variable: %struct._object** @IntHandler)
!1086 = !DIGlobalVariable(name: "ItimerError", scope: !0, file: !1, line: 111, type: !16, isLocal: true, isDefinition: true, variable: %struct._object** @ItimerError)
!1087 = !DIGlobalVariable(name: "initialized", scope: !0, file: !1, line: 703, type: !55, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariable(name: "SiginfoType", scope: !0, file: !1, line: 728, type: !1089, isLocal: true, isDefinition: true, variable: %struct._typeobject* @SiginfoType)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !18, line: 422, baseType: !31)
!1090 = !DIGlobalVariable(name: "wakeup_fd", scope: !0, file: !1, line: 90, type: !1091, isLocal: true, isDefinition: true, variable: i32* @wakeup_fd)
!1091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1078)
!1092 = !DIGlobalVariable(name: "signalmodule", scope: !0, file: !1, line: 957, type: !1093, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @signalmodule)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1094, line: 47, size: 832, align: 64, elements: !1095)
!1094 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1095 = !{!1096, !1105, !1106, !1107, !1108, !1111, !1112, !1113, !1114}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1093, file: !1094, line: 48, baseType: !1097, size: 320, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1094, line: 38, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1094, line: 33, size: 320, align: 64, elements: !1099)
!1099 = !{!1100, !1101, !1103, !1104}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1098, file: !1094, line: 34, baseType: !17, size: 128, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1098, file: !1094, line: 35, baseType: !1102, size: 64, align: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1098, file: !1094, line: 36, baseType: !22, size: 64, align: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1098, file: !1094, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1093, file: !1094, line: 49, baseType: !40, size: 64, align: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1093, file: !1094, line: 50, baseType: !40, size: 64, align: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1093, file: !1094, line: 51, baseType: !22, size: 64, align: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1093, file: !1094, line: 52, baseType: !1109, size: 64, align: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !292, line: 47, baseType: !291)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1093, file: !1094, line: 53, baseType: !153, size: 64, align: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1093, file: !1094, line: 54, baseType: !270, size: 64, align: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1093, file: !1094, line: 55, baseType: !153, size: 64, align: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1093, file: !1094, line: 56, baseType: !340, size: 64, align: 64, offset: 768)
!1115 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 921, type: !1116, isLocal: true, isDefinition: true, variable: [1462 x i8]* @module_doc)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 11696, align: 8, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 1462)
!1119 = !DIGlobalVariable(name: "signal_methods", scope: !0, file: !1, line: 871, type: !1120, isLocal: true, isDefinition: true, variable: [16 x %struct.PyMethodDef]* @signal_methods)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 4096, align: 64, elements: !856)
!1121 = !DIGlobalVariable(name: "alarm_doc", scope: !0, file: !1, line: 257, type: !1122, isLocal: true, isDefinition: true, variable: [81 x i8]* @alarm_doc)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 648, align: 8, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 81)
!1125 = !DIGlobalVariable(name: "setitimer_doc", scope: !0, file: !1, line: 493, type: !1126, isLocal: true, isDefinition: true, variable: [281 x i8]* @setitimer_doc)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2248, align: 8, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 281)
!1129 = !DIGlobalVariable(name: "getitimer_doc", scope: !0, file: !1, line: 523, type: !1130, isLocal: true, isDefinition: true, variable: [57 x i8]* @getitimer_doc)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 456, align: 8, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 57)
!1133 = !DIGlobalVariable(name: "signal_doc", scope: !0, file: !1, line: 352, type: !1134, isLocal: true, isDefinition: true, variable: [370 x i8]* @signal_doc)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2960, align: 8, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 370)
!1137 = !DIGlobalVariable(name: "getsignal_doc", scope: !0, file: !1, line: 386, type: !1138, isLocal: true, isDefinition: true, variable: [308 x i8]* @getsignal_doc)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2464, align: 8, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 308)
!1141 = !DIGlobalVariable(name: "set_wakeup_fd_doc", scope: !0, file: !1, line: 449, type: !1142, isLocal: true, isDefinition: true, variable: [199 x i8]* @set_wakeup_fd_doc)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1592, align: 8, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 199)
!1145 = !DIGlobalVariable(name: "siginterrupt_doc", scope: !0, file: !1, line: 396, type: !1146, isLocal: true, isDefinition: true, variable: [190 x i8]* @siginterrupt_doc)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1520, align: 8, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 190)
!1149 = !DIGlobalVariable(name: "pause_doc", scope: !0, file: !1, line: 279, type: !1150, isLocal: true, isDefinition: true, variable: [38 x i8]* @pause_doc)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 304, align: 8, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 38)
!1153 = !DIGlobalVariable(name: "default_int_handler_doc", scope: !0, file: !1, line: 161, type: !1154, isLocal: true, isDefinition: true, variable: [107 x i8]* @default_int_handler_doc)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 856, align: 8, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 107)
!1157 = !DIGlobalVariable(name: "signal_pthread_kill_doc", scope: !0, file: !1, line: 862, type: !1158, isLocal: true, isDefinition: true, variable: [60 x i8]* @signal_pthread_kill_doc)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 480, align: 8, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 60)
!1161 = !DIGlobalVariable(name: "signal_pthread_sigmask_doc", scope: !0, file: !1, line: 645, type: !1162, isLocal: true, isDefinition: true, variable: [99 x i8]* @signal_pthread_sigmask_doc)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 792, align: 8, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 99)
!1165 = !DIGlobalVariable(name: "signal_sigpending_doc", scope: !0, file: !1, line: 664, type: !1166, isLocal: true, isDefinition: true, variable: [47 x i8]* @signal_sigpending_doc)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, align: 8, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 47)
!1169 = !DIGlobalVariable(name: "signal_sigwait_doc", scope: !0, file: !1, line: 696, type: !1170, isLocal: true, isDefinition: true, variable: [42 x i8]* @signal_sigwait_doc)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 336, align: 8, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 42)
!1173 = !DIGlobalVariable(name: "signal_sigwaitinfo_doc", scope: !0, file: !1, line: 778, type: !1174, isLocal: true, isDefinition: true, variable: [188 x i8]* @signal_sigwaitinfo_doc)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1504, align: 8, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 188)
!1177 = !DIGlobalVariable(name: "signal_sigtimedwait_doc", scope: !0, file: !1, line: 829, type: !1178, isLocal: true, isDefinition: true, variable: [156 x i8]* @signal_sigtimedwait_doc)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1248, align: 8, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 156)
!1181 = !DIGlobalVariable(name: "struct_siginfo_desc", scope: !0, file: !1, line: 721, type: !1182, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_siginfo_desc)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !1183, line: 20, baseType: !1184)
!1183 = !DIFile(filename: "Include/structseq.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !1183, line: 15, size: 256, align: 64, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1194}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1184, file: !1183, line: 16, baseType: !63, size: 64, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1184, file: !1183, line: 17, baseType: !63, size: 64, align: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1184, file: !1183, line: 18, baseType: !1189, size: 64, align: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64, align: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !1183, line: 10, size: 128, align: 64, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1190, file: !1183, line: 11, baseType: !63, size: 64, align: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1190, file: !1183, line: 12, baseType: !63, size: 64, align: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !1184, file: !1183, line: 19, baseType: !55, size: 32, align: 32, offset: 192)
!1195 = !DIGlobalVariable(name: "struct_siginfo__doc__", scope: !0, file: !1, line: 715, type: !1196, isLocal: true, isDefinition: true, variable: [226 x i8]* @struct_siginfo__doc__)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1808, align: 8, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 226)
!1199 = !DIGlobalVariable(name: "struct_siginfo_fields", scope: !0, file: !1, line: 704, type: !1200, isLocal: true, isDefinition: true, variable: [8 x %struct.PyStructSequence_Field]* @struct_siginfo_fields)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 1024, align: 64, elements: !1202)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !1183, line: 13, baseType: !1190)
!1202 = !{!1203}
!1203 = !DISubrange(count: 8)
!1204 = !DIGlobalVariable(name: "old_siginthandler", scope: !0, file: !1, line: 104, type: !1205, isLocal: true, isDefinition: true, variable: void (i32)** @old_siginthandler)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyOS_sighandler_t", file: !1206, line: 294, baseType: !356)
!1206 = !DIFile(filename: "Include/pythonrun.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1207 = !DIGlobalVariable(name: "is_tripped", scope: !0, file: !1, line: 93, type: !1091, isLocal: true, isDefinition: true, variable: i32* @is_tripped)
!1208 = !{i32 2, !"Dwarf Version", i32 4}
!1209 = !{i32 2, !"Debug Info Version", i32 3}
!1210 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1211 = !DIExpression()
!1212 = !DILocation(line: 460, column: 26, scope: !376)
!1213 = !DILocation(line: 462, column: 18, scope: !376)
!1214 = !{!1215, !1215, i64 0}
!1215 = !{!"int", !1216, i64 0}
!1216 = !{!"omnipotent char", !1217, i64 0}
!1217 = !{!"Simple C/C++ TBAA"}
!1218 = !DILocation(line: 462, column: 9, scope: !376)
!1219 = !DILocation(line: 463, column: 12, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !376, file: !1, line: 463, column: 9)
!1221 = !DILocation(line: 463, column: 9, scope: !376)
!1222 = !DILocation(line: 465, column: 15, scope: !376)
!1223 = !DILocation(line: 466, column: 5, scope: !376)
!1224 = !DILocation(line: 976, column: 19, scope: !382)
!1225 = !DILocation(line: 976, column: 17, scope: !382)
!1226 = !{!1227, !1227, i64 0}
!1227 = !{!"long", !1216, i64 0}
!1228 = !DILocation(line: 977, column: 16, scope: !382)
!1229 = !DILocation(line: 977, column: 14, scope: !382)
!1230 = !DILocation(line: 981, column: 9, scope: !382)
!1231 = !DILocation(line: 972, column: 15, scope: !382)
!1232 = !DILocation(line: 982, column: 11, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !382, file: !1, line: 982, column: 9)
!1234 = !DILocation(line: 982, column: 9, scope: !382)
!1235 = !DILocation(line: 986, column: 9, scope: !382)
!1236 = !DILocation(line: 987, column: 13, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 987, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 986, column: 23)
!1239 = distinct !DILexicalBlock(scope: !382, file: !1, line: 986, column: 9)
!1240 = !DILocation(line: 987, column: 76, scope: !1237)
!1241 = !DILocation(line: 987, column: 13, scope: !1238)
!1242 = !DILocation(line: 990, column: 5, scope: !382)
!1243 = !{!1244, !1227, i64 0}
!1244 = !{!"_object", !1227, i64 0, !1245, i64 8}
!1245 = !{!"any pointer", !1216, i64 0}
!1246 = !DILocation(line: 991, column: 5, scope: !382)
!1247 = !DILocation(line: 996, column: 9, scope: !382)
!1248 = !DILocation(line: 972, column: 19, scope: !382)
!1249 = !DILocation(line: 998, column: 26, scope: !382)
!1250 = !DILocation(line: 998, column: 24, scope: !382)
!1251 = !{!1245, !1245, i64 0}
!1252 = !DILocation(line: 972, column: 23, scope: !382)
!1253 = !DILocation(line: 999, column: 10, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !382, file: !1, line: 999, column: 9)
!1255 = !DILocation(line: 999, column: 12, scope: !1254)
!1256 = !DILocation(line: 999, column: 15, scope: !1254)
!1257 = !DILocation(line: 999, column: 53, scope: !1254)
!1258 = !DILocation(line: 999, column: 9, scope: !382)
!1259 = !DILocation(line: 1002, column: 25, scope: !382)
!1260 = !DILocation(line: 1002, column: 23, scope: !382)
!1261 = !DILocation(line: 1003, column: 10, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1003, column: 9)
!1263 = !DILocation(line: 1003, column: 12, scope: !1262)
!1264 = !DILocation(line: 1003, column: 15, scope: !1262)
!1265 = !DILocation(line: 1003, column: 53, scope: !1262)
!1266 = !DILocation(line: 1003, column: 9, scope: !382)
!1267 = !DILocation(line: 1006, column: 9, scope: !382)
!1268 = !DILocation(line: 1007, column: 10, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1007, column: 9)
!1270 = !DILocation(line: 1007, column: 12, scope: !1269)
!1271 = !DILocation(line: 1007, column: 15, scope: !1269)
!1272 = !DILocation(line: 1007, column: 50, scope: !1269)
!1273 = !DILocation(line: 1007, column: 9, scope: !382)
!1274 = !DILocation(line: 1009, column: 5, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!1276 = !DILocation(line: 1009, column: 5, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1009, column: 5)
!1278 = !DILocation(line: 1009, column: 5, scope: !391)
!1279 = !DILocation(line: 1009, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1277, file: !1, discriminator: 3)
!1281 = !{!1244, !1245, i64 8}
!1282 = !{!1283, !1245, i64 48}
!1283 = !{!"_typeobject", !1284, i64 0, !1245, i64 24, !1227, i64 32, !1227, i64 40, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1245, i64 72, !1245, i64 80, !1245, i64 88, !1245, i64 96, !1245, i64 104, !1245, i64 112, !1245, i64 120, !1245, i64 128, !1245, i64 136, !1245, i64 144, !1245, i64 152, !1245, i64 160, !1227, i64 168, !1245, i64 176, !1245, i64 184, !1245, i64 192, !1245, i64 200, !1227, i64 208, !1245, i64 216, !1245, i64 224, !1245, i64 232, !1245, i64 240, !1245, i64 248, !1245, i64 256, !1245, i64 264, !1245, i64 272, !1245, i64 280, !1227, i64 288, !1245, i64 296, !1245, i64 304, !1245, i64 312, !1245, i64 320, !1245, i64 328, !1245, i64 336, !1245, i64 344, !1245, i64 352, !1245, i64 360, !1245, i64 368, !1245, i64 376, !1215, i64 384, !1245, i64 392}
!1284 = !{!"", !1244, i64 0, !1227, i64 16}
!1285 = !DILocation(line: 1012, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1012, column: 9)
!1287 = !DILocation(line: 1012, column: 9, scope: !382)
!1288 = !DILocation(line: 1016, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1016, column: 9)
!1290 = !DILocation(line: 1016, column: 9, scope: !382)
!1291 = !DILocation(line: 1020, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1020, column: 9)
!1293 = !DILocation(line: 1020, column: 9, scope: !382)
!1294 = !DILocation(line: 1024, column: 22, scope: !382)
!1295 = !DILocation(line: 1024, column: 20, scope: !382)
!1296 = !DILocation(line: 1025, column: 10, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1025, column: 9)
!1298 = !DILocation(line: 1025, column: 9, scope: !382)
!1299 = !DILocation(line: 1027, column: 5, scope: !382)
!1300 = !DILocation(line: 1029, column: 25, scope: !382)
!1301 = !{!1302, !1215, i64 0}
!1302 = !{!"", !1215, i64 0, !1245, i64 8}
!1303 = !DILocation(line: 973, column: 9, scope: !382)
!1304 = !DILocation(line: 1030, column: 5, scope: !395)
!1305 = !DILocation(line: 1032, column: 13, scope: !393)
!1306 = !DILocation(line: 1031, column: 16, scope: !393)
!1307 = !DILocation(line: 1033, column: 21, scope: !393)
!1308 = !DILocation(line: 1033, column: 29, scope: !393)
!1309 = !DILocation(line: 1034, column: 13, scope: !393)
!1310 = !DILocation(line: 1035, column: 32, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !393, file: !1, line: 1034, column: 13)
!1312 = !DILocation(line: 1035, column: 25, scope: !1311)
!1313 = !DILocation(line: 1035, column: 30, scope: !1311)
!1314 = !{!1302, !1245, i64 8}
!1315 = !DILocation(line: 1035, column: 13, scope: !1311)
!1316 = !DILocation(line: 1037, column: 32, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 1036, column: 18)
!1318 = !DILocation(line: 1037, column: 25, scope: !1317)
!1319 = !DILocation(line: 1037, column: 30, scope: !1317)
!1320 = !DILocation(line: 1037, column: 13, scope: !1317)
!1321 = !DILocation(line: 1039, column: 25, scope: !1317)
!1322 = !DILocation(line: 1039, column: 30, scope: !1317)
!1323 = !DILocation(line: 1040, column: 9, scope: !393)
!1324 = !DILocation(line: 1042, column: 26, scope: !399)
!1325 = !DILocation(line: 1042, column: 34, scope: !399)
!1326 = !DILocation(line: 1042, column: 31, scope: !399)
!1327 = !DILocation(line: 1042, column: 9, scope: !382)
!1328 = !DILocation(line: 1044, column: 9, scope: !398)
!1329 = !DILocation(line: 1045, column: 9, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !397, file: !1, discriminator: 1)
!1331 = !DILocation(line: 1045, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !397, file: !1, line: 1045, column: 9)
!1333 = !DILocation(line: 1045, column: 9, scope: !397)
!1334 = !DILocation(line: 1045, column: 9, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 3)
!1336 = !DILocation(line: 1046, column: 33, scope: !398)
!1337 = !DILocation(line: 1046, column: 31, scope: !398)
!1338 = !DILocation(line: 1047, column: 29, scope: !398)
!1339 = !DILocation(line: 1047, column: 27, scope: !398)
!1340 = !DILocation(line: 1048, column: 5, scope: !398)
!1341 = !DILocation(line: 1051, column: 9, scope: !382)
!1342 = !DILocation(line: 1052, column: 5, scope: !382)
!1343 = !DILocation(line: 1053, column: 5, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!1345 = !DILocation(line: 1053, column: 5, scope: !404)
!1346 = !DILocation(line: 1053, column: 5, scope: !401)
!1347 = !DILocation(line: 1053, column: 5, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 4)
!1349 = !DILocation(line: 1053, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !403, file: !1, line: 1053, column: 5)
!1351 = !DILocation(line: 1053, column: 5, scope: !403)
!1352 = !DILocation(line: 1053, column: 5, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1350, file: !1, discriminator: 6)
!1354 = !DILocation(line: 1056, column: 9, scope: !382)
!1355 = !DILocation(line: 1057, column: 5, scope: !382)
!1356 = !DILocation(line: 1058, column: 5, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!1358 = !DILocation(line: 1058, column: 5, scope: !409)
!1359 = !DILocation(line: 1058, column: 5, scope: !406)
!1360 = !DILocation(line: 1058, column: 5, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 4)
!1362 = !DILocation(line: 1058, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !408, file: !1, line: 1058, column: 5)
!1364 = !DILocation(line: 1058, column: 5, scope: !408)
!1365 = !DILocation(line: 1058, column: 5, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1363, file: !1, discriminator: 6)
!1367 = !DILocation(line: 1066, column: 9, scope: !382)
!1368 = !DILocation(line: 1067, column: 5, scope: !382)
!1369 = !DILocation(line: 1068, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 1)
!1371 = !DILocation(line: 1068, column: 5, scope: !414)
!1372 = !DILocation(line: 1068, column: 5, scope: !411)
!1373 = !DILocation(line: 1068, column: 5, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 4)
!1375 = !DILocation(line: 1068, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !413, file: !1, line: 1068, column: 5)
!1377 = !DILocation(line: 1068, column: 5, scope: !413)
!1378 = !DILocation(line: 1068, column: 5, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1376, file: !1, discriminator: 6)
!1380 = !DILocation(line: 1071, column: 9, scope: !382)
!1381 = !DILocation(line: 1072, column: 5, scope: !382)
!1382 = !DILocation(line: 1073, column: 5, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 1)
!1384 = !DILocation(line: 1073, column: 5, scope: !419)
!1385 = !DILocation(line: 1073, column: 5, scope: !416)
!1386 = !DILocation(line: 1073, column: 5, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 4)
!1388 = !DILocation(line: 1073, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !418, file: !1, line: 1073, column: 5)
!1390 = !DILocation(line: 1073, column: 5, scope: !418)
!1391 = !DILocation(line: 1073, column: 5, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1389, file: !1, discriminator: 6)
!1393 = !DILocation(line: 1076, column: 9, scope: !382)
!1394 = !DILocation(line: 1077, column: 5, scope: !382)
!1395 = !DILocation(line: 1078, column: 5, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!1397 = !DILocation(line: 1078, column: 5, scope: !424)
!1398 = !DILocation(line: 1078, column: 5, scope: !421)
!1399 = !DILocation(line: 1078, column: 5, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 4)
!1401 = !DILocation(line: 1078, column: 5, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !423, file: !1, line: 1078, column: 5)
!1403 = !DILocation(line: 1078, column: 5, scope: !423)
!1404 = !DILocation(line: 1078, column: 5, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1402, file: !1, discriminator: 6)
!1406 = !DILocation(line: 1081, column: 9, scope: !382)
!1407 = !DILocation(line: 1082, column: 5, scope: !382)
!1408 = !DILocation(line: 1083, column: 5, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 1)
!1410 = !DILocation(line: 1083, column: 5, scope: !429)
!1411 = !DILocation(line: 1083, column: 5, scope: !426)
!1412 = !DILocation(line: 1083, column: 5, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 4)
!1414 = !DILocation(line: 1083, column: 5, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !428, file: !1, line: 1083, column: 5)
!1416 = !DILocation(line: 1083, column: 5, scope: !428)
!1417 = !DILocation(line: 1083, column: 5, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1415, file: !1, discriminator: 6)
!1419 = !DILocation(line: 1086, column: 9, scope: !382)
!1420 = !DILocation(line: 1087, column: 5, scope: !382)
!1421 = !DILocation(line: 1088, column: 5, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 1)
!1423 = !DILocation(line: 1088, column: 5, scope: !434)
!1424 = !DILocation(line: 1088, column: 5, scope: !431)
!1425 = !DILocation(line: 1088, column: 5, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 4)
!1427 = !DILocation(line: 1088, column: 5, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !433, file: !1, line: 1088, column: 5)
!1429 = !DILocation(line: 1088, column: 5, scope: !433)
!1430 = !DILocation(line: 1088, column: 5, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 6)
!1432 = !DILocation(line: 1096, column: 9, scope: !382)
!1433 = !DILocation(line: 1097, column: 5, scope: !382)
!1434 = !DILocation(line: 1098, column: 5, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 1)
!1436 = !DILocation(line: 1098, column: 5, scope: !439)
!1437 = !DILocation(line: 1098, column: 5, scope: !436)
!1438 = !DILocation(line: 1098, column: 5, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 4)
!1440 = !DILocation(line: 1098, column: 5, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 1098, column: 5)
!1442 = !DILocation(line: 1098, column: 5, scope: !438)
!1443 = !DILocation(line: 1098, column: 5, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 6)
!1445 = !DILocation(line: 1101, column: 9, scope: !382)
!1446 = !DILocation(line: 1102, column: 5, scope: !382)
!1447 = !DILocation(line: 1103, column: 5, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 1)
!1449 = !DILocation(line: 1103, column: 5, scope: !444)
!1450 = !DILocation(line: 1103, column: 5, scope: !441)
!1451 = !DILocation(line: 1103, column: 5, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!1453 = !DILocation(line: 1103, column: 5, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !443, file: !1, line: 1103, column: 5)
!1455 = !DILocation(line: 1103, column: 5, scope: !443)
!1456 = !DILocation(line: 1103, column: 5, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1454, file: !1, discriminator: 6)
!1458 = !DILocation(line: 1106, column: 9, scope: !382)
!1459 = !DILocation(line: 1107, column: 5, scope: !382)
!1460 = !DILocation(line: 1108, column: 5, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 1)
!1462 = !DILocation(line: 1108, column: 5, scope: !449)
!1463 = !DILocation(line: 1108, column: 5, scope: !446)
!1464 = !DILocation(line: 1108, column: 5, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 4)
!1466 = !DILocation(line: 1108, column: 5, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !448, file: !1, line: 1108, column: 5)
!1468 = !DILocation(line: 1108, column: 5, scope: !448)
!1469 = !DILocation(line: 1108, column: 5, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1467, file: !1, discriminator: 6)
!1471 = !DILocation(line: 1111, column: 9, scope: !382)
!1472 = !DILocation(line: 1112, column: 5, scope: !382)
!1473 = !DILocation(line: 1113, column: 5, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 1)
!1475 = !DILocation(line: 1113, column: 5, scope: !454)
!1476 = !DILocation(line: 1113, column: 5, scope: !451)
!1477 = !DILocation(line: 1113, column: 5, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 4)
!1479 = !DILocation(line: 1113, column: 5, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1113, column: 5)
!1481 = !DILocation(line: 1113, column: 5, scope: !453)
!1482 = !DILocation(line: 1113, column: 5, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1480, file: !1, discriminator: 6)
!1484 = !DILocation(line: 1116, column: 9, scope: !382)
!1485 = !DILocation(line: 1117, column: 5, scope: !382)
!1486 = !DILocation(line: 1118, column: 5, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 1)
!1488 = !DILocation(line: 1118, column: 5, scope: !459)
!1489 = !DILocation(line: 1118, column: 5, scope: !456)
!1490 = !DILocation(line: 1118, column: 5, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !458, file: !1, discriminator: 4)
!1492 = !DILocation(line: 1118, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1118, column: 5)
!1494 = !DILocation(line: 1118, column: 5, scope: !458)
!1495 = !DILocation(line: 1118, column: 5, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1493, file: !1, discriminator: 6)
!1497 = !DILocation(line: 1121, column: 9, scope: !382)
!1498 = !DILocation(line: 1122, column: 5, scope: !382)
!1499 = !DILocation(line: 1123, column: 5, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 1)
!1501 = !DILocation(line: 1123, column: 5, scope: !464)
!1502 = !DILocation(line: 1123, column: 5, scope: !461)
!1503 = !DILocation(line: 1123, column: 5, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!1505 = !DILocation(line: 1123, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !463, file: !1, line: 1123, column: 5)
!1507 = !DILocation(line: 1123, column: 5, scope: !463)
!1508 = !DILocation(line: 1123, column: 5, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1506, file: !1, discriminator: 6)
!1510 = !DILocation(line: 1126, column: 9, scope: !382)
!1511 = !DILocation(line: 1127, column: 5, scope: !382)
!1512 = !DILocation(line: 1128, column: 5, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 1)
!1514 = !DILocation(line: 1128, column: 5, scope: !469)
!1515 = !DILocation(line: 1128, column: 5, scope: !466)
!1516 = !DILocation(line: 1128, column: 5, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 4)
!1518 = !DILocation(line: 1128, column: 5, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !468, file: !1, line: 1128, column: 5)
!1520 = !DILocation(line: 1128, column: 5, scope: !468)
!1521 = !DILocation(line: 1128, column: 5, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1519, file: !1, discriminator: 6)
!1523 = !DILocation(line: 1131, column: 9, scope: !382)
!1524 = !DILocation(line: 1132, column: 5, scope: !382)
!1525 = !DILocation(line: 1133, column: 5, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!1527 = !DILocation(line: 1133, column: 5, scope: !474)
!1528 = !DILocation(line: 1133, column: 5, scope: !471)
!1529 = !DILocation(line: 1133, column: 5, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 4)
!1531 = !DILocation(line: 1133, column: 5, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !473, file: !1, line: 1133, column: 5)
!1533 = !DILocation(line: 1133, column: 5, scope: !473)
!1534 = !DILocation(line: 1133, column: 5, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 6)
!1536 = !DILocation(line: 1136, column: 9, scope: !382)
!1537 = !DILocation(line: 1137, column: 5, scope: !382)
!1538 = !DILocation(line: 1138, column: 5, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!1540 = !DILocation(line: 1138, column: 5, scope: !479)
!1541 = !DILocation(line: 1138, column: 5, scope: !476)
!1542 = !DILocation(line: 1138, column: 5, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 4)
!1544 = !DILocation(line: 1138, column: 5, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !478, file: !1, line: 1138, column: 5)
!1546 = !DILocation(line: 1138, column: 5, scope: !478)
!1547 = !DILocation(line: 1138, column: 5, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1545, file: !1, discriminator: 6)
!1549 = !DILocation(line: 1141, column: 9, scope: !382)
!1550 = !DILocation(line: 1142, column: 5, scope: !382)
!1551 = !DILocation(line: 1143, column: 5, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!1553 = !DILocation(line: 1143, column: 5, scope: !484)
!1554 = !DILocation(line: 1143, column: 5, scope: !481)
!1555 = !DILocation(line: 1143, column: 5, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 4)
!1557 = !DILocation(line: 1143, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1143, column: 5)
!1559 = !DILocation(line: 1143, column: 5, scope: !483)
!1560 = !DILocation(line: 1143, column: 5, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1558, file: !1, discriminator: 6)
!1562 = !DILocation(line: 1146, column: 9, scope: !382)
!1563 = !DILocation(line: 1147, column: 5, scope: !382)
!1564 = !DILocation(line: 1148, column: 5, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!1566 = !DILocation(line: 1148, column: 5, scope: !489)
!1567 = !DILocation(line: 1148, column: 5, scope: !486)
!1568 = !DILocation(line: 1148, column: 5, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 4)
!1570 = !DILocation(line: 1148, column: 5, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !488, file: !1, line: 1148, column: 5)
!1572 = !DILocation(line: 1148, column: 5, scope: !488)
!1573 = !DILocation(line: 1148, column: 5, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1571, file: !1, discriminator: 6)
!1575 = !DILocation(line: 1151, column: 9, scope: !382)
!1576 = !DILocation(line: 1152, column: 5, scope: !382)
!1577 = !DILocation(line: 1153, column: 5, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 1)
!1579 = !DILocation(line: 1153, column: 5, scope: !494)
!1580 = !DILocation(line: 1153, column: 5, scope: !491)
!1581 = !DILocation(line: 1153, column: 5, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 4)
!1583 = !DILocation(line: 1153, column: 5, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !493, file: !1, line: 1153, column: 5)
!1585 = !DILocation(line: 1153, column: 5, scope: !493)
!1586 = !DILocation(line: 1153, column: 5, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 6)
!1588 = !DILocation(line: 1156, column: 9, scope: !382)
!1589 = !DILocation(line: 1157, column: 5, scope: !382)
!1590 = !DILocation(line: 1158, column: 5, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 1)
!1592 = !DILocation(line: 1158, column: 5, scope: !499)
!1593 = !DILocation(line: 1158, column: 5, scope: !496)
!1594 = !DILocation(line: 1158, column: 5, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !498, file: !1, discriminator: 4)
!1596 = !DILocation(line: 1158, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !498, file: !1, line: 1158, column: 5)
!1598 = !DILocation(line: 1158, column: 5, scope: !498)
!1599 = !DILocation(line: 1158, column: 5, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1597, file: !1, discriminator: 6)
!1601 = !DILocation(line: 1161, column: 9, scope: !382)
!1602 = !DILocation(line: 1162, column: 5, scope: !382)
!1603 = !DILocation(line: 1163, column: 5, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !501, file: !1, discriminator: 1)
!1605 = !DILocation(line: 1163, column: 5, scope: !504)
!1606 = !DILocation(line: 1163, column: 5, scope: !501)
!1607 = !DILocation(line: 1163, column: 5, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 4)
!1609 = !DILocation(line: 1163, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !503, file: !1, line: 1163, column: 5)
!1611 = !DILocation(line: 1163, column: 5, scope: !503)
!1612 = !DILocation(line: 1163, column: 5, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1610, file: !1, discriminator: 6)
!1614 = !DILocation(line: 1166, column: 9, scope: !382)
!1615 = !DILocation(line: 1167, column: 5, scope: !382)
!1616 = !DILocation(line: 1168, column: 5, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!1618 = !DILocation(line: 1168, column: 5, scope: !509)
!1619 = !DILocation(line: 1168, column: 5, scope: !506)
!1620 = !DILocation(line: 1168, column: 5, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!1622 = !DILocation(line: 1168, column: 5, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1168, column: 5)
!1624 = !DILocation(line: 1168, column: 5, scope: !508)
!1625 = !DILocation(line: 1168, column: 5, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1623, file: !1, discriminator: 6)
!1627 = !DILocation(line: 1171, column: 9, scope: !382)
!1628 = !DILocation(line: 1172, column: 5, scope: !382)
!1629 = !DILocation(line: 1173, column: 5, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 1)
!1631 = !DILocation(line: 1173, column: 5, scope: !514)
!1632 = !DILocation(line: 1173, column: 5, scope: !511)
!1633 = !DILocation(line: 1173, column: 5, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !513, file: !1, discriminator: 4)
!1635 = !DILocation(line: 1173, column: 5, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !513, file: !1, line: 1173, column: 5)
!1637 = !DILocation(line: 1173, column: 5, scope: !513)
!1638 = !DILocation(line: 1173, column: 5, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 6)
!1640 = !DILocation(line: 1176, column: 9, scope: !382)
!1641 = !DILocation(line: 1177, column: 5, scope: !382)
!1642 = !DILocation(line: 1178, column: 5, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !516, file: !1, discriminator: 1)
!1644 = !DILocation(line: 1178, column: 5, scope: !519)
!1645 = !DILocation(line: 1178, column: 5, scope: !516)
!1646 = !DILocation(line: 1178, column: 5, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 4)
!1648 = !DILocation(line: 1178, column: 5, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !518, file: !1, line: 1178, column: 5)
!1650 = !DILocation(line: 1178, column: 5, scope: !518)
!1651 = !DILocation(line: 1178, column: 5, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 6)
!1653 = !DILocation(line: 1181, column: 9, scope: !382)
!1654 = !DILocation(line: 1182, column: 5, scope: !382)
!1655 = !DILocation(line: 1183, column: 5, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 1)
!1657 = !DILocation(line: 1183, column: 5, scope: !524)
!1658 = !DILocation(line: 1183, column: 5, scope: !521)
!1659 = !DILocation(line: 1183, column: 5, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 4)
!1661 = !DILocation(line: 1183, column: 5, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !523, file: !1, line: 1183, column: 5)
!1663 = !DILocation(line: 1183, column: 5, scope: !523)
!1664 = !DILocation(line: 1183, column: 5, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1662, file: !1, discriminator: 6)
!1666 = !DILocation(line: 1186, column: 9, scope: !382)
!1667 = !DILocation(line: 1187, column: 5, scope: !382)
!1668 = !DILocation(line: 1188, column: 5, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 1)
!1670 = !DILocation(line: 1188, column: 5, scope: !529)
!1671 = !DILocation(line: 1188, column: 5, scope: !526)
!1672 = !DILocation(line: 1188, column: 5, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 4)
!1674 = !DILocation(line: 1188, column: 5, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !528, file: !1, line: 1188, column: 5)
!1676 = !DILocation(line: 1188, column: 5, scope: !528)
!1677 = !DILocation(line: 1188, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !1, discriminator: 6)
!1679 = !DILocation(line: 1191, column: 9, scope: !382)
!1680 = !DILocation(line: 1192, column: 5, scope: !382)
!1681 = !DILocation(line: 1193, column: 5, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!1683 = !DILocation(line: 1193, column: 5, scope: !534)
!1684 = !DILocation(line: 1193, column: 5, scope: !531)
!1685 = !DILocation(line: 1193, column: 5, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !533, file: !1, discriminator: 4)
!1687 = !DILocation(line: 1193, column: 5, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !533, file: !1, line: 1193, column: 5)
!1689 = !DILocation(line: 1193, column: 5, scope: !533)
!1690 = !DILocation(line: 1193, column: 5, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1688, file: !1, discriminator: 6)
!1692 = !DILocation(line: 1196, column: 9, scope: !382)
!1693 = !DILocation(line: 1197, column: 5, scope: !382)
!1694 = !DILocation(line: 1198, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 1)
!1696 = !DILocation(line: 1198, column: 5, scope: !539)
!1697 = !DILocation(line: 1198, column: 5, scope: !536)
!1698 = !DILocation(line: 1198, column: 5, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !538, file: !1, discriminator: 4)
!1700 = !DILocation(line: 1198, column: 5, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !538, file: !1, line: 1198, column: 5)
!1702 = !DILocation(line: 1198, column: 5, scope: !538)
!1703 = !DILocation(line: 1198, column: 5, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1701, file: !1, discriminator: 6)
!1705 = !DILocation(line: 1201, column: 9, scope: !382)
!1706 = !DILocation(line: 1202, column: 5, scope: !382)
!1707 = !DILocation(line: 1203, column: 5, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 1)
!1709 = !DILocation(line: 1203, column: 5, scope: !544)
!1710 = !DILocation(line: 1203, column: 5, scope: !541)
!1711 = !DILocation(line: 1203, column: 5, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 4)
!1713 = !DILocation(line: 1203, column: 5, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !543, file: !1, line: 1203, column: 5)
!1715 = !DILocation(line: 1203, column: 5, scope: !543)
!1716 = !DILocation(line: 1203, column: 5, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1714, file: !1, discriminator: 6)
!1718 = !DILocation(line: 1206, column: 9, scope: !382)
!1719 = !DILocation(line: 1207, column: 5, scope: !382)
!1720 = !DILocation(line: 1208, column: 5, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !546, file: !1, discriminator: 1)
!1722 = !DILocation(line: 1208, column: 5, scope: !549)
!1723 = !DILocation(line: 1208, column: 5, scope: !546)
!1724 = !DILocation(line: 1208, column: 5, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 4)
!1726 = !DILocation(line: 1208, column: 5, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !548, file: !1, line: 1208, column: 5)
!1728 = !DILocation(line: 1208, column: 5, scope: !548)
!1729 = !DILocation(line: 1208, column: 5, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1727, file: !1, discriminator: 6)
!1731 = !DILocation(line: 1211, column: 9, scope: !382)
!1732 = !DILocation(line: 1212, column: 5, scope: !382)
!1733 = !DILocation(line: 1213, column: 5, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 1)
!1735 = !DILocation(line: 1213, column: 5, scope: !554)
!1736 = !DILocation(line: 1213, column: 5, scope: !551)
!1737 = !DILocation(line: 1213, column: 5, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 4)
!1739 = !DILocation(line: 1213, column: 5, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !553, file: !1, line: 1213, column: 5)
!1741 = !DILocation(line: 1213, column: 5, scope: !553)
!1742 = !DILocation(line: 1213, column: 5, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1740, file: !1, discriminator: 6)
!1744 = !DILocation(line: 1216, column: 9, scope: !382)
!1745 = !DILocation(line: 1217, column: 5, scope: !382)
!1746 = !DILocation(line: 1218, column: 5, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 1)
!1748 = !DILocation(line: 1218, column: 5, scope: !559)
!1749 = !DILocation(line: 1218, column: 5, scope: !556)
!1750 = !DILocation(line: 1218, column: 5, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 4)
!1752 = !DILocation(line: 1218, column: 5, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !558, file: !1, line: 1218, column: 5)
!1754 = !DILocation(line: 1218, column: 5, scope: !558)
!1755 = !DILocation(line: 1218, column: 5, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1753, file: !1, discriminator: 6)
!1757 = !DILocation(line: 1221, column: 9, scope: !382)
!1758 = !DILocation(line: 1222, column: 5, scope: !382)
!1759 = !DILocation(line: 1223, column: 5, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1761 = !DILocation(line: 1223, column: 5, scope: !564)
!1762 = !DILocation(line: 1223, column: 5, scope: !561)
!1763 = !DILocation(line: 1223, column: 5, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 4)
!1765 = !DILocation(line: 1223, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !563, file: !1, line: 1223, column: 5)
!1767 = !DILocation(line: 1223, column: 5, scope: !563)
!1768 = !DILocation(line: 1223, column: 5, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1766, file: !1, discriminator: 6)
!1770 = !DILocation(line: 1226, column: 25, scope: !382)
!1771 = !DILocation(line: 1226, column: 9, scope: !382)
!1772 = !DILocation(line: 1227, column: 5, scope: !382)
!1773 = !DILocation(line: 1228, column: 5, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !566, file: !1, discriminator: 1)
!1775 = !DILocation(line: 1228, column: 5, scope: !569)
!1776 = !DILocation(line: 1228, column: 5, scope: !566)
!1777 = !DILocation(line: 1228, column: 5, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 4)
!1779 = !DILocation(line: 1228, column: 5, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !568, file: !1, line: 1228, column: 5)
!1781 = !DILocation(line: 1228, column: 5, scope: !568)
!1782 = !DILocation(line: 1228, column: 5, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1780, file: !1, discriminator: 6)
!1784 = !DILocation(line: 1231, column: 25, scope: !382)
!1785 = !DILocation(line: 1231, column: 9, scope: !382)
!1786 = !DILocation(line: 1232, column: 5, scope: !382)
!1787 = !DILocation(line: 1233, column: 5, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 1)
!1789 = !DILocation(line: 1233, column: 5, scope: !574)
!1790 = !DILocation(line: 1233, column: 5, scope: !571)
!1791 = !DILocation(line: 1233, column: 5, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 4)
!1793 = !DILocation(line: 1233, column: 5, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1233, column: 5)
!1795 = !DILocation(line: 1233, column: 5, scope: !573)
!1796 = !DILocation(line: 1233, column: 5, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1794, file: !1, discriminator: 6)
!1798 = !DILocation(line: 1242, column: 9, scope: !382)
!1799 = !DILocation(line: 1243, column: 5, scope: !382)
!1800 = !DILocation(line: 1244, column: 5, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!1802 = !DILocation(line: 1244, column: 5, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !576, file: !1, line: 1244, column: 5)
!1804 = !DILocation(line: 1244, column: 5, scope: !576)
!1805 = !DILocation(line: 1244, column: 5, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1803, file: !1, discriminator: 3)
!1807 = !DILocation(line: 1247, column: 9, scope: !382)
!1808 = !DILocation(line: 1248, column: 5, scope: !382)
!1809 = !DILocation(line: 1249, column: 5, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 1)
!1811 = !DILocation(line: 1249, column: 5, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !578, file: !1, line: 1249, column: 5)
!1813 = !DILocation(line: 1249, column: 5, scope: !578)
!1814 = !DILocation(line: 1249, column: 5, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1812, file: !1, discriminator: 3)
!1816 = !DILocation(line: 1252, column: 9, scope: !382)
!1817 = !DILocation(line: 1253, column: 5, scope: !382)
!1818 = !DILocation(line: 1254, column: 5, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1820 = !DILocation(line: 1254, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !580, file: !1, line: 1254, column: 5)
!1822 = !DILocation(line: 1254, column: 5, scope: !580)
!1823 = !DILocation(line: 1254, column: 5, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1821, file: !1, discriminator: 3)
!1825 = !DILocation(line: 1259, column: 6, scope: !382)
!1826 = !DILocation(line: 1258, column: 19, scope: !382)
!1827 = !DILocation(line: 1258, column: 17, scope: !382)
!1828 = !DILocation(line: 1260, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !382, file: !1, line: 1260, column: 9)
!1830 = !DILocation(line: 1260, column: 9, scope: !382)
!1831 = !DILocation(line: 1261, column: 5, scope: !1829)
!1832 = !DILocation(line: 1281, column: 9, scope: !584)
!1833 = !DILocation(line: 1281, column: 9, scope: !382)
!1834 = !DILocation(line: 1282, column: 9, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1836 = !DILocation(line: 1282, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !582, file: !1, line: 1282, column: 9)
!1838 = !DILocation(line: 1282, column: 9, scope: !582)
!1839 = !DILocation(line: 1282, column: 9, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1837, file: !1, discriminator: 3)
!1841 = !DILocation(line: 1288, column: 1, scope: !382)
!1842 = !DILocation(line: 209, column: 20, scope: !1016)
!1843 = !DILocation(line: 211, column: 22, scope: !1016)
!1844 = !DILocation(line: 211, column: 9, scope: !1016)
!1845 = !DILocation(line: 215, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 215, column: 9)
!1847 = !DILocation(line: 215, column: 21, scope: !1846)
!1848 = !DILocation(line: 215, column: 18, scope: !1846)
!1849 = !DILocation(line: 215, column: 9, scope: !1016)
!1850 = !DILocation(line: 188, column: 17, scope: !1020, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 218, column: 9, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 217, column: 5)
!1853 = !DILocation(line: 190, column: 19, scope: !1020, inlinedAt: !1851)
!1854 = !DILocation(line: 190, column: 5, scope: !1020, inlinedAt: !1851)
!1855 = !DILocation(line: 191, column: 9, scope: !1020, inlinedAt: !1851)
!1856 = !DILocation(line: 193, column: 5, scope: !1020, inlinedAt: !1851)
!1857 = !DILocation(line: 193, column: 23, scope: !1020, inlinedAt: !1851)
!1858 = !DILocation(line: 193, column: 31, scope: !1020, inlinedAt: !1851)
!1859 = !DILocation(line: 194, column: 9, scope: !1860, inlinedAt: !1851)
!1860 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 194, column: 9)
!1861 = !DILocation(line: 194, column: 19, scope: !1860, inlinedAt: !1851)
!1862 = !DILocation(line: 194, column: 9, scope: !1020, inlinedAt: !1851)
!1863 = !DILocation(line: 195, column: 16, scope: !1864, inlinedAt: !1851)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 194, column: 26)
!1865 = !DILocation(line: 195, column: 14, scope: !1864, inlinedAt: !1851)
!1866 = !{!1216, !1216, i64 0}
!1867 = !DILocation(line: 196, column: 9, scope: !1864, inlinedAt: !1851)
!1868 = !DILocation(line: 196, column: 28, scope: !1869, inlinedAt: !1851)
!1869 = !DILexicalBlockFile(scope: !1870, file: !1, discriminator: 5)
!1870 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 1)
!1871 = !DILocation(line: 196, column: 22, scope: !1864, inlinedAt: !1851)
!1872 = !DILocation(line: 196, column: 50, scope: !1864, inlinedAt: !1851)
!1873 = !DILocation(line: 196, column: 56, scope: !1864, inlinedAt: !1851)
!1874 = !DILocation(line: 196, column: 59, scope: !1875, inlinedAt: !1851)
!1875 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 2)
!1876 = !DILocation(line: 196, column: 65, scope: !1864, inlinedAt: !1851)
!1877 = !DILocation(line: 196, column: 9, scope: !1878, inlinedAt: !1851)
!1878 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 3)
!1879 = !DILocation(line: 198, column: 61, scope: !1880, inlinedAt: !1851)
!1880 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 197, column: 13)
!1881 = !DILocation(line: 198, column: 52, scope: !1880, inlinedAt: !1851)
!1882 = !DILocation(line: 198, column: 13, scope: !1880, inlinedAt: !1851)
!1883 = !DILocation(line: 200, column: 9, scope: !1884, inlinedAt: !1851)
!1884 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 200, column: 9)
!1885 = !DILocation(line: 200, column: 9, scope: !1020, inlinedAt: !1851)
!1886 = !DILocation(line: 204, column: 16, scope: !1020, inlinedAt: !1851)
!1887 = !DILocation(line: 205, column: 5, scope: !1020, inlinedAt: !1851)
!1888 = !DILocation(line: 206, column: 1, scope: !1020, inlinedAt: !1851)
!1889 = !DILocation(line: 206, column: 1, scope: !1890, inlinedAt: !1851)
!1890 = !DILexicalBlockFile(scope: !1020, file: !1, discriminator: 1)
!1891 = !DILocation(line: 219, column: 5, scope: !1852)
!1892 = !DILocation(line: 237, column: 11, scope: !1016)
!1893 = !DILocation(line: 243, column: 1, scope: !1016)
!1894 = !DILocation(line: 1322, column: 10, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1322, column: 9)
!1896 = !DILocation(line: 1322, column: 9, scope: !585)
!1897 = !DILocation(line: 1326, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1326, column: 9)
!1899 = !DILocation(line: 1326, column: 40, scope: !1898)
!1900 = !DILocation(line: 1326, column: 37, scope: !1898)
!1901 = !DILocation(line: 1326, column: 9, scope: !585)
!1902 = !DILocation(line: 1344, column: 16, scope: !585)
!1903 = !DILocation(line: 1346, column: 27, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1346, column: 9)
!1905 = !DILocation(line: 1346, column: 15, scope: !1904)
!1906 = !DILocation(line: 1320, column: 15, scope: !585)
!1907 = !DILocation(line: 1346, column: 13, scope: !1904)
!1908 = !DILocation(line: 1346, column: 9, scope: !585)
!1909 = !DILocation(line: 1319, column: 9, scope: !585)
!1910 = !DILocation(line: 1349, column: 5, scope: !596)
!1911 = !DILocation(line: 1350, column: 25, scope: !593)
!1912 = !DILocation(line: 1350, column: 13, scope: !593)
!1913 = !DILocation(line: 1350, column: 13, scope: !594)
!1914 = !DILocation(line: 1351, column: 23, scope: !592)
!1915 = !DILocation(line: 1352, column: 33, scope: !592)
!1916 = !DILocation(line: 1352, column: 23, scope: !592)
!1917 = !DILocation(line: 1353, column: 33, scope: !592)
!1918 = !DILocation(line: 1355, column: 17, scope: !601)
!1919 = !DILocation(line: 1355, column: 17, scope: !592)
!1920 = !DILocation(line: 1356, column: 26, scope: !600)
!1921 = !DILocation(line: 1358, column: 17, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 1)
!1923 = !DILocation(line: 1358, column: 17, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !599, file: !1, line: 1358, column: 17)
!1925 = !DILocation(line: 1358, column: 17, scope: !599)
!1926 = !DILocation(line: 1358, column: 17, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1924, file: !1, discriminator: 3)
!1928 = !DILocation(line: 1360, column: 18, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !592, file: !1, line: 1360, column: 17)
!1930 = !DILocation(line: 1360, column: 17, scope: !592)
!1931 = !DILocation(line: 1363, column: 13, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!1933 = !DILocation(line: 1363, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !603, file: !1, line: 1363, column: 13)
!1935 = !DILocation(line: 1363, column: 13, scope: !603)
!1936 = !DILocation(line: 1363, column: 13, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1934, file: !1, discriminator: 3)
!1938 = !DILocation(line: 1349, column: 19, scope: !595)
!1939 = !DILocation(line: 1368, column: 1, scope: !585)
!1940 = !DILocation(line: 188, column: 17, scope: !1020, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 1377, column: 5, scope: !604)
!1942 = !DILocation(line: 190, column: 19, scope: !1020, inlinedAt: !1941)
!1943 = !DILocation(line: 190, column: 5, scope: !1020, inlinedAt: !1941)
!1944 = !DILocation(line: 191, column: 9, scope: !1020, inlinedAt: !1941)
!1945 = !DILocation(line: 193, column: 31, scope: !1020, inlinedAt: !1941)
!1946 = !DILocation(line: 194, column: 9, scope: !1860, inlinedAt: !1941)
!1947 = !DILocation(line: 194, column: 19, scope: !1860, inlinedAt: !1941)
!1948 = !DILocation(line: 194, column: 9, scope: !1020, inlinedAt: !1941)
!1949 = !DILocation(line: 195, column: 14, scope: !1864, inlinedAt: !1941)
!1950 = !DILocation(line: 196, column: 9, scope: !1864, inlinedAt: !1941)
!1951 = !DILocation(line: 196, column: 28, scope: !1869, inlinedAt: !1941)
!1952 = !DILocation(line: 196, column: 22, scope: !1864, inlinedAt: !1941)
!1953 = !DILocation(line: 196, column: 50, scope: !1864, inlinedAt: !1941)
!1954 = !DILocation(line: 196, column: 56, scope: !1864, inlinedAt: !1941)
!1955 = !DILocation(line: 196, column: 59, scope: !1875, inlinedAt: !1941)
!1956 = !DILocation(line: 196, column: 65, scope: !1864, inlinedAt: !1941)
!1957 = !DILocation(line: 196, column: 9, scope: !1878, inlinedAt: !1941)
!1958 = !DILocation(line: 198, column: 61, scope: !1880, inlinedAt: !1941)
!1959 = !DILocation(line: 198, column: 52, scope: !1880, inlinedAt: !1941)
!1960 = !DILocation(line: 198, column: 13, scope: !1880, inlinedAt: !1941)
!1961 = !DILocation(line: 200, column: 9, scope: !1884, inlinedAt: !1941)
!1962 = !DILocation(line: 200, column: 9, scope: !1020, inlinedAt: !1941)
!1963 = !DILocation(line: 204, column: 16, scope: !1020, inlinedAt: !1941)
!1964 = !DILocation(line: 205, column: 5, scope: !1020, inlinedAt: !1941)
!1965 = !DILocation(line: 206, column: 1, scope: !1020, inlinedAt: !1941)
!1966 = !DILocation(line: 206, column: 1, scope: !1890, inlinedAt: !1941)
!1967 = !DILocation(line: 1378, column: 1, scope: !604)
!1968 = !DILocation(line: 1383, column: 19, scope: !608)
!1969 = !DILocation(line: 1383, column: 15, scope: !608)
!1970 = !DILocation(line: 1384, column: 9, scope: !614)
!1971 = !DILocation(line: 1384, column: 9, scope: !608)
!1972 = !DILocation(line: 1385, column: 9, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!1974 = !DILocation(line: 1385, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !612, file: !1, line: 1385, column: 9)
!1976 = !DILocation(line: 1385, column: 9, scope: !612)
!1977 = !DILocation(line: 1385, column: 9, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1975, file: !1, discriminator: 3)
!1979 = !DILocation(line: 1387, column: 1, scope: !608)
!1980 = !DILocation(line: 1296, column: 25, scope: !1034, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 1392, column: 5, scope: !615)
!1982 = !DILocation(line: 1296, column: 5, scope: !1034, inlinedAt: !1981)
!1983 = !DILocation(line: 1297, column: 23, scope: !1034, inlinedAt: !1981)
!1984 = !DILocation(line: 1293, column: 9, scope: !1034, inlinedAt: !1981)
!1985 = !DILocation(line: 1299, column: 5, scope: !1042, inlinedAt: !1981)
!1986 = !DILocation(line: 1392, column: 5, scope: !615)
!1987 = !DILocation(line: 1300, column: 28, scope: !1040, inlinedAt: !1981)
!1988 = !DILocation(line: 1294, column: 15, scope: !1034, inlinedAt: !1981)
!1989 = !DILocation(line: 1301, column: 21, scope: !1040, inlinedAt: !1981)
!1990 = !DILocation(line: 1301, column: 29, scope: !1040, inlinedAt: !1981)
!1991 = !DILocation(line: 1302, column: 26, scope: !1040, inlinedAt: !1981)
!1992 = !DILocation(line: 1303, column: 15, scope: !1993, inlinedAt: !1981)
!1993 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 1303, column: 13)
!1994 = !DILocation(line: 1303, column: 33, scope: !1993, inlinedAt: !1981)
!1995 = !DILocation(line: 1303, column: 25, scope: !1993, inlinedAt: !1981)
!1996 = !DILocation(line: 1303, column: 49, scope: !1993, inlinedAt: !1981)
!1997 = !DILocation(line: 1304, column: 18, scope: !1993, inlinedAt: !1981)
!1998 = !DILocation(line: 1304, column: 44, scope: !1993, inlinedAt: !1981)
!1999 = !DILocation(line: 1305, column: 13, scope: !1993, inlinedAt: !1981)
!2000 = !DILocation(line: 1306, column: 9, scope: !2001, inlinedAt: !1981)
!2001 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 1)
!2002 = !DILocation(line: 1306, column: 9, scope: !1039, inlinedAt: !1981)
!2003 = !DILocation(line: 1306, column: 9, scope: !2004, inlinedAt: !1981)
!2004 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 4)
!2005 = !DILocation(line: 1306, column: 9, scope: !2006, inlinedAt: !1981)
!2006 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 1306, column: 9)
!2007 = !DILocation(line: 1306, column: 9, scope: !1044, inlinedAt: !1981)
!2008 = !DILocation(line: 1306, column: 9, scope: !2009, inlinedAt: !1981)
!2009 = !DILexicalBlockFile(scope: !2006, file: !1, discriminator: 6)
!2010 = !DILocation(line: 1309, column: 5, scope: !2011, inlinedAt: !1981)
!2011 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 1)
!2012 = !DILocation(line: 1309, column: 5, scope: !1051, inlinedAt: !1981)
!2013 = !DILocation(line: 1309, column: 5, scope: !1047, inlinedAt: !1981)
!2014 = !DILocation(line: 1309, column: 5, scope: !2015, inlinedAt: !1981)
!2015 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 2)
!2016 = !DILocation(line: 1309, column: 5, scope: !2017, inlinedAt: !1981)
!2017 = !DILexicalBlockFile(scope: !1049, file: !1, discriminator: 4)
!2018 = !DILocation(line: 1309, column: 5, scope: !2019, inlinedAt: !1981)
!2019 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 1309, column: 5)
!2020 = !DILocation(line: 1309, column: 5, scope: !1049, inlinedAt: !1981)
!2021 = !DILocation(line: 1309, column: 5, scope: !2022, inlinedAt: !1981)
!2022 = !DILexicalBlockFile(scope: !2019, file: !1, discriminator: 6)
!2023 = !DILocation(line: 1310, column: 5, scope: !2024, inlinedAt: !1981)
!2024 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 1)
!2025 = !DILocation(line: 1310, column: 5, scope: !1057, inlinedAt: !1981)
!2026 = !DILocation(line: 1310, column: 5, scope: !1053, inlinedAt: !1981)
!2027 = !DILocation(line: 1310, column: 5, scope: !2028, inlinedAt: !1981)
!2028 = !DILexicalBlockFile(scope: !1056, file: !1, discriminator: 2)
!2029 = !DILocation(line: 1310, column: 5, scope: !2030, inlinedAt: !1981)
!2030 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 4)
!2031 = !DILocation(line: 1310, column: 5, scope: !2032, inlinedAt: !1981)
!2032 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 1310, column: 5)
!2033 = !DILocation(line: 1310, column: 5, scope: !1055, inlinedAt: !1981)
!2034 = !DILocation(line: 1310, column: 5, scope: !2035, inlinedAt: !1981)
!2035 = !DILexicalBlockFile(scope: !2032, file: !1, discriminator: 6)
!2036 = !DILocation(line: 1311, column: 5, scope: !2037, inlinedAt: !1981)
!2037 = !DILexicalBlockFile(scope: !1059, file: !1, discriminator: 1)
!2038 = !DILocation(line: 1311, column: 5, scope: !1063, inlinedAt: !1981)
!2039 = !DILocation(line: 1311, column: 5, scope: !1059, inlinedAt: !1981)
!2040 = !DILocation(line: 1311, column: 5, scope: !2041, inlinedAt: !1981)
!2041 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 2)
!2042 = !DILocation(line: 1311, column: 5, scope: !2043, inlinedAt: !1981)
!2043 = !DILexicalBlockFile(scope: !1061, file: !1, discriminator: 4)
!2044 = !DILocation(line: 1311, column: 5, scope: !2045, inlinedAt: !1981)
!2045 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1311, column: 5)
!2046 = !DILocation(line: 1311, column: 5, scope: !1061, inlinedAt: !1981)
!2047 = !DILocation(line: 1311, column: 5, scope: !2048, inlinedAt: !1981)
!2048 = !DILexicalBlockFile(scope: !2045, file: !1, discriminator: 6)
!2049 = !DILocation(line: 1393, column: 1, scope: !615)
!2050 = !DILocation(line: 1398, column: 26, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !616, file: !1, line: 1398, column: 9)
!2052 = !DILocation(line: 1398, column: 9, scope: !2051)
!2053 = !DILocation(line: 1398, column: 9, scope: !616)
!2054 = !DILocation(line: 1400, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1400, column: 13)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 1398, column: 35)
!2057 = !DILocation(line: 1400, column: 44, scope: !2055)
!2058 = !DILocation(line: 1400, column: 41, scope: !2055)
!2059 = !DILocation(line: 1400, column: 13, scope: !2056)
!2060 = !DILocation(line: 1403, column: 34, scope: !2056)
!2061 = !DILocation(line: 1404, column: 9, scope: !2056)
!2062 = !DILocation(line: 1407, column: 1, scope: !616)
!2063 = !DILocation(line: 1413, column: 10, scope: !2064, inlinedAt: !2065)
!2064 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1413, column: 9)
!2065 = distinct !DILocation(line: 1427, column: 5, scope: !617)
!2066 = !DILocation(line: 1413, column: 9, scope: !1064, inlinedAt: !2065)
!2067 = !DILocation(line: 1415, column: 16, scope: !1064, inlinedAt: !2065)
!2068 = !DILocation(line: 1412, column: 9, scope: !1064, inlinedAt: !2065)
!2069 = !DILocation(line: 1416, column: 5, scope: !2070, inlinedAt: !2065)
!2070 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1416, column: 5)
!2071 = !DILocation(line: 1427, column: 5, scope: !617)
!2072 = !DILocation(line: 1417, column: 21, scope: !2073, inlinedAt: !2065)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 1416, column: 32)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 1416, column: 5)
!2075 = !DILocation(line: 1417, column: 29, scope: !2073, inlinedAt: !2065)
!2076 = !DILocation(line: 1431, column: 5, scope: !617)
!2077 = !DILocation(line: 1432, column: 5, scope: !617)
!2078 = !DILocation(line: 1433, column: 5, scope: !617)
!2079 = !DILocation(line: 1434, column: 19, scope: !617)
!2080 = !DILocation(line: 1434, column: 17, scope: !617)
!2081 = !DILocation(line: 1435, column: 16, scope: !617)
!2082 = !DILocation(line: 1435, column: 14, scope: !617)
!2083 = !DILocation(line: 1436, column: 5, scope: !617)
!2084 = !DILocation(line: 1438, column: 1, scope: !617)
!2085 = !DILocation(line: 1444, column: 12, scope: !618)
!2086 = !DILocation(line: 1444, column: 43, scope: !618)
!2087 = !DILocation(line: 1444, column: 40, scope: !618)
!2088 = !DILocation(line: 1444, column: 5, scope: !618)
!2089 = !DILocation(line: 248, column: 24, scope: !619)
!2090 = !DILocation(line: 248, column: 40, scope: !619)
!2091 = !DILocation(line: 250, column: 5, scope: !619)
!2092 = !DILocation(line: 250, column: 9, scope: !619)
!2093 = !DILocation(line: 251, column: 10, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !619, file: !1, line: 251, column: 9)
!2095 = !DILocation(line: 251, column: 9, scope: !619)
!2096 = !DILocation(line: 254, column: 40, scope: !619)
!2097 = !DILocation(line: 254, column: 34, scope: !619)
!2098 = !DILocation(line: 254, column: 28, scope: !619)
!2099 = !DILocation(line: 254, column: 12, scope: !619)
!2100 = !DILocation(line: 254, column: 5, scope: !619)
!2101 = !DILocation(line: 255, column: 1, scope: !619)
!2102 = !DILocation(line: 472, column: 28, scope: !624)
!2103 = !DILocation(line: 472, column: 44, scope: !624)
!2104 = !DILocation(line: 474, column: 5, scope: !624)
!2105 = !DILocation(line: 475, column: 5, scope: !624)
!2106 = !DILocation(line: 475, column: 12, scope: !624)
!2107 = !{!2108, !2108, i64 0}
!2108 = !{!"double", !1216, i64 0}
!2109 = !DILocation(line: 476, column: 5, scope: !624)
!2110 = !DILocation(line: 477, column: 5, scope: !624)
!2111 = !DILocation(line: 474, column: 12, scope: !624)
!2112 = !DILocation(line: 476, column: 9, scope: !624)
!2113 = !DILocation(line: 479, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !624, file: !1, line: 479, column: 8)
!2115 = !DILocation(line: 479, column: 8, scope: !624)
!2116 = !DILocation(line: 482, column: 25, scope: !624)
!2117 = !DILocation(line: 115, column: 28, scope: !644, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 482, column: 5, scope: !624)
!2119 = !DILocation(line: 117, column: 18, scope: !644, inlinedAt: !2118)
!2120 = !DILocation(line: 117, column: 9, scope: !644, inlinedAt: !2118)
!2121 = !DILocation(line: 117, column: 16, scope: !644, inlinedAt: !2118)
!2122 = !{!2123, !1227, i64 0}
!2123 = !{!"timeval", !1227, i64 0, !1227, i64 8}
!2124 = !DILocation(line: 118, column: 19, scope: !644, inlinedAt: !2118)
!2125 = !DILocation(line: 118, column: 32, scope: !644, inlinedAt: !2118)
!2126 = !DILocation(line: 118, column: 9, scope: !644, inlinedAt: !2118)
!2127 = !DILocation(line: 118, column: 17, scope: !644, inlinedAt: !2118)
!2128 = !{!2123, !1227, i64 8}
!2129 = !DILocation(line: 483, column: 25, scope: !624)
!2130 = !DILocation(line: 115, column: 28, scope: !644, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 483, column: 5, scope: !624)
!2132 = !DILocation(line: 117, column: 18, scope: !644, inlinedAt: !2131)
!2133 = !DILocation(line: 117, column: 9, scope: !644, inlinedAt: !2131)
!2134 = !DILocation(line: 117, column: 16, scope: !644, inlinedAt: !2131)
!2135 = !DILocation(line: 118, column: 19, scope: !644, inlinedAt: !2131)
!2136 = !DILocation(line: 118, column: 32, scope: !644, inlinedAt: !2131)
!2137 = !DILocation(line: 118, column: 9, scope: !644, inlinedAt: !2131)
!2138 = !DILocation(line: 118, column: 17, scope: !644, inlinedAt: !2131)
!2139 = !DILocation(line: 485, column: 19, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !624, file: !1, line: 485, column: 9)
!2141 = !DILocation(line: 477, column: 22, scope: !624)
!2142 = !DILocation(line: 477, column: 27, scope: !624)
!2143 = !DILocation(line: 485, column: 9, scope: !2140)
!2144 = !DILocation(line: 485, column: 38, scope: !2140)
!2145 = !DILocation(line: 485, column: 9, scope: !624)
!2146 = !DILocation(line: 486, column: 24, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 485, column: 44)
!2148 = !DILocation(line: 486, column: 5, scope: !2147)
!2149 = !DILocation(line: 487, column: 5, scope: !2147)
!2150 = !DILocation(line: 128, column: 33, scope: !651, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 490, column: 12, scope: !624)
!2152 = !DILocation(line: 132, column: 9, scope: !651, inlinedAt: !2151)
!2153 = !DILocation(line: 130, column: 15, scope: !651, inlinedAt: !2151)
!2154 = !DILocation(line: 133, column: 11, scope: !2155, inlinedAt: !2151)
!2155 = distinct !DILexicalBlock(scope: !651, file: !1, line: 133, column: 9)
!2156 = !DILocation(line: 133, column: 9, scope: !651, inlinedAt: !2151)
!2157 = !DILocation(line: 490, column: 12, scope: !624)
!2158 = !DILocation(line: 124, column: 12, scope: !667, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 136, column: 33, scope: !662, inlinedAt: !2151)
!2160 = !DILocation(line: 124, column: 34, scope: !667, inlinedAt: !2159)
!2161 = !DILocation(line: 124, column: 46, scope: !667, inlinedAt: !2159)
!2162 = !DILocation(line: 124, column: 23, scope: !667, inlinedAt: !2159)
!2163 = !DILocation(line: 136, column: 14, scope: !662, inlinedAt: !2151)
!2164 = !DILocation(line: 130, column: 19, scope: !651, inlinedAt: !2151)
!2165 = !DILocation(line: 136, column: 12, scope: !662, inlinedAt: !2151)
!2166 = !DILocation(line: 136, column: 8, scope: !651, inlinedAt: !2151)
!2167 = !DILocation(line: 137, column: 5, scope: !2168, inlinedAt: !2151)
!2168 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!2169 = !DILocation(line: 137, column: 5, scope: !2170, inlinedAt: !2151)
!2170 = distinct !DILexicalBlock(scope: !660, file: !1, line: 137, column: 5)
!2171 = !DILocation(line: 137, column: 5, scope: !660, inlinedAt: !2151)
!2172 = !DILocation(line: 137, column: 5, scope: !2173, inlinedAt: !2151)
!2173 = !DILexicalBlockFile(scope: !2170, file: !1, discriminator: 3)
!2174 = !DILocation(line: 141, column: 5, scope: !651, inlinedAt: !2151)
!2175 = !DILocation(line: 124, column: 12, scope: !667, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 143, column: 33, scope: !666, inlinedAt: !2151)
!2177 = !DILocation(line: 124, column: 34, scope: !667, inlinedAt: !2176)
!2178 = !DILocation(line: 124, column: 46, scope: !667, inlinedAt: !2176)
!2179 = !DILocation(line: 124, column: 23, scope: !667, inlinedAt: !2176)
!2180 = !DILocation(line: 143, column: 14, scope: !666, inlinedAt: !2151)
!2181 = !DILocation(line: 143, column: 12, scope: !666, inlinedAt: !2151)
!2182 = !DILocation(line: 143, column: 8, scope: !651, inlinedAt: !2151)
!2183 = !DILocation(line: 144, column: 5, scope: !2184, inlinedAt: !2151)
!2184 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 1)
!2185 = !DILocation(line: 144, column: 5, scope: !2186, inlinedAt: !2151)
!2186 = distinct !DILexicalBlock(scope: !664, file: !1, line: 144, column: 5)
!2187 = !DILocation(line: 144, column: 5, scope: !664, inlinedAt: !2151)
!2188 = !DILocation(line: 144, column: 5, scope: !2189, inlinedAt: !2151)
!2189 = !DILexicalBlockFile(scope: !2186, file: !1, discriminator: 3)
!2190 = !DILocation(line: 148, column: 5, scope: !651, inlinedAt: !2151)
!2191 = !DILocation(line: 150, column: 5, scope: !651, inlinedAt: !2151)
!2192 = !DILocation(line: 491, column: 1, scope: !624)
!2193 = !DILocation(line: 507, column: 28, scope: !672)
!2194 = !DILocation(line: 507, column: 44, scope: !672)
!2195 = !DILocation(line: 509, column: 5, scope: !672)
!2196 = !DILocation(line: 510, column: 5, scope: !672)
!2197 = !DILocation(line: 509, column: 9, scope: !672)
!2198 = !DILocation(line: 512, column: 10, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !672, file: !1, line: 512, column: 9)
!2200 = !DILocation(line: 512, column: 9, scope: !672)
!2201 = !DILocation(line: 515, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !672, file: !1, line: 515, column: 9)
!2203 = !DILocation(line: 510, column: 22, scope: !672)
!2204 = !DILocation(line: 515, column: 9, scope: !2202)
!2205 = !DILocation(line: 515, column: 32, scope: !2202)
!2206 = !DILocation(line: 515, column: 9, scope: !672)
!2207 = !DILocation(line: 516, column: 24, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 515, column: 38)
!2209 = !DILocation(line: 516, column: 5, scope: !2208)
!2210 = !DILocation(line: 517, column: 5, scope: !2208)
!2211 = !DILocation(line: 128, column: 33, scope: !651, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 520, column: 12, scope: !672)
!2213 = !DILocation(line: 132, column: 9, scope: !651, inlinedAt: !2212)
!2214 = !DILocation(line: 130, column: 15, scope: !651, inlinedAt: !2212)
!2215 = !DILocation(line: 133, column: 11, scope: !2155, inlinedAt: !2212)
!2216 = !DILocation(line: 133, column: 9, scope: !651, inlinedAt: !2212)
!2217 = !DILocation(line: 520, column: 12, scope: !672)
!2218 = !DILocation(line: 124, column: 12, scope: !667, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 136, column: 33, scope: !662, inlinedAt: !2212)
!2220 = !DILocation(line: 124, column: 34, scope: !667, inlinedAt: !2219)
!2221 = !DILocation(line: 124, column: 46, scope: !667, inlinedAt: !2219)
!2222 = !DILocation(line: 124, column: 23, scope: !667, inlinedAt: !2219)
!2223 = !DILocation(line: 136, column: 14, scope: !662, inlinedAt: !2212)
!2224 = !DILocation(line: 130, column: 19, scope: !651, inlinedAt: !2212)
!2225 = !DILocation(line: 136, column: 12, scope: !662, inlinedAt: !2212)
!2226 = !DILocation(line: 136, column: 8, scope: !651, inlinedAt: !2212)
!2227 = !DILocation(line: 137, column: 5, scope: !2168, inlinedAt: !2212)
!2228 = !DILocation(line: 137, column: 5, scope: !2170, inlinedAt: !2212)
!2229 = !DILocation(line: 137, column: 5, scope: !660, inlinedAt: !2212)
!2230 = !DILocation(line: 137, column: 5, scope: !2173, inlinedAt: !2212)
!2231 = !DILocation(line: 141, column: 5, scope: !651, inlinedAt: !2212)
!2232 = !DILocation(line: 124, column: 12, scope: !667, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 143, column: 33, scope: !666, inlinedAt: !2212)
!2234 = !DILocation(line: 124, column: 34, scope: !667, inlinedAt: !2233)
!2235 = !DILocation(line: 124, column: 46, scope: !667, inlinedAt: !2233)
!2236 = !DILocation(line: 124, column: 23, scope: !667, inlinedAt: !2233)
!2237 = !DILocation(line: 143, column: 14, scope: !666, inlinedAt: !2212)
!2238 = !DILocation(line: 143, column: 12, scope: !666, inlinedAt: !2212)
!2239 = !DILocation(line: 143, column: 8, scope: !651, inlinedAt: !2212)
!2240 = !DILocation(line: 144, column: 5, scope: !2184, inlinedAt: !2212)
!2241 = !DILocation(line: 144, column: 5, scope: !2186, inlinedAt: !2212)
!2242 = !DILocation(line: 144, column: 5, scope: !664, inlinedAt: !2212)
!2243 = !DILocation(line: 144, column: 5, scope: !2189, inlinedAt: !2212)
!2244 = !DILocation(line: 148, column: 5, scope: !651, inlinedAt: !2212)
!2245 = !DILocation(line: 150, column: 5, scope: !651, inlinedAt: !2212)
!2246 = !DILocation(line: 521, column: 1, scope: !672)
!2247 = !DILocation(line: 288, column: 25, scope: !678)
!2248 = !DILocation(line: 288, column: 41, scope: !678)
!2249 = !DILocation(line: 290, column: 5, scope: !678)
!2250 = !DILocation(line: 291, column: 5, scope: !678)
!2251 = !DILocation(line: 290, column: 15, scope: !678)
!2252 = !DILocation(line: 291, column: 9, scope: !678)
!2253 = !DILocation(line: 294, column: 10, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !678, file: !1, line: 294, column: 9)
!2255 = !DILocation(line: 294, column: 9, scope: !678)
!2256 = !DILocation(line: 316, column: 9, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !678, file: !1, line: 316, column: 9)
!2258 = !DILocation(line: 316, column: 40, scope: !2257)
!2259 = !DILocation(line: 316, column: 37, scope: !2257)
!2260 = !DILocation(line: 316, column: 9, scope: !678)
!2261 = !DILocation(line: 317, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !1, line: 316, column: 53)
!2263 = !DILocation(line: 317, column: 9, scope: !2262)
!2264 = !DILocation(line: 319, column: 9, scope: !2262)
!2265 = !DILocation(line: 322, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !678, file: !1, line: 322, column: 9)
!2267 = !DILocation(line: 322, column: 21, scope: !2266)
!2268 = !DILocation(line: 323, column: 25, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 322, column: 41)
!2270 = !DILocation(line: 323, column: 9, scope: !2269)
!2271 = !DILocation(line: 325, column: 9, scope: !2269)
!2272 = !DILocation(line: 327, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !678, file: !1, line: 327, column: 9)
!2274 = !DILocation(line: 327, column: 16, scope: !2273)
!2275 = !DILocation(line: 327, column: 13, scope: !2273)
!2276 = !DILocation(line: 327, column: 9, scope: !678)
!2277 = !DILocation(line: 329, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !1, line: 329, column: 14)
!2279 = !DILocation(line: 329, column: 18, scope: !2278)
!2280 = !DILocation(line: 329, column: 14, scope: !2273)
!2281 = !DILocation(line: 331, column: 15, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 331, column: 14)
!2283 = !DILocation(line: 331, column: 14, scope: !2278)
!2284 = !DILocation(line: 338, column: 21, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !678, file: !1, line: 338, column: 9)
!2286 = !DILocation(line: 332, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !1, line: 331, column: 38)
!2288 = !DILocation(line: 332, column: 9, scope: !2287)
!2289 = !DILocation(line: 334, column: 17, scope: !2287)
!2290 = !DILocation(line: 338, column: 9, scope: !2285)
!2291 = !DILocation(line: 338, column: 36, scope: !2285)
!2292 = !DILocation(line: 338, column: 9, scope: !678)
!2293 = !DILocation(line: 339, column: 28, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2285, file: !1, line: 338, column: 48)
!2295 = !DILocation(line: 339, column: 9, scope: !2294)
!2296 = !DILocation(line: 340, column: 9, scope: !2294)
!2297 = !DILocation(line: 342, column: 28, scope: !678)
!2298 = !DILocation(line: 342, column: 19, scope: !678)
!2299 = !DILocation(line: 342, column: 37, scope: !678)
!2300 = !DILocation(line: 292, column: 15, scope: !678)
!2301 = !DILocation(line: 343, column: 23, scope: !678)
!2302 = !DILocation(line: 343, column: 31, scope: !678)
!2303 = !DILocation(line: 344, column: 5, scope: !678)
!2304 = !DILocation(line: 345, column: 30, scope: !678)
!2305 = !DILocation(line: 345, column: 14, scope: !678)
!2306 = !DILocation(line: 345, column: 5, scope: !678)
!2307 = !DILocation(line: 345, column: 23, scope: !678)
!2308 = !DILocation(line: 345, column: 28, scope: !678)
!2309 = !DILocation(line: 346, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !678, file: !1, line: 346, column: 9)
!2311 = !DILocation(line: 346, column: 9, scope: !678)
!2312 = !DILocation(line: 349, column: 9, scope: !2310)
!2313 = !DILocation(line: 350, column: 1, scope: !678)
!2314 = !DILocation(line: 365, column: 28, scope: !686)
!2315 = !DILocation(line: 365, column: 44, scope: !686)
!2316 = !DILocation(line: 367, column: 5, scope: !686)
!2317 = !DILocation(line: 367, column: 9, scope: !686)
!2318 = !DILocation(line: 369, column: 10, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !686, file: !1, line: 369, column: 9)
!2320 = !DILocation(line: 369, column: 9, scope: !686)
!2321 = !DILocation(line: 371, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !686, file: !1, line: 371, column: 9)
!2323 = !DILocation(line: 371, column: 21, scope: !2322)
!2324 = !DILocation(line: 372, column: 25, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !1, line: 371, column: 41)
!2326 = !DILocation(line: 372, column: 9, scope: !2325)
!2327 = !DILocation(line: 374, column: 9, scope: !2325)
!2328 = !DILocation(line: 376, column: 19, scope: !686)
!2329 = !DILocation(line: 376, column: 37, scope: !686)
!2330 = !DILocation(line: 368, column: 15, scope: !686)
!2331 = !DILocation(line: 377, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !686, file: !1, line: 377, column: 9)
!2333 = !DILocation(line: 377, column: 9, scope: !686)
!2334 = !DILocation(line: 378, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 377, column: 30)
!2336 = !DILocation(line: 379, column: 9, scope: !2335)
!2337 = !DILocation(line: 382, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 381, column: 10)
!2339 = !DILocation(line: 384, column: 1, scope: !686)
!2340 = !DILocation(line: 427, column: 32, scope: !692)
!2341 = !DILocation(line: 427, column: 48, scope: !692)
!2342 = !DILocation(line: 429, column: 5, scope: !692)
!2343 = !DILocation(line: 430, column: 5, scope: !692)
!2344 = !DILocation(line: 430, column: 9, scope: !692)
!2345 = !DILocation(line: 431, column: 10, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !692, file: !1, line: 431, column: 9)
!2347 = !DILocation(line: 431, column: 9, scope: !692)
!2348 = !DILocation(line: 434, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !692, file: !1, line: 434, column: 9)
!2350 = !DILocation(line: 434, column: 40, scope: !2349)
!2351 = !DILocation(line: 434, column: 37, scope: !2349)
!2352 = !DILocation(line: 434, column: 9, scope: !692)
!2353 = !DILocation(line: 435, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 434, column: 53)
!2355 = !DILocation(line: 435, column: 9, scope: !2354)
!2356 = !DILocation(line: 437, column: 9, scope: !2354)
!2357 = !DILocation(line: 440, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !692, file: !1, line: 440, column: 9)
!2359 = !DILocation(line: 440, column: 12, scope: !2358)
!2360 = !DILocation(line: 440, column: 18, scope: !2358)
!2361 = !DILocation(line: 429, column: 17, scope: !692)
!2362 = !DILocation(line: 440, column: 43, scope: !2358)
!2363 = !DILocation(line: 517, column: 1, scope: !734, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 440, column: 43, scope: !2358)
!2365 = !DILocation(line: 519, column: 10, scope: !734, inlinedAt: !2364)
!2366 = !DILocation(line: 440, column: 59, scope: !2358)
!2367 = !DILocation(line: 440, column: 9, scope: !692)
!2368 = !DILocation(line: 445, column: 17, scope: !692)
!2369 = !DILocation(line: 441, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 440, column: 66)
!2371 = !DILocation(line: 441, column: 9, scope: !2370)
!2372 = !DILocation(line: 442, column: 9, scope: !2370)
!2373 = !DILocation(line: 444, column: 14, scope: !692)
!2374 = !DILocation(line: 430, column: 13, scope: !692)
!2375 = !DILocation(line: 445, column: 15, scope: !692)
!2376 = !DILocation(line: 446, column: 28, scope: !692)
!2377 = !DILocation(line: 446, column: 12, scope: !692)
!2378 = !DILocation(line: 446, column: 5, scope: !692)
!2379 = !DILocation(line: 447, column: 1, scope: !692)
!2380 = !DILocation(line: 403, column: 31, scope: !761)
!2381 = !DILocation(line: 403, column: 47, scope: !761)
!2382 = !DILocation(line: 405, column: 5, scope: !761)
!2383 = !DILocation(line: 406, column: 5, scope: !761)
!2384 = !DILocation(line: 405, column: 9, scope: !761)
!2385 = !DILocation(line: 406, column: 9, scope: !761)
!2386 = !DILocation(line: 408, column: 10, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !761, file: !1, line: 408, column: 9)
!2388 = !DILocation(line: 408, column: 9, scope: !761)
!2389 = !DILocation(line: 410, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !761, file: !1, line: 410, column: 9)
!2391 = !DILocation(line: 410, column: 21, scope: !2390)
!2392 = !DILocation(line: 411, column: 25, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !1, line: 410, column: 41)
!2394 = !DILocation(line: 411, column: 9, scope: !2393)
!2395 = !DILocation(line: 413, column: 9, scope: !2393)
!2396 = !DILocation(line: 415, column: 31, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !761, file: !1, line: 415, column: 9)
!2398 = !DILocation(line: 415, column: 9, scope: !2397)
!2399 = !DILocation(line: 415, column: 36, scope: !2397)
!2400 = !DILocation(line: 415, column: 9, scope: !761)
!2401 = !DILocation(line: 416, column: 28, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 415, column: 40)
!2403 = !DILocation(line: 416, column: 9, scope: !2402)
!2404 = !DILocation(line: 417, column: 9, scope: !2402)
!2405 = !DILocation(line: 420, column: 5, scope: !761)
!2406 = !DILocation(line: 421, column: 5, scope: !761)
!2407 = !DILocation(line: 422, column: 1, scope: !761)
!2408 = !DILocation(line: 265, column: 24, scope: !767)
!2409 = !DILocation(line: 267, column: 5, scope: !771)
!2410 = !DILocation(line: 268, column: 11, scope: !771)
!2411 = !DILocation(line: 269, column: 5, scope: !771)
!2412 = !DILocation(line: 273, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !767, file: !1, line: 273, column: 9)
!2414 = !DILocation(line: 273, column: 9, scope: !767)
!2415 = !DILocation(line: 276, column: 5, scope: !767)
!2416 = !DILocation(line: 277, column: 5, scope: !767)
!2417 = !DILocation(line: 278, column: 1, scope: !767)
!2418 = !DILocation(line: 155, column: 38, scope: !830)
!2419 = !DILocation(line: 155, column: 54, scope: !830)
!2420 = !DILocation(line: 157, column: 19, scope: !830)
!2421 = !DILocation(line: 157, column: 5, scope: !830)
!2422 = !DILocation(line: 158, column: 5, scope: !830)
!2423 = !DILocation(line: 839, column: 31, scope: !834)
!2424 = !DILocation(line: 839, column: 47, scope: !834)
!2425 = !DILocation(line: 841, column: 5, scope: !834)
!2426 = !DILocation(line: 842, column: 5, scope: !834)
!2427 = !DILocation(line: 841, column: 10, scope: !834)
!2428 = !DILocation(line: 842, column: 9, scope: !834)
!2429 = !DILocation(line: 845, column: 10, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !834, file: !1, line: 845, column: 9)
!2431 = !DILocation(line: 845, column: 9, scope: !834)
!2432 = !DILocation(line: 848, column: 35, scope: !834)
!2433 = !DILocation(line: 848, column: 40, scope: !834)
!2434 = !DILocation(line: 848, column: 11, scope: !834)
!2435 = !DILocation(line: 843, column: 9, scope: !834)
!2436 = !DILocation(line: 849, column: 13, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !834, file: !1, line: 849, column: 9)
!2438 = !DILocation(line: 849, column: 9, scope: !834)
!2439 = !DILocation(line: 850, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !1, line: 849, column: 19)
!2441 = !DILocation(line: 850, column: 15, scope: !2440)
!2442 = !DILocation(line: 851, column: 28, scope: !2440)
!2443 = !DILocation(line: 851, column: 9, scope: !2440)
!2444 = !DILocation(line: 852, column: 9, scope: !2440)
!2445 = !DILocation(line: 856, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !834, file: !1, line: 856, column: 9)
!2447 = !DILocation(line: 856, column: 9, scope: !834)
!2448 = !DILocation(line: 859, column: 5, scope: !834)
!2449 = !DILocation(line: 860, column: 1, scope: !834)
!2450 = !DILocation(line: 618, column: 34, scope: !841)
!2451 = !DILocation(line: 618, column: 50, scope: !841)
!2452 = !DILocation(line: 620, column: 5, scope: !841)
!2453 = !DILocation(line: 621, column: 5, scope: !841)
!2454 = !DILocation(line: 622, column: 5, scope: !841)
!2455 = !DILocation(line: 620, column: 9, scope: !841)
!2456 = !DILocation(line: 621, column: 15, scope: !841)
!2457 = !DILocation(line: 625, column: 10, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !841, file: !1, line: 625, column: 9)
!2459 = !DILocation(line: 625, column: 9, scope: !841)
!2460 = !DILocation(line: 628, column: 28, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !841, file: !1, line: 628, column: 9)
!2462 = !DILocation(line: 622, column: 14, scope: !841)
!2463 = !DILocation(line: 628, column: 9, scope: !2461)
!2464 = !DILocation(line: 628, column: 9, scope: !841)
!2465 = !DILocation(line: 631, column: 27, scope: !841)
!2466 = !DILocation(line: 622, column: 20, scope: !841)
!2467 = !DILocation(line: 631, column: 11, scope: !841)
!2468 = !DILocation(line: 623, column: 9, scope: !841)
!2469 = !DILocation(line: 632, column: 13, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !841, file: !1, line: 632, column: 9)
!2471 = !DILocation(line: 632, column: 9, scope: !841)
!2472 = !DILocation(line: 633, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 632, column: 19)
!2474 = !DILocation(line: 633, column: 15, scope: !2473)
!2475 = !DILocation(line: 634, column: 28, scope: !2473)
!2476 = !DILocation(line: 634, column: 9, scope: !2473)
!2477 = !DILocation(line: 635, column: 9, scope: !2473)
!2478 = !DILocation(line: 639, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !841, file: !1, line: 639, column: 9)
!2480 = !DILocation(line: 639, column: 9, scope: !841)
!2481 = !DILocation(line: 642, column: 12, scope: !841)
!2482 = !DILocation(line: 642, column: 5, scope: !841)
!2483 = !DILocation(line: 643, column: 1, scope: !841)
!2484 = !DILocation(line: 654, column: 29, scope: !903)
!2485 = !DILocation(line: 657, column: 5, scope: !903)
!2486 = !DILocation(line: 657, column: 14, scope: !903)
!2487 = !DILocation(line: 658, column: 11, scope: !903)
!2488 = !DILocation(line: 656, column: 9, scope: !903)
!2489 = !DILocation(line: 659, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !903, file: !1, line: 659, column: 9)
!2491 = !DILocation(line: 659, column: 9, scope: !903)
!2492 = !DILocation(line: 660, column: 35, scope: !2490)
!2493 = !DILocation(line: 660, column: 16, scope: !2490)
!2494 = !DILocation(line: 660, column: 9, scope: !2490)
!2495 = !DILocation(line: 661, column: 12, scope: !903)
!2496 = !DILocation(line: 661, column: 5, scope: !903)
!2497 = !DILocation(line: 662, column: 1, scope: !903)
!2498 = !DILocation(line: 673, column: 26, scope: !908)
!2499 = !DILocation(line: 673, column: 42, scope: !908)
!2500 = !DILocation(line: 675, column: 5, scope: !908)
!2501 = !DILocation(line: 676, column: 5, scope: !908)
!2502 = !DILocation(line: 677, column: 5, scope: !908)
!2503 = !DILocation(line: 675, column: 15, scope: !908)
!2504 = !DILocation(line: 679, column: 10, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !908, file: !1, line: 679, column: 9)
!2506 = !DILocation(line: 679, column: 9, scope: !908)
!2507 = !DILocation(line: 682, column: 28, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !908, file: !1, line: 682, column: 9)
!2509 = !DILocation(line: 676, column: 14, scope: !908)
!2510 = !DILocation(line: 682, column: 9, scope: !2508)
!2511 = !DILocation(line: 682, column: 9, scope: !908)
!2512 = !DILocation(line: 685, column: 5, scope: !917)
!2513 = !DILocation(line: 677, column: 14, scope: !908)
!2514 = !DILocation(line: 686, column: 11, scope: !917)
!2515 = !DILocation(line: 677, column: 9, scope: !908)
!2516 = !DILocation(line: 687, column: 5, scope: !917)
!2517 = !DILocation(line: 688, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !908, file: !1, line: 688, column: 9)
!2519 = !DILocation(line: 688, column: 9, scope: !908)
!2520 = !DILocation(line: 689, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 688, column: 14)
!2522 = !DILocation(line: 689, column: 15, scope: !2521)
!2523 = !DILocation(line: 690, column: 35, scope: !2521)
!2524 = !DILocation(line: 690, column: 16, scope: !2521)
!2525 = !DILocation(line: 690, column: 9, scope: !2521)
!2526 = !DILocation(line: 693, column: 28, scope: !908)
!2527 = !DILocation(line: 693, column: 12, scope: !908)
!2528 = !DILocation(line: 693, column: 5, scope: !908)
!2529 = !DILocation(line: 694, column: 1, scope: !908)
!2530 = !DILocation(line: 756, column: 30, scope: !918)
!2531 = !DILocation(line: 756, column: 46, scope: !918)
!2532 = !DILocation(line: 758, column: 5, scope: !918)
!2533 = !DILocation(line: 759, column: 5, scope: !918)
!2534 = !DILocation(line: 760, column: 5, scope: !918)
!2535 = !DILocation(line: 758, column: 15, scope: !918)
!2536 = !DILocation(line: 763, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !918, file: !1, line: 763, column: 9)
!2538 = !DILocation(line: 763, column: 9, scope: !918)
!2539 = !DILocation(line: 766, column: 28, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !918, file: !1, line: 766, column: 9)
!2541 = !DILocation(line: 759, column: 14, scope: !918)
!2542 = !DILocation(line: 766, column: 9, scope: !2540)
!2543 = !DILocation(line: 766, column: 9, scope: !918)
!2544 = !DILocation(line: 769, column: 5, scope: !989)
!2545 = !DILocation(line: 760, column: 15, scope: !918)
!2546 = !DILocation(line: 770, column: 11, scope: !989)
!2547 = !DILocation(line: 761, column: 9, scope: !918)
!2548 = !DILocation(line: 771, column: 5, scope: !989)
!2549 = !DILocation(line: 772, column: 13, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !918, file: !1, line: 772, column: 9)
!2551 = !DILocation(line: 772, column: 9, scope: !918)
!2552 = !DILocation(line: 773, column: 35, scope: !2550)
!2553 = !DILocation(line: 773, column: 16, scope: !2550)
!2554 = !DILocation(line: 773, column: 9, scope: !2550)
!2555 = !DILocation(line: 775, column: 12, scope: !918)
!2556 = !DILocation(line: 775, column: 5, scope: !918)
!2557 = !DILocation(line: 776, column: 1, scope: !918)
!2558 = !DILocation(line: 788, column: 31, scope: !1001)
!2559 = !DILocation(line: 788, column: 47, scope: !1001)
!2560 = !DILocation(line: 790, column: 5, scope: !1001)
!2561 = !DILocation(line: 791, column: 5, scope: !1001)
!2562 = !DILocation(line: 792, column: 5, scope: !1001)
!2563 = !DILocation(line: 793, column: 5, scope: !1001)
!2564 = !DILocation(line: 794, column: 5, scope: !1001)
!2565 = !DILocation(line: 795, column: 5, scope: !1001)
!2566 = !DILocation(line: 790, column: 15, scope: !1001)
!2567 = !DILocation(line: 790, column: 25, scope: !1001)
!2568 = !DILocation(line: 798, column: 10, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 798, column: 9)
!2570 = !DILocation(line: 798, column: 9, scope: !1001)
!2571 = !DILocation(line: 802, column: 34, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 802, column: 9)
!2573 = !DILocation(line: 794, column: 12, scope: !1001)
!2574 = !DILocation(line: 795, column: 10, scope: !1001)
!2575 = !DILocation(line: 802, column: 9, scope: !2572)
!2576 = !DILocation(line: 803, column: 54, scope: !2572)
!2577 = !DILocation(line: 802, column: 9, scope: !1001)
!2578 = !DILocation(line: 805, column: 18, scope: !1001)
!2579 = !DILocation(line: 805, column: 9, scope: !1001)
!2580 = !DILocation(line: 805, column: 16, scope: !1001)
!2581 = !{!2582, !1227, i64 0}
!2582 = !{!"timespec", !1227, i64 0, !1227, i64 8}
!2583 = !DILocation(line: 806, column: 19, scope: !1001)
!2584 = !DILocation(line: 806, column: 9, scope: !1001)
!2585 = !DILocation(line: 806, column: 17, scope: !1001)
!2586 = !{!2582, !1227, i64 8}
!2587 = !DILocation(line: 808, column: 24, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 808, column: 9)
!2589 = !DILocation(line: 809, column: 25, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 808, column: 44)
!2591 = !DILocation(line: 809, column: 9, scope: !2590)
!2592 = !DILocation(line: 810, column: 9, scope: !2590)
!2593 = !DILocation(line: 813, column: 28, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 813, column: 9)
!2595 = !DILocation(line: 792, column: 14, scope: !1001)
!2596 = !DILocation(line: 813, column: 9, scope: !2594)
!2597 = !DILocation(line: 813, column: 9, scope: !1001)
!2598 = !DILocation(line: 816, column: 5, scope: !1015)
!2599 = !DILocation(line: 791, column: 21, scope: !1001)
!2600 = !DILocation(line: 793, column: 15, scope: !1001)
!2601 = !DILocation(line: 817, column: 11, scope: !1015)
!2602 = !DILocation(line: 796, column: 9, scope: !1001)
!2603 = !DILocation(line: 818, column: 5, scope: !1015)
!2604 = !DILocation(line: 819, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 819, column: 9)
!2606 = !DILocation(line: 819, column: 9, scope: !1001)
!2607 = !DILocation(line: 820, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 820, column: 13)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 819, column: 20)
!2610 = !DILocation(line: 820, column: 19, scope: !2608)
!2611 = !DILocation(line: 820, column: 13, scope: !2609)
!2612 = !DILocation(line: 821, column: 13, scope: !2608)
!2613 = !DILocation(line: 823, column: 39, scope: !2608)
!2614 = !DILocation(line: 823, column: 20, scope: !2608)
!2615 = !DILocation(line: 823, column: 13, scope: !2608)
!2616 = !DILocation(line: 826, column: 12, scope: !1001)
!2617 = !DILocation(line: 826, column: 5, scope: !1001)
!2618 = !DILocation(line: 827, column: 1, scope: !1001)
!2619 = !DILocation(line: 535, column: 30, scope: !860)
!2620 = !DILocation(line: 535, column: 50, scope: !860)
!2621 = !DILocation(line: 537, column: 9, scope: !860)
!2622 = !DILocation(line: 542, column: 5, scope: !860)
!2623 = !DILocation(line: 544, column: 16, scope: !860)
!2624 = !DILocation(line: 538, column: 15, scope: !860)
!2625 = !DILocation(line: 545, column: 18, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !860, file: !1, line: 545, column: 9)
!2627 = !DILocation(line: 545, column: 9, scope: !860)
!2628 = !DILocation(line: 550, column: 16, scope: !874)
!2629 = !DILocation(line: 538, column: 26, scope: !860)
!2630 = !DILocation(line: 551, column: 18, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !874, file: !1, line: 551, column: 13)
!2632 = !DILocation(line: 551, column: 13, scope: !874)
!2633 = !DILocation(line: 552, column: 17, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 552, column: 17)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 551, column: 27)
!2636 = !DILocation(line: 552, column: 17, scope: !2635)
!2637 = !DILocation(line: 558, column: 18, scope: !874)
!2638 = !DILocation(line: 539, column: 10, scope: !860)
!2639 = !DILocation(line: 559, column: 9, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!2641 = !DILocation(line: 559, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !873, file: !1, line: 559, column: 9)
!2643 = !DILocation(line: 559, column: 9, scope: !873)
!2644 = !DILocation(line: 559, column: 9, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 3)
!2646 = !DILocation(line: 560, column: 20, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !874, file: !1, line: 560, column: 13)
!2648 = !DILocation(line: 560, column: 26, scope: !2647)
!2649 = !DILocation(line: 560, column: 29, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2647, file: !1, discriminator: 1)
!2651 = !DILocation(line: 560, column: 13, scope: !874)
!2652 = !DILocation(line: 562, column: 24, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !874, file: !1, line: 562, column: 13)
!2654 = !DILocation(line: 563, column: 35, scope: !2653)
!2655 = !DILocation(line: 563, column: 19, scope: !2653)
!2656 = !DILocation(line: 540, column: 9, scope: !860)
!2657 = !DILocation(line: 566, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !874, file: !1, line: 566, column: 13)
!2659 = !DILocation(line: 566, column: 13, scope: !874)
!2660 = !DILocation(line: 567, column: 26, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 566, column: 18)
!2662 = !DILocation(line: 567, column: 13, scope: !2661)
!2663 = !DILocation(line: 569, column: 13, scope: !2661)
!2664 = !DILocation(line: 575, column: 5, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 1)
!2666 = !DILocation(line: 575, column: 5, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !878, file: !1, discriminator: 4)
!2668 = !DILocation(line: 575, column: 5, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !878, file: !1, line: 575, column: 5)
!2670 = !DILocation(line: 575, column: 5, scope: !878)
!2671 = !DILocation(line: 575, column: 5, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2669, file: !1, discriminator: 6)
!2673 = !DILocation(line: 576, column: 5, scope: !860)
!2674 = !DILocation(line: 582, column: 24, scope: !880)
!2675 = !DILocation(line: 587, column: 14, scope: !880)
!2676 = !DILocation(line: 584, column: 24, scope: !880)
!2677 = !DILocation(line: 588, column: 16, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !880, file: !1, line: 588, column: 9)
!2679 = !DILocation(line: 588, column: 9, scope: !880)
!2680 = !DILocation(line: 592, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !892, file: !1, line: 592, column: 13)
!2682 = !DILocation(line: 592, column: 37, scope: !2681)
!2683 = !DILocation(line: 592, column: 13, scope: !892)
!2684 = !DILocation(line: 600, column: 18, scope: !892)
!2685 = !DILocation(line: 584, column: 15, scope: !880)
!2686 = !DILocation(line: 601, column: 20, scope: !891)
!2687 = !DILocation(line: 601, column: 13, scope: !892)
!2688 = !DILocation(line: 602, column: 13, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 1)
!2690 = !DILocation(line: 602, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !889, file: !1, line: 602, column: 13)
!2692 = !DILocation(line: 602, column: 13, scope: !889)
!2693 = !DILocation(line: 602, column: 13, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2691, file: !1, discriminator: 3)
!2695 = !DILocation(line: 605, column: 13, scope: !898)
!2696 = !DILocation(line: 605, column: 39, scope: !898)
!2697 = !DILocation(line: 606, column: 13, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !896, file: !1, line: 606, column: 13)
!2699 = !DILocation(line: 605, column: 13, scope: !892)
!2700 = !DILocation(line: 606, column: 13, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 1)
!2702 = !DILocation(line: 606, column: 13, scope: !896)
!2703 = !DILocation(line: 606, column: 13, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2698, file: !1, discriminator: 3)
!2705 = !DILocation(line: 607, column: 13, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!2707 = !DILocation(line: 607, column: 13, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !900, file: !1, line: 607, column: 13)
!2709 = !DILocation(line: 607, column: 13, scope: !900)
!2710 = !DILocation(line: 607, column: 13, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2708, file: !1, discriminator: 3)
!2712 = !DILocation(line: 610, column: 9, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !902, file: !1, discriminator: 1)
!2714 = !DILocation(line: 610, column: 9, scope: !902)
!2715 = !DILocation(line: 610, column: 9, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2717, file: !1, discriminator: 3)
!2717 = distinct !DILexicalBlock(scope: !902, file: !1, line: 610, column: 9)
!2718 = !DILocation(line: 591, column: 5, scope: !894)
!2719 = !DILocation(line: 591, column: 23, scope: !893)
!2720 = !DILocation(line: 613, column: 1, scope: !880)
!2721 = !DILocation(line: 731, column: 25, scope: !990)
!2722 = !DILocation(line: 733, column: 24, scope: !990)
!2723 = !DILocation(line: 733, column: 15, scope: !990)
!2724 = !DILocation(line: 734, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !990, file: !1, line: 734, column: 9)
!2726 = !DILocation(line: 734, column: 9, scope: !990)
!2727 = !DILocation(line: 737, column: 5, scope: !990)
!2728 = !{!2729, !1215, i64 0}
!2729 = !{!"", !1215, i64 0, !1215, i64 4, !1215, i64 8, !1216, i64 16}
!2730 = !DILocation(line: 738, column: 5, scope: !990)
!2731 = !{!2729, !1215, i64 8}
!2732 = !DILocation(line: 739, column: 5, scope: !990)
!2733 = !{!2729, !1215, i64 4}
!2734 = !DILocation(line: 740, column: 5, scope: !990)
!2735 = !{!2736, !1215, i64 0}
!2736 = !{!"", !1215, i64 0, !1215, i64 4}
!2737 = !DILocation(line: 741, column: 5, scope: !990)
!2738 = !{!2736, !1215, i64 4}
!2739 = !DILocation(line: 742, column: 5, scope: !990)
!2740 = !{!2741, !1215, i64 8}
!2741 = !{!"", !1215, i64 0, !1215, i64 4, !1215, i64 8, !1227, i64 16, !1227, i64 24}
!2742 = !DILocation(line: 744, column: 5, scope: !990)
!2743 = !{!2744, !1227, i64 0}
!2744 = !{!"", !1227, i64 0, !1215, i64 8}
!2745 = !DILocation(line: 745, column: 9, scope: !1000)
!2746 = !DILocation(line: 745, column: 9, scope: !990)
!2747 = !DILocation(line: 746, column: 9, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 1)
!2749 = !DILocation(line: 746, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !998, file: !1, line: 746, column: 9)
!2751 = !DILocation(line: 746, column: 9, scope: !998)
!2752 = !DILocation(line: 746, column: 9, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2750, file: !1, discriminator: 3)
!2754 = !DILocation(line: 751, column: 1, scope: !990)
!2755 = !DILocation(line: 175, column: 27, scope: !1025)
!2756 = !DILocation(line: 177, column: 22, scope: !1025)
!2757 = !DILocation(line: 177, column: 9, scope: !1025)
!2758 = !DILocation(line: 178, column: 19, scope: !1025)
!2759 = !DILocation(line: 178, column: 13, scope: !1025)
!2760 = !DILocation(line: 178, column: 11, scope: !1025)
!2761 = !DILocation(line: 179, column: 24, scope: !1025)
!2762 = !DILocation(line: 179, column: 5, scope: !1025)
!2763 = !DILocation(line: 180, column: 5, scope: !1025)
!2764 = !DILocation(line: 182, column: 5, scope: !1025)
!2765 = !DILocation(line: 183, column: 11, scope: !1025)
!2766 = !DILocation(line: 184, column: 5, scope: !1025)
!2767 = !DILocation(line: 169, column: 29, scope: !1031)
!2768 = !DILocation(line: 171, column: 12, scope: !1031)
!2769 = !DILocation(line: 171, column: 5, scope: !1031)
