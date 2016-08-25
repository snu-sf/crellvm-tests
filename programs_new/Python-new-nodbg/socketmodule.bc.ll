; ModuleID = './socketmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PySocketModule_APIObject = type { %struct._typeobject*, %struct._object*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PySocketSockObject = type { %struct._object, i32, i32, i32, i32, %struct._object* ()*, double }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%union.sock_addr = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, i64, [112 x i8] }
%struct.timeval = type { i64, i64 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.iovec = type { i8*, i64 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.cmsginfo = type { i32, i32, %struct.bufferinfo }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%struct.pollfd = type { i32, i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr_nl = type { i16, i16, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_ll = type { i16, i16, i32, i16, i8, i8, [8 x i8] }
%struct.ifreq = type { %union.anon.1, %union.anon.2 }
%union.anon.1 = type { [16 x i8] }
%union.anon.2 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.sockaddr_tipc = type { i16, i8, i8, %union.anon.3 }
%union.anon.3 = type { %struct.tipc_name_seq }
%struct.tipc_name_seq = type { i32, i32, i32 }
%struct.sockaddr_can = type { i16, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.anon.4 = type { %struct.tipc_name, i32 }
%struct.tipc_name = type { i32, i32 }
%struct.tipc_portid = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.protoent = type { i8*, i8**, i32 }
%struct.if_nameindex = type { i32, i8* }

@PyType_Type = external global %struct._typeobject, align 8
@sock_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PySocketSockObject*)* @sock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([2086 x i8], [2086 x i8]* @sock_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([27 x %struct.PyMethodDef], [27 x %struct.PyMethodDef]* @sock_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @sock_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @sock_initobj, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @sock_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@socketmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @socket_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([28 x %struct.PyMethodDef], [28 x %struct.PyMethodDef]* @socket_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyExc_OSError = external global %struct._object*, align 8
@PySocketModuleAPI = internal global %struct.PySocketModule_APIObject { %struct._typeobject* @sock_type, %struct._object* null, %struct._object* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"socket.herror\00", align 1
@socket_herror = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"herror\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"socket.gaierror\00", align 1
@socket_gaierror = internal global %struct._object* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"gaierror\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"socket.timeout\00", align 1
@socket_timeout = internal global %struct._object* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SocketType\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"has_ipv6\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"_socket.CAPI\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"AF_UNSPEC\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"AF_INET\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"AF_INET6\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"AF_UNIX\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"AF_AX25\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"AF_IPX\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"AF_APPLETALK\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"AF_NETROM\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"AF_BRIDGE\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"AF_ATMPVC\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"AF_X25\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"AF_ROSE\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"AF_DECnet\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"AF_NETBEUI\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"AF_SECURITY\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"AF_KEY\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"AF_NETLINK\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"NETLINK_ROUTE\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"NETLINK_USERSOCK\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"NETLINK_FIREWALL\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"NETLINK_NFLOG\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"NETLINK_XFRM\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"NETLINK_IP6_FW\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"NETLINK_DNRTMSG\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"AF_ROUTE\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"AF_ASH\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"AF_ECONET\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"AF_ATMSVC\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"AF_SNA\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"AF_IRDA\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"AF_PPPOX\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"AF_WANPIPE\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"AF_LLC\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"AF_CAN\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"PF_CAN\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"AF_RDS\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"PF_RDS\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"AF_PACKET\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"PF_PACKET\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"PACKET_HOST\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"PACKET_BROADCAST\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"PACKET_MULTICAST\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"PACKET_OTHERHOST\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"PACKET_OUTGOING\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"PACKET_LOOPBACK\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"PACKET_FASTROUTE\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"AF_TIPC\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"TIPC_ADDR_NAMESEQ\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"TIPC_ADDR_NAME\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"TIPC_ADDR_ID\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"TIPC_ZONE_SCOPE\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"TIPC_CLUSTER_SCOPE\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"TIPC_NODE_SCOPE\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"SOL_TIPC\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"TIPC_IMPORTANCE\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"TIPC_SRC_DROPPABLE\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"TIPC_DEST_DROPPABLE\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"TIPC_CONN_TIMEOUT\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"TIPC_LOW_IMPORTANCE\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"TIPC_MEDIUM_IMPORTANCE\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"TIPC_HIGH_IMPORTANCE\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"TIPC_CRITICAL_IMPORTANCE\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"TIPC_SUB_PORTS\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"TIPC_SUB_SERVICE\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"TIPC_SUB_CANCEL\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"TIPC_WAIT_FOREVER\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"TIPC_PUBLISHED\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"TIPC_WITHDRAWN\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"TIPC_SUBSCR_TIMEOUT\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"TIPC_CFG_SRV\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"TIPC_TOP_SRV\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"SOCK_STREAM\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"SOCK_DGRAM\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"SOCK_RAW\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"SOCK_SEQPACKET\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"SOCK_RDM\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"SOCK_CLOEXEC\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"SOCK_NONBLOCK\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"SO_DEBUG\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"SO_ACCEPTCONN\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"SO_REUSEADDR\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"SO_KEEPALIVE\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"SO_DONTROUTE\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"SO_BROADCAST\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"SO_LINGER\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"SO_OOBINLINE\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"SO_REUSEPORT\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"SO_SNDBUF\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"SO_RCVBUF\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"SO_SNDLOWAT\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"SO_RCVLOWAT\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"SO_SNDTIMEO\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"SO_RCVTIMEO\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"SO_ERROR\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"SO_TYPE\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"SO_PASSCRED\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"SO_PEERCRED\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"SO_BINDTODEVICE\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"SO_PRIORITY\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"SOMAXCONN\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"SCM_RIGHTS\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"SCM_CREDENTIALS\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"MSG_OOB\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"MSG_PEEK\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"MSG_DONTROUTE\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"MSG_DONTWAIT\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"MSG_EOR\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"MSG_TRUNC\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"MSG_CTRUNC\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"MSG_WAITALL\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"MSG_NOSIGNAL\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"MSG_CMSG_CLOEXEC\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"MSG_ERRQUEUE\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"MSG_CONFIRM\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"MSG_MORE\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"SOL_SOCKET\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"SOL_IP\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"SOL_TCP\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"SOL_UDP\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"SOL_CAN_BASE\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"SOL_CAN_RAW\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"CAN_RAW\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"CAN_EFF_FLAG\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"CAN_RTR_FLAG\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"CAN_ERR_FLAG\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"CAN_SFF_MASK\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"CAN_EFF_MASK\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"CAN_ERR_MASK\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"CAN_RAW_FILTER\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"CAN_RAW_ERR_FILTER\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"CAN_RAW_LOOPBACK\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"CAN_RAW_RECV_OWN_MSGS\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"CAN_BCM\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"CAN_BCM_TX_SETUP\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"CAN_BCM_TX_DELETE\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"CAN_BCM_TX_READ\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"CAN_BCM_TX_SEND\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"CAN_BCM_RX_SETUP\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"CAN_BCM_RX_DELETE\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"CAN_BCM_RX_READ\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"CAN_BCM_TX_STATUS\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"CAN_BCM_TX_EXPIRED\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"CAN_BCM_RX_STATUS\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"CAN_BCM_RX_TIMEOUT\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"CAN_BCM_RX_CHANGED\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"IPPROTO_IP\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"IPPROTO_HOPOPTS\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"IPPROTO_ICMP\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"IPPROTO_IGMP\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"IPPROTO_IPV6\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"IPPROTO_IPIP\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"IPPROTO_TCP\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"IPPROTO_EGP\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"IPPROTO_PUP\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"IPPROTO_UDP\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"IPPROTO_IDP\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"IPPROTO_TP\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"IPPROTO_ROUTING\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"IPPROTO_FRAGMENT\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"IPPROTO_RSVP\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"IPPROTO_GRE\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"IPPROTO_ESP\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"IPPROTO_AH\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"IPPROTO_ICMPV6\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"IPPROTO_NONE\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"IPPROTO_DSTOPTS\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"IPPROTO_PIM\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"IPPROTO_SCTP\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"IPPROTO_RAW\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"IPPORT_RESERVED\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"IPPORT_USERRESERVED\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"INADDR_ANY\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"INADDR_BROADCAST\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"INADDR_LOOPBACK\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"INADDR_UNSPEC_GROUP\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c"INADDR_ALLHOSTS_GROUP\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"INADDR_MAX_LOCAL_GROUP\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"INADDR_NONE\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"IP_OPTIONS\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"IP_HDRINCL\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"IP_TOS\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"IP_TTL\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"IP_RECVOPTS\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"IP_RECVRETOPTS\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"IP_RETOPTS\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"IP_MULTICAST_IF\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"IP_MULTICAST_TTL\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"IP_MULTICAST_LOOP\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"IP_ADD_MEMBERSHIP\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"IP_DROP_MEMBERSHIP\00", align 1
@.str.202 = private unnamed_addr constant [25 x i8] c"IP_DEFAULT_MULTICAST_TTL\00", align 1
@.str.203 = private unnamed_addr constant [26 x i8] c"IP_DEFAULT_MULTICAST_LOOP\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"IP_MAX_MEMBERSHIPS\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"IP_TRANSPARENT\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"IPV6_JOIN_GROUP\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"IPV6_LEAVE_GROUP\00", align 1
@.str.208 = private unnamed_addr constant [20 x i8] c"IPV6_MULTICAST_HOPS\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"IPV6_MULTICAST_IF\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"IPV6_MULTICAST_LOOP\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"IPV6_UNICAST_HOPS\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"IPV6_V6ONLY\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"IPV6_CHECKSUM\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"IPV6_DSTOPTS\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"IPV6_HOPLIMIT\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"IPV6_HOPOPTS\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"IPV6_NEXTHOP\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"IPV6_PKTINFO\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"IPV6_RECVDSTOPTS\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"IPV6_RECVHOPLIMIT\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"IPV6_RECVHOPOPTS\00", align 1
@.str.222 = private unnamed_addr constant [17 x i8] c"IPV6_RECVPKTINFO\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"IPV6_RECVRTHDR\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"IPV6_RECVTCLASS\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"IPV6_RTHDR\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"IPV6_RTHDRDSTOPTS\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"IPV6_RTHDR_TYPE_0\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"IPV6_TCLASS\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"TCP_NODELAY\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"TCP_MAXSEG\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"TCP_CORK\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"TCP_KEEPIDLE\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"TCP_KEEPINTVL\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"TCP_KEEPCNT\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"TCP_SYNCNT\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"TCP_LINGER2\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"TCP_DEFER_ACCEPT\00", align 1
@.str.238 = private unnamed_addr constant [17 x i8] c"TCP_WINDOW_CLAMP\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"TCP_INFO\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"TCP_QUICKACK\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"TCP_FASTOPEN\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"EAI_ADDRFAMILY\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"EAI_AGAIN\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"EAI_BADFLAGS\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"EAI_FAIL\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"EAI_FAMILY\00", align 1
@.str.247 = private unnamed_addr constant [11 x i8] c"EAI_MEMORY\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"EAI_NODATA\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"EAI_NONAME\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"EAI_OVERFLOW\00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"EAI_SERVICE\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"EAI_SOCKTYPE\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"EAI_SYSTEM\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"AI_PASSIVE\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"AI_CANONNAME\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"AI_NUMERICHOST\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"AI_NUMERICSERV\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"AI_ALL\00", align 1
@.str.259 = private unnamed_addr constant [14 x i8] c"AI_ADDRCONFIG\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"AI_V4MAPPED\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"NI_MAXHOST\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"NI_MAXSERV\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"NI_NOFQDN\00", align 1
@.str.264 = private unnamed_addr constant [15 x i8] c"NI_NUMERICHOST\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"NI_NAMEREQD\00", align 1
@.str.266 = private unnamed_addr constant [15 x i8] c"NI_NUMERICSERV\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"NI_DGRAM\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"SHUT_RD\00", align 1
@.str.269 = private unnamed_addr constant [8 x i8] c"SHUT_WR\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"SHUT_RDWR\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"_socket.socket\00", align 1
@sock_doc = internal global [2086 x i8] c"socket(family=AF_INET, type=SOCK_STREAM, proto=0, fileno=None) -> socket object\0A\0AOpen a socket of the given type.  The family argument specifies the\0Aaddress family; it defaults to AF_INET.  The type argument specifies\0Awhether this is a stream (SOCK_STREAM, this is the default)\0Aor datagram (SOCK_DGRAM) socket.  The protocol argument defaults to 0,\0Aspecifying the default protocol.  Keyword arguments are accepted.\0AThe socket is created as non-inheritable.\0A\0AA socket object represents one endpoint of a network connection.\0A\0AMethods of socket objects (keyword arguments not allowed):\0A\0A_accept() -- accept connection, returning new socket fd and client address\0Abind(addr) -- bind the socket to a local address\0Aclose() -- close the socket\0Aconnect(addr) -- connect the socket to a remote address\0Aconnect_ex(addr) -- connect, return an error code instead of an exception\0Adup() -- return a new socket fd duplicated from fileno()\0Afileno() -- return underlying file descriptor\0Agetpeername() -- return remote address [*]\0Agetsockname() -- return local address\0Agetsockopt(level, optname[, buflen]) -- get socket options\0Agettimeout() -- return timeout or None\0Alisten(n) -- start listening for incoming connections\0Arecv(buflen[, flags]) -- receive data\0Arecv_into(buffer[, nbytes[, flags]]) -- receive data (into a buffer)\0Arecvfrom(buflen[, flags]) -- receive data and sender's address\0Arecvfrom_into(buffer[, nbytes, [, flags])\0A  -- receive data and sender's address (into a buffer)\0Asendall(data[, flags]) -- send all data\0Asend(data[, flags]) -- send data, may not send all of it\0Asendto(data[, flags], addr) -- send data to a given address\0Asetblocking(0 | 1) -- set or clear the blocking I/O flag\0Asetsockopt(level, optname, value) -- set socket options\0Asettimeout(None | float) -- set or clear the timeout\0Ashutdown(how) -- shut down traffic in one or both directions\0Aif_nameindex() -- return all network interface indices and names\0Aif_nametoindex(name) -- return the corresponding interface index\0Aif_indextoname(index) -- return the corresponding interface name\0A\0A [*] not available on all platforms!\00", align 16
@sock_methods = internal global [27 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.274, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_accept to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @accept_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.275, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_bind to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @bind_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.276, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @close_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.277, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_connect to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @connect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.278, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_connect_ex to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @connect_ex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.279, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @detach_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @fileno_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.281, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_getpeername to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @getpeername_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.282, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_getsockname to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @getsockname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.283, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_getsockopt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @getsockopt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.284, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_listen to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @listen_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.285, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_recv to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([322 x i8], [322 x i8]* @recv_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*, %struct._object*)* @sock_recv_into to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @recv_into_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.287, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_recvfrom to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @recvfrom_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*, %struct._object*)* @sock_recvfrom_into to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @recvfrom_into_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.289, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_send to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @send_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.290, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_sendall to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @sendall_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.291, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_sendto to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @sendto_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.292, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_setblocking to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @setblocking_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.293, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_settimeout to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @settimeout_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.294, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*)* @sock_gettimeout to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @gettimeout_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.295, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_setsockopt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @setsockopt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.296, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_shutdown to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @shutdown_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_recvmsg to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([1477 x i8], [1477 x i8]* @recvmsg_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.298, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_recvmsg_into to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([1787 x i8], [1787 x i8]* @recvmsg_into_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.299, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySocketSockObject*, %struct._object*)* @sock_sendmsg to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([886 x i8], [886 x i8]* @sendmsg_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@sock_memberlist = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.388, i32 0, i32 0), i32 1, i64 20, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.389, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.390, i32 0, i32 0), i32 1, i64 24, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.391, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.392, i32 0, i32 0), i32 1, i64 28, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.393, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 4, i64 40, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.394, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@PyExc_ResourceWarning = external global %struct._object*, align 8
@.str.272 = private unnamed_addr constant [12 x i8] c"unclosed %R\00", align 1
@PyExc_Warning = external global %struct._object*, align 8
@.str.273 = private unnamed_addr constant [54 x i8] c"<socket object, fd=%ld, family=%d, type=%d, proto=%d>\00", align 1
@.str.274 = private unnamed_addr constant [8 x i8] c"_accept\00", align 1
@accept_doc = internal global [229 x i8] c"_accept() -> (integer, address info)\0A\0AWait for an incoming connection.  Return a new socket file descriptor\0Arepresenting the connection, and the address of the client.\0AFor IP sockets, the address info is a pair (hostaddr, port).\00", align 16
@.str.275 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@bind_doc = internal global [226 x i8] c"bind(address)\0A\0ABind the socket to a local address.  For IP sockets, the address is a\0Apair (host, port); the host must refer to the local host. For raw packet\0Asockets the address is a tuple (ifname, proto [,pkttype [,hatype]])\00", align 16
@.str.276 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@close_doc = internal global [63 x i8] c"close()\0A\0AClose the socket.  It cannot be used after this call.\00", align 16
@.str.277 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@connect_doc = internal global [111 x i8] c"connect(address)\0A\0AConnect the socket to a remote address.  For IP sockets, the address\0Ais a pair (host, port).\00", align 16
@.str.278 = private unnamed_addr constant [11 x i8] c"connect_ex\00", align 1
@connect_ex_doc = internal global [159 x i8] c"connect_ex(address) -> errno\0A\0AThis is like connect(address), but returns an error code (the errno value)\0Ainstead of raising an exception when an error occurs.\00", align 16
@.str.279 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@detach_doc = internal global [217 x i8] c"detach()\0A\0AClose the socket object without closing the underlying file descriptor.\0AThe object cannot be used after this call, but the file descriptor\0Acan be reused for other purposes.  The file descriptor is returned.\00", align 16
@.str.280 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@fileno_doc = internal global [71 x i8] c"fileno() -> integer\0A\0AReturn the integer file descriptor of the socket.\00", align 16
@.str.281 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@getpeername_doc = internal global [136 x i8] c"getpeername() -> address info\0A\0AReturn the address of the remote endpoint.  For IP sockets, the address\0Ainfo is a pair (hostaddr, port).\00", align 16
@.str.282 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@getsockname_doc = internal global [135 x i8] c"getsockname() -> address info\0A\0AReturn the address of the local endpoint.  For IP sockets, the address\0Ainfo is a pair (hostaddr, port).\00", align 16
@.str.283 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@getsockopt_doc = internal global [230 x i8] c"getsockopt(level, option[, buffersize]) -> value\0A\0AGet a socket option.  See the Unix manual for level and option.\0AIf a nonzero buffersize argument is given, the return value is a\0Astring of that length; otherwise it is an integer.\00", align 16
@.str.284 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@listen_doc = internal global [241 x i8] c"listen(backlog)\0A\0AEnable a server to accept connections.  The backlog argument must be at\0Aleast 0 (if it is lower, it is set to 0); it specifies the number of\0Aunaccepted connections that the system will allow before refusing new\0Aconnections.\00", align 16
@.str.285 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@recv_doc = internal global [322 x i8] c"recv(buffersize[, flags]) -> data\0A\0AReceive up to buffersize bytes from the socket.  For the optional flags\0Aargument, see the Unix manual.  When no data is available, block until\0Aat least one byte is available or until the remote end is closed.  When\0Athe remote end is closed and all data is read, return the empty string.\00", align 16
@.str.286 = private unnamed_addr constant [10 x i8] c"recv_into\00", align 1
@recv_into_doc = internal global [335 x i8] c"recv_into(buffer, [nbytes[, flags]]) -> nbytes_read\0A\0AA version of recv() that stores its data into a buffer rather than creating \0Aa new string.  Receive up to buffersize bytes from the socket.  If buffersize \0Ais not specified (or 0), receive up to the size available in the given buffer.\0A\0ASee recv() for documentation about the flags.\00", align 16
@.str.287 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@recvfrom_doc = internal global [127 x i8] c"recvfrom(buffersize[, flags]) -> (data, address info)\0A\0ALike recv(buffersize, flags) but also return the sender's address info.\00", align 16
@.str.288 = private unnamed_addr constant [14 x i8] c"recvfrom_into\00", align 1
@recvfrom_into_doc = internal global [153 x i8] c"recvfrom_into(buffer[, nbytes[, flags]]) -> (nbytes, address info)\0A\0ALike recv_into(buffer[, nbytes[, flags]]) but also return the sender's address info.\00", align 16
@.str.289 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@send_doc = internal global [209 x i8] c"send(data[, flags]) -> count\0A\0ASend a data string to the socket.  For the optional flags\0Aargument, see the Unix manual.  Return the number of bytes\0Asent; this may be less than len(data) if the network is busy.\00", align 16
@.str.290 = private unnamed_addr constant [8 x i8] c"sendall\00", align 1
@sendall_doc = internal global [241 x i8] c"sendall(data[, flags])\0A\0ASend a data string to the socket.  For the optional flags\0Aargument, see the Unix manual.  This calls send() repeatedly\0Auntil all data is sent.  If an error occurs, it's impossible\0Ato tell how much data has been sent.\00", align 16
@.str.291 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@sendto_doc = internal global [167 x i8] c"sendto(data[, flags], address) -> count\0A\0ALike send(data, flags) but allows specifying the destination address.\0AFor IP sockets, the address is a pair (hostaddr, port).\00", align 16
@.str.292 = private unnamed_addr constant [12 x i8] c"setblocking\00", align 1
@setblocking_doc = internal global [192 x i8] c"setblocking(flag)\0A\0ASet the socket to blocking (flag is true) or non-blocking (false).\0Asetblocking(True) is equivalent to settimeout(None);\0Asetblocking(False) is equivalent to settimeout(0.0).\00", align 16
@.str.293 = private unnamed_addr constant [11 x i8] c"settimeout\00", align 1
@settimeout_doc = internal global [262 x i8] c"settimeout(timeout)\0A\0ASet a timeout on socket operations.  'timeout' can be a float,\0Agiving in seconds, or None.  Setting a timeout of None disables\0Athe timeout feature and is equivalent to setblocking(1).\0ASetting a timeout of zero is the same as setblocking(0).\00", align 16
@.str.294 = private unnamed_addr constant [11 x i8] c"gettimeout\00", align 1
@gettimeout_doc = internal global [178 x i8] c"gettimeout() -> timeout\0A\0AReturns the timeout in seconds (float) associated with socket \0Aoperations. A timeout of None indicates that timeouts on socket \0Aoperations are disabled.\00", align 16
@.str.295 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@setsockopt_doc = internal global [155 x i8] c"setsockopt(level, option, value)\0A\0ASet a socket option.  See the Unix manual for level and option.\0AThe value argument can either be an integer or a string.\00", align 16
@.str.296 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@shutdown_doc = internal global [160 x i8] c"shutdown(flag)\0A\0AShut down the reading side of the socket (flag == SHUT_RD), the writing side\0Aof the socket (flag == SHUT_WR), or both ends (flag == SHUT_RDWR).\00", align 16
@.str.297 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@recvmsg_doc = internal global [1477 x i8] c"recvmsg(bufsize[, ancbufsize[, flags]]) -> (data, ancdata, msg_flags, address)\0A\0AReceive normal data (up to bufsize bytes) and ancillary data from the\0Asocket.  The ancbufsize argument sets the size in bytes of the\0Ainternal buffer used to receive the ancillary data; it defaults to 0,\0Ameaning that no ancillary data will be received.  Appropriate buffer\0Asizes for ancillary data can be calculated using CMSG_SPACE() or\0ACMSG_LEN(), and items which do not fit into the buffer might be\0Atruncated or discarded.  The flags argument defaults to 0 and has the\0Asame meaning as for recv().\0A\0AThe return value is a 4-tuple: (data, ancdata, msg_flags, address).\0AThe data item is a bytes object holding the non-ancillary data\0Areceived.  The ancdata item is a list of zero or more tuples\0A(cmsg_level, cmsg_type, cmsg_data) representing the ancillary data\0A(control messages) received: cmsg_level and cmsg_type are integers\0Aspecifying the protocol level and protocol-specific type respectively,\0Aand cmsg_data is a bytes object holding the associated data.  The\0Amsg_flags item is the bitwise OR of various flags indicating\0Aconditions on the received message; see your system documentation for\0Adetails.  If the receiving socket is unconnected, address is the\0Aaddress of the sending socket, if available; otherwise, its value is\0Aunspecified.\0A\0AIf recvmsg() raises an exception after the system call returns, it\0Awill first attempt to close any file descriptors received via the\0ASCM_RIGHTS mechanism.\00", align 16
@.str.298 = private unnamed_addr constant [13 x i8] c"recvmsg_into\00", align 1
@recvmsg_into_doc = internal global [1787 x i8] c"recvmsg_into(buffers[, ancbufsize[, flags]]) -> (nbytes, ancdata, msg_flags, address)\0A\0AReceive normal data and ancillary data from the socket, scattering the\0Anon-ancillary data into a series of buffers.  The buffers argument\0Amust be an iterable of objects that export writable buffers\0A(e.g. bytearray objects); these will be filled with successive chunks\0Aof the non-ancillary data until it has all been written or there are\0Ano more buffers.  The ancbufsize argument sets the size in bytes of\0Athe internal buffer used to receive the ancillary data; it defaults to\0A0, meaning that no ancillary data will be received.  Appropriate\0Abuffer sizes for ancillary data can be calculated using CMSG_SPACE()\0Aor CMSG_LEN(), and items which do not fit into the buffer might be\0Atruncated or discarded.  The flags argument defaults to 0 and has the\0Asame meaning as for recv().\0A\0AThe return value is a 4-tuple: (nbytes, ancdata, msg_flags, address).\0AThe nbytes item is the total number of bytes of non-ancillary data\0Awritten into the buffers.  The ancdata item is a list of zero or more\0Atuples (cmsg_level, cmsg_type, cmsg_data) representing the ancillary\0Adata (control messages) received: cmsg_level and cmsg_type are\0Aintegers specifying the protocol level and protocol-specific type\0Arespectively, and cmsg_data is a bytes object holding the associated\0Adata.  The msg_flags item is the bitwise OR of various flags\0Aindicating conditions on the received message; see your system\0Adocumentation for details.  If the receiving socket is unconnected,\0Aaddress is the address of the sending socket, if available; otherwise,\0Aits value is unspecified.\0A\0AIf recvmsg_into() raises an exception after the system call returns,\0Ait will first attempt to close any file descriptors received via the\0ASCM_RIGHTS mechanism.\00", align 16
@.str.299 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@sendmsg_doc = internal global [886 x i8] c"sendmsg(buffers[, ancdata[, flags[, address]]]) -> count\0A\0ASend normal and ancillary data to the socket, gathering the\0Anon-ancillary data from a series of buffers and concatenating it into\0Aa single message.  The buffers argument specifies the non-ancillary\0Adata as an iterable of buffer-compatible objects (e.g. bytes objects).\0AThe ancdata argument specifies the ancillary data (control messages)\0Aas an iterable of zero or more tuples (cmsg_level, cmsg_type,\0Acmsg_data), where cmsg_level and cmsg_type are integers specifying the\0Aprotocol level and protocol-specific type respectively, and cmsg_data\0Ais a buffer-compatible object holding the associated data.  The flags\0Aargument defaults to 0 and has the same meaning as for send().  If\0Aaddress is supplied and not None, it sets a destination address for\0Athe message.  The return value is the number of bytes of non-ancillary\0Adata sent.\00", align 16
@sock_accept.accept4_works = internal global i32 -1, align 4
@.str.300 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.301 = private unnamed_addr constant [27 x i8] c"getsockaddrlen: bad family\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.302 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.303 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"OiII\00", align 1
@.str.305 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"shbhy#\00", align 1
@.str.307 = private unnamed_addr constant [6 x i8] c"IIIII\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.308 = private unnamed_addr constant [21 x i8] c"Invalid address type\00", align 1
@.str.309 = private unnamed_addr constant [4 x i8] c"O&h\00", align 1
@.str.310 = private unnamed_addr constant [4 x i8] c"iy#\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"(is)\00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@.str.313 = private unnamed_addr constant [22 x i8] c"AF_UNIX path too long\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.314 = private unnamed_addr constant [61 x i8] c"getsockaddrarg: AF_NETLINK address must be tuple, not %.500s\00", align 1
@.str.315 = private unnamed_addr constant [18 x i8] c"II:getsockaddrarg\00", align 1
@.str.316 = private unnamed_addr constant [58 x i8] c"getsockaddrarg: AF_INET address must be tuple, not %.500s\00", align 1
@.str.317 = private unnamed_addr constant [19 x i8] c"eti:getsockaddrarg\00", align 1
@.str.318 = private unnamed_addr constant [5 x i8] c"idna\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.319 = private unnamed_addr constant [38 x i8] c"getsockaddrarg: port must be 0-65535.\00", align 1
@.str.320 = private unnamed_addr constant [59 x i8] c"getsockaddrarg: AF_INET6 address must be tuple, not %.500s\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"eti|II\00", align 1
@.str.322 = private unnamed_addr constant [44 x i8] c"getsockaddrarg: flowinfo must be 0-1048575.\00", align 1
@.str.323 = private unnamed_addr constant [60 x i8] c"getsockaddrarg: AF_PACKET address must be tuple, not %.500s\00", align 1
@.str.324 = private unnamed_addr constant [8 x i8] c"si|iiy#\00", align 1
@.str.325 = private unnamed_addr constant [41 x i8] c"Hardware address must be 8 bytes or less\00", align 1
@.str.326 = private unnamed_addr constant [45 x i8] c"getsockaddrarg: protoNumber must be 0-65535.\00", align 1
@.str.327 = private unnamed_addr constant [58 x i8] c"getsockaddrarg: AF_TIPC address must be tuple, not %.500s\00", align 1
@.str.328 = private unnamed_addr constant [35 x i8] c"IIII|I;Invalid TIPC address format\00", align 1
@.str.329 = private unnamed_addr constant [3 x i8] c"O&\00", align 1
@.str.330 = private unnamed_addr constant [31 x i8] c"AF_CAN interface name too long\00", align 1
@.str.331 = private unnamed_addr constant [41 x i8] c"getsockaddrarg: unsupported CAN protocol\00", align 1
@.str.332 = private unnamed_addr constant [27 x i8] c"getsockaddrarg: bad family\00", align 1
@.str.333 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.334 = private unnamed_addr constant [27 x i8] c"unsupported address family\00", align 1
@.str.335 = private unnamed_addr constant [38 x i8] c"wildcard resolved to multiple address\00", align 1
@.str.336 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@.str.337 = private unnamed_addr constant [12 x i8] c"<broadcast>\00", align 1
@.str.338 = private unnamed_addr constant [26 x i8] c"address family mismatched\00", align 1
@.str.339 = private unnamed_addr constant [23 x i8] c"unknown address family\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"ii|i:getsockopt\00", align 1
@.str.341 = private unnamed_addr constant [31 x i8] c"getsockopt buflen out of range\00", align 1
@.str.342 = private unnamed_addr constant [9 x i8] c"n|i:recv\00", align 1
@.str.343 = private unnamed_addr constant [28 x i8] c"negative buffersize in recv\00", align 1
@sock_recv_into.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.346, i32 0, i32 0), i8* null], align 16
@.str.344 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@.str.346 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"w*|ni:recv_into\00", align 1
@.str.348 = private unnamed_addr constant [33 x i8] c"negative buffersize in recv_into\00", align 1
@.str.349 = private unnamed_addr constant [37 x i8] c"buffer too small for requested bytes\00", align 1
@.str.350 = private unnamed_addr constant [13 x i8] c"n|i:recvfrom\00", align 1
@.str.351 = private unnamed_addr constant [32 x i8] c"negative buffersize in recvfrom\00", align 1
@sock_recvfrom_into.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.346, i32 0, i32 0), i8* null], align 16
@.str.352 = private unnamed_addr constant [20 x i8] c"w*|ni:recvfrom_into\00", align 1
@.str.353 = private unnamed_addr constant [37 x i8] c"negative buffersize in recvfrom_into\00", align 1
@.str.354 = private unnamed_addr constant [48 x i8] c"nbytes is greater than the length of the buffer\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"nN\00", align 1
@.str.356 = private unnamed_addr constant [10 x i8] c"y*|i:send\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"y*|i:sendall\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"y*O:sendto\00", align 1
@.str.359 = private unnamed_addr constant [12 x i8] c"y*iO:sendto\00", align 1
@.str.360 = private unnamed_addr constant [43 x i8] c"sendto() takes 2 or 3 arguments (%d given)\00", align 1
@.str.361 = private unnamed_addr constant [27 x i8] c"Timeout value out of range\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"iii:setsockopt\00", align 1
@.str.363 = private unnamed_addr constant [16 x i8] c"iiy#:setsockopt\00", align 1
@.str.364 = private unnamed_addr constant [13 x i8] c"n|ni:recvmsg\00", align 1
@.str.365 = private unnamed_addr constant [34 x i8] c"negative buffer size in recvmsg()\00", align 1
@.str.366 = private unnamed_addr constant [37 x i8] c"invalid ancillary data buffer length\00", align 1
@PyExc_RuntimeWarning = external global %struct._object*, align 8
@.str.367 = private unnamed_addr constant [58 x i8] c"received malformed or improperly-truncated ancillary data\00", align 1
@.str.368 = private unnamed_addr constant [25 x i8] c"control message too long\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"iiN\00", align 1
@.str.370 = private unnamed_addr constant [5 x i8] c"NOiN\00", align 1
@cmsg_min_space.cmsg_len_end = internal constant i64 8, align 8
@.str.371 = private unnamed_addr constant [18 x i8] c"O|ni:recvmsg_into\00", align 1
@.str.372 = private unnamed_addr constant [46 x i8] c"recvmsg_into() argument 1 must be an iterable\00", align 1
@.str.373 = private unnamed_addr constant [38 x i8] c"recvmsg_into() argument 1 is too long\00", align 1
@.str.374 = private unnamed_addr constant [86 x i8] c"w*;recvmsg_into() argument 1 must be an iterable of single-segment read-write buffers\00", align 1
@.str.375 = private unnamed_addr constant [14 x i8] c"O|OiO:sendmsg\00", align 1
@.str.376 = private unnamed_addr constant [41 x i8] c"sendmsg() argument 1 must be an iterable\00", align 1
@.str.377 = private unnamed_addr constant [33 x i8] c"sendmsg() argument 1 is too long\00", align 1
@.str.378 = private unnamed_addr constant [73 x i8] c"y*;sendmsg() argument 1 must be an iterable of buffer-compatible objects\00", align 1
@.str.379 = private unnamed_addr constant [41 x i8] c"sendmsg() argument 2 must be an iterable\00", align 1
@.str.380 = private unnamed_addr constant [40 x i8] c"(iiy*):[sendmsg() ancillary data items]\00", align 1
@.str.381 = private unnamed_addr constant [30 x i8] c"ancillary data item too large\00", align 1
@.str.382 = private unnamed_addr constant [24 x i8] c"too much ancillary data\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.383 = private unnamed_addr constant [33 x i8] c"unexpected NULL result from %s()\00", align 1
@.str.384 = private unnamed_addr constant [14 x i8] c"CMSG_FIRSTHDR\00", align 1
@.str.385 = private unnamed_addr constant [12 x i8] c"CMSG_NXTHDR\00", align 1
@.str.386 = private unnamed_addr constant [38 x i8] c"item size out of range for CMSG_LEN()\00", align 1
@.str.387 = private unnamed_addr constant [48 x i8] c"ancillary data does not fit in calculated space\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.389 = private unnamed_addr constant [18 x i8] c"the socket family\00", align 1
@.str.390 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.391 = private unnamed_addr constant [16 x i8] c"the socket type\00", align 1
@.str.392 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.393 = private unnamed_addr constant [20 x i8] c"the socket protocol\00", align 1
@.str.394 = private unnamed_addr constant [19 x i8] c"the socket timeout\00", align 1
@sock_initobj.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), i8* null], align 16
@sock_cloexec_works = internal global i32 -1, align 4
@.str.395 = private unnamed_addr constant [13 x i8] c"|iiiO:socket\00", align 1
@.str.396 = private unnamed_addr constant [31 x i8] c"can't use invalid socket value\00", align 1
@defaulttimeout = internal global double -1.000000e+00, align 8
@.str.397 = private unnamed_addr constant [8 x i8] c"_socket\00", align 1
@socket_doc = internal global [87 x i8] c"Implementation module for socket operations.\0A\0ASee the socket module for documentation.\00", align 16
@socket_methods = internal global [28 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.398, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_gethostbyname, i32 1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @gethostbyname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.399, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_gethostbyname_ex, i32 1, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @ghbn_ex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.400, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_gethostbyaddr, i32 1, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @gethostbyaddr_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.401, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_gethostname, i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @gethostname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.402, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_sethostname, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @sethostname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.403, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_getservbyname, i32 1, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @getservbyname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.404, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_getservbyport, i32 1, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @getservbyport_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.405, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_getprotobyname, i32 1, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @getprotobyname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.406, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_dup, i32 8, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @dup_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.407, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_socketpair, i32 1, i8* getelementptr inbounds ([314 x i8], [314 x i8]* @socketpair_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.408, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_ntohs, i32 1, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @ntohs_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.409, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_ntohl, i32 8, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @ntohl_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.410, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_htons, i32 1, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @htons_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.411, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_htonl, i32 8, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @htonl_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.412, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_inet_aton, i32 1, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @inet_aton_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.413, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_inet_ntoa, i32 1, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @inet_ntoa_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.414, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_inet_pton, i32 1, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @inet_pton_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.415, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_inet_ntop, i32 1, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @inet_ntop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.416, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @socket_getaddrinfo to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @getaddrinfo_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.417, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_getnameinfo, i32 1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @getnameinfo_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.418, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @socket_getdefaulttimeout to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([233 x i8], [233 x i8]* @getdefaulttimeout_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.419, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_setdefaulttimeout, i32 8, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @setdefaulttimeout_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.420, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_if_nameindex, i32 4, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @if_nameindex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.421, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_if_nametoindex, i32 1, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @if_nametoindex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.422, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_if_indextoname, i32 8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @if_indextoname_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.423, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_CMSG_LEN, i32 1, i8* getelementptr inbounds ([497 x i8], [497 x i8]* @CMSG_LEN_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.424, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @socket_CMSG_SPACE, i32 1, i8* getelementptr inbounds ([388 x i8], [388 x i8]* @CMSG_SPACE_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.398 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@gethostbyname_doc = internal global [107 x i8] c"gethostbyname(host) -> address\0A\0AReturn the IP address (a string of the form '255.255.255.255') for a host.\00", align 16
@.str.399 = private unnamed_addr constant [17 x i8] c"gethostbyname_ex\00", align 1
@ghbn_ex_doc = internal global [208 x i8] c"gethostbyname_ex(host) -> (name, aliaslist, addresslist)\0A\0AReturn the true host name, a list of aliases, and a list of IP addresses,\0Afor a host.  The host argument is a string giving a host name or IP number.\00", align 16
@.str.400 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@gethostbyaddr_doc = internal global [205 x i8] c"gethostbyaddr(host) -> (name, aliaslist, addresslist)\0A\0AReturn the true host name, a list of aliases, and a list of IP addresses,\0Afor a host.  The host argument is a string giving a host name or IP number.\00", align 16
@.str.401 = private unnamed_addr constant [12 x i8] c"gethostname\00", align 1
@gethostname_doc = internal global [55 x i8] c"gethostname() -> string\0A\0AReturn the current host name.\00", align 16
@.str.402 = private unnamed_addr constant [12 x i8] c"sethostname\00", align 1
@sethostname_doc = internal global [46 x i8] c"sethostname(name)\0A\0ASets the hostname to name.\00", align 16
@.str.403 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@getservbyname_doc = internal global [214 x i8] c"getservbyname(servicename[, protocolname]) -> integer\0A\0AReturn a port number from a service name and protocol name.\0AThe optional protocol name, if given, should be 'tcp' or 'udp',\0Aotherwise any protocol will match.\00", align 16
@.str.404 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@getservbyport_doc = internal global [208 x i8] c"getservbyport(port[, protocolname]) -> string\0A\0AReturn the service name from a port number and protocol name.\0AThe optional protocol name, if given, should be 'tcp' or 'udp',\0Aotherwise any protocol will match.\00", align 16
@.str.405 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@getprotobyname_doc = internal global [100 x i8] c"getprotobyname(name) -> integer\0A\0AReturn the protocol number for the named protocol.  (Rarely used.)\00", align 16
@.str.406 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@dup_doc = internal global [178 x i8] c"dup(integer) -> integer\0A\0ADuplicate an integer socket file descriptor.  This is like os.dup(), but for\0Asockets; on some platforms os.dup() won't work for socket file descriptors.\00", align 16
@.str.407 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@socketpair_doc = internal global [314 x i8] c"socketpair([family[, type [, proto]]]) -> (socket object, socket object)\0A\0ACreate a pair of socket objects from the sockets returned by the platform\0Asocketpair() function.\0AThe arguments are the same as for socket() except the default family is\0AAF_UNIX if defined on the platform; otherwise, the default is AF_INET.\00", align 16
@.str.408 = private unnamed_addr constant [6 x i8] c"ntohs\00", align 1
@ntohs_doc = internal global [85 x i8] c"ntohs(integer) -> integer\0A\0AConvert a 16-bit integer from network to host byte order.\00", align 16
@.str.409 = private unnamed_addr constant [6 x i8] c"ntohl\00", align 1
@ntohl_doc = internal global [85 x i8] c"ntohl(integer) -> integer\0A\0AConvert a 32-bit integer from network to host byte order.\00", align 16
@.str.410 = private unnamed_addr constant [6 x i8] c"htons\00", align 1
@htons_doc = internal global [85 x i8] c"htons(integer) -> integer\0A\0AConvert a 16-bit integer from host to network byte order.\00", align 16
@.str.411 = private unnamed_addr constant [6 x i8] c"htonl\00", align 1
@htonl_doc = internal global [85 x i8] c"htonl(integer) -> integer\0A\0AConvert a 32-bit integer from host to network byte order.\00", align 16
@.str.412 = private unnamed_addr constant [10 x i8] c"inet_aton\00", align 1
@inet_aton_doc = internal global [193 x i8] c"inet_aton(string) -> bytes giving packed 32-bit IP representation\0A\0AConvert an IP address in string format (123.45.67.89) to the 32-bit packed\0Abinary format used in low-level network functions.\00", align 16
@.str.413 = private unnamed_addr constant [10 x i8] c"inet_ntoa\00", align 1
@inet_ntoa_doc = internal global [115 x i8] c"inet_ntoa(packed_ip) -> ip_address_string\0A\0AConvert an IP address from 32-bit packed binary format to string format\00", align 16
@.str.414 = private unnamed_addr constant [10 x i8] c"inet_pton\00", align 1
@inet_pton_doc = internal global [158 x i8] c"inet_pton(af, ip) -> packed IP address string\0A\0AConvert an IP address from string format to a packed string suitable\0Afor use with low-level network functions.\00", align 16
@.str.415 = private unnamed_addr constant [10 x i8] c"inet_ntop\00", align 1
@inet_ntop_doc = internal global [123 x i8] c"inet_ntop(af, packed_ip) -> string formatted IP address\0A\0AConvert a packed IP address of the given family to string format.\00", align 16
@.str.416 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@getaddrinfo_doc = internal global [166 x i8] c"getaddrinfo(host, port [, family, socktype, proto, flags])\0A    -> list of (family, socktype, proto, canonname, sockaddr)\0A\0AResolve host and port into addrinfo struct.\00", align 16
@.str.417 = private unnamed_addr constant [12 x i8] c"getnameinfo\00", align 1
@getnameinfo_doc = internal global [81 x i8] c"getnameinfo(sockaddr, flags) --> (host, port)\0A\0AGet host and port for a sockaddr.\00", align 16
@.str.418 = private unnamed_addr constant [18 x i8] c"getdefaulttimeout\00", align 1
@getdefaulttimeout_doc = internal global [233 x i8] c"getdefaulttimeout() -> timeout\0A\0AReturns the default timeout in seconds (float) for new socket objects.\0AA value of None indicates that new socket objects have no timeout.\0AWhen the socket module is first imported, the default is None.\00", align 16
@.str.419 = private unnamed_addr constant [18 x i8] c"setdefaulttimeout\00", align 1
@setdefaulttimeout_doc = internal global [225 x i8] c"setdefaulttimeout(timeout)\0A\0ASet the default timeout in seconds (float) for new socket objects.\0AA value of None indicates that new socket objects have no timeout.\0AWhen the socket module is first imported, the default is None.\00", align 16
@.str.420 = private unnamed_addr constant [13 x i8] c"if_nameindex\00", align 1
@if_nameindex_doc = internal global [86 x i8] c"if_nameindex()\0A\0AReturns a list of network interface information (index, name) tuples.\00", align 16
@.str.421 = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@if_nametoindex_doc = internal global [98 x i8] c"if_nametoindex(if_name)\0A\0AReturns the interface index corresponding to the interface name if_name.\00", align 16
@.str.422 = private unnamed_addr constant [15 x i8] c"if_indextoname\00", align 1
@if_indextoname_doc = internal global [100 x i8] c"if_indextoname(if_index)\0A\0AReturns the interface name corresponding to the interface index if_index.\00", align 16
@.str.423 = private unnamed_addr constant [9 x i8] c"CMSG_LEN\00", align 1
@CMSG_LEN_doc = internal global [497 x i8] c"CMSG_LEN(length) -> control message length\0A\0AReturn the total length, without trailing padding, of an ancillary\0Adata item with associated data of the given length.  This value can\0Aoften be used as the buffer size for recvmsg() to receive a single\0Aitem of ancillary data, but RFC 3542 requires portable applications to\0Ause CMSG_SPACE() and thus include space for padding, even when the\0Aitem will be the last in the buffer.  Raises OverflowError if length\0Ais outside the permissible range of values.\00", align 16
@.str.424 = private unnamed_addr constant [11 x i8] c"CMSG_SPACE\00", align 1
@CMSG_SPACE_doc = internal global [388 x i8] c"CMSG_SPACE(length) -> buffer size\0A\0AReturn the buffer size needed for recvmsg() to receive an ancillary\0Adata item with associated data of the given length, along with any\0Atrailing padding.  The buffer space needed to receive multiple items\0Ais the sum of the CMSG_SPACE() values for their associated data\0Alengths.  Raises OverflowError if length is outside the permissible\0Arange of values.\00", align 16
@.str.425 = private unnamed_addr constant [17 x i8] c"et:gethostbyname\00", align 1
@.str.426 = private unnamed_addr constant [20 x i8] c"et:gethostbyname_ex\00", align 1
@.str.427 = private unnamed_addr constant [4 x i8] c"sOO\00", align 1
@.str.428 = private unnamed_addr constant [17 x i8] c"et:gethostbyaddr\00", align 1
@.str.429 = private unnamed_addr constant [14 x i8] c"S:sethostname\00", align 1
@.str.430 = private unnamed_addr constant [15 x i8] c"O&:sethostname\00", align 1
@.str.431 = private unnamed_addr constant [18 x i8] c"s|s:getservbyname\00", align 1
@.str.432 = private unnamed_addr constant [24 x i8] c"service/proto not found\00", align 1
@.str.433 = private unnamed_addr constant [18 x i8] c"i|s:getservbyport\00", align 1
@.str.434 = private unnamed_addr constant [37 x i8] c"getservbyport: port must be 0-65535.\00", align 1
@.str.435 = private unnamed_addr constant [21 x i8] c"port/proto not found\00", align 1
@.str.436 = private unnamed_addr constant [17 x i8] c"s:getprotobyname\00", align 1
@.str.437 = private unnamed_addr constant [19 x i8] c"protocol not found\00", align 1
@.str.438 = private unnamed_addr constant [16 x i8] c"|iii:socketpair\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"i:ntohs\00", align 1
@.str.440 = private unnamed_addr constant [47 x i8] c"can't convert negative number to unsigned long\00", align 1
@.str.441 = private unnamed_addr constant [24 x i8] c"int larger than 32 bits\00", align 1
@.str.442 = private unnamed_addr constant [23 x i8] c"expected int, %s found\00", align 1
@.str.443 = private unnamed_addr constant [8 x i8] c"i:htons\00", align 1
@.str.444 = private unnamed_addr constant [12 x i8] c"s:inet_aton\00", align 1
@.str.445 = private unnamed_addr constant [46 x i8] c"illegal IP address string passed to inet_aton\00", align 1
@.str.446 = private unnamed_addr constant [13 x i8] c"y#:inet_ntoa\00", align 1
@.str.447 = private unnamed_addr constant [37 x i8] c"packed IP wrong length for inet_ntoa\00", align 1
@.str.448 = private unnamed_addr constant [13 x i8] c"is:inet_pton\00", align 1
@.str.449 = private unnamed_addr constant [46 x i8] c"illegal IP address string passed to inet_pton\00", align 1
@.str.450 = private unnamed_addr constant [14 x i8] c"iy#:inet_ntop\00", align 1
@.str.451 = private unnamed_addr constant [43 x i8] c"invalid length of packed IP address string\00", align 1
@.str.452 = private unnamed_addr constant [26 x i8] c"unknown address family %d\00", align 1
@socket_getaddrinfo.kwnames = internal global [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.346, i32 0, i32 0), i8* null], align 16
@.str.453 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.454 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.455 = private unnamed_addr constant [20 x i8] c"OO|iiii:getaddrinfo\00", align 1
@socket_getaddrinfo.PyId_encode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.456, i32 0, i32 0), %struct._object* null }, align 8
@.str.456 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.457 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.458 = private unnamed_addr constant [48 x i8] c"getaddrinfo() argument 1 must be string or None\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.459 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.460 = private unnamed_addr constant [23 x i8] c"Int or String expected\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"iiisO\00", align 1
@.str.462 = private unnamed_addr constant [15 x i8] c"Oi:getnameinfo\00", align 1
@.str.463 = private unnamed_addr constant [41 x i8] c"getnameinfo() argument 1 must be a tuple\00", align 1
@.str.464 = private unnamed_addr constant [6 x i8] c"si|II\00", align 1
@.str.465 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.466 = private unnamed_addr constant [40 x i8] c"sockaddr resolved to multiple addresses\00", align 1
@.str.467 = private unnamed_addr constant [30 x i8] c"IPv4 sockaddr must be 2 tuple\00", align 1
@.str.468 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.469 = private unnamed_addr constant [4 x i8] c"IO&\00", align 1
@.str.470 = private unnamed_addr constant [18 x i8] c"O&:if_nametoindex\00", align 1
@.str.471 = private unnamed_addr constant [28 x i8] c"no interface with this name\00", align 1
@.str.472 = private unnamed_addr constant [11 x i8] c"n:CMSG_LEN\00", align 1
@.str.473 = private unnamed_addr constant [33 x i8] c"CMSG_LEN() argument out of range\00", align 1
@.str.474 = private unnamed_addr constant [13 x i8] c"n:CMSG_SPACE\00", align 1
@.str.475 = private unnamed_addr constant [35 x i8] c"CMSG_SPACE() argument out of range\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__socket() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %has_ipv6 = alloca %struct._object*, align 8
  %call = call i32 @os_init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0, i32 1), align 8
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @socketmodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  store %struct._object* %3, %struct._object** getelementptr inbounds (%struct.PySocketModule_APIObject, %struct.PySocketModule_APIObject* @PySocketModuleAPI, i32 0, i32 1), align 8
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt4, align 8
  %inc5 = add i64 %5, 1
  store i64 %inc5, i64* %ob_refcnt4, align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %7 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call6 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %7)
  %8 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* %8, %struct._object* null)
  store %struct._object* %call7, %struct._object** @socket_herror, align 8
  %9 = load %struct._object*, %struct._object** @socket_herror, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** @socket_herror, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %11, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %12 = load %struct._object*, %struct._object** %m, align 8
  %13 = load %struct._object*, %struct._object** @socket_herror, align 8
  %call13 = call i32 @PyModule_AddObject(%struct._object* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* %13)
  %14 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call14 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), %struct._object* %14, %struct._object* null)
  store %struct._object* %call14, %struct._object** @socket_gaierror, align 8
  %15 = load %struct._object*, %struct._object** @socket_gaierror, align 8
  %cmp15 = icmp eq %struct._object* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** @socket_gaierror, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %17, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %18 = load %struct._object*, %struct._object** %m, align 8
  %19 = load %struct._object*, %struct._object** @socket_gaierror, align 8
  %call20 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* %19)
  %20 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call21 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._object* %20, %struct._object* null)
  store %struct._object* %call21, %struct._object** @socket_timeout, align 8
  %21 = load %struct._object*, %struct._object** @socket_timeout, align 8
  %cmp22 = icmp eq %struct._object* %21, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** @socket_timeout, align 8
  store %struct._object* %22, %struct._object** getelementptr inbounds (%struct.PySocketModule_APIObject, %struct.PySocketModule_APIObject* @PySocketModuleAPI, i32 0, i32 2), align 8
  %23 = load %struct._object*, %struct._object** @socket_timeout, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt25, align 8
  %inc26 = add i64 %24, 1
  store i64 %inc26, i64* %ob_refcnt25, align 8
  %25 = load %struct._object*, %struct._object** %m, align 8
  %26 = load %struct._object*, %struct._object** @socket_timeout, align 8
  %call27 = call i32 @PyModule_AddObject(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._object* %26)
  %27 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc28 = add i64 %27, 1
  store i64 %inc28, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0, i32 0), align 8
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call29 = call i32 @PyModule_AddObject(%struct._object* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0))
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.24
  %29 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc33 = add i64 %29, 1
  store i64 %inc33, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0, i32 0), align 8
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call i32 @PyModule_AddObject(%struct._object* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @sock_type, i32 0, i32 0, i32 0))
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %has_ipv6, align 8
  %31 = load %struct._object*, %struct._object** %has_ipv6, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %32, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  %33 = load %struct._object*, %struct._object** %m, align 8
  %34 = load %struct._object*, %struct._object** %has_ipv6, align 8
  %call40 = call i32 @PyModule_AddObject(%struct._object* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* %34)
  %35 = load %struct._object*, %struct._object** %m, align 8
  %call41 = call %struct._object* @PyCapsule_New(i8* bitcast (%struct.PySocketModule_APIObject* @PySocketModuleAPI to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), void (%struct._object*)* null)
  %call42 = call i32 @PyModule_AddObject(%struct._object* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._object* %call41)
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.37
  %36 = load %struct._object*, %struct._object** %m, align 8
  %call46 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i64 0)
  %37 = load %struct._object*, %struct._object** %m, align 8
  %call47 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i64 2)
  %38 = load %struct._object*, %struct._object** %m, align 8
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %39 = load %struct._object*, %struct._object** %m, align 8
  %call49 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 1)
  %40 = load %struct._object*, %struct._object** %m, align 8
  %call50 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 3)
  %41 = load %struct._object*, %struct._object** %m, align 8
  %call51 = call i32 @PyModule_AddIntConstant(%struct._object* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64 4)
  %42 = load %struct._object*, %struct._object** %m, align 8
  %call52 = call i32 @PyModule_AddIntConstant(%struct._object* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i64 5)
  %43 = load %struct._object*, %struct._object** %m, align 8
  %call53 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i64 6)
  %44 = load %struct._object*, %struct._object** %m, align 8
  %call54 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i64 7)
  %45 = load %struct._object*, %struct._object** %m, align 8
  %call55 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i64 8)
  %46 = load %struct._object*, %struct._object** %m, align 8
  %call56 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i64 9)
  %47 = load %struct._object*, %struct._object** %m, align 8
  %call57 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %48 = load %struct._object*, %struct._object** %m, align 8
  %call58 = call i32 @PyModule_AddIntConstant(%struct._object* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 11)
  %49 = load %struct._object*, %struct._object** %m, align 8
  %call59 = call i32 @PyModule_AddIntConstant(%struct._object* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 12)
  %50 = load %struct._object*, %struct._object** %m, align 8
  %call60 = call i32 @PyModule_AddIntConstant(%struct._object* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i64 13)
  %51 = load %struct._object*, %struct._object** %m, align 8
  %call61 = call i32 @PyModule_AddIntConstant(%struct._object* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i64 14)
  %52 = load %struct._object*, %struct._object** %m, align 8
  %call62 = call i32 @PyModule_AddIntConstant(%struct._object* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i64 15)
  %53 = load %struct._object*, %struct._object** %m, align 8
  %call63 = call i32 @PyModule_AddIntConstant(%struct._object* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i64 16)
  %54 = load %struct._object*, %struct._object** %m, align 8
  %call64 = call i32 @PyModule_AddIntConstant(%struct._object* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i64 0)
  %55 = load %struct._object*, %struct._object** %m, align 8
  %call65 = call i32 @PyModule_AddIntConstant(%struct._object* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i64 2)
  %56 = load %struct._object*, %struct._object** %m, align 8
  %call66 = call i32 @PyModule_AddIntConstant(%struct._object* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i64 3)
  %57 = load %struct._object*, %struct._object** %m, align 8
  %call67 = call i32 @PyModule_AddIntConstant(%struct._object* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i64 5)
  %58 = load %struct._object*, %struct._object** %m, align 8
  %call68 = call i32 @PyModule_AddIntConstant(%struct._object* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i64 6)
  %59 = load %struct._object*, %struct._object** %m, align 8
  %call69 = call i32 @PyModule_AddIntConstant(%struct._object* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i64 13)
  %60 = load %struct._object*, %struct._object** %m, align 8
  %call70 = call i32 @PyModule_AddIntConstant(%struct._object* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i64 14)
  %61 = load %struct._object*, %struct._object** %m, align 8
  %call71 = call i32 @PyModule_AddIntConstant(%struct._object* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i64 16)
  %62 = load %struct._object*, %struct._object** %m, align 8
  %call72 = call i32 @PyModule_AddIntConstant(%struct._object* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i64 18)
  %63 = load %struct._object*, %struct._object** %m, align 8
  %call73 = call i32 @PyModule_AddIntConstant(%struct._object* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 19)
  %64 = load %struct._object*, %struct._object** %m, align 8
  %call74 = call i32 @PyModule_AddIntConstant(%struct._object* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 20)
  %65 = load %struct._object*, %struct._object** %m, align 8
  %call75 = call i32 @PyModule_AddIntConstant(%struct._object* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i64 22)
  %66 = load %struct._object*, %struct._object** %m, align 8
  %call76 = call i32 @PyModule_AddIntConstant(%struct._object* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i64 23)
  %67 = load %struct._object*, %struct._object** %m, align 8
  %call77 = call i32 @PyModule_AddIntConstant(%struct._object* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i64 24)
  %68 = load %struct._object*, %struct._object** %m, align 8
  %call78 = call i32 @PyModule_AddIntConstant(%struct._object* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i64 25)
  %69 = load %struct._object*, %struct._object** %m, align 8
  %call79 = call i32 @PyModule_AddIntConstant(%struct._object* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 26)
  %70 = load %struct._object*, %struct._object** %m, align 8
  %call80 = call i32 @PyModule_AddIntConstant(%struct._object* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i64 29)
  %71 = load %struct._object*, %struct._object** %m, align 8
  %call81 = call i32 @PyModule_AddIntConstant(%struct._object* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i64 29)
  %72 = load %struct._object*, %struct._object** %m, align 8
  %call82 = call i32 @PyModule_AddIntConstant(%struct._object* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i64 21)
  %73 = load %struct._object*, %struct._object** %m, align 8
  %call83 = call i32 @PyModule_AddIntConstant(%struct._object* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i64 21)
  %74 = load %struct._object*, %struct._object** %m, align 8
  %call84 = call i32 @PyModule_AddIntConstant(%struct._object* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i64 17)
  %75 = load %struct._object*, %struct._object** %m, align 8
  %call85 = call i32 @PyModule_AddIntConstant(%struct._object* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i64 17)
  %76 = load %struct._object*, %struct._object** %m, align 8
  %call86 = call i32 @PyModule_AddIntConstant(%struct._object* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i64 0)
  %77 = load %struct._object*, %struct._object** %m, align 8
  %call87 = call i32 @PyModule_AddIntConstant(%struct._object* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i64 1)
  %78 = load %struct._object*, %struct._object** %m, align 8
  %call88 = call i32 @PyModule_AddIntConstant(%struct._object* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i64 2)
  %79 = load %struct._object*, %struct._object** %m, align 8
  %call89 = call i32 @PyModule_AddIntConstant(%struct._object* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i64 3)
  %80 = load %struct._object*, %struct._object** %m, align 8
  %call90 = call i32 @PyModule_AddIntConstant(%struct._object* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i64 4)
  %81 = load %struct._object*, %struct._object** %m, align 8
  %call91 = call i32 @PyModule_AddIntConstant(%struct._object* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i64 5)
  %82 = load %struct._object*, %struct._object** %m, align 8
  %call92 = call i32 @PyModule_AddIntConstant(%struct._object* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i64 6)
  %83 = load %struct._object*, %struct._object** %m, align 8
  %call93 = call i32 @PyModule_AddIntConstant(%struct._object* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i64 30)
  %84 = load %struct._object*, %struct._object** %m, align 8
  %call94 = call i32 @PyModule_AddIntConstant(%struct._object* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i64 1)
  %85 = load %struct._object*, %struct._object** %m, align 8
  %call95 = call i32 @PyModule_AddIntConstant(%struct._object* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i64 2)
  %86 = load %struct._object*, %struct._object** %m, align 8
  %call96 = call i32 @PyModule_AddIntConstant(%struct._object* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i64 3)
  %87 = load %struct._object*, %struct._object** %m, align 8
  %call97 = call i32 @PyModule_AddIntConstant(%struct._object* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i64 1)
  %88 = load %struct._object*, %struct._object** %m, align 8
  %call98 = call i32 @PyModule_AddIntConstant(%struct._object* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i64 2)
  %89 = load %struct._object*, %struct._object** %m, align 8
  %call99 = call i32 @PyModule_AddIntConstant(%struct._object* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i64 3)
  %90 = load %struct._object*, %struct._object** %m, align 8
  %call100 = call i32 @PyModule_AddIntConstant(%struct._object* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i64 271)
  %91 = load %struct._object*, %struct._object** %m, align 8
  %call101 = call i32 @PyModule_AddIntConstant(%struct._object* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i64 127)
  %92 = load %struct._object*, %struct._object** %m, align 8
  %call102 = call i32 @PyModule_AddIntConstant(%struct._object* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0), i64 128)
  %93 = load %struct._object*, %struct._object** %m, align 8
  %call103 = call i32 @PyModule_AddIntConstant(%struct._object* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0), i64 129)
  %94 = load %struct._object*, %struct._object** %m, align 8
  %call104 = call i32 @PyModule_AddIntConstant(%struct._object* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i64 130)
  %95 = load %struct._object*, %struct._object** %m, align 8
  %call105 = call i32 @PyModule_AddIntConstant(%struct._object* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i64 0)
  %96 = load %struct._object*, %struct._object** %m, align 8
  %call106 = call i32 @PyModule_AddIntConstant(%struct._object* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i64 1)
  %97 = load %struct._object*, %struct._object** %m, align 8
  %call107 = call i32 @PyModule_AddIntConstant(%struct._object* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0), i64 2)
  %98 = load %struct._object*, %struct._object** %m, align 8
  %call108 = call i32 @PyModule_AddIntConstant(%struct._object* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0), i64 3)
  %99 = load %struct._object*, %struct._object** %m, align 8
  %call109 = call i32 @PyModule_AddIntConstant(%struct._object* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i64 1)
  %100 = load %struct._object*, %struct._object** %m, align 8
  %call110 = call i32 @PyModule_AddIntConstant(%struct._object* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i64 2)
  %101 = load %struct._object*, %struct._object** %m, align 8
  %call111 = call i32 @PyModule_AddIntConstant(%struct._object* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i64 4)
  %102 = load %struct._object*, %struct._object** %m, align 8
  %call112 = call i32 @PyModule_AddIntConstant(%struct._object* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i64 -1)
  %103 = load %struct._object*, %struct._object** %m, align 8
  %call113 = call i32 @PyModule_AddIntConstant(%struct._object* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i64 1)
  %104 = load %struct._object*, %struct._object** %m, align 8
  %call114 = call i32 @PyModule_AddIntConstant(%struct._object* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i64 2)
  %105 = load %struct._object*, %struct._object** %m, align 8
  %call115 = call i32 @PyModule_AddIntConstant(%struct._object* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), i64 3)
  %106 = load %struct._object*, %struct._object** %m, align 8
  %call116 = call i32 @PyModule_AddIntConstant(%struct._object* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i64 0)
  %107 = load %struct._object*, %struct._object** %m, align 8
  %call117 = call i32 @PyModule_AddIntConstant(%struct._object* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i64 1)
  %108 = load %struct._object*, %struct._object** %m, align 8
  %call118 = call i32 @PyModule_AddIntConstant(%struct._object* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i64 1)
  %109 = load %struct._object*, %struct._object** %m, align 8
  %call119 = call i32 @PyModule_AddIntConstant(%struct._object* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i64 2)
  %110 = load %struct._object*, %struct._object** %m, align 8
  %call120 = call i32 @PyModule_AddIntConstant(%struct._object* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i64 3)
  %111 = load %struct._object*, %struct._object** %m, align 8
  %call121 = call i32 @PyModule_AddIntConstant(%struct._object* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i64 5)
  %112 = load %struct._object*, %struct._object** %m, align 8
  %call122 = call i32 @PyModule_AddIntConstant(%struct._object* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i64 4)
  %113 = load %struct._object*, %struct._object** %m, align 8
  %call123 = call i32 @PyModule_AddIntConstant(%struct._object* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i64 524288)
  %114 = load %struct._object*, %struct._object** %m, align 8
  %call124 = call i32 @PyModule_AddIntConstant(%struct._object* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i64 2048)
  %115 = load %struct._object*, %struct._object** %m, align 8
  %call125 = call i32 @PyModule_AddIntConstant(%struct._object* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i64 1)
  %116 = load %struct._object*, %struct._object** %m, align 8
  %call126 = call i32 @PyModule_AddIntConstant(%struct._object* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i64 30)
  %117 = load %struct._object*, %struct._object** %m, align 8
  %call127 = call i32 @PyModule_AddIntConstant(%struct._object* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i64 2)
  %118 = load %struct._object*, %struct._object** %m, align 8
  %call128 = call i32 @PyModule_AddIntConstant(%struct._object* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i64 9)
  %119 = load %struct._object*, %struct._object** %m, align 8
  %call129 = call i32 @PyModule_AddIntConstant(%struct._object* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i64 5)
  %120 = load %struct._object*, %struct._object** %m, align 8
  %call130 = call i32 @PyModule_AddIntConstant(%struct._object* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), i64 6)
  %121 = load %struct._object*, %struct._object** %m, align 8
  %call131 = call i32 @PyModule_AddIntConstant(%struct._object* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i64 13)
  %122 = load %struct._object*, %struct._object** %m, align 8
  %call132 = call i32 @PyModule_AddIntConstant(%struct._object* %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i64 10)
  %123 = load %struct._object*, %struct._object** %m, align 8
  %call133 = call i32 @PyModule_AddIntConstant(%struct._object* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i64 15)
  %124 = load %struct._object*, %struct._object** %m, align 8
  %call134 = call i32 @PyModule_AddIntConstant(%struct._object* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i64 7)
  %125 = load %struct._object*, %struct._object** %m, align 8
  %call135 = call i32 @PyModule_AddIntConstant(%struct._object* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i64 8)
  %126 = load %struct._object*, %struct._object** %m, align 8
  %call136 = call i32 @PyModule_AddIntConstant(%struct._object* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i64 19)
  %127 = load %struct._object*, %struct._object** %m, align 8
  %call137 = call i32 @PyModule_AddIntConstant(%struct._object* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i64 18)
  %128 = load %struct._object*, %struct._object** %m, align 8
  %call138 = call i32 @PyModule_AddIntConstant(%struct._object* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i64 21)
  %129 = load %struct._object*, %struct._object** %m, align 8
  %call139 = call i32 @PyModule_AddIntConstant(%struct._object* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i64 20)
  %130 = load %struct._object*, %struct._object** %m, align 8
  %call140 = call i32 @PyModule_AddIntConstant(%struct._object* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i64 4)
  %131 = load %struct._object*, %struct._object** %m, align 8
  %call141 = call i32 @PyModule_AddIntConstant(%struct._object* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i64 3)
  %132 = load %struct._object*, %struct._object** %m, align 8
  %call142 = call i32 @PyModule_AddIntConstant(%struct._object* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i64 16)
  %133 = load %struct._object*, %struct._object** %m, align 8
  %call143 = call i32 @PyModule_AddIntConstant(%struct._object* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i64 17)
  %134 = load %struct._object*, %struct._object** %m, align 8
  %call144 = call i32 @PyModule_AddIntConstant(%struct._object* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0), i64 25)
  %135 = load %struct._object*, %struct._object** %m, align 8
  %call145 = call i32 @PyModule_AddIntConstant(%struct._object* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i64 12)
  %136 = load %struct._object*, %struct._object** %m, align 8
  %call146 = call i32 @PyModule_AddIntConstant(%struct._object* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i64 128)
  %137 = load %struct._object*, %struct._object** %m, align 8
  %call147 = call i32 @PyModule_AddIntConstant(%struct._object* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i64 1)
  %138 = load %struct._object*, %struct._object** %m, align 8
  %call148 = call i32 @PyModule_AddIntConstant(%struct._object* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i64 2)
  %139 = load %struct._object*, %struct._object** %m, align 8
  %call149 = call i32 @PyModule_AddIntConstant(%struct._object* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i64 1)
  %140 = load %struct._object*, %struct._object** %m, align 8
  %call150 = call i32 @PyModule_AddIntConstant(%struct._object* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i64 2)
  %141 = load %struct._object*, %struct._object** %m, align 8
  %call151 = call i32 @PyModule_AddIntConstant(%struct._object* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0), i64 4)
  %142 = load %struct._object*, %struct._object** %m, align 8
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i64 64)
  %143 = load %struct._object*, %struct._object** %m, align 8
  %call153 = call i32 @PyModule_AddIntConstant(%struct._object* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i64 128)
  %144 = load %struct._object*, %struct._object** %m, align 8
  %call154 = call i32 @PyModule_AddIntConstant(%struct._object* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i64 32)
  %145 = load %struct._object*, %struct._object** %m, align 8
  %call155 = call i32 @PyModule_AddIntConstant(%struct._object* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i64 8)
  %146 = load %struct._object*, %struct._object** %m, align 8
  %call156 = call i32 @PyModule_AddIntConstant(%struct._object* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i64 256)
  %147 = load %struct._object*, %struct._object** %m, align 8
  %call157 = call i32 @PyModule_AddIntConstant(%struct._object* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i64 16384)
  %148 = load %struct._object*, %struct._object** %m, align 8
  %call158 = call i32 @PyModule_AddIntConstant(%struct._object* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i32 0, i32 0), i64 1073741824)
  %149 = load %struct._object*, %struct._object** %m, align 8
  %call159 = call i32 @PyModule_AddIntConstant(%struct._object* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i64 8192)
  %150 = load %struct._object*, %struct._object** %m, align 8
  %call160 = call i32 @PyModule_AddIntConstant(%struct._object* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), i64 2048)
  %151 = load %struct._object*, %struct._object** %m, align 8
  %call161 = call i32 @PyModule_AddIntConstant(%struct._object* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), i64 32768)
  %152 = load %struct._object*, %struct._object** %m, align 8
  %call162 = call i32 @PyModule_AddIntConstant(%struct._object* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i64 1)
  %153 = load %struct._object*, %struct._object** %m, align 8
  %call163 = call i32 @PyModule_AddIntConstant(%struct._object* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i64 0)
  %154 = load %struct._object*, %struct._object** %m, align 8
  %call164 = call i32 @PyModule_AddIntConstant(%struct._object* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i64 6)
  %155 = load %struct._object*, %struct._object** %m, align 8
  %call165 = call i32 @PyModule_AddIntConstant(%struct._object* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i64 17)
  %156 = load %struct._object*, %struct._object** %m, align 8
  %call166 = call i32 @PyModule_AddIntConstant(%struct._object* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i64 100)
  %157 = load %struct._object*, %struct._object** %m, align 8
  %call167 = call i32 @PyModule_AddIntConstant(%struct._object* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i64 101)
  %158 = load %struct._object*, %struct._object** %m, align 8
  %call168 = call i32 @PyModule_AddIntConstant(%struct._object* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i64 1)
  %159 = load %struct._object*, %struct._object** %m, align 8
  %call169 = call i32 @PyModule_AddIntConstant(%struct._object* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i64 2147483648)
  %160 = load %struct._object*, %struct._object** %m, align 8
  %call170 = call i32 @PyModule_AddIntConstant(%struct._object* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i64 1073741824)
  %161 = load %struct._object*, %struct._object** %m, align 8
  %call171 = call i32 @PyModule_AddIntConstant(%struct._object* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i64 536870912)
  %162 = load %struct._object*, %struct._object** %m, align 8
  %call172 = call i32 @PyModule_AddIntConstant(%struct._object* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i64 2047)
  %163 = load %struct._object*, %struct._object** %m, align 8
  %call173 = call i32 @PyModule_AddIntConstant(%struct._object* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i64 536870911)
  %164 = load %struct._object*, %struct._object** %m, align 8
  %call174 = call i32 @PyModule_AddIntConstant(%struct._object* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i64 536870911)
  %165 = load %struct._object*, %struct._object** %m, align 8
  %call175 = call i32 @PyModule_AddIntConstant(%struct._object* %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i64 1)
  %166 = load %struct._object*, %struct._object** %m, align 8
  %call176 = call i32 @PyModule_AddIntConstant(%struct._object* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i64 2)
  %167 = load %struct._object*, %struct._object** %m, align 8
  %call177 = call i32 @PyModule_AddIntConstant(%struct._object* %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i32 0, i32 0), i64 3)
  %168 = load %struct._object*, %struct._object** %m, align 8
  %call178 = call i32 @PyModule_AddIntConstant(%struct._object* %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.143, i32 0, i32 0), i64 4)
  %169 = load %struct._object*, %struct._object** %m, align 8
  %call179 = call i32 @PyModule_AddIntConstant(%struct._object* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i64 2)
  %170 = load %struct._object*, %struct._object** %m, align 8
  %call180 = call i32 @PyModule_AddIntConstant(%struct._object* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.145, i32 0, i32 0), i64 1)
  %171 = load %struct._object*, %struct._object** %m, align 8
  %call181 = call i32 @PyModule_AddIntConstant(%struct._object* %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.146, i32 0, i32 0), i64 2)
  %172 = load %struct._object*, %struct._object** %m, align 8
  %call182 = call i32 @PyModule_AddIntConstant(%struct._object* %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.147, i32 0, i32 0), i64 3)
  %173 = load %struct._object*, %struct._object** %m, align 8
  %call183 = call i32 @PyModule_AddIntConstant(%struct._object* %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i64 4)
  %174 = load %struct._object*, %struct._object** %m, align 8
  %call184 = call i32 @PyModule_AddIntConstant(%struct._object* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), i64 5)
  %175 = load %struct._object*, %struct._object** %m, align 8
  %call185 = call i32 @PyModule_AddIntConstant(%struct._object* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0), i64 6)
  %176 = load %struct._object*, %struct._object** %m, align 8
  %call186 = call i32 @PyModule_AddIntConstant(%struct._object* %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.151, i32 0, i32 0), i64 7)
  %177 = load %struct._object*, %struct._object** %m, align 8
  %call187 = call i32 @PyModule_AddIntConstant(%struct._object* %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.152, i32 0, i32 0), i64 8)
  %178 = load %struct._object*, %struct._object** %m, align 8
  %call188 = call i32 @PyModule_AddIntConstant(%struct._object* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0), i64 9)
  %179 = load %struct._object*, %struct._object** %m, align 8
  %call189 = call i32 @PyModule_AddIntConstant(%struct._object* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.154, i32 0, i32 0), i64 10)
  %180 = load %struct._object*, %struct._object** %m, align 8
  %call190 = call i32 @PyModule_AddIntConstant(%struct._object* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.155, i32 0, i32 0), i64 11)
  %181 = load %struct._object*, %struct._object** %m, align 8
  %call191 = call i32 @PyModule_AddIntConstant(%struct._object* %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i64 12)
  %182 = load %struct._object*, %struct._object** %m, align 8
  %call192 = call i32 @PyModule_AddIntConstant(%struct._object* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.157, i32 0, i32 0), i64 0)
  %183 = load %struct._object*, %struct._object** %m, align 8
  %call193 = call i32 @PyModule_AddIntConstant(%struct._object* %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.158, i32 0, i32 0), i64 0)
  %184 = load %struct._object*, %struct._object** %m, align 8
  %call194 = call i32 @PyModule_AddIntConstant(%struct._object* %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0), i64 1)
  %185 = load %struct._object*, %struct._object** %m, align 8
  %call195 = call i32 @PyModule_AddIntConstant(%struct._object* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i64 2)
  %186 = load %struct._object*, %struct._object** %m, align 8
  %call196 = call i32 @PyModule_AddIntConstant(%struct._object* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i64 41)
  %187 = load %struct._object*, %struct._object** %m, align 8
  %call197 = call i32 @PyModule_AddIntConstant(%struct._object* %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i64 4)
  %188 = load %struct._object*, %struct._object** %m, align 8
  %call198 = call i32 @PyModule_AddIntConstant(%struct._object* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0), i64 6)
  %189 = load %struct._object*, %struct._object** %m, align 8
  %call199 = call i32 @PyModule_AddIntConstant(%struct._object* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0), i64 8)
  %190 = load %struct._object*, %struct._object** %m, align 8
  %call200 = call i32 @PyModule_AddIntConstant(%struct._object* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), i64 12)
  %191 = load %struct._object*, %struct._object** %m, align 8
  %call201 = call i32 @PyModule_AddIntConstant(%struct._object* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i64 17)
  %192 = load %struct._object*, %struct._object** %m, align 8
  %call202 = call i32 @PyModule_AddIntConstant(%struct._object* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), i64 22)
  %193 = load %struct._object*, %struct._object** %m, align 8
  %call203 = call i32 @PyModule_AddIntConstant(%struct._object* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i32 0, i32 0), i64 29)
  %194 = load %struct._object*, %struct._object** %m, align 8
  %call204 = call i32 @PyModule_AddIntConstant(%struct._object* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i64 41)
  %195 = load %struct._object*, %struct._object** %m, align 8
  %call205 = call i32 @PyModule_AddIntConstant(%struct._object* %195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.169, i32 0, i32 0), i64 43)
  %196 = load %struct._object*, %struct._object** %m, align 8
  %call206 = call i32 @PyModule_AddIntConstant(%struct._object* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.170, i32 0, i32 0), i64 44)
  %197 = load %struct._object*, %struct._object** %m, align 8
  %call207 = call i32 @PyModule_AddIntConstant(%struct._object* %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i64 46)
  %198 = load %struct._object*, %struct._object** %m, align 8
  %call208 = call i32 @PyModule_AddIntConstant(%struct._object* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.172, i32 0, i32 0), i64 47)
  %199 = load %struct._object*, %struct._object** %m, align 8
  %call209 = call i32 @PyModule_AddIntConstant(%struct._object* %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.173, i32 0, i32 0), i64 50)
  %200 = load %struct._object*, %struct._object** %m, align 8
  %call210 = call i32 @PyModule_AddIntConstant(%struct._object* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.174, i32 0, i32 0), i64 51)
  %201 = load %struct._object*, %struct._object** %m, align 8
  %call211 = call i32 @PyModule_AddIntConstant(%struct._object* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i64 58)
  %202 = load %struct._object*, %struct._object** %m, align 8
  %call212 = call i32 @PyModule_AddIntConstant(%struct._object* %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i64 59)
  %203 = load %struct._object*, %struct._object** %m, align 8
  %call213 = call i32 @PyModule_AddIntConstant(%struct._object* %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.177, i32 0, i32 0), i64 60)
  %204 = load %struct._object*, %struct._object** %m, align 8
  %call214 = call i32 @PyModule_AddIntConstant(%struct._object* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i64 103)
  %205 = load %struct._object*, %struct._object** %m, align 8
  %call215 = call i32 @PyModule_AddIntConstant(%struct._object* %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), i64 132)
  %206 = load %struct._object*, %struct._object** %m, align 8
  %call216 = call i32 @PyModule_AddIntConstant(%struct._object* %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.180, i32 0, i32 0), i64 255)
  %207 = load %struct._object*, %struct._object** %m, align 8
  %call217 = call i32 @PyModule_AddIntConstant(%struct._object* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i32 0, i32 0), i64 1024)
  %208 = load %struct._object*, %struct._object** %m, align 8
  %call218 = call i32 @PyModule_AddIntConstant(%struct._object* %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.182, i32 0, i32 0), i64 5000)
  %209 = load %struct._object*, %struct._object** %m, align 8
  %call219 = call i32 @PyModule_AddIntConstant(%struct._object* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), i64 0)
  %210 = load %struct._object*, %struct._object** %m, align 8
  %call220 = call i32 @PyModule_AddIntConstant(%struct._object* %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.184, i32 0, i32 0), i64 4294967295)
  %211 = load %struct._object*, %struct._object** %m, align 8
  %call221 = call i32 @PyModule_AddIntConstant(%struct._object* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.185, i32 0, i32 0), i64 2130706433)
  %212 = load %struct._object*, %struct._object** %m, align 8
  %call222 = call i32 @PyModule_AddIntConstant(%struct._object* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.186, i32 0, i32 0), i64 3758096384)
  %213 = load %struct._object*, %struct._object** %m, align 8
  %call223 = call i32 @PyModule_AddIntConstant(%struct._object* %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.187, i32 0, i32 0), i64 3758096385)
  %214 = load %struct._object*, %struct._object** %m, align 8
  %call224 = call i32 @PyModule_AddIntConstant(%struct._object* %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.188, i32 0, i32 0), i64 3758096639)
  %215 = load %struct._object*, %struct._object** %m, align 8
  %call225 = call i32 @PyModule_AddIntConstant(%struct._object* %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i32 0, i32 0), i64 4294967295)
  %216 = load %struct._object*, %struct._object** %m, align 8
  %call226 = call i32 @PyModule_AddIntConstant(%struct._object* %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0), i64 4)
  %217 = load %struct._object*, %struct._object** %m, align 8
  %call227 = call i32 @PyModule_AddIntConstant(%struct._object* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), i64 3)
  %218 = load %struct._object*, %struct._object** %m, align 8
  %call228 = call i32 @PyModule_AddIntConstant(%struct._object* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i64 1)
  %219 = load %struct._object*, %struct._object** %m, align 8
  %call229 = call i32 @PyModule_AddIntConstant(%struct._object* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), i64 2)
  %220 = load %struct._object*, %struct._object** %m, align 8
  %call230 = call i32 @PyModule_AddIntConstant(%struct._object* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.194, i32 0, i32 0), i64 6)
  %221 = load %struct._object*, %struct._object** %m, align 8
  %call231 = call i32 @PyModule_AddIntConstant(%struct._object* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i32 0, i32 0), i64 7)
  %222 = load %struct._object*, %struct._object** %m, align 8
  %call232 = call i32 @PyModule_AddIntConstant(%struct._object* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.196, i32 0, i32 0), i64 7)
  %223 = load %struct._object*, %struct._object** %m, align 8
  %call233 = call i32 @PyModule_AddIntConstant(%struct._object* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.197, i32 0, i32 0), i64 32)
  %224 = load %struct._object*, %struct._object** %m, align 8
  %call234 = call i32 @PyModule_AddIntConstant(%struct._object* %224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0), i64 33)
  %225 = load %struct._object*, %struct._object** %m, align 8
  %call235 = call i32 @PyModule_AddIntConstant(%struct._object* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.199, i32 0, i32 0), i64 34)
  %226 = load %struct._object*, %struct._object** %m, align 8
  %call236 = call i32 @PyModule_AddIntConstant(%struct._object* %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.200, i32 0, i32 0), i64 35)
  %227 = load %struct._object*, %struct._object** %m, align 8
  %call237 = call i32 @PyModule_AddIntConstant(%struct._object* %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.201, i32 0, i32 0), i64 36)
  %228 = load %struct._object*, %struct._object** %m, align 8
  %call238 = call i32 @PyModule_AddIntConstant(%struct._object* %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.202, i32 0, i32 0), i64 1)
  %229 = load %struct._object*, %struct._object** %m, align 8
  %call239 = call i32 @PyModule_AddIntConstant(%struct._object* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.203, i32 0, i32 0), i64 1)
  %230 = load %struct._object*, %struct._object** %m, align 8
  %call240 = call i32 @PyModule_AddIntConstant(%struct._object* %230, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.204, i32 0, i32 0), i64 20)
  %231 = load %struct._object*, %struct._object** %m, align 8
  %call241 = call i32 @PyModule_AddIntConstant(%struct._object* %231, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.205, i32 0, i32 0), i64 19)
  %232 = load %struct._object*, %struct._object** %m, align 8
  %call242 = call i32 @PyModule_AddIntConstant(%struct._object* %232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.206, i32 0, i32 0), i64 20)
  %233 = load %struct._object*, %struct._object** %m, align 8
  %call243 = call i32 @PyModule_AddIntConstant(%struct._object* %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.207, i32 0, i32 0), i64 21)
  %234 = load %struct._object*, %struct._object** %m, align 8
  %call244 = call i32 @PyModule_AddIntConstant(%struct._object* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.208, i32 0, i32 0), i64 18)
  %235 = load %struct._object*, %struct._object** %m, align 8
  %call245 = call i32 @PyModule_AddIntConstant(%struct._object* %235, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.209, i32 0, i32 0), i64 17)
  %236 = load %struct._object*, %struct._object** %m, align 8
  %call246 = call i32 @PyModule_AddIntConstant(%struct._object* %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i32 0, i32 0), i64 19)
  %237 = load %struct._object*, %struct._object** %m, align 8
  %call247 = call i32 @PyModule_AddIntConstant(%struct._object* %237, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.211, i32 0, i32 0), i64 16)
  %238 = load %struct._object*, %struct._object** %m, align 8
  %call248 = call i32 @PyModule_AddIntConstant(%struct._object* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.212, i32 0, i32 0), i64 26)
  %239 = load %struct._object*, %struct._object** %m, align 8
  %call249 = call i32 @PyModule_AddIntConstant(%struct._object* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.213, i32 0, i32 0), i64 7)
  %240 = load %struct._object*, %struct._object** %m, align 8
  %call250 = call i32 @PyModule_AddIntConstant(%struct._object* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i64 59)
  %241 = load %struct._object*, %struct._object** %m, align 8
  %call251 = call i32 @PyModule_AddIntConstant(%struct._object* %241, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.215, i32 0, i32 0), i64 52)
  %242 = load %struct._object*, %struct._object** %m, align 8
  %call252 = call i32 @PyModule_AddIntConstant(%struct._object* %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), i64 54)
  %243 = load %struct._object*, %struct._object** %m, align 8
  %call253 = call i32 @PyModule_AddIntConstant(%struct._object* %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i32 0, i32 0), i64 9)
  %244 = load %struct._object*, %struct._object** %m, align 8
  %call254 = call i32 @PyModule_AddIntConstant(%struct._object* %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i32 0, i32 0), i64 50)
  %245 = load %struct._object*, %struct._object** %m, align 8
  %call255 = call i32 @PyModule_AddIntConstant(%struct._object* %245, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.219, i32 0, i32 0), i64 58)
  %246 = load %struct._object*, %struct._object** %m, align 8
  %call256 = call i32 @PyModule_AddIntConstant(%struct._object* %246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.220, i32 0, i32 0), i64 51)
  %247 = load %struct._object*, %struct._object** %m, align 8
  %call257 = call i32 @PyModule_AddIntConstant(%struct._object* %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.221, i32 0, i32 0), i64 53)
  %248 = load %struct._object*, %struct._object** %m, align 8
  %call258 = call i32 @PyModule_AddIntConstant(%struct._object* %248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.222, i32 0, i32 0), i64 49)
  %249 = load %struct._object*, %struct._object** %m, align 8
  %call259 = call i32 @PyModule_AddIntConstant(%struct._object* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.223, i32 0, i32 0), i64 56)
  %250 = load %struct._object*, %struct._object** %m, align 8
  %call260 = call i32 @PyModule_AddIntConstant(%struct._object* %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.224, i32 0, i32 0), i64 66)
  %251 = load %struct._object*, %struct._object** %m, align 8
  %call261 = call i32 @PyModule_AddIntConstant(%struct._object* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.225, i32 0, i32 0), i64 57)
  %252 = load %struct._object*, %struct._object** %m, align 8
  %call262 = call i32 @PyModule_AddIntConstant(%struct._object* %252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.226, i32 0, i32 0), i64 55)
  %253 = load %struct._object*, %struct._object** %m, align 8
  %call263 = call i32 @PyModule_AddIntConstant(%struct._object* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.227, i32 0, i32 0), i64 0)
  %254 = load %struct._object*, %struct._object** %m, align 8
  %call264 = call i32 @PyModule_AddIntConstant(%struct._object* %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.228, i32 0, i32 0), i64 67)
  %255 = load %struct._object*, %struct._object** %m, align 8
  %call265 = call i32 @PyModule_AddIntConstant(%struct._object* %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i64 1)
  %256 = load %struct._object*, %struct._object** %m, align 8
  %call266 = call i32 @PyModule_AddIntConstant(%struct._object* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.230, i32 0, i32 0), i64 2)
  %257 = load %struct._object*, %struct._object** %m, align 8
  %call267 = call i32 @PyModule_AddIntConstant(%struct._object* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.231, i32 0, i32 0), i64 3)
  %258 = load %struct._object*, %struct._object** %m, align 8
  %call268 = call i32 @PyModule_AddIntConstant(%struct._object* %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.232, i32 0, i32 0), i64 4)
  %259 = load %struct._object*, %struct._object** %m, align 8
  %call269 = call i32 @PyModule_AddIntConstant(%struct._object* %259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.233, i32 0, i32 0), i64 5)
  %260 = load %struct._object*, %struct._object** %m, align 8
  %call270 = call i32 @PyModule_AddIntConstant(%struct._object* %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.234, i32 0, i32 0), i64 6)
  %261 = load %struct._object*, %struct._object** %m, align 8
  %call271 = call i32 @PyModule_AddIntConstant(%struct._object* %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i64 7)
  %262 = load %struct._object*, %struct._object** %m, align 8
  %call272 = call i32 @PyModule_AddIntConstant(%struct._object* %262, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), i64 8)
  %263 = load %struct._object*, %struct._object** %m, align 8
  %call273 = call i32 @PyModule_AddIntConstant(%struct._object* %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i32 0, i32 0), i64 9)
  %264 = load %struct._object*, %struct._object** %m, align 8
  %call274 = call i32 @PyModule_AddIntConstant(%struct._object* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.238, i32 0, i32 0), i64 10)
  %265 = load %struct._object*, %struct._object** %m, align 8
  %call275 = call i32 @PyModule_AddIntConstant(%struct._object* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i64 11)
  %266 = load %struct._object*, %struct._object** %m, align 8
  %call276 = call i32 @PyModule_AddIntConstant(%struct._object* %266, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i64 12)
  %267 = load %struct._object*, %struct._object** %m, align 8
  %call277 = call i32 @PyModule_AddIntConstant(%struct._object* %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), i64 23)
  %268 = load %struct._object*, %struct._object** %m, align 8
  %call278 = call i32 @PyModule_AddIntConstant(%struct._object* %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.242, i32 0, i32 0), i64 -9)
  %269 = load %struct._object*, %struct._object** %m, align 8
  %call279 = call i32 @PyModule_AddIntConstant(%struct._object* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.243, i32 0, i32 0), i64 -3)
  %270 = load %struct._object*, %struct._object** %m, align 8
  %call280 = call i32 @PyModule_AddIntConstant(%struct._object* %270, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i64 -1)
  %271 = load %struct._object*, %struct._object** %m, align 8
  %call281 = call i32 @PyModule_AddIntConstant(%struct._object* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.245, i32 0, i32 0), i64 -4)
  %272 = load %struct._object*, %struct._object** %m, align 8
  %call282 = call i32 @PyModule_AddIntConstant(%struct._object* %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.246, i32 0, i32 0), i64 -6)
  %273 = load %struct._object*, %struct._object** %m, align 8
  %call283 = call i32 @PyModule_AddIntConstant(%struct._object* %273, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.247, i32 0, i32 0), i64 -10)
  %274 = load %struct._object*, %struct._object** %m, align 8
  %call284 = call i32 @PyModule_AddIntConstant(%struct._object* %274, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0), i64 -5)
  %275 = load %struct._object*, %struct._object** %m, align 8
  %call285 = call i32 @PyModule_AddIntConstant(%struct._object* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.249, i32 0, i32 0), i64 -2)
  %276 = load %struct._object*, %struct._object** %m, align 8
  %call286 = call i32 @PyModule_AddIntConstant(%struct._object* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), i64 -12)
  %277 = load %struct._object*, %struct._object** %m, align 8
  %call287 = call i32 @PyModule_AddIntConstant(%struct._object* %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.251, i32 0, i32 0), i64 -8)
  %278 = load %struct._object*, %struct._object** %m, align 8
  %call288 = call i32 @PyModule_AddIntConstant(%struct._object* %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i64 -7)
  %279 = load %struct._object*, %struct._object** %m, align 8
  %call289 = call i32 @PyModule_AddIntConstant(%struct._object* %279, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.253, i32 0, i32 0), i64 -11)
  %280 = load %struct._object*, %struct._object** %m, align 8
  %call290 = call i32 @PyModule_AddIntConstant(%struct._object* %280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.254, i32 0, i32 0), i64 1)
  %281 = load %struct._object*, %struct._object** %m, align 8
  %call291 = call i32 @PyModule_AddIntConstant(%struct._object* %281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), i64 2)
  %282 = load %struct._object*, %struct._object** %m, align 8
  %call292 = call i32 @PyModule_AddIntConstant(%struct._object* %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.256, i32 0, i32 0), i64 4)
  %283 = load %struct._object*, %struct._object** %m, align 8
  %call293 = call i32 @PyModule_AddIntConstant(%struct._object* %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.257, i32 0, i32 0), i64 1024)
  %284 = load %struct._object*, %struct._object** %m, align 8
  %call294 = call i32 @PyModule_AddIntConstant(%struct._object* %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i32 0, i32 0), i64 16)
  %285 = load %struct._object*, %struct._object** %m, align 8
  %call295 = call i32 @PyModule_AddIntConstant(%struct._object* %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.259, i32 0, i32 0), i64 32)
  %286 = load %struct._object*, %struct._object** %m, align 8
  %call296 = call i32 @PyModule_AddIntConstant(%struct._object* %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.260, i32 0, i32 0), i64 8)
  %287 = load %struct._object*, %struct._object** %m, align 8
  %call297 = call i32 @PyModule_AddIntConstant(%struct._object* %287, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.261, i32 0, i32 0), i64 1025)
  %288 = load %struct._object*, %struct._object** %m, align 8
  %call298 = call i32 @PyModule_AddIntConstant(%struct._object* %288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.262, i32 0, i32 0), i64 32)
  %289 = load %struct._object*, %struct._object** %m, align 8
  %call299 = call i32 @PyModule_AddIntConstant(%struct._object* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.263, i32 0, i32 0), i64 4)
  %290 = load %struct._object*, %struct._object** %m, align 8
  %call300 = call i32 @PyModule_AddIntConstant(%struct._object* %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.264, i32 0, i32 0), i64 1)
  %291 = load %struct._object*, %struct._object** %m, align 8
  %call301 = call i32 @PyModule_AddIntConstant(%struct._object* %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i32 0, i32 0), i64 8)
  %292 = load %struct._object*, %struct._object** %m, align 8
  %call302 = call i32 @PyModule_AddIntConstant(%struct._object* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.266, i32 0, i32 0), i64 2)
  %293 = load %struct._object*, %struct._object** %m, align 8
  %call303 = call i32 @PyModule_AddIntConstant(%struct._object* %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0), i64 16)
  %294 = load %struct._object*, %struct._object** %m, align 8
  %call304 = call i32 @PyModule_AddIntConstant(%struct._object* %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.268, i32 0, i32 0), i64 0)
  %295 = load %struct._object*, %struct._object** %m, align 8
  %call305 = call i32 @PyModule_AddIntConstant(%struct._object* %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.269, i32 0, i32 0), i64 1)
  %296 = load %struct._object*, %struct._object** %m, align 8
  %call306 = call i32 @PyModule_AddIntConstant(%struct._object* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0), i64 2)
  %297 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %297, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.36, %if.then.31, %if.then.23, %if.then.16, %if.then.9, %if.then.2, %if.then
  %298 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %298
}

; Function Attrs: nounwind uwtable
define internal i32 @os_init() #0 {
entry:
  ret i32 1
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @sock_dealloc(%struct.PySocketSockObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %old_refcount = alloca i64, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %3 = bitcast %struct.PySocketSockObject* %2 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  store i64 %4, i64* %old_refcount, align 8
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %6 = bitcast %struct.PySocketSockObject* %5 to %struct._object*
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt1, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt1, align 8
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  %8 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %9 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %8, i64 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.272, i32 0, i32 0), %struct.PySocketSockObject* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %12 = bitcast %struct.PySocketSockObject* %11 to %struct._object*
  call void @PyErr_WriteUnraisable(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %exc, align 8
  %14 = load %struct._object*, %struct._object** %val, align 8
  %15 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %13, %struct._object* %14, %struct._object* %15)
  %16 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %16, i32 0, i32 1
  %17 = load i32, i32* %sock_fd7, align 4
  %call8 = call i32 @close(i32 %17)
  %18 = load i64, i64* %old_refcount, align 8
  %19 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %20 = bitcast %struct.PySocketSockObject* %19 to %struct._object*
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  store i64 %18, i64* %ob_refcnt9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.6, %entry
  %21 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %22 = bitcast %struct.PySocketSockObject* %21 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 38
  %24 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %25 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %26 = bitcast %struct.PySocketSockObject* %25 to %struct._object*
  %27 = bitcast %struct._object* %26 to i8*
  call void %24(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_repr(%struct.PySocketSockObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 2
  %3 = load i32, i32* %sock_family, align 4
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_type = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %4, i32 0, i32 3
  %5 = load i32, i32* %sock_type, align 4
  %6 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %6, i32 0, i32 4
  %7 = load i32, i32* %sock_proto, align 4
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.273, i32 0, i32 0), i64 %conv, i32 %3, i32 %5, i32 %7)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sock_initobj(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %s = alloca %struct.PySocketSockObject*, align 8
  %fdobj = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %family = alloca i32, align 4
  %type = alloca i32, align 4
  %proto = alloca i32, align 4
  %atomic_flag_works = alloca i32*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PySocketSockObject*
  store %struct.PySocketSockObject* %1, %struct.PySocketSockObject** %s, align 8
  store %struct._object* null, %struct._object** %fdobj, align 8
  store i32 -1, i32* %fd, align 4
  store i32 2, i32* %family, align 4
  store i32 1, i32* %type, align 4
  store i32 0, i32* %proto, align 4
  store i32* @sock_cloexec_works, i32** %atomic_flag_works, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.395, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @sock_initobj.keywords, i32 0, i32 0), i32* %family, i32* %type, i32* %proto, %struct._object** %fdobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %fdobj, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %fdobj, align 8
  %cmp1 = icmp ne %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %fdobj, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %6)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %fd, align 4
  %7 = load i32, i32* %fd, align 4
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.then.2
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %if.then.2
  %8 = load i32, i32* %fd, align 4
  %cmp11 = icmp eq i32 %8, -1
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.396, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call15 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call15, %struct._ts** %_save, align 8
  %10 = load i32, i32* @sock_cloexec_works, align 4
  %cmp16 = icmp ne i32 %10, 0
  br i1 %cmp16, label %if.then.18, label %if.else.35

if.then.18:                                       ; preds = %if.else
  %11 = load i32, i32* %family, align 4
  %12 = load i32, i32* %type, align 4
  %or = or i32 %12, 524288
  %13 = load i32, i32* %proto, align 4
  %call19 = call i32 @socket(i32 %11, i32 %or, i32 %13) #2
  store i32 %call19, i32* %fd, align 4
  %14 = load i32, i32* @sock_cloexec_works, align 4
  %cmp20 = icmp eq i32 %14, -1
  br i1 %cmp20, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %if.then.18
  %15 = load i32, i32* %fd, align 4
  %cmp23 = icmp sge i32 %15, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.22
  store i32 1, i32* @sock_cloexec_works, align 4
  br label %if.end.33

if.else.26:                                       ; preds = %if.then.22
  %call27 = call i32* @__errno_location() #6
  %16 = load i32, i32* %call27, align 4
  %cmp28 = icmp eq i32 %16, 22
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else.26
  store i32 0, i32* @sock_cloexec_works, align 4
  %17 = load i32, i32* %family, align 4
  %18 = load i32, i32* %type, align 4
  %19 = load i32, i32* %proto, align 4
  %call31 = call i32 @socket(i32 %17, i32 %18, i32 %19) #2
  store i32 %call31, i32* %fd, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  br label %if.end.37

if.else.35:                                       ; preds = %if.else
  %20 = load i32, i32* %family, align 4
  %21 = load i32, i32* %type, align 4
  %22 = load i32, i32* %proto, align 4
  %call36 = call i32 @socket(i32 %20, i32 %21, i32 %22) #2
  store i32 %call36, i32* %fd, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %23 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %23)
  %24 = load i32, i32* %fd, align 4
  %cmp38 = icmp eq i32 %24, -1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %call41 = call %struct._object* @set_error()
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  %25 = load i32, i32* %fd, align 4
  %26 = load i32*, i32** %atomic_flag_works, align 8
  %call43 = call i32 @_Py_set_inheritable(i32 %25, i32 0, i32* %26)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.42
  %27 = load i32, i32* %fd, align 4
  %call47 = call i32 @close(i32 %27)
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.14
  %28 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s, align 8
  %29 = load i32, i32* %fd, align 4
  %30 = load i32, i32* %family, align 4
  %31 = load i32, i32* %type, align 4
  %32 = load i32, i32* %proto, align 4
  call void @init_sockobject(%struct.PySocketSockObject* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.46, %if.then.40, %if.then.13, %if.then.9, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %new = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  store %struct._object* %call, %struct._object** %new, align 8
  %3 = load %struct._object*, %struct._object** %new, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %new, align 8
  %5 = bitcast %struct._object* %4 to %struct.PySocketSockObject*
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 1
  store i32 -1, i32* %sock_fd, align 4
  %6 = load %struct._object*, %struct._object** %new, align 8
  %7 = bitcast %struct._object* %6 to %struct.PySocketSockObject*
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %7, i32 0, i32 6
  store double -1.000000e+00, double* %sock_timeout, align 8
  %8 = load %struct._object*, %struct._object** %new, align 8
  %9 = bitcast %struct._object* %8 to %struct.PySocketSockObject*
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %9, i32 0, i32 5
  store %struct._object* ()* @set_error, %struct._object* ()** %errorhandler, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._object*, %struct._object** %new, align 8
  ret %struct._object* %10
}

declare void @PyObject_Free(i8*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @close(i32) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_accept(%struct.PySocketSockObject* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %newfd = alloca i32, align 4
  %addrlen = alloca i32, align 4
  %sock = alloca %struct._object*, align 8
  %addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %timeout = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  %agg.tmp40 = alloca %union.__SOCKADDR_ARG, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32 -1, i32* %newfd, align 4
  store %struct._object* null, %struct._object** %sock, align 8
  store %struct._object* null, %struct._object** %addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @getsockaddrlen(%struct.PySocketSockObject* %0, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %union.sock_addr* %addrbuf to i8*
  %2 = load i32, i32* %addrlen, align 4
  %conv = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 8, i1 false)
  %3 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %4, i32 0, i32 6
  %5 = load double, double* %sock_timeout, align 8
  store double %5, double* %interval, align 8
  %6 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %6, i32 0, i32 6
  %7 = load double, double* %sock_timeout1, align 8
  %cmp = fcmp ogt double %7, 0.000000e+00
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %has_timeout, align 4
  %8 = load i32, i32* %has_timeout, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.end
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %9 = bitcast %struct.timeval* %deadline to i8*
  %10 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout5 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %11, i32 0, i32 6
  %12 = load double, double* %sock_timeout5, align 8
  %conv6 = fptosi double %12 to i64
  %conv7 = sitofp i64 %conv6 to double
  %13 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout8 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %13, i32 0, i32 6
  %14 = load double, double* %sock_timeout8, align 8
  %sub = fsub double %conv7, %14
  %mul = fmul double %sub, 1.000000e+06
  %conv9 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %15 = load i64, i64* %tv_usec, align 8
  %add = add i64 %15, %conv9
  store i64 %add, i64* %tv_usec, align 8
  %16 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout10 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %16, i32 0, i32 6
  %17 = load double, double* %sock_timeout10, align 8
  %conv11 = fptosi double %17 to i64
  %tv_usec12 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %18 = load i64, i64* %tv_usec12, align 8
  %div = sdiv i64 %18, 1000000
  %add13 = add i64 %conv11, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %19 = load i64, i64* %tv_sec, align 8
  %add14 = add i64 %19, %add13
  store i64 %add14, i64* %tv_sec, align 8
  %tv_usec15 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %20 = load i64, i64* %tv_usec15, align 8
  %rem = srem i64 %20, 1000000
  store i64 %rem, i64* %tv_usec15, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.16, %if.end.60
  %call17 = call i32* @__errno_location() #6
  store i32 0, i32* %call17, align 4
  %call18 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call18, %struct._ts** %_save, align 8
  %21 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %22 = load double, double* %interval, align 8
  %call19 = call i32 @internal_select_ex(%struct.PySocketSockObject* %21, i32 0, double %22)
  store i32 %call19, i32* %timeout, align 4
  %23 = load i32, i32* %timeout, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.end.46, label %if.then.21

if.then.21:                                       ; preds = %while.body
  %24 = load i32, i32* @sock_accept.accept4_works, align 4
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.then.21
  %25 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %25, i32 0, i32 1
  %26 = load i32, i32* %sock_fd, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %27 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call25 = call i32 @accept4(i32 %26, %struct.sockaddr* %27, i32* %addrlen, i32 524288)
  store i32 %call25, i32* %newfd, align 4
  %28 = load i32, i32* %newfd, align 4
  %cmp26 = icmp eq i32 %28, -1
  br i1 %cmp26, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then.24
  %29 = load i32, i32* @sock_accept.accept4_works, align 4
  %cmp28 = icmp eq i32 %29, -1
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %land.lhs.true
  %call31 = call i32* @__errno_location() #6
  %30 = load i32, i32* %call31, align 4
  %cmp32 = icmp ne i32 %30, 38
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* @sock_accept.accept4_works, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %land.lhs.true, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.21
  %31 = load i32, i32* @sock_accept.accept4_works, align 4
  %cmp36 = icmp eq i32 %31, 0
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.35
  %32 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd39 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %32, i32 0, i32 1
  %33 = load i32, i32* %sock_fd39, align 4
  %__sockaddr__41 = bitcast %union.__SOCKADDR_ARG* %agg.tmp40 to %struct.sockaddr**
  %sa42 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa42, %struct.sockaddr** %__sockaddr__41, align 8
  %coerce.dive43 = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp40, i32 0, i32 0
  %34 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive43, align 8
  %call44 = call i32 @accept(i32 %33, %struct.sockaddr* %34, i32* %addrlen)
  store i32 %call44, i32* %newfd, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.body
  %35 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %35)
  %36 = load i32, i32* %timeout, align 4
  %cmp47 = icmp eq i32 %36, 1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %37 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %38 = load i32, i32* %has_timeout, align 4
  %tobool51 = icmp ne i32 %38, 0
  br i1 %tobool51, label %lor.lhs.false, label %if.then.59

lor.lhs.false:                                    ; preds = %if.end.50
  %call52 = call i32* @__errno_location() #6
  %39 = load i32, i32* %call52, align 4
  %cmp53 = icmp eq i32 %39, 11
  br i1 %cmp53, label %if.end.60, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %lor.lhs.false
  %call56 = call i32* @__errno_location() #6
  %40 = load i32, i32* %call56, align 4
  %cmp57 = icmp eq i32 %40, 11
  br i1 %cmp57, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.55, %if.end.50
  br label %while.end

if.end.60:                                        ; preds = %land.lhs.true.55, %lor.lhs.false
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec61 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %41 = load i64, i64* %tv_sec61, align 8
  %tv_sec62 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %42 = load i64, i64* %tv_sec62, align 8
  %sub63 = sub i64 %41, %42
  %conv64 = sitofp i64 %sub63 to double
  %tv_usec65 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %43 = load i64, i64* %tv_usec65, align 8
  %tv_usec66 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %44 = load i64, i64* %tv_usec66, align 8
  %sub67 = sub i64 %43, %44
  %conv68 = sitofp i64 %sub67 to double
  %mul69 = fmul double %conv68, 1.000000e-06
  %add70 = fadd double %conv64, %mul69
  store double %add70, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.59
  %45 = load i32, i32* %newfd, align 4
  %cmp71 = icmp eq i32 %45, -1
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %while.end
  %46 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %46, i32 0, i32 5
  %47 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call74 = call %struct._object* %47()
  store %struct._object* %call74, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %while.end
  %48 = load i32, i32* @sock_accept.accept4_works, align 4
  %tobool76 = icmp ne i32 %48, 0
  br i1 %tobool76, label %if.end.84, label %if.then.77

if.then.77:                                       ; preds = %if.end.75
  %49 = load i32, i32* %newfd, align 4
  %call78 = call i32 @_Py_set_inheritable(i32 %49, i32 0, i32* null)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.then.77
  %50 = load i32, i32* %newfd, align 4
  %call82 = call i32 @close(i32 %50)
  br label %finally

if.end.83:                                        ; preds = %if.then.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  %51 = load i32, i32* %newfd, align 4
  %conv85 = sext i32 %51 to i64
  %call86 = call %struct._object* @PyLong_FromLong(i64 %conv85)
  store %struct._object* %call86, %struct._object** %sock, align 8
  %52 = load %struct._object*, %struct._object** %sock, align 8
  %cmp87 = icmp eq %struct._object* %52, null
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.84
  %53 = load i32, i32* %newfd, align 4
  %call90 = call i32 @close(i32 %53)
  br label %finally

if.end.91:                                        ; preds = %if.end.84
  %54 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd92 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %54, i32 0, i32 1
  %55 = load i32, i32* %sock_fd92, align 4
  %sa93 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %56 = load i32, i32* %addrlen, align 4
  %conv94 = zext i32 %56 to i64
  %57 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %57, i32 0, i32 4
  %58 = load i32, i32* %sock_proto, align 4
  %call95 = call %struct._object* @makesockaddr(i32 %55, %struct.sockaddr* %sa93, i64 %conv94, i32 %58)
  store %struct._object* %call95, %struct._object** %addr, align 8
  %59 = load %struct._object*, %struct._object** %addr, align 8
  %cmp96 = icmp eq %struct._object* %59, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.91
  br label %finally

if.end.99:                                        ; preds = %if.end.91
  %60 = load %struct._object*, %struct._object** %sock, align 8
  %61 = load %struct._object*, %struct._object** %addr, align 8
  %call100 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %60, %struct._object* %61)
  store %struct._object* %call100, %struct._object** %res, align 8
  br label %finally

finally:                                          ; preds = %if.end.99, %if.then.98, %if.then.89, %if.then.81
  br label %do.body.101

do.body.101:                                      ; preds = %finally
  %62 = load %struct._object*, %struct._object** %sock, align 8
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp, align 8
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp102 = icmp ne %struct._object* %63, null
  br i1 %cmp102, label %if.then.104, label %if.end.111

if.then.104:                                      ; preds = %do.body.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %66, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp106 = icmp ne i64 %dec, 0
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %do.body.105
  br label %if.end.109

if.else:                                          ; preds = %do.body.105
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %69(%struct._object* %70)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else, %if.then.108
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.110, %do.body.101
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.112
  %71 = load %struct._object*, %struct._object** %addr, align 8
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp114, align 8
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp114, align 8
  %cmp115 = icmp ne %struct._object* %72, null
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %do.body.113
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp114, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp119, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %75, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.118
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %78(%struct._object* %79)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.body.113
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  %80 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %80, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.131, %if.then.73, %if.then.49, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_bind(%struct.PySocketSockObject* %s, %struct._object* %addro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addro.addr = alloca %struct._object*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %addrlen = alloca i32, align 4
  %res = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %addro, %struct._object** %addro.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %1 = load %struct._object*, %struct._object** %addro.addr, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call = call i32 @getsockaddrarg(%struct.PySocketSockObject* %0, %struct._object* %1, %struct.sockaddr* %sa, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  %3 = load i32, i32* %sock_fd, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa2 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa2, %struct.sockaddr** %__sockaddr__, align 8
  %4 = load i32, i32* %addrlen, align 4
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call3 = call i32 @bind(i32 %3, %struct.sockaddr* %5, i32 %4) #2
  store i32 %call3, i32* %res, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call5 = call %struct._object* %9()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_close(%struct.PySocketSockObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %fd = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  store i32 %1, i32* %fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  store i32 -1, i32* %sock_fd1, align 4
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %3 = load i32, i32* %fd, align 4
  %call2 = call i32 @close(i32 %3)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_connect(%struct.PySocketSockObject* %s, %struct._object* %addro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addro.addr = alloca %struct._object*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %addrlen = alloca i32, align 4
  %res = alloca i32, align 4
  %timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %addro, %struct._object** %addro.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %1 = load %struct._object*, %struct._object** %addro.addr, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call = call i32 @getsockaddrarg(%struct.PySocketSockObject* %0, %struct._object* %1, %struct.sockaddr* %sa, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sa2 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %3 = load i32, i32* %addrlen, align 4
  %call3 = call i32 @internal_connect(%struct.PySocketSockObject* %2, %struct.sockaddr* %sa2, i32 %3, i32* %timeout)
  store i32 %call3, i32* %res, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load i32, i32* %timeout, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load i32, i32* %res, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call8 = call %struct._object* %9()
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then.4, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_connect_ex(%struct.PySocketSockObject* %s, %struct._object* %addro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addro.addr = alloca %struct._object*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %addrlen = alloca i32, align 4
  %res = alloca i32, align 4
  %timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %addro, %struct._object** %addro.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %1 = load %struct._object*, %struct._object** %addro.addr, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call = call i32 @getsockaddrarg(%struct.PySocketSockObject* %0, %struct._object* %1, %struct.sockaddr* %sa, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sa2 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %3 = load i32, i32* %addrlen, align 4
  %call3 = call i32 @internal_connect(%struct.PySocketSockObject* %2, %struct.sockaddr* %sa2, i32 %3, i32* %timeout)
  store i32 %call3, i32* %res, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i32 @PyErr_CheckSignals()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* %res, align 4
  %conv = sext i32 %6 to i64
  %call8 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_detach(%struct.PySocketSockObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %fd = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  store i32 %1, i32* %fd, align 4
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  store i32 -1, i32* %sock_fd1, align 4
  %3 = load i32, i32* %fd, align 4
  %conv = sext i32 %3 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_fileno(%struct.PySocketSockObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_getpeername(%struct.PySocketSockObject* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %res = alloca i32, align 4
  %addrlen = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @getsockaddrlen(%struct.PySocketSockObject* %0, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %union.sock_addr* %addrbuf to i8*
  %2 = load i32, i32* %addrlen, align 4
  %conv = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 8, i1 false)
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 1
  %4 = load i32, i32* %sock_fd, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call2 = call i32 @getpeername(i32 %4, %struct.sockaddr* %5, i32* %addrlen) #2
  store i32 %call2, i32* %res, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call5 = call %struct._object* %9()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 1
  %11 = load i32, i32* %sock_fd7, align 4
  %sa8 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %12 = load i32, i32* %addrlen, align 4
  %conv9 = zext i32 %12 to i64
  %13 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %13, i32 0, i32 4
  %14 = load i32, i32* %sock_proto, align 4
  %call10 = call %struct._object* @makesockaddr(i32 %11, %struct.sockaddr* %sa8, i64 %conv9, i32 %14)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_getsockname(%struct.PySocketSockObject* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %res = alloca i32, align 4
  %addrlen = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @getsockaddrlen(%struct.PySocketSockObject* %0, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %union.sock_addr* %addrbuf to i8*
  %2 = load i32, i32* %addrlen, align 4
  %conv = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 8, i1 false)
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 1
  %4 = load i32, i32* %sock_fd, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call2 = call i32 @getsockname(i32 %4, %struct.sockaddr* %5, i32* %addrlen) #2
  store i32 %call2, i32* %res, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call5 = call %struct._object* %9()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 1
  %11 = load i32, i32* %sock_fd7, align 4
  %sa8 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %12 = load i32, i32* %addrlen, align 4
  %conv9 = zext i32 %12 to i64
  %13 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %13, i32 0, i32 4
  %14 = load i32, i32* %sock_proto, align 4
  %call10 = call %struct._object* @makesockaddr(i32 %11, %struct.sockaddr* %sa8, i64 %conv9, i32 %14)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_getsockopt(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %level = alloca i32, align 4
  %optname = alloca i32, align 4
  %res = alloca i32, align 4
  %buf = alloca %struct._object*, align 8
  %buflen = alloca i32, align 4
  %flag = alloca i32, align 4
  %flagsize = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %buflen, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i32 0, i32 0), i32* %level, i32* %optname, i32* %buflen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %buflen, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %flag, align 4
  store i32 4, i32* %flagsize, align 4
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  %3 = load i32, i32* %sock_fd, align 4
  %4 = load i32, i32* %level, align 4
  %5 = load i32, i32* %optname, align 4
  %6 = bitcast i32* %flag to i8*
  %call2 = call i32 @getsockopt(i32 %3, i32 %4, i32 %5, i8* %6, i32* %flagsize) #2
  store i32 %call2, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.1
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call5 = call %struct._object* %9()
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  %10 = load i32, i32* %flag, align 4
  %conv = sext i32 %10 to i64
  %call7 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load i32, i32* %buflen, align 4
  %cmp9 = icmp ule i32 %11, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %12 = load i32, i32* %buflen, align 4
  %cmp11 = icmp ugt i32 %12, 1024
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.8
  %13 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.341, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %14 = load i32, i32* %buflen, align 4
  %conv15 = zext i32 %14 to i64
  %call16 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv15)
  store %struct._object* %call16, %struct._object** %buf, align 8
  %15 = load %struct._object*, %struct._object** %buf, align 8
  %cmp17 = icmp eq %struct._object* %15, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %16 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd21 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %16, i32 0, i32 1
  %17 = load i32, i32* %sock_fd21, align 4
  %18 = load i32, i32* %level, align 4
  %19 = load i32, i32* %optname, align 4
  %20 = load %struct._object*, %struct._object** %buf, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %21, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call22 = call i32 @getsockopt(i32 %17, i32 %18, i32 %19, i8* %arraydecay, i32* %buflen) #2
  store i32 %call22, i32* %res, align 4
  %22 = load i32, i32* %res, align 4
  %cmp23 = icmp slt i32 %22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %23 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %30 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler30 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %30, i32 0, i32 5
  %31 = load %struct._object* ()*, %struct._object* ()** %errorhandler30, align 8
  %call31 = call %struct._object* %31()
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.20
  %32 = load i32, i32* %buflen, align 4
  %conv33 = zext i32 %32 to i64
  %call34 = call i32 @_PyBytes_Resize(%struct._object** %buf, i64 %conv33)
  %33 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %do.end, %if.then.19, %if.then.13, %if.end.6, %if.then.4, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_listen(%struct.PySocketSockObject* %s, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %backlog = alloca i32, align 4
  %res = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @_PyLong_AsInt(%struct._object* %0)
  store i32 %call, i32* %backlog, align 4
  %1 = load i32, i32* %backlog, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %2 = load i32, i32* %backlog, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %backlog, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 1
  %4 = load i32, i32* %sock_fd, align 4
  %5 = load i32, i32* %backlog, align 4
  %call6 = call i32 @listen(i32 %4, i32 %5) #2
  store i32 %call6, i32* %res, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %res, align 4
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  %9 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call9 = call %struct._object* %9()
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recv(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %recvlen = alloca i64, align 8
  %outlen = alloca i64, align 8
  %flags = alloca i32, align 4
  %buf = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.342, i32 0, i32 0), i64* %recvlen, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %recvlen, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.343, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i64, i64* %recvlen, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %3)
  store %struct._object* %call3, %struct._object** %buf, align 8
  %4 = load %struct._object*, %struct._object** %buf, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %6 = load %struct._object*, %struct._object** %buf, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %8 = load i64, i64* %recvlen, align 8
  %9 = load i32, i32* %flags, align 4
  %call7 = call i64 @sock_recv_guts(%struct.PySocketSockObject* %5, i8* %arraydecay, i64 %8, i32 %9)
  store i64 %call7, i64* %outlen, align 8
  %10 = load i64, i64* %outlen, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %18 = load i64, i64* %outlen, align 8
  %19 = load i64, i64* %recvlen, align 8
  %cmp14 = icmp ne i64 %18, %19
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %20 = load i64, i64* %outlen, align 8
  %call16 = call i32 @_PyBytes_Resize(%struct._object** %buf, i64 %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %21 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %do.end, %if.then.5, %if.then.1, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recv_into(%struct.PySocketSockObject* %s, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %pbuf = alloca %struct.bufferinfo, align 8
  %buf = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %readlen = alloca i64, align 8
  %recvlen = alloca i64, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 0, i32* %flags, align 4
  store i64 0, i64* %recvlen, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.347, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @sock_recv_into.kwlist, i32 0, i32 0), %struct.bufferinfo* %pbuf, i64* %recvlen, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf1, align 8
  store i8* %2, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %buflen, align 8
  %4 = load i64, i64* %recvlen, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.348, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* %recvlen, align 8
  %cmp4 = icmp eq i64 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %7 = load i64, i64* %buflen, align 8
  store i64 %7, i64* %recvlen, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i64, i64* %buflen, align 8
  %9 = load i64, i64* %recvlen, align 8
  %cmp7 = icmp slt i64 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.349, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %recvlen, align 8
  %14 = load i32, i32* %flags, align 4
  %call10 = call i64 @sock_recv_guts(%struct.PySocketSockObject* %11, i8* %12, i64 %13, i32 %14)
  store i64 %call10, i64* %readlen, align 8
  %15 = load i64, i64* %readlen, align 8
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %16 = load i64, i64* %readlen, align 8
  %call14 = call %struct._object* @PyLong_FromSsize_t(i64 %16)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.8, %if.then.2, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recvfrom(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca %struct._object*, align 8
  %addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %recvlen = alloca i64, align 8
  %outlen = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %buf, align 8
  store %struct._object* null, %struct._object** %addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.350, i32 0, i32 0), i64* %recvlen, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %recvlen, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.351, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i64, i64* %recvlen, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %3)
  store %struct._object* %call3, %struct._object** %buf, align 8
  %4 = load %struct._object*, %struct._object** %buf, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %6 = load %struct._object*, %struct._object** %buf, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %8 = load i64, i64* %recvlen, align 8
  %9 = load i32, i32* %flags, align 4
  %call7 = call i64 @sock_recvfrom_guts(%struct.PySocketSockObject* %5, i8* %arraydecay, i64 %8, i32 %9, %struct._object** %addr)
  store i64 %call7, i64* %outlen, align 8
  %10 = load i64, i64* %outlen, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %finally

if.end.10:                                        ; preds = %if.end.6
  %11 = load i64, i64* %outlen, align 8
  %12 = load i64, i64* %recvlen, align 8
  %cmp11 = icmp ne i64 %11, %12
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %13 = load i64, i64* %outlen, align 8
  %call13 = call i32 @_PyBytes_Resize(%struct._object** %buf, i64 %13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  br label %finally

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %14 = load %struct._object*, %struct._object** %buf, align 8
  %15 = load %struct._object*, %struct._object** %addr, align 8
  %call18 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %14, %struct._object* %15)
  store %struct._object* %call18, %struct._object** %ret, align 8
  br label %finally

finally:                                          ; preds = %if.end.17, %if.then.15, %if.then.9
  br label %do.body

do.body:                                          ; preds = %finally
  %16 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp19 = icmp ne %struct._object* %17, null
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.24

if.else:                                          ; preds = %do.body.21
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %do.body
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %25 = load %struct._object*, %struct._object** %addr, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp29 = icmp ne %struct._object* %26, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp32, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %29, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %32(%struct._object* %33)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.27
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %34 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.then.5, %if.then.1, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recvfrom_into(%struct.PySocketSockObject* %s, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %pbuf = alloca %struct.bufferinfo, align 8
  %buf = alloca i8*, align 8
  %readlen = alloca i64, align 8
  %buflen = alloca i64, align 8
  %recvlen = alloca i64, align 8
  %addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 0, i32* %flags, align 4
  store i64 0, i64* %recvlen, align 8
  store %struct._object* null, %struct._object** %addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.352, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @sock_recvfrom_into.kwlist, i32 0, i32 0), %struct.bufferinfo* %pbuf, i64* %recvlen, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf1, align 8
  store i8* %2, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %buflen, align 8
  %4 = load i64, i64* %recvlen, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.353, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* %recvlen, align 8
  %cmp4 = icmp eq i64 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %7 = load i64, i64* %buflen, align 8
  store i64 %7, i64* %recvlen, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.3
  %8 = load i64, i64* %recvlen, align 8
  %9 = load i64, i64* %buflen, align 8
  %cmp6 = icmp sgt i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.354, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.5
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %recvlen, align 8
  %14 = load i32, i32* %flags, align 4
  %call10 = call i64 @sock_recvfrom_guts(%struct.PySocketSockObject* %11, i8* %12, i64 %13, i32 %14, %struct._object** %addr)
  store i64 %call10, i64* %readlen, align 8
  %15 = load i64, i64* %readlen, align 8
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end.9
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %16 = load %struct._object*, %struct._object** %addr, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.19

if.else.18:                                       ; preds = %do.body.15
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.9
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %25 = load i64, i64* %readlen, align 8
  %26 = load %struct._object*, %struct._object** %addr, align 8
  %call23 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.355, i32 0, i32 0), i64 %25, %struct._object* %26)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %do.end.21, %if.then.7, %if.then.2, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_send(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %flags = alloca i32, align 4
  %timeout = alloca i32, align 4
  %pbuf = alloca %struct.bufferinfo, align 8
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %n, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.356, i32 0, i32 0), %struct.bufferinfo* %pbuf, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf1, align 8
  store i8* %1, i8** %buf, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len2, align 8
  store i64 %2, i64* %len, align 8
  %3 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %4, i32 0, i32 6
  %5 = load double, double* %sock_timeout, align 8
  store double %5, double* %interval, align 8
  %6 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout3 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %6, i32 0, i32 6
  %7 = load double, double* %sock_timeout3, align 8
  %cmp = fcmp ogt double %7, 0.000000e+00
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %has_timeout, align 4
  %8 = load i32, i32* %has_timeout, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %9 = bitcast %struct.timeval* %deadline to i8*
  %10 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout6 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %11, i32 0, i32 6
  %12 = load double, double* %sock_timeout6, align 8
  %conv7 = fptosi double %12 to i64
  %conv8 = sitofp i64 %conv7 to double
  %13 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout9 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %13, i32 0, i32 6
  %14 = load double, double* %sock_timeout9, align 8
  %sub = fsub double %conv8, %14
  %mul = fmul double %sub, 1.000000e+06
  %conv10 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %15 = load i64, i64* %tv_usec, align 8
  %add = add i64 %15, %conv10
  store i64 %add, i64* %tv_usec, align 8
  %16 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout11 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %16, i32 0, i32 6
  %17 = load double, double* %sock_timeout11, align 8
  %conv12 = fptosi double %17 to i64
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %18 = load i64, i64* %tv_usec13, align 8
  %div = sdiv i64 %18, 1000000
  %add14 = add i64 %conv12, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %19 = load i64, i64* %tv_sec, align 8
  %add15 = add i64 %19, %add14
  store i64 %add15, i64* %tv_sec, align 8
  %tv_usec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %20 = load i64, i64* %tv_usec16, align 8
  %rem = srem i64 %20, 1000000
  store i64 %rem, i64* %tv_usec16, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.17, %if.end.37
  %call18 = call i32* @__errno_location() #6
  store i32 0, i32* %call18, align 4
  %call19 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call19, %struct._ts** %_save, align 8
  %21 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %22 = load double, double* %interval, align 8
  %call20 = call i32 @internal_select_ex(%struct.PySocketSockObject* %21, i32 1, double %22)
  store i32 %call20, i32* %timeout, align 4
  %23 = load i32, i32* %timeout, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %while.body
  %24 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %24, i32 0, i32 1
  %25 = load i32, i32* %sock_fd, align 4
  %26 = load i8*, i8** %buf, align 8
  %27 = load i64, i64* %len, align 8
  %28 = load i32, i32* %flags, align 4
  %call23 = call i64 @send(i32 %25, i8* %26, i64 %27, i32 %28)
  store i64 %call23, i64* %n, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %while.body
  %29 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %29)
  %30 = load i32, i32* %timeout, align 4
  %cmp25 = icmp eq i32 %30, 1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %31 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %32 = load i32, i32* %has_timeout, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %if.end.28
  %call30 = call i32* @__errno_location() #6
  %33 = load i32, i32* %call30, align 4
  %cmp31 = icmp eq i32 %33, 11
  br i1 %cmp31, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call33 = call i32* @__errno_location() #6
  %34 = load i32, i32* %call33, align 4
  %cmp34 = icmp eq i32 %34, 11
  br i1 %cmp34, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true, %if.end.28
  br label %while.end

if.end.37:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec38 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %35 = load i64, i64* %tv_sec38, align 8
  %tv_sec39 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %36 = load i64, i64* %tv_sec39, align 8
  %sub40 = sub i64 %35, %36
  %conv41 = sitofp i64 %sub40 to double
  %tv_usec42 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %37 = load i64, i64* %tv_usec42, align 8
  %tv_usec43 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %38 = load i64, i64* %tv_usec43, align 8
  %sub44 = sub i64 %37, %38
  %conv45 = sitofp i64 %sub44 to double
  %mul46 = fmul double %conv45, 1.000000e-06
  %add47 = fadd double %conv41, %mul46
  store double %add47, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.36
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %39 = load i64, i64* %n, align 8
  %cmp48 = icmp slt i64 %39, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %while.end
  %40 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %40, i32 0, i32 5
  %41 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call51 = call %struct._object* %41()
  store %struct._object* %call51, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %while.end
  %42 = load i64, i64* %n, align 8
  %call53 = call %struct._object* @PyLong_FromSsize_t(i64 %42)
  store %struct._object* %call53, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.27, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_sendall(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %flags = alloca i32, align 4
  %timeout = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %pbuf = alloca %struct.bufferinfo, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %n, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.357, i32 0, i32 0), %struct.bufferinfo* %pbuf, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf1, align 8
  store i8* %1, i8** %buf, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len2, align 8
  store i64 %2, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call4 = call i32 @internal_select(%struct.PySocketSockObject* %3, i32 1)
  store i32 %call4, i32* %timeout, align 4
  store i64 -1, i64* %n, align 8
  %4 = load i32, i32* %timeout, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %do.body
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 1
  %6 = load i32, i32* %sock_fd, align 4
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %len, align 8
  %9 = load i32, i32* %flags, align 4
  %call7 = call i64 @send(i32 %6, i8* %7, i64 %8, i32 %9)
  store i64 %call7, i64* %n, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.body
  %10 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  %11 = load i32, i32* %timeout, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %12 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.8
  %call11 = call i32* @__errno_location() #6
  %13 = load i32, i32* %call11, align 4
  store i32 %13, i32* %saved_errno, align 4
  %call12 = call i32 @PyErr_CheckSignals()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %14 = load i64, i64* %n, align 8
  %cmp16 = icmp slt i64 %14, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %15 = load i32, i32* %saved_errno, align 4
  %cmp18 = icmp eq i32 %15, 4
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  br label %do.cond

if.else:                                          ; preds = %if.then.17
  br label %do.end

if.end.20:                                        ; preds = %if.end.15
  %16 = load i64, i64* %n, align 8
  %17 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %17, i64 %16
  store i8* %add.ptr, i8** %buf, align 8
  %18 = load i64, i64* %n, align 8
  %19 = load i64, i64* %len, align 8
  %sub = sub i64 %19, %18
  store i64 %sub, i64* %len, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.20, %if.then.19
  %20 = load i64, i64* %len, align 8
  %cmp21 = icmp sgt i64 %20, 0
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %21 = load i64, i64* %n, align 8
  %cmp22 = icmp slt i64 %21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.end
  %22 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %22, i32 0, i32 5
  %23 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call24 = call %struct._object* %23()
  store %struct._object* %call24, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %do.end
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.23, %if.then.14, %if.then.9, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_sendto(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %addro = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %arglen = alloca i64, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %addrlen = alloca i32, align 4
  %n = alloca i32, align 4
  %flags = alloca i32, align 4
  %timeout = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 -1, i32* %n, align 4
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  store i64 %call, i64* %arglen, align 8
  %1 = load i64, i64* %arglen, align 8
  switch i64 %1, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.358, i32 0, i32 0), %struct.bufferinfo* %pbuf, %struct._object** %addro)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.359, i32 0, i32 0), %struct.bufferinfo* %pbuf, i32* %flags, %struct._object** %addro)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load i64, i64* %arglen, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.360, i32 0, i32 0), i64 %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %6 = load i8*, i8** %buf6, align 8
  store i8* %6, i8** %buf, align 8
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %7 = load i64, i64* %len7, align 8
  store i64 %7, i64* %len, align 8
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %9 = load %struct._object*, %struct._object** %addro, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call8 = call i32 @getsockaddrarg(%struct.PySocketSockObject* %8, %struct._object* %9, %struct.sockaddr* %sa, i32* %addrlen)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false)
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %11, i32 0, i32 6
  %12 = load double, double* %sock_timeout, align 8
  store double %12, double* %interval, align 8
  %13 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout12 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %13, i32 0, i32 6
  %14 = load double, double* %sock_timeout12, align 8
  %cmp = fcmp ogt double %14, 0.000000e+00
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %has_timeout, align 4
  %15 = load i32, i32* %has_timeout, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.11
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %16 = bitcast %struct.timeval* %deadline to i8*
  %17 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %18 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout15 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %18, i32 0, i32 6
  %19 = load double, double* %sock_timeout15, align 8
  %conv16 = fptosi double %19 to i64
  %conv17 = sitofp i64 %conv16 to double
  %20 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout18 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %20, i32 0, i32 6
  %21 = load double, double* %sock_timeout18, align 8
  %sub = fsub double %conv17, %21
  %mul = fmul double %sub, 1.000000e+06
  %conv19 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %22 = load i64, i64* %tv_usec, align 8
  %add = add i64 %22, %conv19
  store i64 %add, i64* %tv_usec, align 8
  %23 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout20 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %23, i32 0, i32 6
  %24 = load double, double* %sock_timeout20, align 8
  %conv21 = fptosi double %24 to i64
  %tv_usec22 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %25 = load i64, i64* %tv_usec22, align 8
  %div = sdiv i64 %25, 1000000
  %add23 = add i64 %conv21, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %26 = load i64, i64* %tv_sec, align 8
  %add24 = add i64 %26, %add23
  store i64 %add24, i64* %tv_sec, align 8
  %tv_usec25 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %27 = load i64, i64* %tv_usec25, align 8
  %rem = srem i64 %27, 1000000
  store i64 %rem, i64* %tv_usec25, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %if.end.11
  br label %while.body

while.body:                                       ; preds = %if.end.26, %if.end.48
  %call27 = call i32* @__errno_location() #6
  store i32 0, i32* %call27, align 4
  %call28 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call28, %struct._ts** %_save, align 8
  %28 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %29 = load double, double* %interval, align 8
  %call29 = call i32 @internal_select_ex(%struct.PySocketSockObject* %28, i32 1, double %29)
  store i32 %call29, i32* %timeout, align 4
  %30 = load i32, i32* %timeout, align 4
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %if.end.35, label %if.then.31

if.then.31:                                       ; preds = %while.body
  %31 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %31, i32 0, i32 1
  %32 = load i32, i32* %sock_fd, align 4
  %33 = load i8*, i8** %buf, align 8
  %34 = load i64, i64* %len, align 8
  %35 = load i32, i32* %flags, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa32 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa32, %struct.sockaddr** %__sockaddr__, align 8
  %36 = load i32, i32* %addrlen, align 4
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %37 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call33 = call i64 @sendto(i32 %32, i8* %33, i64 %34, i32 %35, %struct.sockaddr* %37, i32 %36)
  %conv34 = trunc i64 %call33 to i32
  store i32 %conv34, i32* %n, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %while.body
  %38 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %38)
  %39 = load i32, i32* %timeout, align 4
  %cmp36 = icmp eq i32 %39, 1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %40 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %41 = load i32, i32* %has_timeout, align 4
  %tobool40 = icmp ne i32 %41, 0
  br i1 %tobool40, label %lor.lhs.false, label %if.then.47

lor.lhs.false:                                    ; preds = %if.end.39
  %call41 = call i32* @__errno_location() #6
  %42 = load i32, i32* %call41, align 4
  %cmp42 = icmp eq i32 %42, 11
  br i1 %cmp42, label %if.end.48, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call44 = call i32* @__errno_location() #6
  %43 = load i32, i32* %call44, align 4
  %cmp45 = icmp eq i32 %43, 11
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true, %if.end.39
  br label %while.end

if.end.48:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec49 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %44 = load i64, i64* %tv_sec49, align 8
  %tv_sec50 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %45 = load i64, i64* %tv_sec50, align 8
  %sub51 = sub i64 %44, %45
  %conv52 = sitofp i64 %sub51 to double
  %tv_usec53 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %46 = load i64, i64* %tv_usec53, align 8
  %tv_usec54 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %47 = load i64, i64* %tv_usec54, align 8
  %sub55 = sub i64 %46, %47
  %conv56 = sitofp i64 %sub55 to double
  %mul57 = fmul double %conv56, 1.000000e-06
  %add58 = fadd double %conv52, %mul57
  store double %add58, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.47
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %48 = load i32, i32* %n, align 4
  %cmp59 = icmp slt i32 %48, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %while.end
  %49 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %49, i32 0, i32 5
  %50 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call62 = call %struct._object* %50()
  store %struct._object* %call62, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %while.end
  %51 = load i32, i32* %n, align 4
  %conv64 = sext i32 %51 to i64
  %call65 = call %struct._object* @PyLong_FromSsize_t(i64 %conv64)
  store %struct._object* %call65, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.61, %if.then.38, %if.then.10, %if.then, %sw.default
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_setblocking(%struct.PySocketSockObject* %s, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %block = alloca i64, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %0)
  store i64 %call, i64* %block, align 8
  %1 = load i64, i64* %block, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %block, align 8
  %tobool2 = icmp ne i64 %2, 0
  %cond = select i1 %tobool2, double -1.000000e+00, double 0.000000e+00
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 6
  store double %cond, double* %sock_timeout, align 8
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %5 = load i64, i64* %block, align 8
  %conv = trunc i64 %5 to i32
  %call3 = call i32 @internal_setblocking(%struct.PySocketSockObject* %4, i32 %conv)
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_settimeout(%struct.PySocketSockObject* %s, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %timeout = alloca double, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double -1.000000e+00, double* %timeout, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %1)
  store double %call, double* %timeout, align 8
  %2 = load double, double* %timeout, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.else
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.361, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %4 = load double, double* %timeout, align 8
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 6
  store double %4, double* %sock_timeout, align 8
  %6 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %7 = load double, double* %timeout, align 8
  %cmp7 = fcmp olt double %7, 0.000000e+00
  %conv = zext i1 %cmp7 to i32
  %call8 = call i32 @internal_setblocking(%struct.PySocketSockObject* %6, i32 %conv)
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_gettimeout(%struct.PySocketSockObject* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 6
  %1 = load double, double* %sock_timeout, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 6
  %4 = load double, double* %sock_timeout1, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_setsockopt(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %level = alloca i32, align 4
  %optname = alloca i32, align 4
  %res = alloca i32, align 4
  %buf = alloca i8*, align 8
  %buflen = alloca i32, align 4
  %flag = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.362, i32 0, i32 0), i32* %level, i32* %optname, i32* %flag)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %flag to i8*
  store i8* %1, i8** %buf, align 8
  store i32 4, i32* %buflen, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  call void @PyErr_Clear()
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.363, i32 0, i32 0), i32* %level, i32* %optname, i8** %buf, i32* %buflen)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 1
  %4 = load i32, i32* %sock_fd, align 4
  %5 = load i32, i32* %level, align 4
  %6 = load i32, i32* %optname, align 4
  %7 = load i8*, i8** %buf, align 8
  %8 = load i32, i32* %buflen, align 4
  %call5 = call i32 @setsockopt(i32 %4, i32 %5, i32 %6, i8* %7, i32 %8) #2
  store i32 %call5, i32* %res, align 4
  %9 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 5
  %11 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call7 = call %struct._object* %11()
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_shutdown(%struct.PySocketSockObject* %s, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %how = alloca i32, align 4
  %res = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @_PyLong_AsInt(%struct._object* %0)
  store i32 %call, i32* %how, align 4
  %1 = load i32, i32* %how, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  %3 = load i32, i32* %sock_fd, align 4
  %4 = load i32, i32* %how, align 4
  %call3 = call i32 @shutdown(i32 %3, i32 %4) #2
  store i32 %call3, i32* %res, align 4
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  %6 = load i32, i32* %res, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %7, i32 0, i32 5
  %8 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call6 = call %struct._object* %8()
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recvmsg(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %bufsize = alloca i64, align 8
  %ancbufsize = alloca i64, align 8
  %flags = alloca i32, align 4
  %iov = alloca %struct.iovec, align 8
  %buf = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %ancbufsize, align 8
  store i32 0, i32* %flags, align 4
  store %struct._object* null, %struct._object** %buf, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.364, i32 0, i32 0), i64* %bufsize, i64* %ancbufsize, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %bufsize, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.365, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %bufsize, align 8
  %call4 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %3)
  store %struct._object* %call4, %struct._object** %buf, align 8
  %cmp5 = icmp eq %struct._object* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** %buf, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 0
  store i8* %arraydecay, i8** %iov_base, align 8
  %6 = load i64, i64* %bufsize, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 1
  store i64 %6, i64* %iov_len, align 8
  %7 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %8 = load i32, i32* %flags, align 4
  %9 = load i64, i64* %ancbufsize, align 8
  %10 = bitcast %struct._object** %buf to i8*
  %call8 = call %struct._object* @sock_recvmsg_guts(%struct.PySocketSockObject* %7, %struct.iovec* %iov, i32 1, i32 %8, i64 %9, %struct._object* (i64, i8*)* @makeval_recvmsg, i8* %10)
  store %struct._object* %call8, %struct._object** %retval1, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14

if.else:                                          ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %20 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then.6, %if.then.2, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recvmsg_into(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ancbufsize = alloca i64, align 8
  %flags = alloca i32, align 4
  %iovs = alloca %struct.iovec*, align 8
  %i = alloca i64, align 8
  %nitems = alloca i64, align 8
  %nbufs = alloca i64, align 8
  %bufs = alloca %struct.bufferinfo*, align 8
  %buffers_arg = alloca %struct._object*, align 8
  %fast = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %ancbufsize, align 8
  store i32 0, i32* %flags, align 4
  store %struct.iovec* null, %struct.iovec** %iovs, align 8
  store i64 0, i64* %nbufs, align 8
  store %struct.bufferinfo* null, %struct.bufferinfo** %bufs, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.371, i32 0, i32 0), %struct._object** %buffers_arg, i64* %ancbufsize, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %buffers_arg, align 8
  %call2 = call %struct._object* @PySequence_Fast(%struct._object* %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.372, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %fast, align 8
  %cmp = icmp eq %struct._object* %call2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %fast, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 33554432
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %fast, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %fast, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %nitems, align 8
  %11 = load i64, i64* %nitems, align 8
  %cmp7 = icmp sgt i64 %11, 2147483647
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.373, i32 0, i32 0))
  br label %finally

if.end.9:                                         ; preds = %cond.end
  %13 = load i64, i64* %nitems, align 8
  %cmp10 = icmp sgt i64 %13, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.9
  %14 = load i64, i64* %nitems, align 8
  %cmp11 = icmp ugt i64 %14, 576460752303423487
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %land.lhs.true
  br label %cond.end.15

cond.false.13:                                    ; preds = %land.lhs.true
  %15 = load i64, i64* %nitems, align 8
  %mul = mul i64 %15, 16
  %call14 = call i8* @PyMem_Malloc(i64 %mul)
  %16 = bitcast i8* %call14 to %struct.iovec*
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi %struct.iovec* [ null, %cond.true.12 ], [ %16, %cond.false.13 ]
  store %struct.iovec* %cond16, %struct.iovec** %iovs, align 8
  %cmp17 = icmp eq %struct.iovec* %cond16, null
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.15
  %17 = load i64, i64* %nitems, align 8
  %cmp18 = icmp ugt i64 %17, 115292150460684697
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %lor.lhs.false
  br label %cond.end.23

cond.false.20:                                    ; preds = %lor.lhs.false
  %18 = load i64, i64* %nitems, align 8
  %mul21 = mul i64 %18, 80
  %call22 = call i8* @PyMem_Malloc(i64 %mul21)
  %19 = bitcast i8* %call22 to %struct.bufferinfo*
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.19
  %cond24 = phi %struct.bufferinfo* [ null, %cond.true.19 ], [ %19, %cond.false.20 ]
  store %struct.bufferinfo* %cond24, %struct.bufferinfo** %bufs, align 8
  %cmp25 = icmp eq %struct.bufferinfo* %cond24, null
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %cond.end.23, %cond.end.15
  %call27 = call %struct._object* @PyErr_NoMemory()
  br label %finally

if.end.28:                                        ; preds = %cond.end.23, %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %20 = load i64, i64* %nbufs, align 8
  %21 = load i64, i64* %nitems, align 8
  %cmp29 = icmp slt i64 %20, %21
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._object*, %struct._object** %fast, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_flags31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags31, align 8
  %and32 = and i64 %24, 33554432
  %cmp33 = icmp ne i64 %and32, 0
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %for.body
  %25 = load i64, i64* %nbufs, align 8
  %26 = load %struct._object*, %struct._object** %fast, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %27, i32 0, i32 1
  %28 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %28, i64 %25
  %29 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.38

cond.false.35:                                    ; preds = %for.body
  %30 = load i64, i64* %nbufs, align 8
  %31 = load %struct._object*, %struct._object** %fast, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 %30
  %33 = load %struct._object*, %struct._object** %arrayidx37, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.34
  %cond39 = phi %struct._object* [ %29, %cond.true.34 ], [ %33, %cond.false.35 ]
  %34 = load i64, i64* %nbufs, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %bufs, align 8
  %arrayidx40 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %35, i64 %34
  %call41 = call i32 (%struct._object*, i8*, ...) @PyArg_Parse(%struct._object* %cond39, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.374, i32 0, i32 0), %struct.bufferinfo* %arrayidx40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %cond.end.38
  br label %finally

if.end.44:                                        ; preds = %cond.end.38
  %36 = load i64, i64* %nbufs, align 8
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %bufs, align 8
  %arrayidx45 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %37, i64 %36
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx45, i32 0, i32 0
  %38 = load i8*, i8** %buf, align 8
  %39 = load i64, i64* %nbufs, align 8
  %40 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %arrayidx46 = getelementptr %struct.iovec, %struct.iovec* %40, i64 %39
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx46, i32 0, i32 0
  store i8* %38, i8** %iov_base, align 8
  %41 = load i64, i64* %nbufs, align 8
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %bufs, align 8
  %arrayidx47 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %42, i64 %41
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx47, i32 0, i32 2
  %43 = load i64, i64* %len, align 8
  %44 = load i64, i64* %nbufs, align 8
  %45 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %arrayidx48 = getelementptr %struct.iovec, %struct.iovec* %45, i64 %44
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx48, i32 0, i32 1
  store i64 %43, i64* %iov_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %46 = load i64, i64* %nbufs, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %nbufs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %48 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %49 = load i64, i64* %nitems, align 8
  %conv = trunc i64 %49 to i32
  %50 = load i32, i32* %flags, align 4
  %51 = load i64, i64* %ancbufsize, align 8
  %call49 = call %struct._object* @sock_recvmsg_guts(%struct.PySocketSockObject* %47, %struct.iovec* %48, i32 %conv, i32 %50, i64 %51, %struct._object* (i64, i8*)* @makeval_recvmsg_into, i8* null)
  store %struct._object* %call49, %struct._object** %retval1, align 8
  br label %finally

finally:                                          ; preds = %for.end, %if.then.43, %if.then.26, %if.then.8
  store i64 0, i64* %i, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.55, %finally
  %52 = load i64, i64* %i, align 8
  %53 = load i64, i64* %nbufs, align 8
  %cmp51 = icmp slt i64 %52, %53
  br i1 %cmp51, label %for.body.53, label %for.end.57

for.body.53:                                      ; preds = %for.cond.50
  %54 = load i64, i64* %i, align 8
  %55 = load %struct.bufferinfo*, %struct.bufferinfo** %bufs, align 8
  %arrayidx54 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %55, i64 %54
  call void @PyBuffer_Release(%struct.bufferinfo* %arrayidx54)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.53
  %56 = load i64, i64* %i, align 8
  %inc56 = add i64 %56, 1
  store i64 %inc56, i64* %i, align 8
  br label %for.cond.50

for.end.57:                                       ; preds = %for.cond.50
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %bufs, align 8
  %58 = bitcast %struct.bufferinfo* %57 to i8*
  call void @PyMem_Free(i8* %58)
  %59 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %60 = bitcast %struct.iovec* %59 to i8*
  call void @PyMem_Free(i8* %60)
  br label %do.body

do.body:                                          ; preds = %for.end.57
  %61 = load %struct._object*, %struct._object** %fast, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %63, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp58 = icmp ne i64 %dec, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %do.body
  br label %if.end.62

if.else:                                          ; preds = %do.body
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %66(%struct._object* %67)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.60
  br label %do.end

do.end:                                           ; preds = %if.end.62
  %68 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %68, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %69 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %69
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_sendmsg(%struct.PySocketSockObject* %s, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %ndataparts = alloca i64, align 8
  %ndatabufs = alloca i64, align 8
  %ncmsgs = alloca i64, align 8
  %ncmsgbufs = alloca i64, align 8
  %databufs = alloca %struct.bufferinfo*, align 8
  %iovs = alloca %struct.iovec*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %msg = alloca %struct.msghdr, align 8
  %cmsgs = alloca %struct.cmsginfo*, align 8
  %controlbuf = alloca i8*, align 8
  %controllen = alloca i64, align 8
  %controllen_last = alloca i64, align 8
  %bytes_sent = alloca i64, align 8
  %addrlen = alloca i32, align 4
  %timeout = alloca i32, align 4
  %flags = alloca i32, align 4
  %data_arg = alloca %struct._object*, align 8
  %cmsg_arg = alloca %struct._object*, align 8
  %addr_arg = alloca %struct._object*, align 8
  %data_fast = alloca %struct._object*, align 8
  %cmsg_fast = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %bufsize = alloca i64, align 8
  %space = alloca i64, align 8
  %cmsgh = alloca %struct.cmsghdr*, align 8
  %msg_len = alloca i64, align 8
  %data_len = alloca i64, align 8
  %enough_space = alloca i32, align 4
  %space160 = alloca i64, align 8
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp273 = alloca %struct._object*, align 8
  %_py_decref_tmp278 = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %ndatabufs, align 8
  store i64 0, i64* %ncmsgbufs, align 8
  store %struct.bufferinfo* null, %struct.bufferinfo** %databufs, align 8
  store %struct.iovec* null, %struct.iovec** %iovs, align 8
  %0 = bitcast %struct.msghdr* %msg to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  store %struct.cmsginfo* null, %struct.cmsginfo** %cmsgs, align 8
  store i8* null, i8** %controlbuf, align 8
  store i64 -1, i64* %bytes_sent, align 8
  store i32 0, i32* %flags, align 4
  store %struct._object* null, %struct._object** %cmsg_arg, align 8
  store %struct._object* null, %struct._object** %addr_arg, align 8
  store %struct._object* null, %struct._object** %data_fast, align 8
  store %struct._object* null, %struct._object** %cmsg_fast, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.375, i32 0, i32 0), %struct._object** %data_arg, %struct._object** %cmsg_arg, i32* %flags, %struct._object** %addr_arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %addr_arg, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %addr_arg, align 8
  %cmp2 = icmp ne %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %5 = load %struct._object*, %struct._object** %addr_arg, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call4 = call i32 @getsockaddrarg(%struct.PySocketSockObject* %4, %struct._object* %5, %struct.sockaddr* %sa, i32* %addrlen)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  br label %finally

if.end.7:                                         ; preds = %if.then.3
  %6 = bitcast %union.sock_addr* %addrbuf to i8*
  %msg_name = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 0
  store i8* %6, i8** %msg_name, align 8
  %7 = load i32, i32* %addrlen, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 1
  store i32 %7, i32* %msg_namelen, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %land.lhs.true, %if.end
  %8 = load %struct._object*, %struct._object** %data_arg, align 8
  %call9 = call %struct._object* @PySequence_Fast(%struct._object* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.376, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** %data_fast, align 8
  %cmp10 = icmp eq %struct._object* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %finally

if.end.12:                                        ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %data_fast, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 33554432
  %cmp13 = icmp ne i64 %and, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** %data_fast, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %15 = load %struct._object*, %struct._object** %data_fast, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %ndataparts, align 8
  %18 = load i64, i64* %ndataparts, align 8
  %cmp15 = icmp sgt i64 %18, 2147483647
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  %19 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.377, i32 0, i32 0))
  br label %finally

if.end.17:                                        ; preds = %cond.end
  %20 = load i64, i64* %ndataparts, align 8
  %msg_iovlen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 3
  store i64 %20, i64* %msg_iovlen, align 8
  %21 = load i64, i64* %ndataparts, align 8
  %cmp18 = icmp sgt i64 %21, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.37

land.lhs.true.19:                                 ; preds = %if.end.17
  %22 = load i64, i64* %ndataparts, align 8
  %cmp20 = icmp ugt i64 %22, 576460752303423487
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %land.lhs.true.19
  br label %cond.end.24

cond.false.22:                                    ; preds = %land.lhs.true.19
  %23 = load i64, i64* %ndataparts, align 8
  %mul = mul i64 %23, 16
  %call23 = call i8* @PyMem_Malloc(i64 %mul)
  %24 = bitcast i8* %call23 to %struct.iovec*
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi %struct.iovec* [ null, %cond.true.21 ], [ %24, %cond.false.22 ]
  store %struct.iovec* %cond25, %struct.iovec** %iovs, align 8
  %msg_iov = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 2
  store %struct.iovec* %cond25, %struct.iovec** %msg_iov, align 8
  %cmp26 = icmp eq %struct.iovec* %cond25, null
  br i1 %cmp26, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.24
  %25 = load i64, i64* %ndataparts, align 8
  %cmp27 = icmp ugt i64 %25, 115292150460684697
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %lor.lhs.false
  br label %cond.end.32

cond.false.29:                                    ; preds = %lor.lhs.false
  %26 = load i64, i64* %ndataparts, align 8
  %mul30 = mul i64 %26, 80
  %call31 = call i8* @PyMem_Malloc(i64 %mul30)
  %27 = bitcast i8* %call31 to %struct.bufferinfo*
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi %struct.bufferinfo* [ null, %cond.true.28 ], [ %27, %cond.false.29 ]
  store %struct.bufferinfo* %cond33, %struct.bufferinfo** %databufs, align 8
  %cmp34 = icmp eq %struct.bufferinfo* %cond33, null
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %cond.end.32, %cond.end.24
  %call36 = call %struct._object* @PyErr_NoMemory()
  br label %finally

if.end.37:                                        ; preds = %cond.end.32, %if.end.17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %28 = load i64, i64* %ndatabufs, align 8
  %29 = load i64, i64* %ndataparts, align 8
  %cmp38 = icmp slt i64 %28, %29
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct._object*, %struct._object** %data_fast, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_flags40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 19
  %32 = load i64, i64* %tp_flags40, align 8
  %and41 = and i64 %32, 33554432
  %cmp42 = icmp ne i64 %and41, 0
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %for.body
  %33 = load i64, i64* %ndatabufs, align 8
  %34 = load %struct._object*, %struct._object** %data_fast, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %35, i32 0, i32 1
  %36 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %36, i64 %33
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.47

cond.false.44:                                    ; preds = %for.body
  %38 = load i64, i64* %ndatabufs, align 8
  %39 = load %struct._object*, %struct._object** %data_fast, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item45 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx46 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item45, i32 0, i64 %38
  %41 = load %struct._object*, %struct._object** %arrayidx46, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.43
  %cond48 = phi %struct._object* [ %37, %cond.true.43 ], [ %41, %cond.false.44 ]
  %42 = load i64, i64* %ndatabufs, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %databufs, align 8
  %arrayidx49 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %43, i64 %42
  %call50 = call i32 (%struct._object*, i8*, ...) @PyArg_Parse(%struct._object* %cond48, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.378, i32 0, i32 0), %struct.bufferinfo* %arrayidx49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %cond.end.47
  br label %finally

if.end.53:                                        ; preds = %cond.end.47
  %44 = load i64, i64* %ndatabufs, align 8
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %databufs, align 8
  %arrayidx54 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %45, i64 %44
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx54, i32 0, i32 0
  %46 = load i8*, i8** %buf, align 8
  %47 = load i64, i64* %ndatabufs, align 8
  %48 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %arrayidx55 = getelementptr %struct.iovec, %struct.iovec* %48, i64 %47
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx55, i32 0, i32 0
  store i8* %46, i8** %iov_base, align 8
  %49 = load i64, i64* %ndatabufs, align 8
  %50 = load %struct.bufferinfo*, %struct.bufferinfo** %databufs, align 8
  %arrayidx56 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %50, i64 %49
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx56, i32 0, i32 2
  %51 = load i64, i64* %len, align 8
  %52 = load i64, i64* %ndatabufs, align 8
  %53 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %arrayidx57 = getelementptr %struct.iovec, %struct.iovec* %53, i64 %52
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx57, i32 0, i32 1
  store i64 %51, i64* %iov_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %54 = load i64, i64* %ndatabufs, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %ndatabufs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._object*, %struct._object** %cmsg_arg, align 8
  %cmp58 = icmp eq %struct._object* %55, null
  br i1 %cmp58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %for.end
  store i64 0, i64* %ncmsgs, align 8
  br label %if.end.74

if.else:                                          ; preds = %for.end
  %56 = load %struct._object*, %struct._object** %cmsg_arg, align 8
  %call60 = call %struct._object* @PySequence_Fast(%struct._object* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.379, i32 0, i32 0))
  store %struct._object* %call60, %struct._object** %cmsg_fast, align 8
  %cmp61 = icmp eq %struct._object* %call60, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else
  br label %finally

if.end.63:                                        ; preds = %if.else
  %57 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_flags65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 19
  %59 = load i64, i64* %tp_flags65, align 8
  %and66 = and i64 %59, 33554432
  %cmp67 = icmp ne i64 %and66, 0
  br i1 %cmp67, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %if.end.63
  %60 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyVarObject*
  %ob_size69 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %61, i32 0, i32 1
  %62 = load i64, i64* %ob_size69, align 8
  br label %cond.end.72

cond.false.70:                                    ; preds = %if.end.63
  %63 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyVarObject*
  %ob_size71 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %64, i32 0, i32 1
  %65 = load i64, i64* %ob_size71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.68
  %cond73 = phi i64 [ %62, %cond.true.68 ], [ %65, %cond.false.70 ]
  store i64 %cond73, i64* %ncmsgs, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end.72, %if.then.59
  %66 = load i64, i64* %ncmsgs, align 8
  %cmp75 = icmp sgt i64 %66, 0
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.87

land.lhs.true.76:                                 ; preds = %if.end.74
  %67 = load i64, i64* %ncmsgs, align 8
  %cmp77 = icmp ugt i64 %67, 104811045873349725
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %land.lhs.true.76
  br label %cond.end.82

cond.false.79:                                    ; preds = %land.lhs.true.76
  %68 = load i64, i64* %ncmsgs, align 8
  %mul80 = mul i64 %68, 88
  %call81 = call i8* @PyMem_Malloc(i64 %mul80)
  %69 = bitcast i8* %call81 to %struct.cmsginfo*
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.78
  %cond83 = phi %struct.cmsginfo* [ null, %cond.true.78 ], [ %69, %cond.false.79 ]
  store %struct.cmsginfo* %cond83, %struct.cmsginfo** %cmsgs, align 8
  %cmp84 = icmp eq %struct.cmsginfo* %cond83, null
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %cond.end.82
  %call86 = call %struct._object* @PyErr_NoMemory()
  br label %finally

if.end.87:                                        ; preds = %cond.end.82, %if.end.74
  store i64 0, i64* %controllen_last, align 8
  store i64 0, i64* %controllen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.120, %if.end.87
  %70 = load i64, i64* %ncmsgbufs, align 8
  %71 = load i64, i64* %ncmsgs, align 8
  %cmp88 = icmp slt i64 %70, %71
  br i1 %cmp88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_flags90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 19
  %74 = load i64, i64* %tp_flags90, align 8
  %and91 = and i64 %74, 33554432
  %cmp92 = icmp ne i64 %and91, 0
  br i1 %cmp92, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %while.body
  %75 = load i64, i64* %ncmsgbufs, align 8
  %76 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyListObject*
  %ob_item94 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %77, i32 0, i32 1
  %78 = load %struct._object**, %struct._object*** %ob_item94, align 8
  %arrayidx95 = getelementptr %struct._object*, %struct._object** %78, i64 %75
  %79 = load %struct._object*, %struct._object** %arrayidx95, align 8
  br label %cond.end.99

cond.false.96:                                    ; preds = %while.body
  %80 = load i64, i64* %ncmsgbufs, align 8
  %81 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyTupleObject*
  %ob_item97 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %82, i32 0, i32 1
  %arrayidx98 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item97, i32 0, i64 %80
  %83 = load %struct._object*, %struct._object** %arrayidx98, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.93
  %cond100 = phi %struct._object* [ %79, %cond.true.93 ], [ %83, %cond.false.96 ]
  %84 = load i64, i64* %ncmsgbufs, align 8
  %85 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx101 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %85, i64 %84
  %level = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx101, i32 0, i32 0
  %86 = load i64, i64* %ncmsgbufs, align 8
  %87 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx102 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %87, i64 %86
  %type = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx102, i32 0, i32 1
  %88 = load i64, i64* %ncmsgbufs, align 8
  %89 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx103 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %89, i64 %88
  %data = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx103, i32 0, i32 2
  %call104 = call i32 (%struct._object*, i8*, ...) @PyArg_Parse(%struct._object* %cond100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.380, i32 0, i32 0), i32* %level, i32* %type, %struct.bufferinfo* %data)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %cond.end.99
  br label %finally

if.end.107:                                       ; preds = %cond.end.99
  %90 = load i64, i64* %ncmsgbufs, align 8
  %inc108 = add i64 %90, 1
  store i64 %inc108, i64* %ncmsgbufs, align 8
  %91 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx109 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %91, i64 %90
  %data110 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx109, i32 0, i32 2
  %len111 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data110, i32 0, i32 2
  %92 = load i64, i64* %len111, align 8
  store i64 %92, i64* %bufsize, align 8
  %93 = load i64, i64* %bufsize, align 8
  %call112 = call i32 @get_CMSG_SPACE(i64 %93, i64* %space)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.107
  %94 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.381, i32 0, i32 0))
  br label %finally

if.end.115:                                       ; preds = %if.end.107
  %95 = load i64, i64* %space, align 8
  %96 = load i64, i64* %controllen, align 8
  %add = add i64 %96, %95
  store i64 %add, i64* %controllen, align 8
  %97 = load i64, i64* %controllen, align 8
  %cmp116 = icmp ugt i64 %97, 2147483647
  br i1 %cmp116, label %if.then.119, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.115
  %98 = load i64, i64* %controllen, align 8
  %99 = load i64, i64* %controllen_last, align 8
  %cmp118 = icmp ult i64 %98, %99
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.117, %if.end.115
  %100 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.382, i32 0, i32 0))
  br label %finally

if.end.120:                                       ; preds = %lor.lhs.false.117
  %101 = load i64, i64* %controllen, align 8
  store i64 %101, i64* %controllen_last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %102 = load i64, i64* %ncmsgbufs, align 8
  %cmp121 = icmp sgt i64 %102, 0
  br i1 %cmp121, label %if.then.122, label %if.end.180

if.then.122:                                      ; preds = %while.end
  store %struct.cmsghdr* null, %struct.cmsghdr** %cmsgh, align 8
  %103 = load i64, i64* %controllen, align 8
  %call123 = call i8* @PyMem_Malloc(i64 %103)
  store i8* %call123, i8** %controlbuf, align 8
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  store i8* %call123, i8** %msg_control, align 8
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.122
  %call126 = call %struct._object* @PyErr_NoMemory()
  br label %finally

if.end.127:                                       ; preds = %if.then.122
  %104 = load i64, i64* %controllen, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  store i64 %104, i64* %msg_controllen, align 8
  %105 = load i8*, i8** %controlbuf, align 8
  %106 = load i64, i64* %controllen, align 8
  call void @llvm.memset.p0i8.i64(i8* %105, i8 0, i64 %106, i32 1, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.177, %if.end.127
  %107 = load i64, i64* %i, align 8
  %108 = load i64, i64* %ncmsgbufs, align 8
  %cmp129 = icmp slt i64 %107, %108
  br i1 %cmp129, label %for.body.130, label %for.end.179

for.body.130:                                     ; preds = %for.cond.128
  %109 = load i64, i64* %i, align 8
  %110 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx131 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %110, i64 %109
  %data132 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx131, i32 0, i32 2
  %len133 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data132, i32 0, i32 2
  %111 = load i64, i64* %len133, align 8
  store i64 %111, i64* %data_len, align 8
  store i32 0, i32* %enough_space, align 4
  %112 = load i64, i64* %i, align 8
  %cmp134 = icmp eq i64 %112, 0
  br i1 %cmp134, label %cond.true.135, label %cond.false.143

cond.true.135:                                    ; preds = %for.body.130
  %msg_controllen136 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %113 = load i64, i64* %msg_controllen136, align 8
  %cmp137 = icmp uge i64 %113, 16
  br i1 %cmp137, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %cond.true.135
  %msg_control139 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  %114 = load i8*, i8** %msg_control139, align 8
  %115 = bitcast i8* %114 to %struct.cmsghdr*
  br label %cond.end.141

cond.false.140:                                   ; preds = %cond.true.135
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.140, %cond.true.138
  %cond142 = phi %struct.cmsghdr* [ %115, %cond.true.138 ], [ null, %cond.false.140 ]
  br label %cond.end.145

cond.false.143:                                   ; preds = %for.body.130
  %116 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call144 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* %msg, %struct.cmsghdr* %116) #2
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.143, %cond.end.141
  %cond146 = phi %struct.cmsghdr* [ %cond142, %cond.end.141 ], [ %call144, %cond.false.143 ]
  store %struct.cmsghdr* %cond146, %struct.cmsghdr** %cmsgh, align 8
  %117 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmp147 = icmp eq %struct.cmsghdr* %117, null
  br i1 %cmp147, label %if.then.148, label %if.end.152

if.then.148:                                      ; preds = %cond.end.145
  %118 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %119 = load i64, i64* %i, align 8
  %cmp149 = icmp eq i64 %119, 0
  %cond150 = select i1 %cmp149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.385, i32 0, i32 0)
  %call151 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.383, i32 0, i32 0), i8* %cond150)
  br label %finally

if.end.152:                                       ; preds = %cond.end.145
  %120 = load i64, i64* %data_len, align 8
  %call153 = call i32 @get_CMSG_LEN(i64 %120, i64* %msg_len)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.end.152
  %121 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.386, i32 0, i32 0))
  br label %finally

if.end.156:                                       ; preds = %if.end.152
  %122 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %123 = load i64, i64* %msg_len, align 8
  %call157 = call i32 @cmsg_min_space(%struct.msghdr* %msg, %struct.cmsghdr* %122, i64 %123)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.166

if.then.159:                                      ; preds = %if.end.156
  %124 = load i64, i64* %msg_len, align 8
  %125 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %125, i32 0, i32 0
  store i64 %124, i64* %cmsg_len, align 8
  %126 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call161 = call i32 @get_cmsg_data_space(%struct.msghdr* %msg, %struct.cmsghdr* %126, i64* %space160)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.159
  %127 = load i64, i64* %space160, align 8
  %128 = load i64, i64* %data_len, align 8
  %cmp164 = icmp uge i64 %127, %128
  %conv = zext i1 %cmp164 to i32
  store i32 %conv, i32* %enough_space, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.159
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.156
  %129 = load i32, i32* %enough_space, align 4
  %tobool167 = icmp ne i32 %129, 0
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.end.166
  %130 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.387, i32 0, i32 0))
  br label %finally

if.end.169:                                       ; preds = %if.end.166
  %131 = load i64, i64* %i, align 8
  %132 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx170 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %132, i64 %131
  %level171 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx170, i32 0, i32 0
  %133 = load i32, i32* %level171, align 4
  %134 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %134, i32 0, i32 1
  store i32 %133, i32* %cmsg_level, align 4
  %135 = load i64, i64* %i, align 8
  %136 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx172 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %136, i64 %135
  %type173 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx172, i32 0, i32 1
  %137 = load i32, i32* %type173, align 4
  %138 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %138, i32 0, i32 2
  store i32 %137, i32* %cmsg_type, align 4
  %139 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %139, i32 0, i32 3
  %140 = bitcast [0 x i8]* %__cmsg_data to i8*
  %141 = load i64, i64* %i, align 8
  %142 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx174 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %142, i64 %141
  %data175 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx174, i32 0, i32 2
  %buf176 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data175, i32 0, i32 0
  %143 = load i8*, i8** %buf176, align 8
  %144 = load i64, i64* %data_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %143, i64 %144, i32 1, i1 false)
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.169
  %145 = load i64, i64* %i, align 8
  %inc178 = add i64 %145, 1
  store i64 %inc178, i64* %i, align 8
  br label %for.cond.128

for.end.179:                                      ; preds = %for.cond.128
  br label %if.end.180

if.end.180:                                       ; preds = %for.end.179, %while.end
  %146 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %146, i8 0, i64 16, i32 8, i1 false)
  %147 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %147, i32 0, i32 6
  %148 = load double, double* %sock_timeout, align 8
  store double %148, double* %interval, align 8
  %149 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout181 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %149, i32 0, i32 6
  %150 = load double, double* %sock_timeout181, align 8
  %cmp182 = fcmp ogt double %150, 0.000000e+00
  %conv183 = zext i1 %cmp182 to i32
  store i32 %conv183, i32* %has_timeout, align 4
  %151 = load i32, i32* %has_timeout, align 4
  %tobool184 = icmp ne i32 %151, 0
  br i1 %tobool184, label %if.then.185, label %if.end.199

if.then.185:                                      ; preds = %if.end.180
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %152 = bitcast %struct.timeval* %deadline to i8*
  %153 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.185
  %154 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout186 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %154, i32 0, i32 6
  %155 = load double, double* %sock_timeout186, align 8
  %conv187 = fptosi double %155 to i64
  %conv188 = sitofp i64 %conv187 to double
  %156 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout189 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %156, i32 0, i32 6
  %157 = load double, double* %sock_timeout189, align 8
  %sub = fsub double %conv188, %157
  %mul190 = fmul double %sub, 1.000000e+06
  %conv191 = fptosi double %mul190 to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %158 = load i64, i64* %tv_usec, align 8
  %add192 = add i64 %158, %conv191
  store i64 %add192, i64* %tv_usec, align 8
  %159 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout193 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %159, i32 0, i32 6
  %160 = load double, double* %sock_timeout193, align 8
  %conv194 = fptosi double %160 to i64
  %tv_usec195 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %161 = load i64, i64* %tv_usec195, align 8
  %div = sdiv i64 %161, 1000000
  %add196 = add i64 %conv194, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %162 = load i64, i64* %tv_sec, align 8
  %add197 = add i64 %162, %add196
  store i64 %add197, i64* %tv_sec, align 8
  %tv_usec198 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %163 = load i64, i64* %tv_usec198, align 8
  %rem = srem i64 %163, 1000000
  store i64 %rem, i64* %tv_usec198, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.199

if.end.199:                                       ; preds = %do.end, %if.end.180
  br label %while.body.201

while.body.201:                                   ; preds = %if.end.199, %if.end.223
  %call202 = call i32* @__errno_location() #6
  store i32 0, i32* %call202, align 4
  %call203 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call203, %struct._ts** %_save, align 8
  %164 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %165 = load double, double* %interval, align 8
  %call204 = call i32 @internal_select_ex(%struct.PySocketSockObject* %164, i32 1, double %165)
  store i32 %call204, i32* %timeout, align 4
  %166 = load i32, i32* %timeout, align 4
  %tobool205 = icmp ne i32 %166, 0
  br i1 %tobool205, label %if.end.208, label %if.then.206

if.then.206:                                      ; preds = %while.body.201
  %167 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %167, i32 0, i32 1
  %168 = load i32, i32* %sock_fd, align 4
  %169 = load i32, i32* %flags, align 4
  %call207 = call i64 @sendmsg(i32 %168, %struct.msghdr* %msg, i32 %169)
  store i64 %call207, i64* %bytes_sent, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %while.body.201
  %170 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %170)
  %171 = load i32, i32* %timeout, align 4
  %cmp209 = icmp eq i32 %171, 1
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.208
  %172 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  br label %finally

if.end.212:                                       ; preds = %if.end.208
  %173 = load i32, i32* %has_timeout, align 4
  %tobool213 = icmp ne i32 %173, 0
  br i1 %tobool213, label %lor.lhs.false.214, label %if.then.222

lor.lhs.false.214:                                ; preds = %if.end.212
  %call215 = call i32* @__errno_location() #6
  %174 = load i32, i32* %call215, align 4
  %cmp216 = icmp eq i32 %174, 11
  br i1 %cmp216, label %if.end.223, label %land.lhs.true.218

land.lhs.true.218:                                ; preds = %lor.lhs.false.214
  %call219 = call i32* @__errno_location() #6
  %175 = load i32, i32* %call219, align 4
  %cmp220 = icmp eq i32 %175, 11
  br i1 %cmp220, label %if.end.223, label %if.then.222

if.then.222:                                      ; preds = %land.lhs.true.218, %if.end.212
  br label %while.end.234

if.end.223:                                       ; preds = %land.lhs.true.218, %lor.lhs.false.214
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec224 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %176 = load i64, i64* %tv_sec224, align 8
  %tv_sec225 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %177 = load i64, i64* %tv_sec225, align 8
  %sub226 = sub i64 %176, %177
  %conv227 = sitofp i64 %sub226 to double
  %tv_usec228 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %178 = load i64, i64* %tv_usec228, align 8
  %tv_usec229 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %179 = load i64, i64* %tv_usec229, align 8
  %sub230 = sub i64 %178, %179
  %conv231 = sitofp i64 %sub230 to double
  %mul232 = fmul double %conv231, 1.000000e-06
  %add233 = fadd double %conv227, %mul232
  store double %add233, double* %interval, align 8
  br label %while.body.201

while.end.234:                                    ; preds = %if.then.222
  %180 = load i64, i64* %bytes_sent, align 8
  %cmp235 = icmp slt i64 %180, 0
  br i1 %cmp235, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %while.end.234
  %181 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %181, i32 0, i32 5
  %182 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call238 = call %struct._object* %182()
  br label %finally

if.end.239:                                       ; preds = %while.end.234
  %183 = load i64, i64* %bytes_sent, align 8
  %call240 = call %struct._object* @PyLong_FromSsize_t(i64 %183)
  store %struct._object* %call240, %struct._object** %retval1, align 8
  br label %finally

finally:                                          ; preds = %if.end.239, %if.then.237, %if.then.211, %if.then.168, %if.then.155, %if.then.148, %if.then.125, %if.then.119, %if.then.114, %if.then.106, %if.then.85, %if.then.62, %if.then.52, %if.then.35, %if.then.16, %if.then.11, %if.then.6
  %184 = load i8*, i8** %controlbuf, align 8
  call void @PyMem_Free(i8* %184)
  store i64 0, i64* %i, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.247, %finally
  %185 = load i64, i64* %i, align 8
  %186 = load i64, i64* %ncmsgbufs, align 8
  %cmp242 = icmp slt i64 %185, %186
  br i1 %cmp242, label %for.body.244, label %for.end.249

for.body.244:                                     ; preds = %for.cond.241
  %187 = load i64, i64* %i, align 8
  %188 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %arrayidx245 = getelementptr %struct.cmsginfo, %struct.cmsginfo* %188, i64 %187
  %data246 = getelementptr inbounds %struct.cmsginfo, %struct.cmsginfo* %arrayidx245, i32 0, i32 2
  call void @PyBuffer_Release(%struct.bufferinfo* %data246)
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.244
  %189 = load i64, i64* %i, align 8
  %inc248 = add i64 %189, 1
  store i64 %inc248, i64* %i, align 8
  br label %for.cond.241

for.end.249:                                      ; preds = %for.cond.241
  %190 = load %struct.cmsginfo*, %struct.cmsginfo** %cmsgs, align 8
  %191 = bitcast %struct.cmsginfo* %190 to i8*
  call void @PyMem_Free(i8* %191)
  br label %do.body.250

do.body.250:                                      ; preds = %for.end.249
  %192 = load %struct._object*, %struct._object** %cmsg_fast, align 8
  store %struct._object* %192, %struct._object** %_py_xdecref_tmp, align 8
  %193 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp251 = icmp ne %struct._object* %193, null
  br i1 %cmp251, label %if.then.253, label %if.end.262

if.then.253:                                      ; preds = %do.body.250
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.253
  %194 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %194, %struct._object** %_py_decref_tmp, align 8
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 0
  %196 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %196, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp255 = icmp ne i64 %dec, 0
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.254
  br label %if.end.260

if.else.258:                                      ; preds = %do.body.254
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 1
  %198 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %198, i32 0, i32 4
  %199 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %199(%struct._object* %200)
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.261

do.end.261:                                       ; preds = %if.end.260
  br label %if.end.262

if.end.262:                                       ; preds = %do.end.261, %do.body.250
  br label %do.end.263

do.end.263:                                       ; preds = %if.end.262
  store i64 0, i64* %i, align 8
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.269, %do.end.263
  %201 = load i64, i64* %i, align 8
  %202 = load i64, i64* %ndatabufs, align 8
  %cmp265 = icmp slt i64 %201, %202
  br i1 %cmp265, label %for.body.267, label %for.end.271

for.body.267:                                     ; preds = %for.cond.264
  %203 = load i64, i64* %i, align 8
  %204 = load %struct.bufferinfo*, %struct.bufferinfo** %databufs, align 8
  %arrayidx268 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %204, i64 %203
  call void @PyBuffer_Release(%struct.bufferinfo* %arrayidx268)
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.267
  %205 = load i64, i64* %i, align 8
  %inc270 = add i64 %205, 1
  store i64 %inc270, i64* %i, align 8
  br label %for.cond.264

for.end.271:                                      ; preds = %for.cond.264
  %206 = load %struct.bufferinfo*, %struct.bufferinfo** %databufs, align 8
  %207 = bitcast %struct.bufferinfo* %206 to i8*
  call void @PyMem_Free(i8* %207)
  %208 = load %struct.iovec*, %struct.iovec** %iovs, align 8
  %209 = bitcast %struct.iovec* %208 to i8*
  call void @PyMem_Free(i8* %209)
  br label %do.body.272

do.body.272:                                      ; preds = %for.end.271
  %210 = load %struct._object*, %struct._object** %data_fast, align 8
  store %struct._object* %210, %struct._object** %_py_xdecref_tmp273, align 8
  %211 = load %struct._object*, %struct._object** %_py_xdecref_tmp273, align 8
  %cmp274 = icmp ne %struct._object* %211, null
  br i1 %cmp274, label %if.then.276, label %if.end.289

if.then.276:                                      ; preds = %do.body.272
  br label %do.body.277

do.body.277:                                      ; preds = %if.then.276
  %212 = load %struct._object*, %struct._object** %_py_xdecref_tmp273, align 8
  store %struct._object* %212, %struct._object** %_py_decref_tmp278, align 8
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_refcnt279 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 0
  %214 = load i64, i64* %ob_refcnt279, align 8
  %dec280 = add i64 %214, -1
  store i64 %dec280, i64* %ob_refcnt279, align 8
  %cmp281 = icmp ne i64 %dec280, 0
  br i1 %cmp281, label %if.then.283, label %if.else.284

if.then.283:                                      ; preds = %do.body.277
  br label %if.end.287

if.else.284:                                      ; preds = %do.body.277
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_type285 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 1
  %216 = load %struct._typeobject*, %struct._typeobject** %ob_type285, align 8
  %tp_dealloc286 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %216, i32 0, i32 4
  %217 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc286, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  call void %217(%struct._object* %218)
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.284, %if.then.283
  br label %do.end.288

do.end.288:                                       ; preds = %if.end.287
  br label %if.end.289

if.end.289:                                       ; preds = %do.end.288, %do.body.272
  br label %do.end.290

do.end.290:                                       ; preds = %if.end.289
  %219 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %219, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.290, %if.then
  %220 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %220
}

; Function Attrs: nounwind uwtable
define internal i32 @getsockaddrlen(%struct.PySocketSockObject* %s, i32* %len_ret) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %len_ret.addr = alloca i32*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32* %len_ret, i32** %len_ret.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 2
  %1 = load i32, i32* %sock_family, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb.1
    i32 21, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 10, label %sw.bb.3
    i32 17, label %sw.bb.4
    i32 30, label %sw.bb.5
    i32 29, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32*, i32** %len_ret.addr, align 8
  store i32 110, i32* %2, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load i32*, i32** %len_ret.addr, align 8
  store i32 12, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %4 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %4, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %5 = load i32*, i32** %len_ret.addr, align 8
  store i32 28, i32* %5, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %6 = load i32*, i32** %len_ret.addr, align 8
  store i32 20, i32* %6, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %7 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %7, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %8 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %8, align 4
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.301, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @_PyTime_gettimeofday(%struct.timeval*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind uwtable
define internal i32 @internal_select_ex(%struct.PySocketSockObject* %s, i32 %writing, double %interval) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %writing.addr = alloca i32, align 4
  %interval.addr = alloca double, align 8
  %n = alloca i32, align 4
  %pollfd = alloca %struct.pollfd, align 4
  %timeout = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32 %writing, i32* %writing.addr, align 4
  store double %interval, double* %interval.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 6
  %1 = load double, double* %sock_timeout, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 1
  %3 = load i32, i32* %sock_fd, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load double, double* %interval.addr, align 8
  %cmp4 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 1
  %6 = load i32, i32* %sock_fd7, align 4
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pollfd, i32 0, i32 0
  store i32 %6, i32* %fd, align 4
  %7 = load i32, i32* %writing.addr, align 4
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 4, i32 1
  %conv = trunc i32 %cond to i16
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pollfd, i32 0, i32 1
  store i16 %conv, i16* %events, align 2
  %8 = load double, double* %interval.addr, align 8
  %mul = fmul double %8, 1.000000e+03
  %add = fadd double %mul, 5.000000e-01
  %conv8 = fptosi double %add to i32
  store i32 %conv8, i32* %timeout, align 4
  %9 = load i32, i32* %timeout, align 4
  %call = call i32 @poll(%struct.pollfd* %pollfd, i64 1, i32 %9)
  store i32 %call, i32* %n, align 4
  %10 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %11 = load i32, i32* %n, align 4
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then.5, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @accept4(i32, %struct.sockaddr*, i32*, i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @_Py_set_inheritable(i32, i32, i32*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @makesockaddr(i32 %sockfd, %struct.sockaddr* %addr, i64 %addrlen, i32 %proto) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %sockfd.addr = alloca i32, align 4
  %addr.addr = alloca %struct.sockaddr*, align 8
  %addrlen.addr = alloca i64, align 8
  %proto.addr = alloca i32, align 4
  %a = alloca %struct.sockaddr_in*, align 8
  %addrobj = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %a11 = alloca %struct.sockaddr_un*, align 8
  %a23 = alloca %struct.sockaddr_nl*, align 8
  %a26 = alloca %struct.sockaddr_in6*, align 8
  %addrobj27 = alloca %struct._object*, align 8
  %ret29 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %a50 = alloca %struct.sockaddr_ll*, align 8
  %ifname = alloca i8*, align 8
  %ifr = alloca %struct.ifreq, align 8
  %a69 = alloca %struct.sockaddr_tipc*, align 8
  %a120 = alloca %struct.sockaddr_can*, align 8
  %ifname121 = alloca i8*, align 8
  %ifr122 = alloca %struct.ifreq, align 8
  store i32 %sockfd, i32* %sockfd.addr, align 4
  store %struct.sockaddr* %addr, %struct.sockaddr** %addr.addr, align 8
  store i64 %addrlen, i64* %addrlen.addr, align 8
  store i32 %proto, i32* %proto.addr, align 4
  %0 = load i64, i64* %addrlen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %2, i32 0, i32 0
  %3 = load i16, i16* %sa_family, align 2
  %conv = zext i16 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.10
    i32 16, label %sw.bb.22
    i32 10, label %sw.bb.25
    i32 17, label %sw.bb.49
    i32 30, label %sw.bb.68
    i32 29, label %sw.bb.119
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %call = call %struct._object* @makeipaddr(%struct.sockaddr* %4, i32 16)
  store %struct._object* %call, %struct._object** %addrobj, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %5 = load %struct._object*, %struct._object** %addrobj, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %sw.bb
  %6 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %7 = bitcast %struct.sockaddr* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %7, %struct.sockaddr_in** %a, align 8
  %8 = load %struct._object*, %struct._object** %addrobj, align 8
  %9 = load %struct.sockaddr_in*, %struct.sockaddr_in** %a, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %10 = load i16, i16* %sin_port, align 2
  %call2 = call zeroext i16 @ntohs(i16 zeroext %10) #6
  %conv3 = zext i16 %call2 to i32
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.302, i32 0, i32 0), %struct._object* %8, i32 %conv3)
  store %struct._object* %call4, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.1
  %11 = load %struct._object*, %struct._object** %addrobj, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %sw.bb
  %18 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

sw.bb.10:                                         ; preds = %if.end
  %19 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %20, %struct.sockaddr_un** %a11, align 8
  %21 = load %struct.sockaddr_un*, %struct.sockaddr_un** %a11, align 8
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %21, i32 0, i32 1
  %arrayidx = getelementptr [108 x i8], [108 x i8]* %sun_path, i32 0, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %22 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %sw.bb.10
  %23 = load i64, i64* %addrlen.addr, align 8
  %sub = sub i64 %23, 2
  store i64 %sub, i64* %addrlen.addr, align 8
  %24 = load %struct.sockaddr_un*, %struct.sockaddr_un** %a11, align 8
  %sun_path16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %24, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path16, i32 0, i32 0
  %25 = load i64, i64* %addrlen.addr, align 8
  %call17 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay, i64 %25)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.else.18:                                       ; preds = %sw.bb.10
  %26 = load %struct.sockaddr_un*, %struct.sockaddr_un** %a11, align 8
  %sun_path19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %26, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path19, i32 0, i32 0
  %call21 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %arraydecay20)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

sw.bb.22:                                         ; preds = %if.end
  %27 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %28, %struct.sockaddr_nl** %a23, align 8
  %29 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %a23, align 8
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %29, i32 0, i32 2
  %30 = load i32, i32* %nl_pid, align 4
  %31 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %a23, align 8
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %31, i32 0, i32 3
  %32 = load i32, i32* %nl_groups, align 4
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.303, i32 0, i32 0), i32 %30, i32 %32)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  %33 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %call28 = call %struct._object* @makeipaddr(%struct.sockaddr* %33, i32 28)
  store %struct._object* %call28, %struct._object** %addrobj27, align 8
  store %struct._object* null, %struct._object** %ret29, align 8
  %34 = load %struct._object*, %struct._object** %addrobj27, align 8
  %tobool30 = icmp ne %struct._object* %34, null
  br i1 %tobool30, label %if.then.31, label %if.end.48

if.then.31:                                       ; preds = %sw.bb.25
  %35 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %36, %struct.sockaddr_in6** %a26, align 8
  %37 = load %struct._object*, %struct._object** %addrobj27, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %a26, align 8
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  %39 = load i16, i16* %sin6_port, align 2
  %call32 = call zeroext i16 @ntohs(i16 zeroext %39) #6
  %conv33 = zext i16 %call32 to i32
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %a26, align 8
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 2
  %41 = load i32, i32* %sin6_flowinfo, align 4
  %call34 = call i32 @ntohl(i32 %41) #6
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %a26, align 8
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 4
  %43 = load i32, i32* %sin6_scope_id, align 4
  %call35 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.304, i32 0, i32 0), %struct._object* %37, i32 %conv33, i32 %call34, i32 %43)
  store %struct._object* %call35, %struct._object** %ret29, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.31
  %44 = load %struct._object*, %struct._object** %addrobj27, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp37, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %46, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.36
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.36
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %49(%struct._object* %50)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %sw.bb.25
  %51 = load %struct._object*, %struct._object** %ret29, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

sw.bb.49:                                         ; preds = %if.end
  %52 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %53 = bitcast %struct.sockaddr* %52 to %struct.sockaddr_ll*
  store %struct.sockaddr_ll* %53, %struct.sockaddr_ll** %a50, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.305, i32 0, i32 0), i8** %ifname, align 8
  %54 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_ifindex = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %54, i32 0, i32 2
  %55 = load i32, i32* %sll_ifindex, align 4
  %tobool51 = icmp ne i32 %55, 0
  br i1 %tobool51, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %sw.bb.49
  %56 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_ifindex53 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %56, i32 0, i32 2
  %57 = load i32, i32* %sll_ifindex53, align 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr, i32 0, i32 1
  %ifru_ivalue = bitcast %union.anon.2* %ifr_ifru to i32*
  store i32 %57, i32* %ifru_ivalue, align 4
  %58 = load i32, i32* %sockfd.addr, align 4
  %call54 = call i32 (i32, i64, ...) @ioctl(i32 %58, i64 35088, %struct.ifreq* %ifr) #2
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.52
  %ifr_ifrn = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr, i32 0, i32 0
  %ifrn_name = bitcast %union.anon.1* %ifr_ifrn to [16 x i8]*
  %arraydecay58 = getelementptr inbounds [16 x i8], [16 x i8]* %ifrn_name, i32 0, i32 0
  store i8* %arraydecay58, i8** %ifname, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %sw.bb.49
  %59 = load i8*, i8** %ifname, align 8
  %60 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_protocol = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %60, i32 0, i32 1
  %61 = load i16, i16* %sll_protocol, align 2
  %call61 = call zeroext i16 @ntohs(i16 zeroext %61) #6
  %conv62 = zext i16 %call61 to i32
  %62 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_pkttype = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %62, i32 0, i32 4
  %63 = load i8, i8* %sll_pkttype, align 1
  %conv63 = zext i8 %63 to i32
  %64 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_hatype = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %64, i32 0, i32 3
  %65 = load i16, i16* %sll_hatype, align 2
  %conv64 = zext i16 %65 to i32
  %66 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_addr = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %66, i32 0, i32 6
  %arraydecay65 = getelementptr inbounds [8 x i8], [8 x i8]* %sll_addr, i32 0, i32 0
  %67 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %a50, align 8
  %sll_halen = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %67, i32 0, i32 5
  %68 = load i8, i8* %sll_halen, align 1
  %conv66 = zext i8 %68 to i32
  %call67 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.306, i32 0, i32 0), i8* %59, i32 %conv62, i32 %conv63, i32 %conv64, i8* %arraydecay65, i32 %conv66)
  store %struct._object* %call67, %struct._object** %retval
  br label %return

sw.bb.68:                                         ; preds = %if.end
  %69 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %70 = bitcast %struct.sockaddr* %69 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %70, %struct.sockaddr_tipc** %a69, align 8
  %71 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %71, i32 0, i32 1
  %72 = load i8, i8* %addrtype, align 1
  %conv70 = zext i8 %72 to i32
  %cmp71 = icmp eq i32 %conv70, 1
  br i1 %cmp71, label %if.then.73, label %if.else.83

if.then.73:                                       ; preds = %sw.bb.68
  %73 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype74 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %73, i32 0, i32 1
  %74 = load i8, i8* %addrtype74, align 1
  %conv75 = zext i8 %74 to i32
  %75 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr76 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %75, i32 0, i32 3
  %nameseq = bitcast %union.anon.3* %addr76 to %struct.tipc_name_seq*
  %type = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq, i32 0, i32 0
  %76 = load i32, i32* %type, align 4
  %77 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr77 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %77, i32 0, i32 3
  %nameseq78 = bitcast %union.anon.3* %addr77 to %struct.tipc_name_seq*
  %lower = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq78, i32 0, i32 1
  %78 = load i32, i32* %lower, align 4
  %79 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr79 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %79, i32 0, i32 3
  %nameseq80 = bitcast %union.anon.3* %addr79 to %struct.tipc_name_seq*
  %upper = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq80, i32 0, i32 2
  %80 = load i32, i32* %upper, align 4
  %81 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %scope = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %81, i32 0, i32 2
  %82 = load i8, i8* %scope, align 1
  %conv81 = sext i8 %82 to i32
  %call82 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i32 %conv75, i32 %76, i32 %78, i32 %80, i32 %conv81)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.else.83:                                       ; preds = %sw.bb.68
  %83 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype84 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %83, i32 0, i32 1
  %84 = load i8, i8* %addrtype84, align 1
  %conv85 = zext i8 %84 to i32
  %cmp86 = icmp eq i32 %conv85, 2
  br i1 %cmp86, label %if.then.88, label %if.else.104

if.then.88:                                       ; preds = %if.else.83
  %85 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype89 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %85, i32 0, i32 1
  %86 = load i8, i8* %addrtype89, align 1
  %conv90 = zext i8 %86 to i32
  %87 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr91 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %87, i32 0, i32 3
  %name = bitcast %union.anon.3* %addr91 to %struct.anon.4*
  %name92 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %name, i32 0, i32 0
  %type93 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %name92, i32 0, i32 0
  %88 = load i32, i32* %type93, align 4
  %89 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr94 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %89, i32 0, i32 3
  %name95 = bitcast %union.anon.3* %addr94 to %struct.anon.4*
  %name96 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %name95, i32 0, i32 0
  %instance = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %name96, i32 0, i32 1
  %90 = load i32, i32* %instance, align 4
  %91 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr97 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %91, i32 0, i32 3
  %name98 = bitcast %union.anon.3* %addr97 to %struct.anon.4*
  %name99 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %name98, i32 0, i32 0
  %instance100 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %name99, i32 0, i32 1
  %92 = load i32, i32* %instance100, align 4
  %93 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %scope101 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %93, i32 0, i32 2
  %94 = load i8, i8* %scope101, align 1
  %conv102 = sext i8 %94 to i32
  %call103 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i32 %conv90, i32 %88, i32 %90, i32 %92, i32 %conv102)
  store %struct._object* %call103, %struct._object** %retval
  br label %return

if.else.104:                                      ; preds = %if.else.83
  %95 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype105 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %95, i32 0, i32 1
  %96 = load i8, i8* %addrtype105, align 1
  %conv106 = zext i8 %96 to i32
  %cmp107 = icmp eq i32 %conv106, 3
  br i1 %cmp107, label %if.then.109, label %if.else.118

if.then.109:                                      ; preds = %if.else.104
  %97 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addrtype110 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %97, i32 0, i32 1
  %98 = load i8, i8* %addrtype110, align 1
  %conv111 = zext i8 %98 to i32
  %99 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr112 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %99, i32 0, i32 3
  %id = bitcast %union.anon.3* %addr112 to %struct.tipc_portid*
  %node = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %id, i32 0, i32 1
  %100 = load i32, i32* %node, align 4
  %101 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %addr113 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %101, i32 0, i32 3
  %id114 = bitcast %union.anon.3* %addr113 to %struct.tipc_portid*
  %ref = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %id114, i32 0, i32 0
  %102 = load i32, i32* %ref, align 4
  %103 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %a69, align 8
  %scope115 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %103, i32 0, i32 2
  %104 = load i8, i8* %scope115, align 1
  %conv116 = sext i8 %104 to i32
  %call117 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i32 %conv111, i32 %100, i32 %102, i32 0, i32 %conv116)
  store %struct._object* %call117, %struct._object** %retval
  br label %return

if.else.118:                                      ; preds = %if.else.104
  %105 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.308, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.bb.119:                                        ; preds = %if.end
  %106 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %107 = bitcast %struct.sockaddr* %106 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %107, %struct.sockaddr_can** %a120, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.305, i32 0, i32 0), i8** %ifname121, align 8
  %108 = load %struct.sockaddr_can*, %struct.sockaddr_can** %a120, align 8
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %108, i32 0, i32 1
  %109 = load i32, i32* %can_ifindex, align 4
  %tobool123 = icmp ne i32 %109, 0
  br i1 %tobool123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %sw.bb.119
  %110 = load %struct.sockaddr_can*, %struct.sockaddr_can** %a120, align 8
  %can_ifindex125 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %110, i32 0, i32 1
  %111 = load i32, i32* %can_ifindex125, align 4
  %ifr_ifru126 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr122, i32 0, i32 1
  %ifru_ivalue127 = bitcast %union.anon.2* %ifr_ifru126 to i32*
  store i32 %111, i32* %ifru_ivalue127, align 4
  %112 = load i32, i32* %sockfd.addr, align 4
  %call128 = call i32 (i32, i64, ...) @ioctl(i32 %112, i64 35088, %struct.ifreq* %ifr122) #2
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %if.then.124
  %ifr_ifrn132 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr122, i32 0, i32 0
  %ifrn_name133 = bitcast %union.anon.1* %ifr_ifrn132 to [16 x i8]*
  %arraydecay134 = getelementptr inbounds [16 x i8], [16 x i8]* %ifrn_name133, i32 0, i32 0
  store i8* %arraydecay134, i8** %ifname121, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %if.then.124
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %sw.bb.119
  %113 = load i8*, i8** %ifname121, align 8
  %114 = load %struct.sockaddr_can*, %struct.sockaddr_can** %a120, align 8
  %can_family = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %114, i32 0, i32 0
  %115 = load i16, i16* %can_family, align 2
  %conv137 = zext i16 %115 to i32
  %call138 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.309, i32 0, i32 0), %struct._object* (i8*)* @PyUnicode_DecodeFSDefault, i8* %113, i32 %conv137)
  store %struct._object* %call138, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %116 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %sa_family139 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %116, i32 0, i32 0
  %117 = load i16, i16* %sa_family139, align 2
  %conv140 = zext i16 %117 to i32
  %118 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %sa_data = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %118, i32 0, i32 1
  %arraydecay141 = getelementptr inbounds [14 x i8], [14 x i8]* %sa_data, i32 0, i32 0
  %call142 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.310, i32 0, i32 0), i32 %conv140, i8* %arraydecay141, i64 14)
  store %struct._object* %call142, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.136, %if.else.118, %if.then.109, %if.then.88, %if.then.73, %if.end.60, %if.end.48, %sw.bb.22, %if.else.18, %if.then.15, %if.end.9, %if.then
  %119 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %119
}

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i32 @poll(%struct.pollfd*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @makeipaddr(%struct.sockaddr* %addr, i32 %addrlen) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %addr.addr = alloca %struct.sockaddr*, align 8
  %addrlen.addr = alloca i32, align 4
  %buf = alloca [1025 x i8], align 16
  %error = alloca i32, align 4
  store %struct.sockaddr* %addr, %struct.sockaddr** %addr.addr, align 8
  store i32 %addrlen, i32* %addrlen.addr, align 4
  %0 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %1 = load i32, i32* %addrlen.addr, align 4
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call = call i32 @getnameinfo(%struct.sockaddr* %0, i32 %1, i8* %arraydecay, i32 1025, i8* null, i32 0, i32 1)
  store i32 %call, i32* %error, align 4
  %2 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %error, align 4
  %call1 = call %struct._object* @set_gaierror(i32 %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call3 = call %struct._object* @PyUnicode_FromString(i8* %arraydecay2)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_gaierror(i32 %error) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %error.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %error, i32* %error.addr, align 4
  %0 = load i32, i32* %error.addr, align 4
  %cmp = icmp eq i32 %0, -11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @set_error()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %error.addr, align 4
  %2 = load i32, i32* %error.addr, align 4
  %call1 = call i8* @gai_strerror(i32 %2) #2
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.311, i32 0, i32 0), i32 %1, i8* %call1)
  store %struct._object* %call2, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp3 = icmp ne %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @socket_gaierror, align 8
  %5 = load %struct._object*, %struct._object** %v, align 8
  call void @PyErr_SetObject(%struct._object* %4, %struct._object* %5)
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_error() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call = call %struct._object* @PyErr_SetFromErrno(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #4

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @getsockaddrarg(%struct.PySocketSockObject* %s, %struct._object* %args, %struct.sockaddr* %addr_ret, i32* %len_ret) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %addr_ret.addr = alloca %struct.sockaddr*, align 8
  %len_ret.addr = alloca i32*, align 8
  %addr = alloca %struct.sockaddr_un*, align 8
  %path = alloca i8*, align 8
  %len = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %addr39 = alloca %struct.sockaddr_nl*, align 8
  %pid = alloca i32, align 4
  %groups = alloca i32, align 4
  %addr54 = alloca %struct.sockaddr_in*, align 8
  %host = alloca i8*, align 8
  %port = alloca i32, align 4
  %result = alloca i32, align 4
  %addr83 = alloca %struct.sockaddr_in6*, align 8
  %host84 = alloca i8*, align 8
  %port85 = alloca i32, align 4
  %result86 = alloca i32, align 4
  %flowinfo = alloca i32, align 4
  %scope_id = alloca i32, align 4
  %addr123 = alloca %struct.sockaddr_ll*, align 8
  %ifr = alloca %struct.ifreq, align 8
  %interfaceName = alloca i8*, align 8
  %protoNumber = alloca i32, align 4
  %hatype = alloca i32, align 4
  %pkttype = alloca i32, align 4
  %haddr = alloca i8*, align 8
  %halen = alloca i32, align 4
  %atype = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %scope = alloca i32, align 4
  %addr170 = alloca %struct.sockaddr_tipc*, align 8
  %addr219 = alloca %struct.sockaddr_can*, align 8
  %interfaceName220 = alloca %struct._object*, align 8
  %ifr221 = alloca %struct.ifreq, align 8
  %len222 = alloca i64, align 8
  %_py_decref_tmp252 = alloca %struct._object*, align 8
  %_py_decref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp282 = alloca %struct._object*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct.sockaddr* %addr_ret, %struct.sockaddr** %addr_ret.addr, align 8
  store i32* %len_ret, i32** %len_ret.addr, align 8
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 2
  %1 = load i32, i32* %sock_family, align 4
  switch i32 %1, label %sw.default.293 [
    i32 1, label %sw.bb
    i32 16, label %sw.bb.38
    i32 21, label %sw.bb.53
    i32 2, label %sw.bb.53
    i32 10, label %sw.bb.82
    i32 17, label %sw.bb.122
    i32 30, label %sw.bb.169
    i32 29, label %sw.bb.217
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval1, align 4
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %5)
  store %struct._object* %call, %struct._object** %args.addr, align 8
  %cmp2 = icmp eq %struct._object* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.else:                                          ; preds = %sw.bb
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @PyArg_Parse(%struct._object* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i32 0, i32 0), i8** %path, i32* %len)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  br label %unix_out

if.end.7:                                         ; preds = %if.end.4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %10, %struct.sockaddr_un** %addr, align 8
  %11 = load i32, i32* %len, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.end.7
  %12 = load i8*, i8** %path, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then.11, label %if.else.17

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %len, align 4
  %conv12 = sext i32 %14 to i64
  %cmp13 = icmp ugt i64 %conv12, 108
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.313, i32 0, i32 0))
  br label %unix_out

if.end.16:                                        ; preds = %if.then.11
  br label %if.end.24

if.else.17:                                       ; preds = %land.lhs.true, %if.end.7
  %16 = load i32, i32* %len, align 4
  %conv18 = sext i32 %16 to i64
  %cmp19 = icmp uge i64 %conv18, 108
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.17
  %17 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.313, i32 0, i32 0))
  br label %unix_out

if.end.22:                                        ; preds = %if.else.17
  %18 = load i32, i32* %len, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %addr, align 8
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %19, i32 0, i32 1
  %arrayidx23 = getelementptr [108 x i8], [108 x i8]* %sun_path, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.16
  %20 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family25 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %20, i32 0, i32 2
  %21 = load i32, i32* %sock_family25, align 4
  %conv26 = trunc i32 %21 to i16
  %22 = load %struct.sockaddr_un*, %struct.sockaddr_un** %addr, align 8
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %22, i32 0, i32 0
  store i16 %conv26, i16* %sun_family, align 2
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %addr, align 8
  %sun_path27 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 1
  %24 = bitcast [108 x i8]* %sun_path27 to i8*
  %25 = load i8*, i8** %path, align 8
  %26 = load i32, i32* %len, align 4
  %conv28 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %conv28, i32 1, i1 false)
  %27 = load i32, i32* %len, align 4
  %conv29 = sext i32 %27 to i64
  %add = add i64 %conv29, 2
  %conv30 = trunc i64 %add to i32
  %28 = load i32*, i32** %len_ret.addr, align 8
  store i32 %conv30, i32* %28, align 4
  store i32 1, i32* %retval1, align 4
  br label %unix_out

unix_out:                                         ; preds = %if.end.24, %if.then.21, %if.then.15, %if.then.6
  br label %do.body

do.body:                                          ; preds = %unix_out
  %29 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt31, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt31, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body
  br label %if.end.37

if.else.35:                                       ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.37
  %36 = load i32, i32* %retval1, align 4
  store i32 %36, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  %37 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %38, %struct.sockaddr_nl** %addr39, align 8
  %39 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_flags41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 19
  %41 = load i64, i64* %tp_flags41, align 8
  %and42 = and i64 %41, 67108864
  %cmp43 = icmp ne i64 %and42, 0
  br i1 %cmp43, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %sw.bb.38
  %42 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %43 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 1
  %45 = load i8*, i8** %tp_name, align 8
  %call47 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %42, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.314, i32 0, i32 0), i8* %45)
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.38
  %46 = load %struct._object*, %struct._object** %args.addr, align 8
  %call49 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.315, i32 0, i32 0), i32* %pid, i32* %groups)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %47 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %addr39, align 8
  %nl_family = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %47, i32 0, i32 0
  store i16 16, i16* %nl_family, align 2
  %48 = load i32, i32* %pid, align 4
  %49 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %addr39, align 8
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %49, i32 0, i32 2
  store i32 %48, i32* %nl_pid, align 4
  %50 = load i32, i32* %groups, align 4
  %51 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %addr39, align 8
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %51, i32 0, i32 3
  store i32 %50, i32* %nl_groups, align 4
  %52 = load i32*, i32** %len_ret.addr, align 8
  store i32 12, i32* %52, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %entry, %entry
  %53 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_flags56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 19
  %55 = load i64, i64* %tp_flags56, align 8
  %and57 = and i64 %55, 67108864
  %cmp58 = icmp ne i64 %and57, 0
  br i1 %cmp58, label %if.end.64, label %if.then.60

if.then.60:                                       ; preds = %sw.bb.53
  %56 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %57 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_name62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 1
  %59 = load i8*, i8** %tp_name62, align 8
  %call63 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.316, i32 0, i32 0), i8* %59)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.53
  %60 = load %struct._object*, %struct._object** %args.addr, align 8
  %call65 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8** %host, i32* %port)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %61 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %62 = bitcast %struct.sockaddr* %61 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %62, %struct.sockaddr_in** %addr54, align 8
  %63 = load i8*, i8** %host, align 8
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %addr54, align 8
  %65 = bitcast %struct.sockaddr_in* %64 to %struct.sockaddr*
  %call69 = call i32 @setipaddr(i8* %63, %struct.sockaddr* %65, i64 16, i32 2)
  store i32 %call69, i32* %result, align 4
  %66 = load i8*, i8** %host, align 8
  call void @PyMem_Free(i8* %66)
  %67 = load i32, i32* %result, align 4
  %cmp70 = icmp slt i32 %67, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.68
  %68 = load i32, i32* %port, align 4
  %cmp74 = icmp slt i32 %68, 0
  br i1 %cmp74, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.73
  %69 = load i32, i32* %port, align 4
  %cmp76 = icmp sgt i32 %69, 65535
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false, %if.end.73
  %70 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.319, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %lor.lhs.false
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %addr54, align 8
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2
  %72 = load i32, i32* %port, align 4
  %conv80 = trunc i32 %72 to i16
  %call81 = call zeroext i16 @htons(i16 zeroext %conv80) #6
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** %addr54, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 1
  store i16 %call81, i16* %sin_port, align 2
  %74 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %74, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %entry
  store i32 0, i32* %scope_id, align 4
  store i32 0, i32* %flowinfo, align 4
  %75 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_flags88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 19
  %77 = load i64, i64* %tp_flags88, align 8
  %and89 = and i64 %77, 67108864
  %cmp90 = icmp ne i64 %and89, 0
  br i1 %cmp90, label %if.end.96, label %if.then.92

if.then.92:                                       ; preds = %sw.bb.82
  %78 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %79 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_name94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 1
  %81 = load i8*, i8** %tp_name94, align 8
  %call95 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %78, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.320, i32 0, i32 0), i8* %81)
  store i32 0, i32* %retval
  br label %return

if.end.96:                                        ; preds = %sw.bb.82
  %82 = load %struct._object*, %struct._object** %args.addr, align 8
  %call97 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8** %host84, i32* %port85, i32* %flowinfo, i32* %scope_id)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.end.96
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.96
  %83 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %84 = bitcast %struct.sockaddr* %83 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %84, %struct.sockaddr_in6** %addr83, align 8
  %85 = load i8*, i8** %host84, align 8
  %86 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr83, align 8
  %87 = bitcast %struct.sockaddr_in6* %86 to %struct.sockaddr*
  %call101 = call i32 @setipaddr(i8* %85, %struct.sockaddr* %87, i64 28, i32 10)
  store i32 %call101, i32* %result86, align 4
  %88 = load i8*, i8** %host84, align 8
  call void @PyMem_Free(i8* %88)
  %89 = load i32, i32* %result86, align 4
  %cmp102 = icmp slt i32 %89, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.100
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.100
  %90 = load i32, i32* %port85, align 4
  %cmp106 = icmp slt i32 %90, 0
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.end.105
  %91 = load i32, i32* %port85, align 4
  %cmp109 = icmp sgt i32 %91, 65535
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %lor.lhs.false.108, %if.end.105
  %92 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.319, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %lor.lhs.false.108
  %93 = load i32, i32* %flowinfo, align 4
  %cmp113 = icmp ugt i32 %93, 1048575
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  %94 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.322, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  %95 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family117 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %95, i32 0, i32 2
  %96 = load i32, i32* %sock_family117, align 4
  %conv118 = trunc i32 %96 to i16
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr83, align 8
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 0
  store i16 %conv118, i16* %sin6_family, align 2
  %98 = load i32, i32* %port85, align 4
  %conv119 = trunc i32 %98 to i16
  %call120 = call zeroext i16 @htons(i16 zeroext %conv119) #6
  %99 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr83, align 8
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %99, i32 0, i32 1
  store i16 %call120, i16* %sin6_port, align 2
  %100 = load i32, i32* %flowinfo, align 4
  %call121 = call i32 @htonl(i32 %100) #6
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr83, align 8
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 2
  store i32 %call121, i32* %sin6_flowinfo, align 4
  %102 = load i32, i32* %scope_id, align 4
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr83, align 8
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 4
  store i32 %102, i32* %sin6_scope_id, align 4
  %104 = load i32*, i32** %len_ret.addr, align 8
  store i32 28, i32* %104, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.122:                                        ; preds = %entry
  store i32 0, i32* %hatype, align 4
  store i32 0, i32* %pkttype, align 4
  store i8* null, i8** %haddr, align 8
  store i32 0, i32* %halen, align 4
  %105 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_flags125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 19
  %107 = load i64, i64* %tp_flags125, align 8
  %and126 = and i64 %107, 67108864
  %cmp127 = icmp ne i64 %and126, 0
  br i1 %cmp127, label %if.end.133, label %if.then.129

if.then.129:                                      ; preds = %sw.bb.122
  %108 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %109 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_name131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 1
  %111 = load i8*, i8** %tp_name131, align 8
  %call132 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %108, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.323, i32 0, i32 0), i8* %111)
  store i32 0, i32* %retval
  br label %return

if.end.133:                                       ; preds = %sw.bb.122
  %112 = load %struct._object*, %struct._object** %args.addr, align 8
  %call134 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.324, i32 0, i32 0), i8** %interfaceName, i32* %protoNumber, i32* %pkttype, i32* %hatype, i8** %haddr, i32* %halen)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.end.133
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.133
  %ifr_ifrn = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr, i32 0, i32 0
  %ifrn_name = bitcast %union.anon.1* %ifr_ifrn to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ifrn_name, i32 0, i32 0
  %113 = load i8*, i8** %interfaceName, align 8
  %call138 = call i8* @strncpy(i8* %arraydecay, i8* %113, i64 16) #2
  %ifr_ifrn139 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr, i32 0, i32 0
  %ifrn_name140 = bitcast %union.anon.1* %ifr_ifrn139 to [16 x i8]*
  %arrayidx141 = getelementptr [16 x i8], [16 x i8]* %ifrn_name140, i32 0, i64 15
  store i8 0, i8* %arrayidx141, align 1
  %114 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %114, i32 0, i32 1
  %115 = load i32, i32* %sock_fd, align 4
  %call142 = call i32 (i32, i64, ...) @ioctl(i32 %115, i64 35123, %struct.ifreq* %ifr) #2
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.137
  %116 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %116, i32 0, i32 5
  %117 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call146 = call %struct._object* %117()
  store i32 0, i32* %retval
  br label %return

if.end.147:                                       ; preds = %if.end.137
  %118 = load i32, i32* %halen, align 4
  %cmp148 = icmp ugt i32 %118, 8
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  %119 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.325, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.151:                                       ; preds = %if.end.147
  %120 = load i32, i32* %protoNumber, align 4
  %cmp152 = icmp slt i32 %120, 0
  br i1 %cmp152, label %if.then.157, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.151
  %121 = load i32, i32* %protoNumber, align 4
  %cmp155 = icmp sgt i32 %121, 65535
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %lor.lhs.false.154, %if.end.151
  %122 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.326, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.158:                                       ; preds = %lor.lhs.false.154
  %123 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %124 = bitcast %struct.sockaddr* %123 to %struct.sockaddr_ll*
  store %struct.sockaddr_ll* %124, %struct.sockaddr_ll** %addr123, align 8
  %125 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_family = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %125, i32 0, i32 0
  store i16 17, i16* %sll_family, align 2
  %126 = load i32, i32* %protoNumber, align 4
  %conv159 = trunc i32 %126 to i16
  %call160 = call zeroext i16 @htons(i16 zeroext %conv159) #6
  %127 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_protocol = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %127, i32 0, i32 1
  store i16 %call160, i16* %sll_protocol, align 2
  %ifr_ifru = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr, i32 0, i32 1
  %ifru_ivalue = bitcast %union.anon.2* %ifr_ifru to i32*
  %128 = load i32, i32* %ifru_ivalue, align 4
  %129 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_ifindex = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %129, i32 0, i32 2
  store i32 %128, i32* %sll_ifindex, align 4
  %130 = load i32, i32* %pkttype, align 4
  %conv161 = trunc i32 %130 to i8
  %131 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_pkttype = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %131, i32 0, i32 4
  store i8 %conv161, i8* %sll_pkttype, align 1
  %132 = load i32, i32* %hatype, align 4
  %conv162 = trunc i32 %132 to i16
  %133 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_hatype = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %133, i32 0, i32 3
  store i16 %conv162, i16* %sll_hatype, align 2
  %134 = load i32, i32* %halen, align 4
  %cmp163 = icmp ne i32 %134, 0
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.end.158
  %135 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_addr = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %135, i32 0, i32 6
  %136 = bitcast [8 x i8]* %sll_addr to i8*
  %137 = load i8*, i8** %haddr, align 8
  %138 = load i32, i32* %halen, align 4
  %conv166 = zext i32 %138 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 %conv166, i32 1, i1 false)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.end.158
  %139 = load i32, i32* %halen, align 4
  %conv168 = trunc i32 %139 to i8
  %140 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %addr123, align 8
  %sll_halen = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %140, i32 0, i32 5
  store i8 %conv168, i8* %sll_halen, align 1
  %141 = load i32*, i32** %len_ret.addr, align 8
  store i32 20, i32* %141, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.169:                                        ; preds = %entry
  store i32 2, i32* %scope, align 4
  %142 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_flags172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 19
  %144 = load i64, i64* %tp_flags172, align 8
  %and173 = and i64 %144, 67108864
  %cmp174 = icmp ne i64 %and173, 0
  br i1 %cmp174, label %if.end.180, label %if.then.176

if.then.176:                                      ; preds = %sw.bb.169
  %145 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %146 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8
  %tp_name178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 1
  %148 = load i8*, i8** %tp_name178, align 8
  %call179 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %145, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.327, i32 0, i32 0), i8* %148)
  store i32 0, i32* %retval
  br label %return

if.end.180:                                       ; preds = %sw.bb.169
  %149 = load %struct._object*, %struct._object** %args.addr, align 8
  %call181 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.328, i32 0, i32 0), i32* %atype, i32* %v1, i32* %v2, i32* %v3, i32* %scope)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %if.end.180
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.180
  %150 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %151 = bitcast %struct.sockaddr* %150 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %151, %struct.sockaddr_tipc** %addr170, align 8
  %152 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %153 = bitcast %struct.sockaddr_tipc* %152 to i8*
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 16, i32 4, i1 false)
  %154 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %family = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %154, i32 0, i32 0
  store i16 30, i16* %family, align 2
  %155 = load i32, i32* %scope, align 4
  %conv185 = trunc i32 %155 to i8
  %156 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %scope186 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %156, i32 0, i32 2
  store i8 %conv185, i8* %scope186, align 1
  %157 = load i32, i32* %atype, align 4
  %conv187 = trunc i32 %157 to i8
  %158 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addrtype = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %158, i32 0, i32 1
  store i8 %conv187, i8* %addrtype, align 1
  %159 = load i32, i32* %atype, align 4
  %cmp188 = icmp eq i32 %159, 1
  br i1 %cmp188, label %if.then.190, label %if.else.196

if.then.190:                                      ; preds = %if.end.184
  %160 = load i32, i32* %v1, align 4
  %161 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr191 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %161, i32 0, i32 3
  %nameseq = bitcast %union.anon.3* %addr191 to %struct.tipc_name_seq*
  %type = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq, i32 0, i32 0
  store i32 %160, i32* %type, align 4
  %162 = load i32, i32* %v2, align 4
  %163 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr192 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %163, i32 0, i32 3
  %nameseq193 = bitcast %union.anon.3* %addr192 to %struct.tipc_name_seq*
  %lower = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq193, i32 0, i32 1
  store i32 %162, i32* %lower, align 4
  %164 = load i32, i32* %v3, align 4
  %165 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr194 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %165, i32 0, i32 3
  %nameseq195 = bitcast %union.anon.3* %addr194 to %struct.tipc_name_seq*
  %upper = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %nameseq195, i32 0, i32 2
  store i32 %164, i32* %upper, align 4
  br label %if.end.216

if.else.196:                                      ; preds = %if.end.184
  %166 = load i32, i32* %atype, align 4
  %cmp197 = icmp eq i32 %166, 2
  br i1 %cmp197, label %if.then.199, label %if.else.206

if.then.199:                                      ; preds = %if.else.196
  %167 = load i32, i32* %v1, align 4
  %168 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr200 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %168, i32 0, i32 3
  %name = bitcast %union.anon.3* %addr200 to %struct.anon.4*
  %name201 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %name, i32 0, i32 0
  %type202 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %name201, i32 0, i32 0
  store i32 %167, i32* %type202, align 4
  %169 = load i32, i32* %v2, align 4
  %170 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr203 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %170, i32 0, i32 3
  %name204 = bitcast %union.anon.3* %addr203 to %struct.anon.4*
  %name205 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %name204, i32 0, i32 0
  %instance = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %name205, i32 0, i32 1
  store i32 %169, i32* %instance, align 4
  br label %if.end.215

if.else.206:                                      ; preds = %if.else.196
  %171 = load i32, i32* %atype, align 4
  %cmp207 = icmp eq i32 %171, 3
  br i1 %cmp207, label %if.then.209, label %if.else.213

if.then.209:                                      ; preds = %if.else.206
  %172 = load i32, i32* %v1, align 4
  %173 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr210 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %173, i32 0, i32 3
  %id = bitcast %union.anon.3* %addr210 to %struct.tipc_portid*
  %node = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %id, i32 0, i32 1
  store i32 %172, i32* %node, align 4
  %174 = load i32, i32* %v2, align 4
  %175 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %addr170, align 8
  %addr211 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %175, i32 0, i32 3
  %id212 = bitcast %union.anon.3* %addr211 to %struct.tipc_portid*
  %ref = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %id212, i32 0, i32 0
  store i32 %174, i32* %ref, align 4
  br label %if.end.214

if.else.213:                                      ; preds = %if.else.206
  %176 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.308, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.214:                                       ; preds = %if.then.209
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.199
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.190
  %177 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %177, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.217:                                        ; preds = %entry
  %178 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %178, i32 0, i32 4
  %179 = load i32, i32* %sock_proto, align 4
  switch i32 %179, label %sw.default [
    i32 1, label %sw.bb.218
    i32 2, label %sw.bb.218
  ]

sw.bb.218:                                        ; preds = %sw.bb.217, %sw.bb.217
  %180 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %181 = bitcast %struct.sockaddr* %180 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %181, %struct.sockaddr_can** %addr219, align 8
  %182 = load %struct._object*, %struct._object** %args.addr, align 8
  %call223 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.329, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSConverter, %struct._object** %interfaceName220)
  %tobool224 = icmp ne i32 %call223, 0
  br i1 %tobool224, label %if.end.226, label %if.then.225

if.then.225:                                      ; preds = %sw.bb.218
  store i32 0, i32* %retval
  br label %return

if.end.226:                                       ; preds = %sw.bb.218
  %183 = load %struct._object*, %struct._object** %interfaceName220, align 8
  %184 = bitcast %struct._object* %183 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %184, i32 0, i32 1
  %185 = load i64, i64* %ob_size, align 8
  store i64 %185, i64* %len222, align 8
  %186 = load i64, i64* %len222, align 8
  %cmp227 = icmp eq i64 %186, 0
  br i1 %cmp227, label %if.then.229, label %if.else.232

if.then.229:                                      ; preds = %if.end.226
  %ifr_ifru230 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr221, i32 0, i32 1
  %ifru_ivalue231 = bitcast %union.anon.2* %ifr_ifru230 to i32*
  store i32 0, i32* %ifru_ivalue231, align 4
  br label %if.end.278

if.else.232:                                      ; preds = %if.end.226
  %187 = load i64, i64* %len222, align 8
  %cmp233 = icmp ult i64 %187, 16
  br i1 %cmp233, label %if.then.235, label %if.else.264

if.then.235:                                      ; preds = %if.else.232
  %ifr_ifrn236 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr221, i32 0, i32 0
  %ifrn_name237 = bitcast %union.anon.1* %ifr_ifrn236 to [16 x i8]*
  %arraydecay238 = getelementptr inbounds [16 x i8], [16 x i8]* %ifrn_name237, i32 0, i32 0
  %188 = load %struct._object*, %struct._object** %interfaceName220, align 8
  %189 = bitcast %struct._object* %188 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %189, i32 0, i32 2
  %arraydecay239 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call240 = call i8* @strncpy(i8* %arraydecay238, i8* %arraydecay239, i64 16) #2
  %ifr_ifrn241 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr221, i32 0, i32 0
  %ifrn_name242 = bitcast %union.anon.1* %ifr_ifrn241 to [16 x i8]*
  %arrayidx243 = getelementptr [16 x i8], [16 x i8]* %ifrn_name242, i32 0, i64 15
  store i8 0, i8* %arrayidx243, align 1
  %190 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd244 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %190, i32 0, i32 1
  %191 = load i32, i32* %sock_fd244, align 4
  %call245 = call i32 (i32, i64, ...) @ioctl(i32 %191, i64 35123, %struct.ifreq* %ifr221) #2
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %if.then.248, label %if.end.263

if.then.248:                                      ; preds = %if.then.235
  %192 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler249 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %192, i32 0, i32 5
  %193 = load %struct._object* ()*, %struct._object* ()** %errorhandler249, align 8
  %call250 = call %struct._object* %193()
  br label %do.body.251

do.body.251:                                      ; preds = %if.then.248
  %194 = load %struct._object*, %struct._object** %interfaceName220, align 8
  store %struct._object* %194, %struct._object** %_py_decref_tmp252, align 8
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  %ob_refcnt253 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 0
  %196 = load i64, i64* %ob_refcnt253, align 8
  %dec254 = add i64 %196, -1
  store i64 %dec254, i64* %ob_refcnt253, align 8
  %cmp255 = icmp ne i64 %dec254, 0
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.251
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.251
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 1
  %198 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %198, i32 0, i32 4
  %199 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  call void %199(%struct._object* %200)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  store i32 0, i32* %retval
  br label %return

if.end.263:                                       ; preds = %if.then.235
  br label %if.end.277

if.else.264:                                      ; preds = %if.else.232
  %201 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %201, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.330, i32 0, i32 0))
  br label %do.body.265

do.body.265:                                      ; preds = %if.else.264
  %202 = load %struct._object*, %struct._object** %interfaceName220, align 8
  store %struct._object* %202, %struct._object** %_py_decref_tmp266, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  %ob_refcnt267 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 0
  %204 = load i64, i64* %ob_refcnt267, align 8
  %dec268 = add i64 %204, -1
  store i64 %dec268, i64* %ob_refcnt267, align 8
  %cmp269 = icmp ne i64 %dec268, 0
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %do.body.265
  br label %if.end.275

if.else.272:                                      ; preds = %do.body.265
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  %ob_type273 = getelementptr inbounds %struct._object, %struct._object* %205, i32 0, i32 1
  %206 = load %struct._typeobject*, %struct._typeobject** %ob_type273, align 8
  %tp_dealloc274 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %206, i32 0, i32 4
  %207 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc274, align 8
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  call void %207(%struct._object* %208)
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.272, %if.then.271
  br label %do.end.276

do.end.276:                                       ; preds = %if.end.275
  store i32 0, i32* %retval
  br label %return

if.end.277:                                       ; preds = %if.end.263
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.229
  %209 = load %struct.sockaddr_can*, %struct.sockaddr_can** %addr219, align 8
  %can_family = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %209, i32 0, i32 0
  store i16 29, i16* %can_family, align 2
  %ifr_ifru279 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %ifr221, i32 0, i32 1
  %ifru_ivalue280 = bitcast %union.anon.2* %ifr_ifru279 to i32*
  %210 = load i32, i32* %ifru_ivalue280, align 4
  %211 = load %struct.sockaddr_can*, %struct.sockaddr_can** %addr219, align 8
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %211, i32 0, i32 1
  store i32 %210, i32* %can_ifindex, align 4
  %212 = load i32*, i32** %len_ret.addr, align 8
  store i32 16, i32* %212, align 4
  br label %do.body.281

do.body.281:                                      ; preds = %if.end.278
  %213 = load %struct._object*, %struct._object** %interfaceName220, align 8
  store %struct._object* %213, %struct._object** %_py_decref_tmp282, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8
  %ob_refcnt283 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 0
  %215 = load i64, i64* %ob_refcnt283, align 8
  %dec284 = add i64 %215, -1
  store i64 %dec284, i64* %ob_refcnt283, align 8
  %cmp285 = icmp ne i64 %dec284, 0
  br i1 %cmp285, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %do.body.281
  br label %if.end.291

if.else.288:                                      ; preds = %do.body.281
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8
  %ob_type289 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 1
  %217 = load %struct._typeobject*, %struct._typeobject** %ob_type289, align 8
  %tp_dealloc290 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %217, i32 0, i32 4
  %218 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc290, align 8
  %219 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8
  call void %218(%struct._object* %219)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.287
  br label %do.end.292

do.end.292:                                       ; preds = %if.end.291
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %sw.bb.217
  %220 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %220, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.331, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.default.293:                                   ; preds = %entry
  %221 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.332, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.293, %sw.default, %do.end.292, %do.end.276, %do.end.262, %if.then.225, %if.end.216, %if.else.213, %if.then.183, %if.then.176, %if.end.167, %if.then.157, %if.then.150, %if.then.145, %if.then.136, %if.then.129, %if.end.116, %if.then.115, %if.then.111, %if.then.104, %if.then.99, %if.then.92, %if.end.79, %if.then.78, %if.then.72, %if.then.67, %if.then.60, %if.end.52, %if.then.51, %if.then.45, %do.end, %if.then.3
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #4

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare i32 @PyArg_Parse(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @setipaddr(i8* %name, %struct.sockaddr* %addr_ret, i64 %addr_ret_size, i32 %af) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %addr_ret.addr = alloca %struct.sockaddr*, align 8
  %addr_ret_size.addr = alloca i64, align 8
  %af.addr = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca %struct.addrinfo*, align 8
  %error = alloca i32, align 4
  %siz = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %sin = alloca %struct.sockaddr_in*, align 8
  %sin38 = alloca %struct.sockaddr_in*, align 8
  %sin56 = alloca %struct.sockaddr_in6*, align 8
  %_save64 = alloca %struct._ts*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sockaddr* %addr_ret, %struct.sockaddr** %addr_ret.addr, align 8
  store i64 %addr_ret_size, i64* %addr_ret_size.addr, align 8
  store i32 %af, i32* %af.addr, align 4
  %0 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %1 = bitcast %struct.sockaddr* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 1, i1 false)
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false)
  %5 = load i32, i32* %af.addr, align 4
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 %5, i32* %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 2, i32* %ai_socktype, align 4
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 1, i32* %ai_flags, align 4
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %call2 = call i32 @getaddrinfo(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.333, i32 0, i32 0), %struct.addrinfo* %hints, %struct.addrinfo** %res)
  store i32 %call2, i32* %error, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %error, align 4
  %call4 = call %struct._object* @set_gaierror(i32 %8)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_family5 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  %10 = load i32, i32* %ai_family5, align 4
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  store i32 4, i32* %siz, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  store i32 16, i32* %siz, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %11 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %11) #2
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.334, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.6, %sw.bb
  %13 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 7
  %14 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  %tobool7 = icmp ne %struct.addrinfo* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.epilog
  %15 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %15) #2
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.335, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.epilog
  %17 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 4
  %18 = load i32, i32* %ai_addrlen, align 4
  %conv10 = zext i32 %18 to i64
  %19 = load i64, i64* %addr_ret_size.addr, align 8
  %cmp11 = icmp ult i64 %conv10, %19
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %20 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 4
  %21 = load i32, i32* %ai_addrlen14, align 4
  %conv15 = zext i32 %21 to i64
  store i64 %conv15, i64* %addr_ret_size.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.9
  %22 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %23 = bitcast %struct.sockaddr* %22 to i8*
  %24 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 5
  %25 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %26 = bitcast %struct.sockaddr* %25 to i8*
  %27 = load i64, i64* %addr_ret_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %26, i64 %27, i32 2, i1 false)
  %28 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %28) #2
  %29 = load i32, i32* %siz, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.17:                                        ; preds = %entry
  %30 = load i8*, i8** %name.addr, align 8
  %call18 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.336, i32 0, i32 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %31 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.337, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.17
  %32 = load i32, i32* %af.addr, align 4
  %cmp25 = icmp ne i32 %32, 2
  br i1 %cmp25, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.then.24
  %33 = load i32, i32* %af.addr, align 4
  %cmp27 = icmp ne i32 %33, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true
  %34 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.338, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true, %if.then.24
  %35 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %sin, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin, align 8
  %38 = bitcast %struct.sockaddr_in* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 16, i32 1, i1 false)
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin, align 8
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 -1, i32* %s_addr, align 4
  store i32 4, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  %41 = load i32, i32* %af.addr, align 4
  %cmp32 = icmp eq i32 %41, 0
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %42 = load i32, i32* %af.addr, align 4
  %cmp35 = icmp eq i32 %42, 2
  br i1 %cmp35, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %lor.lhs.false.34, %if.end.31
  %43 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %44, %struct.sockaddr_in** %sin38, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin38, align 8
  %46 = bitcast %struct.sockaddr_in* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 16, i32 4, i1 false)
  %47 = load i8*, i8** %name.addr, align 8
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin38, align 8
  %sin_addr39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 2
  %49 = bitcast %struct.in_addr* %sin_addr39 to i8*
  %call40 = call i32 @inet_pton(i32 2, i8* %47, i8* %49) #2
  %cmp41 = icmp sgt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.37
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %sin38, align 8
  %sin_family44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  store i16 2, i16* %sin_family44, align 2
  store i32 4, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.34
  %51 = load i32, i32* %af.addr, align 4
  %cmp47 = icmp eq i32 %51, 0
  br i1 %cmp47, label %land.lhs.true.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.46
  %52 = load i32, i32* %af.addr, align 4
  %cmp50 = icmp eq i32 %52, 10
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.62

land.lhs.true.52:                                 ; preds = %lor.lhs.false.49, %if.end.46
  %53 = load i8*, i8** %name.addr, align 8
  %call53 = call i8* @strchr(i8* %53, i32 37) #7
  %tobool54 = icmp ne i8* %call53, null
  br i1 %tobool54, label %if.end.62, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.52
  %54 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %55 = bitcast %struct.sockaddr* %54 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %55, %struct.sockaddr_in6** %sin56, align 8
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %sin56, align 8
  %57 = bitcast %struct.sockaddr_in6* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 28, i32 4, i1 false)
  %58 = load i8*, i8** %name.addr, align 8
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %sin56, align 8
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 3
  %60 = bitcast %struct.in6_addr* %sin6_addr to i8*
  %call57 = call i32 @inet_pton(i32 10, i8* %58, i8* %60) #2
  %cmp58 = icmp sgt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.55
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %sin56, align 8
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 0
  store i16 10, i16* %sin6_family, align 2
  store i32 16, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.52, %lor.lhs.false.49
  %62 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 48, i32 8, i1 false)
  %63 = load i32, i32* %af.addr, align 4
  %ai_family63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 %63, i32* %ai_family63, align 4
  %call65 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call65, %struct._ts** %_save64, align 8
  %64 = load i8*, i8** %name.addr, align 8
  %call66 = call i32 @getaddrinfo(i8* %64, i8* null, %struct.addrinfo* %hints, %struct.addrinfo** %res)
  store i32 %call66, i32* %error, align 4
  %65 = load %struct._ts*, %struct._ts** %_save64, align 8
  call void @PyEval_RestoreThread(%struct._ts* %65)
  %66 = load i32, i32* %error, align 4
  %tobool67 = icmp ne i32 %66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.62
  %67 = load i32, i32* %error, align 4
  %call69 = call %struct._object* @set_gaierror(i32 %67)
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.62
  %68 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 4
  %69 = load i32, i32* %ai_addrlen71, align 4
  %conv72 = zext i32 %69 to i64
  %70 = load i64, i64* %addr_ret_size.addr, align 8
  %cmp73 = icmp ult i64 %conv72, %70
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.70
  %71 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 4
  %72 = load i32, i32* %ai_addrlen76, align 4
  %conv77 = zext i32 %72 to i64
  store i64 %conv77, i64* %addr_ret_size.addr, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.70
  %73 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %74 = bitcast %struct.sockaddr* %73 to i8*
  %75 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addr79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 5
  %76 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr79, align 8
  %77 = bitcast %struct.sockaddr* %76 to i8*
  %78 = load i64, i64* %addr_ret_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %77, i64 %78, i32 1, i1 false)
  %79 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %79) #2
  %80 = load %struct.sockaddr*, %struct.sockaddr** %addr_ret.addr, align 8
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %80, i32 0, i32 0
  %81 = load i16, i16* %sa_family, align 2
  %conv80 = zext i16 %81 to i32
  switch i32 %conv80, label %sw.default.83 [
    i32 2, label %sw.bb.81
    i32 10, label %sw.bb.82
  ]

sw.bb.81:                                         ; preds = %if.end.78
  store i32 4, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %if.end.78
  store i32 16, i32* %retval
  br label %return

sw.default.83:                                    ; preds = %if.end.78
  %82 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.339, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.83, %sw.bb.82, %sw.bb.81, %if.then.68, %if.then.60, %if.then.43, %if.end.30, %if.then.29, %if.end.16, %if.then.8, %sw.default, %if.then.3
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @internal_connect(%struct.PySocketSockObject* %s, %struct.sockaddr* %addr, i32 %addrlen, i32* %timeoutp) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %addr.addr = alloca %struct.sockaddr*, align 8
  %addrlen.addr = alloca i32, align 4
  %timeoutp.addr = alloca i32*, align 8
  %res = alloca i32, align 4
  %timeout = alloca i32, align 4
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %res_size = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct.sockaddr* %addr, %struct.sockaddr** %addr.addr, align 8
  store i32 %addrlen, i32* %addrlen.addr, align 4
  store i32* %timeoutp, i32** %timeoutp.addr, align 8
  store i32 0, i32* %timeout, align 4
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %0, i32 0, i32 1
  %1 = load i32, i32* %sock_fd, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %2 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %__sockaddr__, align 8
  %3 = load i32, i32* %addrlen.addr, align 4
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %4 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call = call i32 @connect(i32 %1, %struct.sockaddr* %4, i32 %3)
  store i32 %call, i32* %res, align 4
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 6
  %6 = load double, double* %sock_timeout, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %res, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.then
  %call2 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %8, 115
  br i1 %cmp3, label %if.then.4, label %if.end.19

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call5 = call i32 @internal_select(%struct.PySocketSockObject* %9, i32 1)
  store i32 %call5, i32* %timeout, align 4
  %10 = load i32, i32* %timeout, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  store i32 4, i32* %res_size, align 4
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd8 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %11, i32 0, i32 1
  %12 = load i32, i32* %sock_fd8, align 4
  %13 = bitcast i32* %res to i8*
  %call9 = call i32 @getsockopt(i32 %12, i32 1, i32 4, i8* %13, i32* %res_size) #2
  %14 = load i32, i32* %res, align 4
  %cmp10 = icmp eq i32 %14, 106
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.7
  %15 = load i32, i32* %res, align 4
  %call12 = call i32* @__errno_location() #6
  store i32 %15, i32* %call12, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then.4
  %16 = load i32, i32* %timeout, align 4
  %cmp13 = icmp eq i32 %16, -1
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else
  %call15 = call i32* @__errno_location() #6
  %17 = load i32, i32* %call15, align 4
  store i32 %17, i32* %res, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  store i32 11, i32* %res, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %18 = load i32, i32* %res, align 4
  %cmp21 = icmp slt i32 %18, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %call23 = call i32* @__errno_location() #6
  %19 = load i32, i32* %call23, align 4
  store i32 %19, i32* %res, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %20 = load i32, i32* %timeout, align 4
  %21 = load i32*, i32** %timeoutp.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %res, align 4
  ret i32 %22
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @internal_select(%struct.PySocketSockObject* %s, i32 %writing) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %writing.addr = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32 %writing, i32* %writing.addr, align 4
  %0 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %1 = load i32, i32* %writing.addr, align 4
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 6
  %3 = load double, double* %sock_timeout, align 8
  %call = call i32 @internal_select_ex(%struct.PySocketSockObject* %0, i32 %1, double %3)
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #4

declare i32 @PyErr_CheckSignals() #1

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #4

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i64 @sock_recv_guts(%struct.PySocketSockObject* %s, i8* %cbuf, i64 %len, i32 %flags) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %cbuf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %outlen = alloca i64, align 8
  %timeout = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i8* %cbuf, i8** %cbuf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i64 -1, i64* %outlen, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %2, i32 0, i32 6
  %3 = load double, double* %sock_timeout, align 8
  store double %3, double* %interval, align 8
  %4 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %4, i32 0, i32 6
  %5 = load double, double* %sock_timeout1, align 8
  %cmp2 = fcmp ogt double %5, 0.000000e+00
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %has_timeout, align 4
  %6 = load i32, i32* %has_timeout, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %7 = bitcast %struct.timeval* %deadline to i8*
  %8 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %9 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout4 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %9, i32 0, i32 6
  %10 = load double, double* %sock_timeout4, align 8
  %conv5 = fptosi double %10 to i64
  %conv6 = sitofp i64 %conv5 to double
  %11 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %11, i32 0, i32 6
  %12 = load double, double* %sock_timeout7, align 8
  %sub = fsub double %conv6, %12
  %mul = fmul double %sub, 1.000000e+06
  %conv8 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %13 = load i64, i64* %tv_usec, align 8
  %add = add i64 %13, %conv8
  store i64 %add, i64* %tv_usec, align 8
  %14 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout9 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %14, i32 0, i32 6
  %15 = load double, double* %sock_timeout9, align 8
  %conv10 = fptosi double %15 to i64
  %tv_usec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %16 = load i64, i64* %tv_usec11, align 8
  %div = sdiv i64 %16, 1000000
  %add12 = add i64 %conv10, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %17 = load i64, i64* %tv_sec, align 8
  %add13 = add i64 %17, %add12
  store i64 %add13, i64* %tv_sec, align 8
  %tv_usec14 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %18 = load i64, i64* %tv_usec14, align 8
  %rem = srem i64 %18, 1000000
  store i64 %rem, i64* %tv_usec14, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.15, %if.end.34
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save, align 8
  %19 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %20 = load double, double* %interval, align 8
  %call17 = call i32 @internal_select_ex(%struct.PySocketSockObject* %19, i32 0, double %20)
  store i32 %call17, i32* %timeout, align 4
  %21 = load i32, i32* %timeout, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %while.body
  %22 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %22, i32 0, i32 1
  %23 = load i32, i32* %sock_fd, align 4
  %24 = load i8*, i8** %cbuf.addr, align 8
  %25 = load i64, i64* %len.addr, align 8
  %26 = load i32, i32* %flags.addr, align 4
  %call20 = call i64 @recv(i32 %23, i8* %24, i64 %25, i32 %26)
  store i64 %call20, i64* %outlen, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %while.body
  %27 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %27)
  %28 = load i32, i32* %timeout, align 4
  %cmp22 = icmp eq i32 %28, 1
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %29 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %30 = load i32, i32* %has_timeout, align 4
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.end.25
  %call27 = call i32* @__errno_location() #6
  %31 = load i32, i32* %call27, align 4
  %cmp28 = icmp eq i32 %31, 11
  br i1 %cmp28, label %if.end.34, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call30 = call i32* @__errno_location() #6
  %32 = load i32, i32* %call30, align 4
  %cmp31 = icmp eq i32 %32, 11
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true, %if.end.25
  br label %while.end

if.end.34:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec35 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %33 = load i64, i64* %tv_sec35, align 8
  %tv_sec36 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %34 = load i64, i64* %tv_sec36, align 8
  %sub37 = sub i64 %33, %34
  %conv38 = sitofp i64 %sub37 to double
  %tv_usec39 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %35 = load i64, i64* %tv_usec39, align 8
  %tv_usec40 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %36 = load i64, i64* %tv_usec40, align 8
  %sub41 = sub i64 %35, %36
  %conv42 = sitofp i64 %sub41 to double
  %mul43 = fmul double %conv42, 1.000000e-06
  %add44 = fadd double %conv38, %mul43
  store double %add44, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.33
  %37 = load i64, i64* %outlen, align 8
  %cmp45 = icmp slt i64 %37, 0
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %while.end
  %38 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %38, i32 0, i32 5
  %39 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call48 = call %struct._object* %39()
  store i64 -1, i64* %retval
  br label %return

if.end.49:                                        ; preds = %while.end
  %40 = load i64, i64* %outlen, align 8
  store i64 %40, i64* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.47, %if.then.24, %if.then
  %41 = load i64, i64* %retval
  ret i64 %41
}

declare i64 @recv(i32, i8*, i64, i32) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @sock_recvfrom_guts(%struct.PySocketSockObject* %s, i8* %cbuf, i64 %len, i32 %flags, %struct._object** %addr) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %cbuf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %addr.addr = alloca %struct._object**, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %timeout = alloca i32, align 4
  %n = alloca i64, align 8
  %addrlen = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i8* %cbuf, i8** %cbuf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._object** %addr, %struct._object*** %addr.addr, align 8
  store i64 -1, i64* %n, align 8
  %0 = load %struct._object**, %struct._object*** %addr.addr, align 8
  store %struct._object* null, %struct._object** %0, align 8
  %1 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @getsockaddrlen(%struct.PySocketSockObject* %1, i32* %addrlen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 6
  %4 = load double, double* %sock_timeout, align 8
  store double %4, double* %interval, align 8
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 6
  %6 = load double, double* %sock_timeout1, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %has_timeout, align 4
  %7 = load i32, i32* %has_timeout, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %8 = bitcast %struct.timeval* %deadline to i8*
  %9 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout4 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 6
  %11 = load double, double* %sock_timeout4, align 8
  %conv5 = fptosi double %11 to i64
  %conv6 = sitofp i64 %conv5 to double
  %12 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout7 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %12, i32 0, i32 6
  %13 = load double, double* %sock_timeout7, align 8
  %sub = fsub double %conv6, %13
  %mul = fmul double %sub, 1.000000e+06
  %conv8 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %14 = load i64, i64* %tv_usec, align 8
  %add = add i64 %14, %conv8
  store i64 %add, i64* %tv_usec, align 8
  %15 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout9 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %15, i32 0, i32 6
  %16 = load double, double* %sock_timeout9, align 8
  %conv10 = fptosi double %16 to i64
  %tv_usec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %17 = load i64, i64* %tv_usec11, align 8
  %div = sdiv i64 %17, 1000000
  %add12 = add i64 %conv10, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %18 = load i64, i64* %tv_sec, align 8
  %add13 = add i64 %18, %add12
  store i64 %add13, i64* %tv_sec, align 8
  %tv_usec14 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %19 = load i64, i64* %tv_usec14, align 8
  %rem = srem i64 %19, 1000000
  store i64 %rem, i64* %tv_usec14, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.15, %if.end.36
  %call16 = call i32* @__errno_location() #6
  store i32 0, i32* %call16, align 4
  %call17 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call17, %struct._ts** %_save, align 8
  %20 = bitcast %union.sock_addr* %addrbuf to i8*
  %21 = load i32, i32* %addrlen, align 4
  %conv18 = zext i32 %21 to i64
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 %conv18, i32 8, i1 false)
  %22 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %23 = load double, double* %interval, align 8
  %call19 = call i32 @internal_select_ex(%struct.PySocketSockObject* %22, i32 0, double %23)
  store i32 %call19, i32* %timeout, align 4
  %24 = load i32, i32* %timeout, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %while.body
  %25 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %25, i32 0, i32 1
  %26 = load i32, i32* %sock_fd, align 4
  %27 = load i8*, i8** %cbuf.addr, align 8
  %28 = load i64, i64* %len.addr, align 8
  %29 = load i32, i32* %flags.addr, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  store %struct.sockaddr* %sa, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %30 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call22 = call i64 @recvfrom(i32 %26, i8* %27, i64 %28, i32 %29, %struct.sockaddr* %30, i32* %addrlen)
  store i64 %call22, i64* %n, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %while.body
  %31 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %31)
  %32 = load i32, i32* %timeout, align 4
  %cmp24 = icmp eq i32 %32, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %33 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %34 = load i32, i32* %has_timeout, align 4
  %tobool28 = icmp ne i32 %34, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %if.end.27
  %call29 = call i32* @__errno_location() #6
  %35 = load i32, i32* %call29, align 4
  %cmp30 = icmp eq i32 %35, 11
  br i1 %cmp30, label %if.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call32 = call i32* @__errno_location() #6
  %36 = load i32, i32* %call32, align 4
  %cmp33 = icmp eq i32 %36, 11
  br i1 %cmp33, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true, %if.end.27
  br label %while.end

if.end.36:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec37 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %37 = load i64, i64* %tv_sec37, align 8
  %tv_sec38 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %38 = load i64, i64* %tv_sec38, align 8
  %sub39 = sub i64 %37, %38
  %conv40 = sitofp i64 %sub39 to double
  %tv_usec41 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %39 = load i64, i64* %tv_usec41, align 8
  %tv_usec42 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %40 = load i64, i64* %tv_usec42, align 8
  %sub43 = sub i64 %39, %40
  %conv44 = sitofp i64 %sub43 to double
  %mul45 = fmul double %conv44, 1.000000e-06
  %add46 = fadd double %conv40, %mul45
  store double %add46, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.35
  %41 = load i64, i64* %n, align 8
  %cmp47 = icmp slt i64 %41, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %while.end
  %42 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %42, i32 0, i32 5
  %43 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call50 = call %struct._object* %43()
  store i64 -1, i64* %retval
  br label %return

if.end.51:                                        ; preds = %while.end
  %44 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd52 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %44, i32 0, i32 1
  %45 = load i32, i32* %sock_fd52, align 4
  %sa53 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %46 = load i32, i32* %addrlen, align 4
  %conv54 = zext i32 %46 to i64
  %47 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %47, i32 0, i32 4
  %48 = load i32, i32* %sock_proto, align 4
  %call55 = call %struct._object* @makesockaddr(i32 %45, %struct.sockaddr* %sa53, i64 %conv54, i32 %48)
  %49 = load %struct._object**, %struct._object*** %addr.addr, align 8
  store %struct._object* %call55, %struct._object** %49, align 8
  %tobool56 = icmp ne %struct._object* %call55, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.51
  store i64 -1, i64* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.51
  %50 = load i64, i64* %n, align 8
  store i64 %50, i64* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.57, %if.then.49, %if.then.26, %if.then
  %51 = load i64, i64* %retval
  ret i64 %51
}

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare i64 @send(i32, i8*, i64, i32) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @internal_setblocking(%struct.PySocketSockObject* %s, i32 %block) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %block.addr = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32 %block, i32* %block.addr, align 4
  %0 = load i32, i32* %block.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_type = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %1, i32 0, i32 3
  %2 = load i32, i32* %sock_type, align 4
  %and = and i32 %2, -2049
  store i32 %and, i32* %sock_type, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_type1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 3
  %4 = load i32, i32* %sock_type1, align 4
  %or = or i32 %4, 2048
  store i32 %or, i32* %sock_type1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %5 = load i32, i32* %block.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %block.addr, align 4
  %6 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %6, i32 0, i32 1
  %7 = load i32, i32* %sock_fd, align 4
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 21537, i32* %block.addr) #2
  %8 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  ret i32 1
}

declare double @PyFloat_AsDouble(%struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @sock_recvmsg_guts(%struct.PySocketSockObject* %s, %struct.iovec* %iov, i32 %iovlen, i32 %flags, i64 %controllen, %struct._object* (i64, i8*)* %makeval, i8* %makeval_data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %iov.addr = alloca %struct.iovec*, align 8
  %iovlen.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %controllen.addr = alloca i64, align 8
  %makeval.addr = alloca %struct._object* (i64, i8*)*, align 8
  %makeval_data.addr = alloca i8*, align 8
  %bytes_received = alloca i64, align 8
  %timeout = alloca i32, align 4
  %addrbuf = alloca %union.sock_addr, align 8
  %addrbuflen = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %cmsg_list = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %controlbuf = alloca i8*, align 8
  %cmsgh = alloca %struct.cmsghdr*, align 8
  %cmsgdatalen = alloca i64, align 8
  %cmsg_status = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %deadline = alloca %struct.timeval, align 8
  %interval = alloca double, align 8
  %has_timeout = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %bytes = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %tmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %numfds = alloca i64, align 8
  %fdp = alloca i32*, align 8
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store %struct.iovec* %iov, %struct.iovec** %iov.addr, align 8
  store i32 %iovlen, i32* %iovlen.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i64 %controllen, i64* %controllen.addr, align 8
  store %struct._object* (i64, i8*)* %makeval, %struct._object* (i64, i8*)** %makeval.addr, align 8
  store i8* %makeval_data, i8** %makeval_data.addr, align 8
  store i64 -1, i64* %bytes_received, align 8
  %0 = bitcast %struct.msghdr* %msg to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  store %struct._object* null, %struct._object** %cmsg_list, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  store i8* null, i8** %controlbuf, align 8
  store i64 0, i64* %cmsgdatalen, align 8
  %1 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @getsockaddrlen(%struct.PySocketSockObject* %1, i32* %addrbuflen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %union.sock_addr* %addrbuf to i8*
  %3 = load i32, i32* %addrbuflen, align 4
  %conv = zext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %conv, i32 8, i1 false)
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  store i16 0, i16* %sa_family, align 2
  %4 = load i64, i64* %controllen.addr, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %controllen.addr, align 8
  %cmp3 = icmp sgt i64 %5, 2147483647
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.366, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %7 = load i64, i64* %controllen.addr, align 8
  %cmp7 = icmp sgt i64 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.6
  %8 = load i64, i64* %controllen.addr, align 8
  %call9 = call i8* @PyMem_Malloc(i64 %8)
  store i8* %call9, i8** %controlbuf, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call13, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.6
  %9 = bitcast %struct.timeval* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false)
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 6
  %11 = load double, double* %sock_timeout, align 8
  store double %11, double* %interval, align 8
  %12 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout15 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %12, i32 0, i32 6
  %13 = load double, double* %sock_timeout15, align 8
  %cmp16 = fcmp ogt double %13, 0.000000e+00
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %has_timeout, align 4
  %14 = load i32, i32* %has_timeout, align 4
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %if.end.14
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %15 = bitcast %struct.timeval* %deadline to i8*
  %16 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %17 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout20 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %17, i32 0, i32 6
  %18 = load double, double* %sock_timeout20, align 8
  %conv21 = fptosi double %18 to i64
  %conv22 = sitofp i64 %conv21 to double
  %19 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout23 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %19, i32 0, i32 6
  %20 = load double, double* %sock_timeout23, align 8
  %sub = fsub double %conv22, %20
  %mul = fmul double %sub, 1.000000e+06
  %conv24 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %21 = load i64, i64* %tv_usec, align 8
  %add = add i64 %21, %conv24
  store i64 %add, i64* %tv_usec, align 8
  %22 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout25 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %22, i32 0, i32 6
  %23 = load double, double* %sock_timeout25, align 8
  %conv26 = fptosi double %23 to i64
  %tv_usec27 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %24 = load i64, i64* %tv_usec27, align 8
  %div = sdiv i64 %24, 1000000
  %add28 = add i64 %conv26, %div
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %add29 = add i64 %25, %add28
  store i64 %add29, i64* %tv_sec, align 8
  %tv_usec30 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %26 = load i64, i64* %tv_usec30, align 8
  %rem = srem i64 %26, 1000000
  store i64 %rem, i64* %tv_usec30, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %if.end.14
  br label %while.body

while.body:                                       ; preds = %if.end.31, %if.end.55
  %call32 = call i32* @__errno_location() #6
  store i32 0, i32* %call32, align 4
  %call33 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call33, %struct._ts** %_save, align 8
  %sa34 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %27 = bitcast %struct.sockaddr* %sa34 to i8*
  %msg_name = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 0
  store i8* %27, i8** %msg_name, align 8
  %28 = load i32, i32* %addrbuflen, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 1
  store i32 %28, i32* %msg_namelen, align 4
  %29 = load %struct.iovec*, %struct.iovec** %iov.addr, align 8
  %msg_iov = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 2
  store %struct.iovec* %29, %struct.iovec** %msg_iov, align 8
  %30 = load i32, i32* %iovlen.addr, align 4
  %conv35 = sext i32 %30 to i64
  %msg_iovlen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 3
  store i64 %conv35, i64* %msg_iovlen, align 8
  %31 = load i8*, i8** %controlbuf, align 8
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  store i8* %31, i8** %msg_control, align 8
  %32 = load i64, i64* %controllen.addr, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  store i64 %32, i64* %msg_controllen, align 8
  %33 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %34 = load double, double* %interval, align 8
  %call36 = call i32 @internal_select_ex(%struct.PySocketSockObject* %33, i32 0, double %34)
  store i32 %call36, i32* %timeout, align 4
  %35 = load i32, i32* %timeout, align 4
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %while.body
  %36 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %36, i32 0, i32 1
  %37 = load i32, i32* %sock_fd, align 4
  %38 = load i32, i32* %flags.addr, align 4
  %call39 = call i64 @recvmsg(i32 %37, %struct.msghdr* %msg, i32 %38)
  store i64 %call39, i64* %bytes_received, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %while.body
  %39 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %39)
  %40 = load i32, i32* %timeout, align 4
  %cmp41 = icmp eq i32 %40, 1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %41 = load %struct._object*, %struct._object** @socket_timeout, align 8
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0))
  br label %finally

if.end.44:                                        ; preds = %if.end.40
  %42 = load i32, i32* %has_timeout, align 4
  %tobool45 = icmp ne i32 %42, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %if.then.54

lor.lhs.false.46:                                 ; preds = %if.end.44
  %call47 = call i32* @__errno_location() #6
  %43 = load i32, i32* %call47, align 4
  %cmp48 = icmp eq i32 %43, 11
  br i1 %cmp48, label %if.end.55, label %land.lhs.true.50

land.lhs.true.50:                                 ; preds = %lor.lhs.false.46
  %call51 = call i32* @__errno_location() #6
  %44 = load i32, i32* %call51, align 4
  %cmp52 = icmp eq i32 %44, 11
  br i1 %cmp52, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.50, %if.end.44
  br label %while.end

if.end.55:                                        ; preds = %land.lhs.true.50, %lor.lhs.false.46
  call void @_PyTime_gettimeofday(%struct.timeval* %now)
  %tv_sec56 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 0
  %45 = load i64, i64* %tv_sec56, align 8
  %tv_sec57 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %46 = load i64, i64* %tv_sec57, align 8
  %sub58 = sub i64 %45, %46
  %conv59 = sitofp i64 %sub58 to double
  %tv_usec60 = getelementptr inbounds %struct.timeval, %struct.timeval* %deadline, i32 0, i32 1
  %47 = load i64, i64* %tv_usec60, align 8
  %tv_usec61 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %48 = load i64, i64* %tv_usec61, align 8
  %sub62 = sub i64 %47, %48
  %conv63 = sitofp i64 %sub62 to double
  %mul64 = fmul double %conv63, 1.000000e-06
  %add65 = fadd double %conv59, %mul64
  store double %add65, double* %interval, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.54
  %49 = load i64, i64* %bytes_received, align 8
  %cmp66 = icmp slt i64 %49, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %while.end
  %50 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %50, i32 0, i32 5
  %51 = load %struct._object* ()*, %struct._object* ()** %errorhandler, align 8
  %call69 = call %struct._object* %51()
  br label %finally

if.end.70:                                        ; preds = %while.end
  %call71 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call71, %struct._object** %cmsg_list, align 8
  %cmp72 = icmp eq %struct._object* %call71, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  br label %err_closefds

if.end.75:                                        ; preds = %if.end.70
  %msg_controllen76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %52 = load i64, i64* %msg_controllen76, align 8
  %cmp77 = icmp ugt i64 %52, 0
  br i1 %cmp77, label %cond.true, label %cond.false.84

cond.true:                                        ; preds = %if.end.75
  %msg_controllen79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %53 = load i64, i64* %msg_controllen79, align 8
  %cmp80 = icmp uge i64 %53, 16
  br i1 %cmp80, label %cond.true.82, label %cond.false

cond.true.82:                                     ; preds = %cond.true
  %msg_control83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  %54 = load i8*, i8** %msg_control83, align 8
  %55 = bitcast i8* %54 to %struct.cmsghdr*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.82
  %cond = phi %struct.cmsghdr* [ %55, %cond.true.82 ], [ null, %cond.false ]
  br label %cond.end.85

cond.false.84:                                    ; preds = %if.end.75
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.end
  %cond86 = phi %struct.cmsghdr* [ %cond, %cond.end ], [ null, %cond.false.84 ]
  store %struct.cmsghdr* %cond86, %struct.cmsghdr** %cmsgh, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.85
  %56 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmp87 = icmp ne %struct.cmsghdr* %56, null
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call89 = call i32 @get_cmsg_data_len(%struct.msghdr* %msg, %struct.cmsghdr* %57, i64* %cmsgdatalen)
  store i32 %call89, i32* %cmsg_status, align 4
  %58 = load i32, i32* %cmsg_status, align 4
  %cmp90 = icmp ne i32 %58, 0
  br i1 %cmp90, label %if.then.92, label %if.end.98

if.then.92:                                       ; preds = %for.body
  %59 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call93 = call i32 @PyErr_WarnEx(%struct._object* %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.367, i32 0, i32 0), i64 1)
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.92
  br label %err_closefds

if.end.97:                                        ; preds = %if.then.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %for.body
  %60 = load i32, i32* %cmsg_status, align 4
  %cmp99 = icmp slt i32 %60, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  br label %for.end

if.end.102:                                       ; preds = %if.end.98
  %61 = load i64, i64* %cmsgdatalen, align 8
  %cmp103 = icmp ugt i64 %61, 9223372036854775807
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  %62 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.368, i32 0, i32 0))
  br label %err_closefds

if.end.106:                                       ; preds = %if.end.102
  %63 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %63, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %__cmsg_data, i32 0, i32 0
  %64 = load i64, i64* %cmsgdatalen, align 8
  %call107 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay, i64 %64)
  store %struct._object* %call107, %struct._object** %bytes, align 8
  %65 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %65, i32 0, i32 1
  %66 = load i32, i32* %cmsg_level, align 4
  %67 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %67, i32 0, i32 2
  %68 = load i32, i32* %cmsg_type, align 4
  %69 = load %struct._object*, %struct._object** %bytes, align 8
  %call108 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.369, i32 0, i32 0), i32 %66, i32 %68, %struct._object* %69)
  store %struct._object* %call108, %struct._object** %tuple, align 8
  %70 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp109 = icmp eq %struct._object* %70, null
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.106
  br label %err_closefds

if.end.112:                                       ; preds = %if.end.106
  %71 = load %struct._object*, %struct._object** %cmsg_list, align 8
  %72 = load %struct._object*, %struct._object** %tuple, align 8
  %call113 = call i32 @PyList_Append(%struct._object* %71, %struct._object* %72)
  store i32 %call113, i32* %tmp, align 4
  br label %do.body.114

do.body.114:                                      ; preds = %if.end.112
  %73 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %75, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp116 = icmp ne i64 %dec, 0
  br i1 %cmp116, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %do.body.114
  br label %if.end.119

if.else:                                          ; preds = %do.body.114
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %78(%struct._object* %79)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %if.then.118
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  %80 = load i32, i32* %tmp, align 4
  %cmp121 = icmp ne i32 %80, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %do.end.120
  br label %err_closefds

if.end.124:                                       ; preds = %do.end.120
  %81 = load i32, i32* %cmsg_status, align 4
  %cmp125 = icmp ne i32 %81, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  br label %for.end

if.end.128:                                       ; preds = %if.end.124
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call129 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* %msg, %struct.cmsghdr* %82) #2
  store %struct.cmsghdr* %call129, %struct.cmsghdr** %cmsgh, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.127, %if.then.101, %for.cond
  %83 = load %struct._object* (i64, i8*)*, %struct._object* (i64, i8*)** %makeval.addr, align 8
  %84 = load i64, i64* %bytes_received, align 8
  %85 = load i8*, i8** %makeval_data.addr, align 8
  %call130 = call %struct._object* %83(i64 %84, i8* %85)
  %86 = load %struct._object*, %struct._object** %cmsg_list, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 6
  %87 = load i32, i32* %msg_flags, align 4
  %88 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd131 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %88, i32 0, i32 1
  %89 = load i32, i32* %sock_fd131, align 4
  %sa132 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %msg_namelen133 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 1
  %90 = load i32, i32* %msg_namelen133, align 4
  %91 = load i32, i32* %addrbuflen, align 4
  %cmp134 = icmp ugt i32 %90, %91
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %for.end
  %92 = load i32, i32* %addrbuflen, align 4
  br label %cond.end.139

cond.false.137:                                   ; preds = %for.end
  %msg_namelen138 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 1
  %93 = load i32, i32* %msg_namelen138, align 4
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.137, %cond.true.136
  %cond140 = phi i32 [ %92, %cond.true.136 ], [ %93, %cond.false.137 ]
  %conv141 = zext i32 %cond140 to i64
  %94 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %94, i32 0, i32 4
  %95 = load i32, i32* %sock_proto, align 4
  %call142 = call %struct._object* @makesockaddr(i32 %89, %struct.sockaddr* %sa132, i64 %conv141, i32 %95)
  %call143 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.370, i32 0, i32 0), %struct._object* %call130, %struct._object* %86, i32 %87, %struct._object* %call142)
  store %struct._object* %call143, %struct._object** %retval1, align 8
  %96 = load %struct._object*, %struct._object** %retval1, align 8
  %cmp144 = icmp eq %struct._object* %96, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %cond.end.139
  br label %err_closefds

if.end.147:                                       ; preds = %cond.end.139
  br label %finally

finally:                                          ; preds = %for.end.218, %if.end.147, %if.then.68, %if.then.43
  br label %do.body.148

do.body.148:                                      ; preds = %finally
  %97 = load %struct._object*, %struct._object** %cmsg_list, align 8
  store %struct._object* %97, %struct._object** %_py_xdecref_tmp, align 8
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp150 = icmp ne %struct._object* %98, null
  br i1 %cmp150, label %if.then.152, label %if.end.166

if.then.152:                                      ; preds = %do.body.148
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp155, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %101, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %do.body.153
  br label %if.end.164

if.else.161:                                      ; preds = %do.body.153
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_dealloc163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %104(%struct._object* %105)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %do.body.148
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  %106 = load i8*, i8** %controlbuf, align 8
  call void @PyMem_Free(i8* %106)
  %107 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %107, %struct._object** %retval
  br label %return

err_closefds:                                     ; preds = %if.then.146, %if.then.123, %if.then.111, %if.then.105, %if.then.96, %if.then.74
  %msg_controllen168 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %108 = load i64, i64* %msg_controllen168, align 8
  %cmp169 = icmp ugt i64 %108, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.180

cond.true.171:                                    ; preds = %err_closefds
  %msg_controllen172 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %109 = load i64, i64* %msg_controllen172, align 8
  %cmp173 = icmp uge i64 %109, 16
  br i1 %cmp173, label %cond.true.175, label %cond.false.177

cond.true.175:                                    ; preds = %cond.true.171
  %msg_control176 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  %110 = load i8*, i8** %msg_control176, align 8
  %111 = bitcast i8* %110 to %struct.cmsghdr*
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.true.171
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.175
  %cond179 = phi %struct.cmsghdr* [ %111, %cond.true.175 ], [ null, %cond.false.177 ]
  br label %cond.end.181

cond.false.180:                                   ; preds = %err_closefds
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.end.178
  %cond182 = phi %struct.cmsghdr* [ %cond179, %cond.end.178 ], [ null, %cond.false.180 ]
  store %struct.cmsghdr* %cond182, %struct.cmsghdr** %cmsgh, align 8
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.216, %cond.end.181
  %112 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmp184 = icmp ne %struct.cmsghdr* %112, null
  br i1 %cmp184, label %for.body.186, label %for.end.218

for.body.186:                                     ; preds = %for.cond.183
  %113 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call187 = call i32 @get_cmsg_data_len(%struct.msghdr* %msg, %struct.cmsghdr* %113, i64* %cmsgdatalen)
  store i32 %call187, i32* %cmsg_status, align 4
  %114 = load i32, i32* %cmsg_status, align 4
  %cmp188 = icmp slt i32 %114, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %for.body.186
  br label %for.end.218

if.end.191:                                       ; preds = %for.body.186
  %115 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_level192 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %115, i32 0, i32 1
  %116 = load i32, i32* %cmsg_level192, align 4
  %cmp193 = icmp eq i32 %116, 1
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.211

land.lhs.true.195:                                ; preds = %if.end.191
  %117 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %cmsg_type196 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %117, i32 0, i32 2
  %118 = load i32, i32* %cmsg_type196, align 4
  %cmp197 = icmp eq i32 %118, 1
  br i1 %cmp197, label %if.then.199, label %if.end.211

if.then.199:                                      ; preds = %land.lhs.true.195
  %119 = load i64, i64* %cmsgdatalen, align 8
  %div202 = udiv i64 %119, 4
  store i64 %div202, i64* %numfds, align 8
  %120 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %__cmsg_data203 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %120, i32 0, i32 3
  %arraydecay204 = getelementptr inbounds [0 x i8], [0 x i8]* %__cmsg_data203, i32 0, i32 0
  %121 = bitcast i8* %arraydecay204 to i32*
  store i32* %121, i32** %fdp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.208, %if.then.199
  %122 = load i64, i64* %numfds, align 8
  %dec205 = add i64 %122, -1
  store i64 %dec205, i64* %numfds, align 8
  %cmp206 = icmp ugt i64 %122, 0
  br i1 %cmp206, label %while.body.208, label %while.end.210

while.body.208:                                   ; preds = %while.cond
  %123 = load i32*, i32** %fdp, align 8
  %incdec.ptr = getelementptr i32, i32* %123, i32 1
  store i32* %incdec.ptr, i32** %fdp, align 8
  %124 = load i32, i32* %123, align 4
  %call209 = call i32 @close(i32 %124)
  br label %while.cond

while.end.210:                                    ; preds = %while.cond
  br label %if.end.211

if.end.211:                                       ; preds = %while.end.210, %land.lhs.true.195, %if.end.191
  %125 = load i32, i32* %cmsg_status, align 4
  %cmp212 = icmp ne i32 %125, 0
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.211
  br label %for.end.218

if.end.215:                                       ; preds = %if.end.211
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %126 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh, align 8
  %call217 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* %msg, %struct.cmsghdr* %126) #2
  store %struct.cmsghdr* %call217, %struct.cmsghdr** %cmsgh, align 8
  br label %for.cond.183

for.end.218:                                      ; preds = %if.then.214, %if.then.190, %for.cond.183
  br label %finally

return:                                           ; preds = %do.end.167, %if.then.12, %if.then.5, %if.then
  %127 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %127
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @makeval_recvmsg(i64 %received, i8* %data) #0 {
entry:
  %received.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %buf = alloca %struct._object**, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store i64 %received, i64* %received.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._object**
  store %struct._object** %1, %struct._object*** %buf, align 8
  %2 = load i64, i64* %received.addr, align 8
  %3 = load %struct._object**, %struct._object*** %buf, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %2, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object**, %struct._object*** %buf, align 8
  %8 = load i64, i64* %received.addr, align 8
  %call = call i32 @_PyBytes_Resize(%struct._object** %7, i64 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object**, %struct._object*** %buf, align 8
  %10 = load %struct._object*, %struct._object** %9, align 8
  store %struct._object* %10, %struct._object** %_py_xincref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %14 = load %struct._object**, %struct._object*** %buf, align 8
  %15 = load %struct._object*, %struct._object** %14, align 8
  ret %struct._object* %15
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_cmsg_data_len(%struct.msghdr* %msg, %struct.cmsghdr* %cmsgh, i64* %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca %struct.msghdr*, align 8
  %cmsgh.addr = alloca %struct.cmsghdr*, align 8
  %data_len.addr = alloca i64*, align 8
  %space = alloca i64, align 8
  %cmsg_data_len = alloca i64, align 8
  store %struct.msghdr* %msg, %struct.msghdr** %msg.addr, align 8
  store %struct.cmsghdr* %cmsgh, %struct.cmsghdr** %cmsgh.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  %0 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %1 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %call = call i32 @cmsg_min_space(%struct.msghdr* %0, %struct.cmsghdr* %1, i64 16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %2, i32 0, i32 0
  %3 = load i64, i64* %cmsg_len, align 8
  %cmp = icmp ult i64 %3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %cmsg_len1 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %4, i32 0, i32 0
  %5 = load i64, i64* %cmsg_len1, align 8
  %sub = sub i64 %5, 16
  store i64 %sub, i64* %cmsg_data_len, align 8
  %6 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %7 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %call2 = call i32 @get_cmsg_data_space(%struct.msghdr* %6, %struct.cmsghdr* %7, i64* %space)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i64, i64* %space, align 8
  %9 = load i64, i64* %cmsg_data_len, align 8
  %cmp6 = icmp uge i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %10 = load i64, i64* %cmsg_data_len, align 8
  %11 = load i64*, i64** %data_len.addr, align 8
  store i64 %10, i64* %11, align 8
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %12 = load i64, i64* %space, align 8
  %13 = load i64*, i64** %data_len.addr, align 8
  store i64 %12, i64* %13, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr*, %struct.cmsghdr*) #4

; Function Attrs: nounwind uwtable
define internal i32 @cmsg_min_space(%struct.msghdr* %msg, %struct.cmsghdr* %cmsgh, i64 %space) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca %struct.msghdr*, align 8
  %cmsgh.addr = alloca %struct.cmsghdr*, align 8
  %space.addr = alloca i64, align 8
  %cmsg_offset = alloca i64, align 8
  store %struct.msghdr* %msg, %struct.msghdr** %msg.addr, align 8
  store %struct.cmsghdr* %cmsgh, %struct.cmsghdr** %cmsgh.addr, align 8
  store i64 %space, i64* %space.addr, align 8
  %0 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %cmp = icmp eq %struct.cmsghdr* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 4
  %2 = load i8*, i8** %msg_control, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %3, i32 0, i32 5
  %4 = load i64, i64* %msg_controllen, align 8
  %cmp2 = icmp ult i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %space.addr, align 8
  %cmp5 = icmp ult i64 %5, 8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i64 8, i64* %space.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %6 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %7 = bitcast %struct.cmsghdr* %6 to i8*
  %8 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_control8 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  %9 = load i8*, i8** %msg_control8, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %cmsg_offset, align 8
  %10 = load i64, i64* %cmsg_offset, align 8
  %11 = load i64, i64* %space.addr, align 8
  %sub = sub i64 -1, %11
  %cmp9 = icmp ule i64 %10, %sub
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %12 = load i64, i64* %cmsg_offset, align 8
  %13 = load i64, i64* %space.addr, align 8
  %add = add i64 %12, %13
  %14 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_controllen10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 5
  %15 = load i64, i64* %msg_controllen10, align 8
  %cmp11 = icmp ule i64 %add, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %16 = phi i1 [ false, %if.end.7 ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.3, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @get_cmsg_data_space(%struct.msghdr* %msg, %struct.cmsghdr* %cmsgh, i64* %space) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca %struct.msghdr*, align 8
  %cmsgh.addr = alloca %struct.cmsghdr*, align 8
  %space.addr = alloca i64*, align 8
  %data_offset = alloca i64, align 8
  %data_ptr = alloca i8*, align 8
  store %struct.msghdr* %msg, %struct.msghdr** %msg.addr, align 8
  store %struct.cmsghdr* %cmsgh, %struct.cmsghdr** %cmsgh.addr, align 8
  store i64* %space, i64** %space.addr, align 8
  %0 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsgh.addr, align 8
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %__cmsg_data, i32 0, i32 0
  store i8* %arraydecay, i8** %data_ptr, align 8
  %cmp = icmp eq i8* %arraydecay, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data_ptr, align 8
  %2 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %2, i32 0, i32 4
  %3 = load i8*, i8** %msg_control, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %data_offset, align 8
  %4 = load i64, i64* %data_offset, align 8
  %5 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 5
  %6 = load i64, i64* %msg_controllen, align 8
  %cmp1 = icmp ugt i64 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.msghdr*, %struct.msghdr** %msg.addr, align 8
  %msg_controllen4 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  %8 = load i64, i64* %msg_controllen4, align 8
  %9 = load i64, i64* %data_offset, align 8
  %sub = sub i64 %8, %9
  %10 = load i64*, i64** %space.addr, align 8
  store i64 %sub, i64* %10, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @makeval_recvmsg_into(i64 %received, i8* %data) #0 {
entry:
  %received.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  store i64 %received, i64* %received.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i64, i64* %received.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @get_CMSG_SPACE(i64 %length, i64* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %result.addr = alloca i64*, align 8
  %tmp = alloca i64, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %result, i64** %result.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483623
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length.addr, align 8
  %add = add i64 %1, 8
  %sub = sub i64 %add, 1
  %and = and i64 %sub, -8
  %add1 = add i64 %and, 16
  store i64 %add1, i64* %tmp, align 8
  %2 = load i64, i64* %tmp, align 8
  %cmp2 = icmp ugt i64 %2, 2147483647
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %tmp, align 8
  %4 = load i64, i64* %length.addr, align 8
  %cmp3 = icmp ult i64 %3, %4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %5 = load i64, i64* %tmp, align 8
  %6 = load i64*, i64** %result.addr, align 8
  store i64 %5, i64* %6, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_CMSG_LEN(i64 %length, i64* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %result.addr = alloca i64*, align 8
  %tmp = alloca i64, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %result, i64** %result.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483631
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length.addr, align 8
  %add = add i64 16, %1
  store i64 %add, i64* %tmp, align 8
  %2 = load i64, i64* %tmp, align 8
  %cmp1 = icmp ugt i64 %2, 2147483647
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %tmp, align 8
  %4 = load i64, i64* %length.addr, align 8
  %cmp2 = icmp ult i64 %3, %4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %5 = load i64, i64* %tmp, align 8
  %6 = load i64*, i64** %result.addr, align 8
  store i64 %5, i64* %6, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i64 @sendmsg(i32, %struct.msghdr*, i32) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind uwtable
define internal void @init_sockobject(%struct.PySocketSockObject* %s, i32 %fd, i32 %family, i32 %type, i32 %proto) #0 {
entry:
  %s.addr = alloca %struct.PySocketSockObject*, align 8
  %fd.addr = alloca i32, align 4
  %family.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %proto.addr = alloca i32, align 4
  store %struct.PySocketSockObject* %s, %struct.PySocketSockObject** %s.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %family, i32* %family.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %proto, i32* %proto.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_fd = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %1, i32 0, i32 1
  store i32 %0, i32* %sock_fd, align 4
  %2 = load i32, i32* %family.addr, align 4
  %3 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_family = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %3, i32 0, i32 2
  store i32 %2, i32* %sock_family, align 4
  %4 = load i32, i32* %type.addr, align 4
  %5 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_type = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %5, i32 0, i32 3
  store i32 %4, i32* %sock_type, align 4
  %6 = load i32, i32* %proto.addr, align 4
  %7 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_proto = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %7, i32 0, i32 4
  store i32 %6, i32* %sock_proto, align 4
  %8 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %errorhandler = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %8, i32 0, i32 5
  store %struct._object* ()* @set_error, %struct._object* ()** %errorhandler, align 8
  %9 = load i32, i32* %type.addr, align 4
  %and = and i32 %9, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %10, i32 0, i32 6
  store double 0.000000e+00, double* %sock_timeout, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %11 = load double, double* @defaulttimeout, align 8
  %12 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %sock_timeout1 = getelementptr inbounds %struct.PySocketSockObject, %struct.PySocketSockObject* %12, i32 0, i32 6
  store double %11, double* %sock_timeout1, align 8
  %13 = load double, double* @defaulttimeout, align 8
  %cmp = fcmp oge double %13, 0.000000e+00
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %14 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s.addr, align 8
  %call = call i32 @internal_setblocking(%struct.PySocketSockObject* %14, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_gethostbyname(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %addrbuf = alloca %union.sock_addr, align 8
  %ret = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %sa = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call1 = call i32 @setipaddr(i8* %1, %struct.sockaddr* %sa, i64 128, i32 2)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %finally

if.end.3:                                         ; preds = %if.end
  %sa4 = bitcast %union.sock_addr* %addrbuf to %struct.sockaddr*
  %call5 = call %struct._object* @makeipaddr(%struct.sockaddr* %sa4, i32 16)
  store %struct._object* %call5, %struct._object** %ret, align 8
  br label %finally

finally:                                          ; preds = %if.end.3, %if.then.2
  %2 = load i8*, i8** %name, align 8
  call void @PyMem_Free(i8* %2)
  %3 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %finally, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_gethostbyname_ex(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %h = alloca %struct.hostent*, align 8
  %addr = alloca %union.sock_addr, align 8
  %sa = alloca %struct.sockaddr*, align 8
  %ret = alloca %struct._object*, align 8
  %hp_allocated = alloca %struct.hostent, align 8
  %buf = alloca [16384 x i8], align 16
  %buf_len = alloca i32, align 4
  %errnop = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store i32 16383, i32* %buf_len, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %sa1 = bitcast %union.sock_addr* %addr to %struct.sockaddr*
  %call2 = call i32 @setipaddr(i8* %1, %struct.sockaddr* %sa1, i64 128, i32 2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %finally

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %2 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %3 = load i32, i32* %buf_len, align 4
  %conv = sext i32 %3 to i64
  %call6 = call i32 @gethostbyname_r(i8* %2, %struct.hostent* %hp_allocated, i8* %arraydecay, i64 %conv, %struct.hostent** %h, i32* %errnop)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %sa7 = bitcast %union.sock_addr* %addr to %struct.sockaddr*
  store %struct.sockaddr* %sa7, %struct.sockaddr** %sa, align 8
  %5 = load %struct.hostent*, %struct.hostent** %h, align 8
  %sa8 = bitcast %union.sock_addr* %addr to %struct.sockaddr*
  %6 = load %struct.sockaddr*, %struct.sockaddr** %sa, align 8
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %7 = load i16, i16* %sa_family, align 2
  %conv9 = zext i16 %7 to i32
  %call10 = call %struct._object* @gethost_common(%struct.hostent* %5, %struct.sockaddr* %sa8, i32 128, i32 %conv9)
  store %struct._object* %call10, %struct._object** %ret, align 8
  br label %finally

finally:                                          ; preds = %if.end.4, %if.then.3
  %8 = load i8*, i8** %name, align 8
  call void @PyMem_Free(i8* %8)
  %9 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %finally, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_gethostbyaddr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %addr = alloca %union.sock_addr, align 8
  %sa = alloca %struct.sockaddr*, align 8
  %ip_num = alloca i8*, align 8
  %h = alloca %struct.hostent*, align 8
  %ret = alloca %struct._object*, align 8
  %hp_allocated = alloca %struct.hostent, align 8
  %buf = alloca [16384 x i8], align 8
  %buf_len = alloca i32, align 4
  %errnop = alloca i32, align 4
  %ap = alloca i8*, align 8
  %al = alloca i32, align 4
  %af = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %sa1 = bitcast %union.sock_addr* %addr to %struct.sockaddr*
  store %struct.sockaddr* %sa1, %struct.sockaddr** %sa, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store i32 16383, i32* %buf_len, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0), i8** %ip_num)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %af, align 4
  %1 = load i8*, i8** %ip_num, align 8
  %2 = load %struct.sockaddr*, %struct.sockaddr** %sa, align 8
  %3 = load i32, i32* %af, align 4
  %call2 = call i32 @setipaddr(i8* %1, %struct.sockaddr* %2, i64 128, i32 %3)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %finally

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.sockaddr*, %struct.sockaddr** %sa, align 8
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %5 = load i16, i16* %sa_family, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %af, align 4
  store i8* null, i8** %ap, align 8
  %6 = load i32, i32* %af, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.4
  %7 = load %struct.sockaddr*, %struct.sockaddr** %sa, align 8
  %8 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %9 = bitcast %struct.in_addr* %sin_addr to i8*
  store i8* %9, i8** %ap, align 8
  store i32 4, i32* %al, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %sa, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in6*
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 3
  %12 = bitcast %struct.in6_addr* %sin6_addr to i8*
  store i8* %12, i8** %ap, align 8
  store i32 16, i32* %al, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.334, i32 0, i32 0))
  br label %finally

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %call6 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call6, %struct._ts** %_save, align 8
  %14 = load i8*, i8** %ap, align 8
  %15 = load i32, i32* %al, align 4
  %16 = load i32, i32* %af, align 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %17 = load i32, i32* %buf_len, align 4
  %conv7 = sext i32 %17 to i64
  %call8 = call i32 @gethostbyaddr_r(i8* %14, i32 %15, i32 %16, %struct.hostent* %hp_allocated, i8* %arraydecay, i64 %conv7, %struct.hostent** %h, i32* %errnop)
  %18 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %18)
  %19 = load %struct.hostent*, %struct.hostent** %h, align 8
  %sa9 = bitcast %union.sock_addr* %addr to %struct.sockaddr*
  %20 = load i32, i32* %af, align 4
  %call10 = call %struct._object* @gethost_common(%struct.hostent* %19, %struct.sockaddr* %sa9, i32 128, i32 %20)
  store %struct._object* %call10, %struct._object** %ret, align 8
  br label %finally

finally:                                          ; preds = %sw.epilog, %sw.default, %if.then.3
  %21 = load i8*, i8** %ip_num, align 8
  call void @PyMem_Free(i8* %21)
  %22 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %finally, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_gethostname(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %buf = alloca [1024 x i8], align 16
  %res = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call1 = call i32 @gethostname(i8* %arraydecay, i64 1023) #2
  store i32 %call1, i32* %res, align 4
  %0 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %0)
  %1 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @set_error()
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1024 x i8], [1024 x i8]* %buf, i32 0, i64 1023
  store i8 0, i8* %arrayidx, align 1
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call4 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %arraydecay3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_sethostname(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %hnobj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %res = alloca i32, align 4
  %flag = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.429, i32 0, i32 0), %struct._object** %hnobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.430, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSConverter, %struct._object** %hnobj)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, i32* %flag, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %hnobj, align 8
  %call5 = call i32 @PyObject_GetBuffer(%struct._object* %2, %struct.bufferinfo* %buf, i32 0)
  store i32 %call5, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %3, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %buf8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %4 = load i8*, i8** %buf8, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %call9 = call i32 @sethostname(i8* %4, i64 %5) #2
  store i32 %call9, i32* %res, align 4
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.4
  %6 = load i32, i32* %flag, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %7 = load %struct._object*, %struct._object** %hnobj, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end.10
  %14 = load i32, i32* %res, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %call18 = call %struct._object* @set_error()
  store %struct._object* %call18, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.3
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getservbyname(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %sp = alloca %struct.servent*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %proto, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.431, i32 0, i32 0), i8** %name, i8** %proto)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load i8*, i8** %name, align 8
  %2 = load i8*, i8** %proto, align 8
  %call2 = call %struct.servent* @getservbyname(i8* %1, i8* %2)
  store %struct.servent* %call2, %struct.servent** %sp, align 8
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  %4 = load %struct.servent*, %struct.servent** %sp, align 8
  %cmp = icmp eq %struct.servent* %4, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.432, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.servent*, %struct.servent** %sp, align 8
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %6, i32 0, i32 2
  %7 = load i32, i32* %s_port, align 4
  %conv = trunc i32 %7 to i16
  %call5 = call zeroext i16 @ntohs(i16 zeroext %conv) #6
  %conv6 = zext i16 %call5 to i64
  %call7 = call %struct._object* @PyLong_FromLong(i64 %conv6)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getservbyport(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %port = alloca i32, align 4
  %proto = alloca i8*, align 8
  %sp = alloca %struct.servent*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %proto, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.433, i32 0, i32 0), i32* %port, i8** %proto)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %port, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %port, align 4
  %cmp1 = icmp sgt i32 %2, 65535
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.434, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %4 = load i32, i32* %port, align 4
  %conv = trunc i32 %4 to i16
  %call5 = call zeroext i16 @htons(i16 zeroext %conv) #6
  %conv6 = zext i16 %call5 to i32
  %5 = load i8*, i8** %proto, align 8
  %call7 = call %struct.servent* @getservbyport(i32 %conv6, i8* %5)
  store %struct.servent* %call7, %struct.servent** %sp, align 8
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load %struct.servent*, %struct.servent** %sp, align 8
  %cmp8 = icmp eq %struct.servent* %7, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.435, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %9 = load %struct.servent*, %struct.servent** %sp, align 8
  %s_name = getelementptr inbounds %struct.servent, %struct.servent* %9, i32 0, i32 0
  %10 = load i8*, i8** %s_name, align 8
  %call12 = call %struct._object* @PyUnicode_FromString(i8* %10)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getprotobyname(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %sp = alloca %struct.protoent*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.436, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load i8*, i8** %name, align 8
  %call2 = call %struct.protoent* @getprotobyname(i8* %1)
  store %struct.protoent* %call2, %struct.protoent** %sp, align 8
  %2 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  %3 = load %struct.protoent*, %struct.protoent** %sp, align 8
  %cmp = icmp eq %struct.protoent* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.437, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.protoent*, %struct.protoent** %sp, align 8
  %p_proto = getelementptr inbounds %struct.protoent, %struct.protoent* %5, i32 0, i32 2
  %6 = load i32, i32* %p_proto, align 4
  %conv = sext i32 %6 to i64
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_dup(%struct._object* %self, %struct._object* %fdobj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %fdobj.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %newfd = alloca i32, align 4
  %newfdobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %fdobj, %struct._object** %fdobj.addr, align 8
  %0 = load %struct._object*, %struct._object** %fdobj.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %fd, align 4
  %call3 = call i32 @_Py_dup(i32 %2)
  store i32 %call3, i32* %newfd, align 4
  %3 = load i32, i32* %newfd, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* %newfd, align 4
  %conv8 = sext i32 %4 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8)
  store %struct._object* %call9, %struct._object** %newfdobj, align 8
  %5 = load %struct._object*, %struct._object** %newfdobj, align 8
  %cmp10 = icmp eq %struct._object* %5, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.7
  %6 = load i32, i32* %newfd, align 4
  %call13 = call i32 @close(i32 %6)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.7
  %7 = load %struct._object*, %struct._object** %newfdobj, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.6, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_socketpair(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s0 = alloca %struct.PySocketSockObject*, align 8
  %s1 = alloca %struct.PySocketSockObject*, align 8
  %sv = alloca [2 x i32], align 4
  %family = alloca i32, align 4
  %type = alloca i32, align 4
  %proto = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %atomic_flag_works = alloca i32*, align 8
  %ret = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct.PySocketSockObject* null, %struct.PySocketSockObject** %s0, align 8
  store %struct.PySocketSockObject* null, %struct.PySocketSockObject** %s1, align 8
  store i32 1, i32* %type, align 4
  store i32 0, i32* %proto, align 4
  store %struct._object* null, %struct._object** %res, align 8
  store i32* @sock_cloexec_works, i32** %atomic_flag_works, align 8
  store i32 1, i32* %family, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.438, i32 0, i32 0), i32* %family, i32* %type, i32* %proto)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load i32, i32* @sock_cloexec_works, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then.2, label %if.else.16

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %family, align 4
  %3 = load i32, i32* %type, align 4
  %or = or i32 %3, 524288
  %4 = load i32, i32* %proto, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %sv, i32 0, i32 0
  %call3 = call i32 @socketpair(i32 %2, i32 %or, i32 %4, i32* %arraydecay) #2
  store i32 %call3, i32* %ret, align 4
  %5 = load i32, i32* @sock_cloexec_works, align 4
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.then.2
  %6 = load i32, i32* %ret, align 4
  %cmp6 = icmp sge i32 %6, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  store i32 1, i32* @sock_cloexec_works, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.5
  %call8 = call i32* @__errno_location() #6
  %7 = load i32, i32* %call8, align 4
  %cmp9 = icmp eq i32 %7, 22
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.else
  store i32 0, i32* @sock_cloexec_works, align 4
  %8 = load i32, i32* %family, align 4
  %9 = load i32, i32* %type, align 4
  %10 = load i32, i32* %proto, align 4
  %arraydecay11 = getelementptr inbounds [2 x i32], [2 x i32]* %sv, i32 0, i32 0
  %call12 = call i32 @socketpair(i32 %8, i32 %9, i32 %10, i32* %arraydecay11) #2
  store i32 %call12, i32* %ret, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.2
  br label %if.end.19

if.else.16:                                       ; preds = %if.end
  %11 = load i32, i32* %family, align 4
  %12 = load i32, i32* %type, align 4
  %13 = load i32, i32* %proto, align 4
  %arraydecay17 = getelementptr inbounds [2 x i32], [2 x i32]* %sv, i32 0, i32 0
  %call18 = call i32 @socketpair(i32 %11, i32 %12, i32 %13, i32* %arraydecay17) #2
  store i32 %call18, i32* %ret, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.end.15
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  %15 = load i32, i32* %ret, align 4
  %cmp20 = icmp slt i32 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %call22 = call %struct._object* @set_error()
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load i32*, i32** %atomic_flag_works, align 8
  %call24 = call i32 @_Py_set_inheritable(i32 %16, i32 0, i32* %17)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %finally

if.end.27:                                        ; preds = %if.end.23
  %arrayidx28 = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 1
  %18 = load i32, i32* %arrayidx28, align 4
  %19 = load i32*, i32** %atomic_flag_works, align 8
  %call29 = call i32 @_Py_set_inheritable(i32 %18, i32 0, i32* %19)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  br label %finally

if.end.32:                                        ; preds = %if.end.27
  %arrayidx33 = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 0
  %20 = load i32, i32* %arrayidx33, align 4
  %21 = load i32, i32* %family, align 4
  %22 = load i32, i32* %type, align 4
  %23 = load i32, i32* %proto, align 4
  %call34 = call %struct.PySocketSockObject* @new_sockobject(i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.PySocketSockObject* %call34, %struct.PySocketSockObject** %s0, align 8
  %24 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s0, align 8
  %cmp35 = icmp eq %struct.PySocketSockObject* %24, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  br label %finally

if.end.37:                                        ; preds = %if.end.32
  %arrayidx38 = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 1
  %25 = load i32, i32* %arrayidx38, align 4
  %26 = load i32, i32* %family, align 4
  %27 = load i32, i32* %type, align 4
  %28 = load i32, i32* %proto, align 4
  %call39 = call %struct.PySocketSockObject* @new_sockobject(i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.PySocketSockObject* %call39, %struct.PySocketSockObject** %s1, align 8
  %29 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s1, align 8
  %cmp40 = icmp eq %struct.PySocketSockObject* %29, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  br label %finally

if.end.42:                                        ; preds = %if.end.37
  %30 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s0, align 8
  %31 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s1, align 8
  %call43 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct.PySocketSockObject* %30, %struct.PySocketSockObject* %31)
  store %struct._object* %call43, %struct._object** %res, align 8
  br label %finally

finally:                                          ; preds = %if.end.42, %if.then.41, %if.then.36, %if.then.31, %if.then.26
  %32 = load %struct._object*, %struct._object** %res, align 8
  %cmp44 = icmp eq %struct._object* %32, null
  br i1 %cmp44, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %finally
  %33 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s0, align 8
  %cmp46 = icmp eq %struct.PySocketSockObject* %33, null
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.45
  %arrayidx48 = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 0
  %34 = load i32, i32* %arrayidx48, align 4
  %call49 = call i32 @close(i32 %34)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.then.45
  %35 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s1, align 8
  %cmp51 = icmp eq %struct.PySocketSockObject* %35, null
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.50
  %arrayidx53 = getelementptr [2 x i32], [2 x i32]* %sv, i32 0, i64 1
  %36 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 @close(i32 %36)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %finally
  br label %do.body

do.body:                                          ; preds = %if.end.56
  %37 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s0, align 8
  %38 = bitcast %struct.PySocketSockObject* %37 to %struct._object*
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp57 = icmp ne %struct._object* %39, null
  br i1 %cmp57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %do.body
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp60 = icmp ne i64 %dec, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.59
  br label %if.end.63

if.else.62:                                       ; preds = %do.body.59
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end

do.end:                                           ; preds = %if.end.63
  br label %if.end.64

if.end.64:                                        ; preds = %do.end, %do.body
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %47 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s1, align 8
  %48 = bitcast %struct.PySocketSockObject* %47 to %struct._object*
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp67, align 8
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8
  %cmp68 = icmp ne %struct._object* %49, null
  br i1 %cmp68, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %do.body.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp67, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp71, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %52, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %55(%struct._object* %56)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %do.body.66
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %57 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %57, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.82, %if.then.21, %if.then
  %58 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %58
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_ntohs(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.439, i32 0, i32 0), i32* %x1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.440, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %x1, align 4
  %conv = trunc i32 %3 to i16
  %call3 = call zeroext i16 @ntohs(i16 zeroext %conv) #6
  %conv4 = zext i16 %call3 to i32
  store i32 %conv4, i32* %x2, align 4
  %4 = load i32, i32* %x2, align 4
  %conv5 = sext i32 %4 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_ntohl(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %5 = load i64, i64* %x, align 8
  %and4 = and i64 %5, 4294967295
  store i64 %and4, i64* %y, align 8
  %6 = load i64, i64* %y, align 8
  %7 = load i64, i64* %x, align 8
  %xor = xor i64 %6, %7
  %tobool5 = icmp ne i64 %xor, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.441, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i64, i64* %y, align 8
  store i64 %9, i64* %x, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.442, i32 0, i32 0), i8* %13)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %14 = load i64, i64* %x, align 8
  %conv = trunc i64 %14 to i32
  %call12 = call i32 @ntohl(i32 %conv) #6
  %conv13 = zext i32 %call12 to i64
  %call14 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.else, %if.then.6, %if.then.3
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_htons(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i32* %x1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.440, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %x1, align 4
  %conv = trunc i32 %3 to i16
  %call3 = call zeroext i16 @htons(i16 zeroext %conv) #6
  %conv4 = zext i16 %call3 to i32
  store i32 %conv4, i32* %x2, align 4
  %4 = load i32, i32* %x2, align 4
  %conv5 = sext i32 %4 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_htonl(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %5 = load i64, i64* %x, align 8
  %and4 = and i64 %5, 4294967295
  store i64 %and4, i64* %y, align 8
  %6 = load i64, i64* %y, align 8
  %7 = load i64, i64* %x, align 8
  %xor = xor i64 %6, %7
  %tobool5 = icmp ne i64 %xor, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.441, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i64, i64* %y, align 8
  store i64 %9, i64* %x, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.442, i32 0, i32 0), i8* %13)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %14 = load i64, i64* %x, align 8
  %conv = trunc i64 %14 to i32
  %call12 = call i32 @htonl(i32 %conv) #6
  %conv13 = zext i32 %call12 to i64
  %call14 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.else, %if.then.6, %if.then.3
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_inet_aton(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.in_addr, align 4
  %ip_addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.444, i32 0, i32 0), i8** %ip_addr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ip_addr, align 8
  %call1 = call i32 @inet_aton(i8* %1, %struct.in_addr* %buf) #2
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = bitcast %struct.in_addr* %buf to i8*
  %call4 = call %struct._object* @PyBytes_FromStringAndSize(i8* %2, i64 4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.445, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_inet_ntoa(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %packed_str = alloca i8*, align 8
  %addr_len = alloca i32, align 4
  %packed_addr = alloca %struct.in_addr, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.446, i32 0, i32 0), i8** %packed_str, i32* %addr_len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %addr_len, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ne i64 %conv, 4
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.447, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = bitcast %struct.in_addr* %packed_addr to i8*
  %4 = load i8*, i8** %packed_str, align 8
  %5 = load i32, i32* %addr_len, align 4
  %conv4 = sext i32 %5 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %conv4, i32 1, i1 false)
  %coerce.dive = getelementptr %struct.in_addr, %struct.in_addr* %packed_addr, i32 0, i32 0
  %6 = load i32, i32* %coerce.dive, align 4
  %call5 = call i8* @inet_ntoa(i32 %6) #2
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %call5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_inet_pton(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %af = alloca i32, align 4
  %ip = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %packed = alloca [16 x i8], align 16
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.448, i32 0, i32 0), i32* %af, i8** %ip)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %af, align 4
  %2 = load i8*, i8** %ip, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %packed, i32 0, i32 0
  %call2 = call i32 @inet_pton(i32 %1, i8* %2, i8* %arraydecay) #2
  store i32 %call2, i32* %retval1, align 4
  %3 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %retval1, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.449, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %7 = load i32, i32* %af, align 4
  %cmp8 = icmp eq i32 %7, 2
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else.7
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %packed, i32 0, i32 0
  %call11 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay10, i64 4)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.7
  %8 = load i32, i32* %af, align 4
  %cmp13 = icmp eq i32 %8, 10
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.12
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %packed, i32 0, i32 0
  %call16 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay15, i64 16)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.else.17:                                       ; preds = %if.else.12
  %9 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.339, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.17, %if.then.14, %if.then.9, %if.then.6, %if.then.3, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_inet_ntop(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %af = alloca i32, align 4
  %packed = alloca i8*, align 8
  %len = alloca i32, align 4
  %retval1 = alloca i8*, align 8
  %ip = alloca [47 x i8], align 16
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %arrayidx = getelementptr [47 x i8], [47 x i8]* %ip, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 47, i32 1, i1 false)
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.450, i32 0, i32 0), i32* %af, i8** %packed, i32* %len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %af, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %len, align 4
  %conv = sext i32 %2 to i64
  %cmp3 = icmp ne i64 %conv, 4
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.451, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %af, align 4
  %cmp7 = icmp eq i32 %4, 10
  br i1 %cmp7, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.else
  %5 = load i32, i32* %len, align 4
  %conv10 = sext i32 %5 to i64
  %cmp11 = icmp ne i64 %conv10, 16
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.451, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.17

if.else.15:                                       ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %8 = load i32, i32* %af, align 4
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.452, i32 0, i32 0), i32 %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  %9 = load i32, i32* %af, align 4
  %10 = load i8*, i8** %packed, align 8
  %arraydecay = getelementptr inbounds [47 x i8], [47 x i8]* %ip, i32 0, i32 0
  %call19 = call i8* @inet_ntop(i32 %9, i8* %10, i8* %arraydecay, i32 47) #2
  store i8* %call19, i8** %retval1, align 8
  %11 = load i8*, i8** %retval1, align 8
  %tobool20 = icmp ne i8* %11, null
  br i1 %tobool20, label %if.else.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call22 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.23:                                       ; preds = %if.end.18
  %13 = load i8*, i8** %retval1, align 8
  %call24 = call %struct._object* @PyUnicode_FromString(i8* %13)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.23, %if.then.21, %if.else.15, %if.then.13, %if.then.5, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getaddrinfo(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca %struct.addrinfo*, align 8
  %res0 = alloca %struct.addrinfo*, align 8
  %hobj = alloca %struct._object*, align 8
  %pobj = alloca %struct._object*, align 8
  %pbuf = alloca [30 x i8], align 16
  %hptr = alloca i8*, align 8
  %pptr = alloca i8*, align 8
  %family = alloca i32, align 4
  %socktype = alloca i32, align 4
  %protocol = alloca i32, align 4
  %flags = alloca i32, align 4
  %error = alloca i32, align 4
  %all = alloca %struct._object*, align 8
  %idna = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %single = alloca %struct._object*, align 8
  %addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_xdecref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
  %_py_xdecref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_xdecref_tmp153 = alloca %struct._object*, align 8
  %_py_decref_tmp158 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %res0, align 8
  store %struct._object* null, %struct._object** %hobj, align 8
  store %struct._object* null, %struct._object** %pobj, align 8
  store %struct._object* null, %struct._object** %all, align 8
  store %struct._object* null, %struct._object** %idna, align 8
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %protocol, align 4
  store i32 0, i32* %socktype, align 4
  store i32 0, i32* %family, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.455, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @socket_getaddrinfo.kwnames, i32 0, i32 0), %struct._object** %hobj, %struct._object** %pobj, i32* %family, i32* %socktype, i32* %protocol, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %hobj, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %hptr, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %hobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.else.8

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %hobj, align 8
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %6, %struct._Py_Identifier* @socket_getaddrinfo.PyId_encode, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.318, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %idna, align 8
  %7 = load %struct._object*, %struct._object** %idna, align 8
  %tobool5 = icmp ne %struct._object* %7, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %8 = load %struct._object*, %struct._object** %idna, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %hptr, align 8
  br label %if.end.17

if.else.8:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %hobj, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags10, align 8
  %and11 = and i64 %12, 134217728
  %cmp12 = icmp ne i64 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.8
  %13 = load %struct._object*, %struct._object** %hobj, align 8
  %call14 = call i8* @PyBytes_AsString(%struct._object* %13)
  store i8* %call14, i8** %hptr, align 8
  br label %if.end.16

if.else.15:                                       ; preds = %if.else.8
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.458, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.1
  %15 = load %struct._object*, %struct._object** %pobj, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %cmp20 = icmp eq %struct._typeobject* %16, @PyLong_Type
  br i1 %cmp20, label %if.then.21, label %if.else.31

if.then.21:                                       ; preds = %if.end.18
  %17 = load %struct._object*, %struct._object** %pobj, align 8
  %call22 = call i64 @PyLong_AsLong(%struct._object* %17)
  store i64 %call22, i64* %value, align 8
  %18 = load i64, i64* %value, align 8
  %cmp23 = icmp eq i64 %18, -1
  br i1 %cmp23, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.21
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool25 = icmp ne %struct._object* %call24, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  br label %err

if.end.27:                                        ; preds = %land.lhs.true, %if.then.21
  %arraydecay28 = getelementptr inbounds [30 x i8], [30 x i8]* %pbuf, i32 0, i32 0
  %19 = load i64, i64* %value, align 8
  %call29 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay28, i64 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.459, i32 0, i32 0), i64 %19)
  %arraydecay30 = getelementptr inbounds [30 x i8], [30 x i8]* %pbuf, i32 0, i32 0
  store i8* %arraydecay30, i8** %pptr, align 8
  br label %if.end.56

if.else.31:                                       ; preds = %if.end.18
  %20 = load %struct._object*, %struct._object** %pobj, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_flags33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags33, align 8
  %and34 = and i64 %22, 268435456
  %cmp35 = icmp ne i64 %and34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else.31
  %23 = load %struct._object*, %struct._object** %pobj, align 8
  %call37 = call i8* @PyUnicode_AsUTF8(%struct._object* %23)
  store i8* %call37, i8** %pptr, align 8
  %24 = load i8*, i8** %pptr, align 8
  %cmp38 = icmp eq i8* %24, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.36
  br label %err

if.end.40:                                        ; preds = %if.then.36
  br label %if.end.55

if.else.41:                                       ; preds = %if.else.31
  %25 = load %struct._object*, %struct._object** %pobj, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_flags43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 19
  %27 = load i64, i64* %tp_flags43, align 8
  %and44 = and i64 %27, 134217728
  %cmp45 = icmp ne i64 %and44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.else.41
  %28 = load %struct._object*, %struct._object** %pobj, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyBytesObject*
  %ob_sval47 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %29, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval47, i32 0, i32 0
  store i8* %arraydecay48, i8** %pptr, align 8
  br label %if.end.54

if.else.49:                                       ; preds = %if.else.41
  %30 = load %struct._object*, %struct._object** %pobj, align 8
  %cmp50 = icmp eq %struct._object* %30, @_Py_NoneStruct
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.49
  store i8* null, i8** %pptr, align 8
  br label %if.end.53

if.else.52:                                       ; preds = %if.else.49
  %31 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.460, i32 0, i32 0))
  br label %err

if.end.53:                                        ; preds = %if.then.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.46
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.40
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.27
  %32 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 48, i32 8, i1 false)
  %33 = load i32, i32* %family, align 4
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 %33, i32* %ai_family, align 4
  %34 = load i32, i32* %socktype, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 %34, i32* %ai_socktype, align 4
  %35 = load i32, i32* %protocol, align 4
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 3
  store i32 %35, i32* %ai_protocol, align 4
  %36 = load i32, i32* %flags, align 4
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 %36, i32* %ai_flags, align 4
  %call57 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call57, %struct._ts** %_save, align 8
  %37 = load i8*, i8** %hptr, align 8
  %38 = load i8*, i8** %pptr, align 8
  %call58 = call i32 @getaddrinfo(i8* %37, i8* %38, %struct.addrinfo* %hints, %struct.addrinfo** %res0)
  store i32 %call58, i32* %error, align 4
  %39 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %39)
  %40 = load i32, i32* %error, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %41 = load i32, i32* %error, align 4
  %call61 = call %struct._object* @set_gaierror(i32 %41)
  br label %err

if.end.62:                                        ; preds = %if.end.56
  %call63 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call63, %struct._object** %all, align 8
  %cmp64 = icmp eq %struct._object* %call63, null
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  br label %err

if.end.66:                                        ; preds = %if.end.62
  %42 = load %struct.addrinfo*, %struct.addrinfo** %res0, align 8
  store %struct.addrinfo* %42, %struct.addrinfo** %res, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %43 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %tobool67 = icmp ne %struct.addrinfo* %43, null
  br i1 %tobool67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 5
  %45 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %46 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 4
  %47 = load i32, i32* %ai_addrlen, align 4
  %conv = zext i32 %47 to i64
  %48 = load i32, i32* %protocol, align 4
  %call68 = call %struct._object* @makesockaddr(i32 -1, %struct.sockaddr* %45, i64 %conv, i32 %48)
  store %struct._object* %call68, %struct._object** %addr, align 8
  %49 = load %struct._object*, %struct._object** %addr, align 8
  %cmp69 = icmp eq %struct._object* %49, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body
  br label %err

if.end.72:                                        ; preds = %for.body
  %50 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_family73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 1
  %51 = load i32, i32* %ai_family73, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_socktype74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 2
  %53 = load i32, i32* %ai_socktype74, align 4
  %54 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_protocol75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 3
  %55 = load i32, i32* %ai_protocol75, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_canonname = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 6
  %57 = load i8*, i8** %ai_canonname, align 8
  %tobool76 = icmp ne i8* %57, null
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  %58 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_canonname77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 6
  %59 = load i8*, i8** %ai_canonname77, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %59, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.305, i32 0, i32 0), %cond.false ]
  %60 = load %struct._object*, %struct._object** %addr, align 8
  %call78 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.461, i32 0, i32 0), i32 %51, i32 %53, i32 %55, i8* %cond, %struct._object* %60)
  store %struct._object* %call78, %struct._object** %single, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %61 = load %struct._object*, %struct._object** %addr, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %63, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp79 = icmp ne i64 %dec, 0
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body
  br label %if.end.84

if.else.82:                                       ; preds = %do.body
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %66(%struct._object* %67)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end

do.end:                                           ; preds = %if.end.84
  %68 = load %struct._object*, %struct._object** %single, align 8
  %cmp85 = icmp eq %struct._object* %68, null
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.end
  br label %err

if.end.88:                                        ; preds = %do.end
  %69 = load %struct._object*, %struct._object** %all, align 8
  %70 = load %struct._object*, %struct._object** %single, align 8
  %call89 = call i32 @PyList_Append(%struct._object* %69, %struct._object* %70)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  br label %err

if.end.92:                                        ; preds = %if.end.88
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.92
  %71 = load %struct._object*, %struct._object** %single, align 8
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp, align 8
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp94 = icmp ne %struct._object* %72, null
  br i1 %cmp94, label %if.then.96, label %if.end.109

if.then.96:                                       ; preds = %do.body.93
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp98, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %75, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.97
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.97
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %78(%struct._object* %79)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.93
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %for.inc

for.inc:                                          ; preds = %do.end.110
  %80 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 7
  %81 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %81, %struct.addrinfo** %res, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.111

do.body.111:                                      ; preds = %for.end
  %82 = load %struct._object*, %struct._object** %idna, align 8
  store %struct._object* %82, %struct._object** %_py_xdecref_tmp112, align 8
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  %cmp113 = icmp ne %struct._object* %83, null
  br i1 %cmp113, label %if.then.115, label %if.end.128

if.then.115:                                      ; preds = %do.body.111
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp117, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt118, align 8
  %dec119 = add i64 %86, -1
  store i64 %dec119, i64* %ob_refcnt118, align 8
  %cmp120 = icmp ne i64 %dec119, 0
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.116
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.116
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  call void %89(%struct._object* %90)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %do.body.111
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  %91 = load %struct.addrinfo*, %struct.addrinfo** %res0, align 8
  %tobool130 = icmp ne %struct.addrinfo* %91, null
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %do.end.129
  %92 = load %struct.addrinfo*, %struct.addrinfo** %res0, align 8
  call void @freeaddrinfo(%struct.addrinfo* %92) #2
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %do.end.129
  %93 = load %struct._object*, %struct._object** %all, align 8
  store %struct._object* %93, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.91, %if.then.87, %if.then.71, %if.then.65, %if.then.60, %if.else.52, %if.then.39, %if.then.26
  br label %do.body.133

do.body.133:                                      ; preds = %err
  %94 = load %struct._object*, %struct._object** %all, align 8
  store %struct._object* %94, %struct._object** %_py_xdecref_tmp134, align 8
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp134, align 8
  %cmp135 = icmp ne %struct._object* %95, null
  br i1 %cmp135, label %if.then.137, label %if.end.150

if.then.137:                                      ; preds = %do.body.133
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp134, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp139, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %98, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %101(%struct._object* %102)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %do.body.133
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %do.body.152

do.body.152:                                      ; preds = %do.end.151
  %103 = load %struct._object*, %struct._object** %idna, align 8
  store %struct._object* %103, %struct._object** %_py_xdecref_tmp153, align 8
  %104 = load %struct._object*, %struct._object** %_py_xdecref_tmp153, align 8
  %cmp154 = icmp ne %struct._object* %104, null
  br i1 %cmp154, label %if.then.156, label %if.end.169

if.then.156:                                      ; preds = %do.body.152
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  %105 = load %struct._object*, %struct._object** %_py_xdecref_tmp153, align 8
  store %struct._object* %105, %struct._object** %_py_decref_tmp158, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0
  %107 = load i64, i64* %ob_refcnt159, align 8
  %dec160 = add i64 %107, -1
  store i64 %dec160, i64* %ob_refcnt159, align 8
  %cmp161 = icmp ne i64 %dec160, 0
  br i1 %cmp161, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.157
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.157
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 1
  %109 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %109, i32 0, i32 4
  %110 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  call void %110(%struct._object* %111)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %do.body.152
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  %112 = load %struct.addrinfo*, %struct.addrinfo** %res0, align 8
  %tobool171 = icmp ne %struct.addrinfo* %112, null
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.end.170
  %113 = load %struct.addrinfo*, %struct.addrinfo** %res0, align 8
  call void @freeaddrinfo(%struct.addrinfo* %113) #2
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %do.end.170
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.173, %if.end.132, %if.else.15, %if.then.6, %if.then
  %114 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %114
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getnameinfo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sa = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %hostp = alloca i8*, align 8
  %port = alloca i32, align 4
  %flowinfo = alloca i32, align 4
  %scope_id = alloca i32, align 4
  %hbuf = alloca [1025 x i8], align 16
  %pbuf = alloca [32 x i8], align 16
  %hints = alloca %struct.addrinfo, align 8
  %res = alloca %struct.addrinfo*, align 8
  %error = alloca i32, align 4
  %ret = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %sin6 = alloca %struct.sockaddr_in6*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %sa, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %res, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store i32 0, i32* %scope_id, align 4
  store i32 0, i32* %flowinfo, align 4
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.462, i32 0, i32 0), %struct._object** %sa, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sa, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.463, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %sa, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.464, i32 0, i32 0), i8** %hostp, i32* %port, i32* %flowinfo, i32* %scope_id)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %6 = load i32, i32* %flowinfo, align 4
  %cmp7 = icmp ugt i32 %6, 1048575
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.322, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %pbuf, i32 0, i32 0
  %8 = load i32, i32* %port, align 4
  %call10 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.465, i32 0, i32 0), i32 %8)
  %9 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 48, i32 8, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 0, i32* %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 2, i32* %ai_socktype, align 4
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 4, i32* %ai_flags, align 4
  %call11 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call11, %struct._ts** %_save, align 8
  %10 = load i8*, i8** %hostp, align 8
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %pbuf, i32 0, i32 0
  %call13 = call i32 @getaddrinfo(i8* %10, i8* %arraydecay12, %struct.addrinfo* %hints, %struct.addrinfo** %res)
  store i32 %call13, i32* %error, align 4
  %11 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  %12 = load i32, i32* %error, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.9
  %13 = load i32, i32* %error, align 4
  %call16 = call %struct._object* @set_gaierror(i32 %13)
  br label %fail

if.end.17:                                        ; preds = %if.end.9
  %14 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 7
  %15 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  %tobool18 = icmp ne %struct.addrinfo* %15, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.466, i32 0, i32 0))
  br label %fail

if.end.20:                                        ; preds = %if.end.17
  %17 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_family21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 1
  %18 = load i32, i32* %ai_family21, align 4
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 10, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.20
  %19 = load %struct._object*, %struct._object** %sa, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  %cmp22 = icmp ne i64 %21, 2
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb
  %22 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.467, i32 0, i32 0))
  br label %fail

if.end.24:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.20
  %23 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 5
  %24 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %25, %struct.sockaddr_in6** %sin6, align 8
  %26 = load i32, i32* %flowinfo, align 4
  %call26 = call i32 @htonl(i32 %26) #6
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %sin6, align 8
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 2
  store i32 %call26, i32* %sin6_flowinfo, align 4
  %28 = load i32, i32* %scope_id, align 4
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %sin6, align 8
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 4
  store i32 %28, i32* %sin6_scope_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.20, %sw.bb.25, %if.end.24
  %30 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addr27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 5
  %31 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr27, align 8
  %32 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 4
  %33 = load i32, i32* %ai_addrlen, align 4
  %arraydecay28 = getelementptr inbounds [1025 x i8], [1025 x i8]* %hbuf, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [32 x i8], [32 x i8]* %pbuf, i32 0, i32 0
  %34 = load i32, i32* %flags, align 4
  %call30 = call i32 @getnameinfo(%struct.sockaddr* %31, i32 %33, i8* %arraydecay28, i32 1025, i8* %arraydecay29, i32 32, i32 %34)
  store i32 %call30, i32* %error, align 4
  %35 = load i32, i32* %error, align 4
  %tobool31 = icmp ne i32 %35, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %sw.epilog
  %36 = load i32, i32* %error, align 4
  %call33 = call %struct._object* @set_gaierror(i32 %36)
  br label %fail

if.end.34:                                        ; preds = %sw.epilog
  %arraydecay35 = getelementptr inbounds [1025 x i8], [1025 x i8]* %hbuf, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [32 x i8], [32 x i8]* %pbuf, i32 0, i32 0
  %call37 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.468, i32 0, i32 0), i8* %arraydecay35, i8* %arraydecay36)
  store %struct._object* %call37, %struct._object** %ret, align 8
  br label %fail

fail:                                             ; preds = %if.end.34, %if.then.32, %if.then.23, %if.then.19, %if.then.15
  %37 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  %tobool38 = icmp ne %struct.addrinfo* %37, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %fail
  %38 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8
  call void @freeaddrinfo(%struct.addrinfo* %38) #2
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %fail
  %39 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.8, %if.then.5, %if.then.1, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_getdefaulttimeout(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load double, double* @defaulttimeout, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load double, double* @defaulttimeout, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_setdefaulttimeout(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %timeout = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double -1.000000e+00, double* %timeout, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %1)
  store double %call, double* %timeout, align 8
  %2 = load double, double* %timeout, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.else
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.361, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %4 = load double, double* %timeout, align 8
  store double %4, double* @defaulttimeout, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_if_nameindex(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %ni = alloca %struct.if_nameindex*, align 8
  %ni_tuple = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %call = call %struct.if_nameindex* @if_nameindex() #2
  store %struct.if_nameindex* %call, %struct.if_nameindex** %ni, align 8
  %0 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  %cmp = icmp eq %struct.if_nameindex* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call1 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %1)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call2, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %3 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  call void @if_freenameindex(%struct.if_nameindex* %3) #2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  %arrayidx = getelementptr %struct.if_nameindex, %struct.if_nameindex* %5, i64 %idxprom
  %if_index = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %if_index, align 4
  %cmp6 = icmp ne i32 %6, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %7, 2147483647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  %arrayidx9 = getelementptr %struct.if_nameindex, %struct.if_nameindex* %10, i64 %idxprom8
  %if_index10 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %arrayidx9, i32 0, i32 0
  %11 = load i32, i32* %if_index10, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  %arrayidx12 = getelementptr %struct.if_nameindex, %struct.if_nameindex* %13, i64 %idxprom11
  %if_name = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %arrayidx12, i32 0, i32 1
  %14 = load i8*, i8** %if_name, align 8
  %call13 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.469, i32 0, i32 0), i32 %11, %struct._object* (i8*)* @PyUnicode_DecodeFSDefault, i8* %14)
  store %struct._object* %call13, %struct._object** %ni_tuple, align 8
  %15 = load %struct._object*, %struct._object** %ni_tuple, align 8
  %cmp14 = icmp eq %struct._object* %15, null
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %list, align 8
  %17 = load %struct._object*, %struct._object** %ni_tuple, align 8
  %call15 = call i32 @PyList_Append(%struct._object* %16, %struct._object* %17)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then.17, label %if.end.37

if.then.17:                                       ; preds = %lor.lhs.false, %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %18 = load %struct._object*, %struct._object** %ni_tuple, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %19, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.23

if.else:                                          ; preds = %do.body.20
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %do.body
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %27 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp27, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %29, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %32(%struct._object* %33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %34 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  call void @if_freenameindex(%struct.if_nameindex* %34) #2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %35 = load %struct._object*, %struct._object** %ni_tuple, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp39, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %37, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %40(%struct._object* %41)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %do.end.48
  %42 = load i32, i32* %i, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %43 = load %struct.if_nameindex*, %struct.if_nameindex** %ni, align 8
  call void @if_freenameindex(%struct.if_nameindex* %43) #2
  %44 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.36, %if.then.4, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_if_nametoindex(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %oname = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.470, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSConverter, %struct._object** %oname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %oname, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call1 = call i32 @if_nametoindex(i8* %arraydecay) #2
  %conv = zext i32 %call1 to i64
  store i64 %conv, i64* %index, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %oname, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %index, align 8
  %cmp5 = icmp eq i64 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  %11 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.471, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  %12 = load i64, i64* %index, align 8
  %call9 = call %struct._object* @PyLong_FromUnsignedLong(i64 %12)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_if_indextoname(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %name = alloca [17 x i8], align 16
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %0)
  store i64 %call, i64* %index, align 8
  %1 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %index, align 8
  %conv = trunc i64 %2 to i32
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %name, i32 0, i32 0
  %call1 = call i8* @if_indextoname(i32 %conv, i8* %arraydecay) #2
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call5 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [17 x i8], [17 x i8]* %name, i32 0, i32 0
  %call8 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %arraydecay7)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_CMSG_LEN(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i64, align 8
  %result = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.472, i32 0, i32 0), i64* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %length, align 8
  %call1 = call i32 @get_CMSG_LEN(i64 %2, i64* %result)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.473, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %result, align 8
  %call6 = call %struct._object* @PyLong_FromSize_t(i64 %4)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @socket_CMSG_SPACE(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i64, align 8
  %result = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.474, i32 0, i32 0), i64* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %length, align 8
  %call1 = call i32 @get_CMSG_SPACE(i64 %2, i64* %result)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.475, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %result, align 8
  %call5 = call %struct._object* @PyLong_FromSize_t(i64 %4)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gethost_common(%struct.hostent* %h, %struct.sockaddr* %addr, i32 %alen, i32 %af) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %h.addr = alloca %struct.hostent*, align 8
  %addr.addr = alloca %struct.sockaddr*, align 8
  %alen.addr = alloca i32, align 4
  %af.addr = alloca i32, align 4
  %pch = alloca i8**, align 8
  %rtn_tuple = alloca %struct._object*, align 8
  %name_list = alloca %struct._object*, align 8
  %addr_list = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %status52 = alloca i32, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  %sin6 = alloca %struct.sockaddr_in6, align 4
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_xdecref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  store %struct.hostent* %h, %struct.hostent** %h.addr, align 8
  store %struct.sockaddr* %addr, %struct.sockaddr** %addr.addr, align 8
  store i32 %alen, i32* %alen.addr, align 4
  store i32 %af, i32* %af.addr, align 4
  store %struct._object* null, %struct._object** %rtn_tuple, align 8
  store %struct._object* null, %struct._object** %name_list, align 8
  store %struct._object* null, %struct._object** %addr_list, align 8
  %0 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %cmp = icmp eq %struct.hostent* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32* @__h_errno_location() #6
  %1 = load i32, i32* %call, align 4
  %call1 = call %struct._object* @set_herror(i32 %1)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2
  %3 = load i32, i32* %h_addrtype, align 4
  %4 = load i32, i32* %af.addr, align 4
  %cmp2 = icmp ne i32 %3, %4
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__errno_location() #6
  store i32 97, i32* %call4, align 4
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call5 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i32, i32* %af.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 10, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.6
  %7 = load i32, i32* %alen.addr, align 4
  %conv = sext i32 %7 to i64
  %cmp7 = icmp ult i64 %conv, 16
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.6
  %8 = load i32, i32* %alen.addr, align 4
  %conv12 = sext i32 %8 to i64
  %cmp13 = icmp ult i64 %conv12, 28
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.6, %if.end.16, %if.end.10
  %call17 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call17, %struct._object** %name_list, align 8
  %cmp18 = icmp eq %struct._object* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.epilog
  br label %err

if.end.21:                                        ; preds = %sw.epilog
  %call22 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call22, %struct._object** %addr_list, align 8
  %cmp23 = icmp eq %struct._object* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  br label %err

if.end.26:                                        ; preds = %if.end.21
  %9 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_aliases = getelementptr inbounds %struct.hostent, %struct.hostent* %9, i32 0, i32 1
  %10 = load i8**, i8*** %h_aliases, align 8
  %tobool = icmp ne i8** %10, null
  br i1 %tobool, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.end.26
  %11 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_aliases28 = getelementptr inbounds %struct.hostent, %struct.hostent* %11, i32 0, i32 1
  %12 = load i8**, i8*** %h_aliases28, align 8
  store i8** %12, i8*** %pch, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %13 = load i8**, i8*** %pch, align 8
  %14 = load i8*, i8** %13, align 8
  %cmp29 = icmp ne i8* %14, null
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8**, i8*** %pch, align 8
  %16 = load i8*, i8** %15, align 8
  %call32 = call %struct._object* @PyUnicode_FromString(i8* %16)
  store %struct._object* %call32, %struct._object** %tmp, align 8
  %17 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp33 = icmp eq %struct._object* %17, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  br label %err

if.end.36:                                        ; preds = %for.body
  %18 = load %struct._object*, %struct._object** %name_list, align 8
  %19 = load %struct._object*, %struct._object** %tmp, align 8
  %call37 = call i32 @PyList_Append(%struct._object* %18, %struct._object* %19)
  store i32 %call37, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.36
  %20 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.body
  br label %if.end.42

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.42
  %27 = load i32, i32* %status, align 4
  %tobool43 = icmp ne i32 %27, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %do.end
  br label %err

if.end.45:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %28 = load i8**, i8*** %pch, align 8
  %incdec.ptr = getelementptr i8*, i8** %28, i32 1
  store i8** %incdec.ptr, i8*** %pch, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %if.end.26
  %29 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 4
  %30 = load i8**, i8*** %h_addr_list, align 8
  store i8** %30, i8*** %pch, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.100, %if.end.46
  %31 = load i8**, i8*** %pch, align 8
  %32 = load i8*, i8** %31, align 8
  %cmp48 = icmp ne i8* %32, null
  br i1 %cmp48, label %for.body.50, label %for.end.102

for.body.50:                                      ; preds = %for.cond.47
  %33 = load i32, i32* %af.addr, align 4
  switch i32 %33, label %sw.default [
    i32 2, label %sw.bb.53
    i32 10, label %sw.bb.65
  ]

sw.bb.53:                                         ; preds = %for.body.50
  %34 = bitcast %struct.sockaddr_in* %sin to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 16, i32 4, i1 false)
  %35 = load i32, i32* %af.addr, align 4
  %conv55 = trunc i32 %35 to i16
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 0
  store i16 %conv55, i16* %sin_family, align 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %36 = bitcast %struct.in_addr* %sin_addr to i8*
  %37 = load i8**, i8*** %pch, align 8
  %38 = load i8*, i8** %37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %38, i64 4, i32 1, i1 false)
  %39 = bitcast %struct.sockaddr_in* %sin to %struct.sockaddr*
  %call56 = call %struct._object* @makeipaddr(%struct.sockaddr* %39, i32 16)
  store %struct._object* %call56, %struct._object** %tmp, align 8
  %40 = load i8**, i8*** %pch, align 8
  %41 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_addr_list57 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 4
  %42 = load i8**, i8*** %h_addr_list57, align 8
  %cmp58 = icmp eq i8** %40, %42
  br i1 %cmp58, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %sw.bb.53
  %43 = load i32, i32* %alen.addr, align 4
  %conv60 = sext i32 %43 to i64
  %cmp61 = icmp uge i64 %conv60, 16
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true
  %44 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %45 = bitcast %struct.sockaddr* %44 to i8*
  %46 = bitcast %struct.sockaddr_in* %sin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 1, i1 false)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true, %sw.bb.53
  br label %sw.epilog.78

sw.bb.65:                                         ; preds = %for.body.50
  %47 = bitcast %struct.sockaddr_in6* %sin6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 28, i32 4, i1 false)
  %48 = load i32, i32* %af.addr, align 4
  %conv67 = trunc i32 %48 to i16
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sin6, i32 0, i32 0
  store i16 %conv67, i16* %sin6_family, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sin6, i32 0, i32 3
  %49 = bitcast %struct.in6_addr* %sin6_addr to i8*
  %50 = load i8**, i8*** %pch, align 8
  %51 = load i8*, i8** %50, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 16, i32 1, i1 false)
  %52 = bitcast %struct.sockaddr_in6* %sin6 to %struct.sockaddr*
  %call68 = call %struct._object* @makeipaddr(%struct.sockaddr* %52, i32 28)
  store %struct._object* %call68, %struct._object** %tmp, align 8
  %53 = load i8**, i8*** %pch, align 8
  %54 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_addr_list69 = getelementptr inbounds %struct.hostent, %struct.hostent* %54, i32 0, i32 4
  %55 = load i8**, i8*** %h_addr_list69, align 8
  %cmp70 = icmp eq i8** %53, %55
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.77

land.lhs.true.72:                                 ; preds = %sw.bb.65
  %56 = load i32, i32* %alen.addr, align 4
  %conv73 = sext i32 %56 to i64
  %cmp74 = icmp uge i64 %conv73, 28
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.72
  %57 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  %58 = bitcast %struct.sockaddr* %57 to i8*
  %59 = bitcast %struct.sockaddr_in6* %sin6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 28, i32 1, i1 false)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.72, %sw.bb.65
  br label %sw.epilog.78

sw.default:                                       ; preds = %for.body.50
  %60 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  call void @PyErr_SetString(%struct._object* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.334, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog.78:                                     ; preds = %if.end.77, %if.end.64
  %61 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp79 = icmp eq %struct._object* %61, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %sw.epilog.78
  br label %err

if.end.82:                                        ; preds = %sw.epilog.78
  %62 = load %struct._object*, %struct._object** %addr_list, align 8
  %63 = load %struct._object*, %struct._object** %tmp, align 8
  %call83 = call i32 @PyList_Append(%struct._object* %62, %struct._object* %63)
  store i32 %call83, i32* %status52, align 4
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.82
  %64 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp86, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt87, align 8
  %dec88 = add i64 %66, -1
  store i64 %dec88, i64* %ob_refcnt87, align 8
  %cmp89 = icmp ne i64 %dec88, 0
  br i1 %cmp89, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %do.body.84
  br label %if.end.95

if.else.92:                                       ; preds = %do.body.84
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8
  call void %69(%struct._object* %70)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %71 = load i32, i32* %status52, align 4
  %tobool97 = icmp ne i32 %71, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %do.end.96
  br label %err

if.end.99:                                        ; preds = %do.end.96
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %72 = load i8**, i8*** %pch, align 8
  %incdec.ptr101 = getelementptr i8*, i8** %72, i32 1
  store i8** %incdec.ptr101, i8*** %pch, align 8
  br label %for.cond.47

for.end.102:                                      ; preds = %for.cond.47
  %73 = load %struct.hostent*, %struct.hostent** %h.addr, align 8
  %h_name = getelementptr inbounds %struct.hostent, %struct.hostent* %73, i32 0, i32 0
  %74 = load i8*, i8** %h_name, align 8
  %75 = load %struct._object*, %struct._object** %name_list, align 8
  %76 = load %struct._object*, %struct._object** %addr_list, align 8
  %call103 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %74, %struct._object* %75, %struct._object* %76)
  store %struct._object* %call103, %struct._object** %rtn_tuple, align 8
  br label %err

err:                                              ; preds = %for.end.102, %if.then.98, %if.then.81, %if.then.44, %if.then.35, %if.then.25, %if.then.20
  br label %do.body.104

do.body.104:                                      ; preds = %err
  %77 = load %struct._object*, %struct._object** %name_list, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp106 = icmp ne %struct._object* %78, null
  br i1 %cmp106, label %if.then.108, label %if.end.122

if.then.108:                                      ; preds = %do.body.104
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp111, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %81, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.109
  br label %if.end.120

if.else.117:                                      ; preds = %do.body.109
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %84(%struct._object* %85)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %do.body.104
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %do.body.124

do.body.124:                                      ; preds = %do.end.123
  %86 = load %struct._object*, %struct._object** %addr_list, align 8
  store %struct._object* %86, %struct._object** %_py_xdecref_tmp126, align 8
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp126, align 8
  %cmp127 = icmp ne %struct._object* %87, null
  br i1 %cmp127, label %if.then.129, label %if.end.143

if.then.129:                                      ; preds = %do.body.124
  br label %do.body.130

do.body.130:                                      ; preds = %if.then.129
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp126, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp132, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt133, align 8
  %dec134 = add i64 %90, -1
  store i64 %dec134, i64* %ob_refcnt133, align 8
  %cmp135 = icmp ne i64 %dec134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.130
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.130
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  call void %93(%struct._object* %94)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.124
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %95 = load %struct._object*, %struct._object** %rtn_tuple, align 8
  store %struct._object* %95, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.144, %sw.default, %if.then.15, %if.then.9, %if.then.3, %if.then
  %96 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %96
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_herror(i32 %h_error) #0 {
entry:
  %h_error.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %h_error, i32* %h_error.addr, align 4
  %0 = load i32, i32* %h_error.addr, align 4
  %1 = load i32, i32* %h_error.addr, align 4
  %call = call i8* @hstrerror(i32 %1) #2
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.311, i32 0, i32 0), i32 %0, i8* %call)
  store %struct._object* %call1, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @socket_herror, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  call void @PyErr_SetObject(%struct._object* %3, %struct._object* %4)
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  ret %struct._object* null
}

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #3

; Function Attrs: nounwind
declare i8* @hstrerror(i32) #4

declare i32 @gethostbyaddr_r(i8*, i32, i32, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) #1

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #4

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

; Function Attrs: nounwind
declare i32 @sethostname(i8*, i64) #4

declare %struct.servent* @getservbyname(i8*, i8*) #1

declare %struct.servent* @getservbyport(i32, i8*) #1

declare %struct.protoent* @getprotobyname(i8*) #1

declare i32 @_Py_dup(i32) #1

; Function Attrs: nounwind
declare i32 @socketpair(i32, i32, i32, i32*) #4

; Function Attrs: nounwind uwtable
define internal %struct.PySocketSockObject* @new_sockobject(i32 %fd, i32 %family, i32 %type, i32 %proto) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %family.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %proto.addr = alloca i32, align 4
  %s = alloca %struct.PySocketSockObject*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %family, i32* %family.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %proto, i32* %proto.addr, align 4
  %call = call %struct._object* @PyType_GenericNew(%struct._typeobject* @sock_type, %struct._object* null, %struct._object* null)
  %0 = bitcast %struct._object* %call to %struct.PySocketSockObject*
  store %struct.PySocketSockObject* %0, %struct.PySocketSockObject** %s, align 8
  %1 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s, align 8
  %cmp = icmp ne %struct.PySocketSockObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s, align 8
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load i32, i32* %family.addr, align 4
  %5 = load i32, i32* %type.addr, align 4
  %6 = load i32, i32* %proto.addr, align 4
  call void @init_sockobject(%struct.PySocketSockObject* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PySocketSockObject*, %struct.PySocketSockObject** %s, align 8
  ret %struct.PySocketSockObject* %7
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: nounwind
declare i32 @inet_aton(i8*, %struct.in_addr*) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #4

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind
declare %struct.if_nameindex* @if_nameindex() #4

; Function Attrs: nounwind
declare void @if_freenameindex(%struct.if_nameindex*) #4

; Function Attrs: nounwind
declare i32 @if_nametoindex(i8*) #4

; Function Attrs: nounwind
declare i8* @if_indextoname(i32, i8*) #4

declare %struct._object* @PyLong_FromSize_t(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
