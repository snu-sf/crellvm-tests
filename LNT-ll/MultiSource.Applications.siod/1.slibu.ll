; ModuleID = './MultiSource.Applications.siod/1.slibu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.obj*, %struct.obj* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.catch_frame = type { %struct.obj*, %struct.obj*, [1 x %struct.__jmp_buf_tag], %struct.catch_frame* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.anon.0 = type { double }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.gen_printio = type { i32 (i32, i8*)*, i32 (i8*, i8*)*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.anon.13 = type { i64, i8* }
%struct.anon.17 = type { %struct._IO_FILE*, i8* }
%struct.repl_hooks = type { void (i8*)*, %struct.obj* ()*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)* }

@sym_channels = global %struct.obj* null, align 8
@tc_opendir = global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@ld_library_path_env = global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"getcwd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gecos\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"seteuid\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"bad access mode\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"contains undefined options\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"WCONTINUED\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"WNOWAIT\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"WNOHANG\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"WUNTRACED\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"setpgid\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"wta to trunc\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"putenv\00", align 1
@nointerrupt = external global i64, align 8
@handle_sigalrm_flag = internal global i32 0, align 4
@interrupt_differed = external global i64, align 8
@.str.32 = private unnamed_addr constant [13 x i8] c"alarm signal\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"not an opendir\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"opendir not open\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"#<OPENDIR %p>\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"RUSR\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"WUSR\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"XUSR\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"RGRP\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"WGRP\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"XGRP\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ROTH\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"WOTH\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"XOTH\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"REG\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"rdev\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"fchmod\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"NONBLOCK\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"APPEND\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"RDONLY\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"WRONLY\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"RDWR\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"CREAT\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"TRUNC\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"EXCL\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"%04d%02d%02d%02d%02d%02d%02d\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"%s, %02d %s %04d %02d:%02d:%02d GMT\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"*-._@\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.88 = private unnamed_addr constant [18 x i8] c"size must be >= 0\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"not handling buffer of size\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"pclose\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"init_\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"so-loading \00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"did not load function\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@siod_lib = external global i8*, align 8
@catch_framep = external global %struct.catch_frame*, align 8
@.str.101 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"mday\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"fchdir\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"negative index\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"unknown CTYPE\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"sdatref\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c",-\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.123 = private unnamed_addr constant [29 x i8] c"Content-type: text/plain\0D\0A\0D\0A\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"*args*\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"*env*\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"__cgi-main\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"(__cgi-main (*catch 'errobj (main))))\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"siod.exe\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"*channels*\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"getgid\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"getuid\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"geteuid\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"access-problem?\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"srandom\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"%%%memref\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"getpid\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"delete-file\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"file-times\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"unix-time->strtime\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"unix-time\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"unix-ctime\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"url-encode\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"url-decode\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"gets\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"html-encode\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"html-decode\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"decode-file-mode\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"encode-file-mode\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"encode-open-flags\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"http-date\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"load-so\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"require-so\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"so-ext\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"F_RDLCK\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"F_WRLCK\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"F_UNLCK\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"F_SETLK\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"F_SETLKW\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"F_GETLK\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"siod-lib\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"%s=%s%s%s\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"tzset\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"mktime\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"strptime\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"getpass\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"CTYPE_FLOAT\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"CTYPE_DOUBLE\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"CTYPE_LONG\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"CTYPE_SHORT\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"CTYPE_CHAR\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"CTYPE_INT\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"CTYPE_ULONG\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"CTYPE_USHORT\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"CTYPE_UCHAR\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"CTYPE_UINT\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"datref\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"mkdatref\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"datlength\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"position-script\00", align 1
@.str.215 = private unnamed_addr constant [40 x i8] c"Status: 500 Server Error (Application)\0A\00", align 1
@.str.216 = private unnamed_addr constant [26 x i8] c"Content-type: text/html\0A\0A\00", align 1
@.str.217 = private unnamed_addr constant [62 x i8] c"<HTML><HEAD><TITLE>Server Error (Application)</TITLE></HEAD>\0A\00", align 1
@.str.218 = private unnamed_addr constant [43 x i8] c"<BODY><H1>Server Error (Application)</H1>\0A\00", align 1
@.str.219 = private unnamed_addr constant [56 x i8] c"An application on this server has encountered an error\0A\00", align 1
@.str.220 = private unnamed_addr constant [48 x i8] c"which prevents it from fulfilling your request.\00", align 1
@.str.221 = private unnamed_addr constant [31 x i8] c"<P><PRE><B>Error Message:</B> \00", align 1
@.str.222 = private unnamed_addr constant [22 x i8] c"</PRE></BODY></HTML>\0A\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"cgi-main\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"(repl)\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"repl\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"(require \22\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c"\22)\00", align 1
@.str.229 = private unnamed_addr constant [16 x i8] c"*slibu-version*\00", align 1
@.str.230 = private unnamed_addr constant [48 x i8] c"$Id: slibu.c 35752 2007-04-07 20:56:03Z jeffc $\00", align 1

; Function Attrs: nounwind uwtable
define %struct.obj* @lsystem(%struct.obj* %args) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  %retval1 = alloca i32, align 4
  %iflag = alloca i64, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call2 = call %struct.obj* @string_append(%struct.obj* %0)
  %call3 = call i8* @get_c_string(%struct.obj* %call2)
  %call4 = call i32 @system(i8* %call3)
  store i32 %call4, i32* %retval1, align 4
  %1 = load i64, i64* %iflag, align 8
  %call5 = call i64 @no_interrupt(i64 %1)
  %2 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4
  %conv = sitofp i32 %3 to double
  %call6 = call %struct.obj* @flocons(double %conv)
  %call7 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call8 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* %call7)
  store %struct.obj* %call8, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %retval1, align 4
  %conv9 = sitofp i32 %4 to double
  %call10 = call %struct.obj* @flocons(double %conv9)
  store %struct.obj* %call10, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

declare i64 @no_interrupt(i64) #1

declare i32 @system(i8*) #1

declare i8* @get_c_string(%struct.obj*) #1

declare %struct.obj* @string_append(%struct.obj*) #1

declare %struct.obj* @cons(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @flocons(double) #1

declare %struct.obj* @llast_c_errmsg(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetuid() #0 {
entry:
  %call = call i32 @getuid() #4
  %conv = uitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetgid() #0 {
entry:
  %call = call i32 @getgid() #4
  %conv = uitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @getgid() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetcwd() #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %path = alloca [4097 x i8], align 16
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %path, i32 0, i32 0
  %call = call i8* @getcwd(i8* %arraydecay, i64 4097) #4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4097 x i8], [4097 x i8]* %path, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #8
  %arraydecay3 = getelementptr inbounds [4097 x i8], [4097 x i8]* %path, i32 0, i32 0
  %call4 = call %struct.obj* @strcons(i64 %call2, i8* %arraydecay3)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call5 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %0
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

declare %struct.obj* @strcons(i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct.obj* @err(i8*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @ldecode_pwent(%struct.passwd* %p) #0 {
entry:
  %p.addr = alloca %struct.passwd*, align 8
  store %struct.passwd* %p, %struct.passwd** %p.addr, align 8
  %0 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %0, i32 0, i32 0
  %1 = load i8*, i8** %pw_name, align 8
  %call = call i64 @strlen(i8* %1) #8
  %2 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_name1 = getelementptr inbounds %struct.passwd, %struct.passwd* %2, i32 0, i32 0
  %3 = load i8*, i8** %pw_name1, align 8
  %call2 = call %struct.obj* @strcons(i64 %call, i8* %3)
  %4 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 1
  %5 = load i8*, i8** %pw_passwd, align 8
  %call3 = call i64 @strlen(i8* %5) #8
  %6 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_passwd4 = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 1
  %7 = load i8*, i8** %pw_passwd4, align 8
  %call5 = call %struct.obj* @strcons(i64 %call3, i8* %7)
  %8 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 2
  %9 = load i32, i32* %pw_uid, align 4
  %conv = uitofp i32 %9 to double
  %call6 = call %struct.obj* @flocons(double %conv)
  %10 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 3
  %11 = load i32, i32* %pw_gid, align 4
  %conv7 = uitofp i32 %11 to double
  %call8 = call %struct.obj* @flocons(double %conv7)
  %12 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 5
  %13 = load i8*, i8** %pw_dir, align 8
  %call9 = call i64 @strlen(i8* %13) #8
  %14 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_dir10 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 5
  %15 = load i8*, i8** %pw_dir10, align 8
  %call11 = call %struct.obj* @strcons(i64 %call9, i8* %15)
  %16 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 4
  %17 = load i8*, i8** %pw_gecos, align 8
  %call12 = call i64 @strlen(i8* %17) #8
  %18 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gecos13 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 4
  %19 = load i8*, i8** %pw_gecos13, align 8
  %call14 = call %struct.obj* @strcons(i64 %call12, i8* %19)
  %20 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 6
  %21 = load i8*, i8** %pw_shell, align 8
  %call15 = call i64 @strlen(i8* %21) #8
  %22 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_shell16 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 6
  %23 = load i8*, i8** %pw_shell16, align 8
  %call17 = call %struct.obj* @strcons(i64 %call15, i8* %23)
  %call18 = call %struct.obj* (i8*, ...) @symalist(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.obj* %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.obj* %call5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.obj* %call6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct.obj* %call8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.obj* %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct.obj* %call14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.obj* %call17, i8* null)
  ret %struct.obj* %call18
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symalist(i8* %arg, ...) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %arg.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %val = alloca %struct.obj*, align 8
  %key = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.end
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %1
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %3 = bitcast i8* %2 to %struct.obj**
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %5 = bitcast i8* %overflow_arg_area to %struct.obj**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.obj** [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ]
  %6 = load %struct.obj*, %struct.obj** %vaarg.addr
  store %struct.obj* %6, %struct.obj** %val, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call %struct.obj* @cintern(i8* %7)
  %8 = load %struct.obj*, %struct.obj** %val, align 8
  %call3 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %8)
  %call4 = call %struct.obj* @cons(%struct.obj* %call3, %struct.obj* null)
  store %struct.obj* %call4, %struct.obj** %result, align 8
  %9 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %9, %struct.obj** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.28, %vaarg.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32, i32* %gp_offset_p6
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg.9, label %vaarg.in_mem.11

vaarg.in_reg.9:                                   ; preds = %while.cond
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8*, i8** %10
  %11 = getelementptr i8, i8* %reg_save_area10, i32 %gp_offset7
  %12 = bitcast i8* %11 to i8**
  %13 = add i32 %gp_offset7, 8
  store i32 %13, i32* %gp_offset_p6
  br label %vaarg.end.15

vaarg.in_mem.11:                                  ; preds = %while.cond
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12
  %14 = bitcast i8* %overflow_arg_area13 to i8**
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12
  br label %vaarg.end.15

vaarg.end.15:                                     ; preds = %vaarg.in_mem.11, %vaarg.in_reg.9
  %vaarg.addr16 = phi i8** [ %12, %vaarg.in_reg.9 ], [ %14, %vaarg.in_mem.11 ]
  %15 = load i8*, i8** %vaarg.addr16
  store i8* %15, i8** %key, align 8
  %tobool17 = icmp ne i8* %15, null
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end.15
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 0
  %gp_offset20 = load i32, i32* %gp_offset_p19
  %fits_in_gp21 = icmp ule i32 %gp_offset20, 40
  br i1 %fits_in_gp21, label %vaarg.in_reg.22, label %vaarg.in_mem.24

vaarg.in_reg.22:                                  ; preds = %while.body
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area23 = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area23, i32 %gp_offset20
  %18 = bitcast i8* %17 to %struct.obj**
  %19 = add i32 %gp_offset20, 8
  store i32 %19, i32* %gp_offset_p19
  br label %vaarg.end.28

vaarg.in_mem.24:                                  ; preds = %while.body
  %overflow_arg_area_p25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area26 = load i8*, i8** %overflow_arg_area_p25
  %20 = bitcast i8* %overflow_arg_area26 to %struct.obj**
  %overflow_arg_area.next27 = getelementptr i8, i8* %overflow_arg_area26, i32 8
  store i8* %overflow_arg_area.next27, i8** %overflow_arg_area_p25
  br label %vaarg.end.28

vaarg.end.28:                                     ; preds = %vaarg.in_mem.24, %vaarg.in_reg.22
  %vaarg.addr29 = phi %struct.obj** [ %18, %vaarg.in_reg.22 ], [ %20, %vaarg.in_mem.24 ]
  %21 = load %struct.obj*, %struct.obj** %vaarg.addr29
  store %struct.obj* %21, %struct.obj** %val, align 8
  %22 = load i8*, i8** %key, align 8
  %call30 = call %struct.obj* @cintern(i8* %22)
  %23 = load %struct.obj*, %struct.obj** %val, align 8
  %call31 = call %struct.obj* @cons(%struct.obj* %call30, %struct.obj* %23)
  %call32 = call %struct.obj* @cons(%struct.obj* %call31, %struct.obj* null)
  %24 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  store %struct.obj* %call32, %struct.obj** %cdr, align 8
  %25 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as33 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %cons34 = bitcast %union.anon* %storage_as33 to %struct.anon*
  %cdr35 = getelementptr inbounds %struct.anon, %struct.anon* %cons34, i32 0, i32 1
  %26 = load %struct.obj*, %struct.obj** %cdr35, align 8
  store %struct.obj* %26, %struct.obj** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %vaarg.end.15
  %arraydecay36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay3637 = bitcast %struct.__va_list_tag* %arraydecay36 to i8*
  call void @llvm.va_end(i8* %arraydecay3637)
  %27 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %27, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %28 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %28
}

; Function Attrs: nounwind uwtable
define void @lencode_pwent(%struct.obj* %alist, %struct.passwd* %p) #0 {
entry:
  %alist.addr = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.passwd*, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  store %struct.passwd* %p, %struct.passwd** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call = call i8* @strfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.obj* %0)
  %1 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %1, i32 0, i32 0
  store i8* %call, i8** %pw_name, align 8
  %2 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call1 = call i8* @strfield(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.obj* %2)
  %3 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 1
  store i8* %call1, i8** %pw_passwd, align 8
  %4 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call2 = call i64 @longfield(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.obj* %4)
  %conv = trunc i64 %call2 to i32
  %5 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 2
  store i32 %conv, i32* %pw_uid, align 4
  %6 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call3 = call i64 @longfield(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct.obj* %6)
  %conv4 = trunc i64 %call3 to i32
  %7 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 3
  store i32 %conv4, i32* %pw_gid, align 4
  %8 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call5 = call i8* @strfield(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.obj* %8)
  %9 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 5
  store i8* %call5, i8** %pw_dir, align 8
  %10 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call6 = call i8* @strfield(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct.obj* %10)
  %11 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 4
  store i8* %call6, i8** %pw_gecos, align 8
  %12 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call7 = call i8* @strfield(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.obj* %12)
  %13 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 6
  store i8* %call7, i8** %pw_shell, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @strfield(i8* %name, %struct.obj* %alist) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  %key = alloca %struct.obj*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.obj* @rintern(i8* %0)
  store %struct.obj* %call, %struct.obj** %key, align 8
  %1 = load %struct.obj*, %struct.obj** %key, align 8
  %2 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call1 = call %struct.obj* @assq(%struct.obj* %1, %struct.obj* %2)
  store %struct.obj* %call1, %struct.obj** %value, align 8
  %cmp = icmp eq %struct.obj* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %value, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %3)
  %call3 = call i8* @get_c_string(%struct.obj* %call2)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i64 @longfield(i8* %name, %struct.obj* %alist) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  %key = alloca %struct.obj*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.obj* @rintern(i8* %0)
  store %struct.obj* %call, %struct.obj** %key, align 8
  %1 = load %struct.obj*, %struct.obj** %key, align 8
  %2 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call1 = call %struct.obj* @assq(%struct.obj* %1, %struct.obj* %2)
  store %struct.obj* %call1, %struct.obj** %value, align 8
  %cmp = icmp eq %struct.obj* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %value, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %3)
  %call3 = call i64 @get_c_long(%struct.obj* %call2)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpwuid(%struct.obj* %luid) #0 {
entry:
  %luid.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %uid = alloca i32, align 4
  %p = alloca %struct.passwd*, align 8
  %result = alloca %struct.obj*, align 8
  store %struct.obj* %luid, %struct.obj** %luid.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %luid.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %uid, align 4
  %call1 = call i64 @no_interrupt(i64 1)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %iflag, align 4
  %1 = load i32, i32* %uid, align 4
  %call3 = call %struct.passwd* @getpwuid(i32 %1)
  store %struct.passwd* %call3, %struct.passwd** %p, align 8
  %tobool = icmp ne %struct.passwd* %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call4 = call %struct.obj* @ldecode_pwent(%struct.passwd* %2)
  store %struct.obj* %call4, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %iflag, align 4
  %conv5 = sext i32 %3 to i64
  %call6 = call i64 @no_interrupt(i64 %conv5)
  %4 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %4
}

declare i64 @get_c_long(%struct.obj*) #1

declare %struct.passwd* @getpwuid(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpwnam(%struct.obj* %nam) #0 {
entry:
  %nam.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %p = alloca %struct.passwd*, align 8
  %result = alloca %struct.obj*, align 8
  store %struct.obj* %nam, %struct.obj** %nam.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %nam.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %call2 = call %struct.passwd* @getpwnam(i8* %call1)
  store %struct.passwd* %call2, %struct.passwd** %p, align 8
  %tobool = icmp ne %struct.passwd* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call3 = call %struct.obj* @ldecode_pwent(%struct.passwd* %1)
  store %struct.obj* %call3, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %iflag, align 4
  %conv4 = sext i32 %2 to i64
  %call5 = call i64 @no_interrupt(i64 %conv4)
  %3 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %3
}

declare %struct.passwd* @getpwnam(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpwent() #0 {
entry:
  %iflag = alloca i32, align 4
  %result = alloca %struct.obj*, align 8
  %p = alloca %struct.passwd*, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %call1 = call %struct.passwd* @getpwent()
  store %struct.passwd* %call1, %struct.passwd** %p, align 8
  %tobool = icmp ne %struct.passwd* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call2 = call %struct.obj* @ldecode_pwent(%struct.passwd* %0)
  store %struct.obj* %call2, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %iflag, align 4
  %conv3 = sext i32 %1 to i64
  %call4 = call i64 @no_interrupt(i64 %conv3)
  %2 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %2
}

declare %struct.passwd* @getpwent() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lsetpwent() #0 {
entry:
  %iflag = alloca i32, align 4
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  call void @setpwent()
  %0 = load i32, i32* %iflag, align 4
  %conv1 = sext i32 %0 to i64
  %call2 = call i64 @no_interrupt(i64 %conv1)
  ret %struct.obj* null
}

declare void @setpwent() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lendpwent() #0 {
entry:
  %iflag = alloca i32, align 4
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  call void @endpwent()
  %0 = load i32, i32* %iflag, align 4
  %conv1 = sext i32 %0 to i64
  %call2 = call i64 @no_interrupt(i64 %conv1)
  ret %struct.obj* null
}

declare void @endpwent() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lsetuid(%struct.obj* %n) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %n.addr = alloca %struct.obj*, align 8
  %uid = alloca i32, align 4
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %uid, align 4
  %1 = load i32, i32* %uid, align 4
  %call1 = call i32 @setuid(i32 %1) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @setuid(i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lseteuid(%struct.obj* %n) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %n.addr = alloca %struct.obj*, align 8
  %uid = alloca i32, align 4
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %uid, align 4
  %1 = load i32, i32* %uid, align 4
  %call1 = call i32 @seteuid(i32 %1) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @seteuid(i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgeteuid() #0 {
entry:
  %call = call i32 @geteuid() #4
  %conv = uitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @laccess_problem(%struct.obj* %lfname, %struct.obj* %lacc) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %lfname.addr = alloca %struct.obj*, align 8
  %lacc.addr = alloca %struct.obj*, align 8
  %fname = alloca i8*, align 8
  %acc = alloca i8*, align 8
  %p = alloca i8*, align 8
  %amode = alloca i32, align 4
  %iflag = alloca i32, align 4
  %retval3 = alloca i32, align 4
  store %struct.obj* %lfname, %struct.obj** %lfname.addr, align 8
  store %struct.obj* %lacc, %struct.obj** %lacc.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lfname.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %fname, align 8
  %1 = load %struct.obj*, %struct.obj** %lacc.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  store i8* %call1, i8** %acc, align 8
  store i32 0, i32* %amode, align 4
  %call2 = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %iflag, align 4
  %2 = load i8*, i8** %acc, align 8
  store i8* %2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  switch i32 %conv4, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.5
    i32 120, label %sw.bb.7
    i32 102, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %for.body
  %7 = load i32, i32* %amode, align 4
  %or = or i32 %7, 4
  store i32 %or, i32* %amode, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %8 = load i32, i32* %amode, align 4
  %or6 = or i32 %8, 2
  store i32 %or6, i32* %amode, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %9 = load i32, i32* %amode, align 4
  %or8 = or i32 %9, 1
  store i32 %or8, i32* %amode, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %10 = load i32, i32* %amode, align 4
  store i32 %10, i32* %amode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %11 = load %struct.obj*, %struct.obj** %lacc.addr, align 8
  %call10 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.obj* %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %fname, align 8
  %14 = load i32, i32* %amode, align 4
  %call11 = call i32 @access(i8* %13, i32 %14) #4
  store i32 %call11, i32* %retval3, align 4
  %15 = load i32, i32* %iflag, align 4
  %conv12 = sext i32 %15 to i64
  %call13 = call i64 @no_interrupt(i64 %conv12)
  %16 = load i32, i32* %retval3, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call15 = call %struct.obj* @llast_c_errmsg(i32 -1)
  store %struct.obj* %call15, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lsymlink(%struct.obj* %p1, %struct.obj* %p2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p1.addr = alloca %struct.obj*, align 8
  %p2.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p1, %struct.obj** %p1.addr, align 8
  store %struct.obj* %p2, %struct.obj** %p2.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p1.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %p2.addr, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %1)
  %call3 = call i32 @symlink(i8* %call1, i8* %call2) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %2)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i32 @symlink(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @llink(%struct.obj* %p1, %struct.obj* %p2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p1.addr = alloca %struct.obj*, align 8
  %p2.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p1, %struct.obj** %p1.addr, align 8
  store %struct.obj* %p2, %struct.obj** %p2.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p1.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %p2.addr, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %1)
  %call3 = call i32 @link(i8* %call1, i8* %call2) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %2)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lunlink(%struct.obj* %p) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %call2 = call i32 @unlink(i8* %call1) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct.obj* %call3)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %iflag, align 8
  %call5 = call i64 @no_interrupt(i64 %1)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lrmdir(%struct.obj* %p) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %call2 = call i32 @rmdir(i8* %call1) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct.obj* %call3)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %iflag, align 8
  %call5 = call i64 @no_interrupt(i64 %1)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lmkdir(%struct.obj* %p, %struct.obj* %m) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %m.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  store %struct.obj* %m, %struct.obj** %m.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %m.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @mkdir(i8* %call1, i32 %conv) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %2)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadlink(%struct.obj* %p) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %buff = alloca [4097 x i8], align 16
  %size = alloca i32, align 4
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buff, i32 0, i32 0
  %call2 = call i64 @readlink(i8* %call1, i8* %arraydecay, i64 4097) #4
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %size, align 4
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %1)
  %2 = load i32, i32* %size, align 4
  %conv7 = sext i32 %2 to i64
  %arraydecay8 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buff, i32 0, i32 0
  %call9 = call %struct.obj* @strcons(i64 %conv7, i8* %arraydecay8)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lrename(%struct.obj* %p1, %struct.obj* %p2) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %p1.addr = alloca %struct.obj*, align 8
  %p2.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %p1, %struct.obj** %p1.addr, align 8
  store %struct.obj* %p2, %struct.obj** %p2.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %p1.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %p2.addr, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %1)
  %call3 = call i32 @rename(i8* %call1, i8* %call2) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %2)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lrandom(%struct.obj* %n) #0 {
entry:
  %n.addr = alloca %struct.obj*, align 8
  %res = alloca i32, align 4
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %call = call i64 @random() #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %res, align 4
  %0 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %res, align 4
  %conv2 = sext i32 %1 to i64
  %2 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %2)
  %rem = srem i64 %conv2, %call3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %res, align 4
  %conv4 = sext i32 %3 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %rem, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = sitofp i64 %cond to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  ret %struct.obj* %call6
}

; Function Attrs: nounwind
declare i64 @random() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lsrandom(%struct.obj* %n) #0 {
entry:
  %n.addr = alloca %struct.obj*, align 8
  %seed = alloca i64, align 8
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %seed, align 8
  %1 = load i64, i64* %seed, align 8
  %conv = trunc i64 %1 to i32
  call void @srandom(i32 %conv) #4
  ret %struct.obj* null
}

; Function Attrs: nounwind
declare void @srandom(i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lfork() #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %pid = alloca i32, align 4
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %call1 = call i32 @fork() #4
  store i32 %call1, i32* %pid, align 4
  %0 = load i32, i32* %pid, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %iflag, align 4
  %conv3 = sext i32 %1 to i64
  %call4 = call i64 @no_interrupt(i64 %conv3)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pid, align 4
  %cmp5 = icmp eq i32 %2, -1
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call9 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct.obj* %call8)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %3 = load i32, i32* %iflag, align 4
  %conv11 = sext i32 %3 to i64
  %call12 = call i64 @no_interrupt(i64 %conv11)
  %4 = load i32, i32* %pid, align 4
  %conv13 = sitofp i32 %4 to double
  %call14 = call %struct.obj* @flocons(double %conv13)
  store %struct.obj* %call14, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind uwtable
define i8** @list2char(%struct.obj** %safe, %struct.obj* %v) #0 {
entry:
  %safe.addr = alloca %struct.obj**, align 8
  %v.addr = alloca %struct.obj*, align 8
  %x = alloca i8**, align 8
  %tmp = alloca i8*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj** %safe, %struct.obj*** %safe.addr, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.obj* @llength(%struct.obj* %0)
  %call4 = call i64 @get_c_long(%struct.obj* %call)
  store i64 %call4, i64* %n, align 8
  %1 = bitcast i8*** %x to i8*
  %2 = load i64, i64* %n, align 8
  %add = add nsw i64 %2, 1
  %mul = mul i64 8, %add
  %call5 = call %struct.obj* @mallocl(i8* %1, i64 %mul)
  %3 = load %struct.obj**, %struct.obj*** %safe.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %3, align 8
  %call6 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* %4)
  %5 = load %struct.obj**, %struct.obj*** %safe.addr, align 8
  store %struct.obj* %call6, %struct.obj** %5, align 8
  %6 = load %struct.obj*, %struct.obj** %v.addr, align 8
  store %struct.obj* %6, %struct.obj** %l, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %call7 = call %struct.obj* @car(%struct.obj* %9)
  %call8 = call i8* @get_c_string(%struct.obj* %call7)
  store i8* %call8, i8** %tmp, align 8
  %10 = load i64, i64* %j, align 8
  %11 = load i8**, i8*** %x, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %10
  %12 = bitcast i8** %arrayidx to i8*
  %13 = load i8*, i8** %tmp, align 8
  %call9 = call i64 @strlen(i8* %13) #8
  %add10 = add i64 %call9, 1
  %call11 = call %struct.obj* @mallocl(i8* %12, i64 %add10)
  %14 = load %struct.obj**, %struct.obj*** %safe.addr, align 8
  %15 = load %struct.obj*, %struct.obj** %14, align 8
  %call12 = call %struct.obj* @cons(%struct.obj* %call11, %struct.obj* %15)
  %16 = load %struct.obj**, %struct.obj*** %safe.addr, align 8
  store %struct.obj* %call12, %struct.obj** %16, align 8
  %17 = load i64, i64* %j, align 8
  %18 = load i8**, i8*** %x, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %18, i64 %17
  %19 = load i8*, i8** %arrayidx13, align 8
  %20 = load i8*, i8** %tmp, align 8
  %call14 = call i8* @strcpy(i8* %19, i8* %20) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.obj*, %struct.obj** %l, align 8
  %call15 = call %struct.obj* @cdr(%struct.obj* %21)
  store %struct.obj* %call15, %struct.obj** %l, align 8
  %22 = load i64, i64* %j, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* %n, align 8
  %24 = load i8**, i8*** %x, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %24, i64 %23
  store i8* null, i8** %arrayidx16, align 8
  %25 = load i8**, i8*** %x, align 8
  ret i8** %25
}

declare %struct.obj* @llength(%struct.obj*) #1

declare %struct.obj* @mallocl(i8*, i64) #1

declare %struct.obj* @car(%struct.obj*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare %struct.obj* @cdr(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lexec(%struct.obj* %path, %struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %path.addr = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %argv = alloca i8**, align 8
  %envp = alloca i8**, align 8
  %gcsafe = alloca %struct.obj*, align 8
  store %struct.obj* %path, %struct.obj** %path.addr, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  store i8** null, i8*** %argv, align 8
  store i8** null, i8*** %envp, align 8
  store %struct.obj* null, %struct.obj** %gcsafe, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call1 = call i8** @list2char(%struct.obj** %gcsafe, %struct.obj* %0)
  store i8** %call1, i8*** %argv, align 8
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call3 = call i8** @list2char(%struct.obj** %gcsafe, %struct.obj* %2)
  store i8** %call3, i8*** %envp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %envp, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %path.addr, align 8
  %call5 = call i8* @get_c_string(%struct.obj* %4)
  %5 = load i8**, i8*** %argv, align 8
  %6 = load i8**, i8*** %envp, align 8
  %call6 = call i32 @execve(i8* %call5, i8** %5, i8** %6) #4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %path.addr, align 8
  %call7 = call i8* @get_c_string(%struct.obj* %7)
  %8 = load i8**, i8*** %argv, align 8
  %call8 = call i32 @execv(i8* %call7, i8** %8) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %9 = load i32, i32* %iflag, align 4
  %conv10 = sext i32 %9 to i64
  %call11 = call i64 @no_interrupt(i64 %conv10)
  %call12 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct.obj* %call12)
  ret %struct.obj* %call13
}

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #2

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lnice(%struct.obj* %val) #0 {
entry:
  %val.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.obj* %val, %struct.obj** %val.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %val.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %call1 = call i64 @no_interrupt(i64 1)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %iflag, align 4
  %1 = load i32, i32* %n, align 4
  %call3 = call i32 @nice(i32 %1) #4
  store i32 %call3, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct.obj* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %iflag, align 4
  %conv7 = sext i32 %3 to i64
  %call8 = call i64 @no_interrupt(i64 %conv7)
  %4 = load i32, i32* %n, align 4
  %conv9 = sitofp i32 %4 to double
  %call10 = call %struct.obj* @flocons(double %conv9)
  ret %struct.obj* %call10
}

; Function Attrs: nounwind
declare i32 @nice(i32) #2

; Function Attrs: nounwind uwtable
define i32 @assemble_options(%struct.obj* %l, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.obj*, align 8
  %result = alloca i32, align 4
  %val = alloca i32, align 4
  %noptions = alloca i32, align 4
  %nmask = alloca i32, align 4
  %lsym = alloca %struct.obj*, align 8
  %lp = alloca %struct.obj*, align 8
  %sym = alloca i8*, align 8
  %syms = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* %nmask, align 4
  store %struct.obj* null, %struct.obj** %lp, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp1 = icmp eq %struct.obj* %1, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 1
  br i1 %cmp2, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @llength(%struct.obj* %4)
  %call5 = call i64 @get_c_long(%struct.obj* %call)
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i64 [ %call5, %cond.true.4 ], [ -1, %cond.false.6 ]
  %conv9 = trunc i64 %cond8 to i32
  store i32 %conv9, i32* %noptions, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %syms, i32 0, i32 0
  %arraydecay10 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay10)
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %cond.end.7
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %syms, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay11, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay11, i32 0, i32 3
  %reg_save_area = load i8*, i8** %5
  %6 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %7 = bitcast i8* %6 to i8**
  %8 = add i32 %gp_offset, 8
  store i32 %8, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay11, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %9 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %7, %vaarg.in_reg ], [ %9, %vaarg.in_mem ]
  %10 = load i8*, i8** %vaarg.addr
  store i8* %10, i8** %sym, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %syms, i32 0, i32 0
  %gp_offset_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 0
  %gp_offset14 = load i32, i32* %gp_offset_p13
  %fits_in_gp15 = icmp ule i32 %gp_offset14, 40
  br i1 %fits_in_gp15, label %vaarg.in_reg.16, label %vaarg.in_mem.18

vaarg.in_reg.16:                                  ; preds = %while.body
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 3
  %reg_save_area17 = load i8*, i8** %11
  %12 = getelementptr i8, i8* %reg_save_area17, i32 %gp_offset14
  %13 = bitcast i8* %12 to i32*
  %14 = add i32 %gp_offset14, 8
  store i32 %14, i32* %gp_offset_p13
  br label %vaarg.end.22

vaarg.in_mem.18:                                  ; preds = %while.body
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 2
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19
  %15 = bitcast i8* %overflow_arg_area20 to i32*
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i32 8
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19
  br label %vaarg.end.22

vaarg.end.22:                                     ; preds = %vaarg.in_mem.18, %vaarg.in_reg.16
  %vaarg.addr23 = phi i32* [ %13, %vaarg.in_reg.16 ], [ %15, %vaarg.in_mem.18 ]
  %16 = load i32, i32* %vaarg.addr23
  store i32 %16, i32* %val, align 4
  %17 = load i8*, i8** %sym, align 8
  %call24 = call %struct.obj* @cintern(i8* %17)
  store %struct.obj* %call24, %struct.obj** %lsym, align 8
  %18 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %19 = load %struct.obj*, %struct.obj** %lsym, align 8
  %cmp25 = icmp eq %struct.obj* %18, %19
  br i1 %cmp25, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %vaarg.end.22
  %20 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp27 = icmp eq %struct.obj* %20, null
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %lor.lhs.false
  br label %cond.end.33

cond.false.30:                                    ; preds = %lor.lhs.false
  %21 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %type31 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 1
  %22 = load i16, i16* %type31, align 2
  %conv32 = sext i16 %22 to i32
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.29
  %cond34 = phi i32 [ 0, %cond.true.29 ], [ %conv32, %cond.false.30 ]
  %cmp35 = icmp eq i32 %cond34, 1
  br i1 %cmp35, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %cond.end.33
  %23 = load %struct.obj*, %struct.obj** %lsym, align 8
  %24 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call37 = call %struct.obj* @memq(%struct.obj* %23, %struct.obj* %24)
  store %struct.obj* %call37, %struct.obj** %lp, align 8
  %cmp38 = icmp ne %struct.obj* %call37, null
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %land.lhs.true, %vaarg.end.22
  %25 = load i32, i32* %val, align 4
  %26 = load i32, i32* %result, align 4
  %or = or i32 %26, %25
  store i32 %or, i32* %result, align 4
  %27 = load i32, i32* %noptions, align 4
  %cmp41 = icmp sgt i32 %27, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.40
  %28 = load i32, i32* %nmask, align 4
  %29 = load i32, i32* %noptions, align 4
  %conv44 = sext i32 %29 to i64
  %30 = load %struct.obj*, %struct.obj** %lp, align 8
  %call45 = call %struct.obj* @llength(%struct.obj* %30)
  %call46 = call i64 @get_c_long(%struct.obj* %call45)
  %sub = sub nsw i64 %conv44, %call46
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %or47 = or i32 %28, %shl
  store i32 %or47, i32* %nmask, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.then.40
  store i32 -2, i32* %noptions, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %cond.end.33
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %syms, i32 0, i32 0
  %arraydecay5051 = bitcast %struct.__va_list_tag* %arraydecay50 to i8*
  call void @llvm.va_end(i8* %arraydecay5051)
  %31 = load i32, i32* %noptions, align 4
  %cmp52 = icmp eq i32 %31, -1
  br i1 %cmp52, label %if.then.62, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %while.end
  %32 = load i32, i32* %noptions, align 4
  %cmp55 = icmp sgt i32 %32, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.64

land.lhs.true.57:                                 ; preds = %lor.lhs.false.54
  %33 = load i32, i32* %nmask, align 4
  %34 = load i32, i32* %noptions, align 4
  %shl58 = shl i32 1, %34
  %sub59 = sub nsw i32 %shl58, 1
  %cmp60 = icmp ne i32 %33, %sub59
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true.57, %while.end
  %35 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call63 = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), %struct.obj* %35)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true.57, %lor.lhs.false.54
  %36 = load i32, i32* %result, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare %struct.obj* @cintern(i8*) #1

declare %struct.obj* @memq(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @lwait(%struct.obj* %lpid, %struct.obj* %loptions) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %lpid.addr = alloca %struct.obj*, align 8
  %loptions.addr = alloca %struct.obj*, align 8
  %pid = alloca i32, align 4
  %ret = alloca i32, align 4
  %iflag = alloca i32, align 4
  %status = alloca i32, align 4
  %options = alloca i32, align 4
  store %struct.obj* %lpid, %struct.obj** %lpid.addr, align 8
  store %struct.obj* %loptions, %struct.obj** %loptions.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct.obj*, %struct.obj** %lpid.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %lpid.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %pid, align 4
  %2 = load %struct.obj*, %struct.obj** %loptions.addr, align 8
  %call1 = call i32 (%struct.obj*, ...) @assemble_options(%struct.obj* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 16777216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 2, i8* null)
  store i32 %call1, i32* %options, align 4
  %call2 = call i64 @no_interrupt(i64 1)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %iflag, align 4
  %3 = load i32, i32* %pid, align 4
  %4 = load i32, i32* %options, align 4
  %call4 = call i32 @waitpid(i32 %3, i32* %status, i32 %4)
  store i32 %call4, i32* %ret, align 4
  %5 = load i32, i32* %iflag, align 4
  %conv5 = sext i32 %5 to i64
  %call6 = call i64 @no_interrupt(i64 %conv5)
  %6 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %7 = load i32, i32* %ret, align 4
  %cmp9 = icmp eq i32 %7, -1
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %call12 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.obj* %call12)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  %8 = load i32, i32* %ret, align 4
  %conv15 = sitofp i32 %8 to double
  %call16 = call %struct.obj* @flocons(double %conv15)
  %9 = load i32, i32* %status, align 4
  %conv17 = sitofp i32 %9 to double
  %call18 = call %struct.obj* @flocons(double %conv17)
  %call19 = call %struct.obj* @cons(%struct.obj* %call18, %struct.obj* null)
  %call20 = call %struct.obj* @cons(%struct.obj* %call16, %struct.obj* %call19)
  store %struct.obj* %call20, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.11, %if.then
  %10 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %10
}

declare i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lkill(%struct.obj* %pid, %struct.obj* %sig) #0 {
entry:
  %pid.addr = alloca %struct.obj*, align 8
  %sig.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %pid, %struct.obj** %pid.addr, align 8
  store %struct.obj* %sig, %struct.obj** %sig.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %pid.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call1 to i32
  %1 = load %struct.obj*, %struct.obj** %sig.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %sig.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 9, %cond.true ], [ %call3, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  %call5 = call i32 @kill(i32 %conv, i32 %conv4) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call6 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call7 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct.obj* %call6)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %3 = load i64, i64* %iflag, align 8
  %call8 = call i64 @no_interrupt(i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.obj* null
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpid() #0 {
entry:
  %call = call i32 @getpid() #4
  %conv = sitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpgrp() #0 {
entry:
  %call = call i32 @getpgrp() #4
  %conv = sitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @getpgrp() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lsetpgid(%struct.obj* %pid, %struct.obj* %pgid) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %pid.addr = alloca %struct.obj*, align 8
  %pgid.addr = alloca %struct.obj*, align 8
  store %struct.obj* %pid, %struct.obj** %pid.addr, align 8
  store %struct.obj* %pgid, %struct.obj** %pgid.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %pid.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  %1 = load %struct.obj*, %struct.obj** %pgid.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %conv2 = trunc i64 %call1 to i32
  %call3 = call i32 @setpgid(i32 %conv, i32 %conv2) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetgrgid(%struct.obj* %n) #0 {
entry:
  %n.addr = alloca %struct.obj*, align 8
  %gid = alloca i32, align 4
  %gr = alloca %struct.group*, align 8
  %iflag = alloca i64, align 8
  %j = alloca i64, align 8
  %result = alloca %struct.obj*, align 8
  store %struct.obj* %n, %struct.obj** %n.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** %n.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %gid, align 4
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %iflag, align 8
  %1 = load i32, i32* %gid, align 4
  %call2 = call %struct.group* @getgrgid(i32 %1)
  store %struct.group* %call2, %struct.group** %gr, align 8
  %tobool = icmp ne %struct.group* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %2, i32 0, i32 0
  %3 = load i8*, i8** %gr_name, align 8
  %call3 = call i64 @strlen(i8* %3) #8
  %4 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name4 = getelementptr inbounds %struct.group, %struct.group* %4, i32 0, i32 0
  %5 = load i8*, i8** %gr_name4, align 8
  %call5 = call %struct.obj* @strcons(i64 %call3, i8* %5)
  %6 = load %struct.obj*, %struct.obj** %result, align 8
  %call6 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* %6)
  store %struct.obj* %call6, %struct.obj** %result, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %j, align 8
  %8 = load %struct.group*, %struct.group** %gr, align 8
  %gr_mem = getelementptr inbounds %struct.group, %struct.group* %8, i32 0, i32 3
  %9 = load i8**, i8*** %gr_mem, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %7
  %10 = load i8*, i8** %arrayidx, align 8
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %j, align 8
  %12 = load %struct.group*, %struct.group** %gr, align 8
  %gr_mem8 = getelementptr inbounds %struct.group, %struct.group* %12, i32 0, i32 3
  %13 = load i8**, i8*** %gr_mem8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %11
  %14 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i64 @strlen(i8* %14) #8
  %15 = load i64, i64* %j, align 8
  %16 = load %struct.group*, %struct.group** %gr, align 8
  %gr_mem11 = getelementptr inbounds %struct.group, %struct.group* %16, i32 0, i32 3
  %17 = load i8**, i8*** %gr_mem11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 %15
  %18 = load i8*, i8** %arrayidx12, align 8
  %call13 = call %struct.obj* @strcons(i64 %call10, i8* %18)
  %19 = load %struct.obj*, %struct.obj** %result, align 8
  %call14 = call %struct.obj* @cons(%struct.obj* %call13, %struct.obj* %19)
  store %struct.obj* %call14, %struct.obj** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %j, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.obj*, %struct.obj** %result, align 8
  %call15 = call %struct.obj* @nreverse(%struct.obj* %21)
  store %struct.obj* %call15, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %22 = load i64, i64* %iflag, align 8
  %call16 = call i64 @no_interrupt(i64 %22)
  %23 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %23
}

declare %struct.group* @getgrgid(i32) #1

declare %struct.obj* @nreverse(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetppid() #0 {
entry:
  %call = call i32 @getppid() #4
  %conv = sitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i32 @getppid() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lmemref_byte(%struct.obj* %addr) #0 {
entry:
  %addr.addr = alloca %struct.obj*, align 8
  %ptr = alloca i8*, align 8
  store %struct.obj* %addr, %struct.obj** %addr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %addr.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %1 = inttoptr i64 %call to i8*
  store i8* %1, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = uitofp i8 %3 to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lexit(%struct.obj* %val) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %val.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  store %struct.obj* %val, %struct.obj** %val.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %val.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %0)
  %conv2 = trunc i64 %call1 to i32
  call void @exit(i32 %conv2) #9
  unreachable

return:                                           ; No predecessors!
  %1 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %1
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define %struct.obj* @ltrunc(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %i = alloca i64, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %conv3 = fptosi double %5 to i64
  store i64 %conv3, i64* %i, align 8
  %6 = load i64, i64* %i, align 8
  %conv4 = sitofp i64 %6 to double
  %call5 = call %struct.obj* @flocons(double %conv4)
  ret %struct.obj* %call5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lputenv(%struct.obj* %lstr) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %lstr.addr = alloca %struct.obj*, align 8
  %orig = alloca i8*, align 8
  %cpy = alloca i8*, align 8
  store %struct.obj* %lstr, %struct.obj** %lstr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lstr.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %orig, align 8
  %1 = load i8*, i8** %orig, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %add = add i64 %call1, 1
  %call2 = call i8* @must_malloc(i64 %add)
  store i8* %call2, i8** %cpy, align 8
  %2 = load i8*, i8** %cpy, align 8
  %3 = load i8*, i8** %orig, align 8
  %call3 = call i8* @strcpy(i8* %2, i8* %3) #4
  %4 = load i8*, i8** %cpy, align 8
  %call4 = call i32 @putenv(i8* %4) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

declare i8* @must_malloc(i64) #1

; Function Attrs: nounwind
declare i32 @putenv(i8*) #2

; Function Attrs: nounwind uwtable
define void @handle_sigalrm(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i64, i64* @nointerrupt, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @handle_sigalrm_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i64 1, i64* @interrupt_differed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.else:                                          ; preds = %entry
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %struct.obj* null)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lalarm(%struct.obj* %seconds, %struct.obj* %flag) #0 {
entry:
  %seconds.addr = alloca %struct.obj*, align 8
  %flag.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store %struct.obj* %seconds, %struct.obj** %seconds.addr, align 8
  store %struct.obj* %flag, %struct.obj** %flag.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %call2 = call void (i32)* @signal(i32 14, void (i32)* @handle_sigalrm) #4
  %0 = load %struct.obj*, %struct.obj** %flag.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  %cond = select i1 %cmp, i32 0, i32 1
  store i32 %cond, i32* @handle_sigalrm_flag, align 4
  %1 = load %struct.obj*, %struct.obj** %seconds.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call3 to i32
  %call4 = call i32 @alarm(i32 %conv) #4
  store i32 %call4, i32* %retval1, align 4
  %2 = load i64, i64* %iflag, align 8
  %call5 = call i64 @no_interrupt(i64 %2)
  %3 = load i32, i32* %retval1, align 4
  %conv6 = sitofp i32 %3 to double
  %call7 = call %struct.obj* @flocons(double %conv6)
  ret %struct.obj* %call7
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare i32 @alarm(i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @l_opendir(%struct.obj* %name) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %name.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %value = alloca %struct.obj*, align 8
  %d = alloca %struct.__dirstream*, align 8
  store %struct.obj* %name, %struct.obj** %name.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call1, %struct.obj** %value, align 8
  %0 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %call2 = call i8* @get_c_string(%struct.obj* %0)
  %call3 = call %struct.__dirstream* @opendir(i8* %call2)
  store %struct.__dirstream* %call3, %struct.__dirstream** %d, align 8
  %tobool = icmp ne %struct.__dirstream* %call3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @tc_opendir, align 8
  %conv = trunc i64 %1 to i16
  %2 = load %struct.obj*, %struct.obj** %value, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  store i16 %conv, i16* %type, align 2
  %3 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %4 = bitcast %struct.__dirstream* %3 to %struct.obj*
  %5 = load %struct.obj*, %struct.obj** %value, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %4, %struct.obj** %car, align 8
  %6 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %6)
  %7 = load %struct.obj*, %struct.obj** %value, align 8
  store %struct.obj* %7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %8
}

declare %struct.__dirstream* @opendir(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.__dirstream* @get_opendir(%struct.obj* %v, i64 %oflag) #0 {
entry:
  %retval = alloca %struct.__dirstream*, align 8
  %v.addr = alloca %struct.obj*, align 8
  %oflag.addr = alloca i64, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  store i64 %oflag, i64* %oflag.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %conv1 = sext i32 %cond to i64
  %3 = load i64, i64* @tc_opendir, align 8
  %cmp2 = icmp ne i64 %conv1, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), %struct.obj* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %car, align 8
  %cmp4 = icmp eq %struct.obj* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %7 = load i64, i64* %oflag.addr, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.6
  %8 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call8 = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), %struct.obj* %8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.6
  store %struct.__dirstream* null, %struct.__dirstream** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons12 = bitcast %union.anon* %storage_as11 to %struct.anon*
  %car13 = getelementptr inbounds %struct.anon, %struct.anon* %cons12, i32 0, i32 0
  %10 = load %struct.obj*, %struct.obj** %car13, align 8
  %11 = bitcast %struct.obj* %10 to %struct.__dirstream*
  store %struct.__dirstream* %11, %struct.__dirstream** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.9
  %12 = load %struct.__dirstream*, %struct.__dirstream** %retval
  ret %struct.__dirstream* %12
}

; Function Attrs: nounwind uwtable
define %struct.obj* @l_closedir(%struct.obj* %v) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %v.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %old_errno = alloca i64, align 8
  %d = alloca %struct.__dirstream*, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call1 = call %struct.__dirstream* @get_opendir(%struct.obj* %0, i64 1)
  store %struct.__dirstream* %call1, %struct.__dirstream** %d, align 8
  %call2 = call i32* @__errno_location() #10
  %1 = load i32, i32* %call2, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %old_errno, align 8
  %2 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* null, %struct.obj** %car, align 8
  %3 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %call3 = call i32 @closedir(%struct.__dirstream* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %old_errno, align 8
  %conv4 = trunc i64 %4 to i32
  %call5 = call %struct.obj* @llast_c_errmsg(i32 %conv4)
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %iflag, align 8
  %call7 = call i64 @no_interrupt(i64 %5)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind uwtable
define void @opendir_gc_free(%struct.obj* %v) #0 {
entry:
  %v.addr = alloca %struct.obj*, align 8
  %d = alloca %struct.__dirstream*, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.__dirstream* @get_opendir(%struct.obj* %0, i64 0)
  store %struct.__dirstream* %call, %struct.__dirstream** %d, align 8
  %tobool = icmp ne %struct.__dirstream* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %call1 = call i32 @closedir(%struct.__dirstream* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @l_readdir(%struct.obj* %v) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %v.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %namlen = alloca i64, align 8
  %d = alloca %struct.__dirstream*, align 8
  %r = alloca %struct.dirent*, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.__dirstream* @get_opendir(%struct.obj* %0, i64 1)
  store %struct.__dirstream* %call, %struct.__dirstream** %d, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %iflag, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %call2 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  store %struct.dirent* %call2, %struct.dirent** %r, align 8
  %2 = load i64, i64* %iflag, align 8
  %call3 = call i64 @no_interrupt(i64 %2)
  %3 = load %struct.dirent*, %struct.dirent** %r, align 8
  %tobool = icmp ne %struct.dirent* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.dirent*, %struct.dirent** %r, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %5 = load %struct.dirent*, %struct.dirent** %r, align 8
  %d_reclen = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 2
  %6 = load i16, i16* %d_reclen, align 2
  %conv = zext i16 %6 to i64
  %call4 = call i64 @safe_strlen(i8* %arraydecay, i64 %conv)
  store i64 %call4, i64* %namlen, align 8
  %7 = load i64, i64* %namlen, align 8
  %8 = load %struct.dirent*, %struct.dirent** %r, align 8
  %d_name5 = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name5, i32 0, i32 0
  %call7 = call %struct.obj* @strcons(i64 %7, i8* %arraydecay6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

declare i64 @safe_strlen(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @opendir_prin1(%struct.obj* %ptr, %struct.gen_printio* %f) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_printio*, align 8
  %buffer = alloca [256 x i8], align 16
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %call = call %struct.__dirstream* @get_opendir(%struct.obj* %0, i64 0)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct.__dirstream* %call) #4
  %1 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  call void @gput_st(%struct.gen_printio* %1, i8* %arraydecay2)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @gput_st(%struct.gen_printio*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @file_times(%struct.obj* %fname) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %st = alloca %struct.stat, align 8
  %iflag = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %call2 = call i32 @stat(i8* %call1, %struct.stat* %st) #4
  store i32 %call2, i32* %ret, align 4
  %1 = load i32, i32* %iflag, align 4
  %conv3 = sext i32 %1 to i64
  %call4 = call i64 @no_interrupt(i64 %conv3)
  %2 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 13
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %conv5 = sitofp i64 %3 to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec7 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %4 = load i64, i64* %tv_sec7, align 8
  %conv8 = sitofp i64 %4 to double
  %call9 = call %struct.obj* @flocons(double %conv8)
  %call10 = call %struct.obj* @cons(%struct.obj* %call9, %struct.obj* null)
  %call11 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* %call10)
  store %struct.obj* %call11, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @decode_st_moden(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %ret = alloca %struct.obj*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.obj* null, %struct.obj** %ret, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  %1 = load %struct.obj*, %struct.obj** %ret, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %1)
  store %struct.obj* %call1, %struct.obj** %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %mode.addr, align 4
  %and2 = and i32 %2, 1024
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  %3 = load %struct.obj*, %struct.obj** %ret, align 8
  %call6 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* %3)
  store %struct.obj* %call6, %struct.obj** %ret, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %4 = load i32, i32* %mode.addr, align 4
  %and8 = and i32 %4, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %call11 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0))
  %5 = load %struct.obj*, %struct.obj** %ret, align 8
  %call12 = call %struct.obj* @cons(%struct.obj* %call11, %struct.obj* %5)
  store %struct.obj* %call12, %struct.obj** %ret, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.7
  %6 = load i32, i32* %mode.addr, align 4
  %and14 = and i32 %6, 128
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %call17 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  %7 = load %struct.obj*, %struct.obj** %ret, align 8
  %call18 = call %struct.obj* @cons(%struct.obj* %call17, %struct.obj* %7)
  store %struct.obj* %call18, %struct.obj** %ret, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  %8 = load i32, i32* %mode.addr, align 4
  %and20 = and i32 %8, 64
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %call23 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  %9 = load %struct.obj*, %struct.obj** %ret, align 8
  %call24 = call %struct.obj* @cons(%struct.obj* %call23, %struct.obj* %9)
  store %struct.obj* %call24, %struct.obj** %ret, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %10 = load i32, i32* %mode.addr, align 4
  %and26 = and i32 %10, 32
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %call29 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  %11 = load %struct.obj*, %struct.obj** %ret, align 8
  %call30 = call %struct.obj* @cons(%struct.obj* %call29, %struct.obj* %11)
  store %struct.obj* %call30, %struct.obj** %ret, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %12 = load i32, i32* %mode.addr, align 4
  %and32 = and i32 %12, 16
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %call35 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  %13 = load %struct.obj*, %struct.obj** %ret, align 8
  %call36 = call %struct.obj* @cons(%struct.obj* %call35, %struct.obj* %13)
  store %struct.obj* %call36, %struct.obj** %ret, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %14 = load i32, i32* %mode.addr, align 4
  %and38 = and i32 %14, 8
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %call41 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %15 = load %struct.obj*, %struct.obj** %ret, align 8
  %call42 = call %struct.obj* @cons(%struct.obj* %call41, %struct.obj* %15)
  store %struct.obj* %call42, %struct.obj** %ret, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %16 = load i32, i32* %mode.addr, align 4
  %and44 = and i32 %16, 4
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %call47 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  %17 = load %struct.obj*, %struct.obj** %ret, align 8
  %call48 = call %struct.obj* @cons(%struct.obj* %call47, %struct.obj* %17)
  store %struct.obj* %call48, %struct.obj** %ret, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %18 = load i32, i32* %mode.addr, align 4
  %and50 = and i32 %18, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.49
  %call53 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %19 = load %struct.obj*, %struct.obj** %ret, align 8
  %call54 = call %struct.obj* @cons(%struct.obj* %call53, %struct.obj* %19)
  store %struct.obj* %call54, %struct.obj** %ret, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.49
  %20 = load i32, i32* %mode.addr, align 4
  %and56 = and i32 %20, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.55
  %call59 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0))
  %21 = load %struct.obj*, %struct.obj** %ret, align 8
  %call60 = call %struct.obj* @cons(%struct.obj* %call59, %struct.obj* %21)
  store %struct.obj* %call60, %struct.obj** %ret, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.55
  %22 = load i32, i32* %mode.addr, align 4
  %and62 = and i32 %22, 61440
  %cmp = icmp eq i32 %and62, 4096
  br i1 %cmp, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.61
  %call64 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  %23 = load %struct.obj*, %struct.obj** %ret, align 8
  %call65 = call %struct.obj* @cons(%struct.obj* %call64, %struct.obj* %23)
  store %struct.obj* %call65, %struct.obj** %ret, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.61
  %24 = load i32, i32* %mode.addr, align 4
  %and67 = and i32 %24, 61440
  %cmp68 = icmp eq i32 %and67, 16384
  br i1 %cmp68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.66
  %call70 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0))
  %25 = load %struct.obj*, %struct.obj** %ret, align 8
  %call71 = call %struct.obj* @cons(%struct.obj* %call70, %struct.obj* %25)
  store %struct.obj* %call71, %struct.obj** %ret, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.end.66
  %26 = load i32, i32* %mode.addr, align 4
  %and73 = and i32 %26, 61440
  %cmp74 = icmp eq i32 %and73, 8192
  br i1 %cmp74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.72
  %call76 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0))
  %27 = load %struct.obj*, %struct.obj** %ret, align 8
  %call77 = call %struct.obj* @cons(%struct.obj* %call76, %struct.obj* %27)
  store %struct.obj* %call77, %struct.obj** %ret, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.72
  %28 = load i32, i32* %mode.addr, align 4
  %and79 = and i32 %28, 61440
  %cmp80 = icmp eq i32 %and79, 24576
  br i1 %cmp80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.78
  %call82 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  %29 = load %struct.obj*, %struct.obj** %ret, align 8
  %call83 = call %struct.obj* @cons(%struct.obj* %call82, %struct.obj* %29)
  store %struct.obj* %call83, %struct.obj** %ret, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.78
  %30 = load i32, i32* %mode.addr, align 4
  %and85 = and i32 %30, 61440
  %cmp86 = icmp eq i32 %and85, 32768
  br i1 %cmp86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %call88 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0))
  %31 = load %struct.obj*, %struct.obj** %ret, align 8
  %call89 = call %struct.obj* @cons(%struct.obj* %call88, %struct.obj* %31)
  store %struct.obj* %call89, %struct.obj** %ret, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.end.84
  %32 = load i32, i32* %mode.addr, align 4
  %and91 = and i32 %32, 61440
  %cmp92 = icmp eq i32 %and91, 40960
  br i1 %cmp92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.90
  %call94 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  %33 = load %struct.obj*, %struct.obj** %ret, align 8
  %call95 = call %struct.obj* @cons(%struct.obj* %call94, %struct.obj* %33)
  store %struct.obj* %call95, %struct.obj** %ret, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.90
  %34 = load i32, i32* %mode.addr, align 4
  %and97 = and i32 %34, 61440
  %cmp98 = icmp eq i32 %and97, 49152
  br i1 %cmp98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.end.96
  %call100 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %35 = load %struct.obj*, %struct.obj** %ret, align 8
  %call101 = call %struct.obj* @cons(%struct.obj* %call100, %struct.obj* %35)
  store %struct.obj* %call101, %struct.obj** %ret, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.end.96
  %36 = load %struct.obj*, %struct.obj** %ret, align 8
  ret %struct.obj* %36
}

; Function Attrs: nounwind uwtable
define %struct.obj* @encode_st_mode(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call i32 (%struct.obj*, ...) @assemble_options(%struct.obj* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 2048, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 1, i8* null)
  %conv = sitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @decode_st_mode(%struct.obj* %value) #0 {
entry:
  %value.addr = alloca %struct.obj*, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  %call1 = call %struct.obj* @decode_st_moden(i32 %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @decode_stat(%struct.stat* %s) #0 {
entry:
  %s.addr = alloca %struct.stat*, align 8
  store %struct.stat* %s, %struct.stat** %s.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 0
  %1 = load i64, i64* %st_dev, align 8
  %conv = uitofp i64 %1 to double
  %call = call %struct.obj* @flocons(double %conv)
  %2 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %3 = load i64, i64* %st_ino, align 8
  %conv1 = uitofp i64 %3 to double
  %call2 = call %struct.obj* @flocons(double %conv1)
  %4 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4
  %call3 = call %struct.obj* @decode_st_moden(i32 %5)
  %6 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %7 = load i64, i64* %st_nlink, align 8
  %conv4 = uitofp i64 %7 to double
  %call5 = call %struct.obj* @flocons(double %conv4)
  %8 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %9 = load i32, i32* %st_uid, align 4
  %conv6 = uitofp i32 %9 to double
  %call7 = call %struct.obj* @flocons(double %conv6)
  %10 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 5
  %11 = load i32, i32* %st_gid, align 4
  %conv8 = uitofp i32 %11 to double
  %call9 = call %struct.obj* @flocons(double %conv8)
  %12 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_rdev = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 7
  %13 = load i64, i64* %st_rdev, align 8
  %conv10 = uitofp i64 %13 to double
  %call11 = call %struct.obj* @flocons(double %conv10)
  %14 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 8
  %15 = load i64, i64* %st_size, align 8
  %conv12 = sitofp i64 %15 to double
  %call13 = call %struct.obj* @flocons(double %conv12)
  %16 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %17 = load i64, i64* %tv_sec, align 8
  %conv14 = sitofp i64 %17 to double
  %call15 = call %struct.obj* @flocons(double %conv14)
  %18 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 12
  %tv_sec16 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %19 = load i64, i64* %tv_sec16, align 8
  %conv17 = sitofp i64 %19 to double
  %call18 = call %struct.obj* @flocons(double %conv17)
  %20 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 13
  %tv_sec19 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %21 = load i64, i64* %tv_sec19, align 8
  %conv20 = sitofp i64 %21 to double
  %call21 = call %struct.obj* @flocons(double %conv20)
  %22 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 9
  %23 = load i64, i64* %st_blksize, align 8
  %conv22 = sitofp i64 %23 to double
  %call23 = call %struct.obj* @flocons(double %conv22)
  %24 = load %struct.stat*, %struct.stat** %s.addr, align 8
  %st_blocks = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 10
  %25 = load i64, i64* %st_blocks, align 8
  %conv24 = sitofp i64 %25 to double
  %call25 = call %struct.obj* @flocons(double %conv24)
  %call26 = call %struct.obj* (i8*, ...) @symalist(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct.obj* %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), %struct.obj* %call2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), %struct.obj* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), %struct.obj* %call5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.obj* %call7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct.obj* %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), %struct.obj* %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), %struct.obj* %call13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), %struct.obj* %call15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), %struct.obj* %call18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), %struct.obj* %call21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), %struct.obj* %call23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct.obj* %call25, i8* null)
  ret %struct.obj* %call26
}

; Function Attrs: nounwind uwtable
define %struct.obj* @g_stat(%struct.obj* %fname, i32 (i8*, %struct.stat*)* %fcn) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %fcn.addr = alloca i32 (i8*, %struct.stat*)*, align 8
  %st = alloca %struct.stat, align 8
  %iflag = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store i32 (i8*, %struct.stat*)* %fcn, i32 (i8*, %struct.stat*)** %fcn.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 144, i32 8, i1 false)
  %1 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %fcn.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  %call2 = call i32 %1(i8* %call1, %struct.stat* %st)
  store i32 %call2, i32* %ret, align 4
  %3 = load i32, i32* %iflag, align 4
  %conv3 = sext i32 %3 to i64
  %call4 = call i64 @no_interrupt(i64 %conv3)
  %4 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call5 = call %struct.obj* @decode_stat(%struct.stat* %st)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @l_stat(%struct.obj* %fname) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call %struct.obj* @g_stat(%struct.obj* %0, i32 (i8*, %struct.stat*)* @stat)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @l_fstat(%struct.obj* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.obj*, align 8
  %st = alloca %struct.stat, align 8
  %iflag = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.obj* %f, %struct.obj** %f.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* null)
  %call2 = call i32 @fileno(%struct._IO_FILE* %call1) #4
  %call3 = call i32 @fstat(i32 %call2, %struct.stat* %st) #4
  store i32 %call3, i32* %ret, align 4
  %1 = load i32, i32* %iflag, align 4
  %conv4 = sext i32 %1 to i64
  %call5 = call i64 @no_interrupt(i64 %conv4)
  %2 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call %struct.obj* @decode_stat(%struct.stat* %st)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare %struct._IO_FILE* @get_c_file(%struct.obj*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @l_lstat(%struct.obj* %fname) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call %struct.obj* @g_stat(%struct.obj* %0, i32 (i8*, %struct.stat*)* @lstat)
  ret %struct.obj* %call
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @l_chmod(%struct.obj* %path, %struct.obj* %mode) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %path.addr = alloca %struct.obj*, align 8
  %mode.addr = alloca %struct.obj*, align 8
  store %struct.obj* %path, %struct.obj** %path.addr, align 8
  store %struct.obj* %mode, %struct.obj** %mode.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %path.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %mode.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call1 to i32
  %call2 = call i32 @chmod(i8* %call, i32 %conv) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), %struct.obj* %call3)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lutime(%struct.obj* %fname, %struct.obj* %mod, %struct.obj* %ac) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %mod.addr = alloca %struct.obj*, align 8
  %ac.addr = alloca %struct.obj*, align 8
  %x = alloca %struct.utimbuf, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %mod, %struct.obj** %mod.addr, align 8
  store %struct.obj* %ac, %struct.obj** %ac.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %mod.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %x, i32 0, i32 1
  store i64 %call, i64* %modtime, align 8
  %1 = load %struct.obj*, %struct.obj** %ac.addr, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %ac.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @time(i64* null) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ]
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %x, i32 0, i32 0
  store i64 %cond, i64* %actime, align 8
  %3 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call3 = call i8* @get_c_string(%struct.obj* %3)
  %call4 = call i32 @utime(i8* %call3, %struct.utimbuf* %x) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call5 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), %struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %4
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.utimbuf*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lfchmod(%struct.obj* %file, %struct.obj* %mode) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %file.addr = alloca %struct.obj*, align 8
  %mode.addr = alloca %struct.obj*, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  store %struct.obj* %mode, %struct.obj** %mode.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* null)
  %call1 = call i32 @fileno(%struct._IO_FILE* %call) #4
  %1 = load %struct.obj*, %struct.obj** %mode.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @fchmod(i32 %call1, i32 %conv) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @encode_open_flags(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call i32 (%struct.obj*, ...) @assemble_options(%struct.obj* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 2048, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 128, i8* null)
  %conv = sitofp i32 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define i32 @get_fd(%struct.obj* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 17
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %3, %struct._IO_FILE* null)
  %call3 = call i32 @fileno(%struct._IO_FILE* %call) #4
  store i32 %call3, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %call4 = call i64 @get_c_long(%struct.obj* %4)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @gsetlk(i32 %op, %struct.obj* %lfd, %struct.obj* %ltype, %struct.obj* %whence, %struct.obj* %start, %struct.obj* %len) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %op.addr = alloca i32, align 4
  %lfd.addr = alloca %struct.obj*, align 8
  %ltype.addr = alloca %struct.obj*, align 8
  %whence.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %len.addr = alloca %struct.obj*, align 8
  %f = alloca %struct.flock, align 8
  %fd = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  store %struct.obj* %lfd, %struct.obj** %lfd.addr, align 8
  store %struct.obj* %ltype, %struct.obj** %ltype.addr, align 8
  store %struct.obj* %whence, %struct.obj** %whence.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %len, %struct.obj** %len.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lfd.addr, align 8
  %call = call i32 @get_fd(%struct.obj* %0)
  store i32 %call, i32* %fd, align 4
  %1 = load %struct.obj*, %struct.obj** %ltype.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call1 to i16
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 0
  store i16 %conv, i16* %l_type, align 2
  %2 = load %struct.obj*, %struct.obj** %whence.addr, align 8
  %cmp = icmp ne %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %whence.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ 0, %cond.false ]
  %conv4 = trunc i64 %cond to i16
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 1
  store i16 %conv4, i16* %l_whence, align 2
  %4 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %cmp5 = icmp ne %struct.obj* %4, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %call8 = call i64 @get_c_long(%struct.obj* %5)
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i64 [ %call8, %cond.true.7 ], [ 0, %cond.false.9 ]
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 2
  store i64 %cond11, i64* %l_start, align 8
  %6 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %cmp12 = icmp ne %struct.obj* %6, null
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end.10
  %7 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %call15 = call i64 @get_c_long(%struct.obj* %7)
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end.10
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i64 [ %call15, %cond.true.14 ], [ 0, %cond.false.16 ]
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 3
  store i64 %cond18, i64* %l_len, align 8
  %l_pid = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 4
  store i32 0, i32* %l_pid, align 4
  %8 = load i32, i32* %fd, align 4
  %9 = load i32, i32* %op.addr, align 4
  %call19 = call i32 (i32, i32, ...) @fcntl(i32 %8, i32 %9, %struct.flock* %f)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.17
  %call22 = call %struct.obj* @llast_c_errmsg(i32 -1)
  store %struct.obj* %call22, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end.17
  %10 = load i32, i32* %op.addr, align 4
  %cmp23 = icmp ne i32 %10, 5
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else.26:                                       ; preds = %if.else
  %l_type27 = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 0
  %11 = load i16, i16* %l_type27, align 2
  %conv28 = sext i16 %11 to i32
  %cmp29 = icmp eq i32 %conv28, 2
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.26
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else.32:                                       ; preds = %if.else.26
  %l_type33 = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 0
  %12 = load i16, i16* %l_type33, align 2
  %conv34 = sitofp i16 %12 to double
  %call35 = call %struct.obj* @flocons(double %conv34)
  %l_pid36 = getelementptr inbounds %struct.flock, %struct.flock* %f, i32 0, i32 4
  %13 = load i32, i32* %l_pid36, align 4
  %conv37 = sitofp i32 %13 to double
  %call38 = call %struct.obj* @flocons(double %conv37)
  %call39 = call %struct.obj* (i64, ...) @listn(i64 2, %struct.obj* %call35, %struct.obj* %call38)
  store %struct.obj* %call39, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.32, %if.then.31, %if.then.25, %if.then
  %14 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %14
}

declare i32 @fcntl(i32, i32, ...) #1

declare %struct.obj* @listn(i64, ...) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lF_SETLK(%struct.obj* %fd, %struct.obj* %ltype, %struct.obj* %whence, %struct.obj* %start, %struct.obj* %len) #0 {
entry:
  %fd.addr = alloca %struct.obj*, align 8
  %ltype.addr = alloca %struct.obj*, align 8
  %whence.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %len.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fd, %struct.obj** %fd.addr, align 8
  store %struct.obj* %ltype, %struct.obj** %ltype.addr, align 8
  store %struct.obj* %whence, %struct.obj** %whence.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %len, %struct.obj** %len.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fd.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %ltype.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %whence.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %call = call %struct.obj* @gsetlk(i32 6, %struct.obj* %0, %struct.obj* %1, %struct.obj* %2, %struct.obj* %3, %struct.obj* %4)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lF_SETLKW(%struct.obj* %fd, %struct.obj* %ltype, %struct.obj* %whence, %struct.obj* %start, %struct.obj* %len) #0 {
entry:
  %fd.addr = alloca %struct.obj*, align 8
  %ltype.addr = alloca %struct.obj*, align 8
  %whence.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %len.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fd, %struct.obj** %fd.addr, align 8
  store %struct.obj* %ltype, %struct.obj** %ltype.addr, align 8
  store %struct.obj* %whence, %struct.obj** %whence.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %len, %struct.obj** %len.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fd.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %ltype.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %whence.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %call = call %struct.obj* @gsetlk(i32 7, %struct.obj* %0, %struct.obj* %1, %struct.obj* %2, %struct.obj* %3, %struct.obj* %4)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lF_GETLK(%struct.obj* %fd, %struct.obj* %ltype, %struct.obj* %whence, %struct.obj* %start, %struct.obj* %len) #0 {
entry:
  %fd.addr = alloca %struct.obj*, align 8
  %ltype.addr = alloca %struct.obj*, align 8
  %whence.addr = alloca %struct.obj*, align 8
  %start.addr = alloca %struct.obj*, align 8
  %len.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fd, %struct.obj** %fd.addr, align 8
  store %struct.obj* %ltype, %struct.obj** %ltype.addr, align 8
  store %struct.obj* %whence, %struct.obj** %whence.addr, align 8
  store %struct.obj* %start, %struct.obj** %start.addr, align 8
  store %struct.obj* %len, %struct.obj** %len.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fd.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %ltype.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %whence.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %start.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %len.addr, align 8
  %call = call %struct.obj* @gsetlk(i32 5, %struct.obj* %0, %struct.obj* %1, %struct.obj* %2, %struct.obj* %3, %struct.obj* %4)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @delete_file(%struct.obj* %fname) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %iflag = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %iflag, align 4
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %call2 = call i32 @unlink(i8* %call1) #4
  store i32 %call2, i32* %ret, align 4
  %1 = load i32, i32* %iflag, align 4
  %conv3 = sext i32 %1 to i64
  %call4 = call i64 @no_interrupt(i64 %conv3)
  %2 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i8* @last_c_errmsg(i32 -1)
  %call6 = call %struct.obj* @strcons(i64 -1, i8* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

declare i8* @last_c_errmsg(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @utime2str(%struct.obj* %u) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %u.addr = alloca %struct.obj*, align 8
  %bt = alloca i64, align 8
  %btm = alloca %struct.tm*, align 8
  %sbuff = alloca [100 x i8], align 16
  store %struct.obj* %u, %struct.obj** %u.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %u.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  store i64 %call, i64* %bt, align 8
  %call1 = call %struct.tm* @localtime(i64* %bt) #4
  store %struct.tm* %call1, %struct.tm** %btm, align 8
  %tobool = icmp ne %struct.tm* %call1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %sbuff, i32 0, i32 0
  %1 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %2 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 %2, 1900
  %3 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %4 = load i32, i32* %tm_mon, align 4
  %add2 = add nsw i32 %4, 1
  %5 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %6 = load i32, i32* %tm_mday, align 4
  %7 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  %8 = load i32, i32* %tm_hour, align 4
  %9 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %10 = load i32, i32* %tm_min, align 4
  %11 = load %struct.tm*, %struct.tm** %btm, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %12 = load i32, i32* %tm_sec, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.78, i32 0, i32 0), i32 %add, i32 %add2, i32 %6, i32 %8, i32 %10, i32 %12, i32 0) #4
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %sbuff, i32 0, i32 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #8
  %arraydecay6 = getelementptr inbounds [100 x i8], [100 x i8]* %sbuff, i32 0, i32 0
  %call7 = call %struct.obj* @strcons(i64 %call5, i8* %arraydecay6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetenv(%struct.obj* %var) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %var.addr = alloca %struct.obj*, align 8
  %str = alloca i8*, align 8
  store %struct.obj* %var, %struct.obj** %var.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %call1 = call i8* @getenv(i8* %call) #4
  store i8* %call1, i8** %str, align 8
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %call2 = call i64 @strlen(i8* %1) #8
  %2 = load i8*, i8** %str, align 8
  %call3 = call %struct.obj* @strcons(i64 %call2, i8* %2)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @unix_time() #0 {
entry:
  %call = call i64 @time(i64* null) #4
  %conv = sitofp i64 %call to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @unix_ctime(%struct.obj* %value) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %b = alloca i64, align 8
  %buff = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* %b, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @time(i64* %b) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i8* @ctime(i64* %b) #4
  store i8* %call2, i8** %buff, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.then.3, label %if.else.10

if.then.3:                                        ; preds = %if.end
  %2 = load i8*, i8** %buff, align 8
  %call4 = call i8* @strchr(i8* %2, i32 10) #8
  store i8* %call4, i8** %p, align 8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %3 = load i8*, i8** %p, align 8
  store i8 0, i8* %3, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  %4 = load i8*, i8** %buff, align 8
  %call8 = call i64 @strlen(i8* %4) #8
  %5 = load i8*, i8** %buff, align 8
  %call9 = call %struct.obj* @strcons(i64 %call8, i8* %5)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

if.else.10:                                       ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.end.7
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @http_date(%struct.obj* %value) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %b = alloca i64, align 8
  %buff = alloca [256 x i8], align 16
  %t = alloca %struct.tm*, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* %b, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @time(i64* %b) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call %struct.tm* @gmtime(i64* %b) #4
  store %struct.tm* %call2, %struct.tm** %t, align 8
  %tobool = icmp ne %struct.tm* %call2, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i32 0
  %2 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 6
  %3 = load i32, i32* %tm_wday, align 4
  %mul = mul nsw i32 %3, 4
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [28 x i8], [28 x i8]* @.str.80, i32 0, i64 %idxprom
  %4 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4
  %6 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %7 = load i32, i32* %tm_mon, align 4
  %mul5 = mul nsw i32 %7, 4
  %idxprom6 = sext i32 %mul5 to i64
  %arrayidx7 = getelementptr inbounds [48 x i8], [48 x i8]* @.str.81, i32 0, i64 %idxprom6
  %8 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %9 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 %9, 1900
  %10 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %11 = load i32, i32* %tm_hour, align 4
  %12 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %13 = load i32, i32* %tm_min, align 4
  %14 = load %struct.tm*, %struct.tm** %t, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %15 = load i32, i32* %tm_sec, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), i8* %arrayidx, i32 %5, i8* %arrayidx7, i32 %add, i32 %11, i32 %13, i32 %15) #4
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #8
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i32 0
  %call12 = call %struct.obj* @strcons(i64 %call10, i8* %arraydecay11)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lsleep(%struct.obj* %ns) #0 {
entry:
  %ns.addr = alloca %struct.obj*, align 8
  %val = alloca double, align 8
  store %struct.obj* %ns, %struct.obj** %ns.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ns.addr, align 8
  %call = call double @get_c_double(%struct.obj* %0)
  store double %call, double* %val, align 8
  %1 = load double, double* %val, align 8
  %mul = fmul double %1, 1.000000e+06
  %conv = fptoui double %mul to i32
  %call1 = call i32 @usleep(i32 %conv)
  ret %struct.obj* null
}

declare double @get_c_double(%struct.obj*) #1

declare i32 @usleep(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @url_encode(%struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %spaces = alloca i32, align 4
  %specials = alloca i32, align 4
  %regulars = alloca i32, align 4
  %c = alloca i32, align 4
  %str = alloca i8*, align 8
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  %out = alloca %struct.obj*, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  store i32 0, i32* %spaces, align 4
  store i32 0, i32* %specials, align 4
  store i32 0, i32* %regulars, align 4
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* %spaces, align 4
  store i32 0, i32* %specials, align 4
  store i32 0, i32* %regulars, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %spaces, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %spaces, align 4
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %c, align 4
  %idxprom = sext i32 %6 to i64
  %call2 = call i16** @__ctype_b_loc() #10
  %7 = load i16*, i16** %call2, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %8 to i32
  %and = and i32 %conv3, 8
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.else.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load i32, i32* %c, align 4
  %call5 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 %9) #8
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.else.9, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %specials, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, i32* %specials, align 4
  br label %if.end

if.else.9:                                        ; preds = %lor.lhs.false, %if.else
  %11 = load i32, i32* %regulars, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %regulars, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %spaces, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.end
  %14 = load i32, i32* %specials, align 4
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %15 = load %struct.obj*, %struct.obj** %in.addr, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %for.end
  %16 = load i32, i32* %spaces, align 4
  %17 = load i32, i32* %regulars, align 4
  %add = add nsw i32 %16, %17
  %18 = load i32, i32* %specials, align 4
  %mul = mul nsw i32 %18, 3
  %add18 = add nsw i32 %add, %mul
  %conv19 = sext i32 %add18 to i64
  %call20 = call %struct.obj* @strcons(i64 %conv19, i8* null)
  store %struct.obj* %call20, %struct.obj** %out, align 8
  %19 = load i8*, i8** %str, align 8
  store i8* %19, i8** %p, align 8
  %20 = load %struct.obj*, %struct.obj** %out, align 8
  %call21 = call i8* @get_c_string(%struct.obj* %20)
  store i8* %call21, i8** %r, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.48, %if.end.17
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv23 = sext i8 %22 to i32
  store i32 %conv23, i32* %c, align 4
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %for.cond.22
  %23 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %23, 32
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %for.body.25
  %24 = load i8*, i8** %r, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr29, i8** %r, align 8
  store i8 43, i8* %24, align 1
  br label %if.end.47

if.else.30:                                       ; preds = %for.body.25
  %25 = load i32, i32* %c, align 4
  %idxprom31 = sext i32 %25 to i64
  %call32 = call i16** @__ctype_b_loc() #10
  %26 = load i16*, i16** %call32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %26, i64 %idxprom31
  %27 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %27 to i32
  %and35 = and i32 %conv34, 8
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.else.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.else.30
  %28 = load i32, i32* %c, align 4
  %call38 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 %28) #8
  %tobool39 = icmp ne i8* %call38, null
  br i1 %tobool39, label %if.else.43, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.37
  %29 = load i8*, i8** %r, align 8
  %30 = load i32, i32* %c, align 4
  %and41 = and i32 %30, 255
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %and41) #4
  %31 = load i8*, i8** %r, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %add.ptr, i8** %r, align 8
  br label %if.end.46

if.else.43:                                       ; preds = %lor.lhs.false.37, %if.else.30
  %32 = load i32, i32* %c, align 4
  %conv44 = trunc i32 %32 to i8
  %33 = load i8*, i8** %r, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr45, i8** %r, align 8
  store i8 %conv44, i8* %33, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.28
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8
  br label %for.cond.22

for.end.50:                                       ; preds = %for.cond.22
  %35 = load i8*, i8** %r, align 8
  store i8 0, i8* %35, align 1
  %36 = load %struct.obj*, %struct.obj** %out, align 8
  store %struct.obj* %36, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end.50, %if.then.16
  %37 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %37
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define %struct.obj* @url_decode(%struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %pluses = alloca i32, align 4
  %specials = alloca i32, align 4
  %regulars = alloca i32, align 4
  %c = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca i8*, align 8
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  %out = alloca %struct.obj*, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  store i32 0, i32* %pluses, align 4
  store i32 0, i32* %specials, align 4
  store i32 0, i32* %regulars, align 4
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* %pluses, align 4
  store i32 0, i32* %specials, align 4
  store i32 0, i32* %regulars, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %pluses, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %pluses, align 4
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %6, 37
  br i1 %cmp2, label %if.then.4, label %if.else.21

if.then.4:                                        ; preds = %if.else
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %8 to i32
  %idxprom = sext i32 %conv5 to i64
  %call6 = call i16** @__ctype_b_loc() #10
  %9 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %10 to i32
  %and = and i32 %conv8, 4096
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.then.4
  %11 = load i8*, i8** %p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %call13 = call i16** @__ctype_b_loc() #10
  %13 = load i16*, i16** %call13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 %idxprom12
  %14 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %and16 = and i32 %conv15, 4096
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %specials, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, i32* %specials, align 4
  br label %if.end

if.else.20:                                       ; preds = %land.lhs.true, %if.then.4
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %if.then.18
  br label %if.end.23

if.else.21:                                       ; preds = %if.else
  %16 = load i32, i32* %regulars, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, i32* %regulars, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %pluses, align 4
  %cmp25 = icmp eq i32 %18, 0
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %for.end
  %19 = load i32, i32* %specials, align 4
  %cmp28 = icmp eq i32 %19, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  %20 = load %struct.obj*, %struct.obj** %in.addr, align 8
  store %struct.obj* %20, %struct.obj** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.27, %for.end
  %21 = load i32, i32* %regulars, align 4
  %22 = load i32, i32* %pluses, align 4
  %add = add nsw i32 %21, %22
  %23 = load i32, i32* %specials, align 4
  %add32 = add nsw i32 %add, %23
  %conv33 = sext i32 %add32 to i64
  %call34 = call %struct.obj* @strcons(i64 %conv33, i8* null)
  store %struct.obj* %call34, %struct.obj** %out, align 8
  %24 = load i8*, i8** %str, align 8
  store i8* %24, i8** %p, align 8
  %25 = load %struct.obj*, %struct.obj** %out, align 8
  %call35 = call i8* @get_c_string(%struct.obj* %25)
  store i8* %call35, i8** %r, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.82, %if.end.31
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv37 = sext i8 %27 to i32
  store i32 %conv37, i32* %c, align 4
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %for.body.39, label %for.end.84

for.body.39:                                      ; preds = %for.cond.36
  %28 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %28, 43
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %for.body.39
  %29 = load i8*, i8** %r, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr43, i8** %r, align 8
  store i8 32, i8* %29, align 1
  br label %if.end.81

if.else.44:                                       ; preds = %for.body.39
  %30 = load i32, i32* %c, align 4
  %cmp45 = icmp eq i32 %30, 37
  br i1 %cmp45, label %if.then.47, label %if.else.77

if.then.47:                                       ; preds = %if.else.44
  %31 = load i8*, i8** %r, align 8
  store i8 0, i8* %31, align 1
  store i32 1, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.73, %if.then.47
  %32 = load i32, i32* %j, align 4
  %cmp49 = icmp slt i32 %32, 3
  br i1 %cmp49, label %for.body.51, label %for.end.75

for.body.51:                                      ; preds = %for.cond.48
  %33 = load i8*, i8** %r, align 8
  %34 = load i8, i8* %33, align 1
  %conv52 = sext i8 %34 to i32
  %mul = mul nsw i32 %conv52, 16
  %35 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %35 to i64
  %36 = load i8*, i8** %p, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %36, i64 %idxprom53
  %37 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %37 to i32
  %idxprom56 = sext i32 %conv55 to i64
  %call57 = call i16** @__ctype_b_loc() #10
  %38 = load i16*, i16** %call57, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %38, i64 %idxprom56
  %39 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %39 to i32
  %and60 = and i32 %conv59, 2048
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.51
  %40 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %40 to i64
  %41 = load i8*, i8** %p, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %41, i64 %idxprom62
  %42 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %42 to i32
  %sub = sub nsw i32 %conv64, 48
  br label %cond.end

cond.false:                                       ; preds = %for.body.51
  %43 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %43 to i64
  %44 = load i8*, i8** %p, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %45 to i32
  %call68 = call i32 @toupper(i32 %conv67) #4
  %sub69 = sub nsw i32 %call68, 65
  %add70 = add nsw i32 %sub69, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add70, %cond.false ]
  %add71 = add nsw i32 %mul, %cond
  %conv72 = trunc i32 %add71 to i8
  %46 = load i8*, i8** %r, align 8
  store i8 %conv72, i8* %46, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %cond.end
  %47 = load i32, i32* %j, align 4
  %inc74 = add nsw i32 %47, 1
  store i32 %inc74, i32* %j, align 4
  br label %for.cond.48

for.end.75:                                       ; preds = %for.cond.48
  %48 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %49 = load i8*, i8** %r, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr76, i8** %r, align 8
  br label %if.end.80

if.else.77:                                       ; preds = %if.else.44
  %50 = load i32, i32* %c, align 4
  %conv78 = trunc i32 %50 to i8
  %51 = load i8*, i8** %r, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr79, i8** %r, align 8
  store i8 %conv78, i8* %51, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %for.end.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.42
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %52 = load i8*, i8** %p, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr83, i8** %p, align 8
  br label %for.cond.36

for.end.84:                                       ; preds = %for.cond.36
  %53 = load i8*, i8** %r, align 8
  store i8 0, i8* %53, align 1
  %54 = load %struct.obj*, %struct.obj** %out, align 8
  store %struct.obj* %54, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end.84, %if.then.30, %if.else.20
  %55 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %55
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @html_encode(%struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %str = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %out = alloca %struct.obj*, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %in.addr, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %4 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %4)
  store i8* %call, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call1 = call i64 @strlen(i8* %5) #8
  store i64 %call1, i64* %n, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %6 = load i64, i64* %j, align 8
  %7 = load i64, i64* %n, align 8
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %j, align 8
  %9 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %10 to i32
  switch i32 %conv4, label %sw.default.10 [
    i32 62, label %sw.bb.5
    i32 60, label %sw.bb.5
    i32 38, label %sw.bb.6
    i32 34, label %sw.bb.8
  ]

sw.bb.5:                                          ; preds = %for.body, %for.body
  %11 = load i64, i64* %m, align 8
  %add = add nsw i64 %11, 4
  store i64 %add, i64* %m, align 8
  br label %sw.epilog.11

sw.bb.6:                                          ; preds = %for.body
  %12 = load i64, i64* %m, align 8
  %add7 = add nsw i64 %12, 5
  store i64 %add7, i64* %m, align 8
  br label %sw.epilog.11

sw.bb.8:                                          ; preds = %for.body
  %13 = load i64, i64* %m, align 8
  %add9 = add nsw i64 %13, 6
  store i64 %add9, i64* %m, align 8
  br label %sw.epilog.11

sw.default.10:                                    ; preds = %for.body
  %14 = load i64, i64* %m, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %m, align 8
  br label %sw.epilog.11

sw.epilog.11:                                     ; preds = %sw.default.10, %sw.bb.8, %sw.bb.6, %sw.bb.5
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.11
  %15 = load i64, i64* %j, align 8
  %inc12 = add nsw i64 %15, 1
  store i64 %inc12, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %n, align 8
  %17 = load i64, i64* %m, align 8
  %cmp13 = icmp eq i64 %16, %17
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load %struct.obj*, %struct.obj** %in.addr, align 8
  store %struct.obj* %18, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %19 = load i64, i64* %m, align 8
  %call15 = call %struct.obj* @strcons(i64 %19, i8* null)
  store %struct.obj* %call15, %struct.obj** %out, align 8
  store i64 0, i64* %j, align 8
  %20 = load %struct.obj*, %struct.obj** %out, align 8
  %call16 = call i8* @get_c_string(%struct.obj* %20)
  store i8* %call16, i8** %ptr, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.41, %if.end
  %21 = load i64, i64* %j, align 8
  %22 = load i64, i64* %n, align 8
  %cmp18 = icmp slt i64 %21, %22
  br i1 %cmp18, label %for.body.20, label %for.end.43

for.body.20:                                      ; preds = %for.cond.17
  %23 = load i64, i64* %j, align 8
  %24 = load i8*, i8** %str, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %25 to i32
  switch i32 %conv22, label %sw.default.38 [
    i32 62, label %sw.bb.23
    i32 60, label %sw.bb.26
    i32 38, label %sw.bb.30
    i32 34, label %sw.bb.34
  ]

sw.bb.23:                                         ; preds = %for.body.20
  %26 = load i8*, i8** %ptr, align 8
  %call24 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0)) #4
  %27 = load i8*, i8** %ptr, align 8
  %call25 = call i64 @strlen(i8* %27) #8
  %28 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %call25
  store i8* %add.ptr, i8** %ptr, align 8
  br label %sw.epilog.40

sw.bb.26:                                         ; preds = %for.body.20
  %29 = load i8*, i8** %ptr, align 8
  %call27 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0)) #4
  %30 = load i8*, i8** %ptr, align 8
  %call28 = call i64 @strlen(i8* %30) #8
  %31 = load i8*, i8** %ptr, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %31, i64 %call28
  store i8* %add.ptr29, i8** %ptr, align 8
  br label %sw.epilog.40

sw.bb.30:                                         ; preds = %for.body.20
  %32 = load i8*, i8** %ptr, align 8
  %call31 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #4
  %33 = load i8*, i8** %ptr, align 8
  %call32 = call i64 @strlen(i8* %33) #8
  %34 = load i8*, i8** %ptr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %34, i64 %call32
  store i8* %add.ptr33, i8** %ptr, align 8
  br label %sw.epilog.40

sw.bb.34:                                         ; preds = %for.body.20
  %35 = load i8*, i8** %ptr, align 8
  %call35 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0)) #4
  %36 = load i8*, i8** %ptr, align 8
  %call36 = call i64 @strlen(i8* %36) #8
  %37 = load i8*, i8** %ptr, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %37, i64 %call36
  store i8* %add.ptr37, i8** %ptr, align 8
  br label %sw.epilog.40

sw.default.38:                                    ; preds = %for.body.20
  %38 = load i64, i64* %j, align 8
  %39 = load i8*, i8** %str, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx39, align 1
  %41 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %40, i8* %41, align 1
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %sw.default.38, %sw.bb.34, %sw.bb.30, %sw.bb.26, %sw.bb.23
  br label %for.inc.41

for.inc.41:                                       ; preds = %sw.epilog.40
  %42 = load i64, i64* %j, align 8
  %inc42 = add nsw i64 %42, 1
  store i64 %inc42, i64* %j, align 8
  br label %for.cond.17

for.end.43:                                       ; preds = %for.cond.17
  %43 = load %struct.obj*, %struct.obj** %out, align 8
  store %struct.obj* %43, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end.43, %if.then, %sw.default
  %44 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %44
}

; Function Attrs: nounwind uwtable
define %struct.obj* @html_decode(%struct.obj* %in) #0 {
entry:
  %in.addr = alloca %struct.obj*, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lgets(%struct.obj* %file, %struct.obj* %buffn) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %file.addr = alloca %struct.obj*, align 8
  %buffn.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %iflag = alloca i32, align 4
  %n = alloca i64, align 8
  %buffer = alloca [2048 x i8], align 16
  %ptr = alloca i8*, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  store %struct.obj* %buffn, %struct.obj** %buffn.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %buffn.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 2048, i64* %n, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %buffn.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %3)
  store i64 %call1, i64* %n, align 8
  %cmp2 = icmp slt i64 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.obj*, %struct.obj** %buffn.addr, align 8
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), %struct.obj* %4)
  br label %if.end.11

if.else.5:                                        ; preds = %if.else
  %5 = load i64, i64* %n, align 8
  %cmp6 = icmp ugt i64 %5, 2048
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else.5
  %6 = load %struct.obj*, %struct.obj** %buffn.addr, align 8
  %call8 = call %struct.obj* @flocons(double 2.048000e+03)
  %call9 = call %struct.obj* (i64, ...) @listn(i64 2, %struct.obj* %6, %struct.obj* %call8)
  %call10 = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i32 0, i32 0), %struct.obj* %call9)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %call13 = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call13 to i32
  store i32 %conv, i32* %iflag, align 4
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i32 0
  %7 = load i64, i64* %n, align 8
  %conv14 = trunc i64 %7 to i32
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i8* @fgets(i8* %arraydecay, i32 %conv14, %struct._IO_FILE* %8)
  store i8* %call15, i8** %ptr, align 8
  %tobool = icmp ne i8* %call15, null
  br i1 %tobool, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.12
  %9 = load i32, i32* %iflag, align 4
  %conv17 = sext i32 %9 to i64
  %call18 = call i64 @no_interrupt(i64 %conv17)
  %arraydecay19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i32 0
  %call20 = call i64 @strlen(i8* %arraydecay19) #8
  %arraydecay21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i32 0
  %call22 = call %struct.obj* @strcons(i64 %call20, i8* %arraydecay21)
  store %struct.obj* %call22, %struct.obj** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.12
  %10 = load i32, i32* %iflag, align 4
  %conv24 = sext i32 %10 to i64
  %call25 = call i64 @no_interrupt(i64 %conv24)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.16
  %11 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %11
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @readline(%struct.obj* %file) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %file.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %start = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %call = call %struct.obj* @lgets(%struct.obj* %0, %struct.obj* null)
  store %struct.obj* %call, %struct.obj** %result, align 8
  %1 = load %struct.obj*, %struct.obj** %result, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %result, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  store i8* %call1, i8** %start, align 8
  %3 = load i8*, i8** %start, align 8
  %call2 = call i8* @strchr(i8* %3, i32 10) #8
  store i8* %call2, i8** %ptr, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load %struct.obj*, %struct.obj** %result, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %dim, align 8
  %8 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %9, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %10 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %10
}

; Function Attrs: nounwind uwtable
define %struct.obj* @l_chown(%struct.obj* %path, %struct.obj* %uid, %struct.obj* %gid) #0 {
entry:
  %path.addr = alloca %struct.obj*, align 8
  %uid.addr = alloca %struct.obj*, align 8
  %gid.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %path, %struct.obj** %path.addr, align 8
  store %struct.obj* %uid, %struct.obj** %uid.addr, align 8
  store %struct.obj* %gid, %struct.obj** %gid.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %path.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %uid.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call2 to i32
  %2 = load %struct.obj*, %struct.obj** %gid.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %2)
  %conv4 = trunc i64 %call3 to i32
  %call5 = call i32 @chown(i8* %call1, i32 %conv, i32 %conv4) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %path.addr, align 8
  %call6 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call7 = call %struct.obj* @cons(%struct.obj* %3, %struct.obj* %call6)
  %call8 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), %struct.obj* %call7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %iflag, align 8
  %call9 = call i64 @no_interrupt(i64 %4)
  ret %struct.obj* null
}

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @popen_l(%struct.obj* %name, %struct.obj* %how) #0 {
entry:
  %name.addr = alloca %struct.obj*, align 8
  %how.addr = alloca %struct.obj*, align 8
  store %struct.obj* %name, %struct.obj** %name.addr, align 8
  store %struct.obj* %how, %struct.obj** %how.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), %cond.true ], [ %call1, %cond.false ]
  %call2 = call %struct.obj* @fopen_cg(%struct._IO_FILE* (i8*, i8*)* @popen, i8* %call, i8* %cond)
  ret %struct.obj* %call2
}

declare %struct.obj* @fopen_cg(%struct._IO_FILE* (i8*, i8*)*, i8*, i8*) #1

declare %struct._IO_FILE* @popen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @pclose_l(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %iflag = alloca i64, align 8
  %retval2 = alloca i32, align 4
  %xerrno = alloca i32, align 4
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %iflag, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @pclose(%struct._IO_FILE* %1)
  store i32 %call3, i32* %retval2, align 4
  %call4 = call i32* @__errno_location() #10
  %2 = load i32, i32* %call4, align 4
  store i32 %2, i32* %xerrno, align 4
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f5 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %f5, align 8
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %c_file7 = bitcast %union.anon* %storage_as6 to %struct.anon.17*
  %name = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file7, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  call void @free(i8* %5) #4
  %6 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %c_file9 = bitcast %union.anon* %storage_as8 to %struct.anon.17*
  %name10 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file9, i32 0, i32 1
  store i8* null, i8** %name10, align 8
  %7 = load i64, i64* %iflag, align 8
  %call11 = call i64 @no_interrupt(i64 %7)
  %8 = load i32, i32* %retval2, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %xerrno, align 4
  %call12 = call %struct.obj* @llast_c_errmsg(i32 %9)
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), %struct.obj* %call12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %retval2, align 4
  %conv = sitofp i32 %10 to double
  %call14 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call14
}

declare i32 @pclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @so_init_name(%struct.obj* %fname, %struct.obj* %iname) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %iname.addr = alloca %struct.obj*, align 8
  %init_name = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %iname, %struct.obj** %iname.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %iname.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %iname.addr, align 8
  store %struct.obj* %1, %struct.obj** %init_name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0))
  %call1 = call %struct.obj* @lstrbreakup(%struct.obj* %2, %struct.obj* %call)
  %call2 = call %struct.obj* @last(%struct.obj* %call1)
  %call3 = call %struct.obj* @car(%struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %init_name, align 8
  %3 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call4 = call %struct.obj* @cintern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  %call5 = call %struct.obj* @lstrbreakup(%struct.obj* %3, %struct.obj* %call4)
  %call6 = call %struct.obj* @butlast(%struct.obj* %call5)
  %call7 = call %struct.obj* @cintern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  %call8 = call %struct.obj* @lstrunbreakup(%struct.obj* %call6, %struct.obj* %call7)
  store %struct.obj* %call8, %struct.obj** %init_name, align 8
  %call9 = call %struct.obj* @cintern(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0))
  %4 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call10 = call %struct.obj* (i64, ...) @listn(i64 2, %struct.obj* %call9, %struct.obj* %4)
  %call11 = call %struct.obj* @string_append(%struct.obj* %call10)
  store %struct.obj* %call11, %struct.obj** %init_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call12 = call %struct.obj* @intern(%struct.obj* %5)
  ret %struct.obj* %call12
}

declare %struct.obj* @last(%struct.obj*) #1

declare %struct.obj* @lstrbreakup(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @lstrunbreakup(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @butlast(%struct.obj*) #1

declare %struct.obj* @intern(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @so_ext(%struct.obj* %fname) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %ext = alloca i8*, align 8
  %lext = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8** %ext, align 8
  %0 = load i8*, i8** %ext, align 8
  %call = call i64 @strlen(i8* %0) #8
  %1 = load i8*, i8** %ext, align 8
  %call1 = call %struct.obj* @strcons(i64 %call, i8* %1)
  store %struct.obj* %call1, %struct.obj** %lext, align 8
  %2 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %lext, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %lext, align 8
  %call2 = call %struct.obj* (i64, ...) @listn(i64 2, %struct.obj* %4, %struct.obj* %5)
  %call3 = call %struct.obj* @string_append(%struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @load_so(%struct.obj* %fname, %struct.obj* %iname) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %iname.addr = alloca %struct.obj*, align 8
  %init_name = alloca %struct.obj*, align 8
  %fcn = alloca void ()*, align 8
  %handle = alloca i8*, align 8
  %iflag = alloca i64, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %iname, %struct.obj** %iname.addr, align 8
  store void ()* null, void ()** %fcn, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %iname.addr, align 8
  %call = call %struct.obj* @so_init_name(%struct.obj* %0, %struct.obj* %1)
  store %struct.obj* %call, %struct.obj** %init_name, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %iflag, align 8
  %call2 = call i32 @siod_verbose_check(i32 3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @put_st(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0))
  %2 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call3 = call i8* @get_c_string(%struct.obj* %2)
  call void @put_st(i8* %call3)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load void ()*, void ()** %fcn, align 8
  %tobool4 = icmp ne void ()* %3, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %4 = load void ()*, void ()** %fcn, align 8
  call void %4()
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), %struct.obj* %5)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %6 = load i64, i64* %iflag, align 8
  %call8 = call i64 @no_interrupt(i64 %6)
  %call9 = call i32 @siod_verbose_check(i32 3)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  call void @put_st(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %7 = load %struct.obj*, %struct.obj** %init_name, align 8
  ret %struct.obj* %7
}

declare i32 @siod_verbose_check(i32) #1

declare void @put_st(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @require_so(%struct.obj* %fname) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fname.addr = alloca %struct.obj*, align 8
  %init_name = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call %struct.obj* @so_init_name(%struct.obj* %0, %struct.obj* null)
  store %struct.obj* %call, %struct.obj** %init_name, align 8
  %1 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call1 = call %struct.obj* @symbol_boundp(%struct.obj* %1, %struct.obj* null)
  %cmp = icmp eq %struct.obj* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call2 = call %struct.obj* @symbol_value(%struct.obj* %2, %struct.obj* null)
  %cmp3 = icmp eq %struct.obj* %call2, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call4 = call %struct.obj* @load_so(%struct.obj* %3, %struct.obj* null)
  %4 = load %struct.obj*, %struct.obj** %init_name, align 8
  %call5 = call %struct.obj* @a_true_value()
  %call6 = call %struct.obj* @setvar(%struct.obj* %4, %struct.obj* %call5, %struct.obj* null)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

declare %struct.obj* @symbol_boundp(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @symbol_value(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @setvar(%struct.obj*, %struct.obj*, %struct.obj*) #1

declare %struct.obj* @a_true_value() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @siod_lib_l() #0 {
entry:
  %0 = load i8*, i8** @siod_lib, align 8
  %call = call %struct.obj* @rintern(i8* %0)
  ret %struct.obj* %call
}

declare %struct.obj* @rintern(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @ccall_catch_1(%struct.obj* (i8*)* %fcn, i8* %arg) #0 {
entry:
  %fcn.addr = alloca %struct.obj* (i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %val = alloca %struct.obj*, align 8
  store %struct.obj* (i8*)* %fcn, %struct.obj* (i8*)** %fcn.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.obj* (i8*)*, %struct.obj* (i8*)** %fcn.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call %struct.obj* %0(i8* %1)
  store %struct.obj* %call, %struct.obj** %val, align 8
  %2 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %2, i32 0, i32 3
  %3 = load %struct.catch_frame*, %struct.catch_frame** %next, align 8
  store %struct.catch_frame* %3, %struct.catch_frame** @catch_framep, align 8
  %4 = load %struct.obj*, %struct.obj** %val, align 8
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ccall_catch(%struct.obj* %tag, %struct.obj* (i8*)* %fcn, i8* %arg) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %tag.addr = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj* (i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %frame = alloca %struct.catch_frame, align 8
  %k = alloca i32, align 4
  store %struct.obj* %tag, %struct.obj** %tag.addr, align 8
  store %struct.obj* (i8*)* %fcn, %struct.obj* (i8*)** %fcn.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %tag.addr, align 8
  %tag1 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 0
  store %struct.obj* %0, %struct.obj** %tag1, align 8
  %1 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 3
  store %struct.catch_frame* %1, %struct.catch_frame** %next, align 8
  %cframe = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %cframe, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #11
  store i32 %call, i32* %k, align 4
  store %struct.catch_frame* %frame, %struct.catch_frame** @catch_framep, align 8
  %2 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next2 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 3
  %3 = load %struct.catch_frame*, %struct.catch_frame** %next2, align 8
  store %struct.catch_frame* %3, %struct.catch_frame** @catch_framep, align 8
  %retval3 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %retval3, align 8
  store %struct.obj* %4, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.obj* (i8*)*, %struct.obj* (i8*)** %fcn.addr, align 8
  %6 = load i8*, i8** %arg.addr, align 8
  %call4 = call %struct.obj* @ccall_catch_1(%struct.obj* (i8*)* %5, i8* %6)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %7
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #7

; Function Attrs: nounwind uwtable
define %struct.obj* @decode_tm(%struct.tm* %t) #0 {
entry:
  %t.addr = alloca %struct.tm*, align 8
  store %struct.tm* %t, %struct.tm** %t.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 0
  %1 = load i32, i32* %tm_sec, align 4
  %conv = sitofp i32 %1 to double
  %call = call %struct.obj* @flocons(double %conv)
  %2 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  %3 = load i32, i32* %tm_min, align 4
  %conv1 = sitofp i32 %3 to double
  %call2 = call %struct.obj* @flocons(double %conv1)
  %4 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %5 = load i32, i32* %tm_hour, align 4
  %conv3 = sitofp i32 %5 to double
  %call4 = call %struct.obj* @flocons(double %conv3)
  %6 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %7 = load i32, i32* %tm_mday, align 4
  %conv5 = sitofp i32 %7 to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  %8 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %9 = load i32, i32* %tm_mon, align 4
  %conv7 = sitofp i32 %9 to double
  %call8 = call %struct.obj* @flocons(double %conv7)
  %10 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %11 = load i32, i32* %tm_year, align 4
  %conv9 = sitofp i32 %11 to double
  %call10 = call %struct.obj* @flocons(double %conv9)
  %12 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 6
  %13 = load i32, i32* %tm_wday, align 4
  %conv11 = sitofp i32 %13 to double
  %call12 = call %struct.obj* @flocons(double %conv11)
  %14 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 7
  %15 = load i32, i32* %tm_yday, align 4
  %conv13 = sitofp i32 %15 to double
  %call14 = call %struct.obj* @flocons(double %conv13)
  %16 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 8
  %17 = load i32, i32* %tm_isdst, align 4
  %conv15 = sitofp i32 %17 to double
  %call16 = call %struct.obj* @flocons(double %conv15)
  %call17 = call %struct.obj* (i8*, ...) @symalist(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), %struct.obj* %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), %struct.obj* %call2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), %struct.obj* %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), %struct.obj* %call6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), %struct.obj* %call8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), %struct.obj* %call10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), %struct.obj* %call12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %struct.obj* %call14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), %struct.obj* %call16, i8* null)
  ret %struct.obj* %call17
}

; Function Attrs: nounwind uwtable
define void @encode_tm(%struct.obj* %alist, %struct.tm* %t) #0 {
entry:
  %alist.addr = alloca %struct.obj*, align 8
  %t.addr = alloca %struct.tm*, align 8
  %val = alloca %struct.obj*, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  store %struct.tm* %t, %struct.tm** %t.addr, align 8
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0))
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call1 = call %struct.obj* @assq(%struct.obj* %call, %struct.obj* %0)
  %call2 = call %struct.obj* @cdr(%struct.obj* %call1)
  store %struct.obj* %call2, %struct.obj** %val, align 8
  %1 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %val, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call3, %cond.false ]
  %conv = trunc i64 %cond to i32
  %3 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %conv, i32* %tm_sec, align 4
  %call4 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0))
  %4 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call5 = call %struct.obj* @assq(%struct.obj* %call4, %struct.obj* %4)
  %call6 = call %struct.obj* @cdr(%struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %val, align 8
  %5 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp7 = icmp eq %struct.obj* %5, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %val, align 8
  %call11 = call i64 @get_c_long(%struct.obj* %6)
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.9
  %cond13 = phi i64 [ 0, %cond.true.9 ], [ %call11, %cond.false.10 ]
  %conv14 = trunc i64 %cond13 to i32
  %7 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 %conv14, i32* %tm_min, align 4
  %call15 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0))
  %8 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call16 = call %struct.obj* @assq(%struct.obj* %call15, %struct.obj* %8)
  %call17 = call %struct.obj* @cdr(%struct.obj* %call16)
  store %struct.obj* %call17, %struct.obj** %val, align 8
  %9 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp18 = icmp eq %struct.obj* %9, null
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.12
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end.12
  %10 = load %struct.obj*, %struct.obj** %val, align 8
  %call22 = call i64 @get_c_long(%struct.obj* %10)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi i64 [ 0, %cond.true.20 ], [ %call22, %cond.false.21 ]
  %conv25 = trunc i64 %cond24 to i32
  %11 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i32 %conv25, i32* %tm_hour, align 4
  %call26 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0))
  %12 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call27 = call %struct.obj* @assq(%struct.obj* %call26, %struct.obj* %12)
  %call28 = call %struct.obj* @cdr(%struct.obj* %call27)
  store %struct.obj* %call28, %struct.obj** %val, align 8
  %13 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp29 = icmp eq %struct.obj* %13, null
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.23
  br label %cond.end.34

cond.false.32:                                    ; preds = %cond.end.23
  %14 = load %struct.obj*, %struct.obj** %val, align 8
  %call33 = call i64 @get_c_long(%struct.obj* %14)
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.31
  %cond35 = phi i64 [ 0, %cond.true.31 ], [ %call33, %cond.false.32 ]
  %conv36 = trunc i64 %cond35 to i32
  %15 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 3
  store i32 %conv36, i32* %tm_mday, align 4
  %call37 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0))
  %16 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call38 = call %struct.obj* @assq(%struct.obj* %call37, %struct.obj* %16)
  %call39 = call %struct.obj* @cdr(%struct.obj* %call38)
  store %struct.obj* %call39, %struct.obj** %val, align 8
  %17 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp40 = icmp eq %struct.obj* %17, null
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.34
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end.34
  %18 = load %struct.obj*, %struct.obj** %val, align 8
  %call44 = call i64 @get_c_long(%struct.obj* %18)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi i64 [ 0, %cond.true.42 ], [ %call44, %cond.false.43 ]
  %conv47 = trunc i64 %cond46 to i32
  %19 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 4
  store i32 %conv47, i32* %tm_mon, align 4
  %call48 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0))
  %20 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call49 = call %struct.obj* @assq(%struct.obj* %call48, %struct.obj* %20)
  %call50 = call %struct.obj* @cdr(%struct.obj* %call49)
  store %struct.obj* %call50, %struct.obj** %val, align 8
  %21 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp51 = icmp eq %struct.obj* %21, null
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.45
  br label %cond.end.56

cond.false.54:                                    ; preds = %cond.end.45
  %22 = load %struct.obj*, %struct.obj** %val, align 8
  %call55 = call i64 @get_c_long(%struct.obj* %22)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.53
  %cond57 = phi i64 [ 0, %cond.true.53 ], [ %call55, %cond.false.54 ]
  %conv58 = trunc i64 %cond57 to i32
  %23 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5
  store i32 %conv58, i32* %tm_year, align 4
  %call59 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0))
  %24 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call60 = call %struct.obj* @assq(%struct.obj* %call59, %struct.obj* %24)
  %call61 = call %struct.obj* @cdr(%struct.obj* %call60)
  store %struct.obj* %call61, %struct.obj** %val, align 8
  %25 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp62 = icmp eq %struct.obj* %25, null
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.56
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.end.56
  %26 = load %struct.obj*, %struct.obj** %val, align 8
  %call66 = call i64 @get_c_long(%struct.obj* %26)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.64
  %cond68 = phi i64 [ 0, %cond.true.64 ], [ %call66, %cond.false.65 ]
  %conv69 = trunc i64 %cond68 to i32
  %27 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 6
  store i32 %conv69, i32* %tm_wday, align 4
  %call70 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0))
  %28 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call71 = call %struct.obj* @assq(%struct.obj* %call70, %struct.obj* %28)
  %call72 = call %struct.obj* @cdr(%struct.obj* %call71)
  store %struct.obj* %call72, %struct.obj** %val, align 8
  %29 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp73 = icmp eq %struct.obj* %29, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.67
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end.67
  %30 = load %struct.obj*, %struct.obj** %val, align 8
  %call77 = call i64 @get_c_long(%struct.obj* %30)
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i64 [ 0, %cond.true.75 ], [ %call77, %cond.false.76 ]
  %conv80 = trunc i64 %cond79 to i32
  %31 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 7
  store i32 %conv80, i32* %tm_yday, align 4
  %call81 = call %struct.obj* @cintern(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0))
  %32 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call82 = call %struct.obj* @assq(%struct.obj* %call81, %struct.obj* %32)
  %call83 = call %struct.obj* @cdr(%struct.obj* %call82)
  store %struct.obj* %call83, %struct.obj** %val, align 8
  %33 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp84 = icmp eq %struct.obj* %33, null
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.78
  br label %cond.end.89

cond.false.87:                                    ; preds = %cond.end.78
  %34 = load %struct.obj*, %struct.obj** %val, align 8
  %call88 = call i64 @get_c_long(%struct.obj* %34)
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.86
  %cond90 = phi i64 [ -1, %cond.true.86 ], [ %call88, %cond.false.87 ]
  %conv91 = trunc i64 %cond90 to i32
  %35 = load %struct.tm*, %struct.tm** %t.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 8
  store i32 %conv91, i32* %tm_isdst, align 4
  ret void
}

declare %struct.obj* @assq(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @llocaltime(%struct.obj* %value) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %b = alloca i64, align 8
  %t = alloca %struct.tm*, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* %b, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @time(i64* %b) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call %struct.tm* @localtime(i64* %b) #4
  store %struct.tm* %call2, %struct.tm** %t, align 8
  %tobool = icmp ne %struct.tm* %call2, null
  br i1 %tobool, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.tm*, %struct.tm** %t, align 8
  %call4 = call %struct.obj* @decode_tm(%struct.tm* %2)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.else.5:                                        ; preds = %if.end
  %call6 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call7 = call %struct.obj* @err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), %struct.obj* %call6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.5, %if.then.3
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lgmtime(%struct.obj* %value) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %b = alloca i64, align 8
  %t = alloca %struct.tm*, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* %b, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @time(i64* %b) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call %struct.tm* @gmtime(i64* %b) #4
  store %struct.tm* %call2, %struct.tm** %t, align 8
  %tobool = icmp ne %struct.tm* %call2, null
  br i1 %tobool, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.tm*, %struct.tm** %t, align 8
  %call4 = call %struct.obj* @decode_tm(%struct.tm* %2)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

if.else.5:                                        ; preds = %if.end
  %call6 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call7 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), %struct.obj* %call6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.5, %if.then.3
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ltzset() #0 {
entry:
  call void @tzset() #4
  ret %struct.obj* null
}

; Function Attrs: nounwind
declare void @tzset() #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lmktime(%struct.obj* %alist) #0 {
entry:
  %alist.addr = alloca %struct.obj*, align 8
  %tm = alloca %struct.tm, align 8
  %t = alloca i64, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  call void @encode_tm(%struct.obj* %0, %struct.tm* %tm)
  %call = call i64 @mktime(%struct.tm* %tm) #4
  store i64 %call, i64* %t, align 8
  %1 = load i64, i64* %t, align 8
  %conv = sitofp i64 %1 to double
  %call1 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrptime(%struct.obj* %str, %struct.obj* %fmt, %struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %str.addr = alloca %struct.obj*, align 8
  %fmt.addr = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %tm = alloca %struct.tm, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  store %struct.obj* %fmt, %struct.obj** %fmt.addr, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  call void @encode_tm(%struct.obj* %0, %struct.tm* %tm)
  %1 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %fmt.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  %call2 = call i32 (i8*, i8*, %struct.tm*, ...) bitcast (i32 (...)* @strptime to i32 (i8*, i8*, %struct.tm*, ...)*)(i8* %call, i8* %call1, %struct.tm* %tm)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call %struct.obj* @decode_tm(%struct.tm* %tm)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

declare i32 @strptime(...) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lstrftime(%struct.obj* %fmt, %struct.obj* %in) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fmt.addr = alloca %struct.obj*, align 8
  %in.addr = alloca %struct.obj*, align 8
  %tm = alloca %struct.tm, align 8
  %b = alloca i64, align 8
  %t = alloca %struct.tm*, align 8
  %ret = alloca i64, align 8
  %buff = alloca [1024 x i8], align 16
  store %struct.obj* %fmt, %struct.obj** %fmt.addr, align 8
  store %struct.obj* %in, %struct.obj** %in.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %in.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %in.addr, align 8
  call void @encode_tm(%struct.obj* %1, %struct.tm* %tm)
  store %struct.tm* %tm, %struct.tm** %t, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call i64 @time(i64* %b) #4
  %call1 = call %struct.tm* @gmtime(i64* %b) #4
  store %struct.tm* %call1, %struct.tm** %t, align 8
  %tobool = icmp ne %struct.tm* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %2 = load %struct.obj*, %struct.obj** %fmt.addr, align 8
  %call4 = call i8* @get_c_string(%struct.obj* %2)
  %3 = load %struct.tm*, %struct.tm** %t, align 8
  %call5 = call i64 @strftime(i8* %arraydecay, i64 1024, i8* %call4, %struct.tm* %3) #4
  store i64 %call5, i64* %ret, align 8
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.end.3
  %4 = load i64, i64* %ret, align 8
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call9 = call %struct.obj* @strcons(i64 %4, i8* %arraydecay8)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

if.else.10:                                       ; preds = %if.end.3
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.7, %if.then.2
  %5 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %5
}

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lchdir(%struct.obj* %dir) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %dir.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %path = alloca i8*, align 8
  store %struct.obj* %dir, %struct.obj** %dir.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dir.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %dir.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 17, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %dir.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %3, %struct._IO_FILE* null)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %4) #4
  store i32 %call1, i32* %fd, align 4
  %call2 = call i64 @no_interrupt(i64 1)
  store i64 %call2, i64* %iflag, align 8
  %5 = load i32, i32* %fd, align 4
  %call3 = call i32 @fchdir(i32 %5) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call4 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load i64, i64* %iflag, align 8
  %call6 = call i64 @no_interrupt(i64 %6)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %dir.addr, align 8
  %call7 = call i8* @get_c_string(%struct.obj* %7)
  store i8* %call7, i8** %path, align 8
  %call8 = call i64 @no_interrupt(i64 1)
  store i64 %call8, i64* %iflag, align 8
  %8 = load i8*, i8** %path, align 8
  %call9 = call i32 @chdir(i8* %8) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %sw.default
  %call12 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call13 = call %struct.obj* @err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), %struct.obj* %call12)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

if.end.14:                                        ; preds = %sw.default
  %9 = load i64, i64* %iflag, align 8
  %call15 = call i64 @no_interrupt(i64 %9)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.end, %if.then
  %10 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %10
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetpass(%struct.obj* %lprompt) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %lprompt.addr = alloca %struct.obj*, align 8
  %iflag = alloca i64, align 8
  %result = alloca i8*, align 8
  store %struct.obj* %lprompt, %struct.obj** %lprompt.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load %struct.obj*, %struct.obj** %lprompt.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %lprompt.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i32 0, i32 0), %cond.true ], [ %call1, %cond.false ]
  %call2 = call i8* @getpass(i8* %cond)
  store i8* %call2, i8** %result, align 8
  %2 = load i64, i64* %iflag, align 8
  %call3 = call i64 @no_interrupt(i64 %2)
  %3 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %4 = load i8*, i8** %result, align 8
  %call4 = call i64 @strlen(i8* %4) #8
  %5 = load i8*, i8** %result, align 8
  %call5 = call %struct.obj* @strcons(i64 %call4, i8* %5)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

declare i8* @getpass(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lpipe() #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %filedes = alloca [2 x i32], align 4
  %iflag = alloca i64, align 8
  %f1 = alloca %struct.obj*, align 8
  %f2 = alloca %struct.obj*, align 8
  %call = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call, %struct.obj** %f1, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* null)
  store %struct.obj* %call1, %struct.obj** %f2, align 8
  %call2 = call i64 @no_interrupt(i64 1)
  store i64 %call2, i64* %iflag, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %filedes, i32 0, i32 0
  %call3 = call i32 @pipe(i32* %arraydecay) #4
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load %struct.obj*, %struct.obj** %f1, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 1
  store i16 17, i16* %type, align 2
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %filedes, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %call4 = call %struct._IO_FILE* @fdopen(i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0)) #4
  %2 = load %struct.obj*, %struct.obj** %f1, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %f, align 8
  %3 = load %struct.obj*, %struct.obj** %f2, align 8
  %type5 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  store i16 17, i16* %type5, align 2
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %filedes, i32 0, i64 1
  %4 = load i32, i32* %arrayidx6, align 4
  %call7 = call %struct._IO_FILE* @fdopen(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0)) #4
  %5 = load %struct.obj*, %struct.obj** %f2, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %c_file9 = bitcast %union.anon* %storage_as8 to %struct.anon.17*
  %f10 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file9, i32 0, i32 0
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f10, align 8
  %6 = load i64, i64* %iflag, align 8
  %call11 = call i64 @no_interrupt(i64 %6)
  %7 = load %struct.obj*, %struct.obj** %f1, align 8
  %8 = load %struct.obj*, %struct.obj** %f2, align 8
  %call12 = call %struct.obj* (i64, ...) @listn(i64 2, %struct.obj* %7, %struct.obj* %8)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call13 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), %struct.obj* %call13)
  store %struct.obj* %call14, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @err_large_index(%struct.obj* %ind) #0 {
entry:
  %ind.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ind, %struct.obj** %ind.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), %struct.obj* %0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @datref(%struct.obj* %dat, %struct.obj* %ctype, %struct.obj* %ind) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %dat.addr = alloca %struct.obj*, align 8
  %ctype.addr = alloca %struct.obj*, align 8
  %ind.addr = alloca %struct.obj*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.obj* %dat, %struct.obj** %dat.addr, align 8
  store %struct.obj* %ctype, %struct.obj** %ctype.addr, align 8
  store %struct.obj* %ind, %struct.obj** %ind.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dat.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %size)
  store i8* %call, i8** %data, align 8
  %1 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call1, i64* %i, align 8
  %2 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call2 = call %struct.obj* @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.obj*, %struct.obj** %ctype.addr, align 8
  %call3 = call i64 @get_c_long(%struct.obj* %4)
  switch i64 %call3, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.9
    i64 9, label %sw.bb.19
    i64 5, label %sw.bb.30
    i64 3, label %sw.bb.41
    i64 7, label %sw.bb.52
    i64 10, label %sw.bb.63
    i64 6, label %sw.bb.74
    i64 4, label %sw.bb.85
    i64 8, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %add = add nsw i64 %5, 1
  %mul = mul nsw i64 %add, 4
  %6 = load i64, i64* %size, align 8
  %cmp4 = icmp sgt i64 %mul, %6
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %sw.bb
  %7 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call6 = call %struct.obj* @err_large_index(%struct.obj* %7)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %sw.bb
  %8 = load i64, i64* %i, align 8
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to float*
  %arrayidx = getelementptr inbounds float, float* %10, i64 %8
  %11 = load float, float* %arrayidx, align 4
  %conv = fpext float %11 to double
  %call8 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call8, %struct.obj** %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %12, 1
  %mul11 = mul nsw i64 %add10, 8
  %13 = load i64, i64* %size, align 8
  %cmp12 = icmp sgt i64 %mul11, %13
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.bb.9
  %14 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call15 = call %struct.obj* @err_large_index(%struct.obj* %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.bb.9
  %15 = load i64, i64* %i, align 8
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to double*
  %arrayidx17 = getelementptr inbounds double, double* %17, i64 %15
  %18 = load double, double* %arrayidx17, align 8
  %call18 = call %struct.obj* @flocons(double %18)
  store %struct.obj* %call18, %struct.obj** %retval
  br label %return

sw.bb.19:                                         ; preds = %if.end
  %19 = load i64, i64* %i, align 8
  %add20 = add nsw i64 %19, 1
  %mul21 = mul nsw i64 %add20, 8
  %20 = load i64, i64* %size, align 8
  %cmp22 = icmp sgt i64 %mul21, %20
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.bb.19
  %21 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call25 = call %struct.obj* @err_large_index(%struct.obj* %21)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %sw.bb.19
  %22 = load i64, i64* %i, align 8
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to i64*
  %arrayidx27 = getelementptr inbounds i64, i64* %24, i64 %22
  %25 = load i64, i64* %arrayidx27, align 8
  %conv28 = sitofp i64 %25 to double
  %call29 = call %struct.obj* @flocons(double %conv28)
  store %struct.obj* %call29, %struct.obj** %retval
  br label %return

sw.bb.30:                                         ; preds = %if.end
  %26 = load i64, i64* %i, align 8
  %add31 = add nsw i64 %26, 1
  %mul32 = mul nsw i64 %add31, 2
  %27 = load i64, i64* %size, align 8
  %cmp33 = icmp sgt i64 %mul32, %27
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %sw.bb.30
  %28 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call36 = call %struct.obj* @err_large_index(%struct.obj* %28)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %sw.bb.30
  %29 = load i64, i64* %i, align 8
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to i16*
  %arrayidx38 = getelementptr inbounds i16, i16* %31, i64 %29
  %32 = load i16, i16* %arrayidx38, align 2
  %conv39 = sitofp i16 %32 to double
  %call40 = call %struct.obj* @flocons(double %conv39)
  store %struct.obj* %call40, %struct.obj** %retval
  br label %return

sw.bb.41:                                         ; preds = %if.end
  %33 = load i64, i64* %i, align 8
  %add42 = add nsw i64 %33, 1
  %mul43 = mul nsw i64 %add42, 1
  %34 = load i64, i64* %size, align 8
  %cmp44 = icmp sgt i64 %mul43, %34
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %sw.bb.41
  %35 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call47 = call %struct.obj* @err_large_index(%struct.obj* %35)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %sw.bb.41
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** %data, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %37, i64 %36
  %38 = load i8, i8* %arrayidx49, align 1
  %conv50 = sitofp i8 %38 to double
  %call51 = call %struct.obj* @flocons(double %conv50)
  store %struct.obj* %call51, %struct.obj** %retval
  br label %return

sw.bb.52:                                         ; preds = %if.end
  %39 = load i64, i64* %i, align 8
  %add53 = add nsw i64 %39, 1
  %mul54 = mul nsw i64 %add53, 4
  %40 = load i64, i64* %size, align 8
  %cmp55 = icmp sgt i64 %mul54, %40
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %sw.bb.52
  %41 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call58 = call %struct.obj* @err_large_index(%struct.obj* %41)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %sw.bb.52
  %42 = load i64, i64* %i, align 8
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to i32*
  %arrayidx60 = getelementptr inbounds i32, i32* %44, i64 %42
  %45 = load i32, i32* %arrayidx60, align 4
  %conv61 = sitofp i32 %45 to double
  %call62 = call %struct.obj* @flocons(double %conv61)
  store %struct.obj* %call62, %struct.obj** %retval
  br label %return

sw.bb.63:                                         ; preds = %if.end
  %46 = load i64, i64* %i, align 8
  %add64 = add nsw i64 %46, 1
  %mul65 = mul nsw i64 %add64, 8
  %47 = load i64, i64* %size, align 8
  %cmp66 = icmp sgt i64 %mul65, %47
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %sw.bb.63
  %48 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call69 = call %struct.obj* @err_large_index(%struct.obj* %48)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %sw.bb.63
  %49 = load i64, i64* %i, align 8
  %50 = load i8*, i8** %data, align 8
  %51 = bitcast i8* %50 to i64*
  %arrayidx71 = getelementptr inbounds i64, i64* %51, i64 %49
  %52 = load i64, i64* %arrayidx71, align 8
  %conv72 = uitofp i64 %52 to double
  %call73 = call %struct.obj* @flocons(double %conv72)
  store %struct.obj* %call73, %struct.obj** %retval
  br label %return

sw.bb.74:                                         ; preds = %if.end
  %53 = load i64, i64* %i, align 8
  %add75 = add nsw i64 %53, 1
  %mul76 = mul nsw i64 %add75, 2
  %54 = load i64, i64* %size, align 8
  %cmp77 = icmp sgt i64 %mul76, %54
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %sw.bb.74
  %55 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call80 = call %struct.obj* @err_large_index(%struct.obj* %55)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %sw.bb.74
  %56 = load i64, i64* %i, align 8
  %57 = load i8*, i8** %data, align 8
  %58 = bitcast i8* %57 to i16*
  %arrayidx82 = getelementptr inbounds i16, i16* %58, i64 %56
  %59 = load i16, i16* %arrayidx82, align 2
  %conv83 = uitofp i16 %59 to double
  %call84 = call %struct.obj* @flocons(double %conv83)
  store %struct.obj* %call84, %struct.obj** %retval
  br label %return

sw.bb.85:                                         ; preds = %if.end
  %60 = load i64, i64* %i, align 8
  %add86 = add nsw i64 %60, 1
  %mul87 = mul nsw i64 %add86, 1
  %61 = load i64, i64* %size, align 8
  %cmp88 = icmp sgt i64 %mul87, %61
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %sw.bb.85
  %62 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call91 = call %struct.obj* @err_large_index(%struct.obj* %62)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %sw.bb.85
  %63 = load i64, i64* %i, align 8
  %64 = load i8*, i8** %data, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %64, i64 %63
  %65 = load i8, i8* %arrayidx93, align 1
  %conv94 = uitofp i8 %65 to double
  %call95 = call %struct.obj* @flocons(double %conv94)
  store %struct.obj* %call95, %struct.obj** %retval
  br label %return

sw.bb.96:                                         ; preds = %if.end
  %66 = load i64, i64* %i, align 8
  %add97 = add nsw i64 %66, 1
  %mul98 = mul nsw i64 %add97, 4
  %67 = load i64, i64* %size, align 8
  %cmp99 = icmp sgt i64 %mul98, %67
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %sw.bb.96
  %68 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call102 = call %struct.obj* @err_large_index(%struct.obj* %68)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %sw.bb.96
  %69 = load i64, i64* %i, align 8
  %70 = load i8*, i8** %data, align 8
  %71 = bitcast i8* %70 to i32*
  %arrayidx104 = getelementptr inbounds i32, i32* %71, i64 %69
  %72 = load i32, i32* %arrayidx104, align 4
  %conv105 = uitofp i32 %72 to double
  %call106 = call %struct.obj* @flocons(double %conv105)
  store %struct.obj* %call106, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %73 = load %struct.obj*, %struct.obj** %ctype.addr, align 8
  %call107 = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), %struct.obj* %73)
  store %struct.obj* %call107, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.103, %if.end.92, %if.end.81, %if.end.70, %if.end.59, %if.end.48, %if.end.37, %if.end.26, %if.end.16, %if.end.7
  %74 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %74
}

declare i8* @get_c_string_dim(%struct.obj*, i64*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @sdatref(%struct.obj* %spec, %struct.obj* %dat) #0 {
entry:
  %spec.addr = alloca %struct.obj*, align 8
  %dat.addr = alloca %struct.obj*, align 8
  store %struct.obj* %spec, %struct.obj** %spec.addr, align 8
  store %struct.obj* %dat, %struct.obj** %dat.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dat.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %spec.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %spec.addr, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %2)
  %call2 = call %struct.obj* @datref(%struct.obj* %0, %struct.obj* %call, %struct.obj* %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @mkdatref(%struct.obj* %ctype, %struct.obj* %ind) #0 {
entry:
  %ctype.addr = alloca %struct.obj*, align 8
  %ind.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ctype, %struct.obj** %ctype.addr, align 8
  store %struct.obj* %ind, %struct.obj** %ind.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ctype.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %ind.addr, align 8
  %call = call %struct.obj* @cons(%struct.obj* %0, %struct.obj* %1)
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0))
  %call2 = call %struct.obj* @leval(%struct.obj* %call1, %struct.obj* null)
  %call3 = call %struct.obj* @closure(%struct.obj* %call, %struct.obj* %call2)
  ret %struct.obj* %call3
}

declare %struct.obj* @closure(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @leval(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @datlength(%struct.obj* %dat, %struct.obj* %ctype) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %dat.addr = alloca %struct.obj*, align 8
  %ctype.addr = alloca %struct.obj*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct.obj* %dat, %struct.obj** %dat.addr, align 8
  store %struct.obj* %ctype, %struct.obj** %ctype.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %dat.addr, align 8
  %call = call i8* @get_c_string_dim(%struct.obj* %0, i64* %size)
  store i8* %call, i8** %data, align 8
  %1 = load %struct.obj*, %struct.obj** %ctype.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  switch i64 %call1, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.3
    i64 9, label %sw.bb.7
    i64 5, label %sw.bb.11
    i64 3, label %sw.bb.15
    i64 7, label %sw.bb.19
    i64 10, label %sw.bb.23
    i64 6, label %sw.bb.27
    i64 4, label %sw.bb.31
    i64 8, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %size, align 8
  %div = udiv i64 %2, 4
  %conv = uitofp i64 %div to double
  %call2 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call2, %struct.obj** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %3 = load i64, i64* %size, align 8
  %div4 = udiv i64 %3, 8
  %conv5 = uitofp i64 %div4 to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %4 = load i64, i64* %size, align 8
  %div8 = udiv i64 %4, 8
  %conv9 = uitofp i64 %div8 to double
  %call10 = call %struct.obj* @flocons(double %conv9)
  store %struct.obj* %call10, %struct.obj** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %5 = load i64, i64* %size, align 8
  %div12 = udiv i64 %5, 2
  %conv13 = uitofp i64 %div12 to double
  %call14 = call %struct.obj* @flocons(double %conv13)
  store %struct.obj* %call14, %struct.obj** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %6 = load i64, i64* %size, align 8
  %div16 = udiv i64 %6, 1
  %conv17 = uitofp i64 %div16 to double
  %call18 = call %struct.obj* @flocons(double %conv17)
  store %struct.obj* %call18, %struct.obj** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %7 = load i64, i64* %size, align 8
  %div20 = udiv i64 %7, 4
  %conv21 = uitofp i64 %div20 to double
  %call22 = call %struct.obj* @flocons(double %conv21)
  store %struct.obj* %call22, %struct.obj** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %8 = load i64, i64* %size, align 8
  %div24 = udiv i64 %8, 8
  %conv25 = uitofp i64 %div24 to double
  %call26 = call %struct.obj* @flocons(double %conv25)
  store %struct.obj* %call26, %struct.obj** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %9 = load i64, i64* %size, align 8
  %div28 = udiv i64 %9, 2
  %conv29 = uitofp i64 %div28 to double
  %call30 = call %struct.obj* @flocons(double %conv29)
  store %struct.obj* %call30, %struct.obj** %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %10 = load i64, i64* %size, align 8
  %div32 = udiv i64 %10, 1
  %conv33 = uitofp i64 %div32 to double
  %call34 = call %struct.obj* @flocons(double %conv33)
  store %struct.obj* %call34, %struct.obj** %retval
  br label %return

sw.bb.35:                                         ; preds = %entry
  %11 = load i64, i64* %size, align 8
  %div36 = udiv i64 %11, 4
  %conv37 = uitofp i64 %div36 to double
  %call38 = call %struct.obj* @flocons(double %conv37)
  store %struct.obj* %call38, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load %struct.obj*, %struct.obj** %ctype.addr, align 8
  %call39 = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), %struct.obj* %12)
  store %struct.obj* %call39, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.35, %sw.bb.31, %sw.bb.27, %sw.bb.23, %sw.bb.19, %sw.bb.15, %sw.bb.11, %sw.bb.7, %sw.bb.3, %sw.bb
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define i32 @siod_main(i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %j = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %iargc = alloca i32, align 4
  %mainflag = alloca i32, align 4
  %text_plain_flag = alloca i32, align 4
  %iargv = alloca [2 x i8*], align 16
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %l = alloca %struct.obj*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %env, i8*** %env.addr, align 8
  store i32 0, i32* %retval1, align 4
  store i32 0, i32* %mainflag, align 4
  store i32 0, i32* %text_plain_flag, align 4
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i32 0, i32 0), i8** %arrayidx, align 8
  store i32 0, i32* %iargc, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx2, align 8
  store i8* %4, i8** %start, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 45
  br i1 %cmp3, label %if.then, label %if.else.50

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %6 = load i8*, i8** %start, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %start, align 8
  %call = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #8
  store i8* %call, i8** %end, align 8
  %tobool5 = icmp ne i8* %call, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %while.body
  %9 = load i8*, i8** %start, align 8
  %call7 = call i64 @strlen(i8* %9) #8
  %10 = load i8*, i8** %start, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %call7
  store i8* %arrayidx8, i8** %end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %while.body
  %11 = load i8*, i8** %end, align 8
  %12 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call9 = call noalias i8* @malloc(i64 %add) #4
  %arrayidx10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  store i8* %call9, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %13 = load i8*, i8** %arrayidx11, align 8
  %14 = load i8*, i8** %start, align 8
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %16 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %sub.ptr.sub14, i32 1, i1 false)
  %17 = load i8*, i8** %end, align 8
  %18 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast15 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %18 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %arrayidx18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %19 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %sub.ptr.sub17
  store i8 0, i8* %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %20 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i64 2) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end
  %arrayidx24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %21 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 2
  %call26 = call i64 @atol(i8* %arrayidx25) #8
  %cmp27 = icmp sgt i64 %call26, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.37

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %22 = load i8*, i8** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %23 to i32
  %cmp33 = icmp ne i32 %conv32, 48
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.29
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.123, i32 0, i32 0))
  store i32 1, i32* %text_plain_flag, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true.29, %land.lhs.true, %if.end
  %arrayidx38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %24 = load i8*, i8** %arrayidx38, align 8
  %call39 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i64 2) #8
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.37
  %arrayidx43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i64 1
  %25 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i64 2
  %call45 = call i64 @atol(i8* %arrayidx44) #8
  %conv46 = trunc i64 %call45 to i32
  store i32 %conv46, i32* %mainflag, align 4
  br label %if.end.47

if.else:                                          ; preds = %if.end.37
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %iargv, i32 0, i32 0
  call void @process_cla(i32 2, i8** %arraydecay, i32 1)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.42
  %26 = load i8*, i8** %end, align 8
  %27 = load i8, i8* %26, align 1
  %conv48 = sext i8 %27 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  %28 = load i8*, i8** %end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  %29 = load i8*, i8** %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %29, %cond.false ]
  store i8* %cond, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.51

if.else.50:                                       ; preds = %for.body
  %30 = load i32, i32* %iargc, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %iargc, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %31 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %31, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @print_welcome()
  call void @print_hs_1()
  call void @init_storage()
  store %struct.obj* null, %struct.obj** %l, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.64, %for.end
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %argc.addr, align 4
  %cmp54 = icmp slt i32 %32, %33
  br i1 %cmp54, label %for.body.56, label %for.end.66

for.body.56:                                      ; preds = %for.cond.53
  %34 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %35, i64 %idxprom57
  %36 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i64 @strlen(i8* %36) #8
  %37 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %38, i64 %idxprom60
  %39 = load i8*, i8** %arrayidx61, align 8
  %call62 = call %struct.obj* @strcons(i64 %call59, i8* %39)
  %40 = load %struct.obj*, %struct.obj** %l, align 8
  %call63 = call %struct.obj* @cons(%struct.obj* %call62, %struct.obj* %40)
  store %struct.obj* %call63, %struct.obj** %l, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.56
  %41 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %41, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond.53

for.end.66:                                       ; preds = %for.cond.53
  %call67 = call %struct.obj* @cintern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0))
  %42 = load %struct.obj*, %struct.obj** %l, align 8
  %call68 = call %struct.obj* @nreverse(%struct.obj* %42)
  %call69 = call %struct.obj* @setvar(%struct.obj* %call67, %struct.obj* %call68, %struct.obj* null)
  store %struct.obj* null, %struct.obj** %l, align 8
  store %struct.obj* null, %struct.obj** %l, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.83, %for.end.66
  %43 = load i8**, i8*** %env.addr, align 8
  %tobool71 = icmp ne i8** %43, null
  br i1 %tobool71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.70
  %44 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %44 to i64
  %45 = load i8**, i8*** %env.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %45, i64 %idxprom72
  %46 = load i8*, i8** %arrayidx73, align 8
  %tobool74 = icmp ne i8* %46, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.70
  %47 = phi i1 [ false, %for.cond.70 ], [ %tobool74, %land.rhs ]
  br i1 %47, label %for.body.75, label %for.end.85

for.body.75:                                      ; preds = %land.end
  %48 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %48 to i64
  %49 = load i8**, i8*** %env.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %49, i64 %idxprom76
  %50 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i64 @strlen(i8* %50) #8
  %51 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load i8**, i8*** %env.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %52, i64 %idxprom79
  %53 = load i8*, i8** %arrayidx80, align 8
  %call81 = call %struct.obj* @strcons(i64 %call78, i8* %53)
  %54 = load %struct.obj*, %struct.obj** %l, align 8
  %call82 = call %struct.obj* @cons(%struct.obj* %call81, %struct.obj* %54)
  store %struct.obj* %call82, %struct.obj** %l, align 8
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.75
  %55 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %55, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.70

for.end.85:                                       ; preds = %land.end
  %call86 = call %struct.obj* @cintern(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0))
  %56 = load %struct.obj*, %struct.obj** %l, align 8
  %call87 = call %struct.obj* @nreverse(%struct.obj* %56)
  %call88 = call %struct.obj* @setvar(%struct.obj* %call86, %struct.obj* %call87, %struct.obj* null)
  store %struct.obj* null, %struct.obj** %l, align 8
  call void @init_subrs()
  call void @init_trace()
  call void @init_slibu()
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cgi_main)
  %57 = load i32, i32* %iargc, align 4
  %cmp89 = icmp eq i32 %57, 0
  br i1 %cmp89, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %for.end.85
  %call92 = call i64 @repl_driver(i64 1, i64 1, %struct.repl_hooks* null)
  %conv93 = trunc i64 %call92 to i32
  store i32 %conv93, i32* %retval1, align 4
  br label %if.end.136

if.else.94:                                       ; preds = %for.end.85
  store i32 1, i32* %j, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.123, %if.else.94
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %mainflag, align 4
  %cmp96 = icmp sge i32 %59, 2
  br i1 %cmp96, label %land.lhs.true.98, label %cond.false.102

land.lhs.true.98:                                 ; preds = %for.cond.95
  %60 = load i32, i32* %argc.addr, align 4
  %cmp99 = icmp sgt i32 %60, 3
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %land.lhs.true.98
  br label %cond.end.103

cond.false.102:                                   ; preds = %land.lhs.true.98, %for.cond.95
  %61 = load i32, i32* %argc.addr, align 4
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi i32 [ 3, %cond.true.101 ], [ %61, %cond.false.102 ]
  %cmp105 = icmp slt i32 %58, %cond104
  br i1 %cmp105, label %for.body.107, label %for.end.125

for.body.107:                                     ; preds = %cond.end.103
  %62 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %62 to i64
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx109 = getelementptr inbounds i8*, i8** %63, i64 %idxprom108
  %64 = load i8*, i8** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %65 to i32
  %cmp112 = icmp ne i32 %conv111, 45
  br i1 %cmp112, label %if.then.114, label %if.end.122

if.then.114:                                      ; preds = %for.body.107
  %66 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %66 to i64
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %67, i64 %idxprom115
  %68 = load i8*, i8** %arrayidx116, align 8
  %call117 = call i32 @htqs_arg(i8* %68)
  store i32 %call117, i32* %retval1, align 4
  %69 = load i32, i32* %retval1, align 4
  %cmp118 = icmp ne i32 %69, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.114
  br label %for.end.125

if.end.121:                                       ; preds = %if.then.114
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %for.body.107
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %70 = load i32, i32* %j, align 4
  %inc124 = add nsw i32 %70, 1
  store i32 %inc124, i32* %j, align 4
  br label %for.cond.95

for.end.125:                                      ; preds = %if.then.120, %cond.end.103
  %71 = load i32, i32* %mainflag, align 4
  %tobool126 = icmp ne i32 %71, 0
  br i1 %tobool126, label %if.then.127, label %if.end.135

if.then.127:                                      ; preds = %for.end.125
  %72 = load i32, i32* %mainflag, align 4
  %cmp128 = icmp sgt i32 %72, 2
  br i1 %cmp128, label %land.rhs.130, label %land.end.132

land.rhs.130:                                     ; preds = %if.then.127
  %73 = load i32, i32* %text_plain_flag, align 4
  %tobool131 = icmp ne i32 %73, 0
  %lnot = xor i1 %tobool131, true
  br label %land.end.132

land.end.132:                                     ; preds = %land.rhs.130, %if.then.127
  %74 = phi i1 [ false, %if.then.127 ], [ %lnot, %land.rhs.130 ]
  %cond133 = select i1 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0)
  %call134 = call i32 @htqs_arg(i8* %cond133)
  store i32 %call134, i32* %retval1, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %land.end.132, %for.end.125
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.91
  %call137 = call i32 @siod_verbose_check(i32 2)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.end.136
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.end.136
  %75 = load i32, i32* %retval1, align 4
  ret i32 %75
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

declare i32 @printf(i8*, ...) #1

declare void @process_cla(i32, i8**, i32) #1

declare void @print_welcome() #1

declare void @print_hs_1() #1

declare void @init_storage() #1

declare void @init_subrs() #1

declare void @init_trace() #1

; Function Attrs: nounwind uwtable
define void @init_slibu() #0 {
entry:
  %j = alloca i64, align 8
  %tmp1 = alloca i8*, align 8
  %tmp2 = alloca i8*, align 8
  %call = call i64 @allocate_user_tc()
  store i64 %call, i64* @tc_opendir, align 8
  %0 = load i64, i64* @tc_opendir, align 8
  call void @set_gc_hooks(i64 %0, %struct.obj* (%struct.obj*)* null, %struct.obj* (%struct.obj*)* null, void (%struct.obj*)* null, void (%struct.obj*)* @opendir_gc_free, i64* %j)
  %1 = load i64, i64* @tc_opendir, align 8
  call void @set_print_hooks(i64 %1, void (%struct.obj*, %struct.gen_printio*)* @opendir_prin1)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @l_chmod)
  call void @gc_protect_sym(%struct.obj** @sym_channels, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0))
  %2 = load %struct.obj*, %struct.obj** @sym_channels, align 8
  %call1 = call %struct.obj* @setvar(%struct.obj* %2, %struct.obj* null, %struct.obj* null)
  call void @init_lsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsystem)
  call void @init_subr_0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), %struct.obj* ()* @lgetgid)
  call void @init_subr_0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), %struct.obj* ()* @lgetuid)
  call void @init_subr_0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.obj* ()* @lgetcwd)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetpwuid)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetpwnam)
  call void @init_subr_0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), %struct.obj* ()* @lgetpwent)
  call void @init_subr_0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0), %struct.obj* ()* @lsetpwent)
  call void @init_subr_0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), %struct.obj* ()* @lendpwent)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsetuid)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lseteuid)
  call void @init_subr_0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), %struct.obj* ()* @lgeteuid)
  call void @init_subr_2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.146, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @laccess_problem)
  call void @init_subr_3(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lutime)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lfchmod)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lrandom)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsrandom)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), %struct.obj* (%struct.obj*)* @car)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdr)
  call void @init_subr_0(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct.obj* ()* @lfork)
  call void @init_subr_3(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lexec)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lnice)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lwait)
  call void @init_subr_0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), %struct.obj* ()* @lgetpgrp)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetgrgid)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lsetpgid)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lkill)
  call void @init_subr_1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lmemref_byte)
  call void @init_subr_0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), %struct.obj* ()* @lgetpid)
  call void @init_subr_0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), %struct.obj* ()* @lgetppid)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lexit)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), %struct.obj* (%struct.obj*)* @ltrunc)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lputenv)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_opendir)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_closedir)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_readdir)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), %struct.obj* (%struct.obj*)* @delete_file)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), %struct.obj* (%struct.obj*)* @file_times)
  call void @init_subr_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.161, i32 0, i32 0), %struct.obj* (%struct.obj*)* @utime2str)
  call void @init_subr_0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), %struct.obj* ()* @unix_time)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i32 0, i32 0), %struct.obj* (%struct.obj*)* @unix_ctime)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetenv)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsleep)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), %struct.obj* (%struct.obj*)* @url_encode)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.167, i32 0, i32 0), %struct.obj* (%struct.obj*)* @url_decode)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lgets)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), %struct.obj* (%struct.obj*)* @readline)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0), %struct.obj* (%struct.obj*)* @html_encode)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), %struct.obj* (%struct.obj*)* @html_decode)
  call void @init_subr_1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), %struct.obj* (%struct.obj*)* @decode_st_mode)
  call void @init_subr_1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), %struct.obj* (%struct.obj*)* @encode_st_mode)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_stat)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_fstat)
  call void @init_subr_1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.176, i32 0, i32 0), %struct.obj* (%struct.obj*)* @encode_open_flags)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), %struct.obj* (%struct.obj*)* @l_lstat)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lsymlink)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @llink)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lunlink)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lrmdir)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lmkdir)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lrename)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lreadlink)
  call void @init_subr_3(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @l_chown)
  call void @init_subr_1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0), %struct.obj* (%struct.obj*)* @http_date)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @popen_l)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), %struct.obj* (%struct.obj*)* @pclose_l)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @load_so)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), %struct.obj* (%struct.obj*)* @require_so)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), %struct.obj* (%struct.obj*)* @so_ext)
  %call2 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.183, i32 0, i32 0))
  %call3 = call %struct.obj* @flocons(double 0.000000e+00)
  %call4 = call %struct.obj* @setvar(%struct.obj* %call2, %struct.obj* %call3, %struct.obj* null)
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0))
  %call6 = call %struct.obj* @flocons(double 1.000000e+00)
  %call7 = call %struct.obj* @setvar(%struct.obj* %call5, %struct.obj* %call6, %struct.obj* null)
  %call8 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0))
  %call9 = call %struct.obj* @flocons(double 2.000000e+00)
  %call10 = call %struct.obj* @setvar(%struct.obj* %call8, %struct.obj* %call9, %struct.obj* null)
  %call11 = call %struct.obj* @cintern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.186, i32 0, i32 0))
  %call12 = call %struct.obj* @flocons(double 0.000000e+00)
  %call13 = call %struct.obj* @setvar(%struct.obj* %call11, %struct.obj* %call12, %struct.obj* null)
  %call14 = call %struct.obj* @cintern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0))
  %call15 = call %struct.obj* @flocons(double 1.000000e+00)
  %call16 = call %struct.obj* @setvar(%struct.obj* %call14, %struct.obj* %call15, %struct.obj* null)
  %call17 = call %struct.obj* @cintern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0))
  %call18 = call %struct.obj* @flocons(double 2.000000e+00)
  %call19 = call %struct.obj* @setvar(%struct.obj* %call17, %struct.obj* %call18, %struct.obj* null)
  call void @init_subr_5(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @lF_SETLK)
  call void @init_subr_5(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @lF_SETLKW)
  call void @init_subr_5(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* @lF_GETLK)
  call void @init_subr_0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i32 0, i32 0), %struct.obj* ()* @siod_lib_l)
  %3 = load i8*, i8** @ld_library_path_env, align 8
  %call20 = call i8* @getenv(i8* %3) #4
  store i8* %call20, i8** %tmp1, align 8
  %tobool = icmp ne i8* %call20, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %tmp1, align 8
  %5 = load i8*, i8** @siod_lib, align 8
  %call21 = call i8* @strstr(i8* %4, i8* %5) #8
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** @ld_library_path_env, align 8
  %call23 = call i64 @strlen(i8* %6) #8
  %add = add i64 %call23, 1
  %7 = load i8*, i8** %tmp1, align 8
  %tobool24 = icmp ne i8* %7, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load i8*, i8** %tmp1, align 8
  %call25 = call i64 @strlen(i8* %8) #8
  %add26 = add i64 %call25, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add26, %cond.true ], [ 0, %cond.false ]
  %add27 = add i64 %add, %cond
  %9 = load i8*, i8** @siod_lib, align 8
  %call28 = call i64 @strlen(i8* %9) #8
  %add29 = add i64 %add27, %call28
  %add30 = add i64 %add29, 1
  %call31 = call i8* @must_malloc(i64 %add30)
  store i8* %call31, i8** %tmp2, align 8
  %10 = load i8*, i8** %tmp2, align 8
  %11 = load i8*, i8** @ld_library_path_env, align 8
  %12 = load i8*, i8** %tmp1, align 8
  %tobool32 = icmp ne i8* %12, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  %13 = load i8*, i8** %tmp1, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i8* [ %13, %cond.true.33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i32 0, i32 0), %cond.false.34 ]
  %14 = load i8*, i8** %tmp1, align 8
  %tobool37 = icmp ne i8* %14, null
  %cond38 = select i1 %tobool37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.114, i32 0, i32 0)
  %15 = load i8*, i8** @siod_lib, align 8
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i32 0, i32 0), i8* %11, i8* %cond36, i8* %cond38, i8* %15) #4
  %16 = load i8*, i8** %tmp2, align 8
  %call40 = call i32 @putenv(i8* %16) #4
  br label %if.end

if.end:                                           ; preds = %cond.end.35, %lor.lhs.false
  call void @init_subr_1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), %struct.obj* (%struct.obj*)* @llocaltime)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgmtime)
  call void @init_subr_0(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0), %struct.obj* ()* @ltzset)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lmktime)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lchdir)
  call void @init_subr_3(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lstrptime)
  call void @init_subr_2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lstrftime)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetpass)
  call void @init_subr_0(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), %struct.obj* ()* @lpipe)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lalarm)
  %call41 = call %struct.obj* @cintern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.201, i32 0, i32 0))
  %call42 = call %struct.obj* @flocons(double 1.000000e+00)
  %call43 = call %struct.obj* @setvar(%struct.obj* %call41, %struct.obj* %call42, %struct.obj* null)
  %call44 = call %struct.obj* @cintern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0))
  %call45 = call %struct.obj* @flocons(double 2.000000e+00)
  %call46 = call %struct.obj* @setvar(%struct.obj* %call44, %struct.obj* %call45, %struct.obj* null)
  %call47 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.203, i32 0, i32 0))
  %call48 = call %struct.obj* @flocons(double 9.000000e+00)
  %call49 = call %struct.obj* @setvar(%struct.obj* %call47, %struct.obj* %call48, %struct.obj* null)
  %call50 = call %struct.obj* @cintern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0))
  %call51 = call %struct.obj* @flocons(double 5.000000e+00)
  %call52 = call %struct.obj* @setvar(%struct.obj* %call50, %struct.obj* %call51, %struct.obj* null)
  %call53 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i32 0, i32 0))
  %call54 = call %struct.obj* @flocons(double 3.000000e+00)
  %call55 = call %struct.obj* @setvar(%struct.obj* %call53, %struct.obj* %call54, %struct.obj* null)
  %call56 = call %struct.obj* @cintern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0))
  %call57 = call %struct.obj* @flocons(double 7.000000e+00)
  %call58 = call %struct.obj* @setvar(%struct.obj* %call56, %struct.obj* %call57, %struct.obj* null)
  %call59 = call %struct.obj* @cintern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.207, i32 0, i32 0))
  %call60 = call %struct.obj* @flocons(double 1.000000e+01)
  %call61 = call %struct.obj* @setvar(%struct.obj* %call59, %struct.obj* %call60, %struct.obj* null)
  %call62 = call %struct.obj* @cintern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0))
  %call63 = call %struct.obj* @flocons(double 6.000000e+00)
  %call64 = call %struct.obj* @setvar(%struct.obj* %call62, %struct.obj* %call63, %struct.obj* null)
  %call65 = call %struct.obj* @cintern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.209, i32 0, i32 0))
  %call66 = call %struct.obj* @flocons(double 4.000000e+00)
  %call67 = call %struct.obj* @setvar(%struct.obj* %call65, %struct.obj* %call66, %struct.obj* null)
  %call68 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0))
  %call69 = call %struct.obj* @flocons(double 8.000000e+00)
  %call70 = call %struct.obj* @setvar(%struct.obj* %call68, %struct.obj* %call69, %struct.obj* null)
  call void @init_subr_3(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @datref)
  call void @init_subr_2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @sdatref)
  call void @init_subr_2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @mkdatref)
  call void @init_subr_2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @datlength)
  call void @init_subr_1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.214, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lposition_script)
  call void @init_slibu_version()
  ret void
}

declare void @init_subr_1(i8*, %struct.obj* (%struct.obj*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct.obj* @cgi_main(%struct.obj* %result) #0 {
entry:
  %result.addr = alloca %struct.obj*, align 8
  store %struct.obj* %result, %struct.obj** %result.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %3)
  %cmp3 = icmp eq %struct.obj* %call, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %land.lhs.true
  br label %cond.end.10

cond.false.6:                                     ; preds = %land.lhs.true
  %4 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %call7 = call %struct.obj* @car(%struct.obj* %4)
  %type8 = getelementptr inbounds %struct.obj, %struct.obj* %call7, i32 0, i32 1
  %5 = load i16, i16* %type8, align 2
  %conv9 = sext i16 %5 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.6, %cond.true.5
  %cond11 = phi i32 [ 0, %cond.true.5 ], [ %conv9, %cond.false.6 ]
  %cmp12 = icmp eq i32 %cond11, 13
  br i1 %cmp12, label %if.then, label %if.end.23

if.then:                                          ; preds = %cond.end.10
  call void @put_st(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.215, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.216, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.217, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.218, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.219, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.220, i32 0, i32 0))
  call void @put_st(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.221, i32 0, i32 0))
  %6 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %call14 = call %struct.obj* @car(%struct.obj* %6)
  %call15 = call %struct.obj* @lprint(%struct.obj* %call14, %struct.obj* null)
  %7 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %call16 = call %struct.obj* @cdr(%struct.obj* %7)
  %cmp17 = icmp ne %struct.obj* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0))
  %8 = load %struct.obj*, %struct.obj** %result.addr, align 8
  %call20 = call %struct.obj* @cdr(%struct.obj* %8)
  %call21 = call %struct.obj* @lprint(%struct.obj* %call20, %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  call void @put_st(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.222, i32 0, i32 0))
  %call22 = call %struct.obj* @err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.223, i32 0, i32 0), %struct.obj* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %cond.end.10, %cond.end
  ret %struct.obj* null
}

declare i64 @repl_driver(i64, i64, %struct.repl_hooks*) #1

; Function Attrs: nounwind uwtable
define internal i32 @htqs_arg(i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %tmpbuff = alloca [1024 x i8], align 16
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0)) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i64 @repl_driver(i64 1, i64 1, %struct.repl_hooks* null)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i8*, i8** %value.addr, align 8
  %call4 = call i8* @strchr(i8* %2, i32 40) #8
  %tobool = icmp ne i8* %call4, null
  br i1 %tobool, label %if.else.21, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuff, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.226, i32 0, i32 0)) #4
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuff, i32 0, i32 0
  %call8 = call i64 @strlen(i8* %arraydecay7) #8
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuff, i32 0, i64 %call8
  store i8* %arrayidx, i8** %p1, align 8
  %3 = load i8*, i8** %value.addr, align 8
  store i8* %3, i8** %p2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %4 = load i8*, i8** %p2, align 8
  %5 = load i8, i8* %4, align 1
  %tobool9 = icmp ne i8 %5, 0
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p2, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = sext i8 %7 to i32
  %call11 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0), i32 %conv10) #8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  %8 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  store i8 92, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.13, %for.body
  %9 = load i8*, i8** %p2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %p1, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr14, i8** %p1, align 8
  store i8 %10, i8* %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8*, i8** %p2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr15, i8** %p2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %p1, align 8
  store i8 0, i8* %13, align 1
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuff, i32 0, i32 0
  %call17 = call i8* @strcat(i8* %arraydecay16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0)) #4
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuff, i32 0, i32 0
  %call19 = call i64 @repl_c_string(i8* %arraydecay18, i64 0, i64 0, i64 0)
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %retval
  br label %return

if.else.21:                                       ; preds = %if.else
  %14 = load i8*, i8** %value.addr, align 8
  %call22 = call i64 @repl_c_string(i8* %14, i64 0, i64 0, i64 0)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %retval
  br label %return

return:                                           ; preds = %if.else.21, %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i64 @position_script(%struct._IO_FILE* %f, i8* %buff, i64 %bufflen) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %buff.addr = alloca i8*, align 8
  %bufflen.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %s = alloca i32, align 4
  %pos = alloca i64, align 8
  %offset = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i64 %bufflen, i64* %bufflen.addr, align 8
  store i32 0, i32* %s, align 4
  store i64 -1, i64* %pos, align 8
  %0 = load i8*, i8** %buff.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i64 0, i64* %offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %1 = load i64, i64* %offset, align 8
  %cmp = icmp slt i64 %1, 250000
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  switch i32 %3, label %sw.default [
    i32 -1, label %sw.bb
    i32 35, label %sw.bb.1
    i32 33, label %sw.bb.2
    i32 47, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  store i64 -1, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %for.body
  store i32 35, i32* %s, align 4
  %4 = load i64, i64* %offset, align 8
  store i64 %4, i64* %pos, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %5 = load i32, i32* %s, align 4
  %cmp3 = icmp eq i32 %5, 35
  %cond = select i1 %cmp3, i32 33, i32 0
  store i32 %cond, i32* %s, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %6 = load i32, i32* %s, align 4
  %cmp5 = icmp eq i32 %6, 33
  br i1 %cmp5, label %if.then, label %if.end.26

if.then:                                          ; preds = %sw.bb.4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call6, i32* %c, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %8, 32
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.9, %while.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %while.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call11, i32* %c, align 4
  %cmp12 = icmp ne i32 %call11, 10
  br i1 %cmp12, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.10
  %10 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %10, -1
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load i64, i64* %j, align 8
  %add = add i64 %11, 1
  %12 = load i64, i64* %bufflen.addr, align 8
  %cmp14 = icmp ule i64 %add, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.10
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.10 ], [ %cmp14, %land.rhs ]
  br i1 %13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %land.end
  %14 = load i32, i32* %c, align 4
  %conv = trunc i32 %14 to i8
  %15 = load i64, i64* %j, align 8
  %16 = load i8*, i8** %buff.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8 %conv, i8* %arrayidx16, align 1
  %17 = load i64, i64* %j, align 8
  %add17 = add i64 %17, 1
  %18 = load i8*, i8** %buff.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 %add17
  store i8 0, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %19 = load i64, i64* %j, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.10

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %buff.addr, align 8
  %call19 = call i64 @strspn(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0)) #8
  %21 = load i8*, i8** %buff.addr, align 8
  %call20 = call i64 @strlen(i8* %21) #8
  %cmp21 = icmp eq i64 %call19, %call20
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %22 = load i8*, i8** %buff.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %arrayidx24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  %23 = load i64, i64* %pos, align 8
  store i64 %23, i64* %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.4
  store i32 0, i32* %s, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 0, i32* %s, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.26, %sw.bb.2, %sw.bb.1
  br label %for.inc.27

for.inc.27:                                       ; preds = %sw.epilog
  %24 = load i64, i64* %offset, align 8
  %inc28 = add nsw i64 %24, 1
  store i64 %inc28, i64* %offset, align 8
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %for.end.29, %if.end.25, %sw.bb
  %25 = load i64, i64* %retval
  ret i64 %25
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @siod_shuffle_args(i32* %pargc, i8*** %pargv) #0 {
entry:
  %pargc.addr = alloca i32*, align 8
  %pargv.addr = alloca i8***, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %flagbuff = alloca [100 x i8], align 16
  %argv = alloca i8**, align 8
  %nargv = alloca i8**, align 8
  %offbuff = alloca [10 x i8], align 1
  %pos = alloca i64, align 8
  %argc = alloca i32, align 4
  %nargc = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %pargc, i32** %pargc.addr, align 8
  store i8*** %pargv, i8**** %pargv.addr, align 8
  %0 = load i32*, i32** %pargc.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %argc, align 4
  %2 = load i8***, i8**** %pargv.addr, align 8
  %3 = load i8**, i8*** %2, align 8
  store i8** %3, i8*** %argv, align 8
  %4 = load i8**, i8*** %argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %flagbuff, i32 0, i32 0
  %call1 = call i64 @position_script(%struct._IO_FILE* %6, i8* %arraydecay, i64 100)
  store i64 %call1, i64* %pos, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %7)
  %8 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load i32, i32* %argc, align 4
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %flagbuff, i32 0, i32 0
  %10 = load i8, i8* %arraydecay5, align 1
  %conv = sext i8 %10 to i32
  %tobool6 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool6, i32 2, i32 1
  %add = add nsw i32 %9, %cond
  store i32 %add, i32* %nargc, align 4
  %11 = load i32, i32* %nargc, align 4
  %conv7 = sext i32 %11 to i64
  %mul = mul i64 8, %conv7
  %call8 = call noalias i8* @malloc(i64 %mul) #4
  %12 = bitcast i8* %call8 to i8**
  store i8** %12, i8*** %nargv, align 8
  store i32 0, i32* %j, align 4
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %nargv, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i8** %arrayidx9, align 8
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %flagbuff, i32 0, i32 0
  %15 = load i8, i8* %arraydecay10, align 1
  %tobool11 = icmp ne i8 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.4
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %flagbuff, i32 0, i32 0
  %call14 = call noalias i8* @strdup(i8* %arraydecay13) #4
  %16 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %j, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i8**, i8*** %nargv, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %17, i64 %idxprom16
  store i8* %call14, i8** %arrayidx17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end.4
  %arraydecay19 = getelementptr inbounds [10 x i8], [10 x i8]* %offbuff, i32 0, i32 0
  %18 = load i64, i64* %pos, align 8
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i64 %18) #4
  %arraydecay21 = getelementptr inbounds [10 x i8], [10 x i8]* %offbuff, i32 0, i32 0
  %call22 = call i64 @strlen(i8* %arraydecay21) #8
  %19 = load i8**, i8*** %argv, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %19, i64 0
  %20 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i64 @strlen(i8* %20) #8
  %add25 = add i64 %call22, %call24
  %add26 = add i64 %add25, 2
  %call27 = call noalias i8* @malloc(i64 %add26) #4
  %21 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8**, i8*** %nargv, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %22, i64 %idxprom28
  store i8* %call27, i8** %arrayidx29, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load i8**, i8*** %nargv, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %24, i64 %idxprom30
  %25 = load i8*, i8** %arrayidx31, align 8
  %arraydecay32 = getelementptr inbounds [10 x i8], [10 x i8]* %offbuff, i32 0, i32 0
  %26 = load i8**, i8*** %argv, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i8* %arraydecay32, i32 124, i8* %27) #4
  %28 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %j, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %29 = load i32, i32* %k, align 4
  %30 = load i32, i32* %argc, align 4
  %cmp36 = icmp slt i32 %29, %30
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i8**, i8*** %argv, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %32, i64 %idxprom38
  %33 = load i8*, i8** %arrayidx39, align 8
  %34 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %j, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load i8**, i8*** %nargv, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %35, i64 %idxprom41
  store i8* %33, i8** %arrayidx42, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %k, align 4
  %inc43 = add nsw i32 %36, 1
  store i32 %inc43, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %nargc, align 4
  %38 = load i32*, i32** %pargc.addr, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i8**, i8*** %nargv, align 8
  %40 = load i8***, i8**** %pargv.addr, align 8
  store i8** %39, i8*** %40, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @lposition_script(%struct.obj* %lfile) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %lfile.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %iflag = alloca i64, align 8
  %pos = alloca i64, align 8
  %flbuff = alloca [100 x i8], align 16
  store %struct.obj* %lfile, %struct.obj** %lfile.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lfile.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @no_interrupt(i64 1)
  store i64 %call1, i64* %iflag, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %flbuff, i32 0, i32 0
  %call2 = call i64 @position_script(%struct._IO_FILE* %2, i8* %arraydecay, i64 100)
  store i64 %call2, i64* %pos, align 8
  %3 = load i64, i64* %iflag, align 8
  %call3 = call i64 @no_interrupt(i64 %3)
  %4 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %pos, align 8
  %conv = sitofp i64 %5 to double
  %call4 = call %struct.obj* @flocons(double %conv)
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %flbuff, i32 0, i32 0
  %call6 = call %struct.obj* @strcons(i64 -1, i8* %arraydecay5)
  %call7 = call %struct.obj* @cons(%struct.obj* %call4, %struct.obj* %call6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define void @siod_init(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @process_cla(i32 %0, i8** %1, i32 0)
  call void @init_storage()
  call void @init_subrs()
  call void @init_trace()
  call void @init_slibu()
  ret void
}

declare i64 @allocate_user_tc() #1

declare void @set_gc_hooks(i64, %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, void (%struct.obj*)*, i64*) #1

declare void @set_print_hooks(i64, void (%struct.obj*, %struct.gen_printio*)*) #1

declare void @init_subr_2(i8*, %struct.obj* (%struct.obj*, %struct.obj*)*) #1

declare void @gc_protect_sym(%struct.obj**, i8*) #1

declare void @init_lsubr(i8*, %struct.obj* (%struct.obj*)*) #1

declare void @init_subr_0(i8*, %struct.obj* ()*) #1

declare void @init_subr_3(i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*) #1

declare void @init_subr_5(i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*) #1

; Function Attrs: nounwind uwtable
define internal void @init_slibu_version() #0 {
entry:
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0))
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.230, i32 0, i32 0))
  %call2 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call1, %struct.obj* null)
  ret void
}

declare %struct.obj* @lprint(%struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i64 @repl_c_string(i8*, i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
