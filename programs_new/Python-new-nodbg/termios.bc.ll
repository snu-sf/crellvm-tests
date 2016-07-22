; ModuleID = './termios.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant = type { i8*, i64 }
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
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@termios_constants = internal global [233 x %struct.constant] [%struct.constant { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 3 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 5 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 6 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 7 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 9 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 10 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i64 11 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i64 12 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i64 13 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i64 14 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64 15 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i64 4097 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 4098 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 4099 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 4100 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 4101 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 4102 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 4103 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i64 4104 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i64 4105 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i64 4106 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i64 4107 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i64 4108 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 4109 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 4110 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i64 4111 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i64 4096 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i64 3 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i64 512 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i64 1024 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i64 2048 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i64 4096 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i64 8192 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i64 1536 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i64 6144 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i64 8192 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i64 16384 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i64 32768 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i64 512 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i64 1024 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i64 1536 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i64 2048 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i64 4096 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i64 6144 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i64 6144 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i64 8192 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i64 16384 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i64 32768 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i64 48 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i64 512 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i64 1024 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i64 2048 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i64 269418496 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i64 2147483648 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i64 48 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i64 512 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i64 1024 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i64 2048 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i64 4096 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i64 16384 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i64 32768 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i64 3 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i64 5 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i64 6 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i64 7 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i64 7 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i64 9 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i64 10 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i64 11 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0), i64 12 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i64 13 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), i64 14 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i64 15 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 4100 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i64 4111 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i64 25 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i64 127 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), i64 15 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i32 0, i32 0), i64 3 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i64 21 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i64 22 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i32 0, i32 0), i64 28 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i64 18 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i64 17 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i64 19 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i64 26 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0), i64 23 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), i64 14 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i64 15 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i32 0, i32 0), i64 21586 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i64 21585 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i64 21537 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i64 21584 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i64 21531 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i64 1073676288 }, %struct.constant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.159, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i64 3 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i64 21515 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i64 21509 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i64 21505 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i64 21513 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), i64 21541 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i32 0, i32 0), i64 21510 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i32 0, i32 0), i64 21512 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.174, i32 0, i32 0), i64 21511 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i64 21506 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i64 21508 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0), i64 21507 }, %struct.constant { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i64 21514 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i64 21533 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i64 21516 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i64 21540 }, %struct.constant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.182, i32 0, i32 0), i64 21597 }, %struct.constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.183, i32 0, i32 0), i64 21590 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.184, i32 0, i32 0), i64 21519 }, %struct.constant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i32 0, i32 0), i64 21534 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i64 21529 }, %struct.constant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i64 21523 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0), i64 21531 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.189, i32 0, i32 0), i64 21532 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0), i64 21527 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0), i64 21526 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i32 0, i32 0), i64 21525 }, %struct.constant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i32 0, i32 0), i64 21596 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.194, i32 0, i32 0), i64 21528 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.195, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i64 64 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.197, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.198, i32 0, i32 0), i64 256 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.199, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.200, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.201, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.202, i32 0, i32 0), i64 128 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.204, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.205, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0), i64 21538 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.207, i32 0, i32 0), i64 21517 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i64 21521 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i64 21536 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i64 0 }, %struct.constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.211, i32 0, i32 0), i64 32 }, %struct.constant { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.212, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.213, i32 0, i32 0), i64 2 }, %struct.constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.214, i32 0, i32 0), i64 16 }, %struct.constant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.215, i32 0, i32 0), i64 8 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), i64 4 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.217, i32 0, i32 0), i64 21518 }, %struct.constant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.218, i32 0, i32 0), i64 21587 }, %struct.constant { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.219, i32 0, i32 0), i64 21593 }, %struct.constant { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.220, i32 0, i32 0), i64 21594 }, %struct.constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i32 0, i32 0), i64 21592 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.222, i32 0, i32 0), i64 21588 }, %struct.constant { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0), i64 21595 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0), i64 21589 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), i64 1 }, %struct.constant { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i32 0, i32 0), i64 21539 }, %struct.constant { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.227, i32 0, i32 0), i64 21591 }, %struct.constant { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.228, i32 0, i32 0), i64 21520 }, %struct.constant { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i64 21535 }, %struct.constant { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i32 0, i32 0), i64 21530 }, %struct.constant { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.231, i32 0, i32 0), i64 21522 }, %struct.constant { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i32 0, i32 0), i64 21524 }, %struct.constant zeroinitializer], align 16
@termiosmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([453 x i8], [453 x i8]* @termios__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @termios_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@TermiosError = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"termios.error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"B50\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"B75\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"B110\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"B134\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"B150\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"B200\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"B300\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"B600\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"B1200\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"B1800\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"B2400\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"B4800\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"B9600\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"B19200\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"B38400\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"B57600\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"B115200\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"B230400\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"B460800\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"B500000\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"B576000\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"B921600\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"B1000000\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"B1152000\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"B1500000\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"B2000000\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"B2500000\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"B3000000\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"B3500000\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"B4000000\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CBAUDEX\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"TCSANOW\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"TCSADRAIN\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"TCSAFLUSH\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"TCIFLUSH\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"TCOFLUSH\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"TCIOFLUSH\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"TCOOFF\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"TCOON\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"TCIOFF\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"TCION\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"IGNBRK\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"BRKINT\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"IGNPAR\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"PARMRK\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"INPCK\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"ISTRIP\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"INLCR\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"IGNCR\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"ICRNL\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"IUCLC\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"IXON\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"IXANY\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"IXOFF\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"IMAXBEL\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"OPOST\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"OLCUC\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"ONLCR\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"OCRNL\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"ONOCR\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"ONLRET\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"OFILL\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"OFDEL\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"NLDLY\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"CRDLY\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"TABDLY\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"BSDLY\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"VTDLY\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"FFDLY\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"NL0\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"NL1\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"CR0\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"CR1\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"CR2\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"CR3\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"TAB0\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"TAB1\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"TAB2\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"TAB3\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"XTABS\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"BS0\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"BS1\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"VT0\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"VT1\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"FF0\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"FF1\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"CSIZE\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"CSTOPB\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"CREAD\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"PARENB\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"PARODD\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"HUPCL\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"CLOCAL\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"CIBAUD\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"CRTSCTS\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"CS5\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"CS6\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"CS7\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"CS8\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"ISIG\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"ICANON\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"XCASE\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"ECHO\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"ECHOE\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"ECHOK\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"ECHONL\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"ECHOCTL\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ECHOPRT\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"ECHOKE\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"FLUSHO\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"NOFLSH\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"TOSTOP\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"PENDIN\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"IEXTEN\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"VINTR\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"VQUIT\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"VERASE\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"VKILL\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"VEOF\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"VTIME\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"VMIN\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"VSWTC\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"VSWTCH\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"VSTART\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"VSTOP\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"VSUSP\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"VEOL\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"VREPRINT\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"VDISCARD\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"VWERASE\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"VLNEXT\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"VEOL2\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"CBAUD\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"CDSUSP\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"CEOF\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"CEOL\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"CEOT\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"CERASE\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"CFLUSH\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"CINTR\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"CKILL\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"CLNEXT\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"CQUIT\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"CRPRNT\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"CSTART\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"CSTOP\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"CSUSP\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"CWERASE\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"EXTA\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"EXTB\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"FIOASYNC\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"FIOCLEX\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"FIONBIO\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"FIONCLEX\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"FIONREAD\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"IOCSIZE_MASK\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"IOCSIZE_SHIFT\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"NCC\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"NCCS\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"N_MOUSE\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"N_PPP\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"N_SLIP\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"N_STRIP\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"N_TTY\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"TCFLSH\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"TCGETA\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"TCGETS\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"TCSBRK\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"TCSBRKP\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"TCSETA\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"TCSETAF\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"TCSETAW\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"TCSETS\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"TCSETSF\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"TCSETSW\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"TCXONC\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"TIOCCONS\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"TIOCEXCL\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"TIOCGETD\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"TIOCGICOUNT\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"TIOCGLCKTRMIOS\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"TIOCGPGRP\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"TIOCGSERIAL\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"TIOCGSOFTCAR\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"TIOCGWINSZ\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"TIOCINQ\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"TIOCLINUX\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"TIOCMBIC\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"TIOCMBIS\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"TIOCMGET\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"TIOCMIWAIT\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"TIOCMSET\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"TIOCM_CAR\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"TIOCM_CD\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"TIOCM_CTS\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"TIOCM_DSR\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"TIOCM_DTR\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"TIOCM_LE\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"TIOCM_RI\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"TIOCM_RNG\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"TIOCM_RTS\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"TIOCM_SR\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"TIOCM_ST\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"TIOCNOTTY\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"TIOCNXCL\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"TIOCOUTQ\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"TIOCPKT\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"TIOCPKT_DATA\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"TIOCPKT_DOSTOP\00", align 1
@.str.212 = private unnamed_addr constant [18 x i8] c"TIOCPKT_FLUSHREAD\00", align 1
@.str.213 = private unnamed_addr constant [19 x i8] c"TIOCPKT_FLUSHWRITE\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"TIOCPKT_NOSTOP\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"TIOCPKT_START\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"TIOCPKT_STOP\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"TIOCSCTTY\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"TIOCSERCONFIG\00", align 1
@.str.219 = private unnamed_addr constant [14 x i8] c"TIOCSERGETLSR\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"TIOCSERGETMULTI\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"TIOCSERGSTRUCT\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"TIOCSERGWILD\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"TIOCSERSETMULTI\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"TIOCSERSWILD\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"TIOCSER_TEMT\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"TIOCSETD\00", align 1
@.str.227 = private unnamed_addr constant [15 x i8] c"TIOCSLCKTRMIOS\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"TIOCSPGRP\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"TIOCSSERIAL\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"TIOCSSOFTCAR\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"TIOCSTI\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"TIOCSWINSZ\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"termios\00", align 1
@termios__doc__ = internal global [453 x i8] c"This module provides an interface to the Posix calls for tty I/O control.\0AFor a complete description of these calls, see the Posix or Unix manual\0Apages. It is only available for those Unix versions that support Posix\0Atermios style tty I/O control.\0A\0AAll functions in this module take a file descriptor fd as their first\0Aargument. This can be an integer file descriptor, such as returned by\0Asys.stdin.fileno(), or a file object, such as sys.stdin itself.\00", align 16
@termios_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcgetattr, i32 1, i8* getelementptr inbounds ([468 x i8], [468 x i8]* @termios_tcgetattr__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.235, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcsetattr, i32 1, i8* getelementptr inbounds ([476 x i8], [476 x i8]* @termios_tcsetattr__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcsendbreak, i32 1, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @termios_tcsendbreak__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcdrain, i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @termios_tcdrain__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.238, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcflush, i32 1, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @termios_tcflush__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @termios_tcflow, i32 1, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @termios_tcflow__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.234 = private unnamed_addr constant [10 x i8] c"tcgetattr\00", align 1
@termios_tcgetattr__doc__ = internal global [468 x i8] c"tcgetattr(fd) -> list_of_attrs\0A\0AGet the tty attributes for file descriptor fd, as follows:\0A[iflag, oflag, cflag, lflag, ispeed, ospeed, cc] where cc is a list\0Aof the tty special characters (each a string of length 1, except the items\0Awith indices VMIN and VTIME, which are integers when these fields are\0Adefined).  The interpretation of the flags and the speeds as well as the\0Aindexing in the cc array must be done using the symbolic constants defined\0Ain this module.\00", align 16
@.str.235 = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1
@termios_tcsetattr__doc__ = internal global [476 x i8] c"tcsetattr(fd, when, attributes) -> None\0A\0ASet the tty attributes for file descriptor fd.\0AThe attributes to be set are taken from the attributes argument, which\0Ais a list like the one returned by tcgetattr(). The when argument\0Adetermines when the attributes are changed: termios.TCSANOW to\0Achange immediately, termios.TCSADRAIN to change after transmitting all\0Aqueued output, or termios.TCSAFLUSH to change after transmitting all\0Aqueued output and discarding all queued input. \00", align 16
@.str.236 = private unnamed_addr constant [12 x i8] c"tcsendbreak\00", align 1
@termios_tcsendbreak__doc__ = internal global [174 x i8] c"tcsendbreak(fd, duration) -> None\0A\0ASend a break on file descriptor fd.\0AA zero duration sends a break for 0.25-0.5 seconds; a nonzero duration\0Ahas a system dependent meaning.\00", align 16
@.str.237 = private unnamed_addr constant [8 x i8] c"tcdrain\00", align 1
@termios_tcdrain__doc__ = internal global [95 x i8] c"tcdrain(fd) -> None\0A\0AWait until all output written to file descriptor fd has been transmitted.\00", align 16
@.str.238 = private unnamed_addr constant [8 x i8] c"tcflush\00", align 1
@termios_tcflush__doc__ = internal global [229 x i8] c"tcflush(fd, queue) -> None\0A\0ADiscard queued data on file descriptor fd.\0AThe queue selector specifies which queue: termios.TCIFLUSH for the input\0Aqueue, termios.TCOFLUSH for the output queue, or termios.TCIOFLUSH for\0Aboth queues. \00", align 16
@.str.239 = private unnamed_addr constant [7 x i8] c"tcflow\00", align 1
@termios_tcflow__doc__ = internal global [247 x i8] c"tcflow(fd, action) -> None\0A\0ASuspend or resume input or output on file descriptor fd.\0AThe action argument can be termios.TCOOFF to suspend output,\0Atermios.TCOON to restart output, termios.TCIOFF to suspend input,\0Aor termios.TCION to restart input.\00", align 16
@.str.240 = private unnamed_addr constant [13 x i8] c"O&:tcgetattr\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"O&iO:tcsetattr\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.242 = private unnamed_addr constant [41 x i8] c"tcsetattr, arg 3: must be 7 element list\00", align 1
@.str.243 = private unnamed_addr constant [49 x i8] c"tcsetattr: attributes[6] must be %d element list\00", align 1
@.str.244 = private unnamed_addr constant [65 x i8] c"tcsetattr: elements of attributes must be characters or integers\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.245 = private unnamed_addr constant [16 x i8] c"O&i:tcsendbreak\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"O&:tcdrain\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"O&i:tcflush\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"O&i:tcflow\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_termios() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %constant = alloca %struct.constant*, align 8
  store %struct.constant* getelementptr inbounds ([233 x %struct.constant], [233 x %struct.constant]* @termios_constants, i32 0, i32 0), %struct.constant** %constant, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @termiosmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @TermiosError, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call3, %struct._object** @TermiosError, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct._object*, %struct._object** @TermiosError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %5 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %6 = load %struct.constant*, %struct.constant** %constant, align 8
  %name = getelementptr inbounds %struct.constant, %struct.constant* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %cmp6 = icmp ne i8* %7, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._object*, %struct._object** %m, align 8
  %9 = load %struct.constant*, %struct.constant** %constant, align 8
  %name7 = getelementptr inbounds %struct.constant, %struct.constant* %9, i32 0, i32 0
  %10 = load i8*, i8** %name7, align 8
  %11 = load %struct.constant*, %struct.constant** %constant, align 8
  %value = getelementptr inbounds %struct.constant, %struct.constant* %11, i32 0, i32 1
  %12 = load i64, i64* %value, align 8
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* %10, i64 %12)
  %13 = load %struct.constant*, %struct.constant** %constant, align 8
  %incdec.ptr = getelementptr %struct.constant, %struct.constant* %13, i32 1
  store %struct.constant* %incdec.ptr, %struct.constant** %constant, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcgetattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %mode = alloca %struct.termios, align 4
  %cc = alloca %struct._object*, align 8
  %ispeed = alloca i32, align 4
  %ospeed = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast i32* %fd to i8*
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call1 = call i32 @tcgetattr(i32 %2, %struct.termios* %mode) #3
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @cfgetispeed(%struct.termios* %mode) #3
  store i32 %call5, i32* %ispeed, align 4
  %call6 = call i32 @cfgetospeed(%struct.termios* %mode) #3
  store i32 %call6, i32* %ospeed, align 4
  %call7 = call %struct._object* @PyList_New(i64 32)
  store %struct._object* %call7, %struct._object** %cc, align 8
  %4 = load %struct._object*, %struct._object** %cc, align 8
  %cmp8 = icmp eq %struct._object* %4, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %5 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %5, 32
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %c_cc, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %ch, align 1
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* %ch, i64 1)
  store %struct._object* %call12, %struct._object** %v, align 8
  %8 = load %struct._object*, %struct._object** %v, align 8
  %cmp13 = icmp eq %struct._object* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %err

if.end.15:                                        ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %cc, align 8
  %10 = load i32, i32* %i, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct._object*, %struct._object** %v, align 8
  %call16 = call i32 @PyList_SetItem(%struct._object* %9, i64 %conv, %struct._object* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3
  %13 = load i32, i32* %c_lflag, align 4
  %and = and i32 %13, 2
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %for.end
  %c_cc20 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5
  %arrayidx21 = getelementptr [32 x i8], [32 x i8]* %c_cc20, i32 0, i64 6
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %14 to i64
  %call23 = call %struct._object* @PyLong_FromLong(i64 %conv22)
  store %struct._object* %call23, %struct._object** %v, align 8
  %15 = load %struct._object*, %struct._object** %v, align 8
  %cmp24 = icmp eq %struct._object* %15, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.19
  br label %err

if.end.27:                                        ; preds = %if.then.19
  %16 = load %struct._object*, %struct._object** %cc, align 8
  %17 = load %struct._object*, %struct._object** %v, align 8
  %call28 = call i32 @PyList_SetItem(%struct._object* %16, i64 6, %struct._object* %17)
  %c_cc29 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5
  %arrayidx30 = getelementptr [32 x i8], [32 x i8]* %c_cc29, i32 0, i64 5
  %18 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %18 to i64
  %call32 = call %struct._object* @PyLong_FromLong(i64 %conv31)
  store %struct._object* %call32, %struct._object** %v, align 8
  %19 = load %struct._object*, %struct._object** %v, align 8
  %cmp33 = icmp eq %struct._object* %19, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.27
  br label %err

if.end.36:                                        ; preds = %if.end.27
  %20 = load %struct._object*, %struct._object** %cc, align 8
  %21 = load %struct._object*, %struct._object** %v, align 8
  %call37 = call i32 @PyList_SetItem(%struct._object* %20, i64 5, %struct._object* %21)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %for.end
  %call39 = call %struct._object* @PyList_New(i64 7)
  store %struct._object* %call39, %struct._object** %v, align 8
  %tobool40 = icmp ne %struct._object* %call39, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  br label %err

if.end.42:                                        ; preds = %if.end.38
  %22 = load %struct._object*, %struct._object** %v, align 8
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 0
  %23 = load i32, i32* %c_iflag, align 4
  %conv43 = zext i32 %23 to i64
  %call44 = call %struct._object* @PyLong_FromLong(i64 %conv43)
  %call45 = call i32 @PyList_SetItem(%struct._object* %22, i64 0, %struct._object* %call44)
  %24 = load %struct._object*, %struct._object** %v, align 8
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 1
  %25 = load i32, i32* %c_oflag, align 4
  %conv46 = zext i32 %25 to i64
  %call47 = call %struct._object* @PyLong_FromLong(i64 %conv46)
  %call48 = call i32 @PyList_SetItem(%struct._object* %24, i64 1, %struct._object* %call47)
  %26 = load %struct._object*, %struct._object** %v, align 8
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 2
  %27 = load i32, i32* %c_cflag, align 4
  %conv49 = zext i32 %27 to i64
  %call50 = call %struct._object* @PyLong_FromLong(i64 %conv49)
  %call51 = call i32 @PyList_SetItem(%struct._object* %26, i64 2, %struct._object* %call50)
  %28 = load %struct._object*, %struct._object** %v, align 8
  %c_lflag52 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3
  %29 = load i32, i32* %c_lflag52, align 4
  %conv53 = zext i32 %29 to i64
  %call54 = call %struct._object* @PyLong_FromLong(i64 %conv53)
  %call55 = call i32 @PyList_SetItem(%struct._object* %28, i64 3, %struct._object* %call54)
  %30 = load %struct._object*, %struct._object** %v, align 8
  %31 = load i32, i32* %ispeed, align 4
  %conv56 = zext i32 %31 to i64
  %call57 = call %struct._object* @PyLong_FromLong(i64 %conv56)
  %call58 = call i32 @PyList_SetItem(%struct._object* %30, i64 4, %struct._object* %call57)
  %32 = load %struct._object*, %struct._object** %v, align 8
  %33 = load i32, i32* %ospeed, align 4
  %conv59 = zext i32 %33 to i64
  %call60 = call %struct._object* @PyLong_FromLong(i64 %conv59)
  %call61 = call i32 @PyList_SetItem(%struct._object* %32, i64 5, %struct._object* %call60)
  %34 = load %struct._object*, %struct._object** %v, align 8
  %35 = load %struct._object*, %struct._object** %cc, align 8
  %call62 = call i32 @PyList_SetItem(%struct._object* %34, i64 6, %struct._object* %35)
  %call63 = call %struct._object* @PyErr_Occurred()
  %tobool64 = icmp ne %struct._object* %call63, null
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.42
  br label %do.body

do.body:                                          ; preds = %if.then.65
  %36 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp66 = icmp ne i64 %dec, 0
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %do.body
  br label %if.end.69

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.68
  br label %do.end

do.end:                                           ; preds = %if.end.69
  br label %err

if.end.70:                                        ; preds = %if.end.42
  %43 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

err:                                              ; preds = %do.end, %if.then.41, %if.then.35, %if.then.26, %if.then.14
  br label %do.body.71

do.body.71:                                       ; preds = %err
  %44 = load %struct._object*, %struct._object** %cc, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp72, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %46, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.71
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.71
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %49(%struct._object* %50)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.82, %if.end.70, %if.then.9, %if.then.2, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcsetattr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %when = alloca i32, align 4
  %mode = alloca %struct.termios, align 4
  %ispeed = alloca i32, align 4
  %ospeed = alloca i32, align 4
  %term = alloca %struct._object*, align 8
  %cc = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.241, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %when, %struct._object** %term)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %term, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %term, align 8
  %call1 = call i64 @PyList_Size(%struct._object* %4)
  %cmp2 = icmp ne i64 %call1, 7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.242, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = load i32, i32* %fd, align 4
  %call5 = call i32 @tcgetattr(i32 %6, %struct.termios* %mode) #3
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %term, align 8
  %call10 = call %struct._object* @PyList_GetItem(%struct._object* %8, i64 0)
  %call11 = call i64 @PyLong_AsLong(%struct._object* %call10)
  %conv = trunc i64 %call11 to i32
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 0
  store i32 %conv, i32* %c_iflag, align 4
  %9 = load %struct._object*, %struct._object** %term, align 8
  %call12 = call %struct._object* @PyList_GetItem(%struct._object* %9, i64 1)
  %call13 = call i64 @PyLong_AsLong(%struct._object* %call12)
  %conv14 = trunc i64 %call13 to i32
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 1
  store i32 %conv14, i32* %c_oflag, align 4
  %10 = load %struct._object*, %struct._object** %term, align 8
  %call15 = call %struct._object* @PyList_GetItem(%struct._object* %10, i64 2)
  %call16 = call i64 @PyLong_AsLong(%struct._object* %call15)
  %conv17 = trunc i64 %call16 to i32
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 2
  store i32 %conv17, i32* %c_cflag, align 4
  %11 = load %struct._object*, %struct._object** %term, align 8
  %call18 = call %struct._object* @PyList_GetItem(%struct._object* %11, i64 3)
  %call19 = call i64 @PyLong_AsLong(%struct._object* %call18)
  %conv20 = trunc i64 %call19 to i32
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3
  store i32 %conv20, i32* %c_lflag, align 4
  %12 = load %struct._object*, %struct._object** %term, align 8
  %call21 = call %struct._object* @PyList_GetItem(%struct._object* %12, i64 4)
  %call22 = call i64 @PyLong_AsLong(%struct._object* %call21)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %ispeed, align 4
  %13 = load %struct._object*, %struct._object** %term, align 8
  %call24 = call %struct._object* @PyList_GetItem(%struct._object* %13, i64 5)
  %call25 = call i64 @PyLong_AsLong(%struct._object* %call24)
  %conv26 = trunc i64 %call25 to i32
  store i32 %conv26, i32* %ospeed, align 4
  %14 = load %struct._object*, %struct._object** %term, align 8
  %call27 = call %struct._object* @PyList_GetItem(%struct._object* %14, i64 6)
  store %struct._object* %call27, %struct._object** %cc, align 8
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.9
  %15 = load %struct._object*, %struct._object** %cc, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_flags33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags33, align 8
  %and34 = and i64 %17, 33554432
  %cmp35 = icmp ne i64 %and34, 0
  br i1 %cmp35, label %lor.lhs.false.37, label %if.then.41

lor.lhs.false.37:                                 ; preds = %if.end.31
  %18 = load %struct._object*, %struct._object** %cc, align 8
  %call38 = call i64 @PyList_Size(%struct._object* %18)
  %cmp39 = icmp ne i64 %call38, 32
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %lor.lhs.false.37, %if.end.31
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call42 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.243, i32 0, i32 0), i32 32)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.37
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %20 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %20, 32
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %cc, align 8
  %22 = load i32, i32* %i, align 4
  %conv46 = sext i32 %22 to i64
  %call47 = call %struct._object* @PyList_GetItem(%struct._object* %21, i64 %conv46)
  store %struct._object* %call47, %struct._object** %v, align 8
  %23 = load %struct._object*, %struct._object** %v, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19
  %25 = load i64, i64* %tp_flags49, align 8
  %and50 = and i64 %25, 134217728
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %26 = load %struct._object*, %struct._object** %v, align 8
  %call53 = call i64 @PyBytes_Size(%struct._object* %26)
  %cmp54 = icmp eq i64 %call53, 1
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %land.lhs.true
  %27 = load %struct._object*, %struct._object** %v, align 8
  %call57 = call i8* @PyBytes_AsString(%struct._object* %27)
  %28 = load i8, i8* %call57, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %c_cc, i32 0, i64 %idxprom
  store i8 %28, i8* %arrayidx, align 1
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true, %for.body
  %30 = load %struct._object*, %struct._object** %v, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_flags59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 19
  %32 = load i64, i64* %tp_flags59, align 8
  %and60 = and i64 %32, 16777216
  %cmp61 = icmp ne i64 %and60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.69

if.then.63:                                       ; preds = %if.else
  %33 = load %struct._object*, %struct._object** %v, align 8
  %call64 = call i64 @PyLong_AsLong(%struct._object* %33)
  %conv65 = trunc i64 %call64 to i8
  %34 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %34 to i64
  %c_cc67 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5
  %arrayidx68 = getelementptr [32 x i8], [32 x i8]* %c_cc67, i32 0, i64 %idxprom66
  store i8 %conv65, i8* %arrayidx68, align 1
  br label %if.end.70

if.else.69:                                       ; preds = %if.else
  %35 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.244, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %36 = load i32, i32* %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %ispeed, align 4
  %call72 = call i32 @cfsetispeed(%struct.termios* %mode, i32 %37) #3
  %cmp73 = icmp eq i32 %call72, -1
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %for.end
  %38 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call76 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %38)
  store %struct._object* %call76, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %for.end
  %39 = load i32, i32* %ospeed, align 4
  %call78 = call i32 @cfsetospeed(%struct.termios* %mode, i32 %39) #3
  %cmp79 = icmp eq i32 %call78, -1
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.77
  %40 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call82 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %40)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.77
  %41 = load i32, i32* %fd, align 4
  %42 = load i32, i32* %when, align 4
  %call84 = call i32 @tcsetattr(i32 %41, i32 %42, %struct.termios* %mode) #3
  %cmp85 = icmp eq i32 %call84, -1
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.83
  %43 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call88 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %43)
  store %struct._object* %call88, %struct._object** %retval
  br label %return

if.end.89:                                        ; preds = %if.end.83
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc90 = add i64 %44, 1
  store i64 %inc90, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.87, %if.then.81, %if.then.75, %if.else.69, %if.then.41, %if.then.30, %if.then.7, %if.then.3, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcsendbreak(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %duration = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.245, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %duration)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load i32, i32* %duration, align 4
  %call1 = call i32 @tcsendbreak(i32 %1, i32 %2) #3
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcdrain(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.246, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %call1 = call i32 @tcdrain(i32 %1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %2)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcflush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %queue = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.247, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %queue)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load i32, i32* %queue, align 4
  %call1 = call i32 @tcflush(i32 %1, i32 %2) #3
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcflow(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %action = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %action)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load i32, i32* %action, align 4
  %call1 = call i32 @tcflow(i32 %1, i32 %2) #3
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @fdconv(%struct._object* %obj, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %3 = load i8*, i8** %p.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32 %2, i32* %4, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @cfgetispeed(%struct.termios*) #2

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) #2

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #1

declare i64 @PyList_Size(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyBytes_Size(%struct._object*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @cfsetispeed(%struct.termios*, i32) #2

; Function Attrs: nounwind
declare i32 @cfsetospeed(%struct.termios*, i32) #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #2

; Function Attrs: nounwind
declare i32 @tcsendbreak(i32, i32) #2

declare i32 @tcdrain(i32) #1

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #2

; Function Attrs: nounwind
declare i32 @tcflow(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
