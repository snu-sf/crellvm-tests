; ModuleID = 'irs-onlybc/termios.bc'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !499
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !499
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !355, metadata !500), !dbg !501
  %1 = bitcast %struct.constant** %constant to i8*, !dbg !502
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !502
  call void @llvm.dbg.declare(metadata %struct.constant** %constant, metadata !356, metadata !500), !dbg !503
  store %struct.constant* getelementptr inbounds ([233 x %struct.constant], [233 x %struct.constant]* @termios_constants, i32 0, i32 0), %struct.constant** %constant, align 8, !dbg !503, !tbaa !504
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @termiosmodule, i32 1013), !dbg !508
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !509, !tbaa !504
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !510, !tbaa !504
  %cmp = icmp eq %struct._object* %2, null, !dbg !512
  br i1 %cmp, label %if.then, label %if.end, !dbg !513

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !514
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !514

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !515, !tbaa !504
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !517
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !518

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !519
  store %struct._object* %call3, %struct._object** @TermiosError, align 8, !dbg !521, !tbaa !504
  br label %if.end.4, !dbg !522

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !523, !tbaa !504
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !524
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !525, !tbaa !526
  %inc = add i64 %5, 1, !dbg !525
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !525, !tbaa !526
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !529, !tbaa !504
  %7 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !530, !tbaa !504
  %call5 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %7), !dbg !531
  br label %while.cond, !dbg !532

while.cond:                                       ; preds = %while.body, %if.end.4
  %8 = load %struct.constant*, %struct.constant** %constant, align 8, !dbg !533, !tbaa !504
  %name = getelementptr inbounds %struct.constant, %struct.constant* %8, i32 0, i32 0, !dbg !536
  %9 = load i8*, i8** %name, align 8, !dbg !536, !tbaa !537
  %cmp6 = icmp ne i8* %9, null, !dbg !539
  br i1 %cmp6, label %while.body, label %while.end, !dbg !532

while.body:                                       ; preds = %while.cond
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !540, !tbaa !504
  %11 = load %struct.constant*, %struct.constant** %constant, align 8, !dbg !542, !tbaa !504
  %name7 = getelementptr inbounds %struct.constant, %struct.constant* %11, i32 0, i32 0, !dbg !543
  %12 = load i8*, i8** %name7, align 8, !dbg !543, !tbaa !537
  %13 = load %struct.constant*, %struct.constant** %constant, align 8, !dbg !544, !tbaa !504
  %value = getelementptr inbounds %struct.constant, %struct.constant* %13, i32 0, i32 1, !dbg !545
  %14 = load i64, i64* %value, align 8, !dbg !545, !tbaa !546
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* %12, i64 %14), !dbg !547
  %15 = load %struct.constant*, %struct.constant** %constant, align 8, !dbg !548, !tbaa !504
  %incdec.ptr = getelementptr %struct.constant, %struct.constant* %15, i32 1, !dbg !548
  store %struct.constant* %incdec.ptr, %struct.constant** %constant, align 8, !dbg !548, !tbaa !504
  br label %while.cond, !dbg !532

while.end:                                        ; preds = %while.cond
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !549, !tbaa !504
  store %struct._object* %16, %struct._object** %retval, !dbg !550
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !550

cleanup:                                          ; preds = %while.end, %if.then
  %17 = bitcast %struct.constant** %constant to i8*, !dbg !551
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !551
  %18 = bitcast %struct._object** %m to i8*, !dbg !551
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !551
  %19 = load %struct._object*, %struct._object** %retval, !dbg !551
  ret %struct._object* %19, !dbg !551
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !364, metadata !500), !dbg !552
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !365, metadata !500), !dbg !553
  %0 = bitcast i32* %fd to i8*, !dbg !554
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !554
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !366, metadata !500), !dbg !555
  %1 = bitcast %struct.termios* %mode to i8*, !dbg !556
  call void @llvm.lifetime.start(i64 60, i8* %1) #1, !dbg !556
  call void @llvm.dbg.declare(metadata %struct.termios* %mode, metadata !367, metadata !500), !dbg !557
  %2 = bitcast %struct._object** %cc to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !558
  call void @llvm.dbg.declare(metadata %struct._object** %cc, metadata !381, metadata !500), !dbg !559
  %3 = bitcast i32* %ispeed to i8*, !dbg !560
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !560
  call void @llvm.dbg.declare(metadata i32* %ispeed, metadata !382, metadata !500), !dbg !561
  %4 = bitcast i32* %ospeed to i8*, !dbg !560
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !560
  call void @llvm.dbg.declare(metadata i32* %ospeed, metadata !383, metadata !500), !dbg !562
  %5 = bitcast %struct._object** %v to i8*, !dbg !563
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !563
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !384, metadata !500), !dbg !564
  %6 = bitcast i32* %i to i8*, !dbg !565
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !565
  call void @llvm.dbg.declare(metadata i32* %i, metadata !385, metadata !500), !dbg !566
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1, !dbg !567
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !386, metadata !500), !dbg !568
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !569, !tbaa !504
  %8 = bitcast i32* %fd to i8*, !dbg !571
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i8* %8), !dbg !572
  %tobool = icmp ne i32 %call, 0, !dbg !572
  br i1 %tobool, label %if.end, label %if.then, !dbg !573

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !574

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %fd, align 4, !dbg !575, !tbaa !577
  %call1 = call i32 @tcgetattr(i32 %9, %struct.termios* %mode) #1, !dbg !579
  %cmp = icmp eq i32 %call1, -1, !dbg !580
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !581

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !582, !tbaa !504
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10), !dbg !583
  store %struct._object* %call3, %struct._object** %retval, !dbg !584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !584

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @cfgetispeed(%struct.termios* %mode) #1, !dbg !585
  store i32 %call5, i32* %ispeed, align 4, !dbg !586, !tbaa !577
  %call6 = call i32 @cfgetospeed(%struct.termios* %mode) #1, !dbg !587
  store i32 %call6, i32* %ospeed, align 4, !dbg !588, !tbaa !577
  %call7 = call %struct._object* @PyList_New(i64 32), !dbg !589
  store %struct._object* %call7, %struct._object** %cc, align 8, !dbg !590, !tbaa !504
  %11 = load %struct._object*, %struct._object** %cc, align 8, !dbg !591, !tbaa !504
  %cmp8 = icmp eq %struct._object* %11, null, !dbg !593
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !594

if.then.9:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !595

if.end.10:                                        ; preds = %if.end.4
  store i32 0, i32* %i, align 4, !dbg !596, !tbaa !577
  br label %for.cond, !dbg !598

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i32, i32* %i, align 4, !dbg !599, !tbaa !577
  %cmp11 = icmp slt i32 %12, 32, !dbg !603
  br i1 %cmp11, label %for.body, label %for.end, !dbg !604

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !605, !tbaa !577
  %idxprom = sext i32 %13 to i64, !dbg !607
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5, !dbg !608
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %c_cc, i32 0, i64 %idxprom, !dbg !607
  %14 = load i8, i8* %arrayidx, align 1, !dbg !607, !tbaa !609
  store i8 %14, i8* %ch, align 1, !dbg !610, !tbaa !609
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* %ch, i64 1), !dbg !611
  store %struct._object* %call12, %struct._object** %v, align 8, !dbg !612, !tbaa !504
  %15 = load %struct._object*, %struct._object** %v, align 8, !dbg !613, !tbaa !504
  %cmp13 = icmp eq %struct._object* %15, null, !dbg !615
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !616

if.then.14:                                       ; preds = %for.body
  br label %err, !dbg !617

if.end.15:                                        ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %cc, align 8, !dbg !618, !tbaa !504
  %17 = load i32, i32* %i, align 4, !dbg !619, !tbaa !577
  %conv = sext i32 %17 to i64, !dbg !619
  %18 = load %struct._object*, %struct._object** %v, align 8, !dbg !620, !tbaa !504
  %call16 = call i32 @PyList_SetItem(%struct._object* %16, i64 %conv, %struct._object* %18), !dbg !621
  br label %for.inc, !dbg !622

for.inc:                                          ; preds = %if.end.15
  %19 = load i32, i32* %i, align 4, !dbg !623, !tbaa !577
  %inc = add i32 %19, 1, !dbg !623
  store i32 %inc, i32* %i, align 4, !dbg !623, !tbaa !577
  br label %for.cond, !dbg !624

for.end:                                          ; preds = %for.cond
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3, !dbg !625
  %20 = load i32, i32* %c_lflag, align 4, !dbg !625, !tbaa !627
  %and = and i32 %20, 2, !dbg !629
  %cmp17 = icmp eq i32 %and, 0, !dbg !630
  br i1 %cmp17, label %if.then.19, label %if.end.38, !dbg !631

if.then.19:                                       ; preds = %for.end
  %c_cc20 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5, !dbg !632
  %arrayidx21 = getelementptr [32 x i8], [32 x i8]* %c_cc20, i32 0, i64 6, !dbg !634
  %21 = load i8, i8* %arrayidx21, align 1, !dbg !634, !tbaa !609
  %conv22 = zext i8 %21 to i64, !dbg !635
  %call23 = call %struct._object* @PyLong_FromLong(i64 %conv22), !dbg !636
  store %struct._object* %call23, %struct._object** %v, align 8, !dbg !637, !tbaa !504
  %22 = load %struct._object*, %struct._object** %v, align 8, !dbg !638, !tbaa !504
  %cmp24 = icmp eq %struct._object* %22, null, !dbg !640
  br i1 %cmp24, label %if.then.26, label %if.end.27, !dbg !641

if.then.26:                                       ; preds = %if.then.19
  br label %err, !dbg !642

if.end.27:                                        ; preds = %if.then.19
  %23 = load %struct._object*, %struct._object** %cc, align 8, !dbg !643, !tbaa !504
  %24 = load %struct._object*, %struct._object** %v, align 8, !dbg !644, !tbaa !504
  %call28 = call i32 @PyList_SetItem(%struct._object* %23, i64 6, %struct._object* %24), !dbg !645
  %c_cc29 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5, !dbg !646
  %arrayidx30 = getelementptr [32 x i8], [32 x i8]* %c_cc29, i32 0, i64 5, !dbg !647
  %25 = load i8, i8* %arrayidx30, align 1, !dbg !647, !tbaa !609
  %conv31 = zext i8 %25 to i64, !dbg !648
  %call32 = call %struct._object* @PyLong_FromLong(i64 %conv31), !dbg !649
  store %struct._object* %call32, %struct._object** %v, align 8, !dbg !650, !tbaa !504
  %26 = load %struct._object*, %struct._object** %v, align 8, !dbg !651, !tbaa !504
  %cmp33 = icmp eq %struct._object* %26, null, !dbg !653
  br i1 %cmp33, label %if.then.35, label %if.end.36, !dbg !654

if.then.35:                                       ; preds = %if.end.27
  br label %err, !dbg !655

if.end.36:                                        ; preds = %if.end.27
  %27 = load %struct._object*, %struct._object** %cc, align 8, !dbg !656, !tbaa !504
  %28 = load %struct._object*, %struct._object** %v, align 8, !dbg !657, !tbaa !504
  %call37 = call i32 @PyList_SetItem(%struct._object* %27, i64 5, %struct._object* %28), !dbg !658
  br label %if.end.38, !dbg !659

if.end.38:                                        ; preds = %if.end.36, %for.end
  %call39 = call %struct._object* @PyList_New(i64 7), !dbg !660
  store %struct._object* %call39, %struct._object** %v, align 8, !dbg !662, !tbaa !504
  %tobool40 = icmp ne %struct._object* %call39, null, !dbg !662
  br i1 %tobool40, label %if.end.42, label %if.then.41, !dbg !663

if.then.41:                                       ; preds = %if.end.38
  br label %err, !dbg !664

if.end.42:                                        ; preds = %if.end.38
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !665, !tbaa !504
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 0, !dbg !666
  %30 = load i32, i32* %c_iflag, align 4, !dbg !666, !tbaa !667
  %conv43 = zext i32 %30 to i64, !dbg !668
  %call44 = call %struct._object* @PyLong_FromLong(i64 %conv43), !dbg !669
  %call45 = call i32 @PyList_SetItem(%struct._object* %29, i64 0, %struct._object* %call44), !dbg !670
  %31 = load %struct._object*, %struct._object** %v, align 8, !dbg !671, !tbaa !504
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 1, !dbg !672
  %32 = load i32, i32* %c_oflag, align 4, !dbg !672, !tbaa !673
  %conv46 = zext i32 %32 to i64, !dbg !674
  %call47 = call %struct._object* @PyLong_FromLong(i64 %conv46), !dbg !675
  %call48 = call i32 @PyList_SetItem(%struct._object* %31, i64 1, %struct._object* %call47), !dbg !676
  %33 = load %struct._object*, %struct._object** %v, align 8, !dbg !677, !tbaa !504
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 2, !dbg !678
  %34 = load i32, i32* %c_cflag, align 4, !dbg !678, !tbaa !679
  %conv49 = zext i32 %34 to i64, !dbg !680
  %call50 = call %struct._object* @PyLong_FromLong(i64 %conv49), !dbg !681
  %call51 = call i32 @PyList_SetItem(%struct._object* %33, i64 2, %struct._object* %call50), !dbg !682
  %35 = load %struct._object*, %struct._object** %v, align 8, !dbg !683, !tbaa !504
  %c_lflag52 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3, !dbg !684
  %36 = load i32, i32* %c_lflag52, align 4, !dbg !684, !tbaa !627
  %conv53 = zext i32 %36 to i64, !dbg !685
  %call54 = call %struct._object* @PyLong_FromLong(i64 %conv53), !dbg !686
  %call55 = call i32 @PyList_SetItem(%struct._object* %35, i64 3, %struct._object* %call54), !dbg !687
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !688, !tbaa !504
  %38 = load i32, i32* %ispeed, align 4, !dbg !689, !tbaa !577
  %conv56 = zext i32 %38 to i64, !dbg !690
  %call57 = call %struct._object* @PyLong_FromLong(i64 %conv56), !dbg !691
  %call58 = call i32 @PyList_SetItem(%struct._object* %37, i64 4, %struct._object* %call57), !dbg !692
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !693, !tbaa !504
  %40 = load i32, i32* %ospeed, align 4, !dbg !694, !tbaa !577
  %conv59 = zext i32 %40 to i64, !dbg !695
  %call60 = call %struct._object* @PyLong_FromLong(i64 %conv59), !dbg !696
  %call61 = call i32 @PyList_SetItem(%struct._object* %39, i64 5, %struct._object* %call60), !dbg !697
  %41 = load %struct._object*, %struct._object** %v, align 8, !dbg !698, !tbaa !504
  %42 = load %struct._object*, %struct._object** %cc, align 8, !dbg !699, !tbaa !504
  %call62 = call i32 @PyList_SetItem(%struct._object* %41, i64 6, %struct._object* %42), !dbg !700
  %call63 = call %struct._object* @PyErr_Occurred(), !dbg !701
  %tobool64 = icmp ne %struct._object* %call63, null, !dbg !701
  br i1 %tobool64, label %if.then.65, label %if.end.70, !dbg !702

if.then.65:                                       ; preds = %if.end.42
  br label %do.body, !dbg !703

do.body:                                          ; preds = %if.then.65
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 8, i8* %43) #1, !dbg !704
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !387, metadata !500), !dbg !706
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !707, !tbaa !504
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8, !dbg !706, !tbaa !504
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !708, !tbaa !504
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !710
  %46 = load i64, i64* %ob_refcnt, align 8, !dbg !711, !tbaa !526
  %dec = add i64 %46, -1, !dbg !711
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !711, !tbaa !526
  %cmp66 = icmp ne i64 %dec, 0, !dbg !712
  br i1 %cmp66, label %if.then.68, label %if.else, !dbg !713

if.then.68:                                       ; preds = %do.body
  br label %if.end.69, !dbg !714

if.else:                                          ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !716, !tbaa !504
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !718
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !718, !tbaa !719
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !720
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !720, !tbaa !721
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !724, !tbaa !504
  call void %49(%struct._object* %50), !dbg !725
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.68
  %51 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !726
  br label %do.cond, !dbg !728

do.cond:                                          ; preds = %if.end.69
  br label %do.end, !dbg !729

do.end:                                           ; preds = %do.cond
  br label %err, !dbg !731

if.end.70:                                        ; preds = %if.end.42
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !732, !tbaa !504
  store %struct._object* %52, %struct._object** %retval, !dbg !733
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !733

err:                                              ; preds = %do.end, %if.then.41, %if.then.35, %if.then.26, %if.then.14
  br label %do.body.71, !dbg !734

do.body.71:                                       ; preds = %err
  %53 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !735
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp72, metadata !391, metadata !500), !dbg !737
  %54 = load %struct._object*, %struct._object** %cc, align 8, !dbg !738, !tbaa !504
  store %struct._object* %54, %struct._object** %_py_decref_tmp72, align 8, !dbg !737, !tbaa !504
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !739, !tbaa !504
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !741
  %56 = load i64, i64* %ob_refcnt73, align 8, !dbg !742, !tbaa !526
  %dec74 = add i64 %56, -1, !dbg !742
  store i64 %dec74, i64* %ob_refcnt73, align 8, !dbg !742, !tbaa !526
  %cmp75 = icmp ne i64 %dec74, 0, !dbg !743
  br i1 %cmp75, label %if.then.77, label %if.else.78, !dbg !744

if.then.77:                                       ; preds = %do.body.71
  br label %if.end.81, !dbg !745

if.else.78:                                       ; preds = %do.body.71
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !747, !tbaa !504
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !749
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !749, !tbaa !719
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !750
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !750, !tbaa !721
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !751, !tbaa !504
  call void %59(%struct._object* %60), !dbg !752
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  %61 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !753
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !753
  br label %do.cond.82, !dbg !755

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !756

do.end.83:                                        ; preds = %do.cond.82
  store %struct._object* null, %struct._object** %retval, !dbg !758
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !758

cleanup:                                          ; preds = %do.end.83, %if.end.70, %if.then.9, %if.then.2, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1, !dbg !759
  %62 = bitcast i32* %i to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 4, i8* %62) #1, !dbg !759
  %63 = bitcast %struct._object** %v to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !759
  %64 = bitcast i32* %ospeed to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 4, i8* %64) #1, !dbg !759
  %65 = bitcast i32* %ispeed to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 4, i8* %65) #1, !dbg !759
  %66 = bitcast %struct._object** %cc to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !759
  %67 = bitcast %struct.termios* %mode to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 60, i8* %67) #1, !dbg !759
  %68 = bitcast i32* %fd to i8*, !dbg !759
  call void @llvm.lifetime.end(i64 4, i8* %68) #1, !dbg !759
  %69 = load %struct._object*, %struct._object** %retval, !dbg !759
  ret %struct._object* %69, !dbg !759
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !400, metadata !500), !dbg !760
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !401, metadata !500), !dbg !761
  %0 = bitcast i32* %fd to i8*, !dbg !762
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !762
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !402, metadata !500), !dbg !763
  %1 = bitcast i32* %when to i8*, !dbg !762
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !762
  call void @llvm.dbg.declare(metadata i32* %when, metadata !403, metadata !500), !dbg !764
  %2 = bitcast %struct.termios* %mode to i8*, !dbg !765
  call void @llvm.lifetime.start(i64 60, i8* %2) #1, !dbg !765
  call void @llvm.dbg.declare(metadata %struct.termios* %mode, metadata !404, metadata !500), !dbg !766
  %3 = bitcast i32* %ispeed to i8*, !dbg !767
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !767
  call void @llvm.dbg.declare(metadata i32* %ispeed, metadata !405, metadata !500), !dbg !768
  %4 = bitcast i32* %ospeed to i8*, !dbg !767
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !767
  call void @llvm.dbg.declare(metadata i32* %ospeed, metadata !406, metadata !500), !dbg !769
  %5 = bitcast %struct._object** %term to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._object** %term, metadata !407, metadata !500), !dbg !771
  %6 = bitcast %struct._object** %cc to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._object** %cc, metadata !408, metadata !500), !dbg !772
  %7 = bitcast %struct._object** %v to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !409, metadata !500), !dbg !773
  %8 = bitcast i32* %i to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !774
  call void @llvm.dbg.declare(metadata i32* %i, metadata !410, metadata !500), !dbg !775
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !776, !tbaa !504
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.241, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %when, %struct._object** %term), !dbg !778
  %tobool = icmp ne i32 %call, 0, !dbg !778
  br i1 %tobool, label %if.end, label %if.then, !dbg !779

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !780

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %term, align 8, !dbg !781, !tbaa !504
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !783
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !783, !tbaa !719
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !784
  %12 = load i64, i64* %tp_flags, align 8, !dbg !784, !tbaa !785
  %and = and i64 %12, 33554432, !dbg !786
  %cmp = icmp ne i64 %and, 0, !dbg !787
  br i1 %cmp, label %lor.lhs.false, label %if.then.3, !dbg !788

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %term, align 8, !dbg !789, !tbaa !504
  %call1 = call i64 @PyList_Size(%struct._object* %13), !dbg !791
  %cmp2 = icmp ne i64 %call1, 7, !dbg !792
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !793

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !794, !tbaa !504
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.242, i32 0, i32 0)), !dbg !796
  store %struct._object* null, %struct._object** %retval, !dbg !797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !797

if.end.4:                                         ; preds = %lor.lhs.false
  %15 = load i32, i32* %fd, align 4, !dbg !798, !tbaa !577
  %call5 = call i32 @tcgetattr(i32 %15, %struct.termios* %mode) #1, !dbg !800
  %cmp6 = icmp eq i32 %call5, -1, !dbg !801
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !802

if.then.7:                                        ; preds = %if.end.4
  %16 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !803, !tbaa !504
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16), !dbg !804
  store %struct._object* %call8, %struct._object** %retval, !dbg !805
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !805

if.end.9:                                         ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %term, align 8, !dbg !806, !tbaa !504
  %call10 = call %struct._object* @PyList_GetItem(%struct._object* %17, i64 0), !dbg !807
  %call11 = call i64 @PyLong_AsLong(%struct._object* %call10), !dbg !808
  %conv = trunc i64 %call11 to i32, !dbg !809
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 0, !dbg !810
  store i32 %conv, i32* %c_iflag, align 4, !dbg !811, !tbaa !667
  %18 = load %struct._object*, %struct._object** %term, align 8, !dbg !812, !tbaa !504
  %call12 = call %struct._object* @PyList_GetItem(%struct._object* %18, i64 1), !dbg !813
  %call13 = call i64 @PyLong_AsLong(%struct._object* %call12), !dbg !814
  %conv14 = trunc i64 %call13 to i32, !dbg !815
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 1, !dbg !816
  store i32 %conv14, i32* %c_oflag, align 4, !dbg !817, !tbaa !673
  %19 = load %struct._object*, %struct._object** %term, align 8, !dbg !818, !tbaa !504
  %call15 = call %struct._object* @PyList_GetItem(%struct._object* %19, i64 2), !dbg !819
  %call16 = call i64 @PyLong_AsLong(%struct._object* %call15), !dbg !820
  %conv17 = trunc i64 %call16 to i32, !dbg !821
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 2, !dbg !822
  store i32 %conv17, i32* %c_cflag, align 4, !dbg !823, !tbaa !679
  %20 = load %struct._object*, %struct._object** %term, align 8, !dbg !824, !tbaa !504
  %call18 = call %struct._object* @PyList_GetItem(%struct._object* %20, i64 3), !dbg !825
  %call19 = call i64 @PyLong_AsLong(%struct._object* %call18), !dbg !826
  %conv20 = trunc i64 %call19 to i32, !dbg !827
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 3, !dbg !828
  store i32 %conv20, i32* %c_lflag, align 4, !dbg !829, !tbaa !627
  %21 = load %struct._object*, %struct._object** %term, align 8, !dbg !830, !tbaa !504
  %call21 = call %struct._object* @PyList_GetItem(%struct._object* %21, i64 4), !dbg !831
  %call22 = call i64 @PyLong_AsLong(%struct._object* %call21), !dbg !832
  %conv23 = trunc i64 %call22 to i32, !dbg !833
  store i32 %conv23, i32* %ispeed, align 4, !dbg !834, !tbaa !577
  %22 = load %struct._object*, %struct._object** %term, align 8, !dbg !835, !tbaa !504
  %call24 = call %struct._object* @PyList_GetItem(%struct._object* %22, i64 5), !dbg !836
  %call25 = call i64 @PyLong_AsLong(%struct._object* %call24), !dbg !837
  %conv26 = trunc i64 %call25 to i32, !dbg !838
  store i32 %conv26, i32* %ospeed, align 4, !dbg !839, !tbaa !577
  %23 = load %struct._object*, %struct._object** %term, align 8, !dbg !840, !tbaa !504
  %call27 = call %struct._object* @PyList_GetItem(%struct._object* %23, i64 6), !dbg !841
  store %struct._object* %call27, %struct._object** %cc, align 8, !dbg !842, !tbaa !504
  %call28 = call %struct._object* @PyErr_Occurred(), !dbg !843
  %tobool29 = icmp ne %struct._object* %call28, null, !dbg !843
  br i1 %tobool29, label %if.then.30, label %if.end.31, !dbg !845

if.then.30:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval, !dbg !846
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !846

if.end.31:                                        ; preds = %if.end.9
  %24 = load %struct._object*, %struct._object** %cc, align 8, !dbg !847, !tbaa !504
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !849
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !849, !tbaa !719
  %tp_flags33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !850
  %26 = load i64, i64* %tp_flags33, align 8, !dbg !850, !tbaa !785
  %and34 = and i64 %26, 33554432, !dbg !851
  %cmp35 = icmp ne i64 %and34, 0, !dbg !852
  br i1 %cmp35, label %lor.lhs.false.37, label %if.then.41, !dbg !853

lor.lhs.false.37:                                 ; preds = %if.end.31
  %27 = load %struct._object*, %struct._object** %cc, align 8, !dbg !854, !tbaa !504
  %call38 = call i64 @PyList_Size(%struct._object* %27), !dbg !856
  %cmp39 = icmp ne i64 %call38, 32, !dbg !857
  br i1 %cmp39, label %if.then.41, label %if.end.43, !dbg !858

if.then.41:                                       ; preds = %lor.lhs.false.37, %if.end.31
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !859, !tbaa !504
  %call42 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.243, i32 0, i32 0), i32 32), !dbg !861
  store %struct._object* null, %struct._object** %retval, !dbg !862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !862

if.end.43:                                        ; preds = %lor.lhs.false.37
  store i32 0, i32* %i, align 4, !dbg !863, !tbaa !577
  br label %for.cond, !dbg !865

for.cond:                                         ; preds = %for.inc, %if.end.43
  %29 = load i32, i32* %i, align 4, !dbg !866, !tbaa !577
  %cmp44 = icmp slt i32 %29, 32, !dbg !870
  br i1 %cmp44, label %for.body, label %for.end, !dbg !871

for.body:                                         ; preds = %for.cond
  %30 = load %struct._object*, %struct._object** %cc, align 8, !dbg !872, !tbaa !504
  %31 = load i32, i32* %i, align 4, !dbg !874, !tbaa !577
  %conv46 = sext i32 %31 to i64, !dbg !874
  %call47 = call %struct._object* @PyList_GetItem(%struct._object* %30, i64 %conv46), !dbg !875
  store %struct._object* %call47, %struct._object** %v, align 8, !dbg !876, !tbaa !504
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !877, !tbaa !504
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !879
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !879, !tbaa !719
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19, !dbg !880
  %34 = load i64, i64* %tp_flags49, align 8, !dbg !880, !tbaa !785
  %and50 = and i64 %34, 134217728, !dbg !881
  %cmp51 = icmp ne i64 %and50, 0, !dbg !882
  br i1 %cmp51, label %land.lhs.true, label %if.else, !dbg !883

land.lhs.true:                                    ; preds = %for.body
  %35 = load %struct._object*, %struct._object** %v, align 8, !dbg !884, !tbaa !504
  %call53 = call i64 @PyBytes_Size(%struct._object* %35), !dbg !886
  %cmp54 = icmp eq i64 %call53, 1, !dbg !887
  br i1 %cmp54, label %if.then.56, label %if.else, !dbg !888

if.then.56:                                       ; preds = %land.lhs.true
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !889, !tbaa !504
  %call57 = call i8* @PyBytes_AsString(%struct._object* %36), !dbg !890
  %37 = load i8, i8* %call57, align 1, !dbg !891, !tbaa !609
  %38 = load i32, i32* %i, align 4, !dbg !892, !tbaa !577
  %idxprom = sext i32 %38 to i64, !dbg !893
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5, !dbg !894
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %c_cc, i32 0, i64 %idxprom, !dbg !893
  store i8 %37, i8* %arrayidx, align 1, !dbg !895, !tbaa !609
  br label %if.end.71, !dbg !893

if.else:                                          ; preds = %land.lhs.true, %for.body
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !896, !tbaa !504
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !898
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !898, !tbaa !719
  %tp_flags59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 19, !dbg !899
  %41 = load i64, i64* %tp_flags59, align 8, !dbg !899, !tbaa !785
  %and60 = and i64 %41, 16777216, !dbg !900
  %cmp61 = icmp ne i64 %and60, 0, !dbg !901
  br i1 %cmp61, label %if.then.63, label %if.else.69, !dbg !902

if.then.63:                                       ; preds = %if.else
  %42 = load %struct._object*, %struct._object** %v, align 8, !dbg !903, !tbaa !504
  %call64 = call i64 @PyLong_AsLong(%struct._object* %42), !dbg !904
  %conv65 = trunc i64 %call64 to i8, !dbg !905
  %43 = load i32, i32* %i, align 4, !dbg !906, !tbaa !577
  %idxprom66 = sext i32 %43 to i64, !dbg !907
  %c_cc67 = getelementptr inbounds %struct.termios, %struct.termios* %mode, i32 0, i32 5, !dbg !908
  %arrayidx68 = getelementptr [32 x i8], [32 x i8]* %c_cc67, i32 0, i64 %idxprom66, !dbg !907
  store i8 %conv65, i8* %arrayidx68, align 1, !dbg !909, !tbaa !609
  br label %if.end.70, !dbg !907

if.else.69:                                       ; preds = %if.else
  %44 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !910, !tbaa !504
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.244, i32 0, i32 0)), !dbg !912
  store %struct._object* null, %struct._object** %retval, !dbg !913
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !913

if.end.70:                                        ; preds = %if.then.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.56
  br label %for.inc, !dbg !914

for.inc:                                          ; preds = %if.end.71
  %45 = load i32, i32* %i, align 4, !dbg !915, !tbaa !577
  %inc = add i32 %45, 1, !dbg !915
  store i32 %inc, i32* %i, align 4, !dbg !915, !tbaa !577
  br label %for.cond, !dbg !916

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %ispeed, align 4, !dbg !917, !tbaa !577
  %call72 = call i32 @cfsetispeed(%struct.termios* %mode, i32 %46) #1, !dbg !919
  %cmp73 = icmp eq i32 %call72, -1, !dbg !920
  br i1 %cmp73, label %if.then.75, label %if.end.77, !dbg !921

if.then.75:                                       ; preds = %for.end
  %47 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !922, !tbaa !504
  %call76 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %47), !dbg !923
  store %struct._object* %call76, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !924

if.end.77:                                        ; preds = %for.end
  %48 = load i32, i32* %ospeed, align 4, !dbg !925, !tbaa !577
  %call78 = call i32 @cfsetospeed(%struct.termios* %mode, i32 %48) #1, !dbg !927
  %cmp79 = icmp eq i32 %call78, -1, !dbg !928
  br i1 %cmp79, label %if.then.81, label %if.end.83, !dbg !929

if.then.81:                                       ; preds = %if.end.77
  %49 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !930, !tbaa !504
  %call82 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %49), !dbg !931
  store %struct._object* %call82, %struct._object** %retval, !dbg !932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !932

if.end.83:                                        ; preds = %if.end.77
  %50 = load i32, i32* %fd, align 4, !dbg !933, !tbaa !577
  %51 = load i32, i32* %when, align 4, !dbg !935, !tbaa !577
  %call84 = call i32 @tcsetattr(i32 %50, i32 %51, %struct.termios* %mode) #1, !dbg !936
  %cmp85 = icmp eq i32 %call84, -1, !dbg !937
  br i1 %cmp85, label %if.then.87, label %if.end.89, !dbg !938

if.then.87:                                       ; preds = %if.end.83
  %52 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !939, !tbaa !504
  %call88 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %52), !dbg !940
  store %struct._object* %call88, %struct._object** %retval, !dbg !941
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !941

if.end.89:                                        ; preds = %if.end.83
  %53 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !942, !tbaa !526
  %inc90 = add i64 %53, 1, !dbg !942
  store i64 %inc90, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !942, !tbaa !526
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !943

cleanup:                                          ; preds = %if.end.89, %if.then.87, %if.then.81, %if.then.75, %if.else.69, %if.then.41, %if.then.30, %if.then.7, %if.then.3, %if.then
  %54 = bitcast i32* %i to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !944
  %55 = bitcast %struct._object** %v to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !944
  %56 = bitcast %struct._object** %cc to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !944
  %57 = bitcast %struct._object** %term to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !944
  %58 = bitcast i32* %ospeed to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %58) #1, !dbg !944
  %59 = bitcast i32* %ispeed to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !944
  %60 = bitcast %struct.termios* %mode to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 60, i8* %60) #1, !dbg !944
  %61 = bitcast i32* %when to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %61) #1, !dbg !944
  %62 = bitcast i32* %fd to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %62) #1, !dbg !944
  %63 = load %struct._object*, %struct._object** %retval, !dbg !944
  ret %struct._object* %63, !dbg !944
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcsendbreak(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %duration = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !413, metadata !500), !dbg !945
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !414, metadata !500), !dbg !946
  %0 = bitcast i32* %fd to i8*, !dbg !947
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !947
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !415, metadata !500), !dbg !948
  %1 = bitcast i32* %duration to i8*, !dbg !947
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !947
  call void @llvm.dbg.declare(metadata i32* %duration, metadata !416, metadata !500), !dbg !949
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !950, !tbaa !504
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.245, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %duration), !dbg !952
  %tobool = icmp ne i32 %call, 0, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !953

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !954

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4, !dbg !955, !tbaa !577
  %4 = load i32, i32* %duration, align 4, !dbg !957, !tbaa !577
  %call1 = call i32 @tcsendbreak(i32 %3, i32 %4) #1, !dbg !958
  %cmp = icmp eq i32 %call1, -1, !dbg !959
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !960

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !961, !tbaa !504
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5), !dbg !962
  store %struct._object* %call3, %struct._object** %retval, !dbg !963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !963

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !964, !tbaa !526
  %inc = add i64 %6, 1, !dbg !964
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !964, !tbaa !526
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !965
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %7 = bitcast i32* %duration to i8*, !dbg !966
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !966
  %8 = bitcast i32* %fd to i8*, !dbg !966
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !966
  %9 = load %struct._object*, %struct._object** %retval, !dbg !966
  ret %struct._object* %9, !dbg !966
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcdrain(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !419, metadata !500), !dbg !967
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !420, metadata !500), !dbg !968
  %0 = bitcast i32* %fd to i8*, !dbg !969
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !969
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !421, metadata !500), !dbg !970
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !971, !tbaa !504
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.246, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd), !dbg !973
  %tobool = icmp ne i32 %call, 0, !dbg !973
  br i1 %tobool, label %if.end, label %if.then, !dbg !974

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !975
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !975

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4, !dbg !976, !tbaa !577
  %call1 = call i32 @tcdrain(i32 %2), !dbg !978
  %cmp = icmp eq i32 %call1, -1, !dbg !979
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !980

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !981, !tbaa !504
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3), !dbg !982
  store %struct._object* %call3, %struct._object** %retval, !dbg !983
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !983

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !984, !tbaa !526
  %inc = add i64 %4, 1, !dbg !984
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !984, !tbaa !526
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !985

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %5 = bitcast i32* %fd to i8*, !dbg !986
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !986
  %6 = load %struct._object*, %struct._object** %retval, !dbg !986
  ret %struct._object* %6, !dbg !986
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcflush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %queue = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !424, metadata !500), !dbg !987
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !425, metadata !500), !dbg !988
  %0 = bitcast i32* %fd to i8*, !dbg !989
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !989
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !426, metadata !500), !dbg !990
  %1 = bitcast i32* %queue to i8*, !dbg !989
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !989
  call void @llvm.dbg.declare(metadata i32* %queue, metadata !427, metadata !500), !dbg !991
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !992, !tbaa !504
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.247, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %queue), !dbg !994
  %tobool = icmp ne i32 %call, 0, !dbg !994
  br i1 %tobool, label %if.end, label %if.then, !dbg !995

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !996

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4, !dbg !997, !tbaa !577
  %4 = load i32, i32* %queue, align 4, !dbg !999, !tbaa !577
  %call1 = call i32 @tcflush(i32 %3, i32 %4) #1, !dbg !1000
  %cmp = icmp eq i32 %call1, -1, !dbg !1001
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !1002

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !1003, !tbaa !504
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5), !dbg !1004
  store %struct._object* %call3, %struct._object** %retval, !dbg !1005
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1005

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1006, !tbaa !526
  %inc = add i64 %6, 1, !dbg !1006
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1006, !tbaa !526
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %7 = bitcast i32* %queue to i8*, !dbg !1008
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !1008
  %8 = bitcast i32* %fd to i8*, !dbg !1008
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !1008
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1008
  ret %struct._object* %9, !dbg !1008
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @termios_tcflow(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %action = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !430, metadata !500), !dbg !1009
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !431, metadata !500), !dbg !1010
  %0 = bitcast i32* %fd to i8*, !dbg !1011
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !432, metadata !500), !dbg !1012
  %1 = bitcast i32* %action to i8*, !dbg !1011
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %action, metadata !433, metadata !500), !dbg !1013
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1014, !tbaa !504
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0), i32 (%struct._object*, i8*)* @fdconv, i32* %fd, i32* %action), !dbg !1016
  %tobool = icmp ne i32 %call, 0, !dbg !1016
  br i1 %tobool, label %if.end, label %if.then, !dbg !1017

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1018
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1018

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4, !dbg !1019, !tbaa !577
  %4 = load i32, i32* %action, align 4, !dbg !1021, !tbaa !577
  %call1 = call i32 @tcflow(i32 %3, i32 %4) #1, !dbg !1022
  %cmp = icmp eq i32 %call1, -1, !dbg !1023
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !1024

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @TermiosError, align 8, !dbg !1025, !tbaa !504
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5), !dbg !1026
  store %struct._object* %call3, %struct._object** %retval, !dbg !1027
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1027

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1028, !tbaa !526
  %inc = add i64 %6, 1, !dbg !1028
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1028, !tbaa !526
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1029
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1029

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %7 = bitcast i32* %action to i8*, !dbg !1030
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !1030
  %8 = bitcast i32* %fd to i8*, !dbg !1030
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !1030
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1030
  ret %struct._object* %9, !dbg !1030
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @fdconv(%struct._object* %obj, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !395, metadata !500), !dbg !1031
  store i8* %p, i8** %p.addr, align 8, !tbaa !504
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !396, metadata !500), !dbg !1032
  %0 = bitcast i32* %fd to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !397, metadata !500), !dbg !1034
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1035, !tbaa !504
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %1), !dbg !1036
  store i32 %call, i32* %fd, align 4, !dbg !1037, !tbaa !577
  %2 = load i32, i32* %fd, align 4, !dbg !1038, !tbaa !577
  %cmp = icmp sge i32 %2, 0, !dbg !1040
  br i1 %cmp, label %if.then, label %if.end, !dbg !1041

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %fd, align 4, !dbg !1042, !tbaa !577
  %4 = load i8*, i8** %p.addr, align 8, !dbg !1044, !tbaa !504
  %5 = bitcast i8* %4 to i32*, !dbg !1045
  store i32 %3, i32* %5, align 4, !dbg !1046, !tbaa !577
  store i32 1, i32* %retval, !dbg !1047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, !dbg !1048
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1048

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i32* %fd to i8*, !dbg !1049
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !1049
  %7 = load i32, i32* %retval, !dbg !1049
  ret i32 %7, !dbg !1049
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @cfgetispeed(%struct.termios*) #4

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) #4

declare %struct._object* @PyList_New(i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #3

declare i64 @PyList_Size(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i64 @PyBytes_Size(%struct._object*) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @cfsetispeed(%struct.termios*, i32) #4

; Function Attrs: nounwind
declare i32 @cfsetospeed(%struct.termios*, i32) #4

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #4

; Function Attrs: nounwind
declare i32 @tcsendbreak(i32, i32) #4

declare i32 @tcdrain(i32) #3

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #4

; Function Attrs: nounwind
declare i32 @tcflow(i32, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!495, !496, !497}
!llvm.ident = !{!498}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !349, globals: !434)
!1 = !DIFile(filename: "termios.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !31, !17, !343, !344, !346, !347}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !345, line: 25, baseType: !341)
!345 = !DIFile(filename: "/usr/include/bits/termios.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !345, line: 24, baseType: !341)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !345, line: 23, baseType: !348)
!348 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!349 = !{!350, !362, !393, !398, !411, !417, !422, !428}
!350 = !DISubprogram(name: "PyInit_termios", scope: !351, file: !351, line: 951, type: !352, isLocal: false, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_termios, variables: !354)
!351 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/termios.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!352 = !DISubroutineType(types: !353)
!353 = !{!5}
!354 = !{!355, !356}
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !350, file: !351, line: 953, type: !5)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "constant", scope: !350, file: !351, line: 954, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant", file: !351, line: 315, size: 128, align: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !351, line: 316, baseType: !52, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !351, line: 317, baseType: !17, size: 64, align: 64, offset: 64)
!362 = !DISubprogram(name: "termios_tcgetattr", scope: !351, file: !351, line: 62, type: !126, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcgetattr, variables: !363)
!363 = !{!364, !365, !366, !367, !381, !382, !383, !384, !385, !386, !387, !391}
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !362, file: !351, line: 62, type: !5)
!365 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !362, file: !351, line: 62, type: !5)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !362, file: !351, line: 64, type: !44)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !362, file: !351, line: 65, type: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !345, line: 28, size: 480, align: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !379, !380}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !368, file: !345, line: 30, baseType: !344, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !368, file: !345, line: 31, baseType: !344, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !368, file: !345, line: 32, baseType: !344, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !368, file: !345, line: 33, baseType: !344, size: 32, align: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !368, file: !345, line: 34, baseType: !347, size: 8, align: 8, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !368, file: !345, line: 35, baseType: !376, size: 256, align: 8, offset: 136)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 256, align: 8, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !368, file: !345, line: 36, baseType: !346, size: 32, align: 32, offset: 416)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !368, file: !345, line: 37, baseType: !346, size: 32, align: 32, offset: 448)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc", scope: !362, file: !351, line: 66, type: !5)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispeed", scope: !362, file: !351, line: 67, type: !346)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ospeed", scope: !362, file: !351, line: 67, type: !346)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !362, file: !351, line: 68, type: !5)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !362, file: !351, line: 69, type: !44)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !362, file: !351, line: 70, type: !31)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !388, file: !351, line: 118, type: !5)
!388 = distinct !DILexicalBlock(scope: !389, file: !351, line: 118, column: 12)
!389 = distinct !DILexicalBlock(scope: !390, file: !351, line: 117, column: 26)
!390 = distinct !DILexicalBlock(scope: !362, file: !351, line: 117, column: 9)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !392, file: !351, line: 123, type: !5)
!392 = distinct !DILexicalBlock(scope: !362, file: !351, line: 123, column: 8)
!393 = !DISubprogram(name: "fdconv", scope: !351, file: !351, line: 38, type: !265, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @fdconv, variables: !394)
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !393, file: !351, line: 38, type: !5)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !393, file: !351, line: 38, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !393, file: !351, line: 40, type: !44)
!398 = !DISubprogram(name: "termios_tcsetattr", scope: !351, file: !351, line: 139, type: !126, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcsetattr, variables: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !398, file: !351, line: 139, type: !5)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !398, file: !351, line: 139, type: !5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !398, file: !351, line: 141, type: !44)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "when", scope: !398, file: !351, line: 141, type: !44)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !398, file: !351, line: 142, type: !368)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispeed", scope: !398, file: !351, line: 143, type: !346)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ospeed", scope: !398, file: !351, line: 143, type: !346)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "term", scope: !398, file: !351, line: 144, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc", scope: !398, file: !351, line: 144, type: !5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !398, file: !351, line: 144, type: !5)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !398, file: !351, line: 145, type: !44)
!411 = !DISubprogram(name: "termios_tcsendbreak", scope: !351, file: !351, line: 209, type: !126, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcsendbreak, variables: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !411, file: !351, line: 209, type: !5)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !411, file: !351, line: 209, type: !5)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !411, file: !351, line: 211, type: !44)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "duration", scope: !411, file: !351, line: 211, type: !44)
!417 = !DISubprogram(name: "termios_tcdrain", scope: !351, file: !351, line: 229, type: !126, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcdrain, variables: !418)
!418 = !{!419, !420, !421}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !417, file: !351, line: 229, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !417, file: !351, line: 229, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !417, file: !351, line: 231, type: !44)
!422 = !DISubprogram(name: "termios_tcflush", scope: !351, file: !351, line: 252, type: !126, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcflush, variables: !423)
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !422, file: !351, line: 252, type: !5)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !422, file: !351, line: 252, type: !5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !422, file: !351, line: 254, type: !44)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queue", scope: !422, file: !351, line: 254, type: !44)
!428 = !DISubprogram(name: "termios_tcflow", scope: !351, file: !351, line: 275, type: !126, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @termios_tcflow, variables: !429)
!429 = !{!430, !431, !432, !433}
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !428, file: !351, line: 275, type: !5)
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !428, file: !351, line: 275, type: !5)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !428, file: !351, line: 277, type: !44)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !428, file: !351, line: 277, type: !44)
!434 = !{!435, !436, !440, !463, !467, !471, !475, !479, !483, !487, !491}
!435 = !DIGlobalVariable(name: "TermiosError", scope: !0, file: !351, line: 36, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @TermiosError)
!436 = !DIGlobalVariable(name: "termios_constants", scope: !0, file: !351, line: 318, type: !437, isLocal: true, isDefinition: true, variable: [233 x %struct.constant]* @termios_constants)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 29824, align: 64, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 233)
!440 = !DIGlobalVariable(name: "termiosmodule", scope: !0, file: !351, line: 938, type: !441, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @termiosmodule)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !442, line: 47, size: 832, align: 64, elements: !443)
!442 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!443 = !{!444, !453, !454, !455, !456, !459, !460, !461, !462}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !441, file: !442, line: 48, baseType: !445, size: 320, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !442, line: 38, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !442, line: 33, size: 320, align: 64, elements: !447)
!447 = !{!448, !449, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !446, file: !442, line: 34, baseType: !6, size: 128, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !446, file: !442, line: 35, baseType: !450, size: 64, align: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !446, file: !442, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !446, file: !442, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !441, file: !442, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !441, file: !442, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !441, file: !442, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !441, file: !442, line: 52, baseType: !457, size: 64, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !441, file: !442, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !441, file: !442, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !441, file: !442, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !441, file: !442, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!463 = !DIGlobalVariable(name: "termios__doc__", scope: !0, file: !351, line: 26, type: !464, isLocal: true, isDefinition: true, variable: [453 x i8]* @termios__doc__)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3624, align: 8, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 453)
!467 = !DIGlobalVariable(name: "termios_methods", scope: !0, file: !351, line: 289, type: !468, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMethodDef]* @termios_methods)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1792, align: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 7)
!471 = !DIGlobalVariable(name: "termios_tcgetattr__doc__", scope: !0, file: !351, line: 50, type: !472, isLocal: true, isDefinition: true, variable: [468 x i8]* @termios_tcgetattr__doc__)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3744, align: 8, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 468)
!475 = !DIGlobalVariable(name: "termios_tcsetattr__doc__", scope: !0, file: !351, line: 127, type: !476, isLocal: true, isDefinition: true, variable: [476 x i8]* @termios_tcsetattr__doc__)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3808, align: 8, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 476)
!479 = !DIGlobalVariable(name: "termios_tcsendbreak__doc__", scope: !0, file: !351, line: 201, type: !480, isLocal: true, isDefinition: true, variable: [174 x i8]* @termios_tcsendbreak__doc__)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1392, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 174)
!483 = !DIGlobalVariable(name: "termios_tcdrain__doc__", scope: !0, file: !351, line: 223, type: !484, isLocal: true, isDefinition: true, variable: [95 x i8]* @termios_tcdrain__doc__)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 760, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 95)
!487 = !DIGlobalVariable(name: "termios_tcflush__doc__", scope: !0, file: !351, line: 243, type: !488, isLocal: true, isDefinition: true, variable: [229 x i8]* @termios_tcflush__doc__)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1832, align: 8, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 229)
!491 = !DIGlobalVariable(name: "termios_tcflow__doc__", scope: !0, file: !351, line: 266, type: !492, isLocal: true, isDefinition: true, variable: [247 x i8]* @termios_tcflow__doc__)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1976, align: 8, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 247)
!495 = !{i32 2, !"Dwarf Version", i32 4}
!496 = !{i32 2, !"Debug Info Version", i32 3}
!497 = !{i32 1, !"PIC Level", i32 2}
!498 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!499 = !DILocation(line: 953, column: 5, scope: !350)
!500 = !DIExpression()
!501 = !DILocation(line: 953, column: 15, scope: !350)
!502 = !DILocation(line: 954, column: 5, scope: !350)
!503 = !DILocation(line: 954, column: 22, scope: !350)
!504 = !{!505, !505, i64 0}
!505 = !{!"any pointer", !506, i64 0}
!506 = !{!"omnipotent char", !507, i64 0}
!507 = !{!"Simple C/C++ TBAA"}
!508 = !DILocation(line: 956, column: 9, scope: !350)
!509 = !DILocation(line: 956, column: 7, scope: !350)
!510 = !DILocation(line: 957, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !350, file: !351, line: 957, column: 9)
!512 = !DILocation(line: 957, column: 11, scope: !511)
!513 = !DILocation(line: 957, column: 9, scope: !350)
!514 = !DILocation(line: 958, column: 9, scope: !511)
!515 = !DILocation(line: 960, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !350, file: !351, line: 960, column: 9)
!517 = !DILocation(line: 960, column: 22, scope: !516)
!518 = !DILocation(line: 960, column: 9, scope: !350)
!519 = !DILocation(line: 961, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !351, line: 960, column: 37)
!521 = !DILocation(line: 961, column: 22, scope: !520)
!522 = !DILocation(line: 962, column: 5, scope: !520)
!523 = !DILocation(line: 963, column: 21, scope: !350)
!524 = !DILocation(line: 963, column: 37, scope: !350)
!525 = !DILocation(line: 963, column: 46, scope: !350)
!526 = !{!527, !528, i64 0}
!527 = !{!"_object", !528, i64 0, !505, i64 8}
!528 = !{!"long", !506, i64 0}
!529 = !DILocation(line: 964, column: 24, scope: !350)
!530 = !DILocation(line: 964, column: 36, scope: !350)
!531 = !DILocation(line: 964, column: 5, scope: !350)
!532 = !DILocation(line: 966, column: 5, scope: !350)
!533 = !DILocation(line: 966, column: 12, scope: !534)
!534 = !DILexicalBlockFile(scope: !535, file: !351, discriminator: 2)
!535 = !DILexicalBlockFile(scope: !350, file: !351, discriminator: 1)
!536 = !DILocation(line: 966, column: 22, scope: !350)
!537 = !{!538, !505, i64 0}
!538 = !{!"constant", !505, i64 0, !528, i64 8}
!539 = !DILocation(line: 966, column: 27, scope: !350)
!540 = !DILocation(line: 967, column: 33, scope: !541)
!541 = distinct !DILexicalBlock(scope: !350, file: !351, line: 966, column: 42)
!542 = !DILocation(line: 967, column: 36, scope: !541)
!543 = !DILocation(line: 967, column: 46, scope: !541)
!544 = !DILocation(line: 967, column: 52, scope: !541)
!545 = !DILocation(line: 967, column: 62, scope: !541)
!546 = !{!538, !528, i64 8}
!547 = !DILocation(line: 967, column: 9, scope: !541)
!548 = !DILocation(line: 968, column: 9, scope: !541)
!549 = !DILocation(line: 970, column: 12, scope: !350)
!550 = !DILocation(line: 970, column: 5, scope: !350)
!551 = !DILocation(line: 971, column: 1, scope: !350)
!552 = !DILocation(line: 62, column: 29, scope: !362)
!553 = !DILocation(line: 62, column: 45, scope: !362)
!554 = !DILocation(line: 64, column: 5, scope: !362)
!555 = !DILocation(line: 64, column: 9, scope: !362)
!556 = !DILocation(line: 65, column: 5, scope: !362)
!557 = !DILocation(line: 65, column: 20, scope: !362)
!558 = !DILocation(line: 66, column: 5, scope: !362)
!559 = !DILocation(line: 66, column: 15, scope: !362)
!560 = !DILocation(line: 67, column: 5, scope: !362)
!561 = !DILocation(line: 67, column: 13, scope: !362)
!562 = !DILocation(line: 67, column: 21, scope: !362)
!563 = !DILocation(line: 68, column: 5, scope: !362)
!564 = !DILocation(line: 68, column: 15, scope: !362)
!565 = !DILocation(line: 69, column: 5, scope: !362)
!566 = !DILocation(line: 69, column: 9, scope: !362)
!567 = !DILocation(line: 70, column: 5, scope: !362)
!568 = !DILocation(line: 70, column: 10, scope: !362)
!569 = !DILocation(line: 72, column: 27, scope: !570)
!570 = distinct !DILexicalBlock(scope: !362, file: !351, line: 72, column: 9)
!571 = !DILocation(line: 73, column: 35, scope: !570)
!572 = !DILocation(line: 72, column: 10, scope: !570)
!573 = !DILocation(line: 72, column: 9, scope: !362)
!574 = !DILocation(line: 74, column: 9, scope: !570)
!575 = !DILocation(line: 76, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !362, file: !351, line: 76, column: 9)
!577 = !{!578, !578, i64 0}
!578 = !{!"int", !506, i64 0}
!579 = !DILocation(line: 76, column: 9, scope: !576)
!580 = !DILocation(line: 76, column: 30, scope: !576)
!581 = !DILocation(line: 76, column: 9, scope: !362)
!582 = !DILocation(line: 77, column: 35, scope: !576)
!583 = !DILocation(line: 77, column: 16, scope: !576)
!584 = !DILocation(line: 77, column: 9, scope: !576)
!585 = !DILocation(line: 79, column: 14, scope: !362)
!586 = !DILocation(line: 79, column: 12, scope: !362)
!587 = !DILocation(line: 80, column: 14, scope: !362)
!588 = !DILocation(line: 80, column: 12, scope: !362)
!589 = !DILocation(line: 82, column: 10, scope: !362)
!590 = !DILocation(line: 82, column: 8, scope: !362)
!591 = !DILocation(line: 83, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !362, file: !351, line: 83, column: 9)
!593 = !DILocation(line: 83, column: 12, scope: !592)
!594 = !DILocation(line: 83, column: 9, scope: !362)
!595 = !DILocation(line: 84, column: 9, scope: !592)
!596 = !DILocation(line: 85, column: 12, scope: !597)
!597 = distinct !DILexicalBlock(scope: !362, file: !351, line: 85, column: 5)
!598 = !DILocation(line: 85, column: 10, scope: !597)
!599 = !DILocation(line: 85, column: 17, scope: !600)
!600 = !DILexicalBlockFile(scope: !601, file: !351, discriminator: 2)
!601 = !DILexicalBlockFile(scope: !602, file: !351, discriminator: 1)
!602 = distinct !DILexicalBlock(scope: !597, file: !351, line: 85, column: 5)
!603 = !DILocation(line: 85, column: 19, scope: !602)
!604 = !DILocation(line: 85, column: 5, scope: !597)
!605 = !DILocation(line: 86, column: 30, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !351, line: 85, column: 30)
!607 = !DILocation(line: 86, column: 20, scope: !606)
!608 = !DILocation(line: 86, column: 25, scope: !606)
!609 = !{!506, !506, i64 0}
!610 = !DILocation(line: 86, column: 12, scope: !606)
!611 = !DILocation(line: 87, column: 13, scope: !606)
!612 = !DILocation(line: 87, column: 11, scope: !606)
!613 = !DILocation(line: 88, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !606, file: !351, line: 88, column: 13)
!615 = !DILocation(line: 88, column: 15, scope: !614)
!616 = !DILocation(line: 88, column: 13, scope: !606)
!617 = !DILocation(line: 89, column: 13, scope: !614)
!618 = !DILocation(line: 90, column: 24, scope: !606)
!619 = !DILocation(line: 90, column: 28, scope: !606)
!620 = !DILocation(line: 90, column: 31, scope: !606)
!621 = !DILocation(line: 90, column: 9, scope: !606)
!622 = !DILocation(line: 91, column: 5, scope: !606)
!623 = !DILocation(line: 85, column: 26, scope: !602)
!624 = !DILocation(line: 85, column: 5, scope: !602)
!625 = !DILocation(line: 96, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !362, file: !351, line: 96, column: 9)
!627 = !{!628, !578, i64 12}
!628 = !{!"termios", !578, i64 0, !578, i64 4, !578, i64 8, !578, i64 12, !506, i64 16, !506, i64 17, !578, i64 52, !578, i64 56}
!629 = !DILocation(line: 96, column: 23, scope: !626)
!630 = !DILocation(line: 96, column: 34, scope: !626)
!631 = !DILocation(line: 96, column: 9, scope: !362)
!632 = !DILocation(line: 97, column: 40, scope: !633)
!633 = distinct !DILexicalBlock(scope: !626, file: !351, line: 96, column: 40)
!634 = !DILocation(line: 97, column: 35, scope: !633)
!635 = !DILocation(line: 97, column: 29, scope: !633)
!636 = !DILocation(line: 97, column: 13, scope: !633)
!637 = !DILocation(line: 97, column: 11, scope: !633)
!638 = !DILocation(line: 98, column: 13, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !351, line: 98, column: 13)
!640 = !DILocation(line: 98, column: 15, scope: !639)
!641 = !DILocation(line: 98, column: 13, scope: !633)
!642 = !DILocation(line: 99, column: 13, scope: !639)
!643 = !DILocation(line: 100, column: 24, scope: !633)
!644 = !DILocation(line: 100, column: 31, scope: !633)
!645 = !DILocation(line: 100, column: 9, scope: !633)
!646 = !DILocation(line: 101, column: 40, scope: !633)
!647 = !DILocation(line: 101, column: 35, scope: !633)
!648 = !DILocation(line: 101, column: 29, scope: !633)
!649 = !DILocation(line: 101, column: 13, scope: !633)
!650 = !DILocation(line: 101, column: 11, scope: !633)
!651 = !DILocation(line: 102, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !633, file: !351, line: 102, column: 13)
!653 = !DILocation(line: 102, column: 15, scope: !652)
!654 = !DILocation(line: 102, column: 13, scope: !633)
!655 = !DILocation(line: 103, column: 13, scope: !652)
!656 = !DILocation(line: 104, column: 24, scope: !633)
!657 = !DILocation(line: 104, column: 31, scope: !633)
!658 = !DILocation(line: 104, column: 9, scope: !633)
!659 = !DILocation(line: 105, column: 5, scope: !633)
!660 = !DILocation(line: 107, column: 15, scope: !661)
!661 = distinct !DILexicalBlock(scope: !362, file: !351, line: 107, column: 9)
!662 = !DILocation(line: 107, column: 13, scope: !661)
!663 = !DILocation(line: 107, column: 9, scope: !362)
!664 = !DILocation(line: 108, column: 9, scope: !661)
!665 = !DILocation(line: 110, column: 20, scope: !362)
!666 = !DILocation(line: 110, column: 53, scope: !362)
!667 = !{!628, !578, i64 0}
!668 = !DILocation(line: 110, column: 42, scope: !362)
!669 = !DILocation(line: 110, column: 26, scope: !362)
!670 = !DILocation(line: 110, column: 5, scope: !362)
!671 = !DILocation(line: 111, column: 20, scope: !362)
!672 = !DILocation(line: 111, column: 53, scope: !362)
!673 = !{!628, !578, i64 4}
!674 = !DILocation(line: 111, column: 42, scope: !362)
!675 = !DILocation(line: 111, column: 26, scope: !362)
!676 = !DILocation(line: 111, column: 5, scope: !362)
!677 = !DILocation(line: 112, column: 20, scope: !362)
!678 = !DILocation(line: 112, column: 53, scope: !362)
!679 = !{!628, !578, i64 8}
!680 = !DILocation(line: 112, column: 42, scope: !362)
!681 = !DILocation(line: 112, column: 26, scope: !362)
!682 = !DILocation(line: 112, column: 5, scope: !362)
!683 = !DILocation(line: 113, column: 20, scope: !362)
!684 = !DILocation(line: 113, column: 53, scope: !362)
!685 = !DILocation(line: 113, column: 42, scope: !362)
!686 = !DILocation(line: 113, column: 26, scope: !362)
!687 = !DILocation(line: 113, column: 5, scope: !362)
!688 = !DILocation(line: 114, column: 20, scope: !362)
!689 = !DILocation(line: 114, column: 48, scope: !362)
!690 = !DILocation(line: 114, column: 42, scope: !362)
!691 = !DILocation(line: 114, column: 26, scope: !362)
!692 = !DILocation(line: 114, column: 5, scope: !362)
!693 = !DILocation(line: 115, column: 20, scope: !362)
!694 = !DILocation(line: 115, column: 48, scope: !362)
!695 = !DILocation(line: 115, column: 42, scope: !362)
!696 = !DILocation(line: 115, column: 26, scope: !362)
!697 = !DILocation(line: 115, column: 5, scope: !362)
!698 = !DILocation(line: 116, column: 20, scope: !362)
!699 = !DILocation(line: 116, column: 26, scope: !362)
!700 = !DILocation(line: 116, column: 5, scope: !362)
!701 = !DILocation(line: 117, column: 9, scope: !390)
!702 = !DILocation(line: 117, column: 9, scope: !362)
!703 = !DILocation(line: 118, column: 9, scope: !389)
!704 = !DILocation(line: 118, column: 14, scope: !705)
!705 = !DILexicalBlockFile(scope: !388, file: !351, discriminator: 1)
!706 = !DILocation(line: 118, column: 24, scope: !388)
!707 = !DILocation(line: 118, column: 54, scope: !388)
!708 = !DILocation(line: 118, column: 66, scope: !709)
!709 = distinct !DILexicalBlock(scope: !388, file: !351, line: 118, column: 63)
!710 = !DILocation(line: 118, column: 83, scope: !709)
!711 = !DILocation(line: 118, column: 63, scope: !709)
!712 = !DILocation(line: 118, column: 93, scope: !709)
!713 = !DILocation(line: 118, column: 63, scope: !388)
!714 = !DILocation(line: 118, column: 63, scope: !715)
!715 = !DILexicalBlockFile(scope: !388, file: !351, discriminator: 2)
!716 = !DILocation(line: 118, column: 124, scope: !717)
!717 = !DILexicalBlockFile(scope: !709, file: !351, discriminator: 3)
!718 = !DILocation(line: 118, column: 142, scope: !709)
!719 = !{!527, !505, i64 8}
!720 = !DILocation(line: 118, column: 152, scope: !709)
!721 = !{!722, !505, i64 48}
!722 = !{!"_typeobject", !723, i64 0, !505, i64 24, !528, i64 32, !528, i64 40, !505, i64 48, !505, i64 56, !505, i64 64, !505, i64 72, !505, i64 80, !505, i64 88, !505, i64 96, !505, i64 104, !505, i64 112, !505, i64 120, !505, i64 128, !505, i64 136, !505, i64 144, !505, i64 152, !505, i64 160, !528, i64 168, !505, i64 176, !505, i64 184, !505, i64 192, !505, i64 200, !528, i64 208, !505, i64 216, !505, i64 224, !505, i64 232, !505, i64 240, !505, i64 248, !505, i64 256, !505, i64 264, !505, i64 272, !505, i64 280, !528, i64 288, !505, i64 296, !505, i64 304, !505, i64 312, !505, i64 320, !505, i64 328, !505, i64 336, !505, i64 344, !505, i64 352, !505, i64 360, !505, i64 368, !505, i64 376, !578, i64 384, !505, i64 392}
!723 = !{!"", !527, i64 0, !528, i64 16}
!724 = !DILocation(line: 118, column: 177, scope: !709)
!725 = !DILocation(line: 118, column: 108, scope: !709)
!726 = !DILocation(line: 118, column: 196, scope: !727)
!727 = !DILexicalBlockFile(scope: !389, file: !351, discriminator: 4)
!728 = !DILocation(line: 118, column: 196, scope: !388)
!729 = !DILocation(line: 118, column: 196, scope: !730)
!730 = !DILexicalBlockFile(scope: !388, file: !351, discriminator: 5)
!731 = !DILocation(line: 119, column: 9, scope: !389)
!732 = !DILocation(line: 121, column: 12, scope: !362)
!733 = !DILocation(line: 121, column: 5, scope: !362)
!734 = !DILocation(line: 123, column: 5, scope: !362)
!735 = !DILocation(line: 123, column: 10, scope: !736)
!736 = !DILexicalBlockFile(scope: !392, file: !351, discriminator: 1)
!737 = !DILocation(line: 123, column: 20, scope: !392)
!738 = !DILocation(line: 123, column: 50, scope: !392)
!739 = !DILocation(line: 123, column: 63, scope: !740)
!740 = distinct !DILexicalBlock(scope: !392, file: !351, line: 123, column: 60)
!741 = !DILocation(line: 123, column: 80, scope: !740)
!742 = !DILocation(line: 123, column: 60, scope: !740)
!743 = !DILocation(line: 123, column: 90, scope: !740)
!744 = !DILocation(line: 123, column: 60, scope: !392)
!745 = !DILocation(line: 123, column: 60, scope: !746)
!746 = !DILexicalBlockFile(scope: !392, file: !351, discriminator: 2)
!747 = !DILocation(line: 123, column: 121, scope: !748)
!748 = !DILexicalBlockFile(scope: !740, file: !351, discriminator: 3)
!749 = !DILocation(line: 123, column: 139, scope: !740)
!750 = !DILocation(line: 123, column: 149, scope: !740)
!751 = !DILocation(line: 123, column: 174, scope: !740)
!752 = !DILocation(line: 123, column: 105, scope: !740)
!753 = !DILocation(line: 123, column: 193, scope: !754)
!754 = !DILexicalBlockFile(scope: !362, file: !351, discriminator: 4)
!755 = !DILocation(line: 123, column: 193, scope: !392)
!756 = !DILocation(line: 123, column: 193, scope: !757)
!757 = !DILexicalBlockFile(scope: !392, file: !351, discriminator: 5)
!758 = !DILocation(line: 124, column: 5, scope: !362)
!759 = !DILocation(line: 125, column: 1, scope: !362)
!760 = !DILocation(line: 139, column: 29, scope: !398)
!761 = !DILocation(line: 139, column: 45, scope: !398)
!762 = !DILocation(line: 141, column: 5, scope: !398)
!763 = !DILocation(line: 141, column: 9, scope: !398)
!764 = !DILocation(line: 141, column: 13, scope: !398)
!765 = !DILocation(line: 142, column: 5, scope: !398)
!766 = !DILocation(line: 142, column: 20, scope: !398)
!767 = !DILocation(line: 143, column: 5, scope: !398)
!768 = !DILocation(line: 143, column: 13, scope: !398)
!769 = !DILocation(line: 143, column: 21, scope: !398)
!770 = !DILocation(line: 144, column: 5, scope: !398)
!771 = !DILocation(line: 144, column: 15, scope: !398)
!772 = !DILocation(line: 144, column: 22, scope: !398)
!773 = !DILocation(line: 144, column: 27, scope: !398)
!774 = !DILocation(line: 145, column: 5, scope: !398)
!775 = !DILocation(line: 145, column: 9, scope: !398)
!776 = !DILocation(line: 147, column: 27, scope: !777)
!777 = distinct !DILexicalBlock(scope: !398, file: !351, line: 147, column: 9)
!778 = !DILocation(line: 147, column: 10, scope: !777)
!779 = !DILocation(line: 147, column: 9, scope: !398)
!780 = !DILocation(line: 149, column: 9, scope: !777)
!781 = !DILocation(line: 150, column: 27, scope: !782)
!782 = distinct !DILexicalBlock(scope: !398, file: !351, line: 150, column: 9)
!783 = !DILocation(line: 150, column: 35, scope: !782)
!784 = !DILocation(line: 150, column: 46, scope: !782)
!785 = !{!722, !528, i64 168}
!786 = !DILocation(line: 150, column: 55, scope: !782)
!787 = !DILocation(line: 150, column: 72, scope: !782)
!788 = !DILocation(line: 150, column: 78, scope: !782)
!789 = !DILocation(line: 150, column: 93, scope: !790)
!790 = !DILexicalBlockFile(scope: !782, file: !351, discriminator: 1)
!791 = !DILocation(line: 150, column: 81, scope: !782)
!792 = !DILocation(line: 150, column: 99, scope: !782)
!793 = !DILocation(line: 150, column: 9, scope: !398)
!794 = !DILocation(line: 151, column: 25, scope: !795)
!795 = distinct !DILexicalBlock(scope: !782, file: !351, line: 150, column: 105)
!796 = !DILocation(line: 151, column: 9, scope: !795)
!797 = !DILocation(line: 153, column: 9, scope: !795)
!798 = !DILocation(line: 157, column: 19, scope: !799)
!799 = distinct !DILexicalBlock(scope: !398, file: !351, line: 157, column: 9)
!800 = !DILocation(line: 157, column: 9, scope: !799)
!801 = !DILocation(line: 157, column: 30, scope: !799)
!802 = !DILocation(line: 157, column: 9, scope: !398)
!803 = !DILocation(line: 158, column: 35, scope: !799)
!804 = !DILocation(line: 158, column: 16, scope: !799)
!805 = !DILocation(line: 158, column: 9, scope: !799)
!806 = !DILocation(line: 159, column: 60, scope: !398)
!807 = !DILocation(line: 159, column: 45, scope: !398)
!808 = !DILocation(line: 159, column: 31, scope: !398)
!809 = !DILocation(line: 159, column: 20, scope: !398)
!810 = !DILocation(line: 159, column: 10, scope: !398)
!811 = !DILocation(line: 159, column: 18, scope: !398)
!812 = !DILocation(line: 160, column: 60, scope: !398)
!813 = !DILocation(line: 160, column: 45, scope: !398)
!814 = !DILocation(line: 160, column: 31, scope: !398)
!815 = !DILocation(line: 160, column: 20, scope: !398)
!816 = !DILocation(line: 160, column: 10, scope: !398)
!817 = !DILocation(line: 160, column: 18, scope: !398)
!818 = !DILocation(line: 161, column: 60, scope: !398)
!819 = !DILocation(line: 161, column: 45, scope: !398)
!820 = !DILocation(line: 161, column: 31, scope: !398)
!821 = !DILocation(line: 161, column: 20, scope: !398)
!822 = !DILocation(line: 161, column: 10, scope: !398)
!823 = !DILocation(line: 161, column: 18, scope: !398)
!824 = !DILocation(line: 162, column: 60, scope: !398)
!825 = !DILocation(line: 162, column: 45, scope: !398)
!826 = !DILocation(line: 162, column: 31, scope: !398)
!827 = !DILocation(line: 162, column: 20, scope: !398)
!828 = !DILocation(line: 162, column: 10, scope: !398)
!829 = !DILocation(line: 162, column: 18, scope: !398)
!830 = !DILocation(line: 163, column: 53, scope: !398)
!831 = !DILocation(line: 163, column: 38, scope: !398)
!832 = !DILocation(line: 163, column: 24, scope: !398)
!833 = !DILocation(line: 163, column: 14, scope: !398)
!834 = !DILocation(line: 163, column: 12, scope: !398)
!835 = !DILocation(line: 164, column: 53, scope: !398)
!836 = !DILocation(line: 164, column: 38, scope: !398)
!837 = !DILocation(line: 164, column: 24, scope: !398)
!838 = !DILocation(line: 164, column: 14, scope: !398)
!839 = !DILocation(line: 164, column: 12, scope: !398)
!840 = !DILocation(line: 165, column: 25, scope: !398)
!841 = !DILocation(line: 165, column: 10, scope: !398)
!842 = !DILocation(line: 165, column: 8, scope: !398)
!843 = !DILocation(line: 166, column: 9, scope: !844)
!844 = distinct !DILexicalBlock(scope: !398, file: !351, line: 166, column: 9)
!845 = !DILocation(line: 166, column: 9, scope: !398)
!846 = !DILocation(line: 167, column: 9, scope: !844)
!847 = !DILocation(line: 169, column: 27, scope: !848)
!848 = distinct !DILexicalBlock(scope: !398, file: !351, line: 169, column: 9)
!849 = !DILocation(line: 169, column: 33, scope: !848)
!850 = !DILocation(line: 169, column: 44, scope: !848)
!851 = !DILocation(line: 169, column: 53, scope: !848)
!852 = !DILocation(line: 169, column: 70, scope: !848)
!853 = !DILocation(line: 169, column: 76, scope: !848)
!854 = !DILocation(line: 169, column: 91, scope: !855)
!855 = !DILexicalBlockFile(scope: !848, file: !351, discriminator: 1)
!856 = !DILocation(line: 169, column: 79, scope: !848)
!857 = !DILocation(line: 169, column: 95, scope: !848)
!858 = !DILocation(line: 169, column: 9, scope: !398)
!859 = !DILocation(line: 170, column: 22, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !351, line: 169, column: 102)
!861 = !DILocation(line: 170, column: 9, scope: !860)
!862 = !DILocation(line: 173, column: 9, scope: !860)
!863 = !DILocation(line: 176, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !398, file: !351, line: 176, column: 5)
!865 = !DILocation(line: 176, column: 10, scope: !864)
!866 = !DILocation(line: 176, column: 17, scope: !867)
!867 = !DILexicalBlockFile(scope: !868, file: !351, discriminator: 2)
!868 = !DILexicalBlockFile(scope: !869, file: !351, discriminator: 1)
!869 = distinct !DILexicalBlock(scope: !864, file: !351, line: 176, column: 5)
!870 = !DILocation(line: 176, column: 19, scope: !869)
!871 = !DILocation(line: 176, column: 5, scope: !864)
!872 = !DILocation(line: 177, column: 28, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !351, line: 176, column: 30)
!874 = !DILocation(line: 177, column: 32, scope: !873)
!875 = !DILocation(line: 177, column: 13, scope: !873)
!876 = !DILocation(line: 177, column: 11, scope: !873)
!877 = !DILocation(line: 179, column: 30, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !351, line: 179, column: 13)
!879 = !DILocation(line: 179, column: 35, scope: !878)
!880 = !DILocation(line: 179, column: 46, scope: !878)
!881 = !DILocation(line: 179, column: 55, scope: !878)
!882 = !DILocation(line: 179, column: 72, scope: !878)
!883 = !DILocation(line: 179, column: 78, scope: !878)
!884 = !DILocation(line: 179, column: 94, scope: !885)
!885 = !DILexicalBlockFile(scope: !878, file: !351, discriminator: 1)
!886 = !DILocation(line: 179, column: 81, scope: !878)
!887 = !DILocation(line: 179, column: 97, scope: !878)
!888 = !DILocation(line: 179, column: 13, scope: !873)
!889 = !DILocation(line: 180, column: 54, scope: !878)
!890 = !DILocation(line: 180, column: 37, scope: !878)
!891 = !DILocation(line: 180, column: 35, scope: !878)
!892 = !DILocation(line: 180, column: 23, scope: !878)
!893 = !DILocation(line: 180, column: 13, scope: !878)
!894 = !DILocation(line: 180, column: 18, scope: !878)
!895 = !DILocation(line: 180, column: 26, scope: !878)
!896 = !DILocation(line: 181, column: 35, scope: !897)
!897 = distinct !DILexicalBlock(scope: !878, file: !351, line: 181, column: 18)
!898 = !DILocation(line: 181, column: 40, scope: !897)
!899 = !DILocation(line: 181, column: 51, scope: !897)
!900 = !DILocation(line: 181, column: 60, scope: !897)
!901 = !DILocation(line: 181, column: 77, scope: !897)
!902 = !DILocation(line: 181, column: 18, scope: !878)
!903 = !DILocation(line: 182, column: 49, scope: !897)
!904 = !DILocation(line: 182, column: 35, scope: !897)
!905 = !DILocation(line: 182, column: 28, scope: !897)
!906 = !DILocation(line: 182, column: 23, scope: !897)
!907 = !DILocation(line: 182, column: 13, scope: !897)
!908 = !DILocation(line: 182, column: 18, scope: !897)
!909 = !DILocation(line: 182, column: 26, scope: !897)
!910 = !DILocation(line: 184, column: 29, scope: !911)
!911 = distinct !DILexicalBlock(scope: !897, file: !351, line: 183, column: 14)
!912 = !DILocation(line: 184, column: 13, scope: !911)
!913 = !DILocation(line: 186, column: 25, scope: !911)
!914 = !DILocation(line: 188, column: 5, scope: !873)
!915 = !DILocation(line: 176, column: 26, scope: !869)
!916 = !DILocation(line: 176, column: 5, scope: !869)
!917 = !DILocation(line: 190, column: 38, scope: !918)
!918 = distinct !DILexicalBlock(scope: !398, file: !351, line: 190, column: 9)
!919 = !DILocation(line: 190, column: 9, scope: !918)
!920 = !DILocation(line: 190, column: 46, scope: !918)
!921 = !DILocation(line: 190, column: 9, scope: !398)
!922 = !DILocation(line: 191, column: 35, scope: !918)
!923 = !DILocation(line: 191, column: 16, scope: !918)
!924 = !DILocation(line: 191, column: 9, scope: !918)
!925 = !DILocation(line: 192, column: 38, scope: !926)
!926 = distinct !DILexicalBlock(scope: !398, file: !351, line: 192, column: 9)
!927 = !DILocation(line: 192, column: 9, scope: !926)
!928 = !DILocation(line: 192, column: 46, scope: !926)
!929 = !DILocation(line: 192, column: 9, scope: !398)
!930 = !DILocation(line: 193, column: 35, scope: !926)
!931 = !DILocation(line: 193, column: 16, scope: !926)
!932 = !DILocation(line: 193, column: 9, scope: !926)
!933 = !DILocation(line: 194, column: 19, scope: !934)
!934 = distinct !DILexicalBlock(scope: !398, file: !351, line: 194, column: 9)
!935 = !DILocation(line: 194, column: 23, scope: !934)
!936 = !DILocation(line: 194, column: 9, scope: !934)
!937 = !DILocation(line: 194, column: 36, scope: !934)
!938 = !DILocation(line: 194, column: 9, scope: !398)
!939 = !DILocation(line: 195, column: 35, scope: !934)
!940 = !DILocation(line: 195, column: 16, scope: !934)
!941 = !DILocation(line: 195, column: 9, scope: !934)
!942 = !DILocation(line: 197, column: 51, scope: !398)
!943 = !DILocation(line: 198, column: 5, scope: !398)
!944 = !DILocation(line: 199, column: 1, scope: !398)
!945 = !DILocation(line: 209, column: 31, scope: !411)
!946 = !DILocation(line: 209, column: 47, scope: !411)
!947 = !DILocation(line: 211, column: 5, scope: !411)
!948 = !DILocation(line: 211, column: 9, scope: !411)
!949 = !DILocation(line: 211, column: 13, scope: !411)
!950 = !DILocation(line: 213, column: 27, scope: !951)
!951 = distinct !DILexicalBlock(scope: !411, file: !351, line: 213, column: 9)
!952 = !DILocation(line: 213, column: 10, scope: !951)
!953 = !DILocation(line: 213, column: 9, scope: !411)
!954 = !DILocation(line: 215, column: 9, scope: !951)
!955 = !DILocation(line: 216, column: 21, scope: !956)
!956 = distinct !DILexicalBlock(scope: !411, file: !351, line: 216, column: 9)
!957 = !DILocation(line: 216, column: 25, scope: !956)
!958 = !DILocation(line: 216, column: 9, scope: !956)
!959 = !DILocation(line: 216, column: 35, scope: !956)
!960 = !DILocation(line: 216, column: 9, scope: !411)
!961 = !DILocation(line: 217, column: 35, scope: !956)
!962 = !DILocation(line: 217, column: 16, scope: !956)
!963 = !DILocation(line: 217, column: 9, scope: !956)
!964 = !DILocation(line: 219, column: 51, scope: !411)
!965 = !DILocation(line: 220, column: 5, scope: !411)
!966 = !DILocation(line: 221, column: 1, scope: !411)
!967 = !DILocation(line: 229, column: 27, scope: !417)
!968 = !DILocation(line: 229, column: 43, scope: !417)
!969 = !DILocation(line: 231, column: 5, scope: !417)
!970 = !DILocation(line: 231, column: 9, scope: !417)
!971 = !DILocation(line: 233, column: 27, scope: !972)
!972 = distinct !DILexicalBlock(scope: !417, file: !351, line: 233, column: 9)
!973 = !DILocation(line: 233, column: 10, scope: !972)
!974 = !DILocation(line: 233, column: 9, scope: !417)
!975 = !DILocation(line: 235, column: 9, scope: !972)
!976 = !DILocation(line: 236, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !417, file: !351, line: 236, column: 9)
!978 = !DILocation(line: 236, column: 9, scope: !977)
!979 = !DILocation(line: 236, column: 21, scope: !977)
!980 = !DILocation(line: 236, column: 9, scope: !417)
!981 = !DILocation(line: 237, column: 35, scope: !977)
!982 = !DILocation(line: 237, column: 16, scope: !977)
!983 = !DILocation(line: 237, column: 9, scope: !977)
!984 = !DILocation(line: 239, column: 51, scope: !417)
!985 = !DILocation(line: 240, column: 5, scope: !417)
!986 = !DILocation(line: 241, column: 1, scope: !417)
!987 = !DILocation(line: 252, column: 27, scope: !422)
!988 = !DILocation(line: 252, column: 43, scope: !422)
!989 = !DILocation(line: 254, column: 5, scope: !422)
!990 = !DILocation(line: 254, column: 9, scope: !422)
!991 = !DILocation(line: 254, column: 13, scope: !422)
!992 = !DILocation(line: 256, column: 27, scope: !993)
!993 = distinct !DILexicalBlock(scope: !422, file: !351, line: 256, column: 9)
!994 = !DILocation(line: 256, column: 10, scope: !993)
!995 = !DILocation(line: 256, column: 9, scope: !422)
!996 = !DILocation(line: 258, column: 9, scope: !993)
!997 = !DILocation(line: 259, column: 17, scope: !998)
!998 = distinct !DILexicalBlock(scope: !422, file: !351, line: 259, column: 9)
!999 = !DILocation(line: 259, column: 21, scope: !998)
!1000 = !DILocation(line: 259, column: 9, scope: !998)
!1001 = !DILocation(line: 259, column: 28, scope: !998)
!1002 = !DILocation(line: 259, column: 9, scope: !422)
!1003 = !DILocation(line: 260, column: 35, scope: !998)
!1004 = !DILocation(line: 260, column: 16, scope: !998)
!1005 = !DILocation(line: 260, column: 9, scope: !998)
!1006 = !DILocation(line: 262, column: 51, scope: !422)
!1007 = !DILocation(line: 263, column: 5, scope: !422)
!1008 = !DILocation(line: 264, column: 1, scope: !422)
!1009 = !DILocation(line: 275, column: 26, scope: !428)
!1010 = !DILocation(line: 275, column: 42, scope: !428)
!1011 = !DILocation(line: 277, column: 5, scope: !428)
!1012 = !DILocation(line: 277, column: 9, scope: !428)
!1013 = !DILocation(line: 277, column: 13, scope: !428)
!1014 = !DILocation(line: 279, column: 27, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !428, file: !351, line: 279, column: 9)
!1016 = !DILocation(line: 279, column: 10, scope: !1015)
!1017 = !DILocation(line: 279, column: 9, scope: !428)
!1018 = !DILocation(line: 281, column: 9, scope: !1015)
!1019 = !DILocation(line: 282, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !428, file: !351, line: 282, column: 9)
!1021 = !DILocation(line: 282, column: 20, scope: !1020)
!1022 = !DILocation(line: 282, column: 9, scope: !1020)
!1023 = !DILocation(line: 282, column: 28, scope: !1020)
!1024 = !DILocation(line: 282, column: 9, scope: !428)
!1025 = !DILocation(line: 283, column: 35, scope: !1020)
!1026 = !DILocation(line: 283, column: 16, scope: !1020)
!1027 = !DILocation(line: 283, column: 9, scope: !1020)
!1028 = !DILocation(line: 285, column: 51, scope: !428)
!1029 = !DILocation(line: 286, column: 5, scope: !428)
!1030 = !DILocation(line: 287, column: 1, scope: !428)
!1031 = !DILocation(line: 38, column: 29, scope: !393)
!1032 = !DILocation(line: 38, column: 40, scope: !393)
!1033 = !DILocation(line: 40, column: 5, scope: !393)
!1034 = !DILocation(line: 40, column: 9, scope: !393)
!1035 = !DILocation(line: 42, column: 36, scope: !393)
!1036 = !DILocation(line: 42, column: 10, scope: !393)
!1037 = !DILocation(line: 42, column: 8, scope: !393)
!1038 = !DILocation(line: 43, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !393, file: !351, line: 43, column: 9)
!1040 = !DILocation(line: 43, column: 12, scope: !1039)
!1041 = !DILocation(line: 43, column: 9, scope: !393)
!1042 = !DILocation(line: 44, column: 20, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !351, line: 43, column: 18)
!1044 = !DILocation(line: 44, column: 16, scope: !1043)
!1045 = !DILocation(line: 44, column: 10, scope: !1043)
!1046 = !DILocation(line: 44, column: 18, scope: !1043)
!1047 = !DILocation(line: 45, column: 9, scope: !1043)
!1048 = !DILocation(line: 47, column: 5, scope: !393)
!1049 = !DILocation(line: 48, column: 1, scope: !393)
