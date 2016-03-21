; ModuleID = 'irs-onlybc/selectmodule.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.pylist = type { %struct._object*, i32, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.pollObject = type { %struct._object, %struct._object*, i32, i32, %struct.pollfd*, i32 }
%struct.pollfd = type { i32, i16, i16 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.pyEpoll_Object = type { %struct._object, i32 }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }

@selectmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @select_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyExc_OSError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PIPE_BUF\00", align 1
@poll_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.pollObject*)* @poll_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @poll_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"POLLIN\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"POLLPRI\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"POLLOUT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"POLLERR\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"POLLHUP\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"POLLNVAL\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"POLLRDNORM\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"POLLRDBAND\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"POLLWRNORM\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"POLLWRBAND\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"POLLMSG\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@pyEpoll_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.pyEpoll_Object*)* @pyepoll_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([244 x i8], [244 x i8]* @pyepoll_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([10 x %struct.PyMethodDef], [10 x %struct.PyMethodDef]* @pyepoll_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @pyepoll_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @pyepoll_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"epoll\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"EPOLLIN\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"EPOLLOUT\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"EPOLLPRI\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"EPOLLERR\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"EPOLLHUP\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"EPOLLET\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"EPOLLONESHOT\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"EPOLLRDNORM\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"EPOLLRDBAND\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"EPOLLWRNORM\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"EPOLLWRBAND\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"EPOLLMSG\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"EPOLL_CLOEXEC\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@module_doc = internal global [164 x i8] c"This module supports asynchronous I/O on multiple file descriptors.\0A\0A*** IMPORTANT NOTICE ***\0AOn Windows only sockets are supported; on Unix, all file descriptors.\00", align 16
@select_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @select_select, i32 1, i8* getelementptr inbounds ([991 x i8], [991 x i8]* @select_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @select_poll, i32 4, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @poll_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@select_doc = internal global [991 x i8] c"select(rlist, wlist, xlist[, timeout]) -> (rlist, wlist, xlist)\0A\0AWait until one or more file descriptors are ready for some kind of I/O.\0AThe first three arguments are sequences of file descriptors to be waited for:\0Arlist -- wait until ready for reading\0Awlist -- wait until ready for writing\0Axlist -- wait for an ``exceptional condition''\0AIf only one kind of condition is required, pass [] for the other lists.\0AA file descriptor is either a socket or file object, or a small integer\0Agotten from a fileno() method call on one of those.\0A\0AThe optional 4th argument specifies a timeout in seconds; it may be\0Aa floating point number to specify fractions of seconds.  If it is absent\0Aor None, the call will never time out.\0A\0AThe return value is a tuple of three lists corresponding to the first three\0Aarguments; each contains the subset of the corresponding file descriptors\0Athat are ready.\0A\0A*** IMPORTANT NOTICE ***\0AOn Windows only sockets are supported; on Unix, all file\0Adescriptors can be used.\00", align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@poll_doc = internal global [127 x i8] c"Returns a polling object, which supports registering and\0Aunregistering file descriptors, and then polling them for I/O events.\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [32 x i8] c"timeout must be a float or None\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.30 = private unnamed_addr constant [29 x i8] c"timeout must be non-negative\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"arguments 1-3 must be sequences\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"filedescriptor out of range in select()\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"too many file descriptors in select()\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"select.poll\00", align 1
@poll_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pollObject*, %struct._object*)* @poll_register to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @poll_register_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pollObject*, %struct._object*)* @poll_modify to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([235 x i8], [235 x i8]* @poll_modify_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pollObject*, %struct._object*)* @poll_unregister to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @poll_unregister_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pollObject*, %struct._object*)* @poll_poll to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([180 x i8], [180 x i8]* @poll_poll_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@poll_register_doc = internal global [247 x i8] c"register(fd [, eventmask] ) -> None\0A\0ARegister a file descriptor with the polling object.\0Afd -- either an integer, or an object with a fileno() method returning an\0A      int.\0Aevents -- an optional bitmask describing the type of events to check for\00", align 16
@.str.36 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@poll_modify_doc = internal global [235 x i8] c"modify(fd, eventmask) -> None\0A\0AModify an already registered file descriptor.\0Afd -- either an integer, or an object with a fileno() method returning an\0A      int.\0Aevents -- an optional bitmask describing the type of events to check for\00", align 16
@.str.37 = private unnamed_addr constant [11 x i8] c"unregister\00", align 1
@poll_unregister_doc = internal global [86 x i8] c"unregister(fd) -> None\0A\0ARemove a file descriptor being tracked by the polling object.\00", align 16
@poll_poll_doc = internal global [180 x i8] c"poll( [timeout] ) -> list of (fd, event) 2-tuples\0A\0APolls the set of registered file descriptors, returning a list containing \0Aany descriptors that have events or errors to report.\00", align 16
@.str.38 = private unnamed_addr constant [14 x i8] c"O|O&:register\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.39 = private unnamed_addr constant [42 x i8] c"Python int too large for C unsigned short\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"OO&:modify\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"timeout must be an integer or None\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [29 x i8] c"concurrent poll() invocation\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"select.epoll\00", align 1
@pyepoll_doc = internal global [244 x i8] c"select.epoll(sizehint=-1, flags=0)\0A\0AReturns an epolling object\0A\0Asizehint must be a positive integer or -1 for the default size. The\0Asizehint is used to optimize internal data structures. It doesn't limit\0Athe maximum number of monitored events.\00", align 16
@pyepoll_methods = internal global [10 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pyepoll_fromfd, i32 17, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @pyepoll_fromfd_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*)* @pyepoll_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @pyepoll_close_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*)* @pyepoll_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @pyepoll_fileno_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_modify to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @pyepoll_modify_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_register to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @pyepoll_register_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_unregister to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @pyepoll_unregister_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_poll to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @pyepoll_poll_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pyEpoll_Object*, %struct._object*)* @pyepoll_enter to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pyepoll_exit, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@pyepoll_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.pyEpoll_Object*)* @pyepoll_get_closed to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"fromfd\00", align 1
@pyepoll_fromfd_doc = internal global [69 x i8] c"fromfd(fd) -> epoll\0A\0ACreate an epoll object from a given control fd.\00", align 16
@.str.45 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@pyepoll_close_doc = internal global [122 x i8] c"close() -> None\0A\0AClose the epoll control file descriptor. Further operations on the epoll\0Aobject will raise an exception.\00", align 16
@.str.46 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@pyepoll_fileno_doc = internal global [59 x i8] c"fileno() -> int\0A\0AReturn the epoll control file descriptor.\00", align 16
@pyepoll_modify_doc = internal global [141 x i8] c"modify(fd, eventmask) -> None\0A\0Afd is the target file descriptor of the operation\0Aevents is a bit set composed of the various EPOLL constants\00", align 16
@pyepoll_register_doc = internal global [339 x i8] c"register(fd[, eventmask]) -> None\0A\0ARegisters a new fd or raises an OSError if the fd is already registered.\0Afd is the target file descriptor of the operation.\0Aevents is a bit set composed of the various EPOLL constants; the default\0Ais EPOLL_IN | EPOLL_OUT | EPOLL_PRI.\0A\0AThe epoll interface supports all file descriptors that support poll.\00", align 16
@pyepoll_unregister_doc = internal global [75 x i8] c"unregister(fd) -> None\0A\0Afd is the target file descriptor of the operation.\00", align 16
@pyepoll_poll_doc = internal global [236 x i8] c"poll([timeout=-1[, maxevents=-1]]) -> [(fd, events), (...)]\0A\0AWait for events on the epoll file descriptor for a maximum time of timeout\0Ain seconds (as float). -1 makes poll wait indefinitely.\0AUp to maxevents are returned to the caller.\00", align 16
@.str.47 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"i:fromfd\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"I/O operation on closed epoll object\00", align 1
@pyepoll_modify.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.51 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"eventmask\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"OI:modify\00", align 1
@pyepoll_register.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.54 = private unnamed_addr constant [13 x i8] c"O|I:register\00", align 1
@pyepoll_unregister.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* null], align 16
@.str.55 = private unnamed_addr constant [13 x i8] c"O:unregister\00", align 1
@pyepoll_poll.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* null], align 16
@.str.56 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"maxevents\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"|di:poll\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"timeout is too large\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"maxevents must be greater than 0, got %d\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"iI\00", align 1
@pyepoll_exit.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), %struct._object* null }, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"True if the epoll handler is closed\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@pyepoll_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16
@.str.64 = private unnamed_addr constant [9 x i8] c"sizehint\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"|ii:epoll\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"negative sizehint\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_select() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1022
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1022
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !453, metadata !1023), !dbg !1024
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @selectmodule, i32 1013), !dbg !1025
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1026, !tbaa !1027
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1031, !tbaa !1027
  %cmp = icmp eq %struct._object* %1, null, !dbg !1033
  br i1 %cmp, label %if.then, label %if.end, !dbg !1034

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1035

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1036, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !1037
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1038, !tbaa !1039
  %inc = add i64 %3, 1, !dbg !1038
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1038, !tbaa !1039
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !1042, !tbaa !1027
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1043, !tbaa !1027
  %call1 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %5), !dbg !1044
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !1045, !tbaa !1027
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 4096), !dbg !1046
  %call3 = call i32 @PyType_Ready(%struct._typeobject* @poll_Type), !dbg !1047
  %cmp4 = icmp slt i32 %call3, 0, !dbg !1050
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1051

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1052
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1052

if.end.6:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !1053, !tbaa !1027
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 1), !dbg !1054
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !1055, !tbaa !1027
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 2), !dbg !1056
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !1057, !tbaa !1027
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 4), !dbg !1058
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !1059, !tbaa !1027
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 8), !dbg !1060
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !1061, !tbaa !1027
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 16), !dbg !1062
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !1063, !tbaa !1027
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 32), !dbg !1064
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !1065, !tbaa !1027
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 64), !dbg !1066
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !1067, !tbaa !1027
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 128), !dbg !1068
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !1069, !tbaa !1027
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 256), !dbg !1070
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !1071, !tbaa !1027
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i64 512), !dbg !1072
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !1073, !tbaa !1027
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 1024), !dbg !1074
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 1), align 8, !dbg !1075, !tbaa !1076
  %call18 = call i32 @PyType_Ready(%struct._typeobject* @pyEpoll_Type), !dbg !1077
  %cmp19 = icmp slt i32 %call18, 0, !dbg !1079
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !1080

if.then.20:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !1081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1081

if.end.21:                                        ; preds = %if.end.6
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1082, !tbaa !1039
  %inc22 = add i64 %18, 1, !dbg !1082
  store i64 %inc22, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1082, !tbaa !1039
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !1083, !tbaa !1027
  %call23 = call i32 @PyModule_AddObject(%struct._object* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0)), !dbg !1084
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !1085, !tbaa !1027
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 1), !dbg !1086
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !1087, !tbaa !1027
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 4), !dbg !1088
  %22 = load %struct._object*, %struct._object** %m, align 8, !dbg !1089, !tbaa !1027
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 2), !dbg !1090
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !1091, !tbaa !1027
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 8), !dbg !1092
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !1093, !tbaa !1027
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 16), !dbg !1094
  %25 = load %struct._object*, %struct._object** %m, align 8, !dbg !1095, !tbaa !1027
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 2147483648), !dbg !1096
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !1097, !tbaa !1027
  %call30 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i64 1073741824), !dbg !1098
  %27 = load %struct._object*, %struct._object** %m, align 8, !dbg !1099, !tbaa !1027
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i64 64), !dbg !1100
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !1101, !tbaa !1027
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 128), !dbg !1102
  %29 = load %struct._object*, %struct._object** %m, align 8, !dbg !1103, !tbaa !1027
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i64 256), !dbg !1104
  %30 = load %struct._object*, %struct._object** %m, align 8, !dbg !1105, !tbaa !1027
  %call34 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i64 512), !dbg !1106
  %31 = load %struct._object*, %struct._object** %m, align 8, !dbg !1107, !tbaa !1027
  %call35 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i64 1024), !dbg !1108
  %32 = load %struct._object*, %struct._object** %m, align 8, !dbg !1109, !tbaa !1027
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i64 524288), !dbg !1110
  %33 = load %struct._object*, %struct._object** %m, align 8, !dbg !1111, !tbaa !1027
  store %struct._object* %33, %struct._object** %retval, !dbg !1112
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1112

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.5, %if.then
  %34 = bitcast %struct._object** %m to i8*, !dbg !1113
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1113
  %35 = load %struct._object*, %struct._object** %retval, !dbg !1113
  ret %struct._object* %35, !dbg !1113
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @select_select(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rfd2obj = alloca [1025 x %struct.pylist], align 16
  %wfd2obj = alloca [1025 x %struct.pylist], align 16
  %efd2obj = alloca [1025 x %struct.pylist], align 16
  %ifdlist = alloca %struct._object*, align 8
  %ofdlist = alloca %struct._object*, align 8
  %efdlist = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %tout = alloca %struct._object*, align 8
  %ifdset = alloca %struct.fd_set, align 8
  %ofdset = alloca %struct.fd_set, align 8
  %efdset = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %tvp = alloca %struct.timeval*, align 8
  %imax = alloca i32, align 4
  %omax = alloca i32, align 4
  %emax = alloca i32, align 4
  %max = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sec = alloca i64, align 8
  %usec = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_xdecref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !456, metadata !1023), !dbg !1114
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !457, metadata !1023), !dbg !1115
  %0 = bitcast [1025 x %struct.pylist]* %rfd2obj to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 16400, i8* %0) #1, !dbg !1116
  call void @llvm.dbg.declare(metadata [1025 x %struct.pylist]* %rfd2obj, metadata !458, metadata !1023), !dbg !1117
  %1 = bitcast [1025 x %struct.pylist]* %wfd2obj to i8*, !dbg !1118
  call void @llvm.lifetime.start(i64 16400, i8* %1) #1, !dbg !1118
  call void @llvm.dbg.declare(metadata [1025 x %struct.pylist]* %wfd2obj, metadata !468, metadata !1023), !dbg !1119
  %2 = bitcast [1025 x %struct.pylist]* %efd2obj to i8*, !dbg !1120
  call void @llvm.lifetime.start(i64 16400, i8* %2) #1, !dbg !1120
  call void @llvm.dbg.declare(metadata [1025 x %struct.pylist]* %efd2obj, metadata !469, metadata !1023), !dbg !1121
  %3 = bitcast %struct._object** %ifdlist to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1122
  call void @llvm.dbg.declare(metadata %struct._object** %ifdlist, metadata !470, metadata !1023), !dbg !1123
  %4 = bitcast %struct._object** %ofdlist to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1122
  call void @llvm.dbg.declare(metadata %struct._object** %ofdlist, metadata !471, metadata !1023), !dbg !1124
  %5 = bitcast %struct._object** %efdlist to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1122
  call void @llvm.dbg.declare(metadata %struct._object** %efdlist, metadata !472, metadata !1023), !dbg !1125
  %6 = bitcast %struct._object** %ret to i8*, !dbg !1126
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1126
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !473, metadata !1023), !dbg !1127
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !1127, !tbaa !1027
  %7 = bitcast %struct._object** %tout to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1128
  call void @llvm.dbg.declare(metadata %struct._object** %tout, metadata !474, metadata !1023), !dbg !1129
  store %struct._object* @_Py_NoneStruct, %struct._object** %tout, align 8, !dbg !1129, !tbaa !1027
  %8 = bitcast %struct.fd_set* %ifdset to i8*, !dbg !1130
  call void @llvm.lifetime.start(i64 128, i8* %8) #1, !dbg !1130
  call void @llvm.dbg.declare(metadata %struct.fd_set* %ifdset, metadata !475, metadata !1023), !dbg !1131
  %9 = bitcast %struct.fd_set* %ofdset to i8*, !dbg !1130
  call void @llvm.lifetime.start(i64 128, i8* %9) #1, !dbg !1130
  call void @llvm.dbg.declare(metadata %struct.fd_set* %ofdset, metadata !483, metadata !1023), !dbg !1132
  %10 = bitcast %struct.fd_set* %efdset to i8*, !dbg !1130
  call void @llvm.lifetime.start(i64 128, i8* %10) #1, !dbg !1130
  call void @llvm.dbg.declare(metadata %struct.fd_set* %efdset, metadata !484, metadata !1023), !dbg !1133
  %11 = bitcast %struct.timeval* %tv to i8*, !dbg !1134
  call void @llvm.lifetime.start(i64 16, i8* %11) #1, !dbg !1134
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !485, metadata !1023), !dbg !1135
  %12 = bitcast %struct.timeval** %tvp to i8*, !dbg !1134
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !1134
  call void @llvm.dbg.declare(metadata %struct.timeval** %tvp, metadata !486, metadata !1023), !dbg !1136
  %13 = bitcast i32* %imax to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %imax, metadata !487, metadata !1023), !dbg !1138
  %14 = bitcast i32* %omax to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %omax, metadata !488, metadata !1023), !dbg !1139
  %15 = bitcast i32* %emax to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %emax, metadata !489, metadata !1023), !dbg !1140
  %16 = bitcast i32* %max to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %max, metadata !490, metadata !1023), !dbg !1141
  %17 = bitcast i32* %n to i8*, !dbg !1142
  call void @llvm.lifetime.start(i64 4, i8* %17) #1, !dbg !1142
  call void @llvm.dbg.declare(metadata i32* %n, metadata !491, metadata !1023), !dbg !1143
  %18 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1144, !tbaa !1027
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i64 3, i64 4, %struct._object** %ifdlist, %struct._object** %ofdlist, %struct._object** %efdlist, %struct._object** %tout), !dbg !1146
  %tobool = icmp ne i32 %call, 0, !dbg !1146
  br i1 %tobool, label %if.end, label %if.then, !dbg !1147

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111, !dbg !1148

if.end:                                           ; preds = %entry
  %19 = load %struct._object*, %struct._object** %tout, align 8, !dbg !1149, !tbaa !1027
  %cmp = icmp eq %struct._object* %19, @_Py_NoneStruct, !dbg !1150
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1151

if.then.1:                                        ; preds = %if.end
  store %struct.timeval* null, %struct.timeval** %tvp, align 8, !dbg !1152, !tbaa !1027
  br label %if.end.16, !dbg !1153

if.else:                                          ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %tout, align 8, !dbg !1154, !tbaa !1027
  %call2 = call i32 @PyNumber_Check(%struct._object* %20), !dbg !1155
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1155
  br i1 %tobool3, label %if.else.5, label %if.then.4, !dbg !1156

if.then.4:                                        ; preds = %if.else
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1157, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)), !dbg !1159
  store %struct._object* null, %struct._object** %retval, !dbg !1160
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111, !dbg !1160

if.else.5:                                        ; preds = %if.else
  %22 = bitcast i64* %sec to i8*, !dbg !1161
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !1161
  call void @llvm.dbg.declare(metadata i64* %sec, metadata !492, metadata !1023), !dbg !1162
  %23 = bitcast i64* %usec to i8*, !dbg !1163
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !1163
  call void @llvm.dbg.declare(metadata i64* %usec, metadata !498, metadata !1023), !dbg !1164
  %24 = load %struct._object*, %struct._object** %tout, align 8, !dbg !1165, !tbaa !1027
  %call6 = call i32 @_PyTime_ObjectToTimeval(%struct._object* %24, i64* %sec, i64* %usec, i32 1), !dbg !1167
  %cmp7 = icmp eq i32 %call6, -1, !dbg !1168
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1169

if.then.8:                                        ; preds = %if.else.5
  store %struct._object* null, %struct._object** %retval, !dbg !1170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1170

if.end.9:                                         ; preds = %if.else.5
  %25 = load i64, i64* %sec, align 8, !dbg !1171, !tbaa !1172
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !1173
  store i64 %25, i64* %tv_sec, align 8, !dbg !1174, !tbaa !1175
  %26 = load i64, i64* %usec, align 8, !dbg !1177, !tbaa !1172
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !1178
  store i64 %26, i64* %tv_usec, align 8, !dbg !1179, !tbaa !1180
  %tv_sec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !1181
  %27 = load i64, i64* %tv_sec10, align 8, !dbg !1181, !tbaa !1175
  %cmp11 = icmp slt i64 %27, 0, !dbg !1183
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1184

if.then.12:                                       ; preds = %if.end.9
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1185, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0)), !dbg !1187
  store %struct._object* null, %struct._object** %retval, !dbg !1188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1188

if.end.13:                                        ; preds = %if.end.9
  store %struct.timeval* %tv, %struct.timeval** %tvp, align 8, !dbg !1189, !tbaa !1027
  store i32 0, i32* %cleanup.dest.slot, !dbg !1190
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.8
  %29 = bitcast i64* %usec to i8*, !dbg !1191
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1191
  %30 = bitcast i64* %sec to i8*, !dbg !1191
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1191
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.111 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.1
  %arrayidx = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i64 0, !dbg !1193
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2, !dbg !1194
  store i32 -1, i32* %sentinel, align 4, !dbg !1195, !tbaa !1196
  %arrayidx17 = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i64 0, !dbg !1199
  %sentinel18 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx17, i32 0, i32 2, !dbg !1200
  store i32 -1, i32* %sentinel18, align 4, !dbg !1201, !tbaa !1196
  %arrayidx19 = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i64 0, !dbg !1202
  %sentinel20 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx19, i32 0, i32 2, !dbg !1203
  store i32 -1, i32* %sentinel20, align 4, !dbg !1204, !tbaa !1196
  %31 = load %struct._object*, %struct._object** %ifdlist, align 8, !dbg !1205, !tbaa !1027
  %arraydecay = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0, !dbg !1207
  %call21 = call i32 @seq2set(%struct._object* %31, %struct.fd_set* %ifdset, %struct.pylist* %arraydecay), !dbg !1208
  store i32 %call21, i32* %imax, align 4, !dbg !1209, !tbaa !1210
  %cmp22 = icmp slt i32 %call21, 0, !dbg !1211
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !1212

if.then.23:                                       ; preds = %if.end.16
  br label %finally, !dbg !1213

if.end.24:                                        ; preds = %if.end.16
  %32 = load %struct._object*, %struct._object** %ofdlist, align 8, !dbg !1214, !tbaa !1027
  %arraydecay25 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0, !dbg !1216
  %call26 = call i32 @seq2set(%struct._object* %32, %struct.fd_set* %ofdset, %struct.pylist* %arraydecay25), !dbg !1217
  store i32 %call26, i32* %omax, align 4, !dbg !1218, !tbaa !1210
  %cmp27 = icmp slt i32 %call26, 0, !dbg !1219
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !1220

if.then.28:                                       ; preds = %if.end.24
  br label %finally, !dbg !1221

if.end.29:                                        ; preds = %if.end.24
  %33 = load %struct._object*, %struct._object** %efdlist, align 8, !dbg !1222, !tbaa !1027
  %arraydecay30 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0, !dbg !1224
  %call31 = call i32 @seq2set(%struct._object* %33, %struct.fd_set* %efdset, %struct.pylist* %arraydecay30), !dbg !1225
  store i32 %call31, i32* %emax, align 4, !dbg !1226, !tbaa !1210
  %cmp32 = icmp slt i32 %call31, 0, !dbg !1227
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !1228

if.then.33:                                       ; preds = %if.end.29
  br label %finally, !dbg !1229

if.end.34:                                        ; preds = %if.end.29
  %34 = load i32, i32* %imax, align 4, !dbg !1230, !tbaa !1210
  store i32 %34, i32* %max, align 4, !dbg !1231, !tbaa !1210
  %35 = load i32, i32* %omax, align 4, !dbg !1232, !tbaa !1210
  %36 = load i32, i32* %max, align 4, !dbg !1234, !tbaa !1210
  %cmp35 = icmp sgt i32 %35, %36, !dbg !1235
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1236

if.then.36:                                       ; preds = %if.end.34
  %37 = load i32, i32* %omax, align 4, !dbg !1237, !tbaa !1210
  store i32 %37, i32* %max, align 4, !dbg !1239, !tbaa !1210
  br label %if.end.37, !dbg !1240

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %38 = load i32, i32* %emax, align 4, !dbg !1241, !tbaa !1210
  %39 = load i32, i32* %max, align 4, !dbg !1243, !tbaa !1210
  %cmp38 = icmp sgt i32 %38, %39, !dbg !1244
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !1245

if.then.39:                                       ; preds = %if.end.37
  %40 = load i32, i32* %emax, align 4, !dbg !1246, !tbaa !1210
  store i32 %40, i32* %max, align 4, !dbg !1248, !tbaa !1210
  br label %if.end.40, !dbg !1249

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  %41 = bitcast %struct._ts** %_save to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !1250
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !499, metadata !1023), !dbg !1251
  %call41 = call %struct._ts* @PyEval_SaveThread(), !dbg !1252
  store %struct._ts* %call41, %struct._ts** %_save, align 8, !dbg !1253, !tbaa !1027
  %42 = load i32, i32* %max, align 4, !dbg !1254, !tbaa !1210
  %43 = load %struct.timeval*, %struct.timeval** %tvp, align 8, !dbg !1255, !tbaa !1027
  %call42 = call i32 @select(i32 %42, %struct.fd_set* %ifdset, %struct.fd_set* %ofdset, %struct.fd_set* %efdset, %struct.timeval* %43), !dbg !1256
  store i32 %call42, i32* %n, align 4, !dbg !1257, !tbaa !1210
  %44 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1258, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %44), !dbg !1259
  %45 = bitcast %struct._ts** %_save to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1260
  %46 = load i32, i32* %n, align 4, !dbg !1261, !tbaa !1210
  %cmp43 = icmp slt i32 %46, 0, !dbg !1262
  br i1 %cmp43, label %if.then.44, label %if.else.46, !dbg !1263

if.then.44:                                       ; preds = %if.end.40
  %47 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1264, !tbaa !1027
  %call45 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %47), !dbg !1266
  br label %if.end.107, !dbg !1267

if.else.46:                                       ; preds = %if.end.40
  %arraydecay47 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0, !dbg !1268
  %call48 = call %struct._object* @set2list(%struct.fd_set* %ifdset, %struct.pylist* %arraydecay47), !dbg !1269
  store %struct._object* %call48, %struct._object** %ifdlist, align 8, !dbg !1270, !tbaa !1027
  %arraydecay49 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0, !dbg !1271
  %call50 = call %struct._object* @set2list(%struct.fd_set* %ofdset, %struct.pylist* %arraydecay49), !dbg !1272
  store %struct._object* %call50, %struct._object** %ofdlist, align 8, !dbg !1273, !tbaa !1027
  %arraydecay51 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0, !dbg !1274
  %call52 = call %struct._object* @set2list(%struct.fd_set* %efdset, %struct.pylist* %arraydecay51), !dbg !1275
  store %struct._object* %call52, %struct._object** %efdlist, align 8, !dbg !1276, !tbaa !1027
  %call53 = call %struct._object* @PyErr_Occurred(), !dbg !1277
  %tobool54 = icmp ne %struct._object* %call53, null, !dbg !1277
  br i1 %tobool54, label %if.then.55, label %if.else.56, !dbg !1279

if.then.55:                                       ; preds = %if.else.46
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !1280, !tbaa !1027
  br label %if.end.58, !dbg !1281

if.else.56:                                       ; preds = %if.else.46
  %48 = load %struct._object*, %struct._object** %ifdlist, align 8, !dbg !1282, !tbaa !1027
  %49 = load %struct._object*, %struct._object** %ofdlist, align 8, !dbg !1283, !tbaa !1027
  %50 = load %struct._object*, %struct._object** %efdlist, align 8, !dbg !1284, !tbaa !1027
  %call57 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %48, %struct._object* %49, %struct._object* %50), !dbg !1285
  store %struct._object* %call57, %struct._object** %ret, align 8, !dbg !1286, !tbaa !1027
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %do.body, !dbg !1287

do.body:                                          ; preds = %if.end.58
  %51 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1288
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !1288
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !559, metadata !1023), !dbg !1290
  %52 = load %struct._object*, %struct._object** %ifdlist, align 8, !dbg !1291, !tbaa !1027
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1290, !tbaa !1027
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1292, !tbaa !1027
  %cmp59 = icmp ne %struct._object* %53, null, !dbg !1293
  br i1 %cmp59, label %if.then.60, label %if.end.66, !dbg !1294

if.then.60:                                       ; preds = %do.body
  br label %do.body.61, !dbg !1295

do.body.61:                                       ; preds = %if.then.60
  %54 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !563, metadata !1023), !dbg !1299
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1300, !tbaa !1027
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8, !dbg !1299, !tbaa !1027
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1301, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1303
  %57 = load i64, i64* %ob_refcnt, align 8, !dbg !1304, !tbaa !1039
  %dec = add i64 %57, -1, !dbg !1304
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1304, !tbaa !1039
  %cmp62 = icmp ne i64 %dec, 0, !dbg !1305
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !1306

if.then.63:                                       ; preds = %do.body.61
  br label %if.end.65, !dbg !1307

if.else.64:                                       ; preds = %do.body.61
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1309, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1311
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1311, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1312
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1312, !tbaa !1313
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1316, !tbaa !1027
  call void %60(%struct._object* %61), !dbg !1317
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.63
  %62 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1318
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !1318
  br label %do.cond, !dbg !1320

do.cond:                                          ; preds = %if.end.65
  br label %do.end, !dbg !1321

do.end:                                           ; preds = %do.cond
  br label %if.end.66, !dbg !1323

if.end.66:                                        ; preds = %do.end, %do.body
  %63 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1325
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !1325
  br label %do.cond.67, !dbg !1328

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !1329

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69, !dbg !1331

do.body.69:                                       ; preds = %do.end.68
  %64 = bitcast %struct._object** %_py_xdecref_tmp70 to i8*, !dbg !1332
  call void @llvm.lifetime.start(i64 8, i8* %64) #1, !dbg !1332
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp70, metadata !566, metadata !1023), !dbg !1334
  %65 = load %struct._object*, %struct._object** %ofdlist, align 8, !dbg !1335, !tbaa !1027
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1334, !tbaa !1027
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1336, !tbaa !1027
  %cmp71 = icmp ne %struct._object* %66, null, !dbg !1337
  br i1 %cmp71, label %if.then.72, label %if.end.85, !dbg !1338

if.then.72:                                       ; preds = %do.body.69
  br label %do.body.73, !dbg !1339

do.body.73:                                       ; preds = %if.then.72
  %67 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !1341
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !568, metadata !1023), !dbg !1343
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1344, !tbaa !1027
  store %struct._object* %68, %struct._object** %_py_decref_tmp74, align 8, !dbg !1343, !tbaa !1027
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1345, !tbaa !1027
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !1347
  %70 = load i64, i64* %ob_refcnt75, align 8, !dbg !1348, !tbaa !1039
  %dec76 = add i64 %70, -1, !dbg !1348
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1348, !tbaa !1039
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1349
  br i1 %cmp77, label %if.then.78, label %if.else.79, !dbg !1350

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82, !dbg !1351

if.else.79:                                       ; preds = %do.body.73
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1353, !tbaa !1027
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !1355
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1355, !tbaa !1076
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !1356
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8, !dbg !1356, !tbaa !1313
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1357, !tbaa !1027
  call void %73(%struct._object* %74), !dbg !1358
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  %75 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1359
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !1359
  br label %do.cond.83, !dbg !1361

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1362

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.85, !dbg !1364

if.end.85:                                        ; preds = %do.end.84, %do.body.69
  %76 = bitcast %struct._object** %_py_xdecref_tmp70 to i8*, !dbg !1366
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1366
  br label %do.cond.86, !dbg !1367

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !1368

do.end.87:                                        ; preds = %do.cond.86
  br label %do.body.88, !dbg !1370

do.body.88:                                       ; preds = %do.end.87
  %77 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !1371
  call void @llvm.lifetime.start(i64 8, i8* %77) #1, !dbg !1371
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp89, metadata !571, metadata !1023), !dbg !1373
  %78 = load %struct._object*, %struct._object** %efdlist, align 8, !dbg !1374, !tbaa !1027
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !1373, !tbaa !1027
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !1375, !tbaa !1027
  %cmp90 = icmp ne %struct._object* %79, null, !dbg !1376
  br i1 %cmp90, label %if.then.91, label %if.end.104, !dbg !1377

if.then.91:                                       ; preds = %do.body.88
  br label %do.body.92, !dbg !1378

do.body.92:                                       ; preds = %if.then.91
  %80 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1380
  call void @llvm.lifetime.start(i64 8, i8* %80) #1, !dbg !1380
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !573, metadata !1023), !dbg !1382
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !1383, !tbaa !1027
  store %struct._object* %81, %struct._object** %_py_decref_tmp93, align 8, !dbg !1382, !tbaa !1027
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1384, !tbaa !1027
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !1386
  %83 = load i64, i64* %ob_refcnt94, align 8, !dbg !1387, !tbaa !1039
  %dec95 = add i64 %83, -1, !dbg !1387
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !1387, !tbaa !1039
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !1388
  br i1 %cmp96, label %if.then.97, label %if.else.98, !dbg !1389

if.then.97:                                       ; preds = %do.body.92
  br label %if.end.101, !dbg !1390

if.else.98:                                       ; preds = %do.body.92
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1392, !tbaa !1027
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1, !dbg !1394
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !1394, !tbaa !1076
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4, !dbg !1395
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1395, !tbaa !1313
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1396, !tbaa !1027
  call void %86(%struct._object* %87), !dbg !1397
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  %88 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1398
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !1398
  br label %do.cond.102, !dbg !1400

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !1401

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.104, !dbg !1403

if.end.104:                                       ; preds = %do.end.103, %do.body.88
  %89 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !1405
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !1405
  br label %do.cond.105, !dbg !1406

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !1407

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.106, %if.then.44
  br label %finally, !dbg !1409

finally:                                          ; preds = %if.end.107, %if.then.33, %if.then.28, %if.then.23
  %arraydecay108 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0, !dbg !1410
  call void @reap_obj(%struct.pylist* %arraydecay108), !dbg !1411
  %arraydecay109 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0, !dbg !1412
  call void @reap_obj(%struct.pylist* %arraydecay109), !dbg !1413
  %arraydecay110 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0, !dbg !1414
  call void @reap_obj(%struct.pylist* %arraydecay110), !dbg !1415
  %90 = load %struct._object*, %struct._object** %ret, align 8, !dbg !1416, !tbaa !1027
  store %struct._object* %90, %struct._object** %retval, !dbg !1417
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111, !dbg !1417

cleanup.111:                                      ; preds = %finally, %cleanup, %if.then.4, %if.then
  %91 = bitcast i32* %n to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 4, i8* %91) #1, !dbg !1418
  %92 = bitcast i32* %max to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 4, i8* %92) #1, !dbg !1418
  %93 = bitcast i32* %emax to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 4, i8* %93) #1, !dbg !1418
  %94 = bitcast i32* %omax to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 4, i8* %94) #1, !dbg !1418
  %95 = bitcast i32* %imax to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 4, i8* %95) #1, !dbg !1418
  %96 = bitcast %struct.timeval** %tvp to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %96) #1, !dbg !1418
  %97 = bitcast %struct.timeval* %tv to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 16, i8* %97) #1, !dbg !1418
  %98 = bitcast %struct.fd_set* %efdset to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 128, i8* %98) #1, !dbg !1418
  %99 = bitcast %struct.fd_set* %ofdset to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 128, i8* %99) #1, !dbg !1418
  %100 = bitcast %struct.fd_set* %ifdset to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 128, i8* %100) #1, !dbg !1418
  %101 = bitcast %struct._object** %tout to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !1418
  %102 = bitcast %struct._object** %ret to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !1418
  %103 = bitcast %struct._object** %efdlist to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !1418
  %104 = bitcast %struct._object** %ofdlist to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !1418
  %105 = bitcast %struct._object** %ifdlist to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !1418
  %106 = bitcast [1025 x %struct.pylist]* %efd2obj to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 16400, i8* %106) #1, !dbg !1418
  %107 = bitcast [1025 x %struct.pylist]* %wfd2obj to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 16400, i8* %107) #1, !dbg !1418
  %108 = bitcast [1025 x %struct.pylist]* %rfd2obj to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 16400, i8* %108) #1, !dbg !1418
  %109 = load %struct._object*, %struct._object** %retval, !dbg !1418
  ret %struct._object* %109, !dbg !1418
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @select_poll(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !637, metadata !1023), !dbg !1419
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !638, metadata !1023), !dbg !1420
  %call = call %struct.pollObject* @newPollObject(), !dbg !1421
  %0 = bitcast %struct.pollObject* %call to %struct._object*, !dbg !1422
  ret %struct._object* %0, !dbg !1423
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i32 @PyNumber_Check(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @_PyTime_ObjectToTimeval(%struct._object*, i64*, i64*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @seq2set(%struct._object* %seq, %struct.fd_set* %set, %struct.pylist* %fd2obj) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct._object*, align 8
  %set.addr = alloca %struct.fd_set*, align 8
  %fd2obj.addr = alloca %struct.pylist*, align 8
  %max = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i64, align 8
  %fast_seq = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !582, metadata !1023), !dbg !1424
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.fd_set** %set.addr, metadata !583, metadata !1023), !dbg !1425
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pylist** %fd2obj.addr, metadata !584, metadata !1023), !dbg !1426
  %0 = bitcast i32* %max to i8*, !dbg !1427
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1427
  call void @llvm.dbg.declare(metadata i32* %max, metadata !585, metadata !1023), !dbg !1428
  store i32 -1, i32* %max, align 4, !dbg !1428, !tbaa !1210
  %1 = bitcast i32* %index to i8*, !dbg !1429
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1429
  call void @llvm.dbg.declare(metadata i32* %index, metadata !586, metadata !1023), !dbg !1430
  store i32 0, i32* %index, align 4, !dbg !1430, !tbaa !1210
  %2 = bitcast i64* %i to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1431
  call void @llvm.dbg.declare(metadata i64* %i, metadata !587, metadata !1023), !dbg !1432
  %3 = bitcast %struct._object** %fast_seq to i8*, !dbg !1433
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1433
  call void @llvm.dbg.declare(metadata %struct._object** %fast_seq, metadata !588, metadata !1023), !dbg !1434
  store %struct._object* null, %struct._object** %fast_seq, align 8, !dbg !1434, !tbaa !1027
  %4 = bitcast %struct._object** %o to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !589, metadata !1023), !dbg !1436
  store %struct._object* null, %struct._object** %o, align 8, !dbg !1436, !tbaa !1027
  %5 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1437, !tbaa !1027
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %5, i64 0, !dbg !1437
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 0, !dbg !1438
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !1439, !tbaa !1440
  br label %do.body, !dbg !1441

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %__d0 to i8*, !dbg !1442
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !1442
  call void @llvm.dbg.declare(metadata i32* %__d0, metadata !590, metadata !1023), !dbg !1444
  %7 = bitcast i32* %__d1 to i8*, !dbg !1445
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !1445
  call void @llvm.dbg.declare(metadata i32* %__d1, metadata !592, metadata !1023), !dbg !1446
  %8 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8, !dbg !1447, !tbaa !1027
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0, !dbg !1448
  %arrayidx1 = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0, !dbg !1449
  %9 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx1) #1, !dbg !1450, !srcloc !1451
  %asmresult = extractvalue { i64, i64* } %9, 0, !dbg !1450
  %asmresult2 = extractvalue { i64, i64* } %9, 1, !dbg !1450
  %10 = trunc i64 %asmresult to i32, !dbg !1450
  store i32 %10, i32* %__d0, align 4, !dbg !1450, !tbaa !1210
  %11 = ptrtoint i64* %asmresult2 to i64, !dbg !1450
  %12 = trunc i64 %11 to i32, !dbg !1450
  store i32 %12, i32* %__d1, align 4, !dbg !1450, !tbaa !1210
  %13 = bitcast i32* %__d1 to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !1452
  %14 = bitcast i32* %__d0 to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1452
  br label %do.cond, !dbg !1453

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1454

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !1456, !tbaa !1027
  %call = call %struct._object* @PySequence_Fast(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0)), !dbg !1457
  store %struct._object* %call, %struct._object** %fast_seq, align 8, !dbg !1458, !tbaa !1027
  %16 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1459, !tbaa !1027
  %tobool = icmp ne %struct._object* %16, null, !dbg !1459
  br i1 %tobool, label %if.end, label %if.then, !dbg !1461

if.then:                                          ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !1462
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85, !dbg !1462

if.end:                                           ; preds = %do.end
  store i64 0, i64* %i, align 8, !dbg !1463, !tbaa !1172
  br label %for.cond, !dbg !1464

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i64, i64* %i, align 8, !dbg !1465, !tbaa !1172
  %18 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1468, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1469
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1469, !tbaa !1076
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !1470
  %20 = load i64, i64* %tp_flags, align 8, !dbg !1470, !tbaa !1471
  %and = and i64 %20, 33554432, !dbg !1472
  %cmp = icmp ne i64 %and, 0, !dbg !1473
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1474

cond.true:                                        ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1475, !tbaa !1027
  %22 = bitcast %struct._object* %21 to %struct.PyVarObject*, !dbg !1477
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1, !dbg !1478
  %23 = load i64, i64* %ob_size, align 8, !dbg !1478, !tbaa !1479
  br label %cond.end, !dbg !1474

cond.false:                                       ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1480, !tbaa !1027
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*, !dbg !1482
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1, !dbg !1483
  %26 = load i64, i64* %ob_size3, align 8, !dbg !1483, !tbaa !1479
  br label %cond.end, !dbg !1474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %26, %cond.false ], !dbg !1474
  %cmp4 = icmp slt i64 %17, %cond, !dbg !1484
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1487

for.body:                                         ; preds = %cond.end
  %27 = bitcast i32* %v to i8*, !dbg !1488
  call void @llvm.lifetime.start(i64 4, i8* %27) #1, !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %v, metadata !593, metadata !1023), !dbg !1489
  %28 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1490, !tbaa !1027
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1492
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1492, !tbaa !1076
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19, !dbg !1493
  %30 = load i64, i64* %tp_flags6, align 8, !dbg !1493, !tbaa !1471
  %and7 = and i64 %30, 33554432, !dbg !1494
  %cmp8 = icmp ne i64 %and7, 0, !dbg !1495
  br i1 %cmp8, label %cond.true.9, label %cond.false.11, !dbg !1496

cond.true.9:                                      ; preds = %for.body
  %31 = load i64, i64* %i, align 8, !dbg !1497, !tbaa !1172
  %32 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1499, !tbaa !1027
  %33 = bitcast %struct._object* %32 to %struct.PyListObject*, !dbg !1500
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1, !dbg !1501
  %34 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !1501, !tbaa !1502
  %arrayidx10 = getelementptr %struct._object*, %struct._object** %34, i64 %31, !dbg !1504
  %35 = load %struct._object*, %struct._object** %arrayidx10, align 8, !dbg !1504, !tbaa !1027
  br label %cond.end.14, !dbg !1496

cond.false.11:                                    ; preds = %for.body
  %36 = load i64, i64* %i, align 8, !dbg !1505, !tbaa !1172
  %37 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1507, !tbaa !1027
  %38 = bitcast %struct._object* %37 to %struct.PyTupleObject*, !dbg !1508
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %38, i32 0, i32 1, !dbg !1509
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %36, !dbg !1510
  %39 = load %struct._object*, %struct._object** %arrayidx13, align 8, !dbg !1510, !tbaa !1027
  br label %cond.end.14, !dbg !1496

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.9
  %cond15 = phi %struct._object* [ %35, %cond.true.9 ], [ %39, %cond.false.11 ], !dbg !1496
  store %struct._object* %cond15, %struct._object** %o, align 8, !dbg !1511, !tbaa !1027
  %tobool16 = icmp ne %struct._object* %cond15, null, !dbg !1511
  br i1 %tobool16, label %if.end.18, label %if.then.17, !dbg !1514

if.then.17:                                       ; preds = %cond.end.14
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1515

if.end.18:                                        ; preds = %cond.end.14
  %40 = load %struct._object*, %struct._object** %o, align 8, !dbg !1516, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1517
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !1518, !tbaa !1039
  %inc = add i64 %41, 1, !dbg !1518
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1518, !tbaa !1039
  %42 = load %struct._object*, %struct._object** %o, align 8, !dbg !1519, !tbaa !1027
  %call19 = call i32 @PyObject_AsFileDescriptor(%struct._object* %42), !dbg !1520
  store i32 %call19, i32* %v, align 4, !dbg !1521, !tbaa !1210
  %43 = load i32, i32* %v, align 4, !dbg !1522, !tbaa !1210
  %cmp20 = icmp eq i32 %43, -1, !dbg !1524
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !1525

if.then.21:                                       ; preds = %if.end.18
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1526

if.end.22:                                        ; preds = %if.end.18
  %44 = load i32, i32* %v, align 4, !dbg !1527, !tbaa !1210
  %cmp23 = icmp sge i32 %44, 0, !dbg !1529
  br i1 %cmp23, label %land.lhs.true, label %if.then.25, !dbg !1530

land.lhs.true:                                    ; preds = %if.end.22
  %45 = load i32, i32* %v, align 4, !dbg !1531, !tbaa !1210
  %cmp24 = icmp slt i32 %45, 1024, !dbg !1533
  br i1 %cmp24, label %if.end.26, label %if.then.25, !dbg !1534

if.then.25:                                       ; preds = %land.lhs.true, %if.end.22
  %46 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1535, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0)), !dbg !1537
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1538

if.end.26:                                        ; preds = %land.lhs.true
  %47 = load i32, i32* %v, align 4, !dbg !1539, !tbaa !1210
  %48 = load i32, i32* %max, align 4, !dbg !1541, !tbaa !1210
  %cmp27 = icmp sgt i32 %47, %48, !dbg !1542
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !1543

if.then.28:                                       ; preds = %if.end.26
  %49 = load i32, i32* %v, align 4, !dbg !1544, !tbaa !1210
  store i32 %49, i32* %max, align 4, !dbg !1545, !tbaa !1210
  br label %if.end.29, !dbg !1546

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %50 = load i32, i32* %v, align 4, !dbg !1547, !tbaa !1210
  %rem = srem i32 %50, 64, !dbg !1548
  %sh_prom = zext i32 %rem to i64, !dbg !1549
  %shl = shl i64 1, %sh_prom, !dbg !1549
  %51 = load i32, i32* %v, align 4, !dbg !1550, !tbaa !1210
  %div = sdiv i32 %51, 64, !dbg !1551
  %idxprom = sext i32 %div to i64, !dbg !1552
  %52 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8, !dbg !1553, !tbaa !1027
  %fds_bits30 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %52, i32 0, i32 0, !dbg !1554
  %arrayidx31 = getelementptr [16 x i64], [16 x i64]* %fds_bits30, i32 0, i64 %idxprom, !dbg !1552
  %53 = load i64, i64* %arrayidx31, align 8, !dbg !1555, !tbaa !1172
  %or = or i64 %53, %shl, !dbg !1555
  store i64 %or, i64* %arrayidx31, align 8, !dbg !1555, !tbaa !1172
  %54 = load i32, i32* %index, align 4, !dbg !1556, !tbaa !1210
  %cmp32 = icmp sge i32 %54, 1024, !dbg !1558
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !1559

if.then.33:                                       ; preds = %if.end.29
  %55 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1560, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0)), !dbg !1562
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1563

if.end.34:                                        ; preds = %if.end.29
  %56 = load %struct._object*, %struct._object** %o, align 8, !dbg !1564, !tbaa !1027
  %57 = load i32, i32* %index, align 4, !dbg !1565, !tbaa !1210
  %idxprom35 = sext i32 %57 to i64, !dbg !1566
  %58 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1566, !tbaa !1027
  %arrayidx36 = getelementptr %struct.pylist, %struct.pylist* %58, i64 %idxprom35, !dbg !1566
  %obj37 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx36, i32 0, i32 0, !dbg !1567
  store %struct._object* %56, %struct._object** %obj37, align 8, !dbg !1568, !tbaa !1440
  %59 = load i32, i32* %v, align 4, !dbg !1569, !tbaa !1210
  %60 = load i32, i32* %index, align 4, !dbg !1570, !tbaa !1210
  %idxprom38 = sext i32 %60 to i64, !dbg !1571
  %61 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1571, !tbaa !1027
  %arrayidx39 = getelementptr %struct.pylist, %struct.pylist* %61, i64 %idxprom38, !dbg !1571
  %fd = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx39, i32 0, i32 1, !dbg !1572
  store i32 %59, i32* %fd, align 4, !dbg !1573, !tbaa !1574
  %62 = load i32, i32* %index, align 4, !dbg !1575, !tbaa !1210
  %idxprom40 = sext i32 %62 to i64, !dbg !1576
  %63 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1576, !tbaa !1027
  %arrayidx41 = getelementptr %struct.pylist, %struct.pylist* %63, i64 %idxprom40, !dbg !1576
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx41, i32 0, i32 2, !dbg !1577
  store i32 0, i32* %sentinel, align 4, !dbg !1578, !tbaa !1196
  %64 = load i32, i32* %index, align 4, !dbg !1579, !tbaa !1210
  %inc42 = add i32 %64, 1, !dbg !1579
  store i32 %inc42, i32* %index, align 4, !dbg !1579, !tbaa !1210
  %idxprom43 = sext i32 %inc42 to i64, !dbg !1580
  %65 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1580, !tbaa !1027
  %arrayidx44 = getelementptr %struct.pylist, %struct.pylist* %65, i64 %idxprom43, !dbg !1580
  %sentinel45 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx44, i32 0, i32 2, !dbg !1581
  store i32 -1, i32* %sentinel45, align 4, !dbg !1582, !tbaa !1196
  store i32 0, i32* %cleanup.dest.slot, !dbg !1583
  br label %cleanup, !dbg !1583

cleanup:                                          ; preds = %if.then.33, %if.then.25, %if.then.21, %if.then.17, %if.end.34
  %66 = bitcast i32* %v to i8*, !dbg !1584
  call void @llvm.lifetime.end(i64 4, i8* %66) #1, !dbg !1584
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
    i32 7, label %finally
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1585

for.inc:                                          ; preds = %cleanup.cont
  %67 = load i64, i64* %i, align 8, !dbg !1586, !tbaa !1172
  %inc46 = add i64 %67, 1, !dbg !1586
  store i64 %inc46, i64* %i, align 8, !dbg !1586, !tbaa !1172
  br label %for.cond, !dbg !1587

for.end:                                          ; preds = %cond.end
  br label %do.body.47, !dbg !1588

do.body.47:                                       ; preds = %for.end
  %68 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %68) #1, !dbg !1589
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !597, metadata !1023), !dbg !1591
  %69 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1592, !tbaa !1027
  store %struct._object* %69, %struct._object** %_py_decref_tmp, align 8, !dbg !1591, !tbaa !1027
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1593, !tbaa !1027
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !1595
  %71 = load i64, i64* %ob_refcnt48, align 8, !dbg !1596, !tbaa !1039
  %dec = add i64 %71, -1, !dbg !1596
  store i64 %dec, i64* %ob_refcnt48, align 8, !dbg !1596, !tbaa !1039
  %cmp49 = icmp ne i64 %dec, 0, !dbg !1597
  br i1 %cmp49, label %if.then.50, label %if.else, !dbg !1598

if.then.50:                                       ; preds = %do.body.47
  br label %if.end.52, !dbg !1599

if.else:                                          ; preds = %do.body.47
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1601, !tbaa !1027
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !1603
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !1603, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !1604
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1604, !tbaa !1313
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1605, !tbaa !1027
  call void %74(%struct._object* %75), !dbg !1606
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.50
  %76 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1607
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1607
  br label %do.cond.53, !dbg !1609

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !1610

do.end.54:                                        ; preds = %do.cond.53
  %77 = load i32, i32* %max, align 4, !dbg !1612, !tbaa !1210
  %add = add i32 %77, 1, !dbg !1613
  store i32 %add, i32* %retval, !dbg !1614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85, !dbg !1614

finally:                                          ; preds = %cleanup
  br label %do.body.55, !dbg !1615

do.body.55:                                       ; preds = %finally
  %78 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1616
  call void @llvm.lifetime.start(i64 8, i8* %78) #1, !dbg !1616
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !599, metadata !1023), !dbg !1618
  %79 = load %struct._object*, %struct._object** %o, align 8, !dbg !1619, !tbaa !1027
  store %struct._object* %79, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1618, !tbaa !1027
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1620, !tbaa !1027
  %cmp56 = icmp ne %struct._object* %80, null, !dbg !1621
  br i1 %cmp56, label %if.then.57, label %if.end.70, !dbg !1622

if.then.57:                                       ; preds = %do.body.55
  br label %do.body.58, !dbg !1623

do.body.58:                                       ; preds = %if.then.57
  %81 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %81) #1, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !601, metadata !1023), !dbg !1627
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1628, !tbaa !1027
  store %struct._object* %82, %struct._object** %_py_decref_tmp59, align 8, !dbg !1627, !tbaa !1027
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1629, !tbaa !1027
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0, !dbg !1631
  %84 = load i64, i64* %ob_refcnt60, align 8, !dbg !1632, !tbaa !1039
  %dec61 = add i64 %84, -1, !dbg !1632
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !1632, !tbaa !1039
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !1633
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !1634

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !1635

if.else.64:                                       ; preds = %do.body.58
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1637, !tbaa !1027
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1, !dbg !1639
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !1639, !tbaa !1076
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4, !dbg !1640
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !1640, !tbaa !1313
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !1641, !tbaa !1027
  call void %87(%struct._object* %88), !dbg !1642
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %89 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !1643
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !1643
  br label %do.cond.68, !dbg !1645

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !1646

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !1648

if.end.70:                                        ; preds = %do.end.69, %do.body.55
  %90 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1650
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !1650
  br label %do.cond.71, !dbg !1653

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !1654

do.end.72:                                        ; preds = %do.cond.71
  br label %do.body.73, !dbg !1656

do.body.73:                                       ; preds = %do.end.72
  %91 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1657
  call void @llvm.lifetime.start(i64 8, i8* %91) #1, !dbg !1657
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !604, metadata !1023), !dbg !1659
  %92 = load %struct._object*, %struct._object** %fast_seq, align 8, !dbg !1660, !tbaa !1027
  store %struct._object* %92, %struct._object** %_py_decref_tmp74, align 8, !dbg !1659, !tbaa !1027
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1661, !tbaa !1027
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0, !dbg !1663
  %94 = load i64, i64* %ob_refcnt75, align 8, !dbg !1664, !tbaa !1039
  %dec76 = add i64 %94, -1, !dbg !1664
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1664, !tbaa !1039
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1665
  br i1 %cmp77, label %if.then.78, label %if.else.79, !dbg !1666

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82, !dbg !1667

if.else.79:                                       ; preds = %do.body.73
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1669, !tbaa !1027
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1, !dbg !1671
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1671, !tbaa !1076
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4, !dbg !1672
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8, !dbg !1672, !tbaa !1313
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1673, !tbaa !1027
  call void %97(%struct._object* %98), !dbg !1674
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  %99 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1675
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !1675
  br label %do.cond.83, !dbg !1676

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1677

do.end.84:                                        ; preds = %do.cond.83
  store i32 -1, i32* %retval, !dbg !1679
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85, !dbg !1679

cleanup.85:                                       ; preds = %do.end.84, %do.end.54, %cleanup, %if.then
  %100 = bitcast %struct._object** %o to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !1680
  %101 = bitcast %struct._object** %fast_seq to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !1680
  %102 = bitcast i64* %i to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !1680
  %103 = bitcast i32* %index to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 4, i8* %103) #1, !dbg !1680
  %104 = bitcast i32* %max to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 4, i8* %104) #1, !dbg !1680
  %105 = load i32, i32* %retval, !dbg !1680
  ret i32 %105, !dbg !1680
}

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @set2list(%struct.fd_set* %set, %struct.pylist* %fd2obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %set.addr = alloca %struct.fd_set*, align 8
  %fd2obj.addr = alloca %struct.pylist*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %list = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.fd_set** %set.addr, metadata !610, metadata !1023), !dbg !1681
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pylist** %fd2obj.addr, metadata !611, metadata !1023), !dbg !1682
  %0 = bitcast i32* %i to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %i, metadata !612, metadata !1023), !dbg !1684
  %1 = bitcast i32* %j to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %j, metadata !613, metadata !1023), !dbg !1685
  %2 = bitcast i32* %count to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %count, metadata !614, metadata !1023), !dbg !1686
  store i32 0, i32* %count, align 4, !dbg !1686, !tbaa !1210
  %3 = bitcast %struct._object** %list to i8*, !dbg !1687
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !615, metadata !1023), !dbg !1688
  %4 = bitcast %struct._object** %o to i8*, !dbg !1687
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !616, metadata !1023), !dbg !1689
  %5 = bitcast i32* %fd to i8*, !dbg !1690
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1690
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !617, metadata !1023), !dbg !1691
  store i32 0, i32* %j, align 4, !dbg !1692, !tbaa !1210
  br label %for.cond, !dbg !1694

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %j, align 4, !dbg !1695, !tbaa !1210
  %idxprom = sext i32 %6 to i64, !dbg !1699
  %7 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1699, !tbaa !1027
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %7, i64 %idxprom, !dbg !1699
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2, !dbg !1700
  %8 = load i32, i32* %sentinel, align 4, !dbg !1700, !tbaa !1196
  %cmp = icmp sge i32 %8, 0, !dbg !1701
  br i1 %cmp, label %for.body, label %for.end, !dbg !1702

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4, !dbg !1703, !tbaa !1210
  %idxprom1 = sext i32 %9 to i64, !dbg !1706
  %10 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1706, !tbaa !1027
  %arrayidx2 = getelementptr %struct.pylist, %struct.pylist* %10, i64 %idxprom1, !dbg !1706
  %fd3 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx2, i32 0, i32 1, !dbg !1707
  %11 = load i32, i32* %fd3, align 4, !dbg !1707, !tbaa !1574
  %div = sdiv i32 %11, 64, !dbg !1708
  %idxprom4 = sext i32 %div to i64, !dbg !1709
  %12 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8, !dbg !1710, !tbaa !1027
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !1711
  %arrayidx5 = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 %idxprom4, !dbg !1709
  %13 = load i64, i64* %arrayidx5, align 8, !dbg !1709, !tbaa !1172
  %14 = load i32, i32* %j, align 4, !dbg !1712, !tbaa !1210
  %idxprom6 = sext i32 %14 to i64, !dbg !1713
  %15 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1713, !tbaa !1027
  %arrayidx7 = getelementptr %struct.pylist, %struct.pylist* %15, i64 %idxprom6, !dbg !1713
  %fd8 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx7, i32 0, i32 1, !dbg !1714
  %16 = load i32, i32* %fd8, align 4, !dbg !1714, !tbaa !1574
  %rem = srem i32 %16, 64, !dbg !1715
  %sh_prom = zext i32 %rem to i64, !dbg !1716
  %shl = shl i64 1, %sh_prom, !dbg !1716
  %and = and i64 %13, %shl, !dbg !1717
  %cmp9 = icmp ne i64 %and, 0, !dbg !1718
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1719

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %count, align 4, !dbg !1720, !tbaa !1210
  %inc = add i32 %17, 1, !dbg !1720
  store i32 %inc, i32* %count, align 4, !dbg !1720, !tbaa !1210
  br label %if.end, !dbg !1721

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1722

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4, !dbg !1723, !tbaa !1210
  %inc10 = add i32 %18, 1, !dbg !1723
  store i32 %inc10, i32* %j, align 4, !dbg !1723, !tbaa !1210
  br label %for.cond, !dbg !1724

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %count, align 4, !dbg !1725, !tbaa !1210
  %conv = sext i32 %19 to i64, !dbg !1725
  %call = call %struct._object* @PyList_New(i64 %conv), !dbg !1726
  store %struct._object* %call, %struct._object** %list, align 8, !dbg !1727, !tbaa !1027
  %20 = load %struct._object*, %struct._object** %list, align 8, !dbg !1728, !tbaa !1027
  %tobool = icmp ne %struct._object* %20, null, !dbg !1728
  br i1 %tobool, label %if.end.12, label %if.then.11, !dbg !1730

if.then.11:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !1731
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1731

if.end.12:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !1732, !tbaa !1210
  store i32 0, i32* %j, align 4, !dbg !1733, !tbaa !1210
  br label %for.cond.13, !dbg !1735

for.cond.13:                                      ; preds = %for.inc.47, %if.end.12
  %21 = load i32, i32* %j, align 4, !dbg !1736, !tbaa !1210
  %idxprom14 = sext i32 %21 to i64, !dbg !1740
  %22 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1740, !tbaa !1027
  %arrayidx15 = getelementptr %struct.pylist, %struct.pylist* %22, i64 %idxprom14, !dbg !1740
  %sentinel16 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx15, i32 0, i32 2, !dbg !1741
  %23 = load i32, i32* %sentinel16, align 4, !dbg !1741, !tbaa !1196
  %cmp17 = icmp sge i32 %23, 0, !dbg !1742
  br i1 %cmp17, label %for.body.19, label %for.end.49, !dbg !1743

for.body.19:                                      ; preds = %for.cond.13
  %24 = load i32, i32* %j, align 4, !dbg !1744, !tbaa !1210
  %idxprom20 = sext i32 %24 to i64, !dbg !1746
  %25 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1746, !tbaa !1027
  %arrayidx21 = getelementptr %struct.pylist, %struct.pylist* %25, i64 %idxprom20, !dbg !1746
  %fd22 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx21, i32 0, i32 1, !dbg !1747
  %26 = load i32, i32* %fd22, align 4, !dbg !1747, !tbaa !1574
  store i32 %26, i32* %fd, align 4, !dbg !1748, !tbaa !1210
  %27 = load i32, i32* %fd, align 4, !dbg !1749, !tbaa !1210
  %div23 = sdiv i32 %27, 64, !dbg !1751
  %idxprom24 = sext i32 %div23 to i64, !dbg !1752
  %28 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8, !dbg !1753, !tbaa !1027
  %fds_bits25 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %28, i32 0, i32 0, !dbg !1754
  %arrayidx26 = getelementptr [16 x i64], [16 x i64]* %fds_bits25, i32 0, i64 %idxprom24, !dbg !1752
  %29 = load i64, i64* %arrayidx26, align 8, !dbg !1752, !tbaa !1172
  %30 = load i32, i32* %fd, align 4, !dbg !1755, !tbaa !1210
  %rem27 = srem i32 %30, 64, !dbg !1756
  %sh_prom28 = zext i32 %rem27 to i64, !dbg !1757
  %shl29 = shl i64 1, %sh_prom28, !dbg !1757
  %and30 = and i64 %29, %shl29, !dbg !1758
  %cmp31 = icmp ne i64 %and30, 0, !dbg !1759
  br i1 %cmp31, label %if.then.33, label %if.end.46, !dbg !1760

if.then.33:                                       ; preds = %for.body.19
  %31 = load i32, i32* %j, align 4, !dbg !1761, !tbaa !1210
  %idxprom34 = sext i32 %31 to i64, !dbg !1763
  %32 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1763, !tbaa !1027
  %arrayidx35 = getelementptr %struct.pylist, %struct.pylist* %32, i64 %idxprom34, !dbg !1763
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx35, i32 0, i32 0, !dbg !1764
  %33 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1764, !tbaa !1440
  store %struct._object* %33, %struct._object** %o, align 8, !dbg !1765, !tbaa !1027
  %34 = load i32, i32* %j, align 4, !dbg !1766, !tbaa !1210
  %idxprom36 = sext i32 %34 to i64, !dbg !1767
  %35 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1767, !tbaa !1027
  %arrayidx37 = getelementptr %struct.pylist, %struct.pylist* %35, i64 %idxprom36, !dbg !1767
  %obj38 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx37, i32 0, i32 0, !dbg !1768
  store %struct._object* null, %struct._object** %obj38, align 8, !dbg !1769, !tbaa !1440
  %36 = load %struct._object*, %struct._object** %list, align 8, !dbg !1770, !tbaa !1027
  %37 = load i32, i32* %i, align 4, !dbg !1772, !tbaa !1210
  %conv39 = sext i32 %37 to i64, !dbg !1772
  %38 = load %struct._object*, %struct._object** %o, align 8, !dbg !1773, !tbaa !1027
  %call40 = call i32 @PyList_SetItem(%struct._object* %36, i64 %conv39, %struct._object* %38), !dbg !1774
  %cmp41 = icmp slt i32 %call40, 0, !dbg !1775
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !1776

if.then.43:                                       ; preds = %if.then.33
  br label %finally, !dbg !1777

if.end.44:                                        ; preds = %if.then.33
  %39 = load i32, i32* %i, align 4, !dbg !1778, !tbaa !1210
  %inc45 = add i32 %39, 1, !dbg !1778
  store i32 %inc45, i32* %i, align 4, !dbg !1778, !tbaa !1210
  br label %if.end.46, !dbg !1779

if.end.46:                                        ; preds = %if.end.44, %for.body.19
  br label %for.inc.47, !dbg !1780

for.inc.47:                                       ; preds = %if.end.46
  %40 = load i32, i32* %j, align 4, !dbg !1781, !tbaa !1210
  %inc48 = add i32 %40, 1, !dbg !1781
  store i32 %inc48, i32* %j, align 4, !dbg !1781, !tbaa !1210
  br label %for.cond.13, !dbg !1782

for.end.49:                                       ; preds = %for.cond.13
  %41 = load %struct._object*, %struct._object** %list, align 8, !dbg !1783, !tbaa !1027
  store %struct._object* %41, %struct._object** %retval, !dbg !1784
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1784

finally:                                          ; preds = %if.then.43
  br label %do.body, !dbg !1785

do.body:                                          ; preds = %finally
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !618, metadata !1023), !dbg !1788
  %43 = load %struct._object*, %struct._object** %list, align 8, !dbg !1789, !tbaa !1027
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !1788, !tbaa !1027
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1790, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !1792
  %45 = load i64, i64* %ob_refcnt, align 8, !dbg !1793, !tbaa !1039
  %dec = add i64 %45, -1, !dbg !1793
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1793, !tbaa !1039
  %cmp50 = icmp ne i64 %dec, 0, !dbg !1794
  br i1 %cmp50, label %if.then.52, label %if.else, !dbg !1795

if.then.52:                                       ; preds = %do.body
  br label %if.end.53, !dbg !1796

if.else:                                          ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1798, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !1800
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1800, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !1801
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1801, !tbaa !1313
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1802, !tbaa !1027
  call void %48(%struct._object* %49), !dbg !1803
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1804
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1804
  br label %do.cond, !dbg !1806

do.cond:                                          ; preds = %if.end.53
  br label %do.end, !dbg !1807

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1809

cleanup:                                          ; preds = %do.end, %for.end.49, %if.then.11
  %51 = bitcast i32* %fd to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !1810
  %52 = bitcast %struct._object** %o to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1810
  %53 = bitcast %struct._object** %list to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1810
  %54 = bitcast i32* %count to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !1810
  %55 = bitcast i32* %j to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 4, i8* %55) #1, !dbg !1810
  %56 = bitcast i32* %i to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 4, i8* %56) #1, !dbg !1810
  %57 = load %struct._object*, %struct._object** %retval, !dbg !1810
  ret %struct._object* %57, !dbg !1810
}

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyTuple_Pack(i64, ...) #3

; Function Attrs: nounwind uwtable
define internal void @reap_obj(%struct.pylist* %fd2obj) #0 {
entry:
  %fd2obj.addr = alloca %struct.pylist*, align 8
  %i = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pylist** %fd2obj.addr, metadata !624, metadata !1023), !dbg !1811
  %0 = bitcast i32* %i to i8*, !dbg !1812
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1812
  call void @llvm.dbg.declare(metadata i32* %i, metadata !625, metadata !1023), !dbg !1813
  store i32 0, i32* %i, align 4, !dbg !1814, !tbaa !1210
  br label %for.cond, !dbg !1815

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1816, !tbaa !1210
  %cmp = icmp slt i32 %1, 1025, !dbg !1819
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1820

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !1821, !tbaa !1210
  %idxprom = sext i32 %2 to i64, !dbg !1823
  %3 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1823, !tbaa !1027
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %3, i64 %idxprom, !dbg !1823
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2, !dbg !1824
  %4 = load i32, i32* %sentinel, align 4, !dbg !1824, !tbaa !1196
  %cmp1 = icmp sge i32 %4, 0, !dbg !1825
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end, !dbg !1826

for.body:                                         ; preds = %land.end
  br label %do.body, !dbg !1828

do.body:                                          ; preds = %for.body
  %6 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1829
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1829
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !626, metadata !1023), !dbg !1831
  %7 = load i32, i32* %i, align 4, !dbg !1832, !tbaa !1210
  %idxprom2 = sext i32 %7 to i64, !dbg !1833
  %8 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1833, !tbaa !1027
  %arrayidx3 = getelementptr %struct.pylist, %struct.pylist* %8, i64 %idxprom2, !dbg !1833
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx3, i32 0, i32 0, !dbg !1834
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1834, !tbaa !1440
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !1831, !tbaa !1027
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1835, !tbaa !1027
  %cmp4 = icmp ne %struct._object* %10, null, !dbg !1836
  br i1 %cmp4, label %if.then, label %if.end.11, !dbg !1837

if.then:                                          ; preds = %do.body
  %11 = load i32, i32* %i, align 4, !dbg !1838, !tbaa !1210
  %idxprom5 = sext i32 %11 to i64, !dbg !1840
  %12 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1840, !tbaa !1027
  %arrayidx6 = getelementptr %struct.pylist, %struct.pylist* %12, i64 %idxprom5, !dbg !1840
  %obj7 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx6, i32 0, i32 0, !dbg !1841
  store %struct._object* null, %struct._object** %obj7, align 8, !dbg !1842, !tbaa !1440
  br label %do.body.8, !dbg !1843

do.body.8:                                        ; preds = %if.then
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1844
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1844
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !631, metadata !1023), !dbg !1846
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1847, !tbaa !1027
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1846, !tbaa !1027
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1848, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1850
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1851, !tbaa !1039
  %dec = add i64 %16, -1, !dbg !1851
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1851, !tbaa !1039
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1852
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1853

if.then.10:                                       ; preds = %do.body.8
  br label %if.end, !dbg !1854

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1856, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1858
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1858, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1859
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1859, !tbaa !1313
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1860, !tbaa !1027
  call void %19(%struct._object* %20), !dbg !1861
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1862
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1862
  br label %do.cond, !dbg !1864

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1865

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !1867

if.end.11:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1869
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1869
  br label %do.cond.12, !dbg !1872

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !1873

do.end.13:                                        ; preds = %do.cond.12
  br label %for.inc, !dbg !1875

for.inc:                                          ; preds = %do.end.13
  %23 = load i32, i32* %i, align 4, !dbg !1876, !tbaa !1210
  %inc = add i32 %23, 1, !dbg !1876
  store i32 %inc, i32* %i, align 4, !dbg !1876, !tbaa !1210
  br label %for.cond, !dbg !1877

for.end:                                          ; preds = %land.end
  %24 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8, !dbg !1878, !tbaa !1027
  %arrayidx14 = getelementptr %struct.pylist, %struct.pylist* %24, i64 0, !dbg !1878
  %sentinel15 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx14, i32 0, i32 2, !dbg !1879
  store i32 -1, i32* %sentinel15, align 4, !dbg !1880, !tbaa !1196
  %25 = bitcast i32* %i to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 4, i8* %25) #1, !dbg !1881
  ret void, !dbg !1881
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #3

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #3

declare %struct._object* @PyList_New(i64) #3

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct.pollObject* @newPollObject() #0 {
entry:
  %retval = alloca %struct.pollObject*, align 8
  %self = alloca %struct.pollObject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct.pollObject** %self to i8*, !dbg !1882
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1882
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self, metadata !643, metadata !1023), !dbg !1883
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @poll_Type), !dbg !1884
  %1 = bitcast %struct._object* %call to %struct.pollObject*, !dbg !1885
  store %struct.pollObject* %1, %struct.pollObject** %self, align 8, !dbg !1886, !tbaa !1027
  %2 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1887, !tbaa !1027
  %cmp = icmp eq %struct.pollObject* %2, null, !dbg !1889
  br i1 %cmp, label %if.then, label %if.end, !dbg !1890

if.then:                                          ; preds = %entry
  store %struct.pollObject* null, %struct.pollObject** %retval, !dbg !1891
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1891

if.end:                                           ; preds = %entry
  %3 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1892, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %3, i32 0, i32 2, !dbg !1893
  store i32 0, i32* %ufd_uptodate, align 4, !dbg !1894, !tbaa !1895
  %4 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1897, !tbaa !1027
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %4, i32 0, i32 4, !dbg !1898
  store %struct.pollfd* null, %struct.pollfd** %ufds, align 8, !dbg !1899, !tbaa !1900
  %5 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1901, !tbaa !1027
  %poll_running = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 5, !dbg !1902
  store i32 0, i32* %poll_running, align 4, !dbg !1903, !tbaa !1904
  %call1 = call %struct._object* @PyDict_New(), !dbg !1905
  %6 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1906, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %6, i32 0, i32 1, !dbg !1907
  store %struct._object* %call1, %struct._object** %dict, align 8, !dbg !1908, !tbaa !1909
  %7 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1910, !tbaa !1027
  %dict2 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %7, i32 0, i32 1, !dbg !1911
  %8 = load %struct._object*, %struct._object** %dict2, align 8, !dbg !1911, !tbaa !1909
  %cmp3 = icmp eq %struct._object* %8, null, !dbg !1912
  br i1 %cmp3, label %if.then.4, label %if.end.8, !dbg !1913

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !1914

do.body:                                          ; preds = %if.then.4
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1915
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1915
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !644, metadata !1023), !dbg !1917
  %10 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1918, !tbaa !1027
  %11 = bitcast %struct.pollObject* %10 to %struct._object*, !dbg !1919
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1917, !tbaa !1027
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1920, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1922
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1039
  %dec = add i64 %13, -1, !dbg !1923
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1039
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1924
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1925

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1926

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1928, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1930
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1930, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1931
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1931, !tbaa !1313
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1932, !tbaa !1027
  call void %16(%struct._object* %17), !dbg !1933
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1934
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1934
  br label %do.cond, !dbg !1936

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1937

do.end:                                           ; preds = %do.cond
  store %struct.pollObject* null, %struct.pollObject** %retval, !dbg !1939
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1939

if.end.8:                                         ; preds = %if.end
  %19 = load %struct.pollObject*, %struct.pollObject** %self, align 8, !dbg !1940, !tbaa !1027
  store %struct.pollObject* %19, %struct.pollObject** %retval, !dbg !1941
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1941

cleanup:                                          ; preds = %if.end.8, %do.end, %if.then
  %20 = bitcast %struct.pollObject** %self to i8*, !dbg !1942
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1942
  %21 = load %struct.pollObject*, %struct.pollObject** %retval, !dbg !1942
  ret %struct.pollObject* %21, !dbg !1942
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare %struct._object* @PyDict_New() #3

; Function Attrs: nounwind uwtable
define internal void @poll_dealloc(%struct.pollObject* %self) #0 {
entry:
  %self.addr = alloca %struct.pollObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !652, metadata !1023), !dbg !1943
  %0 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !1944, !tbaa !1027
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %0, i32 0, i32 4, !dbg !1946
  %1 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8, !dbg !1946, !tbaa !1900
  %cmp = icmp ne %struct.pollfd* %1, null, !dbg !1947
  br i1 %cmp, label %if.then, label %if.end, !dbg !1948

if.then:                                          ; preds = %entry
  %2 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !1949, !tbaa !1027
  %ufds1 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %2, i32 0, i32 4, !dbg !1950
  %3 = load %struct.pollfd*, %struct.pollfd** %ufds1, align 8, !dbg !1950, !tbaa !1900
  %4 = bitcast %struct.pollfd* %3 to i8*, !dbg !1949
  call void @PyMem_Free(i8* %4), !dbg !1951
  br label %if.end, !dbg !1951

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !1952

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !653, metadata !1023), !dbg !1955
  %6 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !1956, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %6, i32 0, i32 1, !dbg !1957
  %7 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1957, !tbaa !1909
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1955, !tbaa !1027
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1958, !tbaa !1027
  %cmp2 = icmp ne %struct._object* %8, null, !dbg !1959
  br i1 %cmp2, label %if.then.3, label %if.end.8, !dbg !1960

if.then.3:                                        ; preds = %do.body
  br label %do.body.4, !dbg !1961

do.body.4:                                        ; preds = %if.then.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1963
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1963
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !655, metadata !1023), !dbg !1965
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1966, !tbaa !1027
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1965, !tbaa !1027
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1967, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1969
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1970, !tbaa !1039
  %dec = add i64 %12, -1, !dbg !1970
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1970, !tbaa !1039
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1971
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1972

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7, !dbg !1973

if.else:                                          ; preds = %do.body.4
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1975, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1977
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1977, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1978
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1978, !tbaa !1313
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1979, !tbaa !1027
  call void %15(%struct._object* %16), !dbg !1980
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1981
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1981
  br label %do.cond, !dbg !1983

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1984

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !1986

if.end.8:                                         ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1988
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1988
  br label %do.end.10, !dbg !1991

do.end.10:                                        ; preds = %if.end.8
  %19 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !1992, !tbaa !1027
  %20 = bitcast %struct.pollObject* %19 to i8*, !dbg !1992
  call void @PyObject_Free(i8* %20), !dbg !1993
  ret void, !dbg !1994
}

declare void @PyMem_Free(i8*) #3

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @poll_register(%struct.pollObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pollObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %events = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !662, metadata !1023), !dbg !1995
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !663, metadata !1023), !dbg !1996
  %0 = bitcast %struct._object** %o to i8*, !dbg !1997
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !664, metadata !1023), !dbg !1998
  %1 = bitcast %struct._object** %key to i8*, !dbg !1997
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !665, metadata !1023), !dbg !1999
  %2 = bitcast %struct._object** %value to i8*, !dbg !1997
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !666, metadata !1023), !dbg !2000
  %3 = bitcast i32* %fd to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2001
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !667, metadata !1023), !dbg !2002
  %4 = bitcast i16* %events to i8*, !dbg !2003
  call void @llvm.lifetime.start(i64 2, i8* %4) #1, !dbg !2003
  call void @llvm.dbg.declare(metadata i16* %events, metadata !668, metadata !1023), !dbg !2004
  store i16 7, i16* %events, align 2, !dbg !2004, !tbaa !2005
  %5 = bitcast i32* %err to i8*, !dbg !2007
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2007
  call void @llvm.dbg.declare(metadata i32* %err, metadata !669, metadata !1023), !dbg !2008
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2009, !tbaa !1027
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), %struct._object** %o, i32 (%struct._object*, i8*)* @ushort_converter, i16* %events), !dbg !2011
  %tobool = icmp ne i32 %call, 0, !dbg !2011
  br i1 %tobool, label %if.end, label %if.then, !dbg !2012

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2013
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2013

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !2014, !tbaa !1027
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %7), !dbg !2015
  store i32 %call1, i32* %fd, align 4, !dbg !2016, !tbaa !1210
  %8 = load i32, i32* %fd, align 4, !dbg !2017, !tbaa !1210
  %cmp = icmp eq i32 %8, -1, !dbg !2019
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2020

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2021
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2023

if.end.3:                                         ; preds = %if.end
  %9 = load i32, i32* %fd, align 4, !dbg !2024, !tbaa !1210
  %conv = sext i32 %9 to i64, !dbg !2024
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2025
  store %struct._object* %call4, %struct._object** %key, align 8, !dbg !2026, !tbaa !1027
  %10 = load %struct._object*, %struct._object** %key, align 8, !dbg !2027, !tbaa !1027
  %cmp5 = icmp eq %struct._object* %10, null, !dbg !2029
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !2030

if.then.7:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2031

if.end.8:                                         ; preds = %if.end.3
  %11 = load i16, i16* %events, align 2, !dbg !2032, !tbaa !2005
  %conv9 = zext i16 %11 to i64, !dbg !2032
  %call10 = call %struct._object* @PyLong_FromLong(i64 %conv9), !dbg !2033
  store %struct._object* %call10, %struct._object** %value, align 8, !dbg !2034, !tbaa !1027
  %12 = load %struct._object*, %struct._object** %value, align 8, !dbg !2035, !tbaa !1027
  %cmp11 = icmp eq %struct._object* %12, null, !dbg !2036
  br i1 %cmp11, label %if.then.13, label %if.end.18, !dbg !2037

if.then.13:                                       ; preds = %if.end.8
  br label %do.body, !dbg !2038

do.body:                                          ; preds = %if.then.13
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2039
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2039
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !670, metadata !1023), !dbg !2041
  %14 = load %struct._object*, %struct._object** %key, align 8, !dbg !2042, !tbaa !1027
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2041, !tbaa !1027
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2043, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2045
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2046, !tbaa !1039
  %dec = add i64 %16, -1, !dbg !2046
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2046, !tbaa !1039
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2047
  br i1 %cmp14, label %if.then.16, label %if.else, !dbg !2048

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2049

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2051, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2053
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2053, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2054
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2054, !tbaa !1313
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2055, !tbaa !1027
  call void %19(%struct._object* %20), !dbg !2056
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2057
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2057
  br label %do.cond, !dbg !2059

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2060

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2062
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2062

if.end.18:                                        ; preds = %if.end.8
  %22 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2063, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %22, i32 0, i32 1, !dbg !2064
  %23 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2064, !tbaa !1909
  %24 = load %struct._object*, %struct._object** %key, align 8, !dbg !2065, !tbaa !1027
  %25 = load %struct._object*, %struct._object** %value, align 8, !dbg !2066, !tbaa !1027
  %call19 = call i32 @PyDict_SetItem(%struct._object* %23, %struct._object* %24, %struct._object* %25), !dbg !2067
  store i32 %call19, i32* %err, align 4, !dbg !2068, !tbaa !1210
  br label %do.body.20, !dbg !2069

do.body.20:                                       ; preds = %if.end.18
  %26 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !2070
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !2070
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !674, metadata !1023), !dbg !2072
  %27 = load %struct._object*, %struct._object** %key, align 8, !dbg !2073, !tbaa !1027
  store %struct._object* %27, %struct._object** %_py_decref_tmp21, align 8, !dbg !2072, !tbaa !1027
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2074, !tbaa !1027
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !2076
  %29 = load i64, i64* %ob_refcnt22, align 8, !dbg !2077, !tbaa !1039
  %dec23 = add i64 %29, -1, !dbg !2077
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !2077, !tbaa !1039
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !2078
  br i1 %cmp24, label %if.then.26, label %if.else.27, !dbg !2079

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30, !dbg !2080

if.else.27:                                       ; preds = %do.body.20
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2082, !tbaa !1027
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !2084
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !2084, !tbaa !1076
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !2085
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !2085, !tbaa !1313
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !2086, !tbaa !1027
  call void %32(%struct._object* %33), !dbg !2087
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %34 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !2088
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2088
  br label %do.cond.31, !dbg !2090

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !2091

do.end.32:                                        ; preds = %do.cond.31
  br label %do.body.33, !dbg !2093

do.body.33:                                       ; preds = %do.end.32
  %35 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2094
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !2094
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !676, metadata !1023), !dbg !2096
  %36 = load %struct._object*, %struct._object** %value, align 8, !dbg !2097, !tbaa !1027
  store %struct._object* %36, %struct._object** %_py_decref_tmp34, align 8, !dbg !2096, !tbaa !1027
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2098, !tbaa !1027
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2100
  %38 = load i64, i64* %ob_refcnt35, align 8, !dbg !2101, !tbaa !1039
  %dec36 = add i64 %38, -1, !dbg !2101
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !2101, !tbaa !1039
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !2102
  br i1 %cmp37, label %if.then.39, label %if.else.40, !dbg !2103

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43, !dbg !2104

if.else.40:                                       ; preds = %do.body.33
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2106, !tbaa !1027
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2108
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2108, !tbaa !1076
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2109
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2109, !tbaa !1313
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2110, !tbaa !1027
  call void %41(%struct._object* %42), !dbg !2111
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %43 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2112
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2112
  br label %do.cond.44, !dbg !2113

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2114

do.end.45:                                        ; preds = %do.cond.44
  %44 = load i32, i32* %err, align 4, !dbg !2116, !tbaa !1210
  %cmp46 = icmp slt i32 %44, 0, !dbg !2118
  br i1 %cmp46, label %if.then.48, label %if.end.49, !dbg !2119

if.then.48:                                       ; preds = %do.end.45
  store %struct._object* null, %struct._object** %retval, !dbg !2120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2120

if.end.49:                                        ; preds = %do.end.45
  %45 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2121, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %45, i32 0, i32 2, !dbg !2122
  store i32 0, i32* %ufd_uptodate, align 4, !dbg !2123, !tbaa !1895
  %46 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2124, !tbaa !1039
  %inc = add i64 %46, 1, !dbg !2124
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2124, !tbaa !1039
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2125

cleanup:                                          ; preds = %if.end.49, %if.then.48, %do.end, %if.then.7, %if.then.2, %if.then
  %47 = bitcast i32* %err to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 4, i8* %47) #1, !dbg !2126
  %48 = bitcast i16* %events to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 2, i8* %48) #1, !dbg !2126
  %49 = bitcast i32* %fd to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 4, i8* %49) #1, !dbg !2126
  %50 = bitcast %struct._object** %value to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !2126
  %51 = bitcast %struct._object** %key to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2126
  %52 = bitcast %struct._object** %o to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !2126
  %53 = load %struct._object*, %struct._object** %retval, !dbg !2126
  ret %struct._object* %53, !dbg !2126
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @poll_modify(%struct.pollObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pollObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %events = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !685, metadata !1023), !dbg !2127
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !686, metadata !1023), !dbg !2128
  %0 = bitcast %struct._object** %o to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !687, metadata !1023), !dbg !2130
  %1 = bitcast %struct._object** %key to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !688, metadata !1023), !dbg !2131
  %2 = bitcast %struct._object** %value to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !689, metadata !1023), !dbg !2132
  %3 = bitcast i32* %fd to i8*, !dbg !2133
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2133
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !690, metadata !1023), !dbg !2134
  %4 = bitcast i16* %events to i8*, !dbg !2135
  call void @llvm.lifetime.start(i64 2, i8* %4) #1, !dbg !2135
  call void @llvm.dbg.declare(metadata i16* %events, metadata !691, metadata !1023), !dbg !2136
  %5 = bitcast i32* %err to i8*, !dbg !2137
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2137
  call void @llvm.dbg.declare(metadata i32* %err, metadata !692, metadata !1023), !dbg !2138
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2139, !tbaa !1027
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %struct._object** %o, i32 (%struct._object*, i8*)* @ushort_converter, i16* %events), !dbg !2141
  %tobool = icmp ne i32 %call, 0, !dbg !2141
  br i1 %tobool, label %if.end, label %if.then, !dbg !2142

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2143
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2143

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !2144, !tbaa !1027
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %7), !dbg !2145
  store i32 %call1, i32* %fd, align 4, !dbg !2146, !tbaa !1210
  %8 = load i32, i32* %fd, align 4, !dbg !2147, !tbaa !1210
  %cmp = icmp eq i32 %8, -1, !dbg !2149
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2150

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2153

if.end.3:                                         ; preds = %if.end
  %9 = load i32, i32* %fd, align 4, !dbg !2154, !tbaa !1210
  %conv = sext i32 %9 to i64, !dbg !2154
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2155
  store %struct._object* %call4, %struct._object** %key, align 8, !dbg !2156, !tbaa !1027
  %10 = load %struct._object*, %struct._object** %key, align 8, !dbg !2157, !tbaa !1027
  %cmp5 = icmp eq %struct._object* %10, null, !dbg !2159
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !2160

if.then.7:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2161

if.end.8:                                         ; preds = %if.end.3
  %11 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2162, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %11, i32 0, i32 1, !dbg !2163
  %12 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2163, !tbaa !1909
  %13 = load %struct._object*, %struct._object** %key, align 8, !dbg !2164, !tbaa !1027
  %call9 = call %struct._object* @PyDict_GetItem(%struct._object* %12, %struct._object* %13), !dbg !2165
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !2166
  br i1 %cmp10, label %if.then.12, label %if.end.19, !dbg !2167

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32* @__errno_location() #2, !dbg !2168
  store i32 2, i32* %call13, align 4, !dbg !2169, !tbaa !1210
  %14 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2170, !tbaa !1027
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14), !dbg !2171
  br label %do.body, !dbg !2172

do.body:                                          ; preds = %if.then.12
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2173
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !693, metadata !1023), !dbg !2175
  %16 = load %struct._object*, %struct._object** %key, align 8, !dbg !2176, !tbaa !1027
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !2175, !tbaa !1027
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2177, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !2179
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !2180, !tbaa !1039
  %dec = add i64 %18, -1, !dbg !2180
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2180, !tbaa !1039
  %cmp15 = icmp ne i64 %dec, 0, !dbg !2181
  br i1 %cmp15, label %if.then.17, label %if.else, !dbg !2182

if.then.17:                                       ; preds = %do.body
  br label %if.end.18, !dbg !2183

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2185, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2187
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2187, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !2188
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2188, !tbaa !1313
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2189, !tbaa !1027
  call void %21(%struct._object* %22), !dbg !2190
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2191
  br label %do.cond, !dbg !2193

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !2194

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2196

if.end.19:                                        ; preds = %if.end.8
  %24 = load i16, i16* %events, align 2, !dbg !2197, !tbaa !2005
  %conv20 = zext i16 %24 to i64, !dbg !2197
  %call21 = call %struct._object* @PyLong_FromLong(i64 %conv20), !dbg !2198
  store %struct._object* %call21, %struct._object** %value, align 8, !dbg !2199, !tbaa !1027
  %25 = load %struct._object*, %struct._object** %value, align 8, !dbg !2200, !tbaa !1027
  %cmp22 = icmp eq %struct._object* %25, null, !dbg !2201
  br i1 %cmp22, label %if.then.24, label %if.end.38, !dbg !2202

if.then.24:                                       ; preds = %if.end.19
  br label %do.body.25, !dbg !2203

do.body.25:                                       ; preds = %if.then.24
  %26 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2204
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !2204
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !697, metadata !1023), !dbg !2206
  %27 = load %struct._object*, %struct._object** %key, align 8, !dbg !2207, !tbaa !1027
  store %struct._object* %27, %struct._object** %_py_decref_tmp26, align 8, !dbg !2206, !tbaa !1027
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2208, !tbaa !1027
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !2210
  %29 = load i64, i64* %ob_refcnt27, align 8, !dbg !2211, !tbaa !1039
  %dec28 = add i64 %29, -1, !dbg !2211
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2211, !tbaa !1039
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !2212
  br i1 %cmp29, label %if.then.31, label %if.else.32, !dbg !2213

if.then.31:                                       ; preds = %do.body.25
  br label %if.end.35, !dbg !2214

if.else.32:                                       ; preds = %do.body.25
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2216, !tbaa !1027
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !2218
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !2218, !tbaa !1076
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !2219
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !2219, !tbaa !1313
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2220, !tbaa !1027
  call void %32(%struct._object* %33), !dbg !2221
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %34 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2222
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2222
  br label %do.cond.36, !dbg !2224

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !2225

do.end.37:                                        ; preds = %do.cond.36
  store %struct._object* null, %struct._object** %retval, !dbg !2227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2227

if.end.38:                                        ; preds = %if.end.19
  %35 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2228, !tbaa !1027
  %dict39 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %35, i32 0, i32 1, !dbg !2229
  %36 = load %struct._object*, %struct._object** %dict39, align 8, !dbg !2229, !tbaa !1909
  %37 = load %struct._object*, %struct._object** %key, align 8, !dbg !2230, !tbaa !1027
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !2231, !tbaa !1027
  %call40 = call i32 @PyDict_SetItem(%struct._object* %36, %struct._object* %37, %struct._object* %38), !dbg !2232
  store i32 %call40, i32* %err, align 4, !dbg !2233, !tbaa !1210
  br label %do.body.41, !dbg !2234

do.body.41:                                       ; preds = %if.end.38
  %39 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2235
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !2235
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !701, metadata !1023), !dbg !2237
  %40 = load %struct._object*, %struct._object** %key, align 8, !dbg !2238, !tbaa !1027
  store %struct._object* %40, %struct._object** %_py_decref_tmp42, align 8, !dbg !2237, !tbaa !1027
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2239, !tbaa !1027
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2241
  %42 = load i64, i64* %ob_refcnt43, align 8, !dbg !2242, !tbaa !1039
  %dec44 = add i64 %42, -1, !dbg !2242
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2242, !tbaa !1039
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2243
  br i1 %cmp45, label %if.then.47, label %if.else.48, !dbg !2244

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !2245

if.else.48:                                       ; preds = %do.body.41
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2247, !tbaa !1027
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2249
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !2249, !tbaa !1076
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2250
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !2250, !tbaa !1313
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2251, !tbaa !1027
  call void %45(%struct._object* %46), !dbg !2252
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %47 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2253
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2253
  br label %do.cond.52, !dbg !2255

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !2256

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54, !dbg !2258

do.body.54:                                       ; preds = %do.end.53
  %48 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !2259
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !2259
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !703, metadata !1023), !dbg !2261
  %49 = load %struct._object*, %struct._object** %value, align 8, !dbg !2262, !tbaa !1027
  store %struct._object* %49, %struct._object** %_py_decref_tmp55, align 8, !dbg !2261, !tbaa !1027
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !2263, !tbaa !1027
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !2265
  %51 = load i64, i64* %ob_refcnt56, align 8, !dbg !2266, !tbaa !1039
  %dec57 = add i64 %51, -1, !dbg !2266
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !2266, !tbaa !1039
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !2267
  br i1 %cmp58, label %if.then.60, label %if.else.61, !dbg !2268

if.then.60:                                       ; preds = %do.body.54
  br label %if.end.64, !dbg !2269

if.else.61:                                       ; preds = %do.body.54
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !2271, !tbaa !1027
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !2273
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !2273, !tbaa !1076
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !2274
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !2274, !tbaa !1313
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !2275, !tbaa !1027
  call void %54(%struct._object* %55), !dbg !2276
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %56 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !2277
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !2277
  br label %do.cond.65, !dbg !2278

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !2279

do.end.66:                                        ; preds = %do.cond.65
  %57 = load i32, i32* %err, align 4, !dbg !2281, !tbaa !1210
  %cmp67 = icmp slt i32 %57, 0, !dbg !2283
  br i1 %cmp67, label %if.then.69, label %if.end.70, !dbg !2284

if.then.69:                                       ; preds = %do.end.66
  store %struct._object* null, %struct._object** %retval, !dbg !2285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2285

if.end.70:                                        ; preds = %do.end.66
  %58 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2286, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %58, i32 0, i32 2, !dbg !2287
  store i32 0, i32* %ufd_uptodate, align 4, !dbg !2288, !tbaa !1895
  %59 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2289, !tbaa !1039
  %inc = add i64 %59, 1, !dbg !2289
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2289, !tbaa !1039
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2290

cleanup:                                          ; preds = %if.end.70, %if.then.69, %do.end.37, %do.end, %if.then.7, %if.then.2, %if.then
  %60 = bitcast i32* %err to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !2291
  %61 = bitcast i16* %events to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 2, i8* %61) #1, !dbg !2291
  %62 = bitcast i32* %fd to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 4, i8* %62) #1, !dbg !2291
  %63 = bitcast %struct._object** %value to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !2291
  %64 = bitcast %struct._object** %key to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !2291
  %65 = bitcast %struct._object** %o to i8*, !dbg !2291
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !2291
  %66 = load %struct._object*, %struct._object** %retval, !dbg !2291
  ret %struct._object* %66, !dbg !2291
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @poll_unregister(%struct.pollObject* %self, %struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pollObject*, align 8
  %o.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !707, metadata !1023), !dbg !2292
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !708, metadata !1023), !dbg !2293
  %0 = bitcast %struct._object** %key to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !709, metadata !1023), !dbg !2295
  %1 = bitcast i32* %fd to i8*, !dbg !2296
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2296
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !710, metadata !1023), !dbg !2297
  %2 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !2298, !tbaa !1027
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %2), !dbg !2299
  store i32 %call, i32* %fd, align 4, !dbg !2300, !tbaa !1210
  %3 = load i32, i32* %fd, align 4, !dbg !2301, !tbaa !1210
  %cmp = icmp eq i32 %3, -1, !dbg !2303
  br i1 %cmp, label %if.then, label %if.end, !dbg !2304

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2305

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fd, align 4, !dbg !2306, !tbaa !1210
  %conv = sext i32 %4 to i64, !dbg !2306
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2307
  store %struct._object* %call1, %struct._object** %key, align 8, !dbg !2308, !tbaa !1027
  %5 = load %struct._object*, %struct._object** %key, align 8, !dbg !2309, !tbaa !1027
  %cmp2 = icmp eq %struct._object* %5, null, !dbg !2311
  br i1 %cmp2, label %if.then.4, label %if.end.5, !dbg !2312

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2313

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2314, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %6, i32 0, i32 1, !dbg !2315
  %7 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2315, !tbaa !1909
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !2316, !tbaa !1027
  %call6 = call i32 @PyDict_DelItem(%struct._object* %7, %struct._object* %8), !dbg !2317
  %cmp7 = icmp eq i32 %call6, -1, !dbg !2318
  br i1 %cmp7, label %if.then.9, label %if.end.14, !dbg !2319

if.then.9:                                        ; preds = %if.end.5
  br label %do.body, !dbg !2320

do.body:                                          ; preds = %if.then.9
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2321
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !2321
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !711, metadata !1023), !dbg !2323
  %10 = load %struct._object*, %struct._object** %key, align 8, !dbg !2324, !tbaa !1027
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !2323, !tbaa !1027
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2325, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2327
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2328, !tbaa !1039
  %dec = add i64 %12, -1, !dbg !2328
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2328, !tbaa !1039
  %cmp10 = icmp ne i64 %dec, 0, !dbg !2329
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !2330

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !2331

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2333, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2335
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2335, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !2336
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2336, !tbaa !1313
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2337, !tbaa !1027
  call void %15(%struct._object* %16), !dbg !2338
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2339
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2339
  br label %do.cond, !dbg !2341

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2344
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2344

if.end.14:                                        ; preds = %if.end.5
  br label %do.body.15, !dbg !2345

do.body.15:                                       ; preds = %if.end.14
  %18 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2346
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp16, metadata !715, metadata !1023), !dbg !2348
  %19 = load %struct._object*, %struct._object** %key, align 8, !dbg !2349, !tbaa !1027
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8, !dbg !2348, !tbaa !1027
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2350, !tbaa !1027
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2352
  %21 = load i64, i64* %ob_refcnt17, align 8, !dbg !2353, !tbaa !1039
  %dec18 = add i64 %21, -1, !dbg !2353
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !2353, !tbaa !1039
  %cmp19 = icmp ne i64 %dec18, 0, !dbg !2354
  br i1 %cmp19, label %if.then.21, label %if.else.22, !dbg !2355

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25, !dbg !2356

if.else.22:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2358, !tbaa !1027
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !2360
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2360, !tbaa !1076
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !2361
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !2361, !tbaa !1313
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2362, !tbaa !1027
  call void %24(%struct._object* %25), !dbg !2363
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %26 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2364
  br label %do.cond.26, !dbg !2366

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !2367

do.end.27:                                        ; preds = %do.cond.26
  %27 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2369, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %27, i32 0, i32 2, !dbg !2370
  store i32 0, i32* %ufd_uptodate, align 4, !dbg !2371, !tbaa !1895
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2372, !tbaa !1039
  %inc = add i64 %28, 1, !dbg !2372
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2372, !tbaa !1039
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2373

cleanup:                                          ; preds = %do.end.27, %do.end, %if.then.4, %if.then
  %29 = bitcast i32* %fd to i8*, !dbg !2374
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !2374
  %30 = bitcast %struct._object** %key to i8*, !dbg !2374
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2374
  %31 = load %struct._object*, %struct._object** %retval, !dbg !2374
  ret %struct._object* %31, !dbg !2374
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @poll_poll(%struct.pollObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pollObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result_list = alloca %struct._object*, align 8
  %tout = alloca %struct._object*, align 8
  %timeout = alloca i32, align 4
  %poll_result = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %value = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !719, metadata !1023), !dbg !2375
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !720, metadata !1023), !dbg !2376
  %0 = bitcast %struct._object** %result_list to i8*, !dbg !2377
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2377
  call void @llvm.dbg.declare(metadata %struct._object** %result_list, metadata !721, metadata !1023), !dbg !2378
  store %struct._object* null, %struct._object** %result_list, align 8, !dbg !2378, !tbaa !1027
  %1 = bitcast %struct._object** %tout to i8*, !dbg !2377
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2377
  call void @llvm.dbg.declare(metadata %struct._object** %tout, metadata !722, metadata !1023), !dbg !2379
  store %struct._object* null, %struct._object** %tout, align 8, !dbg !2379, !tbaa !1027
  %2 = bitcast i32* %timeout to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !723, metadata !1023), !dbg !2381
  store i32 0, i32* %timeout, align 4, !dbg !2381, !tbaa !1210
  %3 = bitcast i32* %poll_result to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %poll_result, metadata !724, metadata !1023), !dbg !2382
  %4 = bitcast i32* %i to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %i, metadata !725, metadata !1023), !dbg !2383
  %5 = bitcast i32* %j to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %j, metadata !726, metadata !1023), !dbg !2384
  %6 = bitcast %struct._object** %value to i8*, !dbg !2385
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2385
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !727, metadata !1023), !dbg !2386
  store %struct._object* null, %struct._object** %value, align 8, !dbg !2386, !tbaa !1027
  %7 = bitcast %struct._object** %num to i8*, !dbg !2385
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2385
  call void @llvm.dbg.declare(metadata %struct._object** %num, metadata !728, metadata !1023), !dbg !2387
  store %struct._object* null, %struct._object** %num, align 8, !dbg !2387, !tbaa !1027
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2388, !tbaa !1027
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 0, i64 1, %struct._object** %tout), !dbg !2390
  %tobool = icmp ne i32 %call, 0, !dbg !2390
  br i1 %tobool, label %if.end, label %if.then, !dbg !2391

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2392
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2392

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2394, !tbaa !1027
  %cmp = icmp eq %struct._object* %9, null, !dbg !2395
  br i1 %cmp, label %if.then.2, label %lor.lhs.false, !dbg !2396

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2397, !tbaa !1027
  %cmp1 = icmp eq %struct._object* %10, @_Py_NoneStruct, !dbg !2399
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2400

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %timeout, align 4, !dbg !2401, !tbaa !1210
  br label %if.end.22, !dbg !2402

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2403, !tbaa !1027
  %call3 = call i32 @PyNumber_Check(%struct._object* %11), !dbg !2404
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2404
  br i1 %tobool4, label %if.else.6, label %if.then.5, !dbg !2405

if.then.5:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2406, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0)), !dbg !2408
  store %struct._object* null, %struct._object** %retval, !dbg !2409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2409

if.else.6:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2410, !tbaa !1027
  %call7 = call %struct._object* @PyNumber_Long(%struct._object* %13), !dbg !2411
  store %struct._object* %call7, %struct._object** %tout, align 8, !dbg !2412, !tbaa !1027
  %14 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2413, !tbaa !1027
  %tobool8 = icmp ne %struct._object* %14, null, !dbg !2413
  br i1 %tobool8, label %if.end.10, label %if.then.9, !dbg !2415

if.then.9:                                        ; preds = %if.else.6
  store %struct._object* null, %struct._object** %retval, !dbg !2416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2416

if.end.10:                                        ; preds = %if.else.6
  %15 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2417, !tbaa !1027
  %call11 = call i32 @_PyLong_AsInt(%struct._object* %15), !dbg !2418
  store i32 %call11, i32* %timeout, align 4, !dbg !2419, !tbaa !1210
  br label %do.body, !dbg !2420

do.body:                                          ; preds = %if.end.10
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2421
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !2421
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !729, metadata !1023), !dbg !2423
  %17 = load %struct._object*, %struct._object** %tout, align 8, !dbg !2424, !tbaa !1027
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !2423, !tbaa !1027
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2425, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !2427
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !2428, !tbaa !1039
  %dec = add i64 %19, -1, !dbg !2428
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2428, !tbaa !1039
  %cmp12 = icmp ne i64 %dec, 0, !dbg !2429
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !2430

if.then.13:                                       ; preds = %do.body
  br label %if.end.15, !dbg !2431

if.else.14:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2433, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2435
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2435, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !2436
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2436, !tbaa !1313
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2437, !tbaa !1027
  call void %22(%struct._object* %23), !dbg !2438
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2439
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2439
  br label %do.cond, !dbg !2441

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !2442

do.end:                                           ; preds = %do.cond
  %25 = load i32, i32* %timeout, align 4, !dbg !2444, !tbaa !1210
  %cmp16 = icmp eq i32 %25, -1, !dbg !2446
  br i1 %cmp16, label %land.lhs.true, label %if.end.20, !dbg !2447

land.lhs.true:                                    ; preds = %do.end
  %call17 = call %struct._object* @PyErr_Occurred(), !dbg !2448
  %tobool18 = icmp ne %struct._object* %call17, null, !dbg !2448
  br i1 %tobool18, label %if.then.19, label %if.end.20, !dbg !2450

if.then.19:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2451
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2451

if.end.20:                                        ; preds = %land.lhs.true, %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.2
  %26 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2452, !tbaa !1027
  %poll_running = getelementptr inbounds %struct.pollObject, %struct.pollObject* %26, i32 0, i32 5, !dbg !2454
  %27 = load i32, i32* %poll_running, align 4, !dbg !2454, !tbaa !1904
  %tobool23 = icmp ne i32 %27, 0, !dbg !2452
  br i1 %tobool23, label %if.then.24, label %if.end.25, !dbg !2455

if.then.24:                                       ; preds = %if.end.22
  %28 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2456, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0)), !dbg !2458
  store %struct._object* null, %struct._object** %retval, !dbg !2459
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2459

if.end.25:                                        ; preds = %if.end.22
  %29 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2460, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %29, i32 0, i32 2, !dbg !2462
  %30 = load i32, i32* %ufd_uptodate, align 4, !dbg !2462, !tbaa !1895
  %tobool26 = icmp ne i32 %30, 0, !dbg !2460
  br i1 %tobool26, label %if.end.32, label %if.then.27, !dbg !2463

if.then.27:                                       ; preds = %if.end.25
  %31 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2464, !tbaa !1027
  %call28 = call i32 @update_ufd_array(%struct.pollObject* %31), !dbg !2466
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2467
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !2468

if.then.30:                                       ; preds = %if.then.27
  store %struct._object* null, %struct._object** %retval, !dbg !2469
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2469

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32, !dbg !2470

if.end.32:                                        ; preds = %if.end.31, %if.end.25
  %32 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2472, !tbaa !1027
  %poll_running33 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %32, i32 0, i32 5, !dbg !2473
  store i32 1, i32* %poll_running33, align 4, !dbg !2474, !tbaa !1904
  %33 = bitcast %struct._ts** %_save to i8*, !dbg !2475
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !2475
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !734, metadata !1023), !dbg !2476
  %call34 = call %struct._ts* @PyEval_SaveThread(), !dbg !2477
  store %struct._ts* %call34, %struct._ts** %_save, align 8, !dbg !2478, !tbaa !1027
  %34 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2479, !tbaa !1027
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %34, i32 0, i32 4, !dbg !2480
  %35 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8, !dbg !2480, !tbaa !1900
  %36 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2481, !tbaa !1027
  %ufd_len = getelementptr inbounds %struct.pollObject, %struct.pollObject* %36, i32 0, i32 3, !dbg !2482
  %37 = load i32, i32* %ufd_len, align 4, !dbg !2482, !tbaa !2483
  %conv = sext i32 %37 to i64, !dbg !2481
  %38 = load i32, i32* %timeout, align 4, !dbg !2484, !tbaa !1210
  %call35 = call i32 @poll(%struct.pollfd* %35, i64 %conv, i32 %38), !dbg !2485
  store i32 %call35, i32* %poll_result, align 4, !dbg !2486, !tbaa !1210
  %39 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2487, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %39), !dbg !2488
  %40 = bitcast %struct._ts** %_save to i8*, !dbg !2489
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2489
  %41 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2490, !tbaa !1027
  %poll_running36 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %41, i32 0, i32 5, !dbg !2491
  store i32 0, i32* %poll_running36, align 4, !dbg !2492, !tbaa !1904
  %42 = load i32, i32* %poll_result, align 4, !dbg !2493, !tbaa !1210
  %cmp37 = icmp slt i32 %42, 0, !dbg !2495
  br i1 %cmp37, label %if.then.39, label %if.end.41, !dbg !2496

if.then.39:                                       ; preds = %if.end.32
  %43 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2497, !tbaa !1027
  %call40 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %43), !dbg !2499
  store %struct._object* null, %struct._object** %retval, !dbg !2500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2500

if.end.41:                                        ; preds = %if.end.32
  %44 = load i32, i32* %poll_result, align 4, !dbg !2501, !tbaa !1210
  %conv42 = sext i32 %44 to i64, !dbg !2501
  %call43 = call %struct._object* @PyList_New(i64 %conv42), !dbg !2502
  store %struct._object* %call43, %struct._object** %result_list, align 8, !dbg !2503, !tbaa !1027
  %45 = load %struct._object*, %struct._object** %result_list, align 8, !dbg !2504, !tbaa !1027
  %tobool44 = icmp ne %struct._object* %45, null, !dbg !2504
  br i1 %tobool44, label %if.else.46, label %if.then.45, !dbg !2505

if.then.45:                                       ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval, !dbg !2506
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2506

if.else.46:                                       ; preds = %if.end.41
  store i32 0, i32* %i, align 4, !dbg !2507, !tbaa !1210
  store i32 0, i32* %j, align 4, !dbg !2508, !tbaa !1210
  br label %for.cond, !dbg !2509

for.cond:                                         ; preds = %for.inc, %if.else.46
  %46 = load i32, i32* %j, align 4, !dbg !2510, !tbaa !1210
  %47 = load i32, i32* %poll_result, align 4, !dbg !2513, !tbaa !1210
  %cmp47 = icmp slt i32 %46, %47, !dbg !2514
  br i1 %cmp47, label %for.body, label %for.end, !dbg !2515

for.body:                                         ; preds = %for.cond
  br label %while.cond, !dbg !2516

while.cond:                                       ; preds = %while.body, %for.body
  %48 = load i32, i32* %i, align 4, !dbg !2517, !tbaa !1210
  %idxprom = sext i32 %48 to i64, !dbg !2520
  %49 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2520, !tbaa !1027
  %ufds49 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %49, i32 0, i32 4, !dbg !2521
  %50 = load %struct.pollfd*, %struct.pollfd** %ufds49, align 8, !dbg !2521, !tbaa !1900
  %arrayidx = getelementptr %struct.pollfd, %struct.pollfd* %50, i64 %idxprom, !dbg !2520
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 2, !dbg !2522
  %51 = load i16, i16* %revents, align 2, !dbg !2522, !tbaa !2523
  %tobool50 = icmp ne i16 %51, 0, !dbg !2525
  %lnot = xor i1 %tobool50, true, !dbg !2525
  br i1 %lnot, label %while.body, label %while.end, !dbg !2516

while.body:                                       ; preds = %while.cond
  %52 = load i32, i32* %i, align 4, !dbg !2526, !tbaa !1210
  %inc = add i32 %52, 1, !dbg !2526
  store i32 %inc, i32* %i, align 4, !dbg !2526, !tbaa !1210
  br label %while.cond, !dbg !2516

while.end:                                        ; preds = %while.cond
  %call51 = call %struct._object* @PyTuple_New(i64 2), !dbg !2528
  store %struct._object* %call51, %struct._object** %value, align 8, !dbg !2529, !tbaa !1027
  %53 = load %struct._object*, %struct._object** %value, align 8, !dbg !2530, !tbaa !1027
  %cmp52 = icmp eq %struct._object* %53, null, !dbg !2532
  br i1 %cmp52, label %if.then.54, label %if.end.55, !dbg !2533

if.then.54:                                       ; preds = %while.end
  br label %error, !dbg !2534

if.end.55:                                        ; preds = %while.end
  %54 = load i32, i32* %i, align 4, !dbg !2535, !tbaa !1210
  %idxprom56 = sext i32 %54 to i64, !dbg !2536
  %55 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2536, !tbaa !1027
  %ufds57 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %55, i32 0, i32 4, !dbg !2537
  %56 = load %struct.pollfd*, %struct.pollfd** %ufds57, align 8, !dbg !2537, !tbaa !1900
  %arrayidx58 = getelementptr %struct.pollfd, %struct.pollfd* %56, i64 %idxprom56, !dbg !2536
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx58, i32 0, i32 0, !dbg !2538
  %57 = load i32, i32* %fd, align 4, !dbg !2538, !tbaa !2539
  %conv59 = sext i32 %57 to i64, !dbg !2536
  %call60 = call %struct._object* @PyLong_FromLong(i64 %conv59), !dbg !2540
  store %struct._object* %call60, %struct._object** %num, align 8, !dbg !2541, !tbaa !1027
  %58 = load %struct._object*, %struct._object** %num, align 8, !dbg !2542, !tbaa !1027
  %cmp61 = icmp eq %struct._object* %58, null, !dbg !2543
  br i1 %cmp61, label %if.then.63, label %if.end.77, !dbg !2544

if.then.63:                                       ; preds = %if.end.55
  br label %do.body.64, !dbg !2545

do.body.64:                                       ; preds = %if.then.63
  %59 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !2546
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !2546
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp65, metadata !736, metadata !1023), !dbg !2548
  %60 = load %struct._object*, %struct._object** %value, align 8, !dbg !2549, !tbaa !1027
  store %struct._object* %60, %struct._object** %_py_decref_tmp65, align 8, !dbg !2548, !tbaa !1027
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2550, !tbaa !1027
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !2552
  %62 = load i64, i64* %ob_refcnt66, align 8, !dbg !2553, !tbaa !1039
  %dec67 = add i64 %62, -1, !dbg !2553
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !2553, !tbaa !1039
  %cmp68 = icmp ne i64 %dec67, 0, !dbg !2554
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !2555

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74, !dbg !2556

if.else.71:                                       ; preds = %do.body.64
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2558, !tbaa !1027
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !2560
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !2560, !tbaa !1076
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !2561
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !2561, !tbaa !1313
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2562, !tbaa !1027
  call void %65(%struct._object* %66), !dbg !2563
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  %67 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !2564
  br label %do.cond.75, !dbg !2566

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !2567

do.end.76:                                        ; preds = %do.cond.75
  br label %error, !dbg !2569

if.end.77:                                        ; preds = %if.end.55
  %68 = load %struct._object*, %struct._object** %num, align 8, !dbg !2570, !tbaa !1027
  %69 = load %struct._object*, %struct._object** %value, align 8, !dbg !2571, !tbaa !1027
  %70 = bitcast %struct._object* %69 to %struct.PyTupleObject*, !dbg !2572
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %70, i32 0, i32 1, !dbg !2573
  %arrayidx78 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2574
  store %struct._object* %68, %struct._object** %arrayidx78, align 8, !dbg !2575, !tbaa !1027
  %71 = load i32, i32* %i, align 4, !dbg !2576, !tbaa !1210
  %idxprom79 = sext i32 %71 to i64, !dbg !2577
  %72 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2577, !tbaa !1027
  %ufds80 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %72, i32 0, i32 4, !dbg !2578
  %73 = load %struct.pollfd*, %struct.pollfd** %ufds80, align 8, !dbg !2578, !tbaa !1900
  %arrayidx81 = getelementptr %struct.pollfd, %struct.pollfd* %73, i64 %idxprom79, !dbg !2577
  %revents82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx81, i32 0, i32 2, !dbg !2579
  %74 = load i16, i16* %revents82, align 2, !dbg !2579, !tbaa !2523
  %conv83 = sext i16 %74 to i32, !dbg !2577
  %and = and i32 %conv83, 65535, !dbg !2580
  %conv84 = sext i32 %and to i64, !dbg !2577
  %call85 = call %struct._object* @PyLong_FromLong(i64 %conv84), !dbg !2581
  store %struct._object* %call85, %struct._object** %num, align 8, !dbg !2582, !tbaa !1027
  %75 = load %struct._object*, %struct._object** %num, align 8, !dbg !2583, !tbaa !1027
  %cmp86 = icmp eq %struct._object* %75, null, !dbg !2584
  br i1 %cmp86, label %if.then.88, label %if.end.102, !dbg !2585

if.then.88:                                       ; preds = %if.end.77
  br label %do.body.89, !dbg !2586

do.body.89:                                       ; preds = %if.then.88
  %76 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !2587
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp90, metadata !745, metadata !1023), !dbg !2589
  %77 = load %struct._object*, %struct._object** %value, align 8, !dbg !2590, !tbaa !1027
  store %struct._object* %77, %struct._object** %_py_decref_tmp90, align 8, !dbg !2589, !tbaa !1027
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2591, !tbaa !1027
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !2593
  %79 = load i64, i64* %ob_refcnt91, align 8, !dbg !2594, !tbaa !1039
  %dec92 = add i64 %79, -1, !dbg !2594
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !2594, !tbaa !1039
  %cmp93 = icmp ne i64 %dec92, 0, !dbg !2595
  br i1 %cmp93, label %if.then.95, label %if.else.96, !dbg !2596

if.then.95:                                       ; preds = %do.body.89
  br label %if.end.99, !dbg !2597

if.else.96:                                       ; preds = %do.body.89
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2599, !tbaa !1027
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !2601
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !2601, !tbaa !1076
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !2602
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !2602, !tbaa !1313
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !2603, !tbaa !1027
  call void %82(%struct._object* %83), !dbg !2604
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  %84 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !2605
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !2605
  br label %do.cond.100, !dbg !2607

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101, !dbg !2608

do.end.101:                                       ; preds = %do.cond.100
  br label %error, !dbg !2610

if.end.102:                                       ; preds = %if.end.77
  %85 = load %struct._object*, %struct._object** %num, align 8, !dbg !2611, !tbaa !1027
  %86 = load %struct._object*, %struct._object** %value, align 8, !dbg !2612, !tbaa !1027
  %87 = bitcast %struct._object* %86 to %struct.PyTupleObject*, !dbg !2613
  %ob_item103 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %87, i32 0, i32 1, !dbg !2614
  %arrayidx104 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item103, i32 0, i64 1, !dbg !2615
  store %struct._object* %85, %struct._object** %arrayidx104, align 8, !dbg !2616, !tbaa !1027
  %88 = load %struct._object*, %struct._object** %result_list, align 8, !dbg !2617, !tbaa !1027
  %89 = load i32, i32* %j, align 4, !dbg !2618, !tbaa !1210
  %conv105 = sext i32 %89 to i64, !dbg !2618
  %90 = load %struct._object*, %struct._object** %value, align 8, !dbg !2619, !tbaa !1027
  %call106 = call i32 @PyList_SetItem(%struct._object* %88, i64 %conv105, %struct._object* %90), !dbg !2620
  %cmp107 = icmp eq i32 %call106, -1, !dbg !2621
  br i1 %cmp107, label %if.then.109, label %if.end.123, !dbg !2622

if.then.109:                                      ; preds = %if.end.102
  br label %do.body.110, !dbg !2623

do.body.110:                                      ; preds = %if.then.109
  %91 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !2624
  call void @llvm.lifetime.start(i64 8, i8* %91) #1, !dbg !2624
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp111, metadata !749, metadata !1023), !dbg !2626
  %92 = load %struct._object*, %struct._object** %value, align 8, !dbg !2627, !tbaa !1027
  store %struct._object* %92, %struct._object** %_py_decref_tmp111, align 8, !dbg !2626, !tbaa !1027
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !2628, !tbaa !1027
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0, !dbg !2630
  %94 = load i64, i64* %ob_refcnt112, align 8, !dbg !2631, !tbaa !1039
  %dec113 = add i64 %94, -1, !dbg !2631
  store i64 %dec113, i64* %ob_refcnt112, align 8, !dbg !2631, !tbaa !1039
  %cmp114 = icmp ne i64 %dec113, 0, !dbg !2632
  br i1 %cmp114, label %if.then.116, label %if.else.117, !dbg !2633

if.then.116:                                      ; preds = %do.body.110
  br label %if.end.120, !dbg !2634

if.else.117:                                      ; preds = %do.body.110
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !2636, !tbaa !1027
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1, !dbg !2638
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !2638, !tbaa !1076
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4, !dbg !2639
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !2639, !tbaa !1313
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !2640, !tbaa !1027
  call void %97(%struct._object* %98), !dbg !2641
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  %99 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !2642
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !2642
  br label %do.cond.121, !dbg !2644

do.cond.121:                                      ; preds = %if.end.120
  br label %do.end.122, !dbg !2645

do.end.122:                                       ; preds = %do.cond.121
  br label %error, !dbg !2647

if.end.123:                                       ; preds = %if.end.102
  %100 = load i32, i32* %i, align 4, !dbg !2648, !tbaa !1210
  %inc124 = add i32 %100, 1, !dbg !2648
  store i32 %inc124, i32* %i, align 4, !dbg !2648, !tbaa !1210
  br label %for.inc, !dbg !2649

for.inc:                                          ; preds = %if.end.123
  %101 = load i32, i32* %j, align 4, !dbg !2650, !tbaa !1210
  %inc125 = add i32 %101, 1, !dbg !2650
  store i32 %inc125, i32* %j, align 4, !dbg !2650, !tbaa !1210
  br label %for.cond, !dbg !2651

for.end:                                          ; preds = %for.cond
  br label %if.end.126

if.end.126:                                       ; preds = %for.end
  %102 = load %struct._object*, %struct._object** %result_list, align 8, !dbg !2652, !tbaa !1027
  store %struct._object* %102, %struct._object** %retval, !dbg !2653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2653

error:                                            ; preds = %do.end.122, %do.end.101, %do.end.76, %if.then.54
  br label %do.body.127, !dbg !2654

do.body.127:                                      ; preds = %error
  %103 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !2655
  call void @llvm.lifetime.start(i64 8, i8* %103) #1, !dbg !2655
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp128, metadata !753, metadata !1023), !dbg !2657
  %104 = load %struct._object*, %struct._object** %result_list, align 8, !dbg !2658, !tbaa !1027
  store %struct._object* %104, %struct._object** %_py_decref_tmp128, align 8, !dbg !2657, !tbaa !1027
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2659, !tbaa !1027
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !2661
  %106 = load i64, i64* %ob_refcnt129, align 8, !dbg !2662, !tbaa !1039
  %dec130 = add i64 %106, -1, !dbg !2662
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !2662, !tbaa !1039
  %cmp131 = icmp ne i64 %dec130, 0, !dbg !2663
  br i1 %cmp131, label %if.then.133, label %if.else.134, !dbg !2664

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137, !dbg !2665

if.else.134:                                      ; preds = %do.body.127
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2667, !tbaa !1027
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !2669
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !2669, !tbaa !1076
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !2670
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !2670, !tbaa !1313
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2671, !tbaa !1027
  call void %109(%struct._object* %110), !dbg !2672
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  %111 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !2673
  call void @llvm.lifetime.end(i64 8, i8* %111) #1, !dbg !2673
  br label %do.cond.138, !dbg !2675

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !2676

do.end.139:                                       ; preds = %do.cond.138
  store %struct._object* null, %struct._object** %retval, !dbg !2678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2678

cleanup:                                          ; preds = %do.end.139, %if.end.126, %if.then.45, %if.then.39, %if.then.30, %if.then.24, %if.then.19, %if.then.9, %if.then.5, %if.then
  %112 = bitcast %struct._object** %num to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %112) #1, !dbg !2679
  %113 = bitcast %struct._object** %value to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %113) #1, !dbg !2679
  %114 = bitcast i32* %j to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 4, i8* %114) #1, !dbg !2679
  %115 = bitcast i32* %i to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 4, i8* %115) #1, !dbg !2679
  %116 = bitcast i32* %poll_result to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 4, i8* %116) #1, !dbg !2679
  %117 = bitcast i32* %timeout to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 4, i8* %117) #1, !dbg !2679
  %118 = bitcast %struct._object** %tout to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %118) #1, !dbg !2679
  %119 = bitcast %struct._object** %result_list to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !2679
  %120 = load %struct._object*, %struct._object** %retval, !dbg !2679
  ret %struct._object* %120, !dbg !2679
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @ushort_converter(%struct._object* %obj, i8* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %uval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !680, metadata !1023), !dbg !2680
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !681, metadata !1023), !dbg !2681
  %0 = bitcast i64* %uval to i8*, !dbg !2682
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2682
  call void @llvm.dbg.declare(metadata i64* %uval, metadata !682, metadata !1023), !dbg !2683
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2684, !tbaa !1027
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %1), !dbg !2685
  store i64 %call, i64* %uval, align 8, !dbg !2686, !tbaa !1172
  %2 = load i64, i64* %uval, align 8, !dbg !2687, !tbaa !1172
  %cmp = icmp eq i64 %2, -1, !dbg !2689
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2690

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2691
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2691
  br i1 %tobool, label %if.then, label %if.end, !dbg !2693

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !2694
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2694

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %uval, align 8, !dbg !2695, !tbaa !1172
  %cmp2 = icmp ugt i64 %3, 65535, !dbg !2697
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2698

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2699, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0)), !dbg !2701
  store i32 0, i32* %retval, !dbg !2702
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2702

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %uval, align 8, !dbg !2703, !tbaa !1172
  %conv = trunc i64 %5 to i16, !dbg !2704
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !2705, !tbaa !1027
  %7 = bitcast i8* %6 to i16*, !dbg !2706
  store i16 %conv, i16* %7, align 2, !dbg !2707, !tbaa !2005
  store i32 1, i32* %retval, !dbg !2708
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2708

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %8 = bitcast i64* %uval to i8*, !dbg !2709
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2709
  %9 = load i32, i32* %retval, !dbg !2709
  ret i32 %9, !dbg !2709
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Long(%struct._object*) #3

declare i32 @_PyLong_AsInt(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @update_ufd_array(%struct.pollObject* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pollObject*, align 8
  %i = alloca i64, align 8
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %old_ufds = alloca %struct.pollfd*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pollObject** %self.addr, metadata !759, metadata !1023), !dbg !2710
  %0 = bitcast i64* %i to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2711
  call void @llvm.dbg.declare(metadata i64* %i, metadata !760, metadata !1023), !dbg !2712
  %1 = bitcast i64* %pos to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2711
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !761, metadata !1023), !dbg !2713
  %2 = bitcast %struct._object** %key to i8*, !dbg !2714
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2714
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !762, metadata !1023), !dbg !2715
  %3 = bitcast %struct._object** %value to i8*, !dbg !2714
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2714
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !763, metadata !1023), !dbg !2716
  %4 = bitcast %struct.pollfd** %old_ufds to i8*, !dbg !2717
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct.pollfd** %old_ufds, metadata !764, metadata !1023), !dbg !2718
  %5 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2719, !tbaa !1027
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 4, !dbg !2720
  %6 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8, !dbg !2720, !tbaa !1900
  store %struct.pollfd* %6, %struct.pollfd** %old_ufds, align 8, !dbg !2718, !tbaa !1027
  %7 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2721, !tbaa !1027
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %7, i32 0, i32 1, !dbg !2722
  %8 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2722, !tbaa !1909
  %call = call i64 @PyDict_Size(%struct._object* %8), !dbg !2723
  %conv = trunc i64 %call to i32, !dbg !2723
  %9 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2724, !tbaa !1027
  %ufd_len = getelementptr inbounds %struct.pollObject, %struct.pollObject* %9, i32 0, i32 3, !dbg !2725
  store i32 %conv, i32* %ufd_len, align 4, !dbg !2726, !tbaa !2483
  %10 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2727, !tbaa !1027
  %ufd_len1 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %10, i32 0, i32 3, !dbg !2728
  %11 = load i32, i32* %ufd_len1, align 4, !dbg !2728, !tbaa !2483
  %conv2 = sext i32 %11 to i64, !dbg !2729
  %cmp = icmp ugt i64 %conv2, 1152921504606846975, !dbg !2730
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2731

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2732

cond.false:                                       ; preds = %entry
  %12 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2734, !tbaa !1027
  %ufds4 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %12, i32 0, i32 4, !dbg !2736
  %13 = load %struct.pollfd*, %struct.pollfd** %ufds4, align 8, !dbg !2736, !tbaa !1900
  %14 = bitcast %struct.pollfd* %13 to i8*, !dbg !2737
  %15 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2738, !tbaa !1027
  %ufd_len5 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %15, i32 0, i32 3, !dbg !2739
  %16 = load i32, i32* %ufd_len5, align 4, !dbg !2739, !tbaa !2483
  %conv6 = sext i32 %16 to i64, !dbg !2740
  %mul = mul i64 %conv6, 8, !dbg !2741
  %call7 = call i8* @PyMem_Realloc(i8* %14, i64 %mul), !dbg !2742
  %17 = bitcast i8* %call7 to %struct.pollfd*, !dbg !2743
  br label %cond.end, !dbg !2731

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pollfd* [ null, %cond.true ], [ %17, %cond.false ], !dbg !2731
  %18 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2744, !tbaa !1027
  %ufds8 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %18, i32 0, i32 4, !dbg !2747
  store %struct.pollfd* %cond, %struct.pollfd** %ufds8, align 8, !dbg !2748, !tbaa !1900
  %19 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2749, !tbaa !1027
  %ufds9 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %19, i32 0, i32 4, !dbg !2751
  %20 = load %struct.pollfd*, %struct.pollfd** %ufds9, align 8, !dbg !2751, !tbaa !1900
  %cmp10 = icmp eq %struct.pollfd* %20, null, !dbg !2752
  br i1 %cmp10, label %if.then, label %if.end, !dbg !2753

if.then:                                          ; preds = %cond.end
  %21 = load %struct.pollfd*, %struct.pollfd** %old_ufds, align 8, !dbg !2754, !tbaa !1027
  %22 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2756, !tbaa !1027
  %ufds12 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %22, i32 0, i32 4, !dbg !2757
  store %struct.pollfd* %21, %struct.pollfd** %ufds12, align 8, !dbg !2758, !tbaa !1900
  %call13 = call %struct._object* @PyErr_NoMemory(), !dbg !2759
  store i32 0, i32* %retval, !dbg !2760
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2760

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %pos, align 8, !dbg !2761, !tbaa !1172
  store i64 0, i64* %i, align 8, !dbg !2762, !tbaa !1172
  br label %while.cond, !dbg !2763

while.cond:                                       ; preds = %while.body, %if.end
  %23 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2764, !tbaa !1027
  %dict14 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %23, i32 0, i32 1, !dbg !2766
  %24 = load %struct._object*, %struct._object** %dict14, align 8, !dbg !2766, !tbaa !1909
  %call15 = call i32 @PyDict_Next(%struct._object* %24, i64* %pos, %struct._object** %key, %struct._object** %value), !dbg !2767
  %tobool = icmp ne i32 %call15, 0, !dbg !2763
  br i1 %tobool, label %while.body, label %while.end, !dbg !2763

while.body:                                       ; preds = %while.cond
  %25 = load %struct._object*, %struct._object** %key, align 8, !dbg !2768, !tbaa !1027
  %call16 = call i64 @PyLong_AsLong(%struct._object* %25), !dbg !2770
  %conv17 = trunc i64 %call16 to i32, !dbg !2771
  %26 = load i64, i64* %i, align 8, !dbg !2772, !tbaa !1172
  %27 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2773, !tbaa !1027
  %ufds18 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %27, i32 0, i32 4, !dbg !2774
  %28 = load %struct.pollfd*, %struct.pollfd** %ufds18, align 8, !dbg !2774, !tbaa !1900
  %arrayidx = getelementptr %struct.pollfd, %struct.pollfd* %28, i64 %26, !dbg !2773
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 0, !dbg !2775
  store i32 %conv17, i32* %fd, align 4, !dbg !2776, !tbaa !2539
  %29 = load %struct._object*, %struct._object** %value, align 8, !dbg !2777, !tbaa !1027
  %call19 = call i64 @PyLong_AsLong(%struct._object* %29), !dbg !2778
  %conv20 = trunc i64 %call19 to i16, !dbg !2779
  %30 = load i64, i64* %i, align 8, !dbg !2780, !tbaa !1172
  %31 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2781, !tbaa !1027
  %ufds21 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %31, i32 0, i32 4, !dbg !2782
  %32 = load %struct.pollfd*, %struct.pollfd** %ufds21, align 8, !dbg !2782, !tbaa !1900
  %arrayidx22 = getelementptr %struct.pollfd, %struct.pollfd* %32, i64 %30, !dbg !2781
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx22, i32 0, i32 1, !dbg !2783
  store i16 %conv20, i16* %events, align 2, !dbg !2784, !tbaa !2785
  %33 = load i64, i64* %i, align 8, !dbg !2786, !tbaa !1172
  %inc = add i64 %33, 1, !dbg !2786
  store i64 %inc, i64* %i, align 8, !dbg !2786, !tbaa !1172
  br label %while.cond, !dbg !2763

while.end:                                        ; preds = %while.cond
  %34 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8, !dbg !2787, !tbaa !1027
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %34, i32 0, i32 2, !dbg !2788
  store i32 1, i32* %ufd_uptodate, align 4, !dbg !2789, !tbaa !1895
  store i32 1, i32* %retval, !dbg !2790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2790

cleanup:                                          ; preds = %while.end, %if.then
  %35 = bitcast %struct.pollfd** %old_ufds to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2791
  %36 = bitcast %struct._object** %value to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2791
  %37 = bitcast %struct._object** %key to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2791
  %38 = bitcast i64* %pos to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2791
  %39 = bitcast i64* %i to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2791
  %40 = load i32, i32* %retval, !dbg !2791
  ret i32 %40, !dbg !2791
}

declare i32 @poll(%struct.pollfd*, i64, i32) #3

declare %struct._object* @PyTuple_New(i64) #3

declare i64 @PyDict_Size(%struct._object*) #3

declare i8* @PyMem_Realloc(i8*, i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @pyepoll_dealloc(%struct.pyEpoll_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !769, metadata !1023), !dbg !2792
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2793, !tbaa !1027
  %call = call i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %0), !dbg !2794
  %1 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2795, !tbaa !1027
  %2 = bitcast %struct.pyEpoll_Object* %1 to %struct._object*, !dbg !2796
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2797
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2797, !tbaa !1076
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 38, !dbg !2798
  %4 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2798, !tbaa !2799
  %5 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2800, !tbaa !1027
  %6 = bitcast %struct.pyEpoll_Object* %5 to i8*, !dbg !2800
  call void %4(i8* %6), !dbg !2801
  ret void, !dbg !2802
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %sizehint = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !895, metadata !1023), !dbg !2803
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !896, metadata !1023), !dbg !2804
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !897, metadata !1023), !dbg !2805
  %0 = bitcast i32* %flags to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2806
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !898, metadata !1023), !dbg !2807
  store i32 0, i32* %flags, align 4, !dbg !2807, !tbaa !1210
  %1 = bitcast i32* %sizehint to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2806
  call void @llvm.dbg.declare(metadata i32* %sizehint, metadata !899, metadata !1023), !dbg !2808
  store i32 1023, i32* %sizehint, align 4, !dbg !2808, !tbaa !1210
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2809, !tbaa !1027
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2811, !tbaa !1027
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_new.kwlist, i32 0, i32 0), i32* %sizehint, i32* %flags), !dbg !2812
  %tobool = icmp ne i32 %call, 0, !dbg !2812
  br i1 %tobool, label %if.end, label %if.then, !dbg !2813

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2814
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2814

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %sizehint, align 4, !dbg !2815, !tbaa !1210
  %cmp = icmp slt i32 %4, 0, !dbg !2817
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2818

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2819, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0)), !dbg !2821
  store %struct._object* null, %struct._object** %retval, !dbg !2822
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2822

if.end.2:                                         ; preds = %if.end
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2823, !tbaa !1027
  %7 = load i32, i32* %sizehint, align 4, !dbg !2824, !tbaa !1210
  %8 = load i32, i32* %flags, align 4, !dbg !2825, !tbaa !1210
  %call3 = call %struct._object* @newPyEpoll_Object(%struct._typeobject* %6, i32 %7, i32 %8, i32 -1), !dbg !2826
  store %struct._object* %call3, %struct._object** %retval, !dbg !2827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2827

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %9 = bitcast i32* %sizehint to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !2828
  %10 = bitcast i32* %flags to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !2828
  %11 = load %struct._object*, %struct._object** %retval, !dbg !2828
  ret %struct._object* %11, !dbg !2828
}

; Function Attrs: nounwind uwtable
define internal i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %save_errno = alloca i32, align 4
  %epfd1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !774, metadata !1023), !dbg !2829
  %0 = bitcast i32* %save_errno to i8*, !dbg !2830
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2830
  call void @llvm.dbg.declare(metadata i32* %save_errno, metadata !775, metadata !1023), !dbg !2831
  store i32 0, i32* %save_errno, align 4, !dbg !2831, !tbaa !1210
  %1 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2832, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %1, i32 0, i32 1, !dbg !2833
  %2 = load i32, i32* %epfd, align 4, !dbg !2833, !tbaa !2834
  %cmp = icmp sge i32 %2, 0, !dbg !2836
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2837

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %epfd1 to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %epfd1, metadata !776, metadata !1023), !dbg !2839
  %4 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2840, !tbaa !1027
  %epfd2 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %4, i32 0, i32 1, !dbg !2841
  %5 = load i32, i32* %epfd2, align 4, !dbg !2841, !tbaa !2834
  store i32 %5, i32* %epfd1, align 4, !dbg !2839, !tbaa !1210
  %6 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2842, !tbaa !1027
  %epfd3 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %6, i32 0, i32 1, !dbg !2843
  store i32 -1, i32* %epfd3, align 4, !dbg !2844, !tbaa !2834
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !2845
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !779, metadata !1023), !dbg !2846
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2847
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2848, !tbaa !1027
  %8 = load i32, i32* %epfd1, align 4, !dbg !2849, !tbaa !1210
  %call4 = call i32 @close(i32 %8), !dbg !2851
  %cmp5 = icmp slt i32 %call4, 0, !dbg !2852
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !2853

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #2, !dbg !2854
  %9 = load i32, i32* %call7, align 4, !dbg !2855, !tbaa !1210
  store i32 %9, i32* %save_errno, align 4, !dbg !2856, !tbaa !1210
  br label %if.end, !dbg !2857

if.end:                                           ; preds = %if.then.6, %if.then
  %10 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2858, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %10), !dbg !2859
  %11 = bitcast %struct._ts** %_save to i8*, !dbg !2860
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2860
  %12 = bitcast i32* %epfd1 to i8*, !dbg !2861
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !2861
  br label %if.end.8, !dbg !2862

if.end.8:                                         ; preds = %if.end, %entry
  %13 = load i32, i32* %save_errno, align 4, !dbg !2863, !tbaa !1210
  %14 = bitcast i32* %save_errno to i8*, !dbg !2864
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !2864
  ret i32 %13, !dbg !2865
}

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_fromfd(%struct._object* %cls, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %cls, %struct._object** %cls.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %cls.addr, metadata !783, metadata !1023), !dbg !2866
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !784, metadata !1023), !dbg !2867
  %0 = bitcast i32* %fd to i8*, !dbg !2868
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2868
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !785, metadata !1023), !dbg !2869
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2870, !tbaa !1027
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32* %fd), !dbg !2872
  %tobool = icmp ne i32 %call, 0, !dbg !2872
  br i1 %tobool, label %if.end, label %if.then, !dbg !2873

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2874
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2874

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2875, !tbaa !1027
  %3 = bitcast %struct._object* %2 to %struct._typeobject*, !dbg !2876
  %4 = load i32, i32* %fd, align 4, !dbg !2877, !tbaa !1210
  %call1 = call %struct._object* @newPyEpoll_Object(%struct._typeobject* %3, i32 1023, i32 0, i32 %4), !dbg !2878
  store %struct._object* %call1, %struct._object** %retval, !dbg !2879
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2879

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %fd to i8*, !dbg !2880
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !2880
  %6 = load %struct._object*, %struct._object** %retval, !dbg !2880
  ret %struct._object* %6, !dbg !2880
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_close(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !807, metadata !1023), !dbg !2881
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2882, !tbaa !1027
  %call = call i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %0), !dbg !2883
  %call1 = call i32* @__errno_location() #2, !dbg !2884
  store i32 %call, i32* %call1, align 4, !dbg !2885, !tbaa !1210
  %call2 = call i32* @__errno_location() #2, !dbg !2886
  %1 = load i32, i32* %call2, align 4, !dbg !2888, !tbaa !1210
  %cmp = icmp slt i32 %1, 0, !dbg !2889
  br i1 %cmp, label %if.then, label %if.end, !dbg !2890

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2891, !tbaa !1027
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %2), !dbg !2893
  store %struct._object* null, %struct._object** %retval, !dbg !2894
  br label %return, !dbg !2894

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2895, !tbaa !1039
  %inc = add i64 %3, 1, !dbg !2895
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2895, !tbaa !1039
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2896
  br label %return, !dbg !2896

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2897
  ret %struct._object* %4, !dbg !2897
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_fileno(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !810, metadata !1023), !dbg !2898
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2899, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1, !dbg !2901
  %1 = load i32, i32* %epfd, align 4, !dbg !2901, !tbaa !2834
  %cmp = icmp slt i32 %1, 0, !dbg !2902
  br i1 %cmp, label %if.then, label %if.end, !dbg !2903

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed(), !dbg !2904
  store %struct._object* %call, %struct._object** %retval, !dbg !2905
  br label %return, !dbg !2905

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2906, !tbaa !1027
  %epfd1 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1, !dbg !2907
  %3 = load i32, i32* %epfd1, align 4, !dbg !2907, !tbaa !2834
  %conv = sext i32 %3 to i64, !dbg !2906
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2908
  store %struct._object* %call2, %struct._object** %retval, !dbg !2909
  br label %return, !dbg !2909

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2910
  ret %struct._object* %4, !dbg !2910
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_modify(%struct.pyEpoll_Object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %pfd = alloca %struct._object*, align 8
  %events = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !817, metadata !1023), !dbg !2911
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !818, metadata !1023), !dbg !2912
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !819, metadata !1023), !dbg !2913
  %0 = bitcast %struct._object** %pfd to i8*, !dbg !2914
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2914
  call void @llvm.dbg.declare(metadata %struct._object** %pfd, metadata !820, metadata !1023), !dbg !2915
  %1 = bitcast i32* %events to i8*, !dbg !2916
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2916
  call void @llvm.dbg.declare(metadata i32* %events, metadata !821, metadata !1023), !dbg !2917
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2918, !tbaa !1027
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2920, !tbaa !1027
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_modify.kwlist, i32 0, i32 0), %struct._object** %pfd, i32* %events), !dbg !2921
  %tobool = icmp ne i32 %call, 0, !dbg !2921
  br i1 %tobool, label %if.end, label %if.then, !dbg !2922

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2923

if.end:                                           ; preds = %entry
  %4 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2925, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %4, i32 0, i32 1, !dbg !2926
  %5 = load i32, i32* %epfd, align 4, !dbg !2926, !tbaa !2834
  %6 = load %struct._object*, %struct._object** %pfd, align 8, !dbg !2927, !tbaa !1027
  %7 = load i32, i32* %events, align 4, !dbg !2928, !tbaa !1210
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %5, i32 3, %struct._object* %6, i32 %7), !dbg !2929
  store %struct._object* %call1, %struct._object** %retval, !dbg !2930
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2930

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %events to i8*, !dbg !2931
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !2931
  %9 = bitcast %struct._object** %pfd to i8*, !dbg !2931
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2931
  %10 = load %struct._object*, %struct._object** %retval, !dbg !2931
  ret %struct._object* %10, !dbg !2931
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_register(%struct.pyEpoll_Object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %pfd = alloca %struct._object*, align 8
  %events = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !840, metadata !1023), !dbg !2932
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !841, metadata !1023), !dbg !2933
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !842, metadata !1023), !dbg !2934
  %0 = bitcast %struct._object** %pfd to i8*, !dbg !2935
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2935
  call void @llvm.dbg.declare(metadata %struct._object** %pfd, metadata !843, metadata !1023), !dbg !2936
  %1 = bitcast i32* %events to i8*, !dbg !2937
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2937
  call void @llvm.dbg.declare(metadata i32* %events, metadata !844, metadata !1023), !dbg !2938
  store i32 7, i32* %events, align 4, !dbg !2938, !tbaa !1210
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2939, !tbaa !1027
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2941, !tbaa !1027
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_register.kwlist, i32 0, i32 0), %struct._object** %pfd, i32* %events), !dbg !2942
  %tobool = icmp ne i32 %call, 0, !dbg !2942
  br i1 %tobool, label %if.end, label %if.then, !dbg !2943

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2944
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2944

if.end:                                           ; preds = %entry
  %4 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2946, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %4, i32 0, i32 1, !dbg !2947
  %5 = load i32, i32* %epfd, align 4, !dbg !2947, !tbaa !2834
  %6 = load %struct._object*, %struct._object** %pfd, align 8, !dbg !2948, !tbaa !1027
  %7 = load i32, i32* %events, align 4, !dbg !2949, !tbaa !1210
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %5, i32 1, %struct._object* %6, i32 %7), !dbg !2950
  store %struct._object* %call1, %struct._object** %retval, !dbg !2951
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2951

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %events to i8*, !dbg !2952
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !2952
  %9 = bitcast %struct._object** %pfd to i8*, !dbg !2952
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2952
  %10 = load %struct._object*, %struct._object** %retval, !dbg !2952
  ret %struct._object* %10, !dbg !2952
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_unregister(%struct.pyEpoll_Object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %pfd = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !847, metadata !1023), !dbg !2953
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !848, metadata !1023), !dbg !2954
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !849, metadata !1023), !dbg !2955
  %0 = bitcast %struct._object** %pfd to i8*, !dbg !2956
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2956
  call void @llvm.dbg.declare(metadata %struct._object** %pfd, metadata !850, metadata !1023), !dbg !2957
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2958, !tbaa !1027
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2960, !tbaa !1027
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pyepoll_unregister.kwlist, i32 0, i32 0), %struct._object** %pfd), !dbg !2961
  %tobool = icmp ne i32 %call, 0, !dbg !2961
  br i1 %tobool, label %if.end, label %if.then, !dbg !2962

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2963

if.end:                                           ; preds = %entry
  %3 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2965, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %3, i32 0, i32 1, !dbg !2966
  %4 = load i32, i32* %epfd, align 4, !dbg !2966, !tbaa !2834
  %5 = load %struct._object*, %struct._object** %pfd, align 8, !dbg !2967, !tbaa !1027
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %4, i32 2, %struct._object* %5, i32 0), !dbg !2968
  store %struct._object* %call1, %struct._object** %retval, !dbg !2969
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2969

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._object** %pfd to i8*, !dbg !2970
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !2970
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2970
  ret %struct._object* %7, !dbg !2970
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_poll(%struct.pyEpoll_Object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %dtimeout = alloca double, align 8
  %timeout = alloca i32, align 4
  %maxevents = alloca i32, align 4
  %nfds = alloca i32, align 4
  %i = alloca i32, align 4
  %elist = alloca %struct._object*, align 8
  %etuple = alloca %struct._object*, align 8
  %evs = alloca %struct.epoll_event*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !853, metadata !1023), !dbg !2971
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !854, metadata !1023), !dbg !2972
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !855, metadata !1023), !dbg !2973
  %0 = bitcast double* %dtimeout to i8*, !dbg !2974
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2974
  call void @llvm.dbg.declare(metadata double* %dtimeout, metadata !856, metadata !1023), !dbg !2975
  store double -1.000000e+00, double* %dtimeout, align 8, !dbg !2975, !tbaa !2976
  %1 = bitcast i32* %timeout to i8*, !dbg !2978
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2978
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !858, metadata !1023), !dbg !2979
  %2 = bitcast i32* %maxevents to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2980
  call void @llvm.dbg.declare(metadata i32* %maxevents, metadata !859, metadata !1023), !dbg !2981
  store i32 -1, i32* %maxevents, align 4, !dbg !2981, !tbaa !1210
  %3 = bitcast i32* %nfds to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2982
  call void @llvm.dbg.declare(metadata i32* %nfds, metadata !860, metadata !1023), !dbg !2983
  %4 = bitcast i32* %i to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2982
  call void @llvm.dbg.declare(metadata i32* %i, metadata !861, metadata !1023), !dbg !2984
  %5 = bitcast %struct._object** %elist to i8*, !dbg !2985
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2985
  call void @llvm.dbg.declare(metadata %struct._object** %elist, metadata !862, metadata !1023), !dbg !2986
  store %struct._object* null, %struct._object** %elist, align 8, !dbg !2986, !tbaa !1027
  %6 = bitcast %struct._object** %etuple to i8*, !dbg !2985
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2985
  call void @llvm.dbg.declare(metadata %struct._object** %etuple, metadata !863, metadata !1023), !dbg !2987
  store %struct._object* null, %struct._object** %etuple, align 8, !dbg !2987, !tbaa !1027
  %7 = bitcast %struct.epoll_event** %evs to i8*, !dbg !2988
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.epoll_event** %evs, metadata !864, metadata !1023), !dbg !2989
  store %struct.epoll_event* null, %struct.epoll_event** %evs, align 8, !dbg !2989, !tbaa !1027
  %8 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !2990, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %8, i32 0, i32 1, !dbg !2992
  %9 = load i32, i32* %epfd, align 4, !dbg !2992, !tbaa !2834
  %cmp = icmp slt i32 %9, 0, !dbg !2993
  br i1 %cmp, label %if.then, label %if.end, !dbg !2994

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed(), !dbg !2995
  store %struct._object* %call, %struct._object** %retval, !dbg !2996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2996

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2997, !tbaa !1027
  %11 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2999, !tbaa !1027
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_poll.kwlist, i32 0, i32 0), double* %dtimeout, i32* %maxevents), !dbg !3000
  %tobool = icmp ne i32 %call1, 0, !dbg !3000
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !3001

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3002
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3002

if.end.3:                                         ; preds = %if.end
  %12 = load double, double* %dtimeout, align 8, !dbg !3004, !tbaa !2976
  %cmp4 = fcmp olt double %12, 0.000000e+00, !dbg !3006
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !3007

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %timeout, align 4, !dbg !3008, !tbaa !1210
  br label %if.end.12, !dbg !3010

if.else:                                          ; preds = %if.end.3
  %13 = load double, double* %dtimeout, align 8, !dbg !3011, !tbaa !2976
  %mul = fmul double %13, 1.000000e+03, !dbg !3013
  %cmp6 = fcmp ogt double %mul, 0x41DFFFFFFFC00000, !dbg !3014
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !3015

if.then.7:                                        ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3016, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0)), !dbg !3018
  store %struct._object* null, %struct._object** %retval, !dbg !3019
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3019

if.else.8:                                        ; preds = %if.else
  %15 = load double, double* %dtimeout, align 8, !dbg !3020, !tbaa !2976
  %mul9 = fmul double %15, 1.000000e+03, !dbg !3022
  %call10 = call double @ceil(double %mul9) #2, !dbg !3023
  %conv = fptosi double %call10 to i32, !dbg !3024
  store i32 %conv, i32* %timeout, align 4, !dbg !3025, !tbaa !1210
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %16 = load i32, i32* %maxevents, align 4, !dbg !3026, !tbaa !1210
  %cmp13 = icmp eq i32 %16, -1, !dbg !3028
  br i1 %cmp13, label %if.then.15, label %if.else.16, !dbg !3029

if.then.15:                                       ; preds = %if.end.12
  store i32 1023, i32* %maxevents, align 4, !dbg !3030, !tbaa !1210
  br label %if.end.22, !dbg !3032

if.else.16:                                       ; preds = %if.end.12
  %17 = load i32, i32* %maxevents, align 4, !dbg !3033, !tbaa !1210
  %cmp17 = icmp slt i32 %17, 1, !dbg !3035
  br i1 %cmp17, label %if.then.19, label %if.end.21, !dbg !3036

if.then.19:                                       ; preds = %if.else.16
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3037, !tbaa !1027
  %19 = load i32, i32* %maxevents, align 4, !dbg !3039, !tbaa !1210
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i32 %19), !dbg !3040
  store %struct._object* null, %struct._object** %retval, !dbg !3041
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3041

if.end.21:                                        ; preds = %if.else.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %20 = load i32, i32* %maxevents, align 4, !dbg !3042, !tbaa !1210
  %conv23 = sext i32 %20 to i64, !dbg !3043
  %cmp24 = icmp ugt i64 %conv23, 768614336404564650, !dbg !3044
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !3045

cond.true:                                        ; preds = %if.end.22
  br label %cond.end, !dbg !3046

cond.false:                                       ; preds = %if.end.22
  %21 = load i32, i32* %maxevents, align 4, !dbg !3048, !tbaa !1210
  %conv26 = sext i32 %21 to i64, !dbg !3050
  %mul27 = mul i64 %conv26, 12, !dbg !3051
  %call28 = call i8* @PyMem_Malloc(i64 %mul27), !dbg !3052
  %22 = bitcast i8* %call28 to %struct.epoll_event*, !dbg !3053
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.epoll_event* [ null, %cond.true ], [ %22, %cond.false ], !dbg !3045
  store %struct.epoll_event* %cond, %struct.epoll_event** %evs, align 8, !dbg !3054, !tbaa !1027
  %23 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8, !dbg !3057, !tbaa !1027
  %cmp29 = icmp eq %struct.epoll_event* %23, null, !dbg !3059
  br i1 %cmp29, label %if.then.31, label %if.end.33, !dbg !3060

if.then.31:                                       ; preds = %cond.end
  %call32 = call %struct._object* @PyErr_NoMemory(), !dbg !3061
  store %struct._object* null, %struct._object** %retval, !dbg !3063
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3063

if.end.33:                                        ; preds = %cond.end
  %24 = bitcast %struct._ts** %_save to i8*, !dbg !3064
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !3064
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !865, metadata !1023), !dbg !3065
  %call34 = call %struct._ts* @PyEval_SaveThread(), !dbg !3066
  store %struct._ts* %call34, %struct._ts** %_save, align 8, !dbg !3067, !tbaa !1027
  %25 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !3068, !tbaa !1027
  %epfd35 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %25, i32 0, i32 1, !dbg !3069
  %26 = load i32, i32* %epfd35, align 4, !dbg !3069, !tbaa !2834
  %27 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8, !dbg !3070, !tbaa !1027
  %28 = load i32, i32* %maxevents, align 4, !dbg !3071, !tbaa !1210
  %29 = load i32, i32* %timeout, align 4, !dbg !3072, !tbaa !1210
  %call36 = call i32 @epoll_wait(i32 %26, %struct.epoll_event* %27, i32 %28, i32 %29), !dbg !3073
  store i32 %call36, i32* %nfds, align 4, !dbg !3074, !tbaa !1210
  %30 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3075, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %30), !dbg !3076
  %31 = bitcast %struct._ts** %_save to i8*, !dbg !3077
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !3077
  %32 = load i32, i32* %nfds, align 4, !dbg !3078, !tbaa !1210
  %cmp37 = icmp slt i32 %32, 0, !dbg !3080
  br i1 %cmp37, label %if.then.39, label %if.end.41, !dbg !3081

if.then.39:                                       ; preds = %if.end.33
  %33 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3082, !tbaa !1027
  %call40 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %33), !dbg !3084
  br label %error, !dbg !3085

if.end.41:                                        ; preds = %if.end.33
  %34 = load i32, i32* %nfds, align 4, !dbg !3086, !tbaa !1210
  %conv42 = sext i32 %34 to i64, !dbg !3086
  %call43 = call %struct._object* @PyList_New(i64 %conv42), !dbg !3087
  store %struct._object* %call43, %struct._object** %elist, align 8, !dbg !3088, !tbaa !1027
  %35 = load %struct._object*, %struct._object** %elist, align 8, !dbg !3089, !tbaa !1027
  %cmp44 = icmp eq %struct._object* %35, null, !dbg !3091
  br i1 %cmp44, label %if.then.46, label %if.end.47, !dbg !3092

if.then.46:                                       ; preds = %if.end.41
  br label %error, !dbg !3093

if.end.47:                                        ; preds = %if.end.41
  store i32 0, i32* %i, align 4, !dbg !3095, !tbaa !1210
  br label %for.cond, !dbg !3096

for.cond:                                         ; preds = %for.inc, %if.end.47
  %36 = load i32, i32* %i, align 4, !dbg !3097, !tbaa !1210
  %37 = load i32, i32* %nfds, align 4, !dbg !3100, !tbaa !1210
  %cmp48 = icmp slt i32 %36, %37, !dbg !3101
  br i1 %cmp48, label %for.body, label %for.end, !dbg !3102

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4, !dbg !3103, !tbaa !1210
  %idxprom = sext i32 %38 to i64, !dbg !3104
  %39 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8, !dbg !3104, !tbaa !1027
  %arrayidx = getelementptr %struct.epoll_event, %struct.epoll_event* %39, i64 %idxprom, !dbg !3104
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %arrayidx, i32 0, i32 1, !dbg !3105
  %fd = bitcast %union.epoll_data* %data to i32*, !dbg !3106
  %40 = load i32, i32* %fd, align 1, !dbg !3106, !tbaa !1210
  %41 = load i32, i32* %i, align 4, !dbg !3107, !tbaa !1210
  %idxprom50 = sext i32 %41 to i64, !dbg !3108
  %42 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8, !dbg !3108, !tbaa !1027
  %arrayidx51 = getelementptr %struct.epoll_event, %struct.epoll_event* %42, i64 %idxprom50, !dbg !3108
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %arrayidx51, i32 0, i32 0, !dbg !3109
  %43 = load i32, i32* %events, align 1, !dbg !3109, !tbaa !3110
  %call52 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 %40, i32 %43), !dbg !3112
  store %struct._object* %call52, %struct._object** %etuple, align 8, !dbg !3113, !tbaa !1027
  %44 = load %struct._object*, %struct._object** %etuple, align 8, !dbg !3114, !tbaa !1027
  %cmp53 = icmp eq %struct._object* %44, null, !dbg !3115
  br i1 %cmp53, label %if.then.55, label %if.end.68, !dbg !3116

if.then.55:                                       ; preds = %for.body
  br label %do.body, !dbg !3117

do.body:                                          ; preds = %if.then.55
  %45 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3118
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !3118
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !867, metadata !1023), !dbg !3120
  %46 = load %struct._object*, %struct._object** %elist, align 8, !dbg !3121, !tbaa !1027
  store %struct._object* %46, %struct._object** %_py_tmp, align 8, !dbg !3120, !tbaa !1027
  %47 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3122, !tbaa !1027
  %cmp56 = icmp ne %struct._object* %47, null, !dbg !3123
  br i1 %cmp56, label %if.then.58, label %if.end.65, !dbg !3124

if.then.58:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %elist, align 8, !dbg !3125, !tbaa !1027
  br label %do.body.59, !dbg !3127

do.body.59:                                       ; preds = %if.then.58
  %48 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3128
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !3128
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !874, metadata !1023), !dbg !3130
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3131, !tbaa !1027
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8, !dbg !3130, !tbaa !1027
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3132, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !3134
  %51 = load i64, i64* %ob_refcnt, align 8, !dbg !3135, !tbaa !1039
  %dec = add i64 %51, -1, !dbg !3135
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3135, !tbaa !1039
  %cmp60 = icmp ne i64 %dec, 0, !dbg !3136
  br i1 %cmp60, label %if.then.62, label %if.else.63, !dbg !3137

if.then.62:                                       ; preds = %do.body.59
  br label %if.end.64, !dbg !3138

if.else.63:                                       ; preds = %do.body.59
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3140, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !3142
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3142, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !3143
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3143, !tbaa !1313
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3144, !tbaa !1027
  call void %54(%struct._object* %55), !dbg !3145
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  %56 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3146
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !3146
  br label %do.cond, !dbg !3148

do.cond:                                          ; preds = %if.end.64
  br label %do.end, !dbg !3149

do.end:                                           ; preds = %do.cond
  br label %if.end.65, !dbg !3151

if.end.65:                                        ; preds = %do.end, %do.body
  %57 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3153
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !3153
  br label %do.cond.66, !dbg !3156

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !3157

do.end.67:                                        ; preds = %do.cond.66
  br label %error, !dbg !3159

if.end.68:                                        ; preds = %for.body
  %58 = load %struct._object*, %struct._object** %etuple, align 8, !dbg !3160, !tbaa !1027
  %59 = load i32, i32* %i, align 4, !dbg !3161, !tbaa !1210
  %idxprom69 = sext i32 %59 to i64, !dbg !3162
  %60 = load %struct._object*, %struct._object** %elist, align 8, !dbg !3163, !tbaa !1027
  %61 = bitcast %struct._object* %60 to %struct.PyListObject*, !dbg !3164
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %61, i32 0, i32 1, !dbg !3165
  %62 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !3165, !tbaa !1502
  %arrayidx70 = getelementptr %struct._object*, %struct._object** %62, i64 %idxprom69, !dbg !3162
  store %struct._object* %58, %struct._object** %arrayidx70, align 8, !dbg !3166, !tbaa !1027
  br label %for.inc, !dbg !3167

for.inc:                                          ; preds = %if.end.68
  %63 = load i32, i32* %i, align 4, !dbg !3168, !tbaa !1210
  %inc = add i32 %63, 1, !dbg !3168
  store i32 %inc, i32* %i, align 4, !dbg !3168, !tbaa !1210
  br label %for.cond, !dbg !3169

for.end:                                          ; preds = %for.cond
  br label %error, !dbg !3170

error:                                            ; preds = %for.end, %do.end.67, %if.then.46, %if.then.39
  %64 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8, !dbg !3171, !tbaa !1027
  %65 = bitcast %struct.epoll_event* %64 to i8*, !dbg !3171
  call void @PyMem_Free(i8* %65), !dbg !3172
  %66 = load %struct._object*, %struct._object** %elist, align 8, !dbg !3173, !tbaa !1027
  store %struct._object* %66, %struct._object** %retval, !dbg !3174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3174

cleanup:                                          ; preds = %error, %if.then.31, %if.then.19, %if.then.7, %if.then.2, %if.then
  %67 = bitcast %struct.epoll_event** %evs to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3175
  %68 = bitcast %struct._object** %etuple to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !3175
  %69 = bitcast %struct._object** %elist to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !3175
  %70 = bitcast i32* %i to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 4, i8* %70) #1, !dbg !3175
  %71 = bitcast i32* %nfds to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 4, i8* %71) #1, !dbg !3175
  %72 = bitcast i32* %maxevents to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 4, i8* %72) #1, !dbg !3175
  %73 = bitcast i32* %timeout to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 4, i8* %73) #1, !dbg !3175
  %74 = bitcast double* %dtimeout to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !3175
  %75 = load %struct._object*, %struct._object** %retval, !dbg !3175
  ret %struct._object* %75, !dbg !3175
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_enter(%struct.pyEpoll_Object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !882, metadata !1023), !dbg !3176
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !883, metadata !1023), !dbg !3177
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !3178, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1, !dbg !3180
  %1 = load i32, i32* %epfd, align 4, !dbg !3180, !tbaa !2834
  %cmp = icmp slt i32 %1, 0, !dbg !3181
  br i1 %cmp, label %if.then, label %if.end, !dbg !3182

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed(), !dbg !3183
  store %struct._object* %call, %struct._object** %retval, !dbg !3184
  br label %return, !dbg !3184

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !3185, !tbaa !1027
  %3 = bitcast %struct.pyEpoll_Object* %2 to %struct._object*, !dbg !3186
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !3187
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !3188, !tbaa !1039
  %inc = add i64 %4, 1, !dbg !3188
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3188, !tbaa !1039
  %5 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !3189, !tbaa !1027
  %6 = bitcast %struct.pyEpoll_Object* %5 to %struct._object*, !dbg !3190
  store %struct._object* %6, %struct._object** %retval, !dbg !3191
  br label %return, !dbg !3191

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !3192
  ret %struct._object* %7, !dbg !3192
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !886, metadata !1023), !dbg !3193
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !887, metadata !1023), !dbg !3194
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3195, !tbaa !1027
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* @pyepoll_exit.PyId_close, i8* null), !dbg !3196
  ret %struct._object* %call, !dbg !3197
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @newPyEpoll_Object(%struct._typeobject* %type, i32 %sizehint, i32 %flags, i32 %fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %sizehint.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %self = alloca %struct.pyEpoll_Object*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !790, metadata !1023), !dbg !3198
  store i32 %sizehint, i32* %sizehint.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %sizehint.addr, metadata !791, metadata !1023), !dbg !3199
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !792, metadata !1023), !dbg !3200
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !793, metadata !1023), !dbg !3201
  %0 = bitcast %struct.pyEpoll_Object** %self to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3202
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self, metadata !794, metadata !1023), !dbg !3203
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3204, !tbaa !1027
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !3205
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !3205, !tbaa !3206
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3207, !tbaa !1027
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !3204
  %4 = bitcast %struct._object* %call to %struct.pyEpoll_Object*, !dbg !3208
  store %struct.pyEpoll_Object* %4, %struct.pyEpoll_Object** %self, align 8, !dbg !3209, !tbaa !1027
  %5 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3210, !tbaa !1027
  %cmp = icmp eq %struct.pyEpoll_Object* %5, null, !dbg !3212
  br i1 %cmp, label %if.then, label %if.end, !dbg !3213

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3214

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd.addr, align 4, !dbg !3215, !tbaa !1210
  %cmp1 = icmp eq i32 %6, -1, !dbg !3216
  br i1 %cmp1, label %if.then.2, label %if.else.9, !dbg !3217

if.then.2:                                        ; preds = %if.end
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !3218
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !3218
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !795, metadata !1023), !dbg !3219
  %call3 = call %struct._ts* @PyEval_SaveThread(), !dbg !3220
  store %struct._ts* %call3, %struct._ts** %_save, align 8, !dbg !3221, !tbaa !1027
  %8 = load i32, i32* %flags.addr, align 4, !dbg !3222, !tbaa !1210
  %or = or i32 %8, 524288, !dbg !3222
  store i32 %or, i32* %flags.addr, align 4, !dbg !3222, !tbaa !1210
  %9 = load i32, i32* %flags.addr, align 4, !dbg !3223, !tbaa !1210
  %tobool = icmp ne i32 %9, 0, !dbg !3223
  br i1 %tobool, label %if.then.4, label %if.else, !dbg !3225

if.then.4:                                        ; preds = %if.then.2
  %10 = load i32, i32* %flags.addr, align 4, !dbg !3226, !tbaa !1210
  %call5 = call i32 @epoll_create1(i32 %10) #1, !dbg !3227
  %11 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3228, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %11, i32 0, i32 1, !dbg !3229
  store i32 %call5, i32* %epfd, align 4, !dbg !3230, !tbaa !2834
  br label %if.end.8, !dbg !3228

if.else:                                          ; preds = %if.then.2
  %12 = load i32, i32* %sizehint.addr, align 4, !dbg !3231, !tbaa !1210
  %call6 = call i32 @epoll_create(i32 %12) #1, !dbg !3232
  %13 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3233, !tbaa !1027
  %epfd7 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %13, i32 0, i32 1, !dbg !3234
  store i32 %call6, i32* %epfd7, align 4, !dbg !3235, !tbaa !2834
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.4
  %14 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3236, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !3237
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !3238
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3238
  br label %if.end.11, !dbg !3239

if.else.9:                                        ; preds = %if.end
  %16 = load i32, i32* %fd.addr, align 4, !dbg !3240, !tbaa !1210
  %17 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3242, !tbaa !1027
  %epfd10 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %17, i32 0, i32 1, !dbg !3243
  store i32 %16, i32* %epfd10, align 4, !dbg !3244, !tbaa !2834
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.end.8
  %18 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3245, !tbaa !1027
  %epfd12 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %18, i32 0, i32 1, !dbg !3246
  %19 = load i32, i32* %epfd12, align 4, !dbg !3246, !tbaa !2834
  %cmp13 = icmp slt i32 %19, 0, !dbg !3247
  br i1 %cmp13, label %if.then.14, label %if.end.20, !dbg !3248

if.then.14:                                       ; preds = %if.end.11
  br label %do.body, !dbg !3249

do.body:                                          ; preds = %if.then.14
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3250
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !3250
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !799, metadata !1023), !dbg !3252
  %21 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3253, !tbaa !1027
  %22 = bitcast %struct.pyEpoll_Object* %21 to %struct._object*, !dbg !3254
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !3252, !tbaa !1027
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3255, !tbaa !1027
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !3257
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !3258, !tbaa !1039
  %dec = add i64 %24, -1, !dbg !3258
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3258, !tbaa !1039
  %cmp15 = icmp ne i64 %dec, 0, !dbg !3259
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !3260

if.then.16:                                       ; preds = %do.body
  br label %if.end.18, !dbg !3261

if.else.17:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3263, !tbaa !1027
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !3265
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3265, !tbaa !1076
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !3266
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3266, !tbaa !1313
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3267, !tbaa !1027
  call void %27(%struct._object* %28), !dbg !3268
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3269
  br label %do.cond, !dbg !3271

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !3272

do.end:                                           ; preds = %do.cond
  %30 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3274, !tbaa !1027
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %30), !dbg !3275
  store %struct._object* null, %struct._object** %retval, !dbg !3276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3276

if.end.20:                                        ; preds = %if.end.11
  %31 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8, !dbg !3277, !tbaa !1027
  %32 = bitcast %struct.pyEpoll_Object* %31 to %struct._object*, !dbg !3278
  store %struct._object* %32, %struct._object** %retval, !dbg !3279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3279

cleanup:                                          ; preds = %if.end.20, %do.end, %if.then
  %33 = bitcast %struct.pyEpoll_Object** %self to i8*, !dbg !3280
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3280
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3280
  ret %struct._object* %34, !dbg !3280
}

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #5

; Function Attrs: nounwind
declare i32 @epoll_create(i32) #5

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_err_closed() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3281, !tbaa !1027
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i32 0, i32 0)), !dbg !3282
  ret %struct._object* null, !dbg !3283
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_internal_ctl(i32 %epfd, i32 %op, %struct._object* %pfd, i32 %events) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %epfd.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %pfd.addr = alloca %struct._object*, align 8
  %events.addr = alloca i32, align 4
  %ev = alloca %struct.epoll_event, align 1
  %result = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save10 = alloca %struct._ts*, align 8
  store i32 %epfd, i32* %epfd.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %epfd.addr, metadata !826, metadata !1023), !dbg !3284
  store i32 %op, i32* %op.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !827, metadata !1023), !dbg !3285
  store %struct._object* %pfd, %struct._object** %pfd.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct._object** %pfd.addr, metadata !828, metadata !1023), !dbg !3286
  store i32 %events, i32* %events.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %events.addr, metadata !829, metadata !1023), !dbg !3287
  %0 = bitcast %struct.epoll_event* %ev to i8*, !dbg !3288
  call void @llvm.lifetime.start(i64 12, i8* %0) #1, !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.epoll_event* %ev, metadata !830, metadata !1023), !dbg !3289
  %1 = bitcast i32* %result to i8*, !dbg !3290
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %result, metadata !831, metadata !1023), !dbg !3291
  %2 = bitcast i32* %fd to i8*, !dbg !3292
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3292
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !832, metadata !1023), !dbg !3293
  %3 = load i32, i32* %epfd.addr, align 4, !dbg !3294, !tbaa !1210
  %cmp = icmp slt i32 %3, 0, !dbg !3296
  br i1 %cmp, label %if.then, label %if.end, !dbg !3297

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed(), !dbg !3298
  store %struct._object* %call, %struct._object** %retval, !dbg !3299
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3299

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %pfd.addr, align 8, !dbg !3300, !tbaa !1027
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %4), !dbg !3301
  store i32 %call1, i32* %fd, align 4, !dbg !3302, !tbaa !1210
  %5 = load i32, i32* %fd, align 4, !dbg !3303, !tbaa !1210
  %cmp2 = icmp eq i32 %5, -1, !dbg !3305
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3306

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3307
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3307

if.end.4:                                         ; preds = %if.end
  %6 = load i32, i32* %op.addr, align 4, !dbg !3309, !tbaa !1210
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.9
  ], !dbg !3310

sw.bb:                                            ; preds = %if.end.4, %if.end.4
  %7 = load i32, i32* %events.addr, align 4, !dbg !3311, !tbaa !1210
  %events5 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ev, i32 0, i32 0, !dbg !3312
  store i32 %7, i32* %events5, align 1, !dbg !3313, !tbaa !3110
  %8 = load i32, i32* %fd, align 4, !dbg !3314, !tbaa !1210
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ev, i32 0, i32 1, !dbg !3315
  %fd6 = bitcast %union.epoll_data* %data to i32*, !dbg !3316
  store i32 %8, i32* %fd6, align 1, !dbg !3317, !tbaa !1210
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !3318
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !3318
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !833, metadata !1023), !dbg !3319
  %call7 = call %struct._ts* @PyEval_SaveThread(), !dbg !3320
  store %struct._ts* %call7, %struct._ts** %_save, align 8, !dbg !3321, !tbaa !1027
  %10 = load i32, i32* %epfd.addr, align 4, !dbg !3322, !tbaa !1210
  %11 = load i32, i32* %op.addr, align 4, !dbg !3323, !tbaa !1210
  %12 = load i32, i32* %fd, align 4, !dbg !3324, !tbaa !1210
  %call8 = call i32 @epoll_ctl(i32 %10, i32 %11, i32 %12, %struct.epoll_event* %ev) #1, !dbg !3325
  store i32 %call8, i32* %result, align 4, !dbg !3326, !tbaa !1210
  %13 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3327, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %13), !dbg !3328
  %14 = bitcast %struct._ts** %_save to i8*, !dbg !3329
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3329
  br label %sw.epilog, !dbg !3330

sw.bb.9:                                          ; preds = %if.end.4
  %15 = bitcast %struct._ts** %_save10 to i8*, !dbg !3331
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !3331
  call void @llvm.dbg.declare(metadata %struct._ts** %_save10, metadata !836, metadata !1023), !dbg !3332
  %call11 = call %struct._ts* @PyEval_SaveThread(), !dbg !3333
  store %struct._ts* %call11, %struct._ts** %_save10, align 8, !dbg !3334, !tbaa !1027
  %16 = load i32, i32* %epfd.addr, align 4, !dbg !3335, !tbaa !1210
  %17 = load i32, i32* %op.addr, align 4, !dbg !3336, !tbaa !1210
  %18 = load i32, i32* %fd, align 4, !dbg !3337, !tbaa !1210
  %call12 = call i32 @epoll_ctl(i32 %16, i32 %17, i32 %18, %struct.epoll_event* %ev) #1, !dbg !3338
  store i32 %call12, i32* %result, align 4, !dbg !3339, !tbaa !1210
  %call13 = call i32* @__errno_location() #2, !dbg !3340
  %19 = load i32, i32* %call13, align 4, !dbg !3342, !tbaa !1210
  %cmp14 = icmp eq i32 %19, 9, !dbg !3343
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !3344

if.then.15:                                       ; preds = %sw.bb.9
  store i32 0, i32* %result, align 4, !dbg !3345, !tbaa !1210
  %call16 = call i32* @__errno_location() #2, !dbg !3347
  store i32 0, i32* %call16, align 4, !dbg !3348, !tbaa !1210
  br label %if.end.17, !dbg !3349

if.end.17:                                        ; preds = %if.then.15, %sw.bb.9
  %20 = load %struct._ts*, %struct._ts** %_save10, align 8, !dbg !3350, !tbaa !1027
  call void @PyEval_RestoreThread(%struct._ts* %20), !dbg !3351
  %21 = bitcast %struct._ts** %_save10 to i8*, !dbg !3352
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3352
  br label %sw.epilog, !dbg !3353

sw.default:                                       ; preds = %if.end.4
  store i32 -1, i32* %result, align 4, !dbg !3354, !tbaa !1210
  %call18 = call i32* @__errno_location() #2, !dbg !3355
  store i32 22, i32* %call18, align 4, !dbg !3356, !tbaa !1210
  br label %sw.epilog, !dbg !3357

sw.epilog:                                        ; preds = %sw.default, %if.end.17, %sw.bb
  %22 = load i32, i32* %result, align 4, !dbg !3358, !tbaa !1210
  %cmp19 = icmp slt i32 %22, 0, !dbg !3360
  br i1 %cmp19, label %if.then.20, label %if.end.22, !dbg !3361

if.then.20:                                       ; preds = %sw.epilog
  %23 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3362, !tbaa !1027
  %call21 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23), !dbg !3364
  store %struct._object* null, %struct._object** %retval, !dbg !3365
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3365

if.end.22:                                        ; preds = %sw.epilog
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3366, !tbaa !1039
  %inc = add i64 %24, 1, !dbg !3366
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3366, !tbaa !1039
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3367
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3367

cleanup:                                          ; preds = %if.end.22, %if.then.20, %if.then.3, %if.then
  %25 = bitcast i32* %fd to i8*, !dbg !3368
  call void @llvm.lifetime.end(i64 4, i8* %25) #1, !dbg !3368
  %26 = bitcast i32* %result to i8*, !dbg !3368
  call void @llvm.lifetime.end(i64 4, i8* %26) #1, !dbg !3368
  %27 = bitcast %struct.epoll_event* %ev to i8*, !dbg !3368
  call void @llvm.lifetime.end(i64 12, i8* %27) #1, !dbg !3368
  %28 = load %struct._object*, %struct._object** %retval, !dbg !3368
  ret %struct._object* %28, !dbg !3368
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i8* @PyMem_Malloc(i64) #3

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_get_closed(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8, !tbaa !1027
  call void @llvm.dbg.declare(metadata %struct.pyEpoll_Object** %self.addr, metadata !890, metadata !1023), !dbg !3369
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8, !dbg !3370, !tbaa !1027
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1, !dbg !3372
  %1 = load i32, i32* %epfd, align 4, !dbg !3372, !tbaa !2834
  %cmp = icmp slt i32 %1, 0, !dbg !3373
  br i1 %cmp, label %if.then, label %if.else, !dbg !3374

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3375, !tbaa !1039
  %inc = add i64 %2, 1, !dbg !3375
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3375, !tbaa !1039
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !3376
  br label %return, !dbg !3376

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3377, !tbaa !1039
  %inc1 = add i64 %3, 1, !dbg !3377
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !3377, !tbaa !1039
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !3378
  br label %return, !dbg !3378

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !3379
  ret %struct._object* %4, !dbg !3379
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1018, !1019, !1020}
!llvm.ident = !{!1021}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !30, subprograms: !448, globals: !900)
!1 = !DIFile(filename: "selectmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !20, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EPOLL_EVENTS", file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/sys/epoll.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !DIEnumerator(name: "EPOLLIN", value: 1)
!7 = !DIEnumerator(name: "EPOLLPRI", value: 2)
!8 = !DIEnumerator(name: "EPOLLOUT", value: 4)
!9 = !DIEnumerator(name: "EPOLLRDNORM", value: 64)
!10 = !DIEnumerator(name: "EPOLLRDBAND", value: 128)
!11 = !DIEnumerator(name: "EPOLLWRNORM", value: 256)
!12 = !DIEnumerator(name: "EPOLLWRBAND", value: 512)
!13 = !DIEnumerator(name: "EPOLLMSG", value: 1024)
!14 = !DIEnumerator(name: "EPOLLERR", value: 8)
!15 = !DIEnumerator(name: "EPOLLHUP", value: 16)
!16 = !DIEnumerator(name: "EPOLLRDHUP", value: 8192)
!17 = !DIEnumerator(name: "EPOLLWAKEUP", value: 536870912)
!18 = !DIEnumerator(name: "EPOLLONESHOT", value: 1073741824)
!19 = !DIEnumerator(name: "EPOLLET", value: -2147483648)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 23, size: 32, align: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/epoll.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "EPOLL_CLOEXEC", value: 524288)
!24 = !DIEnumerator(name: "EPOLL_NONBLOCK", value: 2048)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 57, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "./Include/pytime.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "_PyTime_ROUND_DOWN", value: 0)
!29 = !DIEnumerator(name: "_PyTime_ROUND_UP", value: 1)
!30 = !{!31, !32, !377, !385, !386, !395, !403, !71, !405, !123, !104, !424, !121, !38, !415, !421, !425, !427, !433}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !34, line: 109, baseType: !35)
!34 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !34, line: 105, size: 128, align: 64, elements: !36)
!36 = !{!37, !45}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !35, file: !34, line: 107, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !39, line: 177, baseType: !40)
!39 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 102, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !35, file: !34, line: 108, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !34, line: 334, size: 3200, align: 64, elements: !48)
!48 = !{!49, !55, !59, !60, !61, !66, !129, !134, !139, !140, !145, !197, !228, !240, !246, !247, !248, !250, !252, !283, !284, !285, !294, !295, !300, !301, !303, !305, !315, !325, !343, !344, !345, !347, !349, !350, !352, !357, !362, !367, !368, !369, !370, !371, !372, !373, !374, !376}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !34, line: 335, baseType: !50, size: 192, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !34, line: 114, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 111, size: 192, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !51, file: !34, line: 112, baseType: !33, size: 128, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !51, file: !34, line: 113, baseType: !38, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !47, file: !34, line: 336, baseType: !56, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !47, file: !34, line: 341, baseType: !62, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !34, line: 308, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !32}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !47, file: !34, line: 342, baseType: !67, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !34, line: 314, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !32, !72, !71}
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 48, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 246, size: 1728, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!76 = !{!77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !103, !105, !107, !111, !114, !116, !117, !118, !119, !120, !124, !125}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 247, baseType: !71, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 252, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 253, baseType: !79, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 254, baseType: !79, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 255, baseType: !79, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 256, baseType: !79, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 257, baseType: !79, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 258, baseType: !79, size: 64, align: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 259, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 261, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 262, baseType: !79, size: 64, align: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 263, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 265, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 161, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !75, line: 162, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !75, line: 163, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !75, line: 167, baseType: !71, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 267, baseType: !96, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 269, baseType: !71, size: 32, align: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 273, baseType: !71, size: 32, align: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 275, baseType: !102, size: 64, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 140, baseType: !44)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 279, baseType: !104, size: 16, align: 16, offset: 1024)
!104 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 280, baseType: !106, size: 8, align: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 281, baseType: !108, size: 8, align: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 285, baseType: !112, size: 64, align: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 155, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 294, baseType: !115, size: 64, align: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 141, baseType: !44)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !74, file: !75, line: 303, baseType: !31, size: 64, align: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !74, file: !75, line: 304, baseType: !31, size: 64, align: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !74, file: !75, line: 305, baseType: !31, size: 64, align: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !74, file: !75, line: 306, baseType: !31, size: 64, align: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 307, baseType: !121, size: 64, align: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 309, baseType: !71, size: 32, align: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 311, baseType: !126, size: 160, align: 8, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !47, file: !34, line: 343, baseType: !130, size: 64, align: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !34, line: 316, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !32, !79}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !47, file: !34, line: 344, baseType: !135, size: 64, align: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !34, line: 318, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!71, !32, !79, !32}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !47, file: !34, line: 345, baseType: !31, size: 64, align: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !47, file: !34, line: 346, baseType: !141, size: 64, align: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !34, line: 320, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!32, !32}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !47, file: !34, line: 350, baseType: !146, size: 64, align: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !34, line: 278, baseType: !148)
!148 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 236, size: 2176, align: 64, elements: !149)
!149 = !{!150, !155, !156, !157, !158, !159, !164, !166, !167, !168, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !148, file: !34, line: 241, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !34, line: 166, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!32, !32, !32}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !148, file: !34, line: 242, baseType: !151, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !148, file: !34, line: 243, baseType: !151, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !148, file: !34, line: 244, baseType: !151, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !148, file: !34, line: 245, baseType: !151, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !148, file: !34, line: 246, baseType: !160, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !34, line: 167, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!32, !32, !32, !32}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !148, file: !34, line: 247, baseType: !165, size: 64, align: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !34, line: 165, baseType: !142)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !148, file: !34, line: 248, baseType: !165, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !148, file: !34, line: 249, baseType: !165, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !148, file: !34, line: 250, baseType: !169, size: 64, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !34, line: 168, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!71, !32}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !148, file: !34, line: 251, baseType: !165, size: 64, align: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !148, file: !34, line: 252, baseType: !151, size: 64, align: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !148, file: !34, line: 253, baseType: !151, size: 64, align: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !148, file: !34, line: 254, baseType: !151, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !148, file: !34, line: 255, baseType: !151, size: 64, align: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !148, file: !34, line: 256, baseType: !151, size: 64, align: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !148, file: !34, line: 257, baseType: !165, size: 64, align: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !148, file: !34, line: 258, baseType: !31, size: 64, align: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !148, file: !34, line: 259, baseType: !165, size: 64, align: 64, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !148, file: !34, line: 261, baseType: !151, size: 64, align: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !148, file: !34, line: 262, baseType: !151, size: 64, align: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !148, file: !34, line: 263, baseType: !151, size: 64, align: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !148, file: !34, line: 264, baseType: !151, size: 64, align: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !148, file: !34, line: 265, baseType: !160, size: 64, align: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !148, file: !34, line: 266, baseType: !151, size: 64, align: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !148, file: !34, line: 267, baseType: !151, size: 64, align: 64, offset: 1600)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !148, file: !34, line: 268, baseType: !151, size: 64, align: 64, offset: 1664)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !148, file: !34, line: 269, baseType: !151, size: 64, align: 64, offset: 1728)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !148, file: !34, line: 270, baseType: !151, size: 64, align: 64, offset: 1792)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !148, file: !34, line: 272, baseType: !151, size: 64, align: 64, offset: 1856)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !148, file: !34, line: 273, baseType: !151, size: 64, align: 64, offset: 1920)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !148, file: !34, line: 274, baseType: !151, size: 64, align: 64, offset: 1984)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !148, file: !34, line: 275, baseType: !151, size: 64, align: 64, offset: 2048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !148, file: !34, line: 277, baseType: !165, size: 64, align: 64, offset: 2112)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !47, file: !34, line: 351, baseType: !198, size: 64, align: 64, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !34, line: 292, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 280, size: 640, align: 64, elements: !201)
!201 = !{!202, !207, !208, !213, !214, !215, !220, !221, !226, !227}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !200, file: !34, line: 281, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !34, line: 169, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !32}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !200, file: !34, line: 282, baseType: !151, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !200, file: !34, line: 283, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !34, line: 170, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!32, !32, !38}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !200, file: !34, line: 284, baseType: !209, size: 64, align: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !200, file: !34, line: 285, baseType: !31, size: 64, align: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !200, file: !34, line: 286, baseType: !216, size: 64, align: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !34, line: 172, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!71, !32, !38, !32}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !200, file: !34, line: 287, baseType: !31, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !200, file: !34, line: 288, baseType: !222, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !34, line: 231, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!71, !32, !32}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !200, file: !34, line: 290, baseType: !151, size: 64, align: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !200, file: !34, line: 291, baseType: !209, size: 64, align: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !47, file: !34, line: 352, baseType: !229, size: 64, align: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !34, line: 298, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 294, size: 192, align: 64, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !231, file: !34, line: 295, baseType: !203, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !231, file: !34, line: 296, baseType: !151, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !231, file: !34, line: 297, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !34, line: 174, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!71, !32, !32, !32}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !47, file: !34, line: 356, baseType: !241, size: 64, align: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !34, line: 321, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !32}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !39, line: 186, baseType: !38)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !47, file: !34, line: 357, baseType: !160, size: 64, align: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !47, file: !34, line: 358, baseType: !141, size: 64, align: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !47, file: !34, line: 359, baseType: !249, size: 64, align: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !34, line: 317, baseType: !152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !47, file: !34, line: 360, baseType: !251, size: 64, align: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !34, line: 319, baseType: !237)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !47, file: !34, line: 363, baseType: !253, size: 64, align: 64, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !34, line: 304, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 301, size: 128, align: 64, elements: !256)
!256 = !{!257, !278}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !255, file: !34, line: 302, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !34, line: 193, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!71, !32, !262, !71}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !34, line: 191, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !34, line: 178, size: 640, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !275, !276, !277}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !34, line: 179, baseType: !31, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !264, file: !34, line: 180, baseType: !32, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !34, line: 181, baseType: !38, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !264, file: !34, line: 182, baseType: !38, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !264, file: !34, line: 184, baseType: !71, size: 32, align: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !264, file: !34, line: 185, baseType: !71, size: 32, align: 32, offset: 288)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !264, file: !34, line: 186, baseType: !79, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !264, file: !34, line: 187, baseType: !274, size: 64, align: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !264, file: !34, line: 188, baseType: !274, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !264, file: !34, line: 189, baseType: !274, size: 64, align: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !264, file: !34, line: 190, baseType: !31, size: 64, align: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !255, file: !34, line: 303, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !34, line: 194, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !32, !262}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !47, file: !34, line: 366, baseType: !123, size: 64, align: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !47, file: !34, line: 368, baseType: !56, size: 64, align: 64, offset: 1408)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !47, file: !34, line: 372, baseType: !286, size: 64, align: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !34, line: 233, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!71, !32, !290, !31}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !34, line: 232, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!71, !32, !31}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !47, file: !34, line: 375, baseType: !169, size: 64, align: 64, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !47, file: !34, line: 379, baseType: !296, size: 64, align: 64, offset: 1600)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !34, line: 322, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!32, !32, !32, !71}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !47, file: !34, line: 382, baseType: !38, size: 64, align: 64, offset: 1664)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !47, file: !34, line: 385, baseType: !302, size: 64, align: 64, offset: 1728)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !34, line: 323, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !47, file: !34, line: 386, baseType: !304, size: 64, align: 64, offset: 1792)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !34, line: 324, baseType: !142)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !47, file: !34, line: 389, baseType: !306, size: 64, align: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !308, line: 40, size: 256, align: 64, elements: !309)
!308 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!309 = !{!310, !311, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !307, file: !308, line: 41, baseType: !56, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !307, file: !308, line: 42, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !308, line: 18, baseType: !152)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !307, file: !308, line: 43, baseType: !71, size: 32, align: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !307, file: !308, line: 45, baseType: !56, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !47, file: !34, line: 390, baseType: !316, size: 64, align: 64, offset: 1920)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !318, line: 18, size: 320, align: 64, elements: !319)
!318 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!319 = !{!320, !321, !322, !323, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 19, baseType: !79, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !318, line: 20, baseType: !71, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !317, file: !318, line: 21, baseType: !38, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !318, line: 22, baseType: !71, size: 32, align: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !317, file: !318, line: 23, baseType: !79, size: 64, align: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !47, file: !34, line: 391, baseType: !326, size: 64, align: 64, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !328, line: 11, size: 320, align: 64, elements: !329)
!328 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!329 = !{!330, !331, !336, !341, !342}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !328, line: 12, baseType: !79, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !327, file: !328, line: 13, baseType: !332, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !328, line: 8, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!32, !32, !31}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !327, file: !328, line: 14, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !328, line: 9, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!71, !32, !32, !31}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !327, file: !328, line: 15, baseType: !79, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !327, file: !328, line: 16, baseType: !31, size: 64, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !47, file: !34, line: 392, baseType: !46, size: 64, align: 64, offset: 2048)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !47, file: !34, line: 393, baseType: !32, size: 64, align: 64, offset: 2112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !47, file: !34, line: 394, baseType: !346, size: 64, align: 64, offset: 2176)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !34, line: 325, baseType: !161)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !47, file: !34, line: 395, baseType: !348, size: 64, align: 64, offset: 2240)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !34, line: 326, baseType: !237)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !47, file: !34, line: 396, baseType: !38, size: 64, align: 64, offset: 2304)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !47, file: !34, line: 397, baseType: !351, size: 64, align: 64, offset: 2368)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !34, line: 327, baseType: !237)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !47, file: !34, line: 398, baseType: !353, size: 64, align: 64, offset: 2432)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !34, line: 329, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!32, !46, !38}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !47, file: !34, line: 399, baseType: !358, size: 64, align: 64, offset: 2496)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !34, line: 328, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!32, !46, !32, !32}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !47, file: !34, line: 400, baseType: !363, size: 64, align: 64, offset: 2560)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !34, line: 307, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !31}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !47, file: !34, line: 401, baseType: !169, size: 64, align: 64, offset: 2624)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !47, file: !34, line: 402, baseType: !32, size: 64, align: 64, offset: 2688)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !47, file: !34, line: 403, baseType: !32, size: 64, align: 64, offset: 2752)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !47, file: !34, line: 404, baseType: !32, size: 64, align: 64, offset: 2816)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !47, file: !34, line: 405, baseType: !32, size: 64, align: 64, offset: 2880)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !47, file: !34, line: 406, baseType: !32, size: 64, align: 64, offset: 2944)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !47, file: !34, line: 407, baseType: !62, size: 64, align: 64, offset: 3008)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !47, file: !34, line: 410, baseType: !375, size: 32, align: 32, offset: 3072)
!375 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !47, file: !34, line: 412, baseType: !62, size: 64, align: 64, offset: 3136)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !379, line: 30, size: 128, align: 64, elements: !380)
!379 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !378, file: !379, line: 32, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 148, baseType: !44)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !378, file: !379, line: 33, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !43, line: 150, baseType: !44)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !388, line: 40, baseType: !389)
!388 = !DIFile(filename: "./Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!389 = !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 23, size: 320, align: 64, elements: !390)
!390 = !{!391, !392, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !389, file: !388, line: 24, baseType: !50, size: 192, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !389, file: !388, line: 26, baseType: !393, size: 64, align: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !389, file: !388, line: 39, baseType: !38, size: 64, align: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !397, line: 33, baseType: !398)
!397 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!398 = !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 25, size: 256, align: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !398, file: !397, line: 26, baseType: !50, size: 192, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !398, file: !397, line: 27, baseType: !402, size: 64, align: 64, offset: 192)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, align: 64, elements: !109)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !404, line: 54, baseType: !44)
!404 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pollObject", file: !407, line: 332, baseType: !408)
!407 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/selectmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!408 = !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 325, size: 384, align: 64, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !423}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !408, file: !407, line: 326, baseType: !33, size: 128, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !408, file: !407, line: 327, baseType: !32, size: 64, align: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ufd_uptodate", scope: !408, file: !407, line: 328, baseType: !71, size: 32, align: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ufd_len", scope: !408, file: !407, line: 329, baseType: !71, size: 32, align: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !408, file: !407, line: 330, baseType: !415, size: 64, align: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !417, line: 39, size: 64, align: 32, elements: !418)
!417 = !DIFile(filename: "/usr/include/sys/poll.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!418 = !{!419, !420, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !416, file: !417, line: 41, baseType: !71, size: 32, align: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !416, file: !417, line: 42, baseType: !421, size: 16, align: 16, offset: 32)
!421 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !416, file: !417, line: 43, baseType: !421, size: 16, align: 16, offset: 48)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !408, file: !407, line: 331, baseType: !71, size: 32, align: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !34, line: 422, baseType: !47)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pyEpoll_Object", file: !407, line: 1175, baseType: !429)
!429 = !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 1172, size: 192, align: 64, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !429, file: !407, line: 1173, baseType: !33, size: 128, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "epfd", scope: !429, file: !407, line: 1174, baseType: !71, size: 32, align: 32, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 87, size: 96, align: 8, elements: !435)
!435 = !{!436, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !434, file: !4, line: 89, baseType: !437, size: 32, align: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !438, line: 51, baseType: !375)
!438 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !4, line: 90, baseType: !440, size: 64, align: 64, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "epoll_data_t", file: !4, line: 85, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_union_type, name: "epoll_data", file: !4, line: 79, size: 64, align: 64, elements: !442)
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !441, file: !4, line: 81, baseType: !31, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !441, file: !4, line: 82, baseType: !71, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !441, file: !4, line: 83, baseType: !437, size: 32, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !441, file: !4, line: 84, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !438, line: 55, baseType: !123)
!448 = !{!449, !454, !576, !606, !620, !635, !639, !648, !658, !678, !683, !705, !717, !755, !765, !770, !781, !786, !803, !808, !811, !813, !822, !838, !845, !851, !878, !884, !888, !891}
!449 = !DISubprogram(name: "PyInit_select", scope: !407, file: !407, line: 2296, type: !450, isLocal: false, isDefinition: true, scopeLine: 2297, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_select, variables: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!32}
!452 = !{!453}
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !449, file: !407, line: 2298, type: !32)
!454 = !DISubprogram(name: "select_select", scope: !407, file: !407, line: 179, type: !153, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @select_select, variables: !455)
!455 = !{!456, !457, !458, !468, !469, !470, !471, !472, !473, !474, !475, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !498, !499, !559, !563, !566, !568, !571, !573}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !454, file: !407, line: 179, type: !32)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !454, file: !407, line: 179, type: !32)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rfd2obj", scope: !454, file: !407, line: 190, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 131200, align: 64, elements: !466)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pylist", file: !407, line: 62, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 58, size: 128, align: 64, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !461, file: !407, line: 59, baseType: !32, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !461, file: !407, line: 60, baseType: !71, size: 32, align: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !461, file: !407, line: 61, baseType: !71, size: 32, align: 32, offset: 96)
!466 = !{!467}
!467 = !DISubrange(count: 1025)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wfd2obj", scope: !454, file: !407, line: 191, type: !459)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "efd2obj", scope: !454, file: !407, line: 192, type: !459)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ifdlist", scope: !454, file: !407, line: 194, type: !32)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ofdlist", scope: !454, file: !407, line: 194, type: !32)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "efdlist", scope: !454, file: !407, line: 194, type: !32)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !454, file: !407, line: 195, type: !32)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tout", scope: !454, file: !407, line: 196, type: !32)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ifdset", scope: !454, file: !407, line: 197, type: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !404, line: 75, baseType: !477)
!477 = !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 64, size: 1024, align: 64, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !477, file: !404, line: 69, baseType: !480, size: 1024, align: 64)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 1024, align: 64, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 16)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ofdset", scope: !454, file: !407, line: 197, type: !476)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "efdset", scope: !454, file: !407, line: 197, type: !476)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tv", scope: !454, file: !407, line: 198, type: !378)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tvp", scope: !454, file: !407, line: 198, type: !377)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imax", scope: !454, file: !407, line: 199, type: !71)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "omax", scope: !454, file: !407, line: 199, type: !71)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emax", scope: !454, file: !407, line: 199, type: !71)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !454, file: !407, line: 199, type: !71)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !454, file: !407, line: 200, type: !71)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sec", scope: !493, file: !407, line: 217, type: !496)
!493 = distinct !DILexicalBlock(scope: !494, file: !407, line: 214, column: 10)
!494 = distinct !DILexicalBlock(scope: !495, file: !407, line: 209, column: 14)
!495 = distinct !DILexicalBlock(scope: !454, file: !407, line: 207, column: 9)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !497, line: 75, baseType: !382)
!497 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "usec", scope: !493, file: !407, line: 220, type: !44)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !500, file: !407, line: 277, type: !501)
!500 = distinct !DILexicalBlock(scope: !454, file: !407, line: 277, column: 5)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !503, line: 139, baseType: !504)
!503 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !503, line: 69, size: 1536, align: 64, elements: !505)
!505 = !{!506, !508, !509, !529, !532, !533, !534, !535, !536, !537, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !504, file: !503, line: 72, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !503, line: 73, baseType: !507, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !504, file: !503, line: 74, baseType: !510, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !503, line: 44, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !503, line: 19, size: 832, align: 64, elements: !513)
!513 = !{!514, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !503, line: 21, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !512, file: !503, line: 22, baseType: !507, size: 64, align: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !512, file: !503, line: 24, baseType: !32, size: 64, align: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !512, file: !503, line: 25, baseType: !32, size: 64, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !512, file: !503, line: 26, baseType: !32, size: 64, align: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !512, file: !503, line: 27, baseType: !32, size: 64, align: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !512, file: !503, line: 28, baseType: !32, size: 64, align: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !512, file: !503, line: 30, baseType: !32, size: 64, align: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !512, file: !503, line: 31, baseType: !32, size: 64, align: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !512, file: !503, line: 32, baseType: !32, size: 64, align: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !512, file: !503, line: 33, baseType: !71, size: 32, align: 32, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !512, file: !503, line: 34, baseType: !71, size: 32, align: 32, offset: 672)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !512, file: !503, line: 37, baseType: !71, size: 32, align: 32, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !512, file: !503, line: 43, baseType: !32, size: 64, align: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !504, file: !503, line: 76, baseType: !530, size: 64, align: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !503, line: 50, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !504, file: !503, line: 77, baseType: !71, size: 32, align: 32, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !504, file: !503, line: 78, baseType: !58, size: 8, align: 8, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !504, file: !503, line: 80, baseType: !58, size: 8, align: 8, offset: 296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !504, file: !503, line: 85, baseType: !71, size: 32, align: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !504, file: !503, line: 86, baseType: !71, size: 32, align: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !504, file: !503, line: 88, baseType: !538, size: 64, align: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !503, line: 54, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!71, !32, !530, !71, !32}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !504, file: !503, line: 89, baseType: !538, size: 64, align: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !504, file: !503, line: 90, baseType: !32, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !504, file: !503, line: 91, baseType: !32, size: 64, align: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !504, file: !503, line: 93, baseType: !32, size: 64, align: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !504, file: !503, line: 94, baseType: !32, size: 64, align: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !504, file: !503, line: 95, baseType: !32, size: 64, align: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !504, file: !503, line: 97, baseType: !32, size: 64, align: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !504, file: !503, line: 98, baseType: !32, size: 64, align: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !504, file: !503, line: 99, baseType: !32, size: 64, align: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !504, file: !503, line: 101, baseType: !32, size: 64, align: 64, offset: 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !504, file: !503, line: 103, baseType: !71, size: 32, align: 32, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !504, file: !503, line: 105, baseType: !32, size: 64, align: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !504, file: !503, line: 106, baseType: !44, size: 64, align: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !504, file: !503, line: 108, baseType: !71, size: 32, align: 32, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !504, file: !503, line: 109, baseType: !32, size: 64, align: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !504, file: !503, line: 134, baseType: !364, size: 64, align: 64, offset: 1408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !504, file: !503, line: 135, baseType: !31, size: 64, align: 64, offset: 1472)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !560, file: !407, line: 303, type: !32)
!560 = distinct !DILexicalBlock(scope: !561, file: !407, line: 303, column: 12)
!561 = distinct !DILexicalBlock(scope: !562, file: !407, line: 290, column: 10)
!562 = distinct !DILexicalBlock(scope: !454, file: !407, line: 286, column: 9)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !407, line: 303, type: !32)
!564 = distinct !DILexicalBlock(scope: !565, file: !407, line: 303, column: 103)
!565 = distinct !DILexicalBlock(scope: !560, file: !407, line: 303, column: 69)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !567, file: !407, line: 304, type: !32)
!567 = distinct !DILexicalBlock(scope: !561, file: !407, line: 304, column: 12)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !569, file: !407, line: 304, type: !32)
!569 = distinct !DILexicalBlock(scope: !570, file: !407, line: 304, column: 103)
!570 = distinct !DILexicalBlock(scope: !567, file: !407, line: 304, column: 69)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !572, file: !407, line: 305, type: !32)
!572 = distinct !DILexicalBlock(scope: !561, file: !407, line: 305, column: 12)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !574, file: !407, line: 305, type: !32)
!574 = distinct !DILexicalBlock(scope: !575, file: !407, line: 305, column: 103)
!575 = distinct !DILexicalBlock(scope: !572, file: !407, line: 305, column: 69)
!576 = !DISubprogram(name: "seq2set", scope: !407, file: !407, line: 79, type: !577, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.fd_set*, %struct.pylist*)* @seq2set, variables: !581)
!577 = !DISubroutineType(types: !578)
!578 = !{!71, !32, !579, !580}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !592, !593, !597, !599, !601, !604}
!582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !576, file: !407, line: 79, type: !32)
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set", arg: 2, scope: !576, file: !407, line: 79, type: !579)
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd2obj", arg: 3, scope: !576, file: !407, line: 79, type: !580)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !576, file: !407, line: 81, type: !71)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !576, file: !407, line: 82, type: !71)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !576, file: !407, line: 83, type: !38)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fast_seq", scope: !576, file: !407, line: 84, type: !32)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !576, file: !407, line: 85, type: !32)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d0", scope: !591, file: !407, line: 88, type: !71)
!591 = distinct !DILexicalBlock(scope: !576, file: !407, line: 88, column: 8)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d1", scope: !591, file: !407, line: 88, type: !71)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !594, file: !407, line: 95, type: !71)
!594 = distinct !DILexicalBlock(scope: !595, file: !407, line: 94, column: 181)
!595 = distinct !DILexicalBlock(scope: !596, file: !407, line: 94, column: 5)
!596 = distinct !DILexicalBlock(scope: !576, file: !407, line: 94, column: 5)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !407, line: 129, type: !32)
!598 = distinct !DILexicalBlock(scope: !576, file: !407, line: 129, column: 8)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !600, file: !407, line: 133, type: !32)
!600 = distinct !DILexicalBlock(scope: !576, file: !407, line: 133, column: 8)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !407, line: 133, type: !32)
!602 = distinct !DILexicalBlock(scope: !603, file: !407, line: 133, column: 93)
!603 = distinct !DILexicalBlock(scope: !600, file: !407, line: 133, column: 59)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !407, line: 134, type: !32)
!605 = distinct !DILexicalBlock(scope: !576, file: !407, line: 134, column: 8)
!606 = !DISubprogram(name: "set2list", scope: !407, file: !407, line: 140, type: !607, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fd_set*, %struct.pylist*)* @set2list, variables: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{!32, !579, !580}
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618}
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set", arg: 1, scope: !606, file: !407, line: 140, type: !579)
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd2obj", arg: 2, scope: !606, file: !407, line: 140, type: !580)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !606, file: !407, line: 142, type: !71)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !606, file: !407, line: 142, type: !71)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !606, file: !407, line: 142, type: !71)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !606, file: !407, line: 143, type: !32)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !606, file: !407, line: 143, type: !32)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !606, file: !407, line: 144, type: !71)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !407, line: 169, type: !32)
!619 = distinct !DILexicalBlock(scope: !606, file: !407, line: 169, column: 8)
!620 = !DISubprogram(name: "reap_obj", scope: !407, file: !407, line: 65, type: !621, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pylist*)* @reap_obj, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !580}
!623 = !{!624, !625, !626, !631}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd2obj", arg: 1, scope: !620, file: !407, line: 65, type: !580)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !620, file: !407, line: 67, type: !71)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !627, file: !407, line: 69, type: !32)
!627 = distinct !DILexicalBlock(scope: !628, file: !407, line: 69, column: 12)
!628 = distinct !DILexicalBlock(scope: !629, file: !407, line: 68, column: 63)
!629 = distinct !DILexicalBlock(scope: !630, file: !407, line: 68, column: 5)
!630 = distinct !DILexicalBlock(scope: !620, file: !407, line: 68, column: 5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !632, file: !407, line: 69, type: !32)
!632 = distinct !DILexicalBlock(scope: !633, file: !407, line: 69, column: 125)
!633 = distinct !DILexicalBlock(scope: !634, file: !407, line: 69, column: 90)
!634 = distinct !DILexicalBlock(scope: !627, file: !407, line: 69, column: 67)
!635 = !DISubprogram(name: "select_poll", scope: !407, file: !407, line: 1110, type: !153, isLocal: true, isDefinition: true, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @select_poll, variables: !636)
!636 = !{!637, !638}
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !635, file: !407, line: 1110, type: !32)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !635, file: !407, line: 1110, type: !32)
!639 = !DISubprogram(name: "newPollObject", scope: !407, file: !407, line: 632, type: !640, isLocal: true, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: true, function: %struct.pollObject* ()* @newPollObject, variables: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!405}
!642 = !{!643, !644}
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !639, file: !407, line: 634, type: !405)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !645, file: !407, line: 645, type: !32)
!645 = distinct !DILexicalBlock(scope: !646, file: !407, line: 645, column: 12)
!646 = distinct !DILexicalBlock(scope: !647, file: !407, line: 644, column: 35)
!647 = distinct !DILexicalBlock(scope: !639, file: !407, line: 644, column: 9)
!648 = !DISubprogram(name: "poll_dealloc", scope: !407, file: !407, line: 652, type: !649, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pollObject*)* @poll_dealloc, variables: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !405}
!651 = !{!652, !653, !655}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !648, file: !407, line: 652, type: !405)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !654, file: !407, line: 656, type: !32)
!654 = distinct !DILexicalBlock(scope: !648, file: !407, line: 656, column: 8)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !407, line: 656, type: !32)
!656 = distinct !DILexicalBlock(scope: !657, file: !407, line: 656, column: 102)
!657 = distinct !DILexicalBlock(scope: !654, file: !407, line: 656, column: 68)
!658 = !DISubprogram(name: "poll_register", scope: !407, file: !407, line: 394, type: !659, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pollObject*, %struct._object*)* @poll_register, variables: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{!32, !405, !32}
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !674, !676}
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !658, file: !407, line: 394, type: !405)
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !658, file: !407, line: 394, type: !32)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !658, file: !407, line: 396, type: !32)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !658, file: !407, line: 396, type: !32)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !658, file: !407, line: 396, type: !32)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !658, file: !407, line: 397, type: !71)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "events", scope: !658, file: !407, line: 398, type: !104)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !658, file: !407, line: 399, type: !71)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !407, line: 414, type: !32)
!671 = distinct !DILexicalBlock(scope: !672, file: !407, line: 414, column: 12)
!672 = distinct !DILexicalBlock(scope: !673, file: !407, line: 413, column: 30)
!673 = distinct !DILexicalBlock(scope: !658, file: !407, line: 413, column: 9)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !675, file: !407, line: 418, type: !32)
!675 = distinct !DILexicalBlock(scope: !658, file: !407, line: 418, column: 8)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !677, file: !407, line: 419, type: !32)
!677 = distinct !DILexicalBlock(scope: !658, file: !407, line: 419, column: 8)
!678 = !DISubprogram(name: "ushort_converter", scope: !407, file: !407, line: 369, type: !292, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @ushort_converter, variables: !679)
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !678, file: !407, line: 369, type: !32)
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !678, file: !407, line: 369, type: !31)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uval", scope: !678, file: !407, line: 371, type: !123)
!683 = !DISubprogram(name: "poll_modify", scope: !407, file: !407, line: 437, type: !659, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pollObject*, %struct._object*)* @poll_modify, variables: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !697, !701, !703}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !683, file: !407, line: 437, type: !405)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !683, file: !407, line: 437, type: !32)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !683, file: !407, line: 439, type: !32)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !683, file: !407, line: 439, type: !32)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !683, file: !407, line: 439, type: !32)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !683, file: !407, line: 440, type: !71)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "events", scope: !683, file: !407, line: 441, type: !104)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !683, file: !407, line: 442, type: !71)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !407, line: 457, type: !32)
!694 = distinct !DILexicalBlock(scope: !695, file: !407, line: 457, column: 12)
!695 = distinct !DILexicalBlock(scope: !696, file: !407, line: 454, column: 56)
!696 = distinct !DILexicalBlock(scope: !683, file: !407, line: 454, column: 9)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !698, file: !407, line: 462, type: !32)
!698 = distinct !DILexicalBlock(scope: !699, file: !407, line: 462, column: 12)
!699 = distinct !DILexicalBlock(scope: !700, file: !407, line: 461, column: 30)
!700 = distinct !DILexicalBlock(scope: !683, file: !407, line: 461, column: 9)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !702, file: !407, line: 466, type: !32)
!702 = distinct !DILexicalBlock(scope: !683, file: !407, line: 466, column: 8)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !407, line: 467, type: !32)
!704 = distinct !DILexicalBlock(scope: !683, file: !407, line: 467, column: 8)
!705 = !DISubprogram(name: "poll_unregister", scope: !407, file: !407, line: 483, type: !659, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pollObject*, %struct._object*)* @poll_unregister, variables: !706)
!706 = !{!707, !708, !709, !710, !711, !715}
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !705, file: !407, line: 483, type: !405)
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 2, scope: !705, file: !407, line: 483, type: !32)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !705, file: !407, line: 485, type: !32)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !705, file: !407, line: 486, type: !71)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !712, file: !407, line: 498, type: !32)
!712 = distinct !DILexicalBlock(scope: !713, file: !407, line: 498, column: 12)
!713 = distinct !DILexicalBlock(scope: !714, file: !407, line: 497, column: 48)
!714 = distinct !DILexicalBlock(scope: !705, file: !407, line: 497, column: 9)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !716, file: !407, line: 504, type: !32)
!716 = distinct !DILexicalBlock(scope: !705, file: !407, line: 504, column: 8)
!717 = !DISubprogram(name: "poll_poll", scope: !407, file: !407, line: 517, type: !659, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pollObject*, %struct._object*)* @poll_poll, variables: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !734, !736, !745, !749, !753}
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !717, file: !407, line: 517, type: !405)
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !717, file: !407, line: 517, type: !32)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_list", scope: !717, file: !407, line: 519, type: !32)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tout", scope: !717, file: !407, line: 519, type: !32)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !717, file: !407, line: 520, type: !71)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "poll_result", scope: !717, file: !407, line: 520, type: !71)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !717, file: !407, line: 520, type: !71)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !717, file: !407, line: 520, type: !71)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !717, file: !407, line: 521, type: !32)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !717, file: !407, line: 521, type: !32)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !407, line: 540, type: !32)
!730 = distinct !DILexicalBlock(scope: !731, file: !407, line: 540, column: 12)
!731 = distinct !DILexicalBlock(scope: !732, file: !407, line: 535, column: 10)
!732 = distinct !DILexicalBlock(scope: !733, file: !407, line: 530, column: 14)
!733 = distinct !DILexicalBlock(scope: !717, file: !407, line: 528, column: 9)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !735, file: !407, line: 560, type: !501)
!735 = distinct !DILexicalBlock(scope: !717, file: !407, line: 560, column: 5)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !737, file: !407, line: 590, type: !32)
!737 = distinct !DILexicalBlock(scope: !738, file: !407, line: 590, column: 20)
!738 = distinct !DILexicalBlock(scope: !739, file: !407, line: 589, column: 36)
!739 = distinct !DILexicalBlock(scope: !740, file: !407, line: 589, column: 17)
!740 = distinct !DILexicalBlock(scope: !741, file: !407, line: 577, column: 50)
!741 = distinct !DILexicalBlock(scope: !742, file: !407, line: 577, column: 9)
!742 = distinct !DILexicalBlock(scope: !743, file: !407, line: 577, column: 9)
!743 = distinct !DILexicalBlock(scope: !744, file: !407, line: 576, column: 10)
!744 = distinct !DILexicalBlock(scope: !717, file: !407, line: 574, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !407, line: 601, type: !32)
!746 = distinct !DILexicalBlock(scope: !747, file: !407, line: 601, column: 20)
!747 = distinct !DILexicalBlock(scope: !748, file: !407, line: 600, column: 36)
!748 = distinct !DILexicalBlock(scope: !740, file: !407, line: 600, column: 17)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !750, file: !407, line: 606, type: !32)
!750 = distinct !DILexicalBlock(scope: !751, file: !407, line: 606, column: 20)
!751 = distinct !DILexicalBlock(scope: !752, file: !407, line: 605, column: 64)
!752 = distinct !DILexicalBlock(scope: !740, file: !407, line: 605, column: 17)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !754, file: !407, line: 615, type: !32)
!754 = distinct !DILexicalBlock(scope: !717, file: !407, line: 615, column: 8)
!755 = !DISubprogram(name: "update_ufd_array", scope: !407, file: !407, line: 341, type: !756, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pollObject*)* @update_ufd_array, variables: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!71, !405}
!758 = !{!759, !760, !761, !762, !763, !764}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !755, file: !407, line: 341, type: !405)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !755, file: !407, line: 343, type: !38)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !755, file: !407, line: 343, type: !38)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !755, file: !407, line: 344, type: !32)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !755, file: !407, line: 344, type: !32)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_ufds", scope: !755, file: !407, line: 345, type: !415)
!765 = !DISubprogram(name: "pyepoll_dealloc", scope: !407, file: !407, line: 1262, type: !766, isLocal: true, isDefinition: true, scopeLine: 1263, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pyEpoll_Object*)* @pyepoll_dealloc, variables: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !427}
!768 = !{!769}
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !765, file: !407, line: 1262, type: !427)
!770 = !DISubprogram(name: "pyepoll_internal_close", scope: !407, file: !407, line: 1188, type: !771, isLocal: true, isDefinition: true, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pyEpoll_Object*)* @pyepoll_internal_close, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!71, !427}
!773 = !{!774, !775, !776, !779}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !770, file: !407, line: 1188, type: !427)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !770, file: !407, line: 1190, type: !71)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "epfd", scope: !777, file: !407, line: 1192, type: !71)
!777 = distinct !DILexicalBlock(scope: !778, file: !407, line: 1191, column: 26)
!778 = distinct !DILexicalBlock(scope: !770, file: !407, line: 1191, column: 9)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !780, file: !407, line: 1194, type: !501)
!780 = distinct !DILexicalBlock(scope: !777, file: !407, line: 1194, column: 9)
!781 = !DISubprogram(name: "pyepoll_fromfd", scope: !407, file: !407, line: 1308, type: !153, isLocal: true, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pyepoll_fromfd, variables: !782)
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 1, scope: !781, file: !407, line: 1308, type: !32)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !781, file: !407, line: 1308, type: !32)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !781, file: !407, line: 1310, type: !71)
!786 = !DISubprogram(name: "newPyEpoll_Object", scope: !407, file: !407, line: 1203, type: !787, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, i32, i32, i32)* @newPyEpoll_Object, variables: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!32, !425, !71, !71, !71}
!789 = !{!790, !791, !792, !793, !794, !795, !799}
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !786, file: !407, line: 1203, type: !425)
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizehint", arg: 2, scope: !786, file: !407, line: 1203, type: !71)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !786, file: !407, line: 1203, type: !71)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 4, scope: !786, file: !407, line: 1203, type: !71)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !786, file: !407, line: 1205, type: !427)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !796, file: !407, line: 1213, type: !501)
!796 = distinct !DILexicalBlock(scope: !797, file: !407, line: 1213, column: 9)
!797 = distinct !DILexicalBlock(scope: !798, file: !407, line: 1212, column: 19)
!798 = distinct !DILexicalBlock(scope: !786, file: !407, line: 1212, column: 9)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !800, file: !407, line: 1227, type: !32)
!800 = distinct !DILexicalBlock(scope: !801, file: !407, line: 1227, column: 12)
!801 = distinct !DILexicalBlock(scope: !802, file: !407, line: 1226, column: 25)
!802 = distinct !DILexicalBlock(scope: !786, file: !407, line: 1226, column: 9)
!803 = !DISubprogram(name: "pyepoll_close", scope: !407, file: !407, line: 1269, type: !804, isLocal: true, isDefinition: true, scopeLine: 1270, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*)* @pyepoll_close, variables: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!32, !427}
!806 = !{!807}
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !803, file: !407, line: 1269, type: !427)
!808 = !DISubprogram(name: "pyepoll_fileno", scope: !407, file: !407, line: 1295, type: !804, isLocal: true, isDefinition: true, scopeLine: 1296, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*)* @pyepoll_fileno, variables: !809)
!809 = !{!810}
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !808, file: !407, line: 1295, type: !427)
!811 = !DISubprogram(name: "pyepoll_err_closed", scope: !407, file: !407, line: 1181, type: !450, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @pyepoll_err_closed, variables: !812)
!812 = !{}
!813 = !DISubprogram(name: "pyepoll_modify", scope: !407, file: !407, line: 1398, type: !814, isLocal: true, isDefinition: true, scopeLine: 1399, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_modify, variables: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!32, !427, !32, !32}
!816 = !{!817, !818, !819, !820, !821}
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !813, file: !407, line: 1398, type: !427)
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !813, file: !407, line: 1398, type: !32)
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !813, file: !407, line: 1398, type: !32)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfd", scope: !813, file: !407, line: 1400, type: !32)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "events", scope: !813, file: !407, line: 1401, type: !375)
!822 = !DISubprogram(name: "pyepoll_internal_ctl", scope: !407, file: !407, line: 1324, type: !823, isLocal: true, isDefinition: true, scopeLine: 1325, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, i32, %struct._object*, i32)* @pyepoll_internal_ctl, variables: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!32, !71, !71, !32, !375}
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !836}
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "epfd", arg: 1, scope: !822, file: !407, line: 1324, type: !71)
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 2, scope: !822, file: !407, line: 1324, type: !71)
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pfd", arg: 3, scope: !822, file: !407, line: 1324, type: !32)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "events", arg: 4, scope: !822, file: !407, line: 1324, type: !375)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ev", scope: !822, file: !407, line: 1326, type: !434)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !822, file: !407, line: 1327, type: !71)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !822, file: !407, line: 1328, type: !71)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !834, file: !407, line: 1343, type: !501)
!834 = distinct !DILexicalBlock(scope: !835, file: !407, line: 1343, column: 9)
!835 = distinct !DILexicalBlock(scope: !822, file: !407, line: 1338, column: 17)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !837, file: !407, line: 1351, type: !501)
!837 = distinct !DILexicalBlock(scope: !835, file: !407, line: 1351, column: 9)
!838 = !DISubprogram(name: "pyepoll_register", scope: !407, file: !407, line: 1373, type: !814, isLocal: true, isDefinition: true, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_register, variables: !839)
!839 = !{!840, !841, !842, !843, !844}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !838, file: !407, line: 1373, type: !427)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !838, file: !407, line: 1373, type: !32)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !838, file: !407, line: 1373, type: !32)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfd", scope: !838, file: !407, line: 1375, type: !32)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "events", scope: !838, file: !407, line: 1376, type: !375)
!845 = !DISubprogram(name: "pyepoll_unregister", scope: !407, file: !407, line: 1419, type: !814, isLocal: true, isDefinition: true, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_unregister, variables: !846)
!846 = !{!847, !848, !849, !850}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !845, file: !407, line: 1419, type: !427)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !845, file: !407, line: 1419, type: !32)
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !845, file: !407, line: 1419, type: !32)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfd", scope: !845, file: !407, line: 1421, type: !32)
!851 = !DISubprogram(name: "pyepoll_poll", scope: !407, file: !407, line: 1438, type: !814, isLocal: true, isDefinition: true, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*, %struct._object*, %struct._object*)* @pyepoll_poll, variables: !852)
!852 = !{!853, !854, !855, !856, !858, !859, !860, !861, !862, !863, !864, !865, !867, !874}
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !851, file: !407, line: 1438, type: !427)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !851, file: !407, line: 1438, type: !32)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !851, file: !407, line: 1438, type: !32)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtimeout", scope: !851, file: !407, line: 1440, type: !857)
!857 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !851, file: !407, line: 1441, type: !71)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxevents", scope: !851, file: !407, line: 1442, type: !71)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfds", scope: !851, file: !407, line: 1443, type: !71)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !851, file: !407, line: 1443, type: !71)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elist", scope: !851, file: !407, line: 1444, type: !32)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "etuple", scope: !851, file: !407, line: 1444, type: !32)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evs", scope: !851, file: !407, line: 1445, type: !433)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !866, file: !407, line: 1486, type: !501)
!866 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1486, column: 5)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !868, file: !407, line: 1502, type: !32)
!868 = distinct !DILexicalBlock(scope: !869, file: !407, line: 1502, column: 16)
!869 = distinct !DILexicalBlock(scope: !870, file: !407, line: 1501, column: 35)
!870 = distinct !DILexicalBlock(scope: !871, file: !407, line: 1501, column: 13)
!871 = distinct !DILexicalBlock(scope: !872, file: !407, line: 1499, column: 32)
!872 = distinct !DILexicalBlock(scope: !873, file: !407, line: 1499, column: 5)
!873 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1499, column: 5)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !407, line: 1502, type: !32)
!875 = distinct !DILexicalBlock(scope: !876, file: !407, line: 1502, column: 113)
!876 = distinct !DILexicalBlock(scope: !877, file: !407, line: 1502, column: 86)
!877 = distinct !DILexicalBlock(scope: !868, file: !407, line: 1502, column: 63)
!878 = !DISubprogram(name: "pyepoll_enter", scope: !407, file: !407, line: 1521, type: !879, isLocal: true, isDefinition: true, scopeLine: 1522, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*, %struct._object*)* @pyepoll_enter, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!32, !427, !32}
!881 = !{!882, !883}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !878, file: !407, line: 1521, type: !427)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !878, file: !407, line: 1521, type: !32)
!884 = !DISubprogram(name: "pyepoll_exit", scope: !407, file: !407, line: 1531, type: !153, isLocal: true, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pyepoll_exit, variables: !885)
!885 = !{!886, !887}
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !884, file: !407, line: 1531, type: !32)
!887 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !884, file: !407, line: 1531, type: !32)
!888 = !DISubprogram(name: "pyepoll_get_closed", scope: !407, file: !407, line: 1286, type: !804, isLocal: true, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pyEpoll_Object*)* @pyepoll_get_closed, variables: !889)
!889 = !{!890}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !888, file: !407, line: 1286, type: !427)
!891 = !DISubprogram(name: "pyepoll_new", scope: !407, file: !407, line: 1244, type: !892, isLocal: true, isDefinition: true, scopeLine: 1245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @pyepoll_new, variables: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!32, !425, !32, !32}
!894 = !{!895, !896, !897, !898, !899}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !891, file: !407, line: 1244, type: !425)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !891, file: !407, line: 1244, type: !32)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !891, file: !407, line: 1244, type: !32)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !891, file: !407, line: 1246, type: !71)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizehint", scope: !891, file: !407, line: 1246, type: !71)
!900 = !{!901, !924, !928, !932, !936, !940, !941, !945, !949, !953, !957, !961, !962, !966, !970, !974, !978, !982, !984, !988, !989, !993, !997, !1001, !1002, !1006, !1014, !1017}
!901 = !DIGlobalVariable(name: "selectmodule", scope: !0, file: !407, line: 2280, type: !902, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @selectmodule)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !903, line: 47, size: 832, align: 64, elements: !904)
!903 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!904 = !{!905, !914, !915, !916, !917, !920, !921, !922, !923}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !902, file: !903, line: 48, baseType: !906, size: 320, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !903, line: 38, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !903, line: 33, size: 320, align: 64, elements: !908)
!908 = !{!909, !910, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !907, file: !903, line: 34, baseType: !33, size: 128, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !907, file: !903, line: 35, baseType: !911, size: 64, align: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !907, file: !903, line: 36, baseType: !38, size: 64, align: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !907, file: !903, line: 37, baseType: !32, size: 64, align: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !902, file: !903, line: 49, baseType: !56, size: 64, align: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !902, file: !903, line: 50, baseType: !56, size: 64, align: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !902, file: !903, line: 51, baseType: !38, size: 64, align: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !902, file: !903, line: 52, baseType: !918, size: 64, align: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !308, line: 47, baseType: !307)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !902, file: !903, line: 53, baseType: !169, size: 64, align: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !902, file: !903, line: 54, baseType: !286, size: 64, align: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !902, file: !903, line: 55, baseType: !169, size: 64, align: 64, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !902, file: !903, line: 56, baseType: !363, size: 64, align: 64, offset: 768)
!924 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !407, line: 2273, type: !925, isLocal: true, isDefinition: true, variable: [164 x i8]* @module_doc)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1312, align: 8, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 164)
!928 = !DIGlobalVariable(name: "select_methods", scope: !0, file: !407, line: 2262, type: !929, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @select_methods)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 768, align: 64, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 3)
!932 = !DIGlobalVariable(name: "select_doc", scope: !0, file: !407, line: 2238, type: !933, isLocal: true, isDefinition: true, variable: [991 x i8]* @select_doc)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 7928, align: 8, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 991)
!936 = !DIGlobalVariable(name: "poll_doc", scope: !0, file: !407, line: 1105, type: !937, isLocal: true, isDefinition: true, variable: [127 x i8]* @poll_doc)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1016, align: 8, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 127)
!940 = !DIGlobalVariable(name: "poll_Type", scope: !0, file: !407, line: 660, type: !426, isLocal: true, isDefinition: true, variable: %struct._typeobject* @poll_Type)
!941 = !DIGlobalVariable(name: "poll_methods", scope: !0, file: !407, line: 619, type: !942, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @poll_methods)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 1280, align: 64, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 5)
!945 = !DIGlobalVariable(name: "poll_register_doc", scope: !0, file: !407, line: 386, type: !946, isLocal: true, isDefinition: true, variable: [247 x i8]* @poll_register_doc)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1976, align: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 247)
!949 = !DIGlobalVariable(name: "poll_modify_doc", scope: !0, file: !407, line: 429, type: !950, isLocal: true, isDefinition: true, variable: [235 x i8]* @poll_modify_doc)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1880, align: 8, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 235)
!953 = !DIGlobalVariable(name: "poll_unregister_doc", scope: !0, file: !407, line: 478, type: !954, isLocal: true, isDefinition: true, variable: [86 x i8]* @poll_unregister_doc)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 688, align: 8, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 86)
!957 = !DIGlobalVariable(name: "poll_poll_doc", scope: !0, file: !407, line: 511, type: !958, isLocal: true, isDefinition: true, variable: [180 x i8]* @poll_poll_doc)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1440, align: 8, elements: !959)
!959 = !{!960}
!960 = !DISubrange(count: 180)
!961 = !DIGlobalVariable(name: "pyEpoll_Type", scope: !0, file: !407, line: 1575, type: !426, isLocal: true, isDefinition: true, variable: %struct._typeobject* @pyEpoll_Type)
!962 = !DIGlobalVariable(name: "pyepoll_doc", scope: !0, file: !407, line: 1566, type: !963, isLocal: true, isDefinition: true, variable: [244 x i8]* @pyepoll_doc)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1952, align: 8, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 244)
!966 = !DIGlobalVariable(name: "pyepoll_methods", scope: !0, file: !407, line: 1538, type: !967, isLocal: true, isDefinition: true, variable: [10 x %struct.PyMethodDef]* @pyepoll_methods)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 2560, align: 64, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 10)
!970 = !DIGlobalVariable(name: "pyepoll_fromfd_doc", scope: !0, file: !407, line: 1318, type: !971, isLocal: true, isDefinition: true, variable: [69 x i8]* @pyepoll_fromfd_doc)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 552, align: 8, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 69)
!974 = !DIGlobalVariable(name: "pyepoll_close_doc", scope: !0, file: !407, line: 1279, type: !975, isLocal: true, isDefinition: true, variable: [122 x i8]* @pyepoll_close_doc)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 976, align: 8, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 122)
!978 = !DIGlobalVariable(name: "pyepoll_fileno_doc", scope: !0, file: !407, line: 1302, type: !979, isLocal: true, isDefinition: true, variable: [59 x i8]* @pyepoll_fileno_doc)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 472, align: 8, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 59)
!982 = !DIGlobalVariable(name: "kwlist", scope: !813, file: !407, line: 1402, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pyepoll_modify.kwlist)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 192, align: 64, elements: !930)
!984 = !DIGlobalVariable(name: "pyepoll_modify_doc", scope: !0, file: !407, line: 1412, type: !985, isLocal: true, isDefinition: true, variable: [141 x i8]* @pyepoll_modify_doc)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1128, align: 8, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 141)
!988 = !DIGlobalVariable(name: "kwlist", scope: !838, file: !407, line: 1377, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pyepoll_register.kwlist)
!989 = !DIGlobalVariable(name: "pyepoll_register_doc", scope: !0, file: !407, line: 1387, type: !990, isLocal: true, isDefinition: true, variable: [339 x i8]* @pyepoll_register_doc)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2712, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 339)
!993 = !DIGlobalVariable(name: "kwlist", scope: !845, file: !407, line: 1422, type: !994, isLocal: true, isDefinition: true, variable: [2 x i8*]* @pyepoll_unregister.kwlist)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, align: 64, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 2)
!997 = !DIGlobalVariable(name: "pyepoll_unregister_doc", scope: !0, file: !407, line: 1432, type: !998, isLocal: true, isDefinition: true, variable: [75 x i8]* @pyepoll_unregister_doc)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 600, align: 8, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 75)
!1001 = !DIGlobalVariable(name: "kwlist", scope: !851, file: !407, line: 1446, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pyepoll_poll.kwlist)
!1002 = !DIGlobalVariable(name: "pyepoll_poll_doc", scope: !0, file: !407, line: 1513, type: !1003, isLocal: true, isDefinition: true, variable: [236 x i8]* @pyepoll_poll_doc)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1888, align: 8, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 236)
!1006 = !DIGlobalVariable(name: "PyId_close", scope: !884, file: !407, line: 1533, type: !1007, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @pyepoll_exit.PyId_close)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !34, line: 144, baseType: !1008)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !34, line: 140, size: 192, align: 64, elements: !1009)
!1009 = !{!1010, !1012, !1013}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !34, line: 141, baseType: !1011, size: 64, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1008, file: !34, line: 142, baseType: !56, size: 64, align: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1008, file: !34, line: 143, baseType: !32, size: 64, align: 64, offset: 128)
!1014 = !DIGlobalVariable(name: "pyepoll_getsetlist", scope: !0, file: !407, line: 1560, type: !1015, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @pyepoll_getsetlist)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 640, align: 64, elements: !995)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !328, line: 17, baseType: !327)
!1017 = !DIGlobalVariable(name: "kwlist", scope: !891, file: !407, line: 1247, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pyepoll_new.kwlist)
!1018 = !{i32 2, !"Dwarf Version", i32 4}
!1019 = !{i32 2, !"Debug Info Version", i32 3}
!1020 = !{i32 1, !"PIC Level", i32 2}
!1021 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1022 = !DILocation(line: 2298, column: 5, scope: !449)
!1023 = !DIExpression()
!1024 = !DILocation(line: 2298, column: 15, scope: !449)
!1025 = !DILocation(line: 2299, column: 9, scope: !449)
!1026 = !DILocation(line: 2299, column: 7, scope: !449)
!1027 = !{!1028, !1028, i64 0}
!1028 = !{!"any pointer", !1029, i64 0}
!1029 = !{!"omnipotent char", !1030, i64 0}
!1030 = !{!"Simple C/C++ TBAA"}
!1031 = !DILocation(line: 2300, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !449, file: !407, line: 2300, column: 9)
!1033 = !DILocation(line: 2300, column: 11, scope: !1032)
!1034 = !DILocation(line: 2300, column: 9, scope: !449)
!1035 = !DILocation(line: 2301, column: 9, scope: !1032)
!1036 = !DILocation(line: 2303, column: 21, scope: !449)
!1037 = !DILocation(line: 2303, column: 38, scope: !449)
!1038 = !DILocation(line: 2303, column: 47, scope: !449)
!1039 = !{!1040, !1041, i64 0}
!1040 = !{!"_object", !1041, i64 0, !1028, i64 8}
!1041 = !{!"long", !1029, i64 0}
!1042 = !DILocation(line: 2304, column: 24, scope: !449)
!1043 = !DILocation(line: 2304, column: 36, scope: !449)
!1044 = !DILocation(line: 2304, column: 5, scope: !449)
!1045 = !DILocation(line: 2311, column: 29, scope: !449)
!1046 = !DILocation(line: 2311, column: 5, scope: !449)
!1047 = !DILocation(line: 2324, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !407, line: 2324, column: 13)
!1049 = distinct !DILexicalBlock(scope: !449, file: !407, line: 2322, column: 5)
!1050 = !DILocation(line: 2324, column: 38, scope: !1048)
!1051 = !DILocation(line: 2324, column: 13, scope: !1049)
!1052 = !DILocation(line: 2325, column: 13, scope: !1048)
!1053 = !DILocation(line: 2326, column: 33, scope: !1049)
!1054 = !DILocation(line: 2326, column: 9, scope: !1049)
!1055 = !DILocation(line: 2327, column: 33, scope: !1049)
!1056 = !DILocation(line: 2327, column: 9, scope: !1049)
!1057 = !DILocation(line: 2328, column: 33, scope: !1049)
!1058 = !DILocation(line: 2328, column: 9, scope: !1049)
!1059 = !DILocation(line: 2329, column: 33, scope: !1049)
!1060 = !DILocation(line: 2329, column: 9, scope: !1049)
!1061 = !DILocation(line: 2330, column: 33, scope: !1049)
!1062 = !DILocation(line: 2330, column: 9, scope: !1049)
!1063 = !DILocation(line: 2331, column: 33, scope: !1049)
!1064 = !DILocation(line: 2331, column: 9, scope: !1049)
!1065 = !DILocation(line: 2334, column: 33, scope: !1049)
!1066 = !DILocation(line: 2334, column: 9, scope: !1049)
!1067 = !DILocation(line: 2337, column: 33, scope: !1049)
!1068 = !DILocation(line: 2337, column: 9, scope: !1049)
!1069 = !DILocation(line: 2340, column: 33, scope: !1049)
!1070 = !DILocation(line: 2340, column: 9, scope: !1049)
!1071 = !DILocation(line: 2343, column: 33, scope: !1049)
!1072 = !DILocation(line: 2343, column: 9, scope: !1049)
!1073 = !DILocation(line: 2346, column: 33, scope: !1049)
!1074 = !DILocation(line: 2346, column: 9, scope: !1049)
!1075 = !DILocation(line: 2357, column: 45, scope: !449)
!1076 = !{!1040, !1028, i64 8}
!1077 = !DILocation(line: 2358, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !449, file: !407, line: 2358, column: 9)
!1079 = !DILocation(line: 2358, column: 37, scope: !1078)
!1080 = !DILocation(line: 2358, column: 9, scope: !449)
!1081 = !DILocation(line: 2359, column: 9, scope: !1078)
!1082 = !DILocation(line: 2361, column: 47, scope: !449)
!1083 = !DILocation(line: 2362, column: 24, scope: !449)
!1084 = !DILocation(line: 2362, column: 5, scope: !449)
!1085 = !DILocation(line: 2364, column: 29, scope: !449)
!1086 = !DILocation(line: 2364, column: 5, scope: !449)
!1087 = !DILocation(line: 2365, column: 29, scope: !449)
!1088 = !DILocation(line: 2365, column: 5, scope: !449)
!1089 = !DILocation(line: 2366, column: 29, scope: !449)
!1090 = !DILocation(line: 2366, column: 5, scope: !449)
!1091 = !DILocation(line: 2367, column: 29, scope: !449)
!1092 = !DILocation(line: 2367, column: 5, scope: !449)
!1093 = !DILocation(line: 2368, column: 29, scope: !449)
!1094 = !DILocation(line: 2368, column: 5, scope: !449)
!1095 = !DILocation(line: 2369, column: 29, scope: !449)
!1096 = !DILocation(line: 2369, column: 5, scope: !449)
!1097 = !DILocation(line: 2372, column: 29, scope: !449)
!1098 = !DILocation(line: 2372, column: 5, scope: !449)
!1099 = !DILocation(line: 2375, column: 29, scope: !449)
!1100 = !DILocation(line: 2375, column: 5, scope: !449)
!1101 = !DILocation(line: 2376, column: 29, scope: !449)
!1102 = !DILocation(line: 2376, column: 5, scope: !449)
!1103 = !DILocation(line: 2377, column: 29, scope: !449)
!1104 = !DILocation(line: 2377, column: 5, scope: !449)
!1105 = !DILocation(line: 2378, column: 29, scope: !449)
!1106 = !DILocation(line: 2378, column: 5, scope: !449)
!1107 = !DILocation(line: 2379, column: 29, scope: !449)
!1108 = !DILocation(line: 2379, column: 5, scope: !449)
!1109 = !DILocation(line: 2382, column: 29, scope: !449)
!1110 = !DILocation(line: 2382, column: 5, scope: !449)
!1111 = !DILocation(line: 2458, column: 12, scope: !449)
!1112 = !DILocation(line: 2458, column: 5, scope: !449)
!1113 = !DILocation(line: 2459, column: 1, scope: !449)
!1114 = !DILocation(line: 179, column: 25, scope: !454)
!1115 = !DILocation(line: 179, column: 41, scope: !454)
!1116 = !DILocation(line: 190, column: 5, scope: !454)
!1117 = !DILocation(line: 190, column: 12, scope: !454)
!1118 = !DILocation(line: 191, column: 5, scope: !454)
!1119 = !DILocation(line: 191, column: 12, scope: !454)
!1120 = !DILocation(line: 192, column: 5, scope: !454)
!1121 = !DILocation(line: 192, column: 12, scope: !454)
!1122 = !DILocation(line: 194, column: 5, scope: !454)
!1123 = !DILocation(line: 194, column: 15, scope: !454)
!1124 = !DILocation(line: 194, column: 25, scope: !454)
!1125 = !DILocation(line: 194, column: 35, scope: !454)
!1126 = !DILocation(line: 195, column: 5, scope: !454)
!1127 = !DILocation(line: 195, column: 15, scope: !454)
!1128 = !DILocation(line: 196, column: 5, scope: !454)
!1129 = !DILocation(line: 196, column: 15, scope: !454)
!1130 = !DILocation(line: 197, column: 5, scope: !454)
!1131 = !DILocation(line: 197, column: 12, scope: !454)
!1132 = !DILocation(line: 197, column: 20, scope: !454)
!1133 = !DILocation(line: 197, column: 28, scope: !454)
!1134 = !DILocation(line: 198, column: 5, scope: !454)
!1135 = !DILocation(line: 198, column: 20, scope: !454)
!1136 = !DILocation(line: 198, column: 25, scope: !454)
!1137 = !DILocation(line: 199, column: 5, scope: !454)
!1138 = !DILocation(line: 199, column: 9, scope: !454)
!1139 = !DILocation(line: 199, column: 15, scope: !454)
!1140 = !DILocation(line: 199, column: 21, scope: !454)
!1141 = !DILocation(line: 199, column: 27, scope: !454)
!1142 = !DILocation(line: 200, column: 5, scope: !454)
!1143 = !DILocation(line: 200, column: 9, scope: !454)
!1144 = !DILocation(line: 203, column: 28, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !454, file: !407, line: 203, column: 9)
!1146 = !DILocation(line: 203, column: 10, scope: !1145)
!1147 = !DILocation(line: 203, column: 9, scope: !454)
!1148 = !DILocation(line: 205, column: 9, scope: !1145)
!1149 = !DILocation(line: 207, column: 9, scope: !495)
!1150 = !DILocation(line: 207, column: 14, scope: !495)
!1151 = !DILocation(line: 207, column: 9, scope: !454)
!1152 = !DILocation(line: 208, column: 13, scope: !495)
!1153 = !DILocation(line: 208, column: 9, scope: !495)
!1154 = !DILocation(line: 209, column: 30, scope: !494)
!1155 = !DILocation(line: 209, column: 15, scope: !494)
!1156 = !DILocation(line: 209, column: 14, scope: !495)
!1157 = !DILocation(line: 210, column: 25, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !494, file: !407, line: 209, column: 37)
!1159 = !DILocation(line: 210, column: 9, scope: !1158)
!1160 = !DILocation(line: 212, column: 9, scope: !1158)
!1161 = !DILocation(line: 217, column: 9, scope: !493)
!1162 = !DILocation(line: 217, column: 16, scope: !493)
!1163 = !DILocation(line: 220, column: 9, scope: !493)
!1164 = !DILocation(line: 220, column: 14, scope: !493)
!1165 = !DILocation(line: 221, column: 37, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !493, file: !407, line: 221, column: 13)
!1167 = !DILocation(line: 221, column: 13, scope: !1166)
!1168 = !DILocation(line: 222, column: 55, scope: !1166)
!1169 = !DILocation(line: 221, column: 13, scope: !493)
!1170 = !DILocation(line: 223, column: 13, scope: !1166)
!1171 = !DILocation(line: 238, column: 21, scope: !493)
!1172 = !{!1041, !1041, i64 0}
!1173 = !DILocation(line: 238, column: 12, scope: !493)
!1174 = !DILocation(line: 238, column: 19, scope: !493)
!1175 = !{!1176, !1041, i64 0}
!1176 = !{!"timeval", !1041, i64 0, !1041, i64 8}
!1177 = !DILocation(line: 240, column: 22, scope: !493)
!1178 = !DILocation(line: 240, column: 12, scope: !493)
!1179 = !DILocation(line: 240, column: 20, scope: !493)
!1180 = !{!1176, !1041, i64 8}
!1181 = !DILocation(line: 241, column: 16, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !493, file: !407, line: 241, column: 13)
!1183 = !DILocation(line: 241, column: 23, scope: !1182)
!1184 = !DILocation(line: 241, column: 13, scope: !493)
!1185 = !DILocation(line: 242, column: 29, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !407, line: 241, column: 28)
!1187 = !DILocation(line: 242, column: 13, scope: !1186)
!1188 = !DILocation(line: 243, column: 13, scope: !1186)
!1189 = !DILocation(line: 245, column: 13, scope: !493)
!1190 = !DILocation(line: 246, column: 5, scope: !494)
!1191 = !DILocation(line: 246, column: 5, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !494, file: !407, discriminator: 1)
!1193 = !DILocation(line: 264, column: 5, scope: !454)
!1194 = !DILocation(line: 264, column: 16, scope: !454)
!1195 = !DILocation(line: 264, column: 25, scope: !454)
!1196 = !{!1197, !1198, i64 12}
!1197 = !{!"", !1028, i64 0, !1198, i64 8, !1198, i64 12}
!1198 = !{!"int", !1029, i64 0}
!1199 = !DILocation(line: 265, column: 5, scope: !454)
!1200 = !DILocation(line: 265, column: 16, scope: !454)
!1201 = !DILocation(line: 265, column: 25, scope: !454)
!1202 = !DILocation(line: 266, column: 5, scope: !454)
!1203 = !DILocation(line: 266, column: 16, scope: !454)
!1204 = !DILocation(line: 266, column: 25, scope: !454)
!1205 = !DILocation(line: 267, column: 23, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !454, file: !407, line: 267, column: 9)
!1207 = !DILocation(line: 267, column: 41, scope: !1206)
!1208 = !DILocation(line: 267, column: 15, scope: !1206)
!1209 = !DILocation(line: 267, column: 14, scope: !1206)
!1210 = !{!1198, !1198, i64 0}
!1211 = !DILocation(line: 267, column: 51, scope: !1206)
!1212 = !DILocation(line: 267, column: 9, scope: !454)
!1213 = !DILocation(line: 268, column: 9, scope: !1206)
!1214 = !DILocation(line: 269, column: 23, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !454, file: !407, line: 269, column: 9)
!1216 = !DILocation(line: 269, column: 41, scope: !1215)
!1217 = !DILocation(line: 269, column: 15, scope: !1215)
!1218 = !DILocation(line: 269, column: 14, scope: !1215)
!1219 = !DILocation(line: 269, column: 51, scope: !1215)
!1220 = !DILocation(line: 269, column: 9, scope: !454)
!1221 = !DILocation(line: 270, column: 9, scope: !1215)
!1222 = !DILocation(line: 271, column: 23, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !454, file: !407, line: 271, column: 9)
!1224 = !DILocation(line: 271, column: 41, scope: !1223)
!1225 = !DILocation(line: 271, column: 15, scope: !1223)
!1226 = !DILocation(line: 271, column: 14, scope: !1223)
!1227 = !DILocation(line: 271, column: 51, scope: !1223)
!1228 = !DILocation(line: 271, column: 9, scope: !454)
!1229 = !DILocation(line: 272, column: 9, scope: !1223)
!1230 = !DILocation(line: 273, column: 11, scope: !454)
!1231 = !DILocation(line: 273, column: 9, scope: !454)
!1232 = !DILocation(line: 274, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !454, file: !407, line: 274, column: 9)
!1234 = !DILocation(line: 274, column: 16, scope: !1233)
!1235 = !DILocation(line: 274, column: 14, scope: !1233)
!1236 = !DILocation(line: 274, column: 9, scope: !454)
!1237 = !DILocation(line: 274, column: 27, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1233, file: !407, discriminator: 1)
!1239 = !DILocation(line: 274, column: 25, scope: !1233)
!1240 = !DILocation(line: 274, column: 21, scope: !1233)
!1241 = !DILocation(line: 275, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !454, file: !407, line: 275, column: 9)
!1243 = !DILocation(line: 275, column: 16, scope: !1242)
!1244 = !DILocation(line: 275, column: 14, scope: !1242)
!1245 = !DILocation(line: 275, column: 9, scope: !454)
!1246 = !DILocation(line: 275, column: 27, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1242, file: !407, discriminator: 1)
!1248 = !DILocation(line: 275, column: 25, scope: !1242)
!1249 = !DILocation(line: 275, column: 21, scope: !1242)
!1250 = !DILocation(line: 277, column: 7, scope: !500)
!1251 = !DILocation(line: 277, column: 22, scope: !500)
!1252 = !DILocation(line: 277, column: 37, scope: !500)
!1253 = !DILocation(line: 277, column: 35, scope: !500)
!1254 = !DILocation(line: 278, column: 16, scope: !500)
!1255 = !DILocation(line: 278, column: 48, scope: !500)
!1256 = !DILocation(line: 278, column: 9, scope: !500)
!1257 = !DILocation(line: 278, column: 7, scope: !500)
!1258 = !DILocation(line: 279, column: 26, scope: !500)
!1259 = !DILocation(line: 279, column: 5, scope: !500)
!1260 = !DILocation(line: 279, column: 34, scope: !454)
!1261 = !DILocation(line: 286, column: 9, scope: !562)
!1262 = !DILocation(line: 286, column: 11, scope: !562)
!1263 = !DILocation(line: 286, column: 9, scope: !454)
!1264 = !DILocation(line: 287, column: 28, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !562, file: !407, line: 286, column: 16)
!1266 = !DILocation(line: 287, column: 9, scope: !1265)
!1267 = !DILocation(line: 288, column: 5, scope: !1265)
!1268 = !DILocation(line: 295, column: 37, scope: !561)
!1269 = !DILocation(line: 295, column: 19, scope: !561)
!1270 = !DILocation(line: 295, column: 17, scope: !561)
!1271 = !DILocation(line: 296, column: 37, scope: !561)
!1272 = !DILocation(line: 296, column: 19, scope: !561)
!1273 = !DILocation(line: 296, column: 17, scope: !561)
!1274 = !DILocation(line: 297, column: 37, scope: !561)
!1275 = !DILocation(line: 297, column: 19, scope: !561)
!1276 = !DILocation(line: 297, column: 17, scope: !561)
!1277 = !DILocation(line: 298, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !561, file: !407, line: 298, column: 13)
!1279 = !DILocation(line: 298, column: 13, scope: !561)
!1280 = !DILocation(line: 299, column: 17, scope: !1278)
!1281 = !DILocation(line: 299, column: 13, scope: !1278)
!1282 = !DILocation(line: 301, column: 35, scope: !1278)
!1283 = !DILocation(line: 301, column: 44, scope: !1278)
!1284 = !DILocation(line: 301, column: 53, scope: !1278)
!1285 = !DILocation(line: 301, column: 19, scope: !1278)
!1286 = !DILocation(line: 301, column: 17, scope: !1278)
!1287 = !DILocation(line: 303, column: 9, scope: !561)
!1288 = !DILocation(line: 303, column: 14, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !560, file: !407, discriminator: 1)
!1290 = !DILocation(line: 303, column: 24, scope: !560)
!1291 = !DILocation(line: 303, column: 55, scope: !560)
!1292 = !DILocation(line: 303, column: 69, scope: !565)
!1293 = !DILocation(line: 303, column: 85, scope: !565)
!1294 = !DILocation(line: 303, column: 69, scope: !560)
!1295 = !DILocation(line: 303, column: 100, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !565, file: !407, discriminator: 2)
!1297 = !DILocation(line: 303, column: 105, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !564, file: !407, discriminator: 4)
!1299 = !DILocation(line: 303, column: 115, scope: !564)
!1300 = !DILocation(line: 303, column: 145, scope: !564)
!1301 = !DILocation(line: 303, column: 171, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !564, file: !407, line: 303, column: 168)
!1303 = !DILocation(line: 303, column: 188, scope: !1302)
!1304 = !DILocation(line: 303, column: 168, scope: !1302)
!1305 = !DILocation(line: 303, column: 198, scope: !1302)
!1306 = !DILocation(line: 303, column: 168, scope: !564)
!1307 = !DILocation(line: 303, column: 168, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !564, file: !407, discriminator: 5)
!1309 = !DILocation(line: 303, column: 229, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1302, file: !407, discriminator: 6)
!1311 = !DILocation(line: 303, column: 247, scope: !1302)
!1312 = !DILocation(line: 303, column: 257, scope: !1302)
!1313 = !{!1314, !1028, i64 48}
!1314 = !{!"_typeobject", !1315, i64 0, !1028, i64 24, !1041, i64 32, !1041, i64 40, !1028, i64 48, !1028, i64 56, !1028, i64 64, !1028, i64 72, !1028, i64 80, !1028, i64 88, !1028, i64 96, !1028, i64 104, !1028, i64 112, !1028, i64 120, !1028, i64 128, !1028, i64 136, !1028, i64 144, !1028, i64 152, !1028, i64 160, !1041, i64 168, !1028, i64 176, !1028, i64 184, !1028, i64 192, !1028, i64 200, !1041, i64 208, !1028, i64 216, !1028, i64 224, !1028, i64 232, !1028, i64 240, !1028, i64 248, !1028, i64 256, !1028, i64 264, !1028, i64 272, !1028, i64 280, !1041, i64 288, !1028, i64 296, !1028, i64 304, !1028, i64 312, !1028, i64 320, !1028, i64 328, !1028, i64 336, !1028, i64 344, !1028, i64 352, !1028, i64 360, !1028, i64 368, !1028, i64 376, !1198, i64 384, !1028, i64 392}
!1315 = !{!"", !1040, i64 0, !1041, i64 16}
!1316 = !DILocation(line: 303, column: 282, scope: !1302)
!1317 = !DILocation(line: 303, column: 213, scope: !1302)
!1318 = !DILocation(line: 303, column: 301, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !565, file: !407, discriminator: 7)
!1320 = !DILocation(line: 303, column: 301, scope: !564)
!1321 = !DILocation(line: 303, column: 301, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !564, file: !407, discriminator: 8)
!1323 = !DILocation(line: 303, column: 301, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !564, file: !407, discriminator: 9)
!1325 = !DILocation(line: 303, column: 314, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !407, discriminator: 10)
!1327 = !DILexicalBlockFile(scope: !561, file: !407, discriminator: 3)
!1328 = !DILocation(line: 303, column: 314, scope: !560)
!1329 = !DILocation(line: 303, column: 314, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !560, file: !407, discriminator: 11)
!1331 = !DILocation(line: 304, column: 9, scope: !561)
!1332 = !DILocation(line: 304, column: 14, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !567, file: !407, discriminator: 1)
!1334 = !DILocation(line: 304, column: 24, scope: !567)
!1335 = !DILocation(line: 304, column: 55, scope: !567)
!1336 = !DILocation(line: 304, column: 69, scope: !570)
!1337 = !DILocation(line: 304, column: 85, scope: !570)
!1338 = !DILocation(line: 304, column: 69, scope: !567)
!1339 = !DILocation(line: 304, column: 100, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !570, file: !407, discriminator: 2)
!1341 = !DILocation(line: 304, column: 105, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !569, file: !407, discriminator: 4)
!1343 = !DILocation(line: 304, column: 115, scope: !569)
!1344 = !DILocation(line: 304, column: 145, scope: !569)
!1345 = !DILocation(line: 304, column: 171, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !569, file: !407, line: 304, column: 168)
!1347 = !DILocation(line: 304, column: 188, scope: !1346)
!1348 = !DILocation(line: 304, column: 168, scope: !1346)
!1349 = !DILocation(line: 304, column: 198, scope: !1346)
!1350 = !DILocation(line: 304, column: 168, scope: !569)
!1351 = !DILocation(line: 304, column: 168, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !569, file: !407, discriminator: 5)
!1353 = !DILocation(line: 304, column: 229, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1346, file: !407, discriminator: 6)
!1355 = !DILocation(line: 304, column: 247, scope: !1346)
!1356 = !DILocation(line: 304, column: 257, scope: !1346)
!1357 = !DILocation(line: 304, column: 282, scope: !1346)
!1358 = !DILocation(line: 304, column: 213, scope: !1346)
!1359 = !DILocation(line: 304, column: 301, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !570, file: !407, discriminator: 7)
!1361 = !DILocation(line: 304, column: 301, scope: !569)
!1362 = !DILocation(line: 304, column: 301, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !569, file: !407, discriminator: 8)
!1364 = !DILocation(line: 304, column: 301, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !569, file: !407, discriminator: 9)
!1366 = !DILocation(line: 304, column: 314, scope: !1326)
!1367 = !DILocation(line: 304, column: 314, scope: !567)
!1368 = !DILocation(line: 304, column: 314, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !567, file: !407, discriminator: 11)
!1370 = !DILocation(line: 305, column: 9, scope: !561)
!1371 = !DILocation(line: 305, column: 14, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !572, file: !407, discriminator: 1)
!1373 = !DILocation(line: 305, column: 24, scope: !572)
!1374 = !DILocation(line: 305, column: 55, scope: !572)
!1375 = !DILocation(line: 305, column: 69, scope: !575)
!1376 = !DILocation(line: 305, column: 85, scope: !575)
!1377 = !DILocation(line: 305, column: 69, scope: !572)
!1378 = !DILocation(line: 305, column: 100, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !575, file: !407, discriminator: 2)
!1380 = !DILocation(line: 305, column: 105, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !574, file: !407, discriminator: 4)
!1382 = !DILocation(line: 305, column: 115, scope: !574)
!1383 = !DILocation(line: 305, column: 145, scope: !574)
!1384 = !DILocation(line: 305, column: 171, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !574, file: !407, line: 305, column: 168)
!1386 = !DILocation(line: 305, column: 188, scope: !1385)
!1387 = !DILocation(line: 305, column: 168, scope: !1385)
!1388 = !DILocation(line: 305, column: 198, scope: !1385)
!1389 = !DILocation(line: 305, column: 168, scope: !574)
!1390 = !DILocation(line: 305, column: 168, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !574, file: !407, discriminator: 5)
!1392 = !DILocation(line: 305, column: 229, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1385, file: !407, discriminator: 6)
!1394 = !DILocation(line: 305, column: 247, scope: !1385)
!1395 = !DILocation(line: 305, column: 257, scope: !1385)
!1396 = !DILocation(line: 305, column: 282, scope: !1385)
!1397 = !DILocation(line: 305, column: 213, scope: !1385)
!1398 = !DILocation(line: 305, column: 301, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !575, file: !407, discriminator: 7)
!1400 = !DILocation(line: 305, column: 301, scope: !574)
!1401 = !DILocation(line: 305, column: 301, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !574, file: !407, discriminator: 8)
!1403 = !DILocation(line: 305, column: 301, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !574, file: !407, discriminator: 9)
!1405 = !DILocation(line: 305, column: 314, scope: !1326)
!1406 = !DILocation(line: 305, column: 314, scope: !572)
!1407 = !DILocation(line: 305, column: 314, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !572, file: !407, discriminator: 11)
!1409 = !DILocation(line: 286, column: 13, scope: !562)
!1410 = !DILocation(line: 309, column: 14, scope: !454)
!1411 = !DILocation(line: 309, column: 5, scope: !454)
!1412 = !DILocation(line: 310, column: 14, scope: !454)
!1413 = !DILocation(line: 310, column: 5, scope: !454)
!1414 = !DILocation(line: 311, column: 14, scope: !454)
!1415 = !DILocation(line: 311, column: 5, scope: !454)
!1416 = !DILocation(line: 317, column: 12, scope: !454)
!1417 = !DILocation(line: 317, column: 5, scope: !454)
!1418 = !DILocation(line: 318, column: 1, scope: !454)
!1419 = !DILocation(line: 1110, column: 23, scope: !635)
!1420 = !DILocation(line: 1110, column: 39, scope: !635)
!1421 = !DILocation(line: 1112, column: 24, scope: !635)
!1422 = !DILocation(line: 1112, column: 12, scope: !635)
!1423 = !DILocation(line: 1112, column: 5, scope: !635)
!1424 = !DILocation(line: 79, column: 19, scope: !576)
!1425 = !DILocation(line: 79, column: 32, scope: !576)
!1426 = !DILocation(line: 79, column: 44, scope: !576)
!1427 = !DILocation(line: 81, column: 5, scope: !576)
!1428 = !DILocation(line: 81, column: 9, scope: !576)
!1429 = !DILocation(line: 82, column: 5, scope: !576)
!1430 = !DILocation(line: 82, column: 9, scope: !576)
!1431 = !DILocation(line: 83, column: 5, scope: !576)
!1432 = !DILocation(line: 83, column: 16, scope: !576)
!1433 = !DILocation(line: 84, column: 5, scope: !576)
!1434 = !DILocation(line: 84, column: 15, scope: !576)
!1435 = !DILocation(line: 85, column: 5, scope: !576)
!1436 = !DILocation(line: 85, column: 15, scope: !576)
!1437 = !DILocation(line: 87, column: 5, scope: !576)
!1438 = !DILocation(line: 87, column: 15, scope: !576)
!1439 = !DILocation(line: 87, column: 19, scope: !576)
!1440 = !{!1197, !1028, i64 0}
!1441 = !DILocation(line: 88, column: 5, scope: !576)
!1442 = !DILocation(line: 88, column: 10, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !591, file: !407, discriminator: 1)
!1444 = !DILocation(line: 88, column: 14, scope: !591)
!1445 = !DILocation(line: 88, column: 10, scope: !591)
!1446 = !DILocation(line: 88, column: 20, scope: !591)
!1447 = !DILocation(line: 88, column: 159, scope: !591)
!1448 = !DILocation(line: 88, column: 165, scope: !591)
!1449 = !DILocation(line: 88, column: 157, scope: !591)
!1450 = !DILocation(line: 88, column: 26, scope: !591)
!1451 = !{i32 283568}
!1452 = !DILocation(line: 88, column: 192, scope: !576)
!1453 = !DILocation(line: 88, column: 192, scope: !591)
!1454 = !DILocation(line: 88, column: 192, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !591, file: !407, discriminator: 2)
!1456 = !DILocation(line: 90, column: 32, scope: !576)
!1457 = !DILocation(line: 90, column: 16, scope: !576)
!1458 = !DILocation(line: 90, column: 14, scope: !576)
!1459 = !DILocation(line: 91, column: 10, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !576, file: !407, line: 91, column: 9)
!1461 = !DILocation(line: 91, column: 9, scope: !576)
!1462 = !DILocation(line: 92, column: 9, scope: !1460)
!1463 = !DILocation(line: 94, column: 12, scope: !596)
!1464 = !DILocation(line: 94, column: 10, scope: !596)
!1465 = !DILocation(line: 94, column: 17, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !407, discriminator: 6)
!1467 = !DILexicalBlockFile(scope: !595, file: !407, discriminator: 1)
!1468 = !DILocation(line: 94, column: 39, scope: !595)
!1469 = !DILocation(line: 94, column: 51, scope: !595)
!1470 = !DILocation(line: 94, column: 62, scope: !595)
!1471 = !{!1314, !1041, i64 168}
!1472 = !DILocation(line: 94, column: 71, scope: !595)
!1473 = !DILocation(line: 94, column: 88, scope: !595)
!1474 = !DILocation(line: 94, column: 22, scope: !595)
!1475 = !DILocation(line: 94, column: 113, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !595, file: !407, discriminator: 2)
!1477 = !DILocation(line: 94, column: 98, scope: !595)
!1478 = !DILocation(line: 94, column: 125, scope: !595)
!1479 = !{!1315, !1041, i64 16}
!1480 = !DILocation(line: 94, column: 153, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !595, file: !407, discriminator: 3)
!1482 = !DILocation(line: 94, column: 138, scope: !595)
!1483 = !DILocation(line: 94, column: 165, scope: !595)
!1484 = !DILocation(line: 94, column: 19, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !407, discriminator: 5)
!1486 = !DILexicalBlockFile(scope: !595, file: !407, discriminator: 4)
!1487 = !DILocation(line: 94, column: 5, scope: !596)
!1488 = !DILocation(line: 95, column: 9, scope: !594)
!1489 = !DILocation(line: 95, column: 13, scope: !594)
!1490 = !DILocation(line: 98, column: 37, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !594, file: !407, line: 98, column: 13)
!1492 = !DILocation(line: 98, column: 49, scope: !1491)
!1493 = !DILocation(line: 98, column: 60, scope: !1491)
!1494 = !DILocation(line: 98, column: 69, scope: !1491)
!1495 = !DILocation(line: 98, column: 86, scope: !1491)
!1496 = !DILocation(line: 98, column: 20, scope: !1491)
!1497 = !DILocation(line: 98, column: 133, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1491, file: !407, discriminator: 1)
!1499 = !DILocation(line: 98, column: 113, scope: !1491)
!1500 = !DILocation(line: 98, column: 96, scope: !1491)
!1501 = !DILocation(line: 98, column: 125, scope: !1491)
!1502 = !{!1503, !1028, i64 24}
!1503 = !{!"", !1315, i64 0, !1028, i64 24, !1041, i64 32}
!1504 = !DILocation(line: 98, column: 95, scope: !1491)
!1505 = !DILocation(line: 98, column: 179, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1491, file: !407, discriminator: 2)
!1507 = !DILocation(line: 98, column: 159, scope: !1491)
!1508 = !DILocation(line: 98, column: 141, scope: !1491)
!1509 = !DILocation(line: 98, column: 171, scope: !1491)
!1510 = !DILocation(line: 98, column: 140, scope: !1491)
!1511 = !DILocation(line: 98, column: 17, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !407, discriminator: 4)
!1513 = !DILexicalBlockFile(scope: !1491, file: !407, discriminator: 3)
!1514 = !DILocation(line: 98, column: 13, scope: !594)
!1515 = !DILocation(line: 99, column: 13, scope: !1491)
!1516 = !DILocation(line: 101, column: 25, scope: !594)
!1517 = !DILocation(line: 101, column: 30, scope: !594)
!1518 = !DILocation(line: 101, column: 39, scope: !594)
!1519 = !DILocation(line: 102, column: 40, scope: !594)
!1520 = !DILocation(line: 102, column: 13, scope: !594)
!1521 = !DILocation(line: 102, column: 11, scope: !594)
!1522 = !DILocation(line: 103, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !594, file: !407, line: 103, column: 13)
!1524 = !DILocation(line: 103, column: 15, scope: !1523)
!1525 = !DILocation(line: 103, column: 13, scope: !594)
!1526 = !DILocation(line: 103, column: 22, scope: !1523)
!1527 = !DILocation(line: 108, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !594, file: !407, line: 108, column: 13)
!1529 = !DILocation(line: 108, column: 20, scope: !1528)
!1530 = !DILocation(line: 108, column: 26, scope: !1528)
!1531 = !DILocation(line: 108, column: 31, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1528, file: !407, discriminator: 1)
!1533 = !DILocation(line: 108, column: 34, scope: !1528)
!1534 = !DILocation(line: 108, column: 13, scope: !594)
!1535 = !DILocation(line: 109, column: 29, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !407, line: 108, column: 44)
!1537 = !DILocation(line: 109, column: 13, scope: !1536)
!1538 = !DILocation(line: 111, column: 13, scope: !1536)
!1539 = !DILocation(line: 113, column: 13, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !594, file: !407, line: 113, column: 13)
!1541 = !DILocation(line: 113, column: 17, scope: !1540)
!1542 = !DILocation(line: 113, column: 15, scope: !1540)
!1543 = !DILocation(line: 113, column: 13, scope: !594)
!1544 = !DILocation(line: 114, column: 19, scope: !1540)
!1545 = !DILocation(line: 114, column: 17, scope: !1540)
!1546 = !DILocation(line: 114, column: 13, scope: !1540)
!1547 = !DILocation(line: 116, column: 99, scope: !594)
!1548 = !DILocation(line: 116, column: 102, scope: !594)
!1549 = !DILocation(line: 116, column: 94, scope: !594)
!1550 = !DILocation(line: 116, column: 38, scope: !594)
!1551 = !DILocation(line: 116, column: 41, scope: !594)
!1552 = !DILocation(line: 116, column: 18, scope: !594)
!1553 = !DILocation(line: 116, column: 20, scope: !594)
!1554 = !DILocation(line: 116, column: 26, scope: !594)
!1555 = !DILocation(line: 116, column: 76, scope: !594)
!1556 = !DILocation(line: 119, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !594, file: !407, line: 119, column: 13)
!1558 = !DILocation(line: 119, column: 19, scope: !1557)
!1559 = !DILocation(line: 119, column: 13, scope: !594)
!1560 = !DILocation(line: 120, column: 29, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !407, line: 119, column: 28)
!1562 = !DILocation(line: 120, column: 13, scope: !1561)
!1563 = !DILocation(line: 122, column: 13, scope: !1561)
!1564 = !DILocation(line: 124, column: 29, scope: !594)
!1565 = !DILocation(line: 124, column: 16, scope: !594)
!1566 = !DILocation(line: 124, column: 9, scope: !594)
!1567 = !DILocation(line: 124, column: 23, scope: !594)
!1568 = !DILocation(line: 124, column: 27, scope: !594)
!1569 = !DILocation(line: 125, column: 28, scope: !594)
!1570 = !DILocation(line: 125, column: 16, scope: !594)
!1571 = !DILocation(line: 125, column: 9, scope: !594)
!1572 = !DILocation(line: 125, column: 23, scope: !594)
!1573 = !DILocation(line: 125, column: 26, scope: !594)
!1574 = !{!1197, !1198, i64 8}
!1575 = !DILocation(line: 126, column: 16, scope: !594)
!1576 = !DILocation(line: 126, column: 9, scope: !594)
!1577 = !DILocation(line: 126, column: 23, scope: !594)
!1578 = !DILocation(line: 126, column: 32, scope: !594)
!1579 = !DILocation(line: 127, column: 16, scope: !594)
!1580 = !DILocation(line: 127, column: 9, scope: !594)
!1581 = !DILocation(line: 127, column: 25, scope: !594)
!1582 = !DILocation(line: 127, column: 34, scope: !594)
!1583 = !DILocation(line: 128, column: 5, scope: !595)
!1584 = !DILocation(line: 128, column: 5, scope: !1467)
!1585 = !DILocation(line: 128, column: 5, scope: !594)
!1586 = !DILocation(line: 94, column: 177, scope: !595)
!1587 = !DILocation(line: 94, column: 5, scope: !595)
!1588 = !DILocation(line: 129, column: 5, scope: !576)
!1589 = !DILocation(line: 129, column: 10, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !598, file: !407, discriminator: 1)
!1591 = !DILocation(line: 129, column: 20, scope: !598)
!1592 = !DILocation(line: 129, column: 50, scope: !598)
!1593 = !DILocation(line: 129, column: 69, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !598, file: !407, line: 129, column: 66)
!1595 = !DILocation(line: 129, column: 86, scope: !1594)
!1596 = !DILocation(line: 129, column: 66, scope: !1594)
!1597 = !DILocation(line: 129, column: 96, scope: !1594)
!1598 = !DILocation(line: 129, column: 66, scope: !598)
!1599 = !DILocation(line: 129, column: 66, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !598, file: !407, discriminator: 2)
!1601 = !DILocation(line: 129, column: 127, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1594, file: !407, discriminator: 3)
!1603 = !DILocation(line: 129, column: 145, scope: !1594)
!1604 = !DILocation(line: 129, column: 155, scope: !1594)
!1605 = !DILocation(line: 129, column: 180, scope: !1594)
!1606 = !DILocation(line: 129, column: 111, scope: !1594)
!1607 = !DILocation(line: 129, column: 199, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !576, file: !407, discriminator: 4)
!1609 = !DILocation(line: 129, column: 199, scope: !598)
!1610 = !DILocation(line: 129, column: 199, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !598, file: !407, discriminator: 5)
!1612 = !DILocation(line: 130, column: 12, scope: !576)
!1613 = !DILocation(line: 130, column: 15, scope: !576)
!1614 = !DILocation(line: 130, column: 5, scope: !576)
!1615 = !DILocation(line: 133, column: 5, scope: !576)
!1616 = !DILocation(line: 133, column: 10, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !600, file: !407, discriminator: 1)
!1618 = !DILocation(line: 133, column: 20, scope: !600)
!1619 = !DILocation(line: 133, column: 51, scope: !600)
!1620 = !DILocation(line: 133, column: 59, scope: !603)
!1621 = !DILocation(line: 133, column: 75, scope: !603)
!1622 = !DILocation(line: 133, column: 59, scope: !600)
!1623 = !DILocation(line: 133, column: 90, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !603, file: !407, discriminator: 2)
!1625 = !DILocation(line: 133, column: 95, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !602, file: !407, discriminator: 4)
!1627 = !DILocation(line: 133, column: 105, scope: !602)
!1628 = !DILocation(line: 133, column: 135, scope: !602)
!1629 = !DILocation(line: 133, column: 161, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !602, file: !407, line: 133, column: 158)
!1631 = !DILocation(line: 133, column: 178, scope: !1630)
!1632 = !DILocation(line: 133, column: 158, scope: !1630)
!1633 = !DILocation(line: 133, column: 188, scope: !1630)
!1634 = !DILocation(line: 133, column: 158, scope: !602)
!1635 = !DILocation(line: 133, column: 158, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !602, file: !407, discriminator: 5)
!1637 = !DILocation(line: 133, column: 219, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1630, file: !407, discriminator: 6)
!1639 = !DILocation(line: 133, column: 237, scope: !1630)
!1640 = !DILocation(line: 133, column: 247, scope: !1630)
!1641 = !DILocation(line: 133, column: 272, scope: !1630)
!1642 = !DILocation(line: 133, column: 203, scope: !1630)
!1643 = !DILocation(line: 133, column: 291, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !603, file: !407, discriminator: 7)
!1645 = !DILocation(line: 133, column: 291, scope: !602)
!1646 = !DILocation(line: 133, column: 291, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !602, file: !407, discriminator: 8)
!1648 = !DILocation(line: 133, column: 291, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !602, file: !407, discriminator: 9)
!1650 = !DILocation(line: 133, column: 304, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !407, discriminator: 10)
!1652 = !DILexicalBlockFile(scope: !576, file: !407, discriminator: 3)
!1653 = !DILocation(line: 133, column: 304, scope: !600)
!1654 = !DILocation(line: 133, column: 304, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !600, file: !407, discriminator: 11)
!1656 = !DILocation(line: 134, column: 5, scope: !576)
!1657 = !DILocation(line: 134, column: 10, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !605, file: !407, discriminator: 1)
!1659 = !DILocation(line: 134, column: 20, scope: !605)
!1660 = !DILocation(line: 134, column: 50, scope: !605)
!1661 = !DILocation(line: 134, column: 69, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !605, file: !407, line: 134, column: 66)
!1663 = !DILocation(line: 134, column: 86, scope: !1662)
!1664 = !DILocation(line: 134, column: 66, scope: !1662)
!1665 = !DILocation(line: 134, column: 96, scope: !1662)
!1666 = !DILocation(line: 134, column: 66, scope: !605)
!1667 = !DILocation(line: 134, column: 66, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !605, file: !407, discriminator: 2)
!1669 = !DILocation(line: 134, column: 127, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1662, file: !407, discriminator: 3)
!1671 = !DILocation(line: 134, column: 145, scope: !1662)
!1672 = !DILocation(line: 134, column: 155, scope: !1662)
!1673 = !DILocation(line: 134, column: 180, scope: !1662)
!1674 = !DILocation(line: 134, column: 111, scope: !1662)
!1675 = !DILocation(line: 134, column: 199, scope: !1608)
!1676 = !DILocation(line: 134, column: 199, scope: !605)
!1677 = !DILocation(line: 134, column: 199, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !605, file: !407, discriminator: 5)
!1679 = !DILocation(line: 135, column: 5, scope: !576)
!1680 = !DILocation(line: 136, column: 1, scope: !576)
!1681 = !DILocation(line: 140, column: 18, scope: !606)
!1682 = !DILocation(line: 140, column: 30, scope: !606)
!1683 = !DILocation(line: 142, column: 5, scope: !606)
!1684 = !DILocation(line: 142, column: 9, scope: !606)
!1685 = !DILocation(line: 142, column: 12, scope: !606)
!1686 = !DILocation(line: 142, column: 15, scope: !606)
!1687 = !DILocation(line: 143, column: 5, scope: !606)
!1688 = !DILocation(line: 143, column: 15, scope: !606)
!1689 = !DILocation(line: 143, column: 22, scope: !606)
!1690 = !DILocation(line: 144, column: 5, scope: !606)
!1691 = !DILocation(line: 144, column: 9, scope: !606)
!1692 = !DILocation(line: 146, column: 12, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !606, file: !407, line: 146, column: 5)
!1694 = !DILocation(line: 146, column: 10, scope: !1693)
!1695 = !DILocation(line: 146, column: 24, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !407, discriminator: 2)
!1697 = !DILexicalBlockFile(scope: !1698, file: !407, discriminator: 1)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !407, line: 146, column: 5)
!1699 = !DILocation(line: 146, column: 17, scope: !1698)
!1700 = !DILocation(line: 146, column: 27, scope: !1698)
!1701 = !DILocation(line: 146, column: 36, scope: !1698)
!1702 = !DILocation(line: 146, column: 5, scope: !1693)
!1703 = !DILocation(line: 147, column: 42, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !407, line: 147, column: 13)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !407, line: 146, column: 47)
!1706 = !DILocation(line: 147, column: 35, scope: !1704)
!1707 = !DILocation(line: 147, column: 45, scope: !1704)
!1708 = !DILocation(line: 147, column: 49, scope: !1704)
!1709 = !DILocation(line: 147, column: 15, scope: !1704)
!1710 = !DILocation(line: 147, column: 17, scope: !1704)
!1711 = !DILocation(line: 147, column: 23, scope: !1704)
!1712 = !DILocation(line: 147, column: 113, scope: !1704)
!1713 = !DILocation(line: 147, column: 106, scope: !1704)
!1714 = !DILocation(line: 147, column: 116, scope: !1704)
!1715 = !DILocation(line: 147, column: 120, scope: !1704)
!1716 = !DILocation(line: 147, column: 101, scope: !1704)
!1717 = !DILocation(line: 147, column: 84, scope: !1704)
!1718 = !DILocation(line: 147, column: 156, scope: !1704)
!1719 = !DILocation(line: 147, column: 13, scope: !1705)
!1720 = !DILocation(line: 148, column: 18, scope: !1704)
!1721 = !DILocation(line: 148, column: 13, scope: !1704)
!1722 = !DILocation(line: 149, column: 5, scope: !1705)
!1723 = !DILocation(line: 146, column: 43, scope: !1698)
!1724 = !DILocation(line: 146, column: 5, scope: !1698)
!1725 = !DILocation(line: 150, column: 23, scope: !606)
!1726 = !DILocation(line: 150, column: 12, scope: !606)
!1727 = !DILocation(line: 150, column: 10, scope: !606)
!1728 = !DILocation(line: 151, column: 10, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !606, file: !407, line: 151, column: 9)
!1730 = !DILocation(line: 151, column: 9, scope: !606)
!1731 = !DILocation(line: 152, column: 9, scope: !1729)
!1732 = !DILocation(line: 154, column: 7, scope: !606)
!1733 = !DILocation(line: 155, column: 12, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !606, file: !407, line: 155, column: 5)
!1735 = !DILocation(line: 155, column: 10, scope: !1734)
!1736 = !DILocation(line: 155, column: 24, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !407, discriminator: 2)
!1738 = !DILexicalBlockFile(scope: !1739, file: !407, discriminator: 1)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !407, line: 155, column: 5)
!1740 = !DILocation(line: 155, column: 17, scope: !1739)
!1741 = !DILocation(line: 155, column: 27, scope: !1739)
!1742 = !DILocation(line: 155, column: 36, scope: !1739)
!1743 = !DILocation(line: 155, column: 5, scope: !1734)
!1744 = !DILocation(line: 156, column: 21, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !407, line: 155, column: 47)
!1746 = !DILocation(line: 156, column: 14, scope: !1745)
!1747 = !DILocation(line: 156, column: 24, scope: !1745)
!1748 = !DILocation(line: 156, column: 12, scope: !1745)
!1749 = !DILocation(line: 157, column: 35, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !407, line: 157, column: 13)
!1751 = !DILocation(line: 157, column: 39, scope: !1750)
!1752 = !DILocation(line: 157, column: 15, scope: !1750)
!1753 = !DILocation(line: 157, column: 17, scope: !1750)
!1754 = !DILocation(line: 157, column: 23, scope: !1750)
!1755 = !DILocation(line: 157, column: 96, scope: !1750)
!1756 = !DILocation(line: 157, column: 100, scope: !1750)
!1757 = !DILocation(line: 157, column: 91, scope: !1750)
!1758 = !DILocation(line: 157, column: 74, scope: !1750)
!1759 = !DILocation(line: 157, column: 136, scope: !1750)
!1760 = !DILocation(line: 157, column: 13, scope: !1745)
!1761 = !DILocation(line: 158, column: 24, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1750, file: !407, line: 157, column: 143)
!1763 = !DILocation(line: 158, column: 17, scope: !1762)
!1764 = !DILocation(line: 158, column: 27, scope: !1762)
!1765 = !DILocation(line: 158, column: 15, scope: !1762)
!1766 = !DILocation(line: 159, column: 20, scope: !1762)
!1767 = !DILocation(line: 159, column: 13, scope: !1762)
!1768 = !DILocation(line: 159, column: 23, scope: !1762)
!1769 = !DILocation(line: 159, column: 27, scope: !1762)
!1770 = !DILocation(line: 161, column: 32, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1762, file: !407, line: 161, column: 17)
!1772 = !DILocation(line: 161, column: 38, scope: !1771)
!1773 = !DILocation(line: 161, column: 41, scope: !1771)
!1774 = !DILocation(line: 161, column: 17, scope: !1771)
!1775 = !DILocation(line: 161, column: 44, scope: !1771)
!1776 = !DILocation(line: 161, column: 17, scope: !1762)
!1777 = !DILocation(line: 162, column: 17, scope: !1771)
!1778 = !DILocation(line: 164, column: 14, scope: !1762)
!1779 = !DILocation(line: 165, column: 9, scope: !1762)
!1780 = !DILocation(line: 166, column: 5, scope: !1745)
!1781 = !DILocation(line: 155, column: 43, scope: !1739)
!1782 = !DILocation(line: 155, column: 5, scope: !1739)
!1783 = !DILocation(line: 167, column: 12, scope: !606)
!1784 = !DILocation(line: 167, column: 5, scope: !606)
!1785 = !DILocation(line: 169, column: 5, scope: !606)
!1786 = !DILocation(line: 169, column: 10, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !619, file: !407, discriminator: 1)
!1788 = !DILocation(line: 169, column: 20, scope: !619)
!1789 = !DILocation(line: 169, column: 50, scope: !619)
!1790 = !DILocation(line: 169, column: 65, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !619, file: !407, line: 169, column: 62)
!1792 = !DILocation(line: 169, column: 82, scope: !1791)
!1793 = !DILocation(line: 169, column: 62, scope: !1791)
!1794 = !DILocation(line: 169, column: 92, scope: !1791)
!1795 = !DILocation(line: 169, column: 62, scope: !619)
!1796 = !DILocation(line: 169, column: 62, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !619, file: !407, discriminator: 2)
!1798 = !DILocation(line: 169, column: 123, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1791, file: !407, discriminator: 3)
!1800 = !DILocation(line: 169, column: 141, scope: !1791)
!1801 = !DILocation(line: 169, column: 151, scope: !1791)
!1802 = !DILocation(line: 169, column: 176, scope: !1791)
!1803 = !DILocation(line: 169, column: 107, scope: !1791)
!1804 = !DILocation(line: 169, column: 195, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !606, file: !407, discriminator: 4)
!1806 = !DILocation(line: 169, column: 195, scope: !619)
!1807 = !DILocation(line: 169, column: 195, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !619, file: !407, discriminator: 5)
!1809 = !DILocation(line: 170, column: 5, scope: !606)
!1810 = !DILocation(line: 171, column: 1, scope: !606)
!1811 = !DILocation(line: 65, column: 17, scope: !620)
!1812 = !DILocation(line: 67, column: 5, scope: !620)
!1813 = !DILocation(line: 67, column: 9, scope: !620)
!1814 = !DILocation(line: 68, column: 12, scope: !630)
!1815 = !DILocation(line: 68, column: 10, scope: !630)
!1816 = !DILocation(line: 68, column: 17, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !407, discriminator: 4)
!1818 = !DILexicalBlockFile(scope: !629, file: !407, discriminator: 1)
!1819 = !DILocation(line: 68, column: 19, scope: !629)
!1820 = !DILocation(line: 68, column: 30, scope: !629)
!1821 = !DILocation(line: 68, column: 40, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !629, file: !407, discriminator: 2)
!1823 = !DILocation(line: 68, column: 33, scope: !629)
!1824 = !DILocation(line: 68, column: 43, scope: !629)
!1825 = !DILocation(line: 68, column: 52, scope: !629)
!1826 = !DILocation(line: 68, column: 5, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !630, file: !407, discriminator: 3)
!1828 = !DILocation(line: 69, column: 9, scope: !628)
!1829 = !DILocation(line: 69, column: 14, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !627, file: !407, discriminator: 1)
!1831 = !DILocation(line: 69, column: 24, scope: !627)
!1832 = !DILocation(line: 69, column: 54, scope: !627)
!1833 = !DILocation(line: 69, column: 47, scope: !627)
!1834 = !DILocation(line: 69, column: 57, scope: !627)
!1835 = !DILocation(line: 69, column: 67, scope: !634)
!1836 = !DILocation(line: 69, column: 75, scope: !634)
!1837 = !DILocation(line: 69, column: 67, scope: !627)
!1838 = !DILocation(line: 69, column: 100, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !633, file: !407, discriminator: 2)
!1840 = !DILocation(line: 69, column: 93, scope: !633)
!1841 = !DILocation(line: 69, column: 103, scope: !633)
!1842 = !DILocation(line: 69, column: 108, scope: !633)
!1843 = !DILocation(line: 69, column: 122, scope: !633)
!1844 = !DILocation(line: 69, column: 127, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !632, file: !407, discriminator: 4)
!1846 = !DILocation(line: 69, column: 137, scope: !632)
!1847 = !DILocation(line: 69, column: 167, scope: !632)
!1848 = !DILocation(line: 69, column: 185, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !632, file: !407, line: 69, column: 182)
!1850 = !DILocation(line: 69, column: 202, scope: !1849)
!1851 = !DILocation(line: 69, column: 182, scope: !1849)
!1852 = !DILocation(line: 69, column: 212, scope: !1849)
!1853 = !DILocation(line: 69, column: 182, scope: !632)
!1854 = !DILocation(line: 69, column: 182, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !632, file: !407, discriminator: 5)
!1856 = !DILocation(line: 69, column: 243, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1849, file: !407, discriminator: 6)
!1858 = !DILocation(line: 69, column: 261, scope: !1849)
!1859 = !DILocation(line: 69, column: 271, scope: !1849)
!1860 = !DILocation(line: 69, column: 296, scope: !1849)
!1861 = !DILocation(line: 69, column: 227, scope: !1849)
!1862 = !DILocation(line: 69, column: 315, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !633, file: !407, discriminator: 7)
!1864 = !DILocation(line: 69, column: 315, scope: !632)
!1865 = !DILocation(line: 69, column: 315, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !632, file: !407, discriminator: 8)
!1867 = !DILocation(line: 69, column: 328, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !633, file: !407, discriminator: 9)
!1869 = !DILocation(line: 69, column: 330, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !407, discriminator: 10)
!1871 = !DILexicalBlockFile(scope: !628, file: !407, discriminator: 3)
!1872 = !DILocation(line: 69, column: 330, scope: !627)
!1873 = !DILocation(line: 69, column: 330, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !627, file: !407, discriminator: 11)
!1875 = !DILocation(line: 70, column: 5, scope: !628)
!1876 = !DILocation(line: 68, column: 59, scope: !629)
!1877 = !DILocation(line: 68, column: 5, scope: !629)
!1878 = !DILocation(line: 71, column: 5, scope: !620)
!1879 = !DILocation(line: 71, column: 15, scope: !620)
!1880 = !DILocation(line: 71, column: 24, scope: !620)
!1881 = !DILocation(line: 72, column: 1, scope: !620)
!1882 = !DILocation(line: 634, column: 5, scope: !639)
!1883 = !DILocation(line: 634, column: 17, scope: !639)
!1884 = !DILocation(line: 635, column: 29, scope: !639)
!1885 = !DILocation(line: 635, column: 14, scope: !639)
!1886 = !DILocation(line: 635, column: 10, scope: !639)
!1887 = !DILocation(line: 636, column: 9, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !639, file: !407, line: 636, column: 9)
!1889 = !DILocation(line: 636, column: 14, scope: !1888)
!1890 = !DILocation(line: 636, column: 9, scope: !639)
!1891 = !DILocation(line: 637, column: 9, scope: !1888)
!1892 = !DILocation(line: 640, column: 5, scope: !639)
!1893 = !DILocation(line: 640, column: 11, scope: !639)
!1894 = !DILocation(line: 640, column: 24, scope: !639)
!1895 = !{!1896, !1198, i64 24}
!1896 = !{!"", !1040, i64 0, !1028, i64 16, !1198, i64 24, !1198, i64 28, !1028, i64 32, !1198, i64 40}
!1897 = !DILocation(line: 641, column: 5, scope: !639)
!1898 = !DILocation(line: 641, column: 11, scope: !639)
!1899 = !DILocation(line: 641, column: 16, scope: !639)
!1900 = !{!1896, !1028, i64 32}
!1901 = !DILocation(line: 642, column: 5, scope: !639)
!1902 = !DILocation(line: 642, column: 11, scope: !639)
!1903 = !DILocation(line: 642, column: 24, scope: !639)
!1904 = !{!1896, !1198, i64 40}
!1905 = !DILocation(line: 643, column: 18, scope: !639)
!1906 = !DILocation(line: 643, column: 5, scope: !639)
!1907 = !DILocation(line: 643, column: 11, scope: !639)
!1908 = !DILocation(line: 643, column: 16, scope: !639)
!1909 = !{!1896, !1028, i64 16}
!1910 = !DILocation(line: 644, column: 9, scope: !647)
!1911 = !DILocation(line: 644, column: 15, scope: !647)
!1912 = !DILocation(line: 644, column: 20, scope: !647)
!1913 = !DILocation(line: 644, column: 9, scope: !639)
!1914 = !DILocation(line: 645, column: 9, scope: !646)
!1915 = !DILocation(line: 645, column: 14, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !645, file: !407, discriminator: 1)
!1917 = !DILocation(line: 645, column: 24, scope: !645)
!1918 = !DILocation(line: 645, column: 54, scope: !645)
!1919 = !DILocation(line: 645, column: 41, scope: !645)
!1920 = !DILocation(line: 645, column: 69, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !645, file: !407, line: 645, column: 66)
!1922 = !DILocation(line: 645, column: 86, scope: !1921)
!1923 = !DILocation(line: 645, column: 66, scope: !1921)
!1924 = !DILocation(line: 645, column: 96, scope: !1921)
!1925 = !DILocation(line: 645, column: 66, scope: !645)
!1926 = !DILocation(line: 645, column: 66, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !645, file: !407, discriminator: 2)
!1928 = !DILocation(line: 645, column: 127, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1921, file: !407, discriminator: 3)
!1930 = !DILocation(line: 645, column: 145, scope: !1921)
!1931 = !DILocation(line: 645, column: 155, scope: !1921)
!1932 = !DILocation(line: 645, column: 180, scope: !1921)
!1933 = !DILocation(line: 645, column: 111, scope: !1921)
!1934 = !DILocation(line: 645, column: 199, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !646, file: !407, discriminator: 4)
!1936 = !DILocation(line: 645, column: 199, scope: !645)
!1937 = !DILocation(line: 645, column: 199, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !645, file: !407, discriminator: 5)
!1939 = !DILocation(line: 646, column: 9, scope: !646)
!1940 = !DILocation(line: 648, column: 12, scope: !639)
!1941 = !DILocation(line: 648, column: 5, scope: !639)
!1942 = !DILocation(line: 649, column: 1, scope: !639)
!1943 = !DILocation(line: 652, column: 26, scope: !648)
!1944 = !DILocation(line: 654, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !648, file: !407, line: 654, column: 9)
!1946 = !DILocation(line: 654, column: 15, scope: !1945)
!1947 = !DILocation(line: 654, column: 20, scope: !1945)
!1948 = !DILocation(line: 654, column: 9, scope: !648)
!1949 = !DILocation(line: 655, column: 20, scope: !1945)
!1950 = !DILocation(line: 655, column: 26, scope: !1945)
!1951 = !DILocation(line: 655, column: 9, scope: !1945)
!1952 = !DILocation(line: 656, column: 5, scope: !648)
!1953 = !DILocation(line: 656, column: 10, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !654, file: !407, discriminator: 1)
!1955 = !DILocation(line: 656, column: 20, scope: !654)
!1956 = !DILocation(line: 656, column: 51, scope: !654)
!1957 = !DILocation(line: 656, column: 57, scope: !654)
!1958 = !DILocation(line: 656, column: 68, scope: !657)
!1959 = !DILocation(line: 656, column: 84, scope: !657)
!1960 = !DILocation(line: 656, column: 68, scope: !654)
!1961 = !DILocation(line: 656, column: 99, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !657, file: !407, discriminator: 2)
!1963 = !DILocation(line: 656, column: 104, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !656, file: !407, discriminator: 4)
!1965 = !DILocation(line: 656, column: 114, scope: !656)
!1966 = !DILocation(line: 656, column: 144, scope: !656)
!1967 = !DILocation(line: 656, column: 170, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !656, file: !407, line: 656, column: 167)
!1969 = !DILocation(line: 656, column: 187, scope: !1968)
!1970 = !DILocation(line: 656, column: 167, scope: !1968)
!1971 = !DILocation(line: 656, column: 197, scope: !1968)
!1972 = !DILocation(line: 656, column: 167, scope: !656)
!1973 = !DILocation(line: 656, column: 167, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !656, file: !407, discriminator: 5)
!1975 = !DILocation(line: 656, column: 228, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1968, file: !407, discriminator: 6)
!1977 = !DILocation(line: 656, column: 246, scope: !1968)
!1978 = !DILocation(line: 656, column: 256, scope: !1968)
!1979 = !DILocation(line: 656, column: 281, scope: !1968)
!1980 = !DILocation(line: 656, column: 212, scope: !1968)
!1981 = !DILocation(line: 656, column: 300, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !657, file: !407, discriminator: 7)
!1983 = !DILocation(line: 656, column: 300, scope: !656)
!1984 = !DILocation(line: 656, column: 300, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !656, file: !407, discriminator: 8)
!1986 = !DILocation(line: 656, column: 300, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !656, file: !407, discriminator: 9)
!1988 = !DILocation(line: 656, column: 313, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !407, discriminator: 10)
!1990 = !DILexicalBlockFile(scope: !648, file: !407, discriminator: 3)
!1991 = !DILocation(line: 656, column: 313, scope: !654)
!1992 = !DILocation(line: 657, column: 19, scope: !648)
!1993 = !DILocation(line: 657, column: 5, scope: !648)
!1994 = !DILocation(line: 658, column: 1, scope: !648)
!1995 = !DILocation(line: 394, column: 27, scope: !658)
!1996 = !DILocation(line: 394, column: 43, scope: !658)
!1997 = !DILocation(line: 396, column: 5, scope: !658)
!1998 = !DILocation(line: 396, column: 15, scope: !658)
!1999 = !DILocation(line: 396, column: 19, scope: !658)
!2000 = !DILocation(line: 396, column: 25, scope: !658)
!2001 = !DILocation(line: 397, column: 5, scope: !658)
!2002 = !DILocation(line: 397, column: 9, scope: !658)
!2003 = !DILocation(line: 398, column: 5, scope: !658)
!2004 = !DILocation(line: 398, column: 20, scope: !658)
!2005 = !{!2006, !2006, i64 0}
!2006 = !{!"short", !1029, i64 0}
!2007 = !DILocation(line: 399, column: 5, scope: !658)
!2008 = !DILocation(line: 399, column: 9, scope: !658)
!2009 = !DILocation(line: 401, column: 27, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !658, file: !407, line: 401, column: 9)
!2011 = !DILocation(line: 401, column: 10, scope: !2010)
!2012 = !DILocation(line: 401, column: 9, scope: !658)
!2013 = !DILocation(line: 402, column: 9, scope: !2010)
!2014 = !DILocation(line: 404, column: 36, scope: !658)
!2015 = !DILocation(line: 404, column: 10, scope: !658)
!2016 = !DILocation(line: 404, column: 8, scope: !658)
!2017 = !DILocation(line: 405, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !658, file: !407, line: 405, column: 9)
!2019 = !DILocation(line: 405, column: 12, scope: !2018)
!2020 = !DILocation(line: 405, column: 9, scope: !658)
!2021 = !DILocation(line: 405, column: 19, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2018, file: !407, discriminator: 1)
!2023 = !DILocation(line: 405, column: 19, scope: !2018)
!2024 = !DILocation(line: 409, column: 27, scope: !658)
!2025 = !DILocation(line: 409, column: 11, scope: !658)
!2026 = !DILocation(line: 409, column: 9, scope: !658)
!2027 = !DILocation(line: 410, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !658, file: !407, line: 410, column: 9)
!2029 = !DILocation(line: 410, column: 13, scope: !2028)
!2030 = !DILocation(line: 410, column: 9, scope: !658)
!2031 = !DILocation(line: 411, column: 9, scope: !2028)
!2032 = !DILocation(line: 412, column: 29, scope: !658)
!2033 = !DILocation(line: 412, column: 13, scope: !658)
!2034 = !DILocation(line: 412, column: 11, scope: !658)
!2035 = !DILocation(line: 413, column: 9, scope: !673)
!2036 = !DILocation(line: 413, column: 15, scope: !673)
!2037 = !DILocation(line: 413, column: 9, scope: !658)
!2038 = !DILocation(line: 414, column: 9, scope: !672)
!2039 = !DILocation(line: 414, column: 14, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !671, file: !407, discriminator: 1)
!2041 = !DILocation(line: 414, column: 24, scope: !671)
!2042 = !DILocation(line: 414, column: 54, scope: !671)
!2043 = !DILocation(line: 414, column: 68, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !671, file: !407, line: 414, column: 65)
!2045 = !DILocation(line: 414, column: 85, scope: !2044)
!2046 = !DILocation(line: 414, column: 65, scope: !2044)
!2047 = !DILocation(line: 414, column: 95, scope: !2044)
!2048 = !DILocation(line: 414, column: 65, scope: !671)
!2049 = !DILocation(line: 414, column: 65, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !671, file: !407, discriminator: 2)
!2051 = !DILocation(line: 414, column: 126, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2044, file: !407, discriminator: 3)
!2053 = !DILocation(line: 414, column: 144, scope: !2044)
!2054 = !DILocation(line: 414, column: 154, scope: !2044)
!2055 = !DILocation(line: 414, column: 179, scope: !2044)
!2056 = !DILocation(line: 414, column: 110, scope: !2044)
!2057 = !DILocation(line: 414, column: 198, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !672, file: !407, discriminator: 4)
!2059 = !DILocation(line: 414, column: 198, scope: !671)
!2060 = !DILocation(line: 414, column: 198, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !671, file: !407, discriminator: 5)
!2062 = !DILocation(line: 415, column: 9, scope: !672)
!2063 = !DILocation(line: 417, column: 26, scope: !658)
!2064 = !DILocation(line: 417, column: 32, scope: !658)
!2065 = !DILocation(line: 417, column: 38, scope: !658)
!2066 = !DILocation(line: 417, column: 43, scope: !658)
!2067 = !DILocation(line: 417, column: 11, scope: !658)
!2068 = !DILocation(line: 417, column: 9, scope: !658)
!2069 = !DILocation(line: 418, column: 5, scope: !658)
!2070 = !DILocation(line: 418, column: 10, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !675, file: !407, discriminator: 1)
!2072 = !DILocation(line: 418, column: 20, scope: !675)
!2073 = !DILocation(line: 418, column: 50, scope: !675)
!2074 = !DILocation(line: 418, column: 64, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !675, file: !407, line: 418, column: 61)
!2076 = !DILocation(line: 418, column: 81, scope: !2075)
!2077 = !DILocation(line: 418, column: 61, scope: !2075)
!2078 = !DILocation(line: 418, column: 91, scope: !2075)
!2079 = !DILocation(line: 418, column: 61, scope: !675)
!2080 = !DILocation(line: 418, column: 61, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !675, file: !407, discriminator: 2)
!2082 = !DILocation(line: 418, column: 122, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2075, file: !407, discriminator: 3)
!2084 = !DILocation(line: 418, column: 140, scope: !2075)
!2085 = !DILocation(line: 418, column: 150, scope: !2075)
!2086 = !DILocation(line: 418, column: 175, scope: !2075)
!2087 = !DILocation(line: 418, column: 106, scope: !2075)
!2088 = !DILocation(line: 418, column: 194, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !658, file: !407, discriminator: 4)
!2090 = !DILocation(line: 418, column: 194, scope: !675)
!2091 = !DILocation(line: 418, column: 194, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !675, file: !407, discriminator: 5)
!2093 = !DILocation(line: 419, column: 5, scope: !658)
!2094 = !DILocation(line: 419, column: 10, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !677, file: !407, discriminator: 1)
!2096 = !DILocation(line: 419, column: 20, scope: !677)
!2097 = !DILocation(line: 419, column: 50, scope: !677)
!2098 = !DILocation(line: 419, column: 66, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !677, file: !407, line: 419, column: 63)
!2100 = !DILocation(line: 419, column: 83, scope: !2099)
!2101 = !DILocation(line: 419, column: 63, scope: !2099)
!2102 = !DILocation(line: 419, column: 93, scope: !2099)
!2103 = !DILocation(line: 419, column: 63, scope: !677)
!2104 = !DILocation(line: 419, column: 63, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !677, file: !407, discriminator: 2)
!2106 = !DILocation(line: 419, column: 124, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2099, file: !407, discriminator: 3)
!2108 = !DILocation(line: 419, column: 142, scope: !2099)
!2109 = !DILocation(line: 419, column: 152, scope: !2099)
!2110 = !DILocation(line: 419, column: 177, scope: !2099)
!2111 = !DILocation(line: 419, column: 108, scope: !2099)
!2112 = !DILocation(line: 419, column: 196, scope: !2089)
!2113 = !DILocation(line: 419, column: 196, scope: !677)
!2114 = !DILocation(line: 419, column: 196, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !677, file: !407, discriminator: 5)
!2116 = !DILocation(line: 420, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !658, file: !407, line: 420, column: 9)
!2118 = !DILocation(line: 420, column: 13, scope: !2117)
!2119 = !DILocation(line: 420, column: 9, scope: !658)
!2120 = !DILocation(line: 421, column: 9, scope: !2117)
!2121 = !DILocation(line: 423, column: 5, scope: !658)
!2122 = !DILocation(line: 423, column: 11, scope: !658)
!2123 = !DILocation(line: 423, column: 24, scope: !658)
!2124 = !DILocation(line: 425, column: 51, scope: !658)
!2125 = !DILocation(line: 426, column: 5, scope: !658)
!2126 = !DILocation(line: 427, column: 1, scope: !658)
!2127 = !DILocation(line: 437, column: 25, scope: !683)
!2128 = !DILocation(line: 437, column: 41, scope: !683)
!2129 = !DILocation(line: 439, column: 5, scope: !683)
!2130 = !DILocation(line: 439, column: 15, scope: !683)
!2131 = !DILocation(line: 439, column: 19, scope: !683)
!2132 = !DILocation(line: 439, column: 25, scope: !683)
!2133 = !DILocation(line: 440, column: 5, scope: !683)
!2134 = !DILocation(line: 440, column: 9, scope: !683)
!2135 = !DILocation(line: 441, column: 5, scope: !683)
!2136 = !DILocation(line: 441, column: 20, scope: !683)
!2137 = !DILocation(line: 442, column: 5, scope: !683)
!2138 = !DILocation(line: 442, column: 9, scope: !683)
!2139 = !DILocation(line: 444, column: 27, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !683, file: !407, line: 444, column: 9)
!2141 = !DILocation(line: 444, column: 10, scope: !2140)
!2142 = !DILocation(line: 444, column: 9, scope: !683)
!2143 = !DILocation(line: 445, column: 9, scope: !2140)
!2144 = !DILocation(line: 447, column: 36, scope: !683)
!2145 = !DILocation(line: 447, column: 10, scope: !683)
!2146 = !DILocation(line: 447, column: 8, scope: !683)
!2147 = !DILocation(line: 448, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !683, file: !407, line: 448, column: 9)
!2149 = !DILocation(line: 448, column: 12, scope: !2148)
!2150 = !DILocation(line: 448, column: 9, scope: !683)
!2151 = !DILocation(line: 448, column: 19, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2148, file: !407, discriminator: 1)
!2153 = !DILocation(line: 448, column: 19, scope: !2148)
!2154 = !DILocation(line: 451, column: 27, scope: !683)
!2155 = !DILocation(line: 451, column: 11, scope: !683)
!2156 = !DILocation(line: 451, column: 9, scope: !683)
!2157 = !DILocation(line: 452, column: 9, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !683, file: !407, line: 452, column: 9)
!2159 = !DILocation(line: 452, column: 13, scope: !2158)
!2160 = !DILocation(line: 452, column: 9, scope: !683)
!2161 = !DILocation(line: 453, column: 9, scope: !2158)
!2162 = !DILocation(line: 454, column: 24, scope: !696)
!2163 = !DILocation(line: 454, column: 30, scope: !696)
!2164 = !DILocation(line: 454, column: 36, scope: !696)
!2165 = !DILocation(line: 454, column: 9, scope: !696)
!2166 = !DILocation(line: 454, column: 41, scope: !696)
!2167 = !DILocation(line: 454, column: 9, scope: !683)
!2168 = !DILocation(line: 455, column: 11, scope: !695)
!2169 = !DILocation(line: 455, column: 32, scope: !695)
!2170 = !DILocation(line: 456, column: 28, scope: !695)
!2171 = !DILocation(line: 456, column: 9, scope: !695)
!2172 = !DILocation(line: 457, column: 9, scope: !695)
!2173 = !DILocation(line: 457, column: 14, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !694, file: !407, discriminator: 1)
!2175 = !DILocation(line: 457, column: 24, scope: !694)
!2176 = !DILocation(line: 457, column: 54, scope: !694)
!2177 = !DILocation(line: 457, column: 68, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !694, file: !407, line: 457, column: 65)
!2179 = !DILocation(line: 457, column: 85, scope: !2178)
!2180 = !DILocation(line: 457, column: 65, scope: !2178)
!2181 = !DILocation(line: 457, column: 95, scope: !2178)
!2182 = !DILocation(line: 457, column: 65, scope: !694)
!2183 = !DILocation(line: 457, column: 65, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !694, file: !407, discriminator: 2)
!2185 = !DILocation(line: 457, column: 126, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2178, file: !407, discriminator: 3)
!2187 = !DILocation(line: 457, column: 144, scope: !2178)
!2188 = !DILocation(line: 457, column: 154, scope: !2178)
!2189 = !DILocation(line: 457, column: 179, scope: !2178)
!2190 = !DILocation(line: 457, column: 110, scope: !2178)
!2191 = !DILocation(line: 457, column: 198, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !695, file: !407, discriminator: 4)
!2193 = !DILocation(line: 457, column: 198, scope: !694)
!2194 = !DILocation(line: 457, column: 198, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !694, file: !407, discriminator: 5)
!2196 = !DILocation(line: 458, column: 9, scope: !695)
!2197 = !DILocation(line: 460, column: 29, scope: !683)
!2198 = !DILocation(line: 460, column: 13, scope: !683)
!2199 = !DILocation(line: 460, column: 11, scope: !683)
!2200 = !DILocation(line: 461, column: 9, scope: !700)
!2201 = !DILocation(line: 461, column: 15, scope: !700)
!2202 = !DILocation(line: 461, column: 9, scope: !683)
!2203 = !DILocation(line: 462, column: 9, scope: !699)
!2204 = !DILocation(line: 462, column: 14, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !698, file: !407, discriminator: 1)
!2206 = !DILocation(line: 462, column: 24, scope: !698)
!2207 = !DILocation(line: 462, column: 54, scope: !698)
!2208 = !DILocation(line: 462, column: 68, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !698, file: !407, line: 462, column: 65)
!2210 = !DILocation(line: 462, column: 85, scope: !2209)
!2211 = !DILocation(line: 462, column: 65, scope: !2209)
!2212 = !DILocation(line: 462, column: 95, scope: !2209)
!2213 = !DILocation(line: 462, column: 65, scope: !698)
!2214 = !DILocation(line: 462, column: 65, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !698, file: !407, discriminator: 2)
!2216 = !DILocation(line: 462, column: 126, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2209, file: !407, discriminator: 3)
!2218 = !DILocation(line: 462, column: 144, scope: !2209)
!2219 = !DILocation(line: 462, column: 154, scope: !2209)
!2220 = !DILocation(line: 462, column: 179, scope: !2209)
!2221 = !DILocation(line: 462, column: 110, scope: !2209)
!2222 = !DILocation(line: 462, column: 198, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !699, file: !407, discriminator: 4)
!2224 = !DILocation(line: 462, column: 198, scope: !698)
!2225 = !DILocation(line: 462, column: 198, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !698, file: !407, discriminator: 5)
!2227 = !DILocation(line: 463, column: 9, scope: !699)
!2228 = !DILocation(line: 465, column: 26, scope: !683)
!2229 = !DILocation(line: 465, column: 32, scope: !683)
!2230 = !DILocation(line: 465, column: 38, scope: !683)
!2231 = !DILocation(line: 465, column: 43, scope: !683)
!2232 = !DILocation(line: 465, column: 11, scope: !683)
!2233 = !DILocation(line: 465, column: 9, scope: !683)
!2234 = !DILocation(line: 466, column: 5, scope: !683)
!2235 = !DILocation(line: 466, column: 10, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !702, file: !407, discriminator: 1)
!2237 = !DILocation(line: 466, column: 20, scope: !702)
!2238 = !DILocation(line: 466, column: 50, scope: !702)
!2239 = !DILocation(line: 466, column: 64, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !702, file: !407, line: 466, column: 61)
!2241 = !DILocation(line: 466, column: 81, scope: !2240)
!2242 = !DILocation(line: 466, column: 61, scope: !2240)
!2243 = !DILocation(line: 466, column: 91, scope: !2240)
!2244 = !DILocation(line: 466, column: 61, scope: !702)
!2245 = !DILocation(line: 466, column: 61, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !702, file: !407, discriminator: 2)
!2247 = !DILocation(line: 466, column: 122, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2240, file: !407, discriminator: 3)
!2249 = !DILocation(line: 466, column: 140, scope: !2240)
!2250 = !DILocation(line: 466, column: 150, scope: !2240)
!2251 = !DILocation(line: 466, column: 175, scope: !2240)
!2252 = !DILocation(line: 466, column: 106, scope: !2240)
!2253 = !DILocation(line: 466, column: 194, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !683, file: !407, discriminator: 4)
!2255 = !DILocation(line: 466, column: 194, scope: !702)
!2256 = !DILocation(line: 466, column: 194, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !702, file: !407, discriminator: 5)
!2258 = !DILocation(line: 467, column: 5, scope: !683)
!2259 = !DILocation(line: 467, column: 10, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !704, file: !407, discriminator: 1)
!2261 = !DILocation(line: 467, column: 20, scope: !704)
!2262 = !DILocation(line: 467, column: 50, scope: !704)
!2263 = !DILocation(line: 467, column: 66, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !704, file: !407, line: 467, column: 63)
!2265 = !DILocation(line: 467, column: 83, scope: !2264)
!2266 = !DILocation(line: 467, column: 63, scope: !2264)
!2267 = !DILocation(line: 467, column: 93, scope: !2264)
!2268 = !DILocation(line: 467, column: 63, scope: !704)
!2269 = !DILocation(line: 467, column: 63, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !704, file: !407, discriminator: 2)
!2271 = !DILocation(line: 467, column: 124, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2264, file: !407, discriminator: 3)
!2273 = !DILocation(line: 467, column: 142, scope: !2264)
!2274 = !DILocation(line: 467, column: 152, scope: !2264)
!2275 = !DILocation(line: 467, column: 177, scope: !2264)
!2276 = !DILocation(line: 467, column: 108, scope: !2264)
!2277 = !DILocation(line: 467, column: 196, scope: !2254)
!2278 = !DILocation(line: 467, column: 196, scope: !704)
!2279 = !DILocation(line: 467, column: 196, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !704, file: !407, discriminator: 5)
!2281 = !DILocation(line: 468, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !683, file: !407, line: 468, column: 9)
!2283 = !DILocation(line: 468, column: 13, scope: !2282)
!2284 = !DILocation(line: 468, column: 9, scope: !683)
!2285 = !DILocation(line: 469, column: 9, scope: !2282)
!2286 = !DILocation(line: 471, column: 5, scope: !683)
!2287 = !DILocation(line: 471, column: 11, scope: !683)
!2288 = !DILocation(line: 471, column: 24, scope: !683)
!2289 = !DILocation(line: 473, column: 51, scope: !683)
!2290 = !DILocation(line: 474, column: 5, scope: !683)
!2291 = !DILocation(line: 475, column: 1, scope: !683)
!2292 = !DILocation(line: 483, column: 29, scope: !705)
!2293 = !DILocation(line: 483, column: 45, scope: !705)
!2294 = !DILocation(line: 485, column: 5, scope: !705)
!2295 = !DILocation(line: 485, column: 15, scope: !705)
!2296 = !DILocation(line: 486, column: 5, scope: !705)
!2297 = !DILocation(line: 486, column: 9, scope: !705)
!2298 = !DILocation(line: 488, column: 37, scope: !705)
!2299 = !DILocation(line: 488, column: 10, scope: !705)
!2300 = !DILocation(line: 488, column: 8, scope: !705)
!2301 = !DILocation(line: 489, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !705, file: !407, line: 489, column: 9)
!2303 = !DILocation(line: 489, column: 12, scope: !2302)
!2304 = !DILocation(line: 489, column: 9, scope: !705)
!2305 = !DILocation(line: 490, column: 9, scope: !2302)
!2306 = !DILocation(line: 493, column: 27, scope: !705)
!2307 = !DILocation(line: 493, column: 11, scope: !705)
!2308 = !DILocation(line: 493, column: 9, scope: !705)
!2309 = !DILocation(line: 494, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !705, file: !407, line: 494, column: 9)
!2311 = !DILocation(line: 494, column: 13, scope: !2310)
!2312 = !DILocation(line: 494, column: 9, scope: !705)
!2313 = !DILocation(line: 495, column: 9, scope: !2310)
!2314 = !DILocation(line: 497, column: 24, scope: !714)
!2315 = !DILocation(line: 497, column: 30, scope: !714)
!2316 = !DILocation(line: 497, column: 36, scope: !714)
!2317 = !DILocation(line: 497, column: 9, scope: !714)
!2318 = !DILocation(line: 497, column: 41, scope: !714)
!2319 = !DILocation(line: 497, column: 9, scope: !705)
!2320 = !DILocation(line: 498, column: 9, scope: !713)
!2321 = !DILocation(line: 498, column: 14, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !712, file: !407, discriminator: 1)
!2323 = !DILocation(line: 498, column: 24, scope: !712)
!2324 = !DILocation(line: 498, column: 54, scope: !712)
!2325 = !DILocation(line: 498, column: 68, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !712, file: !407, line: 498, column: 65)
!2327 = !DILocation(line: 498, column: 85, scope: !2326)
!2328 = !DILocation(line: 498, column: 65, scope: !2326)
!2329 = !DILocation(line: 498, column: 95, scope: !2326)
!2330 = !DILocation(line: 498, column: 65, scope: !712)
!2331 = !DILocation(line: 498, column: 65, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !712, file: !407, discriminator: 2)
!2333 = !DILocation(line: 498, column: 126, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2326, file: !407, discriminator: 3)
!2335 = !DILocation(line: 498, column: 144, scope: !2326)
!2336 = !DILocation(line: 498, column: 154, scope: !2326)
!2337 = !DILocation(line: 498, column: 179, scope: !2326)
!2338 = !DILocation(line: 498, column: 110, scope: !2326)
!2339 = !DILocation(line: 498, column: 198, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !713, file: !407, discriminator: 4)
!2341 = !DILocation(line: 498, column: 198, scope: !712)
!2342 = !DILocation(line: 498, column: 198, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !712, file: !407, discriminator: 5)
!2344 = !DILocation(line: 501, column: 9, scope: !713)
!2345 = !DILocation(line: 504, column: 5, scope: !705)
!2346 = !DILocation(line: 504, column: 10, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !716, file: !407, discriminator: 1)
!2348 = !DILocation(line: 504, column: 20, scope: !716)
!2349 = !DILocation(line: 504, column: 50, scope: !716)
!2350 = !DILocation(line: 504, column: 64, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !716, file: !407, line: 504, column: 61)
!2352 = !DILocation(line: 504, column: 81, scope: !2351)
!2353 = !DILocation(line: 504, column: 61, scope: !2351)
!2354 = !DILocation(line: 504, column: 91, scope: !2351)
!2355 = !DILocation(line: 504, column: 61, scope: !716)
!2356 = !DILocation(line: 504, column: 61, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !716, file: !407, discriminator: 2)
!2358 = !DILocation(line: 504, column: 122, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2351, file: !407, discriminator: 3)
!2360 = !DILocation(line: 504, column: 140, scope: !2351)
!2361 = !DILocation(line: 504, column: 150, scope: !2351)
!2362 = !DILocation(line: 504, column: 175, scope: !2351)
!2363 = !DILocation(line: 504, column: 106, scope: !2351)
!2364 = !DILocation(line: 504, column: 194, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !705, file: !407, discriminator: 4)
!2366 = !DILocation(line: 504, column: 194, scope: !716)
!2367 = !DILocation(line: 504, column: 194, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !716, file: !407, discriminator: 5)
!2369 = !DILocation(line: 505, column: 5, scope: !705)
!2370 = !DILocation(line: 505, column: 11, scope: !705)
!2371 = !DILocation(line: 505, column: 24, scope: !705)
!2372 = !DILocation(line: 507, column: 51, scope: !705)
!2373 = !DILocation(line: 508, column: 5, scope: !705)
!2374 = !DILocation(line: 509, column: 1, scope: !705)
!2375 = !DILocation(line: 517, column: 23, scope: !717)
!2376 = !DILocation(line: 517, column: 39, scope: !717)
!2377 = !DILocation(line: 519, column: 5, scope: !717)
!2378 = !DILocation(line: 519, column: 15, scope: !717)
!2379 = !DILocation(line: 519, column: 42, scope: !717)
!2380 = !DILocation(line: 520, column: 5, scope: !717)
!2381 = !DILocation(line: 520, column: 9, scope: !717)
!2382 = !DILocation(line: 520, column: 22, scope: !717)
!2383 = !DILocation(line: 520, column: 35, scope: !717)
!2384 = !DILocation(line: 520, column: 38, scope: !717)
!2385 = !DILocation(line: 521, column: 5, scope: !717)
!2386 = !DILocation(line: 521, column: 15, scope: !717)
!2387 = !DILocation(line: 521, column: 36, scope: !717)
!2388 = !DILocation(line: 523, column: 28, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !717, file: !407, line: 523, column: 9)
!2390 = !DILocation(line: 523, column: 10, scope: !2389)
!2391 = !DILocation(line: 523, column: 9, scope: !717)
!2392 = !DILocation(line: 524, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !407, line: 523, column: 56)
!2394 = !DILocation(line: 528, column: 9, scope: !733)
!2395 = !DILocation(line: 528, column: 14, scope: !733)
!2396 = !DILocation(line: 528, column: 28, scope: !733)
!2397 = !DILocation(line: 528, column: 31, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !733, file: !407, discriminator: 1)
!2399 = !DILocation(line: 528, column: 36, scope: !733)
!2400 = !DILocation(line: 528, column: 9, scope: !717)
!2401 = !DILocation(line: 529, column: 17, scope: !733)
!2402 = !DILocation(line: 529, column: 9, scope: !733)
!2403 = !DILocation(line: 530, column: 30, scope: !732)
!2404 = !DILocation(line: 530, column: 15, scope: !732)
!2405 = !DILocation(line: 530, column: 14, scope: !733)
!2406 = !DILocation(line: 531, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !732, file: !407, line: 530, column: 37)
!2408 = !DILocation(line: 531, column: 9, scope: !2407)
!2409 = !DILocation(line: 533, column: 9, scope: !2407)
!2410 = !DILocation(line: 536, column: 30, scope: !731)
!2411 = !DILocation(line: 536, column: 16, scope: !731)
!2412 = !DILocation(line: 536, column: 14, scope: !731)
!2413 = !DILocation(line: 537, column: 14, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !731, file: !407, line: 537, column: 13)
!2415 = !DILocation(line: 537, column: 13, scope: !731)
!2416 = !DILocation(line: 538, column: 13, scope: !2414)
!2417 = !DILocation(line: 539, column: 33, scope: !731)
!2418 = !DILocation(line: 539, column: 19, scope: !731)
!2419 = !DILocation(line: 539, column: 17, scope: !731)
!2420 = !DILocation(line: 540, column: 9, scope: !731)
!2421 = !DILocation(line: 540, column: 14, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !730, file: !407, discriminator: 1)
!2423 = !DILocation(line: 540, column: 24, scope: !730)
!2424 = !DILocation(line: 540, column: 54, scope: !730)
!2425 = !DILocation(line: 540, column: 69, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !730, file: !407, line: 540, column: 66)
!2427 = !DILocation(line: 540, column: 86, scope: !2426)
!2428 = !DILocation(line: 540, column: 66, scope: !2426)
!2429 = !DILocation(line: 540, column: 96, scope: !2426)
!2430 = !DILocation(line: 540, column: 66, scope: !730)
!2431 = !DILocation(line: 540, column: 66, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !730, file: !407, discriminator: 2)
!2433 = !DILocation(line: 540, column: 127, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2426, file: !407, discriminator: 3)
!2435 = !DILocation(line: 540, column: 145, scope: !2426)
!2436 = !DILocation(line: 540, column: 155, scope: !2426)
!2437 = !DILocation(line: 540, column: 180, scope: !2426)
!2438 = !DILocation(line: 540, column: 111, scope: !2426)
!2439 = !DILocation(line: 540, column: 199, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !731, file: !407, discriminator: 4)
!2441 = !DILocation(line: 540, column: 199, scope: !730)
!2442 = !DILocation(line: 540, column: 199, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !730, file: !407, discriminator: 5)
!2444 = !DILocation(line: 541, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !731, file: !407, line: 541, column: 13)
!2446 = !DILocation(line: 541, column: 21, scope: !2445)
!2447 = !DILocation(line: 541, column: 27, scope: !2445)
!2448 = !DILocation(line: 541, column: 30, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2445, file: !407, discriminator: 1)
!2450 = !DILocation(line: 541, column: 13, scope: !731)
!2451 = !DILocation(line: 542, column: 13, scope: !2445)
!2452 = !DILocation(line: 546, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !717, file: !407, line: 546, column: 9)
!2454 = !DILocation(line: 546, column: 15, scope: !2453)
!2455 = !DILocation(line: 546, column: 9, scope: !717)
!2456 = !DILocation(line: 547, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !407, line: 546, column: 29)
!2458 = !DILocation(line: 547, column: 9, scope: !2457)
!2459 = !DILocation(line: 549, column: 9, scope: !2457)
!2460 = !DILocation(line: 553, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !717, file: !407, line: 553, column: 9)
!2462 = !DILocation(line: 553, column: 16, scope: !2461)
!2463 = !DILocation(line: 553, column: 9, scope: !717)
!2464 = !DILocation(line: 554, column: 30, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !407, line: 554, column: 13)
!2466 = !DILocation(line: 554, column: 13, scope: !2465)
!2467 = !DILocation(line: 554, column: 36, scope: !2465)
!2468 = !DILocation(line: 554, column: 13, scope: !2461)
!2469 = !DILocation(line: 555, column: 13, scope: !2465)
!2470 = !DILocation(line: 554, column: 39, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2465, file: !407, discriminator: 1)
!2472 = !DILocation(line: 557, column: 5, scope: !717)
!2473 = !DILocation(line: 557, column: 11, scope: !717)
!2474 = !DILocation(line: 557, column: 24, scope: !717)
!2475 = !DILocation(line: 560, column: 7, scope: !735)
!2476 = !DILocation(line: 560, column: 22, scope: !735)
!2477 = !DILocation(line: 560, column: 37, scope: !735)
!2478 = !DILocation(line: 560, column: 35, scope: !735)
!2479 = !DILocation(line: 561, column: 24, scope: !735)
!2480 = !DILocation(line: 561, column: 30, scope: !735)
!2481 = !DILocation(line: 561, column: 36, scope: !735)
!2482 = !DILocation(line: 561, column: 42, scope: !735)
!2483 = !{!1896, !1198, i64 28}
!2484 = !DILocation(line: 561, column: 51, scope: !735)
!2485 = !DILocation(line: 561, column: 19, scope: !735)
!2486 = !DILocation(line: 561, column: 17, scope: !735)
!2487 = !DILocation(line: 562, column: 26, scope: !735)
!2488 = !DILocation(line: 562, column: 5, scope: !735)
!2489 = !DILocation(line: 562, column: 34, scope: !717)
!2490 = !DILocation(line: 564, column: 5, scope: !717)
!2491 = !DILocation(line: 564, column: 11, scope: !717)
!2492 = !DILocation(line: 564, column: 24, scope: !717)
!2493 = !DILocation(line: 566, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !717, file: !407, line: 566, column: 9)
!2495 = !DILocation(line: 566, column: 21, scope: !2494)
!2496 = !DILocation(line: 566, column: 9, scope: !717)
!2497 = !DILocation(line: 567, column: 28, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !407, line: 566, column: 26)
!2499 = !DILocation(line: 567, column: 9, scope: !2498)
!2500 = !DILocation(line: 568, column: 9, scope: !2498)
!2501 = !DILocation(line: 573, column: 30, scope: !717)
!2502 = !DILocation(line: 573, column: 19, scope: !717)
!2503 = !DILocation(line: 573, column: 17, scope: !717)
!2504 = !DILocation(line: 574, column: 10, scope: !744)
!2505 = !DILocation(line: 574, column: 9, scope: !717)
!2506 = !DILocation(line: 575, column: 9, scope: !744)
!2507 = !DILocation(line: 577, column: 16, scope: !742)
!2508 = !DILocation(line: 577, column: 23, scope: !742)
!2509 = !DILocation(line: 577, column: 14, scope: !742)
!2510 = !DILocation(line: 577, column: 28, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2512, file: !407, discriminator: 2)
!2512 = !DILexicalBlockFile(scope: !741, file: !407, discriminator: 1)
!2513 = !DILocation(line: 577, column: 32, scope: !741)
!2514 = !DILocation(line: 577, column: 30, scope: !741)
!2515 = !DILocation(line: 577, column: 9, scope: !742)
!2516 = !DILocation(line: 579, column: 13, scope: !740)
!2517 = !DILocation(line: 579, column: 32, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !407, discriminator: 2)
!2519 = !DILexicalBlockFile(scope: !740, file: !407, discriminator: 1)
!2520 = !DILocation(line: 579, column: 21, scope: !740)
!2521 = !DILocation(line: 579, column: 27, scope: !740)
!2522 = !DILocation(line: 579, column: 35, scope: !740)
!2523 = !{!2524, !2006, i64 6}
!2524 = !{!"pollfd", !1198, i64 0, !2006, i64 4, !2006, i64 6}
!2525 = !DILocation(line: 579, column: 20, scope: !740)
!2526 = !DILocation(line: 580, column: 18, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !740, file: !407, line: 579, column: 44)
!2528 = !DILocation(line: 585, column: 21, scope: !740)
!2529 = !DILocation(line: 585, column: 19, scope: !740)
!2530 = !DILocation(line: 586, column: 17, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !740, file: !407, line: 586, column: 17)
!2532 = !DILocation(line: 586, column: 23, scope: !2531)
!2533 = !DILocation(line: 586, column: 17, scope: !740)
!2534 = !DILocation(line: 587, column: 17, scope: !2531)
!2535 = !DILocation(line: 588, column: 46, scope: !740)
!2536 = !DILocation(line: 588, column: 35, scope: !740)
!2537 = !DILocation(line: 588, column: 41, scope: !740)
!2538 = !DILocation(line: 588, column: 49, scope: !740)
!2539 = !{!2524, !1198, i64 0}
!2540 = !DILocation(line: 588, column: 19, scope: !740)
!2541 = !DILocation(line: 588, column: 17, scope: !740)
!2542 = !DILocation(line: 589, column: 17, scope: !739)
!2543 = !DILocation(line: 589, column: 21, scope: !739)
!2544 = !DILocation(line: 589, column: 17, scope: !740)
!2545 = !DILocation(line: 590, column: 17, scope: !738)
!2546 = !DILocation(line: 590, column: 22, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !737, file: !407, discriminator: 1)
!2548 = !DILocation(line: 590, column: 32, scope: !737)
!2549 = !DILocation(line: 590, column: 62, scope: !737)
!2550 = !DILocation(line: 590, column: 78, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !737, file: !407, line: 590, column: 75)
!2552 = !DILocation(line: 590, column: 95, scope: !2551)
!2553 = !DILocation(line: 590, column: 75, scope: !2551)
!2554 = !DILocation(line: 590, column: 105, scope: !2551)
!2555 = !DILocation(line: 590, column: 75, scope: !737)
!2556 = !DILocation(line: 590, column: 75, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !737, file: !407, discriminator: 2)
!2558 = !DILocation(line: 590, column: 136, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2551, file: !407, discriminator: 3)
!2560 = !DILocation(line: 590, column: 154, scope: !2551)
!2561 = !DILocation(line: 590, column: 164, scope: !2551)
!2562 = !DILocation(line: 590, column: 189, scope: !2551)
!2563 = !DILocation(line: 590, column: 120, scope: !2551)
!2564 = !DILocation(line: 590, column: 208, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !738, file: !407, discriminator: 4)
!2566 = !DILocation(line: 590, column: 208, scope: !737)
!2567 = !DILocation(line: 590, column: 208, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !737, file: !407, discriminator: 5)
!2569 = !DILocation(line: 591, column: 17, scope: !738)
!2570 = !DILocation(line: 593, column: 55, scope: !740)
!2571 = !DILocation(line: 593, column: 33, scope: !740)
!2572 = !DILocation(line: 593, column: 15, scope: !740)
!2573 = !DILocation(line: 593, column: 42, scope: !740)
!2574 = !DILocation(line: 593, column: 14, scope: !740)
!2575 = !DILocation(line: 593, column: 53, scope: !740)
!2576 = !DILocation(line: 599, column: 46, scope: !740)
!2577 = !DILocation(line: 599, column: 35, scope: !740)
!2578 = !DILocation(line: 599, column: 41, scope: !740)
!2579 = !DILocation(line: 599, column: 49, scope: !740)
!2580 = !DILocation(line: 599, column: 57, scope: !740)
!2581 = !DILocation(line: 599, column: 19, scope: !740)
!2582 = !DILocation(line: 599, column: 17, scope: !740)
!2583 = !DILocation(line: 600, column: 17, scope: !748)
!2584 = !DILocation(line: 600, column: 21, scope: !748)
!2585 = !DILocation(line: 600, column: 17, scope: !740)
!2586 = !DILocation(line: 601, column: 17, scope: !747)
!2587 = !DILocation(line: 601, column: 22, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !746, file: !407, discriminator: 1)
!2589 = !DILocation(line: 601, column: 32, scope: !746)
!2590 = !DILocation(line: 601, column: 62, scope: !746)
!2591 = !DILocation(line: 601, column: 78, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !746, file: !407, line: 601, column: 75)
!2593 = !DILocation(line: 601, column: 95, scope: !2592)
!2594 = !DILocation(line: 601, column: 75, scope: !2592)
!2595 = !DILocation(line: 601, column: 105, scope: !2592)
!2596 = !DILocation(line: 601, column: 75, scope: !746)
!2597 = !DILocation(line: 601, column: 75, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !746, file: !407, discriminator: 2)
!2599 = !DILocation(line: 601, column: 136, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2592, file: !407, discriminator: 3)
!2601 = !DILocation(line: 601, column: 154, scope: !2592)
!2602 = !DILocation(line: 601, column: 164, scope: !2592)
!2603 = !DILocation(line: 601, column: 189, scope: !2592)
!2604 = !DILocation(line: 601, column: 120, scope: !2592)
!2605 = !DILocation(line: 601, column: 208, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !747, file: !407, discriminator: 4)
!2607 = !DILocation(line: 601, column: 208, scope: !746)
!2608 = !DILocation(line: 601, column: 208, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !746, file: !407, discriminator: 5)
!2610 = !DILocation(line: 602, column: 17, scope: !747)
!2611 = !DILocation(line: 604, column: 55, scope: !740)
!2612 = !DILocation(line: 604, column: 33, scope: !740)
!2613 = !DILocation(line: 604, column: 15, scope: !740)
!2614 = !DILocation(line: 604, column: 42, scope: !740)
!2615 = !DILocation(line: 604, column: 14, scope: !740)
!2616 = !DILocation(line: 604, column: 53, scope: !740)
!2617 = !DILocation(line: 605, column: 33, scope: !752)
!2618 = !DILocation(line: 605, column: 46, scope: !752)
!2619 = !DILocation(line: 605, column: 49, scope: !752)
!2620 = !DILocation(line: 605, column: 18, scope: !752)
!2621 = !DILocation(line: 605, column: 57, scope: !752)
!2622 = !DILocation(line: 605, column: 17, scope: !740)
!2623 = !DILocation(line: 606, column: 17, scope: !751)
!2624 = !DILocation(line: 606, column: 22, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !750, file: !407, discriminator: 1)
!2626 = !DILocation(line: 606, column: 32, scope: !750)
!2627 = !DILocation(line: 606, column: 62, scope: !750)
!2628 = !DILocation(line: 606, column: 78, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !750, file: !407, line: 606, column: 75)
!2630 = !DILocation(line: 606, column: 95, scope: !2629)
!2631 = !DILocation(line: 606, column: 75, scope: !2629)
!2632 = !DILocation(line: 606, column: 105, scope: !2629)
!2633 = !DILocation(line: 606, column: 75, scope: !750)
!2634 = !DILocation(line: 606, column: 75, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !750, file: !407, discriminator: 2)
!2636 = !DILocation(line: 606, column: 136, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2629, file: !407, discriminator: 3)
!2638 = !DILocation(line: 606, column: 154, scope: !2629)
!2639 = !DILocation(line: 606, column: 164, scope: !2629)
!2640 = !DILocation(line: 606, column: 189, scope: !2629)
!2641 = !DILocation(line: 606, column: 120, scope: !2629)
!2642 = !DILocation(line: 606, column: 208, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !751, file: !407, discriminator: 4)
!2644 = !DILocation(line: 606, column: 208, scope: !750)
!2645 = !DILocation(line: 606, column: 208, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !750, file: !407, discriminator: 5)
!2647 = !DILocation(line: 607, column: 17, scope: !751)
!2648 = !DILocation(line: 609, column: 14, scope: !740)
!2649 = !DILocation(line: 610, column: 9, scope: !740)
!2650 = !DILocation(line: 577, column: 46, scope: !741)
!2651 = !DILocation(line: 577, column: 9, scope: !741)
!2652 = !DILocation(line: 612, column: 12, scope: !717)
!2653 = !DILocation(line: 612, column: 5, scope: !717)
!2654 = !DILocation(line: 615, column: 5, scope: !717)
!2655 = !DILocation(line: 615, column: 10, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !754, file: !407, discriminator: 1)
!2657 = !DILocation(line: 615, column: 20, scope: !754)
!2658 = !DILocation(line: 615, column: 50, scope: !754)
!2659 = !DILocation(line: 615, column: 72, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !754, file: !407, line: 615, column: 69)
!2661 = !DILocation(line: 615, column: 89, scope: !2660)
!2662 = !DILocation(line: 615, column: 69, scope: !2660)
!2663 = !DILocation(line: 615, column: 99, scope: !2660)
!2664 = !DILocation(line: 615, column: 69, scope: !754)
!2665 = !DILocation(line: 615, column: 69, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !754, file: !407, discriminator: 2)
!2667 = !DILocation(line: 615, column: 130, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2660, file: !407, discriminator: 3)
!2669 = !DILocation(line: 615, column: 148, scope: !2660)
!2670 = !DILocation(line: 615, column: 158, scope: !2660)
!2671 = !DILocation(line: 615, column: 183, scope: !2660)
!2672 = !DILocation(line: 615, column: 114, scope: !2660)
!2673 = !DILocation(line: 615, column: 202, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !717, file: !407, discriminator: 4)
!2675 = !DILocation(line: 615, column: 202, scope: !754)
!2676 = !DILocation(line: 615, column: 202, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !754, file: !407, discriminator: 5)
!2678 = !DILocation(line: 616, column: 5, scope: !717)
!2679 = !DILocation(line: 617, column: 1, scope: !717)
!2680 = !DILocation(line: 369, column: 28, scope: !678)
!2681 = !DILocation(line: 369, column: 39, scope: !678)
!2682 = !DILocation(line: 371, column: 5, scope: !678)
!2683 = !DILocation(line: 371, column: 19, scope: !678)
!2684 = !DILocation(line: 373, column: 34, scope: !678)
!2685 = !DILocation(line: 373, column: 12, scope: !678)
!2686 = !DILocation(line: 373, column: 10, scope: !678)
!2687 = !DILocation(line: 374, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !678, file: !407, line: 374, column: 9)
!2689 = !DILocation(line: 374, column: 14, scope: !2688)
!2690 = !DILocation(line: 374, column: 35, scope: !2688)
!2691 = !DILocation(line: 374, column: 38, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2688, file: !407, discriminator: 1)
!2693 = !DILocation(line: 374, column: 9, scope: !678)
!2694 = !DILocation(line: 375, column: 9, scope: !2688)
!2695 = !DILocation(line: 376, column: 9, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !678, file: !407, line: 376, column: 9)
!2697 = !DILocation(line: 376, column: 14, scope: !2696)
!2698 = !DILocation(line: 376, column: 9, scope: !678)
!2699 = !DILocation(line: 377, column: 25, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !407, line: 376, column: 31)
!2701 = !DILocation(line: 377, column: 9, scope: !2700)
!2702 = !DILocation(line: 379, column: 9, scope: !2700)
!2703 = !DILocation(line: 382, column: 47, scope: !678)
!2704 = !DILocation(line: 382, column: 30, scope: !678)
!2705 = !DILocation(line: 382, column: 24, scope: !678)
!2706 = !DILocation(line: 382, column: 6, scope: !678)
!2707 = !DILocation(line: 382, column: 28, scope: !678)
!2708 = !DILocation(line: 383, column: 5, scope: !678)
!2709 = !DILocation(line: 384, column: 1, scope: !678)
!2710 = !DILocation(line: 341, column: 30, scope: !755)
!2711 = !DILocation(line: 343, column: 5, scope: !755)
!2712 = !DILocation(line: 343, column: 16, scope: !755)
!2713 = !DILocation(line: 343, column: 19, scope: !755)
!2714 = !DILocation(line: 344, column: 5, scope: !755)
!2715 = !DILocation(line: 344, column: 15, scope: !755)
!2716 = !DILocation(line: 344, column: 21, scope: !755)
!2717 = !DILocation(line: 345, column: 5, scope: !755)
!2718 = !DILocation(line: 345, column: 20, scope: !755)
!2719 = !DILocation(line: 345, column: 31, scope: !755)
!2720 = !DILocation(line: 345, column: 37, scope: !755)
!2721 = !DILocation(line: 347, column: 33, scope: !755)
!2722 = !DILocation(line: 347, column: 39, scope: !755)
!2723 = !DILocation(line: 347, column: 21, scope: !755)
!2724 = !DILocation(line: 347, column: 5, scope: !755)
!2725 = !DILocation(line: 347, column: 11, scope: !755)
!2726 = !DILocation(line: 347, column: 19, scope: !755)
!2727 = !DILocation(line: 348, column: 32, scope: !755)
!2728 = !DILocation(line: 348, column: 38, scope: !755)
!2729 = !DILocation(line: 348, column: 23, scope: !755)
!2730 = !DILocation(line: 348, column: 47, scope: !755)
!2731 = !DILocation(line: 348, column: 22, scope: !755)
!2732 = !DILocation(line: 348, column: 22, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !755, file: !407, discriminator: 1)
!2734 = !DILocation(line: 348, column: 154, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !755, file: !407, discriminator: 2)
!2736 = !DILocation(line: 348, column: 160, scope: !755)
!2737 = !DILocation(line: 348, column: 153, scope: !755)
!2738 = !DILocation(line: 348, column: 168, scope: !755)
!2739 = !DILocation(line: 348, column: 174, scope: !755)
!2740 = !DILocation(line: 348, column: 167, scope: !755)
!2741 = !DILocation(line: 348, column: 183, scope: !755)
!2742 = !DILocation(line: 348, column: 139, scope: !755)
!2743 = !DILocation(line: 348, column: 121, scope: !755)
!2744 = !DILocation(line: 348, column: 8, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2746, file: !407, discriminator: 4)
!2746 = !DILexicalBlockFile(scope: !755, file: !407, discriminator: 3)
!2747 = !DILocation(line: 348, column: 14, scope: !755)
!2748 = !DILocation(line: 348, column: 20, scope: !755)
!2749 = !DILocation(line: 349, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !755, file: !407, line: 349, column: 9)
!2751 = !DILocation(line: 349, column: 15, scope: !2750)
!2752 = !DILocation(line: 349, column: 20, scope: !2750)
!2753 = !DILocation(line: 349, column: 9, scope: !755)
!2754 = !DILocation(line: 350, column: 22, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2750, file: !407, line: 349, column: 35)
!2756 = !DILocation(line: 350, column: 9, scope: !2755)
!2757 = !DILocation(line: 350, column: 15, scope: !2755)
!2758 = !DILocation(line: 350, column: 20, scope: !2755)
!2759 = !DILocation(line: 351, column: 9, scope: !2755)
!2760 = !DILocation(line: 352, column: 9, scope: !2755)
!2761 = !DILocation(line: 355, column: 13, scope: !755)
!2762 = !DILocation(line: 355, column: 7, scope: !755)
!2763 = !DILocation(line: 356, column: 5, scope: !755)
!2764 = !DILocation(line: 356, column: 24, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2733, file: !407, discriminator: 2)
!2766 = !DILocation(line: 356, column: 30, scope: !755)
!2767 = !DILocation(line: 356, column: 12, scope: !755)
!2768 = !DILocation(line: 359, column: 47, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !755, file: !407, line: 356, column: 57)
!2770 = !DILocation(line: 359, column: 33, scope: !2769)
!2771 = !DILocation(line: 359, column: 28, scope: !2769)
!2772 = !DILocation(line: 359, column: 20, scope: !2769)
!2773 = !DILocation(line: 359, column: 9, scope: !2769)
!2774 = !DILocation(line: 359, column: 15, scope: !2769)
!2775 = !DILocation(line: 359, column: 23, scope: !2769)
!2776 = !DILocation(line: 359, column: 26, scope: !2769)
!2777 = !DILocation(line: 360, column: 69, scope: !2769)
!2778 = !DILocation(line: 360, column: 55, scope: !2769)
!2779 = !DILocation(line: 360, column: 39, scope: !2769)
!2780 = !DILocation(line: 360, column: 20, scope: !2769)
!2781 = !DILocation(line: 360, column: 9, scope: !2769)
!2782 = !DILocation(line: 360, column: 15, scope: !2769)
!2783 = !DILocation(line: 360, column: 23, scope: !2769)
!2784 = !DILocation(line: 360, column: 30, scope: !2769)
!2785 = !{!2524, !2006, i64 4}
!2786 = !DILocation(line: 361, column: 10, scope: !2769)
!2787 = !DILocation(line: 364, column: 5, scope: !755)
!2788 = !DILocation(line: 364, column: 11, scope: !755)
!2789 = !DILocation(line: 364, column: 24, scope: !755)
!2790 = !DILocation(line: 365, column: 5, scope: !755)
!2791 = !DILocation(line: 366, column: 1, scope: !755)
!2792 = !DILocation(line: 1262, column: 33, scope: !765)
!2793 = !DILocation(line: 1264, column: 34, scope: !765)
!2794 = !DILocation(line: 1264, column: 11, scope: !765)
!2795 = !DILocation(line: 1265, column: 19, scope: !765)
!2796 = !DILocation(line: 1265, column: 7, scope: !765)
!2797 = !DILocation(line: 1265, column: 27, scope: !765)
!2798 = !DILocation(line: 1265, column: 37, scope: !765)
!2799 = !{!1314, !1028, i64 320}
!2800 = !DILocation(line: 1265, column: 45, scope: !765)
!2801 = !DILocation(line: 1265, column: 5, scope: !765)
!2802 = !DILocation(line: 1266, column: 1, scope: !765)
!2803 = !DILocation(line: 1244, column: 27, scope: !891)
!2804 = !DILocation(line: 1244, column: 43, scope: !891)
!2805 = !DILocation(line: 1244, column: 59, scope: !891)
!2806 = !DILocation(line: 1246, column: 5, scope: !891)
!2807 = !DILocation(line: 1246, column: 9, scope: !891)
!2808 = !DILocation(line: 1246, column: 20, scope: !891)
!2809 = !DILocation(line: 1249, column: 38, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !891, file: !407, line: 1249, column: 9)
!2811 = !DILocation(line: 1249, column: 44, scope: !2810)
!2812 = !DILocation(line: 1249, column: 10, scope: !2810)
!2813 = !DILocation(line: 1249, column: 9, scope: !891)
!2814 = !DILocation(line: 1251, column: 9, scope: !2810)
!2815 = !DILocation(line: 1252, column: 9, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !891, file: !407, line: 1252, column: 9)
!2817 = !DILocation(line: 1252, column: 18, scope: !2816)
!2818 = !DILocation(line: 1252, column: 9, scope: !891)
!2819 = !DILocation(line: 1253, column: 25, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2816, file: !407, line: 1252, column: 23)
!2821 = !DILocation(line: 1253, column: 9, scope: !2820)
!2822 = !DILocation(line: 1254, column: 9, scope: !2820)
!2823 = !DILocation(line: 1257, column: 30, scope: !891)
!2824 = !DILocation(line: 1257, column: 36, scope: !891)
!2825 = !DILocation(line: 1257, column: 46, scope: !891)
!2826 = !DILocation(line: 1257, column: 12, scope: !891)
!2827 = !DILocation(line: 1257, column: 5, scope: !891)
!2828 = !DILocation(line: 1258, column: 1, scope: !891)
!2829 = !DILocation(line: 1188, column: 40, scope: !770)
!2830 = !DILocation(line: 1190, column: 5, scope: !770)
!2831 = !DILocation(line: 1190, column: 9, scope: !770)
!2832 = !DILocation(line: 1191, column: 9, scope: !778)
!2833 = !DILocation(line: 1191, column: 15, scope: !778)
!2834 = !{!2835, !1198, i64 16}
!2835 = !{!"", !1040, i64 0, !1198, i64 16}
!2836 = !DILocation(line: 1191, column: 20, scope: !778)
!2837 = !DILocation(line: 1191, column: 9, scope: !770)
!2838 = !DILocation(line: 1192, column: 9, scope: !777)
!2839 = !DILocation(line: 1192, column: 13, scope: !777)
!2840 = !DILocation(line: 1192, column: 20, scope: !777)
!2841 = !DILocation(line: 1192, column: 26, scope: !777)
!2842 = !DILocation(line: 1193, column: 9, scope: !777)
!2843 = !DILocation(line: 1193, column: 15, scope: !777)
!2844 = !DILocation(line: 1193, column: 20, scope: !777)
!2845 = !DILocation(line: 1194, column: 11, scope: !780)
!2846 = !DILocation(line: 1194, column: 26, scope: !780)
!2847 = !DILocation(line: 1194, column: 41, scope: !780)
!2848 = !DILocation(line: 1194, column: 39, scope: !780)
!2849 = !DILocation(line: 1195, column: 19, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !780, file: !407, line: 1195, column: 13)
!2851 = !DILocation(line: 1195, column: 13, scope: !2850)
!2852 = !DILocation(line: 1195, column: 25, scope: !2850)
!2853 = !DILocation(line: 1195, column: 13, scope: !780)
!2854 = !DILocation(line: 1196, column: 28, scope: !2850)
!2855 = !DILocation(line: 1196, column: 27, scope: !2850)
!2856 = !DILocation(line: 1196, column: 24, scope: !2850)
!2857 = !DILocation(line: 1196, column: 13, scope: !2850)
!2858 = !DILocation(line: 1197, column: 30, scope: !780)
!2859 = !DILocation(line: 1197, column: 9, scope: !780)
!2860 = !DILocation(line: 1197, column: 38, scope: !777)
!2861 = !DILocation(line: 1198, column: 5, scope: !778)
!2862 = !DILocation(line: 1198, column: 5, scope: !777)
!2863 = !DILocation(line: 1199, column: 12, scope: !770)
!2864 = !DILocation(line: 1200, column: 1, scope: !770)
!2865 = !DILocation(line: 1199, column: 5, scope: !770)
!2866 = !DILocation(line: 1308, column: 26, scope: !781)
!2867 = !DILocation(line: 1308, column: 41, scope: !781)
!2868 = !DILocation(line: 1310, column: 5, scope: !781)
!2869 = !DILocation(line: 1310, column: 9, scope: !781)
!2870 = !DILocation(line: 1312, column: 27, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !781, file: !407, line: 1312, column: 9)
!2872 = !DILocation(line: 1312, column: 10, scope: !2871)
!2873 = !DILocation(line: 1312, column: 9, scope: !781)
!2874 = !DILocation(line: 1313, column: 9, scope: !2871)
!2875 = !DILocation(line: 1315, column: 45, scope: !781)
!2876 = !DILocation(line: 1315, column: 30, scope: !781)
!2877 = !DILocation(line: 1315, column: 63, scope: !781)
!2878 = !DILocation(line: 1315, column: 12, scope: !781)
!2879 = !DILocation(line: 1315, column: 5, scope: !781)
!2880 = !DILocation(line: 1316, column: 1, scope: !781)
!2881 = !DILocation(line: 1269, column: 31, scope: !803)
!2882 = !DILocation(line: 1271, column: 53, scope: !803)
!2883 = !DILocation(line: 1271, column: 30, scope: !803)
!2884 = !DILocation(line: 1271, column: 7, scope: !803)
!2885 = !DILocation(line: 1271, column: 28, scope: !803)
!2886 = !DILocation(line: 1272, column: 11, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !803, file: !407, line: 1272, column: 9)
!2888 = !DILocation(line: 1272, column: 10, scope: !2887)
!2889 = !DILocation(line: 1272, column: 32, scope: !2887)
!2890 = !DILocation(line: 1272, column: 9, scope: !803)
!2891 = !DILocation(line: 1273, column: 28, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2887, file: !407, line: 1272, column: 37)
!2893 = !DILocation(line: 1273, column: 9, scope: !2892)
!2894 = !DILocation(line: 1274, column: 9, scope: !2892)
!2895 = !DILocation(line: 1276, column: 58, scope: !803)
!2896 = !DILocation(line: 1276, column: 5, scope: !803)
!2897 = !DILocation(line: 1277, column: 1, scope: !803)
!2898 = !DILocation(line: 1295, column: 32, scope: !808)
!2899 = !DILocation(line: 1297, column: 9, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !808, file: !407, line: 1297, column: 9)
!2901 = !DILocation(line: 1297, column: 15, scope: !2900)
!2902 = !DILocation(line: 1297, column: 20, scope: !2900)
!2903 = !DILocation(line: 1297, column: 9, scope: !808)
!2904 = !DILocation(line: 1298, column: 16, scope: !2900)
!2905 = !DILocation(line: 1298, column: 9, scope: !2900)
!2906 = !DILocation(line: 1299, column: 28, scope: !808)
!2907 = !DILocation(line: 1299, column: 34, scope: !808)
!2908 = !DILocation(line: 1299, column: 12, scope: !808)
!2909 = !DILocation(line: 1299, column: 5, scope: !808)
!2910 = !DILocation(line: 1300, column: 1, scope: !808)
!2911 = !DILocation(line: 1398, column: 32, scope: !813)
!2912 = !DILocation(line: 1398, column: 48, scope: !813)
!2913 = !DILocation(line: 1398, column: 64, scope: !813)
!2914 = !DILocation(line: 1400, column: 5, scope: !813)
!2915 = !DILocation(line: 1400, column: 15, scope: !813)
!2916 = !DILocation(line: 1401, column: 5, scope: !813)
!2917 = !DILocation(line: 1401, column: 18, scope: !813)
!2918 = !DILocation(line: 1404, column: 38, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !813, file: !407, line: 1404, column: 9)
!2920 = !DILocation(line: 1404, column: 44, scope: !2919)
!2921 = !DILocation(line: 1404, column: 10, scope: !2919)
!2922 = !DILocation(line: 1404, column: 9, scope: !813)
!2923 = !DILocation(line: 1406, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2919, file: !407, line: 1405, column: 54)
!2925 = !DILocation(line: 1409, column: 33, scope: !813)
!2926 = !DILocation(line: 1409, column: 39, scope: !813)
!2927 = !DILocation(line: 1409, column: 48, scope: !813)
!2928 = !DILocation(line: 1409, column: 53, scope: !813)
!2929 = !DILocation(line: 1409, column: 12, scope: !813)
!2930 = !DILocation(line: 1409, column: 5, scope: !813)
!2931 = !DILocation(line: 1410, column: 1, scope: !813)
!2932 = !DILocation(line: 1373, column: 34, scope: !838)
!2933 = !DILocation(line: 1373, column: 50, scope: !838)
!2934 = !DILocation(line: 1373, column: 66, scope: !838)
!2935 = !DILocation(line: 1375, column: 5, scope: !838)
!2936 = !DILocation(line: 1375, column: 15, scope: !838)
!2937 = !DILocation(line: 1376, column: 5, scope: !838)
!2938 = !DILocation(line: 1376, column: 18, scope: !838)
!2939 = !DILocation(line: 1379, column: 38, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !838, file: !407, line: 1379, column: 9)
!2941 = !DILocation(line: 1379, column: 44, scope: !2940)
!2942 = !DILocation(line: 1379, column: 10, scope: !2940)
!2943 = !DILocation(line: 1379, column: 9, scope: !838)
!2944 = !DILocation(line: 1381, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !407, line: 1380, column: 54)
!2946 = !DILocation(line: 1384, column: 33, scope: !838)
!2947 = !DILocation(line: 1384, column: 39, scope: !838)
!2948 = !DILocation(line: 1384, column: 48, scope: !838)
!2949 = !DILocation(line: 1384, column: 53, scope: !838)
!2950 = !DILocation(line: 1384, column: 12, scope: !838)
!2951 = !DILocation(line: 1384, column: 5, scope: !838)
!2952 = !DILocation(line: 1385, column: 1, scope: !838)
!2953 = !DILocation(line: 1419, column: 36, scope: !845)
!2954 = !DILocation(line: 1419, column: 52, scope: !845)
!2955 = !DILocation(line: 1419, column: 68, scope: !845)
!2956 = !DILocation(line: 1421, column: 5, scope: !845)
!2957 = !DILocation(line: 1421, column: 15, scope: !845)
!2958 = !DILocation(line: 1424, column: 38, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !845, file: !407, line: 1424, column: 9)
!2960 = !DILocation(line: 1424, column: 44, scope: !2959)
!2961 = !DILocation(line: 1424, column: 10, scope: !2959)
!2962 = !DILocation(line: 1424, column: 9, scope: !845)
!2963 = !DILocation(line: 1426, column: 9, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !407, line: 1425, column: 45)
!2965 = !DILocation(line: 1429, column: 33, scope: !845)
!2966 = !DILocation(line: 1429, column: 39, scope: !845)
!2967 = !DILocation(line: 1429, column: 48, scope: !845)
!2968 = !DILocation(line: 1429, column: 12, scope: !845)
!2969 = !DILocation(line: 1429, column: 5, scope: !845)
!2970 = !DILocation(line: 1430, column: 1, scope: !845)
!2971 = !DILocation(line: 1438, column: 30, scope: !851)
!2972 = !DILocation(line: 1438, column: 46, scope: !851)
!2973 = !DILocation(line: 1438, column: 62, scope: !851)
!2974 = !DILocation(line: 1440, column: 5, scope: !851)
!2975 = !DILocation(line: 1440, column: 12, scope: !851)
!2976 = !{!2977, !2977, i64 0}
!2977 = !{!"double", !1029, i64 0}
!2978 = !DILocation(line: 1441, column: 5, scope: !851)
!2979 = !DILocation(line: 1441, column: 9, scope: !851)
!2980 = !DILocation(line: 1442, column: 5, scope: !851)
!2981 = !DILocation(line: 1442, column: 9, scope: !851)
!2982 = !DILocation(line: 1443, column: 5, scope: !851)
!2983 = !DILocation(line: 1443, column: 9, scope: !851)
!2984 = !DILocation(line: 1443, column: 15, scope: !851)
!2985 = !DILocation(line: 1444, column: 5, scope: !851)
!2986 = !DILocation(line: 1444, column: 15, scope: !851)
!2987 = !DILocation(line: 1444, column: 36, scope: !851)
!2988 = !DILocation(line: 1445, column: 5, scope: !851)
!2989 = !DILocation(line: 1445, column: 25, scope: !851)
!2990 = !DILocation(line: 1448, column: 9, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1448, column: 9)
!2992 = !DILocation(line: 1448, column: 15, scope: !2991)
!2993 = !DILocation(line: 1448, column: 20, scope: !2991)
!2994 = !DILocation(line: 1448, column: 9, scope: !851)
!2995 = !DILocation(line: 1449, column: 16, scope: !2991)
!2996 = !DILocation(line: 1449, column: 9, scope: !2991)
!2997 = !DILocation(line: 1451, column: 38, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1451, column: 9)
!2999 = !DILocation(line: 1451, column: 44, scope: !2998)
!3000 = !DILocation(line: 1451, column: 10, scope: !2998)
!3001 = !DILocation(line: 1451, column: 9, scope: !851)
!3002 = !DILocation(line: 1453, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2998, file: !407, line: 1452, column: 62)
!3004 = !DILocation(line: 1456, column: 9, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1456, column: 9)
!3006 = !DILocation(line: 1456, column: 18, scope: !3005)
!3007 = !DILocation(line: 1456, column: 9, scope: !851)
!3008 = !DILocation(line: 1457, column: 17, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !407, line: 1456, column: 23)
!3010 = !DILocation(line: 1458, column: 5, scope: !3009)
!3011 = !DILocation(line: 1459, column: 14, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3005, file: !407, line: 1459, column: 14)
!3013 = !DILocation(line: 1459, column: 23, scope: !3012)
!3014 = !DILocation(line: 1459, column: 32, scope: !3012)
!3015 = !DILocation(line: 1459, column: 14, scope: !3005)
!3016 = !DILocation(line: 1460, column: 25, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !407, line: 1459, column: 46)
!3018 = !DILocation(line: 1460, column: 9, scope: !3017)
!3019 = !DILocation(line: 1462, column: 9, scope: !3017)
!3020 = !DILocation(line: 1467, column: 29, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3012, file: !407, line: 1464, column: 10)
!3022 = !DILocation(line: 1467, column: 38, scope: !3021)
!3023 = !DILocation(line: 1467, column: 24, scope: !3021)
!3024 = !DILocation(line: 1467, column: 19, scope: !3021)
!3025 = !DILocation(line: 1467, column: 17, scope: !3021)
!3026 = !DILocation(line: 1470, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1470, column: 9)
!3028 = !DILocation(line: 1470, column: 19, scope: !3027)
!3029 = !DILocation(line: 1470, column: 9, scope: !851)
!3030 = !DILocation(line: 1471, column: 19, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !407, line: 1470, column: 26)
!3032 = !DILocation(line: 1472, column: 5, scope: !3031)
!3033 = !DILocation(line: 1473, column: 14, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3027, file: !407, line: 1473, column: 14)
!3035 = !DILocation(line: 1473, column: 24, scope: !3034)
!3036 = !DILocation(line: 1473, column: 14, scope: !3027)
!3037 = !DILocation(line: 1474, column: 22, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !407, line: 1473, column: 29)
!3039 = !DILocation(line: 1476, column: 22, scope: !3038)
!3040 = !DILocation(line: 1474, column: 9, scope: !3038)
!3041 = !DILocation(line: 1477, column: 9, scope: !3038)
!3042 = !DILocation(line: 1480, column: 23, scope: !851)
!3043 = !DILocation(line: 1480, column: 14, scope: !851)
!3044 = !DILocation(line: 1480, column: 34, scope: !851)
!3045 = !DILocation(line: 1480, column: 13, scope: !851)
!3046 = !DILocation(line: 1480, column: 13, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !851, file: !407, discriminator: 1)
!3048 = !DILocation(line: 1480, column: 152, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !851, file: !407, discriminator: 2)
!3050 = !DILocation(line: 1480, column: 151, scope: !851)
!3051 = !DILocation(line: 1480, column: 163, scope: !851)
!3052 = !DILocation(line: 1480, column: 138, scope: !851)
!3053 = !DILocation(line: 1480, column: 115, scope: !851)
!3054 = !DILocation(line: 1480, column: 9, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3056, file: !407, discriminator: 4)
!3056 = !DILexicalBlockFile(scope: !851, file: !407, discriminator: 3)
!3057 = !DILocation(line: 1481, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1481, column: 9)
!3059 = !DILocation(line: 1481, column: 13, scope: !3058)
!3060 = !DILocation(line: 1481, column: 9, scope: !851)
!3061 = !DILocation(line: 1482, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !407, line: 1481, column: 28)
!3063 = !DILocation(line: 1483, column: 9, scope: !3062)
!3064 = !DILocation(line: 1486, column: 7, scope: !866)
!3065 = !DILocation(line: 1486, column: 22, scope: !866)
!3066 = !DILocation(line: 1486, column: 37, scope: !866)
!3067 = !DILocation(line: 1486, column: 35, scope: !866)
!3068 = !DILocation(line: 1487, column: 23, scope: !866)
!3069 = !DILocation(line: 1487, column: 29, scope: !866)
!3070 = !DILocation(line: 1487, column: 35, scope: !866)
!3071 = !DILocation(line: 1487, column: 40, scope: !866)
!3072 = !DILocation(line: 1487, column: 51, scope: !866)
!3073 = !DILocation(line: 1487, column: 12, scope: !866)
!3074 = !DILocation(line: 1487, column: 10, scope: !866)
!3075 = !DILocation(line: 1488, column: 26, scope: !866)
!3076 = !DILocation(line: 1488, column: 5, scope: !866)
!3077 = !DILocation(line: 1488, column: 34, scope: !851)
!3078 = !DILocation(line: 1489, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1489, column: 9)
!3080 = !DILocation(line: 1489, column: 14, scope: !3079)
!3081 = !DILocation(line: 1489, column: 9, scope: !851)
!3082 = !DILocation(line: 1490, column: 28, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !407, line: 1489, column: 19)
!3084 = !DILocation(line: 1490, column: 9, scope: !3083)
!3085 = !DILocation(line: 1491, column: 9, scope: !3083)
!3086 = !DILocation(line: 1494, column: 24, scope: !851)
!3087 = !DILocation(line: 1494, column: 13, scope: !851)
!3088 = !DILocation(line: 1494, column: 11, scope: !851)
!3089 = !DILocation(line: 1495, column: 9, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !851, file: !407, line: 1495, column: 9)
!3091 = !DILocation(line: 1495, column: 15, scope: !3090)
!3092 = !DILocation(line: 1495, column: 9, scope: !851)
!3093 = !DILocation(line: 1496, column: 9, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !407, line: 1495, column: 30)
!3095 = !DILocation(line: 1499, column: 12, scope: !873)
!3096 = !DILocation(line: 1499, column: 10, scope: !873)
!3097 = !DILocation(line: 1499, column: 17, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3099, file: !407, discriminator: 2)
!3099 = !DILexicalBlockFile(scope: !872, file: !407, discriminator: 1)
!3100 = !DILocation(line: 1499, column: 21, scope: !872)
!3101 = !DILocation(line: 1499, column: 19, scope: !872)
!3102 = !DILocation(line: 1499, column: 5, scope: !873)
!3103 = !DILocation(line: 1500, column: 42, scope: !871)
!3104 = !DILocation(line: 1500, column: 38, scope: !871)
!3105 = !DILocation(line: 1500, column: 45, scope: !871)
!3106 = !DILocation(line: 1500, column: 50, scope: !871)
!3107 = !DILocation(line: 1500, column: 58, scope: !871)
!3108 = !DILocation(line: 1500, column: 54, scope: !871)
!3109 = !DILocation(line: 1500, column: 61, scope: !871)
!3110 = !{!3111, !1198, i64 0}
!3111 = !{!"epoll_event", !1198, i64 0, !1029, i64 4}
!3112 = !DILocation(line: 1500, column: 18, scope: !871)
!3113 = !DILocation(line: 1500, column: 16, scope: !871)
!3114 = !DILocation(line: 1501, column: 13, scope: !870)
!3115 = !DILocation(line: 1501, column: 20, scope: !870)
!3116 = !DILocation(line: 1501, column: 13, scope: !871)
!3117 = !DILocation(line: 1502, column: 13, scope: !869)
!3118 = !DILocation(line: 1502, column: 18, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !868, file: !407, discriminator: 1)
!3120 = !DILocation(line: 1502, column: 28, scope: !868)
!3121 = !DILocation(line: 1502, column: 51, scope: !868)
!3122 = !DILocation(line: 1502, column: 63, scope: !877)
!3123 = !DILocation(line: 1502, column: 71, scope: !877)
!3124 = !DILocation(line: 1502, column: 63, scope: !868)
!3125 = !DILocation(line: 1502, column: 96, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !876, file: !407, discriminator: 2)
!3127 = !DILocation(line: 1502, column: 110, scope: !876)
!3128 = !DILocation(line: 1502, column: 115, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !875, file: !407, discriminator: 4)
!3130 = !DILocation(line: 1502, column: 125, scope: !875)
!3131 = !DILocation(line: 1502, column: 155, scope: !875)
!3132 = !DILocation(line: 1502, column: 173, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !875, file: !407, line: 1502, column: 170)
!3134 = !DILocation(line: 1502, column: 190, scope: !3133)
!3135 = !DILocation(line: 1502, column: 170, scope: !3133)
!3136 = !DILocation(line: 1502, column: 200, scope: !3133)
!3137 = !DILocation(line: 1502, column: 170, scope: !875)
!3138 = !DILocation(line: 1502, column: 170, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !875, file: !407, discriminator: 5)
!3140 = !DILocation(line: 1502, column: 231, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3133, file: !407, discriminator: 6)
!3142 = !DILocation(line: 1502, column: 249, scope: !3133)
!3143 = !DILocation(line: 1502, column: 259, scope: !3133)
!3144 = !DILocation(line: 1502, column: 284, scope: !3133)
!3145 = !DILocation(line: 1502, column: 215, scope: !3133)
!3146 = !DILocation(line: 1502, column: 303, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !876, file: !407, discriminator: 7)
!3148 = !DILocation(line: 1502, column: 303, scope: !875)
!3149 = !DILocation(line: 1502, column: 303, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !875, file: !407, discriminator: 8)
!3151 = !DILocation(line: 1502, column: 316, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !876, file: !407, discriminator: 9)
!3153 = !DILocation(line: 1502, column: 318, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3155, file: !407, discriminator: 10)
!3155 = !DILexicalBlockFile(scope: !869, file: !407, discriminator: 3)
!3156 = !DILocation(line: 1502, column: 318, scope: !868)
!3157 = !DILocation(line: 1502, column: 318, scope: !3158)
!3158 = !DILexicalBlockFile(scope: !868, file: !407, discriminator: 11)
!3159 = !DILocation(line: 1503, column: 13, scope: !869)
!3160 = !DILocation(line: 1505, column: 51, scope: !871)
!3161 = !DILocation(line: 1505, column: 45, scope: !871)
!3162 = !DILocation(line: 1505, column: 10, scope: !871)
!3163 = !DILocation(line: 1505, column: 28, scope: !871)
!3164 = !DILocation(line: 1505, column: 11, scope: !871)
!3165 = !DILocation(line: 1505, column: 37, scope: !871)
!3166 = !DILocation(line: 1505, column: 48, scope: !871)
!3167 = !DILocation(line: 1506, column: 5, scope: !871)
!3168 = !DILocation(line: 1499, column: 28, scope: !872)
!3169 = !DILocation(line: 1499, column: 5, scope: !872)
!3170 = !DILocation(line: 1506, column: 5, scope: !873)
!3171 = !DILocation(line: 1509, column: 16, scope: !851)
!3172 = !DILocation(line: 1509, column: 5, scope: !851)
!3173 = !DILocation(line: 1510, column: 12, scope: !851)
!3174 = !DILocation(line: 1510, column: 5, scope: !851)
!3175 = !DILocation(line: 1511, column: 1, scope: !851)
!3176 = !DILocation(line: 1521, column: 31, scope: !878)
!3177 = !DILocation(line: 1521, column: 47, scope: !878)
!3178 = !DILocation(line: 1523, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !878, file: !407, line: 1523, column: 9)
!3180 = !DILocation(line: 1523, column: 15, scope: !3179)
!3181 = !DILocation(line: 1523, column: 20, scope: !3179)
!3182 = !DILocation(line: 1523, column: 9, scope: !878)
!3183 = !DILocation(line: 1524, column: 16, scope: !3179)
!3184 = !DILocation(line: 1524, column: 9, scope: !3179)
!3185 = !DILocation(line: 1526, column: 21, scope: !878)
!3186 = !DILocation(line: 1526, column: 8, scope: !878)
!3187 = !DILocation(line: 1526, column: 29, scope: !878)
!3188 = !DILocation(line: 1526, column: 38, scope: !878)
!3189 = !DILocation(line: 1527, column: 24, scope: !878)
!3190 = !DILocation(line: 1527, column: 12, scope: !878)
!3191 = !DILocation(line: 1527, column: 5, scope: !878)
!3192 = !DILocation(line: 1528, column: 1, scope: !878)
!3193 = !DILocation(line: 1531, column: 24, scope: !884)
!3194 = !DILocation(line: 1531, column: 40, scope: !884)
!3195 = !DILocation(line: 1535, column: 35, scope: !884)
!3196 = !DILocation(line: 1535, column: 12, scope: !884)
!3197 = !DILocation(line: 1535, column: 5, scope: !884)
!3198 = !DILocation(line: 1203, column: 33, scope: !786)
!3199 = !DILocation(line: 1203, column: 43, scope: !786)
!3200 = !DILocation(line: 1203, column: 57, scope: !786)
!3201 = !DILocation(line: 1203, column: 68, scope: !786)
!3202 = !DILocation(line: 1205, column: 5, scope: !786)
!3203 = !DILocation(line: 1205, column: 21, scope: !786)
!3204 = !DILocation(line: 1208, column: 31, scope: !786)
!3205 = !DILocation(line: 1208, column: 37, scope: !786)
!3206 = !{!1314, !1028, i64 304}
!3207 = !DILocation(line: 1208, column: 46, scope: !786)
!3208 = !DILocation(line: 1208, column: 12, scope: !786)
!3209 = !DILocation(line: 1208, column: 10, scope: !786)
!3210 = !DILocation(line: 1209, column: 9, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !786, file: !407, line: 1209, column: 9)
!3212 = !DILocation(line: 1209, column: 14, scope: !3211)
!3213 = !DILocation(line: 1209, column: 9, scope: !786)
!3214 = !DILocation(line: 1210, column: 9, scope: !3211)
!3215 = !DILocation(line: 1212, column: 9, scope: !798)
!3216 = !DILocation(line: 1212, column: 12, scope: !798)
!3217 = !DILocation(line: 1212, column: 9, scope: !786)
!3218 = !DILocation(line: 1213, column: 11, scope: !796)
!3219 = !DILocation(line: 1213, column: 26, scope: !796)
!3220 = !DILocation(line: 1213, column: 41, scope: !796)
!3221 = !DILocation(line: 1213, column: 39, scope: !796)
!3222 = !DILocation(line: 1215, column: 15, scope: !796)
!3223 = !DILocation(line: 1216, column: 13, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !796, file: !407, line: 1216, column: 13)
!3225 = !DILocation(line: 1216, column: 13, scope: !796)
!3226 = !DILocation(line: 1217, column: 40, scope: !3224)
!3227 = !DILocation(line: 1217, column: 26, scope: !3224)
!3228 = !DILocation(line: 1217, column: 13, scope: !3224)
!3229 = !DILocation(line: 1217, column: 19, scope: !3224)
!3230 = !DILocation(line: 1217, column: 24, scope: !3224)
!3231 = !DILocation(line: 1220, column: 35, scope: !3224)
!3232 = !DILocation(line: 1220, column: 22, scope: !3224)
!3233 = !DILocation(line: 1220, column: 9, scope: !3224)
!3234 = !DILocation(line: 1220, column: 15, scope: !3224)
!3235 = !DILocation(line: 1220, column: 20, scope: !3224)
!3236 = !DILocation(line: 1221, column: 30, scope: !796)
!3237 = !DILocation(line: 1221, column: 9, scope: !796)
!3238 = !DILocation(line: 1221, column: 38, scope: !797)
!3239 = !DILocation(line: 1222, column: 5, scope: !797)
!3240 = !DILocation(line: 1224, column: 22, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !798, file: !407, line: 1223, column: 10)
!3242 = !DILocation(line: 1224, column: 9, scope: !3241)
!3243 = !DILocation(line: 1224, column: 15, scope: !3241)
!3244 = !DILocation(line: 1224, column: 20, scope: !3241)
!3245 = !DILocation(line: 1226, column: 9, scope: !802)
!3246 = !DILocation(line: 1226, column: 15, scope: !802)
!3247 = !DILocation(line: 1226, column: 20, scope: !802)
!3248 = !DILocation(line: 1226, column: 9, scope: !786)
!3249 = !DILocation(line: 1227, column: 9, scope: !801)
!3250 = !DILocation(line: 1227, column: 14, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !800, file: !407, discriminator: 1)
!3252 = !DILocation(line: 1227, column: 24, scope: !800)
!3253 = !DILocation(line: 1227, column: 54, scope: !800)
!3254 = !DILocation(line: 1227, column: 41, scope: !800)
!3255 = !DILocation(line: 1227, column: 69, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !800, file: !407, line: 1227, column: 66)
!3257 = !DILocation(line: 1227, column: 86, scope: !3256)
!3258 = !DILocation(line: 1227, column: 66, scope: !3256)
!3259 = !DILocation(line: 1227, column: 96, scope: !3256)
!3260 = !DILocation(line: 1227, column: 66, scope: !800)
!3261 = !DILocation(line: 1227, column: 66, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !800, file: !407, discriminator: 2)
!3263 = !DILocation(line: 1227, column: 127, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3256, file: !407, discriminator: 3)
!3265 = !DILocation(line: 1227, column: 145, scope: !3256)
!3266 = !DILocation(line: 1227, column: 155, scope: !3256)
!3267 = !DILocation(line: 1227, column: 180, scope: !3256)
!3268 = !DILocation(line: 1227, column: 111, scope: !3256)
!3269 = !DILocation(line: 1227, column: 199, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !801, file: !407, discriminator: 4)
!3271 = !DILocation(line: 1227, column: 199, scope: !800)
!3272 = !DILocation(line: 1227, column: 199, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !800, file: !407, discriminator: 5)
!3274 = !DILocation(line: 1228, column: 28, scope: !801)
!3275 = !DILocation(line: 1228, column: 9, scope: !801)
!3276 = !DILocation(line: 1229, column: 9, scope: !801)
!3277 = !DILocation(line: 1239, column: 24, scope: !786)
!3278 = !DILocation(line: 1239, column: 12, scope: !786)
!3279 = !DILocation(line: 1239, column: 5, scope: !786)
!3280 = !DILocation(line: 1240, column: 1, scope: !786)
!3281 = !DILocation(line: 1183, column: 21, scope: !811)
!3282 = !DILocation(line: 1183, column: 5, scope: !811)
!3283 = !DILocation(line: 1184, column: 5, scope: !811)
!3284 = !DILocation(line: 1324, column: 26, scope: !822)
!3285 = !DILocation(line: 1324, column: 36, scope: !822)
!3286 = !DILocation(line: 1324, column: 50, scope: !822)
!3287 = !DILocation(line: 1324, column: 68, scope: !822)
!3288 = !DILocation(line: 1326, column: 5, scope: !822)
!3289 = !DILocation(line: 1326, column: 24, scope: !822)
!3290 = !DILocation(line: 1327, column: 5, scope: !822)
!3291 = !DILocation(line: 1327, column: 9, scope: !822)
!3292 = !DILocation(line: 1328, column: 5, scope: !822)
!3293 = !DILocation(line: 1328, column: 9, scope: !822)
!3294 = !DILocation(line: 1330, column: 9, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !822, file: !407, line: 1330, column: 9)
!3296 = !DILocation(line: 1330, column: 14, scope: !3295)
!3297 = !DILocation(line: 1330, column: 9, scope: !822)
!3298 = !DILocation(line: 1331, column: 16, scope: !3295)
!3299 = !DILocation(line: 1331, column: 9, scope: !3295)
!3300 = !DILocation(line: 1333, column: 36, scope: !822)
!3301 = !DILocation(line: 1333, column: 10, scope: !822)
!3302 = !DILocation(line: 1333, column: 8, scope: !822)
!3303 = !DILocation(line: 1334, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !822, file: !407, line: 1334, column: 9)
!3305 = !DILocation(line: 1334, column: 12, scope: !3304)
!3306 = !DILocation(line: 1334, column: 9, scope: !822)
!3307 = !DILocation(line: 1335, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !407, line: 1334, column: 19)
!3309 = !DILocation(line: 1338, column: 13, scope: !822)
!3310 = !DILocation(line: 1338, column: 5, scope: !822)
!3311 = !DILocation(line: 1341, column: 21, scope: !835)
!3312 = !DILocation(line: 1341, column: 12, scope: !835)
!3313 = !DILocation(line: 1341, column: 19, scope: !835)
!3314 = !DILocation(line: 1342, column: 22, scope: !835)
!3315 = !DILocation(line: 1342, column: 12, scope: !835)
!3316 = !DILocation(line: 1342, column: 17, scope: !835)
!3317 = !DILocation(line: 1342, column: 20, scope: !835)
!3318 = !DILocation(line: 1343, column: 11, scope: !834)
!3319 = !DILocation(line: 1343, column: 26, scope: !834)
!3320 = !DILocation(line: 1343, column: 41, scope: !834)
!3321 = !DILocation(line: 1343, column: 39, scope: !834)
!3322 = !DILocation(line: 1344, column: 28, scope: !834)
!3323 = !DILocation(line: 1344, column: 34, scope: !834)
!3324 = !DILocation(line: 1344, column: 38, scope: !834)
!3325 = !DILocation(line: 1344, column: 18, scope: !834)
!3326 = !DILocation(line: 1344, column: 16, scope: !834)
!3327 = !DILocation(line: 1345, column: 30, scope: !834)
!3328 = !DILocation(line: 1345, column: 9, scope: !834)
!3329 = !DILocation(line: 1345, column: 38, scope: !835)
!3330 = !DILocation(line: 1346, column: 9, scope: !835)
!3331 = !DILocation(line: 1351, column: 11, scope: !837)
!3332 = !DILocation(line: 1351, column: 26, scope: !837)
!3333 = !DILocation(line: 1351, column: 41, scope: !837)
!3334 = !DILocation(line: 1351, column: 39, scope: !837)
!3335 = !DILocation(line: 1352, column: 28, scope: !837)
!3336 = !DILocation(line: 1352, column: 34, scope: !837)
!3337 = !DILocation(line: 1352, column: 38, scope: !837)
!3338 = !DILocation(line: 1352, column: 18, scope: !837)
!3339 = !DILocation(line: 1352, column: 16, scope: !837)
!3340 = !DILocation(line: 1353, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !837, file: !407, line: 1353, column: 13)
!3342 = !DILocation(line: 1353, column: 14, scope: !3341)
!3343 = !DILocation(line: 1353, column: 36, scope: !3341)
!3344 = !DILocation(line: 1353, column: 13, scope: !837)
!3345 = !DILocation(line: 1355, column: 20, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !407, line: 1353, column: 42)
!3347 = !DILocation(line: 1356, column: 15, scope: !3346)
!3348 = !DILocation(line: 1356, column: 36, scope: !3346)
!3349 = !DILocation(line: 1357, column: 9, scope: !3346)
!3350 = !DILocation(line: 1358, column: 30, scope: !837)
!3351 = !DILocation(line: 1358, column: 9, scope: !837)
!3352 = !DILocation(line: 1358, column: 38, scope: !835)
!3353 = !DILocation(line: 1359, column: 9, scope: !835)
!3354 = !DILocation(line: 1361, column: 16, scope: !835)
!3355 = !DILocation(line: 1362, column: 11, scope: !835)
!3356 = !DILocation(line: 1362, column: 32, scope: !835)
!3357 = !DILocation(line: 1363, column: 5, scope: !835)
!3358 = !DILocation(line: 1365, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !822, file: !407, line: 1365, column: 9)
!3360 = !DILocation(line: 1365, column: 16, scope: !3359)
!3361 = !DILocation(line: 1365, column: 9, scope: !822)
!3362 = !DILocation(line: 1366, column: 28, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !407, line: 1365, column: 21)
!3364 = !DILocation(line: 1366, column: 9, scope: !3363)
!3365 = !DILocation(line: 1367, column: 9, scope: !3363)
!3366 = !DILocation(line: 1369, column: 58, scope: !822)
!3367 = !DILocation(line: 1369, column: 5, scope: !822)
!3368 = !DILocation(line: 1370, column: 1, scope: !822)
!3369 = !DILocation(line: 1286, column: 36, scope: !888)
!3370 = !DILocation(line: 1288, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !888, file: !407, line: 1288, column: 9)
!3372 = !DILocation(line: 1288, column: 15, scope: !3371)
!3373 = !DILocation(line: 1288, column: 20, scope: !3371)
!3374 = !DILocation(line: 1288, column: 9, scope: !888)
!3375 = !DILocation(line: 1289, column: 75, scope: !3371)
!3376 = !DILocation(line: 1289, column: 9, scope: !3371)
!3377 = !DILocation(line: 1291, column: 76, scope: !3371)
!3378 = !DILocation(line: 1291, column: 9, scope: !3371)
!3379 = !DILocation(line: 1292, column: 1, scope: !888)
