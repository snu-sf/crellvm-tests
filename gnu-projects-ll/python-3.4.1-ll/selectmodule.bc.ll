; ModuleID = './selectmodule.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @selectmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %4)
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call2 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 4096)
  %call3 = call i32 @PyType_Ready(%struct._typeobject* @poll_Type)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 1)
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 2)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 4)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 8)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 16)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 32)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 64)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 128)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 256)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i64 512)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 1024)
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %call18 = call i32 @PyType_Ready(%struct._typeobject* @pyEpoll_Type)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.6
  %17 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc22 = add i64 %17, 1
  store i64 %inc22, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pyEpoll_Type, i32 0, i32 0, i32 0))
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 1)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 4)
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 2)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 8)
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 16)
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 2147483648)
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call30 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i64 1073741824)
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i64 64)
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 128)
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i64 256)
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i64 512)
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call35 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i64 1024)
  %31 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i64 524288)
  %32 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.5, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

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
  %sec = alloca i64, align 8
  %usec = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_xdecref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %tout, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i64 3, i64 4, %struct._object** %ifdlist, %struct._object** %ofdlist, %struct._object** %efdlist, %struct._object** %tout)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %tout, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store %struct.timeval* null, %struct.timeval** %tvp, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %tout, align 8
  %call2 = call i32 @PyNumber_Check(%struct._object* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %tout, align 8
  %call6 = call i32 @_PyTime_ObjectToTimeval(%struct._object* %4, i64* %sec, i64* %usec, i32 1)
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.else.5
  %5 = load i64, i64* %sec, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %5, i64* %tv_sec, align 8
  %6 = load i64, i64* %usec, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %6, i64* %tv_usec, align 8
  %tv_sec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %7 = load i64, i64* %tv_sec10, align 8
  %cmp11 = icmp slt i64 %7, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  store %struct.timeval* %tv, %struct.timeval** %tvp, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.1
  %arrayidx = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i64 0
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2
  store i32 -1, i32* %sentinel, align 4
  %arrayidx16 = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i64 0
  %sentinel17 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx16, i32 0, i32 2
  store i32 -1, i32* %sentinel17, align 4
  %arrayidx18 = getelementptr [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i64 0
  %sentinel19 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx18, i32 0, i32 2
  store i32 -1, i32* %sentinel19, align 4
  %9 = load %struct._object*, %struct._object** %ifdlist, align 8
  %arraydecay = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0
  %call20 = call i32 @seq2set(%struct._object* %9, %struct.fd_set* %ifdset, %struct.pylist* %arraydecay)
  store i32 %call20, i32* %imax, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  br label %finally

if.end.23:                                        ; preds = %if.end.15
  %10 = load %struct._object*, %struct._object** %ofdlist, align 8
  %arraydecay24 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0
  %call25 = call i32 @seq2set(%struct._object* %10, %struct.fd_set* %ofdset, %struct.pylist* %arraydecay24)
  store i32 %call25, i32* %omax, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %finally

if.end.28:                                        ; preds = %if.end.23
  %11 = load %struct._object*, %struct._object** %efdlist, align 8
  %arraydecay29 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0
  %call30 = call i32 @seq2set(%struct._object* %11, %struct.fd_set* %efdset, %struct.pylist* %arraydecay29)
  store i32 %call30, i32* %emax, align 4
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  br label %finally

if.end.33:                                        ; preds = %if.end.28
  %12 = load i32, i32* %imax, align 4
  store i32 %12, i32* %max, align 4
  %13 = load i32, i32* %omax, align 4
  %14 = load i32, i32* %max, align 4
  %cmp34 = icmp sgt i32 %13, %14
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %15 = load i32, i32* %omax, align 4
  store i32 %15, i32* %max, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  %16 = load i32, i32* %emax, align 4
  %17 = load i32, i32* %max, align 4
  %cmp37 = icmp sgt i32 %16, %17
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %18 = load i32, i32* %emax, align 4
  store i32 %18, i32* %max, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %call40 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call40, %struct._ts** %_save, align 8
  %19 = load i32, i32* %max, align 4
  %20 = load %struct.timeval*, %struct.timeval** %tvp, align 8
  %call41 = call i32 @select(i32 %19, %struct.fd_set* %ifdset, %struct.fd_set* %ofdset, %struct.fd_set* %efdset, %struct.timeval* %20)
  store i32 %call41, i32* %n, align 4
  %21 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %21)
  %22 = load i32, i32* %n, align 4
  %cmp42 = icmp slt i32 %22, 0
  br i1 %cmp42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.39
  %23 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call44 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23)
  br label %if.end.101

if.else.45:                                       ; preds = %if.end.39
  %arraydecay46 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0
  %call47 = call %struct._object* @set2list(%struct.fd_set* %ifdset, %struct.pylist* %arraydecay46)
  store %struct._object* %call47, %struct._object** %ifdlist, align 8
  %arraydecay48 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0
  %call49 = call %struct._object* @set2list(%struct.fd_set* %ofdset, %struct.pylist* %arraydecay48)
  store %struct._object* %call49, %struct._object** %ofdlist, align 8
  %arraydecay50 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0
  %call51 = call %struct._object* @set2list(%struct.fd_set* %efdset, %struct.pylist* %arraydecay50)
  store %struct._object* %call51, %struct._object** %efdlist, align 8
  %call52 = call %struct._object* @PyErr_Occurred()
  %tobool53 = icmp ne %struct._object* %call52, null
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.45
  store %struct._object* null, %struct._object** %ret, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %if.else.45
  %24 = load %struct._object*, %struct._object** %ifdlist, align 8
  %25 = load %struct._object*, %struct._object** %ofdlist, align 8
  %26 = load %struct._object*, %struct._object** %efdlist, align 8
  %call56 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %24, %struct._object* %25, %struct._object* %26)
  store %struct._object* %call56, %struct._object** %ret, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %do.body

do.body:                                          ; preds = %if.end.57
  %27 = load %struct._object*, %struct._object** %ifdlist, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp58 = icmp ne %struct._object* %28, null
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %do.body
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp61 = icmp ne i64 %dec, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.60
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.60
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %do.body
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %36 = load %struct._object*, %struct._object** %ofdlist, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp68, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp68, align 8
  %cmp69 = icmp ne %struct._object* %37, null
  br i1 %cmp69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %do.body.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp68, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp72, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %40, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %43(%struct._object* %44)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %do.body.67
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %45 = load %struct._object*, %struct._object** %efdlist, align 8
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp85, align 8
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8
  %cmp86 = icmp ne %struct._object* %46, null
  br i1 %cmp86, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %do.body.84
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp89, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %49, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %52(%struct._object* %53)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.84
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %if.then.43
  br label %finally

finally:                                          ; preds = %if.end.101, %if.then.32, %if.then.27, %if.then.22
  %arraydecay102 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %rfd2obj, i32 0, i32 0
  call void @reap_obj(%struct.pylist* %arraydecay102)
  %arraydecay103 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %wfd2obj, i32 0, i32 0
  call void @reap_obj(%struct.pylist* %arraydecay103)
  %arraydecay104 = getelementptr inbounds [1025 x %struct.pylist], [1025 x %struct.pylist]* %efd2obj, i32 0, i32 0
  call void @reap_obj(%struct.pylist* %arraydecay104)
  %54 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %finally, %if.then.12, %if.then.8, %if.then.4, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @select_poll(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct.pollObject* @newPollObject()
  %0 = bitcast %struct.pollObject* %call to %struct._object*
  ret %struct._object* %0
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PyNumber_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @_PyTime_ObjectToTimeval(%struct._object*, i64*, i64*, i32) #1

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
  %v = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8
  store i32 -1, i32* %max, align 4
  store i32 0, i32* %index, align 4
  store %struct._object* null, %struct._object** %fast_seq, align 8
  store %struct._object* null, %struct._object** %o, align 8
  %0 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %0, i64 0
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 0
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %1, i32 0, i32 0
  %arrayidx1 = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %2 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx1) #4, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %2, 0
  %asmresult2 = extractvalue { i64, i64* } %2, 1
  %3 = trunc i64 %asmresult to i32
  store i32 %3, i32* %__d0, align 4
  %4 = ptrtoint i64* %asmresult2 to i64
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call = call %struct._object* @PySequence_Fast(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %fast_seq, align 8
  %7 = load %struct._object*, %struct._object** %fast_seq, align 8
  %tobool = icmp ne %struct._object* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load %struct._object*, %struct._object** %fast_seq, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %12 = load %struct._object*, %struct._object** %fast_seq, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %15 = load %struct._object*, %struct._object** %fast_seq, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %17, %cond.false ]
  %cmp4 = icmp slt i64 %8, %cond
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %18 = load %struct._object*, %struct._object** %fast_seq, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %20, 33554432
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %22 = load %struct._object*, %struct._object** %fast_seq, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %23, i32 0, i32 1
  %24 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx10 = getelementptr %struct._object*, %struct._object** %24, i64 %21
  %25 = load %struct._object*, %struct._object** %arrayidx10, align 8
  br label %cond.end.14

cond.false.11:                                    ; preds = %for.body
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._object*, %struct._object** %fast_seq, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %26
  %29 = load %struct._object*, %struct._object** %arrayidx13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.9
  %cond15 = phi %struct._object* [ %25, %cond.true.9 ], [ %29, %cond.false.11 ]
  store %struct._object* %cond15, %struct._object** %o, align 8
  %tobool16 = icmp ne %struct._object* %cond15, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %cond.end.14
  br label %finally

if.end.18:                                        ; preds = %cond.end.14
  %30 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %32 = load %struct._object*, %struct._object** %o, align 8
  %call19 = call i32 @PyObject_AsFileDescriptor(%struct._object* %32)
  store i32 %call19, i32* %v, align 4
  %33 = load i32, i32* %v, align 4
  %cmp20 = icmp eq i32 %33, -1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  br label %finally

if.end.22:                                        ; preds = %if.end.18
  %34 = load i32, i32* %v, align 4
  %cmp23 = icmp sge i32 %34, 0
  br i1 %cmp23, label %land.lhs.true, label %if.then.25

land.lhs.true:                                    ; preds = %if.end.22
  %35 = load i32, i32* %v, align 4
  %cmp24 = icmp slt i32 %35, 1024
  br i1 %cmp24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true, %if.end.22
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0))
  br label %finally

if.end.26:                                        ; preds = %land.lhs.true
  %37 = load i32, i32* %v, align 4
  %38 = load i32, i32* %max, align 4
  %cmp27 = icmp sgt i32 %37, %38
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %39 = load i32, i32* %v, align 4
  store i32 %39, i32* %max, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %40 = load i32, i32* %v, align 4
  %rem = srem i32 %40, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %41 = load i32, i32* %v, align 4
  %div = sdiv i32 %41, 64
  %idxprom = sext i32 %div to i64
  %42 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits30 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %42, i32 0, i32 0
  %arrayidx31 = getelementptr [16 x i64], [16 x i64]* %fds_bits30, i32 0, i64 %idxprom
  %43 = load i64, i64* %arrayidx31, align 8
  %or = or i64 %43, %shl
  store i64 %or, i64* %arrayidx31, align 8
  %44 = load i32, i32* %index, align 4
  %cmp32 = icmp sge i32 %44, 1024
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0))
  br label %finally

if.end.34:                                        ; preds = %if.end.29
  %46 = load %struct._object*, %struct._object** %o, align 8
  %47 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx36 = getelementptr %struct.pylist, %struct.pylist* %48, i64 %idxprom35
  %obj37 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx36, i32 0, i32 0
  store %struct._object* %46, %struct._object** %obj37, align 8
  %49 = load i32, i32* %v, align 4
  %50 = load i32, i32* %index, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx39 = getelementptr %struct.pylist, %struct.pylist* %51, i64 %idxprom38
  %fd = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx39, i32 0, i32 1
  store i32 %49, i32* %fd, align 4
  %52 = load i32, i32* %index, align 4
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx41 = getelementptr %struct.pylist, %struct.pylist* %53, i64 %idxprom40
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx41, i32 0, i32 2
  store i32 0, i32* %sentinel, align 4
  %54 = load i32, i32* %index, align 4
  %inc42 = add i32 %54, 1
  store i32 %inc42, i32* %index, align 4
  %idxprom43 = sext i32 %inc42 to i64
  %55 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx44 = getelementptr %struct.pylist, %struct.pylist* %55, i64 %idxprom43
  %sentinel45 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx44, i32 0, i32 2
  store i32 -1, i32* %sentinel45, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %56 = load i64, i64* %i, align 8
  %inc46 = add i64 %56, 1
  store i64 %inc46, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %do.body.47

do.body.47:                                       ; preds = %for.end
  %57 = load %struct._object*, %struct._object** %fast_seq, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt48, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %ob_refcnt48, align 8
  %cmp49 = icmp ne i64 %dec, 0
  br i1 %cmp49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %do.body.47
  br label %if.end.52

if.else:                                          ; preds = %do.body.47
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %62(%struct._object* %63)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %64 = load i32, i32* %max, align 4
  %add = add i32 %64, 1
  store i32 %add, i32* %retval
  br label %return

finally:                                          ; preds = %if.then.33, %if.then.25, %if.then.21, %if.then.17
  br label %do.body.54

do.body.54:                                       ; preds = %finally
  %65 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp55 = icmp ne %struct._object* %66, null
  br i1 %cmp55, label %if.then.56, label %if.end.68

if.then.56:                                       ; preds = %do.body.54
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp58, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %69, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.57
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %72(%struct._object* %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.67, %do.body.54
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  %74 = load %struct._object*, %struct._object** %fast_seq, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp71, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %76, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %79(%struct._object* %80)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.80, %do.end.53, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %1, i64 %idxprom
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %sentinel, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx2 = getelementptr %struct.pylist, %struct.pylist* %4, i64 %idxprom1
  %fd3 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %fd3, align 4
  %div = sdiv i32 %5, 64
  %idxprom4 = sext i32 %div to i64
  %6 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0
  %arrayidx5 = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 %idxprom4
  %7 = load i64, i64* %arrayidx5, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx7 = getelementptr %struct.pylist, %struct.pylist* %9, i64 %idxprom6
  %fd8 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx7, i32 0, i32 1
  %10 = load i32, i32* %fd8, align 4
  %rem = srem i32 %10, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %7, %shl
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc10 = add i32 %12, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %count, align 4
  %conv = sext i32 %13 to i64
  %call = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call, %struct._object** %list, align 8
  %14 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %14, null
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.47, %if.end.12
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx15 = getelementptr %struct.pylist, %struct.pylist* %16, i64 %idxprom14
  %sentinel16 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx15, i32 0, i32 2
  %17 = load i32, i32* %sentinel16, align 4
  %cmp17 = icmp sge i32 %17, 0
  br i1 %cmp17, label %for.body.19, label %for.end.49

for.body.19:                                      ; preds = %for.cond.13
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx21 = getelementptr %struct.pylist, %struct.pylist* %19, i64 %idxprom20
  %fd22 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx21, i32 0, i32 1
  %20 = load i32, i32* %fd22, align 4
  store i32 %20, i32* %fd, align 4
  %21 = load i32, i32* %fd, align 4
  %div23 = sdiv i32 %21, 64
  %idxprom24 = sext i32 %div23 to i64
  %22 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits25 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %arrayidx26 = getelementptr [16 x i64], [16 x i64]* %fds_bits25, i32 0, i64 %idxprom24
  %23 = load i64, i64* %arrayidx26, align 8
  %24 = load i32, i32* %fd, align 4
  %rem27 = srem i32 %24, 64
  %sh_prom28 = zext i32 %rem27 to i64
  %shl29 = shl i64 1, %sh_prom28
  %and30 = and i64 %23, %shl29
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %for.body.19
  %25 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx35 = getelementptr %struct.pylist, %struct.pylist* %26, i64 %idxprom34
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx35, i32 0, i32 0
  %27 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %27, %struct._object** %o, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx37 = getelementptr %struct.pylist, %struct.pylist* %29, i64 %idxprom36
  %obj38 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx37, i32 0, i32 0
  store %struct._object* null, %struct._object** %obj38, align 8
  %30 = load %struct._object*, %struct._object** %list, align 8
  %31 = load i32, i32* %i, align 4
  %conv39 = sext i32 %31 to i64
  %32 = load %struct._object*, %struct._object** %o, align 8
  %call40 = call i32 @PyList_SetItem(%struct._object* %30, i64 %conv39, %struct._object* %32)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.33
  br label %finally

if.end.44:                                        ; preds = %if.then.33
  %33 = load i32, i32* %i, align 4
  %inc45 = add i32 %33, 1
  store i32 %inc45, i32* %i, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.44, %for.body.19
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %34 = load i32, i32* %j, align 4
  %inc48 = add i32 %34, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.13

for.end.49:                                       ; preds = %for.cond.13
  %35 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

finally:                                          ; preds = %if.then.43
  br label %do.body

do.body:                                          ; preds = %finally
  %36 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %do.body
  br label %if.end.53

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  br label %do.end

do.end:                                           ; preds = %if.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end.49, %if.then.11
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

; Function Attrs: nounwind uwtable
define internal void @reap_obj(%struct.pylist* %fd2obj) #0 {
entry:
  %fd2obj.addr = alloca %struct.pylist*, align 8
  %i = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pylist* %fd2obj, %struct.pylist** %fd2obj.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1025
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx = getelementptr %struct.pylist, %struct.pylist* %2, i64 %idxprom
  %sentinel = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx, i32 0, i32 2
  %3 = load i32, i32* %sentinel, align 4
  %cmp1 = icmp sge i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx3 = getelementptr %struct.pylist, %struct.pylist* %6, i64 %idxprom2
  %obj = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx3, i32 0, i32 0
  %7 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp4 = icmp ne %struct._object* %8, null
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx6 = getelementptr %struct.pylist, %struct.pylist* %10, i64 %idxprom5
  %obj7 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx6, i32 0, i32 0
  store %struct._object* null, %struct._object** %obj7, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end

if.else:                                          ; preds = %do.body.8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %do.end.12
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load %struct.pylist*, %struct.pylist** %fd2obj.addr, align 8
  %arrayidx13 = getelementptr %struct.pylist, %struct.pylist* %19, i64 0
  %sentinel14 = getelementptr inbounds %struct.pylist, %struct.pylist* %arrayidx13, i32 0, i32 2
  store i32 -1, i32* %sentinel14, align 4
  ret void
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct.pollObject* @newPollObject() #0 {
entry:
  %retval = alloca %struct.pollObject*, align 8
  %self = alloca %struct.pollObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @poll_Type)
  %0 = bitcast %struct._object* %call to %struct.pollObject*
  store %struct.pollObject* %0, %struct.pollObject** %self, align 8
  %1 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %cmp = icmp eq %struct.pollObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.pollObject* null, %struct.pollObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %2, i32 0, i32 2
  store i32 0, i32* %ufd_uptodate, align 4
  %3 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %3, i32 0, i32 4
  store %struct.pollfd* null, %struct.pollfd** %ufds, align 8
  %4 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %poll_running = getelementptr inbounds %struct.pollObject, %struct.pollObject* %4, i32 0, i32 5
  store i32 0, i32* %poll_running, align 4
  %call1 = call %struct._object* @PyDict_New()
  %5 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 1
  store %struct._object* %call1, %struct._object** %dict, align 8
  %6 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %dict2 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %dict2, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %8 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  %9 = bitcast %struct.pollObject* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct.pollObject* null, %struct.pollObject** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %16 = load %struct.pollObject*, %struct.pollObject** %self, align 8
  store %struct.pollObject* %16, %struct.pollObject** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end, %if.then
  %17 = load %struct.pollObject*, %struct.pollObject** %retval
  ret %struct.pollObject* %17
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal void @poll_dealloc(%struct.pollObject* %self) #0 {
entry:
  %self.addr = alloca %struct.pollObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  %0 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %0, i32 0, i32 4
  %1 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8
  %cmp = icmp ne %struct.pollfd* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds1 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %2, i32 0, i32 4
  %3 = load %struct.pollfd*, %struct.pollfd** %ufds1, align 8
  %4 = bitcast %struct.pollfd* %3 to i8*
  call void @PyMem_Free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %15 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %16 = bitcast %struct.pollObject* %15 to i8*
  call void @PyObject_Free(i8* %16)
  ret void
}

declare void @PyMem_Free(i8*) #1

declare void @PyObject_Free(i8*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i16 7, i16* %events, align 2
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), %struct._object** %o, i32 (%struct._object*, i8*)* @ushort_converter, i16* %events)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o, align 8
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %1)
  store i32 %call1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %conv = sext i32 %3 to i64
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call4, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %key, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %5 = load i16, i16* %events, align 2
  %conv9 = zext i16 %5 to i64
  %call10 = call %struct._object* @PyLong_FromLong(i64 %conv9)
  store %struct._object* %call10, %struct._object** %value, align 8
  %6 = load %struct._object*, %struct._object** %value, align 8
  %cmp11 = icmp eq %struct._object* %6, null
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.8
  %14 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %16 = load %struct._object*, %struct._object** %key, align 8
  %17 = load %struct._object*, %struct._object** %value, align 8
  %call19 = call i32 @PyDict_SetItem(%struct._object* %15, %struct._object* %16, %struct._object* %17)
  store i32 %call19, i32* %err, align 4
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.18
  %18 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp21, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %20, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %23(%struct._object* %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %25 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp33, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %27, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %30(%struct._object* %31)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %32 = load i32, i32* %err, align 4
  %cmp44 = icmp slt i32 %32, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %do.end.43
  %33 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %33, i32 0, i32 2
  store i32 0, i32* %ufd_uptodate, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %do.end, %if.then.7, %if.then.2, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %struct._object** %o, i32 (%struct._object*, i8*)* @ushort_converter, i16* %events)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o, align 8
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %1)
  store i32 %call1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %conv = sext i32 %3 to i64
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call4, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %key, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %5 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %key, align 8
  %call9 = call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %7)
  %cmp10 = icmp eq %struct._object* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32* @__errno_location() #5
  store i32 2, i32* %call13, align 4
  %8 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8)
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %9 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.8
  %16 = load i16, i16* %events, align 2
  %conv20 = zext i16 %16 to i64
  %call21 = call %struct._object* @PyLong_FromLong(i64 %conv20)
  store %struct._object* %call21, %struct._object** %value, align 8
  %17 = load %struct._object*, %struct._object** %value, align 8
  %cmp22 = icmp eq %struct._object* %17, null
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.19
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %18 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp26, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %20, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.25
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.25
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %23(%struct._object* %24)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.19
  %25 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict38 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %25, i32 0, i32 1
  %26 = load %struct._object*, %struct._object** %dict38, align 8
  %27 = load %struct._object*, %struct._object** %key, align 8
  %28 = load %struct._object*, %struct._object** %value, align 8
  %call39 = call i32 @PyDict_SetItem(%struct._object* %26, %struct._object* %27, %struct._object* %28)
  store i32 %call39, i32* %err, align 4
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.37
  %29 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp41, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %31, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %34(%struct._object* %35)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %36 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp53, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %38, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.52
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.52
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %41(%struct._object* %42)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %43 = load i32, i32* %err, align 4
  %cmp64 = icmp slt i32 %43, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %do.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %do.end.63
  %44 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %44, i32 0, i32 2
  store i32 0, i32* %ufd_uptodate, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.66, %do.end.36, %do.end, %if.then.7, %if.then.2, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @poll_unregister(%struct.pollObject* %self, %struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pollObject*, align 8
  %o.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %key, align 8
  %3 = load %struct._object*, %struct._object** %key, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %6 = load %struct._object*, %struct._object** %key, align 8
  %call6 = call i32 @PyDict_DelItem(%struct._object* %5, %struct._object* %6)
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %21 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %21, i32 0, i32 2
  store i32 0, i32* %ufd_uptodate, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.26, %do.end, %if.then.4, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result_list, align 8
  store %struct._object* null, %struct._object** %tout, align 8
  store i32 0, i32* %timeout, align 4
  store %struct._object* null, %struct._object** %value, align 8
  store %struct._object* null, %struct._object** %num, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 0, i64 1, %struct._object** %tout)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %tout, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %tout, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %timeout, align 4
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %tout, align 8
  %call3 = call i32 @PyNumber_Check(%struct._object* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %tout, align 8
  %call7 = call %struct._object* @PyNumber_Long(%struct._object* %5)
  store %struct._object* %call7, %struct._object** %tout, align 8
  %6 = load %struct._object*, %struct._object** %tout, align 8
  %tobool8 = icmp ne %struct._object* %6, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.else.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.else.6
  %7 = load %struct._object*, %struct._object** %tout, align 8
  %call11 = call i32 @_PyLong_AsInt(%struct._object* %7)
  store i32 %call11, i32* %timeout, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %8 = load %struct._object*, %struct._object** %tout, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else.14:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %15 = load i32, i32* %timeout, align 4
  %cmp16 = icmp eq i32 %15, -1
  br i1 %cmp16, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %do.end
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool18 = icmp ne %struct._object* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.2
  %16 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %poll_running = getelementptr inbounds %struct.pollObject, %struct.pollObject* %16, i32 0, i32 5
  %17 = load i32, i32* %poll_running, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %18 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  %19 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %19, i32 0, i32 2
  %20 = load i32, i32* %ufd_uptodate, align 4
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %if.end.25
  %21 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %call28 = call i32 @update_ufd_array(%struct.pollObject* %21)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.25
  %22 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %poll_running33 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %22, i32 0, i32 5
  store i32 1, i32* %poll_running33, align 4
  %call34 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call34, %struct._ts** %_save, align 8
  %23 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %23, i32 0, i32 4
  %24 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8
  %25 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_len = getelementptr inbounds %struct.pollObject, %struct.pollObject* %25, i32 0, i32 3
  %26 = load i32, i32* %ufd_len, align 4
  %conv = sext i32 %26 to i64
  %27 = load i32, i32* %timeout, align 4
  %call35 = call i32 @poll(%struct.pollfd* %24, i64 %conv, i32 %27)
  store i32 %call35, i32* %poll_result, align 4
  %28 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %28)
  %29 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %poll_running36 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %29, i32 0, i32 5
  store i32 0, i32* %poll_running36, align 4
  %30 = load i32, i32* %poll_result, align 4
  %cmp37 = icmp slt i32 %30, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.32
  %31 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call40 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %31)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.32
  %32 = load i32, i32* %poll_result, align 4
  %conv42 = sext i32 %32 to i64
  %call43 = call %struct._object* @PyList_New(i64 %conv42)
  store %struct._object* %call43, %struct._object** %result_list, align 8
  %33 = load %struct._object*, %struct._object** %result_list, align 8
  %tobool44 = icmp ne %struct._object* %33, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.46:                                       ; preds = %if.end.41
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.46
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %poll_result, align 4
  %cmp47 = icmp slt i32 %34, %35
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds49 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %37, i32 0, i32 4
  %38 = load %struct.pollfd*, %struct.pollfd** %ufds49, align 8
  %arrayidx = getelementptr %struct.pollfd, %struct.pollfd* %38, i64 %idxprom
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 2
  %39 = load i16, i16* %revents, align 2
  %tobool50 = icmp ne i16 %39, 0
  %lnot = xor i1 %tobool50, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i32, i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call51 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call51, %struct._object** %value, align 8
  %41 = load %struct._object*, %struct._object** %value, align 8
  %cmp52 = icmp eq %struct._object* %41, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %while.end
  br label %error

if.end.55:                                        ; preds = %while.end
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds57 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %43, i32 0, i32 4
  %44 = load %struct.pollfd*, %struct.pollfd** %ufds57, align 8
  %arrayidx58 = getelementptr %struct.pollfd, %struct.pollfd* %44, i64 %idxprom56
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx58, i32 0, i32 0
  %45 = load i32, i32* %fd, align 4
  %conv59 = sext i32 %45 to i64
  %call60 = call %struct._object* @PyLong_FromLong(i64 %conv59)
  store %struct._object* %call60, %struct._object** %num, align 8
  %46 = load %struct._object*, %struct._object** %num, align 8
  %cmp61 = icmp eq %struct._object* %46, null
  br i1 %cmp61, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %if.end.55
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %47 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp65, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %49, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %52(%struct._object* %53)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %error

if.end.76:                                        ; preds = %if.end.55
  %54 = load %struct._object*, %struct._object** %num, align 8
  %55 = load %struct._object*, %struct._object** %value, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %56, i32 0, i32 1
  %arrayidx77 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %54, %struct._object** %arrayidx77, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds79 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %58, i32 0, i32 4
  %59 = load %struct.pollfd*, %struct.pollfd** %ufds79, align 8
  %arrayidx80 = getelementptr %struct.pollfd, %struct.pollfd* %59, i64 %idxprom78
  %revents81 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx80, i32 0, i32 2
  %60 = load i16, i16* %revents81, align 2
  %conv82 = sext i16 %60 to i32
  %and = and i32 %conv82, 65535
  %conv83 = sext i32 %and to i64
  %call84 = call %struct._object* @PyLong_FromLong(i64 %conv83)
  store %struct._object* %call84, %struct._object** %num, align 8
  %61 = load %struct._object*, %struct._object** %num, align 8
  %cmp85 = icmp eq %struct._object* %61, null
  br i1 %cmp85, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %if.end.76
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %62 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp89, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %64, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.88
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.88
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %67(%struct._object* %68)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %error

if.end.100:                                       ; preds = %if.end.76
  %69 = load %struct._object*, %struct._object** %num, align 8
  %70 = load %struct._object*, %struct._object** %value, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyTupleObject*
  %ob_item101 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1
  %arrayidx102 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item101, i32 0, i64 1
  store %struct._object* %69, %struct._object** %arrayidx102, align 8
  %72 = load %struct._object*, %struct._object** %result_list, align 8
  %73 = load i32, i32* %j, align 4
  %conv103 = sext i32 %73 to i64
  %74 = load %struct._object*, %struct._object** %value, align 8
  %call104 = call i32 @PyList_SetItem(%struct._object* %72, i64 %conv103, %struct._object* %74)
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %if.end.100
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %75 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp109, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %77, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %80(%struct._object* %81)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %error

if.end.120:                                       ; preds = %if.end.100
  %82 = load i32, i32* %i, align 4
  %inc121 = add i32 %82, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %83 = load i32, i32* %j, align 4
  %inc122 = add i32 %83, 1
  store i32 %inc122, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.123

if.end.123:                                       ; preds = %for.end
  %84 = load %struct._object*, %struct._object** %result_list, align 8
  store %struct._object* %84, %struct._object** %retval
  br label %return

error:                                            ; preds = %do.end.119, %do.end.99, %do.end.75, %if.then.54
  br label %do.body.124

do.body.124:                                      ; preds = %error
  %85 = load %struct._object*, %struct._object** %result_list, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp125, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %87, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.124
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.124
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %90(%struct._object* %91)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.135, %if.end.123, %if.then.45, %if.then.39, %if.then.30, %if.then.24, %if.then.19, %if.then.9, %if.then.5, %if.then
  %92 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %92
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ushort_converter(%struct._object* %obj, i8* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %uval = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %0)
  store i64 %call, i64* %uval, align 8
  %1 = load i64, i64* %uval, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %uval, align 8
  %cmp2 = icmp ugt i64 %2, 65535
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* %uval, align 8
  %conv = trunc i64 %4 to i16
  %5 = load i8*, i8** %ptr.addr, align 8
  %6 = bitcast i8* %5 to i16*
  store i16 %conv, i16* %6, align 2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Long(%struct._object*) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

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
  store %struct.pollObject* %self, %struct.pollObject** %self.addr, align 8
  %0 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds = getelementptr inbounds %struct.pollObject, %struct.pollObject* %0, i32 0, i32 4
  %1 = load %struct.pollfd*, %struct.pollfd** %ufds, align 8
  store %struct.pollfd* %1, %struct.pollfd** %old_ufds, align 8
  %2 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.pollObject, %struct.pollObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %dict, align 8
  %call = call i64 @PyDict_Size(%struct._object* %3)
  %conv = trunc i64 %call to i32
  %4 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_len = getelementptr inbounds %struct.pollObject, %struct.pollObject* %4, i32 0, i32 3
  store i32 %conv, i32* %ufd_len, align 4
  %5 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_len1 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %5, i32 0, i32 3
  %6 = load i32, i32* %ufd_len1, align 4
  %conv2 = sext i32 %6 to i64
  %cmp = icmp ugt i64 %conv2, 1152921504606846975
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds4 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %7, i32 0, i32 4
  %8 = load %struct.pollfd*, %struct.pollfd** %ufds4, align 8
  %9 = bitcast %struct.pollfd* %8 to i8*
  %10 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_len5 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %10, i32 0, i32 3
  %11 = load i32, i32* %ufd_len5, align 4
  %conv6 = sext i32 %11 to i64
  %mul = mul i64 %conv6, 8
  %call7 = call i8* @PyMem_Realloc(i8* %9, i64 %mul)
  %12 = bitcast i8* %call7 to %struct.pollfd*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pollfd* [ null, %cond.true ], [ %12, %cond.false ]
  %13 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds8 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %13, i32 0, i32 4
  store %struct.pollfd* %cond, %struct.pollfd** %ufds8, align 8
  %14 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds9 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %14, i32 0, i32 4
  %15 = load %struct.pollfd*, %struct.pollfd** %ufds9, align 8
  %cmp10 = icmp eq %struct.pollfd* %15, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load %struct.pollfd*, %struct.pollfd** %old_ufds, align 8
  %17 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds12 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %17, i32 0, i32 4
  store %struct.pollfd* %16, %struct.pollfd** %ufds12, align 8
  %call13 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %dict14 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %dict14, align 8
  %call15 = call i32 @PyDict_Next(%struct._object* %19, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._object*, %struct._object** %key, align 8
  %call16 = call i64 @PyLong_AsLong(%struct._object* %20)
  %conv17 = trunc i64 %call16 to i32
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds18 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %22, i32 0, i32 4
  %23 = load %struct.pollfd*, %struct.pollfd** %ufds18, align 8
  %arrayidx = getelementptr %struct.pollfd, %struct.pollfd* %23, i64 %21
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx, i32 0, i32 0
  store i32 %conv17, i32* %fd, align 4
  %24 = load %struct._object*, %struct._object** %value, align 8
  %call19 = call i64 @PyLong_AsLong(%struct._object* %24)
  %conv20 = trunc i64 %call19 to i16
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufds21 = getelementptr inbounds %struct.pollObject, %struct.pollObject* %26, i32 0, i32 4
  %27 = load %struct.pollfd*, %struct.pollfd** %ufds21, align 8
  %arrayidx22 = getelementptr %struct.pollfd, %struct.pollfd* %27, i64 %25
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %arrayidx22, i32 0, i32 1
  store i16 %conv20, i16* %events, align 2
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.pollObject*, %struct.pollObject** %self.addr, align 8
  %ufd_uptodate = getelementptr inbounds %struct.pollObject, %struct.pollObject* %29, i32 0, i32 2
  store i32 1, i32* %ufd_uptodate, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @poll(%struct.pollfd*, i64, i32) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @pyepoll_dealloc(%struct.pyEpoll_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %call = call i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %0)
  %1 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %2 = bitcast %struct.pyEpoll_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 38
  %4 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %5 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %6 = bitcast %struct.pyEpoll_Object* %5 to i8*
  call void %4(i8* %6)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %sizehint = alloca i32, align 4
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 0, i32* %flags, align 4
  store i32 1023, i32* %sizehint, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_new.kwlist, i32 0, i32 0), i32* %sizehint, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %sizehint, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %5 = load i32, i32* %sizehint, align 4
  %6 = load i32, i32* %flags, align 4
  %call3 = call %struct._object* @newPyEpoll_Object(%struct._typeobject* %4, i32 %5, i32 %6, i32 -1)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %save_errno = alloca i32, align 4
  %epfd1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store i32 0, i32* %save_errno, align 4
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %epfd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd2 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1
  %3 = load i32, i32* %epfd2, align 4
  store i32 %3, i32* %epfd1, align 4
  %4 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd3 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %4, i32 0, i32 1
  store i32 -1, i32* %epfd3, align 4
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %5 = load i32, i32* %epfd1, align 4
  %call4 = call i32 @close(i32 %5)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call7, align 4
  store i32 %6, i32* %save_errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %save_errno, align 4
  ret i32 %8
}

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_fromfd(%struct._object* %cls, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32* %fd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %cls.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct._typeobject*
  %3 = load i32, i32* %fd, align 4
  %call1 = call %struct._object* @newPyEpoll_Object(%struct._typeobject* %2, i32 1023, i32 0, i32 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_close(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %call = call i32 @pyepoll_internal_close(%struct.pyEpoll_Object* %0)
  %call1 = call i32* @__errno_location() #5
  store i32 %call, i32* %call1, align 4
  %call2 = call i32* @__errno_location() #5
  %1 = load i32, i32* %call2, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %2)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_fileno(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %epfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd1 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1
  %3 = load i32, i32* %epfd1, align 4
  %conv = sext i32 %3 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
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
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_modify.kwlist, i32 0, i32 0), %struct._object** %pfd, i32* %events)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1
  %3 = load i32, i32* %epfd, align 4
  %4 = load %struct._object*, %struct._object** %pfd, align 8
  %5 = load i32, i32* %events, align 4
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %3, i32 3, %struct._object* %4, i32 %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
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
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 7, i32* %events, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_register.kwlist, i32 0, i32 0), %struct._object** %pfd, i32* %events)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1
  %3 = load i32, i32* %epfd, align 4
  %4 = load %struct._object*, %struct._object** %pfd, align 8
  %5 = load i32, i32* %events, align 4
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %3, i32 1, %struct._object* %4, i32 %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_unregister(%struct.pyEpoll_Object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %pfd = alloca %struct._object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pyepoll_unregister.kwlist, i32 0, i32 0), %struct._object** %pfd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %2, i32 0, i32 1
  %3 = load i32, i32* %epfd, align 4
  %4 = load %struct._object*, %struct._object** %pfd, align 8
  %call1 = call %struct._object* @pyepoll_internal_ctl(i32 %3, i32 2, %struct._object* %4, i32 0)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  %_save = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store double -1.000000e+00, double* %dtimeout, align 8
  store i32 -1, i32* %maxevents, align 4
  store %struct._object* null, %struct._object** %elist, align 8
  store %struct._object* null, %struct._object** %etuple, align 8
  store %struct.epoll_event* null, %struct.epoll_event** %evs, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %epfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyepoll_poll.kwlist, i32 0, i32 0), double* %dtimeout, i32* %maxevents)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load double, double* %dtimeout, align 8
  %cmp4 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %timeout, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %5 = load double, double* %dtimeout, align 8
  %mul = fmul double %5, 1.000000e+03
  %cmp6 = fcmp ogt double %mul, 0x41DFFFFFFFC00000
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %7 = load double, double* %dtimeout, align 8
  %mul9 = fmul double %7, 1.000000e+03
  %call10 = call double @ceil(double %mul9) #5
  %conv = fptosi double %call10 to i32
  store i32 %conv, i32* %timeout, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %8 = load i32, i32* %maxevents, align 4
  %cmp13 = icmp eq i32 %8, -1
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.12
  store i32 1023, i32* %maxevents, align 4
  br label %if.end.22

if.else.16:                                       ; preds = %if.end.12
  %9 = load i32, i32* %maxevents, align 4
  %cmp17 = icmp slt i32 %9, 1
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.16
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %11 = load i32, i32* %maxevents, align 4
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i32 %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.else.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %12 = load i32, i32* %maxevents, align 4
  %conv23 = sext i32 %12 to i64
  %cmp24 = icmp ugt i64 %conv23, 768614336404564650
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %13 = load i32, i32* %maxevents, align 4
  %conv26 = sext i32 %13 to i64
  %mul27 = mul i64 %conv26, 12
  %call28 = call i8* @PyMem_Malloc(i64 %mul27)
  %14 = bitcast i8* %call28 to %struct.epoll_event*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.epoll_event* [ null, %cond.true ], [ %14, %cond.false ]
  store %struct.epoll_event* %cond, %struct.epoll_event** %evs, align 8
  %15 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8
  %cmp29 = icmp eq %struct.epoll_event* %15, null
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %cond.end
  %call32 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %cond.end
  %call34 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call34, %struct._ts** %_save, align 8
  %16 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd35 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %16, i32 0, i32 1
  %17 = load i32, i32* %epfd35, align 4
  %18 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8
  %19 = load i32, i32* %maxevents, align 4
  %20 = load i32, i32* %timeout, align 4
  %call36 = call i32 @epoll_wait(i32 %17, %struct.epoll_event* %18, i32 %19, i32 %20)
  store i32 %call36, i32* %nfds, align 4
  %21 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %21)
  %22 = load i32, i32* %nfds, align 4
  %cmp37 = icmp slt i32 %22, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.33
  %23 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call40 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23)
  br label %error

if.end.41:                                        ; preds = %if.end.33
  %24 = load i32, i32* %nfds, align 4
  %conv42 = sext i32 %24 to i64
  %call43 = call %struct._object* @PyList_New(i64 %conv42)
  store %struct._object* %call43, %struct._object** %elist, align 8
  %25 = load %struct._object*, %struct._object** %elist, align 8
  %cmp44 = icmp eq %struct._object* %25, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  br label %error

if.end.47:                                        ; preds = %if.end.41
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nfds, align 4
  %cmp48 = icmp slt i32 %26, %27
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8
  %arrayidx = getelementptr %struct.epoll_event, %struct.epoll_event* %29, i64 %idxprom
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %arrayidx, i32 0, i32 1
  %fd = bitcast %union.epoll_data* %data to i32*
  %30 = load i32, i32* %fd, align 1
  %31 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %31 to i64
  %32 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8
  %arrayidx51 = getelementptr %struct.epoll_event, %struct.epoll_event* %32, i64 %idxprom50
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %arrayidx51, i32 0, i32 0
  %33 = load i32, i32* %events, align 1
  %call52 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 %30, i32 %33)
  store %struct._object* %call52, %struct._object** %etuple, align 8
  %34 = load %struct._object*, %struct._object** %etuple, align 8
  %cmp53 = icmp eq %struct._object* %34, null
  br i1 %cmp53, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.55
  %35 = load %struct._object*, %struct._object** %elist, align 8
  store %struct._object* %35, %struct._object** %_py_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp56 = icmp ne %struct._object* %36, null
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %elist, align 8
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp60 = icmp ne i64 %dec, 0
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.59
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.59
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %do.body
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %error

if.end.67:                                        ; preds = %for.body
  %44 = load %struct._object*, %struct._object** %etuple, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %45 to i64
  %46 = load %struct._object*, %struct._object** %elist, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %47, i32 0, i32 1
  %48 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx69 = getelementptr %struct._object*, %struct._object** %48, i64 %idxprom68
  store %struct._object* %44, %struct._object** %arrayidx69, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %49 = load i32, i32* %i, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %error

error:                                            ; preds = %for.end, %do.end.66, %if.then.46, %if.then.39
  %50 = load %struct.epoll_event*, %struct.epoll_event** %evs, align 8
  %51 = bitcast %struct.epoll_event* %50 to i8*
  call void @PyMem_Free(i8* %51)
  %52 = load %struct._object*, %struct._object** %elist, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.then.31, %if.then.19, %if.then.7, %if.then.2, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_enter(%struct.pyEpoll_Object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %epfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %3 = bitcast %struct.pyEpoll_Object* %2 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %6 = bitcast %struct.pyEpoll_Object* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* @pyepoll_exit.PyId_close, i8* null)
  ret %struct._object* %call
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
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store i32 %sizehint, i32* %sizehint.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.pyEpoll_Object*
  store %struct.pyEpoll_Object* %3, %struct.pyEpoll_Object** %self, align 8
  %4 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %cmp = icmp eq %struct.pyEpoll_Object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp eq i32 %5, -1
  br i1 %cmp1, label %if.then.2, label %if.else.9

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %6 = load i32, i32* %flags.addr, align 4
  %or = or i32 %6, 524288
  store i32 %or, i32* %flags.addr, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %8 = load i32, i32* %flags.addr, align 4
  %call5 = call i32 @epoll_create1(i32 %8) #4
  %9 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %9, i32 0, i32 1
  store i32 %call5, i32* %epfd, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.then.2
  %10 = load i32, i32* %sizehint.addr, align 4
  %call6 = call i32 @epoll_create(i32 %10) #4
  %11 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %epfd7 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %11, i32 0, i32 1
  store i32 %call6, i32* %epfd7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.4
  %12 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %12)
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %epfd10 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %14, i32 0, i32 1
  store i32 %13, i32* %epfd10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.end.8
  %15 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %epfd12 = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %15, i32 0, i32 1
  %16 = load i32, i32* %epfd12, align 4
  %cmp13 = icmp slt i32 %16, 0
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %17 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %18 = bitcast %struct.pyEpoll_Object* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else.17:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %25)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.11
  %26 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self, align 8
  %27 = bitcast %struct.pyEpoll_Object* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %do.end, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #3

; Function Attrs: nounwind
declare i32 @epoll_create(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_err_closed() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i32 0, i32 0))
  ret %struct._object* null
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

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
  %_save = alloca %struct._ts*, align 8
  %_save10 = alloca %struct._ts*, align 8
  store i32 %epfd, i32* %epfd.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store %struct._object* %pfd, %struct._object** %pfd.addr, align 8
  store i32 %events, i32* %events.addr, align 4
  %0 = load i32, i32* %epfd.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @pyepoll_err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %pfd.addr, align 8
  %call1 = call i32 @PyObject_AsFileDescriptor(%struct._object* %1)
  store i32 %call1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %op.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end.4, %if.end.4
  %4 = load i32, i32* %events.addr, align 4
  %events5 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ev, i32 0, i32 0
  store i32 %4, i32* %events5, align 1
  %5 = load i32, i32* %fd, align 4
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %ev, i32 0, i32 1
  %fd6 = bitcast %union.epoll_data* %data to i32*
  store i32 %5, i32* %fd6, align 1
  %call7 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call7, %struct._ts** %_save, align 8
  %6 = load i32, i32* %epfd.addr, align 4
  %7 = load i32, i32* %op.addr, align 4
  %8 = load i32, i32* %fd, align 4
  %call8 = call i32 @epoll_ctl(i32 %6, i32 %7, i32 %8, %struct.epoll_event* %ev) #4
  store i32 %call8, i32* %result, align 4
  %9 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.4
  %call11 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call11, %struct._ts** %_save10, align 8
  %10 = load i32, i32* %epfd.addr, align 4
  %11 = load i32, i32* %op.addr, align 4
  %12 = load i32, i32* %fd, align 4
  %call12 = call i32 @epoll_ctl(i32 %10, i32 %11, i32 %12, %struct.epoll_event* %ev) #4
  store i32 %call12, i32* %result, align 4
  %call13 = call i32* @__errno_location() #5
  %13 = load i32, i32* %call13, align 4
  %cmp14 = icmp eq i32 %13, 9
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %sw.bb.9
  store i32 0, i32* %result, align 4
  %call16 = call i32* @__errno_location() #5
  store i32 0, i32* %call16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %sw.bb.9
  %14 = load %struct._ts*, %struct._ts** %_save10, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  store i32 -1, i32* %result, align 4
  %call18 = call i32* @__errno_location() #5
  store i32 22, i32* %call18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.17, %sw.bb
  %15 = load i32, i32* %result, align 4
  %cmp19 = icmp slt i32 %15, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.epilog
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call21 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %sw.epilog
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.20, %if.then.3, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i8* @PyMem_Malloc(i64) #1

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyepoll_get_closed(%struct.pyEpoll_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pyEpoll_Object*, align 8
  store %struct.pyEpoll_Object* %self, %struct.pyEpoll_Object** %self.addr, align 8
  %0 = load %struct.pyEpoll_Object*, %struct.pyEpoll_Object** %self.addr, align 8
  %epfd = getelementptr inbounds %struct.pyEpoll_Object, %struct.pyEpoll_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %epfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc1 = add i64 %3, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 267067}
