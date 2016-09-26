; ModuleID = './audioop.bc'
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

@audioopmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([27 x %struct.PyMethodDef], [27 x %struct.PyMethodDef]* @audioop_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"audioop.error\00", align 1
@AudioopError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"audioop\00", align 1
@audioop_methods = internal global [27 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_max to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @audioop_max__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_minmax to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @audioop_minmax__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_avg to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @audioop_avg__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_maxpp to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @audioop_maxpp__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_avgpp to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @audioop_avgpp__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_rms to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @audioop_rms__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_findfit to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @audioop_findfit__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_findmax to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @audioop_findmax__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_findfactor to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @audioop_findfactor__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_cross to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @audioop_cross__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_mul to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @audioop_mul__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_add to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @audioop_add__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_bias to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @audioop_bias__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_ulaw2lin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @audioop_ulaw2lin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_lin2ulaw to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @audioop_lin2ulaw__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_alaw2lin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @audioop_alaw2lin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_lin2alaw to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @audioop_lin2alaw__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_lin2lin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @audioop_lin2lin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_adpcm2lin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @audioop_adpcm2lin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_lin2adpcm to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @audioop_lin2adpcm__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_tomono to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @audioop_tomono__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_tostereo to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @audioop_tostereo__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_getsample to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @audioop_getsample__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_reverse to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @audioop_reverse__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_byteswap to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @audioop_byteswap__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @audioop_ratecv to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @audioop_ratecv__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@audioop_max__doc__ = internal global [108 x i8] c"max($module, fragment, width, /)\0A--\0A\0AReturn the maximum of the absolute value of all samples in a fragment.\00", align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"minmax\00", align 1
@audioop_minmax__doc__ = internal global [116 x i8] c"minmax($module, fragment, width, /)\0A--\0A\0AReturn the minimum and maximum values of all samples in the sound fragment.\00", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"avg\00", align 1
@audioop_avg__doc__ = internal global [90 x i8] c"avg($module, fragment, width, /)\0A--\0A\0AReturn the average over all samples in the fragment.\00", align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"maxpp\00", align 1
@audioop_maxpp__doc__ = internal global [97 x i8] c"maxpp($module, fragment, width, /)\0A--\0A\0AReturn the maximum peak-peak value in the sound fragment.\00", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"avgpp\00", align 1
@audioop_avgpp__doc__ = internal global [108 x i8] c"avgpp($module, fragment, width, /)\0A--\0A\0AReturn the average peak-peak value over all samples in the fragment.\00", align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"rms\00", align 1
@audioop_rms__doc__ = internal global [107 x i8] c"rms($module, fragment, width, /)\0A--\0A\0AReturn the root-mean-square of the fragment, i.e. sqrt(sum(S_i^2)/n).\00", align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"findfit\00", align 1
@audioop_findfit__doc__ = internal global [114 x i8] c"findfit($module, fragment, reference, /)\0A--\0A\0ATry to match reference as well as possible to a portion of fragment.\00", align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"findmax\00", align 1
@audioop_findmax__doc__ = internal global [122 x i8] c"findmax($module, fragment, length, /)\0A--\0A\0ASearch fragment for a slice of specified number of samples with maximum energy.\00", align 16
@.str.11 = private unnamed_addr constant [11 x i8] c"findfactor\00", align 1
@audioop_findfactor__doc__ = internal global [127 x i8] c"findfactor($module, fragment, reference, /)\0A--\0A\0AReturn a factor F such that rms(add(fragment, mul(reference, -F))) is minimal.\00", align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"cross\00", align 1
@audioop_cross__doc__ = internal global [114 x i8] c"cross($module, fragment, width, /)\0A--\0A\0AReturn the number of zero crossings in the fragment passed as an argument.\00", align 16
@.str.13 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@audioop_mul__doc__ = internal global [156 x i8] c"mul($module, fragment, width, factor, /)\0A--\0A\0AReturn a fragment that has all samples in the original fragment multiplied by the floating-point value factor.\00", align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@audioop_add__doc__ = internal global [130 x i8] c"add($module, fragment1, fragment2, width, /)\0A--\0A\0AReturn a fragment which is the addition of the two samples passed as parameters.\00", align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@audioop_bias__doc__ = internal global [126 x i8] c"bias($module, fragment, width, bias, /)\0A--\0A\0AReturn a fragment that is the original fragment with a bias added to each sample.\00", align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"ulaw2lin\00", align 1
@audioop_ulaw2lin__doc__ = internal global [121 x i8] c"ulaw2lin($module, fragment, width, /)\0A--\0A\0AConvert sound fragments in u-LAW encoding to linearly encoded sound fragments.\00", align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"lin2ulaw\00", align 1
@audioop_lin2ulaw__doc__ = internal global [99 x i8] c"lin2ulaw($module, fragment, width, /)\0A--\0A\0AConvert samples in the audio fragment to u-LAW encoding.\00", align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"alaw2lin\00", align 1
@audioop_alaw2lin__doc__ = internal global [121 x i8] c"alaw2lin($module, fragment, width, /)\0A--\0A\0AConvert sound fragments in a-LAW encoding to linearly encoded sound fragments.\00", align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"lin2alaw\00", align 1
@audioop_lin2alaw__doc__ = internal global [99 x i8] c"lin2alaw($module, fragment, width, /)\0A--\0A\0AConvert samples in the audio fragment to a-LAW encoding.\00", align 16
@.str.20 = private unnamed_addr constant [8 x i8] c"lin2lin\00", align 1
@audioop_lin2lin__doc__ = internal global [106 x i8] c"lin2lin($module, fragment, width, newwidth, /)\0A--\0A\0AConvert samples between 1-, 2-, 3- and 4-byte formats.\00", align 16
@.str.21 = private unnamed_addr constant [10 x i8] c"adpcm2lin\00", align 1
@audioop_adpcm2lin__doc__ = internal global [113 x i8] c"adpcm2lin($module, fragment, width, state, /)\0A--\0A\0ADecode an Intel/DVI ADPCM coded fragment to a linear fragment.\00", align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"lin2adpcm\00", align 1
@audioop_lin2adpcm__doc__ = internal global [101 x i8] c"lin2adpcm($module, fragment, width, state, /)\0A--\0A\0AConvert samples to 4 bit Intel/DVI ADPCM encoding.\00", align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"tomono\00", align 1
@audioop_tomono__doc__ = internal global [104 x i8] c"tomono($module, fragment, width, lfactor, rfactor, /)\0A--\0A\0AConvert a stereo fragment to a mono fragment.\00", align 16
@.str.24 = private unnamed_addr constant [9 x i8] c"tostereo\00", align 1
@audioop_tostereo__doc__ = internal global [109 x i8] c"tostereo($module, fragment, width, lfactor, rfactor, /)\0A--\0A\0AGenerate a stereo fragment from a mono fragment.\00", align 16
@.str.25 = private unnamed_addr constant [10 x i8] c"getsample\00", align 1
@audioop_getsample__doc__ = internal global [102 x i8] c"getsample($module, fragment, width, index, /)\0A--\0A\0AReturn the value of sample index from the fragment.\00", align 16
@.str.26 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@audioop_reverse__doc__ = internal global [110 x i8] c"reverse($module, fragment, width, /)\0A--\0A\0AReverse the samples in a fragment and returns the modified fragment.\00", align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"byteswap\00", align 1
@audioop_byteswap__doc__ = internal global [102 x i8] c"byteswap($module, fragment, width, /)\0A--\0A\0AConvert big-endian samples to little-endian and vice versa.\00", align 16
@.str.28 = private unnamed_addr constant [7 x i8] c"ratecv\00", align 1
@audioop_ratecv__doc__ = internal global [150 x i8] c"ratecv($module, fragment, width, nchannels, inrate, outrate, state,\0A       weightA=1, weightB=0, /)\0A--\0A\0AConvert the frame rate of the input fragment.\00", align 16
@.str.29 = private unnamed_addr constant [8 x i8] c"y*i:max\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"not a whole number of frames\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Size should be 1, 2, 3 or 4\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"y*i:minmax\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"(ii)\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"y*i:avg\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"y*i:maxpp\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"y*i:avgpp\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"y*i:rms\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"y*y*:findfit\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Strings should be even-sized\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"First sample should be longer\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"(nf)\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"y*n:findmax\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Input sample should be longer\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"y*y*:findfactor\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Samples should be same size\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"y*i:cross\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"y*id:mul\00", align 1
@maxvals = internal constant [5 x i32] [i32 0, i32 127, i32 32767, i32 8388607, i32 2147483647], align 16
@minvals = internal constant [5 x i32] [i32 0, i32 -128, i32 -32768, i32 -8388608, i32 -2147483648], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"y*y*i:add\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Lengths should be the same\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"y*ii:bias\00", align 1
@masks = internal constant [5 x i32] [i32 0, i32 255, i32 65535, i32 16777215, i32 -1], align 16
@.str.51 = private unnamed_addr constant [13 x i8] c"y*i:ulaw2lin\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"not enough memory for output buffer\00", align 1
@_st_ulaw2linear16 = internal global [256 x i16] [i16 -32124, i16 -31100, i16 -30076, i16 -29052, i16 -28028, i16 -27004, i16 -25980, i16 -24956, i16 -23932, i16 -22908, i16 -21884, i16 -20860, i16 -19836, i16 -18812, i16 -17788, i16 -16764, i16 -15996, i16 -15484, i16 -14972, i16 -14460, i16 -13948, i16 -13436, i16 -12924, i16 -12412, i16 -11900, i16 -11388, i16 -10876, i16 -10364, i16 -9852, i16 -9340, i16 -8828, i16 -8316, i16 -7932, i16 -7676, i16 -7420, i16 -7164, i16 -6908, i16 -6652, i16 -6396, i16 -6140, i16 -5884, i16 -5628, i16 -5372, i16 -5116, i16 -4860, i16 -4604, i16 -4348, i16 -4092, i16 -3900, i16 -3772, i16 -3644, i16 -3516, i16 -3388, i16 -3260, i16 -3132, i16 -3004, i16 -2876, i16 -2748, i16 -2620, i16 -2492, i16 -2364, i16 -2236, i16 -2108, i16 -1980, i16 -1884, i16 -1820, i16 -1756, i16 -1692, i16 -1628, i16 -1564, i16 -1500, i16 -1436, i16 -1372, i16 -1308, i16 -1244, i16 -1180, i16 -1116, i16 -1052, i16 -988, i16 -924, i16 -876, i16 -844, i16 -812, i16 -780, i16 -748, i16 -716, i16 -684, i16 -652, i16 -620, i16 -588, i16 -556, i16 -524, i16 -492, i16 -460, i16 -428, i16 -396, i16 -372, i16 -356, i16 -340, i16 -324, i16 -308, i16 -292, i16 -276, i16 -260, i16 -244, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32124, i16 31100, i16 30076, i16 29052, i16 28028, i16 27004, i16 25980, i16 24956, i16 23932, i16 22908, i16 21884, i16 20860, i16 19836, i16 18812, i16 17788, i16 16764, i16 15996, i16 15484, i16 14972, i16 14460, i16 13948, i16 13436, i16 12924, i16 12412, i16 11900, i16 11388, i16 10876, i16 10364, i16 9852, i16 9340, i16 8828, i16 8316, i16 7932, i16 7676, i16 7420, i16 7164, i16 6908, i16 6652, i16 6396, i16 6140, i16 5884, i16 5628, i16 5372, i16 5116, i16 4860, i16 4604, i16 4348, i16 4092, i16 3900, i16 3772, i16 3644, i16 3516, i16 3388, i16 3260, i16 3132, i16 3004, i16 2876, i16 2748, i16 2620, i16 2492, i16 2364, i16 2236, i16 2108, i16 1980, i16 1884, i16 1820, i16 1756, i16 1692, i16 1628, i16 1564, i16 1500, i16 1436, i16 1372, i16 1308, i16 1244, i16 1180, i16 1116, i16 1052, i16 988, i16 924, i16 876, i16 844, i16 812, i16 780, i16 748, i16 716, i16 684, i16 652, i16 620, i16 588, i16 556, i16 524, i16 492, i16 460, i16 428, i16 396, i16 372, i16 356, i16 340, i16 324, i16 308, i16 292, i16 276, i16 260, i16 244, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@.str.53 = private unnamed_addr constant [13 x i8] c"y*i:lin2ulaw\00", align 1
@seg_uend = internal global [8 x i16] [i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191], align 16
@.str.54 = private unnamed_addr constant [13 x i8] c"y*i:alaw2lin\00", align 1
@_st_alaw2linear16 = internal global [256 x i16] [i16 -5504, i16 -5248, i16 -6016, i16 -5760, i16 -4480, i16 -4224, i16 -4992, i16 -4736, i16 -7552, i16 -7296, i16 -8064, i16 -7808, i16 -6528, i16 -6272, i16 -7040, i16 -6784, i16 -2752, i16 -2624, i16 -3008, i16 -2880, i16 -2240, i16 -2112, i16 -2496, i16 -2368, i16 -3776, i16 -3648, i16 -4032, i16 -3904, i16 -3264, i16 -3136, i16 -3520, i16 -3392, i16 -22016, i16 -20992, i16 -24064, i16 -23040, i16 -17920, i16 -16896, i16 -19968, i16 -18944, i16 -30208, i16 -29184, i16 -32256, i16 -31232, i16 -26112, i16 -25088, i16 -28160, i16 -27136, i16 -11008, i16 -10496, i16 -12032, i16 -11520, i16 -8960, i16 -8448, i16 -9984, i16 -9472, i16 -15104, i16 -14592, i16 -16128, i16 -15616, i16 -13056, i16 -12544, i16 -14080, i16 -13568, i16 -344, i16 -328, i16 -376, i16 -360, i16 -280, i16 -264, i16 -312, i16 -296, i16 -472, i16 -456, i16 -504, i16 -488, i16 -408, i16 -392, i16 -440, i16 -424, i16 -88, i16 -72, i16 -120, i16 -104, i16 -24, i16 -8, i16 -56, i16 -40, i16 -216, i16 -200, i16 -248, i16 -232, i16 -152, i16 -136, i16 -184, i16 -168, i16 -1376, i16 -1312, i16 -1504, i16 -1440, i16 -1120, i16 -1056, i16 -1248, i16 -1184, i16 -1888, i16 -1824, i16 -2016, i16 -1952, i16 -1632, i16 -1568, i16 -1760, i16 -1696, i16 -688, i16 -656, i16 -752, i16 -720, i16 -560, i16 -528, i16 -624, i16 -592, i16 -944, i16 -912, i16 -1008, i16 -976, i16 -816, i16 -784, i16 -880, i16 -848, i16 5504, i16 5248, i16 6016, i16 5760, i16 4480, i16 4224, i16 4992, i16 4736, i16 7552, i16 7296, i16 8064, i16 7808, i16 6528, i16 6272, i16 7040, i16 6784, i16 2752, i16 2624, i16 3008, i16 2880, i16 2240, i16 2112, i16 2496, i16 2368, i16 3776, i16 3648, i16 4032, i16 3904, i16 3264, i16 3136, i16 3520, i16 3392, i16 22016, i16 20992, i16 24064, i16 23040, i16 17920, i16 16896, i16 19968, i16 18944, i16 30208, i16 29184, i16 32256, i16 31232, i16 26112, i16 25088, i16 28160, i16 27136, i16 11008, i16 10496, i16 12032, i16 11520, i16 8960, i16 8448, i16 9984, i16 9472, i16 15104, i16 14592, i16 16128, i16 15616, i16 13056, i16 12544, i16 14080, i16 13568, i16 344, i16 328, i16 376, i16 360, i16 280, i16 264, i16 312, i16 296, i16 472, i16 456, i16 504, i16 488, i16 408, i16 392, i16 440, i16 424, i16 88, i16 72, i16 120, i16 104, i16 24, i16 8, i16 56, i16 40, i16 216, i16 200, i16 248, i16 232, i16 152, i16 136, i16 184, i16 168, i16 1376, i16 1312, i16 1504, i16 1440, i16 1120, i16 1056, i16 1248, i16 1184, i16 1888, i16 1824, i16 2016, i16 1952, i16 1632, i16 1568, i16 1760, i16 1696, i16 688, i16 656, i16 752, i16 720, i16 560, i16 528, i16 624, i16 592, i16 944, i16 912, i16 1008, i16 976, i16 816, i16 784, i16 880, i16 848], align 16
@.str.55 = private unnamed_addr constant [13 x i8] c"y*i:lin2alaw\00", align 1
@seg_aend = internal global [8 x i16] [i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095], align 16
@.str.56 = private unnamed_addr constant [13 x i8] c"y*ii:lin2lin\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"y*iO:adpcm2lin\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.58 = private unnamed_addr constant [30 x i8] c"state must be a tuple or None\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@.str.60 = private unnamed_addr constant [8 x i8] c"(O(ii))\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"y*iO:lin2adpcm\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"y*idd:tomono\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"y*idd:tostereo\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"y*in:getsample\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Index out of range\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"y*i:reverse\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"y*i:byteswap\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"y*iiiiO|ii:ratecv\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"# of channels should be >= 1\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.70 = private unnamed_addr constant [38 x i8] c"width * nchannels too big for a C int\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"weightA should be >= 1, weightB should be >= 0\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"sampling rate not > 0\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"iO!;audioop.ratecv: illegal state argument\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.74 = private unnamed_addr constant [23 x i8] c"illegal state argument\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"ii:ratecv\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"(O(iO))\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_audioop() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @audioopmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call5, %struct._object** @AudioopError, align 8
  %3 = load %struct._object*, %struct._object** @AudioopError, align 8
  %cmp6 = icmp ne %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %d, align 8
  %5 = load %struct._object*, %struct._object** @AudioopError, align 8
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %5)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %6 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_max(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_max_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_minmax(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_minmax_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_avg(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_avg_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_maxpp(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_maxpp_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_avgpp(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_avgpp_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_rms(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_rms_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findfit(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %reference = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = bitcast %struct.bufferinfo* %reference to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 8, i1 false)
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @audioop_findfit_impl(%struct.PyModuleDef* %3, %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %obj5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %reference, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj5, align 8
  %tobool6 = icmp ne %struct._object* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @PyBuffer_Release(%struct.bufferinfo* %reference)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findmax(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %length = alloca i64, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct.bufferinfo* %fragment, i64* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i64, i64* %length, align 8
  %call1 = call %struct._object* @audioop_findmax_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i64 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findfactor(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %reference = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = bitcast %struct.bufferinfo* %reference to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 8, i1 false)
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @audioop_findfactor_impl(%struct.PyModuleDef* %3, %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %obj5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %reference, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj5, align 8
  %tobool6 = icmp ne %struct._object* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @PyBuffer_Release(%struct.bufferinfo* %reference)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_cross(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_cross_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_mul(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %factor = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, double* %factor)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load double, double* %factor, align 8
  %call1 = call %struct._object* @audioop_mul_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, double %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_add(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment1 = alloca %struct.bufferinfo, align 8
  %fragment2 = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = bitcast %struct.bufferinfo* %fragment2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 8, i1 false)
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), %struct.bufferinfo* %fragment1, %struct.bufferinfo* %fragment2, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %4 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_add_impl(%struct.PyModuleDef* %3, %struct.bufferinfo* %fragment1, %struct.bufferinfo* %fragment2, i32 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment1, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %obj5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment2, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj5, align 8
  %tobool6 = icmp ne %struct._object* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment2)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %7 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_bias(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %bias = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, i32* %bias)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load i32, i32* %bias, align 4
  %call1 = call %struct._object* @audioop_bias_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, i32 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_ulaw2lin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_ulaw2lin_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2ulaw(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_lin2ulaw_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_alaw2lin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_alaw2lin_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2alaw(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_lin2alaw_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2lin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %newwidth = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, i32* %newwidth)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load i32, i32* %newwidth, align 4
  %call1 = call %struct._object* @audioop_lin2lin_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, i32 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_adpcm2lin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %state = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, %struct._object** %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._object*, %struct._object** %state, align 8
  %call1 = call %struct._object* @audioop_adpcm2lin_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2adpcm(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %state = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, %struct._object** %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._object*, %struct._object** %state, align 8
  %call1 = call %struct._object* @audioop_lin2adpcm_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_tomono(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %lfactor = alloca double, align 8
  %rfactor = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, double* %lfactor, double* %rfactor)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load double, double* %lfactor, align 8
  %5 = load double, double* %rfactor, align 8
  %call1 = call %struct._object* @audioop_tomono_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, double %4, double %5)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %7 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_tostereo(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %lfactor = alloca double, align 8
  %rfactor = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, double* %lfactor, double* %rfactor)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load double, double* %lfactor, align 8
  %5 = load double, double* %rfactor, align 8
  %call1 = call %struct._object* @audioop_tostereo_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, double %4, double %5)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %7 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_getsample(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %index = alloca i64, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, i64* %index)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load i64, i64* %index, align 8
  %call1 = call %struct._object* @audioop_getsample_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, i64 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_reverse(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_reverse_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_byteswap(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %call1 = call %struct._object* @audioop_byteswap_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_ratecv(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %fragment = alloca %struct.bufferinfo, align 8
  %width = alloca i32, align 4
  %nchannels = alloca i32, align 4
  %inrate = alloca i32, align 4
  %outrate = alloca i32, align 4
  %state = alloca %struct._object*, align 8
  %weightA = alloca i32, align 4
  %weightB = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %fragment to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 1, i32* %weightA, align 4
  store i32 0, i32* %weightB, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), %struct.bufferinfo* %fragment, i32* %width, i32* %nchannels, i32* %inrate, i32* %outrate, %struct._object** %state, i32* %weightA, i32* %weightB)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %width, align 4
  %4 = load i32, i32* %nchannels, align 4
  %5 = load i32, i32* %inrate, align 4
  %6 = load i32, i32* %outrate, align 4
  %7 = load %struct._object*, %struct._object** %state, align 8
  %8 = load i32, i32* %weightA, align 4
  %9 = load i32, i32* %weightB, align 4
  %call1 = call %struct._object* @audioop_ratecv_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %fragment, i32 %3, i32 %4, i32 %5, i32 %6, %struct._object* %7, i32 %8, i32 %9)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %fragment, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %10, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %fragment)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %11 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %11
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_max_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %absval = alloca i32, align 4
  %max = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %max, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  br label %cond.end.31

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf6, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr7 to i16*
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  br label %cond.end.29

cond.false.9:                                     ; preds = %cond.false
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.false.9
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %arrayidx = getelementptr i8, i8* %add.ptr14, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %21 to i32
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf16, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %23, i64 %24
  %arrayidx18 = getelementptr i8, i8* %add.ptr17, i64 1
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %shl = shl i32 %conv19, 8
  %add = add i32 %conv15, %shl
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf20, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %27, i64 %28
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 2
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %shl24 = shl i32 %conv23, 16
  %add25 = add i32 %add, %shl24
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.9
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf27, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr28 to i32*
  %34 = load i32, i32* %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.12
  %cond = phi i32 [ %add25, %cond.true.12 ], [ %34, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.5
  %cond30 = phi i32 [ %conv8, %cond.true.5 ], [ %cond, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %conv, %cond.true ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %val, align 4
  %35 = load i32, i32* %val, align 4
  %cmp33 = icmp slt i32 %35, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %cond.end.31
  %36 = load i32, i32* %val, align 4
  %sub = sub i32 0, %36
  store i32 %sub, i32* %absval, align 4
  br label %if.end.36

if.else:                                          ; preds = %cond.end.31
  %37 = load i32, i32* %val, align 4
  store i32 %37, i32* %absval, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.35
  %38 = load i32, i32* %absval, align 4
  %39 = load i32, i32* %max, align 4
  %cmp37 = icmp ugt i32 %38, %39
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %40 = load i32, i32* %absval, align 4
  store i32 %40, i32* %max, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %41 = load i32, i32* %width.addr, align 4
  %conv41 = sext i32 %41 to i64
  %42 = load i64, i64* %i, align 8
  %add42 = add i64 %42, %conv41
  store i64 %add42, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %max, align 4
  %conv43 = zext i32 %43 to i64
  %call44 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv43)
  store %struct._object* %call44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @audioop_check_parameters(i64 %len, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  store i64 %len, i64* %len.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call i32 @audioop_check_size(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %2 to i64
  %rem = srem i64 %1, %conv
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @audioop_check_size(i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp sgt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_minmax_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 2147483647, i32* %min, align 4
  store i32 -2147483648, i32* %max, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  br label %cond.end.31

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf6, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr7 to i16*
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  br label %cond.end.29

cond.false.9:                                     ; preds = %cond.false
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.false.9
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %arrayidx = getelementptr i8, i8* %add.ptr14, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %21 to i32
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf16, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %23, i64 %24
  %arrayidx18 = getelementptr i8, i8* %add.ptr17, i64 1
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %shl = shl i32 %conv19, 8
  %add = add i32 %conv15, %shl
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf20, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %27, i64 %28
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 2
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %shl24 = shl i32 %conv23, 16
  %add25 = add i32 %add, %shl24
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.9
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf27, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr28 to i32*
  %34 = load i32, i32* %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.12
  %cond = phi i32 [ %add25, %cond.true.12 ], [ %34, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.5
  %cond30 = phi i32 [ %conv8, %cond.true.5 ], [ %cond, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %conv, %cond.true ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %val, align 4
  %35 = load i32, i32* %val, align 4
  %36 = load i32, i32* %max, align 4
  %cmp33 = icmp sgt i32 %35, %36
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end.31
  %37 = load i32, i32* %val, align 4
  store i32 %37, i32* %max, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %cond.end.31
  %38 = load i32, i32* %val, align 4
  %39 = load i32, i32* %min, align 4
  %cmp37 = icmp slt i32 %38, %39
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %40 = load i32, i32* %val, align 4
  store i32 %40, i32* %min, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %41 = load i32, i32* %width.addr, align 4
  %conv41 = sext i32 %41 to i64
  %42 = load i64, i64* %i, align 8
  %add42 = add i64 %42, %conv41
  store i64 %add42, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %min, align 4
  %44 = load i32, i32* %max, align 4
  %call43 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %43, i32 %44)
  store %struct._object* %call43, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_avg_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %avg = alloca i32, align 4
  %sum = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  br label %cond.end.31

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf6, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr7 to i16*
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  br label %cond.end.29

cond.false.9:                                     ; preds = %cond.false
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.false.9
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %arrayidx = getelementptr i8, i8* %add.ptr14, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %21 to i32
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf16, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %23, i64 %24
  %arrayidx18 = getelementptr i8, i8* %add.ptr17, i64 1
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %shl = shl i32 %conv19, 8
  %add = add i32 %conv15, %shl
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf20, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %27, i64 %28
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 2
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %shl24 = shl i32 %conv23, 16
  %add25 = add i32 %add, %shl24
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.9
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf27, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr28 to i32*
  %34 = load i32, i32* %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.12
  %cond = phi i32 [ %add25, %cond.true.12 ], [ %34, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.5
  %cond30 = phi i32 [ %conv8, %cond.true.5 ], [ %cond, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %conv, %cond.true ], [ %cond30, %cond.end.29 ]
  %conv33 = sitofp i32 %cond32 to double
  %35 = load double, double* %sum, align 8
  %add34 = fadd double %35, %conv33
  store double %add34, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %36 = load i32, i32* %width.addr, align 4
  %conv35 = sext i32 %36 to i64
  %37 = load i64, i64* %i, align 8
  %add36 = add i64 %37, %conv35
  store i64 %add36, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 2
  %39 = load i64, i64* %len37, align 8
  %cmp38 = icmp eq i64 %39, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.end
  store i32 0, i32* %avg, align 4
  br label %if.end.47

if.else:                                          ; preds = %for.end
  %40 = load double, double* %sum, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 2
  %42 = load i64, i64* %len41, align 8
  %43 = load i32, i32* %width.addr, align 4
  %conv42 = sext i32 %43 to i64
  %div = sdiv i64 %42, %conv42
  %conv43 = sitofp i64 %div to double
  %div44 = fdiv double %40, %conv43
  %call45 = call double @floor(double %div44) #5
  %conv46 = fptosi double %call45 to i32
  store i32 %conv46, i32* %avg, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.40
  %44 = load i32, i32* %avg, align 4
  %conv48 = sext i32 %44 to i64
  %call49 = call %struct._object* @PyLong_FromLong(i64 %conv48)
  store %struct._object* %call49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_maxpp_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %prevval = alloca i32, align 4
  %prevextremevalid = alloca i32, align 4
  %prevextreme = alloca i32, align 4
  %max = alloca i32, align 4
  %extremediff = alloca i32, align 4
  %diff = alloca i32, align 4
  %prevdiff = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %prevextremevalid, align 4
  store i32 0, i32* %prevextreme, align 4
  store i32 0, i32* %max, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp sle i64 %4, %conv
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %width.addr, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %add.ptr, align 1
  %conv8 = sext i8 %9 to i32
  br label %cond.end.37

cond.false:                                       ; preds = %if.end.5
  %10 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp eq i32 %10, 2
  br i1 %cmp9, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.false
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf12, align 8
  %add.ptr13 = getelementptr i8, i8* %12, i64 0
  %13 = bitcast i8* %add.ptr13 to i16*
  %14 = load i16, i16* %13, align 2
  %conv14 = sext i16 %14 to i32
  br label %cond.end.35

cond.false.15:                                    ; preds = %cond.false
  %15 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %15, 3
  br i1 %cmp16, label %cond.true.18, label %cond.false.32

cond.true.18:                                     ; preds = %cond.false.15
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf19, align 8
  %add.ptr20 = getelementptr i8, i8* %17, i64 0
  %arrayidx = getelementptr i8, i8* %add.ptr20, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %18 to i32
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 0
  %20 = load i8*, i8** %buf22, align 8
  %add.ptr23 = getelementptr i8, i8* %20, i64 0
  %arrayidx24 = getelementptr i8, i8* %add.ptr23, i64 1
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl = shl i32 %conv25, 8
  %add = add i32 %conv21, %shl
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf26, align 8
  %add.ptr27 = getelementptr i8, i8* %23, i64 0
  %arrayidx28 = getelementptr i8, i8* %add.ptr27, i64 2
  %24 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %shl30 = shl i32 %conv29, 16
  %add31 = add i32 %add, %shl30
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false.15
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf33 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 0
  %26 = load i8*, i8** %buf33, align 8
  %add.ptr34 = getelementptr i8, i8* %26, i64 0
  %27 = bitcast i8* %add.ptr34 to i32*
  %28 = load i32, i32* %27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.18
  %cond = phi i32 [ %add31, %cond.true.18 ], [ %28, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true.11
  %cond36 = phi i32 [ %conv14, %cond.true.11 ], [ %cond, %cond.end ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true
  %cond38 = phi i32 [ %conv8, %cond.true ], [ %cond36, %cond.end.35 ]
  store i32 %cond38, i32* %prevval, align 4
  store i32 17, i32* %prevdiff, align 4
  %29 = load i32, i32* %width.addr, align 4
  %conv39 = sext i32 %29 to i64
  store i64 %conv39, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.37
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 2
  %32 = load i64, i64* %len40, align 8
  %cmp41 = icmp slt i64 %30, %32
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %width.addr, align 4
  %cmp43 = icmp eq i32 %33, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %for.body
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %buf46, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr47 = getelementptr i8, i8* %35, i64 %36
  %37 = load i8, i8* %add.ptr47, align 1
  %conv48 = sext i8 %37 to i32
  br label %cond.end.83

cond.false.49:                                    ; preds = %for.body
  %38 = load i32, i32* %width.addr, align 4
  %cmp50 = icmp eq i32 %38, 2
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %cond.false.49
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf53 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 0
  %40 = load i8*, i8** %buf53, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr54 = getelementptr i8, i8* %40, i64 %41
  %42 = bitcast i8* %add.ptr54 to i16*
  %43 = load i16, i16* %42, align 2
  %conv55 = sext i16 %43 to i32
  br label %cond.end.81

cond.false.56:                                    ; preds = %cond.false.49
  %44 = load i32, i32* %width.addr, align 4
  %cmp57 = icmp eq i32 %44, 3
  br i1 %cmp57, label %cond.true.59, label %cond.false.76

cond.true.59:                                     ; preds = %cond.false.56
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 0
  %46 = load i8*, i8** %buf60, align 8
  %47 = load i64, i64* %i, align 8
  %add.ptr61 = getelementptr i8, i8* %46, i64 %47
  %arrayidx62 = getelementptr i8, i8* %add.ptr61, i64 0
  %48 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %48 to i32
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf64 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 0
  %50 = load i8*, i8** %buf64, align 8
  %51 = load i64, i64* %i, align 8
  %add.ptr65 = getelementptr i8, i8* %50, i64 %51
  %arrayidx66 = getelementptr i8, i8* %add.ptr65, i64 1
  %52 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %52 to i32
  %shl68 = shl i32 %conv67, 8
  %add69 = add i32 %conv63, %shl68
  %53 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf70 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %53, i32 0, i32 0
  %54 = load i8*, i8** %buf70, align 8
  %55 = load i64, i64* %i, align 8
  %add.ptr71 = getelementptr i8, i8* %54, i64 %55
  %arrayidx72 = getelementptr i8, i8* %add.ptr71, i64 2
  %56 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %56 to i32
  %shl74 = shl i32 %conv73, 16
  %add75 = add i32 %add69, %shl74
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.false.56
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf77 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 0
  %58 = load i8*, i8** %buf77, align 8
  %59 = load i64, i64* %i, align 8
  %add.ptr78 = getelementptr i8, i8* %58, i64 %59
  %60 = bitcast i8* %add.ptr78 to i32*
  %61 = load i32, i32* %60, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.59
  %cond80 = phi i32 [ %add75, %cond.true.59 ], [ %61, %cond.false.76 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.52
  %cond82 = phi i32 [ %conv55, %cond.true.52 ], [ %cond80, %cond.end.79 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.45
  %cond84 = phi i32 [ %conv48, %cond.true.45 ], [ %cond82, %cond.end.81 ]
  store i32 %cond84, i32* %val, align 4
  %62 = load i32, i32* %val, align 4
  %63 = load i32, i32* %prevval, align 4
  %cmp85 = icmp ne i32 %62, %63
  br i1 %cmp85, label %if.then.87, label %if.end.107

if.then.87:                                       ; preds = %cond.end.83
  %64 = load i32, i32* %val, align 4
  %65 = load i32, i32* %prevval, align 4
  %cmp88 = icmp slt i32 %64, %65
  %conv89 = zext i1 %cmp88 to i32
  store i32 %conv89, i32* %diff, align 4
  %66 = load i32, i32* %prevdiff, align 4
  %67 = load i32, i32* %diff, align 4
  %tobool90 = icmp ne i32 %67, 0
  %lnot = xor i1 %tobool90, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp91 = icmp eq i32 %66, %lnot.ext
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %if.then.87
  %68 = load i32, i32* %prevextremevalid, align 4
  %tobool94 = icmp ne i32 %68, 0
  br i1 %tobool94, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %if.then.93
  %69 = load i32, i32* %prevval, align 4
  %70 = load i32, i32* %prevextreme, align 4
  %cmp96 = icmp slt i32 %69, %70
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.then.95
  %71 = load i32, i32* %prevextreme, align 4
  %72 = load i32, i32* %prevval, align 4
  %sub = sub i32 %71, %72
  store i32 %sub, i32* %extremediff, align 4
  br label %if.end.100

if.else:                                          ; preds = %if.then.95
  %73 = load i32, i32* %prevval, align 4
  %74 = load i32, i32* %prevextreme, align 4
  %sub99 = sub i32 %73, %74
  store i32 %sub99, i32* %extremediff, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.then.98
  %75 = load i32, i32* %extremediff, align 4
  %76 = load i32, i32* %max, align 4
  %cmp101 = icmp ugt i32 %75, %76
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  %77 = load i32, i32* %extremediff, align 4
  store i32 %77, i32* %max, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.100
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  store i32 1, i32* %prevextremevalid, align 4
  %78 = load i32, i32* %prevval, align 4
  store i32 %78, i32* %prevextreme, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.87
  %79 = load i32, i32* %val, align 4
  store i32 %79, i32* %prevval, align 4
  %80 = load i32, i32* %diff, align 4
  store i32 %80, i32* %prevdiff, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %cond.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %81 = load i32, i32* %width.addr, align 4
  %conv108 = sext i32 %81 to i64
  %82 = load i64, i64* %i, align 8
  %add109 = add i64 %82, %conv108
  store i64 %add109, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %max, align 4
  %conv110 = zext i32 %83 to i64
  %call111 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv110)
  store %struct._object* %call111, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %84 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %84
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_avgpp_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %prevval = alloca i32, align 4
  %prevextremevalid = alloca i32, align 4
  %prevextreme = alloca i32, align 4
  %sum = alloca double, align 8
  %avg = alloca i32, align 4
  %diff = alloca i32, align 4
  %prevdiff = alloca i32, align 4
  %nextreme = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %prevextremevalid, align 4
  store i32 0, i32* %prevextreme, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %nextreme, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp sle i64 %4, %conv
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %width.addr, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %add.ptr, align 1
  %conv8 = sext i8 %9 to i32
  br label %cond.end.37

cond.false:                                       ; preds = %if.end.5
  %10 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp eq i32 %10, 2
  br i1 %cmp9, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.false
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf12, align 8
  %add.ptr13 = getelementptr i8, i8* %12, i64 0
  %13 = bitcast i8* %add.ptr13 to i16*
  %14 = load i16, i16* %13, align 2
  %conv14 = sext i16 %14 to i32
  br label %cond.end.35

cond.false.15:                                    ; preds = %cond.false
  %15 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %15, 3
  br i1 %cmp16, label %cond.true.18, label %cond.false.32

cond.true.18:                                     ; preds = %cond.false.15
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf19, align 8
  %add.ptr20 = getelementptr i8, i8* %17, i64 0
  %arrayidx = getelementptr i8, i8* %add.ptr20, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %18 to i32
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 0
  %20 = load i8*, i8** %buf22, align 8
  %add.ptr23 = getelementptr i8, i8* %20, i64 0
  %arrayidx24 = getelementptr i8, i8* %add.ptr23, i64 1
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl = shl i32 %conv25, 8
  %add = add i32 %conv21, %shl
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf26, align 8
  %add.ptr27 = getelementptr i8, i8* %23, i64 0
  %arrayidx28 = getelementptr i8, i8* %add.ptr27, i64 2
  %24 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %shl30 = shl i32 %conv29, 16
  %add31 = add i32 %add, %shl30
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false.15
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf33 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 0
  %26 = load i8*, i8** %buf33, align 8
  %add.ptr34 = getelementptr i8, i8* %26, i64 0
  %27 = bitcast i8* %add.ptr34 to i32*
  %28 = load i32, i32* %27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.18
  %cond = phi i32 [ %add31, %cond.true.18 ], [ %28, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true.11
  %cond36 = phi i32 [ %conv14, %cond.true.11 ], [ %cond, %cond.end ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true
  %cond38 = phi i32 [ %conv8, %cond.true ], [ %cond36, %cond.end.35 ]
  store i32 %cond38, i32* %prevval, align 4
  store i32 17, i32* %prevdiff, align 4
  %29 = load i32, i32* %width.addr, align 4
  %conv39 = sext i32 %29 to i64
  store i64 %conv39, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.37
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 2
  %32 = load i64, i64* %len40, align 8
  %cmp41 = icmp slt i64 %30, %32
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %width.addr, align 4
  %cmp43 = icmp eq i32 %33, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %for.body
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %buf46, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr47 = getelementptr i8, i8* %35, i64 %36
  %37 = load i8, i8* %add.ptr47, align 1
  %conv48 = sext i8 %37 to i32
  br label %cond.end.83

cond.false.49:                                    ; preds = %for.body
  %38 = load i32, i32* %width.addr, align 4
  %cmp50 = icmp eq i32 %38, 2
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %cond.false.49
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf53 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 0
  %40 = load i8*, i8** %buf53, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr54 = getelementptr i8, i8* %40, i64 %41
  %42 = bitcast i8* %add.ptr54 to i16*
  %43 = load i16, i16* %42, align 2
  %conv55 = sext i16 %43 to i32
  br label %cond.end.81

cond.false.56:                                    ; preds = %cond.false.49
  %44 = load i32, i32* %width.addr, align 4
  %cmp57 = icmp eq i32 %44, 3
  br i1 %cmp57, label %cond.true.59, label %cond.false.76

cond.true.59:                                     ; preds = %cond.false.56
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 0
  %46 = load i8*, i8** %buf60, align 8
  %47 = load i64, i64* %i, align 8
  %add.ptr61 = getelementptr i8, i8* %46, i64 %47
  %arrayidx62 = getelementptr i8, i8* %add.ptr61, i64 0
  %48 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %48 to i32
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf64 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 0
  %50 = load i8*, i8** %buf64, align 8
  %51 = load i64, i64* %i, align 8
  %add.ptr65 = getelementptr i8, i8* %50, i64 %51
  %arrayidx66 = getelementptr i8, i8* %add.ptr65, i64 1
  %52 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %52 to i32
  %shl68 = shl i32 %conv67, 8
  %add69 = add i32 %conv63, %shl68
  %53 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf70 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %53, i32 0, i32 0
  %54 = load i8*, i8** %buf70, align 8
  %55 = load i64, i64* %i, align 8
  %add.ptr71 = getelementptr i8, i8* %54, i64 %55
  %arrayidx72 = getelementptr i8, i8* %add.ptr71, i64 2
  %56 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %56 to i32
  %shl74 = shl i32 %conv73, 16
  %add75 = add i32 %add69, %shl74
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.false.56
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf77 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 0
  %58 = load i8*, i8** %buf77, align 8
  %59 = load i64, i64* %i, align 8
  %add.ptr78 = getelementptr i8, i8* %58, i64 %59
  %60 = bitcast i8* %add.ptr78 to i32*
  %61 = load i32, i32* %60, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.59
  %cond80 = phi i32 [ %add75, %cond.true.59 ], [ %61, %cond.false.76 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.52
  %cond82 = phi i32 [ %conv55, %cond.true.52 ], [ %cond80, %cond.end.79 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.45
  %cond84 = phi i32 [ %conv48, %cond.true.45 ], [ %cond82, %cond.end.81 ]
  store i32 %cond84, i32* %val, align 4
  %62 = load i32, i32* %val, align 4
  %63 = load i32, i32* %prevval, align 4
  %cmp85 = icmp ne i32 %62, %63
  br i1 %cmp85, label %if.then.87, label %if.end.107

if.then.87:                                       ; preds = %cond.end.83
  %64 = load i32, i32* %val, align 4
  %65 = load i32, i32* %prevval, align 4
  %cmp88 = icmp slt i32 %64, %65
  %conv89 = zext i1 %cmp88 to i32
  store i32 %conv89, i32* %diff, align 4
  %66 = load i32, i32* %prevdiff, align 4
  %67 = load i32, i32* %diff, align 4
  %tobool90 = icmp ne i32 %67, 0
  %lnot = xor i1 %tobool90, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp91 = icmp eq i32 %66, %lnot.ext
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %if.then.87
  %68 = load i32, i32* %prevextremevalid, align 4
  %tobool94 = icmp ne i32 %68, 0
  br i1 %tobool94, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %if.then.93
  %69 = load i32, i32* %prevval, align 4
  %70 = load i32, i32* %prevextreme, align 4
  %cmp96 = icmp slt i32 %69, %70
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.then.95
  %71 = load i32, i32* %prevextreme, align 4
  %72 = load i32, i32* %prevval, align 4
  %sub = sub i32 %71, %72
  %conv99 = uitofp i32 %sub to double
  %73 = load double, double* %sum, align 8
  %add100 = fadd double %73, %conv99
  store double %add100, double* %sum, align 8
  br label %if.end.104

if.else:                                          ; preds = %if.then.95
  %74 = load i32, i32* %prevval, align 4
  %75 = load i32, i32* %prevextreme, align 4
  %sub101 = sub i32 %74, %75
  %conv102 = uitofp i32 %sub101 to double
  %76 = load double, double* %sum, align 8
  %add103 = fadd double %76, %conv102
  store double %add103, double* %sum, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else, %if.then.98
  %77 = load i32, i32* %nextreme, align 4
  %inc = add i32 %77, 1
  store i32 %inc, i32* %nextreme, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  store i32 1, i32* %prevextremevalid, align 4
  %78 = load i32, i32* %prevval, align 4
  store i32 %78, i32* %prevextreme, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.87
  %79 = load i32, i32* %val, align 4
  store i32 %79, i32* %prevval, align 4
  %80 = load i32, i32* %diff, align 4
  store i32 %80, i32* %prevdiff, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %cond.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %81 = load i32, i32* %width.addr, align 4
  %conv108 = sext i32 %81 to i64
  %82 = load i64, i64* %i, align 8
  %add109 = add i64 %82, %conv108
  store i64 %add109, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %nextreme, align 4
  %cmp110 = icmp eq i32 %83, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %for.end
  store i32 0, i32* %avg, align 4
  br label %if.end.116

if.else.113:                                      ; preds = %for.end
  %84 = load double, double* %sum, align 8
  %85 = load i32, i32* %nextreme, align 4
  %conv114 = sitofp i32 %85 to double
  %div = fdiv double %84, %conv114
  %conv115 = fptoui double %div to i32
  store i32 %conv115, i32* %avg, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  %86 = load i32, i32* %avg, align 4
  %conv117 = zext i32 %86 to i64
  %call118 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv117)
  store %struct._object* %call118, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.then.3, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_rms_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  %sum_squares = alloca double, align 8
  %val = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double 0.000000e+00, double* %sum_squares, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  br label %cond.end.31

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf6, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr7 to i16*
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  br label %cond.end.29

cond.false.9:                                     ; preds = %cond.false
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.false.9
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %arrayidx = getelementptr i8, i8* %add.ptr14, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %21 to i32
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf16, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %23, i64 %24
  %arrayidx18 = getelementptr i8, i8* %add.ptr17, i64 1
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %shl = shl i32 %conv19, 8
  %add = add i32 %conv15, %shl
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf20, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %27, i64 %28
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 2
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %shl24 = shl i32 %conv23, 16
  %add25 = add i32 %add, %shl24
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.9
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf27, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr28 to i32*
  %34 = load i32, i32* %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.12
  %cond = phi i32 [ %add25, %cond.true.12 ], [ %34, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.5
  %cond30 = phi i32 [ %conv8, %cond.true.5 ], [ %cond, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %conv, %cond.true ], [ %cond30, %cond.end.29 ]
  %conv33 = sitofp i32 %cond32 to double
  store double %conv33, double* %val, align 8
  %35 = load double, double* %val, align 8
  %36 = load double, double* %val, align 8
  %mul = fmul double %35, %36
  %37 = load double, double* %sum_squares, align 8
  %add34 = fadd double %37, %mul
  store double %add34, double* %sum_squares, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %38 = load i32, i32* %width.addr, align 4
  %conv35 = sext i32 %38 to i64
  %39 = load i64, i64* %i, align 8
  %add36 = add i64 %39, %conv35
  store i64 %add36, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 2
  %41 = load i64, i64* %len37, align 8
  %cmp38 = icmp eq i64 %41, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.end
  store i32 0, i32* %res, align 4
  br label %if.end.47

if.else:                                          ; preds = %for.end
  %42 = load double, double* %sum_squares, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 2
  %44 = load i64, i64* %len41, align 8
  %45 = load i32, i32* %width.addr, align 4
  %conv42 = sext i32 %45 to i64
  %div = sdiv i64 %44, %conv42
  %conv43 = sitofp i64 %div to double
  %div44 = fdiv double %42, %conv43
  %call45 = call double @sqrt(double %div44) #2
  %conv46 = fptoui double %call45 to i32
  store i32 %conv46, i32* %res, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.40
  %46 = load i32, i32* %res, align 4
  %conv48 = zext i32 %46 to i64
  %call49 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv48)
  store %struct._object* %call49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findfit_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %reference.addr = alloca %struct.bufferinfo*, align 8
  %cp1 = alloca i16*, align 8
  %cp2 = alloca i16*, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %j = alloca i64, align 8
  %best_j = alloca i64, align 8
  %aj_m1 = alloca double, align 8
  %aj_lm1 = alloca double, align 8
  %sum_ri_2 = alloca double, align 8
  %sum_aij_2 = alloca double, align 8
  %sum_aij_ri = alloca double, align 8
  %result = alloca double, align 8
  %best_result = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store %struct.bufferinfo* %reference, %struct.bufferinfo** %reference.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %and = and i64 %1, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len3, align 8
  %and4 = and i64 %3, 1
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  %7 = bitcast i8* %6 to i16*
  store i16* %7, i16** %cp1, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  %9 = load i64, i64* %len6, align 8
  %shr = ashr i64 %9, 1
  store i64 %shr, i64* %len1, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %buf7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf7, align 8
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %cp2, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len8, align 8
  %shr9 = ashr i64 %14, 1
  store i64 %shr9, i64* %len2, align 8
  %15 = load i64, i64* %len1, align 8
  %16 = load i64, i64* %len2, align 8
  %cmp = icmp slt i64 %15, %16
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %18 = load i16*, i16** %cp2, align 8
  %19 = load i16*, i16** %cp2, align 8
  %20 = load i64, i64* %len2, align 8
  %call = call double @_sum2(i16* %18, i16* %19, i64 %20)
  store double %call, double* %sum_ri_2, align 8
  %21 = load i16*, i16** %cp1, align 8
  %22 = load i16*, i16** %cp1, align 8
  %23 = load i64, i64* %len2, align 8
  %call12 = call double @_sum2(i16* %21, i16* %22, i64 %23)
  store double %call12, double* %sum_aij_2, align 8
  %24 = load i16*, i16** %cp1, align 8
  %25 = load i16*, i16** %cp2, align 8
  %26 = load i64, i64* %len2, align 8
  %call13 = call double @_sum2(i16* %24, i16* %25, i64 %26)
  store double %call13, double* %sum_aij_ri, align 8
  %27 = load double, double* %sum_ri_2, align 8
  %28 = load double, double* %sum_aij_2, align 8
  %mul = fmul double %27, %28
  %29 = load double, double* %sum_aij_ri, align 8
  %30 = load double, double* %sum_aij_ri, align 8
  %mul14 = fmul double %29, %30
  %sub = fsub double %mul, %mul14
  %31 = load double, double* %sum_aij_2, align 8
  %div = fdiv double %sub, %31
  store double %div, double* %result, align 8
  %32 = load double, double* %result, align 8
  store double %32, double* %best_result, align 8
  store i64 0, i64* %best_j, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %33 = load i64, i64* %j, align 8
  %34 = load i64, i64* %len1, align 8
  %35 = load i64, i64* %len2, align 8
  %sub15 = sub i64 %34, %35
  %cmp16 = icmp sle i64 %33, %sub15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i64, i64* %j, align 8
  %sub17 = sub i64 %36, 1
  %37 = load i16*, i16** %cp1, align 8
  %arrayidx = getelementptr i16, i16* %37, i64 %sub17
  %38 = load i16, i16* %arrayidx, align 2
  %conv = sitofp i16 %38 to double
  store double %conv, double* %aj_m1, align 8
  %39 = load i64, i64* %j, align 8
  %40 = load i64, i64* %len2, align 8
  %add = add i64 %39, %40
  %sub18 = sub i64 %add, 1
  %41 = load i16*, i16** %cp1, align 8
  %arrayidx19 = getelementptr i16, i16* %41, i64 %sub18
  %42 = load i16, i16* %arrayidx19, align 2
  %conv20 = sitofp i16 %42 to double
  store double %conv20, double* %aj_lm1, align 8
  %43 = load double, double* %sum_aij_2, align 8
  %44 = load double, double* %aj_lm1, align 8
  %45 = load double, double* %aj_lm1, align 8
  %mul21 = fmul double %44, %45
  %add22 = fadd double %43, %mul21
  %46 = load double, double* %aj_m1, align 8
  %47 = load double, double* %aj_m1, align 8
  %mul23 = fmul double %46, %47
  %sub24 = fsub double %add22, %mul23
  store double %sub24, double* %sum_aij_2, align 8
  %48 = load i16*, i16** %cp1, align 8
  %49 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i16, i16* %48, i64 %49
  %50 = load i16*, i16** %cp2, align 8
  %51 = load i64, i64* %len2, align 8
  %call25 = call double @_sum2(i16* %add.ptr, i16* %50, i64 %51)
  store double %call25, double* %sum_aij_ri, align 8
  %52 = load double, double* %sum_ri_2, align 8
  %53 = load double, double* %sum_aij_2, align 8
  %mul26 = fmul double %52, %53
  %54 = load double, double* %sum_aij_ri, align 8
  %55 = load double, double* %sum_aij_ri, align 8
  %mul27 = fmul double %54, %55
  %sub28 = fsub double %mul26, %mul27
  %56 = load double, double* %sum_aij_2, align 8
  %div29 = fdiv double %sub28, %56
  store double %div29, double* %result, align 8
  %57 = load double, double* %result, align 8
  %58 = load double, double* %best_result, align 8
  %cmp30 = fcmp olt double %57, %58
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  %59 = load double, double* %result, align 8
  store double %59, double* %best_result, align 8
  %60 = load i64, i64* %j, align 8
  store i64 %60, i64* %best_j, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %61 = load i64, i64* %j, align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i16*, i16** %cp1, align 8
  %63 = load i64, i64* %best_j, align 8
  %add.ptr34 = getelementptr i16, i16* %62, i64 %63
  %64 = load i16*, i16** %cp2, align 8
  %65 = load i64, i64* %len2, align 8
  %call35 = call double @_sum2(i16* %add.ptr34, i16* %64, i64 %65)
  %66 = load double, double* %sum_ri_2, align 8
  %div36 = fdiv double %call35, %66
  store double %div36, double* %factor, align 8
  %67 = load i64, i64* %best_j, align 8
  %68 = load double, double* %factor, align 8
  %call37 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i64 %67, double %68)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then
  %69 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %69
}

; Function Attrs: nounwind uwtable
define internal double @_sum2(i16* %a, i16* %b, i64 %len) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %sum = alloca double, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %sum, align 8
  %3 = load i64, i64* %i, align 8
  %4 = load i16*, i16** %a.addr, align 8
  %arrayidx = getelementptr i16, i16* %4, i64 %3
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sitofp i16 %5 to double
  %6 = load i64, i64* %i, align 8
  %7 = load i16*, i16** %b.addr, align 8
  %arrayidx1 = getelementptr i16, i16* %7, i64 %6
  %8 = load i16, i16* %arrayidx1, align 2
  %conv2 = sitofp i16 %8 to double
  %mul = fmul double %conv, %conv2
  %add = fadd double %2, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %sum, align 8
  ret double %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findmax_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i64 %length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %length.addr = alloca i64, align 8
  %cp1 = alloca i16*, align 8
  %len1 = alloca i64, align 8
  %j = alloca i64, align 8
  %best_j = alloca i64, align 8
  %aj_m1 = alloca double, align 8
  %aj_lm1 = alloca double, align 8
  %result = alloca double, align 8
  %best_result = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %and = and i64 %1, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  %5 = bitcast i8* %4 to i16*
  store i16* %5, i16** %cp1, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2
  %7 = load i64, i64* %len2, align 8
  %shr = ashr i64 %7, 1
  store i64 %shr, i64* %len1, align 8
  %8 = load i64, i64* %length.addr, align 8
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, i64* %len1, align 8
  %10 = load i64, i64* %length.addr, align 8
  %cmp3 = icmp slt i64 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %12 = load i16*, i16** %cp1, align 8
  %13 = load i16*, i16** %cp1, align 8
  %14 = load i64, i64* %length.addr, align 8
  %call = call double @_sum2(i16* %12, i16* %13, i64 %14)
  store double %call, double* %result, align 8
  %15 = load double, double* %result, align 8
  store double %15, double* %best_result, align 8
  store i64 0, i64* %best_j, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %16 = load i64, i64* %j, align 8
  %17 = load i64, i64* %len1, align 8
  %18 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %17, %18
  %cmp6 = icmp sle i64 %16, %sub
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %j, align 8
  %sub7 = sub i64 %19, 1
  %20 = load i16*, i16** %cp1, align 8
  %arrayidx = getelementptr i16, i16* %20, i64 %sub7
  %21 = load i16, i16* %arrayidx, align 2
  %conv = sitofp i16 %21 to double
  store double %conv, double* %aj_m1, align 8
  %22 = load i64, i64* %j, align 8
  %23 = load i64, i64* %length.addr, align 8
  %add = add i64 %22, %23
  %sub8 = sub i64 %add, 1
  %24 = load i16*, i16** %cp1, align 8
  %arrayidx9 = getelementptr i16, i16* %24, i64 %sub8
  %25 = load i16, i16* %arrayidx9, align 2
  %conv10 = sitofp i16 %25 to double
  store double %conv10, double* %aj_lm1, align 8
  %26 = load double, double* %result, align 8
  %27 = load double, double* %aj_lm1, align 8
  %28 = load double, double* %aj_lm1, align 8
  %mul = fmul double %27, %28
  %add11 = fadd double %26, %mul
  %29 = load double, double* %aj_m1, align 8
  %30 = load double, double* %aj_m1, align 8
  %mul12 = fmul double %29, %30
  %sub13 = fsub double %add11, %mul12
  store double %sub13, double* %result, align 8
  %31 = load double, double* %result, align 8
  %32 = load double, double* %best_result, align 8
  %cmp14 = fcmp ogt double %31, %32
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %33 = load double, double* %result, align 8
  store double %33, double* %best_result, align 8
  %34 = load i64, i64* %j, align 8
  store i64 %34, i64* %best_j, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %35 = load i64, i64* %j, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64, i64* %best_j, align 8
  %call18 = call %struct._object* @PyLong_FromSsize_t(i64 %36)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_findfactor_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, %struct.bufferinfo* %reference) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %reference.addr = alloca %struct.bufferinfo*, align 8
  %cp1 = alloca i16*, align 8
  %cp2 = alloca i16*, align 8
  %len = alloca i64, align 8
  %sum_ri_2 = alloca double, align 8
  %sum_aij_ri = alloca double, align 8
  %result = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store %struct.bufferinfo* %reference, %struct.bufferinfo** %reference.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len1, align 8
  %and = and i64 %1, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len2, align 8
  %and3 = and i64 %3, 1
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len5, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2
  %8 = load i64, i64* %len6, align 8
  %cmp = icmp ne i64 %6, %8
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %cp1, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %reference.addr, align 8
  %buf9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 0
  %14 = load i8*, i8** %buf9, align 8
  %15 = bitcast i8* %14 to i16*
  store i16* %15, i16** %cp2, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 2
  %17 = load i64, i64* %len10, align 8
  %shr = ashr i64 %17, 1
  store i64 %shr, i64* %len, align 8
  %18 = load i16*, i16** %cp2, align 8
  %19 = load i16*, i16** %cp2, align 8
  %20 = load i64, i64* %len, align 8
  %call = call double @_sum2(i16* %18, i16* %19, i64 %20)
  store double %call, double* %sum_ri_2, align 8
  %21 = load i16*, i16** %cp1, align 8
  %22 = load i16*, i16** %cp2, align 8
  %23 = load i64, i64* %len, align 8
  %call11 = call double @_sum2(i16* %21, i16* %22, i64 %23)
  store double %call11, double* %sum_aij_ri, align 8
  %24 = load double, double* %sum_aij_ri, align 8
  %25 = load double, double* %sum_ri_2, align 8
  %div = fdiv double %24, %25
  store double %div, double* %result, align 8
  %26 = load double, double* %result, align 8
  %call12 = call %struct._object* @PyFloat_FromDouble(double %26)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare %struct._object* @PyFloat_FromDouble(double) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_cross_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %prevval = alloca i32, align 4
  %ncross = alloca i64, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 -1, i64* %ncross, align 8
  store i32 17, i32* %prevval, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  br label %cond.end.31

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.9

cond.true.5:                                      ; preds = %cond.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf6, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr7 to i16*
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  br label %cond.end.29

cond.false.9:                                     ; preds = %cond.false
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.false.9
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %arrayidx = getelementptr i8, i8* %add.ptr14, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %21 to i32
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf16, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %23, i64 %24
  %arrayidx18 = getelementptr i8, i8* %add.ptr17, i64 1
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %shl = shl i32 %conv19, 8
  %add = add i32 %conv15, %shl
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf20, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %27, i64 %28
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 2
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %shl24 = shl i32 %conv23, 16
  %add25 = add i32 %add, %shl24
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.9
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf27, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr28 to i32*
  %34 = load i32, i32* %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.12
  %cond = phi i32 [ %add25, %cond.true.12 ], [ %34, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.5
  %cond30 = phi i32 [ %conv8, %cond.true.5 ], [ %cond, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %conv, %cond.true ], [ %cond30, %cond.end.29 ]
  %cmp33 = icmp slt i32 %cond32, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %val, align 4
  %35 = load i32, i32* %val, align 4
  %36 = load i32, i32* %prevval, align 4
  %cmp35 = icmp ne i32 %35, %36
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cond.end.31
  %37 = load i64, i64* %ncross, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %ncross, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %cond.end.31
  %38 = load i32, i32* %val, align 4
  store i32 %38, i32* %prevval, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %39 = load i32, i32* %width.addr, align 4
  %conv39 = sext i32 %39 to i64
  %40 = load i64, i64* %i, align 8
  %add40 = add i64 %40, %conv39
  store i64 %add40, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i64, i64* %ncross, align 8
  %call41 = call %struct._object* @PyLong_FromSsize_t(i64 %41)
  store %struct._object* %call41, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_mul_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, double %factor) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %factor.addr = alloca double, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %maxval = alloca double, align 8
  %minval = alloca double, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double %factor, double* %factor.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %width.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @maxvals, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %4 to double
  store double %conv, double* %maxval, align 8
  %5 = load i32, i32* %width.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr [5 x i32], [5 x i32]* @minvals, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %conv3 = sitofp i32 %6 to double
  store double %conv3, double* %minval, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2
  %8 = load i64, i64* %len4, align 8
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %8)
  store %struct._object* %call5, %struct._object** %rv, align 8
  %9 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %9, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %rv, align 8
  %call9 = call i8* @PyBytes_AsString(%struct._object* %10)
  store i8* %call9, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2
  %13 = load i64, i64* %len10, align 8
  %cmp11 = icmp slt i64 %11, %13
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %width.addr, align 4
  %cmp13 = icmp eq i32 %14, 1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 0
  %16 = load i8*, i8** %buf, align 8
  %17 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 %17
  %18 = load i8, i8* %add.ptr, align 1
  %conv15 = sext i8 %18 to i32
  br label %cond.end.45

cond.false:                                       ; preds = %for.body
  %19 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %19, 2
  br i1 %cmp16, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %cond.false
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf19, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr20 = getelementptr i8, i8* %21, i64 %22
  %23 = bitcast i8* %add.ptr20 to i16*
  %24 = load i16, i16* %23, align 2
  %conv21 = sext i16 %24 to i32
  br label %cond.end.43

cond.false.22:                                    ; preds = %cond.false
  %25 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp eq i32 %25, 3
  br i1 %cmp23, label %cond.true.25, label %cond.false.40

cond.true.25:                                     ; preds = %cond.false.22
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf26, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr27 = getelementptr i8, i8* %27, i64 %28
  %arrayidx28 = getelementptr i8, i8* %add.ptr27, i64 0
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %29 to i32
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf30, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr31 = getelementptr i8, i8* %31, i64 %32
  %arrayidx32 = getelementptr i8, i8* %add.ptr31, i64 1
  %33 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %33 to i32
  %shl = shl i32 %conv33, 8
  %add = add i32 %conv29, %shl
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %buf34, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr35 = getelementptr i8, i8* %35, i64 %36
  %arrayidx36 = getelementptr i8, i8* %add.ptr35, i64 2
  %37 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %37 to i32
  %shl38 = shl i32 %conv37, 16
  %add39 = add i32 %add, %shl38
  br label %cond.end

cond.false.40:                                    ; preds = %cond.false.22
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf41, align 8
  %40 = load i64, i64* %i, align 8
  %add.ptr42 = getelementptr i8, i8* %39, i64 %40
  %41 = bitcast i8* %add.ptr42 to i32*
  %42 = load i32, i32* %41, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.40, %cond.true.25
  %cond = phi i32 [ %add39, %cond.true.25 ], [ %42, %cond.false.40 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true.18
  %cond44 = phi i32 [ %conv21, %cond.true.18 ], [ %cond, %cond.end ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true
  %cond46 = phi i32 [ %conv15, %cond.true ], [ %cond44, %cond.end.43 ]
  %conv47 = sitofp i32 %cond46 to double
  store double %conv47, double* %val, align 8
  %43 = load double, double* %factor.addr, align 8
  %44 = load double, double* %val, align 8
  %mul = fmul double %44, %43
  store double %mul, double* %val, align 8
  %45 = load double, double* %val, align 8
  %46 = load double, double* %minval, align 8
  %47 = load double, double* %maxval, align 8
  %call48 = call i32 @fbound(double %45, double %46, double %47)
  %conv49 = sitofp i32 %call48 to double
  %call50 = call double @floor(double %conv49) #5
  store double %call50, double* %val, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.45
  %48 = load i32, i32* %width.addr, align 4
  %cmp51 = icmp eq i32 %48, 1
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %do.body
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %49 = load double, double* %val, align 8
  %conv55 = fptosi double %49 to i32
  %conv56 = trunc i32 %conv55 to i8
  %50 = load i8*, i8** %ncp, align 8
  %51 = load i64, i64* %i, align 8
  %add.ptr57 = getelementptr i8, i8* %50, i64 %51
  store i8 %conv56, i8* %add.ptr57, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.54
  br label %if.end.92

if.else:                                          ; preds = %do.body
  %52 = load i32, i32* %width.addr, align 4
  %cmp58 = icmp eq i32 %52, 2
  br i1 %cmp58, label %if.then.60, label %if.else.66

if.then.60:                                       ; preds = %if.else
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %53 = load double, double* %val, align 8
  %conv62 = fptosi double %53 to i32
  %conv63 = trunc i32 %conv62 to i16
  %54 = load i8*, i8** %ncp, align 8
  %55 = load i64, i64* %i, align 8
  %add.ptr64 = getelementptr i8, i8* %54, i64 %55
  %56 = bitcast i8* %add.ptr64 to i16*
  store i16 %conv63, i16* %56, align 2
  br label %do.end.65

do.end.65:                                        ; preds = %do.body.61
  br label %if.end.91

if.else.66:                                       ; preds = %if.else
  %57 = load i32, i32* %width.addr, align 4
  %cmp67 = icmp eq i32 %57, 3
  br i1 %cmp67, label %if.then.69, label %if.else.85

if.then.69:                                       ; preds = %if.else.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %58 = load double, double* %val, align 8
  %conv71 = fptosi double %58 to i32
  %conv72 = trunc i32 %conv71 to i8
  %59 = load i8*, i8** %ncp, align 8
  %60 = load i64, i64* %i, align 8
  %add.ptr73 = getelementptr i8, i8* %59, i64 %60
  %arrayidx74 = getelementptr i8, i8* %add.ptr73, i64 0
  store i8 %conv72, i8* %arrayidx74, align 1
  %61 = load double, double* %val, align 8
  %conv75 = fptosi double %61 to i32
  %shr = ashr i32 %conv75, 8
  %conv76 = trunc i32 %shr to i8
  %62 = load i8*, i8** %ncp, align 8
  %63 = load i64, i64* %i, align 8
  %add.ptr77 = getelementptr i8, i8* %62, i64 %63
  %arrayidx78 = getelementptr i8, i8* %add.ptr77, i64 1
  store i8 %conv76, i8* %arrayidx78, align 1
  %64 = load double, double* %val, align 8
  %conv79 = fptosi double %64 to i32
  %shr80 = ashr i32 %conv79, 16
  %conv81 = trunc i32 %shr80 to i8
  %65 = load i8*, i8** %ncp, align 8
  %66 = load i64, i64* %i, align 8
  %add.ptr82 = getelementptr i8, i8* %65, i64 %66
  %arrayidx83 = getelementptr i8, i8* %add.ptr82, i64 2
  store i8 %conv81, i8* %arrayidx83, align 1
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.70
  br label %if.end.90

if.else.85:                                       ; preds = %if.else.66
  br label %do.body.86

do.body.86:                                       ; preds = %if.else.85
  %67 = load double, double* %val, align 8
  %conv87 = fptosi double %67 to i32
  %68 = load i8*, i8** %ncp, align 8
  %69 = load i64, i64* %i, align 8
  %add.ptr88 = getelementptr i8, i8* %68, i64 %69
  %70 = bitcast i8* %add.ptr88 to i32*
  store i32 %conv87, i32* %70, align 4
  br label %do.end.89

do.end.89:                                        ; preds = %do.body.86
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %do.end.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.end.65
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %do.end
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %for.inc

for.inc:                                          ; preds = %do.end.93
  %71 = load i32, i32* %width.addr, align 4
  %conv94 = sext i32 %71 to i64
  %72 = load i64, i64* %i, align 8
  %add95 = add i64 %72, %conv94
  store i64 %add95, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %73, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %74 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %74
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fbound(double %val, double %minval, double %maxval) #0 {
entry:
  %val.addr = alloca double, align 8
  %minval.addr = alloca double, align 8
  %maxval.addr = alloca double, align 8
  store double %val, double* %val.addr, align 8
  store double %minval, double* %minval.addr, align 8
  store double %maxval, double* %maxval.addr, align 8
  %0 = load double, double* %val.addr, align 8
  %1 = load double, double* %maxval.addr, align 8
  %cmp = fcmp ogt double %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %maxval.addr, align 8
  store double %2, double* %val.addr, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load double, double* %val.addr, align 8
  %4 = load double, double* %minval.addr, align 8
  %add = fadd double %4, 1.000000e+00
  %cmp1 = fcmp olt double %3, %add
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load double, double* %minval.addr, align 8
  store double %5, double* %val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %6 = load double, double* %val.addr, align 8
  %conv = fptosi double %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_add_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment1, %struct.bufferinfo* %fragment2, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment1.addr = alloca %struct.bufferinfo*, align 8
  %fragment2.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %minval = alloca i32, align 4
  %maxval = alloca i32, align 4
  %newval = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %fval = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment1, %struct.bufferinfo** %fragment1.addr, align 8
  store %struct.bufferinfo* %fragment2, %struct.bufferinfo** %fragment2.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len2, align 8
  %cmp = icmp ne i64 %4, %6
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load i32, i32* %width.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @maxvals, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %maxval, align 4
  %10 = load i32, i32* %width.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr [5 x i32], [5 x i32]* @minvals, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  store i32 %11, i32* %minval, align 4
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2
  %13 = load i64, i64* %len7, align 8
  %call8 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %13)
  store %struct._object* %call8, %struct._object** %rv, align 8
  %14 = load %struct._object*, %struct._object** %rv, align 8
  %cmp9 = icmp eq %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %rv, align 8
  %call12 = call i8* @PyBytes_AsString(%struct._object* %15)
  store i8* %call12, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 2
  %18 = load i64, i64* %len13, align 8
  %cmp14 = icmp slt i64 %16, %18
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %width.addr, align 4
  %cmp15 = icmp eq i32 %19, 1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  %23 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %23 to i32
  br label %cond.end.45

cond.false:                                       ; preds = %for.body
  %24 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %24, 2
  br i1 %cmp16, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %cond.false
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 0
  %26 = load i8*, i8** %buf19, align 8
  %27 = load i64, i64* %i, align 8
  %add.ptr20 = getelementptr i8, i8* %26, i64 %27
  %28 = bitcast i8* %add.ptr20 to i16*
  %29 = load i16, i16* %28, align 2
  %conv21 = sext i16 %29 to i32
  br label %cond.end.43

cond.false.22:                                    ; preds = %cond.false
  %30 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp eq i32 %30, 3
  br i1 %cmp23, label %cond.true.25, label %cond.false.40

cond.true.25:                                     ; preds = %cond.false.22
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  %32 = load i8*, i8** %buf26, align 8
  %33 = load i64, i64* %i, align 8
  %add.ptr27 = getelementptr i8, i8* %32, i64 %33
  %arrayidx28 = getelementptr i8, i8* %add.ptr27, i64 0
  %34 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %34 to i32
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 0
  %36 = load i8*, i8** %buf30, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr31 = getelementptr i8, i8* %36, i64 %37
  %arrayidx32 = getelementptr i8, i8* %add.ptr31, i64 1
  %38 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %38 to i32
  %shl = shl i32 %conv33, 8
  %add = add i32 %conv29, %shl
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 0
  %40 = load i8*, i8** %buf34, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr35 = getelementptr i8, i8* %40, i64 %41
  %arrayidx36 = getelementptr i8, i8* %add.ptr35, i64 2
  %42 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %42 to i32
  %shl38 = shl i32 %conv37, 16
  %add39 = add i32 %add, %shl38
  br label %cond.end

cond.false.40:                                    ; preds = %cond.false.22
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment1.addr, align 8
  %buf41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 0
  %44 = load i8*, i8** %buf41, align 8
  %45 = load i64, i64* %i, align 8
  %add.ptr42 = getelementptr i8, i8* %44, i64 %45
  %46 = bitcast i8* %add.ptr42 to i32*
  %47 = load i32, i32* %46, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.40, %cond.true.25
  %cond = phi i32 [ %add39, %cond.true.25 ], [ %47, %cond.false.40 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true.18
  %cond44 = phi i32 [ %conv21, %cond.true.18 ], [ %cond, %cond.end ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true
  %cond46 = phi i32 [ %conv, %cond.true ], [ %cond44, %cond.end.43 ]
  store i32 %cond46, i32* %val1, align 4
  %48 = load i32, i32* %width.addr, align 4
  %cmp47 = icmp eq i32 %48, 1
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end.45
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf50 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 0
  %50 = load i8*, i8** %buf50, align 8
  %51 = load i64, i64* %i, align 8
  %add.ptr51 = getelementptr i8, i8* %50, i64 %51
  %52 = load i8, i8* %add.ptr51, align 1
  %conv52 = sext i8 %52 to i32
  br label %cond.end.87

cond.false.53:                                    ; preds = %cond.end.45
  %53 = load i32, i32* %width.addr, align 4
  %cmp54 = icmp eq i32 %53, 2
  br i1 %cmp54, label %cond.true.56, label %cond.false.60

cond.true.56:                                     ; preds = %cond.false.53
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf57 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %54, i32 0, i32 0
  %55 = load i8*, i8** %buf57, align 8
  %56 = load i64, i64* %i, align 8
  %add.ptr58 = getelementptr i8, i8* %55, i64 %56
  %57 = bitcast i8* %add.ptr58 to i16*
  %58 = load i16, i16* %57, align 2
  %conv59 = sext i16 %58 to i32
  br label %cond.end.85

cond.false.60:                                    ; preds = %cond.false.53
  %59 = load i32, i32* %width.addr, align 4
  %cmp61 = icmp eq i32 %59, 3
  br i1 %cmp61, label %cond.true.63, label %cond.false.80

cond.true.63:                                     ; preds = %cond.false.60
  %60 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf64 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %60, i32 0, i32 0
  %61 = load i8*, i8** %buf64, align 8
  %62 = load i64, i64* %i, align 8
  %add.ptr65 = getelementptr i8, i8* %61, i64 %62
  %arrayidx66 = getelementptr i8, i8* %add.ptr65, i64 0
  %63 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %63 to i32
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf68 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %64, i32 0, i32 0
  %65 = load i8*, i8** %buf68, align 8
  %66 = load i64, i64* %i, align 8
  %add.ptr69 = getelementptr i8, i8* %65, i64 %66
  %arrayidx70 = getelementptr i8, i8* %add.ptr69, i64 1
  %67 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %67 to i32
  %shl72 = shl i32 %conv71, 8
  %add73 = add i32 %conv67, %shl72
  %68 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf74 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %68, i32 0, i32 0
  %69 = load i8*, i8** %buf74, align 8
  %70 = load i64, i64* %i, align 8
  %add.ptr75 = getelementptr i8, i8* %69, i64 %70
  %arrayidx76 = getelementptr i8, i8* %add.ptr75, i64 2
  %71 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %71 to i32
  %shl78 = shl i32 %conv77, 16
  %add79 = add i32 %add73, %shl78
  br label %cond.end.83

cond.false.80:                                    ; preds = %cond.false.60
  %72 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment2.addr, align 8
  %buf81 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %72, i32 0, i32 0
  %73 = load i8*, i8** %buf81, align 8
  %74 = load i64, i64* %i, align 8
  %add.ptr82 = getelementptr i8, i8* %73, i64 %74
  %75 = bitcast i8* %add.ptr82 to i32*
  %76 = load i32, i32* %75, align 4
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.63
  %cond84 = phi i32 [ %add79, %cond.true.63 ], [ %76, %cond.false.80 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.56
  %cond86 = phi i32 [ %conv59, %cond.true.56 ], [ %cond84, %cond.end.83 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.49
  %cond88 = phi i32 [ %conv52, %cond.true.49 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %val2, align 4
  %77 = load i32, i32* %width.addr, align 4
  %cmp89 = icmp slt i32 %77, 4
  br i1 %cmp89, label %if.then.91, label %if.else.101

if.then.91:                                       ; preds = %cond.end.87
  %78 = load i32, i32* %val1, align 4
  %79 = load i32, i32* %val2, align 4
  %add92 = add i32 %78, %79
  store i32 %add92, i32* %newval, align 4
  %80 = load i32, i32* %newval, align 4
  %81 = load i32, i32* %maxval, align 4
  %cmp93 = icmp sgt i32 %80, %81
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %if.then.91
  %82 = load i32, i32* %maxval, align 4
  store i32 %82, i32* %newval, align 4
  br label %if.end.100

if.else:                                          ; preds = %if.then.91
  %83 = load i32, i32* %newval, align 4
  %84 = load i32, i32* %minval, align 4
  %cmp96 = icmp slt i32 %83, %84
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.else
  %85 = load i32, i32* %minval, align 4
  store i32 %85, i32* %newval, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.else
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.95
  br label %if.end.111

if.else.101:                                      ; preds = %cond.end.87
  %86 = load i32, i32* %val1, align 4
  %conv102 = sitofp i32 %86 to double
  %87 = load i32, i32* %val2, align 4
  %conv103 = sitofp i32 %87 to double
  %add104 = fadd double %conv102, %conv103
  store double %add104, double* %fval, align 8
  %88 = load double, double* %fval, align 8
  %89 = load i32, i32* %minval, align 4
  %conv105 = sitofp i32 %89 to double
  %90 = load i32, i32* %maxval, align 4
  %conv106 = sitofp i32 %90 to double
  %call107 = call i32 @fbound(double %88, double %conv105, double %conv106)
  %conv108 = sitofp i32 %call107 to double
  %call109 = call double @floor(double %conv108) #5
  %conv110 = fptosi double %call109 to i32
  store i32 %conv110, i32* %newval, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.101, %if.end.100
  br label %do.body

do.body:                                          ; preds = %if.end.111
  %91 = load i32, i32* %width.addr, align 4
  %cmp112 = icmp eq i32 %91, 1
  br i1 %cmp112, label %if.then.114, label %if.else.118

if.then.114:                                      ; preds = %do.body
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %92 = load i32, i32* %newval, align 4
  %conv116 = trunc i32 %92 to i8
  %93 = load i8*, i8** %ncp, align 8
  %94 = load i64, i64* %i, align 8
  %add.ptr117 = getelementptr i8, i8* %93, i64 %94
  store i8 %conv116, i8* %add.ptr117, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.115
  br label %if.end.148

if.else.118:                                      ; preds = %do.body
  %95 = load i32, i32* %width.addr, align 4
  %cmp119 = icmp eq i32 %95, 2
  br i1 %cmp119, label %if.then.121, label %if.else.126

if.then.121:                                      ; preds = %if.else.118
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.121
  %96 = load i32, i32* %newval, align 4
  %conv123 = trunc i32 %96 to i16
  %97 = load i8*, i8** %ncp, align 8
  %98 = load i64, i64* %i, align 8
  %add.ptr124 = getelementptr i8, i8* %97, i64 %98
  %99 = bitcast i8* %add.ptr124 to i16*
  store i16 %conv123, i16* %99, align 2
  br label %do.end.125

do.end.125:                                       ; preds = %do.body.122
  br label %if.end.147

if.else.126:                                      ; preds = %if.else.118
  %100 = load i32, i32* %width.addr, align 4
  %cmp127 = icmp eq i32 %100, 3
  br i1 %cmp127, label %if.then.129, label %if.else.142

if.then.129:                                      ; preds = %if.else.126
  br label %do.body.130

do.body.130:                                      ; preds = %if.then.129
  %101 = load i32, i32* %newval, align 4
  %conv131 = trunc i32 %101 to i8
  %102 = load i8*, i8** %ncp, align 8
  %103 = load i64, i64* %i, align 8
  %add.ptr132 = getelementptr i8, i8* %102, i64 %103
  %arrayidx133 = getelementptr i8, i8* %add.ptr132, i64 0
  store i8 %conv131, i8* %arrayidx133, align 1
  %104 = load i32, i32* %newval, align 4
  %shr = ashr i32 %104, 8
  %conv134 = trunc i32 %shr to i8
  %105 = load i8*, i8** %ncp, align 8
  %106 = load i64, i64* %i, align 8
  %add.ptr135 = getelementptr i8, i8* %105, i64 %106
  %arrayidx136 = getelementptr i8, i8* %add.ptr135, i64 1
  store i8 %conv134, i8* %arrayidx136, align 1
  %107 = load i32, i32* %newval, align 4
  %shr137 = ashr i32 %107, 16
  %conv138 = trunc i32 %shr137 to i8
  %108 = load i8*, i8** %ncp, align 8
  %109 = load i64, i64* %i, align 8
  %add.ptr139 = getelementptr i8, i8* %108, i64 %109
  %arrayidx140 = getelementptr i8, i8* %add.ptr139, i64 2
  store i8 %conv138, i8* %arrayidx140, align 1
  br label %do.end.141

do.end.141:                                       ; preds = %do.body.130
  br label %if.end.146

if.else.142:                                      ; preds = %if.else.126
  br label %do.body.143

do.body.143:                                      ; preds = %if.else.142
  %110 = load i32, i32* %newval, align 4
  %111 = load i8*, i8** %ncp, align 8
  %112 = load i64, i64* %i, align 8
  %add.ptr144 = getelementptr i8, i8* %111, i64 %112
  %113 = bitcast i8* %add.ptr144 to i32*
  store i32 %110, i32* %113, align 4
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.143
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.end.141
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %do.end.125
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %do.end
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %for.inc

for.inc:                                          ; preds = %do.end.149
  %114 = load i32, i32* %width.addr, align 4
  %conv150 = sext i32 %114 to i64
  %115 = load i64, i64* %i, align 8
  %add151 = add i64 %115, %conv150
  store i64 %add151, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %116, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then.3, %if.then
  %117 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %117
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_bias_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, i32 %bias) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %bias.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %val = alloca i32, align 4
  %mask = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bias, i32* %bias.addr, align 4
  store i32 0, i32* %val, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %4)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %5 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %call5 = call i8* @PyBytes_AsString(%struct._object* %6)
  store i8* %call5, i8** %ncp, align 8
  %7 = load i32, i32* %width.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @masks, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %mask, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 2
  %11 = load i64, i64* %len6, align 8
  %cmp7 = icmp slt i64 %9, %11
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 0
  %14 = load i8*, i8** %buf, align 8
  %15 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 %15
  %16 = load i8, i8* %add.ptr, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %val, align 4
  br label %if.end.39

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %17, 2
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf13, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr i8, i8* %19, i64 %20
  %21 = bitcast i8* %add.ptr14 to i16*
  %22 = load i16, i16* %21, align 2
  %conv15 = zext i16 %22 to i32
  store i32 %conv15, i32* %val, align 4
  br label %if.end.38

if.else.16:                                       ; preds = %if.else
  %23 = load i32, i32* %width.addr, align 4
  %cmp17 = icmp eq i32 %23, 3
  br i1 %cmp17, label %if.then.19, label %if.else.34

if.then.19:                                       ; preds = %if.else.16
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 0
  %25 = load i8*, i8** %buf20, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr21 = getelementptr i8, i8* %25, i64 %26
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 0
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %27 to i32
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 0
  %29 = load i8*, i8** %buf24, align 8
  %30 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr i8, i8* %29, i64 %30
  %arrayidx26 = getelementptr i8, i8* %add.ptr25, i64 1
  %31 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %31 to i32
  %shl = shl i32 %conv27, 8
  %add = add i32 %conv23, %shl
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf28 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 0
  %33 = load i8*, i8** %buf28, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr29 = getelementptr i8, i8* %33, i64 %34
  %arrayidx30 = getelementptr i8, i8* %add.ptr29, i64 2
  %35 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %35 to i32
  %shl32 = shl i32 %conv31, 16
  %add33 = add i32 %add, %shl32
  %and = and i32 %add33, 16777215
  store i32 %and, i32* %val, align 4
  br label %if.end.37

if.else.34:                                       ; preds = %if.else.16
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %36, i32 0, i32 0
  %37 = load i8*, i8** %buf35, align 8
  %38 = load i64, i64* %i, align 8
  %add.ptr36 = getelementptr i8, i8* %37, i64 %38
  %39 = bitcast i8* %add.ptr36 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %val, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.19
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.12
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.9
  %41 = load i32, i32* %bias.addr, align 4
  %42 = load i32, i32* %val, align 4
  %add40 = add i32 %42, %41
  store i32 %add40, i32* %val, align 4
  %43 = load i32, i32* %mask, align 4
  %44 = load i32, i32* %val, align 4
  %and41 = and i32 %44, %43
  store i32 %and41, i32* %val, align 4
  %45 = load i32, i32* %width.addr, align 4
  %cmp42 = icmp eq i32 %45, 1
  br i1 %cmp42, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %if.end.39
  br label %do.body

do.body:                                          ; preds = %if.then.44
  %46 = load i32, i32* %val, align 4
  %conv45 = trunc i32 %46 to i8
  %47 = load i8*, i8** %ncp, align 8
  %48 = load i64, i64* %i, align 8
  %add.ptr46 = getelementptr i8, i8* %47, i64 %48
  store i8 %conv45, i8* %add.ptr46, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.77

if.else.47:                                       ; preds = %if.end.39
  %49 = load i32, i32* %width.addr, align 4
  %cmp48 = icmp eq i32 %49, 2
  br i1 %cmp48, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %if.else.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %50 = load i32, i32* %val, align 4
  %conv52 = trunc i32 %50 to i16
  %51 = load i8*, i8** %ncp, align 8
  %52 = load i64, i64* %i, align 8
  %add.ptr53 = getelementptr i8, i8* %51, i64 %52
  %53 = bitcast i8* %add.ptr53 to i16*
  store i16 %conv52, i16* %53, align 2
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.51
  br label %if.end.76

if.else.55:                                       ; preds = %if.else.47
  %54 = load i32, i32* %width.addr, align 4
  %cmp56 = icmp eq i32 %54, 3
  br i1 %cmp56, label %if.then.58, label %if.else.71

if.then.58:                                       ; preds = %if.else.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %55 = load i32, i32* %val, align 4
  %conv60 = trunc i32 %55 to i8
  %56 = load i8*, i8** %ncp, align 8
  %57 = load i64, i64* %i, align 8
  %add.ptr61 = getelementptr i8, i8* %56, i64 %57
  %arrayidx62 = getelementptr i8, i8* %add.ptr61, i64 0
  store i8 %conv60, i8* %arrayidx62, align 1
  %58 = load i32, i32* %val, align 4
  %shr = ashr i32 %58, 8
  %conv63 = trunc i32 %shr to i8
  %59 = load i8*, i8** %ncp, align 8
  %60 = load i64, i64* %i, align 8
  %add.ptr64 = getelementptr i8, i8* %59, i64 %60
  %arrayidx65 = getelementptr i8, i8* %add.ptr64, i64 1
  store i8 %conv63, i8* %arrayidx65, align 1
  %61 = load i32, i32* %val, align 4
  %shr66 = ashr i32 %61, 16
  %conv67 = trunc i32 %shr66 to i8
  %62 = load i8*, i8** %ncp, align 8
  %63 = load i64, i64* %i, align 8
  %add.ptr68 = getelementptr i8, i8* %62, i64 %63
  %arrayidx69 = getelementptr i8, i8* %add.ptr68, i64 2
  store i8 %conv67, i8* %arrayidx69, align 1
  br label %do.end.70

do.end.70:                                        ; preds = %do.body.59
  br label %if.end.75

if.else.71:                                       ; preds = %if.else.55
  br label %do.body.72

do.body.72:                                       ; preds = %if.else.71
  %64 = load i32, i32* %val, align 4
  %65 = load i8*, i8** %ncp, align 8
  %66 = load i64, i64* %i, align 8
  %add.ptr73 = getelementptr i8, i8* %65, i64 %66
  %67 = bitcast i8* %add.ptr73 to i32*
  store i32 %64, i32* %67, align 4
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.72
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %do.end.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %do.end.54
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %68 = load i32, i32* %width.addr, align 4
  %conv78 = sext i32 %68 to i64
  %69 = load i64, i64* %i, align 8
  %add79 = add i64 %69, %conv78
  store i64 %add79, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %70, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_ulaw2lin_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_size(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %3 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp = icmp sgt i64 %2, %div
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len4, align 8
  %7 = load i32, i32* %width.addr, align 4
  %conv5 = sext i32 %7 to i64
  %mul = mul i64 %6, %conv5
  %call6 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call6, %struct._object** %rv, align 8
  %8 = load %struct._object*, %struct._object** %rv, align 8
  %cmp7 = icmp eq %struct._object* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %rv, align 8
  %call11 = call i8* @PyBytes_AsString(%struct._object* %9)
  store i8* %call11, i8** %ncp, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  store i8* %11, i8** %cp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len12, align 8
  %15 = load i32, i32* %width.addr, align 4
  %conv13 = sext i32 %15 to i64
  %mul14 = mul i64 %14, %conv13
  %cmp15 = icmp slt i64 %12, %mul14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %idxprom = zext i8 %17 to i64
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @_st_ulaw2linear16, i32 0, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2
  %conv17 = sext i16 %18 to i32
  %shl = shl i32 %conv17, 16
  store i32 %shl, i32* %val, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %19 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp eq i32 %19, 1
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %20 = load i32, i32* %val, align 4
  %shr = ashr i32 %20, 24
  %conv22 = trunc i32 %shr to i8
  %21 = load i8*, i8** %ncp, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  store i8 %conv22, i8* %add.ptr, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.21
  br label %if.end.57

if.else:                                          ; preds = %do.body
  %23 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp eq i32 %23, 2
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %24 = load i32, i32* %val, align 4
  %shr27 = ashr i32 %24, 16
  %conv28 = trunc i32 %shr27 to i16
  %25 = load i8*, i8** %ncp, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr29 = getelementptr i8, i8* %25, i64 %26
  %27 = bitcast i8* %add.ptr29 to i16*
  store i16 %conv28, i16* %27, align 2
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.26
  br label %if.end.56

if.else.31:                                       ; preds = %if.else
  %28 = load i32, i32* %width.addr, align 4
  %cmp32 = icmp eq i32 %28, 3
  br i1 %cmp32, label %if.then.34, label %if.else.51

if.then.34:                                       ; preds = %if.else.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %29 = load i32, i32* %val, align 4
  %shr36 = ashr i32 %29, 8
  %conv37 = trunc i32 %shr36 to i8
  %30 = load i8*, i8** %ncp, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr38 = getelementptr i8, i8* %30, i64 %31
  %arrayidx39 = getelementptr i8, i8* %add.ptr38, i64 0
  store i8 %conv37, i8* %arrayidx39, align 1
  %32 = load i32, i32* %val, align 4
  %shr40 = ashr i32 %32, 8
  %shr41 = ashr i32 %shr40, 8
  %conv42 = trunc i32 %shr41 to i8
  %33 = load i8*, i8** %ncp, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr43 = getelementptr i8, i8* %33, i64 %34
  %arrayidx44 = getelementptr i8, i8* %add.ptr43, i64 1
  store i8 %conv42, i8* %arrayidx44, align 1
  %35 = load i32, i32* %val, align 4
  %shr45 = ashr i32 %35, 8
  %shr46 = ashr i32 %shr45, 16
  %conv47 = trunc i32 %shr46 to i8
  %36 = load i8*, i8** %ncp, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr48 = getelementptr i8, i8* %36, i64 %37
  %arrayidx49 = getelementptr i8, i8* %add.ptr48, i64 2
  store i8 %conv47, i8* %arrayidx49, align 1
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.35
  br label %if.end.55

if.else.51:                                       ; preds = %if.else.31
  br label %do.body.52

do.body.52:                                       ; preds = %if.else.51
  %38 = load i32, i32* %val, align 4
  %39 = load i8*, i8** %ncp, align 8
  %40 = load i64, i64* %i, align 8
  %add.ptr53 = getelementptr i8, i8* %39, i64 %40
  %41 = bitcast i8* %add.ptr53 to i32*
  store i32 %38, i32* %41, align 4
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.52
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.end.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end.30
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %do.end
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %do.end.58
  %42 = load i32, i32* %width.addr, align 4
  %conv59 = sext i32 %42 to i64
  %43 = load i64, i64* %i, align 8
  %add = add i64 %43, %conv59
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.2, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2ulaw_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %5 to i64
  %div = sdiv i64 %4, %conv
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %rv, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %7)
  store i8* %call6, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 2
  %10 = load i64, i64* %len7, align 8
  %cmp8 = icmp slt i64 %8, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %14
  %15 = load i8, i8* %add.ptr, align 1
  %conv12 = sext i8 %15 to i32
  %shl = shl i32 %conv12, 24
  br label %cond.end.44

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %width.addr, align 4
  %cmp13 = icmp eq i32 %16, 2
  br i1 %cmp13, label %cond.true.15, label %cond.false.20

cond.true.15:                                     ; preds = %cond.false
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 0
  %18 = load i8*, i8** %buf16, align 8
  %19 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %18, i64 %19
  %20 = bitcast i8* %add.ptr17 to i16*
  %21 = load i16, i16* %20, align 2
  %conv18 = sext i16 %21 to i32
  %shl19 = shl i32 %conv18, 16
  br label %cond.end.42

cond.false.20:                                    ; preds = %cond.false
  %22 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp eq i32 %22, 3
  br i1 %cmp21, label %cond.true.23, label %cond.false.39

cond.true.23:                                     ; preds = %cond.false.20
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf24, align 8
  %25 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr i8, i8* %24, i64 %25
  %arrayidx = getelementptr i8, i8* %add.ptr25, i64 0
  %26 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %26 to i32
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 0
  %28 = load i8*, i8** %buf27, align 8
  %29 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %28, i64 %29
  %arrayidx29 = getelementptr i8, i8* %add.ptr28, i64 1
  %30 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %30 to i32
  %shl31 = shl i32 %conv30, 8
  %add = add i32 %conv26, %shl31
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  %32 = load i8*, i8** %buf32, align 8
  %33 = load i64, i64* %i, align 8
  %add.ptr33 = getelementptr i8, i8* %32, i64 %33
  %arrayidx34 = getelementptr i8, i8* %add.ptr33, i64 2
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %34 to i32
  %shl36 = shl i32 %conv35, 16
  %add37 = add i32 %add, %shl36
  %shl38 = shl i32 %add37, 8
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false.20
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 0
  %36 = load i8*, i8** %buf40, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr41 = getelementptr i8, i8* %36, i64 %37
  %38 = bitcast i8* %add.ptr41 to i32*
  %39 = load i32, i32* %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.23
  %cond = phi i32 [ %shl38, %cond.true.23 ], [ %39, %cond.false.39 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end, %cond.true.15
  %cond43 = phi i32 [ %shl19, %cond.true.15 ], [ %cond, %cond.end ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true
  %cond45 = phi i32 [ %shl, %cond.true ], [ %cond43, %cond.end.42 ]
  store i32 %cond45, i32* %val, align 4
  %40 = load i32, i32* %val, align 4
  %shr = ashr i32 %40, 18
  %conv46 = trunc i32 %shr to i16
  %call47 = call zeroext i8 @st_14linear2ulaw(i16 signext %conv46)
  %41 = load i8*, i8** %ncp, align 8
  %incdec.ptr = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %ncp, align 8
  store i8 %call47, i8* %41, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.44
  %42 = load i32, i32* %width.addr, align 4
  %conv48 = sext i32 %42 to i64
  %43 = load i64, i64* %i, align 8
  %add49 = add i64 %43, %conv48
  store i64 %add49, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @st_14linear2ulaw(i16 signext %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i16, align 2
  %mask = alloca i16, align 2
  %seg = alloca i16, align 2
  %uval = alloca i8, align 1
  store i16 %pcm_val, i16* %pcm_val.addr, align 2
  %0 = load i16, i16* %pcm_val.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %pcm_val.addr, align 2
  %conv2 = sext i16 %1 to i32
  %sub = sub i32 0, %conv2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %pcm_val.addr, align 2
  store i16 127, i16* %mask, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 255, i16* %mask, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i16, i16* %pcm_val.addr, align 2
  %conv4 = sext i16 %2 to i32
  %cmp5 = icmp sgt i32 %conv4, 32635
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i16 32635, i16* %pcm_val.addr, align 2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %3 = load i16, i16* %pcm_val.addr, align 2
  %conv9 = sext i16 %3 to i32
  %add = add i32 %conv9, 33
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, i16* %pcm_val.addr, align 2
  %4 = load i16, i16* %pcm_val.addr, align 2
  %call = call signext i16 @search(i16 signext %4, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_uend, i32 0, i32 0), i32 8)
  store i16 %call, i16* %seg, align 2
  %5 = load i16, i16* %seg, align 2
  %conv11 = sext i16 %5 to i32
  %cmp12 = icmp sge i32 %conv11, 8
  br i1 %cmp12, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end.8
  %6 = load i16, i16* %mask, align 2
  %conv15 = sext i16 %6 to i32
  %xor = xor i32 127, %conv15
  %conv16 = trunc i32 %xor to i8
  store i8 %conv16, i8* %retval
  br label %return

if.else.17:                                       ; preds = %if.end.8
  %7 = load i16, i16* %seg, align 2
  %conv18 = sext i16 %7 to i32
  %shl = shl i32 %conv18, 4
  %conv19 = trunc i32 %shl to i8
  %conv20 = zext i8 %conv19 to i32
  %8 = load i16, i16* %pcm_val.addr, align 2
  %conv21 = sext i16 %8 to i32
  %9 = load i16, i16* %seg, align 2
  %conv22 = sext i16 %9 to i32
  %add23 = add i32 %conv22, 1
  %shr = ashr i32 %conv21, %add23
  %and = and i32 %shr, 15
  %or = or i32 %conv20, %and
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, i8* %uval, align 1
  %10 = load i8, i8* %uval, align 1
  %conv25 = zext i8 %10 to i32
  %11 = load i16, i16* %mask, align 2
  %conv26 = sext i16 %11 to i32
  %xor27 = xor i32 %conv25, %conv26
  %conv28 = trunc i32 %xor27 to i8
  store i8 %conv28, i8* %retval
  br label %return

return:                                           ; preds = %if.else.17, %if.then.14
  %12 = load i8, i8* %retval
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define internal signext i16 @search(i16 signext %val, i16* %table, i32 %size) #0 {
entry:
  %retval = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %table.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16 %val, i16* %val.addr, align 2
  store i16* %table, i16** %table.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16, i16* %val.addr, align 2
  %conv = sext i16 %2 to i32
  %3 = load i16*, i16** %table.addr, align 8
  %incdec.ptr = getelementptr i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %table.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv1 = sext i16 %4 to i32
  %cmp2 = icmp sle i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %conv4 = trunc i32 %5 to i16
  store i16 %conv4, i16* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %size.addr, align 4
  %conv5 = trunc i32 %7 to i16
  store i16 %conv5, i16* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i16, i16* %retval
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_alaw2lin_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %val = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_size(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %3 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp = icmp sgt i64 %2, %div
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len4, align 8
  %7 = load i32, i32* %width.addr, align 4
  %conv5 = sext i32 %7 to i64
  %mul = mul i64 %6, %conv5
  %call6 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call6, %struct._object** %rv, align 8
  %8 = load %struct._object*, %struct._object** %rv, align 8
  %cmp7 = icmp eq %struct._object* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %rv, align 8
  %call11 = call i8* @PyBytes_AsString(%struct._object* %9)
  store i8* %call11, i8** %ncp, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  store i8* %11, i8** %cp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len12, align 8
  %15 = load i32, i32* %width.addr, align 4
  %conv13 = sext i32 %15 to i64
  %mul14 = mul i64 %14, %conv13
  %cmp15 = icmp slt i64 %12, %mul14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %idxprom = zext i8 %17 to i64
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @_st_alaw2linear16, i32 0, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2
  %conv17 = sext i16 %18 to i32
  %shl = shl i32 %conv17, 16
  store i32 %shl, i32* %val, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %19 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp eq i32 %19, 1
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %20 = load i32, i32* %val, align 4
  %shr = ashr i32 %20, 24
  %conv22 = trunc i32 %shr to i8
  %21 = load i8*, i8** %ncp, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  store i8 %conv22, i8* %add.ptr, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.21
  br label %if.end.57

if.else:                                          ; preds = %do.body
  %23 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp eq i32 %23, 2
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %24 = load i32, i32* %val, align 4
  %shr27 = ashr i32 %24, 16
  %conv28 = trunc i32 %shr27 to i16
  %25 = load i8*, i8** %ncp, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr29 = getelementptr i8, i8* %25, i64 %26
  %27 = bitcast i8* %add.ptr29 to i16*
  store i16 %conv28, i16* %27, align 2
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.26
  br label %if.end.56

if.else.31:                                       ; preds = %if.else
  %28 = load i32, i32* %width.addr, align 4
  %cmp32 = icmp eq i32 %28, 3
  br i1 %cmp32, label %if.then.34, label %if.else.51

if.then.34:                                       ; preds = %if.else.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %29 = load i32, i32* %val, align 4
  %shr36 = ashr i32 %29, 8
  %conv37 = trunc i32 %shr36 to i8
  %30 = load i8*, i8** %ncp, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr38 = getelementptr i8, i8* %30, i64 %31
  %arrayidx39 = getelementptr i8, i8* %add.ptr38, i64 0
  store i8 %conv37, i8* %arrayidx39, align 1
  %32 = load i32, i32* %val, align 4
  %shr40 = ashr i32 %32, 8
  %shr41 = ashr i32 %shr40, 8
  %conv42 = trunc i32 %shr41 to i8
  %33 = load i8*, i8** %ncp, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr43 = getelementptr i8, i8* %33, i64 %34
  %arrayidx44 = getelementptr i8, i8* %add.ptr43, i64 1
  store i8 %conv42, i8* %arrayidx44, align 1
  %35 = load i32, i32* %val, align 4
  %shr45 = ashr i32 %35, 8
  %shr46 = ashr i32 %shr45, 16
  %conv47 = trunc i32 %shr46 to i8
  %36 = load i8*, i8** %ncp, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr48 = getelementptr i8, i8* %36, i64 %37
  %arrayidx49 = getelementptr i8, i8* %add.ptr48, i64 2
  store i8 %conv47, i8* %arrayidx49, align 1
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.35
  br label %if.end.55

if.else.51:                                       ; preds = %if.else.31
  br label %do.body.52

do.body.52:                                       ; preds = %if.else.51
  %38 = load i32, i32* %val, align 4
  %39 = load i8*, i8** %ncp, align 8
  %40 = load i64, i64* %i, align 8
  %add.ptr53 = getelementptr i8, i8* %39, i64 %40
  %41 = bitcast i8* %add.ptr53 to i32*
  store i32 %38, i32* %41, align 4
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.52
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.end.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end.30
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %do.end
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %do.end.58
  %42 = load i32, i32* %width.addr, align 4
  %conv59 = sext i32 %42 to i64
  %43 = load i64, i64* %i, align 8
  %add = add i64 %43, %conv59
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.2, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2alaw_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %5 to i64
  %div = sdiv i64 %4, %conv
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %rv, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %7)
  store i8* %call6, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 2
  %10 = load i64, i64* %len7, align 8
  %cmp8 = icmp slt i64 %8, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %14
  %15 = load i8, i8* %add.ptr, align 1
  %conv12 = sext i8 %15 to i32
  %shl = shl i32 %conv12, 24
  br label %cond.end.44

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %width.addr, align 4
  %cmp13 = icmp eq i32 %16, 2
  br i1 %cmp13, label %cond.true.15, label %cond.false.20

cond.true.15:                                     ; preds = %cond.false
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 0
  %18 = load i8*, i8** %buf16, align 8
  %19 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr i8, i8* %18, i64 %19
  %20 = bitcast i8* %add.ptr17 to i16*
  %21 = load i16, i16* %20, align 2
  %conv18 = sext i16 %21 to i32
  %shl19 = shl i32 %conv18, 16
  br label %cond.end.42

cond.false.20:                                    ; preds = %cond.false
  %22 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp eq i32 %22, 3
  br i1 %cmp21, label %cond.true.23, label %cond.false.39

cond.true.23:                                     ; preds = %cond.false.20
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf24, align 8
  %25 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr i8, i8* %24, i64 %25
  %arrayidx = getelementptr i8, i8* %add.ptr25, i64 0
  %26 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %26 to i32
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 0
  %28 = load i8*, i8** %buf27, align 8
  %29 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr i8, i8* %28, i64 %29
  %arrayidx29 = getelementptr i8, i8* %add.ptr28, i64 1
  %30 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %30 to i32
  %shl31 = shl i32 %conv30, 8
  %add = add i32 %conv26, %shl31
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  %32 = load i8*, i8** %buf32, align 8
  %33 = load i64, i64* %i, align 8
  %add.ptr33 = getelementptr i8, i8* %32, i64 %33
  %arrayidx34 = getelementptr i8, i8* %add.ptr33, i64 2
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %34 to i32
  %shl36 = shl i32 %conv35, 16
  %add37 = add i32 %add, %shl36
  %shl38 = shl i32 %add37, 8
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false.20
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 0
  %36 = load i8*, i8** %buf40, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr41 = getelementptr i8, i8* %36, i64 %37
  %38 = bitcast i8* %add.ptr41 to i32*
  %39 = load i32, i32* %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.23
  %cond = phi i32 [ %shl38, %cond.true.23 ], [ %39, %cond.false.39 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end, %cond.true.15
  %cond43 = phi i32 [ %shl19, %cond.true.15 ], [ %cond, %cond.end ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true
  %cond45 = phi i32 [ %shl, %cond.true ], [ %cond43, %cond.end.42 ]
  store i32 %cond45, i32* %val, align 4
  %40 = load i32, i32* %val, align 4
  %shr = ashr i32 %40, 19
  %conv46 = trunc i32 %shr to i16
  %call47 = call zeroext i8 @st_linear2alaw(i16 signext %conv46)
  %41 = load i8*, i8** %ncp, align 8
  %incdec.ptr = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %ncp, align 8
  store i8 %call47, i8* %41, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.44
  %42 = load i32, i32* %width.addr, align 4
  %conv48 = sext i32 %42 to i64
  %43 = load i64, i64* %i, align 8
  %add49 = add i64 %43, %conv48
  store i64 %add49, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @st_linear2alaw(i16 signext %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i16, align 2
  %mask = alloca i16, align 2
  %seg = alloca i16, align 2
  %aval = alloca i8, align 1
  store i16 %pcm_val, i16* %pcm_val.addr, align 2
  %0 = load i16, i16* %pcm_val.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 213, i16* %mask, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 85, i16* %mask, align 2
  %1 = load i16, i16* %pcm_val.addr, align 2
  %conv2 = sext i16 %1 to i32
  %sub = sub i32 0, %conv2
  %sub3 = sub i32 %sub, 1
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %pcm_val.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i16, i16* %pcm_val.addr, align 2
  %call = call signext i16 @search(i16 signext %2, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_aend, i32 0, i32 0), i32 8)
  store i16 %call, i16* %seg, align 2
  %3 = load i16, i16* %seg, align 2
  %conv5 = sext i16 %3 to i32
  %cmp6 = icmp sge i32 %conv5, 8
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.end
  %4 = load i16, i16* %mask, align 2
  %conv9 = sext i16 %4 to i32
  %xor = xor i32 127, %conv9
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %retval
  br label %return

if.else.11:                                       ; preds = %if.end
  %5 = load i16, i16* %seg, align 2
  %conv12 = trunc i16 %5 to i8
  %conv13 = zext i8 %conv12 to i32
  %shl = shl i32 %conv13, 4
  %conv14 = trunc i32 %shl to i8
  store i8 %conv14, i8* %aval, align 1
  %6 = load i16, i16* %seg, align 2
  %conv15 = sext i16 %6 to i32
  %cmp16 = icmp slt i32 %conv15, 2
  br i1 %cmp16, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.else.11
  %7 = load i16, i16* %pcm_val.addr, align 2
  %conv19 = sext i16 %7 to i32
  %shr = ashr i32 %conv19, 1
  %and = and i32 %shr, 15
  %8 = load i8, i8* %aval, align 1
  %conv20 = zext i8 %8 to i32
  %or = or i32 %conv20, %and
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %aval, align 1
  br label %if.end.30

if.else.22:                                       ; preds = %if.else.11
  %9 = load i16, i16* %pcm_val.addr, align 2
  %conv23 = sext i16 %9 to i32
  %10 = load i16, i16* %seg, align 2
  %conv24 = sext i16 %10 to i32
  %shr25 = ashr i32 %conv23, %conv24
  %and26 = and i32 %shr25, 15
  %11 = load i8, i8* %aval, align 1
  %conv27 = zext i8 %11 to i32
  %or28 = or i32 %conv27, %and26
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %aval, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.22, %if.then.18
  %12 = load i8, i8* %aval, align 1
  %conv31 = zext i8 %12 to i32
  %13 = load i16, i16* %mask, align 2
  %conv32 = sext i16 %13 to i32
  %xor33 = xor i32 %conv31, %conv32
  %conv34 = trunc i32 %xor33 to i8
  store i8 %conv34, i8* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.8
  %14 = load i8, i8* %retval
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2lin_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, i32 %newwidth) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %newwidth.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %newwidth, i32* %newwidth.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %newwidth.addr, align 4
  %call1 = call i32 @audioop_check_size(i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len5, align 8
  %6 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %6 to i64
  %div = sdiv i64 %5, %conv
  %7 = load i32, i32* %newwidth.addr, align 4
  %conv6 = sext i32 %7 to i64
  %div7 = sdiv i64 9223372036854775807, %conv6
  %cmp = icmp sgt i64 %div, %div7
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 2
  %10 = load i64, i64* %len11, align 8
  %11 = load i32, i32* %width.addr, align 4
  %conv12 = sext i32 %11 to i64
  %div13 = sdiv i64 %10, %conv12
  %12 = load i32, i32* %newwidth.addr, align 4
  %conv14 = sext i32 %12 to i64
  %mul = mul i64 %div13, %conv14
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call15, %struct._object** %rv, align 8
  %13 = load %struct._object*, %struct._object** %rv, align 8
  %cmp16 = icmp eq %struct._object* %13, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** %rv, align 8
  %call20 = call i8* @PyBytes_AsString(%struct._object* %14)
  store i8* %call20, i8** %ncp, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 2
  %17 = load i64, i64* %len21, align 8
  %cmp22 = icmp slt i64 %15, %17
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %width.addr, align 4
  %cmp24 = icmp eq i32 %18, 1
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 0
  %20 = load i8*, i8** %buf, align 8
  %21 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %20, i64 %21
  %22 = load i8, i8* %add.ptr, align 1
  %conv26 = sext i8 %22 to i32
  %shl = shl i32 %conv26, 24
  br label %cond.end.58

cond.false:                                       ; preds = %for.body
  %23 = load i32, i32* %width.addr, align 4
  %cmp27 = icmp eq i32 %23, 2
  br i1 %cmp27, label %cond.true.29, label %cond.false.34

cond.true.29:                                     ; preds = %cond.false
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 0
  %25 = load i8*, i8** %buf30, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr31 = getelementptr i8, i8* %25, i64 %26
  %27 = bitcast i8* %add.ptr31 to i16*
  %28 = load i16, i16* %27, align 2
  %conv32 = sext i16 %28 to i32
  %shl33 = shl i32 %conv32, 16
  br label %cond.end.56

cond.false.34:                                    ; preds = %cond.false
  %29 = load i32, i32* %width.addr, align 4
  %cmp35 = icmp eq i32 %29, 3
  br i1 %cmp35, label %cond.true.37, label %cond.false.53

cond.true.37:                                     ; preds = %cond.false.34
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf38, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr39 = getelementptr i8, i8* %31, i64 %32
  %arrayidx = getelementptr i8, i8* %add.ptr39, i64 0
  %33 = load i8, i8* %arrayidx, align 1
  %conv40 = zext i8 %33 to i32
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %buf41, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr42 = getelementptr i8, i8* %35, i64 %36
  %arrayidx43 = getelementptr i8, i8* %add.ptr42, i64 1
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %37 to i32
  %shl45 = shl i32 %conv44, 8
  %add = add i32 %conv40, %shl45
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf46, align 8
  %40 = load i64, i64* %i, align 8
  %add.ptr47 = getelementptr i8, i8* %39, i64 %40
  %arrayidx48 = getelementptr i8, i8* %add.ptr47, i64 2
  %41 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %41 to i32
  %shl50 = shl i32 %conv49, 16
  %add51 = add i32 %add, %shl50
  %shl52 = shl i32 %add51, 8
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false.34
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf54 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 0
  %43 = load i8*, i8** %buf54, align 8
  %44 = load i64, i64* %i, align 8
  %add.ptr55 = getelementptr i8, i8* %43, i64 %44
  %45 = bitcast i8* %add.ptr55 to i32*
  %46 = load i32, i32* %45, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.37
  %cond = phi i32 [ %shl52, %cond.true.37 ], [ %46, %cond.false.53 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true.29
  %cond57 = phi i32 [ %shl33, %cond.true.29 ], [ %cond, %cond.end ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true
  %cond59 = phi i32 [ %shl, %cond.true ], [ %cond57, %cond.end.56 ]
  store i32 %cond59, i32* %val, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.58
  %47 = load i32, i32* %newwidth.addr, align 4
  %cmp60 = icmp eq i32 %47, 1
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %do.body
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %48 = load i32, i32* %val, align 4
  %shr = ashr i32 %48, 24
  %conv64 = trunc i32 %shr to i8
  %49 = load i8*, i8** %ncp, align 8
  %50 = load i64, i64* %j, align 8
  %add.ptr65 = getelementptr i8, i8* %49, i64 %50
  store i8 %conv64, i8* %add.ptr65, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.63
  br label %if.end.100

if.else:                                          ; preds = %do.body
  %51 = load i32, i32* %newwidth.addr, align 4
  %cmp66 = icmp eq i32 %51, 2
  br i1 %cmp66, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.else
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %52 = load i32, i32* %val, align 4
  %shr70 = ashr i32 %52, 16
  %conv71 = trunc i32 %shr70 to i16
  %53 = load i8*, i8** %ncp, align 8
  %54 = load i64, i64* %j, align 8
  %add.ptr72 = getelementptr i8, i8* %53, i64 %54
  %55 = bitcast i8* %add.ptr72 to i16*
  store i16 %conv71, i16* %55, align 2
  br label %do.end.73

do.end.73:                                        ; preds = %do.body.69
  br label %if.end.99

if.else.74:                                       ; preds = %if.else
  %56 = load i32, i32* %newwidth.addr, align 4
  %cmp75 = icmp eq i32 %56, 3
  br i1 %cmp75, label %if.then.77, label %if.else.94

if.then.77:                                       ; preds = %if.else.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %57 = load i32, i32* %val, align 4
  %shr79 = ashr i32 %57, 8
  %conv80 = trunc i32 %shr79 to i8
  %58 = load i8*, i8** %ncp, align 8
  %59 = load i64, i64* %j, align 8
  %add.ptr81 = getelementptr i8, i8* %58, i64 %59
  %arrayidx82 = getelementptr i8, i8* %add.ptr81, i64 0
  store i8 %conv80, i8* %arrayidx82, align 1
  %60 = load i32, i32* %val, align 4
  %shr83 = ashr i32 %60, 8
  %shr84 = ashr i32 %shr83, 8
  %conv85 = trunc i32 %shr84 to i8
  %61 = load i8*, i8** %ncp, align 8
  %62 = load i64, i64* %j, align 8
  %add.ptr86 = getelementptr i8, i8* %61, i64 %62
  %arrayidx87 = getelementptr i8, i8* %add.ptr86, i64 1
  store i8 %conv85, i8* %arrayidx87, align 1
  %63 = load i32, i32* %val, align 4
  %shr88 = ashr i32 %63, 8
  %shr89 = ashr i32 %shr88, 16
  %conv90 = trunc i32 %shr89 to i8
  %64 = load i8*, i8** %ncp, align 8
  %65 = load i64, i64* %j, align 8
  %add.ptr91 = getelementptr i8, i8* %64, i64 %65
  %arrayidx92 = getelementptr i8, i8* %add.ptr91, i64 2
  store i8 %conv90, i8* %arrayidx92, align 1
  br label %do.end.93

do.end.93:                                        ; preds = %do.body.78
  br label %if.end.98

if.else.94:                                       ; preds = %if.else.74
  br label %do.body.95

do.body.95:                                       ; preds = %if.else.94
  %66 = load i32, i32* %val, align 4
  %67 = load i8*, i8** %ncp, align 8
  %68 = load i64, i64* %j, align 8
  %add.ptr96 = getelementptr i8, i8* %67, i64 %68
  %69 = bitcast i8* %add.ptr96 to i32*
  store i32 %66, i32* %69, align 4
  br label %do.end.97

do.end.97:                                        ; preds = %do.body.95
  br label %if.end.98

if.end.98:                                        ; preds = %do.end.97, %do.end.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %do.end.73
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %do.end
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %for.inc

for.inc:                                          ; preds = %do.end.101
  %70 = load i32, i32* %width.addr, align 4
  %conv102 = sext i32 %70 to i64
  %71 = load i64, i64* %i, align 8
  %add103 = add i64 %71, %conv102
  store i64 %add103, i64* %i, align 8
  %72 = load i32, i32* %newwidth.addr, align 4
  %conv104 = sext i32 %72 to i64
  %73 = load i64, i64* %j, align 8
  %add105 = add i64 %73, %conv104
  store i64 %add105, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %74, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.then.9, %if.then.3, %if.then
  %75 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %75
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_adpcm2lin_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %state.addr = alloca %struct._object*, align 8
  %cp = alloca i8*, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %outlen = alloca i64, align 8
  %valpred = alloca i32, align 4
  %step = alloca i32, align 4
  %delta = alloca i32, align 4
  %index = alloca i32, align 4
  %sign = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %inputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store i32 0, i32* %inputbuffer, align 4
  %0 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_size(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %state.addr, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %valpred, align 4
  store i32 0, i32* %index, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %state.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32* %valpred, i32* %index)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.else.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.1
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2
  %8 = load i64, i64* %len, align 8
  %9 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %9 to i64
  %div = sdiv i64 4611686018427387903, %conv
  %cmp11 = icmp sgt i64 %8, %div
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %10 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len15, align 8
  %13 = load i32, i32* %width.addr, align 4
  %conv16 = sext i32 %13 to i64
  %mul = mul i64 %12, %conv16
  %mul17 = mul i64 %mul, 2
  store i64 %mul17, i64* %outlen, align 8
  %14 = load i64, i64* %outlen, align 8
  %call18 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call18, %struct._object** %str, align 8
  %15 = load %struct._object*, %struct._object** %str, align 8
  %cmp19 = icmp eq %struct._object* %15, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** %str, align 8
  %call23 = call i8* @PyBytes_AsString(%struct._object* %16)
  store i8* %call23, i8** %ncp, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 0
  %18 = load i8*, i8** %buf, align 8
  store i8* %18, i8** %cp, align 8
  %19 = load i32, i32* %index, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  store i32 %20, i32* %step, align 4
  store i32 0, i32* %bufferstep, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %outlen, align 8
  %cmp24 = icmp slt i64 %21, %22
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %bufferstep, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %for.body
  %24 = load i32, i32* %inputbuffer, align 4
  %and28 = and i32 %24, 15
  store i32 %and28, i32* %delta, align 4
  br label %if.end.32

if.else.29:                                       ; preds = %for.body
  %25 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv30 = sext i8 %26 to i32
  store i32 %conv30, i32* %inputbuffer, align 4
  %27 = load i32, i32* %inputbuffer, align 4
  %shr = ashr i32 %27, 4
  %and31 = and i32 %shr, 15
  store i32 %and31, i32* %delta, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.27
  %28 = load i32, i32* %bufferstep, align 4
  %tobool33 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool33, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4
  %29 = load i32, i32* %delta, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom34
  %30 = load i32, i32* %arrayidx35, align 4
  %31 = load i32, i32* %index, align 4
  %add = add i32 %31, %30
  store i32 %add, i32* %index, align 4
  %32 = load i32, i32* %index, align 4
  %cmp36 = icmp slt i32 %32, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  store i32 0, i32* %index, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.32
  %33 = load i32, i32* %index, align 4
  %cmp40 = icmp sgt i32 %33, 88
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 88, i32* %index, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %34 = load i32, i32* %delta, align 4
  %and44 = and i32 %34, 8
  store i32 %and44, i32* %sign, align 4
  %35 = load i32, i32* %delta, align 4
  %and45 = and i32 %35, 7
  store i32 %and45, i32* %delta, align 4
  %36 = load i32, i32* %step, align 4
  %shr46 = ashr i32 %36, 3
  store i32 %shr46, i32* %vpdiff, align 4
  %37 = load i32, i32* %delta, align 4
  %and47 = and i32 %37, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.43
  %38 = load i32, i32* %step, align 4
  %39 = load i32, i32* %vpdiff, align 4
  %add50 = add i32 %39, %38
  store i32 %add50, i32* %vpdiff, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.43
  %40 = load i32, i32* %delta, align 4
  %and52 = and i32 %40, 2
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  %41 = load i32, i32* %step, align 4
  %shr55 = ashr i32 %41, 1
  %42 = load i32, i32* %vpdiff, align 4
  %add56 = add i32 %42, %shr55
  store i32 %add56, i32* %vpdiff, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.51
  %43 = load i32, i32* %delta, align 4
  %and58 = and i32 %43, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.57
  %44 = load i32, i32* %step, align 4
  %shr61 = ashr i32 %44, 2
  %45 = load i32, i32* %vpdiff, align 4
  %add62 = add i32 %45, %shr61
  store i32 %add62, i32* %vpdiff, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.57
  %46 = load i32, i32* %sign, align 4
  %tobool64 = icmp ne i32 %46, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.63
  %47 = load i32, i32* %vpdiff, align 4
  %48 = load i32, i32* %valpred, align 4
  %sub = sub i32 %48, %47
  store i32 %sub, i32* %valpred, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %if.end.63
  %49 = load i32, i32* %vpdiff, align 4
  %50 = load i32, i32* %valpred, align 4
  %add67 = add i32 %50, %49
  store i32 %add67, i32* %valpred, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  %51 = load i32, i32* %valpred, align 4
  %cmp69 = icmp sgt i32 %51, 32767
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.68
  store i32 32767, i32* %valpred, align 4
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.68
  %52 = load i32, i32* %valpred, align 4
  %cmp73 = icmp slt i32 %52, -32768
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.else.72
  store i32 -32768, i32* %valpred, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.else.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.71
  %53 = load i32, i32* %index, align 4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom78
  %54 = load i32, i32* %arrayidx79, align 4
  store i32 %54, i32* %step, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.77
  %55 = load i32, i32* %width.addr, align 4
  %cmp80 = icmp eq i32 %55, 1
  br i1 %cmp80, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %do.body
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %56 = load i32, i32* %valpred, align 4
  %shl = shl i32 %56, 16
  %shr84 = ashr i32 %shl, 24
  %conv85 = trunc i32 %shr84 to i8
  %57 = load i8*, i8** %ncp, align 8
  %58 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %57, i64 %58
  store i8 %conv85, i8* %add.ptr, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.83
  br label %if.end.126

if.else.86:                                       ; preds = %do.body
  %59 = load i32, i32* %width.addr, align 4
  %cmp87 = icmp eq i32 %59, 2
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %if.else.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %60 = load i32, i32* %valpred, align 4
  %shl91 = shl i32 %60, 16
  %shr92 = ashr i32 %shl91, 16
  %conv93 = trunc i32 %shr92 to i16
  %61 = load i8*, i8** %ncp, align 8
  %62 = load i64, i64* %i, align 8
  %add.ptr94 = getelementptr i8, i8* %61, i64 %62
  %63 = bitcast i8* %add.ptr94 to i16*
  store i16 %conv93, i16* %63, align 2
  br label %do.end.95

do.end.95:                                        ; preds = %do.body.90
  br label %if.end.125

if.else.96:                                       ; preds = %if.else.86
  %64 = load i32, i32* %width.addr, align 4
  %cmp97 = icmp eq i32 %64, 3
  br i1 %cmp97, label %if.then.99, label %if.else.119

if.then.99:                                       ; preds = %if.else.96
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %65 = load i32, i32* %valpred, align 4
  %shl101 = shl i32 %65, 16
  %shr102 = ashr i32 %shl101, 8
  %conv103 = trunc i32 %shr102 to i8
  %66 = load i8*, i8** %ncp, align 8
  %67 = load i64, i64* %i, align 8
  %add.ptr104 = getelementptr i8, i8* %66, i64 %67
  %arrayidx105 = getelementptr i8, i8* %add.ptr104, i64 0
  store i8 %conv103, i8* %arrayidx105, align 1
  %68 = load i32, i32* %valpred, align 4
  %shl106 = shl i32 %68, 16
  %shr107 = ashr i32 %shl106, 8
  %shr108 = ashr i32 %shr107, 8
  %conv109 = trunc i32 %shr108 to i8
  %69 = load i8*, i8** %ncp, align 8
  %70 = load i64, i64* %i, align 8
  %add.ptr110 = getelementptr i8, i8* %69, i64 %70
  %arrayidx111 = getelementptr i8, i8* %add.ptr110, i64 1
  store i8 %conv109, i8* %arrayidx111, align 1
  %71 = load i32, i32* %valpred, align 4
  %shl112 = shl i32 %71, 16
  %shr113 = ashr i32 %shl112, 8
  %shr114 = ashr i32 %shr113, 16
  %conv115 = trunc i32 %shr114 to i8
  %72 = load i8*, i8** %ncp, align 8
  %73 = load i64, i64* %i, align 8
  %add.ptr116 = getelementptr i8, i8* %72, i64 %73
  %arrayidx117 = getelementptr i8, i8* %add.ptr116, i64 2
  store i8 %conv115, i8* %arrayidx117, align 1
  br label %do.end.118

do.end.118:                                       ; preds = %do.body.100
  br label %if.end.124

if.else.119:                                      ; preds = %if.else.96
  br label %do.body.120

do.body.120:                                      ; preds = %if.else.119
  %74 = load i32, i32* %valpred, align 4
  %shl121 = shl i32 %74, 16
  %75 = load i8*, i8** %ncp, align 8
  %76 = load i64, i64* %i, align 8
  %add.ptr122 = getelementptr i8, i8* %75, i64 %76
  %77 = bitcast i8* %add.ptr122 to i32*
  store i32 %shl121, i32* %77, align 4
  br label %do.end.123

do.end.123:                                       ; preds = %do.body.120
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %do.end.118
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %do.end.95
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %do.end
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %for.inc

for.inc:                                          ; preds = %do.end.127
  %78 = load i32, i32* %width.addr, align 4
  %conv128 = sext i32 %78 to i64
  %79 = load i64, i64* %i, align 8
  %add129 = add i64 %79, %conv128
  store i64 %add129, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct._object*, %struct._object** %str, align 8
  %81 = load i32, i32* %valpred, align 4
  %82 = load i32, i32* %index, align 4
  %call130 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), %struct._object* %80, i32 %81, i32 %82)
  store %struct._object* %call130, %struct._object** %rv, align 8
  br label %do.body.131

do.body.131:                                      ; preds = %for.end
  %83 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %85, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp132 = icmp ne i64 %dec, 0
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.131
  br label %if.end.137

if.else.135:                                      ; preds = %do.body.131
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type136 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type136, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %88(%struct._object* %89)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  %90 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %90, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.138, %if.then.21, %if.then.13, %if.then.7, %if.then.3, %if.then
  %91 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %91
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_lin2adpcm_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %state.addr = alloca %struct._object*, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %delta = alloca i32, align 4
  %index = alloca i32, align 4
  %sign = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %diff = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %outputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  %val = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  store i32 0, i32* %outputbuffer, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %5 = load i32, i32* %width.addr, align 4
  %mul = mul i32 %5, 2
  %conv = sext i32 %mul to i64
  %div = sdiv i64 %4, %conv
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div)
  store %struct._object* %call2, %struct._object** %str, align 8
  %6 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %str, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %7)
  store i8* %call6, i8** %ncp, align 8
  %8 = load %struct._object*, %struct._object** %state.addr, align 8
  %cmp7 = icmp eq %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %valpred, align 4
  store i32 0, i32* %index, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 67108864
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0))
  br label %exit

if.else.13:                                       ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %state.addr, align 8
  %call14 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32* %valpred, i32* %index)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.else.13
  br label %exit

if.end.17:                                        ; preds = %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.9
  %14 = load i32, i32* %index, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  store i32 %15, i32* %step, align 4
  store i32 1, i32* %bufferstep, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 2
  %18 = load i64, i64* %len20, align 8
  %cmp21 = icmp slt i64 %16, %18
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp eq i32 %19, 1
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  %23 = load i8, i8* %add.ptr, align 1
  %conv25 = sext i8 %23 to i32
  %shl = shl i32 %conv25, 24
  br label %cond.end.58

cond.false:                                       ; preds = %for.body
  %24 = load i32, i32* %width.addr, align 4
  %cmp26 = icmp eq i32 %24, 2
  br i1 %cmp26, label %cond.true.28, label %cond.false.33

cond.true.28:                                     ; preds = %cond.false
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf29 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 0
  %26 = load i8*, i8** %buf29, align 8
  %27 = load i64, i64* %i, align 8
  %add.ptr30 = getelementptr i8, i8* %26, i64 %27
  %28 = bitcast i8* %add.ptr30 to i16*
  %29 = load i16, i16* %28, align 2
  %conv31 = sext i16 %29 to i32
  %shl32 = shl i32 %conv31, 16
  br label %cond.end.56

cond.false.33:                                    ; preds = %cond.false
  %30 = load i32, i32* %width.addr, align 4
  %cmp34 = icmp eq i32 %30, 3
  br i1 %cmp34, label %cond.true.36, label %cond.false.53

cond.true.36:                                     ; preds = %cond.false.33
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  %32 = load i8*, i8** %buf37, align 8
  %33 = load i64, i64* %i, align 8
  %add.ptr38 = getelementptr i8, i8* %32, i64 %33
  %arrayidx39 = getelementptr i8, i8* %add.ptr38, i64 0
  %34 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %34 to i32
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 0
  %36 = load i8*, i8** %buf41, align 8
  %37 = load i64, i64* %i, align 8
  %add.ptr42 = getelementptr i8, i8* %36, i64 %37
  %arrayidx43 = getelementptr i8, i8* %add.ptr42, i64 1
  %38 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %38 to i32
  %shl45 = shl i32 %conv44, 8
  %add = add i32 %conv40, %shl45
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 0
  %40 = load i8*, i8** %buf46, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr47 = getelementptr i8, i8* %40, i64 %41
  %arrayidx48 = getelementptr i8, i8* %add.ptr47, i64 2
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %42 to i32
  %shl50 = shl i32 %conv49, 16
  %add51 = add i32 %add, %shl50
  %shl52 = shl i32 %add51, 8
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false.33
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf54 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 0
  %44 = load i8*, i8** %buf54, align 8
  %45 = load i64, i64* %i, align 8
  %add.ptr55 = getelementptr i8, i8* %44, i64 %45
  %46 = bitcast i8* %add.ptr55 to i32*
  %47 = load i32, i32* %46, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.36
  %cond = phi i32 [ %shl52, %cond.true.36 ], [ %47, %cond.false.53 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true.28
  %cond57 = phi i32 [ %shl32, %cond.true.28 ], [ %cond, %cond.end ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true
  %cond59 = phi i32 [ %shl, %cond.true ], [ %cond57, %cond.end.56 ]
  %shr = ashr i32 %cond59, 16
  store i32 %shr, i32* %val, align 4
  %48 = load i32, i32* %val, align 4
  %49 = load i32, i32* %valpred, align 4
  %cmp60 = icmp slt i32 %48, %49
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %cond.end.58
  %50 = load i32, i32* %valpred, align 4
  %51 = load i32, i32* %val, align 4
  %sub = sub i32 %50, %51
  store i32 %sub, i32* %diff, align 4
  store i32 8, i32* %sign, align 4
  br label %if.end.65

if.else.63:                                       ; preds = %cond.end.58
  %52 = load i32, i32* %val, align 4
  %53 = load i32, i32* %valpred, align 4
  %sub64 = sub i32 %52, %53
  store i32 %sub64, i32* %diff, align 4
  store i32 0, i32* %sign, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.62
  store i32 0, i32* %delta, align 4
  %54 = load i32, i32* %step, align 4
  %shr66 = ashr i32 %54, 3
  store i32 %shr66, i32* %vpdiff, align 4
  %55 = load i32, i32* %diff, align 4
  %56 = load i32, i32* %step, align 4
  %cmp67 = icmp sge i32 %55, %56
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.65
  store i32 4, i32* %delta, align 4
  %57 = load i32, i32* %step, align 4
  %58 = load i32, i32* %diff, align 4
  %sub70 = sub i32 %58, %57
  store i32 %sub70, i32* %diff, align 4
  %59 = load i32, i32* %step, align 4
  %60 = load i32, i32* %vpdiff, align 4
  %add71 = add i32 %60, %59
  store i32 %add71, i32* %vpdiff, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.end.65
  %61 = load i32, i32* %step, align 4
  %shr73 = ashr i32 %61, 1
  store i32 %shr73, i32* %step, align 4
  %62 = load i32, i32* %diff, align 4
  %63 = load i32, i32* %step, align 4
  %cmp74 = icmp sge i32 %62, %63
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.end.72
  %64 = load i32, i32* %delta, align 4
  %or = or i32 %64, 2
  store i32 %or, i32* %delta, align 4
  %65 = load i32, i32* %step, align 4
  %66 = load i32, i32* %diff, align 4
  %sub77 = sub i32 %66, %65
  store i32 %sub77, i32* %diff, align 4
  %67 = load i32, i32* %step, align 4
  %68 = load i32, i32* %vpdiff, align 4
  %add78 = add i32 %68, %67
  store i32 %add78, i32* %vpdiff, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.end.72
  %69 = load i32, i32* %step, align 4
  %shr80 = ashr i32 %69, 1
  store i32 %shr80, i32* %step, align 4
  %70 = load i32, i32* %diff, align 4
  %71 = load i32, i32* %step, align 4
  %cmp81 = icmp sge i32 %70, %71
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.79
  %72 = load i32, i32* %delta, align 4
  %or84 = or i32 %72, 1
  store i32 %or84, i32* %delta, align 4
  %73 = load i32, i32* %step, align 4
  %74 = load i32, i32* %vpdiff, align 4
  %add85 = add i32 %74, %73
  store i32 %add85, i32* %vpdiff, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.79
  %75 = load i32, i32* %sign, align 4
  %tobool87 = icmp ne i32 %75, 0
  br i1 %tobool87, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.end.86
  %76 = load i32, i32* %vpdiff, align 4
  %77 = load i32, i32* %valpred, align 4
  %sub89 = sub i32 %77, %76
  store i32 %sub89, i32* %valpred, align 4
  br label %if.end.92

if.else.90:                                       ; preds = %if.end.86
  %78 = load i32, i32* %vpdiff, align 4
  %79 = load i32, i32* %valpred, align 4
  %add91 = add i32 %79, %78
  store i32 %add91, i32* %valpred, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  %80 = load i32, i32* %valpred, align 4
  %cmp93 = icmp sgt i32 %80, 32767
  br i1 %cmp93, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.92
  store i32 32767, i32* %valpred, align 4
  br label %if.end.101

if.else.96:                                       ; preds = %if.end.92
  %81 = load i32, i32* %valpred, align 4
  %cmp97 = icmp slt i32 %81, -32768
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.else.96
  store i32 -32768, i32* %valpred, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.else.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.95
  %82 = load i32, i32* %sign, align 4
  %83 = load i32, i32* %delta, align 4
  %or102 = or i32 %83, %82
  store i32 %or102, i32* %delta, align 4
  %84 = load i32, i32* %delta, align 4
  %idxprom103 = sext i32 %84 to i64
  %arrayidx104 = getelementptr [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom103
  %85 = load i32, i32* %arrayidx104, align 4
  %86 = load i32, i32* %index, align 4
  %add105 = add i32 %86, %85
  store i32 %add105, i32* %index, align 4
  %87 = load i32, i32* %index, align 4
  %cmp106 = icmp slt i32 %87, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.101
  store i32 0, i32* %index, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.101
  %88 = load i32, i32* %index, align 4
  %cmp110 = icmp sgt i32 %88, 88
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  store i32 88, i32* %index, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.109
  %89 = load i32, i32* %index, align 4
  %idxprom114 = sext i32 %89 to i64
  %arrayidx115 = getelementptr [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom114
  %90 = load i32, i32* %arrayidx115, align 4
  store i32 %90, i32* %step, align 4
  %91 = load i32, i32* %bufferstep, align 4
  %tobool116 = icmp ne i32 %91, 0
  br i1 %tobool116, label %if.then.117, label %if.else.120

if.then.117:                                      ; preds = %if.end.113
  %92 = load i32, i32* %delta, align 4
  %shl118 = shl i32 %92, 4
  %and119 = and i32 %shl118, 240
  store i32 %and119, i32* %outputbuffer, align 4
  br label %if.end.124

if.else.120:                                      ; preds = %if.end.113
  %93 = load i32, i32* %delta, align 4
  %and121 = and i32 %93, 15
  %94 = load i32, i32* %outputbuffer, align 4
  %or122 = or i32 %and121, %94
  %conv123 = trunc i32 %or122 to i8
  %95 = load i8*, i8** %ncp, align 8
  %incdec.ptr = getelementptr i8, i8* %95, i32 1
  store i8* %incdec.ptr, i8** %ncp, align 8
  store i8 %conv123, i8* %95, align 1
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %if.then.117
  %96 = load i32, i32* %bufferstep, align 4
  %tobool125 = icmp ne i32 %96, 0
  %lnot = xor i1 %tobool125, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.124
  %97 = load i32, i32* %width.addr, align 4
  %conv126 = sext i32 %97 to i64
  %98 = load i64, i64* %i, align 8
  %add127 = add i64 %98, %conv126
  store i64 %add127, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct._object*, %struct._object** %str, align 8
  %100 = load i32, i32* %valpred, align 4
  %101 = load i32, i32* %index, align 4
  %call128 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), %struct._object* %99, i32 %100, i32 %101)
  store %struct._object* %call128, %struct._object** %rv, align 8
  br label %exit

exit:                                             ; preds = %for.end, %if.then.16, %if.then.12
  br label %do.body

do.body:                                          ; preds = %exit
  %102 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %104, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp129 = icmp ne i64 %dec, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body
  br label %if.end.134

if.else.132:                                      ; preds = %do.body
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %107(%struct._object* %108)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end

do.end:                                           ; preds = %if.end.134
  %109 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %109, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %110 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %110
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_tomono_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, double %lfactor, double %rfactor) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %lfactor.addr = alloca double, align 8
  %rfactor.addr = alloca double, align 8
  %cp = alloca i8*, align 8
  %ncp = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %maxval = alloca double, align 8
  %minval = alloca double, align 8
  %rv = alloca %struct._object*, align 8
  %val1 = alloca double, align 8
  %val2 = alloca double, align 8
  %val = alloca double, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double %lfactor, double* %lfactor.addr, align 8
  store double %rfactor, double* %rfactor.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %cp, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %4, i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len, align 8
  %7 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %7 to i64
  %div = sdiv i64 %6, %conv
  %and = and i64 %div, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load i32, i32* %width.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @maxvals, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %conv5 = sitofp i32 %10 to double
  store double %conv5, double* %maxval, align 8
  %11 = load i32, i32* %width.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr [5 x i32], [5 x i32]* @minvals, i32 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %conv8 = sitofp i32 %12 to double
  store double %conv8, double* %minval, align 8
  %13 = load i64, i64* %len, align 8
  %div9 = sdiv i64 %13, 2
  %call10 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div9)
  store %struct._object* %call10, %struct._object** %rv, align 8
  %14 = load %struct._object*, %struct._object** %rv, align 8
  %cmp11 = icmp eq %struct._object* %14, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %rv, align 8
  %call15 = call i8* @PyBytes_AsString(%struct._object* %15)
  store i8* %call15, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %len, align 8
  %cmp16 = icmp slt i64 %16, %17
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i8*, i8** %cp, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  %21 = load i8, i8* %add.ptr, align 1
  %conv20 = sext i8 %21 to i32
  br label %cond.end.45

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp eq i32 %22, 2
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false
  %23 = load i8*, i8** %cp, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr24 = getelementptr i8, i8* %23, i64 %24
  %25 = bitcast i8* %add.ptr24 to i16*
  %26 = load i16, i16* %25, align 2
  %conv25 = sext i16 %26 to i32
  br label %cond.end.43

cond.false.26:                                    ; preds = %cond.false
  %27 = load i32, i32* %width.addr, align 4
  %cmp27 = icmp eq i32 %27, 3
  br i1 %cmp27, label %cond.true.29, label %cond.false.41

cond.true.29:                                     ; preds = %cond.false.26
  %28 = load i8*, i8** %cp, align 8
  %29 = load i64, i64* %i, align 8
  %add.ptr30 = getelementptr i8, i8* %28, i64 %29
  %arrayidx31 = getelementptr i8, i8* %add.ptr30, i64 0
  %30 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %31 = load i8*, i8** %cp, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr33 = getelementptr i8, i8* %31, i64 %32
  %arrayidx34 = getelementptr i8, i8* %add.ptr33, i64 1
  %33 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %shl = shl i32 %conv35, 8
  %add = add i32 %conv32, %shl
  %34 = load i8*, i8** %cp, align 8
  %35 = load i64, i64* %i, align 8
  %add.ptr36 = getelementptr i8, i8* %34, i64 %35
  %arrayidx37 = getelementptr i8, i8* %add.ptr36, i64 2
  %36 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %36 to i32
  %shl39 = shl i32 %conv38, 16
  %add40 = add i32 %add, %shl39
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false.26
  %37 = load i8*, i8** %cp, align 8
  %38 = load i64, i64* %i, align 8
  %add.ptr42 = getelementptr i8, i8* %37, i64 %38
  %39 = bitcast i8* %add.ptr42 to i32*
  %40 = load i32, i32* %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.29
  %cond = phi i32 [ %add40, %cond.true.29 ], [ %40, %cond.false.41 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true.23
  %cond44 = phi i32 [ %conv25, %cond.true.23 ], [ %cond, %cond.end ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true
  %cond46 = phi i32 [ %conv20, %cond.true ], [ %cond44, %cond.end.43 ]
  %conv47 = sitofp i32 %cond46 to double
  store double %conv47, double* %val1, align 8
  %41 = load i32, i32* %width.addr, align 4
  %cmp48 = icmp eq i32 %41, 1
  br i1 %cmp48, label %cond.true.50, label %cond.false.55

cond.true.50:                                     ; preds = %cond.end.45
  %42 = load i8*, i8** %cp, align 8
  %43 = load i64, i64* %i, align 8
  %44 = load i32, i32* %width.addr, align 4
  %conv51 = sext i32 %44 to i64
  %add52 = add i64 %43, %conv51
  %add.ptr53 = getelementptr i8, i8* %42, i64 %add52
  %45 = load i8, i8* %add.ptr53, align 1
  %conv54 = sext i8 %45 to i32
  br label %cond.end.94

cond.false.55:                                    ; preds = %cond.end.45
  %46 = load i32, i32* %width.addr, align 4
  %cmp56 = icmp eq i32 %46, 2
  br i1 %cmp56, label %cond.true.58, label %cond.false.63

cond.true.58:                                     ; preds = %cond.false.55
  %47 = load i8*, i8** %cp, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i32, i32* %width.addr, align 4
  %conv59 = sext i32 %49 to i64
  %add60 = add i64 %48, %conv59
  %add.ptr61 = getelementptr i8, i8* %47, i64 %add60
  %50 = bitcast i8* %add.ptr61 to i16*
  %51 = load i16, i16* %50, align 2
  %conv62 = sext i16 %51 to i32
  br label %cond.end.92

cond.false.63:                                    ; preds = %cond.false.55
  %52 = load i32, i32* %width.addr, align 4
  %cmp64 = icmp eq i32 %52, 3
  br i1 %cmp64, label %cond.true.66, label %cond.false.86

cond.true.66:                                     ; preds = %cond.false.63
  %53 = load i8*, i8** %cp, align 8
  %54 = load i64, i64* %i, align 8
  %55 = load i32, i32* %width.addr, align 4
  %conv67 = sext i32 %55 to i64
  %add68 = add i64 %54, %conv67
  %add.ptr69 = getelementptr i8, i8* %53, i64 %add68
  %arrayidx70 = getelementptr i8, i8* %add.ptr69, i64 0
  %56 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %56 to i32
  %57 = load i8*, i8** %cp, align 8
  %58 = load i64, i64* %i, align 8
  %59 = load i32, i32* %width.addr, align 4
  %conv72 = sext i32 %59 to i64
  %add73 = add i64 %58, %conv72
  %add.ptr74 = getelementptr i8, i8* %57, i64 %add73
  %arrayidx75 = getelementptr i8, i8* %add.ptr74, i64 1
  %60 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %60 to i32
  %shl77 = shl i32 %conv76, 8
  %add78 = add i32 %conv71, %shl77
  %61 = load i8*, i8** %cp, align 8
  %62 = load i64, i64* %i, align 8
  %63 = load i32, i32* %width.addr, align 4
  %conv79 = sext i32 %63 to i64
  %add80 = add i64 %62, %conv79
  %add.ptr81 = getelementptr i8, i8* %61, i64 %add80
  %arrayidx82 = getelementptr i8, i8* %add.ptr81, i64 2
  %64 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %64 to i32
  %shl84 = shl i32 %conv83, 16
  %add85 = add i32 %add78, %shl84
  br label %cond.end.90

cond.false.86:                                    ; preds = %cond.false.63
  %65 = load i8*, i8** %cp, align 8
  %66 = load i64, i64* %i, align 8
  %67 = load i32, i32* %width.addr, align 4
  %conv87 = sext i32 %67 to i64
  %add88 = add i64 %66, %conv87
  %add.ptr89 = getelementptr i8, i8* %65, i64 %add88
  %68 = bitcast i8* %add.ptr89 to i32*
  %69 = load i32, i32* %68, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.86, %cond.true.66
  %cond91 = phi i32 [ %add85, %cond.true.66 ], [ %69, %cond.false.86 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.58
  %cond93 = phi i32 [ %conv62, %cond.true.58 ], [ %cond91, %cond.end.90 ]
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.end.92, %cond.true.50
  %cond95 = phi i32 [ %conv54, %cond.true.50 ], [ %cond93, %cond.end.92 ]
  %conv96 = sitofp i32 %cond95 to double
  store double %conv96, double* %val2, align 8
  %70 = load double, double* %val1, align 8
  %71 = load double, double* %lfactor.addr, align 8
  %mul = fmul double %70, %71
  %72 = load double, double* %val2, align 8
  %73 = load double, double* %rfactor.addr, align 8
  %mul97 = fmul double %72, %73
  %add98 = fadd double %mul, %mul97
  store double %add98, double* %val, align 8
  %74 = load double, double* %val, align 8
  %75 = load double, double* %minval, align 8
  %76 = load double, double* %maxval, align 8
  %call99 = call i32 @fbound(double %74, double %75, double %76)
  %conv100 = sitofp i32 %call99 to double
  %call101 = call double @floor(double %conv100) #5
  store double %call101, double* %val, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.94
  %77 = load i32, i32* %width.addr, align 4
  %cmp102 = icmp eq i32 %77, 1
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %do.body
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %78 = load double, double* %val, align 8
  %conv106 = fptosi double %78 to i8
  %79 = load i8*, i8** %ncp, align 8
  %80 = load i64, i64* %i, align 8
  %div107 = sdiv i64 %80, 2
  %add.ptr108 = getelementptr i8, i8* %79, i64 %div107
  store i8 %conv106, i8* %add.ptr108, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.105
  br label %if.end.147

if.else:                                          ; preds = %do.body
  %81 = load i32, i32* %width.addr, align 4
  %cmp109 = icmp eq i32 %81, 2
  br i1 %cmp109, label %if.then.111, label %if.else.117

if.then.111:                                      ; preds = %if.else
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  %82 = load double, double* %val, align 8
  %conv113 = fptosi double %82 to i16
  %83 = load i8*, i8** %ncp, align 8
  %84 = load i64, i64* %i, align 8
  %div114 = sdiv i64 %84, 2
  %add.ptr115 = getelementptr i8, i8* %83, i64 %div114
  %85 = bitcast i8* %add.ptr115 to i16*
  store i16 %conv113, i16* %85, align 2
  br label %do.end.116

do.end.116:                                       ; preds = %do.body.112
  br label %if.end.146

if.else.117:                                      ; preds = %if.else
  %86 = load i32, i32* %width.addr, align 4
  %cmp118 = icmp eq i32 %86, 3
  br i1 %cmp118, label %if.then.120, label %if.else.139

if.then.120:                                      ; preds = %if.else.117
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.120
  %87 = load double, double* %val, align 8
  %conv122 = fptosi double %87 to i32
  %conv123 = trunc i32 %conv122 to i8
  %88 = load i8*, i8** %ncp, align 8
  %89 = load i64, i64* %i, align 8
  %div124 = sdiv i64 %89, 2
  %add.ptr125 = getelementptr i8, i8* %88, i64 %div124
  %arrayidx126 = getelementptr i8, i8* %add.ptr125, i64 0
  store i8 %conv123, i8* %arrayidx126, align 1
  %90 = load double, double* %val, align 8
  %conv127 = fptosi double %90 to i32
  %shr = ashr i32 %conv127, 8
  %conv128 = trunc i32 %shr to i8
  %91 = load i8*, i8** %ncp, align 8
  %92 = load i64, i64* %i, align 8
  %div129 = sdiv i64 %92, 2
  %add.ptr130 = getelementptr i8, i8* %91, i64 %div129
  %arrayidx131 = getelementptr i8, i8* %add.ptr130, i64 1
  store i8 %conv128, i8* %arrayidx131, align 1
  %93 = load double, double* %val, align 8
  %conv132 = fptosi double %93 to i32
  %shr133 = ashr i32 %conv132, 16
  %conv134 = trunc i32 %shr133 to i8
  %94 = load i8*, i8** %ncp, align 8
  %95 = load i64, i64* %i, align 8
  %div135 = sdiv i64 %95, 2
  %add.ptr136 = getelementptr i8, i8* %94, i64 %div135
  %arrayidx137 = getelementptr i8, i8* %add.ptr136, i64 2
  store i8 %conv134, i8* %arrayidx137, align 1
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.121
  br label %if.end.145

if.else.139:                                      ; preds = %if.else.117
  br label %do.body.140

do.body.140:                                      ; preds = %if.else.139
  %96 = load double, double* %val, align 8
  %conv141 = fptosi double %96 to i32
  %97 = load i8*, i8** %ncp, align 8
  %98 = load i64, i64* %i, align 8
  %div142 = sdiv i64 %98, 2
  %add.ptr143 = getelementptr i8, i8* %97, i64 %div142
  %99 = bitcast i8* %add.ptr143 to i32*
  store i32 %conv141, i32* %99, align 4
  br label %do.end.144

do.end.144:                                       ; preds = %do.body.140
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %do.end.138
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %do.end.116
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %do.end
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %for.inc

for.inc:                                          ; preds = %do.end.148
  %100 = load i32, i32* %width.addr, align 4
  %mul149 = mul i32 %100, 2
  %conv150 = sext i32 %mul149 to i64
  %101 = load i64, i64* %i, align 8
  %add151 = add i64 %101, %conv150
  store i64 %add151, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %102, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.then.3, %if.then
  %103 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %103
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_tostereo_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, double %lfactor, double %rfactor) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %lfactor.addr = alloca double, align 8
  %rfactor.addr = alloca double, align 8
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %maxval = alloca double, align 8
  %minval = alloca double, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca double, align 8
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double %lfactor, double* %lfactor.addr, align 8
  store double %rfactor, double* %rfactor.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %width.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @maxvals, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %4 to double
  store double %conv, double* %maxval, align 8
  %5 = load i32, i32* %width.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr [5 x i32], [5 x i32]* @minvals, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %conv3 = sitofp i32 %6 to double
  store double %conv3, double* %minval, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2
  %8 = load i64, i64* %len4, align 8
  %cmp = icmp sgt i64 %8, 4611686018427387903
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 2
  %11 = load i64, i64* %len8, align 8
  %mul = mul i64 %11, 2
  %call9 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call9, %struct._object** %rv, align 8
  %12 = load %struct._object*, %struct._object** %rv, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %rv, align 8
  %call14 = call i8* @PyBytes_AsString(%struct._object* %13)
  store i8* %call14, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 2
  %16 = load i64, i64* %len15, align 8
  %cmp16 = icmp slt i64 %14, %16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp eq i32 %17, 1
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  %21 = load i8, i8* %add.ptr, align 1
  %conv20 = sext i8 %21 to i32
  br label %cond.end.50

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp eq i32 %22, 2
  br i1 %cmp21, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf24, align 8
  %25 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr i8, i8* %24, i64 %25
  %26 = bitcast i8* %add.ptr25 to i16*
  %27 = load i16, i16* %26, align 2
  %conv26 = sext i16 %27 to i32
  br label %cond.end.48

cond.false.27:                                    ; preds = %cond.false
  %28 = load i32, i32* %width.addr, align 4
  %cmp28 = icmp eq i32 %28, 3
  br i1 %cmp28, label %cond.true.30, label %cond.false.45

cond.true.30:                                     ; preds = %cond.false.27
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 0
  %30 = load i8*, i8** %buf31, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr32 = getelementptr i8, i8* %30, i64 %31
  %arrayidx33 = getelementptr i8, i8* %add.ptr32, i64 0
  %32 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %32 to i32
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 0
  %34 = load i8*, i8** %buf35, align 8
  %35 = load i64, i64* %i, align 8
  %add.ptr36 = getelementptr i8, i8* %34, i64 %35
  %arrayidx37 = getelementptr i8, i8* %add.ptr36, i64 1
  %36 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %36 to i32
  %shl = shl i32 %conv38, 8
  %add = add i32 %conv34, %shl
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf39 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 0
  %38 = load i8*, i8** %buf39, align 8
  %39 = load i64, i64* %i, align 8
  %add.ptr40 = getelementptr i8, i8* %38, i64 %39
  %arrayidx41 = getelementptr i8, i8* %add.ptr40, i64 2
  %40 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %40 to i32
  %shl43 = shl i32 %conv42, 16
  %add44 = add i32 %add, %shl43
  br label %cond.end

cond.false.45:                                    ; preds = %cond.false.27
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 0
  %42 = load i8*, i8** %buf46, align 8
  %43 = load i64, i64* %i, align 8
  %add.ptr47 = getelementptr i8, i8* %42, i64 %43
  %44 = bitcast i8* %add.ptr47 to i32*
  %45 = load i32, i32* %44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.45, %cond.true.30
  %cond = phi i32 [ %add44, %cond.true.30 ], [ %45, %cond.false.45 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end, %cond.true.23
  %cond49 = phi i32 [ %conv26, %cond.true.23 ], [ %cond, %cond.end ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true
  %cond51 = phi i32 [ %conv20, %cond.true ], [ %cond49, %cond.end.48 ]
  %conv52 = sitofp i32 %cond51 to double
  store double %conv52, double* %val, align 8
  %46 = load double, double* %val, align 8
  %47 = load double, double* %lfactor.addr, align 8
  %mul53 = fmul double %46, %47
  %48 = load double, double* %minval, align 8
  %49 = load double, double* %maxval, align 8
  %call54 = call i32 @fbound(double %mul53, double %48, double %49)
  %conv55 = sitofp i32 %call54 to double
  %call56 = call double @floor(double %conv55) #5
  %conv57 = fptosi double %call56 to i32
  store i32 %conv57, i32* %val1, align 4
  %50 = load double, double* %val, align 8
  %51 = load double, double* %rfactor.addr, align 8
  %mul58 = fmul double %50, %51
  %52 = load double, double* %minval, align 8
  %53 = load double, double* %maxval, align 8
  %call59 = call i32 @fbound(double %mul58, double %52, double %53)
  %conv60 = sitofp i32 %call59 to double
  %call61 = call double @floor(double %conv60) #5
  %conv62 = fptosi double %call61 to i32
  store i32 %conv62, i32* %val2, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.50
  %54 = load i32, i32* %width.addr, align 4
  %cmp63 = icmp eq i32 %54, 1
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %do.body
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %55 = load i32, i32* %val1, align 4
  %conv67 = trunc i32 %55 to i8
  %56 = load i8*, i8** %ncp, align 8
  %57 = load i64, i64* %i, align 8
  %mul68 = mul i64 %57, 2
  %add.ptr69 = getelementptr i8, i8* %56, i64 %mul68
  store i8 %conv67, i8* %add.ptr69, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.66
  br label %if.end.104

if.else:                                          ; preds = %do.body
  %58 = load i32, i32* %width.addr, align 4
  %cmp70 = icmp eq i32 %58, 2
  br i1 %cmp70, label %if.then.72, label %if.else.78

if.then.72:                                       ; preds = %if.else
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %59 = load i32, i32* %val1, align 4
  %conv74 = trunc i32 %59 to i16
  %60 = load i8*, i8** %ncp, align 8
  %61 = load i64, i64* %i, align 8
  %mul75 = mul i64 %61, 2
  %add.ptr76 = getelementptr i8, i8* %60, i64 %mul75
  %62 = bitcast i8* %add.ptr76 to i16*
  store i16 %conv74, i16* %62, align 2
  br label %do.end.77

do.end.77:                                        ; preds = %do.body.73
  br label %if.end.103

if.else.78:                                       ; preds = %if.else
  %63 = load i32, i32* %width.addr, align 4
  %cmp79 = icmp eq i32 %63, 3
  br i1 %cmp79, label %if.then.81, label %if.else.97

if.then.81:                                       ; preds = %if.else.78
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %64 = load i32, i32* %val1, align 4
  %conv83 = trunc i32 %64 to i8
  %65 = load i8*, i8** %ncp, align 8
  %66 = load i64, i64* %i, align 8
  %mul84 = mul i64 %66, 2
  %add.ptr85 = getelementptr i8, i8* %65, i64 %mul84
  %arrayidx86 = getelementptr i8, i8* %add.ptr85, i64 0
  store i8 %conv83, i8* %arrayidx86, align 1
  %67 = load i32, i32* %val1, align 4
  %shr = ashr i32 %67, 8
  %conv87 = trunc i32 %shr to i8
  %68 = load i8*, i8** %ncp, align 8
  %69 = load i64, i64* %i, align 8
  %mul88 = mul i64 %69, 2
  %add.ptr89 = getelementptr i8, i8* %68, i64 %mul88
  %arrayidx90 = getelementptr i8, i8* %add.ptr89, i64 1
  store i8 %conv87, i8* %arrayidx90, align 1
  %70 = load i32, i32* %val1, align 4
  %shr91 = ashr i32 %70, 16
  %conv92 = trunc i32 %shr91 to i8
  %71 = load i8*, i8** %ncp, align 8
  %72 = load i64, i64* %i, align 8
  %mul93 = mul i64 %72, 2
  %add.ptr94 = getelementptr i8, i8* %71, i64 %mul93
  %arrayidx95 = getelementptr i8, i8* %add.ptr94, i64 2
  store i8 %conv92, i8* %arrayidx95, align 1
  br label %do.end.96

do.end.96:                                        ; preds = %do.body.82
  br label %if.end.102

if.else.97:                                       ; preds = %if.else.78
  br label %do.body.98

do.body.98:                                       ; preds = %if.else.97
  %73 = load i32, i32* %val1, align 4
  %74 = load i8*, i8** %ncp, align 8
  %75 = load i64, i64* %i, align 8
  %mul99 = mul i64 %75, 2
  %add.ptr100 = getelementptr i8, i8* %74, i64 %mul99
  %76 = bitcast i8* %add.ptr100 to i32*
  store i32 %73, i32* %76, align 4
  br label %do.end.101

do.end.101:                                       ; preds = %do.body.98
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.end.96
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %do.end.77
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %do.end
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %77 = load i32, i32* %width.addr, align 4
  %cmp107 = icmp eq i32 %77, 1
  br i1 %cmp107, label %if.then.109, label %if.else.117

if.then.109:                                      ; preds = %do.body.106
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.109
  %78 = load i32, i32* %val2, align 4
  %conv111 = trunc i32 %78 to i8
  %79 = load i8*, i8** %ncp, align 8
  %80 = load i64, i64* %i, align 8
  %mul112 = mul i64 %80, 2
  %81 = load i32, i32* %width.addr, align 4
  %conv113 = sext i32 %81 to i64
  %add114 = add i64 %mul112, %conv113
  %add.ptr115 = getelementptr i8, i8* %79, i64 %add114
  store i8 %conv111, i8* %add.ptr115, align 1
  br label %do.end.116

do.end.116:                                       ; preds = %do.body.110
  br label %if.end.163

if.else.117:                                      ; preds = %do.body.106
  %82 = load i32, i32* %width.addr, align 4
  %cmp118 = icmp eq i32 %82, 2
  br i1 %cmp118, label %if.then.120, label %if.else.128

if.then.120:                                      ; preds = %if.else.117
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.120
  %83 = load i32, i32* %val2, align 4
  %conv122 = trunc i32 %83 to i16
  %84 = load i8*, i8** %ncp, align 8
  %85 = load i64, i64* %i, align 8
  %mul123 = mul i64 %85, 2
  %86 = load i32, i32* %width.addr, align 4
  %conv124 = sext i32 %86 to i64
  %add125 = add i64 %mul123, %conv124
  %add.ptr126 = getelementptr i8, i8* %84, i64 %add125
  %87 = bitcast i8* %add.ptr126 to i16*
  store i16 %conv122, i16* %87, align 2
  br label %do.end.127

do.end.127:                                       ; preds = %do.body.121
  br label %if.end.162

if.else.128:                                      ; preds = %if.else.117
  %88 = load i32, i32* %width.addr, align 4
  %cmp129 = icmp eq i32 %88, 3
  br i1 %cmp129, label %if.then.131, label %if.else.154

if.then.131:                                      ; preds = %if.else.128
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %89 = load i32, i32* %val2, align 4
  %conv133 = trunc i32 %89 to i8
  %90 = load i8*, i8** %ncp, align 8
  %91 = load i64, i64* %i, align 8
  %mul134 = mul i64 %91, 2
  %92 = load i32, i32* %width.addr, align 4
  %conv135 = sext i32 %92 to i64
  %add136 = add i64 %mul134, %conv135
  %add.ptr137 = getelementptr i8, i8* %90, i64 %add136
  %arrayidx138 = getelementptr i8, i8* %add.ptr137, i64 0
  store i8 %conv133, i8* %arrayidx138, align 1
  %93 = load i32, i32* %val2, align 4
  %shr139 = ashr i32 %93, 8
  %conv140 = trunc i32 %shr139 to i8
  %94 = load i8*, i8** %ncp, align 8
  %95 = load i64, i64* %i, align 8
  %mul141 = mul i64 %95, 2
  %96 = load i32, i32* %width.addr, align 4
  %conv142 = sext i32 %96 to i64
  %add143 = add i64 %mul141, %conv142
  %add.ptr144 = getelementptr i8, i8* %94, i64 %add143
  %arrayidx145 = getelementptr i8, i8* %add.ptr144, i64 1
  store i8 %conv140, i8* %arrayidx145, align 1
  %97 = load i32, i32* %val2, align 4
  %shr146 = ashr i32 %97, 16
  %conv147 = trunc i32 %shr146 to i8
  %98 = load i8*, i8** %ncp, align 8
  %99 = load i64, i64* %i, align 8
  %mul148 = mul i64 %99, 2
  %100 = load i32, i32* %width.addr, align 4
  %conv149 = sext i32 %100 to i64
  %add150 = add i64 %mul148, %conv149
  %add.ptr151 = getelementptr i8, i8* %98, i64 %add150
  %arrayidx152 = getelementptr i8, i8* %add.ptr151, i64 2
  store i8 %conv147, i8* %arrayidx152, align 1
  br label %do.end.153

do.end.153:                                       ; preds = %do.body.132
  br label %if.end.161

if.else.154:                                      ; preds = %if.else.128
  br label %do.body.155

do.body.155:                                      ; preds = %if.else.154
  %101 = load i32, i32* %val2, align 4
  %102 = load i8*, i8** %ncp, align 8
  %103 = load i64, i64* %i, align 8
  %mul156 = mul i64 %103, 2
  %104 = load i32, i32* %width.addr, align 4
  %conv157 = sext i32 %104 to i64
  %add158 = add i64 %mul156, %conv157
  %add.ptr159 = getelementptr i8, i8* %102, i64 %add158
  %105 = bitcast i8* %add.ptr159 to i32*
  store i32 %101, i32* %105, align 4
  br label %do.end.160

do.end.160:                                       ; preds = %do.body.155
  br label %if.end.161

if.end.161:                                       ; preds = %do.end.160, %do.end.153
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %do.end.127
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %do.end.116
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %for.inc

for.inc:                                          ; preds = %do.end.164
  %106 = load i32, i32* %width.addr, align 4
  %conv165 = sext i32 %106 to i64
  %107 = load i64, i64* %i, align 8
  %add166 = add i64 %107, %conv165
  store i64 %add166, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %108, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.6, %if.then
  %109 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %109
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_getsample_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, i64 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %index.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %index.addr, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %index.addr, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len1, align 8
  %7 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %7 to i64
  %div = sdiv i64 %6, %conv
  %cmp2 = icmp sge i64 %4, %div
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %width.addr, align 4
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  %12 = load i64, i64* %index.addr, align 8
  %13 = load i32, i32* %width.addr, align 4
  %conv8 = sext i32 %13 to i64
  %mul = mul i64 %12, %conv8
  %add.ptr = getelementptr i8, i8* %11, i64 %mul
  %14 = load i8, i8* %add.ptr, align 1
  %conv9 = sext i8 %14 to i32
  br label %cond.end.48

cond.false:                                       ; preds = %if.end.5
  %15 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp eq i32 %15, 2
  br i1 %cmp10, label %cond.true.12, label %cond.false.18

cond.true.12:                                     ; preds = %cond.false
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf13, align 8
  %18 = load i64, i64* %index.addr, align 8
  %19 = load i32, i32* %width.addr, align 4
  %conv14 = sext i32 %19 to i64
  %mul15 = mul i64 %18, %conv14
  %add.ptr16 = getelementptr i8, i8* %17, i64 %mul15
  %20 = bitcast i8* %add.ptr16 to i16*
  %21 = load i16, i16* %20, align 2
  %conv17 = sext i16 %21 to i32
  br label %cond.end.46

cond.false.18:                                    ; preds = %cond.false
  %22 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp eq i32 %22, 3
  br i1 %cmp19, label %cond.true.21, label %cond.false.41

cond.true.21:                                     ; preds = %cond.false.18
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf22, align 8
  %25 = load i64, i64* %index.addr, align 8
  %26 = load i32, i32* %width.addr, align 4
  %conv23 = sext i32 %26 to i64
  %mul24 = mul i64 %25, %conv23
  %add.ptr25 = getelementptr i8, i8* %24, i64 %mul24
  %arrayidx = getelementptr i8, i8* %add.ptr25, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %27 to i32
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 0
  %29 = load i8*, i8** %buf27, align 8
  %30 = load i64, i64* %index.addr, align 8
  %31 = load i32, i32* %width.addr, align 4
  %conv28 = sext i32 %31 to i64
  %mul29 = mul i64 %30, %conv28
  %add.ptr30 = getelementptr i8, i8* %29, i64 %mul29
  %arrayidx31 = getelementptr i8, i8* %add.ptr30, i64 1
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %32 to i32
  %shl = shl i32 %conv32, 8
  %add = add i32 %conv26, %shl
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf33 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 0
  %34 = load i8*, i8** %buf33, align 8
  %35 = load i64, i64* %index.addr, align 8
  %36 = load i32, i32* %width.addr, align 4
  %conv34 = sext i32 %36 to i64
  %mul35 = mul i64 %35, %conv34
  %add.ptr36 = getelementptr i8, i8* %34, i64 %mul35
  %arrayidx37 = getelementptr i8, i8* %add.ptr36, i64 2
  %37 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %37 to i32
  %shl39 = shl i32 %conv38, 16
  %add40 = add i32 %add, %shl39
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false.18
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf42, align 8
  %40 = load i64, i64* %index.addr, align 8
  %41 = load i32, i32* %width.addr, align 4
  %conv43 = sext i32 %41 to i64
  %mul44 = mul i64 %40, %conv43
  %add.ptr45 = getelementptr i8, i8* %39, i64 %mul44
  %42 = bitcast i8* %add.ptr45 to i32*
  %43 = load i32, i32* %42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.21
  %cond = phi i32 [ %add40, %cond.true.21 ], [ %43, %cond.false.41 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end, %cond.true.12
  %cond47 = phi i32 [ %conv17, %cond.true.12 ], [ %cond, %cond.end ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true
  %cond49 = phi i32 [ %conv9, %cond.true ], [ %cond47, %cond.end.46 ]
  store i32 %cond49, i32* %val, align 4
  %44 = load i32, i32* %val, align 4
  %conv50 = sext i32 %44 to i64
  %call51 = call %struct._object* @PyLong_FromLong(i64 %conv50)
  store %struct._object* %call51, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.48, %if.then.4, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_reverse_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %4)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %5 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %call5 = call i8* @PyBytes_AsString(%struct._object* %6)
  store i8* %call5, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  %9 = load i64, i64* %len6, align 8
  %cmp7 = icmp slt i64 %7, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp eq i32 %10, 1
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %13
  %14 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %14 to i32
  br label %cond.end.37

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp eq i32 %15, 2
  br i1 %cmp9, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.false
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf12, align 8
  %18 = load i64, i64* %i, align 8
  %add.ptr13 = getelementptr i8, i8* %17, i64 %18
  %19 = bitcast i8* %add.ptr13 to i16*
  %20 = load i16, i16* %19, align 2
  %conv14 = sext i16 %20 to i32
  br label %cond.end.35

cond.false.15:                                    ; preds = %cond.false
  %21 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %21, 3
  br i1 %cmp16, label %cond.true.18, label %cond.false.32

cond.true.18:                                     ; preds = %cond.false.15
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf19, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr20 = getelementptr i8, i8* %23, i64 %24
  %arrayidx = getelementptr i8, i8* %add.ptr20, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %25 to i32
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 0
  %27 = load i8*, i8** %buf22, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr23 = getelementptr i8, i8* %27, i64 %28
  %arrayidx24 = getelementptr i8, i8* %add.ptr23, i64 1
  %29 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %29 to i32
  %shl = shl i32 %conv25, 8
  %add = add i32 %conv21, %shl
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 0
  %31 = load i8*, i8** %buf26, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr27 = getelementptr i8, i8* %31, i64 %32
  %arrayidx28 = getelementptr i8, i8* %add.ptr27, i64 2
  %33 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %33 to i32
  %shl30 = shl i32 %conv29, 16
  %add31 = add i32 %add, %shl30
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false.15
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf33 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %buf33, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr34 = getelementptr i8, i8* %35, i64 %36
  %37 = bitcast i8* %add.ptr34 to i32*
  %38 = load i32, i32* %37, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.18
  %cond = phi i32 [ %add31, %cond.true.18 ], [ %38, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true.11
  %cond36 = phi i32 [ %conv14, %cond.true.11 ], [ %cond, %cond.end ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true
  %cond38 = phi i32 [ %conv, %cond.true ], [ %cond36, %cond.end.35 ]
  store i32 %cond38, i32* %val, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.37
  %39 = load i32, i32* %width.addr, align 4
  %cmp39 = icmp eq i32 %39, 1
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.body
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %40 = load i32, i32* %val, align 4
  %conv43 = trunc i32 %40 to i8
  %41 = load i8*, i8** %ncp, align 8
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len44 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 2
  %43 = load i64, i64* %len44, align 8
  %44 = load i64, i64* %i, align 8
  %sub = sub i64 %43, %44
  %45 = load i32, i32* %width.addr, align 4
  %conv45 = sext i32 %45 to i64
  %sub46 = sub i64 %sub, %conv45
  %add.ptr47 = getelementptr i8, i8* %41, i64 %sub46
  store i8 %conv43, i8* %add.ptr47, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.42
  br label %if.end.97

if.else:                                          ; preds = %do.body
  %46 = load i32, i32* %width.addr, align 4
  %cmp48 = icmp eq i32 %46, 2
  br i1 %cmp48, label %if.then.50, label %if.else.59

if.then.50:                                       ; preds = %if.else
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %47 = load i32, i32* %val, align 4
  %conv52 = trunc i32 %47 to i16
  %48 = load i8*, i8** %ncp, align 8
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len53 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 2
  %50 = load i64, i64* %len53, align 8
  %51 = load i64, i64* %i, align 8
  %sub54 = sub i64 %50, %51
  %52 = load i32, i32* %width.addr, align 4
  %conv55 = sext i32 %52 to i64
  %sub56 = sub i64 %sub54, %conv55
  %add.ptr57 = getelementptr i8, i8* %48, i64 %sub56
  %53 = bitcast i8* %add.ptr57 to i16*
  store i16 %conv52, i16* %53, align 2
  br label %do.end.58

do.end.58:                                        ; preds = %do.body.51
  br label %if.end.96

if.else.59:                                       ; preds = %if.else
  %54 = load i32, i32* %width.addr, align 4
  %cmp60 = icmp eq i32 %54, 3
  br i1 %cmp60, label %if.then.62, label %if.else.87

if.then.62:                                       ; preds = %if.else.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %55 = load i32, i32* %val, align 4
  %conv64 = trunc i32 %55 to i8
  %56 = load i8*, i8** %ncp, align 8
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len65 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 2
  %58 = load i64, i64* %len65, align 8
  %59 = load i64, i64* %i, align 8
  %sub66 = sub i64 %58, %59
  %60 = load i32, i32* %width.addr, align 4
  %conv67 = sext i32 %60 to i64
  %sub68 = sub i64 %sub66, %conv67
  %add.ptr69 = getelementptr i8, i8* %56, i64 %sub68
  %arrayidx70 = getelementptr i8, i8* %add.ptr69, i64 0
  store i8 %conv64, i8* %arrayidx70, align 1
  %61 = load i32, i32* %val, align 4
  %shr = ashr i32 %61, 8
  %conv71 = trunc i32 %shr to i8
  %62 = load i8*, i8** %ncp, align 8
  %63 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len72 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %63, i32 0, i32 2
  %64 = load i64, i64* %len72, align 8
  %65 = load i64, i64* %i, align 8
  %sub73 = sub i64 %64, %65
  %66 = load i32, i32* %width.addr, align 4
  %conv74 = sext i32 %66 to i64
  %sub75 = sub i64 %sub73, %conv74
  %add.ptr76 = getelementptr i8, i8* %62, i64 %sub75
  %arrayidx77 = getelementptr i8, i8* %add.ptr76, i64 1
  store i8 %conv71, i8* %arrayidx77, align 1
  %67 = load i32, i32* %val, align 4
  %shr78 = ashr i32 %67, 16
  %conv79 = trunc i32 %shr78 to i8
  %68 = load i8*, i8** %ncp, align 8
  %69 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len80 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %69, i32 0, i32 2
  %70 = load i64, i64* %len80, align 8
  %71 = load i64, i64* %i, align 8
  %sub81 = sub i64 %70, %71
  %72 = load i32, i32* %width.addr, align 4
  %conv82 = sext i32 %72 to i64
  %sub83 = sub i64 %sub81, %conv82
  %add.ptr84 = getelementptr i8, i8* %68, i64 %sub83
  %arrayidx85 = getelementptr i8, i8* %add.ptr84, i64 2
  store i8 %conv79, i8* %arrayidx85, align 1
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.63
  br label %if.end.95

if.else.87:                                       ; preds = %if.else.59
  br label %do.body.88

do.body.88:                                       ; preds = %if.else.87
  %73 = load i32, i32* %val, align 4
  %74 = load i8*, i8** %ncp, align 8
  %75 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len89 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %75, i32 0, i32 2
  %76 = load i64, i64* %len89, align 8
  %77 = load i64, i64* %i, align 8
  %sub90 = sub i64 %76, %77
  %78 = load i32, i32* %width.addr, align 4
  %conv91 = sext i32 %78 to i64
  %sub92 = sub i64 %sub90, %conv91
  %add.ptr93 = getelementptr i8, i8* %74, i64 %sub92
  %79 = bitcast i8* %add.ptr93 to i32*
  store i32 %73, i32* %79, align 4
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.88
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.end.86
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %do.end.58
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %do.end
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %for.inc

for.inc:                                          ; preds = %do.end.98
  %80 = load i32, i32* %width.addr, align 4
  %conv99 = sext i32 %80 to i64
  %81 = load i64, i64* %i, align 8
  %add100 = add i64 %81, %conv99
  store i64 %add100, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %82, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %83 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_byteswap_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %ncp = alloca i8*, align 8
  %i = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %j = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %2 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_parameters(i64 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %4)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %5 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %call5 = call i8* @PyBytes_AsString(%struct._object* %6)
  store i8* %call5, i8** %ncp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.end.4
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  %9 = load i64, i64* %len6, align 8
  %cmp7 = icmp slt i64 %7, %9
  br i1 %cmp7, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %12 = load i64, i64* %i, align 8
  %13 = load i32, i32* %j, align 4
  %conv = sext i32 %13 to i64
  %add = add i64 %12, %conv
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 0
  %15 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 %add
  %16 = load i8, i8* %arrayidx, align 1
  %17 = load i64, i64* %i, align 8
  %18 = load i32, i32* %width.addr, align 4
  %conv11 = sext i32 %18 to i64
  %add12 = add i64 %17, %conv11
  %sub = sub i64 %add12, 1
  %19 = load i32, i32* %j, align 4
  %conv13 = sext i32 %19 to i64
  %sub14 = sub i64 %sub, %conv13
  %20 = load i8*, i8** %ncp, align 8
  %arrayidx15 = getelementptr i8, i8* %20, i64 %sub14
  store i8 %16, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %21 = load i32, i32* %j, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %22 = load i32, i32* %width.addr, align 4
  %conv17 = sext i32 %22 to i64
  %23 = load i64, i64* %i, align 8
  %add18 = add i64 %23, %conv17
  store i64 %add18, i64* %i, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then.3, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @audioop_ratecv_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %fragment, i32 %width, i32 %nchannels, i32 %inrate, i32 %outrate, %struct._object* %state, i32 %weightA, i32 %weightB) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %fragment.addr = alloca %struct.bufferinfo*, align 8
  %width.addr = alloca i32, align 4
  %nchannels.addr = alloca i32, align 4
  %inrate.addr = alloca i32, align 4
  %outrate.addr = alloca i32, align 4
  %state.addr = alloca %struct._object*, align 8
  %weightA.addr = alloca i32, align 4
  %weightB.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ncp = alloca i8*, align 8
  %len = alloca i64, align 8
  %chan = alloca i32, align 4
  %d = alloca i32, align 4
  %prev_i = alloca i32*, align 8
  %cur_i = alloca i32*, align 8
  %cur_o = alloca i32, align 4
  %samps = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %bytes_per_frame = alloca i32, align 4
  %q = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp157 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %fragment, %struct.bufferinfo** %fragment.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %inrate, i32* %inrate.addr, align 4
  store i32 %outrate, i32* %outrate.addr, align 4
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store i32 %weightA, i32* %weightA.addr, align 4
  store i32 %weightB, i32* %weightB.addr, align 4
  store %struct._object* null, %struct._object** %rv, align 8
  %0 = load i32, i32* %width.addr, align 4
  %call = call i32 @audioop_check_size(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %nchannels.addr, align 4
  %div = sdiv i32 2147483647, %4
  %cmp3 = icmp sgt i32 %3, %div
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %nchannels.addr, align 4
  %mul = mul i32 %6, %7
  store i32 %mul, i32* %bytes_per_frame, align 4
  %8 = load i32, i32* %weightA.addr, align 4
  %cmp6 = icmp slt i32 %8, 1
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %9 = load i32, i32* %weightB.addr, align 4
  %cmp7 = icmp slt i32 %9, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  %10 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.71, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len10, align 8
  %13 = load i32, i32* %bytes_per_frame, align 4
  %conv = sext i32 %13 to i64
  %rem = srem i64 %12, %conv
  %cmp11 = icmp ne i64 %rem, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %14 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %15 = load i32, i32* %inrate.addr, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.14
  %16 = load i32, i32* %outrate.addr, align 4
  %cmp18 = icmp sle i32 %16, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  %17 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.17
  %18 = load i32, i32* %inrate.addr, align 4
  %19 = load i32, i32* %outrate.addr, align 4
  %call22 = call i32 @gcd(i32 %18, i32 %19)
  store i32 %call22, i32* %d, align 4
  %20 = load i32, i32* %d, align 4
  %21 = load i32, i32* %inrate.addr, align 4
  %div23 = sdiv i32 %21, %20
  store i32 %div23, i32* %inrate.addr, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %outrate.addr, align 4
  %div24 = sdiv i32 %23, %22
  store i32 %div24, i32* %outrate.addr, align 4
  %24 = load i32, i32* %weightA.addr, align 4
  %25 = load i32, i32* %weightB.addr, align 4
  %call25 = call i32 @gcd(i32 %24, i32 %25)
  store i32 %call25, i32* %d, align 4
  %26 = load i32, i32* %d, align 4
  %27 = load i32, i32* %weightA.addr, align 4
  %div26 = sdiv i32 %27, %26
  store i32 %div26, i32* %weightA.addr, align 4
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* %weightA.addr, align 4
  %div27 = sdiv i32 %29, %28
  store i32 %div27, i32* %weightA.addr, align 4
  %30 = load i32, i32* %nchannels.addr, align 4
  %conv28 = sext i32 %30 to i64
  %cmp29 = icmp ugt i64 %conv28, 4611686018427387903
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.21
  %31 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.21
  %32 = load i32, i32* %nchannels.addr, align 4
  %conv33 = sext i32 %32 to i64
  %mul34 = mul i64 %conv33, 4
  %call35 = call i8* @PyMem_Malloc(i64 %mul34)
  %33 = bitcast i8* %call35 to i32*
  store i32* %33, i32** %prev_i, align 8
  %34 = load i32, i32* %nchannels.addr, align 4
  %conv36 = sext i32 %34 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call i8* @PyMem_Malloc(i64 %mul37)
  %35 = bitcast i8* %call38 to i32*
  store i32* %35, i32** %cur_i, align 8
  %36 = load i32*, i32** %prev_i, align 8
  %cmp39 = icmp eq i32* %36, null
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.32
  %37 = load i32*, i32** %cur_i, align 8
  %cmp42 = icmp eq i32* %37, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.32
  %call45 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.46:                                        ; preds = %lor.lhs.false.41
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %len47 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 2
  %39 = load i64, i64* %len47, align 8
  %40 = load i32, i32* %bytes_per_frame, align 4
  %conv48 = sext i32 %40 to i64
  %div49 = sdiv i64 %39, %conv48
  store i64 %div49, i64* %len, align 8
  %41 = load %struct._object*, %struct._object** %state.addr, align 8
  %cmp50 = icmp eq %struct._object* %41, @_Py_NoneStruct
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.end.46
  %42 = load i32, i32* %outrate.addr, align 4
  %sub = sub i32 0, %42
  store i32 %sub, i32* %d, align 4
  store i32 0, i32* %chan, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %43 = load i32, i32* %chan, align 4
  %44 = load i32, i32* %nchannels.addr, align 4
  %cmp53 = icmp slt i32 %43, %44
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %chan, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load i32*, i32** %cur_i, align 8
  %arrayidx = getelementptr i32, i32* %46, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %47 = load i32, i32* %chan, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load i32*, i32** %prev_i, align 8
  %arrayidx56 = getelementptr i32, i32* %48, i64 %idxprom55
  store i32 0, i32* %arrayidx56, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %chan, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %chan, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.84

if.else:                                          ; preds = %if.end.46
  %50 = load %struct._object*, %struct._object** %state.addr, align 8
  %call57 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i32 0, i32 0), i32* %d, %struct._typeobject* @PyTuple_Type, %struct._object** %samps)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.else
  br label %exit

if.end.60:                                        ; preds = %if.else
  %51 = load %struct._object*, %struct._object** %samps, align 8
  %call61 = call i64 @PyTuple_Size(%struct._object* %51)
  %52 = load i32, i32* %nchannels.addr, align 4
  %conv62 = sext i32 %52 to i64
  %cmp63 = icmp ne i64 %call61, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.60
  %53 = load %struct._object*, %struct._object** @AudioopError, align 8
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0))
  br label %exit

if.end.66:                                        ; preds = %if.end.60
  store i32 0, i32* %chan, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.81, %if.end.66
  %54 = load i32, i32* %chan, align 4
  %55 = load i32, i32* %nchannels.addr, align 4
  %cmp68 = icmp slt i32 %54, %55
  br i1 %cmp68, label %for.body.70, label %for.end.83

for.body.70:                                      ; preds = %for.cond.67
  %56 = load %struct._object*, %struct._object** %samps, align 8
  %57 = load i32, i32* %chan, align 4
  %conv71 = sext i32 %57 to i64
  %call72 = call %struct._object* @PyTuple_GetItem(%struct._object* %56, i64 %conv71)
  %58 = load i32, i32* %chan, align 4
  %idxprom73 = sext i32 %58 to i64
  %59 = load i32*, i32** %prev_i, align 8
  %arrayidx74 = getelementptr i32, i32* %59, i64 %idxprom73
  %60 = load i32, i32* %chan, align 4
  %idxprom75 = sext i32 %60 to i64
  %61 = load i32*, i32** %cur_i, align 8
  %arrayidx76 = getelementptr i32, i32* %61, i64 %idxprom75
  %call77 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %call72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32* %arrayidx74, i32* %arrayidx76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %for.body.70
  br label %exit

if.end.80:                                        ; preds = %for.body.70
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %62 = load i32, i32* %chan, align 4
  %inc82 = add i32 %62, 1
  store i32 %inc82, i32* %chan, align 4
  br label %for.cond.67

for.end.83:                                       ; preds = %for.cond.67
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %for.end
  %63 = load i64, i64* %len, align 8
  %cmp85 = icmp eq i64 %63, 0
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.end.84
  %call88 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call88, %struct._object** %str, align 8
  br label %if.end.107

if.else.89:                                       ; preds = %if.end.84
  %64 = load i64, i64* %len, align 8
  %sub90 = sub i64 %64, 1
  %65 = load i32, i32* %inrate.addr, align 4
  %conv91 = sext i32 %65 to i64
  %div92 = sdiv i64 %sub90, %conv91
  %add = add i64 1, %div92
  store i64 %add, i64* %q, align 8
  %66 = load i32, i32* %outrate.addr, align 4
  %conv93 = sext i32 %66 to i64
  %67 = load i64, i64* %q, align 8
  %div94 = sdiv i64 9223372036854775807, %67
  %68 = load i32, i32* %bytes_per_frame, align 4
  %conv95 = sext i32 %68 to i64
  %div96 = sdiv i64 %div94, %conv95
  %cmp97 = icmp sgt i64 %conv93, %div96
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.else.89
  store %struct._object* null, %struct._object** %str, align 8
  br label %if.end.106

if.else.100:                                      ; preds = %if.else.89
  %69 = load i64, i64* %q, align 8
  %70 = load i32, i32* %outrate.addr, align 4
  %conv101 = sext i32 %70 to i64
  %mul102 = mul i64 %69, %conv101
  %71 = load i32, i32* %bytes_per_frame, align 4
  %conv103 = sext i32 %71 to i64
  %mul104 = mul i64 %mul102, %conv103
  %call105 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul104)
  store %struct._object* %call105, %struct._object** %str, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %if.then.99
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.87
  %72 = load %struct._object*, %struct._object** %str, align 8
  %cmp108 = icmp eq %struct._object* %72, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  %73 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0))
  br label %exit

if.end.111:                                       ; preds = %if.end.107
  %74 = load %struct._object*, %struct._object** %str, align 8
  %call112 = call i8* @PyBytes_AsString(%struct._object* %74)
  store i8* %call112, i8** %ncp, align 8
  %75 = load %struct.bufferinfo*, %struct.bufferinfo** %fragment.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %75, i32 0, i32 0
  %76 = load i8*, i8** %buf, align 8
  store i8* %76, i8** %cp, align 8
  br label %for.cond.113

for.cond.113:                                     ; preds = %while.end.322, %if.end.111
  br label %while.cond

while.cond:                                       ; preds = %for.end.245, %for.cond.113
  %77 = load i32, i32* %d, align 4
  %cmp114 = icmp slt i32 %77, 0
  br i1 %cmp114, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load i64, i64* %len, align 8
  %cmp116 = icmp eq i64 %78, 0
  br i1 %cmp116, label %if.then.118, label %if.end.180

if.then.118:                                      ; preds = %while.body
  %79 = load i32, i32* %nchannels.addr, align 4
  %conv119 = sext i32 %79 to i64
  %call120 = call %struct._object* @PyTuple_New(i64 %conv119)
  store %struct._object* %call120, %struct._object** %samps, align 8
  %80 = load %struct._object*, %struct._object** %samps, align 8
  %cmp121 = icmp eq %struct._object* %80, null
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.118
  br label %exit

if.end.124:                                       ; preds = %if.then.118
  store i32 0, i32* %chan, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.136, %if.end.124
  %81 = load i32, i32* %chan, align 4
  %82 = load i32, i32* %nchannels.addr, align 4
  %cmp126 = icmp slt i32 %81, %82
  br i1 %cmp126, label %for.body.128, label %for.end.138

for.body.128:                                     ; preds = %for.cond.125
  %83 = load %struct._object*, %struct._object** %samps, align 8
  %84 = load i32, i32* %chan, align 4
  %conv129 = sext i32 %84 to i64
  %85 = load i32, i32* %chan, align 4
  %idxprom130 = sext i32 %85 to i64
  %86 = load i32*, i32** %prev_i, align 8
  %arrayidx131 = getelementptr i32, i32* %86, i64 %idxprom130
  %87 = load i32, i32* %arrayidx131, align 4
  %88 = load i32, i32* %chan, align 4
  %idxprom132 = sext i32 %88 to i64
  %89 = load i32*, i32** %cur_i, align 8
  %arrayidx133 = getelementptr i32, i32* %89, i64 %idxprom132
  %90 = load i32, i32* %arrayidx133, align 4
  %call134 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %87, i32 %90)
  %call135 = call i32 @PyTuple_SetItem(%struct._object* %83, i64 %conv129, %struct._object* %call134)
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.128
  %91 = load i32, i32* %chan, align 4
  %inc137 = add i32 %91, 1
  store i32 %inc137, i32* %chan, align 4
  br label %for.cond.125

for.end.138:                                      ; preds = %for.cond.125
  %call139 = call %struct._object* @PyErr_Occurred()
  %tobool140 = icmp ne %struct._object* %call139, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end.138
  br label %exit

if.end.142:                                       ; preds = %for.end.138
  %92 = load i8*, i8** %ncp, align 8
  %93 = load %struct._object*, %struct._object** %str, align 8
  %call143 = call i8* @PyBytes_AsString(%struct._object* %93)
  %sub.ptr.lhs.cast = ptrtoint i8* %92 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call143 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %94 = load %struct._object*, %struct._object** %str, align 8
  %call144 = call i8* @PyBytes_AsString(%struct._object* %94)
  %95 = load i64, i64* %len, align 8
  %call145 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call144, i64 %95)
  store %struct._object* %call145, %struct._object** %rv, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.142
  %96 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %98, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp146 = icmp ne i64 %dec, 0
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body
  br label %if.end.150

if.else.149:                                      ; preds = %do.body
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %101(%struct._object* %102)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end

do.end:                                           ; preds = %if.end.150
  %103 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %103, %struct._object** %str, align 8
  %104 = load %struct._object*, %struct._object** %str, align 8
  %cmp151 = icmp eq %struct._object* %104, null
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %do.end
  br label %exit

if.end.154:                                       ; preds = %do.end
  %105 = load %struct._object*, %struct._object** %str, align 8
  %106 = load i32, i32* %d, align 4
  %107 = load %struct._object*, %struct._object** %samps, align 8
  %call155 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), %struct._object* %105, i32 %106, %struct._object* %107)
  store %struct._object* %call155, %struct._object** %rv, align 8
  br label %do.body.156

do.body.156:                                      ; preds = %if.end.154
  %108 = load %struct._object*, %struct._object** %samps, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp157, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_refcnt158 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt158, align 8
  %dec159 = add i64 %110, -1
  store i64 %dec159, i64* %ob_refcnt158, align 8
  %cmp160 = icmp ne i64 %dec159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.156
  br label %if.end.166

if.else.163:                                      ; preds = %do.body.156
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  %ob_type164 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type164, align 8
  %tp_dealloc165 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc165, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp157, align 8
  call void %113(%struct._object* %114)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.end.167
  %115 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp169, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %117, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %do.body.168
  br label %if.end.178

if.else.175:                                      ; preds = %do.body.168
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %120(%struct._object* %121)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.174
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %exit

if.end.180:                                       ; preds = %while.body
  store i32 0, i32* %chan, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.243, %if.end.180
  %122 = load i32, i32* %chan, align 4
  %123 = load i32, i32* %nchannels.addr, align 4
  %cmp182 = icmp slt i32 %122, %123
  br i1 %cmp182, label %for.body.184, label %for.end.245

for.body.184:                                     ; preds = %for.cond.181
  %124 = load i32, i32* %chan, align 4
  %idxprom185 = sext i32 %124 to i64
  %125 = load i32*, i32** %cur_i, align 8
  %arrayidx186 = getelementptr i32, i32* %125, i64 %idxprom185
  %126 = load i32, i32* %arrayidx186, align 4
  %127 = load i32, i32* %chan, align 4
  %idxprom187 = sext i32 %127 to i64
  %128 = load i32*, i32** %prev_i, align 8
  %arrayidx188 = getelementptr i32, i32* %128, i64 %idxprom187
  store i32 %126, i32* %arrayidx188, align 4
  %129 = load i32, i32* %width.addr, align 4
  %cmp189 = icmp eq i32 %129, 1
  br i1 %cmp189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.184
  %130 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr i8, i8* %130, i64 0
  %131 = load i8, i8* %add.ptr, align 1
  %conv191 = sext i8 %131 to i32
  %shl = shl i32 %conv191, 24
  br label %cond.end.220

cond.false:                                       ; preds = %for.body.184
  %132 = load i32, i32* %width.addr, align 4
  %cmp192 = icmp eq i32 %132, 2
  br i1 %cmp192, label %cond.true.194, label %cond.false.198

cond.true.194:                                    ; preds = %cond.false
  %133 = load i8*, i8** %cp, align 8
  %add.ptr195 = getelementptr i8, i8* %133, i64 0
  %134 = bitcast i8* %add.ptr195 to i16*
  %135 = load i16, i16* %134, align 2
  %conv196 = sext i16 %135 to i32
  %shl197 = shl i32 %conv196, 16
  br label %cond.end.218

cond.false.198:                                   ; preds = %cond.false
  %136 = load i32, i32* %width.addr, align 4
  %cmp199 = icmp eq i32 %136, 3
  br i1 %cmp199, label %cond.true.201, label %cond.false.216

cond.true.201:                                    ; preds = %cond.false.198
  %137 = load i8*, i8** %cp, align 8
  %add.ptr202 = getelementptr i8, i8* %137, i64 0
  %arrayidx203 = getelementptr i8, i8* %add.ptr202, i64 0
  %138 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %138 to i32
  %139 = load i8*, i8** %cp, align 8
  %add.ptr205 = getelementptr i8, i8* %139, i64 0
  %arrayidx206 = getelementptr i8, i8* %add.ptr205, i64 1
  %140 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %140 to i32
  %shl208 = shl i32 %conv207, 8
  %add209 = add i32 %conv204, %shl208
  %141 = load i8*, i8** %cp, align 8
  %add.ptr210 = getelementptr i8, i8* %141, i64 0
  %arrayidx211 = getelementptr i8, i8* %add.ptr210, i64 2
  %142 = load i8, i8* %arrayidx211, align 1
  %conv212 = sext i8 %142 to i32
  %shl213 = shl i32 %conv212, 16
  %add214 = add i32 %add209, %shl213
  %shl215 = shl i32 %add214, 8
  br label %cond.end

cond.false.216:                                   ; preds = %cond.false.198
  %143 = load i8*, i8** %cp, align 8
  %add.ptr217 = getelementptr i8, i8* %143, i64 0
  %144 = bitcast i8* %add.ptr217 to i32*
  %145 = load i32, i32* %144, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.216, %cond.true.201
  %cond = phi i32 [ %shl215, %cond.true.201 ], [ %145, %cond.false.216 ]
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end, %cond.true.194
  %cond219 = phi i32 [ %shl197, %cond.true.194 ], [ %cond, %cond.end ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end.218, %cond.true
  %cond221 = phi i32 [ %shl, %cond.true ], [ %cond219, %cond.end.218 ]
  %146 = load i32, i32* %chan, align 4
  %idxprom222 = sext i32 %146 to i64
  %147 = load i32*, i32** %cur_i, align 8
  %arrayidx223 = getelementptr i32, i32* %147, i64 %idxprom222
  store i32 %cond221, i32* %arrayidx223, align 4
  %148 = load i32, i32* %width.addr, align 4
  %149 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %148 to i64
  %add.ptr224 = getelementptr i8, i8* %149, i64 %idx.ext
  store i8* %add.ptr224, i8** %cp, align 8
  %150 = load i32, i32* %weightA.addr, align 4
  %conv225 = sitofp i32 %150 to double
  %151 = load i32, i32* %chan, align 4
  %idxprom226 = sext i32 %151 to i64
  %152 = load i32*, i32** %cur_i, align 8
  %arrayidx227 = getelementptr i32, i32* %152, i64 %idxprom226
  %153 = load i32, i32* %arrayidx227, align 4
  %conv228 = sitofp i32 %153 to double
  %mul229 = fmul double %conv225, %conv228
  %154 = load i32, i32* %weightB.addr, align 4
  %conv230 = sitofp i32 %154 to double
  %155 = load i32, i32* %chan, align 4
  %idxprom231 = sext i32 %155 to i64
  %156 = load i32*, i32** %prev_i, align 8
  %arrayidx232 = getelementptr i32, i32* %156, i64 %idxprom231
  %157 = load i32, i32* %arrayidx232, align 4
  %conv233 = sitofp i32 %157 to double
  %mul234 = fmul double %conv230, %conv233
  %add235 = fadd double %mul229, %mul234
  %158 = load i32, i32* %weightA.addr, align 4
  %conv236 = sitofp i32 %158 to double
  %159 = load i32, i32* %weightB.addr, align 4
  %conv237 = sitofp i32 %159 to double
  %add238 = fadd double %conv236, %conv237
  %div239 = fdiv double %add235, %add238
  %conv240 = fptosi double %div239 to i32
  %160 = load i32, i32* %chan, align 4
  %idxprom241 = sext i32 %160 to i64
  %161 = load i32*, i32** %cur_i, align 8
  %arrayidx242 = getelementptr i32, i32* %161, i64 %idxprom241
  store i32 %conv240, i32* %arrayidx242, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %cond.end.220
  %162 = load i32, i32* %chan, align 4
  %inc244 = add i32 %162, 1
  store i32 %inc244, i32* %chan, align 4
  br label %for.cond.181

for.end.245:                                      ; preds = %for.cond.181
  %163 = load i64, i64* %len, align 8
  %dec246 = add i64 %163, -1
  store i64 %dec246, i64* %len, align 8
  %164 = load i32, i32* %outrate.addr, align 4
  %165 = load i32, i32* %d, align 4
  %add247 = add i32 %165, %164
  store i32 %add247, i32* %d, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.248

while.cond.248:                                   ; preds = %for.end.320, %while.end
  %166 = load i32, i32* %d, align 4
  %cmp249 = icmp sge i32 %166, 0
  br i1 %cmp249, label %while.body.251, label %while.end.322

while.body.251:                                   ; preds = %while.cond.248
  store i32 0, i32* %chan, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.318, %while.body.251
  %167 = load i32, i32* %chan, align 4
  %168 = load i32, i32* %nchannels.addr, align 4
  %cmp253 = icmp slt i32 %167, %168
  br i1 %cmp253, label %for.body.255, label %for.end.320

for.body.255:                                     ; preds = %for.cond.252
  %169 = load i32, i32* %chan, align 4
  %idxprom256 = sext i32 %169 to i64
  %170 = load i32*, i32** %prev_i, align 8
  %arrayidx257 = getelementptr i32, i32* %170, i64 %idxprom256
  %171 = load i32, i32* %arrayidx257, align 4
  %conv258 = sitofp i32 %171 to double
  %172 = load i32, i32* %d, align 4
  %conv259 = sitofp i32 %172 to double
  %mul260 = fmul double %conv258, %conv259
  %173 = load i32, i32* %chan, align 4
  %idxprom261 = sext i32 %173 to i64
  %174 = load i32*, i32** %cur_i, align 8
  %arrayidx262 = getelementptr i32, i32* %174, i64 %idxprom261
  %175 = load i32, i32* %arrayidx262, align 4
  %conv263 = sitofp i32 %175 to double
  %176 = load i32, i32* %outrate.addr, align 4
  %177 = load i32, i32* %d, align 4
  %sub264 = sub i32 %176, %177
  %conv265 = sitofp i32 %sub264 to double
  %mul266 = fmul double %conv263, %conv265
  %add267 = fadd double %mul260, %mul266
  %178 = load i32, i32* %outrate.addr, align 4
  %conv268 = sitofp i32 %178 to double
  %div269 = fdiv double %add267, %conv268
  %conv270 = fptosi double %div269 to i32
  store i32 %conv270, i32* %cur_o, align 4
  br label %do.body.271

do.body.271:                                      ; preds = %for.body.255
  %179 = load i32, i32* %width.addr, align 4
  %cmp272 = icmp eq i32 %179, 1
  br i1 %cmp272, label %if.then.274, label %if.else.279

if.then.274:                                      ; preds = %do.body.271
  br label %do.body.275

do.body.275:                                      ; preds = %if.then.274
  %180 = load i32, i32* %cur_o, align 4
  %shr = ashr i32 %180, 24
  %conv276 = trunc i32 %shr to i8
  %181 = load i8*, i8** %ncp, align 8
  %add.ptr277 = getelementptr i8, i8* %181, i64 0
  store i8 %conv276, i8* %add.ptr277, align 1
  br label %do.end.278

do.end.278:                                       ; preds = %do.body.275
  br label %if.end.314

if.else.279:                                      ; preds = %do.body.271
  %182 = load i32, i32* %width.addr, align 4
  %cmp280 = icmp eq i32 %182, 2
  br i1 %cmp280, label %if.then.282, label %if.else.288

if.then.282:                                      ; preds = %if.else.279
  br label %do.body.283

do.body.283:                                      ; preds = %if.then.282
  %183 = load i32, i32* %cur_o, align 4
  %shr284 = ashr i32 %183, 16
  %conv285 = trunc i32 %shr284 to i16
  %184 = load i8*, i8** %ncp, align 8
  %add.ptr286 = getelementptr i8, i8* %184, i64 0
  %185 = bitcast i8* %add.ptr286 to i16*
  store i16 %conv285, i16* %185, align 2
  br label %do.end.287

do.end.287:                                       ; preds = %do.body.283
  br label %if.end.313

if.else.288:                                      ; preds = %if.else.279
  %186 = load i32, i32* %width.addr, align 4
  %cmp289 = icmp eq i32 %186, 3
  br i1 %cmp289, label %if.then.291, label %if.else.308

if.then.291:                                      ; preds = %if.else.288
  br label %do.body.292

do.body.292:                                      ; preds = %if.then.291
  %187 = load i32, i32* %cur_o, align 4
  %shr293 = ashr i32 %187, 8
  %conv294 = trunc i32 %shr293 to i8
  %188 = load i8*, i8** %ncp, align 8
  %add.ptr295 = getelementptr i8, i8* %188, i64 0
  %arrayidx296 = getelementptr i8, i8* %add.ptr295, i64 0
  store i8 %conv294, i8* %arrayidx296, align 1
  %189 = load i32, i32* %cur_o, align 4
  %shr297 = ashr i32 %189, 8
  %shr298 = ashr i32 %shr297, 8
  %conv299 = trunc i32 %shr298 to i8
  %190 = load i8*, i8** %ncp, align 8
  %add.ptr300 = getelementptr i8, i8* %190, i64 0
  %arrayidx301 = getelementptr i8, i8* %add.ptr300, i64 1
  store i8 %conv299, i8* %arrayidx301, align 1
  %191 = load i32, i32* %cur_o, align 4
  %shr302 = ashr i32 %191, 8
  %shr303 = ashr i32 %shr302, 16
  %conv304 = trunc i32 %shr303 to i8
  %192 = load i8*, i8** %ncp, align 8
  %add.ptr305 = getelementptr i8, i8* %192, i64 0
  %arrayidx306 = getelementptr i8, i8* %add.ptr305, i64 2
  store i8 %conv304, i8* %arrayidx306, align 1
  br label %do.end.307

do.end.307:                                       ; preds = %do.body.292
  br label %if.end.312

if.else.308:                                      ; preds = %if.else.288
  br label %do.body.309

do.body.309:                                      ; preds = %if.else.308
  %193 = load i32, i32* %cur_o, align 4
  %194 = load i8*, i8** %ncp, align 8
  %add.ptr310 = getelementptr i8, i8* %194, i64 0
  %195 = bitcast i8* %add.ptr310 to i32*
  store i32 %193, i32* %195, align 4
  br label %do.end.311

do.end.311:                                       ; preds = %do.body.309
  br label %if.end.312

if.end.312:                                       ; preds = %do.end.311, %do.end.307
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %do.end.287
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %do.end.278
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.314
  %196 = load i32, i32* %width.addr, align 4
  %197 = load i8*, i8** %ncp, align 8
  %idx.ext316 = sext i32 %196 to i64
  %add.ptr317 = getelementptr i8, i8* %197, i64 %idx.ext316
  store i8* %add.ptr317, i8** %ncp, align 8
  br label %for.inc.318

for.inc.318:                                      ; preds = %do.end.315
  %198 = load i32, i32* %chan, align 4
  %inc319 = add i32 %198, 1
  store i32 %inc319, i32* %chan, align 4
  br label %for.cond.252

for.end.320:                                      ; preds = %for.cond.252
  %199 = load i32, i32* %inrate.addr, align 4
  %200 = load i32, i32* %d, align 4
  %sub321 = sub i32 %200, %199
  store i32 %sub321, i32* %d, align 4
  br label %while.cond.248

while.end.322:                                    ; preds = %while.cond.248
  br label %for.cond.113

exit:                                             ; preds = %do.end.179, %if.then.153, %if.then.141, %if.then.123, %if.then.110, %if.then.79, %if.then.65, %if.then.59, %if.then.44
  %201 = load i32*, i32** %prev_i, align 8
  %202 = bitcast i32* %201 to i8*
  call void @PyMem_Free(i8* %202)
  %203 = load i32*, i32** %cur_i, align 8
  %204 = bitcast i32* %203 to i8*
  call void @PyMem_Free(i8* %204)
  %205 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %205, %struct._object** %retval
  br label %return

return:                                           ; preds = %exit, %if.then.31, %if.then.20, %if.then.13, %if.then.8, %if.then.4, %if.then.1, %if.then
  %206 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %206
}

; Function Attrs: nounwind uwtable
define internal i32 @gcd(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %b.addr, align 4
  %rem = srem i32 %1, %2
  store i32 %rem, i32* %tmp, align 4
  %3 = load i32, i32* %b.addr, align 4
  store i32 %3, i32* %a.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %b.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %a.addr, align 4
  ret i32 %5
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyMem_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
