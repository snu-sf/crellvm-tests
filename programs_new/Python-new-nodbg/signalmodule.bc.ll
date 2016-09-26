; ModuleID = './signalmodule.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.__sigset_t = type { [16 x i64] }
%struct.siginfo_t = type { i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon.3, [80 x i8] }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.anon.0 = type { i32, i32 }
%struct.anon.5 = type { i64, i32 }

@wakeup_fd = internal global i32 -1, align 4
@main_thread = internal global i64 0, align 8
@main_pid = internal global i32 0, align 4
@signalmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1462 x i8], [1462 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @signal_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal global i32 0, align 4
@SiginfoType = internal global %struct._typeobject zeroinitializer, align 8
@struct_siginfo_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([226 x i8], [226 x i8]* @struct_siginfo__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([8 x %struct.PyStructSequence_Field], [8 x %struct.PyStructSequence_Field]* @struct_siginfo_fields, i32 0, i32 0), i32 7 }, align 8
@.str = private unnamed_addr constant [15 x i8] c"struct_siginfo\00", align 1
@DefaultHandler = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SIG_DFL\00", align 1
@IgnoreHandler = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"SIG_IGN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NSIG\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SIG_BLOCK\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SIG_UNBLOCK\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SIG_SETMASK\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"default_int_handler\00", align 1
@IntHandler = internal global %struct._object* null, align 8
@Handlers = internal global [65 x %struct.anon] zeroinitializer, align 16
@_Py_NoneStruct = external global %struct._object, align 8
@old_siginthandler = internal global void (i32)* null, align 8
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
@ItimerError = internal global %struct._object* null, align 8
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
  %fd.addr = alloca i32, align 4
  %old_fd = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load volatile i32, i32* @wakeup_fd, align 4
  store i32 %0, i32* %old_fd, align 4
  %1 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %fd.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fd.addr, align 4
  store volatile i32 %2, i32* @wakeup_fd, align 4
  %3 = load i32, i32* %old_fd, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_signal() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %t = alloca void (i32)*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_xdecref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_py_xdecref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_xdecref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp156 = alloca %struct._object*, align 8
  %_py_xdecref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp175 = alloca %struct._object*, align 8
  %_py_xdecref_tmp190 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_xdecref_tmp209 = alloca %struct._object*, align 8
  %_py_decref_tmp213 = alloca %struct._object*, align 8
  %_py_xdecref_tmp228 = alloca %struct._object*, align 8
  %_py_decref_tmp232 = alloca %struct._object*, align 8
  %_py_xdecref_tmp247 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %_py_xdecref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp270 = alloca %struct._object*, align 8
  %_py_xdecref_tmp285 = alloca %struct._object*, align 8
  %_py_decref_tmp289 = alloca %struct._object*, align 8
  %_py_xdecref_tmp304 = alloca %struct._object*, align 8
  %_py_decref_tmp308 = alloca %struct._object*, align 8
  %_py_xdecref_tmp323 = alloca %struct._object*, align 8
  %_py_decref_tmp327 = alloca %struct._object*, align 8
  %_py_xdecref_tmp342 = alloca %struct._object*, align 8
  %_py_decref_tmp346 = alloca %struct._object*, align 8
  %_py_xdecref_tmp361 = alloca %struct._object*, align 8
  %_py_decref_tmp365 = alloca %struct._object*, align 8
  %_py_xdecref_tmp380 = alloca %struct._object*, align 8
  %_py_decref_tmp384 = alloca %struct._object*, align 8
  %_py_xdecref_tmp399 = alloca %struct._object*, align 8
  %_py_decref_tmp403 = alloca %struct._object*, align 8
  %_py_xdecref_tmp418 = alloca %struct._object*, align 8
  %_py_decref_tmp422 = alloca %struct._object*, align 8
  %_py_xdecref_tmp437 = alloca %struct._object*, align 8
  %_py_decref_tmp441 = alloca %struct._object*, align 8
  %_py_xdecref_tmp456 = alloca %struct._object*, align 8
  %_py_decref_tmp460 = alloca %struct._object*, align 8
  %_py_xdecref_tmp475 = alloca %struct._object*, align 8
  %_py_decref_tmp479 = alloca %struct._object*, align 8
  %_py_xdecref_tmp494 = alloca %struct._object*, align 8
  %_py_decref_tmp498 = alloca %struct._object*, align 8
  %_py_xdecref_tmp513 = alloca %struct._object*, align 8
  %_py_decref_tmp517 = alloca %struct._object*, align 8
  %_py_xdecref_tmp532 = alloca %struct._object*, align 8
  %_py_decref_tmp536 = alloca %struct._object*, align 8
  %_py_xdecref_tmp551 = alloca %struct._object*, align 8
  %_py_decref_tmp555 = alloca %struct._object*, align 8
  %_py_xdecref_tmp570 = alloca %struct._object*, align 8
  %_py_decref_tmp574 = alloca %struct._object*, align 8
  %_py_xdecref_tmp589 = alloca %struct._object*, align 8
  %_py_decref_tmp593 = alloca %struct._object*, align 8
  %_py_xdecref_tmp608 = alloca %struct._object*, align 8
  %_py_decref_tmp612 = alloca %struct._object*, align 8
  %_py_xdecref_tmp627 = alloca %struct._object*, align 8
  %_py_decref_tmp631 = alloca %struct._object*, align 8
  %_py_xdecref_tmp646 = alloca %struct._object*, align 8
  %_py_decref_tmp650 = alloca %struct._object*, align 8
  %_py_xdecref_tmp665 = alloca %struct._object*, align 8
  %_py_decref_tmp669 = alloca %struct._object*, align 8
  %_py_xdecref_tmp684 = alloca %struct._object*, align 8
  %_py_decref_tmp688 = alloca %struct._object*, align 8
  %_py_xdecref_tmp703 = alloca %struct._object*, align 8
  %_py_decref_tmp707 = alloca %struct._object*, align 8
  %_py_xdecref_tmp723 = alloca %struct._object*, align 8
  %_py_decref_tmp728 = alloca %struct._object*, align 8
  %_py_xdecref_tmp746 = alloca %struct._object*, align 8
  %_py_decref_tmp751 = alloca %struct._object*, align 8
  %_py_decref_tmp767 = alloca %struct._object*, align 8
  %_py_decref_tmp781 = alloca %struct._object*, align 8
  %_py_decref_tmp795 = alloca %struct._object*, align 8
  %_py_decref_tmp816 = alloca %struct._object*, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* @main_thread, align 8
  %call1 = call i32 @getpid() #5
  store i32 %call1, i32* @main_pid, align 4
  %call2 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @signalmodule, i32 1013)
  store %struct._object* %call2, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @SiginfoType, %struct.PyStructSequence_Desc* @struct_siginfo_desc)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SiginfoType, i32 0, i32 0, i32 0))
  store i32 1, i32* @initialized, align 4
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call %struct._object* @PyModule_GetDict(%struct._object* %4)
  store %struct._object* %call10, %struct._object** %d, align 8
  %call11 = call %struct._object* @PyLong_FromVoidPtr(i8* null)
  store %struct._object* %call11, %struct._object** @DefaultHandler, align 8
  store %struct._object* %call11, %struct._object** %x, align 8
  %5 = load %struct._object*, %struct._object** %x, align 8
  %tobool12 = icmp ne %struct._object* %5, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %d, align 8
  %7 = load %struct._object*, %struct._object** %x, align 8
  %call13 = call i32 @PyDict_SetItemString(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._object* %7)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.8
  br label %finally

if.end.16:                                        ; preds = %lor.lhs.false
  %call17 = call %struct._object* @PyLong_FromVoidPtr(i8* inttoptr (i64 1 to i8*))
  store %struct._object* %call17, %struct._object** @IgnoreHandler, align 8
  store %struct._object* %call17, %struct._object** %x, align 8
  %8 = load %struct._object*, %struct._object** %x, align 8
  %tobool18 = icmp ne %struct._object* %8, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %if.end.16
  %9 = load %struct._object*, %struct._object** %d, align 8
  %10 = load %struct._object*, %struct._object** %x, align 8
  %call20 = call i32 @PyDict_SetItemString(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._object* %10)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.16
  br label %finally

if.end.23:                                        ; preds = %lor.lhs.false.19
  %call24 = call %struct._object* @PyLong_FromLong(i64 65)
  store %struct._object* %call24, %struct._object** %x, align 8
  %11 = load %struct._object*, %struct._object** %x, align 8
  %tobool25 = icmp ne %struct._object* %11, null
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.29

lor.lhs.false.26:                                 ; preds = %if.end.23
  %12 = load %struct._object*, %struct._object** %d, align 8
  %13 = load %struct._object*, %struct._object** %x, align 8
  %call27 = call i32 @PyDict_SetItemString(%struct._object* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* %13)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.26, %if.end.23
  br label %finally

if.end.30:                                        ; preds = %lor.lhs.false.26
  br label %do.body

do.body:                                          ; preds = %if.end.30
  %14 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body
  br label %if.end.33

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.33
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i64 0)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end
  br label %finally

if.end.37:                                        ; preds = %do.end
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call38 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  br label %finally

if.end.41:                                        ; preds = %if.end.37
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call42 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 2)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %finally

if.end.45:                                        ; preds = %if.end.41
  %24 = load %struct._object*, %struct._object** %d, align 8
  %call46 = call %struct._object* @PyDict_GetItemString(%struct._object* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call46, %struct._object** @IntHandler, align 8
  store %struct._object* %call46, %struct._object** %x, align 8
  %25 = load %struct._object*, %struct._object** %x, align 8
  %tobool47 = icmp ne %struct._object* %25, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  br label %finally

if.end.49:                                        ; preds = %if.end.45
  %26 = load %struct._object*, %struct._object** @IntHandler, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt50, align 8
  %inc51 = add i64 %27, 1
  store i64 %inc51, i64* %ob_refcnt50, align 8
  store volatile i32 0, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 0, i32 0), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %28 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %28, 65
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %call53 = call void (i32)* @PyOS_getsig(i32 %29)
  store void (i32)* %call53, void (i32)** %t, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store volatile i32 0, i32* %tripped, align 4
  %31 = load void (i32)*, void (i32)** %t, align 8
  %cmp54 = icmp eq void (i32)* %31, null
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %for.body
  %32 = load %struct._object*, %struct._object** @DefaultHandler, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %33 to i64
  %arrayidx57 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom56
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx57, i32 0, i32 1
  store volatile %struct._object* %32, %struct._object** %func, align 8
  br label %if.end.69

if.else.58:                                       ; preds = %for.body
  %34 = load void (i32)*, void (i32)** %t, align 8
  %cmp59 = icmp eq void (i32)* %34, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp59, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.else.58
  %35 = load %struct._object*, %struct._object** @IgnoreHandler, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %36 to i64
  %arrayidx62 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom61
  %func63 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx62, i32 0, i32 1
  store volatile %struct._object* %35, %struct._object** %func63, align 8
  br label %if.end.68

if.else.64:                                       ; preds = %if.else.58
  %37 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %37 to i64
  %arrayidx66 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom65
  %func67 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx66, i32 0, i32 1
  store volatile %struct._object* @_Py_NoneStruct, %struct._object** %func67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.64, %if.then.60
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.55
  %38 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %38 to i64
  %arrayidx71 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom70
  %func72 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx71, i32 0, i32 1
  %39 = load volatile %struct._object*, %struct._object** %func72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt73, align 8
  %inc74 = add i64 %40, 1
  store i64 %inc74, i64* %ob_refcnt73, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %41 = load i32, i32* %i, align 4
  %inc75 = add i32 %41, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load volatile %struct._object*, %struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 2, i32 1), align 8
  %43 = load %struct._object*, %struct._object** @DefaultHandler, align 8
  %cmp76 = icmp eq %struct._object* %42, %43
  br i1 %cmp76, label %if.then.77, label %if.end.92

if.then.77:                                       ; preds = %for.end
  %44 = load %struct._object*, %struct._object** @IntHandler, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt78, align 8
  %inc79 = add i64 %45, 1
  store i64 %inc79, i64* %ob_refcnt78, align 8
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.77
  %46 = load volatile %struct._object*, %struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 2, i32 1), align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp81, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %48, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %51(%struct._object* %52)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %53 = load %struct._object*, %struct._object** @IntHandler, align 8
  store volatile %struct._object* %53, %struct._object** getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 2, i32 1), align 8
  %call91 = call void (i32)* @PyOS_setsig(i32 2, void (i32)* @signal_handler)
  store void (i32)* %call91, void (i32)** @old_siginthandler, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.90, %for.end
  %call93 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call93, %struct._object** %x, align 8
  %54 = load %struct._object*, %struct._object** %d, align 8
  %55 = load %struct._object*, %struct._object** %x, align 8
  %call94 = call i32 @PyDict_SetItemString(%struct._object* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct._object* %55)
  br label %do.body.95

do.body.95:                                       ; preds = %if.end.92
  %56 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp96 = icmp ne %struct._object* %57, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.95
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp99, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %60, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %63(%struct._object* %64)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.95
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %call111 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call111, %struct._object** %x, align 8
  %65 = load %struct._object*, %struct._object** %d, align 8
  %66 = load %struct._object*, %struct._object** %x, align 8
  %call112 = call i32 @PyDict_SetItemString(%struct._object* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._object* %66)
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.110
  %67 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %67, %struct._object** %_py_xdecref_tmp114, align 8
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp114, align 8
  %cmp115 = icmp ne %struct._object* %68, null
  br i1 %cmp115, label %if.then.116, label %if.end.128

if.then.116:                                      ; preds = %do.body.113
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp114, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp118, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %71, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.117
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.117
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %74(%struct._object* %75)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %do.body.113
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  %call130 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call130, %struct._object** %x, align 8
  %76 = load %struct._object*, %struct._object** %d, align 8
  %77 = load %struct._object*, %struct._object** %x, align 8
  %call131 = call i32 @PyDict_SetItemString(%struct._object* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* %77)
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.129
  %78 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp133, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  %cmp134 = icmp ne %struct._object* %79, null
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.body.132
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp137, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %82, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %85(%struct._object* %86)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.132
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  %call149 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call149, %struct._object** %x, align 8
  %87 = load %struct._object*, %struct._object** %d, align 8
  %88 = load %struct._object*, %struct._object** %x, align 8
  %call150 = call i32 @PyDict_SetItemString(%struct._object* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._object* %88)
  br label %do.body.151

do.body.151:                                      ; preds = %do.end.148
  %89 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp152, align 8
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp152, align 8
  %cmp153 = icmp ne %struct._object* %90, null
  br i1 %cmp153, label %if.then.154, label %if.end.166

if.then.154:                                      ; preds = %do.body.151
  br label %do.body.155

do.body.155:                                      ; preds = %if.then.154
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp152, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp156, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt157, align 8
  %dec158 = add i64 %93, -1
  store i64 %dec158, i64* %ob_refcnt157, align 8
  %cmp159 = icmp ne i64 %dec158, 0
  br i1 %cmp159, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %do.body.155
  br label %if.end.164

if.else.161:                                      ; preds = %do.body.155
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_dealloc163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  call void %96(%struct._object* %97)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %do.body.151
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  %call168 = call %struct._object* @PyLong_FromLong(i64 5)
  store %struct._object* %call168, %struct._object** %x, align 8
  %98 = load %struct._object*, %struct._object** %d, align 8
  %99 = load %struct._object*, %struct._object** %x, align 8
  %call169 = call i32 @PyDict_SetItemString(%struct._object* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct._object* %99)
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.167
  %100 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp171, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp171, align 8
  %cmp172 = icmp ne %struct._object* %101, null
  br i1 %cmp172, label %if.then.173, label %if.end.185

if.then.173:                                      ; preds = %do.body.170
  br label %do.body.174

do.body.174:                                      ; preds = %if.then.173
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp171, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp175, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_refcnt176 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt176, align 8
  %dec177 = add i64 %104, -1
  store i64 %dec177, i64* %ob_refcnt176, align 8
  %cmp178 = icmp ne i64 %dec177, 0
  br i1 %cmp178, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %do.body.174
  br label %if.end.183

if.else.180:                                      ; preds = %do.body.174
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_type181 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type181, align 8
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  call void %107(%struct._object* %108)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.180, %if.then.179
  br label %do.end.184

do.end.184:                                       ; preds = %if.end.183
  br label %if.end.185

if.end.185:                                       ; preds = %do.end.184, %do.body.170
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  %call187 = call %struct._object* @PyLong_FromLong(i64 6)
  store %struct._object* %call187, %struct._object** %x, align 8
  %109 = load %struct._object*, %struct._object** %d, align 8
  %110 = load %struct._object*, %struct._object** %x, align 8
  %call188 = call i32 @PyDict_SetItemString(%struct._object* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %struct._object* %110)
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.186
  %111 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %111, %struct._object** %_py_xdecref_tmp190, align 8
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp190, align 8
  %cmp191 = icmp ne %struct._object* %112, null
  br i1 %cmp191, label %if.then.192, label %if.end.204

if.then.192:                                      ; preds = %do.body.189
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp190, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp194, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt195, align 8
  %dec196 = add i64 %115, -1
  store i64 %dec196, i64* %ob_refcnt195, align 8
  %cmp197 = icmp ne i64 %dec196, 0
  br i1 %cmp197, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %do.body.193
  br label %if.end.202

if.else.199:                                      ; preds = %do.body.193
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  call void %118(%struct._object* %119)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.198
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  br label %if.end.204

if.end.204:                                       ; preds = %do.end.203, %do.body.189
  br label %do.end.205

do.end.205:                                       ; preds = %if.end.204
  %call206 = call %struct._object* @PyLong_FromLong(i64 6)
  store %struct._object* %call206, %struct._object** %x, align 8
  %120 = load %struct._object*, %struct._object** %d, align 8
  %121 = load %struct._object*, %struct._object** %x, align 8
  %call207 = call i32 @PyDict_SetItemString(%struct._object* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* %121)
  br label %do.body.208

do.body.208:                                      ; preds = %do.end.205
  %122 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %122, %struct._object** %_py_xdecref_tmp209, align 8
  %123 = load %struct._object*, %struct._object** %_py_xdecref_tmp209, align 8
  %cmp210 = icmp ne %struct._object* %123, null
  br i1 %cmp210, label %if.then.211, label %if.end.223

if.then.211:                                      ; preds = %do.body.208
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %124 = load %struct._object*, %struct._object** %_py_xdecref_tmp209, align 8
  store %struct._object* %124, %struct._object** %_py_decref_tmp213, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_refcnt214 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt214, align 8
  %dec215 = add i64 %126, -1
  store i64 %dec215, i64* %ob_refcnt214, align 8
  %cmp216 = icmp ne i64 %dec215, 0
  br i1 %cmp216, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %do.body.212
  br label %if.end.221

if.else.218:                                      ; preds = %do.body.212
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_type219 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type219, align 8
  %tp_dealloc220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc220, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  call void %129(%struct._object* %130)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.217
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  br label %if.end.223

if.end.223:                                       ; preds = %do.end.222, %do.body.208
  br label %do.end.224

do.end.224:                                       ; preds = %if.end.223
  %call225 = call %struct._object* @PyLong_FromLong(i64 8)
  store %struct._object* %call225, %struct._object** %x, align 8
  %131 = load %struct._object*, %struct._object** %d, align 8
  %132 = load %struct._object*, %struct._object** %x, align 8
  %call226 = call i32 @PyDict_SetItemString(%struct._object* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* %132)
  br label %do.body.227

do.body.227:                                      ; preds = %do.end.224
  %133 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %133, %struct._object** %_py_xdecref_tmp228, align 8
  %134 = load %struct._object*, %struct._object** %_py_xdecref_tmp228, align 8
  %cmp229 = icmp ne %struct._object* %134, null
  br i1 %cmp229, label %if.then.230, label %if.end.242

if.then.230:                                      ; preds = %do.body.227
  br label %do.body.231

do.body.231:                                      ; preds = %if.then.230
  %135 = load %struct._object*, %struct._object** %_py_xdecref_tmp228, align 8
  store %struct._object* %135, %struct._object** %_py_decref_tmp232, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0
  %137 = load i64, i64* %ob_refcnt233, align 8
  %dec234 = add i64 %137, -1
  store i64 %dec234, i64* %ob_refcnt233, align 8
  %cmp235 = icmp ne i64 %dec234, 0
  br i1 %cmp235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %do.body.231
  br label %if.end.240

if.else.237:                                      ; preds = %do.body.231
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_type238 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 1
  %139 = load %struct._typeobject*, %struct._typeobject** %ob_type238, align 8
  %tp_dealloc239 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %139, i32 0, i32 4
  %140 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc239, align 8
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  call void %140(%struct._object* %141)
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.237, %if.then.236
  br label %do.end.241

do.end.241:                                       ; preds = %if.end.240
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %do.body.227
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  %call244 = call %struct._object* @PyLong_FromLong(i64 9)
  store %struct._object* %call244, %struct._object** %x, align 8
  %142 = load %struct._object*, %struct._object** %d, align 8
  %143 = load %struct._object*, %struct._object** %x, align 8
  %call245 = call i32 @PyDict_SetItemString(%struct._object* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* %143)
  br label %do.body.246

do.body.246:                                      ; preds = %do.end.243
  %144 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %144, %struct._object** %_py_xdecref_tmp247, align 8
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp247, align 8
  %cmp248 = icmp ne %struct._object* %145, null
  br i1 %cmp248, label %if.then.249, label %if.end.261

if.then.249:                                      ; preds = %do.body.246
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  %146 = load %struct._object*, %struct._object** %_py_xdecref_tmp247, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp251, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt252, align 8
  %dec253 = add i64 %148, -1
  store i64 %dec253, i64* %ob_refcnt252, align 8
  %cmp254 = icmp ne i64 %dec253, 0
  br i1 %cmp254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %do.body.250
  br label %if.end.259

if.else.256:                                      ; preds = %do.body.250
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  call void %151(%struct._object* %152)
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  br label %do.end.260

do.end.260:                                       ; preds = %if.end.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %do.body.246
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  %call263 = call %struct._object* @PyLong_FromLong(i64 7)
  store %struct._object* %call263, %struct._object** %x, align 8
  %153 = load %struct._object*, %struct._object** %d, align 8
  %154 = load %struct._object*, %struct._object** %x, align 8
  %call264 = call i32 @PyDict_SetItemString(%struct._object* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._object* %154)
  br label %do.body.265

do.body.265:                                      ; preds = %do.end.262
  %155 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %155, %struct._object** %_py_xdecref_tmp266, align 8
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8
  %cmp267 = icmp ne %struct._object* %156, null
  br i1 %cmp267, label %if.then.268, label %if.end.280

if.then.268:                                      ; preds = %do.body.265
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  %157 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8
  store %struct._object* %157, %struct._object** %_py_decref_tmp270, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_refcnt271 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 0
  %159 = load i64, i64* %ob_refcnt271, align 8
  %dec272 = add i64 %159, -1
  store i64 %dec272, i64* %ob_refcnt271, align 8
  %cmp273 = icmp ne i64 %dec272, 0
  br i1 %cmp273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %do.body.269
  br label %if.end.278

if.else.275:                                      ; preds = %do.body.269
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 4
  %162 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  call void %162(%struct._object* %163)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.then.274
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %do.body.265
  br label %do.end.281

do.end.281:                                       ; preds = %if.end.280
  %call282 = call %struct._object* @PyLong_FromLong(i64 11)
  store %struct._object* %call282, %struct._object** %x, align 8
  %164 = load %struct._object*, %struct._object** %d, align 8
  %165 = load %struct._object*, %struct._object** %x, align 8
  %call283 = call i32 @PyDict_SetItemString(%struct._object* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* %165)
  br label %do.body.284

do.body.284:                                      ; preds = %do.end.281
  %166 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %166, %struct._object** %_py_xdecref_tmp285, align 8
  %167 = load %struct._object*, %struct._object** %_py_xdecref_tmp285, align 8
  %cmp286 = icmp ne %struct._object* %167, null
  br i1 %cmp286, label %if.then.287, label %if.end.299

if.then.287:                                      ; preds = %do.body.284
  br label %do.body.288

do.body.288:                                      ; preds = %if.then.287
  %168 = load %struct._object*, %struct._object** %_py_xdecref_tmp285, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp289, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  %ob_refcnt290 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt290, align 8
  %dec291 = add i64 %170, -1
  store i64 %dec291, i64* %ob_refcnt290, align 8
  %cmp292 = icmp ne i64 %dec291, 0
  br i1 %cmp292, label %if.then.293, label %if.else.294

if.then.293:                                      ; preds = %do.body.288
  br label %if.end.297

if.else.294:                                      ; preds = %do.body.288
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  %ob_type295 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type295, align 8
  %tp_dealloc296 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc296, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp289, align 8
  call void %173(%struct._object* %174)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.293
  br label %do.end.298

do.end.298:                                       ; preds = %if.end.297
  br label %if.end.299

if.end.299:                                       ; preds = %do.end.298, %do.body.284
  br label %do.end.300

do.end.300:                                       ; preds = %if.end.299
  %call301 = call %struct._object* @PyLong_FromLong(i64 31)
  store %struct._object* %call301, %struct._object** %x, align 8
  %175 = load %struct._object*, %struct._object** %d, align 8
  %176 = load %struct._object*, %struct._object** %x, align 8
  %call302 = call i32 @PyDict_SetItemString(%struct._object* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* %176)
  br label %do.body.303

do.body.303:                                      ; preds = %do.end.300
  %177 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %177, %struct._object** %_py_xdecref_tmp304, align 8
  %178 = load %struct._object*, %struct._object** %_py_xdecref_tmp304, align 8
  %cmp305 = icmp ne %struct._object* %178, null
  br i1 %cmp305, label %if.then.306, label %if.end.318

if.then.306:                                      ; preds = %do.body.303
  br label %do.body.307

do.body.307:                                      ; preds = %if.then.306
  %179 = load %struct._object*, %struct._object** %_py_xdecref_tmp304, align 8
  store %struct._object* %179, %struct._object** %_py_decref_tmp308, align 8
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  %ob_refcnt309 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 0
  %181 = load i64, i64* %ob_refcnt309, align 8
  %dec310 = add i64 %181, -1
  store i64 %dec310, i64* %ob_refcnt309, align 8
  %cmp311 = icmp ne i64 %dec310, 0
  br i1 %cmp311, label %if.then.312, label %if.else.313

if.then.312:                                      ; preds = %do.body.307
  br label %if.end.316

if.else.313:                                      ; preds = %do.body.307
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 1
  %183 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8
  %tp_dealloc315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %183, i32 0, i32 4
  %184 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc315, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp308, align 8
  call void %184(%struct._object* %185)
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.313, %if.then.312
  br label %do.end.317

do.end.317:                                       ; preds = %if.end.316
  br label %if.end.318

if.end.318:                                       ; preds = %do.end.317, %do.body.303
  br label %do.end.319

do.end.319:                                       ; preds = %if.end.318
  %call320 = call %struct._object* @PyLong_FromLong(i64 13)
  store %struct._object* %call320, %struct._object** %x, align 8
  %186 = load %struct._object*, %struct._object** %d, align 8
  %187 = load %struct._object*, %struct._object** %x, align 8
  %call321 = call i32 @PyDict_SetItemString(%struct._object* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %struct._object* %187)
  br label %do.body.322

do.body.322:                                      ; preds = %do.end.319
  %188 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %188, %struct._object** %_py_xdecref_tmp323, align 8
  %189 = load %struct._object*, %struct._object** %_py_xdecref_tmp323, align 8
  %cmp324 = icmp ne %struct._object* %189, null
  br i1 %cmp324, label %if.then.325, label %if.end.337

if.then.325:                                      ; preds = %do.body.322
  br label %do.body.326

do.body.326:                                      ; preds = %if.then.325
  %190 = load %struct._object*, %struct._object** %_py_xdecref_tmp323, align 8
  store %struct._object* %190, %struct._object** %_py_decref_tmp327, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp327, align 8
  %ob_refcnt328 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 0
  %192 = load i64, i64* %ob_refcnt328, align 8
  %dec329 = add i64 %192, -1
  store i64 %dec329, i64* %ob_refcnt328, align 8
  %cmp330 = icmp ne i64 %dec329, 0
  br i1 %cmp330, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %do.body.326
  br label %if.end.335

if.else.332:                                      ; preds = %do.body.326
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp327, align 8
  %ob_type333 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 1
  %194 = load %struct._typeobject*, %struct._typeobject** %ob_type333, align 8
  %tp_dealloc334 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %194, i32 0, i32 4
  %195 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc334, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp327, align 8
  call void %195(%struct._object* %196)
  br label %if.end.335

if.end.335:                                       ; preds = %if.else.332, %if.then.331
  br label %do.end.336

do.end.336:                                       ; preds = %if.end.335
  br label %if.end.337

if.end.337:                                       ; preds = %do.end.336, %do.body.322
  br label %do.end.338

do.end.338:                                       ; preds = %if.end.337
  %call339 = call %struct._object* @PyLong_FromLong(i64 14)
  store %struct._object* %call339, %struct._object** %x, align 8
  %197 = load %struct._object*, %struct._object** %d, align 8
  %198 = load %struct._object*, %struct._object** %x, align 8
  %call340 = call i32 @PyDict_SetItemString(%struct._object* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* %198)
  br label %do.body.341

do.body.341:                                      ; preds = %do.end.338
  %199 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %199, %struct._object** %_py_xdecref_tmp342, align 8
  %200 = load %struct._object*, %struct._object** %_py_xdecref_tmp342, align 8
  %cmp343 = icmp ne %struct._object* %200, null
  br i1 %cmp343, label %if.then.344, label %if.end.356

if.then.344:                                      ; preds = %do.body.341
  br label %do.body.345

do.body.345:                                      ; preds = %if.then.344
  %201 = load %struct._object*, %struct._object** %_py_xdecref_tmp342, align 8
  store %struct._object* %201, %struct._object** %_py_decref_tmp346, align 8
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  %ob_refcnt347 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0
  %203 = load i64, i64* %ob_refcnt347, align 8
  %dec348 = add i64 %203, -1
  store i64 %dec348, i64* %ob_refcnt347, align 8
  %cmp349 = icmp ne i64 %dec348, 0
  br i1 %cmp349, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %do.body.345
  br label %if.end.354

if.else.351:                                      ; preds = %do.body.345
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8
  %tp_dealloc353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc353, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  call void %206(%struct._object* %207)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.351, %if.then.350
  br label %do.end.355

do.end.355:                                       ; preds = %if.end.354
  br label %if.end.356

if.end.356:                                       ; preds = %do.end.355, %do.body.341
  br label %do.end.357

do.end.357:                                       ; preds = %if.end.356
  %call358 = call %struct._object* @PyLong_FromLong(i64 15)
  store %struct._object* %call358, %struct._object** %x, align 8
  %208 = load %struct._object*, %struct._object** %d, align 8
  %209 = load %struct._object*, %struct._object** %x, align 8
  %call359 = call i32 @PyDict_SetItemString(%struct._object* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* %209)
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.357
  %210 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %210, %struct._object** %_py_xdecref_tmp361, align 8
  %211 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8
  %cmp362 = icmp ne %struct._object* %211, null
  br i1 %cmp362, label %if.then.363, label %if.end.375

if.then.363:                                      ; preds = %do.body.360
  br label %do.body.364

do.body.364:                                      ; preds = %if.then.363
  %212 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8
  store %struct._object* %212, %struct._object** %_py_decref_tmp365, align 8
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp365, align 8
  %ob_refcnt366 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 0
  %214 = load i64, i64* %ob_refcnt366, align 8
  %dec367 = add i64 %214, -1
  store i64 %dec367, i64* %ob_refcnt366, align 8
  %cmp368 = icmp ne i64 %dec367, 0
  br i1 %cmp368, label %if.then.369, label %if.else.370

if.then.369:                                      ; preds = %do.body.364
  br label %if.end.373

if.else.370:                                      ; preds = %do.body.364
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp365, align 8
  %ob_type371 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 1
  %216 = load %struct._typeobject*, %struct._typeobject** %ob_type371, align 8
  %tp_dealloc372 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %216, i32 0, i32 4
  %217 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc372, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp365, align 8
  call void %217(%struct._object* %218)
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.370, %if.then.369
  br label %do.end.374

do.end.374:                                       ; preds = %if.end.373
  br label %if.end.375

if.end.375:                                       ; preds = %do.end.374, %do.body.360
  br label %do.end.376

do.end.376:                                       ; preds = %if.end.375
  %call377 = call %struct._object* @PyLong_FromLong(i64 10)
  store %struct._object* %call377, %struct._object** %x, align 8
  %219 = load %struct._object*, %struct._object** %d, align 8
  %220 = load %struct._object*, %struct._object** %x, align 8
  %call378 = call i32 @PyDict_SetItemString(%struct._object* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), %struct._object* %220)
  br label %do.body.379

do.body.379:                                      ; preds = %do.end.376
  %221 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %221, %struct._object** %_py_xdecref_tmp380, align 8
  %222 = load %struct._object*, %struct._object** %_py_xdecref_tmp380, align 8
  %cmp381 = icmp ne %struct._object* %222, null
  br i1 %cmp381, label %if.then.382, label %if.end.394

if.then.382:                                      ; preds = %do.body.379
  br label %do.body.383

do.body.383:                                      ; preds = %if.then.382
  %223 = load %struct._object*, %struct._object** %_py_xdecref_tmp380, align 8
  store %struct._object* %223, %struct._object** %_py_decref_tmp384, align 8
  %224 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  %ob_refcnt385 = getelementptr inbounds %struct._object, %struct._object* %224, i32 0, i32 0
  %225 = load i64, i64* %ob_refcnt385, align 8
  %dec386 = add i64 %225, -1
  store i64 %dec386, i64* %ob_refcnt385, align 8
  %cmp387 = icmp ne i64 %dec386, 0
  br i1 %cmp387, label %if.then.388, label %if.else.389

if.then.388:                                      ; preds = %do.body.383
  br label %if.end.392

if.else.389:                                      ; preds = %do.body.383
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  %ob_type390 = getelementptr inbounds %struct._object, %struct._object* %226, i32 0, i32 1
  %227 = load %struct._typeobject*, %struct._typeobject** %ob_type390, align 8
  %tp_dealloc391 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %227, i32 0, i32 4
  %228 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc391, align 8
  %229 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  call void %228(%struct._object* %229)
  br label %if.end.392

if.end.392:                                       ; preds = %if.else.389, %if.then.388
  br label %do.end.393

do.end.393:                                       ; preds = %if.end.392
  br label %if.end.394

if.end.394:                                       ; preds = %do.end.393, %do.body.379
  br label %do.end.395

do.end.395:                                       ; preds = %if.end.394
  %call396 = call %struct._object* @PyLong_FromLong(i64 12)
  store %struct._object* %call396, %struct._object** %x, align 8
  %230 = load %struct._object*, %struct._object** %d, align 8
  %231 = load %struct._object*, %struct._object** %x, align 8
  %call397 = call i32 @PyDict_SetItemString(%struct._object* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct._object* %231)
  br label %do.body.398

do.body.398:                                      ; preds = %do.end.395
  %232 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %232, %struct._object** %_py_xdecref_tmp399, align 8
  %233 = load %struct._object*, %struct._object** %_py_xdecref_tmp399, align 8
  %cmp400 = icmp ne %struct._object* %233, null
  br i1 %cmp400, label %if.then.401, label %if.end.413

if.then.401:                                      ; preds = %do.body.398
  br label %do.body.402

do.body.402:                                      ; preds = %if.then.401
  %234 = load %struct._object*, %struct._object** %_py_xdecref_tmp399, align 8
  store %struct._object* %234, %struct._object** %_py_decref_tmp403, align 8
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_refcnt404 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 0
  %236 = load i64, i64* %ob_refcnt404, align 8
  %dec405 = add i64 %236, -1
  store i64 %dec405, i64* %ob_refcnt404, align 8
  %cmp406 = icmp ne i64 %dec405, 0
  br i1 %cmp406, label %if.then.407, label %if.else.408

if.then.407:                                      ; preds = %do.body.402
  br label %if.end.411

if.else.408:                                      ; preds = %do.body.402
  %237 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_type409 = getelementptr inbounds %struct._object, %struct._object* %237, i32 0, i32 1
  %238 = load %struct._typeobject*, %struct._typeobject** %ob_type409, align 8
  %tp_dealloc410 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %238, i32 0, i32 4
  %239 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc410, align 8
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  call void %239(%struct._object* %240)
  br label %if.end.411

if.end.411:                                       ; preds = %if.else.408, %if.then.407
  br label %do.end.412

do.end.412:                                       ; preds = %if.end.411
  br label %if.end.413

if.end.413:                                       ; preds = %do.end.412, %do.body.398
  br label %do.end.414

do.end.414:                                       ; preds = %if.end.413
  %call415 = call %struct._object* @PyLong_FromLong(i64 17)
  store %struct._object* %call415, %struct._object** %x, align 8
  %241 = load %struct._object*, %struct._object** %d, align 8
  %242 = load %struct._object*, %struct._object** %x, align 8
  %call416 = call i32 @PyDict_SetItemString(%struct._object* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %struct._object* %242)
  br label %do.body.417

do.body.417:                                      ; preds = %do.end.414
  %243 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %243, %struct._object** %_py_xdecref_tmp418, align 8
  %244 = load %struct._object*, %struct._object** %_py_xdecref_tmp418, align 8
  %cmp419 = icmp ne %struct._object* %244, null
  br i1 %cmp419, label %if.then.420, label %if.end.432

if.then.420:                                      ; preds = %do.body.417
  br label %do.body.421

do.body.421:                                      ; preds = %if.then.420
  %245 = load %struct._object*, %struct._object** %_py_xdecref_tmp418, align 8
  store %struct._object* %245, %struct._object** %_py_decref_tmp422, align 8
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp422, align 8
  %ob_refcnt423 = getelementptr inbounds %struct._object, %struct._object* %246, i32 0, i32 0
  %247 = load i64, i64* %ob_refcnt423, align 8
  %dec424 = add i64 %247, -1
  store i64 %dec424, i64* %ob_refcnt423, align 8
  %cmp425 = icmp ne i64 %dec424, 0
  br i1 %cmp425, label %if.then.426, label %if.else.427

if.then.426:                                      ; preds = %do.body.421
  br label %if.end.430

if.else.427:                                      ; preds = %do.body.421
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp422, align 8
  %ob_type428 = getelementptr inbounds %struct._object, %struct._object* %248, i32 0, i32 1
  %249 = load %struct._typeobject*, %struct._typeobject** %ob_type428, align 8
  %tp_dealloc429 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %249, i32 0, i32 4
  %250 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc429, align 8
  %251 = load %struct._object*, %struct._object** %_py_decref_tmp422, align 8
  call void %250(%struct._object* %251)
  br label %if.end.430

if.end.430:                                       ; preds = %if.else.427, %if.then.426
  br label %do.end.431

do.end.431:                                       ; preds = %if.end.430
  br label %if.end.432

if.end.432:                                       ; preds = %do.end.431, %do.body.417
  br label %do.end.433

do.end.433:                                       ; preds = %if.end.432
  %call434 = call %struct._object* @PyLong_FromLong(i64 17)
  store %struct._object* %call434, %struct._object** %x, align 8
  %252 = load %struct._object*, %struct._object** %d, align 8
  %253 = load %struct._object*, %struct._object** %x, align 8
  %call435 = call i32 @PyDict_SetItemString(%struct._object* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* %253)
  br label %do.body.436

do.body.436:                                      ; preds = %do.end.433
  %254 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %254, %struct._object** %_py_xdecref_tmp437, align 8
  %255 = load %struct._object*, %struct._object** %_py_xdecref_tmp437, align 8
  %cmp438 = icmp ne %struct._object* %255, null
  br i1 %cmp438, label %if.then.439, label %if.end.451

if.then.439:                                      ; preds = %do.body.436
  br label %do.body.440

do.body.440:                                      ; preds = %if.then.439
  %256 = load %struct._object*, %struct._object** %_py_xdecref_tmp437, align 8
  store %struct._object* %256, %struct._object** %_py_decref_tmp441, align 8
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  %ob_refcnt442 = getelementptr inbounds %struct._object, %struct._object* %257, i32 0, i32 0
  %258 = load i64, i64* %ob_refcnt442, align 8
  %dec443 = add i64 %258, -1
  store i64 %dec443, i64* %ob_refcnt442, align 8
  %cmp444 = icmp ne i64 %dec443, 0
  br i1 %cmp444, label %if.then.445, label %if.else.446

if.then.445:                                      ; preds = %do.body.440
  br label %if.end.449

if.else.446:                                      ; preds = %do.body.440
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  %ob_type447 = getelementptr inbounds %struct._object, %struct._object* %259, i32 0, i32 1
  %260 = load %struct._typeobject*, %struct._typeobject** %ob_type447, align 8
  %tp_dealloc448 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %260, i32 0, i32 4
  %261 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc448, align 8
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  call void %261(%struct._object* %262)
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.446, %if.then.445
  br label %do.end.450

do.end.450:                                       ; preds = %if.end.449
  br label %if.end.451

if.end.451:                                       ; preds = %do.end.450, %do.body.436
  br label %do.end.452

do.end.452:                                       ; preds = %if.end.451
  %call453 = call %struct._object* @PyLong_FromLong(i64 30)
  store %struct._object* %call453, %struct._object** %x, align 8
  %263 = load %struct._object*, %struct._object** %d, align 8
  %264 = load %struct._object*, %struct._object** %x, align 8
  %call454 = call i32 @PyDict_SetItemString(%struct._object* %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct._object* %264)
  br label %do.body.455

do.body.455:                                      ; preds = %do.end.452
  %265 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %265, %struct._object** %_py_xdecref_tmp456, align 8
  %266 = load %struct._object*, %struct._object** %_py_xdecref_tmp456, align 8
  %cmp457 = icmp ne %struct._object* %266, null
  br i1 %cmp457, label %if.then.458, label %if.end.470

if.then.458:                                      ; preds = %do.body.455
  br label %do.body.459

do.body.459:                                      ; preds = %if.then.458
  %267 = load %struct._object*, %struct._object** %_py_xdecref_tmp456, align 8
  store %struct._object* %267, %struct._object** %_py_decref_tmp460, align 8
  %268 = load %struct._object*, %struct._object** %_py_decref_tmp460, align 8
  %ob_refcnt461 = getelementptr inbounds %struct._object, %struct._object* %268, i32 0, i32 0
  %269 = load i64, i64* %ob_refcnt461, align 8
  %dec462 = add i64 %269, -1
  store i64 %dec462, i64* %ob_refcnt461, align 8
  %cmp463 = icmp ne i64 %dec462, 0
  br i1 %cmp463, label %if.then.464, label %if.else.465

if.then.464:                                      ; preds = %do.body.459
  br label %if.end.468

if.else.465:                                      ; preds = %do.body.459
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp460, align 8
  %ob_type466 = getelementptr inbounds %struct._object, %struct._object* %270, i32 0, i32 1
  %271 = load %struct._typeobject*, %struct._typeobject** %ob_type466, align 8
  %tp_dealloc467 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %271, i32 0, i32 4
  %272 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc467, align 8
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp460, align 8
  call void %272(%struct._object* %273)
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.465, %if.then.464
  br label %do.end.469

do.end.469:                                       ; preds = %if.end.468
  br label %if.end.470

if.end.470:                                       ; preds = %do.end.469, %do.body.455
  br label %do.end.471

do.end.471:                                       ; preds = %if.end.470
  %call472 = call %struct._object* @PyLong_FromLong(i64 29)
  store %struct._object* %call472, %struct._object** %x, align 8
  %274 = load %struct._object*, %struct._object** %d, align 8
  %275 = load %struct._object*, %struct._object** %x, align 8
  %call473 = call i32 @PyDict_SetItemString(%struct._object* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* %275)
  br label %do.body.474

do.body.474:                                      ; preds = %do.end.471
  %276 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %276, %struct._object** %_py_xdecref_tmp475, align 8
  %277 = load %struct._object*, %struct._object** %_py_xdecref_tmp475, align 8
  %cmp476 = icmp ne %struct._object* %277, null
  br i1 %cmp476, label %if.then.477, label %if.end.489

if.then.477:                                      ; preds = %do.body.474
  br label %do.body.478

do.body.478:                                      ; preds = %if.then.477
  %278 = load %struct._object*, %struct._object** %_py_xdecref_tmp475, align 8
  store %struct._object* %278, %struct._object** %_py_decref_tmp479, align 8
  %279 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  %ob_refcnt480 = getelementptr inbounds %struct._object, %struct._object* %279, i32 0, i32 0
  %280 = load i64, i64* %ob_refcnt480, align 8
  %dec481 = add i64 %280, -1
  store i64 %dec481, i64* %ob_refcnt480, align 8
  %cmp482 = icmp ne i64 %dec481, 0
  br i1 %cmp482, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %do.body.478
  br label %if.end.487

if.else.484:                                      ; preds = %do.body.478
  %281 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  %ob_type485 = getelementptr inbounds %struct._object, %struct._object* %281, i32 0, i32 1
  %282 = load %struct._typeobject*, %struct._typeobject** %ob_type485, align 8
  %tp_dealloc486 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %282, i32 0, i32 4
  %283 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc486, align 8
  %284 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  call void %283(%struct._object* %284)
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.484, %if.then.483
  br label %do.end.488

do.end.488:                                       ; preds = %if.end.487
  br label %if.end.489

if.end.489:                                       ; preds = %do.end.488, %do.body.474
  br label %do.end.490

do.end.490:                                       ; preds = %if.end.489
  %call491 = call %struct._object* @PyLong_FromLong(i64 23)
  store %struct._object* %call491, %struct._object** %x, align 8
  %285 = load %struct._object*, %struct._object** %d, align 8
  %286 = load %struct._object*, %struct._object** %x, align 8
  %call492 = call i32 @PyDict_SetItemString(%struct._object* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct._object* %286)
  br label %do.body.493

do.body.493:                                      ; preds = %do.end.490
  %287 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %287, %struct._object** %_py_xdecref_tmp494, align 8
  %288 = load %struct._object*, %struct._object** %_py_xdecref_tmp494, align 8
  %cmp495 = icmp ne %struct._object* %288, null
  br i1 %cmp495, label %if.then.496, label %if.end.508

if.then.496:                                      ; preds = %do.body.493
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %289 = load %struct._object*, %struct._object** %_py_xdecref_tmp494, align 8
  store %struct._object* %289, %struct._object** %_py_decref_tmp498, align 8
  %290 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_refcnt499 = getelementptr inbounds %struct._object, %struct._object* %290, i32 0, i32 0
  %291 = load i64, i64* %ob_refcnt499, align 8
  %dec500 = add i64 %291, -1
  store i64 %dec500, i64* %ob_refcnt499, align 8
  %cmp501 = icmp ne i64 %dec500, 0
  br i1 %cmp501, label %if.then.502, label %if.else.503

if.then.502:                                      ; preds = %do.body.497
  br label %if.end.506

if.else.503:                                      ; preds = %do.body.497
  %292 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_type504 = getelementptr inbounds %struct._object, %struct._object* %292, i32 0, i32 1
  %293 = load %struct._typeobject*, %struct._typeobject** %ob_type504, align 8
  %tp_dealloc505 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %293, i32 0, i32 4
  %294 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc505, align 8
  %295 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  call void %294(%struct._object* %295)
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.503, %if.then.502
  br label %do.end.507

do.end.507:                                       ; preds = %if.end.506
  br label %if.end.508

if.end.508:                                       ; preds = %do.end.507, %do.body.493
  br label %do.end.509

do.end.509:                                       ; preds = %if.end.508
  %call510 = call %struct._object* @PyLong_FromLong(i64 28)
  store %struct._object* %call510, %struct._object** %x, align 8
  %296 = load %struct._object*, %struct._object** %d, align 8
  %297 = load %struct._object*, %struct._object** %x, align 8
  %call511 = call i32 @PyDict_SetItemString(%struct._object* %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* %297)
  br label %do.body.512

do.body.512:                                      ; preds = %do.end.509
  %298 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %298, %struct._object** %_py_xdecref_tmp513, align 8
  %299 = load %struct._object*, %struct._object** %_py_xdecref_tmp513, align 8
  %cmp514 = icmp ne %struct._object* %299, null
  br i1 %cmp514, label %if.then.515, label %if.end.527

if.then.515:                                      ; preds = %do.body.512
  br label %do.body.516

do.body.516:                                      ; preds = %if.then.515
  %300 = load %struct._object*, %struct._object** %_py_xdecref_tmp513, align 8
  store %struct._object* %300, %struct._object** %_py_decref_tmp517, align 8
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp517, align 8
  %ob_refcnt518 = getelementptr inbounds %struct._object, %struct._object* %301, i32 0, i32 0
  %302 = load i64, i64* %ob_refcnt518, align 8
  %dec519 = add i64 %302, -1
  store i64 %dec519, i64* %ob_refcnt518, align 8
  %cmp520 = icmp ne i64 %dec519, 0
  br i1 %cmp520, label %if.then.521, label %if.else.522

if.then.521:                                      ; preds = %do.body.516
  br label %if.end.525

if.else.522:                                      ; preds = %do.body.516
  %303 = load %struct._object*, %struct._object** %_py_decref_tmp517, align 8
  %ob_type523 = getelementptr inbounds %struct._object, %struct._object* %303, i32 0, i32 1
  %304 = load %struct._typeobject*, %struct._typeobject** %ob_type523, align 8
  %tp_dealloc524 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %304, i32 0, i32 4
  %305 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc524, align 8
  %306 = load %struct._object*, %struct._object** %_py_decref_tmp517, align 8
  call void %305(%struct._object* %306)
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.522, %if.then.521
  br label %do.end.526

do.end.526:                                       ; preds = %if.end.525
  br label %if.end.527

if.end.527:                                       ; preds = %do.end.526, %do.body.512
  br label %do.end.528

do.end.528:                                       ; preds = %if.end.527
  %call529 = call %struct._object* @PyLong_FromLong(i64 29)
  store %struct._object* %call529, %struct._object** %x, align 8
  %307 = load %struct._object*, %struct._object** %d, align 8
  %308 = load %struct._object*, %struct._object** %x, align 8
  %call530 = call i32 @PyDict_SetItemString(%struct._object* %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct._object* %308)
  br label %do.body.531

do.body.531:                                      ; preds = %do.end.528
  %309 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %309, %struct._object** %_py_xdecref_tmp532, align 8
  %310 = load %struct._object*, %struct._object** %_py_xdecref_tmp532, align 8
  %cmp533 = icmp ne %struct._object* %310, null
  br i1 %cmp533, label %if.then.534, label %if.end.546

if.then.534:                                      ; preds = %do.body.531
  br label %do.body.535

do.body.535:                                      ; preds = %if.then.534
  %311 = load %struct._object*, %struct._object** %_py_xdecref_tmp532, align 8
  store %struct._object* %311, %struct._object** %_py_decref_tmp536, align 8
  %312 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  %ob_refcnt537 = getelementptr inbounds %struct._object, %struct._object* %312, i32 0, i32 0
  %313 = load i64, i64* %ob_refcnt537, align 8
  %dec538 = add i64 %313, -1
  store i64 %dec538, i64* %ob_refcnt537, align 8
  %cmp539 = icmp ne i64 %dec538, 0
  br i1 %cmp539, label %if.then.540, label %if.else.541

if.then.540:                                      ; preds = %do.body.535
  br label %if.end.544

if.else.541:                                      ; preds = %do.body.535
  %314 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  %ob_type542 = getelementptr inbounds %struct._object, %struct._object* %314, i32 0, i32 1
  %315 = load %struct._typeobject*, %struct._typeobject** %ob_type542, align 8
  %tp_dealloc543 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %315, i32 0, i32 4
  %316 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc543, align 8
  %317 = load %struct._object*, %struct._object** %_py_decref_tmp536, align 8
  call void %316(%struct._object* %317)
  br label %if.end.544

if.end.544:                                       ; preds = %if.else.541, %if.then.540
  br label %do.end.545

do.end.545:                                       ; preds = %if.end.544
  br label %if.end.546

if.end.546:                                       ; preds = %do.end.545, %do.body.531
  br label %do.end.547

do.end.547:                                       ; preds = %if.end.546
  %call548 = call %struct._object* @PyLong_FromLong(i64 19)
  store %struct._object* %call548, %struct._object** %x, align 8
  %318 = load %struct._object*, %struct._object** %d, align 8
  %319 = load %struct._object*, %struct._object** %x, align 8
  %call549 = call i32 @PyDict_SetItemString(%struct._object* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct._object* %319)
  br label %do.body.550

do.body.550:                                      ; preds = %do.end.547
  %320 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %320, %struct._object** %_py_xdecref_tmp551, align 8
  %321 = load %struct._object*, %struct._object** %_py_xdecref_tmp551, align 8
  %cmp552 = icmp ne %struct._object* %321, null
  br i1 %cmp552, label %if.then.553, label %if.end.565

if.then.553:                                      ; preds = %do.body.550
  br label %do.body.554

do.body.554:                                      ; preds = %if.then.553
  %322 = load %struct._object*, %struct._object** %_py_xdecref_tmp551, align 8
  store %struct._object* %322, %struct._object** %_py_decref_tmp555, align 8
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp555, align 8
  %ob_refcnt556 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 0
  %324 = load i64, i64* %ob_refcnt556, align 8
  %dec557 = add i64 %324, -1
  store i64 %dec557, i64* %ob_refcnt556, align 8
  %cmp558 = icmp ne i64 %dec557, 0
  br i1 %cmp558, label %if.then.559, label %if.else.560

if.then.559:                                      ; preds = %do.body.554
  br label %if.end.563

if.else.560:                                      ; preds = %do.body.554
  %325 = load %struct._object*, %struct._object** %_py_decref_tmp555, align 8
  %ob_type561 = getelementptr inbounds %struct._object, %struct._object* %325, i32 0, i32 1
  %326 = load %struct._typeobject*, %struct._typeobject** %ob_type561, align 8
  %tp_dealloc562 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %326, i32 0, i32 4
  %327 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc562, align 8
  %328 = load %struct._object*, %struct._object** %_py_decref_tmp555, align 8
  call void %327(%struct._object* %328)
  br label %if.end.563

if.end.563:                                       ; preds = %if.else.560, %if.then.559
  br label %do.end.564

do.end.564:                                       ; preds = %if.end.563
  br label %if.end.565

if.end.565:                                       ; preds = %do.end.564, %do.body.550
  br label %do.end.566

do.end.566:                                       ; preds = %if.end.565
  %call567 = call %struct._object* @PyLong_FromLong(i64 20)
  store %struct._object* %call567, %struct._object** %x, align 8
  %329 = load %struct._object*, %struct._object** %d, align 8
  %330 = load %struct._object*, %struct._object** %x, align 8
  %call568 = call i32 @PyDict_SetItemString(%struct._object* %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct._object* %330)
  br label %do.body.569

do.body.569:                                      ; preds = %do.end.566
  %331 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %331, %struct._object** %_py_xdecref_tmp570, align 8
  %332 = load %struct._object*, %struct._object** %_py_xdecref_tmp570, align 8
  %cmp571 = icmp ne %struct._object* %332, null
  br i1 %cmp571, label %if.then.572, label %if.end.584

if.then.572:                                      ; preds = %do.body.569
  br label %do.body.573

do.body.573:                                      ; preds = %if.then.572
  %333 = load %struct._object*, %struct._object** %_py_xdecref_tmp570, align 8
  store %struct._object* %333, %struct._object** %_py_decref_tmp574, align 8
  %334 = load %struct._object*, %struct._object** %_py_decref_tmp574, align 8
  %ob_refcnt575 = getelementptr inbounds %struct._object, %struct._object* %334, i32 0, i32 0
  %335 = load i64, i64* %ob_refcnt575, align 8
  %dec576 = add i64 %335, -1
  store i64 %dec576, i64* %ob_refcnt575, align 8
  %cmp577 = icmp ne i64 %dec576, 0
  br i1 %cmp577, label %if.then.578, label %if.else.579

if.then.578:                                      ; preds = %do.body.573
  br label %if.end.582

if.else.579:                                      ; preds = %do.body.573
  %336 = load %struct._object*, %struct._object** %_py_decref_tmp574, align 8
  %ob_type580 = getelementptr inbounds %struct._object, %struct._object* %336, i32 0, i32 1
  %337 = load %struct._typeobject*, %struct._typeobject** %ob_type580, align 8
  %tp_dealloc581 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %337, i32 0, i32 4
  %338 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc581, align 8
  %339 = load %struct._object*, %struct._object** %_py_decref_tmp574, align 8
  call void %338(%struct._object* %339)
  br label %if.end.582

if.end.582:                                       ; preds = %if.else.579, %if.then.578
  br label %do.end.583

do.end.583:                                       ; preds = %if.end.582
  br label %if.end.584

if.end.584:                                       ; preds = %do.end.583, %do.body.569
  br label %do.end.585

do.end.585:                                       ; preds = %if.end.584
  %call586 = call %struct._object* @PyLong_FromLong(i64 18)
  store %struct._object* %call586, %struct._object** %x, align 8
  %340 = load %struct._object*, %struct._object** %d, align 8
  %341 = load %struct._object*, %struct._object** %x, align 8
  %call587 = call i32 @PyDict_SetItemString(%struct._object* %340, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct._object* %341)
  br label %do.body.588

do.body.588:                                      ; preds = %do.end.585
  %342 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %342, %struct._object** %_py_xdecref_tmp589, align 8
  %343 = load %struct._object*, %struct._object** %_py_xdecref_tmp589, align 8
  %cmp590 = icmp ne %struct._object* %343, null
  br i1 %cmp590, label %if.then.591, label %if.end.603

if.then.591:                                      ; preds = %do.body.588
  br label %do.body.592

do.body.592:                                      ; preds = %if.then.591
  %344 = load %struct._object*, %struct._object** %_py_xdecref_tmp589, align 8
  store %struct._object* %344, %struct._object** %_py_decref_tmp593, align 8
  %345 = load %struct._object*, %struct._object** %_py_decref_tmp593, align 8
  %ob_refcnt594 = getelementptr inbounds %struct._object, %struct._object* %345, i32 0, i32 0
  %346 = load i64, i64* %ob_refcnt594, align 8
  %dec595 = add i64 %346, -1
  store i64 %dec595, i64* %ob_refcnt594, align 8
  %cmp596 = icmp ne i64 %dec595, 0
  br i1 %cmp596, label %if.then.597, label %if.else.598

if.then.597:                                      ; preds = %do.body.592
  br label %if.end.601

if.else.598:                                      ; preds = %do.body.592
  %347 = load %struct._object*, %struct._object** %_py_decref_tmp593, align 8
  %ob_type599 = getelementptr inbounds %struct._object, %struct._object* %347, i32 0, i32 1
  %348 = load %struct._typeobject*, %struct._typeobject** %ob_type599, align 8
  %tp_dealloc600 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %348, i32 0, i32 4
  %349 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc600, align 8
  %350 = load %struct._object*, %struct._object** %_py_decref_tmp593, align 8
  call void %349(%struct._object* %350)
  br label %if.end.601

if.end.601:                                       ; preds = %if.else.598, %if.then.597
  br label %do.end.602

do.end.602:                                       ; preds = %if.end.601
  br label %if.end.603

if.end.603:                                       ; preds = %do.end.602, %do.body.588
  br label %do.end.604

do.end.604:                                       ; preds = %if.end.603
  %call605 = call %struct._object* @PyLong_FromLong(i64 21)
  store %struct._object* %call605, %struct._object** %x, align 8
  %351 = load %struct._object*, %struct._object** %d, align 8
  %352 = load %struct._object*, %struct._object** %x, align 8
  %call606 = call i32 @PyDict_SetItemString(%struct._object* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), %struct._object* %352)
  br label %do.body.607

do.body.607:                                      ; preds = %do.end.604
  %353 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %353, %struct._object** %_py_xdecref_tmp608, align 8
  %354 = load %struct._object*, %struct._object** %_py_xdecref_tmp608, align 8
  %cmp609 = icmp ne %struct._object* %354, null
  br i1 %cmp609, label %if.then.610, label %if.end.622

if.then.610:                                      ; preds = %do.body.607
  br label %do.body.611

do.body.611:                                      ; preds = %if.then.610
  %355 = load %struct._object*, %struct._object** %_py_xdecref_tmp608, align 8
  store %struct._object* %355, %struct._object** %_py_decref_tmp612, align 8
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp612, align 8
  %ob_refcnt613 = getelementptr inbounds %struct._object, %struct._object* %356, i32 0, i32 0
  %357 = load i64, i64* %ob_refcnt613, align 8
  %dec614 = add i64 %357, -1
  store i64 %dec614, i64* %ob_refcnt613, align 8
  %cmp615 = icmp ne i64 %dec614, 0
  br i1 %cmp615, label %if.then.616, label %if.else.617

if.then.616:                                      ; preds = %do.body.611
  br label %if.end.620

if.else.617:                                      ; preds = %do.body.611
  %358 = load %struct._object*, %struct._object** %_py_decref_tmp612, align 8
  %ob_type618 = getelementptr inbounds %struct._object, %struct._object* %358, i32 0, i32 1
  %359 = load %struct._typeobject*, %struct._typeobject** %ob_type618, align 8
  %tp_dealloc619 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %359, i32 0, i32 4
  %360 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc619, align 8
  %361 = load %struct._object*, %struct._object** %_py_decref_tmp612, align 8
  call void %360(%struct._object* %361)
  br label %if.end.620

if.end.620:                                       ; preds = %if.else.617, %if.then.616
  br label %do.end.621

do.end.621:                                       ; preds = %if.end.620
  br label %if.end.622

if.end.622:                                       ; preds = %do.end.621, %do.body.607
  br label %do.end.623

do.end.623:                                       ; preds = %if.end.622
  %call624 = call %struct._object* @PyLong_FromLong(i64 22)
  store %struct._object* %call624, %struct._object** %x, align 8
  %362 = load %struct._object*, %struct._object** %d, align 8
  %363 = load %struct._object*, %struct._object** %x, align 8
  %call625 = call i32 @PyDict_SetItemString(%struct._object* %362, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), %struct._object* %363)
  br label %do.body.626

do.body.626:                                      ; preds = %do.end.623
  %364 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %364, %struct._object** %_py_xdecref_tmp627, align 8
  %365 = load %struct._object*, %struct._object** %_py_xdecref_tmp627, align 8
  %cmp628 = icmp ne %struct._object* %365, null
  br i1 %cmp628, label %if.then.629, label %if.end.641

if.then.629:                                      ; preds = %do.body.626
  br label %do.body.630

do.body.630:                                      ; preds = %if.then.629
  %366 = load %struct._object*, %struct._object** %_py_xdecref_tmp627, align 8
  store %struct._object* %366, %struct._object** %_py_decref_tmp631, align 8
  %367 = load %struct._object*, %struct._object** %_py_decref_tmp631, align 8
  %ob_refcnt632 = getelementptr inbounds %struct._object, %struct._object* %367, i32 0, i32 0
  %368 = load i64, i64* %ob_refcnt632, align 8
  %dec633 = add i64 %368, -1
  store i64 %dec633, i64* %ob_refcnt632, align 8
  %cmp634 = icmp ne i64 %dec633, 0
  br i1 %cmp634, label %if.then.635, label %if.else.636

if.then.635:                                      ; preds = %do.body.630
  br label %if.end.639

if.else.636:                                      ; preds = %do.body.630
  %369 = load %struct._object*, %struct._object** %_py_decref_tmp631, align 8
  %ob_type637 = getelementptr inbounds %struct._object, %struct._object* %369, i32 0, i32 1
  %370 = load %struct._typeobject*, %struct._typeobject** %ob_type637, align 8
  %tp_dealloc638 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %370, i32 0, i32 4
  %371 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc638, align 8
  %372 = load %struct._object*, %struct._object** %_py_decref_tmp631, align 8
  call void %371(%struct._object* %372)
  br label %if.end.639

if.end.639:                                       ; preds = %if.else.636, %if.then.635
  br label %do.end.640

do.end.640:                                       ; preds = %if.end.639
  br label %if.end.641

if.end.641:                                       ; preds = %do.end.640, %do.body.626
  br label %do.end.642

do.end.642:                                       ; preds = %if.end.641
  %call643 = call %struct._object* @PyLong_FromLong(i64 26)
  store %struct._object* %call643, %struct._object** %x, align 8
  %373 = load %struct._object*, %struct._object** %d, align 8
  %374 = load %struct._object*, %struct._object** %x, align 8
  %call644 = call i32 @PyDict_SetItemString(%struct._object* %373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %struct._object* %374)
  br label %do.body.645

do.body.645:                                      ; preds = %do.end.642
  %375 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %375, %struct._object** %_py_xdecref_tmp646, align 8
  %376 = load %struct._object*, %struct._object** %_py_xdecref_tmp646, align 8
  %cmp647 = icmp ne %struct._object* %376, null
  br i1 %cmp647, label %if.then.648, label %if.end.660

if.then.648:                                      ; preds = %do.body.645
  br label %do.body.649

do.body.649:                                      ; preds = %if.then.648
  %377 = load %struct._object*, %struct._object** %_py_xdecref_tmp646, align 8
  store %struct._object* %377, %struct._object** %_py_decref_tmp650, align 8
  %378 = load %struct._object*, %struct._object** %_py_decref_tmp650, align 8
  %ob_refcnt651 = getelementptr inbounds %struct._object, %struct._object* %378, i32 0, i32 0
  %379 = load i64, i64* %ob_refcnt651, align 8
  %dec652 = add i64 %379, -1
  store i64 %dec652, i64* %ob_refcnt651, align 8
  %cmp653 = icmp ne i64 %dec652, 0
  br i1 %cmp653, label %if.then.654, label %if.else.655

if.then.654:                                      ; preds = %do.body.649
  br label %if.end.658

if.else.655:                                      ; preds = %do.body.649
  %380 = load %struct._object*, %struct._object** %_py_decref_tmp650, align 8
  %ob_type656 = getelementptr inbounds %struct._object, %struct._object* %380, i32 0, i32 1
  %381 = load %struct._typeobject*, %struct._typeobject** %ob_type656, align 8
  %tp_dealloc657 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %381, i32 0, i32 4
  %382 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc657, align 8
  %383 = load %struct._object*, %struct._object** %_py_decref_tmp650, align 8
  call void %382(%struct._object* %383)
  br label %if.end.658

if.end.658:                                       ; preds = %if.else.655, %if.then.654
  br label %do.end.659

do.end.659:                                       ; preds = %if.end.658
  br label %if.end.660

if.end.660:                                       ; preds = %do.end.659, %do.body.645
  br label %do.end.661

do.end.661:                                       ; preds = %if.end.660
  %call662 = call %struct._object* @PyLong_FromLong(i64 27)
  store %struct._object* %call662, %struct._object** %x, align 8
  %384 = load %struct._object*, %struct._object** %d, align 8
  %385 = load %struct._object*, %struct._object** %x, align 8
  %call663 = call i32 @PyDict_SetItemString(%struct._object* %384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), %struct._object* %385)
  br label %do.body.664

do.body.664:                                      ; preds = %do.end.661
  %386 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %386, %struct._object** %_py_xdecref_tmp665, align 8
  %387 = load %struct._object*, %struct._object** %_py_xdecref_tmp665, align 8
  %cmp666 = icmp ne %struct._object* %387, null
  br i1 %cmp666, label %if.then.667, label %if.end.679

if.then.667:                                      ; preds = %do.body.664
  br label %do.body.668

do.body.668:                                      ; preds = %if.then.667
  %388 = load %struct._object*, %struct._object** %_py_xdecref_tmp665, align 8
  store %struct._object* %388, %struct._object** %_py_decref_tmp669, align 8
  %389 = load %struct._object*, %struct._object** %_py_decref_tmp669, align 8
  %ob_refcnt670 = getelementptr inbounds %struct._object, %struct._object* %389, i32 0, i32 0
  %390 = load i64, i64* %ob_refcnt670, align 8
  %dec671 = add i64 %390, -1
  store i64 %dec671, i64* %ob_refcnt670, align 8
  %cmp672 = icmp ne i64 %dec671, 0
  br i1 %cmp672, label %if.then.673, label %if.else.674

if.then.673:                                      ; preds = %do.body.668
  br label %if.end.677

if.else.674:                                      ; preds = %do.body.668
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp669, align 8
  %ob_type675 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 1
  %392 = load %struct._typeobject*, %struct._typeobject** %ob_type675, align 8
  %tp_dealloc676 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %392, i32 0, i32 4
  %393 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc676, align 8
  %394 = load %struct._object*, %struct._object** %_py_decref_tmp669, align 8
  call void %393(%struct._object* %394)
  br label %if.end.677

if.end.677:                                       ; preds = %if.else.674, %if.then.673
  br label %do.end.678

do.end.678:                                       ; preds = %if.end.677
  br label %if.end.679

if.end.679:                                       ; preds = %do.end.678, %do.body.664
  br label %do.end.680

do.end.680:                                       ; preds = %if.end.679
  %call681 = call %struct._object* @PyLong_FromLong(i64 24)
  store %struct._object* %call681, %struct._object** %x, align 8
  %395 = load %struct._object*, %struct._object** %d, align 8
  %396 = load %struct._object*, %struct._object** %x, align 8
  %call682 = call i32 @PyDict_SetItemString(%struct._object* %395, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), %struct._object* %396)
  br label %do.body.683

do.body.683:                                      ; preds = %do.end.680
  %397 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %397, %struct._object** %_py_xdecref_tmp684, align 8
  %398 = load %struct._object*, %struct._object** %_py_xdecref_tmp684, align 8
  %cmp685 = icmp ne %struct._object* %398, null
  br i1 %cmp685, label %if.then.686, label %if.end.698

if.then.686:                                      ; preds = %do.body.683
  br label %do.body.687

do.body.687:                                      ; preds = %if.then.686
  %399 = load %struct._object*, %struct._object** %_py_xdecref_tmp684, align 8
  store %struct._object* %399, %struct._object** %_py_decref_tmp688, align 8
  %400 = load %struct._object*, %struct._object** %_py_decref_tmp688, align 8
  %ob_refcnt689 = getelementptr inbounds %struct._object, %struct._object* %400, i32 0, i32 0
  %401 = load i64, i64* %ob_refcnt689, align 8
  %dec690 = add i64 %401, -1
  store i64 %dec690, i64* %ob_refcnt689, align 8
  %cmp691 = icmp ne i64 %dec690, 0
  br i1 %cmp691, label %if.then.692, label %if.else.693

if.then.692:                                      ; preds = %do.body.687
  br label %if.end.696

if.else.693:                                      ; preds = %do.body.687
  %402 = load %struct._object*, %struct._object** %_py_decref_tmp688, align 8
  %ob_type694 = getelementptr inbounds %struct._object, %struct._object* %402, i32 0, i32 1
  %403 = load %struct._typeobject*, %struct._typeobject** %ob_type694, align 8
  %tp_dealloc695 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %403, i32 0, i32 4
  %404 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc695, align 8
  %405 = load %struct._object*, %struct._object** %_py_decref_tmp688, align 8
  call void %404(%struct._object* %405)
  br label %if.end.696

if.end.696:                                       ; preds = %if.else.693, %if.then.692
  br label %do.end.697

do.end.697:                                       ; preds = %if.end.696
  br label %if.end.698

if.end.698:                                       ; preds = %do.end.697, %do.body.683
  br label %do.end.699

do.end.699:                                       ; preds = %if.end.698
  %call700 = call %struct._object* @PyLong_FromLong(i64 25)
  store %struct._object* %call700, %struct._object** %x, align 8
  %406 = load %struct._object*, %struct._object** %d, align 8
  %407 = load %struct._object*, %struct._object** %x, align 8
  %call701 = call i32 @PyDict_SetItemString(%struct._object* %406, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), %struct._object* %407)
  br label %do.body.702

do.body.702:                                      ; preds = %do.end.699
  %408 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %408, %struct._object** %_py_xdecref_tmp703, align 8
  %409 = load %struct._object*, %struct._object** %_py_xdecref_tmp703, align 8
  %cmp704 = icmp ne %struct._object* %409, null
  br i1 %cmp704, label %if.then.705, label %if.end.717

if.then.705:                                      ; preds = %do.body.702
  br label %do.body.706

do.body.706:                                      ; preds = %if.then.705
  %410 = load %struct._object*, %struct._object** %_py_xdecref_tmp703, align 8
  store %struct._object* %410, %struct._object** %_py_decref_tmp707, align 8
  %411 = load %struct._object*, %struct._object** %_py_decref_tmp707, align 8
  %ob_refcnt708 = getelementptr inbounds %struct._object, %struct._object* %411, i32 0, i32 0
  %412 = load i64, i64* %ob_refcnt708, align 8
  %dec709 = add i64 %412, -1
  store i64 %dec709, i64* %ob_refcnt708, align 8
  %cmp710 = icmp ne i64 %dec709, 0
  br i1 %cmp710, label %if.then.711, label %if.else.712

if.then.711:                                      ; preds = %do.body.706
  br label %if.end.715

if.else.712:                                      ; preds = %do.body.706
  %413 = load %struct._object*, %struct._object** %_py_decref_tmp707, align 8
  %ob_type713 = getelementptr inbounds %struct._object, %struct._object* %413, i32 0, i32 1
  %414 = load %struct._typeobject*, %struct._typeobject** %ob_type713, align 8
  %tp_dealloc714 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %414, i32 0, i32 4
  %415 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc714, align 8
  %416 = load %struct._object*, %struct._object** %_py_decref_tmp707, align 8
  call void %415(%struct._object* %416)
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.712, %if.then.711
  br label %do.end.716

do.end.716:                                       ; preds = %if.end.715
  br label %if.end.717

if.end.717:                                       ; preds = %do.end.716, %do.body.702
  br label %do.end.718

do.end.718:                                       ; preds = %if.end.717
  %call719 = call i32 @__libc_current_sigrtmin() #5
  %conv = sext i32 %call719 to i64
  %call720 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call720, %struct._object** %x, align 8
  %417 = load %struct._object*, %struct._object** %d, align 8
  %418 = load %struct._object*, %struct._object** %x, align 8
  %call721 = call i32 @PyDict_SetItemString(%struct._object* %417, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %struct._object* %418)
  br label %do.body.722

do.body.722:                                      ; preds = %do.end.718
  %419 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %419, %struct._object** %_py_xdecref_tmp723, align 8
  %420 = load %struct._object*, %struct._object** %_py_xdecref_tmp723, align 8
  %cmp724 = icmp ne %struct._object* %420, null
  br i1 %cmp724, label %if.then.726, label %if.end.739

if.then.726:                                      ; preds = %do.body.722
  br label %do.body.727

do.body.727:                                      ; preds = %if.then.726
  %421 = load %struct._object*, %struct._object** %_py_xdecref_tmp723, align 8
  store %struct._object* %421, %struct._object** %_py_decref_tmp728, align 8
  %422 = load %struct._object*, %struct._object** %_py_decref_tmp728, align 8
  %ob_refcnt729 = getelementptr inbounds %struct._object, %struct._object* %422, i32 0, i32 0
  %423 = load i64, i64* %ob_refcnt729, align 8
  %dec730 = add i64 %423, -1
  store i64 %dec730, i64* %ob_refcnt729, align 8
  %cmp731 = icmp ne i64 %dec730, 0
  br i1 %cmp731, label %if.then.733, label %if.else.734

if.then.733:                                      ; preds = %do.body.727
  br label %if.end.737

if.else.734:                                      ; preds = %do.body.727
  %424 = load %struct._object*, %struct._object** %_py_decref_tmp728, align 8
  %ob_type735 = getelementptr inbounds %struct._object, %struct._object* %424, i32 0, i32 1
  %425 = load %struct._typeobject*, %struct._typeobject** %ob_type735, align 8
  %tp_dealloc736 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %425, i32 0, i32 4
  %426 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc736, align 8
  %427 = load %struct._object*, %struct._object** %_py_decref_tmp728, align 8
  call void %426(%struct._object* %427)
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.734, %if.then.733
  br label %do.end.738

do.end.738:                                       ; preds = %if.end.737
  br label %if.end.739

if.end.739:                                       ; preds = %do.end.738, %do.body.722
  br label %do.end.740

do.end.740:                                       ; preds = %if.end.739
  %call741 = call i32 @__libc_current_sigrtmax() #5
  %conv742 = sext i32 %call741 to i64
  %call743 = call %struct._object* @PyLong_FromLong(i64 %conv742)
  store %struct._object* %call743, %struct._object** %x, align 8
  %428 = load %struct._object*, %struct._object** %d, align 8
  %429 = load %struct._object*, %struct._object** %x, align 8
  %call744 = call i32 @PyDict_SetItemString(%struct._object* %428, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct._object* %429)
  br label %do.body.745

do.body.745:                                      ; preds = %do.end.740
  %430 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %430, %struct._object** %_py_xdecref_tmp746, align 8
  %431 = load %struct._object*, %struct._object** %_py_xdecref_tmp746, align 8
  %cmp747 = icmp ne %struct._object* %431, null
  br i1 %cmp747, label %if.then.749, label %if.end.762

if.then.749:                                      ; preds = %do.body.745
  br label %do.body.750

do.body.750:                                      ; preds = %if.then.749
  %432 = load %struct._object*, %struct._object** %_py_xdecref_tmp746, align 8
  store %struct._object* %432, %struct._object** %_py_decref_tmp751, align 8
  %433 = load %struct._object*, %struct._object** %_py_decref_tmp751, align 8
  %ob_refcnt752 = getelementptr inbounds %struct._object, %struct._object* %433, i32 0, i32 0
  %434 = load i64, i64* %ob_refcnt752, align 8
  %dec753 = add i64 %434, -1
  store i64 %dec753, i64* %ob_refcnt752, align 8
  %cmp754 = icmp ne i64 %dec753, 0
  br i1 %cmp754, label %if.then.756, label %if.else.757

if.then.756:                                      ; preds = %do.body.750
  br label %if.end.760

if.else.757:                                      ; preds = %do.body.750
  %435 = load %struct._object*, %struct._object** %_py_decref_tmp751, align 8
  %ob_type758 = getelementptr inbounds %struct._object, %struct._object* %435, i32 0, i32 1
  %436 = load %struct._typeobject*, %struct._typeobject** %ob_type758, align 8
  %tp_dealloc759 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %436, i32 0, i32 4
  %437 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc759, align 8
  %438 = load %struct._object*, %struct._object** %_py_decref_tmp751, align 8
  call void %437(%struct._object* %438)
  br label %if.end.760

if.end.760:                                       ; preds = %if.else.757, %if.then.756
  br label %do.end.761

do.end.761:                                       ; preds = %if.end.760
  br label %if.end.762

if.end.762:                                       ; preds = %do.end.761, %do.body.745
  br label %do.end.763

do.end.763:                                       ; preds = %if.end.762
  %call764 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call764, %struct._object** %x, align 8
  %439 = load %struct._object*, %struct._object** %d, align 8
  %440 = load %struct._object*, %struct._object** %x, align 8
  %call765 = call i32 @PyDict_SetItemString(%struct._object* %439, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), %struct._object* %440)
  br label %do.body.766

do.body.766:                                      ; preds = %do.end.763
  %441 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %441, %struct._object** %_py_decref_tmp767, align 8
  %442 = load %struct._object*, %struct._object** %_py_decref_tmp767, align 8
  %ob_refcnt768 = getelementptr inbounds %struct._object, %struct._object* %442, i32 0, i32 0
  %443 = load i64, i64* %ob_refcnt768, align 8
  %dec769 = add i64 %443, -1
  store i64 %dec769, i64* %ob_refcnt768, align 8
  %cmp770 = icmp ne i64 %dec769, 0
  br i1 %cmp770, label %if.then.772, label %if.else.773

if.then.772:                                      ; preds = %do.body.766
  br label %if.end.776

if.else.773:                                      ; preds = %do.body.766
  %444 = load %struct._object*, %struct._object** %_py_decref_tmp767, align 8
  %ob_type774 = getelementptr inbounds %struct._object, %struct._object* %444, i32 0, i32 1
  %445 = load %struct._typeobject*, %struct._typeobject** %ob_type774, align 8
  %tp_dealloc775 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %445, i32 0, i32 4
  %446 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc775, align 8
  %447 = load %struct._object*, %struct._object** %_py_decref_tmp767, align 8
  call void %446(%struct._object* %447)
  br label %if.end.776

if.end.776:                                       ; preds = %if.else.773, %if.then.772
  br label %do.end.777

do.end.777:                                       ; preds = %if.end.776
  %call778 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call778, %struct._object** %x, align 8
  %448 = load %struct._object*, %struct._object** %d, align 8
  %449 = load %struct._object*, %struct._object** %x, align 8
  %call779 = call i32 @PyDict_SetItemString(%struct._object* %448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), %struct._object* %449)
  br label %do.body.780

do.body.780:                                      ; preds = %do.end.777
  %450 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %450, %struct._object** %_py_decref_tmp781, align 8
  %451 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  %ob_refcnt782 = getelementptr inbounds %struct._object, %struct._object* %451, i32 0, i32 0
  %452 = load i64, i64* %ob_refcnt782, align 8
  %dec783 = add i64 %452, -1
  store i64 %dec783, i64* %ob_refcnt782, align 8
  %cmp784 = icmp ne i64 %dec783, 0
  br i1 %cmp784, label %if.then.786, label %if.else.787

if.then.786:                                      ; preds = %do.body.780
  br label %if.end.790

if.else.787:                                      ; preds = %do.body.780
  %453 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  %ob_type788 = getelementptr inbounds %struct._object, %struct._object* %453, i32 0, i32 1
  %454 = load %struct._typeobject*, %struct._typeobject** %ob_type788, align 8
  %tp_dealloc789 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %454, i32 0, i32 4
  %455 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc789, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  call void %455(%struct._object* %456)
  br label %if.end.790

if.end.790:                                       ; preds = %if.else.787, %if.then.786
  br label %do.end.791

do.end.791:                                       ; preds = %if.end.790
  %call792 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call792, %struct._object** %x, align 8
  %457 = load %struct._object*, %struct._object** %d, align 8
  %458 = load %struct._object*, %struct._object** %x, align 8
  %call793 = call i32 @PyDict_SetItemString(%struct._object* %457, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct._object* %458)
  br label %do.body.794

do.body.794:                                      ; preds = %do.end.791
  %459 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %459, %struct._object** %_py_decref_tmp795, align 8
  %460 = load %struct._object*, %struct._object** %_py_decref_tmp795, align 8
  %ob_refcnt796 = getelementptr inbounds %struct._object, %struct._object* %460, i32 0, i32 0
  %461 = load i64, i64* %ob_refcnt796, align 8
  %dec797 = add i64 %461, -1
  store i64 %dec797, i64* %ob_refcnt796, align 8
  %cmp798 = icmp ne i64 %dec797, 0
  br i1 %cmp798, label %if.then.800, label %if.else.801

if.then.800:                                      ; preds = %do.body.794
  br label %if.end.804

if.else.801:                                      ; preds = %do.body.794
  %462 = load %struct._object*, %struct._object** %_py_decref_tmp795, align 8
  %ob_type802 = getelementptr inbounds %struct._object, %struct._object* %462, i32 0, i32 1
  %463 = load %struct._typeobject*, %struct._typeobject** %ob_type802, align 8
  %tp_dealloc803 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %463, i32 0, i32 4
  %464 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc803, align 8
  %465 = load %struct._object*, %struct._object** %_py_decref_tmp795, align 8
  call void %464(%struct._object* %465)
  br label %if.end.804

if.end.804:                                       ; preds = %if.else.801, %if.then.800
  br label %do.end.805

do.end.805:                                       ; preds = %if.end.804
  %466 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call806 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), %struct._object* %466, %struct._object* null)
  store %struct._object* %call806, %struct._object** @ItimerError, align 8
  %467 = load %struct._object*, %struct._object** @ItimerError, align 8
  %cmp807 = icmp ne %struct._object* %467, null
  br i1 %cmp807, label %if.then.809, label %if.end.811

if.then.809:                                      ; preds = %do.end.805
  %468 = load %struct._object*, %struct._object** %d, align 8
  %469 = load %struct._object*, %struct._object** @ItimerError, align 8
  %call810 = call i32 @PyDict_SetItemString(%struct._object* %468, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* %469)
  br label %if.end.811

if.end.811:                                       ; preds = %if.then.809, %do.end.805
  %call812 = call %struct._object* @PyErr_Occurred()
  %tobool813 = icmp ne %struct._object* %call812, null
  br i1 %tobool813, label %if.then.814, label %if.end.827

if.then.814:                                      ; preds = %if.end.811
  br label %do.body.815

do.body.815:                                      ; preds = %if.then.814
  %470 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %470, %struct._object** %_py_decref_tmp816, align 8
  %471 = load %struct._object*, %struct._object** %_py_decref_tmp816, align 8
  %ob_refcnt817 = getelementptr inbounds %struct._object, %struct._object* %471, i32 0, i32 0
  %472 = load i64, i64* %ob_refcnt817, align 8
  %dec818 = add i64 %472, -1
  store i64 %dec818, i64* %ob_refcnt817, align 8
  %cmp819 = icmp ne i64 %dec818, 0
  br i1 %cmp819, label %if.then.821, label %if.else.822

if.then.821:                                      ; preds = %do.body.815
  br label %if.end.825

if.else.822:                                      ; preds = %do.body.815
  %473 = load %struct._object*, %struct._object** %_py_decref_tmp816, align 8
  %ob_type823 = getelementptr inbounds %struct._object, %struct._object* %473, i32 0, i32 1
  %474 = load %struct._typeobject*, %struct._typeobject** %ob_type823, align 8
  %tp_dealloc824 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %474, i32 0, i32 4
  %475 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc824, align 8
  %476 = load %struct._object*, %struct._object** %_py_decref_tmp816, align 8
  call void %475(%struct._object* %476)
  br label %if.end.825

if.end.825:                                       ; preds = %if.else.822, %if.then.821
  br label %do.end.826

do.end.826:                                       ; preds = %if.end.825
  store %struct._object* null, %struct._object** %m, align 8
  br label %if.end.827

if.end.827:                                       ; preds = %do.end.826, %if.end.811
  br label %finally

finally:                                          ; preds = %if.end.827, %if.then.48, %if.then.44, %if.then.40, %if.then.36, %if.then.29, %if.then.22, %if.then.15
  %477 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %477, %struct._object** %retval
  br label %return

return:                                           ; preds = %finally, %if.then.6, %if.then
  %478 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %478
}

declare i64 @PyThread_get_thread_ident() #1

; Function Attrs: nounwind
declare i32 @getpid() #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

declare void (i32)* @PyOS_getsig(i32) #1

declare void (i32)* @PyOS_setsig(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @signal_handler(i32 %sig_num) #0 {
entry:
  %sig_num.addr = alloca i32, align 4
  %save_errno = alloca i32, align 4
  store i32 %sig_num, i32* %sig_num.addr, align 4
  %call = call i32* @__errno_location() #6
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %save_errno, align 4
  %call1 = call i32 @getpid() #5
  %1 = load i32, i32* @main_pid, align 4
  %cmp = icmp eq i32 %call1, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sig_num.addr, align 4
  call void @trip_signal(i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %save_errno, align 4
  %call2 = call i32* @__errno_location() #6
  store i32 %3, i32* %call2, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #2

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define i32 @PyErr_CheckSignals() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %arglist = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %0 = load volatile i32, i32* @is_tripped, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident()
  %1 = load i64, i64* @main_thread, align 8
  %cmp = icmp ne i64 %call, %1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store volatile i32 0, i32* @is_tripped, align 4
  %call3 = call %struct._frame* @PyEval_GetFrame()
  %2 = bitcast %struct._frame* %call3 to %struct._object*
  store %struct._object* %2, %struct._object** %f, align 8
  %tobool4 = icmp ne %struct._object* %2, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* @_Py_NoneStruct, %struct._object** %f, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.2
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %3 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %3, 65
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %5 = load volatile i32, i32* %tripped, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.then.9, label %if.end.37

if.then.9:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %result, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._object*, %struct._object** %f, align 8
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 %6, %struct._object* %7)
  store %struct._object* %call10, %struct._object** %arglist, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom11
  %tripped13 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx12, i32 0, i32 0
  store volatile i32 0, i32* %tripped13, align 4
  %9 = load %struct._object*, %struct._object** %arglist, align 8
  %tobool14 = icmp ne %struct._object* %9, null
  br i1 %tobool14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.then.9
  %10 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom16
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx17, i32 0, i32 1
  %11 = load volatile %struct._object*, %struct._object** %func, align 8
  %12 = load %struct._object*, %struct._object** %arglist, align 8
  %call18 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %11, %struct._object* %12, %struct._object* null)
  store %struct._object* %call18, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %13 = load %struct._object*, %struct._object** %arglist, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %if.then.9
  %20 = load %struct._object*, %struct._object** %result, align 8
  %tobool23 = icmp ne %struct._object* %20, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp27, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %23, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %26(%struct._object* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.1, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._frame* @PyEval_GetFrame() #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @PyErr_SetInterrupt() #0 {
entry:
  call void @trip_signal(i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @trip_signal(i32 %sig_num) #0 {
entry:
  %sig_num.addr = alloca i32, align 4
  %byte = alloca i8, align 1
  %rc = alloca i32, align 4
  store i32 %sig_num, i32* %sig_num.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* %sig_num.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store volatile i32 1, i32* %tripped, align 4
  %1 = load volatile i32, i32* @wakeup_fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sig_num.addr, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %byte, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load volatile i32, i32* @wakeup_fd, align 4
  %call = call i64 @write(i32 %3, i8* %byte, i64 1)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %rc, align 4
  %cmp2 = icmp eq i32 %conv1, -1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call4 = call i32* @__errno_location() #6
  %4 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %rc, align 4
  %cmp7 = icmp eq i32 %6, -1
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %while.end
  %call10 = call i32* @__errno_location() #6
  %7 = load i32, i32* %call10, align 4
  %conv11 = sext i32 %7 to i64
  %8 = inttoptr i64 %conv11 to i8*
  %call12 = call i32 @Py_AddPendingCall(i32 (i8*)* @report_wakeup_error, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %while.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %9 = load volatile i32, i32* @is_tripped, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.13
  br label %return

if.end.15:                                        ; preds = %if.end.13
  store volatile i32 1, i32* @is_tripped, align 4
  %call16 = call i32 @Py_AddPendingCall(i32 (i8*)* @checksignals_witharg, i8* null)
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyOS_InitInterrupts() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.2

if.end.2:                                         ; preds = %do.end, %entry
  ret void
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyOS_FiniInterrupts() #0 {
entry:
  call void @finisignal()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finisignal() #0 {
entry:
  %i = alloca i32, align 4
  %func = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %0 = load void (i32)*, void (i32)** @old_siginthandler, align 8
  %call = call void (i32)* @PyOS_setsig(i32 2, void (i32)* %0)
  store void (i32)* null, void (i32)** @old_siginthandler, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %func1 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %3 = load volatile %struct._object*, %struct._object** %func1, align 8
  store %struct._object* %3, %struct._object** %func, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom2
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 0
  store volatile i32 0, i32* %tripped, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom4
  %func6 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 1
  store volatile %struct._object* null, %struct._object** %func6, align 8
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp ne i32 %6, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct._object*, %struct._object** %func, align 8
  %cmp8 = icmp ne %struct._object* %7, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %func, align 8
  %cmp10 = icmp ne %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %9 = load %struct._object*, %struct._object** %func, align 8
  %10 = load %struct._object*, %struct._object** @DefaultHandler, align 8
  %cmp12 = icmp ne %struct._object* %9, %10
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %11 = load %struct._object*, %struct._object** %func, align 8
  %12 = load %struct._object*, %struct._object** @IgnoreHandler, align 8
  %cmp14 = icmp ne %struct._object* %11, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  %13 = load i32, i32* %i, align 4
  %call15 = call void (i32)* @PyOS_setsig(i32 %13, void (i32)* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %15, null
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.21

if.else:                                          ; preds = %do.body.18
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %do.end.23
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.24

do.body.24:                                       ; preds = %for.end
  %24 = load %struct._object*, %struct._object** @IntHandler, align 8
  store %struct._object* %24, %struct._object** %_py_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp25 = icmp ne %struct._object* %25, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.24
  store %struct._object* null, %struct._object** @IntHandler, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp28, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %28, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %31(%struct._object* %32)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.24
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %33 = load %struct._object*, %struct._object** @DefaultHandler, align 8
  store %struct._object* %33, %struct._object** %_py_tmp41, align 8
  %34 = load %struct._object*, %struct._object** %_py_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %34, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  store %struct._object* null, %struct._object** @DefaultHandler, align 8
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %35 = load %struct._object*, %struct._object** %_py_tmp41, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp45, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %37, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %40(%struct._object* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %42 = load %struct._object*, %struct._object** @IgnoreHandler, align 8
  store %struct._object* %42, %struct._object** %_py_tmp58, align 8
  %43 = load %struct._object*, %struct._object** %_py_tmp58, align 8
  %cmp59 = icmp ne %struct._object* %43, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.57
  store %struct._object* null, %struct._object** @IgnoreHandler, align 8
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %44 = load %struct._object*, %struct._object** %_py_tmp58, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp62, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %46, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %49(%struct._object* %50)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.57
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyOS_InterruptOccurred() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 2, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident()
  %1 = load i64, i64* @main_thread, align 8
  %cmp = icmp ne i64 %call, %1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store volatile i32 0, i32* getelementptr inbounds ([65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 2, i32 0), align 4
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end, %if.then.1
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @PyOS_AfterFork() #0 {
entry:
  call void @_clear_pending_signals()
  call void @PyThread_ReInitTLS()
  call void @_PyGILState_Reinit()
  call void @PyEval_ReInitThreads()
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* @main_thread, align 8
  %call1 = call i32 @getpid() #5
  store i32 %call1, i32* @main_pid, align 4
  call void @_PyImport_ReInitLock()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_clear_pending_signals() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load volatile i32, i32* @is_tripped, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store volatile i32 0, i32* @is_tripped, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store volatile i32 0, i32* %tripped, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @PyThread_ReInitTLS() #1

declare void @_PyGILState_Reinit() #1

declare void @PyEval_ReInitThreads() #1

declare void @_PyImport_ReInitLock() #1

; Function Attrs: nounwind uwtable
define i32 @_PyOS_IsMainThread() #0 {
entry:
  %call = call i64 @PyThread_get_thread_ident()
  %0 = load i64, i64* @main_thread, align 8
  %cmp = icmp eq i64 %call, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_alarm(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %t = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32* %t)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %t, align 4
  %call1 = call i32 @alarm(i32 %1) #5
  %conv = zext i32 %call1 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_setitimer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %first = alloca double, align 8
  %interval = alloca double, align 8
  %which = alloca i32, align 4
  %new = alloca %struct.itimerval, align 8
  %old = alloca %struct.itimerval, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store double 0.000000e+00, double* %interval, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i32* %which, double* %first, double* %interval)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %first, align 8
  %it_value = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i32 0, i32 1
  call void @timeval_from_double(double %1, %struct.timeval* %it_value)
  %2 = load double, double* %interval, align 8
  %it_interval = getelementptr inbounds %struct.itimerval, %struct.itimerval* %new, i32 0, i32 0
  call void @timeval_from_double(double %2, %struct.timeval* %it_interval)
  %3 = load i32, i32* %which, align 4
  %call1 = call i32 @setitimer(i32 %3, %struct.itimerval* %new, %struct.itimerval* %old) #5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @ItimerError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @itimer_retval(%struct.itimerval* %old)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_getitimer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %which = alloca i32, align 4
  %old = alloca %struct.itimerval, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i32* %which)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %which, align 4
  %call1 = call i32 @getitimer(i32 %1, %struct.itimerval* %old) #5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @ItimerError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %2)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @itimer_retval(%struct.itimerval* %old)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_signal(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %sig_num = alloca i32, align 4
  %old_handler = alloca %struct._object*, align 8
  %func = alloca void (i32)*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32* %sig_num, %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @PyThread_get_thread_ident()
  %1 = load i64, i64* @main_thread, align 8
  %cmp = icmp ne i64 %call1, %1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %sig_num, align 4
  %cmp4 = icmp slt i32 %3, 1
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %4 = load i32, i32* %sig_num, align 4
  %cmp5 = icmp sge i32 %4, 65
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %7 = load %struct._object*, %struct._object** @IgnoreHandler, align 8
  %cmp8 = icmp eq %struct._object* %6, %7
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %func, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %9 = load %struct._object*, %struct._object** @DefaultHandler, align 8
  %cmp10 = icmp eq %struct._object* %8, %9
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store void (i32)* null, void (i32)** %func, align 8
  br label %if.end.18

if.else.12:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %call13 = call i32 @PyCallable_Check(%struct._object* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.12
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.16:                                       ; preds = %if.else.12
  store void (i32)* @signal_handler, void (i32)** %func, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.9
  %12 = load i32, i32* %sig_num, align 4
  %13 = load void (i32)*, void (i32)** %func, align 8
  %call20 = call void (i32)* @PyOS_setsig(i32 %12, void (i32)* %13)
  %cmp21 = icmp eq void (i32)* %call20, inttoptr (i64 -1 to void (i32)*)
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %14 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %15 = load i32, i32* %sig_num, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %func25 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %16 = load volatile %struct._object*, %struct._object** %func25, align 8
  store %struct._object* %16, %struct._object** %old_handler, align 8
  %17 = load i32, i32* %sig_num, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom26
  %tripped = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx27, i32 0, i32 0
  store volatile i32 0, i32* %tripped, align 4
  %18 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct._object*, %struct._object** %obj, align 8
  %21 = load i32, i32* %sig_num, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom28
  %func30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 1
  store volatile %struct._object* %20, %struct._object** %func30, align 8
  %22 = load %struct._object*, %struct._object** %old_handler, align 8
  %cmp31 = icmp ne %struct._object* %22, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.24
  %23 = load %struct._object*, %struct._object** %old_handler, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.else.33:                                       ; preds = %if.end.24
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc34 = add i64 %24, 1
  store i64 %inc34, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.33, %if.then.32, %if.then.22, %if.then.15, %if.then.6, %if.then.2, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_getsignal(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sig_num = alloca i32, align 4
  %old_handler = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32* %sig_num)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %sig_num, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %sig_num, align 4
  %cmp1 = icmp sge i32 %2, 65
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %4 = load i32, i32* %sig_num, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr [65 x %struct.anon], [65 x %struct.anon]* @Handlers, i32 0, i64 %idxprom
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %5 = load volatile %struct._object*, %struct._object** %func, align 8
  store %struct._object* %5, %struct._object** %old_handler, align 8
  %6 = load %struct._object*, %struct._object** %old_handler, align 8
  %cmp4 = icmp ne %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %old_handler, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %old_handler, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc6 = add i64 %10, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_set_wakeup_fd(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  %old_fd = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32* %fd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @PyThread_get_thread_ident()
  %1 = load i64, i64* @main_thread, align 8
  %cmp = icmp ne i64 %call1, %1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %cmp4 = icmp ne i32 %3, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end.3
  %4 = load i32, i32* %fd, align 4
  %call5 = call i32 @fstat64(i32 %4, %struct.stat* %buf) #5
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end.3
  %6 = load volatile i32, i32* @wakeup_fd, align 4
  store i32 %6, i32* %old_fd, align 4
  %7 = load i32, i32* %fd, align 4
  store volatile i32 %7, i32* @wakeup_fd, align 4
  %8 = load i32, i32* %old_fd, align 4
  %conv = sext i32 %8 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.2, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_siginterrupt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sig_num = alloca i32, align 4
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i32* %sig_num, i32* %flag)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %sig_num, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %sig_num, align 4
  %cmp1 = icmp sge i32 %2, 65
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %4 = load i32, i32* %sig_num, align 4
  %5 = load i32, i32* %flag, align 4
  %call4 = call i32 @siginterrupt(i32 %4, i32 %5) #5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pause(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %call1 = call i32 @pause()
  %0 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %0)
  %call2 = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_default_int_handler(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  call void @PyErr_SetNone(%struct._object* %0)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pthread_kill(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tid = alloca i64, align 8
  %signum = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i64* %tid, i32* %signum)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %tid, align 8
  %2 = load i32, i32* %signum, align 4
  %call1 = call i32 @pthread_kill(i64 %1, i32 %2) #5
  store i32 %call1, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %err, align 4
  %call3 = call i32* @__errno_location() #6
  store i32 %4, i32* %call3, align 4
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i32 @PyErr_CheckSignals()
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_pthread_sigmask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %how = alloca i32, align 4
  %signals = alloca %struct._object*, align 8
  %mask = alloca %struct.__sigset_t, align 8
  %previous = alloca %struct.__sigset_t, align 8
  %err = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i32* %how, %struct._object** %signals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %signals, align 8
  %call1 = call i32 @iterable_to_sigset(%struct._object* %1, %struct.__sigset_t* %mask)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* %how, align 4
  %call5 = call i32 @pthread_sigmask(i32 %2, %struct.__sigset_t* %mask, %struct.__sigset_t* %previous) #5
  store i32 %call5, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %4 = load i32, i32* %err, align 4
  %call7 = call i32* @__errno_location() #6
  store i32 %4, i32* %call7, align 4
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %call10 = call i32 @PyErr_CheckSignals()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %call14 = call %struct._object* @sigset_to_set(%struct.__sigset_t* byval align 8 %previous)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.6, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigpending(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %mask = alloca %struct.__sigset_t, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i32 @sigpending(%struct.__sigset_t* %mask) #5
  store i32 %call, i32* %err, align 4
  %0 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call1 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @sigset_to_set(%struct.__sigset_t* byval align 8 %mask)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigwait(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %signals = alloca %struct._object*, align 8
  %set = alloca %struct.__sigset_t, align 8
  %err = alloca i32, align 4
  %signum = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), %struct._object** %signals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %signals, align 8
  %call1 = call i32 @iterable_to_sigset(%struct._object* %1, %struct.__sigset_t* %set)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %call6 = call i32 @sigwait(%struct.__sigset_t* %set, i32* %signum)
  store i32 %call6, i32* %err, align 4
  %2 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  %3 = load i32, i32* %err, align 4
  %tobool7 = icmp ne i32 %3, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %4 = load i32, i32* %err, align 4
  %call9 = call i32* @__errno_location() #6
  store i32 %4, i32* %call9, align 4
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call10 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %6 = load i32, i32* %signum, align 4
  %conv = sext i32 %6 to i64
  %call12 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.8, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigwaitinfo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %signals = alloca %struct._object*, align 8
  %set = alloca %struct.__sigset_t, align 8
  %si = alloca %struct.siginfo_t, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), %struct._object** %signals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %signals, align 8
  %call1 = call i32 @iterable_to_sigset(%struct._object* %1, %struct.__sigset_t* %set)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %call6 = call i32 @sigwaitinfo(%struct.__sigset_t* %set, %struct.siginfo_t* %si)
  store i32 %call6, i32* %err, align 4
  %2 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  %3 = load i32, i32* %err, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %call10 = call %struct._object* @fill_siginfo(%struct.siginfo_t* %si)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @signal_sigtimedwait(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %signals = alloca %struct._object*, align 8
  %timeout = alloca %struct._object*, align 8
  %buf = alloca %struct.timespec, align 8
  %set = alloca %struct.__sigset_t, align 8
  %si = alloca %struct.siginfo_t, align 8
  %tv_sec = alloca i64, align 8
  %tv_nsec = alloca i64, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), %struct._object** %signals, %struct._object** %timeout)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %timeout, align 8
  %call1 = call i32 @_PyTime_ObjectToTimespec(%struct._object* %1, i64* %tv_sec, i64* %tv_nsec, i32 0)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* %tv_sec, align 8
  %tv_sec4 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i32 0, i32 0
  store i64 %2, i64* %tv_sec4, align 8
  %3 = load i64, i64* %tv_nsec, align 8
  %tv_nsec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i32 0, i32 1
  store i64 %3, i64* %tv_nsec5, align 8
  %tv_sec6 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i32 0, i32 0
  %4 = load i64, i64* %tv_sec6, align 8
  %cmp7 = icmp slt i64 %4, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %tv_nsec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %buf, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec8, align 8
  %cmp9 = icmp slt i64 %5, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %signals, align 8
  %call12 = call i32 @iterable_to_sigset(%struct._object* %7, %struct.__sigset_t* %set)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save, align 8
  %call17 = call i32 @sigtimedwait(%struct.__sigset_t* %set, %struct.siginfo_t* %si, %struct.timespec* %buf)
  store i32 %call17, i32* %err, align 4
  %8 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  %9 = load i32, i32* %err, align 4
  %cmp18 = icmp eq i32 %9, -1
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.15
  %call20 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call20, align 4
  %cmp21 = icmp eq i32 %10, 11
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.19
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.15
  %call25 = call %struct._object* @fill_siginfo(%struct.siginfo_t* %si)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else, %if.then.22, %if.then.14, %if.then.10, %if.then.2, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @alarm(i32) #2

; Function Attrs: nounwind uwtable
define internal void @timeval_from_double(double %d, %struct.timeval* %tv) #0 {
entry:
  %d.addr = alloca double, align 8
  %tv.addr = alloca %struct.timeval*, align 8
  store double %d, double* %d.addr, align 8
  store %struct.timeval* %tv, %struct.timeval** %tv.addr, align 8
  %0 = load double, double* %d.addr, align 8
  %call = call double @floor(double %0) #6
  %conv = fptosi double %call to i64
  %1 = load %struct.timeval*, %struct.timeval** %tv.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %2 = load double, double* %d.addr, align 8
  %call1 = call double @fmod(double %2, double 1.000000e+00) #5
  %mul = fmul double %call1, 1.000000e+06
  %conv2 = fptosi double %mul to i64
  %3 = load %struct.timeval*, %struct.timeval** %tv.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 %conv2, i64* %tv_usec, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @itimer_retval(%struct.itimerval* %iv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %iv.addr = alloca %struct.itimerval*, align 8
  %r = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.itimerval* %iv, %struct.itimerval** %iv.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %r, align 8
  %0 = load %struct._object*, %struct._object** %r, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.itimerval*, %struct.itimerval** %iv.addr, align 8
  %it_value = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %call1 = call double @double_from_timeval(%struct.timeval* %it_value)
  %call2 = call %struct._object* @PyFloat_FromDouble(double %call1)
  store %struct._object* %call2, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %2 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %v, align 8
  %10 = load %struct._object*, %struct._object** %r, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %9, %struct._object** %arrayidx, align 8
  %12 = load %struct.itimerval*, %struct.itimerval** %iv.addr, align 8
  %it_interval = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 0
  %call8 = call double @double_from_timeval(%struct.timeval* %it_interval)
  %call9 = call %struct._object* @PyFloat_FromDouble(double %call8)
  store %struct._object* %call9, %struct._object** %v, align 8
  %tobool10 = icmp ne %struct._object* %call9, null
  br i1 %tobool10, label %if.end.23, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %13 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp13, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.7
  %20 = load %struct._object*, %struct._object** %v, align 8
  %21 = load %struct._object*, %struct._object** %r, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 1
  store %struct._object* %20, %struct._object** %arrayidx25, align 8
  %23 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end.22, %do.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #2

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @double_from_timeval(%struct.timeval* %tv) #4 {
entry:
  %tv.addr = alloca %struct.timeval*, align 8
  store %struct.timeval* %tv, %struct.timeval** %tv.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %tv.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %0, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %1 to double
  %2 = load %struct.timeval*, %struct.timeval** %tv.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %conv1 = sitofp i64 %3 to double
  %div = fdiv double %conv1, 1.000000e+06
  %add = fadd double %conv, %div
  ret double %add
}

; Function Attrs: nounwind
declare i32 @getitimer(i32, %struct.itimerval*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyCallable_Check(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @siginterrupt(i32, i32) #2

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @pause() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyErr_SetNone(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @pthread_kill(i64, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define internal i32 @iterable_to_sigset(%struct._object* %iterable, %struct.__sigset_t* %mask) #0 {
entry:
  %iterable.addr = alloca %struct._object*, align 8
  %mask.addr = alloca %struct.__sigset_t*, align 8
  %result = alloca i32, align 4
  %iterator = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %signum = alloca i64, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  store %struct.__sigset_t* %mask, %struct.__sigset_t** %mask.addr, align 8
  store i32 -1, i32* %result, align 4
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %mask.addr, align 8
  %call = call i32 @sigemptyset(%struct.__sigset_t* %0) #5
  %1 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %iterator, align 8
  %2 = load %struct._object*, %struct._object** %iterator, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.28
  %3 = load %struct._object*, %struct._object** %iterator, align 8
  %call2 = call %struct._object* @PyIter_Next(%struct._object* %3)
  store %struct._object* %call2, %struct._object** %item, align 8
  %4 = load %struct._object*, %struct._object** %item, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.body
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  br label %error

if.else:                                          ; preds = %if.then.4
  br label %while.end

if.end.7:                                         ; preds = %while.body
  %5 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call i64 @PyLong_AsLong(%struct._object* %5)
  store i64 %call8, i64* %signum, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else.11:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %13 = load i64, i64* %signum, align 8
  %cmp13 = icmp eq i64 %13, -1
  br i1 %cmp13, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %do.end
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool15 = icmp ne %struct._object* %call14, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  br label %error

if.end.17:                                        ; preds = %land.lhs.true, %do.end
  %14 = load i64, i64* %signum, align 8
  %cmp18 = icmp slt i64 0, %14
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %if.end.17
  %15 = load i64, i64* %signum, align 8
  %cmp20 = icmp slt i64 %15, 65
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %land.lhs.true.19
  %16 = load %struct.__sigset_t*, %struct.__sigset_t** %mask.addr, align 8
  %17 = load i64, i64* %signum, align 8
  %conv = trunc i64 %17 to i32
  %call22 = call i32 @sigaddset(%struct.__sigset_t* %16, i32 %conv) #5
  store i32 %call22, i32* %err, align 4
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true.19, %if.end.17
  store i32 1, i32* %err, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  %18 = load i32, i32* %err, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %20 = load i64, i64* %signum, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i32 0, i32 0), i64 %20)
  br label %error

if.end.28:                                        ; preds = %if.end.24
  br label %while.body

while.end:                                        ; preds = %if.else
  store i32 0, i32* %result, align 4
  br label %error

error:                                            ; preds = %while.end, %if.then.26, %if.then.16, %if.then.6, %if.then
  br label %do.body.29

do.body.29:                                       ; preds = %error
  %21 = load %struct._object*, %struct._object** %iterator, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %22, null
  br i1 %cmp30, label %if.then.32, label %if.end.45

if.then.32:                                       ; preds = %do.body.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp34, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %25, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %28(%struct._object* %29)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.body.29
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %30 = load i32, i32* %result, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @sigset_to_set(%struct.__sigset_t* byval align 8 %mask) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %signum = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %sig = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %call = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %sig, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %sig, align 4
  %cmp1 = icmp slt i32 %1, 65
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %sig, align 4
  %call2 = call i32 @sigismember(%struct.__sigset_t* %mask, i32 %2) #5
  %cmp3 = icmp ne i32 %call2, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %3 = load i32, i32* %sig, align 4
  %conv = sext i32 %3 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %signum, align 8
  %4 = load %struct._object*, %struct._object** %signum, align 8
  %cmp7 = icmp eq %struct._object* %4, null
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %result, align 8
  %13 = load %struct._object*, %struct._object** %signum, align 8
  %call15 = call i32 @PySet_Add(%struct._object* %12, %struct._object* %13)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then.18, label %if.end.43

if.then.18:                                       ; preds = %if.end.14
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %14 = load %struct._object*, %struct._object** %signum, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp20, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %16, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.19
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.19
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %19(%struct._object* %20)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp32, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %23, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.31
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.31
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %26(%struct._object* %27)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.14
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %28 = load %struct._object*, %struct._object** %signum, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp45, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %30, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.44
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %33(%struct._object* %34)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %do.end.55, %if.then.4
  %35 = load i32, i32* %sig, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %sig, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.42, %do.end, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PySet_New(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) #2

declare i32 @PySet_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare i32 @sigpending(%struct.__sigset_t*) #2

declare i32 @sigwait(%struct.__sigset_t*, i32*) #1

declare i32 @sigwaitinfo(%struct.__sigset_t*, %struct.siginfo_t*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @fill_siginfo(%struct.siginfo_t* %si) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %si.addr = alloca %struct.siginfo_t*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.siginfo_t* %si, %struct.siginfo_t** %si.addr, align 8
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @SiginfoType)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %si_signo = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %1, i32 0, i32 0
  %2 = load i32, i32* %si_signo, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  %3 = load %struct._object*, %struct._object** %result, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %5 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %si_code = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %5, i32 0, i32 2
  %6 = load i32, i32* %si_code, align 4
  %conv2 = sext i32 %6 to i64
  %call3 = call %struct._object* @PyLong_FromLong(i64 %conv2)
  %7 = load %struct._object*, %struct._object** %result, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item4, i32 0, i64 1
  store %struct._object* %call3, %struct._object** %arrayidx5, align 8
  %9 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %si_errno = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %9, i32 0, i32 1
  %10 = load i32, i32* %si_errno, align 4
  %conv6 = sext i32 %10 to i64
  %call7 = call %struct._object* @PyLong_FromLong(i64 %conv6)
  %11 = load %struct._object*, %struct._object** %result, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 2
  store %struct._object* %call7, %struct._object** %arrayidx9, align 8
  %13 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %_sifields = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %13, i32 0, i32 3
  %_kill = bitcast %union.anon* %_sifields to %struct.anon.0*
  %si_pid = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_kill, i32 0, i32 0
  %14 = load i32, i32* %si_pid, align 4
  %conv10 = sext i32 %14 to i64
  %call11 = call %struct._object* @PyLong_FromLong(i64 %conv10)
  %15 = load %struct._object*, %struct._object** %result, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 3
  store %struct._object* %call11, %struct._object** %arrayidx13, align 8
  %17 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %_sifields14 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %17, i32 0, i32 3
  %_kill15 = bitcast %union.anon* %_sifields14 to %struct.anon.0*
  %si_uid = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_kill15, i32 0, i32 1
  %18 = load i32, i32* %si_uid, align 4
  %call16 = call %struct._object* @_PyLong_FromUid(i32 %18)
  %19 = load %struct._object*, %struct._object** %result, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 4
  store %struct._object* %call16, %struct._object** %arrayidx18, align 8
  %21 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %_sifields19 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %21, i32 0, i32 3
  %_sigchld = bitcast %union.anon* %_sifields19 to %struct.anon.3*
  %si_status = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_sigchld, i32 0, i32 2
  %22 = load i32, i32* %si_status, align 4
  %conv20 = sext i32 %22 to i64
  %call21 = call %struct._object* @PyLong_FromLong(i64 %conv20)
  %23 = load %struct._object*, %struct._object** %result, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 5
  store %struct._object* %call21, %struct._object** %arrayidx23, align 8
  %25 = load %struct.siginfo_t*, %struct.siginfo_t** %si.addr, align 8
  %_sifields24 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %25, i32 0, i32 3
  %_sigpoll = bitcast %union.anon* %_sifields24 to %struct.anon.5*
  %si_band = getelementptr inbounds %struct.anon.5, %struct.anon.5* %_sigpoll, i32 0, i32 0
  %26 = load i64, i64* %si_band, align 8
  %call25 = call %struct._object* @PyLong_FromLong(i64 %26)
  %27 = load %struct._object*, %struct._object** %result, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 6
  store %struct._object* %call25, %struct._object** %arrayidx27, align 8
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.30
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body
  br label %if.end.33

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.34, %do.end, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

declare %struct._object* @_PyLong_FromUid(i32) #1

declare i32 @_PyTime_ObjectToTimespec(%struct._object*, i64*, i64*, i32) #1

declare i32 @sigtimedwait(%struct.__sigset_t*, %struct.siginfo_t*, %struct.timespec*) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @Py_AddPendingCall(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @report_wakeup_error(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %call = call i32* @__errno_location() #6
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %save_errno, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %conv = trunc i64 %2 to i32
  %call1 = call i32* @__errno_location() #6
  store i32 %conv, i32* %call1, align 4
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call2 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.97, i32 0, i32 0))
  call void @PyErr_WriteUnraisable(%struct._object* null)
  %4 = load i32, i32* %save_errno, align 4
  %call3 = call i32* @__errno_location() #6
  store i32 %4, i32* %call3, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @checksignals_witharg(i8* %unused) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %call = call i32 @PyErr_CheckSignals()
  ret i32 %call
}

declare void @PySys_WriteStderr(i8*, ...) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
