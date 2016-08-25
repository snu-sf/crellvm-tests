; ModuleID = './binascii.bc'
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
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@binasciimodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @doc_binascii, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([17 x %struct.PyMethodDef], [17 x %struct.PyMethodDef]* @binascii_module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"binascii.Error\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@Error = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"binascii.Incomplete\00", align 1
@Incomplete = internal global %struct._object* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"Incomplete\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"binascii\00", align 1
@doc_binascii = internal global [41 x i8] c"Conversion between binary data and ASCII\00", align 16
@binascii_module_methods = internal global [17 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_uu to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @binascii_a2b_uu__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_uu to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @binascii_b2a_uu__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_base64 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @binascii_a2b_base64__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_base64 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @binascii_b2a_base64__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_hqx to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @binascii_a2b_hqx__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_hqx to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @binascii_b2a_hqx__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_hex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @binascii_a2b_hex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_hex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @binascii_b2a_hex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_hex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @binascii_a2b_hex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_hex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @binascii_b2a_hex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_rlecode_hqx to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @binascii_rlecode_hqx__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_rledecode_hqx to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @binascii_rledecode_hqx__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_crc_hqx to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @binascii_crc_hqx__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_crc32 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @binascii_crc32__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @binascii_a2b_qp to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @binascii_a2b_qp__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @binascii_b2a_qp to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @binascii_b2a_qp__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"a2b_uu\00", align 1
@binascii_a2b_uu__doc__ = internal global [62 x i8] c"a2b_uu($module, data, /)\0A--\0A\0ADecode a line of uuencoded data.\00", align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"b2a_uu\00", align 1
@binascii_b2a_uu__doc__ = internal global [52 x i8] c"b2a_uu($module, data, /)\0A--\0A\0AUuencode line of data.\00", align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"a2b_base64\00", align 1
@binascii_a2b_base64__doc__ = internal global [63 x i8] c"a2b_base64($module, data, /)\0A--\0A\0ADecode a line of base64 data.\00", align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"b2a_base64\00", align 1
@binascii_b2a_base64__doc__ = internal global [59 x i8] c"b2a_base64($module, data, /)\0A--\0A\0ABase64-code line of data.\00", align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"a2b_hqx\00", align 1
@binascii_a2b_hqx__doc__ = internal global [50 x i8] c"a2b_hqx($module, data, /)\0A--\0A\0ADecode .hqx coding.\00", align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"b2a_hqx\00", align 1
@binascii_b2a_hqx__doc__ = internal global [48 x i8] c"b2a_hqx($module, data, /)\0A--\0A\0AEncode .hqx data.\00", align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"a2b_hex\00", align 1
@binascii_a2b_hex__doc__ = internal global [198 x i8] c"a2b_hex($module, hexstr, /)\0A--\0A\0ABinary data of hexadecimal representation.\0A\0Ahexstr must contain an even number of hex digits (upper or lower case).\0AThis function is also available as \22unhexlify()\22.\00", align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"b2a_hex\00", align 1
@binascii_b2a_hex__doc__ = internal global [159 x i8] c"b2a_hex($module, data, /)\0A--\0A\0AHexadecimal representation of binary data.\0A\0AThe return value is a bytes object.  This function is also\0Aavailable as \22hexlify()\22.\00", align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"unhexlify\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"hexlify\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rlecode_hqx\00", align 1
@binascii_rlecode_hqx__doc__ = internal global [63 x i8] c"rlecode_hqx($module, data, /)\0A--\0A\0ABinhex RLE-code binary data.\00", align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"rledecode_hqx\00", align 1
@binascii_rledecode_hqx__doc__ = internal global [68 x i8] c"rledecode_hqx($module, data, /)\0A--\0A\0ADecode hexbin RLE-coded string.\00", align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"crc_hqx\00", align 1
@binascii_crc_hqx__doc__ = internal global [66 x i8] c"crc_hqx($module, data, crc, /)\0A--\0A\0ACompute hqx CRC incrementally.\00", align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"crc32\00", align 1
@binascii_crc32__doc__ = internal global [65 x i8] c"crc32($module, data, crc=0, /)\0A--\0A\0ACompute CRC-32 incrementally.\00", align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"a2b_qp\00", align 1
@binascii_a2b_qp__doc__ = internal global [79 x i8] c"a2b_qp($module, /, data, header=False)\0A--\0A\0ADecode a string of qp-encoded data.\00", align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"b2a_qp\00", align 1
@binascii_b2a_qp__doc__ = internal global [331 x i8] c"b2a_qp($module, /, data, quotetabs=False, istext=True, header=False)\0A--\0A\0AEncode a string using quoted-printable encoding.\0A\0AOn encoding, when istext is set, newlines are not encoded, and white\0Aspace at end of lines is.  When istext is not set, \5Cr and \5Cn (CR/LF)\0Aare both encoded.  When quotetabs is set, space and tabs are encoded.\00", align 16
@.str.21 = private unnamed_addr constant [10 x i8] c"O&:a2b_uu\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"string argument should contain only ASCII characters\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.23 = private unnamed_addr constant [57 x i8] c"argument should be bytes, buffer or ASCII string, not %R\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"argument should be a contiguous buffer, not %R\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Illegal char\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Trailing garbage\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"y*:b2a_uu\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"At most 45 bytes at once\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"O&:a2b_base64\00", align 1
@table_a2b_base64 = internal global [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\00\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF", align 16
@.str.30 = private unnamed_addr constant [18 x i8] c"Incorrect padding\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"y*:b2a_base64\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Too much data for base64 line\00", align 1
@table_b2a_base64 = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.34 = private unnamed_addr constant [11 x i8] c"O&:a2b_hqx\00", align 1
@table_a2b_hqx = internal global [256 x i8] c"}}}}}}}}}}~}}~}}}}}}}}}}}}}}}}}}}\00\01\02\03\04\05\06\07\08\09\0A\0B\0C}}\0D\0E\0F\10\11\12\13}\14\15\7F}}}}}\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$}%&'()*+},-./}}}}0123456}789:;<}}=>?}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}", align 16
@.str.35 = private unnamed_addr constant [38 x i8] c"String has incomplete number of bytes\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"y*:b2a_hqx\00", align 1
@table_b2a_hqx = internal global [65 x i8] c"!\22#$%&'()*+,-012345689@ABCDEFGHIJKLMNPQRSTUVXYZ[`abcdefhijklmpqr\00", align 16
@.str.38 = private unnamed_addr constant [11 x i8] c"O&:a2b_hex\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Odd-length string\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Non-hexadecimal digit found\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.41 = private unnamed_addr constant [11 x i8] c"y*:b2a_hex\00", align 1
@Py_hexdigits = external global i8*, align 8
@.str.42 = private unnamed_addr constant [15 x i8] c"y*:rlecode_hqx\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"y*:rledecode_hqx\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Orphaned RLE code at start\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"y*i:crc_hqx\00", align 1
@crctab_hqx = internal global [256 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601, i16 4657, i16 528, i16 12915, i16 8786, i16 21173, i16 17044, i16 29431, i16 25302, i16 -27847, i16 -31976, i16 -19589, i16 -23718, i16 -11331, i16 -15460, i16 -3073, i16 -7202, i16 9314, i16 13379, i16 1056, i16 5121, i16 25830, i16 29895, i16 17572, i16 21637, i16 -23190, i16 -19125, i16 -31448, i16 -27383, i16 -6674, i16 -2609, i16 -14932, i16 -10867, i16 13907, i16 9842, i16 5649, i16 1584, i16 30423, i16 26358, i16 22165, i16 18100, i16 -18597, i16 -22662, i16 -26855, i16 -30920, i16 -2081, i16 -6146, i16 -10339, i16 -14404, i16 18628, i16 22757, i16 26758, i16 30887, i16 2112, i16 6241, i16 10242, i16 14371, i16 -13876, i16 -9747, i16 -5746, i16 -1617, i16 -30392, i16 -26263, i16 -22262, i16 -18133, i16 23285, i16 19156, i16 31415, i16 27286, i16 6769, i16 2640, i16 14899, i16 10770, i16 -9219, i16 -13348, i16 -1089, i16 -5218, i16 -25735, i16 -29864, i16 -17605, i16 -21734, i16 27814, i16 31879, i16 19684, i16 23749, i16 11298, i16 15363, i16 3168, i16 7233, i16 -4690, i16 -625, i16 -12820, i16 -8755, i16 -21206, i16 -17141, i16 -29336, i16 -25271, i16 32407, i16 28342, i16 24277, i16 20212, i16 15891, i16 11826, i16 7761, i16 3696, i16 -97, i16 -4162, i16 -8227, i16 -12292, i16 -16613, i16 -20678, i16 -24743, i16 -28808, i16 -28280, i16 -32343, i16 -20022, i16 -24085, i16 -12020, i16 -16083, i16 -3762, i16 -7825, i16 4224, i16 161, i16 12482, i16 8419, i16 20484, i16 16421, i16 28742, i16 24679, i16 -31815, i16 -27752, i16 -23557, i16 -19494, i16 -15555, i16 -11492, i16 -7297, i16 -3234, i16 689, i16 4752, i16 8947, i16 13010, i16 16949, i16 21012, i16 25207, i16 29270, i16 -18966, i16 -23093, i16 -27224, i16 -31351, i16 -2706, i16 -6833, i16 -10964, i16 -15091, i16 13538, i16 9411, i16 5280, i16 1153, i16 29798, i16 25671, i16 21540, i16 17413, i16 -22565, i16 -18438, i16 -30823, i16 -26696, i16 -6305, i16 -2178, i16 -14563, i16 -10436, i16 9939, i16 14066, i16 1681, i16 5808, i16 26199, i16 30326, i16 17941, i16 22068, i16 -9908, i16 -13971, i16 -1778, i16 -5841, i16 -26168, i16 -30231, i16 -18038, i16 -22101, i16 22596, i16 18533, i16 30726, i16 26663, i16 6336, i16 2273, i16 14466, i16 10403, i16 -13443, i16 -9380, i16 -5313, i16 -1250, i16 -29703, i16 -25640, i16 -21573, i16 -17510, i16 19061, i16 23124, i16 27191, i16 31254, i16 2801, i16 6864, i16 10931, i16 14994, i16 -722, i16 -4849, i16 -8852, i16 -12979, i16 -16982, i16 -21109, i16 -25112, i16 -29239, i16 31782, i16 27655, i16 23652, i16 19525, i16 15522, i16 11395, i16 7392, i16 3265, i16 -4321, i16 -194, i16 -12451, i16 -8324, i16 -20581, i16 -16454, i16 -28711, i16 -24584, i16 28183, i16 32310, i16 20053, i16 24180, i16 11923, i16 16050, i16 3793, i16 7920], align 16
@.str.46 = private unnamed_addr constant [11 x i8] c"y*|I:crc32\00", align 1
@binascii_a2b_qp._keywords = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* null], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"O&|i:a2b_qp\00", align 1
@table_hex = internal global [128 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@binascii_b2a_qp._keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* null], align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"quotetabs\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"istext\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"y*|iii:b2a_qp\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_binascii() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @binasciimodule, i32 1013)
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
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call2 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._object* %2, %struct._object* null)
  store %struct._object* %call2, %struct._object** @Error, align 8
  %3 = load %struct._object*, %struct._object** %d, align 8
  %4 = load %struct._object*, %struct._object** @Error, align 8
  %call3 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %4)
  %call4 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call4, %struct._object** @Incomplete, align 8
  %5 = load %struct._object*, %struct._object** %d, align 8
  %6 = load %struct._object*, %struct._object** @Incomplete, align 8
  %call5 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._object* %6)
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %7 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %m, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %if.end
  %14 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_uu(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_a2b_uu_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_uu(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_b2a_uu_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_base64(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_a2b_base64_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_base64(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_b2a_base64_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_a2b_hqx_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_b2a_hqx_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hex(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %hexstr = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %hexstr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %hexstr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_a2b_hex_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %hexstr)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %hexstr, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %hexstr)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hex(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_b2a_hex_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rlecode_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_rlecode_hqx_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rledecode_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call1 = call %struct._object* @binascii_rledecode_hqx_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_crc_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %crc = alloca i32, align 4
  %_return_value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct.bufferinfo* %data, i32* %crc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %crc, align 4
  %call1 = call i32 @binascii_crc_hqx_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data, i32 %3)
  store i32 %call1, i32* %_return_value, align 4
  %4 = load i32, i32* %_return_value, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %_return_value, align 4
  %conv = sext i32 %5 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %tobool7 = icmp ne %struct._object* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %exit
  %7 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_crc32(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %crc = alloca i32, align 4
  %_return_value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %crc, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %struct.bufferinfo* %data, i32* %crc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %crc, align 4
  %call1 = call i32 @binascii_crc32_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data, i32 %3)
  store i32 %call1, i32* %_return_value, align 4
  %4 = load i32, i32* %_return_value, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %_return_value, align 4
  %conv = zext i32 %5 to i64
  %call6 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %tobool7 = icmp ne %struct._object* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %exit
  %7 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_qp(%struct.PyModuleDef* %module, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %header = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %header, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @binascii_a2b_qp._keywords, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data, i32* %header)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %4 = load i32, i32* %header, align 4
  %call1 = call %struct._object* @binascii_a2b_qp_impl(%struct.PyModuleDef* %3, %struct.bufferinfo* %data, i32 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_qp(%struct.PyModuleDef* %module, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %quotetabs = alloca i32, align 4
  %istext = alloca i32, align 4
  %header = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %quotetabs, align 4
  store i32 1, i32* %istext, align 4
  store i32 0, i32* %header, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @binascii_b2a_qp._keywords, i32 0, i32 0), %struct.bufferinfo* %data, i32* %quotetabs, i32* %istext, i32* %header)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %4 = load i32, i32* %quotetabs, align 4
  %5 = load i32, i32* %istext, align 4
  %6 = load i32, i32* %header, align 4
  %call1 = call %struct._object* @binascii_b2a_qp_impl(%struct.PyModuleDef* %3, %struct.bufferinfo* %data, i32 %4, i32 %5, i32 %6)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %8 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %8
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ascii_buffer_converter(%struct._object* %arg, %struct.bufferinfo* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %buf.addr = alloca %struct.bufferinfo*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store %struct.bufferinfo* %buf, %struct.bufferinfo** %buf.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %1)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.end.33

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %arg.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %8 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp3 = icmp slt i32 %cond, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*
  %state6 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3
  %11 = bitcast %struct.anon* %state6 to i32*
  %bf.load7 = load i32, i32* %11, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 6
  %bf.clear9 = and i32 %bf.lshr8, 1
  %tobool10 = icmp ne i32 %bf.clear9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %arg.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3
  %15 = bitcast %struct.anon* %state13 to i32*
  %bf.load14 = load i32, i32* %15, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 5
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.29

cond.true.18:                                     ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %arg.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 3
  %18 = bitcast %struct.anon* %state19 to i32*
  %bf.load20 = load i32, i32* %18, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 6
  %bf.clear22 = and i32 %bf.lshr21, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.true.18
  %19 = load %struct._object*, %struct._object** %arg.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i64 1
  %21 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.true.18
  %22 = load %struct._object*, %struct._object** %arg.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyCompactUnicodeObject*
  %add.ptr26 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %23, i64 1
  %24 = bitcast %struct.PyCompactUnicodeObject* %add.ptr26 to i8*
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %cond28 = phi i8* [ %21, %cond.true.24 ], [ %24, %cond.false.25 ]
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** %arg.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %26, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %27 = load i8*, i8** %any, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.end.27
  %cond31 = phi i8* [ %cond28, %cond.end.27 ], [ %27, %cond.false.29 ]
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  %buf32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 0
  store i8* %cond31, i8** %buf32, align 8
  %29 = load %struct._object*, %struct._object** %arg.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 1
  %31 = load i64, i64* %length, align 8
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 2
  store i64 %31, i64* %len, align 8
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end
  %34 = load %struct._object*, %struct._object** %arg.addr, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  %call34 = call i32 @PyObject_GetBuffer(%struct._object* %34, %struct.bufferinfo* %35, i32 0)
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %37 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i32 0, i32 0), %struct._typeobject* %38)
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.33
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  %call40 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %39, i8 signext 67)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  %40 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %41 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %call44 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i32 0, i32 0), %struct._typeobject* %42)
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %43)
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.39
  store i32 131072, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.42, %if.then.36, %cond.end.30, %if.then.11, %if.then.4, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_uu_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %ascii_len = alloca i64, align 8
  %bin_len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %ascii_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %ascii_len, align 8
  %4 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %ascii_data, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %sub = sub i32 %conv, 32
  %and = and i32 %sub, 63
  %conv1 = sext i32 %and to i64
  store i64 %conv1, i64* %bin_len, align 8
  %6 = load i64, i64* %ascii_len, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ascii_len, align 8
  %7 = load i64, i64* %bin_len, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %7)
  store %struct._object* %call, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %rv, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %bin_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %bin_len, align 8
  %cmp3 = icmp sgt i64 %10, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %ascii_len, align 8
  %cmp5 = icmp sgt i64 %11, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i8*, i8** %ascii_data, align 8
  %13 = load i8, i8* %12, align 1
  %conv7 = zext i8 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ 0, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  store i8 %conv8, i8* %this_ch, align 1
  %14 = load i8, i8* %this_ch, align 1
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %15 = load i8, i8* %this_ch, align 1
  %conv12 = zext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %16 = load i64, i64* %ascii_len, align 8
  %cmp16 = icmp sle i64 %16, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %cond.end
  store i8 0, i8* %this_ch, align 1
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false.15
  %17 = load i8, i8* %this_ch, align 1
  %conv19 = zext i8 %17 to i32
  %cmp20 = icmp slt i32 %conv19, 32
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.else
  %18 = load i8, i8* %this_ch, align 1
  %conv23 = zext i8 %18 to i32
  %cmp24 = icmp sgt i32 %conv23, 96
  br i1 %cmp24, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %lor.lhs.false.22, %if.else
  %19 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %20 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec27 = add i64 %22, -1
  store i64 %dec27, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body
  br label %if.end.32

if.else.31:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.22
  %27 = load i8, i8* %this_ch, align 1
  %conv34 = zext i8 %27 to i32
  %sub35 = sub i32 %conv34, 32
  %and36 = and i32 %sub35, 63
  %conv37 = trunc i32 %and36 to i8
  store i8 %conv37, i8* %this_ch, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.33, %if.then.18
  %28 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %28, 6
  %29 = load i8, i8* %this_ch, align 1
  %conv39 = zext i8 %29 to i32
  %or = or i32 %shl, %conv39
  store i32 %or, i32* %leftchar, align 4
  %30 = load i32, i32* %leftbits, align 4
  %add = add i32 %30, 6
  store i32 %add, i32* %leftbits, align 4
  %31 = load i32, i32* %leftbits, align 4
  %cmp40 = icmp sge i32 %31, 8
  br i1 %cmp40, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %if.end.38
  %32 = load i32, i32* %leftbits, align 4
  %sub43 = sub i32 %32, 8
  store i32 %sub43, i32* %leftbits, align 4
  %33 = load i32, i32* %leftchar, align 4
  %34 = load i32, i32* %leftbits, align 4
  %shr = lshr i32 %33, %34
  %and44 = and i32 %shr, 255
  %conv45 = trunc i32 %and44 to i8
  %35 = load i8*, i8** %bin_data, align 8
  %incdec.ptr46 = getelementptr i8, i8* %35, i32 1
  store i8* %incdec.ptr46, i8** %bin_data, align 8
  store i8 %conv45, i8* %35, align 1
  %36 = load i32, i32* %leftbits, align 4
  %shl47 = shl i32 1, %36
  %sub48 = sub i32 %shl47, 1
  %37 = load i32, i32* %leftchar, align 4
  %and49 = and i32 %37, %sub48
  store i32 %and49, i32* %leftchar, align 4
  %38 = load i64, i64* %bin_len, align 8
  %dec50 = add i64 %38, -1
  store i64 %dec50, i64* %bin_len, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.42, %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %39 = load i64, i64* %ascii_len, align 8
  %dec52 = add i64 %39, -1
  store i64 %dec52, i64* %ascii_len, align 8
  %40 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr53 = getelementptr i8, i8* %40, i32 1
  store i8* %incdec.ptr53, i8** %ascii_data, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %for.end
  %41 = load i64, i64* %ascii_len, align 8
  %dec54 = add i64 %41, -1
  store i64 %dec54, i64* %ascii_len, align 8
  %cmp55 = icmp sgt i64 %41, 0
  br i1 %cmp55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr57 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr57, i8** %ascii_data, align 8
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %this_ch, align 1
  %44 = load i8, i8* %this_ch, align 1
  %conv58 = zext i8 %44 to i32
  %cmp59 = icmp ne i32 %conv58, 32
  br i1 %cmp59, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %while.body
  %45 = load i8, i8* %this_ch, align 1
  %conv61 = zext i8 %45 to i32
  %cmp62 = icmp ne i32 %conv61, 96
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.85

land.lhs.true.64:                                 ; preds = %land.lhs.true
  %46 = load i8, i8* %this_ch, align 1
  %conv65 = zext i8 %46 to i32
  %cmp66 = icmp ne i32 %conv65, 10
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.85

land.lhs.true.68:                                 ; preds = %land.lhs.true.64
  %47 = load i8, i8* %this_ch, align 1
  %conv69 = zext i8 %47 to i32
  %cmp70 = icmp ne i32 %conv69, 13
  br i1 %cmp70, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %land.lhs.true.68
  %48 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %49 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp74, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %51, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.73
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.73
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %54(%struct._object* %55)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.68, %land.lhs.true.64, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.84, %do.end, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_uu_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %bin_len = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %bin_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %bin_len, align 8
  %4 = load i64, i64* %bin_len, align 8
  %cmp = icmp sgt i64 %4, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %bin_len, align 8
  %add = add i64 %6, 2
  %div = sdiv i64 %add, 3
  %mul = mul i64 %div, 4
  %add1 = add i64 2, %mul
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add1)
  store %struct._object* %call, %struct._object** %rv, align 8
  %cmp2 = icmp eq %struct._object* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %rv, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ascii_data, align 8
  %9 = load i64, i64* %bin_len, align 8
  %and = and i64 %9, 63
  %add5 = add i64 32, %and
  %conv = trunc i64 %add5 to i8
  %10 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ascii_data, align 8
  store i8 %conv, i8* %10, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i64, i64* %bin_len, align 8
  %cmp6 = icmp sgt i64 %11, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %12 = load i32, i32* %leftbits, align 4
  %cmp8 = icmp ne i32 %12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %13 = phi i1 [ true, %for.cond ], [ %cmp8, %lor.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %14 = load i64, i64* %bin_len, align 8
  %cmp10 = icmp sgt i64 %14, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.body
  %15 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %15, 8
  %16 = load i8*, i8** %bin_data, align 8
  %17 = load i8, i8* %16, align 1
  %conv13 = zext i8 %17 to i32
  %or = or i32 %shl, %conv13
  store i32 %or, i32* %leftchar, align 4
  br label %if.end.15

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %leftchar, align 4
  %shl14 = shl i32 %18, 8
  store i32 %shl14, i32* %leftchar, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %19 = load i32, i32* %leftbits, align 4
  %add16 = add i32 %19, 8
  store i32 %add16, i32* %leftbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %20 = load i32, i32* %leftbits, align 4
  %cmp17 = icmp sge i32 %20, 6
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %leftchar, align 4
  %22 = load i32, i32* %leftbits, align 4
  %sub = sub i32 %22, 6
  %shr = lshr i32 %21, %sub
  %and19 = and i32 %shr, 63
  %conv20 = trunc i32 %and19 to i8
  store i8 %conv20, i8* %this_ch, align 1
  %23 = load i32, i32* %leftbits, align 4
  %sub21 = sub i32 %23, 6
  store i32 %sub21, i32* %leftbits, align 4
  %24 = load i8, i8* %this_ch, align 1
  %conv22 = zext i8 %24 to i32
  %add23 = add i32 %conv22, 32
  %conv24 = trunc i32 %add23 to i8
  %25 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr25 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr25, i8** %ascii_data, align 8
  store i8 %conv24, i8* %25, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %26 = load i64, i64* %bin_len, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %bin_len, align 8
  %27 = load i8*, i8** %bin_data, align 8
  %incdec.ptr26 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr26, i8** %bin_data, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %28 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr27 = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr27, i8** %ascii_data, align 8
  store i8 10, i8* %28, align 1
  %29 = load i8*, i8** %ascii_data, align 8
  %30 = load %struct._object*, %struct._object** %rv, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyBytesObject*
  %ob_sval28 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %31, i32 0, i32 2
  %arraydecay29 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval28, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call30 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %32 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %32, %struct._object** %_py_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp34 = icmp ne %struct._object* %33, null
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %34 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec38 = add i64 %36, -1
  store i64 %dec38, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.37
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.37
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %do.body
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %for.end
  %41 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.3, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_base64_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %ascii_len = alloca i64, align 8
  %bin_len = alloca i64, align 8
  %quad_pos = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  store i32 0, i32* %quad_pos, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %ascii_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %ascii_len, align 8
  %4 = load i64, i64* %ascii_len, align 8
  %cmp = icmp sgt i64 %4, 9223372036854775804
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %ascii_len, align 8
  %add = add i64 %5, 3
  %div = sdiv i64 %add, 4
  %mul = mul i64 %div, 3
  store i64 %mul, i64* %bin_len, align 8
  %6 = load i64, i64* %bin_len, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %6)
  store %struct._object* %call1, %struct._object** %rv, align 8
  %cmp2 = icmp eq %struct._object* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %rv, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %bin_data, align 8
  store i64 0, i64* %bin_len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i64, i64* %ascii_len, align 8
  %cmp5 = icmp sgt i64 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %ascii_data, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %this_ch, align 1
  %12 = load i8, i8* %this_ch, align 1
  %conv = zext i8 %12 to i32
  %cmp6 = icmp sgt i32 %conv, 127
  br i1 %cmp6, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i8, i8* %this_ch, align 1
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 13
  br i1 %cmp9, label %if.then.19, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %14 = load i8, i8* %this_ch, align 1
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %15 = load i8, i8* %this_ch, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 32
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %for.body
  br label %for.inc

if.end.20:                                        ; preds = %lor.lhs.false.15
  %16 = load i8, i8* %this_ch, align 1
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 61
  br i1 %cmp22, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end.20
  %17 = load i32, i32* %quad_pos, align 4
  %cmp25 = icmp slt i32 %17, 2
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.then.24
  %18 = load i32, i32* %quad_pos, align 4
  %cmp28 = icmp eq i32 %18, 2
  br i1 %cmp28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.27
  %19 = load i8*, i8** %ascii_data, align 8
  %20 = load i64, i64* %ascii_len, align 8
  %call30 = call i32 @binascii_find_valid(i8* %19, i64 %20, i32 1)
  %cmp31 = icmp ne i32 %call30, 61
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true, %if.then.24
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.27
  store i32 0, i32* %leftbits, align 4
  br label %for.end

if.end.34:                                        ; preds = %if.end.20
  %21 = load i8*, i8** %ascii_data, align 8
  %22 = load i8, i8* %21, align 1
  %idxprom = zext i8 %22 to i64
  %arrayidx = getelementptr [128 x i8], [128 x i8]* @table_a2b_base64, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  store i8 %23, i8* %this_ch, align 1
  %24 = load i8, i8* %this_ch, align 1
  %conv35 = zext i8 %24 to i32
  %cmp36 = icmp eq i32 %conv35, 255
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  br label %for.inc

if.end.39:                                        ; preds = %if.end.34
  %25 = load i32, i32* %quad_pos, align 4
  %add40 = add i32 %25, 1
  %and = and i32 %add40, 3
  store i32 %and, i32* %quad_pos, align 4
  %26 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %26, 6
  %27 = load i8, i8* %this_ch, align 1
  %conv41 = zext i8 %27 to i32
  %or = or i32 %shl, %conv41
  store i32 %or, i32* %leftchar, align 4
  %28 = load i32, i32* %leftbits, align 4
  %add42 = add i32 %28, 6
  store i32 %add42, i32* %leftbits, align 4
  %29 = load i32, i32* %leftbits, align 4
  %cmp43 = icmp sge i32 %29, 8
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.end.39
  %30 = load i32, i32* %leftbits, align 4
  %sub = sub i32 %30, 8
  store i32 %sub, i32* %leftbits, align 4
  %31 = load i32, i32* %leftchar, align 4
  %32 = load i32, i32* %leftbits, align 4
  %shr = lshr i32 %31, %32
  %and46 = and i32 %shr, 255
  %conv47 = trunc i32 %and46 to i8
  %33 = load i8*, i8** %bin_data, align 8
  %incdec.ptr = getelementptr i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %bin_data, align 8
  store i8 %conv47, i8* %33, align 1
  %34 = load i64, i64* %bin_len, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %bin_len, align 8
  %35 = load i32, i32* %leftbits, align 4
  %shl48 = shl i32 1, %35
  %sub49 = sub i32 %shl48, 1
  %36 = load i32, i32* %leftchar, align 4
  %and50 = and i32 %36, %sub49
  store i32 %and50, i32* %leftchar, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.51, %if.then.38, %if.then.33, %if.then.19
  %37 = load i64, i64* %ascii_len, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ascii_len, align 8
  %38 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr52 = getelementptr i8, i8* %38, i32 1
  store i8* %incdec.ptr52, i8** %ascii_data, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %39 = load i32, i32* %leftbits, align 4
  %cmp53 = icmp ne i32 %39, 0
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %for.end
  %40 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.55
  %41 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %dec56 = add i64 %43, -1
  store i64 %dec56, i64* %ob_refcnt, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body
  br label %if.end.61

if.else.60:                                       ; preds = %do.body
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end

do.end:                                           ; preds = %if.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %for.end
  %48 = load i64, i64* %bin_len, align 8
  %cmp63 = icmp sgt i64 %48, 0
  br i1 %cmp63, label %if.then.65, label %if.else.89

if.then.65:                                       ; preds = %if.end.62
  %49 = load i64, i64* %bin_len, align 8
  %call66 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %49)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.88

if.then.69:                                       ; preds = %if.then.65
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %50 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %50, %struct._object** %_py_tmp, align 8
  %51 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp71 = icmp ne %struct._object* %51, null
  br i1 %cmp71, label %if.then.73, label %if.end.86

if.then.73:                                       ; preds = %do.body.70
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %52 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp75, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %54, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.74
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %57(%struct._object* %58)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.70
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %if.then.65
  br label %if.end.103

if.else.89:                                       ; preds = %if.end.62
  br label %do.body.90

do.body.90:                                       ; preds = %if.else.89
  %59 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp91, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %61, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.90
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.90
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %64(%struct._object* %65)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  %call102 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i64 0)
  store %struct._object* %call102, %struct._object** %rv, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.101, %if.end.88
  %66 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %66, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.103, %do.end, %if.then.3, %if.then
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define internal i32 @binascii_find_valid(i8* %s, i64 %slen, i32 %num) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %b64val = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 -1, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %0 = load i64, i64* %slen.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %1, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %5 = load i8, i8* %c, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 127
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr [128 x i8], [128 x i8]* @table_a2b_base64, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %b64val, align 1
  %7 = load i8, i8* %c, align 1
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp sle i32 %conv2, 127
  br i1 %cmp3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, i8* %b64val, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 255
  br i1 %cmp6, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %num.addr, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv11 = zext i8 %11 to i32
  store i32 %conv11, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %12 = load i32, i32* %num.addr, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %num.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %while.body
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %14 = load i64, i64* %slen.addr, align 8
  %dec13 = add i64 %14, -1
  store i64 %dec13, i64* %slen.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %ret, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_base64_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %bin_len = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %bin_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %bin_len, align 8
  %4 = load i64, i64* %bin_len, align 8
  %cmp = icmp sgt i64 %4, 4611686018427387902
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %bin_len, align 8
  %mul = mul i64 %6, 2
  %add = add i64 %mul, 3
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add)
  store %struct._object* %call, %struct._object** %rv, align 8
  %cmp1 = icmp eq %struct._object* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %rv, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ascii_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load i64, i64* %bin_len, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %10, 8
  %11 = load i8*, i8** %bin_data, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %or = or i32 %shl, %conv
  store i32 %or, i32* %leftchar, align 4
  %13 = load i32, i32* %leftbits, align 4
  %add5 = add i32 %13, 8
  store i32 %add5, i32* %leftbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load i32, i32* %leftbits, align 4
  %cmp6 = icmp sge i32 %14, 6
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %leftchar, align 4
  %16 = load i32, i32* %leftbits, align 4
  %sub = sub i32 %16, 6
  %shr = lshr i32 %15, %sub
  %and = and i32 %shr, 63
  %conv8 = trunc i32 %and to i8
  store i8 %conv8, i8* %this_ch, align 1
  %17 = load i32, i32* %leftbits, align 4
  %sub9 = sub i32 %17, 6
  store i32 %sub9, i32* %leftbits, align 4
  %18 = load i8, i8* %this_ch, align 1
  %idxprom = zext i8 %18 to i64
  %arrayidx = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %20 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ascii_data, align 8
  store i8 %19, i8* %20, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i64, i64* %bin_len, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %bin_len, align 8
  %22 = load i8*, i8** %bin_data, align 8
  %incdec.ptr10 = getelementptr i8, i8* %22, i32 1
  store i8* %incdec.ptr10, i8** %bin_data, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %leftbits, align 4
  %cmp11 = icmp eq i32 %23, 2
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.end
  %24 = load i32, i32* %leftchar, align 4
  %and14 = and i32 %24, 3
  %shl15 = shl i32 %and14, 4
  %idxprom16 = zext i32 %shl15 to i64
  %arrayidx17 = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom16
  %25 = load i8, i8* %arrayidx17, align 1
  %26 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr18 = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr18, i8** %ascii_data, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr19 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr19, i8** %ascii_data, align 8
  store i8 61, i8* %27, align 1
  %28 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr20 = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr20, i8** %ascii_data, align 8
  store i8 61, i8* %28, align 1
  br label %if.end.31

if.else:                                          ; preds = %for.end
  %29 = load i32, i32* %leftbits, align 4
  %cmp21 = icmp eq i32 %29, 4
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.else
  %30 = load i32, i32* %leftchar, align 4
  %and24 = and i32 %30, 15
  %shl25 = shl i32 %and24, 2
  %idxprom26 = zext i32 %shl25 to i64
  %arrayidx27 = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom26
  %31 = load i8, i8* %arrayidx27, align 1
  %32 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr28 = getelementptr i8, i8* %32, i32 1
  store i8* %incdec.ptr28, i8** %ascii_data, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr29 = getelementptr i8, i8* %33, i32 1
  store i8* %incdec.ptr29, i8** %ascii_data, align 8
  store i8 61, i8* %33, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.23, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.13
  %34 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr32 = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr32, i8** %ascii_data, align 8
  store i8 10, i8* %34, align 1
  %35 = load i8*, i8** %ascii_data, align 8
  %36 = load %struct._object*, %struct._object** %rv, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyBytesObject*
  %ob_sval33 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %37, i32 0, i32 2
  %arraydecay34 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval33, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call35 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %if.end.31
  br label %do.body

do.body:                                          ; preds = %if.then.38
  %38 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %38, %struct._object** %_py_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp39 = icmp ne %struct._object* %39, null
  br i1 %cmp39, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec43 = add i64 %42, -1
  store i64 %dec43, i64* %ob_refcnt, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.42
  br label %if.end.48

if.else.47:                                       ; preds = %do.body.42
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end

do.end:                                           ; preds = %if.end.48
  br label %if.end.49

if.end.49:                                        ; preds = %do.end, %do.body
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %if.end.31
  %47 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.2, %if.then
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hqx_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %done = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %rrv = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  store i32 0, i32* %done, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %ascii_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %4, 9223372036854775805
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len, align 8
  %add = add i64 %5, 2
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %bin_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i64, i64* %len, align 8
  %cmp6 = icmp sgt i64 %8, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %ascii_data, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @table_a2b_hqx, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  store i8 %11, i8* %this_ch, align 1
  %12 = load i8, i8* %this_ch, align 1
  %conv = zext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv, 126
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  br label %for.inc

if.end.10:                                        ; preds = %for.body
  %13 = load i8, i8* %this_ch, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 125
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %15 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %22 = load i8, i8* %this_ch, align 1
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 127
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 1, i32* %done, align 4
  br label %for.end

if.end.24:                                        ; preds = %if.end.19
  %23 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %23, 6
  %24 = load i8, i8* %this_ch, align 1
  %conv25 = zext i8 %24 to i32
  %or = or i32 %shl, %conv25
  store i32 %or, i32* %leftchar, align 4
  %25 = load i32, i32* %leftbits, align 4
  %add26 = add i32 %25, 6
  store i32 %add26, i32* %leftbits, align 4
  %26 = load i32, i32* %leftbits, align 4
  %cmp27 = icmp sge i32 %26, 8
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.24
  %27 = load i32, i32* %leftbits, align 4
  %sub = sub i32 %27, 8
  store i32 %sub, i32* %leftbits, align 4
  %28 = load i32, i32* %leftchar, align 4
  %29 = load i32, i32* %leftbits, align 4
  %shr = lshr i32 %28, %29
  %and = and i32 %shr, 255
  %conv30 = trunc i32 %and to i8
  %30 = load i8*, i8** %bin_data, align 8
  %incdec.ptr = getelementptr i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %bin_data, align 8
  store i8 %conv30, i8* %30, align 1
  %31 = load i32, i32* %leftbits, align 4
  %shl31 = shl i32 1, %31
  %sub32 = sub i32 %shl31, 1
  %32 = load i32, i32* %leftchar, align 4
  %and33 = and i32 %32, %sub32
  store i32 %and33, i32* %leftchar, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.9
  %33 = load i64, i64* %len, align 8
  %dec35 = add i64 %33, -1
  store i64 %dec35, i64* %len, align 8
  %34 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr36 = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr36, i8** %ascii_data, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %35 = load i32, i32* %leftbits, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.end
  %36 = load i32, i32* %done, align 4
  %tobool37 = icmp ne i32 %36, 0
  br i1 %tobool37, label %if.end.51, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true
  %37 = load %struct._object*, %struct._object** @Incomplete, align 8
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0))
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %38 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp40, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %40, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %43(%struct._object* %44)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true, %for.end
  %45 = load i8*, i8** %bin_data, align 8
  %46 = load %struct._object*, %struct._object** %rv, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyBytesObject*
  %ob_sval52 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %47, i32 0, i32 2
  %arraydecay53 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval52, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call54 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.76

if.then.57:                                       ; preds = %if.end.51
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %48 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %48, %struct._object** %_py_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp59 = icmp ne %struct._object* %49, null
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %do.body.58
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp63, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %52, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %55(%struct._object* %56)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body.58
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %if.end.51
  %57 = load %struct._object*, %struct._object** %rv, align 8
  %tobool77 = icmp ne %struct._object* %57, null
  br i1 %tobool77, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %if.end.76
  %58 = load %struct._object*, %struct._object** %rv, align 8
  %59 = load i32, i32* %done, align 4
  %call79 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), %struct._object* %58, i32 %59)
  store %struct._object* %call79, %struct._object** %rrv, align 8
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.78
  %60 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp81, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %62, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.80
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.80
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %65(%struct._object* %66)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  %67 = load %struct._object*, %struct._object** %rrv, align 8
  store %struct._object* %67, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.76
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.92, %do.end.91, %do.end.50, %do.end, %if.then.4, %if.then
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hqx_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %ascii_data = alloca i8*, align 8
  %bin_data = alloca i8*, align 8
  %leftbits = alloca i32, align 4
  %this_ch = alloca i8, align 1
  %leftchar = alloca i32, align 4
  %rv = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 0, i32* %leftbits, align 4
  store i32 0, i32* %leftchar, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %bin_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %4, 4611686018427387901
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len, align 8
  %mul = mul i64 %5, 2
  %add = add i64 %mul, 2
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ascii_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i64, i64* %len, align 8
  %cmp6 = icmp sgt i64 %8, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %leftchar, align 4
  %shl = shl i32 %9, 8
  %10 = load i8*, i8** %bin_data, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %or = or i32 %shl, %conv
  store i32 %or, i32* %leftchar, align 4
  %12 = load i32, i32* %leftbits, align 4
  %add7 = add i32 %12, 8
  store i32 %add7, i32* %leftbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %13 = load i32, i32* %leftbits, align 4
  %cmp8 = icmp sge i32 %13, 6
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %leftchar, align 4
  %15 = load i32, i32* %leftbits, align 4
  %sub = sub i32 %15, 6
  %shr = lshr i32 %14, %sub
  %and = and i32 %shr, 63
  %conv10 = trunc i32 %and to i8
  store i8 %conv10, i8* %this_ch, align 1
  %16 = load i32, i32* %leftbits, align 4
  %sub11 = sub i32 %16, 6
  store i32 %sub11, i32* %leftbits, align 4
  %17 = load i8, i8* %this_ch, align 1
  %idxprom = zext i8 %17 to i64
  %arrayidx = getelementptr [65 x i8], [65 x i8]* @table_b2a_hqx, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %19 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ascii_data, align 8
  store i8 %18, i8* %19, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %20 = load i64, i64* %len, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %len, align 8
  %21 = load i8*, i8** %bin_data, align 8
  %incdec.ptr12 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr12, i8** %bin_data, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %leftbits, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %for.end
  %23 = load i32, i32* %leftbits, align 4
  %sub14 = sub i32 6, %23
  %24 = load i32, i32* %leftchar, align 4
  %shl15 = shl i32 %24, %sub14
  store i32 %shl15, i32* %leftchar, align 4
  %25 = load i32, i32* %leftchar, align 4
  %and16 = and i32 %25, 63
  %idxprom17 = zext i32 %and16 to i64
  %arrayidx18 = getelementptr [65 x i8], [65 x i8]* @table_b2a_hqx, i32 0, i64 %idxprom17
  %26 = load i8, i8* %arrayidx18, align 1
  %27 = load i8*, i8** %ascii_data, align 8
  %incdec.ptr19 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr19, i8** %ascii_data, align 8
  store i8 %26, i8* %27, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %for.end
  %28 = load i8*, i8** %ascii_data, align 8
  %29 = load %struct._object*, %struct._object** %rv, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyBytesObject*
  %ob_sval21 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %30, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval21, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call23 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %31 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %31, %struct._object** %_py_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp27 = icmp ne %struct._object* %32, null
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec31 = add i64 %35, -1
  store i64 %dec31, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body.30
  br label %if.end.35

if.else:                                          ; preds = %do.body.30
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %if.end.36

if.end.36:                                        ; preds = %do.end, %do.body
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %if.end.20
  %40 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.4, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hex_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %hexstr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %hexstr.addr = alloca %struct.bufferinfo*, align 8
  %argbuf = alloca i8*, align 8
  %arglen = alloca i64, align 8
  %retval1 = alloca %struct._object*, align 8
  %retbuf = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %top = alloca i32, align 4
  %bot = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %hexstr, %struct.bufferinfo** %hexstr.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %hexstr.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %argbuf, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %hexstr.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %arglen, align 8
  %4 = load i64, i64* %arglen, align 8
  %rem = srem i64 %4, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %arglen, align 8
  %div = sdiv i64 %6, 2
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool2 = icmp ne %struct._object* %7, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %retval1, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %retbuf, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %arglen, align 8
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load i8*, i8** %argbuf, align 8
  %arrayidx = getelementptr i8, i8* %13, i64 %12
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %and = and i32 %conv, 255
  %conv5 = trunc i32 %and to i8
  %conv6 = zext i8 %conv5 to i32
  %call7 = call i32 @to_int(i32 %conv6)
  store i32 %call7, i32* %top, align 4
  %15 = load i64, i64* %i, align 8
  %add = add i64 %15, 1
  %16 = load i8*, i8** %argbuf, align 8
  %arrayidx8 = getelementptr i8, i8* %16, i64 %add
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %17 to i32
  %and10 = and i32 %conv9, 255
  %conv11 = trunc i32 %and10 to i8
  %conv12 = zext i8 %conv11 to i32
  %call13 = call i32 @to_int(i32 %conv12)
  store i32 %call13, i32* %bot, align 4
  %18 = load i32, i32* %top, align 4
  %cmp14 = icmp eq i32 %18, -1
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i32, i32* %bot, align 4
  %cmp16 = icmp eq i32 %19, -1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %for.body
  %20 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  br label %finally

if.end.19:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %top, align 4
  %shl = shl i32 %21, 4
  %22 = load i32, i32* %bot, align 4
  %add20 = add i32 %shl, %22
  %conv21 = trunc i32 %add20 to i8
  %23 = load i64, i64* %j, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %j, align 8
  %24 = load i8*, i8** %retbuf, align 8
  %arrayidx22 = getelementptr i8, i8* %24, i64 %23
  store i8 %conv21, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %25 = load i64, i64* %i, align 8
  %add23 = add i64 %25, 2
  store i64 %add23, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

finally:                                          ; preds = %if.then.18
  br label %do.body

do.body:                                          ; preds = %finally
  %27 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end, %if.then.3, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal i32 @to_int(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %and1 = and i32 %1, 4
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %sub = sub i32 %2, 48
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %and2 = and i32 %3, 255
  %conv3 = trunc i32 %and2 to i8
  %idxprom4 = zext i8 %conv3 to i64
  %arrayidx5 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom4
  %4 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %4, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %5 = load i32, i32* %c.addr, align 4
  %and9 = and i32 %5, 255
  %conv10 = trunc i32 %and9 to i8
  %idxprom11 = zext i8 %conv10 to i64
  %arrayidx12 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom11
  %6 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  store i32 %conv13, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  %7 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %7, 97
  br i1 %cmp, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp sle i32 %8, 102
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %c.addr, align 4
  %sub18 = sub i32 %9, 97
  %add = add i32 %sub18, 10
  store i32 %add, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.17, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hex_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %argbuf = alloca i8*, align 8
  %arglen = alloca i64, align 8
  %retval1 = alloca %struct._object*, align 8
  %retbuf = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %c = alloca i8, align 1
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %argbuf, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %arglen, align 8
  %4 = load i64, i64* %arglen, align 8
  %cmp = icmp sgt i64 %4, 4611686018427387903
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %arglen, align 8
  %mul = mul i64 %5, 2
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call2, %struct._object** %retval1, align 8
  %6 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %retval1, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %retbuf, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %arglen, align 8
  %cmp5 = icmp slt i64 %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %argbuf, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %conv6 = trunc i32 %and to i8
  store i8 %conv6, i8* %c, align 1
  %14 = load i8, i8* %c, align 1
  %idxprom = zext i8 %14 to i64
  %15 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx7 = getelementptr i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx7, align 1
  %17 = load i64, i64* %j, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %j, align 8
  %18 = load i8*, i8** %retbuf, align 8
  %arrayidx8 = getelementptr i8, i8* %18, i64 %17
  store i8 %16, i8* %arrayidx8, align 1
  %19 = load i64, i64* %i, align 8
  %20 = load i8*, i8** %argbuf, align 8
  %arrayidx9 = getelementptr i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %21 to i32
  %and11 = and i32 %conv10, 15
  %conv12 = trunc i32 %and11 to i8
  store i8 %conv12, i8* %c, align 1
  %22 = load i8, i8* %c, align 1
  %idxprom13 = zext i8 %22 to i64
  %23 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx14 = getelementptr i8, i8* %23, i64 %idxprom13
  %24 = load i8, i8* %arrayidx14, align 1
  %25 = load i64, i64* %j, align 8
  %inc15 = add i64 %25, 1
  store i64 %inc15, i64* %j, align 8
  %26 = load i8*, i8** %retbuf, align 8
  %arrayidx16 = getelementptr i8, i8* %26, i64 %25
  store i8 %24, i8* %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc17 = add i64 %27, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rlecode_hqx_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %in_data = alloca i8*, align 8
  %out_data = alloca i8*, align 8
  %rv = alloca %struct._object*, align 8
  %ch = alloca i8, align 1
  %in = alloca i64, align 8
  %inend = alloca i64, align 8
  %len = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %in_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %4, 4611686018427387901
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len, align 8
  %mul = mul i64 %5, 2
  %add = add i64 %mul, 2
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add)
  store %struct._object* %call2, %struct._object** %rv, align 8
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %rv, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %out_data, align 8
  store i64 0, i64* %in, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end.5
  %8 = load i64, i64* %in, align 8
  %9 = load i64, i64* %len, align 8
  %cmp6 = icmp slt i64 %8, %9
  br i1 %cmp6, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %in, align 8
  %11 = load i8*, i8** %in_data, align 8
  %arrayidx = getelementptr i8, i8* %11, i64 %10
  %12 = load i8, i8* %arrayidx, align 1
  store i8 %12, i8* %ch, align 1
  %13 = load i8, i8* %ch, align 1
  %conv = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, 144
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %14 = load i8*, i8** %out_data, align 8
  %incdec.ptr = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %out_data, align 8
  store i8 -112, i8* %14, align 1
  %15 = load i8*, i8** %out_data, align 8
  %incdec.ptr10 = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %out_data, align 8
  store i8 0, i8* %15, align 1
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %16 = load i64, i64* %in, align 8
  %add11 = add i64 %16, 1
  store i64 %add11, i64* %inend, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.else
  %17 = load i64, i64* %inend, align 8
  %18 = load i64, i64* %len, align 8
  %cmp13 = icmp slt i64 %17, %18
  br i1 %cmp13, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.12
  %19 = load i64, i64* %inend, align 8
  %20 = load i8*, i8** %in_data, align 8
  %arrayidx15 = getelementptr i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %22 = load i8, i8* %ch, align 1
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv16, %conv17
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %23 = load i64, i64* %inend, align 8
  %24 = load i64, i64* %in, align 8
  %add20 = add i64 %24, 255
  %cmp21 = icmp slt i64 %23, %add20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.12
  %25 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.12 ], [ %cmp21, %land.rhs ]
  br i1 %25, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %26 = load i64, i64* %inend, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %inend, align 8
  br label %for.cond.12

for.end:                                          ; preds = %land.end
  %27 = load i64, i64* %inend, align 8
  %28 = load i64, i64* %in, align 8
  %sub = sub i64 %27, %28
  %cmp24 = icmp sgt i64 %sub, 3
  br i1 %cmp24, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %for.end
  %29 = load i8, i8* %ch, align 1
  %30 = load i8*, i8** %out_data, align 8
  %incdec.ptr27 = getelementptr i8, i8* %30, i32 1
  store i8* %incdec.ptr27, i8** %out_data, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %out_data, align 8
  %incdec.ptr28 = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** %out_data, align 8
  store i8 -112, i8* %31, align 1
  %32 = load i64, i64* %inend, align 8
  %33 = load i64, i64* %in, align 8
  %sub29 = sub i64 %32, %33
  %conv30 = trunc i64 %sub29 to i8
  %34 = load i8*, i8** %out_data, align 8
  %incdec.ptr31 = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr31, i8** %out_data, align 8
  store i8 %conv30, i8* %34, align 1
  %35 = load i64, i64* %inend, align 8
  %sub32 = sub i64 %35, 1
  store i64 %sub32, i64* %in, align 8
  br label %if.end.35

if.else.33:                                       ; preds = %for.end
  %36 = load i8, i8* %ch, align 1
  %37 = load i8*, i8** %out_data, align 8
  %incdec.ptr34 = getelementptr i8, i8* %37, i32 1
  store i8* %incdec.ptr34, i8** %out_data, align 8
  store i8 %36, i8* %37, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.9
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %38 = load i64, i64* %in, align 8
  %inc38 = add i64 %38, 1
  store i64 %inc38, i64* %in, align 8
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %39 = load i8*, i8** %out_data, align 8
  %40 = load %struct._object*, %struct._object** %rv, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyBytesObject*
  %ob_sval40 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %41, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval40, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call42 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %for.end.39
  br label %do.body

do.body:                                          ; preds = %if.then.45
  %42 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %42, %struct._object** %_py_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp46 = icmp ne %struct._object* %43, null
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %44 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.54

if.else.53:                                       ; preds = %do.body.49
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end

do.end:                                           ; preds = %if.end.54
  br label %if.end.55

if.end.55:                                        ; preds = %do.end, %do.body
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %for.end.39
  %51 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.4, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rledecode_hqx_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %in_data = alloca i8*, align 8
  %out_data = alloca i8*, align 8
  %in_byte = alloca i8, align 1
  %in_repeat = alloca i8, align 1
  %rv = alloca %struct._object*, align 8
  %in_len = alloca i64, align 8
  %out_len = alloca i64, align 8
  %out_len_left = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  %_py_xdecref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_xdecref_tmp210 = alloca %struct._object*, align 8
  %_py_decref_tmp215 = alloca %struct._object*, align 8
  %_py_xdecref_tmp260 = alloca %struct._object*, align 8
  %_py_decref_tmp265 = alloca %struct._object*, align 8
  %_py_xdecref_tmp305 = alloca %struct._object*, align 8
  %_py_decref_tmp310 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp345 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %in_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %in_len, align 8
  %4 = load i64, i64* %in_len, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %in_len, align 8
  %cmp1 = icmp sgt i64 %5, 4611686018427387903
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %call3 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %in_len, align 8
  %mul = mul i64 %6, 2
  store i64 %mul, i64* %out_len, align 8
  %7 = load i64, i64* %out_len, align 8
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %7)
  store %struct._object* %call5, %struct._object** %rv, align 8
  %cmp6 = icmp eq %struct._object* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %8 = load i64, i64* %out_len, align 8
  store i64 %8, i64* %out_len_left, align 8
  %9 = load %struct._object*, %struct._object** %rv, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %out_data, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %11 = load i64, i64* %in_len, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %in_len, align 8
  %cmp9 = icmp slt i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** @Incomplete, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %13 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec12 = add i64 %15, -1
  store i64 %dec12, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %do.body
  %20 = load i8*, i8** %in_data, align 8
  %incdec.ptr = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %in_data, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %in_byte, align 1
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %22 = load i8, i8* %in_byte, align 1
  %conv = zext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv, 144
  br i1 %cmp19, label %if.then.21, label %if.else.99

if.then.21:                                       ; preds = %do.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %23 = load i64, i64* %in_len, align 8
  %dec23 = add i64 %23, -1
  store i64 %dec23, i64* %in_len, align 8
  %cmp24 = icmp slt i64 %dec23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %do.body.22
  %24 = load %struct._object*, %struct._object** @Incomplete, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %do.body.22
  %32 = load i8*, i8** %in_data, align 8
  %incdec.ptr40 = getelementptr i8, i8* %32, i32 1
  store i8* %incdec.ptr40, i8** %in_data, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %in_repeat, align 1
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.39
  %34 = load i8, i8* %in_repeat, align 1
  %conv42 = zext i8 %34 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %do.end.41
  %35 = load %struct._object*, %struct._object** @Error, align 8
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0))
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %36 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp47, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %38, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.46
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %41(%struct._object* %42)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %do.end.41
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  %43 = load i64, i64* %out_len_left, align 8
  %dec60 = add i64 %43, -1
  store i64 %dec60, i64* %out_len_left, align 8
  %cmp61 = icmp slt i64 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.96

if.then.63:                                       ; preds = %do.body.59
  %44 = load i64, i64* %out_len, align 8
  %cmp64 = icmp sgt i64 %44, 4611686018427387903
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.63
  %call67 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call67, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.63
  %45 = load i64, i64* %out_len, align 8
  %mul69 = mul i64 2, %45
  %call70 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul69)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.92

if.then.73:                                       ; preds = %if.end.68
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %46 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp75 = icmp ne %struct._object* %47, null
  br i1 %cmp75, label %if.then.77, label %if.end.90

if.then.77:                                       ; preds = %do.body.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp79, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %50, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.78
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.78
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %53(%struct._object* %54)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %do.body.74
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.68
  %55 = load %struct._object*, %struct._object** %rv, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*
  %ob_sval93 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2
  %arraydecay94 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval93, i32 0, i32 0
  %57 = load i64, i64* %out_len, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay94, i64 %57
  store i8* %add.ptr, i8** %out_data, align 8
  %58 = load i64, i64* %out_len, align 8
  %sub = sub i64 %58, 1
  store i64 %sub, i64* %out_len_left, align 8
  %59 = load i64, i64* %out_len, align 8
  %mul95 = mul i64 %59, 2
  store i64 %mul95, i64* %out_len, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.92, %do.body.59
  %60 = load i8*, i8** %out_data, align 8
  %incdec.ptr97 = getelementptr i8, i8* %60, i32 1
  store i8* %incdec.ptr97, i8** %out_data, align 8
  store i8 -112, i8* %60, align 1
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.96
  br label %if.end.143

if.else.99:                                       ; preds = %do.end.18
  br label %do.body.100

do.body.100:                                      ; preds = %if.else.99
  %61 = load i64, i64* %out_len_left, align 8
  %dec101 = add i64 %61, -1
  store i64 %dec101, i64* %out_len_left, align 8
  %cmp102 = icmp slt i64 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.140

if.then.104:                                      ; preds = %do.body.100
  %62 = load i64, i64* %out_len, align 8
  %cmp105 = icmp sgt i64 %62, 4611686018427387903
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.then.104
  %call108 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call108, %struct._object** %retval
  br label %return

if.end.109:                                       ; preds = %if.then.104
  %63 = load i64, i64* %out_len, align 8
  %mul110 = mul i64 2, %63
  %call111 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul110)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.134

if.then.114:                                      ; preds = %if.end.109
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %64 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp116, align 8
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %65, null
  br i1 %cmp117, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %do.body.115
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp121, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %68, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.120
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %71(%struct._object* %72)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.115
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.134:                                       ; preds = %if.end.109
  %73 = load %struct._object*, %struct._object** %rv, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyBytesObject*
  %ob_sval135 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %74, i32 0, i32 2
  %arraydecay136 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval135, i32 0, i32 0
  %75 = load i64, i64* %out_len, align 8
  %add.ptr137 = getelementptr i8, i8* %arraydecay136, i64 %75
  store i8* %add.ptr137, i8** %out_data, align 8
  %76 = load i64, i64* %out_len, align 8
  %sub138 = sub i64 %76, 1
  store i64 %sub138, i64* %out_len_left, align 8
  %77 = load i64, i64* %out_len, align 8
  %mul139 = mul i64 %77, 2
  store i64 %mul139, i64* %out_len, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.134, %do.body.100
  %78 = load i8, i8* %in_byte, align 1
  %79 = load i8*, i8** %out_data, align 8
  %incdec.ptr141 = getelementptr i8, i8* %79, i32 1
  store i8* %incdec.ptr141, i8** %out_data, align 8
  store i8 %78, i8* %79, align 1
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.140
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.end.98
  br label %while.cond

while.cond:                                       ; preds = %if.end.332, %if.end.143
  %80 = load i64, i64* %in_len, align 8
  %cmp144 = icmp sgt i64 %80, 0
  br i1 %cmp144, label %while.body, label %while.end.333

while.body:                                       ; preds = %while.cond
  br label %do.body.146

do.body.146:                                      ; preds = %while.body
  %81 = load i64, i64* %in_len, align 8
  %dec147 = add i64 %81, -1
  store i64 %dec147, i64* %in_len, align 8
  %cmp148 = icmp slt i64 %dec147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.163

if.then.150:                                      ; preds = %do.body.146
  %82 = load %struct._object*, %struct._object** @Incomplete, align 8
  call void @PyErr_SetString(%struct._object* %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  %83 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp152, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt153, align 8
  %dec154 = add i64 %85, -1
  store i64 %dec154, i64* %ob_refcnt153, align 8
  %cmp155 = icmp ne i64 %dec154, 0
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %do.body.151
  br label %if.end.161

if.else.158:                                      ; preds = %do.body.151
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  call void %88(%struct._object* %89)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %do.body.146
  %90 = load i8*, i8** %in_data, align 8
  %incdec.ptr164 = getelementptr i8, i8* %90, i32 1
  store i8* %incdec.ptr164, i8** %in_data, align 8
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %in_byte, align 1
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.163
  %92 = load i8, i8* %in_byte, align 1
  %conv166 = zext i8 %92 to i32
  %cmp167 = icmp eq i32 %conv166, 144
  br i1 %cmp167, label %if.then.169, label %if.else.288

if.then.169:                                      ; preds = %do.end.165
  br label %do.body.170

do.body.170:                                      ; preds = %if.then.169
  %93 = load i64, i64* %in_len, align 8
  %dec171 = add i64 %93, -1
  store i64 %dec171, i64* %in_len, align 8
  %cmp172 = icmp slt i64 %dec171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.187

if.then.174:                                      ; preds = %do.body.170
  %94 = load %struct._object*, %struct._object** @Incomplete, align 8
  call void @PyErr_SetString(%struct._object* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %95 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp176, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %97, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %100(%struct._object* %101)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.187:                                       ; preds = %do.body.170
  %102 = load i8*, i8** %in_data, align 8
  %incdec.ptr188 = getelementptr i8, i8* %102, i32 1
  store i8* %incdec.ptr188, i8** %in_data, align 8
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %in_repeat, align 1
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.187
  %104 = load i8, i8* %in_repeat, align 1
  %conv190 = zext i8 %104 to i32
  %cmp191 = icmp eq i32 %conv190, 0
  br i1 %cmp191, label %if.then.193, label %if.else.237

if.then.193:                                      ; preds = %do.end.189
  br label %do.body.194

do.body.194:                                      ; preds = %if.then.193
  %105 = load i64, i64* %out_len_left, align 8
  %dec195 = add i64 %105, -1
  store i64 %dec195, i64* %out_len_left, align 8
  %cmp196 = icmp slt i64 %dec195, 0
  br i1 %cmp196, label %if.then.198, label %if.end.234

if.then.198:                                      ; preds = %do.body.194
  %106 = load i64, i64* %out_len, align 8
  %cmp199 = icmp sgt i64 %106, 4611686018427387903
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.then.198
  %call202 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call202, %struct._object** %retval
  br label %return

if.end.203:                                       ; preds = %if.then.198
  %107 = load i64, i64* %out_len, align 8
  %mul204 = mul i64 2, %107
  %call205 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul204)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then.208, label %if.end.228

if.then.208:                                      ; preds = %if.end.203
  br label %do.body.209

do.body.209:                                      ; preds = %if.then.208
  %108 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %108, %struct._object** %_py_xdecref_tmp210, align 8
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp210, align 8
  %cmp211 = icmp ne %struct._object* %109, null
  br i1 %cmp211, label %if.then.213, label %if.end.226

if.then.213:                                      ; preds = %do.body.209
  br label %do.body.214

do.body.214:                                      ; preds = %if.then.213
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp210, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp215, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_refcnt216 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt216, align 8
  %dec217 = add i64 %112, -1
  store i64 %dec217, i64* %ob_refcnt216, align 8
  %cmp218 = icmp ne i64 %dec217, 0
  br i1 %cmp218, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %do.body.214
  br label %if.end.224

if.else.221:                                      ; preds = %do.body.214
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  %ob_type222 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type222, align 8
  %tp_dealloc223 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc223, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp215, align 8
  call void %115(%struct._object* %116)
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.221, %if.then.220
  br label %do.end.225

do.end.225:                                       ; preds = %if.end.224
  br label %if.end.226

if.end.226:                                       ; preds = %do.end.225, %do.body.209
  br label %do.end.227

do.end.227:                                       ; preds = %if.end.226
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.228:                                       ; preds = %if.end.203
  %117 = load %struct._object*, %struct._object** %rv, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyBytesObject*
  %ob_sval229 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %118, i32 0, i32 2
  %arraydecay230 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval229, i32 0, i32 0
  %119 = load i64, i64* %out_len, align 8
  %add.ptr231 = getelementptr i8, i8* %arraydecay230, i64 %119
  store i8* %add.ptr231, i8** %out_data, align 8
  %120 = load i64, i64* %out_len, align 8
  %sub232 = sub i64 %120, 1
  store i64 %sub232, i64* %out_len_left, align 8
  %121 = load i64, i64* %out_len, align 8
  %mul233 = mul i64 %121, 2
  store i64 %mul233, i64* %out_len, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.228, %do.body.194
  %122 = load i8*, i8** %out_data, align 8
  %incdec.ptr235 = getelementptr i8, i8* %122, i32 1
  store i8* %incdec.ptr235, i8** %out_data, align 8
  store i8 -112, i8* %122, align 1
  br label %do.end.236

do.end.236:                                       ; preds = %if.end.234
  br label %if.end.287

if.else.237:                                      ; preds = %do.end.189
  %123 = load i8*, i8** %out_data, align 8
  %arrayidx = getelementptr i8, i8* %123, i64 -1
  %124 = load i8, i8* %arrayidx, align 1
  store i8 %124, i8* %in_byte, align 1
  br label %while.cond.238

while.cond.238:                                   ; preds = %do.end.286, %if.else.237
  %125 = load i8, i8* %in_repeat, align 1
  %dec239 = add i8 %125, -1
  store i8 %dec239, i8* %in_repeat, align 1
  %conv240 = zext i8 %dec239 to i32
  %cmp241 = icmp sgt i32 %conv240, 0
  br i1 %cmp241, label %while.body.243, label %while.end

while.body.243:                                   ; preds = %while.cond.238
  br label %do.body.244

do.body.244:                                      ; preds = %while.body.243
  %126 = load i64, i64* %out_len_left, align 8
  %dec245 = add i64 %126, -1
  store i64 %dec245, i64* %out_len_left, align 8
  %cmp246 = icmp slt i64 %dec245, 0
  br i1 %cmp246, label %if.then.248, label %if.end.284

if.then.248:                                      ; preds = %do.body.244
  %127 = load i64, i64* %out_len, align 8
  %cmp249 = icmp sgt i64 %127, 4611686018427387903
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.then.248
  %call252 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call252, %struct._object** %retval
  br label %return

if.end.253:                                       ; preds = %if.then.248
  %128 = load i64, i64* %out_len, align 8
  %mul254 = mul i64 2, %128
  %call255 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul254)
  %cmp256 = icmp slt i32 %call255, 0
  br i1 %cmp256, label %if.then.258, label %if.end.278

if.then.258:                                      ; preds = %if.end.253
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.258
  %129 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %129, %struct._object** %_py_xdecref_tmp260, align 8
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp260, align 8
  %cmp261 = icmp ne %struct._object* %130, null
  br i1 %cmp261, label %if.then.263, label %if.end.276

if.then.263:                                      ; preds = %do.body.259
  br label %do.body.264

do.body.264:                                      ; preds = %if.then.263
  %131 = load %struct._object*, %struct._object** %_py_xdecref_tmp260, align 8
  store %struct._object* %131, %struct._object** %_py_decref_tmp265, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  %ob_refcnt266 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0
  %133 = load i64, i64* %ob_refcnt266, align 8
  %dec267 = add i64 %133, -1
  store i64 %dec267, i64* %ob_refcnt266, align 8
  %cmp268 = icmp ne i64 %dec267, 0
  br i1 %cmp268, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %do.body.264
  br label %if.end.274

if.else.271:                                      ; preds = %do.body.264
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  %ob_type272 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type272, align 8
  %tp_dealloc273 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc273, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  call void %136(%struct._object* %137)
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.271, %if.then.270
  br label %do.end.275

do.end.275:                                       ; preds = %if.end.274
  br label %if.end.276

if.end.276:                                       ; preds = %do.end.275, %do.body.259
  br label %do.end.277

do.end.277:                                       ; preds = %if.end.276
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.278:                                       ; preds = %if.end.253
  %138 = load %struct._object*, %struct._object** %rv, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyBytesObject*
  %ob_sval279 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %139, i32 0, i32 2
  %arraydecay280 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval279, i32 0, i32 0
  %140 = load i64, i64* %out_len, align 8
  %add.ptr281 = getelementptr i8, i8* %arraydecay280, i64 %140
  store i8* %add.ptr281, i8** %out_data, align 8
  %141 = load i64, i64* %out_len, align 8
  %sub282 = sub i64 %141, 1
  store i64 %sub282, i64* %out_len_left, align 8
  %142 = load i64, i64* %out_len, align 8
  %mul283 = mul i64 %142, 2
  store i64 %mul283, i64* %out_len, align 8
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.278, %do.body.244
  %143 = load i8, i8* %in_byte, align 1
  %144 = load i8*, i8** %out_data, align 8
  %incdec.ptr285 = getelementptr i8, i8* %144, i32 1
  store i8* %incdec.ptr285, i8** %out_data, align 8
  store i8 %143, i8* %144, align 1
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.284
  br label %while.cond.238

while.end:                                        ; preds = %while.cond.238
  br label %if.end.287

if.end.287:                                       ; preds = %while.end, %do.end.236
  br label %if.end.332

if.else.288:                                      ; preds = %do.end.165
  br label %do.body.289

do.body.289:                                      ; preds = %if.else.288
  %145 = load i64, i64* %out_len_left, align 8
  %dec290 = add i64 %145, -1
  store i64 %dec290, i64* %out_len_left, align 8
  %cmp291 = icmp slt i64 %dec290, 0
  br i1 %cmp291, label %if.then.293, label %if.end.329

if.then.293:                                      ; preds = %do.body.289
  %146 = load i64, i64* %out_len, align 8
  %cmp294 = icmp sgt i64 %146, 4611686018427387903
  br i1 %cmp294, label %if.then.296, label %if.end.298

if.then.296:                                      ; preds = %if.then.293
  %call297 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call297, %struct._object** %retval
  br label %return

if.end.298:                                       ; preds = %if.then.293
  %147 = load i64, i64* %out_len, align 8
  %mul299 = mul i64 2, %147
  %call300 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul299)
  %cmp301 = icmp slt i32 %call300, 0
  br i1 %cmp301, label %if.then.303, label %if.end.323

if.then.303:                                      ; preds = %if.end.298
  br label %do.body.304

do.body.304:                                      ; preds = %if.then.303
  %148 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %148, %struct._object** %_py_xdecref_tmp305, align 8
  %149 = load %struct._object*, %struct._object** %_py_xdecref_tmp305, align 8
  %cmp306 = icmp ne %struct._object* %149, null
  br i1 %cmp306, label %if.then.308, label %if.end.321

if.then.308:                                      ; preds = %do.body.304
  br label %do.body.309

do.body.309:                                      ; preds = %if.then.308
  %150 = load %struct._object*, %struct._object** %_py_xdecref_tmp305, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp310, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp310, align 8
  %ob_refcnt311 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt311, align 8
  %dec312 = add i64 %152, -1
  store i64 %dec312, i64* %ob_refcnt311, align 8
  %cmp313 = icmp ne i64 %dec312, 0
  br i1 %cmp313, label %if.then.315, label %if.else.316

if.then.315:                                      ; preds = %do.body.309
  br label %if.end.319

if.else.316:                                      ; preds = %do.body.309
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp310, align 8
  %ob_type317 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type317, align 8
  %tp_dealloc318 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc318, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp310, align 8
  call void %155(%struct._object* %156)
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.316, %if.then.315
  br label %do.end.320

do.end.320:                                       ; preds = %if.end.319
  br label %if.end.321

if.end.321:                                       ; preds = %do.end.320, %do.body.304
  br label %do.end.322

do.end.322:                                       ; preds = %if.end.321
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.323:                                       ; preds = %if.end.298
  %157 = load %struct._object*, %struct._object** %rv, align 8
  %158 = bitcast %struct._object* %157 to %struct.PyBytesObject*
  %ob_sval324 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %158, i32 0, i32 2
  %arraydecay325 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval324, i32 0, i32 0
  %159 = load i64, i64* %out_len, align 8
  %add.ptr326 = getelementptr i8, i8* %arraydecay325, i64 %159
  store i8* %add.ptr326, i8** %out_data, align 8
  %160 = load i64, i64* %out_len, align 8
  %sub327 = sub i64 %160, 1
  store i64 %sub327, i64* %out_len_left, align 8
  %161 = load i64, i64* %out_len, align 8
  %mul328 = mul i64 %161, 2
  store i64 %mul328, i64* %out_len, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.323, %do.body.289
  %162 = load i8, i8* %in_byte, align 1
  %163 = load i8*, i8** %out_data, align 8
  %incdec.ptr330 = getelementptr i8, i8* %163, i32 1
  store i8* %incdec.ptr330, i8** %out_data, align 8
  store i8 %162, i8* %163, align 1
  br label %do.end.331

do.end.331:                                       ; preds = %if.end.329
  br label %if.end.332

if.end.332:                                       ; preds = %do.end.331, %if.end.287
  br label %while.cond

while.end.333:                                    ; preds = %while.cond
  %164 = load i8*, i8** %out_data, align 8
  %165 = load %struct._object*, %struct._object** %rv, align 8
  %166 = bitcast %struct._object* %165 to %struct.PyBytesObject*
  %ob_sval334 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %166, i32 0, i32 2
  %arraydecay335 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval334, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %164 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay335 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call336 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.then.339, label %if.end.358

if.then.339:                                      ; preds = %while.end.333
  br label %do.body.340

do.body.340:                                      ; preds = %if.then.339
  %167 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %167, %struct._object** %_py_tmp, align 8
  %168 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp341 = icmp ne %struct._object* %168, null
  br i1 %cmp341, label %if.then.343, label %if.end.356

if.then.343:                                      ; preds = %do.body.340
  store %struct._object* null, %struct._object** %rv, align 8
  br label %do.body.344

do.body.344:                                      ; preds = %if.then.343
  %169 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %169, %struct._object** %_py_decref_tmp345, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  %ob_refcnt346 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0
  %171 = load i64, i64* %ob_refcnt346, align 8
  %dec347 = add i64 %171, -1
  store i64 %dec347, i64* %ob_refcnt346, align 8
  %cmp348 = icmp ne i64 %dec347, 0
  br i1 %cmp348, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %do.body.344
  br label %if.end.354

if.else.351:                                      ; preds = %do.body.344
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  %ob_type352 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type352, align 8
  %tp_dealloc353 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc353, align 8
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp345, align 8
  call void %174(%struct._object* %175)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.351, %if.then.350
  br label %do.end.355

do.end.355:                                       ; preds = %if.end.354
  br label %if.end.356

if.end.356:                                       ; preds = %do.end.355, %do.body.340
  br label %do.end.357

do.end.357:                                       ; preds = %if.end.356
  br label %if.end.358

if.end.358:                                       ; preds = %do.end.357, %while.end.333
  %176 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %176, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.358, %do.end.322, %if.then.296, %do.end.277, %if.then.251, %do.end.227, %if.then.201, %do.end.186, %do.end.162, %do.end.133, %if.then.107, %do.end.91, %if.then.66, %do.end.57, %do.end.38, %do.end, %if.then.7, %if.then.2, %if.then
  %177 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %177
}

; Function Attrs: nounwind uwtable
define internal i32 @binascii_crc_hqx_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %crc) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %crc.addr = alloca i32, align 4
  %bin_data = alloca i8*, align 8
  %ucrc = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %crc, i32* %crc.addr, align 4
  %0 = load i32, i32* %crc.addr, align 4
  store i32 %0, i32* %ucrc, align 4
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  store i8* %2, i8** %bin_data, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 2
  %4 = load i64, i64* %len1, align 8
  store i64 %4, i64* %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i64, i64* %len, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len, align 8
  %cmp = icmp sgt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %ucrc, align 4
  %shl = shl i32 %6, 8
  %and = and i32 %shl, 65280
  %7 = load i32, i32* %ucrc, align 4
  %shr = lshr i32 %7, 8
  %and2 = and i32 %shr, 255
  %8 = load i8*, i8** %bin_data, align 8
  %incdec.ptr = getelementptr i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %bin_data, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %xor = xor i32 %and2, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @crctab_hqx, i32 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %10 to i32
  %xor4 = xor i32 %and, %conv3
  store i32 %xor4, i32* %ucrc, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %ucrc, align 4
  ret i32 %11
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @binascii_crc32_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %crc) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %crc.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %signed_val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %crc, i32* %crc.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf1, align 8
  store i8* %1, i8** %buf, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len2, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i32, i32* %crc.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %len, align 8
  %conv3 = trunc i64 %6 to i32
  %call = call i64 @crc32(i64 %conv, i8* %5, i32 %conv3)
  %conv4 = trunc i64 %call to i32
  store i32 %conv4, i32* %signed_val, align 4
  %7 = load i32, i32* %signed_val, align 4
  ret i32 %7
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare i64 @crc32(i64, i8*, i32) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_qp_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %header) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %header.addr = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %ch = alloca i8, align 1
  %ascii_data = alloca i8*, align 8
  %odata = alloca i8*, align 8
  %datalen = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %header, i32* %header.addr, align 4
  store i64 0, i64* %datalen, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %ascii_data, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %datalen, align 8
  %4 = load i64, i64* %datalen, align 8
  %call = call i8* @PyMem_Malloc(i64 %4)
  store i8* %call, i8** %odata, align 8
  %5 = load i8*, i8** %odata, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %odata, align 8
  %7 = load i64, i64* %datalen, align 8
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %7, i32 1, i1 false)
  store i64 0, i64* %out, align 8
  store i64 0, i64* %in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.148, %if.end
  %8 = load i64, i64* %in, align 8
  %9 = load i64, i64* %datalen, align 8
  %cmp2 = icmp slt i64 %8, %9
  br i1 %cmp2, label %while.body, label %while.end.149

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %in, align 8
  %11 = load i8*, i8** %ascii_data, align 8
  %arrayidx = getelementptr i8, i8* %11, i64 %10
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 61
  br i1 %cmp3, label %if.then.5, label %if.else.132

if.then.5:                                        ; preds = %while.body
  %13 = load i64, i64* %in, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %in, align 8
  %14 = load i64, i64* %in, align 8
  %15 = load i64, i64* %datalen, align 8
  %cmp6 = icmp sge i64 %14, %15
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %while.end.149

if.end.9:                                         ; preds = %if.then.5
  %16 = load i64, i64* %in, align 8
  %17 = load i8*, i8** %ascii_data, align 8
  %arrayidx10 = getelementptr i8, i8* %17, i64 %16
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 10
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %19 = load i64, i64* %in, align 8
  %20 = load i8*, i8** %ascii_data, align 8
  %arrayidx14 = getelementptr i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %cmp16 = icmp eq i32 %conv15, 13
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.9
  %22 = load i64, i64* %in, align 8
  %23 = load i8*, i8** %ascii_data, align 8
  %arrayidx19 = getelementptr i8, i8* %23, i64 %22
  %24 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  %cmp21 = icmp ne i32 %conv20, 10
  br i1 %cmp21, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %if.then.18
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.31, %if.then.23
  %25 = load i64, i64* %in, align 8
  %26 = load i64, i64* %datalen, align 8
  %cmp25 = icmp slt i64 %25, %26
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.24
  %27 = load i64, i64* %in, align 8
  %28 = load i8*, i8** %ascii_data, align 8
  %arrayidx27 = getelementptr i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %29 to i32
  %cmp29 = icmp ne i32 %conv28, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.24
  %30 = phi i1 [ false, %while.cond.24 ], [ %cmp29, %land.rhs ]
  br i1 %30, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %land.end
  %31 = load i64, i64* %in, align 8
  %inc32 = add i64 %31, 1
  store i64 %inc32, i64* %in, align 8
  br label %while.cond.24

while.end:                                        ; preds = %land.end
  br label %if.end.33

if.end.33:                                        ; preds = %while.end, %if.then.18
  %32 = load i64, i64* %in, align 8
  %33 = load i64, i64* %datalen, align 8
  %cmp34 = icmp slt i64 %32, %33
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %34 = load i64, i64* %in, align 8
  %inc37 = add i64 %34, 1
  store i64 %inc37, i64* %in, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.131

if.else:                                          ; preds = %lor.lhs.false
  %35 = load i64, i64* %in, align 8
  %36 = load i8*, i8** %ascii_data, align 8
  %arrayidx39 = getelementptr i8, i8* %36, i64 %35
  %37 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %37 to i32
  %cmp41 = icmp eq i32 %conv40, 61
  br i1 %cmp41, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.else
  %38 = load i64, i64* %out, align 8
  %inc44 = add i64 %38, 1
  store i64 %inc44, i64* %out, align 8
  %39 = load i8*, i8** %odata, align 8
  %arrayidx45 = getelementptr i8, i8* %39, i64 %38
  store i8 61, i8* %arrayidx45, align 1
  %40 = load i64, i64* %in, align 8
  %inc46 = add i64 %40, 1
  store i64 %inc46, i64* %in, align 8
  br label %if.end.130

if.else.47:                                       ; preds = %if.else
  %41 = load i64, i64* %in, align 8
  %42 = load i8*, i8** %ascii_data, align 8
  %arrayidx48 = getelementptr i8, i8* %42, i64 %41
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %cmp50 = icmp sge i32 %conv49, 65
  br i1 %cmp50, label %land.lhs.true, label %lor.lhs.false.56

land.lhs.true:                                    ; preds = %if.else.47
  %44 = load i64, i64* %in, align 8
  %45 = load i8*, i8** %ascii_data, align 8
  %arrayidx52 = getelementptr i8, i8* %45, i64 %44
  %46 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %46 to i32
  %cmp54 = icmp sle i32 %conv53, 70
  br i1 %cmp54, label %land.lhs.true.76, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %land.lhs.true, %if.else.47
  %47 = load i64, i64* %in, align 8
  %48 = load i8*, i8** %ascii_data, align 8
  %arrayidx57 = getelementptr i8, i8* %48, i64 %47
  %49 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp sge i32 %conv58, 97
  br i1 %cmp59, label %land.lhs.true.61, label %lor.lhs.false.66

land.lhs.true.61:                                 ; preds = %lor.lhs.false.56
  %50 = load i64, i64* %in, align 8
  %51 = load i8*, i8** %ascii_data, align 8
  %arrayidx62 = getelementptr i8, i8* %51, i64 %50
  %52 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %52 to i32
  %cmp64 = icmp sle i32 %conv63, 102
  br i1 %cmp64, label %land.lhs.true.76, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.56
  %53 = load i64, i64* %in, align 8
  %54 = load i8*, i8** %ascii_data, align 8
  %arrayidx67 = getelementptr i8, i8* %54, i64 %53
  %55 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %55 to i32
  %cmp69 = icmp sge i32 %conv68, 48
  br i1 %cmp69, label %land.lhs.true.71, label %if.else.126

land.lhs.true.71:                                 ; preds = %lor.lhs.false.66
  %56 = load i64, i64* %in, align 8
  %57 = load i8*, i8** %ascii_data, align 8
  %arrayidx72 = getelementptr i8, i8* %57, i64 %56
  %58 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %58 to i32
  %cmp74 = icmp sle i32 %conv73, 57
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.126

land.lhs.true.76:                                 ; preds = %land.lhs.true.71, %land.lhs.true.61, %land.lhs.true
  %59 = load i64, i64* %in, align 8
  %add = add i64 %59, 1
  %60 = load i8*, i8** %ascii_data, align 8
  %arrayidx77 = getelementptr i8, i8* %60, i64 %add
  %61 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %61 to i32
  %cmp79 = icmp sge i32 %conv78, 65
  br i1 %cmp79, label %land.lhs.true.81, label %lor.lhs.false.87

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %62 = load i64, i64* %in, align 8
  %add82 = add i64 %62, 1
  %63 = load i8*, i8** %ascii_data, align 8
  %arrayidx83 = getelementptr i8, i8* %63, i64 %add82
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %cmp85 = icmp sle i32 %conv84, 70
  br i1 %cmp85, label %if.then.111, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %land.lhs.true.81, %land.lhs.true.76
  %65 = load i64, i64* %in, align 8
  %add88 = add i64 %65, 1
  %66 = load i8*, i8** %ascii_data, align 8
  %arrayidx89 = getelementptr i8, i8* %66, i64 %add88
  %67 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %67 to i32
  %cmp91 = icmp sge i32 %conv90, 97
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.99

land.lhs.true.93:                                 ; preds = %lor.lhs.false.87
  %68 = load i64, i64* %in, align 8
  %add94 = add i64 %68, 1
  %69 = load i8*, i8** %ascii_data, align 8
  %arrayidx95 = getelementptr i8, i8* %69, i64 %add94
  %70 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %70 to i32
  %cmp97 = icmp sle i32 %conv96, 102
  br i1 %cmp97, label %if.then.111, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.93, %lor.lhs.false.87
  %71 = load i64, i64* %in, align 8
  %add100 = add i64 %71, 1
  %72 = load i8*, i8** %ascii_data, align 8
  %arrayidx101 = getelementptr i8, i8* %72, i64 %add100
  %73 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %73 to i32
  %cmp103 = icmp sge i32 %conv102, 48
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.126

land.lhs.true.105:                                ; preds = %lor.lhs.false.99
  %74 = load i64, i64* %in, align 8
  %add106 = add i64 %74, 1
  %75 = load i8*, i8** %ascii_data, align 8
  %arrayidx107 = getelementptr i8, i8* %75, i64 %add106
  %76 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %76 to i32
  %cmp109 = icmp sle i32 %conv108, 57
  br i1 %cmp109, label %if.then.111, label %if.else.126

if.then.111:                                      ; preds = %land.lhs.true.105, %land.lhs.true.93, %land.lhs.true.81
  %77 = load i64, i64* %in, align 8
  %78 = load i8*, i8** %ascii_data, align 8
  %arrayidx112 = getelementptr i8, i8* %78, i64 %77
  %79 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %79 to i32
  %idxprom = zext i32 %conv113 to i64
  %arrayidx114 = getelementptr [128 x i32], [128 x i32]* @table_hex, i32 0, i64 %idxprom
  %80 = load i32, i32* %arrayidx114, align 4
  %shl = shl i32 %80, 4
  %conv115 = trunc i32 %shl to i8
  store i8 %conv115, i8* %ch, align 1
  %81 = load i64, i64* %in, align 8
  %inc116 = add i64 %81, 1
  store i64 %inc116, i64* %in, align 8
  %82 = load i64, i64* %in, align 8
  %83 = load i8*, i8** %ascii_data, align 8
  %arrayidx117 = getelementptr i8, i8* %83, i64 %82
  %84 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %84 to i32
  %idxprom119 = zext i32 %conv118 to i64
  %arrayidx120 = getelementptr [128 x i32], [128 x i32]* @table_hex, i32 0, i64 %idxprom119
  %85 = load i32, i32* %arrayidx120, align 4
  %86 = load i8, i8* %ch, align 1
  %conv121 = sext i8 %86 to i32
  %or = or i32 %conv121, %85
  %conv122 = trunc i32 %or to i8
  store i8 %conv122, i8* %ch, align 1
  %87 = load i64, i64* %in, align 8
  %inc123 = add i64 %87, 1
  store i64 %inc123, i64* %in, align 8
  %88 = load i8, i8* %ch, align 1
  %89 = load i64, i64* %out, align 8
  %inc124 = add i64 %89, 1
  store i64 %inc124, i64* %out, align 8
  %90 = load i8*, i8** %odata, align 8
  %arrayidx125 = getelementptr i8, i8* %90, i64 %89
  store i8 %88, i8* %arrayidx125, align 1
  br label %if.end.129

if.else.126:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.99, %land.lhs.true.71, %lor.lhs.false.66
  %91 = load i64, i64* %out, align 8
  %inc127 = add i64 %91, 1
  store i64 %inc127, i64* %out, align 8
  %92 = load i8*, i8** %odata, align 8
  %arrayidx128 = getelementptr i8, i8* %92, i64 %91
  store i8 61, i8* %arrayidx128, align 1
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.111
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.43
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.38
  br label %if.end.148

if.else.132:                                      ; preds = %while.body
  %93 = load i32, i32* %header.addr, align 4
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %land.lhs.true.133, label %if.else.142

land.lhs.true.133:                                ; preds = %if.else.132
  %94 = load i64, i64* %in, align 8
  %95 = load i8*, i8** %ascii_data, align 8
  %arrayidx134 = getelementptr i8, i8* %95, i64 %94
  %96 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %96 to i32
  %cmp136 = icmp eq i32 %conv135, 95
  br i1 %cmp136, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %land.lhs.true.133
  %97 = load i64, i64* %out, align 8
  %inc139 = add i64 %97, 1
  store i64 %inc139, i64* %out, align 8
  %98 = load i8*, i8** %odata, align 8
  %arrayidx140 = getelementptr i8, i8* %98, i64 %97
  store i8 32, i8* %arrayidx140, align 1
  %99 = load i64, i64* %in, align 8
  %inc141 = add i64 %99, 1
  store i64 %inc141, i64* %in, align 8
  br label %if.end.147

if.else.142:                                      ; preds = %land.lhs.true.133, %if.else.132
  %100 = load i64, i64* %in, align 8
  %101 = load i8*, i8** %ascii_data, align 8
  %arrayidx143 = getelementptr i8, i8* %101, i64 %100
  %102 = load i8, i8* %arrayidx143, align 1
  %103 = load i64, i64* %out, align 8
  %104 = load i8*, i8** %odata, align 8
  %arrayidx144 = getelementptr i8, i8* %104, i64 %103
  store i8 %102, i8* %arrayidx144, align 1
  %105 = load i64, i64* %in, align 8
  %inc145 = add i64 %105, 1
  store i64 %inc145, i64* %in, align 8
  %106 = load i64, i64* %out, align 8
  %inc146 = add i64 %106, 1
  store i64 %inc146, i64* %out, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.then.138
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.131
  br label %while.cond

while.end.149:                                    ; preds = %if.then.8, %while.cond
  %107 = load i8*, i8** %odata, align 8
  %108 = load i64, i64* %out, align 8
  %call150 = call %struct._object* @PyBytes_FromStringAndSize(i8* %107, i64 %108)
  store %struct._object* %call150, %struct._object** %rv, align 8
  %cmp151 = icmp eq %struct._object* %call150, null
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %while.end.149
  %109 = load i8*, i8** %odata, align 8
  call void @PyMem_Free(i8* %109)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.154:                                       ; preds = %while.end.149
  %110 = load i8*, i8** %odata, align 8
  call void @PyMem_Free(i8* %110)
  %111 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %111, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.154, %if.then.153, %if.then
  %112 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %112
}

declare i8* @PyMem_Malloc(i64) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_qp_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %quotetabs, i32 %istext, i32 %header) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %quotetabs.addr = alloca i32, align 4
  %istext.addr = alloca i32, align 4
  %header.addr = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %databuf = alloca i8*, align 8
  %odata = alloca i8*, align 8
  %datalen = alloca i64, align 8
  %odatalen = alloca i64, align 8
  %rv = alloca %struct._object*, align 8
  %linelen = alloca i32, align 4
  %ch = alloca i8, align 1
  %crlf = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %quotetabs, i32* %quotetabs.addr, align 4
  store i32 %istext, i32* %istext.addr, align 4
  store i32 %header, i32* %header.addr, align 4
  store i64 0, i64* %datalen, align 8
  store i64 0, i64* %odatalen, align 8
  store i32 0, i32* %linelen, align 4
  store i32 0, i32* %crlf, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %databuf, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %datalen, align 8
  %4 = load i8*, i8** %databuf, align 8
  %5 = load i64, i64* %datalen, align 8
  %call = call i8* @memchr(i8* %4, i32 10, i64 %5) #4
  store i8* %call, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %databuf, align 8
  %cmp1 = icmp ugt i8* %7, %8
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 -1
  %10 = load i8, i8* %add.ptr, align 1
  %conv = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %crlf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  store i64 0, i64* %in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.190, %if.end
  %11 = load i64, i64* %in, align 8
  %12 = load i64, i64* %datalen, align 8
  %cmp5 = icmp slt i64 %11, %12
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %in, align 8
  %14 = load i8*, i8** %databuf, align 8
  %arrayidx = getelementptr i8, i8* %14, i64 %13
  %15 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp sgt i32 %conv7, 126
  br i1 %cmp8, label %if.then.98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %16 = load i64, i64* %in, align 8
  %17 = load i8*, i8** %databuf, align 8
  %arrayidx10 = getelementptr i8, i8* %17, i64 %16
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 61
  br i1 %cmp12, label %if.then.98, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %header.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true.15, label %lor.lhs.false.20

land.lhs.true.15:                                 ; preds = %lor.lhs.false.14
  %20 = load i64, i64* %in, align 8
  %21 = load i8*, i8** %databuf, align 8
  %arrayidx16 = getelementptr i8, i8* %21, i64 %20
  %22 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 95
  br i1 %cmp18, label %if.then.98, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.15, %lor.lhs.false.14
  %23 = load i64, i64* %in, align 8
  %24 = load i8*, i8** %databuf, align 8
  %arrayidx21 = getelementptr i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %25 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.45

land.lhs.true.25:                                 ; preds = %lor.lhs.false.20
  %26 = load i32, i32* %linelen, align 4
  %cmp26 = icmp eq i32 %26, 0
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false.45

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %27 = load i64, i64* %in, align 8
  %add = add i64 %27, 1
  %28 = load i8*, i8** %databuf, align 8
  %arrayidx29 = getelementptr i8, i8* %28, i64 %add
  %29 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %29 to i32
  %cmp31 = icmp eq i32 %conv30, 10
  br i1 %cmp31, label %if.then.98, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.28
  %30 = load i64, i64* %in, align 8
  %add34 = add i64 %30, 1
  %31 = load i8*, i8** %databuf, align 8
  %arrayidx35 = getelementptr i8, i8* %31, i64 %add34
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 13
  br i1 %cmp37, label %if.then.98, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.33
  %33 = load i64, i64* %in, align 8
  %add40 = add i64 %33, 1
  %34 = load i8*, i8** %databuf, align 8
  %arrayidx41 = getelementptr i8, i8* %34, i64 %add40
  %35 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %35 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.98, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.39, %land.lhs.true.25, %lor.lhs.false.20
  %36 = load i32, i32* %istext.addr, align 4
  %tobool46 = icmp ne i32 %36, 0
  br i1 %tobool46, label %lor.lhs.false.57, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %37 = load i64, i64* %in, align 8
  %38 = load i8*, i8** %databuf, align 8
  %arrayidx48 = getelementptr i8, i8* %38, i64 %37
  %39 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %39 to i32
  %cmp50 = icmp eq i32 %conv49, 13
  br i1 %cmp50, label %if.then.98, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.47
  %40 = load i64, i64* %in, align 8
  %41 = load i8*, i8** %databuf, align 8
  %arrayidx53 = getelementptr i8, i8* %41, i64 %40
  %42 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %42 to i32
  %cmp55 = icmp eq i32 %conv54, 10
  br i1 %cmp55, label %if.then.98, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.52, %lor.lhs.false.45
  %43 = load i64, i64* %in, align 8
  %44 = load i8*, i8** %databuf, align 8
  %arrayidx58 = getelementptr i8, i8* %44, i64 %43
  %45 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %45 to i32
  %cmp60 = icmp eq i32 %conv59, 9
  br i1 %cmp60, label %land.lhs.true.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %46 = load i64, i64* %in, align 8
  %47 = load i8*, i8** %databuf, align 8
  %arrayidx63 = getelementptr i8, i8* %47, i64 %46
  %48 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %48 to i32
  %cmp65 = icmp eq i32 %conv64, 32
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false.71

land.lhs.true.67:                                 ; preds = %lor.lhs.false.62, %lor.lhs.false.57
  %49 = load i64, i64* %in, align 8
  %add68 = add i64 %49, 1
  %50 = load i64, i64* %datalen, align 8
  %cmp69 = icmp eq i64 %add68, %50
  br i1 %cmp69, label %if.then.98, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.67, %lor.lhs.false.62
  %51 = load i64, i64* %in, align 8
  %52 = load i8*, i8** %databuf, align 8
  %arrayidx72 = getelementptr i8, i8* %52, i64 %51
  %53 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %53 to i32
  %cmp74 = icmp slt i32 %conv73, 33
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.111

land.lhs.true.76:                                 ; preds = %lor.lhs.false.71
  %54 = load i64, i64* %in, align 8
  %55 = load i8*, i8** %databuf, align 8
  %arrayidx77 = getelementptr i8, i8* %55, i64 %54
  %56 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %56 to i32
  %cmp79 = icmp ne i32 %conv78, 13
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.111

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %57 = load i64, i64* %in, align 8
  %58 = load i8*, i8** %databuf, align 8
  %arrayidx82 = getelementptr i8, i8* %58, i64 %57
  %59 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %59 to i32
  %cmp84 = icmp ne i32 %conv83, 10
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.111

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %60 = load i32, i32* %quotetabs.addr, align 4
  %tobool87 = icmp ne i32 %60, 0
  br i1 %tobool87, label %if.then.98, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %land.lhs.true.86
  %61 = load i64, i64* %in, align 8
  %62 = load i8*, i8** %databuf, align 8
  %arrayidx89 = getelementptr i8, i8* %62, i64 %61
  %63 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %63 to i32
  %cmp91 = icmp ne i32 %conv90, 9
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.111

land.lhs.true.93:                                 ; preds = %lor.lhs.false.88
  %64 = load i64, i64* %in, align 8
  %65 = load i8*, i8** %databuf, align 8
  %arrayidx94 = getelementptr i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %66 to i32
  %cmp96 = icmp ne i32 %conv95, 32
  br i1 %cmp96, label %if.then.98, label %if.else.111

if.then.98:                                       ; preds = %land.lhs.true.93, %land.lhs.true.86, %land.lhs.true.67, %lor.lhs.false.52, %land.lhs.true.47, %lor.lhs.false.39, %lor.lhs.false.33, %land.lhs.true.28, %land.lhs.true.15, %lor.lhs.false, %while.body
  %67 = load i32, i32* %linelen, align 4
  %add99 = add i32 %67, 3
  %cmp100 = icmp uge i32 %add99, 76
  br i1 %cmp100, label %if.then.102, label %if.end.108

if.then.102:                                      ; preds = %if.then.98
  store i32 0, i32* %linelen, align 4
  %68 = load i32, i32* %crlf, align 4
  %tobool103 = icmp ne i32 %68, 0
  br i1 %tobool103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.102
  %69 = load i64, i64* %odatalen, align 8
  %add105 = add i64 %69, 3
  store i64 %add105, i64* %odatalen, align 8
  br label %if.end.107

if.else:                                          ; preds = %if.then.102
  %70 = load i64, i64* %odatalen, align 8
  %add106 = add i64 %70, 2
  store i64 %add106, i64* %odatalen, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.98
  %71 = load i32, i32* %linelen, align 4
  %add109 = add i32 %71, 3
  store i32 %add109, i32* %linelen, align 4
  %72 = load i64, i64* %odatalen, align 8
  %add110 = add i64 %72, 3
  store i64 %add110, i64* %odatalen, align 8
  %73 = load i64, i64* %in, align 8
  %inc = add i64 %73, 1
  store i64 %inc, i64* %in, align 8
  br label %if.end.190

if.else.111:                                      ; preds = %land.lhs.true.93, %lor.lhs.false.88, %land.lhs.true.81, %land.lhs.true.76, %lor.lhs.false.71
  %74 = load i32, i32* %istext.addr, align 4
  %tobool112 = icmp ne i32 %74, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.else.164

land.lhs.true.113:                                ; preds = %if.else.111
  %75 = load i64, i64* %in, align 8
  %76 = load i8*, i8** %databuf, align 8
  %arrayidx114 = getelementptr i8, i8* %76, i64 %75
  %77 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %77 to i32
  %cmp116 = icmp eq i32 %conv115, 10
  br i1 %cmp116, label %if.then.133, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.113
  %78 = load i64, i64* %in, align 8
  %add119 = add i64 %78, 1
  %79 = load i64, i64* %datalen, align 8
  %cmp120 = icmp slt i64 %add119, %79
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.164

land.lhs.true.122:                                ; preds = %lor.lhs.false.118
  %80 = load i64, i64* %in, align 8
  %81 = load i8*, i8** %databuf, align 8
  %arrayidx123 = getelementptr i8, i8* %81, i64 %80
  %82 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %82 to i32
  %cmp125 = icmp eq i32 %conv124, 13
  br i1 %cmp125, label %land.lhs.true.127, label %if.else.164

land.lhs.true.127:                                ; preds = %land.lhs.true.122
  %83 = load i64, i64* %in, align 8
  %add128 = add i64 %83, 1
  %84 = load i8*, i8** %databuf, align 8
  %arrayidx129 = getelementptr i8, i8* %84, i64 %add128
  %85 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %85 to i32
  %cmp131 = icmp eq i32 %conv130, 10
  br i1 %cmp131, label %if.then.133, label %if.else.164

if.then.133:                                      ; preds = %land.lhs.true.127, %land.lhs.true.113
  store i32 0, i32* %linelen, align 4
  %86 = load i64, i64* %in, align 8
  %tobool134 = icmp ne i64 %86, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.148

land.lhs.true.135:                                ; preds = %if.then.133
  %87 = load i64, i64* %in, align 8
  %sub = sub i64 %87, 1
  %88 = load i8*, i8** %databuf, align 8
  %arrayidx136 = getelementptr i8, i8* %88, i64 %sub
  %89 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %89 to i32
  %cmp138 = icmp eq i32 %conv137, 32
  br i1 %cmp138, label %if.then.146, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %land.lhs.true.135
  %90 = load i64, i64* %in, align 8
  %sub141 = sub i64 %90, 1
  %91 = load i8*, i8** %databuf, align 8
  %arrayidx142 = getelementptr i8, i8* %91, i64 %sub141
  %92 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %92 to i32
  %cmp144 = icmp eq i32 %conv143, 9
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %lor.lhs.false.140, %land.lhs.true.135
  %93 = load i64, i64* %odatalen, align 8
  %add147 = add i64 %93, 2
  store i64 %add147, i64* %odatalen, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %lor.lhs.false.140, %if.then.133
  %94 = load i32, i32* %crlf, align 4
  %tobool149 = icmp ne i32 %94, 0
  br i1 %tobool149, label %if.then.150, label %if.else.152

if.then.150:                                      ; preds = %if.end.148
  %95 = load i64, i64* %odatalen, align 8
  %add151 = add i64 %95, 2
  store i64 %add151, i64* %odatalen, align 8
  br label %if.end.154

if.else.152:                                      ; preds = %if.end.148
  %96 = load i64, i64* %odatalen, align 8
  %add153 = add i64 %96, 1
  store i64 %add153, i64* %odatalen, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.150
  %97 = load i64, i64* %in, align 8
  %98 = load i8*, i8** %databuf, align 8
  %arrayidx155 = getelementptr i8, i8* %98, i64 %97
  %99 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %99 to i32
  %cmp157 = icmp eq i32 %conv156, 13
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.end.154
  %100 = load i64, i64* %in, align 8
  %add160 = add i64 %100, 2
  store i64 %add160, i64* %in, align 8
  br label %if.end.163

if.else.161:                                      ; preds = %if.end.154
  %101 = load i64, i64* %in, align 8
  %inc162 = add i64 %101, 1
  store i64 %inc162, i64* %in, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.189

if.else.164:                                      ; preds = %land.lhs.true.127, %land.lhs.true.122, %lor.lhs.false.118, %if.else.111
  %102 = load i64, i64* %in, align 8
  %add165 = add i64 %102, 1
  %103 = load i64, i64* %datalen, align 8
  %cmp166 = icmp ne i64 %add165, %103
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.185

land.lhs.true.168:                                ; preds = %if.else.164
  %104 = load i64, i64* %in, align 8
  %add169 = add i64 %104, 1
  %105 = load i8*, i8** %databuf, align 8
  %arrayidx170 = getelementptr i8, i8* %105, i64 %add169
  %106 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %106 to i32
  %cmp172 = icmp ne i32 %conv171, 10
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.185

land.lhs.true.174:                                ; preds = %land.lhs.true.168
  %107 = load i32, i32* %linelen, align 4
  %add175 = add i32 %107, 1
  %cmp176 = icmp uge i32 %add175, 76
  br i1 %cmp176, label %if.then.178, label %if.end.185

if.then.178:                                      ; preds = %land.lhs.true.174
  store i32 0, i32* %linelen, align 4
  %108 = load i32, i32* %crlf, align 4
  %tobool179 = icmp ne i32 %108, 0
  br i1 %tobool179, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %if.then.178
  %109 = load i64, i64* %odatalen, align 8
  %add181 = add i64 %109, 3
  store i64 %add181, i64* %odatalen, align 8
  br label %if.end.184

if.else.182:                                      ; preds = %if.then.178
  %110 = load i64, i64* %odatalen, align 8
  %add183 = add i64 %110, 2
  store i64 %add183, i64* %odatalen, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.182, %if.then.180
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.174, %land.lhs.true.168, %if.else.164
  %111 = load i32, i32* %linelen, align 4
  %inc186 = add i32 %111, 1
  store i32 %inc186, i32* %linelen, align 4
  %112 = load i64, i64* %odatalen, align 8
  %inc187 = add i64 %112, 1
  store i64 %inc187, i64* %odatalen, align 8
  %113 = load i64, i64* %in, align 8
  %inc188 = add i64 %113, 1
  store i64 %inc188, i64* %in, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.185, %if.end.163
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.108
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %114 = load i64, i64* %odatalen, align 8
  %call191 = call i8* @PyMem_Malloc(i64 %114)
  store i8* %call191, i8** %odata, align 8
  %115 = load i8*, i8** %odata, align 8
  %cmp192 = icmp eq i8* %115, null
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %while.end
  %call195 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.196:                                       ; preds = %while.end
  %116 = load i8*, i8** %odata, align 8
  %117 = load i64, i64* %odatalen, align 8
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 %117, i32 1, i1 false)
  store i32 0, i32* %linelen, align 4
  store i64 0, i64* %out, align 8
  store i64 0, i64* %in, align 8
  br label %while.cond.197

while.cond.197:                                   ; preds = %if.end.425, %if.end.196
  %118 = load i64, i64* %in, align 8
  %119 = load i64, i64* %datalen, align 8
  %cmp198 = icmp slt i64 %118, %119
  br i1 %cmp198, label %while.body.200, label %while.end.426

while.body.200:                                   ; preds = %while.cond.197
  %120 = load i64, i64* %in, align 8
  %121 = load i8*, i8** %databuf, align 8
  %arrayidx201 = getelementptr i8, i8* %121, i64 %120
  %122 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %122 to i32
  %cmp203 = icmp sgt i32 %conv202, 126
  br i1 %cmp203, label %if.then.298, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %while.body.200
  %123 = load i64, i64* %in, align 8
  %124 = load i8*, i8** %databuf, align 8
  %arrayidx206 = getelementptr i8, i8* %124, i64 %123
  %125 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %125 to i32
  %cmp208 = icmp eq i32 %conv207, 61
  br i1 %cmp208, label %if.then.298, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %lor.lhs.false.205
  %126 = load i32, i32* %header.addr, align 4
  %tobool211 = icmp ne i32 %126, 0
  br i1 %tobool211, label %land.lhs.true.212, label %lor.lhs.false.217

land.lhs.true.212:                                ; preds = %lor.lhs.false.210
  %127 = load i64, i64* %in, align 8
  %128 = load i8*, i8** %databuf, align 8
  %arrayidx213 = getelementptr i8, i8* %128, i64 %127
  %129 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %129 to i32
  %cmp215 = icmp eq i32 %conv214, 95
  br i1 %cmp215, label %if.then.298, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %land.lhs.true.212, %lor.lhs.false.210
  %130 = load i64, i64* %in, align 8
  %131 = load i8*, i8** %databuf, align 8
  %arrayidx218 = getelementptr i8, i8* %131, i64 %130
  %132 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %132 to i32
  %cmp220 = icmp eq i32 %conv219, 46
  br i1 %cmp220, label %land.lhs.true.222, label %lor.lhs.false.243

land.lhs.true.222:                                ; preds = %lor.lhs.false.217
  %133 = load i32, i32* %linelen, align 4
  %cmp223 = icmp eq i32 %133, 0
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.243

land.lhs.true.225:                                ; preds = %land.lhs.true.222
  %134 = load i64, i64* %in, align 8
  %add226 = add i64 %134, 1
  %135 = load i8*, i8** %databuf, align 8
  %arrayidx227 = getelementptr i8, i8* %135, i64 %add226
  %136 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %136 to i32
  %cmp229 = icmp eq i32 %conv228, 10
  br i1 %cmp229, label %if.then.298, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %land.lhs.true.225
  %137 = load i64, i64* %in, align 8
  %add232 = add i64 %137, 1
  %138 = load i8*, i8** %databuf, align 8
  %arrayidx233 = getelementptr i8, i8* %138, i64 %add232
  %139 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %139 to i32
  %cmp235 = icmp eq i32 %conv234, 13
  br i1 %cmp235, label %if.then.298, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %lor.lhs.false.231
  %140 = load i64, i64* %in, align 8
  %add238 = add i64 %140, 1
  %141 = load i8*, i8** %databuf, align 8
  %arrayidx239 = getelementptr i8, i8* %141, i64 %add238
  %142 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %142 to i32
  %cmp241 = icmp eq i32 %conv240, 0
  br i1 %cmp241, label %if.then.298, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.237, %land.lhs.true.222, %lor.lhs.false.217
  %143 = load i32, i32* %istext.addr, align 4
  %tobool244 = icmp ne i32 %143, 0
  br i1 %tobool244, label %lor.lhs.false.255, label %land.lhs.true.245

land.lhs.true.245:                                ; preds = %lor.lhs.false.243
  %144 = load i64, i64* %in, align 8
  %145 = load i8*, i8** %databuf, align 8
  %arrayidx246 = getelementptr i8, i8* %145, i64 %144
  %146 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %146 to i32
  %cmp248 = icmp eq i32 %conv247, 13
  br i1 %cmp248, label %if.then.298, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %land.lhs.true.245
  %147 = load i64, i64* %in, align 8
  %148 = load i8*, i8** %databuf, align 8
  %arrayidx251 = getelementptr i8, i8* %148, i64 %147
  %149 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %149 to i32
  %cmp253 = icmp eq i32 %conv252, 10
  br i1 %cmp253, label %if.then.298, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %lor.lhs.false.250, %lor.lhs.false.243
  %150 = load i64, i64* %in, align 8
  %151 = load i8*, i8** %databuf, align 8
  %arrayidx256 = getelementptr i8, i8* %151, i64 %150
  %152 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %152 to i32
  %cmp258 = icmp eq i32 %conv257, 9
  br i1 %cmp258, label %land.lhs.true.265, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %lor.lhs.false.255
  %153 = load i64, i64* %in, align 8
  %154 = load i8*, i8** %databuf, align 8
  %arrayidx261 = getelementptr i8, i8* %154, i64 %153
  %155 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %155 to i32
  %cmp263 = icmp eq i32 %conv262, 32
  br i1 %cmp263, label %land.lhs.true.265, label %lor.lhs.false.269

land.lhs.true.265:                                ; preds = %lor.lhs.false.260, %lor.lhs.false.255
  %156 = load i64, i64* %in, align 8
  %add266 = add i64 %156, 1
  %157 = load i64, i64* %datalen, align 8
  %cmp267 = icmp eq i64 %add266, %157
  br i1 %cmp267, label %if.then.298, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %land.lhs.true.265, %lor.lhs.false.260
  %158 = load i64, i64* %in, align 8
  %159 = load i8*, i8** %databuf, align 8
  %arrayidx270 = getelementptr i8, i8* %159, i64 %158
  %160 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %160 to i32
  %cmp272 = icmp slt i32 %conv271, 33
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.321

land.lhs.true.274:                                ; preds = %lor.lhs.false.269
  %161 = load i64, i64* %in, align 8
  %162 = load i8*, i8** %databuf, align 8
  %arrayidx275 = getelementptr i8, i8* %162, i64 %161
  %163 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %163 to i32
  %cmp277 = icmp ne i32 %conv276, 13
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.321

land.lhs.true.279:                                ; preds = %land.lhs.true.274
  %164 = load i64, i64* %in, align 8
  %165 = load i8*, i8** %databuf, align 8
  %arrayidx280 = getelementptr i8, i8* %165, i64 %164
  %166 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %166 to i32
  %cmp282 = icmp ne i32 %conv281, 10
  br i1 %cmp282, label %land.lhs.true.284, label %if.else.321

land.lhs.true.284:                                ; preds = %land.lhs.true.279
  %167 = load i32, i32* %quotetabs.addr, align 4
  %tobool285 = icmp ne i32 %167, 0
  br i1 %tobool285, label %if.then.298, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %land.lhs.true.284
  %168 = load i32, i32* %quotetabs.addr, align 4
  %tobool287 = icmp ne i32 %168, 0
  br i1 %tobool287, label %if.else.321, label %land.lhs.true.288

land.lhs.true.288:                                ; preds = %lor.lhs.false.286
  %169 = load i64, i64* %in, align 8
  %170 = load i8*, i8** %databuf, align 8
  %arrayidx289 = getelementptr i8, i8* %170, i64 %169
  %171 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %171 to i32
  %cmp291 = icmp ne i32 %conv290, 9
  br i1 %cmp291, label %land.lhs.true.293, label %if.else.321

land.lhs.true.293:                                ; preds = %land.lhs.true.288
  %172 = load i64, i64* %in, align 8
  %173 = load i8*, i8** %databuf, align 8
  %arrayidx294 = getelementptr i8, i8* %173, i64 %172
  %174 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %174 to i32
  %cmp296 = icmp ne i32 %conv295, 32
  br i1 %cmp296, label %if.then.298, label %if.else.321

if.then.298:                                      ; preds = %land.lhs.true.293, %land.lhs.true.284, %land.lhs.true.265, %lor.lhs.false.250, %land.lhs.true.245, %lor.lhs.false.237, %lor.lhs.false.231, %land.lhs.true.225, %land.lhs.true.212, %lor.lhs.false.205, %while.body.200
  %175 = load i32, i32* %linelen, align 4
  %add299 = add i32 %175, 3
  %cmp300 = icmp uge i32 %add299, 76
  br i1 %cmp300, label %if.then.302, label %if.end.312

if.then.302:                                      ; preds = %if.then.298
  %176 = load i64, i64* %out, align 8
  %inc303 = add i64 %176, 1
  store i64 %inc303, i64* %out, align 8
  %177 = load i8*, i8** %odata, align 8
  %arrayidx304 = getelementptr i8, i8* %177, i64 %176
  store i8 61, i8* %arrayidx304, align 1
  %178 = load i32, i32* %crlf, align 4
  %tobool305 = icmp ne i32 %178, 0
  br i1 %tobool305, label %if.then.306, label %if.end.309

if.then.306:                                      ; preds = %if.then.302
  %179 = load i64, i64* %out, align 8
  %inc307 = add i64 %179, 1
  store i64 %inc307, i64* %out, align 8
  %180 = load i8*, i8** %odata, align 8
  %arrayidx308 = getelementptr i8, i8* %180, i64 %179
  store i8 13, i8* %arrayidx308, align 1
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.306, %if.then.302
  %181 = load i64, i64* %out, align 8
  %inc310 = add i64 %181, 1
  store i64 %inc310, i64* %out, align 8
  %182 = load i8*, i8** %odata, align 8
  %arrayidx311 = getelementptr i8, i8* %182, i64 %181
  store i8 10, i8* %arrayidx311, align 1
  store i32 0, i32* %linelen, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.309, %if.then.298
  %183 = load i64, i64* %out, align 8
  %inc313 = add i64 %183, 1
  store i64 %inc313, i64* %out, align 8
  %184 = load i8*, i8** %odata, align 8
  %arrayidx314 = getelementptr i8, i8* %184, i64 %183
  store i8 61, i8* %arrayidx314, align 1
  %185 = load i64, i64* %in, align 8
  %186 = load i8*, i8** %databuf, align 8
  %arrayidx315 = getelementptr i8, i8* %186, i64 %185
  %187 = load i8, i8* %arrayidx315, align 1
  %188 = load i64, i64* %out, align 8
  %189 = load i8*, i8** %odata, align 8
  %arrayidx316 = getelementptr i8, i8* %189, i64 %188
  %call317 = call i32 @to_hex(i8 zeroext %187, i8* %arrayidx316)
  %190 = load i64, i64* %out, align 8
  %add318 = add i64 %190, 2
  store i64 %add318, i64* %out, align 8
  %191 = load i64, i64* %in, align 8
  %inc319 = add i64 %191, 1
  store i64 %inc319, i64* %in, align 8
  %192 = load i32, i32* %linelen, align 4
  %add320 = add i32 %192, 3
  store i32 %add320, i32* %linelen, align 4
  br label %if.end.425

if.else.321:                                      ; preds = %land.lhs.true.293, %land.lhs.true.288, %lor.lhs.false.286, %land.lhs.true.279, %land.lhs.true.274, %lor.lhs.false.269
  %193 = load i32, i32* %istext.addr, align 4
  %tobool322 = icmp ne i32 %193, 0
  br i1 %tobool322, label %land.lhs.true.323, label %if.else.382

land.lhs.true.323:                                ; preds = %if.else.321
  %194 = load i64, i64* %in, align 8
  %195 = load i8*, i8** %databuf, align 8
  %arrayidx324 = getelementptr i8, i8* %195, i64 %194
  %196 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %196 to i32
  %cmp326 = icmp eq i32 %conv325, 10
  br i1 %cmp326, label %if.then.343, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %land.lhs.true.323
  %197 = load i64, i64* %in, align 8
  %add329 = add i64 %197, 1
  %198 = load i64, i64* %datalen, align 8
  %cmp330 = icmp slt i64 %add329, %198
  br i1 %cmp330, label %land.lhs.true.332, label %if.else.382

land.lhs.true.332:                                ; preds = %lor.lhs.false.328
  %199 = load i64, i64* %in, align 8
  %200 = load i8*, i8** %databuf, align 8
  %arrayidx333 = getelementptr i8, i8* %200, i64 %199
  %201 = load i8, i8* %arrayidx333, align 1
  %conv334 = zext i8 %201 to i32
  %cmp335 = icmp eq i32 %conv334, 13
  br i1 %cmp335, label %land.lhs.true.337, label %if.else.382

land.lhs.true.337:                                ; preds = %land.lhs.true.332
  %202 = load i64, i64* %in, align 8
  %add338 = add i64 %202, 1
  %203 = load i8*, i8** %databuf, align 8
  %arrayidx339 = getelementptr i8, i8* %203, i64 %add338
  %204 = load i8, i8* %arrayidx339, align 1
  %conv340 = zext i8 %204 to i32
  %cmp341 = icmp eq i32 %conv340, 10
  br i1 %cmp341, label %if.then.343, label %if.else.382

if.then.343:                                      ; preds = %land.lhs.true.337, %land.lhs.true.323
  store i32 0, i32* %linelen, align 4
  %205 = load i64, i64* %out, align 8
  %tobool344 = icmp ne i64 %205, 0
  br i1 %tobool344, label %land.lhs.true.345, label %if.end.365

land.lhs.true.345:                                ; preds = %if.then.343
  %206 = load i64, i64* %out, align 8
  %sub346 = sub i64 %206, 1
  %207 = load i8*, i8** %odata, align 8
  %arrayidx347 = getelementptr i8, i8* %207, i64 %sub346
  %208 = load i8, i8* %arrayidx347, align 1
  %conv348 = zext i8 %208 to i32
  %cmp349 = icmp eq i32 %conv348, 32
  br i1 %cmp349, label %if.then.357, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %land.lhs.true.345
  %209 = load i64, i64* %out, align 8
  %sub352 = sub i64 %209, 1
  %210 = load i8*, i8** %odata, align 8
  %arrayidx353 = getelementptr i8, i8* %210, i64 %sub352
  %211 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %211 to i32
  %cmp355 = icmp eq i32 %conv354, 9
  br i1 %cmp355, label %if.then.357, label %if.end.365

if.then.357:                                      ; preds = %lor.lhs.false.351, %land.lhs.true.345
  %212 = load i64, i64* %out, align 8
  %sub358 = sub i64 %212, 1
  %213 = load i8*, i8** %odata, align 8
  %arrayidx359 = getelementptr i8, i8* %213, i64 %sub358
  %214 = load i8, i8* %arrayidx359, align 1
  store i8 %214, i8* %ch, align 1
  %215 = load i64, i64* %out, align 8
  %sub360 = sub i64 %215, 1
  %216 = load i8*, i8** %odata, align 8
  %arrayidx361 = getelementptr i8, i8* %216, i64 %sub360
  store i8 61, i8* %arrayidx361, align 1
  %217 = load i8, i8* %ch, align 1
  %218 = load i64, i64* %out, align 8
  %219 = load i8*, i8** %odata, align 8
  %arrayidx362 = getelementptr i8, i8* %219, i64 %218
  %call363 = call i32 @to_hex(i8 zeroext %217, i8* %arrayidx362)
  %220 = load i64, i64* %out, align 8
  %add364 = add i64 %220, 2
  store i64 %add364, i64* %out, align 8
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.357, %lor.lhs.false.351, %if.then.343
  %221 = load i32, i32* %crlf, align 4
  %tobool366 = icmp ne i32 %221, 0
  br i1 %tobool366, label %if.then.367, label %if.end.370

if.then.367:                                      ; preds = %if.end.365
  %222 = load i64, i64* %out, align 8
  %inc368 = add i64 %222, 1
  store i64 %inc368, i64* %out, align 8
  %223 = load i8*, i8** %odata, align 8
  %arrayidx369 = getelementptr i8, i8* %223, i64 %222
  store i8 13, i8* %arrayidx369, align 1
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.367, %if.end.365
  %224 = load i64, i64* %out, align 8
  %inc371 = add i64 %224, 1
  store i64 %inc371, i64* %out, align 8
  %225 = load i8*, i8** %odata, align 8
  %arrayidx372 = getelementptr i8, i8* %225, i64 %224
  store i8 10, i8* %arrayidx372, align 1
  %226 = load i64, i64* %in, align 8
  %227 = load i8*, i8** %databuf, align 8
  %arrayidx373 = getelementptr i8, i8* %227, i64 %226
  %228 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %228 to i32
  %cmp375 = icmp eq i32 %conv374, 13
  br i1 %cmp375, label %if.then.377, label %if.else.379

if.then.377:                                      ; preds = %if.end.370
  %229 = load i64, i64* %in, align 8
  %add378 = add i64 %229, 2
  store i64 %add378, i64* %in, align 8
  br label %if.end.381

if.else.379:                                      ; preds = %if.end.370
  %230 = load i64, i64* %in, align 8
  %inc380 = add i64 %230, 1
  store i64 %inc380, i64* %in, align 8
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.377
  br label %if.end.424

if.else.382:                                      ; preds = %land.lhs.true.337, %land.lhs.true.332, %lor.lhs.false.328, %if.else.321
  %231 = load i64, i64* %in, align 8
  %add383 = add i64 %231, 1
  %232 = load i64, i64* %datalen, align 8
  %cmp384 = icmp ne i64 %add383, %232
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.406

land.lhs.true.386:                                ; preds = %if.else.382
  %233 = load i64, i64* %in, align 8
  %add387 = add i64 %233, 1
  %234 = load i8*, i8** %databuf, align 8
  %arrayidx388 = getelementptr i8, i8* %234, i64 %add387
  %235 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %235 to i32
  %cmp390 = icmp ne i32 %conv389, 10
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.406

land.lhs.true.392:                                ; preds = %land.lhs.true.386
  %236 = load i32, i32* %linelen, align 4
  %add393 = add i32 %236, 1
  %cmp394 = icmp uge i32 %add393, 76
  br i1 %cmp394, label %if.then.396, label %if.end.406

if.then.396:                                      ; preds = %land.lhs.true.392
  %237 = load i64, i64* %out, align 8
  %inc397 = add i64 %237, 1
  store i64 %inc397, i64* %out, align 8
  %238 = load i8*, i8** %odata, align 8
  %arrayidx398 = getelementptr i8, i8* %238, i64 %237
  store i8 61, i8* %arrayidx398, align 1
  %239 = load i32, i32* %crlf, align 4
  %tobool399 = icmp ne i32 %239, 0
  br i1 %tobool399, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %if.then.396
  %240 = load i64, i64* %out, align 8
  %inc401 = add i64 %240, 1
  store i64 %inc401, i64* %out, align 8
  %241 = load i8*, i8** %odata, align 8
  %arrayidx402 = getelementptr i8, i8* %241, i64 %240
  store i8 13, i8* %arrayidx402, align 1
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.400, %if.then.396
  %242 = load i64, i64* %out, align 8
  %inc404 = add i64 %242, 1
  store i64 %inc404, i64* %out, align 8
  %243 = load i8*, i8** %odata, align 8
  %arrayidx405 = getelementptr i8, i8* %243, i64 %242
  store i8 10, i8* %arrayidx405, align 1
  store i32 0, i32* %linelen, align 4
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.403, %land.lhs.true.392, %land.lhs.true.386, %if.else.382
  %244 = load i32, i32* %linelen, align 4
  %inc407 = add i32 %244, 1
  store i32 %inc407, i32* %linelen, align 4
  %245 = load i32, i32* %header.addr, align 4
  %tobool408 = icmp ne i32 %245, 0
  br i1 %tobool408, label %land.lhs.true.409, label %if.else.418

land.lhs.true.409:                                ; preds = %if.end.406
  %246 = load i64, i64* %in, align 8
  %247 = load i8*, i8** %databuf, align 8
  %arrayidx410 = getelementptr i8, i8* %247, i64 %246
  %248 = load i8, i8* %arrayidx410, align 1
  %conv411 = zext i8 %248 to i32
  %cmp412 = icmp eq i32 %conv411, 32
  br i1 %cmp412, label %if.then.414, label %if.else.418

if.then.414:                                      ; preds = %land.lhs.true.409
  %249 = load i64, i64* %out, align 8
  %inc415 = add i64 %249, 1
  store i64 %inc415, i64* %out, align 8
  %250 = load i8*, i8** %odata, align 8
  %arrayidx416 = getelementptr i8, i8* %250, i64 %249
  store i8 95, i8* %arrayidx416, align 1
  %251 = load i64, i64* %in, align 8
  %inc417 = add i64 %251, 1
  store i64 %inc417, i64* %in, align 8
  br label %if.end.423

if.else.418:                                      ; preds = %land.lhs.true.409, %if.end.406
  %252 = load i64, i64* %in, align 8
  %inc419 = add i64 %252, 1
  store i64 %inc419, i64* %in, align 8
  %253 = load i8*, i8** %databuf, align 8
  %arrayidx420 = getelementptr i8, i8* %253, i64 %252
  %254 = load i8, i8* %arrayidx420, align 1
  %255 = load i64, i64* %out, align 8
  %inc421 = add i64 %255, 1
  store i64 %inc421, i64* %out, align 8
  %256 = load i8*, i8** %odata, align 8
  %arrayidx422 = getelementptr i8, i8* %256, i64 %255
  store i8 %254, i8* %arrayidx422, align 1
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.418, %if.then.414
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.381
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.end.312
  br label %while.cond.197

while.end.426:                                    ; preds = %while.cond.197
  %257 = load i8*, i8** %odata, align 8
  %258 = load i64, i64* %out, align 8
  %call427 = call %struct._object* @PyBytes_FromStringAndSize(i8* %257, i64 %258)
  store %struct._object* %call427, %struct._object** %rv, align 8
  %cmp428 = icmp eq %struct._object* %call427, null
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %while.end.426
  %259 = load i8*, i8** %odata, align 8
  call void @PyMem_Free(i8* %259)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.431:                                       ; preds = %while.end.426
  %260 = load i8*, i8** %odata, align 8
  call void @PyMem_Free(i8* %260)
  %261 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %261, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.431, %if.then.430, %if.then.194
  %262 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %262
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @to_hex(i8 zeroext %ch, i8* %s) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %uvalue = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8, i8* %ch.addr, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* %uvalue, align 4
  %1 = load i32, i32* %uvalue, align 4
  %rem = urem i32 %1, 16
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr [17 x i8], [17 x i8]* @.str.53, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx1 = getelementptr i8, i8* %3, i64 1
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i32, i32* %uvalue, align 4
  %div = udiv i32 %4, 16
  store i32 %div, i32* %uvalue, align 4
  %5 = load i32, i32* %uvalue, align 4
  %rem2 = urem i32 %5, 16
  %idxprom3 = zext i32 %rem2 to i64
  %arrayidx4 = getelementptr [17 x i8], [17 x i8]* @.str.53, i32 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx5 = getelementptr i8, i8* %7, i64 0
  store i8 %6, i8* %arrayidx5, align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
