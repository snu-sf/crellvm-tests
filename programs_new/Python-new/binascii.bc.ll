; ModuleID = 'irs-onlybc/binascii.bc'
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1015
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !407, metadata !1016), !dbg !1017
  %1 = bitcast %struct._object** %d to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1015
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !408, metadata !1016), !dbg !1018
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @binasciimodule, i32 1013), !dbg !1019
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1020, !tbaa !1021
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1025, !tbaa !1021
  %cmp = icmp eq %struct._object* %2, null, !dbg !1027
  br i1 %cmp, label %if.then, label %if.end, !dbg !1028

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1029
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1029

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !1030, !tbaa !1021
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %3), !dbg !1031
  store %struct._object* %call1, %struct._object** %d, align 8, !dbg !1032, !tbaa !1021
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1033, !tbaa !1021
  %call2 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._object* %4, %struct._object* null), !dbg !1034
  store %struct._object* %call2, %struct._object** @Error, align 8, !dbg !1035, !tbaa !1021
  %5 = load %struct._object*, %struct._object** %d, align 8, !dbg !1036, !tbaa !1021
  %6 = load %struct._object*, %struct._object** @Error, align 8, !dbg !1037, !tbaa !1021
  %call3 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %6), !dbg !1038
  %call4 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !1039
  store %struct._object* %call4, %struct._object** @Incomplete, align 8, !dbg !1040, !tbaa !1021
  %7 = load %struct._object*, %struct._object** %d, align 8, !dbg !1041, !tbaa !1021
  %8 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !1042, !tbaa !1021
  %call5 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._object* %8), !dbg !1043
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !1044
  %tobool = icmp ne %struct._object* %call6, null, !dbg !1044
  br i1 %tobool, label %if.then.7, label %if.end.11, !dbg !1045

if.then.7:                                        ; preds = %if.end
  br label %do.body, !dbg !1046

do.body:                                          ; preds = %if.then.7
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1047
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1047
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !409, metadata !1016), !dbg !1049
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !1050, !tbaa !1021
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1049, !tbaa !1021
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1051, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1053
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1054, !tbaa !1055
  %dec = add i64 %12, -1, !dbg !1054
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1054, !tbaa !1055
  %cmp8 = icmp ne i64 %dec, 0, !dbg !1058
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1059

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !1060

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1062, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1064
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1064, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1066
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1066, !tbaa !1067
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1071, !tbaa !1021
  call void %15(%struct._object* %16), !dbg !1072
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1073
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1073
  br label %do.cond, !dbg !1075

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1076

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %m, align 8, !dbg !1078, !tbaa !1021
  br label %if.end.11, !dbg !1079

if.end.11:                                        ; preds = %do.end, %if.end
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !1080, !tbaa !1021
  store %struct._object* %18, %struct._object** %retval, !dbg !1081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1081

cleanup:                                          ; preds = %if.end.11, %if.then
  %19 = bitcast %struct._object** %d to i8*, !dbg !1082
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1082
  %20 = bitcast %struct._object** %m to i8*, !dbg !1082
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1082
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1082
  ret %struct._object* %21, !dbg !1082
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_uu(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !442, metadata !1016), !dbg !1083
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !443, metadata !1016), !dbg !1084
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1085
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1085
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !444, metadata !1016), !dbg !1086
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1086, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !445, metadata !1016), !dbg !1088
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1088
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1088
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1089, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data), !dbg !1091
  %tobool = icmp ne i32 %call, 0, !dbg !1091
  br i1 %tobool, label %if.end, label %if.then, !dbg !1092

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1093

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1094, !tbaa !1021
  %call1 = call %struct._object* @binascii_a2b_uu_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1095
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1096, !tbaa !1021
  br label %exit, !dbg !1097

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1098
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1098, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1102
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1103

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1104
  br label %if.end.4, !dbg !1104

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1105, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1106
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1106
  ret %struct._object* %6, !dbg !1107
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_uu(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !482, metadata !1016), !dbg !1108
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !483, metadata !1016), !dbg !1109
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1110
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !484, metadata !1016), !dbg !1111
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1111, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1112
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !485, metadata !1016), !dbg !1113
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1113
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1113
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1114, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1116
  %tobool = icmp ne i32 %call, 0, !dbg !1116
  br i1 %tobool, label %if.end, label %if.then, !dbg !1117

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1118

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1119, !tbaa !1021
  %call1 = call %struct._object* @binascii_b2a_uu_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1120
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1121, !tbaa !1021
  br label %exit, !dbg !1122

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1123
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1123, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1125
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1126

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1127
  br label %if.end.4, !dbg !1127

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1128, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1129
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1129
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1129
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1129
  ret %struct._object* %6, !dbg !1130
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_base64(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !507, metadata !1016), !dbg !1131
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !508, metadata !1016), !dbg !1132
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1133
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1133
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !509, metadata !1016), !dbg !1134
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1134, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !510, metadata !1016), !dbg !1136
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1136
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1136
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1137, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data), !dbg !1139
  %tobool = icmp ne i32 %call, 0, !dbg !1139
  br i1 %tobool, label %if.end, label %if.then, !dbg !1140

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1141

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1142, !tbaa !1021
  %call1 = call %struct._object* @binascii_a2b_base64_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1143
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1144, !tbaa !1021
  br label %exit, !dbg !1145

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1146
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1146, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1148
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1149

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1150
  br label %if.end.4, !dbg !1150

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1151, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1152
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1152
  ret %struct._object* %6, !dbg !1153
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_base64(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !553, metadata !1016), !dbg !1154
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !554, metadata !1016), !dbg !1155
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !555, metadata !1016), !dbg !1157
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1157, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1158
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1158
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !556, metadata !1016), !dbg !1159
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1159
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1159
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1160, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1162
  %tobool = icmp ne i32 %call, 0, !dbg !1162
  br i1 %tobool, label %if.end, label %if.then, !dbg !1163

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1164

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1165, !tbaa !1021
  %call1 = call %struct._object* @binascii_b2a_base64_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1166
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1167, !tbaa !1021
  br label %exit, !dbg !1168

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1169
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1169, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1171
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1172

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1173
  br label %if.end.4, !dbg !1173

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1174, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1175
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1175
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1175
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1175
  ret %struct._object* %6, !dbg !1176
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !578, metadata !1016), !dbg !1177
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !579, metadata !1016), !dbg !1178
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1179
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1179
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !580, metadata !1016), !dbg !1180
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1180, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !581, metadata !1016), !dbg !1182
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1182
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1182
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1183, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data), !dbg !1185
  %tobool = icmp ne i32 %call, 0, !dbg !1185
  br i1 %tobool, label %if.end, label %if.then, !dbg !1186

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1187

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1188, !tbaa !1021
  %call1 = call %struct._object* @binascii_a2b_hqx_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1189
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1190, !tbaa !1021
  br label %exit, !dbg !1191

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1192
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1192, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1194
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1195

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1196
  br label %if.end.4, !dbg !1196

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1197, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1198
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1198
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1198
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1198
  ret %struct._object* %6, !dbg !1199
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !620, metadata !1016), !dbg !1200
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !621, metadata !1016), !dbg !1201
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1202
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !622, metadata !1016), !dbg !1203
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1203, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1204
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1204
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !623, metadata !1016), !dbg !1205
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1205
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1205
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1206, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1208
  %tobool = icmp ne i32 %call, 0, !dbg !1208
  br i1 %tobool, label %if.end, label %if.then, !dbg !1209

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1210

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1211, !tbaa !1021
  %call1 = call %struct._object* @binascii_b2a_hqx_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1212
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1213, !tbaa !1021
  br label %exit, !dbg !1214

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1215
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1215, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1217
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1218

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1219
  br label %if.end.4, !dbg !1219

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1220, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1221
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1221
  ret %struct._object* %6, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_a2b_hex(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %hexstr = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !645, metadata !1016), !dbg !1223
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !646, metadata !1016), !dbg !1224
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1225
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1225
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !647, metadata !1016), !dbg !1226
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1226, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %hexstr to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1227
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %hexstr, metadata !648, metadata !1016), !dbg !1228
  %2 = bitcast %struct.bufferinfo* %hexstr to i8*, !dbg !1228
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1228
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1229, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %hexstr), !dbg !1231
  %tobool = icmp ne i32 %call, 0, !dbg !1231
  br i1 %tobool, label %if.end, label %if.then, !dbg !1232

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1233

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1234, !tbaa !1021
  %call1 = call %struct._object* @binascii_a2b_hex_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %hexstr), !dbg !1235
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1236, !tbaa !1021
  br label %exit, !dbg !1237

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %hexstr, i32 0, i32 1, !dbg !1238
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1238, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1240
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1241

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %hexstr), !dbg !1242
  br label %if.end.4, !dbg !1242

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1243, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %hexstr to i8*, !dbg !1244
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1244
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1244
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1244
  ret %struct._object* %6, !dbg !1245
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_b2a_hex(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !673, metadata !1016), !dbg !1246
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !674, metadata !1016), !dbg !1247
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1248
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !675, metadata !1016), !dbg !1249
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1249, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1250
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !676, metadata !1016), !dbg !1251
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1251
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1251
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1252, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1254
  %tobool = icmp ne i32 %call, 0, !dbg !1254
  br i1 %tobool, label %if.end, label %if.then, !dbg !1255

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1256

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1257, !tbaa !1021
  %call1 = call %struct._object* @binascii_b2a_hex_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1258
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1259, !tbaa !1021
  br label %exit, !dbg !1260

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1261
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1261, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1263
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1264

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1265
  br label %if.end.4, !dbg !1265

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1266, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1267
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1267
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1267
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1267
  ret %struct._object* %6, !dbg !1268
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rlecode_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !693, metadata !1016), !dbg !1269
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !694, metadata !1016), !dbg !1270
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1271
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1271
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !695, metadata !1016), !dbg !1272
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1272, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1273
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !696, metadata !1016), !dbg !1274
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1274
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1274
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1275, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1277
  %tobool = icmp ne i32 %call, 0, !dbg !1277
  br i1 %tobool, label %if.end, label %if.then, !dbg !1278

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1279

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1280, !tbaa !1021
  %call1 = call %struct._object* @binascii_rlecode_hqx_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1281
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1282, !tbaa !1021
  br label %exit, !dbg !1283

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1284
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1284, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1286
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1287

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1288
  br label %if.end.4, !dbg !1288

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1289, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1290
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1290
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1290
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1290
  ret %struct._object* %6, !dbg !1291
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @binascii_rledecode_hqx(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !718, metadata !1016), !dbg !1292
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !719, metadata !1016), !dbg !1293
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1294
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !720, metadata !1016), !dbg !1295
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1295, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1296
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !721, metadata !1016), !dbg !1297
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1297
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1297
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1298, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1300
  %tobool = icmp ne i32 %call, 0, !dbg !1300
  br i1 %tobool, label %if.end, label %if.then, !dbg !1301

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1302

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1303, !tbaa !1021
  %call1 = call %struct._object* @binascii_rledecode_hqx_impl(%struct.PyModuleDef* %4, %struct.bufferinfo* %data), !dbg !1304
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1305, !tbaa !1021
  br label %exit, !dbg !1306

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1307
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1307, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1309
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1310

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1311
  br label %if.end.4, !dbg !1311

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1312, !tbaa !1021
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1313
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1313
  ret %struct._object* %6, !dbg !1314
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !828, metadata !1016), !dbg !1315
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !829, metadata !1016), !dbg !1316
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1317
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !830, metadata !1016), !dbg !1318
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1318, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !831, metadata !1016), !dbg !1320
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1320
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1320
  %3 = bitcast i32* %crc to i8*, !dbg !1321
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %crc, metadata !832, metadata !1016), !dbg !1322
  %4 = bitcast i32* %_return_value to i8*, !dbg !1323
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %_return_value, metadata !833, metadata !1016), !dbg !1324
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1325, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct.bufferinfo* %data, i32* %crc), !dbg !1327
  %tobool = icmp ne i32 %call, 0, !dbg !1327
  br i1 %tobool, label %if.end, label %if.then, !dbg !1328

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1329

if.end:                                           ; preds = %entry
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1330, !tbaa !1021
  %7 = load i32, i32* %crc, align 4, !dbg !1331, !tbaa !1332
  %call1 = call i32 @binascii_crc_hqx_impl(%struct.PyModuleDef* %6, %struct.bufferinfo* %data, i32 %7), !dbg !1333
  store i32 %call1, i32* %_return_value, align 4, !dbg !1334, !tbaa !1332
  %8 = load i32, i32* %_return_value, align 4, !dbg !1335, !tbaa !1332
  %cmp = icmp eq i32 %8, -1, !dbg !1337
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !1338

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !1339
  %tobool3 = icmp ne %struct._object* %call2, null, !dbg !1339
  br i1 %tobool3, label %if.then.4, label %if.end.5, !dbg !1341

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit, !dbg !1342

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %_return_value, align 4, !dbg !1343, !tbaa !1332
  %conv = sext i32 %9 to i64, !dbg !1344
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1345
  store %struct._object* %call6, %struct._object** %return_value, align 8, !dbg !1346, !tbaa !1021
  br label %exit, !dbg !1347

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1348
  %10 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1348, !tbaa !1100
  %tobool7 = icmp ne %struct._object* %10, null, !dbg !1350
  br i1 %tobool7, label %if.then.8, label %if.end.9, !dbg !1351

if.then.8:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1352
  br label %if.end.9, !dbg !1352

if.end.9:                                         ; preds = %if.then.8, %exit
  %11 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1353, !tbaa !1021
  %12 = bitcast i32* %_return_value to i8*, !dbg !1354
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1354
  %13 = bitcast i32* %crc to i8*, !dbg !1354
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !1354
  %14 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1354
  call void @llvm.lifetime.end(i64 80, i8* %14) #1, !dbg !1354
  %15 = bitcast %struct._object** %return_value to i8*, !dbg !1354
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1354
  ret %struct._object* %11, !dbg !1355
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !846, metadata !1016), !dbg !1356
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !847, metadata !1016), !dbg !1357
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1358
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !848, metadata !1016), !dbg !1359
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1359, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1360
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1360
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !849, metadata !1016), !dbg !1361
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1361
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1361
  %3 = bitcast i32* %crc to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1362
  call void @llvm.dbg.declare(metadata i32* %crc, metadata !850, metadata !1016), !dbg !1363
  store i32 0, i32* %crc, align 4, !dbg !1363, !tbaa !1332
  %4 = bitcast i32* %_return_value to i8*, !dbg !1364
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1364
  call void @llvm.dbg.declare(metadata i32* %_return_value, metadata !851, metadata !1016), !dbg !1365
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1366, !tbaa !1021
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %struct.bufferinfo* %data, i32* %crc), !dbg !1368
  %tobool = icmp ne i32 %call, 0, !dbg !1368
  br i1 %tobool, label %if.end, label %if.then, !dbg !1369

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1370

if.end:                                           ; preds = %entry
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1371, !tbaa !1021
  %7 = load i32, i32* %crc, align 4, !dbg !1372, !tbaa !1332
  %call1 = call i32 @binascii_crc32_impl(%struct.PyModuleDef* %6, %struct.bufferinfo* %data, i32 %7), !dbg !1373
  store i32 %call1, i32* %_return_value, align 4, !dbg !1374, !tbaa !1332
  %8 = load i32, i32* %_return_value, align 4, !dbg !1375, !tbaa !1332
  %cmp = icmp eq i32 %8, -1, !dbg !1377
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !1378

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !1379
  %tobool3 = icmp ne %struct._object* %call2, null, !dbg !1379
  br i1 %tobool3, label %if.then.4, label %if.end.5, !dbg !1381

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit, !dbg !1382

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %_return_value, align 4, !dbg !1383, !tbaa !1332
  %conv = zext i32 %9 to i64, !dbg !1384
  %call6 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv), !dbg !1385
  store %struct._object* %call6, %struct._object** %return_value, align 8, !dbg !1386, !tbaa !1021
  br label %exit, !dbg !1387

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1388
  %10 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1388, !tbaa !1100
  %tobool7 = icmp ne %struct._object* %10, null, !dbg !1390
  br i1 %tobool7, label %if.then.8, label %if.end.9, !dbg !1391

if.then.8:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1392
  br label %if.end.9, !dbg !1392

if.end.9:                                         ; preds = %if.then.8, %exit
  %11 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1393, !tbaa !1021
  %12 = bitcast i32* %_return_value to i8*, !dbg !1394
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1394
  %13 = bitcast i32* %crc to i8*, !dbg !1394
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !1394
  %14 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1394
  call void @llvm.lifetime.end(i64 80, i8* %14) #1, !dbg !1394
  %15 = bitcast %struct._object** %return_value to i8*, !dbg !1394
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1394
  ret %struct._object* %11, !dbg !1395
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !866, metadata !1016), !dbg !1396
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !867, metadata !1016), !dbg !1397
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !868, metadata !1016), !dbg !1398
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1399
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !869, metadata !1016), !dbg !1400
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1400, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1401
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1401
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !870, metadata !1016), !dbg !1402
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1402
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1402
  %3 = bitcast i32* %header to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1403
  call void @llvm.dbg.declare(metadata i32* %header, metadata !871, metadata !1016), !dbg !1404
  store i32 0, i32* %header, align 4, !dbg !1404, !tbaa !1332
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1405, !tbaa !1021
  %5 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1407, !tbaa !1021
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @binascii_a2b_qp._keywords, i32 0, i32 0), i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, %struct.bufferinfo* %data, i32* %header), !dbg !1408
  %tobool = icmp ne i32 %call, 0, !dbg !1408
  br i1 %tobool, label %if.end, label %if.then, !dbg !1409

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1410

if.end:                                           ; preds = %entry
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1411, !tbaa !1021
  %7 = load i32, i32* %header, align 4, !dbg !1412, !tbaa !1332
  %call1 = call %struct._object* @binascii_a2b_qp_impl(%struct.PyModuleDef* %6, %struct.bufferinfo* %data, i32 %7), !dbg !1413
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1414, !tbaa !1021
  br label %exit, !dbg !1415

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1416
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1416, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %8, null, !dbg !1418
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1419

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1420
  br label %if.end.4, !dbg !1420

if.end.4:                                         ; preds = %if.then.3, %exit
  %9 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1421, !tbaa !1021
  %10 = bitcast i32* %header to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !1422
  %11 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 80, i8* %11) #1, !dbg !1422
  %12 = bitcast %struct._object** %return_value to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1422
  ret %struct._object* %9, !dbg !1423
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !888, metadata !1016), !dbg !1424
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !889, metadata !1016), !dbg !1425
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !890, metadata !1016), !dbg !1426
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1427
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1427
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !891, metadata !1016), !dbg !1428
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1428, !tbaa !1021
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1429
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1429
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !892, metadata !1016), !dbg !1430
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1430
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1430
  %3 = bitcast i32* %quotetabs to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1431
  call void @llvm.dbg.declare(metadata i32* %quotetabs, metadata !893, metadata !1016), !dbg !1432
  store i32 0, i32* %quotetabs, align 4, !dbg !1432, !tbaa !1332
  %4 = bitcast i32* %istext to i8*, !dbg !1433
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %istext, metadata !894, metadata !1016), !dbg !1434
  store i32 1, i32* %istext, align 4, !dbg !1434, !tbaa !1332
  %5 = bitcast i32* %header to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %header, metadata !895, metadata !1016), !dbg !1436
  store i32 0, i32* %header, align 4, !dbg !1436, !tbaa !1332
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1437, !tbaa !1021
  %7 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1439, !tbaa !1021
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @binascii_b2a_qp._keywords, i32 0, i32 0), %struct.bufferinfo* %data, i32* %quotetabs, i32* %istext, i32* %header), !dbg !1440
  %tobool = icmp ne i32 %call, 0, !dbg !1440
  br i1 %tobool, label %if.end, label %if.then, !dbg !1441

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1442

if.end:                                           ; preds = %entry
  %8 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !1443, !tbaa !1021
  %9 = load i32, i32* %quotetabs, align 4, !dbg !1444, !tbaa !1332
  %10 = load i32, i32* %istext, align 4, !dbg !1445, !tbaa !1332
  %11 = load i32, i32* %header, align 4, !dbg !1446, !tbaa !1332
  %call1 = call %struct._object* @binascii_b2a_qp_impl(%struct.PyModuleDef* %8, %struct.bufferinfo* %data, i32 %9, i32 %10, i32 %11), !dbg !1447
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1448, !tbaa !1021
  br label %exit, !dbg !1449

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1450
  %12 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1450, !tbaa !1100
  %tobool2 = icmp ne %struct._object* %12, null, !dbg !1452
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1453

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1454
  br label %if.end.4, !dbg !1454

if.end.4:                                         ; preds = %if.then.3, %exit
  %13 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1455, !tbaa !1021
  %14 = bitcast i32* %header to i8*, !dbg !1456
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1456
  %15 = bitcast i32* %istext to i8*, !dbg !1456
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !1456
  %16 = bitcast i32* %quotetabs to i8*, !dbg !1456
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !1456
  %17 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1456
  call void @llvm.lifetime.end(i64 80, i8* %17) #1, !dbg !1456
  %18 = bitcast %struct._object** %return_value to i8*, !dbg !1456
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1456
  ret %struct._object* %13, !dbg !1457
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @ascii_buffer_converter(%struct._object* %arg, %struct.bufferinfo* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %buf.addr = alloca %struct.bufferinfo*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !450, metadata !1016), !dbg !1458
  store %struct.bufferinfo* %buf, %struct.bufferinfo** %buf.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %buf.addr, metadata !451, metadata !1016), !dbg !1459
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1460, !tbaa !1021
  %cmp = icmp eq %struct._object* %0, null, !dbg !1462
  br i1 %cmp, label %if.then, label %if.end, !dbg !1463

if.then:                                          ; preds = %entry
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1464, !tbaa !1021
  call void @PyBuffer_Release(%struct.bufferinfo* %1), !dbg !1466
  store i32 1, i32* %retval, !dbg !1467
  br label %return, !dbg !1467

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1468, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1470
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1470, !tbaa !1065
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1471
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1471, !tbaa !1472
  %and = and i64 %4, 268435456, !dbg !1473
  %cmp1 = icmp ne i64 %and, 0, !dbg !1474
  br i1 %cmp1, label %if.then.2, label %if.end.33, !dbg !1475

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1476, !tbaa !1021
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*, !dbg !1479
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3, !dbg !1480
  %7 = bitcast %struct.anon* %state to i32*, !dbg !1481
  %bf.load = load i32, i32* %7, align 4, !dbg !1481
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1481
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1481
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !1482
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1482

cond.true:                                        ; preds = %if.then.2
  br label %cond.end, !dbg !1483

cond.false:                                       ; preds = %if.then.2
  %8 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1485, !tbaa !1021
  %call = call i32 @_PyUnicode_Ready(%struct._object* %8), !dbg !1487
  br label %cond.end, !dbg !1482

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ], !dbg !1482
  %cmp3 = icmp slt i32 %cond, 0, !dbg !1488
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1491

if.then.4:                                        ; preds = %cond.end
  store i32 0, i32* %retval, !dbg !1492
  br label %return, !dbg !1492

if.end.5:                                         ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1493, !tbaa !1021
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*, !dbg !1495
  %state6 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3, !dbg !1496
  %11 = bitcast %struct.anon* %state6 to i32*, !dbg !1497
  %bf.load7 = load i32, i32* %11, align 4, !dbg !1497
  %bf.lshr8 = lshr i32 %bf.load7, 6, !dbg !1497
  %bf.clear9 = and i32 %bf.lshr8, 1, !dbg !1497
  %tobool10 = icmp ne i32 %bf.clear9, 0, !dbg !1498
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1499

if.then.11:                                       ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1500, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0)), !dbg !1502
  store i32 0, i32* %retval, !dbg !1503
  br label %return, !dbg !1503

if.end.12:                                        ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1504, !tbaa !1021
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*, !dbg !1505
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3, !dbg !1506
  %15 = bitcast %struct.anon* %state13 to i32*, !dbg !1507
  %bf.load14 = load i32, i32* %15, align 4, !dbg !1507
  %bf.lshr15 = lshr i32 %bf.load14, 5, !dbg !1507
  %bf.clear16 = and i32 %bf.lshr15, 1, !dbg !1507
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !1508
  br i1 %tobool17, label %cond.true.18, label %cond.false.29, !dbg !1508

cond.true.18:                                     ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1509, !tbaa !1021
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*, !dbg !1511
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 3, !dbg !1512
  %18 = bitcast %struct.anon* %state19 to i32*, !dbg !1513
  %bf.load20 = load i32, i32* %18, align 4, !dbg !1513
  %bf.lshr21 = lshr i32 %bf.load20, 6, !dbg !1513
  %bf.clear22 = and i32 %bf.lshr21, 1, !dbg !1513
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !1514
  br i1 %tobool23, label %cond.true.24, label %cond.false.25, !dbg !1514

cond.true.24:                                     ; preds = %cond.true.18
  %19 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1515, !tbaa !1021
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*, !dbg !1517
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i64 1, !dbg !1518
  %21 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !1519
  br label %cond.end.27, !dbg !1514

cond.false.25:                                    ; preds = %cond.true.18
  %22 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1520, !tbaa !1021
  %23 = bitcast %struct._object* %22 to %struct.PyCompactUnicodeObject*, !dbg !1522
  %add.ptr26 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %23, i64 1, !dbg !1523
  %24 = bitcast %struct.PyCompactUnicodeObject* %add.ptr26 to i8*, !dbg !1524
  br label %cond.end.27, !dbg !1514

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %cond28 = phi i8* [ %21, %cond.true.24 ], [ %24, %cond.false.25 ], !dbg !1514
  br label %cond.end.30, !dbg !1525

cond.false.29:                                    ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1528, !tbaa !1021
  %26 = bitcast %struct._object* %25 to %struct.PyUnicodeObject*, !dbg !1530
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %26, i32 0, i32 1, !dbg !1531
  %any = bitcast %union.anon* %data to i8**, !dbg !1532
  %27 = load i8*, i8** %any, align 8, !dbg !1532, !tbaa !1021
  br label %cond.end.30, !dbg !1508

cond.end.30:                                      ; preds = %cond.false.29, %cond.end.27
  %cond31 = phi i8* [ %cond28, %cond.end.27 ], [ %27, %cond.false.29 ], !dbg !1508
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1533, !tbaa !1021
  %buf32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 0, !dbg !1536
  store i8* %cond31, i8** %buf32, align 8, !dbg !1537, !tbaa !1538
  %29 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1539, !tbaa !1021
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*, !dbg !1540
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 1, !dbg !1541
  %31 = load i64, i64* %length, align 8, !dbg !1541, !tbaa !1542
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1545, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 2, !dbg !1546
  store i64 %31, i64* %len, align 8, !dbg !1547, !tbaa !1548
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1549, !tbaa !1021
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 1, !dbg !1550
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !1551, !tbaa !1100
  store i32 1, i32* %retval, !dbg !1552
  br label %return, !dbg !1552

if.end.33:                                        ; preds = %if.end
  %34 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1553, !tbaa !1021
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1555, !tbaa !1021
  %call34 = call i32 @PyObject_GetBuffer(%struct._object* %34, %struct.bufferinfo* %35, i32 0), !dbg !1556
  %cmp35 = icmp ne i32 %call34, 0, !dbg !1557
  br i1 %cmp35, label %if.then.36, label %if.end.39, !dbg !1558

if.then.36:                                       ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1559, !tbaa !1021
  %37 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1561, !tbaa !1021
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1562
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1562, !tbaa !1065
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i32 0, i32 0), %struct._typeobject* %38), !dbg !1563
  store i32 0, i32* %retval, !dbg !1564
  br label %return, !dbg !1564

if.end.39:                                        ; preds = %if.end.33
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1565, !tbaa !1021
  %call40 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %39, i8 signext 67), !dbg !1567
  %tobool41 = icmp ne i32 %call40, 0, !dbg !1567
  br i1 %tobool41, label %if.end.45, label %if.then.42, !dbg !1568

if.then.42:                                       ; preds = %if.end.39
  %40 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1569, !tbaa !1021
  %41 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1571, !tbaa !1021
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1572
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1572, !tbaa !1065
  %call44 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i32 0, i32 0), %struct._typeobject* %42), !dbg !1573
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %buf.addr, align 8, !dbg !1574, !tbaa !1021
  call void @PyBuffer_Release(%struct.bufferinfo* %43), !dbg !1575
  store i32 0, i32* %retval, !dbg !1576
  br label %return, !dbg !1576

if.end.45:                                        ; preds = %if.end.39
  store i32 131072, i32* %retval, !dbg !1577
  br label %return, !dbg !1577

return:                                           ; preds = %if.end.45, %if.then.42, %if.then.36, %cond.end.30, %if.then.11, %if.then.4, %if.then
  %44 = load i32, i32* %retval, !dbg !1578
  ret i32 %44, !dbg !1578
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !456, metadata !1016), !dbg !1579
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !457, metadata !1016), !dbg !1580
  %0 = bitcast i8** %ascii_data to i8*, !dbg !1581
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1581
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !458, metadata !1016), !dbg !1582
  %1 = bitcast i8** %bin_data to i8*, !dbg !1581
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1581
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !459, metadata !1016), !dbg !1583
  %2 = bitcast i32* %leftbits to i8*, !dbg !1584
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1584
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !460, metadata !1016), !dbg !1585
  store i32 0, i32* %leftbits, align 4, !dbg !1585, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !1586
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !461, metadata !1016), !dbg !1587
  %3 = bitcast i32* %leftchar to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1588
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !462, metadata !1016), !dbg !1589
  store i32 0, i32* %leftchar, align 4, !dbg !1589, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1590
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !463, metadata !1016), !dbg !1591
  %5 = bitcast i64* %ascii_len to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1592
  call void @llvm.dbg.declare(metadata i64* %ascii_len, metadata !464, metadata !1016), !dbg !1593
  %6 = bitcast i64* %bin_len to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1592
  call void @llvm.dbg.declare(metadata i64* %bin_len, metadata !465, metadata !1016), !dbg !1594
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1595, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0, !dbg !1596
  %8 = load i8*, i8** %buf, align 8, !dbg !1596, !tbaa !1538
  store i8* %8, i8** %ascii_data, align 8, !dbg !1597, !tbaa !1021
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1598, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 2, !dbg !1599
  %10 = load i64, i64* %len, align 8, !dbg !1599, !tbaa !1548
  store i64 %10, i64* %ascii_len, align 8, !dbg !1600, !tbaa !1601
  %11 = load i8*, i8** %ascii_data, align 8, !dbg !1602, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !1602
  store i8* %incdec.ptr, i8** %ascii_data, align 8, !dbg !1602, !tbaa !1021
  %12 = load i8, i8* %11, align 1, !dbg !1603, !tbaa !1604
  %conv = zext i8 %12 to i32, !dbg !1603
  %sub = sub i32 %conv, 32, !dbg !1605
  %and = and i32 %sub, 63, !dbg !1606
  %conv1 = sext i32 %and to i64, !dbg !1607
  store i64 %conv1, i64* %bin_len, align 8, !dbg !1608, !tbaa !1601
  %13 = load i64, i64* %ascii_len, align 8, !dbg !1609, !tbaa !1601
  %dec = add i64 %13, -1, !dbg !1609
  store i64 %dec, i64* %ascii_len, align 8, !dbg !1609, !tbaa !1601
  %14 = load i64, i64* %bin_len, align 8, !dbg !1610, !tbaa !1601
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14), !dbg !1612
  store %struct._object* %call, %struct._object** %rv, align 8, !dbg !1613, !tbaa !1021
  %cmp = icmp eq %struct._object* %call, null, !dbg !1614
  br i1 %cmp, label %if.then, label %if.end, !dbg !1615

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1616

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1617, !tbaa !1021
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*, !dbg !1618
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2, !dbg !1619
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1620
  store i8* %arraydecay, i8** %bin_data, align 8, !dbg !1621, !tbaa !1021
  br label %for.cond, !dbg !1622

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i64, i64* %bin_len, align 8, !dbg !1623, !tbaa !1601
  %cmp3 = icmp sgt i64 %17, 0, !dbg !1626
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1627

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %ascii_len, align 8, !dbg !1628, !tbaa !1601
  %cmp5 = icmp sgt i64 %18, 0, !dbg !1629
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1630

cond.true:                                        ; preds = %for.body
  %19 = load i8*, i8** %ascii_data, align 8, !dbg !1631, !tbaa !1021
  %20 = load i8, i8* %19, align 1, !dbg !1633, !tbaa !1604
  %conv7 = zext i8 %20 to i32, !dbg !1633
  br label %cond.end, !dbg !1630

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !1634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ 0, %cond.false ], !dbg !1630
  %conv8 = trunc i32 %cond to i8, !dbg !1636
  store i8 %conv8, i8* %this_ch, align 1, !dbg !1639, !tbaa !1604
  %21 = load i8, i8* %this_ch, align 1, !dbg !1640, !tbaa !1604
  %conv9 = zext i8 %21 to i32, !dbg !1640
  %cmp10 = icmp eq i32 %conv9, 10, !dbg !1641
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false, !dbg !1642

lor.lhs.false:                                    ; preds = %cond.end
  %22 = load i8, i8* %this_ch, align 1, !dbg !1643, !tbaa !1604
  %conv12 = zext i8 %22 to i32, !dbg !1643
  %cmp13 = icmp eq i32 %conv12, 13, !dbg !1645
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false.15, !dbg !1646

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %23 = load i64, i64* %ascii_len, align 8, !dbg !1647, !tbaa !1601
  %cmp16 = icmp sle i64 %23, 0, !dbg !1649
  br i1 %cmp16, label %if.then.18, label %if.else, !dbg !1650

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %cond.end
  store i8 0, i8* %this_ch, align 1, !dbg !1651, !tbaa !1604
  br label %if.end.38, !dbg !1653

if.else:                                          ; preds = %lor.lhs.false.15
  %24 = load i8, i8* %this_ch, align 1, !dbg !1654, !tbaa !1604
  %conv19 = zext i8 %24 to i32, !dbg !1654
  %cmp20 = icmp slt i32 %conv19, 32, !dbg !1655
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false.22, !dbg !1656

lor.lhs.false.22:                                 ; preds = %if.else
  %25 = load i8, i8* %this_ch, align 1, !dbg !1657, !tbaa !1604
  %conv23 = zext i8 %25 to i32, !dbg !1657
  %cmp24 = icmp sgt i32 %conv23, 96, !dbg !1659
  br i1 %cmp24, label %if.then.26, label %if.end.33, !dbg !1660

if.then.26:                                       ; preds = %lor.lhs.false.22, %if.else
  %26 = load %struct._object*, %struct._object** @Error, align 8, !dbg !1661, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)), !dbg !1662
  br label %do.body, !dbg !1663

do.body:                                          ; preds = %if.then.26
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1664
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !1664
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !466, metadata !1016), !dbg !1666
  %28 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1667, !tbaa !1021
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !1666, !tbaa !1021
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1668, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1670
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1671, !tbaa !1055
  %dec27 = add i64 %30, -1, !dbg !1671
  store i64 %dec27, i64* %ob_refcnt, align 8, !dbg !1671, !tbaa !1055
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !1672
  br i1 %cmp28, label %if.then.30, label %if.else.31, !dbg !1673

if.then.30:                                       ; preds = %do.body
  br label %if.end.32, !dbg !1674

if.else.31:                                       ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1676, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !1678
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1678, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !1679
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1679, !tbaa !1067
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1680, !tbaa !1021
  call void %33(%struct._object* %34), !dbg !1681
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1682
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !1682
  br label %do.cond, !dbg !1684

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !1685

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1687

if.end.33:                                        ; preds = %lor.lhs.false.22
  %36 = load i8, i8* %this_ch, align 1, !dbg !1688, !tbaa !1604
  %conv34 = zext i8 %36 to i32, !dbg !1688
  %sub35 = sub i32 %conv34, 32, !dbg !1689
  %and36 = and i32 %sub35, 63, !dbg !1690
  %conv37 = trunc i32 %and36 to i8, !dbg !1691
  store i8 %conv37, i8* %this_ch, align 1, !dbg !1692, !tbaa !1604
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.33, %if.then.18
  %37 = load i32, i32* %leftchar, align 4, !dbg !1693, !tbaa !1332
  %shl = shl i32 %37, 6, !dbg !1694
  %38 = load i8, i8* %this_ch, align 1, !dbg !1695, !tbaa !1604
  %conv39 = zext i8 %38 to i32, !dbg !1696
  %or = or i32 %shl, %conv39, !dbg !1697
  store i32 %or, i32* %leftchar, align 4, !dbg !1698, !tbaa !1332
  %39 = load i32, i32* %leftbits, align 4, !dbg !1699, !tbaa !1332
  %add = add i32 %39, 6, !dbg !1699
  store i32 %add, i32* %leftbits, align 4, !dbg !1699, !tbaa !1332
  %40 = load i32, i32* %leftbits, align 4, !dbg !1700, !tbaa !1332
  %cmp40 = icmp sge i32 %40, 8, !dbg !1702
  br i1 %cmp40, label %if.then.42, label %if.end.51, !dbg !1703

if.then.42:                                       ; preds = %if.end.38
  %41 = load i32, i32* %leftbits, align 4, !dbg !1704, !tbaa !1332
  %sub43 = sub i32 %41, 8, !dbg !1704
  store i32 %sub43, i32* %leftbits, align 4, !dbg !1704, !tbaa !1332
  %42 = load i32, i32* %leftchar, align 4, !dbg !1706, !tbaa !1332
  %43 = load i32, i32* %leftbits, align 4, !dbg !1707, !tbaa !1332
  %shr = lshr i32 %42, %43, !dbg !1708
  %and44 = and i32 %shr, 255, !dbg !1709
  %conv45 = trunc i32 %and44 to i8, !dbg !1710
  %44 = load i8*, i8** %bin_data, align 8, !dbg !1711, !tbaa !1021
  %incdec.ptr46 = getelementptr i8, i8* %44, i32 1, !dbg !1711
  store i8* %incdec.ptr46, i8** %bin_data, align 8, !dbg !1711, !tbaa !1021
  store i8 %conv45, i8* %44, align 1, !dbg !1712, !tbaa !1604
  %45 = load i32, i32* %leftbits, align 4, !dbg !1713, !tbaa !1332
  %shl47 = shl i32 1, %45, !dbg !1714
  %sub48 = sub i32 %shl47, 1, !dbg !1715
  %46 = load i32, i32* %leftchar, align 4, !dbg !1716, !tbaa !1332
  %and49 = and i32 %46, %sub48, !dbg !1716
  store i32 %and49, i32* %leftchar, align 4, !dbg !1716, !tbaa !1332
  %47 = load i64, i64* %bin_len, align 8, !dbg !1717, !tbaa !1601
  %dec50 = add i64 %47, -1, !dbg !1717
  store i64 %dec50, i64* %bin_len, align 8, !dbg !1717, !tbaa !1601
  br label %if.end.51, !dbg !1718

if.end.51:                                        ; preds = %if.then.42, %if.end.38
  br label %for.inc, !dbg !1719

for.inc:                                          ; preds = %if.end.51
  %48 = load i64, i64* %ascii_len, align 8, !dbg !1720, !tbaa !1601
  %dec52 = add i64 %48, -1, !dbg !1720
  store i64 %dec52, i64* %ascii_len, align 8, !dbg !1720, !tbaa !1601
  %49 = load i8*, i8** %ascii_data, align 8, !dbg !1721, !tbaa !1021
  %incdec.ptr53 = getelementptr i8, i8* %49, i32 1, !dbg !1721
  store i8* %incdec.ptr53, i8** %ascii_data, align 8, !dbg !1721, !tbaa !1021
  br label %for.cond, !dbg !1722

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1723

while.cond:                                       ; preds = %if.end.86, %for.end
  %50 = load i64, i64* %ascii_len, align 8, !dbg !1724, !tbaa !1601
  %dec54 = add i64 %50, -1, !dbg !1724
  store i64 %dec54, i64* %ascii_len, align 8, !dbg !1724, !tbaa !1601
  %cmp55 = icmp sgt i64 %50, 0, !dbg !1727
  br i1 %cmp55, label %while.body, label %while.end, !dbg !1723

while.body:                                       ; preds = %while.cond
  %51 = load i8*, i8** %ascii_data, align 8, !dbg !1728, !tbaa !1021
  %incdec.ptr57 = getelementptr i8, i8* %51, i32 1, !dbg !1728
  store i8* %incdec.ptr57, i8** %ascii_data, align 8, !dbg !1728, !tbaa !1021
  %52 = load i8, i8* %51, align 1, !dbg !1729, !tbaa !1604
  store i8 %52, i8* %this_ch, align 1, !dbg !1730, !tbaa !1604
  %53 = load i8, i8* %this_ch, align 1, !dbg !1731, !tbaa !1604
  %conv58 = zext i8 %53 to i32, !dbg !1731
  %cmp59 = icmp ne i32 %conv58, 32, !dbg !1732
  br i1 %cmp59, label %land.lhs.true, label %if.end.86, !dbg !1733

land.lhs.true:                                    ; preds = %while.body
  %54 = load i8, i8* %this_ch, align 1, !dbg !1734, !tbaa !1604
  %conv61 = zext i8 %54 to i32, !dbg !1734
  %cmp62 = icmp ne i32 %conv61, 96, !dbg !1736
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.86, !dbg !1737

land.lhs.true.64:                                 ; preds = %land.lhs.true
  %55 = load i8, i8* %this_ch, align 1, !dbg !1738, !tbaa !1604
  %conv65 = zext i8 %55 to i32, !dbg !1738
  %cmp66 = icmp ne i32 %conv65, 10, !dbg !1739
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.86, !dbg !1740

land.lhs.true.68:                                 ; preds = %land.lhs.true.64
  %56 = load i8, i8* %this_ch, align 1, !dbg !1741, !tbaa !1604
  %conv69 = zext i8 %56 to i32, !dbg !1741
  %cmp70 = icmp ne i32 %conv69, 13, !dbg !1742
  br i1 %cmp70, label %if.then.72, label %if.end.86, !dbg !1743

if.then.72:                                       ; preds = %land.lhs.true.68
  %57 = load %struct._object*, %struct._object** @Error, align 8, !dbg !1744, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)), !dbg !1745
  br label %do.body.73, !dbg !1746

do.body.73:                                       ; preds = %if.then.72
  %58 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1747
  call void @llvm.lifetime.start(i64 8, i8* %58) #1, !dbg !1747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !475, metadata !1016), !dbg !1749
  %59 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1750, !tbaa !1021
  store %struct._object* %59, %struct._object** %_py_decref_tmp74, align 8, !dbg !1749, !tbaa !1021
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1751, !tbaa !1021
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !1753
  %61 = load i64, i64* %ob_refcnt75, align 8, !dbg !1754, !tbaa !1055
  %dec76 = add i64 %61, -1, !dbg !1754
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1754, !tbaa !1055
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1755
  br i1 %cmp77, label %if.then.79, label %if.else.80, !dbg !1756

if.then.79:                                       ; preds = %do.body.73
  br label %if.end.83, !dbg !1757

if.else.80:                                       ; preds = %do.body.73
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1759, !tbaa !1021
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !1761
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1761, !tbaa !1065
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !1762
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1762, !tbaa !1067
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1763, !tbaa !1021
  call void %64(%struct._object* %65), !dbg !1764
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  %66 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !1765
  br label %do.cond.84, !dbg !1767

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85, !dbg !1768

do.end.85:                                        ; preds = %do.cond.84
  store %struct._object* null, %struct._object** %retval, !dbg !1770
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1770

if.end.86:                                        ; preds = %land.lhs.true.68, %land.lhs.true.64, %land.lhs.true, %while.body
  br label %while.cond, !dbg !1723

while.end:                                        ; preds = %while.cond
  %67 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1771, !tbaa !1021
  store %struct._object* %67, %struct._object** %retval, !dbg !1772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1772

cleanup:                                          ; preds = %while.end, %do.end.85, %do.end, %if.then
  %68 = bitcast i64* %bin_len to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !1773
  %69 = bitcast i64* %ascii_len to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !1773
  %70 = bitcast %struct._object** %rv to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !1773
  %71 = bitcast i32* %leftchar to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 4, i8* %71) #1, !dbg !1773
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !1773
  %72 = bitcast i32* %leftbits to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 4, i8* %72) #1, !dbg !1773
  %73 = bitcast i8** %bin_data to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !1773
  %74 = bitcast i8** %ascii_data to i8*, !dbg !1773
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !1773
  %75 = load %struct._object*, %struct._object** %retval, !dbg !1773
  ret %struct._object* %75, !dbg !1773
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !488, metadata !1016), !dbg !1774
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !489, metadata !1016), !dbg !1775
  %0 = bitcast i8** %ascii_data to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1776
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !490, metadata !1016), !dbg !1777
  %1 = bitcast i8** %bin_data to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1776
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !491, metadata !1016), !dbg !1778
  %2 = bitcast i32* %leftbits to i8*, !dbg !1779
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1779
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !492, metadata !1016), !dbg !1780
  store i32 0, i32* %leftbits, align 4, !dbg !1780, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !1781
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !493, metadata !1016), !dbg !1782
  %3 = bitcast i32* %leftchar to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1783
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !494, metadata !1016), !dbg !1784
  store i32 0, i32* %leftchar, align 4, !dbg !1784, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !1785
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1785
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !495, metadata !1016), !dbg !1786
  %5 = bitcast i64* %bin_len to i8*, !dbg !1787
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1787
  call void @llvm.dbg.declare(metadata i64* %bin_len, metadata !496, metadata !1016), !dbg !1788
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1789, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !1790
  %7 = load i8*, i8** %buf, align 8, !dbg !1790, !tbaa !1538
  store i8* %7, i8** %bin_data, align 8, !dbg !1791, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1792, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !1793
  %9 = load i64, i64* %len, align 8, !dbg !1793, !tbaa !1548
  store i64 %9, i64* %bin_len, align 8, !dbg !1794, !tbaa !1601
  %10 = load i64, i64* %bin_len, align 8, !dbg !1795, !tbaa !1601
  %cmp = icmp sgt i64 %10, 45, !dbg !1797
  br i1 %cmp, label %if.then, label %if.end, !dbg !1798

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** @Error, align 8, !dbg !1799, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)), !dbg !1801
  store %struct._object* null, %struct._object** %retval, !dbg !1802
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1802

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %bin_len, align 8, !dbg !1803, !tbaa !1601
  %add = add i64 %12, 2, !dbg !1805
  %div = sdiv i64 %add, 3, !dbg !1806
  %mul = mul i64 %div, 4, !dbg !1807
  %add1 = add i64 2, %mul, !dbg !1808
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add1), !dbg !1809
  store %struct._object* %call, %struct._object** %rv, align 8, !dbg !1810, !tbaa !1021
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !1811
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1812

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1813
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1813

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1814, !tbaa !1021
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*, !dbg !1815
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2, !dbg !1816
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1817
  store i8* %arraydecay, i8** %ascii_data, align 8, !dbg !1818, !tbaa !1021
  %15 = load i64, i64* %bin_len, align 8, !dbg !1819, !tbaa !1601
  %and = and i64 %15, 63, !dbg !1820
  %add5 = add i64 32, %and, !dbg !1821
  %conv = trunc i64 %add5 to i8, !dbg !1822
  %16 = load i8*, i8** %ascii_data, align 8, !dbg !1823, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %16, i32 1, !dbg !1823
  store i8* %incdec.ptr, i8** %ascii_data, align 8, !dbg !1823, !tbaa !1021
  store i8 %conv, i8* %16, align 1, !dbg !1824, !tbaa !1604
  br label %for.cond, !dbg !1825

for.cond:                                         ; preds = %for.inc, %if.end.4
  %17 = load i64, i64* %bin_len, align 8, !dbg !1826, !tbaa !1601
  %cmp6 = icmp sgt i64 %17, 0, !dbg !1831
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !1832

lor.rhs:                                          ; preds = %for.cond
  %18 = load i32, i32* %leftbits, align 4, !dbg !1833, !tbaa !1332
  %cmp8 = icmp ne i32 %18, 0, !dbg !1835
  br label %lor.end, !dbg !1832

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %19 = phi i1 [ true, %for.cond ], [ %cmp8, %lor.rhs ]
  br i1 %19, label %for.body, label %for.end, !dbg !1836

for.body:                                         ; preds = %lor.end
  %20 = load i64, i64* %bin_len, align 8, !dbg !1839, !tbaa !1601
  %cmp10 = icmp sgt i64 %20, 0, !dbg !1842
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !1843

if.then.12:                                       ; preds = %for.body
  %21 = load i32, i32* %leftchar, align 4, !dbg !1844, !tbaa !1332
  %shl = shl i32 %21, 8, !dbg !1845
  %22 = load i8*, i8** %bin_data, align 8, !dbg !1846, !tbaa !1021
  %23 = load i8, i8* %22, align 1, !dbg !1847, !tbaa !1604
  %conv13 = zext i8 %23 to i32, !dbg !1847
  %or = or i32 %shl, %conv13, !dbg !1848
  store i32 %or, i32* %leftchar, align 4, !dbg !1849, !tbaa !1332
  br label %if.end.15, !dbg !1850

if.else:                                          ; preds = %for.body
  %24 = load i32, i32* %leftchar, align 4, !dbg !1851, !tbaa !1332
  %shl14 = shl i32 %24, 8, !dbg !1851
  store i32 %shl14, i32* %leftchar, align 4, !dbg !1851, !tbaa !1332
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %25 = load i32, i32* %leftbits, align 4, !dbg !1852, !tbaa !1332
  %add16 = add i32 %25, 8, !dbg !1852
  store i32 %add16, i32* %leftbits, align 4, !dbg !1852, !tbaa !1332
  br label %while.cond, !dbg !1853

while.cond:                                       ; preds = %while.body, %if.end.15
  %26 = load i32, i32* %leftbits, align 4, !dbg !1854, !tbaa !1332
  %cmp17 = icmp sge i32 %26, 6, !dbg !1857
  br i1 %cmp17, label %while.body, label %while.end, !dbg !1853

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %leftchar, align 4, !dbg !1858, !tbaa !1332
  %28 = load i32, i32* %leftbits, align 4, !dbg !1860, !tbaa !1332
  %sub = sub i32 %28, 6, !dbg !1861
  %shr = lshr i32 %27, %sub, !dbg !1862
  %and19 = and i32 %shr, 63, !dbg !1863
  %conv20 = trunc i32 %and19 to i8, !dbg !1864
  store i8 %conv20, i8* %this_ch, align 1, !dbg !1865, !tbaa !1604
  %29 = load i32, i32* %leftbits, align 4, !dbg !1866, !tbaa !1332
  %sub21 = sub i32 %29, 6, !dbg !1866
  store i32 %sub21, i32* %leftbits, align 4, !dbg !1866, !tbaa !1332
  %30 = load i8, i8* %this_ch, align 1, !dbg !1867, !tbaa !1604
  %conv22 = zext i8 %30 to i32, !dbg !1867
  %add23 = add i32 %conv22, 32, !dbg !1868
  %conv24 = trunc i32 %add23 to i8, !dbg !1867
  %31 = load i8*, i8** %ascii_data, align 8, !dbg !1869, !tbaa !1021
  %incdec.ptr25 = getelementptr i8, i8* %31, i32 1, !dbg !1869
  store i8* %incdec.ptr25, i8** %ascii_data, align 8, !dbg !1869, !tbaa !1021
  store i8 %conv24, i8* %31, align 1, !dbg !1870, !tbaa !1604
  br label %while.cond, !dbg !1853

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !1871

for.inc:                                          ; preds = %while.end
  %32 = load i64, i64* %bin_len, align 8, !dbg !1872, !tbaa !1601
  %dec = add i64 %32, -1, !dbg !1872
  store i64 %dec, i64* %bin_len, align 8, !dbg !1872, !tbaa !1601
  %33 = load i8*, i8** %bin_data, align 8, !dbg !1873, !tbaa !1021
  %incdec.ptr26 = getelementptr i8, i8* %33, i32 1, !dbg !1873
  store i8* %incdec.ptr26, i8** %bin_data, align 8, !dbg !1873, !tbaa !1021
  br label %for.cond, !dbg !1874

for.end:                                          ; preds = %lor.end
  %34 = load i8*, i8** %ascii_data, align 8, !dbg !1875, !tbaa !1021
  %incdec.ptr27 = getelementptr i8, i8* %34, i32 1, !dbg !1875
  store i8* %incdec.ptr27, i8** %ascii_data, align 8, !dbg !1875, !tbaa !1021
  store i8 10, i8* %34, align 1, !dbg !1876, !tbaa !1604
  %35 = load i8*, i8** %ascii_data, align 8, !dbg !1877, !tbaa !1021
  %36 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1878, !tbaa !1021
  %37 = bitcast %struct._object* %36 to %struct.PyBytesObject*, !dbg !1879
  %ob_sval28 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %37, i32 0, i32 2, !dbg !1880
  %arraydecay29 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval28, i32 0, i32 0, !dbg !1881
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64, !dbg !1882
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay29 to i64, !dbg !1882
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1882
  %call30 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !1883
  %cmp31 = icmp slt i32 %call30, 0, !dbg !1884
  br i1 %cmp31, label %if.then.33, label %if.end.47, !dbg !1885

if.then.33:                                       ; preds = %for.end
  br label %do.body, !dbg !1886

do.body:                                          ; preds = %if.then.33
  %38 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !1887
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !497, metadata !1016), !dbg !1889
  %39 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1890, !tbaa !1021
  store %struct._object* %39, %struct._object** %_py_tmp, align 8, !dbg !1889, !tbaa !1021
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1891, !tbaa !1021
  %cmp34 = icmp ne %struct._object* %40, null, !dbg !1892
  br i1 %cmp34, label %if.then.36, label %if.end.44, !dbg !1893

if.then.36:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !1894, !tbaa !1021
  br label %do.body.37, !dbg !1896

do.body.37:                                       ; preds = %if.then.36
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1897
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !1897
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !501, metadata !1016), !dbg !1899
  %42 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1900, !tbaa !1021
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8, !dbg !1899, !tbaa !1021
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1901, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !1903
  %44 = load i64, i64* %ob_refcnt, align 8, !dbg !1904, !tbaa !1055
  %dec38 = add i64 %44, -1, !dbg !1904
  store i64 %dec38, i64* %ob_refcnt, align 8, !dbg !1904, !tbaa !1055
  %cmp39 = icmp ne i64 %dec38, 0, !dbg !1905
  br i1 %cmp39, label %if.then.41, label %if.else.42, !dbg !1906

if.then.41:                                       ; preds = %do.body.37
  br label %if.end.43, !dbg !1907

if.else.42:                                       ; preds = %do.body.37
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1909, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !1911
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1911, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !1912
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1912, !tbaa !1067
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1913, !tbaa !1021
  call void %47(%struct._object* %48), !dbg !1914
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1915
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1915
  br label %do.cond, !dbg !1917

do.cond:                                          ; preds = %if.end.43
  br label %do.end, !dbg !1918

do.end:                                           ; preds = %do.cond
  br label %if.end.44, !dbg !1920

if.end.44:                                        ; preds = %do.end, %do.body
  %50 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1922
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1922
  br label %do.cond.45, !dbg !1925

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1926

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47, !dbg !1928

if.end.47:                                        ; preds = %do.end.46, %for.end
  %51 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1929, !tbaa !1021
  store %struct._object* %51, %struct._object** %retval, !dbg !1930
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1930

cleanup:                                          ; preds = %if.end.47, %if.then.3, %if.then
  %52 = bitcast i64* %bin_len to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1931
  %53 = bitcast %struct._object** %rv to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1931
  %54 = bitcast i32* %leftchar to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !1931
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !1931
  %55 = bitcast i32* %leftbits to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 4, i8* %55) #1, !dbg !1931
  %56 = bitcast i8** %bin_data to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1931
  %57 = bitcast i8** %ascii_data to i8*, !dbg !1931
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !1931
  %58 = load %struct._object*, %struct._object** %retval, !dbg !1931
  ret %struct._object* %58, !dbg !1931
}

declare i32 @_PyBytes_Resize(%struct._object**, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !513, metadata !1016), !dbg !1932
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !514, metadata !1016), !dbg !1933
  %0 = bitcast i8** %ascii_data to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1934
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !515, metadata !1016), !dbg !1935
  %1 = bitcast i8** %bin_data to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1934
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !516, metadata !1016), !dbg !1936
  %2 = bitcast i32* %leftbits to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1937
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !517, metadata !1016), !dbg !1938
  store i32 0, i32* %leftbits, align 4, !dbg !1938, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !1939
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !518, metadata !1016), !dbg !1940
  %3 = bitcast i32* %leftchar to i8*, !dbg !1941
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1941
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !519, metadata !1016), !dbg !1942
  store i32 0, i32* %leftchar, align 4, !dbg !1942, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !1943
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1943
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !520, metadata !1016), !dbg !1944
  %5 = bitcast i64* %ascii_len to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %ascii_len, metadata !521, metadata !1016), !dbg !1946
  %6 = bitcast i64* %bin_len to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %bin_len, metadata !522, metadata !1016), !dbg !1947
  %7 = bitcast i32* %quad_pos to i8*, !dbg !1948
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !1948
  call void @llvm.dbg.declare(metadata i32* %quad_pos, metadata !523, metadata !1016), !dbg !1949
  store i32 0, i32* %quad_pos, align 4, !dbg !1949, !tbaa !1332
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1950, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 0, !dbg !1951
  %9 = load i8*, i8** %buf, align 8, !dbg !1951, !tbaa !1538
  store i8* %9, i8** %ascii_data, align 8, !dbg !1952, !tbaa !1021
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1953, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 2, !dbg !1954
  %11 = load i64, i64* %len, align 8, !dbg !1954, !tbaa !1548
  store i64 %11, i64* %ascii_len, align 8, !dbg !1955, !tbaa !1601
  %12 = load i64, i64* %ascii_len, align 8, !dbg !1956, !tbaa !1601
  %cmp = icmp sgt i64 %12, 9223372036854775804, !dbg !1958
  br i1 %cmp, label %if.then, label %if.end, !dbg !1959

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !1960
  store %struct._object* %call, %struct._object** %retval, !dbg !1961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1961

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %ascii_len, align 8, !dbg !1962, !tbaa !1601
  %add = add i64 %13, 3, !dbg !1963
  %div = sdiv i64 %add, 4, !dbg !1964
  %mul = mul i64 %div, 3, !dbg !1965
  store i64 %mul, i64* %bin_len, align 8, !dbg !1966, !tbaa !1601
  %14 = load i64, i64* %bin_len, align 8, !dbg !1967, !tbaa !1601
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14), !dbg !1969
  store %struct._object* %call1, %struct._object** %rv, align 8, !dbg !1970, !tbaa !1021
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1971
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1972

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1973
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1973

if.end.4:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %rv, align 8, !dbg !1974, !tbaa !1021
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*, !dbg !1975
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2, !dbg !1976
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1977
  store i8* %arraydecay, i8** %bin_data, align 8, !dbg !1978, !tbaa !1021
  store i64 0, i64* %bin_len, align 8, !dbg !1979, !tbaa !1601
  br label %for.cond, !dbg !1980

for.cond:                                         ; preds = %for.inc, %if.end.4
  %17 = load i64, i64* %ascii_len, align 8, !dbg !1981, !tbaa !1601
  %cmp5 = icmp sgt i64 %17, 0, !dbg !1986
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1987

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %ascii_data, align 8, !dbg !1988, !tbaa !1021
  %19 = load i8, i8* %18, align 1, !dbg !1990, !tbaa !1604
  store i8 %19, i8* %this_ch, align 1, !dbg !1991, !tbaa !1604
  %20 = load i8, i8* %this_ch, align 1, !dbg !1992, !tbaa !1604
  %conv = zext i8 %20 to i32, !dbg !1992
  %cmp6 = icmp sgt i32 %conv, 127, !dbg !1994
  br i1 %cmp6, label %if.then.19, label %lor.lhs.false, !dbg !1995

lor.lhs.false:                                    ; preds = %for.body
  %21 = load i8, i8* %this_ch, align 1, !dbg !1996, !tbaa !1604
  %conv8 = zext i8 %21 to i32, !dbg !1996
  %cmp9 = icmp eq i32 %conv8, 13, !dbg !1997
  br i1 %cmp9, label %if.then.19, label %lor.lhs.false.11, !dbg !1998

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %22 = load i8, i8* %this_ch, align 1, !dbg !1999, !tbaa !1604
  %conv12 = zext i8 %22 to i32, !dbg !1999
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !2001
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.15, !dbg !2002

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %23 = load i8, i8* %this_ch, align 1, !dbg !2003, !tbaa !1604
  %conv16 = zext i8 %23 to i32, !dbg !2003
  %cmp17 = icmp eq i32 %conv16, 32, !dbg !2005
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !2006

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2007

if.end.20:                                        ; preds = %lor.lhs.false.15
  %24 = load i8, i8* %this_ch, align 1, !dbg !2008, !tbaa !1604
  %conv21 = zext i8 %24 to i32, !dbg !2008
  %cmp22 = icmp eq i32 %conv21, 61, !dbg !2010
  br i1 %cmp22, label %if.then.24, label %if.end.34, !dbg !2011

if.then.24:                                       ; preds = %if.end.20
  %25 = load i32, i32* %quad_pos, align 4, !dbg !2012, !tbaa !1332
  %cmp25 = icmp slt i32 %25, 2, !dbg !2015
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27, !dbg !2016

lor.lhs.false.27:                                 ; preds = %if.then.24
  %26 = load i32, i32* %quad_pos, align 4, !dbg !2017, !tbaa !1332
  %cmp28 = icmp eq i32 %26, 2, !dbg !2018
  br i1 %cmp28, label %land.lhs.true, label %if.else, !dbg !2019

land.lhs.true:                                    ; preds = %lor.lhs.false.27
  %27 = load i8*, i8** %ascii_data, align 8, !dbg !2020, !tbaa !1021
  %28 = load i64, i64* %ascii_len, align 8, !dbg !2021, !tbaa !1601
  %call30 = call i32 @binascii_find_valid(i8* %27, i64 %28, i32 1), !dbg !2022
  %cmp31 = icmp ne i32 %call30, 61, !dbg !2023
  br i1 %cmp31, label %if.then.33, label %if.else, !dbg !2024

if.then.33:                                       ; preds = %land.lhs.true, %if.then.24
  br label %for.inc, !dbg !2025

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.27
  store i32 0, i32* %leftbits, align 4, !dbg !2027, !tbaa !1332
  br label %for.end, !dbg !2029

if.end.34:                                        ; preds = %if.end.20
  %29 = load i8*, i8** %ascii_data, align 8, !dbg !2030, !tbaa !1021
  %30 = load i8, i8* %29, align 1, !dbg !2031, !tbaa !1604
  %idxprom = zext i8 %30 to i64, !dbg !2032
  %arrayidx = getelementptr [128 x i8], [128 x i8]* @table_a2b_base64, i32 0, i64 %idxprom, !dbg !2032
  %31 = load i8, i8* %arrayidx, align 1, !dbg !2032, !tbaa !1604
  store i8 %31, i8* %this_ch, align 1, !dbg !2033, !tbaa !1604
  %32 = load i8, i8* %this_ch, align 1, !dbg !2034, !tbaa !1604
  %conv35 = zext i8 %32 to i32, !dbg !2034
  %cmp36 = icmp eq i32 %conv35, 255, !dbg !2036
  br i1 %cmp36, label %if.then.38, label %if.end.39, !dbg !2037

if.then.38:                                       ; preds = %if.end.34
  br label %for.inc, !dbg !2038

if.end.39:                                        ; preds = %if.end.34
  %33 = load i32, i32* %quad_pos, align 4, !dbg !2039, !tbaa !1332
  %add40 = add i32 %33, 1, !dbg !2040
  %and = and i32 %add40, 3, !dbg !2041
  store i32 %and, i32* %quad_pos, align 4, !dbg !2042, !tbaa !1332
  %34 = load i32, i32* %leftchar, align 4, !dbg !2043, !tbaa !1332
  %shl = shl i32 %34, 6, !dbg !2044
  %35 = load i8, i8* %this_ch, align 1, !dbg !2045, !tbaa !1604
  %conv41 = zext i8 %35 to i32, !dbg !2046
  %or = or i32 %shl, %conv41, !dbg !2047
  store i32 %or, i32* %leftchar, align 4, !dbg !2048, !tbaa !1332
  %36 = load i32, i32* %leftbits, align 4, !dbg !2049, !tbaa !1332
  %add42 = add i32 %36, 6, !dbg !2049
  store i32 %add42, i32* %leftbits, align 4, !dbg !2049, !tbaa !1332
  %37 = load i32, i32* %leftbits, align 4, !dbg !2050, !tbaa !1332
  %cmp43 = icmp sge i32 %37, 8, !dbg !2052
  br i1 %cmp43, label %if.then.45, label %if.end.51, !dbg !2053

if.then.45:                                       ; preds = %if.end.39
  %38 = load i32, i32* %leftbits, align 4, !dbg !2054, !tbaa !1332
  %sub = sub i32 %38, 8, !dbg !2054
  store i32 %sub, i32* %leftbits, align 4, !dbg !2054, !tbaa !1332
  %39 = load i32, i32* %leftchar, align 4, !dbg !2056, !tbaa !1332
  %40 = load i32, i32* %leftbits, align 4, !dbg !2057, !tbaa !1332
  %shr = lshr i32 %39, %40, !dbg !2058
  %and46 = and i32 %shr, 255, !dbg !2059
  %conv47 = trunc i32 %and46 to i8, !dbg !2060
  %41 = load i8*, i8** %bin_data, align 8, !dbg !2061, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %41, i32 1, !dbg !2061
  store i8* %incdec.ptr, i8** %bin_data, align 8, !dbg !2061, !tbaa !1021
  store i8 %conv47, i8* %41, align 1, !dbg !2062, !tbaa !1604
  %42 = load i64, i64* %bin_len, align 8, !dbg !2063, !tbaa !1601
  %inc = add i64 %42, 1, !dbg !2063
  store i64 %inc, i64* %bin_len, align 8, !dbg !2063, !tbaa !1601
  %43 = load i32, i32* %leftbits, align 4, !dbg !2064, !tbaa !1332
  %shl48 = shl i32 1, %43, !dbg !2065
  %sub49 = sub i32 %shl48, 1, !dbg !2066
  %44 = load i32, i32* %leftchar, align 4, !dbg !2067, !tbaa !1332
  %and50 = and i32 %44, %sub49, !dbg !2067
  store i32 %and50, i32* %leftchar, align 4, !dbg !2067, !tbaa !1332
  br label %if.end.51, !dbg !2068

if.end.51:                                        ; preds = %if.then.45, %if.end.39
  br label %for.inc, !dbg !2069

for.inc:                                          ; preds = %if.end.51, %if.then.38, %if.then.33, %if.then.19
  %45 = load i64, i64* %ascii_len, align 8, !dbg !2070, !tbaa !1601
  %dec = add i64 %45, -1, !dbg !2070
  store i64 %dec, i64* %ascii_len, align 8, !dbg !2070, !tbaa !1601
  %46 = load i8*, i8** %ascii_data, align 8, !dbg !2071, !tbaa !1021
  %incdec.ptr52 = getelementptr i8, i8* %46, i32 1, !dbg !2071
  store i8* %incdec.ptr52, i8** %ascii_data, align 8, !dbg !2071, !tbaa !1021
  br label %for.cond, !dbg !2072

for.end:                                          ; preds = %if.else, %for.cond
  %47 = load i32, i32* %leftbits, align 4, !dbg !2073, !tbaa !1332
  %cmp53 = icmp ne i32 %47, 0, !dbg !2074
  br i1 %cmp53, label %if.then.55, label %if.end.62, !dbg !2075

if.then.55:                                       ; preds = %for.end
  %48 = load %struct._object*, %struct._object** @Error, align 8, !dbg !2076, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)), !dbg !2077
  br label %do.body, !dbg !2078

do.body:                                          ; preds = %if.then.55
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2079
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !2079
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !524, metadata !1016), !dbg !2081
  %50 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2082, !tbaa !1021
  store %struct._object* %50, %struct._object** %_py_decref_tmp, align 8, !dbg !2081, !tbaa !1021
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2083, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !2085
  %52 = load i64, i64* %ob_refcnt, align 8, !dbg !2086, !tbaa !1055
  %dec56 = add i64 %52, -1, !dbg !2086
  store i64 %dec56, i64* %ob_refcnt, align 8, !dbg !2086, !tbaa !1055
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !2087
  br i1 %cmp57, label %if.then.59, label %if.else.60, !dbg !2088

if.then.59:                                       ; preds = %do.body
  br label %if.end.61, !dbg !2089

if.else.60:                                       ; preds = %do.body
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2091, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !2093
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2093, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !2094
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2094, !tbaa !1067
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2095, !tbaa !1021
  call void %55(%struct._object* %56), !dbg !2096
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  %57 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !2097
  br label %do.cond, !dbg !2099

do.cond:                                          ; preds = %if.end.61
  br label %do.end, !dbg !2100

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2102

if.end.62:                                        ; preds = %for.end
  %58 = load i64, i64* %bin_len, align 8, !dbg !2103, !tbaa !1601
  %cmp63 = icmp sgt i64 %58, 0, !dbg !2104
  br i1 %cmp63, label %if.then.65, label %if.else.91, !dbg !2105

if.then.65:                                       ; preds = %if.end.62
  %59 = load i64, i64* %bin_len, align 8, !dbg !2106, !tbaa !1601
  %call66 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %59), !dbg !2107
  %cmp67 = icmp slt i32 %call66, 0, !dbg !2108
  br i1 %cmp67, label %if.then.69, label %if.end.90, !dbg !2109

if.then.69:                                       ; preds = %if.then.65
  br label %do.body.70, !dbg !2110

do.body.70:                                       ; preds = %if.then.69
  %60 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2111
  call void @llvm.lifetime.start(i64 8, i8* %60) #1, !dbg !2111
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !528, metadata !1016), !dbg !2113
  %61 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2114, !tbaa !1021
  store %struct._object* %61, %struct._object** %_py_tmp, align 8, !dbg !2113, !tbaa !1021
  %62 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2115, !tbaa !1021
  %cmp71 = icmp ne %struct._object* %62, null, !dbg !2116
  br i1 %cmp71, label %if.then.73, label %if.end.87, !dbg !2117

if.then.73:                                       ; preds = %do.body.70
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !2118, !tbaa !1021
  br label %do.body.74, !dbg !2120

do.body.74:                                       ; preds = %if.then.73
  %63 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !2121
  call void @llvm.lifetime.start(i64 8, i8* %63) #1, !dbg !2121
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp75, metadata !534, metadata !1016), !dbg !2123
  %64 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2124, !tbaa !1021
  store %struct._object* %64, %struct._object** %_py_decref_tmp75, align 8, !dbg !2123, !tbaa !1021
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2125, !tbaa !1021
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !2127
  %66 = load i64, i64* %ob_refcnt76, align 8, !dbg !2128, !tbaa !1055
  %dec77 = add i64 %66, -1, !dbg !2128
  store i64 %dec77, i64* %ob_refcnt76, align 8, !dbg !2128, !tbaa !1055
  %cmp78 = icmp ne i64 %dec77, 0, !dbg !2129
  br i1 %cmp78, label %if.then.80, label %if.else.81, !dbg !2130

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84, !dbg !2131

if.else.81:                                       ; preds = %do.body.74
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2133, !tbaa !1021
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !2135
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !2135, !tbaa !1065
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !2136
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !2136, !tbaa !1067
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2137, !tbaa !1021
  call void %69(%struct._object* %70), !dbg !2138
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  %71 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !2139
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !2139
  br label %do.cond.85, !dbg !2141

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86, !dbg !2142

do.end.86:                                        ; preds = %do.cond.85
  br label %if.end.87, !dbg !2144

if.end.87:                                        ; preds = %do.end.86, %do.body.70
  %72 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2146
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !2146
  br label %do.cond.88, !dbg !2149

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !2150

do.end.89:                                        ; preds = %do.cond.88
  br label %if.end.90, !dbg !2152

if.end.90:                                        ; preds = %do.end.89, %if.then.65
  br label %if.end.106, !dbg !2153

if.else.91:                                       ; preds = %if.end.62
  br label %do.body.92, !dbg !2154

do.body.92:                                       ; preds = %if.else.91
  %73 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2155
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !2155
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !538, metadata !1016), !dbg !2157
  %74 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2158, !tbaa !1021
  store %struct._object* %74, %struct._object** %_py_decref_tmp93, align 8, !dbg !2157, !tbaa !1021
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2159, !tbaa !1021
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !2161
  %76 = load i64, i64* %ob_refcnt94, align 8, !dbg !2162, !tbaa !1055
  %dec95 = add i64 %76, -1, !dbg !2162
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !2162, !tbaa !1055
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !2163
  br i1 %cmp96, label %if.then.98, label %if.else.99, !dbg !2164

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102, !dbg !2165

if.else.99:                                       ; preds = %do.body.92
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2167, !tbaa !1021
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !2169
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8, !dbg !2169, !tbaa !1065
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !2170
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8, !dbg !2170, !tbaa !1067
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2171, !tbaa !1021
  call void %79(%struct._object* %80), !dbg !2172
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  %81 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2173
  call void @llvm.lifetime.end(i64 8, i8* %81) #1, !dbg !2173
  br label %do.cond.103, !dbg !2175

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !2176

do.end.104:                                       ; preds = %do.cond.103
  %call105 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i64 0), !dbg !2178
  store %struct._object* %call105, %struct._object** %rv, align 8, !dbg !2179, !tbaa !1021
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.104, %if.end.90
  %82 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2180, !tbaa !1021
  store %struct._object* %82, %struct._object** %retval, !dbg !2181
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2181

cleanup:                                          ; preds = %if.end.106, %do.end, %if.then.3, %if.then
  %83 = bitcast i32* %quad_pos to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 4, i8* %83) #1, !dbg !2182
  %84 = bitcast i64* %bin_len to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !2182
  %85 = bitcast i64* %ascii_len to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !2182
  %86 = bitcast %struct._object** %rv to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !2182
  %87 = bitcast i32* %leftchar to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 4, i8* %87) #1, !dbg !2182
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !2182
  %88 = bitcast i32* %leftbits to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 4, i8* %88) #1, !dbg !2182
  %89 = bitcast i8** %bin_data to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !2182
  %90 = bitcast i8** %ascii_data to i8*, !dbg !2182
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !2182
  %91 = load %struct._object*, %struct._object** %retval, !dbg !2182
  ret %struct._object* %91, !dbg !2182
}

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define internal i32 @binascii_find_valid(i8* %s, i64 %slen, i32 %num) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %b64val = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !545, metadata !1016), !dbg !2183
  store i64 %slen, i64* %slen.addr, align 8, !tbaa !1601
  call void @llvm.dbg.declare(metadata i64* %slen.addr, metadata !546, metadata !1016), !dbg !2184
  store i32 %num, i32* %num.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !547, metadata !1016), !dbg !2185
  %0 = bitcast i32* %ret to i8*, !dbg !2186
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !548, metadata !1016), !dbg !2187
  store i32 -1, i32* %ret, align 4, !dbg !2187, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !2188
  call void @llvm.dbg.declare(metadata i8* %c, metadata !549, metadata !1016), !dbg !2189
  call void @llvm.lifetime.start(i64 1, i8* %b64val) #1, !dbg !2188
  call void @llvm.dbg.declare(metadata i8* %b64val, metadata !550, metadata !1016), !dbg !2190
  br label %while.cond, !dbg !2191

while.cond:                                       ; preds = %if.end.12, %entry
  %1 = load i64, i64* %slen.addr, align 8, !dbg !2192, !tbaa !1601
  %cmp = icmp sgt i64 %1, 0, !dbg !2195
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2196

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %ret, align 4, !dbg !2197, !tbaa !1332
  %cmp1 = icmp eq i32 %2, -1, !dbg !2199
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end, !dbg !2200

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %s.addr, align 8, !dbg !2202, !tbaa !1021
  %5 = load i8, i8* %4, align 1, !dbg !2204, !tbaa !1604
  store i8 %5, i8* %c, align 1, !dbg !2205, !tbaa !1604
  %6 = load i8, i8* %c, align 1, !dbg !2206, !tbaa !1604
  %conv = zext i8 %6 to i32, !dbg !2206
  %and = and i32 %conv, 127, !dbg !2207
  %idxprom = sext i32 %and to i64, !dbg !2208
  %arrayidx = getelementptr [128 x i8], [128 x i8]* @table_a2b_base64, i32 0, i64 %idxprom, !dbg !2208
  %7 = load i8, i8* %arrayidx, align 1, !dbg !2208, !tbaa !1604
  store i8 %7, i8* %b64val, align 1, !dbg !2209, !tbaa !1604
  %8 = load i8, i8* %c, align 1, !dbg !2210, !tbaa !1604
  %conv2 = zext i8 %8 to i32, !dbg !2210
  %cmp3 = icmp sle i32 %conv2, 127, !dbg !2212
  br i1 %cmp3, label %land.lhs.true, label %if.end.12, !dbg !2213

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8, i8* %b64val, align 1, !dbg !2214, !tbaa !1604
  %conv5 = zext i8 %9 to i32, !dbg !2214
  %cmp6 = icmp ne i32 %conv5, 255, !dbg !2216
  br i1 %cmp6, label %if.then, label %if.end.12, !dbg !2217

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %num.addr, align 4, !dbg !2218, !tbaa !1332
  %cmp8 = icmp eq i32 %10, 0, !dbg !2221
  br i1 %cmp8, label %if.then.10, label %if.end, !dbg !2222

if.then.10:                                       ; preds = %if.then
  %11 = load i8*, i8** %s.addr, align 8, !dbg !2223, !tbaa !1021
  %12 = load i8, i8* %11, align 1, !dbg !2224, !tbaa !1604
  %conv11 = zext i8 %12 to i32, !dbg !2224
  store i32 %conv11, i32* %ret, align 4, !dbg !2225, !tbaa !1332
  br label %if.end, !dbg !2226

if.end:                                           ; preds = %if.then.10, %if.then
  %13 = load i32, i32* %num.addr, align 4, !dbg !2227, !tbaa !1332
  %dec = add i32 %13, -1, !dbg !2227
  store i32 %dec, i32* %num.addr, align 4, !dbg !2227, !tbaa !1332
  br label %if.end.12, !dbg !2228

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %while.body
  %14 = load i8*, i8** %s.addr, align 8, !dbg !2229, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !2229
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !2229, !tbaa !1021
  %15 = load i64, i64* %slen.addr, align 8, !dbg !2230, !tbaa !1601
  %dec13 = add i64 %15, -1, !dbg !2230
  store i64 %dec13, i64* %slen.addr, align 8, !dbg !2230, !tbaa !1601
  br label %while.cond, !dbg !2191

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %ret, align 4, !dbg !2231, !tbaa !1332
  call void @llvm.lifetime.end(i64 1, i8* %b64val) #1, !dbg !2232
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !2232
  %17 = bitcast i32* %ret to i8*, !dbg !2232
  call void @llvm.lifetime.end(i64 4, i8* %17) #1, !dbg !2232
  ret i32 %16, !dbg !2233
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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !559, metadata !1016), !dbg !2234
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !560, metadata !1016), !dbg !2235
  %0 = bitcast i8** %ascii_data to i8*, !dbg !2236
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2236
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !561, metadata !1016), !dbg !2237
  %1 = bitcast i8** %bin_data to i8*, !dbg !2236
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2236
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !562, metadata !1016), !dbg !2238
  %2 = bitcast i32* %leftbits to i8*, !dbg !2239
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2239
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !563, metadata !1016), !dbg !2240
  store i32 0, i32* %leftbits, align 4, !dbg !2240, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !2241
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !564, metadata !1016), !dbg !2242
  %3 = bitcast i32* %leftchar to i8*, !dbg !2243
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2243
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !565, metadata !1016), !dbg !2244
  store i32 0, i32* %leftchar, align 4, !dbg !2244, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !2245
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !566, metadata !1016), !dbg !2246
  %5 = bitcast i64* %bin_len to i8*, !dbg !2247
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2247
  call void @llvm.dbg.declare(metadata i64* %bin_len, metadata !567, metadata !1016), !dbg !2248
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2249, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !2250
  %7 = load i8*, i8** %buf, align 8, !dbg !2250, !tbaa !1538
  store i8* %7, i8** %bin_data, align 8, !dbg !2251, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2252, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !2253
  %9 = load i64, i64* %len, align 8, !dbg !2253, !tbaa !1548
  store i64 %9, i64* %bin_len, align 8, !dbg !2254, !tbaa !1601
  %10 = load i64, i64* %bin_len, align 8, !dbg !2255, !tbaa !1601
  %cmp = icmp sgt i64 %10, 4611686018427387902, !dbg !2257
  br i1 %cmp, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** @Error, align 8, !dbg !2259, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)), !dbg !2261
  store %struct._object* null, %struct._object** %retval, !dbg !2262
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2262

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %bin_len, align 8, !dbg !2263, !tbaa !1601
  %mul = mul i64 %12, 2, !dbg !2265
  %add = add i64 %mul, 3, !dbg !2266
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add), !dbg !2267
  store %struct._object* %call, %struct._object** %rv, align 8, !dbg !2268, !tbaa !1021
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2269
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2270

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2271

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2272, !tbaa !1021
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*, !dbg !2273
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2, !dbg !2274
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2275
  store i8* %arraydecay, i8** %ascii_data, align 8, !dbg !2276, !tbaa !1021
  br label %for.cond, !dbg !2277

for.cond:                                         ; preds = %for.inc, %if.end.3
  %15 = load i64, i64* %bin_len, align 8, !dbg !2278, !tbaa !1601
  %cmp4 = icmp sgt i64 %15, 0, !dbg !2283
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2284

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %leftchar, align 4, !dbg !2285, !tbaa !1332
  %shl = shl i32 %16, 8, !dbg !2287
  %17 = load i8*, i8** %bin_data, align 8, !dbg !2288, !tbaa !1021
  %18 = load i8, i8* %17, align 1, !dbg !2289, !tbaa !1604
  %conv = zext i8 %18 to i32, !dbg !2289
  %or = or i32 %shl, %conv, !dbg !2290
  store i32 %or, i32* %leftchar, align 4, !dbg !2291, !tbaa !1332
  %19 = load i32, i32* %leftbits, align 4, !dbg !2292, !tbaa !1332
  %add5 = add i32 %19, 8, !dbg !2292
  store i32 %add5, i32* %leftbits, align 4, !dbg !2292, !tbaa !1332
  br label %while.cond, !dbg !2293

while.cond:                                       ; preds = %while.body, %for.body
  %20 = load i32, i32* %leftbits, align 4, !dbg !2294, !tbaa !1332
  %cmp6 = icmp sge i32 %20, 6, !dbg !2297
  br i1 %cmp6, label %while.body, label %while.end, !dbg !2293

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %leftchar, align 4, !dbg !2298, !tbaa !1332
  %22 = load i32, i32* %leftbits, align 4, !dbg !2300, !tbaa !1332
  %sub = sub i32 %22, 6, !dbg !2301
  %shr = lshr i32 %21, %sub, !dbg !2302
  %and = and i32 %shr, 63, !dbg !2303
  %conv8 = trunc i32 %and to i8, !dbg !2304
  store i8 %conv8, i8* %this_ch, align 1, !dbg !2305, !tbaa !1604
  %23 = load i32, i32* %leftbits, align 4, !dbg !2306, !tbaa !1332
  %sub9 = sub i32 %23, 6, !dbg !2306
  store i32 %sub9, i32* %leftbits, align 4, !dbg !2306, !tbaa !1332
  %24 = load i8, i8* %this_ch, align 1, !dbg !2307, !tbaa !1604
  %idxprom = zext i8 %24 to i64, !dbg !2308
  %arrayidx = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom, !dbg !2308
  %25 = load i8, i8* %arrayidx, align 1, !dbg !2308, !tbaa !1604
  %26 = load i8*, i8** %ascii_data, align 8, !dbg !2309, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %26, i32 1, !dbg !2309
  store i8* %incdec.ptr, i8** %ascii_data, align 8, !dbg !2309, !tbaa !1021
  store i8 %25, i8* %26, align 1, !dbg !2310, !tbaa !1604
  br label %while.cond, !dbg !2293

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !2311

for.inc:                                          ; preds = %while.end
  %27 = load i64, i64* %bin_len, align 8, !dbg !2312, !tbaa !1601
  %dec = add i64 %27, -1, !dbg !2312
  store i64 %dec, i64* %bin_len, align 8, !dbg !2312, !tbaa !1601
  %28 = load i8*, i8** %bin_data, align 8, !dbg !2313, !tbaa !1021
  %incdec.ptr10 = getelementptr i8, i8* %28, i32 1, !dbg !2313
  store i8* %incdec.ptr10, i8** %bin_data, align 8, !dbg !2313, !tbaa !1021
  br label %for.cond, !dbg !2314

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %leftbits, align 4, !dbg !2315, !tbaa !1332
  %cmp11 = icmp eq i32 %29, 2, !dbg !2317
  br i1 %cmp11, label %if.then.13, label %if.else, !dbg !2318

if.then.13:                                       ; preds = %for.end
  %30 = load i32, i32* %leftchar, align 4, !dbg !2319, !tbaa !1332
  %and14 = and i32 %30, 3, !dbg !2321
  %shl15 = shl i32 %and14, 4, !dbg !2322
  %idxprom16 = zext i32 %shl15 to i64, !dbg !2323
  %arrayidx17 = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom16, !dbg !2323
  %31 = load i8, i8* %arrayidx17, align 1, !dbg !2323, !tbaa !1604
  %32 = load i8*, i8** %ascii_data, align 8, !dbg !2324, !tbaa !1021
  %incdec.ptr18 = getelementptr i8, i8* %32, i32 1, !dbg !2324
  store i8* %incdec.ptr18, i8** %ascii_data, align 8, !dbg !2324, !tbaa !1021
  store i8 %31, i8* %32, align 1, !dbg !2325, !tbaa !1604
  %33 = load i8*, i8** %ascii_data, align 8, !dbg !2326, !tbaa !1021
  %incdec.ptr19 = getelementptr i8, i8* %33, i32 1, !dbg !2326
  store i8* %incdec.ptr19, i8** %ascii_data, align 8, !dbg !2326, !tbaa !1021
  store i8 61, i8* %33, align 1, !dbg !2327, !tbaa !1604
  %34 = load i8*, i8** %ascii_data, align 8, !dbg !2328, !tbaa !1021
  %incdec.ptr20 = getelementptr i8, i8* %34, i32 1, !dbg !2328
  store i8* %incdec.ptr20, i8** %ascii_data, align 8, !dbg !2328, !tbaa !1021
  store i8 61, i8* %34, align 1, !dbg !2329, !tbaa !1604
  br label %if.end.31, !dbg !2330

if.else:                                          ; preds = %for.end
  %35 = load i32, i32* %leftbits, align 4, !dbg !2331, !tbaa !1332
  %cmp21 = icmp eq i32 %35, 4, !dbg !2333
  br i1 %cmp21, label %if.then.23, label %if.end.30, !dbg !2334

if.then.23:                                       ; preds = %if.else
  %36 = load i32, i32* %leftchar, align 4, !dbg !2335, !tbaa !1332
  %and24 = and i32 %36, 15, !dbg !2337
  %shl25 = shl i32 %and24, 2, !dbg !2338
  %idxprom26 = zext i32 %shl25 to i64, !dbg !2339
  %arrayidx27 = getelementptr [65 x i8], [65 x i8]* @table_b2a_base64, i32 0, i64 %idxprom26, !dbg !2339
  %37 = load i8, i8* %arrayidx27, align 1, !dbg !2339, !tbaa !1604
  %38 = load i8*, i8** %ascii_data, align 8, !dbg !2340, !tbaa !1021
  %incdec.ptr28 = getelementptr i8, i8* %38, i32 1, !dbg !2340
  store i8* %incdec.ptr28, i8** %ascii_data, align 8, !dbg !2340, !tbaa !1021
  store i8 %37, i8* %38, align 1, !dbg !2341, !tbaa !1604
  %39 = load i8*, i8** %ascii_data, align 8, !dbg !2342, !tbaa !1021
  %incdec.ptr29 = getelementptr i8, i8* %39, i32 1, !dbg !2342
  store i8* %incdec.ptr29, i8** %ascii_data, align 8, !dbg !2342, !tbaa !1021
  store i8 61, i8* %39, align 1, !dbg !2343, !tbaa !1604
  br label %if.end.30, !dbg !2344

if.end.30:                                        ; preds = %if.then.23, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.13
  %40 = load i8*, i8** %ascii_data, align 8, !dbg !2345, !tbaa !1021
  %incdec.ptr32 = getelementptr i8, i8* %40, i32 1, !dbg !2345
  store i8* %incdec.ptr32, i8** %ascii_data, align 8, !dbg !2345, !tbaa !1021
  store i8 10, i8* %40, align 1, !dbg !2346, !tbaa !1604
  %41 = load i8*, i8** %ascii_data, align 8, !dbg !2347, !tbaa !1021
  %42 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2348, !tbaa !1021
  %43 = bitcast %struct._object* %42 to %struct.PyBytesObject*, !dbg !2349
  %ob_sval33 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %43, i32 0, i32 2, !dbg !2350
  %arraydecay34 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval33, i32 0, i32 0, !dbg !2351
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64, !dbg !2352
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay34 to i64, !dbg !2352
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2352
  %call35 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !2353
  %cmp36 = icmp slt i32 %call35, 0, !dbg !2354
  br i1 %cmp36, label %if.then.38, label %if.end.52, !dbg !2355

if.then.38:                                       ; preds = %if.end.31
  br label %do.body, !dbg !2356

do.body:                                          ; preds = %if.then.38
  %44 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2357
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !2357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !568, metadata !1016), !dbg !2359
  %45 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2360, !tbaa !1021
  store %struct._object* %45, %struct._object** %_py_tmp, align 8, !dbg !2359, !tbaa !1021
  %46 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2361, !tbaa !1021
  %cmp39 = icmp ne %struct._object* %46, null, !dbg !2362
  br i1 %cmp39, label %if.then.41, label %if.end.49, !dbg !2363

if.then.41:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !2364, !tbaa !1021
  br label %do.body.42, !dbg !2366

do.body.42:                                       ; preds = %if.then.41
  %47 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2367
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !572, metadata !1016), !dbg !2369
  %48 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2370, !tbaa !1021
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8, !dbg !2369, !tbaa !1021
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2371, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !2373
  %50 = load i64, i64* %ob_refcnt, align 8, !dbg !2374, !tbaa !1055
  %dec43 = add i64 %50, -1, !dbg !2374
  store i64 %dec43, i64* %ob_refcnt, align 8, !dbg !2374, !tbaa !1055
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !2375
  br i1 %cmp44, label %if.then.46, label %if.else.47, !dbg !2376

if.then.46:                                       ; preds = %do.body.42
  br label %if.end.48, !dbg !2377

if.else.47:                                       ; preds = %do.body.42
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2379, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !2381
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2381, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !2382
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2382, !tbaa !1067
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2383, !tbaa !1021
  call void %53(%struct._object* %54), !dbg !2384
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  %55 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2385
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2385
  br label %do.cond, !dbg !2387

do.cond:                                          ; preds = %if.end.48
  br label %do.end, !dbg !2388

do.end:                                           ; preds = %do.cond
  br label %if.end.49, !dbg !2390

if.end.49:                                        ; preds = %do.end, %do.body
  %56 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2392
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !2392
  br label %do.cond.50, !dbg !2395

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !2396

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.52, !dbg !2398

if.end.52:                                        ; preds = %do.end.51, %if.end.31
  %57 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2399, !tbaa !1021
  store %struct._object* %57, %struct._object** %retval, !dbg !2400
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2400

cleanup:                                          ; preds = %if.end.52, %if.then.2, %if.then
  %58 = bitcast i64* %bin_len to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !2401
  %59 = bitcast %struct._object** %rv to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !2401
  %60 = bitcast i32* %leftchar to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !2401
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !2401
  %61 = bitcast i32* %leftbits to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 4, i8* %61) #1, !dbg !2401
  %62 = bitcast i8** %bin_data to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !2401
  %63 = bitcast i8** %ascii_data to i8*, !dbg !2401
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !2401
  %64 = load %struct._object*, %struct._object** %retval, !dbg !2401
  ret %struct._object* %64, !dbg !2401
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %rrv = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !584, metadata !1016), !dbg !2402
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !585, metadata !1016), !dbg !2403
  %0 = bitcast i8** %ascii_data to i8*, !dbg !2404
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2404
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !586, metadata !1016), !dbg !2405
  %1 = bitcast i8** %bin_data to i8*, !dbg !2404
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2404
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !587, metadata !1016), !dbg !2406
  %2 = bitcast i32* %leftbits to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2407
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !588, metadata !1016), !dbg !2408
  store i32 0, i32* %leftbits, align 4, !dbg !2408, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !2409
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !589, metadata !1016), !dbg !2410
  %3 = bitcast i32* %leftchar to i8*, !dbg !2411
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !590, metadata !1016), !dbg !2412
  store i32 0, i32* %leftchar, align 4, !dbg !2412, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !2413
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !591, metadata !1016), !dbg !2414
  %5 = bitcast i64* %len to i8*, !dbg !2415
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2415
  call void @llvm.dbg.declare(metadata i64* %len, metadata !592, metadata !1016), !dbg !2416
  %6 = bitcast i32* %done to i8*, !dbg !2417
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !2417
  call void @llvm.dbg.declare(metadata i32* %done, metadata !593, metadata !1016), !dbg !2418
  store i32 0, i32* %done, align 4, !dbg !2418, !tbaa !1332
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2419, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0, !dbg !2420
  %8 = load i8*, i8** %buf, align 8, !dbg !2420, !tbaa !1538
  store i8* %8, i8** %ascii_data, align 8, !dbg !2421, !tbaa !1021
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2422, !tbaa !1021
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 2, !dbg !2423
  %10 = load i64, i64* %len1, align 8, !dbg !2423, !tbaa !1548
  store i64 %10, i64* %len, align 8, !dbg !2424, !tbaa !1601
  %11 = load i64, i64* %len, align 8, !dbg !2425, !tbaa !1601
  %cmp = icmp sgt i64 %11, 9223372036854775805, !dbg !2427
  br i1 %cmp, label %if.then, label %if.end, !dbg !2428

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !2429
  store %struct._object* %call, %struct._object** %retval, !dbg !2430
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2430

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %len, align 8, !dbg !2431, !tbaa !1601
  %add = add i64 %12, 2, !dbg !2433
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add), !dbg !2434
  store %struct._object* %call2, %struct._object** %rv, align 8, !dbg !2435, !tbaa !1021
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !2436
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2437

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2438

if.end.5:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2439, !tbaa !1021
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*, !dbg !2440
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2, !dbg !2441
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2442
  store i8* %arraydecay, i8** %bin_data, align 8, !dbg !2443, !tbaa !1021
  br label %for.cond, !dbg !2444

for.cond:                                         ; preds = %for.inc, %if.end.5
  %15 = load i64, i64* %len, align 8, !dbg !2445, !tbaa !1601
  %cmp6 = icmp sgt i64 %15, 0, !dbg !2448
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2449

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %ascii_data, align 8, !dbg !2450, !tbaa !1021
  %17 = load i8, i8* %16, align 1, !dbg !2451, !tbaa !1604
  %idxprom = zext i8 %17 to i64, !dbg !2452
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @table_a2b_hqx, i32 0, i64 %idxprom, !dbg !2452
  %18 = load i8, i8* %arrayidx, align 1, !dbg !2452, !tbaa !1604
  store i8 %18, i8* %this_ch, align 1, !dbg !2453, !tbaa !1604
  %19 = load i8, i8* %this_ch, align 1, !dbg !2454, !tbaa !1604
  %conv = zext i8 %19 to i32, !dbg !2454
  %cmp7 = icmp eq i32 %conv, 126, !dbg !2456
  br i1 %cmp7, label %if.then.9, label %if.end.10, !dbg !2457

if.then.9:                                        ; preds = %for.body
  br label %for.inc, !dbg !2458

if.end.10:                                        ; preds = %for.body
  %20 = load i8, i8* %this_ch, align 1, !dbg !2459, !tbaa !1604
  %conv11 = zext i8 %20 to i32, !dbg !2459
  %cmp12 = icmp eq i32 %conv11, 125, !dbg !2460
  br i1 %cmp12, label %if.then.14, label %if.end.19, !dbg !2461

if.then.14:                                       ; preds = %if.end.10
  %21 = load %struct._object*, %struct._object** @Error, align 8, !dbg !2462, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)), !dbg !2463
  br label %do.body, !dbg !2464

do.body:                                          ; preds = %if.then.14
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2465
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !2465
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !594, metadata !1016), !dbg !2467
  %23 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2468, !tbaa !1021
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2467, !tbaa !1021
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2469, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2471
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !2472, !tbaa !1055
  %dec = add i64 %25, -1, !dbg !2472
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2472, !tbaa !1055
  %cmp15 = icmp ne i64 %dec, 0, !dbg !2473
  br i1 %cmp15, label %if.then.17, label %if.else, !dbg !2474

if.then.17:                                       ; preds = %do.body
  br label %if.end.18, !dbg !2475

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2477, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2479
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2479, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2480
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2480, !tbaa !1067
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2481, !tbaa !1021
  call void %28(%struct._object* %29), !dbg !2482
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2483
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2483
  br label %do.cond, !dbg !2485

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !2486

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2488
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2488

if.end.19:                                        ; preds = %if.end.10
  %31 = load i8, i8* %this_ch, align 1, !dbg !2489, !tbaa !1604
  %conv20 = zext i8 %31 to i32, !dbg !2489
  %cmp21 = icmp eq i32 %conv20, 127, !dbg !2491
  br i1 %cmp21, label %if.then.23, label %if.end.24, !dbg !2492

if.then.23:                                       ; preds = %if.end.19
  store i32 1, i32* %done, align 4, !dbg !2493, !tbaa !1332
  br label %for.end, !dbg !2495

if.end.24:                                        ; preds = %if.end.19
  %32 = load i32, i32* %leftchar, align 4, !dbg !2496, !tbaa !1332
  %shl = shl i32 %32, 6, !dbg !2497
  %33 = load i8, i8* %this_ch, align 1, !dbg !2498, !tbaa !1604
  %conv25 = zext i8 %33 to i32, !dbg !2499
  %or = or i32 %shl, %conv25, !dbg !2500
  store i32 %or, i32* %leftchar, align 4, !dbg !2501, !tbaa !1332
  %34 = load i32, i32* %leftbits, align 4, !dbg !2502, !tbaa !1332
  %add26 = add i32 %34, 6, !dbg !2502
  store i32 %add26, i32* %leftbits, align 4, !dbg !2502, !tbaa !1332
  %35 = load i32, i32* %leftbits, align 4, !dbg !2503, !tbaa !1332
  %cmp27 = icmp sge i32 %35, 8, !dbg !2505
  br i1 %cmp27, label %if.then.29, label %if.end.34, !dbg !2506

if.then.29:                                       ; preds = %if.end.24
  %36 = load i32, i32* %leftbits, align 4, !dbg !2507, !tbaa !1332
  %sub = sub i32 %36, 8, !dbg !2507
  store i32 %sub, i32* %leftbits, align 4, !dbg !2507, !tbaa !1332
  %37 = load i32, i32* %leftchar, align 4, !dbg !2509, !tbaa !1332
  %38 = load i32, i32* %leftbits, align 4, !dbg !2510, !tbaa !1332
  %shr = lshr i32 %37, %38, !dbg !2511
  %and = and i32 %shr, 255, !dbg !2512
  %conv30 = trunc i32 %and to i8, !dbg !2513
  %39 = load i8*, i8** %bin_data, align 8, !dbg !2514, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %39, i32 1, !dbg !2514
  store i8* %incdec.ptr, i8** %bin_data, align 8, !dbg !2514, !tbaa !1021
  store i8 %conv30, i8* %39, align 1, !dbg !2515, !tbaa !1604
  %40 = load i32, i32* %leftbits, align 4, !dbg !2516, !tbaa !1332
  %shl31 = shl i32 1, %40, !dbg !2517
  %sub32 = sub i32 %shl31, 1, !dbg !2518
  %41 = load i32, i32* %leftchar, align 4, !dbg !2519, !tbaa !1332
  %and33 = and i32 %41, %sub32, !dbg !2519
  store i32 %and33, i32* %leftchar, align 4, !dbg !2519, !tbaa !1332
  br label %if.end.34, !dbg !2520

if.end.34:                                        ; preds = %if.then.29, %if.end.24
  br label %for.inc, !dbg !2521

for.inc:                                          ; preds = %if.end.34, %if.then.9
  %42 = load i64, i64* %len, align 8, !dbg !2522, !tbaa !1601
  %dec35 = add i64 %42, -1, !dbg !2522
  store i64 %dec35, i64* %len, align 8, !dbg !2522, !tbaa !1601
  %43 = load i8*, i8** %ascii_data, align 8, !dbg !2523, !tbaa !1021
  %incdec.ptr36 = getelementptr i8, i8* %43, i32 1, !dbg !2523
  store i8* %incdec.ptr36, i8** %ascii_data, align 8, !dbg !2523, !tbaa !1021
  br label %for.cond, !dbg !2524

for.end:                                          ; preds = %if.then.23, %for.cond
  %44 = load i32, i32* %leftbits, align 4, !dbg !2525, !tbaa !1332
  %tobool = icmp ne i32 %44, 0, !dbg !2525
  br i1 %tobool, label %land.lhs.true, label %if.end.52, !dbg !2526

land.lhs.true:                                    ; preds = %for.end
  %45 = load i32, i32* %done, align 4, !dbg !2527, !tbaa !1332
  %tobool37 = icmp ne i32 %45, 0, !dbg !2527
  br i1 %tobool37, label %if.end.52, label %if.then.38, !dbg !2529

if.then.38:                                       ; preds = %land.lhs.true
  %46 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !2530, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0)), !dbg !2531
  br label %do.body.39, !dbg !2532

do.body.39:                                       ; preds = %if.then.38
  %47 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !2533
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !2533
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !601, metadata !1016), !dbg !2535
  %48 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2536, !tbaa !1021
  store %struct._object* %48, %struct._object** %_py_decref_tmp40, align 8, !dbg !2535, !tbaa !1021
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2537, !tbaa !1021
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !2539
  %50 = load i64, i64* %ob_refcnt41, align 8, !dbg !2540, !tbaa !1055
  %dec42 = add i64 %50, -1, !dbg !2540
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !2540, !tbaa !1055
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !2541
  br i1 %cmp43, label %if.then.45, label %if.else.46, !dbg !2542

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49, !dbg !2543

if.else.46:                                       ; preds = %do.body.39
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2545, !tbaa !1021
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !2547
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2547, !tbaa !1065
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !2548
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !2548, !tbaa !1067
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2549, !tbaa !1021
  call void %53(%struct._object* %54), !dbg !2550
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %55 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !2551
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2551
  br label %do.cond.50, !dbg !2553

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !2554

do.end.51:                                        ; preds = %do.cond.50
  store %struct._object* null, %struct._object** %retval, !dbg !2556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2556

if.end.52:                                        ; preds = %land.lhs.true, %for.end
  %56 = load i8*, i8** %bin_data, align 8, !dbg !2557, !tbaa !1021
  %57 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2558, !tbaa !1021
  %58 = bitcast %struct._object* %57 to %struct.PyBytesObject*, !dbg !2559
  %ob_sval53 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %58, i32 0, i32 2, !dbg !2560
  %arraydecay54 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval53, i32 0, i32 0, !dbg !2561
  %sub.ptr.lhs.cast = ptrtoint i8* %56 to i64, !dbg !2562
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay54 to i64, !dbg !2562
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2562
  %call55 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !2563
  %cmp56 = icmp slt i32 %call55, 0, !dbg !2564
  br i1 %cmp56, label %if.then.58, label %if.end.79, !dbg !2565

if.then.58:                                       ; preds = %if.end.52
  br label %do.body.59, !dbg !2566

do.body.59:                                       ; preds = %if.then.58
  %59 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2567
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !2567
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !605, metadata !1016), !dbg !2569
  %60 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2570, !tbaa !1021
  store %struct._object* %60, %struct._object** %_py_tmp, align 8, !dbg !2569, !tbaa !1021
  %61 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2571, !tbaa !1021
  %cmp60 = icmp ne %struct._object* %61, null, !dbg !2572
  br i1 %cmp60, label %if.then.62, label %if.end.76, !dbg !2573

if.then.62:                                       ; preds = %do.body.59
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !2574, !tbaa !1021
  br label %do.body.63, !dbg !2576

do.body.63:                                       ; preds = %if.then.62
  %62 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2577
  call void @llvm.lifetime.start(i64 8, i8* %62) #1, !dbg !2577
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !609, metadata !1016), !dbg !2579
  %63 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2580, !tbaa !1021
  store %struct._object* %63, %struct._object** %_py_decref_tmp64, align 8, !dbg !2579, !tbaa !1021
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2581, !tbaa !1021
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0, !dbg !2583
  %65 = load i64, i64* %ob_refcnt65, align 8, !dbg !2584, !tbaa !1055
  %dec66 = add i64 %65, -1, !dbg !2584
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2584, !tbaa !1055
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !2585
  br i1 %cmp67, label %if.then.69, label %if.else.70, !dbg !2586

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73, !dbg !2587

if.else.70:                                       ; preds = %do.body.63
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2589, !tbaa !1021
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1, !dbg !2591
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !2591, !tbaa !1065
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4, !dbg !2592
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !2592, !tbaa !1067
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2593, !tbaa !1021
  call void %68(%struct._object* %69), !dbg !2594
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  %70 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !2595
  br label %do.cond.74, !dbg !2597

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75, !dbg !2598

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76, !dbg !2600

if.end.76:                                        ; preds = %do.end.75, %do.body.59
  %71 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2602
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !2602
  br label %do.cond.77, !dbg !2605

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !2606

do.end.78:                                        ; preds = %do.cond.77
  br label %if.end.79, !dbg !2608

if.end.79:                                        ; preds = %do.end.78, %if.end.52
  %72 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2609, !tbaa !1021
  %tobool80 = icmp ne %struct._object* %72, null, !dbg !2609
  br i1 %tobool80, label %if.then.81, label %if.end.96, !dbg !2610

if.then.81:                                       ; preds = %if.end.79
  %73 = bitcast %struct._object** %rrv to i8*, !dbg !2611
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !2611
  call void @llvm.dbg.declare(metadata %struct._object** %rrv, metadata !613, metadata !1016), !dbg !2612
  %74 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2613, !tbaa !1021
  %75 = load i32, i32* %done, align 4, !dbg !2614, !tbaa !1332
  %call82 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), %struct._object* %74, i32 %75), !dbg !2615
  store %struct._object* %call82, %struct._object** %rrv, align 8, !dbg !2612, !tbaa !1021
  br label %do.body.83, !dbg !2616

do.body.83:                                       ; preds = %if.then.81
  %76 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2617
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !2617
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !616, metadata !1016), !dbg !2619
  %77 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2620, !tbaa !1021
  store %struct._object* %77, %struct._object** %_py_decref_tmp84, align 8, !dbg !2619, !tbaa !1021
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2621, !tbaa !1021
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !2623
  %79 = load i64, i64* %ob_refcnt85, align 8, !dbg !2624, !tbaa !1055
  %dec86 = add i64 %79, -1, !dbg !2624
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !2624, !tbaa !1055
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !2625
  br i1 %cmp87, label %if.then.89, label %if.else.90, !dbg !2626

if.then.89:                                       ; preds = %do.body.83
  br label %if.end.93, !dbg !2627

if.else.90:                                       ; preds = %do.body.83
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2629, !tbaa !1021
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !2631
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8, !dbg !2631, !tbaa !1065
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !2632
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8, !dbg !2632, !tbaa !1067
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2633, !tbaa !1021
  call void %82(%struct._object* %83), !dbg !2634
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  %84 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2635
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !2635
  br label %do.cond.94, !dbg !2637

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95, !dbg !2638

do.end.95:                                        ; preds = %do.cond.94
  %85 = load %struct._object*, %struct._object** %rrv, align 8, !dbg !2640, !tbaa !1021
  store %struct._object* %85, %struct._object** %retval, !dbg !2641
  store i32 1, i32* %cleanup.dest.slot
  %86 = bitcast %struct._object** %rrv to i8*, !dbg !2642
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !2642
  br label %cleanup

if.end.96:                                        ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval, !dbg !2643
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2643

cleanup:                                          ; preds = %if.end.96, %do.end.95, %do.end.51, %do.end, %if.then.4, %if.then
  %87 = bitcast i32* %done to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 4, i8* %87) #1, !dbg !2644
  %88 = bitcast i64* %len to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !2644
  %89 = bitcast %struct._object** %rv to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !2644
  %90 = bitcast i32* %leftchar to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 4, i8* %90) #1, !dbg !2644
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !2644
  %91 = bitcast i32* %leftbits to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 4, i8* %91) #1, !dbg !2644
  %92 = bitcast i8** %bin_data to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !2644
  %93 = bitcast i8** %ascii_data to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !2644
  %94 = load %struct._object*, %struct._object** %retval, !dbg !2644
  ret %struct._object* %94, !dbg !2644
}

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !626, metadata !1016), !dbg !2645
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !627, metadata !1016), !dbg !2646
  %0 = bitcast i8** %ascii_data to i8*, !dbg !2647
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2647
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !628, metadata !1016), !dbg !2648
  %1 = bitcast i8** %bin_data to i8*, !dbg !2647
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2647
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !629, metadata !1016), !dbg !2649
  %2 = bitcast i32* %leftbits to i8*, !dbg !2650
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2650
  call void @llvm.dbg.declare(metadata i32* %leftbits, metadata !630, metadata !1016), !dbg !2651
  store i32 0, i32* %leftbits, align 4, !dbg !2651, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %this_ch) #1, !dbg !2652
  call void @llvm.dbg.declare(metadata i8* %this_ch, metadata !631, metadata !1016), !dbg !2653
  %3 = bitcast i32* %leftchar to i8*, !dbg !2654
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2654
  call void @llvm.dbg.declare(metadata i32* %leftchar, metadata !632, metadata !1016), !dbg !2655
  store i32 0, i32* %leftchar, align 4, !dbg !2655, !tbaa !1332
  %4 = bitcast %struct._object** %rv to i8*, !dbg !2656
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2656
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !633, metadata !1016), !dbg !2657
  %5 = bitcast i64* %len to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2658
  call void @llvm.dbg.declare(metadata i64* %len, metadata !634, metadata !1016), !dbg !2659
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2660, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !2661
  %7 = load i8*, i8** %buf, align 8, !dbg !2661, !tbaa !1538
  store i8* %7, i8** %bin_data, align 8, !dbg !2662, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2663, !tbaa !1021
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !2664
  %9 = load i64, i64* %len1, align 8, !dbg !2664, !tbaa !1548
  store i64 %9, i64* %len, align 8, !dbg !2665, !tbaa !1601
  %10 = load i64, i64* %len, align 8, !dbg !2666, !tbaa !1601
  %cmp = icmp sgt i64 %10, 4611686018427387901, !dbg !2668
  br i1 %cmp, label %if.then, label %if.end, !dbg !2669

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !2670
  store %struct._object* %call, %struct._object** %retval, !dbg !2671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2671

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %len, align 8, !dbg !2672, !tbaa !1601
  %mul = mul i64 %11, 2, !dbg !2674
  %add = add i64 %mul, 2, !dbg !2675
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add), !dbg !2676
  store %struct._object* %call2, %struct._object** %rv, align 8, !dbg !2677, !tbaa !1021
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !2678
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2679

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2680
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2680

if.end.5:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2681, !tbaa !1021
  %13 = bitcast %struct._object* %12 to %struct.PyBytesObject*, !dbg !2682
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %13, i32 0, i32 2, !dbg !2683
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2684
  store i8* %arraydecay, i8** %ascii_data, align 8, !dbg !2685, !tbaa !1021
  br label %for.cond, !dbg !2686

for.cond:                                         ; preds = %for.inc, %if.end.5
  %14 = load i64, i64* %len, align 8, !dbg !2687, !tbaa !1601
  %cmp6 = icmp sgt i64 %14, 0, !dbg !2692
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2693

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %leftchar, align 4, !dbg !2694, !tbaa !1332
  %shl = shl i32 %15, 8, !dbg !2696
  %16 = load i8*, i8** %bin_data, align 8, !dbg !2697, !tbaa !1021
  %17 = load i8, i8* %16, align 1, !dbg !2698, !tbaa !1604
  %conv = zext i8 %17 to i32, !dbg !2698
  %or = or i32 %shl, %conv, !dbg !2699
  store i32 %or, i32* %leftchar, align 4, !dbg !2700, !tbaa !1332
  %18 = load i32, i32* %leftbits, align 4, !dbg !2701, !tbaa !1332
  %add7 = add i32 %18, 8, !dbg !2701
  store i32 %add7, i32* %leftbits, align 4, !dbg !2701, !tbaa !1332
  br label %while.cond, !dbg !2702

while.cond:                                       ; preds = %while.body, %for.body
  %19 = load i32, i32* %leftbits, align 4, !dbg !2703, !tbaa !1332
  %cmp8 = icmp sge i32 %19, 6, !dbg !2706
  br i1 %cmp8, label %while.body, label %while.end, !dbg !2702

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %leftchar, align 4, !dbg !2707, !tbaa !1332
  %21 = load i32, i32* %leftbits, align 4, !dbg !2709, !tbaa !1332
  %sub = sub i32 %21, 6, !dbg !2710
  %shr = lshr i32 %20, %sub, !dbg !2711
  %and = and i32 %shr, 63, !dbg !2712
  %conv10 = trunc i32 %and to i8, !dbg !2713
  store i8 %conv10, i8* %this_ch, align 1, !dbg !2714, !tbaa !1604
  %22 = load i32, i32* %leftbits, align 4, !dbg !2715, !tbaa !1332
  %sub11 = sub i32 %22, 6, !dbg !2715
  store i32 %sub11, i32* %leftbits, align 4, !dbg !2715, !tbaa !1332
  %23 = load i8, i8* %this_ch, align 1, !dbg !2716, !tbaa !1604
  %idxprom = zext i8 %23 to i64, !dbg !2717
  %arrayidx = getelementptr [65 x i8], [65 x i8]* @table_b2a_hqx, i32 0, i64 %idxprom, !dbg !2717
  %24 = load i8, i8* %arrayidx, align 1, !dbg !2717, !tbaa !1604
  %25 = load i8*, i8** %ascii_data, align 8, !dbg !2718, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %25, i32 1, !dbg !2718
  store i8* %incdec.ptr, i8** %ascii_data, align 8, !dbg !2718, !tbaa !1021
  store i8 %24, i8* %25, align 1, !dbg !2719, !tbaa !1604
  br label %while.cond, !dbg !2702

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !2720

for.inc:                                          ; preds = %while.end
  %26 = load i64, i64* %len, align 8, !dbg !2721, !tbaa !1601
  %dec = add i64 %26, -1, !dbg !2721
  store i64 %dec, i64* %len, align 8, !dbg !2721, !tbaa !1601
  %27 = load i8*, i8** %bin_data, align 8, !dbg !2722, !tbaa !1021
  %incdec.ptr12 = getelementptr i8, i8* %27, i32 1, !dbg !2722
  store i8* %incdec.ptr12, i8** %bin_data, align 8, !dbg !2722, !tbaa !1021
  br label %for.cond, !dbg !2723

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %leftbits, align 4, !dbg !2724, !tbaa !1332
  %tobool = icmp ne i32 %28, 0, !dbg !2724
  br i1 %tobool, label %if.then.13, label %if.end.20, !dbg !2726

if.then.13:                                       ; preds = %for.end
  %29 = load i32, i32* %leftbits, align 4, !dbg !2727, !tbaa !1332
  %sub14 = sub i32 6, %29, !dbg !2729
  %30 = load i32, i32* %leftchar, align 4, !dbg !2730, !tbaa !1332
  %shl15 = shl i32 %30, %sub14, !dbg !2730
  store i32 %shl15, i32* %leftchar, align 4, !dbg !2730, !tbaa !1332
  %31 = load i32, i32* %leftchar, align 4, !dbg !2731, !tbaa !1332
  %and16 = and i32 %31, 63, !dbg !2732
  %idxprom17 = zext i32 %and16 to i64, !dbg !2733
  %arrayidx18 = getelementptr [65 x i8], [65 x i8]* @table_b2a_hqx, i32 0, i64 %idxprom17, !dbg !2733
  %32 = load i8, i8* %arrayidx18, align 1, !dbg !2733, !tbaa !1604
  %33 = load i8*, i8** %ascii_data, align 8, !dbg !2734, !tbaa !1021
  %incdec.ptr19 = getelementptr i8, i8* %33, i32 1, !dbg !2734
  store i8* %incdec.ptr19, i8** %ascii_data, align 8, !dbg !2734, !tbaa !1021
  store i8 %32, i8* %33, align 1, !dbg !2735, !tbaa !1604
  br label %if.end.20, !dbg !2736

if.end.20:                                        ; preds = %if.then.13, %for.end
  %34 = load i8*, i8** %ascii_data, align 8, !dbg !2737, !tbaa !1021
  %35 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2738, !tbaa !1021
  %36 = bitcast %struct._object* %35 to %struct.PyBytesObject*, !dbg !2739
  %ob_sval21 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %36, i32 0, i32 2, !dbg !2740
  %arraydecay22 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval21, i32 0, i32 0, !dbg !2741
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64, !dbg !2742
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay22 to i64, !dbg !2742
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2742
  %call23 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !2743
  %cmp24 = icmp slt i32 %call23, 0, !dbg !2744
  br i1 %cmp24, label %if.then.26, label %if.end.39, !dbg !2745

if.then.26:                                       ; preds = %if.end.20
  br label %do.body, !dbg !2746

do.body:                                          ; preds = %if.then.26
  %37 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !635, metadata !1016), !dbg !2749
  %38 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2750, !tbaa !1021
  store %struct._object* %38, %struct._object** %_py_tmp, align 8, !dbg !2749, !tbaa !1021
  %39 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2751, !tbaa !1021
  %cmp27 = icmp ne %struct._object* %39, null, !dbg !2752
  br i1 %cmp27, label %if.then.29, label %if.end.36, !dbg !2753

if.then.29:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !2754, !tbaa !1021
  br label %do.body.30, !dbg !2756

do.body.30:                                       ; preds = %if.then.29
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2757
  call void @llvm.lifetime.start(i64 8, i8* %40) #1, !dbg !2757
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !639, metadata !1016), !dbg !2759
  %41 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2760, !tbaa !1021
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8, !dbg !2759, !tbaa !1021
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2761, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !2763
  %43 = load i64, i64* %ob_refcnt, align 8, !dbg !2764, !tbaa !1055
  %dec31 = add i64 %43, -1, !dbg !2764
  store i64 %dec31, i64* %ob_refcnt, align 8, !dbg !2764, !tbaa !1055
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !2765
  br i1 %cmp32, label %if.then.34, label %if.else, !dbg !2766

if.then.34:                                       ; preds = %do.body.30
  br label %if.end.35, !dbg !2767

if.else:                                          ; preds = %do.body.30
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2769, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !2771
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2771, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !2772
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2772, !tbaa !1067
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2773, !tbaa !1021
  call void %46(%struct._object* %47), !dbg !2774
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  %48 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2775
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !2775
  br label %do.cond, !dbg !2777

do.cond:                                          ; preds = %if.end.35
  br label %do.end, !dbg !2778

do.end:                                           ; preds = %do.cond
  br label %if.end.36, !dbg !2780

if.end.36:                                        ; preds = %do.end, %do.body
  %49 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2782
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2782
  br label %do.cond.37, !dbg !2785

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !2786

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39, !dbg !2788

if.end.39:                                        ; preds = %do.end.38, %if.end.20
  %50 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2789, !tbaa !1021
  store %struct._object* %50, %struct._object** %retval, !dbg !2790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2790

cleanup:                                          ; preds = %if.end.39, %if.then.4, %if.then
  %51 = bitcast i64* %len to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2791
  %52 = bitcast %struct._object** %rv to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !2791
  %53 = bitcast i32* %leftchar to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 4, i8* %53) #1, !dbg !2791
  call void @llvm.lifetime.end(i64 1, i8* %this_ch) #1, !dbg !2791
  %54 = bitcast i32* %leftbits to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !2791
  %55 = bitcast i8** %bin_data to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2791
  %56 = bitcast i8** %ascii_data to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !2791
  %57 = load %struct._object*, %struct._object** %retval, !dbg !2791
  ret %struct._object* %57, !dbg !2791
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
  %cleanup.dest.slot = alloca i32
  %top = alloca i32, align 4
  %bot = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !651, metadata !1016), !dbg !2792
  store %struct.bufferinfo* %hexstr, %struct.bufferinfo** %hexstr.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %hexstr.addr, metadata !652, metadata !1016), !dbg !2793
  %0 = bitcast i8** %argbuf to i8*, !dbg !2794
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2794
  call void @llvm.dbg.declare(metadata i8** %argbuf, metadata !653, metadata !1016), !dbg !2795
  %1 = bitcast i64* %arglen to i8*, !dbg !2796
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2796
  call void @llvm.dbg.declare(metadata i64* %arglen, metadata !654, metadata !1016), !dbg !2797
  %2 = bitcast %struct._object** %retval1 to i8*, !dbg !2798
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2798
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !655, metadata !1016), !dbg !2799
  %3 = bitcast i8** %retbuf to i8*, !dbg !2800
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2800
  call void @llvm.dbg.declare(metadata i8** %retbuf, metadata !656, metadata !1016), !dbg !2801
  %4 = bitcast i64* %i to i8*, !dbg !2802
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2802
  call void @llvm.dbg.declare(metadata i64* %i, metadata !657, metadata !1016), !dbg !2803
  %5 = bitcast i64* %j to i8*, !dbg !2802
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2802
  call void @llvm.dbg.declare(metadata i64* %j, metadata !658, metadata !1016), !dbg !2804
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %hexstr.addr, align 8, !dbg !2805, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !2806
  %7 = load i8*, i8** %buf, align 8, !dbg !2806, !tbaa !1538
  store i8* %7, i8** %argbuf, align 8, !dbg !2807, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %hexstr.addr, align 8, !dbg !2808, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !2809
  %9 = load i64, i64* %len, align 8, !dbg !2809, !tbaa !1548
  store i64 %9, i64* %arglen, align 8, !dbg !2810, !tbaa !1601
  %10 = load i64, i64* %arglen, align 8, !dbg !2811, !tbaa !1601
  %rem = srem i64 %10, 2, !dbg !2813
  %tobool = icmp ne i64 %rem, 0, !dbg !2813
  br i1 %tobool, label %if.then, label %if.end, !dbg !2814

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** @Error, align 8, !dbg !2815, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0)), !dbg !2817
  store %struct._object* null, %struct._object** %retval, !dbg !2818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !2818

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %arglen, align 8, !dbg !2819, !tbaa !1601
  %div = sdiv i64 %12, 2, !dbg !2820
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %div), !dbg !2821
  store %struct._object* %call, %struct._object** %retval1, align 8, !dbg !2822, !tbaa !1021
  %13 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2823, !tbaa !1021
  %tobool2 = icmp ne %struct._object* %13, null, !dbg !2823
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2825

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2826
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !2826

if.end.4:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2827, !tbaa !1021
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*, !dbg !2828
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2, !dbg !2829
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2830
  store i8* %arraydecay, i8** %retbuf, align 8, !dbg !2831, !tbaa !1021
  store i64 0, i64* %j, align 8, !dbg !2832, !tbaa !1601
  store i64 0, i64* %i, align 8, !dbg !2833, !tbaa !1601
  br label %for.cond, !dbg !2834

for.cond:                                         ; preds = %for.inc, %if.end.4
  %16 = load i64, i64* %i, align 8, !dbg !2835, !tbaa !1601
  %17 = load i64, i64* %arglen, align 8, !dbg !2838, !tbaa !1601
  %cmp = icmp slt i64 %16, %17, !dbg !2839
  br i1 %cmp, label %for.body, label %for.end, !dbg !2840

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32* %top to i8*, !dbg !2841
  call void @llvm.lifetime.start(i64 4, i8* %18) #1, !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %top, metadata !659, metadata !1016), !dbg !2842
  %19 = load i64, i64* %i, align 8, !dbg !2843, !tbaa !1601
  %20 = load i8*, i8** %argbuf, align 8, !dbg !2844, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %20, i64 %19, !dbg !2844
  %21 = load i8, i8* %arrayidx, align 1, !dbg !2844, !tbaa !1604
  %conv = sext i8 %21 to i32, !dbg !2845
  %and = and i32 %conv, 255, !dbg !2846
  %conv5 = trunc i32 %and to i8, !dbg !2847
  %conv6 = zext i8 %conv5 to i32, !dbg !2848
  %call7 = call i32 @to_int(i32 %conv6), !dbg !2849
  store i32 %call7, i32* %top, align 4, !dbg !2842, !tbaa !1332
  %22 = bitcast i32* %bot to i8*, !dbg !2850
  call void @llvm.lifetime.start(i64 4, i8* %22) #1, !dbg !2850
  call void @llvm.dbg.declare(metadata i32* %bot, metadata !663, metadata !1016), !dbg !2851
  %23 = load i64, i64* %i, align 8, !dbg !2852, !tbaa !1601
  %add = add i64 %23, 1, !dbg !2853
  %24 = load i8*, i8** %argbuf, align 8, !dbg !2854, !tbaa !1021
  %arrayidx8 = getelementptr i8, i8* %24, i64 %add, !dbg !2854
  %25 = load i8, i8* %arrayidx8, align 1, !dbg !2854, !tbaa !1604
  %conv9 = sext i8 %25 to i32, !dbg !2855
  %and10 = and i32 %conv9, 255, !dbg !2856
  %conv11 = trunc i32 %and10 to i8, !dbg !2857
  %conv12 = zext i8 %conv11 to i32, !dbg !2858
  %call13 = call i32 @to_int(i32 %conv12), !dbg !2859
  store i32 %call13, i32* %bot, align 4, !dbg !2851, !tbaa !1332
  %26 = load i32, i32* %top, align 4, !dbg !2860, !tbaa !1332
  %cmp14 = icmp eq i32 %26, -1, !dbg !2862
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false, !dbg !2863

lor.lhs.false:                                    ; preds = %for.body
  %27 = load i32, i32* %bot, align 4, !dbg !2864, !tbaa !1332
  %cmp16 = icmp eq i32 %27, -1, !dbg !2866
  br i1 %cmp16, label %if.then.18, label %if.end.19, !dbg !2867

if.then.18:                                       ; preds = %lor.lhs.false, %for.body
  %28 = load %struct._object*, %struct._object** @Error, align 8, !dbg !2868, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0)), !dbg !2870
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2871

if.end.19:                                        ; preds = %lor.lhs.false
  %29 = load i32, i32* %top, align 4, !dbg !2872, !tbaa !1332
  %shl = shl i32 %29, 4, !dbg !2873
  %30 = load i32, i32* %bot, align 4, !dbg !2874, !tbaa !1332
  %add20 = add i32 %shl, %30, !dbg !2875
  %conv21 = trunc i32 %add20 to i8, !dbg !2876
  %31 = load i64, i64* %j, align 8, !dbg !2877, !tbaa !1601
  %inc = add i64 %31, 1, !dbg !2877
  store i64 %inc, i64* %j, align 8, !dbg !2877, !tbaa !1601
  %32 = load i8*, i8** %retbuf, align 8, !dbg !2878, !tbaa !1021
  %arrayidx22 = getelementptr i8, i8* %32, i64 %31, !dbg !2878
  store i8 %conv21, i8* %arrayidx22, align 1, !dbg !2879, !tbaa !1604
  store i32 0, i32* %cleanup.dest.slot, !dbg !2880
  br label %cleanup, !dbg !2880

cleanup:                                          ; preds = %if.then.18, %if.end.19
  %33 = bitcast i32* %bot to i8*, !dbg !2881
  call void @llvm.lifetime.end(i64 4, i8* %33) #1, !dbg !2881
  %34 = bitcast i32* %top to i8*, !dbg !2881
  call void @llvm.lifetime.end(i64 4, i8* %34) #1, !dbg !2881
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
    i32 5, label %finally
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2882

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i64, i64* %i, align 8, !dbg !2883, !tbaa !1601
  %add24 = add i64 %35, 2, !dbg !2883
  store i64 %add24, i64* %i, align 8, !dbg !2883, !tbaa !1601
  br label %for.cond, !dbg !2884

for.end:                                          ; preds = %for.cond
  %36 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2885, !tbaa !1021
  store %struct._object* %36, %struct._object** %retval, !dbg !2886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !2886

finally:                                          ; preds = %cleanup
  br label %do.body, !dbg !2887

do.body:                                          ; preds = %finally
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2888
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !2888
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !664, metadata !1016), !dbg !2890
  %38 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2891, !tbaa !1021
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8, !dbg !2890, !tbaa !1021
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2892, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !2894
  %40 = load i64, i64* %ob_refcnt, align 8, !dbg !2895, !tbaa !1055
  %dec = add i64 %40, -1, !dbg !2895
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2895, !tbaa !1055
  %cmp25 = icmp ne i64 %dec, 0, !dbg !2896
  br i1 %cmp25, label %if.then.27, label %if.else, !dbg !2897

if.then.27:                                       ; preds = %do.body
  br label %if.end.28, !dbg !2898

if.else:                                          ; preds = %do.body
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2900, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !2902
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2902, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !2903
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2903, !tbaa !1067
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2904, !tbaa !1021
  call void %43(%struct._object* %44), !dbg !2905
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2906
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2906
  br label %do.cond, !dbg !2908

do.cond:                                          ; preds = %if.end.28
  br label %do.end, !dbg !2909

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2911
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !2911

cleanup.29:                                       ; preds = %do.end, %for.end, %cleanup, %if.then.3, %if.then
  %46 = bitcast i64* %j to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2912
  %47 = bitcast i64* %i to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2912
  %48 = bitcast i8** %retbuf to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !2912
  %49 = bitcast %struct._object** %retval1 to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2912
  %50 = bitcast i64* %arglen to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !2912
  %51 = bitcast i8** %argbuf to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2912
  %52 = load %struct._object*, %struct._object** %retval, !dbg !2912
  ret %struct._object* %52, !dbg !2912
}

; Function Attrs: nounwind uwtable
define internal i32 @to_int(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !670, metadata !1016), !dbg !2913
  %0 = load i32, i32* %c.addr, align 4, !dbg !2914, !tbaa !1332
  %and = and i32 %0, 255, !dbg !2916
  %conv = trunc i32 %and to i8, !dbg !2917
  %idxprom = zext i8 %conv to i64, !dbg !2918
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !2918
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2918, !tbaa !1332
  %and1 = and i32 %1, 4, !dbg !2919
  %tobool = icmp ne i32 %and1, 0, !dbg !2919
  br i1 %tobool, label %if.then, label %if.else, !dbg !2920

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !2921, !tbaa !1332
  %sub = sub i32 %2, 48, !dbg !2922
  store i32 %sub, i32* %retval, !dbg !2923
  br label %return, !dbg !2923

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !2924, !tbaa !1332
  %and2 = and i32 %3, 255, !dbg !2927
  %conv3 = trunc i32 %and2 to i8, !dbg !2928
  %idxprom4 = zext i8 %conv3 to i64, !dbg !2929
  %arrayidx5 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom4, !dbg !2929
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !2929, !tbaa !1332
  %and6 = and i32 %4, 2, !dbg !2930
  %tobool7 = icmp ne i32 %and6, 0, !dbg !2930
  br i1 %tobool7, label %if.then.8, label %if.end, !dbg !2931

if.then.8:                                        ; preds = %if.else
  %5 = load i32, i32* %c.addr, align 4, !dbg !2932, !tbaa !1332
  %and9 = and i32 %5, 255, !dbg !2933
  %conv10 = trunc i32 %and9 to i8, !dbg !2934
  %idxprom11 = zext i8 %conv10 to i64, !dbg !2935
  %arrayidx12 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom11, !dbg !2935
  %6 = load i8, i8* %arrayidx12, align 1, !dbg !2935, !tbaa !1604
  %conv13 = zext i8 %6 to i32, !dbg !2936
  store i32 %conv13, i32* %c.addr, align 4, !dbg !2937, !tbaa !1332
  br label %if.end, !dbg !2938

if.end:                                           ; preds = %if.then.8, %if.else
  %7 = load i32, i32* %c.addr, align 4, !dbg !2939, !tbaa !1332
  %cmp = icmp sge i32 %7, 97, !dbg !2941
  br i1 %cmp, label %land.lhs.true, label %if.end.19, !dbg !2942

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4, !dbg !2943, !tbaa !1332
  %cmp15 = icmp sle i32 %8, 102, !dbg !2945
  br i1 %cmp15, label %if.then.17, label %if.end.19, !dbg !2946

if.then.17:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %c.addr, align 4, !dbg !2947, !tbaa !1332
  %sub18 = sub i32 %9, 97, !dbg !2948
  %add = add i32 %sub18, 10, !dbg !2949
  store i32 %add, i32* %retval, !dbg !2950
  br label %return, !dbg !2950

if.end.19:                                        ; preds = %land.lhs.true, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  store i32 -1, i32* %retval, !dbg !2951
  br label %return, !dbg !2951

return:                                           ; preds = %if.end.20, %if.then.17, %if.then
  %10 = load i32, i32* %retval, !dbg !2952
  ret i32 %10, !dbg !2952
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
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !679, metadata !1016), !dbg !2953
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !680, metadata !1016), !dbg !2954
  %0 = bitcast i8** %argbuf to i8*, !dbg !2955
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2955
  call void @llvm.dbg.declare(metadata i8** %argbuf, metadata !681, metadata !1016), !dbg !2956
  %1 = bitcast i64* %arglen to i8*, !dbg !2957
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2957
  call void @llvm.dbg.declare(metadata i64* %arglen, metadata !682, metadata !1016), !dbg !2958
  %2 = bitcast %struct._object** %retval1 to i8*, !dbg !2959
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !683, metadata !1016), !dbg !2960
  %3 = bitcast i8** %retbuf to i8*, !dbg !2961
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2961
  call void @llvm.dbg.declare(metadata i8** %retbuf, metadata !684, metadata !1016), !dbg !2962
  %4 = bitcast i64* %i to i8*, !dbg !2963
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2963
  call void @llvm.dbg.declare(metadata i64* %i, metadata !685, metadata !1016), !dbg !2964
  %5 = bitcast i64* %j to i8*, !dbg !2963
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2963
  call void @llvm.dbg.declare(metadata i64* %j, metadata !686, metadata !1016), !dbg !2965
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2966, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !2967
  %7 = load i8*, i8** %buf, align 8, !dbg !2967, !tbaa !1538
  store i8* %7, i8** %argbuf, align 8, !dbg !2968, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2969, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !2970
  %9 = load i64, i64* %len, align 8, !dbg !2970, !tbaa !1548
  store i64 %9, i64* %arglen, align 8, !dbg !2971, !tbaa !1601
  %10 = load i64, i64* %arglen, align 8, !dbg !2972, !tbaa !1601
  %cmp = icmp sgt i64 %10, 4611686018427387903, !dbg !2974
  br i1 %cmp, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !2976
  store %struct._object* %call, %struct._object** %retval, !dbg !2977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2977

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %arglen, align 8, !dbg !2978, !tbaa !1601
  %mul = mul i64 %11, 2, !dbg !2979
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul), !dbg !2980
  store %struct._object* %call2, %struct._object** %retval1, align 8, !dbg !2981, !tbaa !1021
  %12 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2982, !tbaa !1021
  %tobool = icmp ne %struct._object* %12, null, !dbg !2982
  br i1 %tobool, label %if.end.4, label %if.then.3, !dbg !2984

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2985

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2986, !tbaa !1021
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*, !dbg !2987
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2, !dbg !2988
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2989
  store i8* %arraydecay, i8** %retbuf, align 8, !dbg !2990, !tbaa !1021
  store i64 0, i64* %j, align 8, !dbg !2991, !tbaa !1601
  store i64 0, i64* %i, align 8, !dbg !2992, !tbaa !1601
  br label %for.cond, !dbg !2993

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i64, i64* %i, align 8, !dbg !2994, !tbaa !1601
  %16 = load i64, i64* %arglen, align 8, !dbg !2997, !tbaa !1601
  %cmp5 = icmp slt i64 %15, %16, !dbg !2998
  br i1 %cmp5, label %for.body, label %for.end, !dbg !2999

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !3000
  call void @llvm.dbg.declare(metadata i8* %c, metadata !687, metadata !1016), !dbg !3001
  %17 = load i64, i64* %i, align 8, !dbg !3002, !tbaa !1601
  %18 = load i8*, i8** %argbuf, align 8, !dbg !3003, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %18, i64 %17, !dbg !3003
  %19 = load i8, i8* %arrayidx, align 1, !dbg !3003, !tbaa !1604
  %conv = sext i8 %19 to i32, !dbg !3003
  %shr = ashr i32 %conv, 4, !dbg !3004
  %and = and i32 %shr, 15, !dbg !3005
  %conv6 = trunc i32 %and to i8, !dbg !3006
  store i8 %conv6, i8* %c, align 1, !dbg !3007, !tbaa !1604
  %20 = load i8, i8* %c, align 1, !dbg !3008, !tbaa !1604
  %idxprom = zext i8 %20 to i64, !dbg !3009
  %21 = load i8*, i8** @Py_hexdigits, align 8, !dbg !3009, !tbaa !1021
  %arrayidx7 = getelementptr i8, i8* %21, i64 %idxprom, !dbg !3009
  %22 = load i8, i8* %arrayidx7, align 1, !dbg !3009, !tbaa !1604
  %23 = load i64, i64* %j, align 8, !dbg !3010, !tbaa !1601
  %inc = add i64 %23, 1, !dbg !3010
  store i64 %inc, i64* %j, align 8, !dbg !3010, !tbaa !1601
  %24 = load i8*, i8** %retbuf, align 8, !dbg !3011, !tbaa !1021
  %arrayidx8 = getelementptr i8, i8* %24, i64 %23, !dbg !3011
  store i8 %22, i8* %arrayidx8, align 1, !dbg !3012, !tbaa !1604
  %25 = load i64, i64* %i, align 8, !dbg !3013, !tbaa !1601
  %26 = load i8*, i8** %argbuf, align 8, !dbg !3014, !tbaa !1021
  %arrayidx9 = getelementptr i8, i8* %26, i64 %25, !dbg !3014
  %27 = load i8, i8* %arrayidx9, align 1, !dbg !3014, !tbaa !1604
  %conv10 = sext i8 %27 to i32, !dbg !3014
  %and11 = and i32 %conv10, 15, !dbg !3015
  %conv12 = trunc i32 %and11 to i8, !dbg !3014
  store i8 %conv12, i8* %c, align 1, !dbg !3016, !tbaa !1604
  %28 = load i8, i8* %c, align 1, !dbg !3017, !tbaa !1604
  %idxprom13 = zext i8 %28 to i64, !dbg !3018
  %29 = load i8*, i8** @Py_hexdigits, align 8, !dbg !3018, !tbaa !1021
  %arrayidx14 = getelementptr i8, i8* %29, i64 %idxprom13, !dbg !3018
  %30 = load i8, i8* %arrayidx14, align 1, !dbg !3018, !tbaa !1604
  %31 = load i64, i64* %j, align 8, !dbg !3019, !tbaa !1601
  %inc15 = add i64 %31, 1, !dbg !3019
  store i64 %inc15, i64* %j, align 8, !dbg !3019, !tbaa !1601
  %32 = load i8*, i8** %retbuf, align 8, !dbg !3020, !tbaa !1021
  %arrayidx16 = getelementptr i8, i8* %32, i64 %31, !dbg !3020
  store i8 %30, i8* %arrayidx16, align 1, !dbg !3021, !tbaa !1604
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !3022
  br label %for.inc, !dbg !3023

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %i, align 8, !dbg !3024, !tbaa !1601
  %inc17 = add i64 %33, 1, !dbg !3024
  store i64 %inc17, i64* %i, align 8, !dbg !3024, !tbaa !1601
  br label %for.cond, !dbg !3025

for.end:                                          ; preds = %for.cond
  %34 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3026, !tbaa !1021
  store %struct._object* %34, %struct._object** %retval, !dbg !3027
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3027

cleanup:                                          ; preds = %for.end, %if.then.3, %if.then
  %35 = bitcast i64* %j to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3028
  %36 = bitcast i64* %i to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3028
  %37 = bitcast i8** %retbuf to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3028
  %38 = bitcast %struct._object** %retval1 to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3028
  %39 = bitcast i64* %arglen to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !3028
  %40 = bitcast i8** %argbuf to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3028
  %41 = load %struct._object*, %struct._object** %retval, !dbg !3028
  ret %struct._object* %41, !dbg !3028
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
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !699, metadata !1016), !dbg !3029
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !700, metadata !1016), !dbg !3030
  %0 = bitcast i8** %in_data to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3031
  call void @llvm.dbg.declare(metadata i8** %in_data, metadata !701, metadata !1016), !dbg !3032
  %1 = bitcast i8** %out_data to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3031
  call void @llvm.dbg.declare(metadata i8** %out_data, metadata !702, metadata !1016), !dbg !3033
  %2 = bitcast %struct._object** %rv to i8*, !dbg !3034
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3034
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !703, metadata !1016), !dbg !3035
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1, !dbg !3036
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !704, metadata !1016), !dbg !3037
  %3 = bitcast i64* %in to i8*, !dbg !3038
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3038
  call void @llvm.dbg.declare(metadata i64* %in, metadata !705, metadata !1016), !dbg !3039
  %4 = bitcast i64* %inend to i8*, !dbg !3038
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3038
  call void @llvm.dbg.declare(metadata i64* %inend, metadata !706, metadata !1016), !dbg !3040
  %5 = bitcast i64* %len to i8*, !dbg !3038
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3038
  call void @llvm.dbg.declare(metadata i64* %len, metadata !707, metadata !1016), !dbg !3041
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3042, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !3043
  %7 = load i8*, i8** %buf, align 8, !dbg !3043, !tbaa !1538
  store i8* %7, i8** %in_data, align 8, !dbg !3044, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3045, !tbaa !1021
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !3046
  %9 = load i64, i64* %len1, align 8, !dbg !3046, !tbaa !1548
  store i64 %9, i64* %len, align 8, !dbg !3047, !tbaa !1601
  %10 = load i64, i64* %len, align 8, !dbg !3048, !tbaa !1601
  %cmp = icmp sgt i64 %10, 4611686018427387901, !dbg !3050
  br i1 %cmp, label %if.then, label %if.end, !dbg !3051

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !3052
  store %struct._object* %call, %struct._object** %retval, !dbg !3053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3053

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %len, align 8, !dbg !3054, !tbaa !1601
  %mul = mul i64 %11, 2, !dbg !3056
  %add = add i64 %mul, 2, !dbg !3057
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add), !dbg !3058
  store %struct._object* %call2, %struct._object** %rv, align 8, !dbg !3059, !tbaa !1021
  %cmp3 = icmp eq %struct._object* %call2, null, !dbg !3060
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3061

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3062
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3062

if.end.5:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3063, !tbaa !1021
  %13 = bitcast %struct._object* %12 to %struct.PyBytesObject*, !dbg !3064
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %13, i32 0, i32 2, !dbg !3065
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3066
  store i8* %arraydecay, i8** %out_data, align 8, !dbg !3067, !tbaa !1021
  store i64 0, i64* %in, align 8, !dbg !3068, !tbaa !1601
  br label %for.cond, !dbg !3070

for.cond:                                         ; preds = %for.inc.37, %if.end.5
  %14 = load i64, i64* %in, align 8, !dbg !3071, !tbaa !1601
  %15 = load i64, i64* %len, align 8, !dbg !3075, !tbaa !1601
  %cmp6 = icmp slt i64 %14, %15, !dbg !3076
  br i1 %cmp6, label %for.body, label %for.end.39, !dbg !3077

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %in, align 8, !dbg !3078, !tbaa !1601
  %17 = load i8*, i8** %in_data, align 8, !dbg !3080, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %17, i64 %16, !dbg !3080
  %18 = load i8, i8* %arrayidx, align 1, !dbg !3080, !tbaa !1604
  store i8 %18, i8* %ch, align 1, !dbg !3081, !tbaa !1604
  %19 = load i8, i8* %ch, align 1, !dbg !3082, !tbaa !1604
  %conv = zext i8 %19 to i32, !dbg !3082
  %cmp7 = icmp eq i32 %conv, 144, !dbg !3084
  br i1 %cmp7, label %if.then.9, label %if.else, !dbg !3085

if.then.9:                                        ; preds = %for.body
  %20 = load i8*, i8** %out_data, align 8, !dbg !3086, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %20, i32 1, !dbg !3086
  store i8* %incdec.ptr, i8** %out_data, align 8, !dbg !3086, !tbaa !1021
  store i8 -112, i8* %20, align 1, !dbg !3088, !tbaa !1604
  %21 = load i8*, i8** %out_data, align 8, !dbg !3089, !tbaa !1021
  %incdec.ptr10 = getelementptr i8, i8* %21, i32 1, !dbg !3089
  store i8* %incdec.ptr10, i8** %out_data, align 8, !dbg !3089, !tbaa !1021
  store i8 0, i8* %21, align 1, !dbg !3090, !tbaa !1604
  br label %if.end.36, !dbg !3091

if.else:                                          ; preds = %for.body
  %22 = load i64, i64* %in, align 8, !dbg !3092, !tbaa !1601
  %add11 = add i64 %22, 1, !dbg !3095
  store i64 %add11, i64* %inend, align 8, !dbg !3096, !tbaa !1601
  br label %for.cond.12, !dbg !3097

for.cond.12:                                      ; preds = %for.inc, %if.else
  %23 = load i64, i64* %inend, align 8, !dbg !3098, !tbaa !1601
  %24 = load i64, i64* %len, align 8, !dbg !3100, !tbaa !1601
  %cmp13 = icmp slt i64 %23, %24, !dbg !3101
  br i1 %cmp13, label %land.lhs.true, label %land.end, !dbg !3102

land.lhs.true:                                    ; preds = %for.cond.12
  %25 = load i64, i64* %inend, align 8, !dbg !3103, !tbaa !1601
  %26 = load i8*, i8** %in_data, align 8, !dbg !3105, !tbaa !1021
  %arrayidx15 = getelementptr i8, i8* %26, i64 %25, !dbg !3105
  %27 = load i8, i8* %arrayidx15, align 1, !dbg !3105, !tbaa !1604
  %conv16 = zext i8 %27 to i32, !dbg !3105
  %28 = load i8, i8* %ch, align 1, !dbg !3106, !tbaa !1604
  %conv17 = zext i8 %28 to i32, !dbg !3106
  %cmp18 = icmp eq i32 %conv16, %conv17, !dbg !3107
  br i1 %cmp18, label %land.rhs, label %land.end, !dbg !3108

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load i64, i64* %inend, align 8, !dbg !3109, !tbaa !1601
  %30 = load i64, i64* %in, align 8, !dbg !3110, !tbaa !1601
  %add20 = add i64 %30, 255, !dbg !3111
  %cmp21 = icmp slt i64 %29, %add20, !dbg !3112
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.12
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.12 ], [ %cmp21, %land.rhs ]
  br i1 %31, label %for.body.23, label %for.end, !dbg !3113

for.body.23:                                      ; preds = %land.end
  br label %for.inc, !dbg !3114

for.inc:                                          ; preds = %for.body.23
  %32 = load i64, i64* %inend, align 8, !dbg !3116, !tbaa !1601
  %inc = add i64 %32, 1, !dbg !3116
  store i64 %inc, i64* %inend, align 8, !dbg !3116, !tbaa !1601
  br label %for.cond.12, !dbg !3117

for.end:                                          ; preds = %land.end
  %33 = load i64, i64* %inend, align 8, !dbg !3118, !tbaa !1601
  %34 = load i64, i64* %in, align 8, !dbg !3120, !tbaa !1601
  %sub = sub i64 %33, %34, !dbg !3121
  %cmp24 = icmp sgt i64 %sub, 3, !dbg !3122
  br i1 %cmp24, label %if.then.26, label %if.else.33, !dbg !3123

if.then.26:                                       ; preds = %for.end
  %35 = load i8, i8* %ch, align 1, !dbg !3124, !tbaa !1604
  %36 = load i8*, i8** %out_data, align 8, !dbg !3126, !tbaa !1021
  %incdec.ptr27 = getelementptr i8, i8* %36, i32 1, !dbg !3126
  store i8* %incdec.ptr27, i8** %out_data, align 8, !dbg !3126, !tbaa !1021
  store i8 %35, i8* %36, align 1, !dbg !3127, !tbaa !1604
  %37 = load i8*, i8** %out_data, align 8, !dbg !3128, !tbaa !1021
  %incdec.ptr28 = getelementptr i8, i8* %37, i32 1, !dbg !3128
  store i8* %incdec.ptr28, i8** %out_data, align 8, !dbg !3128, !tbaa !1021
  store i8 -112, i8* %37, align 1, !dbg !3129, !tbaa !1604
  %38 = load i64, i64* %inend, align 8, !dbg !3130, !tbaa !1601
  %39 = load i64, i64* %in, align 8, !dbg !3131, !tbaa !1601
  %sub29 = sub i64 %38, %39, !dbg !3132
  %conv30 = trunc i64 %sub29 to i8, !dbg !3133
  %40 = load i8*, i8** %out_data, align 8, !dbg !3134, !tbaa !1021
  %incdec.ptr31 = getelementptr i8, i8* %40, i32 1, !dbg !3134
  store i8* %incdec.ptr31, i8** %out_data, align 8, !dbg !3134, !tbaa !1021
  store i8 %conv30, i8* %40, align 1, !dbg !3135, !tbaa !1604
  %41 = load i64, i64* %inend, align 8, !dbg !3136, !tbaa !1601
  %sub32 = sub i64 %41, 1, !dbg !3137
  store i64 %sub32, i64* %in, align 8, !dbg !3138, !tbaa !1601
  br label %if.end.35, !dbg !3139

if.else.33:                                       ; preds = %for.end
  %42 = load i8, i8* %ch, align 1, !dbg !3140, !tbaa !1604
  %43 = load i8*, i8** %out_data, align 8, !dbg !3142, !tbaa !1021
  %incdec.ptr34 = getelementptr i8, i8* %43, i32 1, !dbg !3142
  store i8* %incdec.ptr34, i8** %out_data, align 8, !dbg !3142, !tbaa !1021
  store i8 %42, i8* %43, align 1, !dbg !3143, !tbaa !1604
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.9
  br label %for.inc.37, !dbg !3144

for.inc.37:                                       ; preds = %if.end.36
  %44 = load i64, i64* %in, align 8, !dbg !3145, !tbaa !1601
  %inc38 = add i64 %44, 1, !dbg !3145
  store i64 %inc38, i64* %in, align 8, !dbg !3145, !tbaa !1601
  br label %for.cond, !dbg !3146

for.end.39:                                       ; preds = %for.cond
  %45 = load i8*, i8** %out_data, align 8, !dbg !3147, !tbaa !1021
  %46 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3148, !tbaa !1021
  %47 = bitcast %struct._object* %46 to %struct.PyBytesObject*, !dbg !3149
  %ob_sval40 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %47, i32 0, i32 2, !dbg !3150
  %arraydecay41 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval40, i32 0, i32 0, !dbg !3151
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64, !dbg !3152
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay41 to i64, !dbg !3152
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3152
  %call42 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !3153
  %cmp43 = icmp slt i32 %call42, 0, !dbg !3154
  br i1 %cmp43, label %if.then.45, label %if.end.58, !dbg !3155

if.then.45:                                       ; preds = %for.end.39
  br label %do.body, !dbg !3156

do.body:                                          ; preds = %if.then.45
  %48 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3157
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !3157
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !708, metadata !1016), !dbg !3159
  %49 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3160, !tbaa !1021
  store %struct._object* %49, %struct._object** %_py_tmp, align 8, !dbg !3159, !tbaa !1021
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3161, !tbaa !1021
  %cmp46 = icmp ne %struct._object* %50, null, !dbg !3162
  br i1 %cmp46, label %if.then.48, label %if.end.55, !dbg !3163

if.then.48:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !3164, !tbaa !1021
  br label %do.body.49, !dbg !3166

do.body.49:                                       ; preds = %if.then.48
  %51 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3167
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !3167
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !712, metadata !1016), !dbg !3169
  %52 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3170, !tbaa !1021
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8, !dbg !3169, !tbaa !1021
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3171, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !3173
  %54 = load i64, i64* %ob_refcnt, align 8, !dbg !3174, !tbaa !1055
  %dec = add i64 %54, -1, !dbg !3174
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3174, !tbaa !1055
  %cmp50 = icmp ne i64 %dec, 0, !dbg !3175
  br i1 %cmp50, label %if.then.52, label %if.else.53, !dbg !3176

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.54, !dbg !3177

if.else.53:                                       ; preds = %do.body.49
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3179, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !3181
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3181, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !3182
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3182, !tbaa !1067
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3183, !tbaa !1021
  call void %57(%struct._object* %58), !dbg !3184
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  %59 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3185
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !3185
  br label %do.cond, !dbg !3187

do.cond:                                          ; preds = %if.end.54
  br label %do.end, !dbg !3188

do.end:                                           ; preds = %do.cond
  br label %if.end.55, !dbg !3190

if.end.55:                                        ; preds = %do.end, %do.body
  %60 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3192
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !3192
  br label %do.cond.56, !dbg !3195

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !3196

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.58, !dbg !3198

if.end.58:                                        ; preds = %do.end.57, %for.end.39
  %61 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3199, !tbaa !1021
  store %struct._object* %61, %struct._object** %retval, !dbg !3200
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3200

cleanup:                                          ; preds = %if.end.58, %if.then.4, %if.then
  %62 = bitcast i64* %len to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !3201
  %63 = bitcast i64* %inend to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !3201
  %64 = bitcast i64* %in to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !3201
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1, !dbg !3201
  %65 = bitcast %struct._object** %rv to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !3201
  %66 = bitcast i8** %out_data to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !3201
  %67 = bitcast i8** %in_data to i8*, !dbg !3201
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3201
  %68 = load %struct._object*, %struct._object** %retval, !dbg !3201
  ret %struct._object* %68, !dbg !3201
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_xdecref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %_py_decref_tmp188 = alloca %struct._object*, align 8
  %_py_xdecref_tmp224 = alloca %struct._object*, align 8
  %_py_decref_tmp229 = alloca %struct._object*, align 8
  %_py_xdecref_tmp277 = alloca %struct._object*, align 8
  %_py_decref_tmp282 = alloca %struct._object*, align 8
  %_py_xdecref_tmp325 = alloca %struct._object*, align 8
  %_py_decref_tmp330 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp368 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !724, metadata !1016), !dbg !3202
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !725, metadata !1016), !dbg !3203
  %0 = bitcast i8** %in_data to i8*, !dbg !3204
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3204
  call void @llvm.dbg.declare(metadata i8** %in_data, metadata !726, metadata !1016), !dbg !3205
  %1 = bitcast i8** %out_data to i8*, !dbg !3204
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3204
  call void @llvm.dbg.declare(metadata i8** %out_data, metadata !727, metadata !1016), !dbg !3206
  call void @llvm.lifetime.start(i64 1, i8* %in_byte) #1, !dbg !3207
  call void @llvm.dbg.declare(metadata i8* %in_byte, metadata !728, metadata !1016), !dbg !3208
  call void @llvm.lifetime.start(i64 1, i8* %in_repeat) #1, !dbg !3207
  call void @llvm.dbg.declare(metadata i8* %in_repeat, metadata !729, metadata !1016), !dbg !3209
  %2 = bitcast %struct._object** %rv to i8*, !dbg !3210
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !730, metadata !1016), !dbg !3211
  %3 = bitcast i64* %in_len to i8*, !dbg !3212
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3212
  call void @llvm.dbg.declare(metadata i64* %in_len, metadata !731, metadata !1016), !dbg !3213
  %4 = bitcast i64* %out_len to i8*, !dbg !3212
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3212
  call void @llvm.dbg.declare(metadata i64* %out_len, metadata !732, metadata !1016), !dbg !3214
  %5 = bitcast i64* %out_len_left to i8*, !dbg !3212
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3212
  call void @llvm.dbg.declare(metadata i64* %out_len_left, metadata !733, metadata !1016), !dbg !3215
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3216, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !3217
  %7 = load i8*, i8** %buf, align 8, !dbg !3217, !tbaa !1538
  store i8* %7, i8** %in_data, align 8, !dbg !3218, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3219, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !3220
  %9 = load i64, i64* %len, align 8, !dbg !3220, !tbaa !1548
  store i64 %9, i64* %in_len, align 8, !dbg !3221, !tbaa !1601
  %10 = load i64, i64* %in_len, align 8, !dbg !3222, !tbaa !1601
  %cmp = icmp eq i64 %10, 0, !dbg !3224
  br i1 %cmp, label %if.then, label %if.else, !dbg !3225

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i64 0), !dbg !3226
  store %struct._object* %call, %struct._object** %retval, !dbg !3227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3227

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %in_len, align 8, !dbg !3228, !tbaa !1601
  %cmp1 = icmp sgt i64 %11, 4611686018427387903, !dbg !3230
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !3231

if.then.2:                                        ; preds = %if.else
  %call3 = call %struct._object* @PyErr_NoMemory(), !dbg !3232
  store %struct._object* %call3, %struct._object** %retval, !dbg !3233
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3233

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %12 = load i64, i64* %in_len, align 8, !dbg !3234, !tbaa !1601
  %mul = mul i64 %12, 2, !dbg !3235
  store i64 %mul, i64* %out_len, align 8, !dbg !3236, !tbaa !1601
  %13 = load i64, i64* %out_len, align 8, !dbg !3237, !tbaa !1601
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %13), !dbg !3239
  store %struct._object* %call5, %struct._object** %rv, align 8, !dbg !3240, !tbaa !1021
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !3241
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3242

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !3243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3243

if.end.8:                                         ; preds = %if.end.4
  %14 = load i64, i64* %out_len, align 8, !dbg !3244, !tbaa !1601
  store i64 %14, i64* %out_len_left, align 8, !dbg !3245, !tbaa !1601
  %15 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3246, !tbaa !1021
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*, !dbg !3247
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2, !dbg !3248
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3249
  store i8* %arraydecay, i8** %out_data, align 8, !dbg !3250, !tbaa !1021
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %if.end.8
  %17 = load i64, i64* %in_len, align 8, !dbg !3252, !tbaa !1601
  %dec = add i64 %17, -1, !dbg !3252
  store i64 %dec, i64* %in_len, align 8, !dbg !3252, !tbaa !1601
  %cmp9 = icmp slt i64 %dec, 0, !dbg !3254
  br i1 %cmp9, label %if.then.10, label %if.end.17, !dbg !3255

if.then.10:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !3256, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0)), !dbg !3258
  br label %do.body.11, !dbg !3259

do.body.11:                                       ; preds = %if.then.10
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3260
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !3260
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !734, metadata !1016), !dbg !3262
  %20 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3263, !tbaa !1021
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !3262, !tbaa !1021
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3264, !tbaa !1021
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3266
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !3267, !tbaa !1055
  %dec12 = add i64 %22, -1, !dbg !3267
  store i64 %dec12, i64* %ob_refcnt, align 8, !dbg !3267, !tbaa !1055
  %cmp13 = icmp ne i64 %dec12, 0, !dbg !3268
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !3269

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16, !dbg !3270

if.else.15:                                       ; preds = %do.body.11
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3272, !tbaa !1021
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !3274
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3274, !tbaa !1065
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !3275
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3275, !tbaa !1067
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3276, !tbaa !1021
  call void %25(%struct._object* %26), !dbg !3277
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3278
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !3278
  br label %do.cond, !dbg !3280

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !3281

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3285

if.end.17:                                        ; preds = %do.body
  %28 = load i8*, i8** %in_data, align 8, !dbg !3286, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %28, i32 1, !dbg !3286
  store i8* %incdec.ptr, i8** %in_data, align 8, !dbg !3286, !tbaa !1021
  %29 = load i8, i8* %28, align 1, !dbg !3288, !tbaa !1604
  store i8 %29, i8* %in_byte, align 1, !dbg !3289, !tbaa !1604
  br label %do.cond.18, !dbg !3290

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !3291

do.end.19:                                        ; preds = %do.cond.18
  %30 = load i8, i8* %in_byte, align 1, !dbg !3293, !tbaa !1604
  %conv = zext i8 %30 to i32, !dbg !3293
  %cmp20 = icmp eq i32 %conv, 144, !dbg !3294
  br i1 %cmp20, label %if.then.22, label %if.else.106, !dbg !3295

if.then.22:                                       ; preds = %do.end.19
  br label %do.body.23, !dbg !3296

do.body.23:                                       ; preds = %if.then.22
  %31 = load i64, i64* %in_len, align 8, !dbg !3297, !tbaa !1601
  %dec24 = add i64 %31, -1, !dbg !3297
  store i64 %dec24, i64* %in_len, align 8, !dbg !3297, !tbaa !1601
  %cmp25 = icmp slt i64 %dec24, 0, !dbg !3299
  br i1 %cmp25, label %if.then.27, label %if.end.41, !dbg !3300

if.then.27:                                       ; preds = %do.body.23
  %32 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !3301, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0)), !dbg !3303
  br label %do.body.28, !dbg !3304

do.body.28:                                       ; preds = %if.then.27
  %33 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !3305
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !3305
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp29, metadata !739, metadata !1016), !dbg !3307
  %34 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3308, !tbaa !1021
  store %struct._object* %34, %struct._object** %_py_decref_tmp29, align 8, !dbg !3307, !tbaa !1021
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !3309, !tbaa !1021
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !3311
  %36 = load i64, i64* %ob_refcnt30, align 8, !dbg !3312, !tbaa !1055
  %dec31 = add i64 %36, -1, !dbg !3312
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !3312, !tbaa !1055
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !3313
  br i1 %cmp32, label %if.then.34, label %if.else.35, !dbg !3314

if.then.34:                                       ; preds = %do.body.28
  br label %if.end.38, !dbg !3315

if.else.35:                                       ; preds = %do.body.28
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !3317, !tbaa !1021
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !3319
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !3319, !tbaa !1065
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !3320
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !3320, !tbaa !1067
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !3321, !tbaa !1021
  call void %39(%struct._object* %40), !dbg !3322
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %41 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !3323
  br label %do.cond.39, !dbg !3325

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !3326

do.end.40:                                        ; preds = %do.cond.39
  store %struct._object* null, %struct._object** %retval, !dbg !3328
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3330

if.end.41:                                        ; preds = %do.body.23
  %42 = load i8*, i8** %in_data, align 8, !dbg !3331, !tbaa !1021
  %incdec.ptr42 = getelementptr i8, i8* %42, i32 1, !dbg !3331
  store i8* %incdec.ptr42, i8** %in_data, align 8, !dbg !3331, !tbaa !1021
  %43 = load i8, i8* %42, align 1, !dbg !3333, !tbaa !1604
  store i8 %43, i8* %in_repeat, align 1, !dbg !3334, !tbaa !1604
  br label %do.cond.43, !dbg !3335

do.cond.43:                                       ; preds = %if.end.41
  br label %do.end.44, !dbg !3336

do.end.44:                                        ; preds = %do.cond.43
  %44 = load i8, i8* %in_repeat, align 1, !dbg !3338, !tbaa !1604
  %conv45 = zext i8 %44 to i32, !dbg !3338
  %cmp46 = icmp ne i32 %conv45, 0, !dbg !3339
  br i1 %cmp46, label %if.then.48, label %if.end.62, !dbg !3340

if.then.48:                                       ; preds = %do.end.44
  %45 = load %struct._object*, %struct._object** @Error, align 8, !dbg !3341, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)), !dbg !3342
  br label %do.body.49, !dbg !3343

do.body.49:                                       ; preds = %if.then.48
  %46 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !3344
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !746, metadata !1016), !dbg !3346
  %47 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3347, !tbaa !1021
  store %struct._object* %47, %struct._object** %_py_decref_tmp50, align 8, !dbg !3346, !tbaa !1021
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !3348, !tbaa !1021
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !3350
  %49 = load i64, i64* %ob_refcnt51, align 8, !dbg !3351, !tbaa !1055
  %dec52 = add i64 %49, -1, !dbg !3351
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !3351, !tbaa !1055
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !3352
  br i1 %cmp53, label %if.then.55, label %if.else.56, !dbg !3353

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59, !dbg !3354

if.else.56:                                       ; preds = %do.body.49
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !3356, !tbaa !1021
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !3358
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !3358, !tbaa !1065
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !3359
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !3359, !tbaa !1067
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !3360, !tbaa !1021
  call void %52(%struct._object* %53), !dbg !3361
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %54 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !3362
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !3362
  br label %do.cond.60, !dbg !3364

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !3365

do.end.61:                                        ; preds = %do.cond.60
  store %struct._object* null, %struct._object** %retval, !dbg !3367
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3367

if.end.62:                                        ; preds = %do.end.44
  br label %do.body.63, !dbg !3368

do.body.63:                                       ; preds = %if.end.62
  %55 = load i64, i64* %out_len_left, align 8, !dbg !3369, !tbaa !1601
  %dec64 = add i64 %55, -1, !dbg !3369
  store i64 %dec64, i64* %out_len_left, align 8, !dbg !3369, !tbaa !1601
  %cmp65 = icmp slt i64 %dec64, 0, !dbg !3371
  br i1 %cmp65, label %if.then.67, label %if.end.102, !dbg !3372

if.then.67:                                       ; preds = %do.body.63
  %56 = load i64, i64* %out_len, align 8, !dbg !3373, !tbaa !1601
  %cmp68 = icmp sgt i64 %56, 4611686018427387903, !dbg !3376
  br i1 %cmp68, label %if.then.70, label %if.end.72, !dbg !3377

if.then.70:                                       ; preds = %if.then.67
  %call71 = call %struct._object* @PyErr_NoMemory(), !dbg !3378
  store %struct._object* %call71, %struct._object** %retval, !dbg !3380
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3380

if.end.72:                                        ; preds = %if.then.67
  %57 = load i64, i64* %out_len, align 8, !dbg !3381, !tbaa !1601
  %mul73 = mul i64 2, %57, !dbg !3383
  %call74 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul73), !dbg !3384
  %cmp75 = icmp slt i32 %call74, 0, !dbg !3385
  br i1 %cmp75, label %if.then.77, label %if.end.98, !dbg !3386

if.then.77:                                       ; preds = %if.end.72
  br label %do.body.78, !dbg !3387

do.body.78:                                       ; preds = %if.then.77
  %58 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3389
  call void @llvm.lifetime.start(i64 8, i8* %58) #1, !dbg !3389
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !750, metadata !1016), !dbg !3391
  %59 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3392, !tbaa !1021
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3391, !tbaa !1021
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3393, !tbaa !1021
  %cmp79 = icmp ne %struct._object* %60, null, !dbg !3394
  br i1 %cmp79, label %if.then.81, label %if.end.95, !dbg !3395

if.then.81:                                       ; preds = %do.body.78
  br label %do.body.82, !dbg !3396

do.body.82:                                       ; preds = %if.then.81
  %61 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !3398
  call void @llvm.lifetime.start(i64 8, i8* %61) #1, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp83, metadata !757, metadata !1016), !dbg !3400
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3401, !tbaa !1021
  store %struct._object* %62, %struct._object** %_py_decref_tmp83, align 8, !dbg !3400, !tbaa !1021
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3402, !tbaa !1021
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !3404
  %64 = load i64, i64* %ob_refcnt84, align 8, !dbg !3405, !tbaa !1055
  %dec85 = add i64 %64, -1, !dbg !3405
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !3405, !tbaa !1055
  %cmp86 = icmp ne i64 %dec85, 0, !dbg !3406
  br i1 %cmp86, label %if.then.88, label %if.else.89, !dbg !3407

if.then.88:                                       ; preds = %do.body.82
  br label %if.end.92, !dbg !3408

if.else.89:                                       ; preds = %do.body.82
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3410, !tbaa !1021
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !3412
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !3412, !tbaa !1065
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !3413
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !3413, !tbaa !1067
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3414, !tbaa !1021
  call void %67(%struct._object* %68), !dbg !3415
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %69 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !3416
  br label %do.cond.93, !dbg !3418

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !3419

do.end.94:                                        ; preds = %do.cond.93
  br label %if.end.95, !dbg !3421

if.end.95:                                        ; preds = %do.end.94, %do.body.78
  %70 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3423
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !3423
  br label %do.cond.96, !dbg !3426

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !3427

do.end.97:                                        ; preds = %do.cond.96
  store %struct._object* null, %struct._object** %retval, !dbg !3429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3431

if.end.98:                                        ; preds = %if.end.72
  %71 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3432, !tbaa !1021
  %72 = bitcast %struct._object* %71 to %struct.PyBytesObject*, !dbg !3434
  %ob_sval99 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %72, i32 0, i32 2, !dbg !3435
  %arraydecay100 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval99, i32 0, i32 0, !dbg !3436
  %73 = load i64, i64* %out_len, align 8, !dbg !3437, !tbaa !1601
  %add.ptr = getelementptr i8, i8* %arraydecay100, i64 %73, !dbg !3438
  store i8* %add.ptr, i8** %out_data, align 8, !dbg !3439, !tbaa !1021
  %74 = load i64, i64* %out_len, align 8, !dbg !3440, !tbaa !1601
  %sub = sub i64 %74, 1, !dbg !3441
  store i64 %sub, i64* %out_len_left, align 8, !dbg !3442, !tbaa !1601
  %75 = load i64, i64* %out_len, align 8, !dbg !3443, !tbaa !1601
  %mul101 = mul i64 %75, 2, !dbg !3444
  store i64 %mul101, i64* %out_len, align 8, !dbg !3445, !tbaa !1601
  br label %if.end.102, !dbg !3446

if.end.102:                                       ; preds = %if.end.98, %do.body.63
  %76 = load i8*, i8** %out_data, align 8, !dbg !3447, !tbaa !1021
  %incdec.ptr103 = getelementptr i8, i8* %76, i32 1, !dbg !3447
  store i8* %incdec.ptr103, i8** %out_data, align 8, !dbg !3447, !tbaa !1021
  store i8 -112, i8* %76, align 1, !dbg !3450, !tbaa !1604
  br label %do.cond.104, !dbg !3451

do.cond.104:                                      ; preds = %if.end.102
  br label %do.end.105, !dbg !3452

do.end.105:                                       ; preds = %do.cond.104
  br label %if.end.153, !dbg !3454

if.else.106:                                      ; preds = %do.end.19
  br label %do.body.107, !dbg !3455

do.body.107:                                      ; preds = %if.else.106
  %77 = load i64, i64* %out_len_left, align 8, !dbg !3456, !tbaa !1601
  %dec108 = add i64 %77, -1, !dbg !3456
  store i64 %dec108, i64* %out_len_left, align 8, !dbg !3456, !tbaa !1601
  %cmp109 = icmp slt i64 %dec108, 0, !dbg !3458
  br i1 %cmp109, label %if.then.111, label %if.end.149, !dbg !3459

if.then.111:                                      ; preds = %do.body.107
  %78 = load i64, i64* %out_len, align 8, !dbg !3460, !tbaa !1601
  %cmp112 = icmp sgt i64 %78, 4611686018427387903, !dbg !3463
  br i1 %cmp112, label %if.then.114, label %if.end.116, !dbg !3464

if.then.114:                                      ; preds = %if.then.111
  %call115 = call %struct._object* @PyErr_NoMemory(), !dbg !3465
  store %struct._object* %call115, %struct._object** %retval, !dbg !3467
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3467

if.end.116:                                       ; preds = %if.then.111
  %79 = load i64, i64* %out_len, align 8, !dbg !3468, !tbaa !1601
  %mul117 = mul i64 2, %79, !dbg !3470
  %call118 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul117), !dbg !3471
  %cmp119 = icmp slt i32 %call118, 0, !dbg !3472
  br i1 %cmp119, label %if.then.121, label %if.end.143, !dbg !3473

if.then.121:                                      ; preds = %if.end.116
  br label %do.body.122, !dbg !3474

do.body.122:                                      ; preds = %if.then.121
  %80 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !3476
  call void @llvm.lifetime.start(i64 8, i8* %80) #1, !dbg !3476
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp123, metadata !760, metadata !1016), !dbg !3478
  %81 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3479, !tbaa !1021
  store %struct._object* %81, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3478, !tbaa !1021
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3480, !tbaa !1021
  %cmp124 = icmp ne %struct._object* %82, null, !dbg !3481
  br i1 %cmp124, label %if.then.126, label %if.end.140, !dbg !3482

if.then.126:                                      ; preds = %do.body.122
  br label %do.body.127, !dbg !3483

do.body.127:                                      ; preds = %if.then.126
  %83 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !3485
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !3485
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp128, metadata !768, metadata !1016), !dbg !3487
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp123, align 8, !dbg !3488, !tbaa !1021
  store %struct._object* %84, %struct._object** %_py_decref_tmp128, align 8, !dbg !3487, !tbaa !1021
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !3489, !tbaa !1021
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !3491
  %86 = load i64, i64* %ob_refcnt129, align 8, !dbg !3492, !tbaa !1055
  %dec130 = add i64 %86, -1, !dbg !3492
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !3492, !tbaa !1055
  %cmp131 = icmp ne i64 %dec130, 0, !dbg !3493
  br i1 %cmp131, label %if.then.133, label %if.else.134, !dbg !3494

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137, !dbg !3495

if.else.134:                                      ; preds = %do.body.127
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !3497, !tbaa !1021
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !3499
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !3499, !tbaa !1065
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !3500
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !3500, !tbaa !1067
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !3501, !tbaa !1021
  call void %89(%struct._object* %90), !dbg !3502
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  %91 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !3503
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !3503
  br label %do.cond.138, !dbg !3505

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !3506

do.end.139:                                       ; preds = %do.cond.138
  br label %if.end.140, !dbg !3508

if.end.140:                                       ; preds = %do.end.139, %do.body.122
  %92 = bitcast %struct._object** %_py_xdecref_tmp123 to i8*, !dbg !3510
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !3510
  br label %do.cond.141, !dbg !3513

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142, !dbg !3514

do.end.142:                                       ; preds = %do.cond.141
  store %struct._object* null, %struct._object** %retval, !dbg !3516
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3518

if.end.143:                                       ; preds = %if.end.116
  %93 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3519, !tbaa !1021
  %94 = bitcast %struct._object* %93 to %struct.PyBytesObject*, !dbg !3521
  %ob_sval144 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %94, i32 0, i32 2, !dbg !3522
  %arraydecay145 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval144, i32 0, i32 0, !dbg !3523
  %95 = load i64, i64* %out_len, align 8, !dbg !3524, !tbaa !1601
  %add.ptr146 = getelementptr i8, i8* %arraydecay145, i64 %95, !dbg !3525
  store i8* %add.ptr146, i8** %out_data, align 8, !dbg !3526, !tbaa !1021
  %96 = load i64, i64* %out_len, align 8, !dbg !3527, !tbaa !1601
  %sub147 = sub i64 %96, 1, !dbg !3528
  store i64 %sub147, i64* %out_len_left, align 8, !dbg !3529, !tbaa !1601
  %97 = load i64, i64* %out_len, align 8, !dbg !3530, !tbaa !1601
  %mul148 = mul i64 %97, 2, !dbg !3531
  store i64 %mul148, i64* %out_len, align 8, !dbg !3532, !tbaa !1601
  br label %if.end.149, !dbg !3533

if.end.149:                                       ; preds = %if.end.143, %do.body.107
  %98 = load i8, i8* %in_byte, align 1, !dbg !3534, !tbaa !1604
  %99 = load i8*, i8** %out_data, align 8, !dbg !3537, !tbaa !1021
  %incdec.ptr150 = getelementptr i8, i8* %99, i32 1, !dbg !3537
  store i8* %incdec.ptr150, i8** %out_data, align 8, !dbg !3537, !tbaa !1021
  store i8 %98, i8* %99, align 1, !dbg !3538, !tbaa !1604
  br label %do.cond.151, !dbg !3539

do.cond.151:                                      ; preds = %if.end.149
  br label %do.end.152, !dbg !3540

do.end.152:                                       ; preds = %do.cond.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %do.end.105
  br label %while.cond, !dbg !3542

while.cond:                                       ; preds = %if.end.355, %if.end.153
  %100 = load i64, i64* %in_len, align 8, !dbg !3543, !tbaa !1601
  %cmp154 = icmp sgt i64 %100, 0, !dbg !3546
  br i1 %cmp154, label %while.body, label %while.end.356, !dbg !3542

while.body:                                       ; preds = %while.cond
  br label %do.body.156, !dbg !3547

do.body.156:                                      ; preds = %while.body
  %101 = load i64, i64* %in_len, align 8, !dbg !3548, !tbaa !1601
  %dec157 = add i64 %101, -1, !dbg !3548
  store i64 %dec157, i64* %in_len, align 8, !dbg !3548, !tbaa !1601
  %cmp158 = icmp slt i64 %dec157, 0, !dbg !3550
  br i1 %cmp158, label %if.then.160, label %if.end.174, !dbg !3551

if.then.160:                                      ; preds = %do.body.156
  %102 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !3552, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0)), !dbg !3554
  br label %do.body.161, !dbg !3555

do.body.161:                                      ; preds = %if.then.160
  %103 = bitcast %struct._object** %_py_decref_tmp162 to i8*, !dbg !3556
  call void @llvm.lifetime.start(i64 8, i8* %103) #1, !dbg !3556
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp162, metadata !771, metadata !1016), !dbg !3558
  %104 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3559, !tbaa !1021
  store %struct._object* %104, %struct._object** %_py_decref_tmp162, align 8, !dbg !3558, !tbaa !1021
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3560, !tbaa !1021
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0, !dbg !3562
  %106 = load i64, i64* %ob_refcnt163, align 8, !dbg !3563, !tbaa !1055
  %dec164 = add i64 %106, -1, !dbg !3563
  store i64 %dec164, i64* %ob_refcnt163, align 8, !dbg !3563, !tbaa !1055
  %cmp165 = icmp ne i64 %dec164, 0, !dbg !3564
  br i1 %cmp165, label %if.then.167, label %if.else.168, !dbg !3565

if.then.167:                                      ; preds = %do.body.161
  br label %if.end.171, !dbg !3566

if.else.168:                                      ; preds = %do.body.161
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3568, !tbaa !1021
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1, !dbg !3570
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8, !dbg !3570, !tbaa !1065
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4, !dbg !3571
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8, !dbg !3571, !tbaa !1067
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8, !dbg !3572, !tbaa !1021
  call void %109(%struct._object* %110), !dbg !3573
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  %111 = bitcast %struct._object** %_py_decref_tmp162 to i8*, !dbg !3574
  call void @llvm.lifetime.end(i64 8, i8* %111) #1, !dbg !3574
  br label %do.cond.172, !dbg !3576

do.cond.172:                                      ; preds = %if.end.171
  br label %do.end.173, !dbg !3577

do.end.173:                                       ; preds = %do.cond.172
  store %struct._object* null, %struct._object** %retval, !dbg !3579
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3581

if.end.174:                                       ; preds = %do.body.156
  %112 = load i8*, i8** %in_data, align 8, !dbg !3582, !tbaa !1021
  %incdec.ptr175 = getelementptr i8, i8* %112, i32 1, !dbg !3582
  store i8* %incdec.ptr175, i8** %in_data, align 8, !dbg !3582, !tbaa !1021
  %113 = load i8, i8* %112, align 1, !dbg !3584, !tbaa !1604
  store i8 %113, i8* %in_byte, align 1, !dbg !3585, !tbaa !1604
  br label %do.cond.176, !dbg !3586

do.cond.176:                                      ; preds = %if.end.174
  br label %do.end.177, !dbg !3587

do.end.177:                                       ; preds = %do.cond.176
  %114 = load i8, i8* %in_byte, align 1, !dbg !3589, !tbaa !1604
  %conv178 = zext i8 %114 to i32, !dbg !3589
  %cmp179 = icmp eq i32 %conv178, 144, !dbg !3590
  br i1 %cmp179, label %if.then.181, label %if.else.308, !dbg !3591

if.then.181:                                      ; preds = %do.end.177
  br label %do.body.182, !dbg !3592

do.body.182:                                      ; preds = %if.then.181
  %115 = load i64, i64* %in_len, align 8, !dbg !3593, !tbaa !1601
  %dec183 = add i64 %115, -1, !dbg !3593
  store i64 %dec183, i64* %in_len, align 8, !dbg !3593, !tbaa !1601
  %cmp184 = icmp slt i64 %dec183, 0, !dbg !3595
  br i1 %cmp184, label %if.then.186, label %if.end.200, !dbg !3596

if.then.186:                                      ; preds = %do.body.182
  %116 = load %struct._object*, %struct._object** @Incomplete, align 8, !dbg !3597, !tbaa !1021
  call void @PyErr_SetString(%struct._object* %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0)), !dbg !3599
  br label %do.body.187, !dbg !3600

do.body.187:                                      ; preds = %if.then.186
  %117 = bitcast %struct._object** %_py_decref_tmp188 to i8*, !dbg !3601
  call void @llvm.lifetime.start(i64 8, i8* %117) #1, !dbg !3601
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp188, metadata !777, metadata !1016), !dbg !3603
  %118 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3604, !tbaa !1021
  store %struct._object* %118, %struct._object** %_py_decref_tmp188, align 8, !dbg !3603, !tbaa !1021
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp188, align 8, !dbg !3605, !tbaa !1021
  %ob_refcnt189 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0, !dbg !3607
  %120 = load i64, i64* %ob_refcnt189, align 8, !dbg !3608, !tbaa !1055
  %dec190 = add i64 %120, -1, !dbg !3608
  store i64 %dec190, i64* %ob_refcnt189, align 8, !dbg !3608, !tbaa !1055
  %cmp191 = icmp ne i64 %dec190, 0, !dbg !3609
  br i1 %cmp191, label %if.then.193, label %if.else.194, !dbg !3610

if.then.193:                                      ; preds = %do.body.187
  br label %if.end.197, !dbg !3611

if.else.194:                                      ; preds = %do.body.187
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp188, align 8, !dbg !3613, !tbaa !1021
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1, !dbg !3615
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8, !dbg !3615, !tbaa !1065
  %tp_dealloc196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4, !dbg !3616
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc196, align 8, !dbg !3616, !tbaa !1067
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp188, align 8, !dbg !3617, !tbaa !1021
  call void %123(%struct._object* %124), !dbg !3618
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.193
  %125 = bitcast %struct._object** %_py_decref_tmp188 to i8*, !dbg !3619
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !3619
  br label %do.cond.198, !dbg !3621

do.cond.198:                                      ; preds = %if.end.197
  br label %do.end.199, !dbg !3622

do.end.199:                                       ; preds = %do.cond.198
  store %struct._object* null, %struct._object** %retval, !dbg !3624
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3626

if.end.200:                                       ; preds = %do.body.182
  %126 = load i8*, i8** %in_data, align 8, !dbg !3627, !tbaa !1021
  %incdec.ptr201 = getelementptr i8, i8* %126, i32 1, !dbg !3627
  store i8* %incdec.ptr201, i8** %in_data, align 8, !dbg !3627, !tbaa !1021
  %127 = load i8, i8* %126, align 1, !dbg !3629, !tbaa !1604
  store i8 %127, i8* %in_repeat, align 1, !dbg !3630, !tbaa !1604
  br label %do.cond.202, !dbg !3631

do.cond.202:                                      ; preds = %if.end.200
  br label %do.end.203, !dbg !3632

do.end.203:                                       ; preds = %do.cond.202
  %128 = load i8, i8* %in_repeat, align 1, !dbg !3634, !tbaa !1604
  %conv204 = zext i8 %128 to i32, !dbg !3634
  %cmp205 = icmp eq i32 %conv204, 0, !dbg !3635
  br i1 %cmp205, label %if.then.207, label %if.else.254, !dbg !3636

if.then.207:                                      ; preds = %do.end.203
  br label %do.body.208, !dbg !3637

do.body.208:                                      ; preds = %if.then.207
  %129 = load i64, i64* %out_len_left, align 8, !dbg !3638, !tbaa !1601
  %dec209 = add i64 %129, -1, !dbg !3638
  store i64 %dec209, i64* %out_len_left, align 8, !dbg !3638, !tbaa !1601
  %cmp210 = icmp slt i64 %dec209, 0, !dbg !3640
  br i1 %cmp210, label %if.then.212, label %if.end.250, !dbg !3641

if.then.212:                                      ; preds = %do.body.208
  %130 = load i64, i64* %out_len, align 8, !dbg !3642, !tbaa !1601
  %cmp213 = icmp sgt i64 %130, 4611686018427387903, !dbg !3645
  br i1 %cmp213, label %if.then.215, label %if.end.217, !dbg !3646

if.then.215:                                      ; preds = %if.then.212
  %call216 = call %struct._object* @PyErr_NoMemory(), !dbg !3647
  store %struct._object* %call216, %struct._object** %retval, !dbg !3649
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3649

if.end.217:                                       ; preds = %if.then.212
  %131 = load i64, i64* %out_len, align 8, !dbg !3650, !tbaa !1601
  %mul218 = mul i64 2, %131, !dbg !3652
  %call219 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul218), !dbg !3653
  %cmp220 = icmp slt i32 %call219, 0, !dbg !3654
  br i1 %cmp220, label %if.then.222, label %if.end.244, !dbg !3655

if.then.222:                                      ; preds = %if.end.217
  br label %do.body.223, !dbg !3656

do.body.223:                                      ; preds = %if.then.222
  %132 = bitcast %struct._object** %_py_xdecref_tmp224 to i8*, !dbg !3658
  call void @llvm.lifetime.start(i64 8, i8* %132) #1, !dbg !3658
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp224, metadata !784, metadata !1016), !dbg !3660
  %133 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3661, !tbaa !1021
  store %struct._object* %133, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !3660, !tbaa !1021
  %134 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !3662, !tbaa !1021
  %cmp225 = icmp ne %struct._object* %134, null, !dbg !3663
  br i1 %cmp225, label %if.then.227, label %if.end.241, !dbg !3664

if.then.227:                                      ; preds = %do.body.223
  br label %do.body.228, !dbg !3665

do.body.228:                                      ; preds = %if.then.227
  %135 = bitcast %struct._object** %_py_decref_tmp229 to i8*, !dbg !3667
  call void @llvm.lifetime.start(i64 8, i8* %135) #1, !dbg !3667
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp229, metadata !793, metadata !1016), !dbg !3669
  %136 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !3670, !tbaa !1021
  store %struct._object* %136, %struct._object** %_py_decref_tmp229, align 8, !dbg !3669, !tbaa !1021
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !3671, !tbaa !1021
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0, !dbg !3673
  %138 = load i64, i64* %ob_refcnt230, align 8, !dbg !3674, !tbaa !1055
  %dec231 = add i64 %138, -1, !dbg !3674
  store i64 %dec231, i64* %ob_refcnt230, align 8, !dbg !3674, !tbaa !1055
  %cmp232 = icmp ne i64 %dec231, 0, !dbg !3675
  br i1 %cmp232, label %if.then.234, label %if.else.235, !dbg !3676

if.then.234:                                      ; preds = %do.body.228
  br label %if.end.238, !dbg !3677

if.else.235:                                      ; preds = %do.body.228
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !3679, !tbaa !1021
  %ob_type236 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1, !dbg !3681
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type236, align 8, !dbg !3681, !tbaa !1065
  %tp_dealloc237 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4, !dbg !3682
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc237, align 8, !dbg !3682, !tbaa !1067
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !3683, !tbaa !1021
  call void %141(%struct._object* %142), !dbg !3684
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.235, %if.then.234
  %143 = bitcast %struct._object** %_py_decref_tmp229 to i8*, !dbg !3685
  call void @llvm.lifetime.end(i64 8, i8* %143) #1, !dbg !3685
  br label %do.cond.239, !dbg !3687

do.cond.239:                                      ; preds = %if.end.238
  br label %do.end.240, !dbg !3688

do.end.240:                                       ; preds = %do.cond.239
  br label %if.end.241, !dbg !3690

if.end.241:                                       ; preds = %do.end.240, %do.body.223
  %144 = bitcast %struct._object** %_py_xdecref_tmp224 to i8*, !dbg !3692
  call void @llvm.lifetime.end(i64 8, i8* %144) #1, !dbg !3692
  br label %do.cond.242, !dbg !3695

do.cond.242:                                      ; preds = %if.end.241
  br label %do.end.243, !dbg !3696

do.end.243:                                       ; preds = %do.cond.242
  store %struct._object* null, %struct._object** %retval, !dbg !3698
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3700

if.end.244:                                       ; preds = %if.end.217
  %145 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3701, !tbaa !1021
  %146 = bitcast %struct._object* %145 to %struct.PyBytesObject*, !dbg !3703
  %ob_sval245 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %146, i32 0, i32 2, !dbg !3704
  %arraydecay246 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval245, i32 0, i32 0, !dbg !3705
  %147 = load i64, i64* %out_len, align 8, !dbg !3706, !tbaa !1601
  %add.ptr247 = getelementptr i8, i8* %arraydecay246, i64 %147, !dbg !3707
  store i8* %add.ptr247, i8** %out_data, align 8, !dbg !3708, !tbaa !1021
  %148 = load i64, i64* %out_len, align 8, !dbg !3709, !tbaa !1601
  %sub248 = sub i64 %148, 1, !dbg !3710
  store i64 %sub248, i64* %out_len_left, align 8, !dbg !3711, !tbaa !1601
  %149 = load i64, i64* %out_len, align 8, !dbg !3712, !tbaa !1601
  %mul249 = mul i64 %149, 2, !dbg !3713
  store i64 %mul249, i64* %out_len, align 8, !dbg !3714, !tbaa !1601
  br label %if.end.250, !dbg !3715

if.end.250:                                       ; preds = %if.end.244, %do.body.208
  %150 = load i8*, i8** %out_data, align 8, !dbg !3716, !tbaa !1021
  %incdec.ptr251 = getelementptr i8, i8* %150, i32 1, !dbg !3716
  store i8* %incdec.ptr251, i8** %out_data, align 8, !dbg !3716, !tbaa !1021
  store i8 -112, i8* %150, align 1, !dbg !3719, !tbaa !1604
  br label %do.cond.252, !dbg !3720

do.cond.252:                                      ; preds = %if.end.250
  br label %do.end.253, !dbg !3721

do.end.253:                                       ; preds = %do.cond.252
  br label %if.end.307, !dbg !3723

if.else.254:                                      ; preds = %do.end.203
  %151 = load i8*, i8** %out_data, align 8, !dbg !3724, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %151, i64 -1, !dbg !3724
  %152 = load i8, i8* %arrayidx, align 1, !dbg !3724, !tbaa !1604
  store i8 %152, i8* %in_byte, align 1, !dbg !3725, !tbaa !1604
  br label %while.cond.255, !dbg !3726

while.cond.255:                                   ; preds = %do.end.306, %if.else.254
  %153 = load i8, i8* %in_repeat, align 1, !dbg !3727, !tbaa !1604
  %dec256 = add i8 %153, -1, !dbg !3727
  store i8 %dec256, i8* %in_repeat, align 1, !dbg !3727, !tbaa !1604
  %conv257 = zext i8 %dec256 to i32, !dbg !3727
  %cmp258 = icmp sgt i32 %conv257, 0, !dbg !3730
  br i1 %cmp258, label %while.body.260, label %while.end, !dbg !3726

while.body.260:                                   ; preds = %while.cond.255
  br label %do.body.261, !dbg !3731

do.body.261:                                      ; preds = %while.body.260
  %154 = load i64, i64* %out_len_left, align 8, !dbg !3732, !tbaa !1601
  %dec262 = add i64 %154, -1, !dbg !3732
  store i64 %dec262, i64* %out_len_left, align 8, !dbg !3732, !tbaa !1601
  %cmp263 = icmp slt i64 %dec262, 0, !dbg !3734
  br i1 %cmp263, label %if.then.265, label %if.end.303, !dbg !3735

if.then.265:                                      ; preds = %do.body.261
  %155 = load i64, i64* %out_len, align 8, !dbg !3736, !tbaa !1601
  %cmp266 = icmp sgt i64 %155, 4611686018427387903, !dbg !3739
  br i1 %cmp266, label %if.then.268, label %if.end.270, !dbg !3740

if.then.268:                                      ; preds = %if.then.265
  %call269 = call %struct._object* @PyErr_NoMemory(), !dbg !3741
  store %struct._object* %call269, %struct._object** %retval, !dbg !3743
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3743

if.end.270:                                       ; preds = %if.then.265
  %156 = load i64, i64* %out_len, align 8, !dbg !3744, !tbaa !1601
  %mul271 = mul i64 2, %156, !dbg !3746
  %call272 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul271), !dbg !3747
  %cmp273 = icmp slt i32 %call272, 0, !dbg !3748
  br i1 %cmp273, label %if.then.275, label %if.end.297, !dbg !3749

if.then.275:                                      ; preds = %if.end.270
  br label %do.body.276, !dbg !3750

do.body.276:                                      ; preds = %if.then.275
  %157 = bitcast %struct._object** %_py_xdecref_tmp277 to i8*, !dbg !3752
  call void @llvm.lifetime.start(i64 8, i8* %157) #1, !dbg !3752
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp277, metadata !796, metadata !1016), !dbg !3754
  %158 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3755, !tbaa !1021
  store %struct._object* %158, %struct._object** %_py_xdecref_tmp277, align 8, !dbg !3754, !tbaa !1021
  %159 = load %struct._object*, %struct._object** %_py_xdecref_tmp277, align 8, !dbg !3756, !tbaa !1021
  %cmp278 = icmp ne %struct._object* %159, null, !dbg !3757
  br i1 %cmp278, label %if.then.280, label %if.end.294, !dbg !3758

if.then.280:                                      ; preds = %do.body.276
  br label %do.body.281, !dbg !3759

do.body.281:                                      ; preds = %if.then.280
  %160 = bitcast %struct._object** %_py_decref_tmp282 to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %160) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp282, metadata !804, metadata !1016), !dbg !3763
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp277, align 8, !dbg !3764, !tbaa !1021
  store %struct._object* %161, %struct._object** %_py_decref_tmp282, align 8, !dbg !3763, !tbaa !1021
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !3765, !tbaa !1021
  %ob_refcnt283 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0, !dbg !3767
  %163 = load i64, i64* %ob_refcnt283, align 8, !dbg !3768, !tbaa !1055
  %dec284 = add i64 %163, -1, !dbg !3768
  store i64 %dec284, i64* %ob_refcnt283, align 8, !dbg !3768, !tbaa !1055
  %cmp285 = icmp ne i64 %dec284, 0, !dbg !3769
  br i1 %cmp285, label %if.then.287, label %if.else.288, !dbg !3770

if.then.287:                                      ; preds = %do.body.281
  br label %if.end.291, !dbg !3771

if.else.288:                                      ; preds = %do.body.281
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !3773, !tbaa !1021
  %ob_type289 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1, !dbg !3775
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type289, align 8, !dbg !3775, !tbaa !1065
  %tp_dealloc290 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4, !dbg !3776
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc290, align 8, !dbg !3776, !tbaa !1067
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp282, align 8, !dbg !3777, !tbaa !1021
  call void %166(%struct._object* %167), !dbg !3778
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.287
  %168 = bitcast %struct._object** %_py_decref_tmp282 to i8*, !dbg !3779
  call void @llvm.lifetime.end(i64 8, i8* %168) #1, !dbg !3779
  br label %do.cond.292, !dbg !3781

do.cond.292:                                      ; preds = %if.end.291
  br label %do.end.293, !dbg !3782

do.end.293:                                       ; preds = %do.cond.292
  br label %if.end.294, !dbg !3784

if.end.294:                                       ; preds = %do.end.293, %do.body.276
  %169 = bitcast %struct._object** %_py_xdecref_tmp277 to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %169) #1, !dbg !3786
  br label %do.cond.295, !dbg !3789

do.cond.295:                                      ; preds = %if.end.294
  br label %do.end.296, !dbg !3790

do.end.296:                                       ; preds = %do.cond.295
  store %struct._object* null, %struct._object** %retval, !dbg !3792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3794

if.end.297:                                       ; preds = %if.end.270
  %170 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3795, !tbaa !1021
  %171 = bitcast %struct._object* %170 to %struct.PyBytesObject*, !dbg !3797
  %ob_sval298 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %171, i32 0, i32 2, !dbg !3798
  %arraydecay299 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval298, i32 0, i32 0, !dbg !3799
  %172 = load i64, i64* %out_len, align 8, !dbg !3800, !tbaa !1601
  %add.ptr300 = getelementptr i8, i8* %arraydecay299, i64 %172, !dbg !3801
  store i8* %add.ptr300, i8** %out_data, align 8, !dbg !3802, !tbaa !1021
  %173 = load i64, i64* %out_len, align 8, !dbg !3803, !tbaa !1601
  %sub301 = sub i64 %173, 1, !dbg !3804
  store i64 %sub301, i64* %out_len_left, align 8, !dbg !3805, !tbaa !1601
  %174 = load i64, i64* %out_len, align 8, !dbg !3806, !tbaa !1601
  %mul302 = mul i64 %174, 2, !dbg !3807
  store i64 %mul302, i64* %out_len, align 8, !dbg !3808, !tbaa !1601
  br label %if.end.303, !dbg !3809

if.end.303:                                       ; preds = %if.end.297, %do.body.261
  %175 = load i8, i8* %in_byte, align 1, !dbg !3810, !tbaa !1604
  %176 = load i8*, i8** %out_data, align 8, !dbg !3813, !tbaa !1021
  %incdec.ptr304 = getelementptr i8, i8* %176, i32 1, !dbg !3813
  store i8* %incdec.ptr304, i8** %out_data, align 8, !dbg !3813, !tbaa !1021
  store i8 %175, i8* %176, align 1, !dbg !3814, !tbaa !1604
  br label %do.cond.305, !dbg !3815

do.cond.305:                                      ; preds = %if.end.303
  br label %do.end.306, !dbg !3816

do.end.306:                                       ; preds = %do.cond.305
  br label %while.cond.255, !dbg !3726

while.end:                                        ; preds = %while.cond.255
  br label %if.end.307

if.end.307:                                       ; preds = %while.end, %do.end.253
  br label %if.end.355, !dbg !3818

if.else.308:                                      ; preds = %do.end.177
  br label %do.body.309, !dbg !3819

do.body.309:                                      ; preds = %if.else.308
  %177 = load i64, i64* %out_len_left, align 8, !dbg !3820, !tbaa !1601
  %dec310 = add i64 %177, -1, !dbg !3820
  store i64 %dec310, i64* %out_len_left, align 8, !dbg !3820, !tbaa !1601
  %cmp311 = icmp slt i64 %dec310, 0, !dbg !3822
  br i1 %cmp311, label %if.then.313, label %if.end.351, !dbg !3823

if.then.313:                                      ; preds = %do.body.309
  %178 = load i64, i64* %out_len, align 8, !dbg !3824, !tbaa !1601
  %cmp314 = icmp sgt i64 %178, 4611686018427387903, !dbg !3827
  br i1 %cmp314, label %if.then.316, label %if.end.318, !dbg !3828

if.then.316:                                      ; preds = %if.then.313
  %call317 = call %struct._object* @PyErr_NoMemory(), !dbg !3829
  store %struct._object* %call317, %struct._object** %retval, !dbg !3831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3831

if.end.318:                                       ; preds = %if.then.313
  %179 = load i64, i64* %out_len, align 8, !dbg !3832, !tbaa !1601
  %mul319 = mul i64 2, %179, !dbg !3834
  %call320 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %mul319), !dbg !3835
  %cmp321 = icmp slt i32 %call320, 0, !dbg !3836
  br i1 %cmp321, label %if.then.323, label %if.end.345, !dbg !3837

if.then.323:                                      ; preds = %if.end.318
  br label %do.body.324, !dbg !3838

do.body.324:                                      ; preds = %if.then.323
  %180 = bitcast %struct._object** %_py_xdecref_tmp325 to i8*, !dbg !3840
  call void @llvm.lifetime.start(i64 8, i8* %180) #1, !dbg !3840
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp325, metadata !807, metadata !1016), !dbg !3842
  %181 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3843, !tbaa !1021
  store %struct._object* %181, %struct._object** %_py_xdecref_tmp325, align 8, !dbg !3842, !tbaa !1021
  %182 = load %struct._object*, %struct._object** %_py_xdecref_tmp325, align 8, !dbg !3844, !tbaa !1021
  %cmp326 = icmp ne %struct._object* %182, null, !dbg !3845
  br i1 %cmp326, label %if.then.328, label %if.end.342, !dbg !3846

if.then.328:                                      ; preds = %do.body.324
  br label %do.body.329, !dbg !3847

do.body.329:                                      ; preds = %if.then.328
  %183 = bitcast %struct._object** %_py_decref_tmp330 to i8*, !dbg !3849
  call void @llvm.lifetime.start(i64 8, i8* %183) #1, !dbg !3849
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp330, metadata !815, metadata !1016), !dbg !3851
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp325, align 8, !dbg !3852, !tbaa !1021
  store %struct._object* %184, %struct._object** %_py_decref_tmp330, align 8, !dbg !3851, !tbaa !1021
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8, !dbg !3853, !tbaa !1021
  %ob_refcnt331 = getelementptr inbounds %struct._object, %struct._object* %185, i32 0, i32 0, !dbg !3855
  %186 = load i64, i64* %ob_refcnt331, align 8, !dbg !3856, !tbaa !1055
  %dec332 = add i64 %186, -1, !dbg !3856
  store i64 %dec332, i64* %ob_refcnt331, align 8, !dbg !3856, !tbaa !1055
  %cmp333 = icmp ne i64 %dec332, 0, !dbg !3857
  br i1 %cmp333, label %if.then.335, label %if.else.336, !dbg !3858

if.then.335:                                      ; preds = %do.body.329
  br label %if.end.339, !dbg !3859

if.else.336:                                      ; preds = %do.body.329
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8, !dbg !3861, !tbaa !1021
  %ob_type337 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 1, !dbg !3863
  %188 = load %struct._typeobject*, %struct._typeobject** %ob_type337, align 8, !dbg !3863, !tbaa !1065
  %tp_dealloc338 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %188, i32 0, i32 4, !dbg !3864
  %189 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc338, align 8, !dbg !3864, !tbaa !1067
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8, !dbg !3865, !tbaa !1021
  call void %189(%struct._object* %190), !dbg !3866
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.336, %if.then.335
  %191 = bitcast %struct._object** %_py_decref_tmp330 to i8*, !dbg !3867
  call void @llvm.lifetime.end(i64 8, i8* %191) #1, !dbg !3867
  br label %do.cond.340, !dbg !3869

do.cond.340:                                      ; preds = %if.end.339
  br label %do.end.341, !dbg !3870

do.end.341:                                       ; preds = %do.cond.340
  br label %if.end.342, !dbg !3872

if.end.342:                                       ; preds = %do.end.341, %do.body.324
  %192 = bitcast %struct._object** %_py_xdecref_tmp325 to i8*, !dbg !3874
  call void @llvm.lifetime.end(i64 8, i8* %192) #1, !dbg !3874
  br label %do.cond.343, !dbg !3877

do.cond.343:                                      ; preds = %if.end.342
  br label %do.end.344, !dbg !3878

do.end.344:                                       ; preds = %do.cond.343
  store %struct._object* null, %struct._object** %retval, !dbg !3880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3882

if.end.345:                                       ; preds = %if.end.318
  %193 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3883, !tbaa !1021
  %194 = bitcast %struct._object* %193 to %struct.PyBytesObject*, !dbg !3885
  %ob_sval346 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %194, i32 0, i32 2, !dbg !3886
  %arraydecay347 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval346, i32 0, i32 0, !dbg !3887
  %195 = load i64, i64* %out_len, align 8, !dbg !3888, !tbaa !1601
  %add.ptr348 = getelementptr i8, i8* %arraydecay347, i64 %195, !dbg !3889
  store i8* %add.ptr348, i8** %out_data, align 8, !dbg !3890, !tbaa !1021
  %196 = load i64, i64* %out_len, align 8, !dbg !3891, !tbaa !1601
  %sub349 = sub i64 %196, 1, !dbg !3892
  store i64 %sub349, i64* %out_len_left, align 8, !dbg !3893, !tbaa !1601
  %197 = load i64, i64* %out_len, align 8, !dbg !3894, !tbaa !1601
  %mul350 = mul i64 %197, 2, !dbg !3895
  store i64 %mul350, i64* %out_len, align 8, !dbg !3896, !tbaa !1601
  br label %if.end.351, !dbg !3897

if.end.351:                                       ; preds = %if.end.345, %do.body.309
  %198 = load i8, i8* %in_byte, align 1, !dbg !3898, !tbaa !1604
  %199 = load i8*, i8** %out_data, align 8, !dbg !3901, !tbaa !1021
  %incdec.ptr352 = getelementptr i8, i8* %199, i32 1, !dbg !3901
  store i8* %incdec.ptr352, i8** %out_data, align 8, !dbg !3901, !tbaa !1021
  store i8 %198, i8* %199, align 1, !dbg !3902, !tbaa !1604
  br label %do.cond.353, !dbg !3903

do.cond.353:                                      ; preds = %if.end.351
  br label %do.end.354, !dbg !3904

do.end.354:                                       ; preds = %do.cond.353
  br label %if.end.355

if.end.355:                                       ; preds = %do.end.354, %if.end.307
  br label %while.cond, !dbg !3542

while.end.356:                                    ; preds = %while.cond
  %200 = load i8*, i8** %out_data, align 8, !dbg !3906, !tbaa !1021
  %201 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3907, !tbaa !1021
  %202 = bitcast %struct._object* %201 to %struct.PyBytesObject*, !dbg !3908
  %ob_sval357 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %202, i32 0, i32 2, !dbg !3909
  %arraydecay358 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval357, i32 0, i32 0, !dbg !3910
  %sub.ptr.lhs.cast = ptrtoint i8* %200 to i64, !dbg !3911
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay358 to i64, !dbg !3911
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3911
  %call359 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %sub.ptr.sub), !dbg !3912
  %cmp360 = icmp slt i32 %call359, 0, !dbg !3913
  br i1 %cmp360, label %if.then.362, label %if.end.383, !dbg !3914

if.then.362:                                      ; preds = %while.end.356
  br label %do.body.363, !dbg !3915

do.body.363:                                      ; preds = %if.then.362
  %203 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3916
  call void @llvm.lifetime.start(i64 8, i8* %203) #1, !dbg !3916
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !818, metadata !1016), !dbg !3918
  %204 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3919, !tbaa !1021
  store %struct._object* %204, %struct._object** %_py_tmp, align 8, !dbg !3918, !tbaa !1021
  %205 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3920, !tbaa !1021
  %cmp364 = icmp ne %struct._object* %205, null, !dbg !3921
  br i1 %cmp364, label %if.then.366, label %if.end.380, !dbg !3922

if.then.366:                                      ; preds = %do.body.363
  store %struct._object* null, %struct._object** %rv, align 8, !dbg !3923, !tbaa !1021
  br label %do.body.367, !dbg !3925

do.body.367:                                      ; preds = %if.then.366
  %206 = bitcast %struct._object** %_py_decref_tmp368 to i8*, !dbg !3926
  call void @llvm.lifetime.start(i64 8, i8* %206) #1, !dbg !3926
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp368, metadata !822, metadata !1016), !dbg !3928
  %207 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3929, !tbaa !1021
  store %struct._object* %207, %struct._object** %_py_decref_tmp368, align 8, !dbg !3928, !tbaa !1021
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp368, align 8, !dbg !3930, !tbaa !1021
  %ob_refcnt369 = getelementptr inbounds %struct._object, %struct._object* %208, i32 0, i32 0, !dbg !3932
  %209 = load i64, i64* %ob_refcnt369, align 8, !dbg !3933, !tbaa !1055
  %dec370 = add i64 %209, -1, !dbg !3933
  store i64 %dec370, i64* %ob_refcnt369, align 8, !dbg !3933, !tbaa !1055
  %cmp371 = icmp ne i64 %dec370, 0, !dbg !3934
  br i1 %cmp371, label %if.then.373, label %if.else.374, !dbg !3935

if.then.373:                                      ; preds = %do.body.367
  br label %if.end.377, !dbg !3936

if.else.374:                                      ; preds = %do.body.367
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp368, align 8, !dbg !3938, !tbaa !1021
  %ob_type375 = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 1, !dbg !3940
  %211 = load %struct._typeobject*, %struct._typeobject** %ob_type375, align 8, !dbg !3940, !tbaa !1065
  %tp_dealloc376 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %211, i32 0, i32 4, !dbg !3941
  %212 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc376, align 8, !dbg !3941, !tbaa !1067
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp368, align 8, !dbg !3942, !tbaa !1021
  call void %212(%struct._object* %213), !dbg !3943
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.374, %if.then.373
  %214 = bitcast %struct._object** %_py_decref_tmp368 to i8*, !dbg !3944
  call void @llvm.lifetime.end(i64 8, i8* %214) #1, !dbg !3944
  br label %do.cond.378, !dbg !3946

do.cond.378:                                      ; preds = %if.end.377
  br label %do.end.379, !dbg !3947

do.end.379:                                       ; preds = %do.cond.378
  br label %if.end.380, !dbg !3949

if.end.380:                                       ; preds = %do.end.379, %do.body.363
  %215 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3951
  call void @llvm.lifetime.end(i64 8, i8* %215) #1, !dbg !3951
  br label %do.cond.381, !dbg !3954

do.cond.381:                                      ; preds = %if.end.380
  br label %do.end.382, !dbg !3955

do.end.382:                                       ; preds = %do.cond.381
  br label %if.end.383, !dbg !3957

if.end.383:                                       ; preds = %do.end.382, %while.end.356
  %216 = load %struct._object*, %struct._object** %rv, align 8, !dbg !3958, !tbaa !1021
  store %struct._object* %216, %struct._object** %retval, !dbg !3959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3959

cleanup:                                          ; preds = %if.end.383, %do.end.344, %if.then.316, %do.end.296, %if.then.268, %do.end.243, %if.then.215, %do.end.199, %do.end.173, %do.end.142, %if.then.114, %do.end.97, %if.then.70, %do.end.61, %do.end.40, %do.end, %if.then.7, %if.then.2, %if.then
  %217 = bitcast i64* %out_len_left to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %217) #1, !dbg !3960
  %218 = bitcast i64* %out_len to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %218) #1, !dbg !3960
  %219 = bitcast i64* %in_len to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %219) #1, !dbg !3960
  %220 = bitcast %struct._object** %rv to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %220) #1, !dbg !3960
  call void @llvm.lifetime.end(i64 1, i8* %in_repeat) #1, !dbg !3960
  call void @llvm.lifetime.end(i64 1, i8* %in_byte) #1, !dbg !3960
  %221 = bitcast i8** %out_data to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %221) #1, !dbg !3960
  %222 = bitcast i8** %in_data to i8*, !dbg !3960
  call void @llvm.lifetime.end(i64 8, i8* %222) #1, !dbg !3960
  %223 = load %struct._object*, %struct._object** %retval, !dbg !3960
  ret %struct._object* %223, !dbg !3960
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !838, metadata !1016), !dbg !3961
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !839, metadata !1016), !dbg !3962
  store i32 %crc, i32* %crc.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %crc.addr, metadata !840, metadata !1016), !dbg !3963
  %0 = bitcast i8** %bin_data to i8*, !dbg !3964
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3964
  call void @llvm.dbg.declare(metadata i8** %bin_data, metadata !841, metadata !1016), !dbg !3965
  %1 = bitcast i32* %ucrc to i8*, !dbg !3966
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3966
  call void @llvm.dbg.declare(metadata i32* %ucrc, metadata !842, metadata !1016), !dbg !3967
  %2 = load i32, i32* %crc.addr, align 4, !dbg !3968, !tbaa !1332
  store i32 %2, i32* %ucrc, align 4, !dbg !3967, !tbaa !1332
  %3 = bitcast i64* %len to i8*, !dbg !3969
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3969
  call void @llvm.dbg.declare(metadata i64* %len, metadata !843, metadata !1016), !dbg !3970
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3971, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 0, !dbg !3972
  %5 = load i8*, i8** %buf, align 8, !dbg !3972, !tbaa !1538
  store i8* %5, i8** %bin_data, align 8, !dbg !3973, !tbaa !1021
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3974, !tbaa !1021
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2, !dbg !3975
  %7 = load i64, i64* %len1, align 8, !dbg !3975, !tbaa !1548
  store i64 %7, i64* %len, align 8, !dbg !3976, !tbaa !1601
  br label %while.cond, !dbg !3977

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i64, i64* %len, align 8, !dbg !3978, !tbaa !1601
  %dec = add i64 %8, -1, !dbg !3978
  store i64 %dec, i64* %len, align 8, !dbg !3978, !tbaa !1601
  %cmp = icmp sgt i64 %8, 0, !dbg !3981
  br i1 %cmp, label %while.body, label %while.end, !dbg !3977

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %ucrc, align 4, !dbg !3982, !tbaa !1332
  %shl = shl i32 %9, 8, !dbg !3984
  %and = and i32 %shl, 65280, !dbg !3985
  %10 = load i32, i32* %ucrc, align 4, !dbg !3986, !tbaa !1332
  %shr = lshr i32 %10, 8, !dbg !3987
  %and2 = and i32 %shr, 255, !dbg !3988
  %11 = load i8*, i8** %bin_data, align 8, !dbg !3989, !tbaa !1021
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !3989
  store i8* %incdec.ptr, i8** %bin_data, align 8, !dbg !3989, !tbaa !1021
  %12 = load i8, i8* %11, align 1, !dbg !3990, !tbaa !1604
  %conv = zext i8 %12 to i32, !dbg !3990
  %xor = xor i32 %and2, %conv, !dbg !3991
  %idxprom = zext i32 %xor to i64, !dbg !3992
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @crctab_hqx, i32 0, i64 %idxprom, !dbg !3992
  %13 = load i16, i16* %arrayidx, align 2, !dbg !3992, !tbaa !3993
  %conv3 = zext i16 %13 to i32, !dbg !3992
  %xor4 = xor i32 %and, %conv3, !dbg !3995
  store i32 %xor4, i32* %ucrc, align 4, !dbg !3996, !tbaa !1332
  br label %while.cond, !dbg !3977

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %ucrc, align 4, !dbg !3997, !tbaa !1332
  %15 = bitcast i64* %len to i8*, !dbg !3998
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3998
  %16 = bitcast i32* %ucrc to i8*, !dbg !3998
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !3998
  %17 = bitcast i8** %bin_data to i8*, !dbg !3998
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3998
  ret i32 %14, !dbg !3999
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @binascii_crc32_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %crc) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %crc.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %signed_val = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !856, metadata !1016), !dbg !4000
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !857, metadata !1016), !dbg !4001
  store i32 %crc, i32* %crc.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %crc.addr, metadata !858, metadata !1016), !dbg !4002
  %0 = bitcast i8** %buf to i8*, !dbg !4003
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4003
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !859, metadata !1016), !dbg !4004
  %1 = bitcast i64* %len to i8*, !dbg !4005
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4005
  call void @llvm.dbg.declare(metadata i64* %len, metadata !860, metadata !1016), !dbg !4006
  %2 = bitcast i32* %signed_val to i8*, !dbg !4007
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4007
  call void @llvm.dbg.declare(metadata i32* %signed_val, metadata !861, metadata !1016), !dbg !4008
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4009, !tbaa !1021
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0, !dbg !4010
  %4 = load i8*, i8** %buf1, align 8, !dbg !4010, !tbaa !1538
  store i8* %4, i8** %buf, align 8, !dbg !4011, !tbaa !1021
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4012, !tbaa !1021
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2, !dbg !4013
  %6 = load i64, i64* %len2, align 8, !dbg !4013, !tbaa !1548
  store i64 %6, i64* %len, align 8, !dbg !4014, !tbaa !1601
  %7 = load i32, i32* %crc.addr, align 4, !dbg !4015, !tbaa !1332
  %conv = zext i32 %7 to i64, !dbg !4015
  %8 = load i8*, i8** %buf, align 8, !dbg !4016, !tbaa !1021
  %9 = load i64, i64* %len, align 8, !dbg !4017, !tbaa !1601
  %conv3 = trunc i64 %9 to i32, !dbg !4017
  %call = call i64 @crc32(i64 %conv, i8* %8, i32 %conv3), !dbg !4018
  %conv4 = trunc i64 %call to i32, !dbg !4018
  store i32 %conv4, i32* %signed_val, align 4, !dbg !4019, !tbaa !1332
  %10 = load i32, i32* %signed_val, align 4, !dbg !4020, !tbaa !1332
  %11 = bitcast i32* %signed_val to i8*, !dbg !4021
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !4021
  %12 = bitcast i64* %len to i8*, !dbg !4021
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !4021
  %13 = bitcast i8** %buf to i8*, !dbg !4021
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !4021
  ret i32 %10, !dbg !4022
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

declare i64 @crc32(i64, i8*, i32) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !876, metadata !1016), !dbg !4023
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !877, metadata !1016), !dbg !4024
  store i32 %header, i32* %header.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %header.addr, metadata !878, metadata !1016), !dbg !4025
  %0 = bitcast i64* %in to i8*, !dbg !4026
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4026
  call void @llvm.dbg.declare(metadata i64* %in, metadata !879, metadata !1016), !dbg !4027
  %1 = bitcast i64* %out to i8*, !dbg !4026
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4026
  call void @llvm.dbg.declare(metadata i64* %out, metadata !880, metadata !1016), !dbg !4028
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1, !dbg !4029
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !881, metadata !1016), !dbg !4030
  %2 = bitcast i8** %ascii_data to i8*, !dbg !4031
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4031
  call void @llvm.dbg.declare(metadata i8** %ascii_data, metadata !882, metadata !1016), !dbg !4032
  %3 = bitcast i8** %odata to i8*, !dbg !4031
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4031
  call void @llvm.dbg.declare(metadata i8** %odata, metadata !883, metadata !1016), !dbg !4033
  %4 = bitcast i64* %datalen to i8*, !dbg !4034
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4034
  call void @llvm.dbg.declare(metadata i64* %datalen, metadata !884, metadata !1016), !dbg !4035
  store i64 0, i64* %datalen, align 8, !dbg !4035, !tbaa !1601
  %5 = bitcast %struct._object** %rv to i8*, !dbg !4036
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4036
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !885, metadata !1016), !dbg !4037
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4038, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0, !dbg !4039
  %7 = load i8*, i8** %buf, align 8, !dbg !4039, !tbaa !1538
  store i8* %7, i8** %ascii_data, align 8, !dbg !4040, !tbaa !1021
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4041, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2, !dbg !4042
  %9 = load i64, i64* %len, align 8, !dbg !4042, !tbaa !1548
  store i64 %9, i64* %datalen, align 8, !dbg !4043, !tbaa !1601
  %10 = load i64, i64* %datalen, align 8, !dbg !4044, !tbaa !1601
  %call = call i8* @PyMem_Malloc(i64 %10), !dbg !4045
  store i8* %call, i8** %odata, align 8, !dbg !4046, !tbaa !1021
  %11 = load i8*, i8** %odata, align 8, !dbg !4047, !tbaa !1021
  %cmp = icmp eq i8* %11, null, !dbg !4049
  br i1 %cmp, label %if.then, label %if.end, !dbg !4050

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !4051
  store %struct._object* null, %struct._object** %retval, !dbg !4053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4053

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %odata, align 8, !dbg !4054, !tbaa !1021
  %13 = load i64, i64* %datalen, align 8, !dbg !4055, !tbaa !1601
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %13, i32 1, i1 false), !dbg !4056
  store i64 0, i64* %out, align 8, !dbg !4057, !tbaa !1601
  store i64 0, i64* %in, align 8, !dbg !4058, !tbaa !1601
  br label %while.cond, !dbg !4059

while.cond:                                       ; preds = %if.end.148, %if.end
  %14 = load i64, i64* %in, align 8, !dbg !4060, !tbaa !1601
  %15 = load i64, i64* %datalen, align 8, !dbg !4063, !tbaa !1601
  %cmp2 = icmp slt i64 %14, %15, !dbg !4064
  br i1 %cmp2, label %while.body, label %while.end.149, !dbg !4059

while.body:                                       ; preds = %while.cond
  %16 = load i64, i64* %in, align 8, !dbg !4065, !tbaa !1601
  %17 = load i8*, i8** %ascii_data, align 8, !dbg !4068, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %17, i64 %16, !dbg !4068
  %18 = load i8, i8* %arrayidx, align 1, !dbg !4068, !tbaa !1604
  %conv = zext i8 %18 to i32, !dbg !4068
  %cmp3 = icmp eq i32 %conv, 61, !dbg !4069
  br i1 %cmp3, label %if.then.5, label %if.else.132, !dbg !4070

if.then.5:                                        ; preds = %while.body
  %19 = load i64, i64* %in, align 8, !dbg !4071, !tbaa !1601
  %inc = add i64 %19, 1, !dbg !4071
  store i64 %inc, i64* %in, align 8, !dbg !4071, !tbaa !1601
  %20 = load i64, i64* %in, align 8, !dbg !4073, !tbaa !1601
  %21 = load i64, i64* %datalen, align 8, !dbg !4075, !tbaa !1601
  %cmp6 = icmp sge i64 %20, %21, !dbg !4076
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !4077

if.then.8:                                        ; preds = %if.then.5
  br label %while.end.149, !dbg !4078

if.end.9:                                         ; preds = %if.then.5
  %22 = load i64, i64* %in, align 8, !dbg !4080, !tbaa !1601
  %23 = load i8*, i8** %ascii_data, align 8, !dbg !4082, !tbaa !1021
  %arrayidx10 = getelementptr i8, i8* %23, i64 %22, !dbg !4082
  %24 = load i8, i8* %arrayidx10, align 1, !dbg !4082, !tbaa !1604
  %conv11 = zext i8 %24 to i32, !dbg !4082
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !4083
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false, !dbg !4084

lor.lhs.false:                                    ; preds = %if.end.9
  %25 = load i64, i64* %in, align 8, !dbg !4085, !tbaa !1601
  %26 = load i8*, i8** %ascii_data, align 8, !dbg !4087, !tbaa !1021
  %arrayidx14 = getelementptr i8, i8* %26, i64 %25, !dbg !4087
  %27 = load i8, i8* %arrayidx14, align 1, !dbg !4087, !tbaa !1604
  %conv15 = zext i8 %27 to i32, !dbg !4087
  %cmp16 = icmp eq i32 %conv15, 13, !dbg !4088
  br i1 %cmp16, label %if.then.18, label %if.else, !dbg !4089

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.9
  %28 = load i64, i64* %in, align 8, !dbg !4090, !tbaa !1601
  %29 = load i8*, i8** %ascii_data, align 8, !dbg !4093, !tbaa !1021
  %arrayidx19 = getelementptr i8, i8* %29, i64 %28, !dbg !4093
  %30 = load i8, i8* %arrayidx19, align 1, !dbg !4093, !tbaa !1604
  %conv20 = zext i8 %30 to i32, !dbg !4093
  %cmp21 = icmp ne i32 %conv20, 10, !dbg !4094
  br i1 %cmp21, label %if.then.23, label %if.end.33, !dbg !4095

if.then.23:                                       ; preds = %if.then.18
  br label %while.cond.24, !dbg !4096

while.cond.24:                                    ; preds = %while.body.31, %if.then.23
  %31 = load i64, i64* %in, align 8, !dbg !4098, !tbaa !1601
  %32 = load i64, i64* %datalen, align 8, !dbg !4101, !tbaa !1601
  %cmp25 = icmp slt i64 %31, %32, !dbg !4102
  br i1 %cmp25, label %land.rhs, label %land.end, !dbg !4103

land.rhs:                                         ; preds = %while.cond.24
  %33 = load i64, i64* %in, align 8, !dbg !4104, !tbaa !1601
  %34 = load i8*, i8** %ascii_data, align 8, !dbg !4106, !tbaa !1021
  %arrayidx27 = getelementptr i8, i8* %34, i64 %33, !dbg !4106
  %35 = load i8, i8* %arrayidx27, align 1, !dbg !4106, !tbaa !1604
  %conv28 = zext i8 %35 to i32, !dbg !4106
  %cmp29 = icmp ne i32 %conv28, 10, !dbg !4107
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.24
  %36 = phi i1 [ false, %while.cond.24 ], [ %cmp29, %land.rhs ]
  br i1 %36, label %while.body.31, label %while.end, !dbg !4108

while.body.31:                                    ; preds = %land.end
  %37 = load i64, i64* %in, align 8, !dbg !4110, !tbaa !1601
  %inc32 = add i64 %37, 1, !dbg !4110
  store i64 %inc32, i64* %in, align 8, !dbg !4110, !tbaa !1601
  br label %while.cond.24, !dbg !4096

while.end:                                        ; preds = %land.end
  br label %if.end.33, !dbg !4112

if.end.33:                                        ; preds = %while.end, %if.then.18
  %38 = load i64, i64* %in, align 8, !dbg !4113, !tbaa !1601
  %39 = load i64, i64* %datalen, align 8, !dbg !4115, !tbaa !1601
  %cmp34 = icmp slt i64 %38, %39, !dbg !4116
  br i1 %cmp34, label %if.then.36, label %if.end.38, !dbg !4117

if.then.36:                                       ; preds = %if.end.33
  %40 = load i64, i64* %in, align 8, !dbg !4118, !tbaa !1601
  %inc37 = add i64 %40, 1, !dbg !4118
  store i64 %inc37, i64* %in, align 8, !dbg !4118, !tbaa !1601
  br label %if.end.38, !dbg !4120

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.131, !dbg !4121

if.else:                                          ; preds = %lor.lhs.false
  %41 = load i64, i64* %in, align 8, !dbg !4122, !tbaa !1601
  %42 = load i8*, i8** %ascii_data, align 8, !dbg !4124, !tbaa !1021
  %arrayidx39 = getelementptr i8, i8* %42, i64 %41, !dbg !4124
  %43 = load i8, i8* %arrayidx39, align 1, !dbg !4124, !tbaa !1604
  %conv40 = zext i8 %43 to i32, !dbg !4124
  %cmp41 = icmp eq i32 %conv40, 61, !dbg !4125
  br i1 %cmp41, label %if.then.43, label %if.else.47, !dbg !4126

if.then.43:                                       ; preds = %if.else
  %44 = load i64, i64* %out, align 8, !dbg !4127, !tbaa !1601
  %inc44 = add i64 %44, 1, !dbg !4127
  store i64 %inc44, i64* %out, align 8, !dbg !4127, !tbaa !1601
  %45 = load i8*, i8** %odata, align 8, !dbg !4129, !tbaa !1021
  %arrayidx45 = getelementptr i8, i8* %45, i64 %44, !dbg !4129
  store i8 61, i8* %arrayidx45, align 1, !dbg !4130, !tbaa !1604
  %46 = load i64, i64* %in, align 8, !dbg !4131, !tbaa !1601
  %inc46 = add i64 %46, 1, !dbg !4131
  store i64 %inc46, i64* %in, align 8, !dbg !4131, !tbaa !1601
  br label %if.end.130, !dbg !4132

if.else.47:                                       ; preds = %if.else
  %47 = load i64, i64* %in, align 8, !dbg !4133, !tbaa !1601
  %48 = load i8*, i8** %ascii_data, align 8, !dbg !4135, !tbaa !1021
  %arrayidx48 = getelementptr i8, i8* %48, i64 %47, !dbg !4135
  %49 = load i8, i8* %arrayidx48, align 1, !dbg !4135, !tbaa !1604
  %conv49 = zext i8 %49 to i32, !dbg !4135
  %cmp50 = icmp sge i32 %conv49, 65, !dbg !4136
  br i1 %cmp50, label %land.lhs.true, label %lor.lhs.false.56, !dbg !4137

land.lhs.true:                                    ; preds = %if.else.47
  %50 = load i64, i64* %in, align 8, !dbg !4138, !tbaa !1601
  %51 = load i8*, i8** %ascii_data, align 8, !dbg !4140, !tbaa !1021
  %arrayidx52 = getelementptr i8, i8* %51, i64 %50, !dbg !4140
  %52 = load i8, i8* %arrayidx52, align 1, !dbg !4140, !tbaa !1604
  %conv53 = zext i8 %52 to i32, !dbg !4140
  %cmp54 = icmp sle i32 %conv53, 70, !dbg !4141
  br i1 %cmp54, label %land.lhs.true.76, label %lor.lhs.false.56, !dbg !4142

lor.lhs.false.56:                                 ; preds = %land.lhs.true, %if.else.47
  %53 = load i64, i64* %in, align 8, !dbg !4143, !tbaa !1601
  %54 = load i8*, i8** %ascii_data, align 8, !dbg !4144, !tbaa !1021
  %arrayidx57 = getelementptr i8, i8* %54, i64 %53, !dbg !4144
  %55 = load i8, i8* %arrayidx57, align 1, !dbg !4144, !tbaa !1604
  %conv58 = zext i8 %55 to i32, !dbg !4144
  %cmp59 = icmp sge i32 %conv58, 97, !dbg !4145
  br i1 %cmp59, label %land.lhs.true.61, label %lor.lhs.false.66, !dbg !4146

land.lhs.true.61:                                 ; preds = %lor.lhs.false.56
  %56 = load i64, i64* %in, align 8, !dbg !4147, !tbaa !1601
  %57 = load i8*, i8** %ascii_data, align 8, !dbg !4148, !tbaa !1021
  %arrayidx62 = getelementptr i8, i8* %57, i64 %56, !dbg !4148
  %58 = load i8, i8* %arrayidx62, align 1, !dbg !4148, !tbaa !1604
  %conv63 = zext i8 %58 to i32, !dbg !4148
  %cmp64 = icmp sle i32 %conv63, 102, !dbg !4149
  br i1 %cmp64, label %land.lhs.true.76, label %lor.lhs.false.66, !dbg !4150

lor.lhs.false.66:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.56
  %59 = load i64, i64* %in, align 8, !dbg !4151, !tbaa !1601
  %60 = load i8*, i8** %ascii_data, align 8, !dbg !4152, !tbaa !1021
  %arrayidx67 = getelementptr i8, i8* %60, i64 %59, !dbg !4152
  %61 = load i8, i8* %arrayidx67, align 1, !dbg !4152, !tbaa !1604
  %conv68 = zext i8 %61 to i32, !dbg !4152
  %cmp69 = icmp sge i32 %conv68, 48, !dbg !4153
  br i1 %cmp69, label %land.lhs.true.71, label %if.else.126, !dbg !4154

land.lhs.true.71:                                 ; preds = %lor.lhs.false.66
  %62 = load i64, i64* %in, align 8, !dbg !4155, !tbaa !1601
  %63 = load i8*, i8** %ascii_data, align 8, !dbg !4156, !tbaa !1021
  %arrayidx72 = getelementptr i8, i8* %63, i64 %62, !dbg !4156
  %64 = load i8, i8* %arrayidx72, align 1, !dbg !4156, !tbaa !1604
  %conv73 = zext i8 %64 to i32, !dbg !4156
  %cmp74 = icmp sle i32 %conv73, 57, !dbg !4157
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.126, !dbg !4158

land.lhs.true.76:                                 ; preds = %land.lhs.true.71, %land.lhs.true.61, %land.lhs.true
  %65 = load i64, i64* %in, align 8, !dbg !4159, !tbaa !1601
  %add = add i64 %65, 1, !dbg !4160
  %66 = load i8*, i8** %ascii_data, align 8, !dbg !4161, !tbaa !1021
  %arrayidx77 = getelementptr i8, i8* %66, i64 %add, !dbg !4161
  %67 = load i8, i8* %arrayidx77, align 1, !dbg !4161, !tbaa !1604
  %conv78 = zext i8 %67 to i32, !dbg !4161
  %cmp79 = icmp sge i32 %conv78, 65, !dbg !4162
  br i1 %cmp79, label %land.lhs.true.81, label %lor.lhs.false.87, !dbg !4163

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %68 = load i64, i64* %in, align 8, !dbg !4164, !tbaa !1601
  %add82 = add i64 %68, 1, !dbg !4165
  %69 = load i8*, i8** %ascii_data, align 8, !dbg !4166, !tbaa !1021
  %arrayidx83 = getelementptr i8, i8* %69, i64 %add82, !dbg !4166
  %70 = load i8, i8* %arrayidx83, align 1, !dbg !4166, !tbaa !1604
  %conv84 = zext i8 %70 to i32, !dbg !4166
  %cmp85 = icmp sle i32 %conv84, 70, !dbg !4167
  br i1 %cmp85, label %if.then.111, label %lor.lhs.false.87, !dbg !4168

lor.lhs.false.87:                                 ; preds = %land.lhs.true.81, %land.lhs.true.76
  %71 = load i64, i64* %in, align 8, !dbg !4169, !tbaa !1601
  %add88 = add i64 %71, 1, !dbg !4170
  %72 = load i8*, i8** %ascii_data, align 8, !dbg !4171, !tbaa !1021
  %arrayidx89 = getelementptr i8, i8* %72, i64 %add88, !dbg !4171
  %73 = load i8, i8* %arrayidx89, align 1, !dbg !4171, !tbaa !1604
  %conv90 = zext i8 %73 to i32, !dbg !4171
  %cmp91 = icmp sge i32 %conv90, 97, !dbg !4172
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.99, !dbg !4173

land.lhs.true.93:                                 ; preds = %lor.lhs.false.87
  %74 = load i64, i64* %in, align 8, !dbg !4174, !tbaa !1601
  %add94 = add i64 %74, 1, !dbg !4175
  %75 = load i8*, i8** %ascii_data, align 8, !dbg !4176, !tbaa !1021
  %arrayidx95 = getelementptr i8, i8* %75, i64 %add94, !dbg !4176
  %76 = load i8, i8* %arrayidx95, align 1, !dbg !4176, !tbaa !1604
  %conv96 = zext i8 %76 to i32, !dbg !4176
  %cmp97 = icmp sle i32 %conv96, 102, !dbg !4177
  br i1 %cmp97, label %if.then.111, label %lor.lhs.false.99, !dbg !4178

lor.lhs.false.99:                                 ; preds = %land.lhs.true.93, %lor.lhs.false.87
  %77 = load i64, i64* %in, align 8, !dbg !4179, !tbaa !1601
  %add100 = add i64 %77, 1, !dbg !4180
  %78 = load i8*, i8** %ascii_data, align 8, !dbg !4181, !tbaa !1021
  %arrayidx101 = getelementptr i8, i8* %78, i64 %add100, !dbg !4181
  %79 = load i8, i8* %arrayidx101, align 1, !dbg !4181, !tbaa !1604
  %conv102 = zext i8 %79 to i32, !dbg !4181
  %cmp103 = icmp sge i32 %conv102, 48, !dbg !4182
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.126, !dbg !4183

land.lhs.true.105:                                ; preds = %lor.lhs.false.99
  %80 = load i64, i64* %in, align 8, !dbg !4184, !tbaa !1601
  %add106 = add i64 %80, 1, !dbg !4185
  %81 = load i8*, i8** %ascii_data, align 8, !dbg !4186, !tbaa !1021
  %arrayidx107 = getelementptr i8, i8* %81, i64 %add106, !dbg !4186
  %82 = load i8, i8* %arrayidx107, align 1, !dbg !4186, !tbaa !1604
  %conv108 = zext i8 %82 to i32, !dbg !4186
  %cmp109 = icmp sle i32 %conv108, 57, !dbg !4187
  br i1 %cmp109, label %if.then.111, label %if.else.126, !dbg !4188

if.then.111:                                      ; preds = %land.lhs.true.105, %land.lhs.true.93, %land.lhs.true.81
  %83 = load i64, i64* %in, align 8, !dbg !4189, !tbaa !1601
  %84 = load i8*, i8** %ascii_data, align 8, !dbg !4191, !tbaa !1021
  %arrayidx112 = getelementptr i8, i8* %84, i64 %83, !dbg !4191
  %85 = load i8, i8* %arrayidx112, align 1, !dbg !4191, !tbaa !1604
  %conv113 = zext i8 %85 to i32, !dbg !4192
  %idxprom = zext i32 %conv113 to i64, !dbg !4193
  %arrayidx114 = getelementptr [128 x i32], [128 x i32]* @table_hex, i32 0, i64 %idxprom, !dbg !4193
  %86 = load i32, i32* %arrayidx114, align 4, !dbg !4193, !tbaa !1332
  %shl = shl i32 %86, 4, !dbg !4194
  %conv115 = trunc i32 %shl to i8, !dbg !4193
  store i8 %conv115, i8* %ch, align 1, !dbg !4195, !tbaa !1604
  %87 = load i64, i64* %in, align 8, !dbg !4196, !tbaa !1601
  %inc116 = add i64 %87, 1, !dbg !4196
  store i64 %inc116, i64* %in, align 8, !dbg !4196, !tbaa !1601
  %88 = load i64, i64* %in, align 8, !dbg !4197, !tbaa !1601
  %89 = load i8*, i8** %ascii_data, align 8, !dbg !4198, !tbaa !1021
  %arrayidx117 = getelementptr i8, i8* %89, i64 %88, !dbg !4198
  %90 = load i8, i8* %arrayidx117, align 1, !dbg !4198, !tbaa !1604
  %conv118 = zext i8 %90 to i32, !dbg !4199
  %idxprom119 = zext i32 %conv118 to i64, !dbg !4200
  %arrayidx120 = getelementptr [128 x i32], [128 x i32]* @table_hex, i32 0, i64 %idxprom119, !dbg !4200
  %91 = load i32, i32* %arrayidx120, align 4, !dbg !4200, !tbaa !1332
  %92 = load i8, i8* %ch, align 1, !dbg !4201, !tbaa !1604
  %conv121 = sext i8 %92 to i32, !dbg !4201
  %or = or i32 %conv121, %91, !dbg !4201
  %conv122 = trunc i32 %or to i8, !dbg !4201
  store i8 %conv122, i8* %ch, align 1, !dbg !4201, !tbaa !1604
  %93 = load i64, i64* %in, align 8, !dbg !4202, !tbaa !1601
  %inc123 = add i64 %93, 1, !dbg !4202
  store i64 %inc123, i64* %in, align 8, !dbg !4202, !tbaa !1601
  %94 = load i8, i8* %ch, align 1, !dbg !4203, !tbaa !1604
  %95 = load i64, i64* %out, align 8, !dbg !4204, !tbaa !1601
  %inc124 = add i64 %95, 1, !dbg !4204
  store i64 %inc124, i64* %out, align 8, !dbg !4204, !tbaa !1601
  %96 = load i8*, i8** %odata, align 8, !dbg !4205, !tbaa !1021
  %arrayidx125 = getelementptr i8, i8* %96, i64 %95, !dbg !4205
  store i8 %94, i8* %arrayidx125, align 1, !dbg !4206, !tbaa !1604
  br label %if.end.129, !dbg !4207

if.else.126:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.99, %land.lhs.true.71, %lor.lhs.false.66
  %97 = load i64, i64* %out, align 8, !dbg !4208, !tbaa !1601
  %inc127 = add i64 %97, 1, !dbg !4208
  store i64 %inc127, i64* %out, align 8, !dbg !4208, !tbaa !1601
  %98 = load i8*, i8** %odata, align 8, !dbg !4210, !tbaa !1021
  %arrayidx128 = getelementptr i8, i8* %98, i64 %97, !dbg !4210
  store i8 61, i8* %arrayidx128, align 1, !dbg !4211, !tbaa !1604
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.111
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.43
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.38
  br label %if.end.148, !dbg !4212

if.else.132:                                      ; preds = %while.body
  %99 = load i32, i32* %header.addr, align 4, !dbg !4213, !tbaa !1332
  %tobool = icmp ne i32 %99, 0, !dbg !4213
  br i1 %tobool, label %land.lhs.true.133, label %if.else.142, !dbg !4215

land.lhs.true.133:                                ; preds = %if.else.132
  %100 = load i64, i64* %in, align 8, !dbg !4216, !tbaa !1601
  %101 = load i8*, i8** %ascii_data, align 8, !dbg !4218, !tbaa !1021
  %arrayidx134 = getelementptr i8, i8* %101, i64 %100, !dbg !4218
  %102 = load i8, i8* %arrayidx134, align 1, !dbg !4218, !tbaa !1604
  %conv135 = zext i8 %102 to i32, !dbg !4218
  %cmp136 = icmp eq i32 %conv135, 95, !dbg !4219
  br i1 %cmp136, label %if.then.138, label %if.else.142, !dbg !4220

if.then.138:                                      ; preds = %land.lhs.true.133
  %103 = load i64, i64* %out, align 8, !dbg !4221, !tbaa !1601
  %inc139 = add i64 %103, 1, !dbg !4221
  store i64 %inc139, i64* %out, align 8, !dbg !4221, !tbaa !1601
  %104 = load i8*, i8** %odata, align 8, !dbg !4223, !tbaa !1021
  %arrayidx140 = getelementptr i8, i8* %104, i64 %103, !dbg !4223
  store i8 32, i8* %arrayidx140, align 1, !dbg !4224, !tbaa !1604
  %105 = load i64, i64* %in, align 8, !dbg !4225, !tbaa !1601
  %inc141 = add i64 %105, 1, !dbg !4225
  store i64 %inc141, i64* %in, align 8, !dbg !4225, !tbaa !1601
  br label %if.end.147, !dbg !4226

if.else.142:                                      ; preds = %land.lhs.true.133, %if.else.132
  %106 = load i64, i64* %in, align 8, !dbg !4227, !tbaa !1601
  %107 = load i8*, i8** %ascii_data, align 8, !dbg !4229, !tbaa !1021
  %arrayidx143 = getelementptr i8, i8* %107, i64 %106, !dbg !4229
  %108 = load i8, i8* %arrayidx143, align 1, !dbg !4229, !tbaa !1604
  %109 = load i64, i64* %out, align 8, !dbg !4230, !tbaa !1601
  %110 = load i8*, i8** %odata, align 8, !dbg !4231, !tbaa !1021
  %arrayidx144 = getelementptr i8, i8* %110, i64 %109, !dbg !4231
  store i8 %108, i8* %arrayidx144, align 1, !dbg !4232, !tbaa !1604
  %111 = load i64, i64* %in, align 8, !dbg !4233, !tbaa !1601
  %inc145 = add i64 %111, 1, !dbg !4233
  store i64 %inc145, i64* %in, align 8, !dbg !4233, !tbaa !1601
  %112 = load i64, i64* %out, align 8, !dbg !4234, !tbaa !1601
  %inc146 = add i64 %112, 1, !dbg !4234
  store i64 %inc146, i64* %out, align 8, !dbg !4234, !tbaa !1601
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.then.138
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.131
  br label %while.cond, !dbg !4059

while.end.149:                                    ; preds = %if.then.8, %while.cond
  %113 = load i8*, i8** %odata, align 8, !dbg !4235, !tbaa !1021
  %114 = load i64, i64* %out, align 8, !dbg !4237, !tbaa !1601
  %call150 = call %struct._object* @PyBytes_FromStringAndSize(i8* %113, i64 %114), !dbg !4238
  store %struct._object* %call150, %struct._object** %rv, align 8, !dbg !4239, !tbaa !1021
  %cmp151 = icmp eq %struct._object* %call150, null, !dbg !4240
  br i1 %cmp151, label %if.then.153, label %if.end.154, !dbg !4241

if.then.153:                                      ; preds = %while.end.149
  %115 = load i8*, i8** %odata, align 8, !dbg !4242, !tbaa !1021
  call void @PyMem_Free(i8* %115), !dbg !4244
  store %struct._object* null, %struct._object** %retval, !dbg !4245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4245

if.end.154:                                       ; preds = %while.end.149
  %116 = load i8*, i8** %odata, align 8, !dbg !4246, !tbaa !1021
  call void @PyMem_Free(i8* %116), !dbg !4247
  %117 = load %struct._object*, %struct._object** %rv, align 8, !dbg !4248, !tbaa !1021
  store %struct._object* %117, %struct._object** %retval, !dbg !4249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4249

cleanup:                                          ; preds = %if.end.154, %if.then.153, %if.then
  %118 = bitcast %struct._object** %rv to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %118) #1, !dbg !4250
  %119 = bitcast i64* %datalen to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !4250
  %120 = bitcast i8** %odata to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !4250
  %121 = bitcast i8** %ascii_data to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %121) #1, !dbg !4250
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1, !dbg !4250
  %122 = bitcast i64* %out to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !4250
  %123 = bitcast i64* %in to i8*, !dbg !4250
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !4250
  %124 = load %struct._object*, %struct._object** %retval, !dbg !4250
  ret %struct._object* %124, !dbg !4250
}

declare i8* @PyMem_Malloc(i64) #3

declare void @PyMem_Free(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !900, metadata !1016), !dbg !4251
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !901, metadata !1016), !dbg !4252
  store i32 %quotetabs, i32* %quotetabs.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %quotetabs.addr, metadata !902, metadata !1016), !dbg !4253
  store i32 %istext, i32* %istext.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %istext.addr, metadata !903, metadata !1016), !dbg !4254
  store i32 %header, i32* %header.addr, align 4, !tbaa !1332
  call void @llvm.dbg.declare(metadata i32* %header.addr, metadata !904, metadata !1016), !dbg !4255
  %0 = bitcast i64* %in to i8*, !dbg !4256
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4256
  call void @llvm.dbg.declare(metadata i64* %in, metadata !905, metadata !1016), !dbg !4257
  %1 = bitcast i64* %out to i8*, !dbg !4256
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4256
  call void @llvm.dbg.declare(metadata i64* %out, metadata !906, metadata !1016), !dbg !4258
  %2 = bitcast i8** %databuf to i8*, !dbg !4259
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4259
  call void @llvm.dbg.declare(metadata i8** %databuf, metadata !907, metadata !1016), !dbg !4260
  %3 = bitcast i8** %odata to i8*, !dbg !4259
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4259
  call void @llvm.dbg.declare(metadata i8** %odata, metadata !908, metadata !1016), !dbg !4261
  %4 = bitcast i64* %datalen to i8*, !dbg !4262
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4262
  call void @llvm.dbg.declare(metadata i64* %datalen, metadata !909, metadata !1016), !dbg !4263
  store i64 0, i64* %datalen, align 8, !dbg !4263, !tbaa !1601
  %5 = bitcast i64* %odatalen to i8*, !dbg !4262
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4262
  call void @llvm.dbg.declare(metadata i64* %odatalen, metadata !910, metadata !1016), !dbg !4264
  store i64 0, i64* %odatalen, align 8, !dbg !4264, !tbaa !1601
  %6 = bitcast %struct._object** %rv to i8*, !dbg !4265
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4265
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !911, metadata !1016), !dbg !4266
  %7 = bitcast i32* %linelen to i8*, !dbg !4267
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !4267
  call void @llvm.dbg.declare(metadata i32* %linelen, metadata !912, metadata !1016), !dbg !4268
  store i32 0, i32* %linelen, align 4, !dbg !4268, !tbaa !1332
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1, !dbg !4269
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !913, metadata !1016), !dbg !4270
  %8 = bitcast i32* %crlf to i8*, !dbg !4271
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !4271
  call void @llvm.dbg.declare(metadata i32* %crlf, metadata !914, metadata !1016), !dbg !4272
  store i32 0, i32* %crlf, align 4, !dbg !4272, !tbaa !1332
  %9 = bitcast i8** %p to i8*, !dbg !4273
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4273
  call void @llvm.dbg.declare(metadata i8** %p, metadata !915, metadata !1016), !dbg !4274
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4275, !tbaa !1021
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0, !dbg !4276
  %11 = load i8*, i8** %buf, align 8, !dbg !4276, !tbaa !1538
  store i8* %11, i8** %databuf, align 8, !dbg !4277, !tbaa !1021
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4278, !tbaa !1021
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2, !dbg !4279
  %13 = load i64, i64* %len, align 8, !dbg !4279, !tbaa !1548
  store i64 %13, i64* %datalen, align 8, !dbg !4280, !tbaa !1601
  %14 = load i8*, i8** %databuf, align 8, !dbg !4281, !tbaa !1021
  %15 = load i64, i64* %datalen, align 8, !dbg !4282, !tbaa !1601
  %call = call i8* @memchr(i8* %14, i32 10, i64 %15) #5, !dbg !4283
  store i8* %call, i8** %p, align 8, !dbg !4284, !tbaa !1021
  %16 = load i8*, i8** %p, align 8, !dbg !4285, !tbaa !1021
  %cmp = icmp ne i8* %16, null, !dbg !4287
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4288

land.lhs.true:                                    ; preds = %entry
  %17 = load i8*, i8** %p, align 8, !dbg !4289, !tbaa !1021
  %18 = load i8*, i8** %databuf, align 8, !dbg !4291, !tbaa !1021
  %cmp1 = icmp ugt i8* %17, %18, !dbg !4292
  br i1 %cmp1, label %land.lhs.true.2, label %if.end, !dbg !4293

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %19 = load i8*, i8** %p, align 8, !dbg !4294, !tbaa !1021
  %add.ptr = getelementptr i8, i8* %19, i64 -1, !dbg !4296
  %20 = load i8, i8* %add.ptr, align 1, !dbg !4297, !tbaa !1604
  %conv = zext i8 %20 to i32, !dbg !4297
  %cmp3 = icmp eq i32 %conv, 13, !dbg !4298
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4299

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %crlf, align 4, !dbg !4300, !tbaa !1332
  br label %if.end, !dbg !4301

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  store i64 0, i64* %in, align 8, !dbg !4302, !tbaa !1601
  br label %while.cond, !dbg !4303

while.cond:                                       ; preds = %if.end.190, %if.end
  %21 = load i64, i64* %in, align 8, !dbg !4304, !tbaa !1601
  %22 = load i64, i64* %datalen, align 8, !dbg !4307, !tbaa !1601
  %cmp5 = icmp slt i64 %21, %22, !dbg !4308
  br i1 %cmp5, label %while.body, label %while.end, !dbg !4303

while.body:                                       ; preds = %while.cond
  %23 = load i64, i64* %in, align 8, !dbg !4309, !tbaa !1601
  %24 = load i8*, i8** %databuf, align 8, !dbg !4312, !tbaa !1021
  %arrayidx = getelementptr i8, i8* %24, i64 %23, !dbg !4312
  %25 = load i8, i8* %arrayidx, align 1, !dbg !4312, !tbaa !1604
  %conv7 = zext i8 %25 to i32, !dbg !4312
  %cmp8 = icmp sgt i32 %conv7, 126, !dbg !4313
  br i1 %cmp8, label %if.then.98, label %lor.lhs.false, !dbg !4314

lor.lhs.false:                                    ; preds = %while.body
  %26 = load i64, i64* %in, align 8, !dbg !4315, !tbaa !1601
  %27 = load i8*, i8** %databuf, align 8, !dbg !4316, !tbaa !1021
  %arrayidx10 = getelementptr i8, i8* %27, i64 %26, !dbg !4316
  %28 = load i8, i8* %arrayidx10, align 1, !dbg !4316, !tbaa !1604
  %conv11 = zext i8 %28 to i32, !dbg !4316
  %cmp12 = icmp eq i32 %conv11, 61, !dbg !4317
  br i1 %cmp12, label %if.then.98, label %lor.lhs.false.14, !dbg !4318

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* %header.addr, align 4, !dbg !4319, !tbaa !1332
  %tobool = icmp ne i32 %29, 0, !dbg !4319
  br i1 %tobool, label %land.lhs.true.15, label %lor.lhs.false.20, !dbg !4320

land.lhs.true.15:                                 ; preds = %lor.lhs.false.14
  %30 = load i64, i64* %in, align 8, !dbg !4321, !tbaa !1601
  %31 = load i8*, i8** %databuf, align 8, !dbg !4323, !tbaa !1021
  %arrayidx16 = getelementptr i8, i8* %31, i64 %30, !dbg !4323
  %32 = load i8, i8* %arrayidx16, align 1, !dbg !4323, !tbaa !1604
  %conv17 = zext i8 %32 to i32, !dbg !4323
  %cmp18 = icmp eq i32 %conv17, 95, !dbg !4324
  br i1 %cmp18, label %if.then.98, label %lor.lhs.false.20, !dbg !4325

lor.lhs.false.20:                                 ; preds = %land.lhs.true.15, %lor.lhs.false.14
  %33 = load i64, i64* %in, align 8, !dbg !4326, !tbaa !1601
  %34 = load i8*, i8** %databuf, align 8, !dbg !4327, !tbaa !1021
  %arrayidx21 = getelementptr i8, i8* %34, i64 %33, !dbg !4327
  %35 = load i8, i8* %arrayidx21, align 1, !dbg !4327, !tbaa !1604
  %conv22 = zext i8 %35 to i32, !dbg !4327
  %cmp23 = icmp eq i32 %conv22, 46, !dbg !4328
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.45, !dbg !4329

land.lhs.true.25:                                 ; preds = %lor.lhs.false.20
  %36 = load i32, i32* %linelen, align 4, !dbg !4330, !tbaa !1332
  %cmp26 = icmp eq i32 %36, 0, !dbg !4331
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false.45, !dbg !4332

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %37 = load i64, i64* %in, align 8, !dbg !4333, !tbaa !1601
  %add = add i64 %37, 1, !dbg !4334
  %38 = load i8*, i8** %databuf, align 8, !dbg !4335, !tbaa !1021
  %arrayidx29 = getelementptr i8, i8* %38, i64 %add, !dbg !4335
  %39 = load i8, i8* %arrayidx29, align 1, !dbg !4335, !tbaa !1604
  %conv30 = zext i8 %39 to i32, !dbg !4335
  %cmp31 = icmp eq i32 %conv30, 10, !dbg !4336
  br i1 %cmp31, label %if.then.98, label %lor.lhs.false.33, !dbg !4337

lor.lhs.false.33:                                 ; preds = %land.lhs.true.28
  %40 = load i64, i64* %in, align 8, !dbg !4338, !tbaa !1601
  %add34 = add i64 %40, 1, !dbg !4339
  %41 = load i8*, i8** %databuf, align 8, !dbg !4340, !tbaa !1021
  %arrayidx35 = getelementptr i8, i8* %41, i64 %add34, !dbg !4340
  %42 = load i8, i8* %arrayidx35, align 1, !dbg !4340, !tbaa !1604
  %conv36 = zext i8 %42 to i32, !dbg !4340
  %cmp37 = icmp eq i32 %conv36, 13, !dbg !4341
  br i1 %cmp37, label %if.then.98, label %lor.lhs.false.39, !dbg !4342

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.33
  %43 = load i64, i64* %in, align 8, !dbg !4343, !tbaa !1601
  %add40 = add i64 %43, 1, !dbg !4345
  %44 = load i8*, i8** %databuf, align 8, !dbg !4346, !tbaa !1021
  %arrayidx41 = getelementptr i8, i8* %44, i64 %add40, !dbg !4346
  %45 = load i8, i8* %arrayidx41, align 1, !dbg !4346, !tbaa !1604
  %conv42 = zext i8 %45 to i32, !dbg !4346
  %cmp43 = icmp eq i32 %conv42, 0, !dbg !4347
  br i1 %cmp43, label %if.then.98, label %lor.lhs.false.45, !dbg !4348

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.39, %land.lhs.true.25, %lor.lhs.false.20
  %46 = load i32, i32* %istext.addr, align 4, !dbg !4349, !tbaa !1332
  %tobool46 = icmp ne i32 %46, 0, !dbg !4349
  br i1 %tobool46, label %lor.lhs.false.57, label %land.lhs.true.47, !dbg !4350

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %47 = load i64, i64* %in, align 8, !dbg !4351, !tbaa !1601
  %48 = load i8*, i8** %databuf, align 8, !dbg !4352, !tbaa !1021
  %arrayidx48 = getelementptr i8, i8* %48, i64 %47, !dbg !4352
  %49 = load i8, i8* %arrayidx48, align 1, !dbg !4352, !tbaa !1604
  %conv49 = zext i8 %49 to i32, !dbg !4352
  %cmp50 = icmp eq i32 %conv49, 13, !dbg !4353
  br i1 %cmp50, label %if.then.98, label %lor.lhs.false.52, !dbg !4354

lor.lhs.false.52:                                 ; preds = %land.lhs.true.47
  %50 = load i64, i64* %in, align 8, !dbg !4355, !tbaa !1601
  %51 = load i8*, i8** %databuf, align 8, !dbg !4356, !tbaa !1021
  %arrayidx53 = getelementptr i8, i8* %51, i64 %50, !dbg !4356
  %52 = load i8, i8* %arrayidx53, align 1, !dbg !4356, !tbaa !1604
  %conv54 = zext i8 %52 to i32, !dbg !4356
  %cmp55 = icmp eq i32 %conv54, 10, !dbg !4357
  br i1 %cmp55, label %if.then.98, label %lor.lhs.false.57, !dbg !4358

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.52, %lor.lhs.false.45
  %53 = load i64, i64* %in, align 8, !dbg !4359, !tbaa !1601
  %54 = load i8*, i8** %databuf, align 8, !dbg !4360, !tbaa !1021
  %arrayidx58 = getelementptr i8, i8* %54, i64 %53, !dbg !4360
  %55 = load i8, i8* %arrayidx58, align 1, !dbg !4360, !tbaa !1604
  %conv59 = zext i8 %55 to i32, !dbg !4360
  %cmp60 = icmp eq i32 %conv59, 9, !dbg !4361
  br i1 %cmp60, label %land.lhs.true.67, label %lor.lhs.false.62, !dbg !4362

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %56 = load i64, i64* %in, align 8, !dbg !4363, !tbaa !1601
  %57 = load i8*, i8** %databuf, align 8, !dbg !4364, !tbaa !1021
  %arrayidx63 = getelementptr i8, i8* %57, i64 %56, !dbg !4364
  %58 = load i8, i8* %arrayidx63, align 1, !dbg !4364, !tbaa !1604
  %conv64 = zext i8 %58 to i32, !dbg !4364
  %cmp65 = icmp eq i32 %conv64, 32, !dbg !4365
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false.71, !dbg !4366

land.lhs.true.67:                                 ; preds = %lor.lhs.false.62, %lor.lhs.false.57
  %59 = load i64, i64* %in, align 8, !dbg !4367, !tbaa !1601
  %add68 = add i64 %59, 1, !dbg !4369
  %60 = load i64, i64* %datalen, align 8, !dbg !4370, !tbaa !1601
  %cmp69 = icmp eq i64 %add68, %60, !dbg !4371
  br i1 %cmp69, label %if.then.98, label %lor.lhs.false.71, !dbg !4372

lor.lhs.false.71:                                 ; preds = %land.lhs.true.67, %lor.lhs.false.62
  %61 = load i64, i64* %in, align 8, !dbg !4373, !tbaa !1601
  %62 = load i8*, i8** %databuf, align 8, !dbg !4374, !tbaa !1021
  %arrayidx72 = getelementptr i8, i8* %62, i64 %61, !dbg !4374
  %63 = load i8, i8* %arrayidx72, align 1, !dbg !4374, !tbaa !1604
  %conv73 = zext i8 %63 to i32, !dbg !4374
  %cmp74 = icmp slt i32 %conv73, 33, !dbg !4375
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.111, !dbg !4376

land.lhs.true.76:                                 ; preds = %lor.lhs.false.71
  %64 = load i64, i64* %in, align 8, !dbg !4377, !tbaa !1601
  %65 = load i8*, i8** %databuf, align 8, !dbg !4378, !tbaa !1021
  %arrayidx77 = getelementptr i8, i8* %65, i64 %64, !dbg !4378
  %66 = load i8, i8* %arrayidx77, align 1, !dbg !4378, !tbaa !1604
  %conv78 = zext i8 %66 to i32, !dbg !4378
  %cmp79 = icmp ne i32 %conv78, 13, !dbg !4379
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.111, !dbg !4380

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %67 = load i64, i64* %in, align 8, !dbg !4381, !tbaa !1601
  %68 = load i8*, i8** %databuf, align 8, !dbg !4382, !tbaa !1021
  %arrayidx82 = getelementptr i8, i8* %68, i64 %67, !dbg !4382
  %69 = load i8, i8* %arrayidx82, align 1, !dbg !4382, !tbaa !1604
  %conv83 = zext i8 %69 to i32, !dbg !4382
  %cmp84 = icmp ne i32 %conv83, 10, !dbg !4383
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.111, !dbg !4384

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %70 = load i32, i32* %quotetabs.addr, align 4, !dbg !4385, !tbaa !1332
  %tobool87 = icmp ne i32 %70, 0, !dbg !4385
  br i1 %tobool87, label %if.then.98, label %lor.lhs.false.88, !dbg !4386

lor.lhs.false.88:                                 ; preds = %land.lhs.true.86
  %71 = load i64, i64* %in, align 8, !dbg !4387, !tbaa !1601
  %72 = load i8*, i8** %databuf, align 8, !dbg !4388, !tbaa !1021
  %arrayidx89 = getelementptr i8, i8* %72, i64 %71, !dbg !4388
  %73 = load i8, i8* %arrayidx89, align 1, !dbg !4388, !tbaa !1604
  %conv90 = zext i8 %73 to i32, !dbg !4388
  %cmp91 = icmp ne i32 %conv90, 9, !dbg !4389
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.111, !dbg !4390

land.lhs.true.93:                                 ; preds = %lor.lhs.false.88
  %74 = load i64, i64* %in, align 8, !dbg !4391, !tbaa !1601
  %75 = load i8*, i8** %databuf, align 8, !dbg !4392, !tbaa !1021
  %arrayidx94 = getelementptr i8, i8* %75, i64 %74, !dbg !4392
  %76 = load i8, i8* %arrayidx94, align 1, !dbg !4392, !tbaa !1604
  %conv95 = zext i8 %76 to i32, !dbg !4392
  %cmp96 = icmp ne i32 %conv95, 32, !dbg !4393
  br i1 %cmp96, label %if.then.98, label %if.else.111, !dbg !4394

if.then.98:                                       ; preds = %land.lhs.true.93, %land.lhs.true.86, %land.lhs.true.67, %lor.lhs.false.52, %land.lhs.true.47, %lor.lhs.false.39, %lor.lhs.false.33, %land.lhs.true.28, %land.lhs.true.15, %lor.lhs.false, %while.body
  %77 = load i32, i32* %linelen, align 4, !dbg !4395, !tbaa !1332
  %add99 = add i32 %77, 3, !dbg !4398
  %cmp100 = icmp uge i32 %add99, 76, !dbg !4399
  br i1 %cmp100, label %if.then.102, label %if.end.108, !dbg !4400

if.then.102:                                      ; preds = %if.then.98
  store i32 0, i32* %linelen, align 4, !dbg !4401, !tbaa !1332
  %78 = load i32, i32* %crlf, align 4, !dbg !4403, !tbaa !1332
  %tobool103 = icmp ne i32 %78, 0, !dbg !4403
  br i1 %tobool103, label %if.then.104, label %if.else, !dbg !4405

if.then.104:                                      ; preds = %if.then.102
  %79 = load i64, i64* %odatalen, align 8, !dbg !4406, !tbaa !1601
  %add105 = add i64 %79, 3, !dbg !4406
  store i64 %add105, i64* %odatalen, align 8, !dbg !4406, !tbaa !1601
  br label %if.end.107, !dbg !4407

if.else:                                          ; preds = %if.then.102
  %80 = load i64, i64* %odatalen, align 8, !dbg !4408, !tbaa !1601
  %add106 = add i64 %80, 2, !dbg !4408
  store i64 %add106, i64* %odatalen, align 8, !dbg !4408, !tbaa !1601
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.104
  br label %if.end.108, !dbg !4409

if.end.108:                                       ; preds = %if.end.107, %if.then.98
  %81 = load i32, i32* %linelen, align 4, !dbg !4410, !tbaa !1332
  %add109 = add i32 %81, 3, !dbg !4410
  store i32 %add109, i32* %linelen, align 4, !dbg !4410, !tbaa !1332
  %82 = load i64, i64* %odatalen, align 8, !dbg !4411, !tbaa !1601
  %add110 = add i64 %82, 3, !dbg !4411
  store i64 %add110, i64* %odatalen, align 8, !dbg !4411, !tbaa !1601
  %83 = load i64, i64* %in, align 8, !dbg !4412, !tbaa !1601
  %inc = add i64 %83, 1, !dbg !4412
  store i64 %inc, i64* %in, align 8, !dbg !4412, !tbaa !1601
  br label %if.end.190, !dbg !4413

if.else.111:                                      ; preds = %land.lhs.true.93, %lor.lhs.false.88, %land.lhs.true.81, %land.lhs.true.76, %lor.lhs.false.71
  %84 = load i32, i32* %istext.addr, align 4, !dbg !4414, !tbaa !1332
  %tobool112 = icmp ne i32 %84, 0, !dbg !4414
  br i1 %tobool112, label %land.lhs.true.113, label %if.else.164, !dbg !4417

land.lhs.true.113:                                ; preds = %if.else.111
  %85 = load i64, i64* %in, align 8, !dbg !4418, !tbaa !1601
  %86 = load i8*, i8** %databuf, align 8, !dbg !4419, !tbaa !1021
  %arrayidx114 = getelementptr i8, i8* %86, i64 %85, !dbg !4419
  %87 = load i8, i8* %arrayidx114, align 1, !dbg !4419, !tbaa !1604
  %conv115 = zext i8 %87 to i32, !dbg !4419
  %cmp116 = icmp eq i32 %conv115, 10, !dbg !4420
  br i1 %cmp116, label %if.then.133, label %lor.lhs.false.118, !dbg !4421

lor.lhs.false.118:                                ; preds = %land.lhs.true.113
  %88 = load i64, i64* %in, align 8, !dbg !4422, !tbaa !1601
  %add119 = add i64 %88, 1, !dbg !4423
  %89 = load i64, i64* %datalen, align 8, !dbg !4424, !tbaa !1601
  %cmp120 = icmp slt i64 %add119, %89, !dbg !4425
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.164, !dbg !4426

land.lhs.true.122:                                ; preds = %lor.lhs.false.118
  %90 = load i64, i64* %in, align 8, !dbg !4427, !tbaa !1601
  %91 = load i8*, i8** %databuf, align 8, !dbg !4429, !tbaa !1021
  %arrayidx123 = getelementptr i8, i8* %91, i64 %90, !dbg !4429
  %92 = load i8, i8* %arrayidx123, align 1, !dbg !4429, !tbaa !1604
  %conv124 = zext i8 %92 to i32, !dbg !4429
  %cmp125 = icmp eq i32 %conv124, 13, !dbg !4430
  br i1 %cmp125, label %land.lhs.true.127, label %if.else.164, !dbg !4431

land.lhs.true.127:                                ; preds = %land.lhs.true.122
  %93 = load i64, i64* %in, align 8, !dbg !4432, !tbaa !1601
  %add128 = add i64 %93, 1, !dbg !4433
  %94 = load i8*, i8** %databuf, align 8, !dbg !4434, !tbaa !1021
  %arrayidx129 = getelementptr i8, i8* %94, i64 %add128, !dbg !4434
  %95 = load i8, i8* %arrayidx129, align 1, !dbg !4434, !tbaa !1604
  %conv130 = zext i8 %95 to i32, !dbg !4434
  %cmp131 = icmp eq i32 %conv130, 10, !dbg !4435
  br i1 %cmp131, label %if.then.133, label %if.else.164, !dbg !4436

if.then.133:                                      ; preds = %land.lhs.true.127, %land.lhs.true.113
  store i32 0, i32* %linelen, align 4, !dbg !4437, !tbaa !1332
  %96 = load i64, i64* %in, align 8, !dbg !4439, !tbaa !1601
  %tobool134 = icmp ne i64 %96, 0, !dbg !4439
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.148, !dbg !4441

land.lhs.true.135:                                ; preds = %if.then.133
  %97 = load i64, i64* %in, align 8, !dbg !4442, !tbaa !1601
  %sub = sub i64 %97, 1, !dbg !4444
  %98 = load i8*, i8** %databuf, align 8, !dbg !4445, !tbaa !1021
  %arrayidx136 = getelementptr i8, i8* %98, i64 %sub, !dbg !4445
  %99 = load i8, i8* %arrayidx136, align 1, !dbg !4445, !tbaa !1604
  %conv137 = zext i8 %99 to i32, !dbg !4445
  %cmp138 = icmp eq i32 %conv137, 32, !dbg !4446
  br i1 %cmp138, label %if.then.146, label %lor.lhs.false.140, !dbg !4447

lor.lhs.false.140:                                ; preds = %land.lhs.true.135
  %100 = load i64, i64* %in, align 8, !dbg !4448, !tbaa !1601
  %sub141 = sub i64 %100, 1, !dbg !4450
  %101 = load i8*, i8** %databuf, align 8, !dbg !4451, !tbaa !1021
  %arrayidx142 = getelementptr i8, i8* %101, i64 %sub141, !dbg !4451
  %102 = load i8, i8* %arrayidx142, align 1, !dbg !4451, !tbaa !1604
  %conv143 = zext i8 %102 to i32, !dbg !4451
  %cmp144 = icmp eq i32 %conv143, 9, !dbg !4452
  br i1 %cmp144, label %if.then.146, label %if.end.148, !dbg !4453

if.then.146:                                      ; preds = %lor.lhs.false.140, %land.lhs.true.135
  %103 = load i64, i64* %odatalen, align 8, !dbg !4454, !tbaa !1601
  %add147 = add i64 %103, 2, !dbg !4454
  store i64 %add147, i64* %odatalen, align 8, !dbg !4454, !tbaa !1601
  br label %if.end.148, !dbg !4455

if.end.148:                                       ; preds = %if.then.146, %lor.lhs.false.140, %if.then.133
  %104 = load i32, i32* %crlf, align 4, !dbg !4456, !tbaa !1332
  %tobool149 = icmp ne i32 %104, 0, !dbg !4456
  br i1 %tobool149, label %if.then.150, label %if.else.152, !dbg !4458

if.then.150:                                      ; preds = %if.end.148
  %105 = load i64, i64* %odatalen, align 8, !dbg !4459, !tbaa !1601
  %add151 = add i64 %105, 2, !dbg !4459
  store i64 %add151, i64* %odatalen, align 8, !dbg !4459, !tbaa !1601
  br label %if.end.154, !dbg !4460

if.else.152:                                      ; preds = %if.end.148
  %106 = load i64, i64* %odatalen, align 8, !dbg !4461, !tbaa !1601
  %add153 = add i64 %106, 1, !dbg !4461
  store i64 %add153, i64* %odatalen, align 8, !dbg !4461, !tbaa !1601
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.150
  %107 = load i64, i64* %in, align 8, !dbg !4462, !tbaa !1601
  %108 = load i8*, i8** %databuf, align 8, !dbg !4464, !tbaa !1021
  %arrayidx155 = getelementptr i8, i8* %108, i64 %107, !dbg !4464
  %109 = load i8, i8* %arrayidx155, align 1, !dbg !4464, !tbaa !1604
  %conv156 = zext i8 %109 to i32, !dbg !4464
  %cmp157 = icmp eq i32 %conv156, 13, !dbg !4465
  br i1 %cmp157, label %if.then.159, label %if.else.161, !dbg !4466

if.then.159:                                      ; preds = %if.end.154
  %110 = load i64, i64* %in, align 8, !dbg !4467, !tbaa !1601
  %add160 = add i64 %110, 2, !dbg !4467
  store i64 %add160, i64* %in, align 8, !dbg !4467, !tbaa !1601
  br label %if.end.163, !dbg !4468

if.else.161:                                      ; preds = %if.end.154
  %111 = load i64, i64* %in, align 8, !dbg !4469, !tbaa !1601
  %inc162 = add i64 %111, 1, !dbg !4469
  store i64 %inc162, i64* %in, align 8, !dbg !4469, !tbaa !1601
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.189, !dbg !4470

if.else.164:                                      ; preds = %land.lhs.true.127, %land.lhs.true.122, %lor.lhs.false.118, %if.else.111
  %112 = load i64, i64* %in, align 8, !dbg !4471, !tbaa !1601
  %add165 = add i64 %112, 1, !dbg !4474
  %113 = load i64, i64* %datalen, align 8, !dbg !4475, !tbaa !1601
  %cmp166 = icmp ne i64 %add165, %113, !dbg !4476
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.185, !dbg !4477

land.lhs.true.168:                                ; preds = %if.else.164
  %114 = load i64, i64* %in, align 8, !dbg !4478, !tbaa !1601
  %add169 = add i64 %114, 1, !dbg !4479
  %115 = load i8*, i8** %databuf, align 8, !dbg !4480, !tbaa !1021
  %arrayidx170 = getelementptr i8, i8* %115, i64 %add169, !dbg !4480
  %116 = load i8, i8* %arrayidx170, align 1, !dbg !4480, !tbaa !1604
  %conv171 = zext i8 %116 to i32, !dbg !4480
  %cmp172 = icmp ne i32 %conv171, 10, !dbg !4481
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.185, !dbg !4482

land.lhs.true.174:                                ; preds = %land.lhs.true.168
  %117 = load i32, i32* %linelen, align 4, !dbg !4483, !tbaa !1332
  %add175 = add i32 %117, 1, !dbg !4484
  %cmp176 = icmp uge i32 %add175, 76, !dbg !4485
  br i1 %cmp176, label %if.then.178, label %if.end.185, !dbg !4486

if.then.178:                                      ; preds = %land.lhs.true.174
  store i32 0, i32* %linelen, align 4, !dbg !4487, !tbaa !1332
  %118 = load i32, i32* %crlf, align 4, !dbg !4489, !tbaa !1332
  %tobool179 = icmp ne i32 %118, 0, !dbg !4489
  br i1 %tobool179, label %if.then.180, label %if.else.182, !dbg !4491

if.then.180:                                      ; preds = %if.then.178
  %119 = load i64, i64* %odatalen, align 8, !dbg !4492, !tbaa !1601
  %add181 = add i64 %119, 3, !dbg !4492
  store i64 %add181, i64* %odatalen, align 8, !dbg !4492, !tbaa !1601
  br label %if.end.184, !dbg !4493

if.else.182:                                      ; preds = %if.then.178
  %120 = load i64, i64* %odatalen, align 8, !dbg !4494, !tbaa !1601
  %add183 = add i64 %120, 2, !dbg !4494
  store i64 %add183, i64* %odatalen, align 8, !dbg !4494, !tbaa !1601
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.182, %if.then.180
  br label %if.end.185, !dbg !4495

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.174, %land.lhs.true.168, %if.else.164
  %121 = load i32, i32* %linelen, align 4, !dbg !4496, !tbaa !1332
  %inc186 = add i32 %121, 1, !dbg !4496
  store i32 %inc186, i32* %linelen, align 4, !dbg !4496, !tbaa !1332
  %122 = load i64, i64* %odatalen, align 8, !dbg !4497, !tbaa !1601
  %inc187 = add i64 %122, 1, !dbg !4497
  store i64 %inc187, i64* %odatalen, align 8, !dbg !4497, !tbaa !1601
  %123 = load i64, i64* %in, align 8, !dbg !4498, !tbaa !1601
  %inc188 = add i64 %123, 1, !dbg !4498
  store i64 %inc188, i64* %in, align 8, !dbg !4498, !tbaa !1601
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.185, %if.end.163
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.108
  br label %while.cond, !dbg !4303

while.end:                                        ; preds = %while.cond
  %124 = load i64, i64* %odatalen, align 8, !dbg !4499, !tbaa !1601
  %call191 = call i8* @PyMem_Malloc(i64 %124), !dbg !4500
  store i8* %call191, i8** %odata, align 8, !dbg !4501, !tbaa !1021
  %125 = load i8*, i8** %odata, align 8, !dbg !4502, !tbaa !1021
  %cmp192 = icmp eq i8* %125, null, !dbg !4504
  br i1 %cmp192, label %if.then.194, label %if.end.196, !dbg !4505

if.then.194:                                      ; preds = %while.end
  %call195 = call %struct._object* @PyErr_NoMemory(), !dbg !4506
  store %struct._object* null, %struct._object** %retval, !dbg !4508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4508

if.end.196:                                       ; preds = %while.end
  %126 = load i8*, i8** %odata, align 8, !dbg !4509, !tbaa !1021
  %127 = load i64, i64* %odatalen, align 8, !dbg !4510, !tbaa !1601
  call void @llvm.memset.p0i8.i64(i8* %126, i8 0, i64 %127, i32 1, i1 false), !dbg !4511
  store i32 0, i32* %linelen, align 4, !dbg !4512, !tbaa !1332
  store i64 0, i64* %out, align 8, !dbg !4513, !tbaa !1601
  store i64 0, i64* %in, align 8, !dbg !4514, !tbaa !1601
  br label %while.cond.197, !dbg !4515

while.cond.197:                                   ; preds = %if.end.425, %if.end.196
  %128 = load i64, i64* %in, align 8, !dbg !4516, !tbaa !1601
  %129 = load i64, i64* %datalen, align 8, !dbg !4517, !tbaa !1601
  %cmp198 = icmp slt i64 %128, %129, !dbg !4518
  br i1 %cmp198, label %while.body.200, label %while.end.426, !dbg !4515

while.body.200:                                   ; preds = %while.cond.197
  %130 = load i64, i64* %in, align 8, !dbg !4519, !tbaa !1601
  %131 = load i8*, i8** %databuf, align 8, !dbg !4522, !tbaa !1021
  %arrayidx201 = getelementptr i8, i8* %131, i64 %130, !dbg !4522
  %132 = load i8, i8* %arrayidx201, align 1, !dbg !4522, !tbaa !1604
  %conv202 = zext i8 %132 to i32, !dbg !4522
  %cmp203 = icmp sgt i32 %conv202, 126, !dbg !4523
  br i1 %cmp203, label %if.then.298, label %lor.lhs.false.205, !dbg !4524

lor.lhs.false.205:                                ; preds = %while.body.200
  %133 = load i64, i64* %in, align 8, !dbg !4525, !tbaa !1601
  %134 = load i8*, i8** %databuf, align 8, !dbg !4526, !tbaa !1021
  %arrayidx206 = getelementptr i8, i8* %134, i64 %133, !dbg !4526
  %135 = load i8, i8* %arrayidx206, align 1, !dbg !4526, !tbaa !1604
  %conv207 = zext i8 %135 to i32, !dbg !4526
  %cmp208 = icmp eq i32 %conv207, 61, !dbg !4527
  br i1 %cmp208, label %if.then.298, label %lor.lhs.false.210, !dbg !4528

lor.lhs.false.210:                                ; preds = %lor.lhs.false.205
  %136 = load i32, i32* %header.addr, align 4, !dbg !4529, !tbaa !1332
  %tobool211 = icmp ne i32 %136, 0, !dbg !4529
  br i1 %tobool211, label %land.lhs.true.212, label %lor.lhs.false.217, !dbg !4530

land.lhs.true.212:                                ; preds = %lor.lhs.false.210
  %137 = load i64, i64* %in, align 8, !dbg !4531, !tbaa !1601
  %138 = load i8*, i8** %databuf, align 8, !dbg !4533, !tbaa !1021
  %arrayidx213 = getelementptr i8, i8* %138, i64 %137, !dbg !4533
  %139 = load i8, i8* %arrayidx213, align 1, !dbg !4533, !tbaa !1604
  %conv214 = zext i8 %139 to i32, !dbg !4533
  %cmp215 = icmp eq i32 %conv214, 95, !dbg !4534
  br i1 %cmp215, label %if.then.298, label %lor.lhs.false.217, !dbg !4535

lor.lhs.false.217:                                ; preds = %land.lhs.true.212, %lor.lhs.false.210
  %140 = load i64, i64* %in, align 8, !dbg !4536, !tbaa !1601
  %141 = load i8*, i8** %databuf, align 8, !dbg !4537, !tbaa !1021
  %arrayidx218 = getelementptr i8, i8* %141, i64 %140, !dbg !4537
  %142 = load i8, i8* %arrayidx218, align 1, !dbg !4537, !tbaa !1604
  %conv219 = zext i8 %142 to i32, !dbg !4537
  %cmp220 = icmp eq i32 %conv219, 46, !dbg !4538
  br i1 %cmp220, label %land.lhs.true.222, label %lor.lhs.false.243, !dbg !4539

land.lhs.true.222:                                ; preds = %lor.lhs.false.217
  %143 = load i32, i32* %linelen, align 4, !dbg !4540, !tbaa !1332
  %cmp223 = icmp eq i32 %143, 0, !dbg !4541
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.243, !dbg !4542

land.lhs.true.225:                                ; preds = %land.lhs.true.222
  %144 = load i64, i64* %in, align 8, !dbg !4543, !tbaa !1601
  %add226 = add i64 %144, 1, !dbg !4544
  %145 = load i8*, i8** %databuf, align 8, !dbg !4545, !tbaa !1021
  %arrayidx227 = getelementptr i8, i8* %145, i64 %add226, !dbg !4545
  %146 = load i8, i8* %arrayidx227, align 1, !dbg !4545, !tbaa !1604
  %conv228 = zext i8 %146 to i32, !dbg !4545
  %cmp229 = icmp eq i32 %conv228, 10, !dbg !4546
  br i1 %cmp229, label %if.then.298, label %lor.lhs.false.231, !dbg !4547

lor.lhs.false.231:                                ; preds = %land.lhs.true.225
  %147 = load i64, i64* %in, align 8, !dbg !4548, !tbaa !1601
  %add232 = add i64 %147, 1, !dbg !4549
  %148 = load i8*, i8** %databuf, align 8, !dbg !4550, !tbaa !1021
  %arrayidx233 = getelementptr i8, i8* %148, i64 %add232, !dbg !4550
  %149 = load i8, i8* %arrayidx233, align 1, !dbg !4550, !tbaa !1604
  %conv234 = zext i8 %149 to i32, !dbg !4550
  %cmp235 = icmp eq i32 %conv234, 13, !dbg !4551
  br i1 %cmp235, label %if.then.298, label %lor.lhs.false.237, !dbg !4552

lor.lhs.false.237:                                ; preds = %lor.lhs.false.231
  %150 = load i64, i64* %in, align 8, !dbg !4553, !tbaa !1601
  %add238 = add i64 %150, 1, !dbg !4555
  %151 = load i8*, i8** %databuf, align 8, !dbg !4556, !tbaa !1021
  %arrayidx239 = getelementptr i8, i8* %151, i64 %add238, !dbg !4556
  %152 = load i8, i8* %arrayidx239, align 1, !dbg !4556, !tbaa !1604
  %conv240 = zext i8 %152 to i32, !dbg !4556
  %cmp241 = icmp eq i32 %conv240, 0, !dbg !4557
  br i1 %cmp241, label %if.then.298, label %lor.lhs.false.243, !dbg !4558

lor.lhs.false.243:                                ; preds = %lor.lhs.false.237, %land.lhs.true.222, %lor.lhs.false.217
  %153 = load i32, i32* %istext.addr, align 4, !dbg !4559, !tbaa !1332
  %tobool244 = icmp ne i32 %153, 0, !dbg !4559
  br i1 %tobool244, label %lor.lhs.false.255, label %land.lhs.true.245, !dbg !4560

land.lhs.true.245:                                ; preds = %lor.lhs.false.243
  %154 = load i64, i64* %in, align 8, !dbg !4561, !tbaa !1601
  %155 = load i8*, i8** %databuf, align 8, !dbg !4562, !tbaa !1021
  %arrayidx246 = getelementptr i8, i8* %155, i64 %154, !dbg !4562
  %156 = load i8, i8* %arrayidx246, align 1, !dbg !4562, !tbaa !1604
  %conv247 = zext i8 %156 to i32, !dbg !4562
  %cmp248 = icmp eq i32 %conv247, 13, !dbg !4563
  br i1 %cmp248, label %if.then.298, label %lor.lhs.false.250, !dbg !4564

lor.lhs.false.250:                                ; preds = %land.lhs.true.245
  %157 = load i64, i64* %in, align 8, !dbg !4565, !tbaa !1601
  %158 = load i8*, i8** %databuf, align 8, !dbg !4566, !tbaa !1021
  %arrayidx251 = getelementptr i8, i8* %158, i64 %157, !dbg !4566
  %159 = load i8, i8* %arrayidx251, align 1, !dbg !4566, !tbaa !1604
  %conv252 = zext i8 %159 to i32, !dbg !4566
  %cmp253 = icmp eq i32 %conv252, 10, !dbg !4567
  br i1 %cmp253, label %if.then.298, label %lor.lhs.false.255, !dbg !4568

lor.lhs.false.255:                                ; preds = %lor.lhs.false.250, %lor.lhs.false.243
  %160 = load i64, i64* %in, align 8, !dbg !4569, !tbaa !1601
  %161 = load i8*, i8** %databuf, align 8, !dbg !4570, !tbaa !1021
  %arrayidx256 = getelementptr i8, i8* %161, i64 %160, !dbg !4570
  %162 = load i8, i8* %arrayidx256, align 1, !dbg !4570, !tbaa !1604
  %conv257 = zext i8 %162 to i32, !dbg !4570
  %cmp258 = icmp eq i32 %conv257, 9, !dbg !4571
  br i1 %cmp258, label %land.lhs.true.265, label %lor.lhs.false.260, !dbg !4572

lor.lhs.false.260:                                ; preds = %lor.lhs.false.255
  %163 = load i64, i64* %in, align 8, !dbg !4573, !tbaa !1601
  %164 = load i8*, i8** %databuf, align 8, !dbg !4574, !tbaa !1021
  %arrayidx261 = getelementptr i8, i8* %164, i64 %163, !dbg !4574
  %165 = load i8, i8* %arrayidx261, align 1, !dbg !4574, !tbaa !1604
  %conv262 = zext i8 %165 to i32, !dbg !4574
  %cmp263 = icmp eq i32 %conv262, 32, !dbg !4575
  br i1 %cmp263, label %land.lhs.true.265, label %lor.lhs.false.269, !dbg !4576

land.lhs.true.265:                                ; preds = %lor.lhs.false.260, %lor.lhs.false.255
  %166 = load i64, i64* %in, align 8, !dbg !4577, !tbaa !1601
  %add266 = add i64 %166, 1, !dbg !4579
  %167 = load i64, i64* %datalen, align 8, !dbg !4580, !tbaa !1601
  %cmp267 = icmp eq i64 %add266, %167, !dbg !4581
  br i1 %cmp267, label %if.then.298, label %lor.lhs.false.269, !dbg !4582

lor.lhs.false.269:                                ; preds = %land.lhs.true.265, %lor.lhs.false.260
  %168 = load i64, i64* %in, align 8, !dbg !4583, !tbaa !1601
  %169 = load i8*, i8** %databuf, align 8, !dbg !4584, !tbaa !1021
  %arrayidx270 = getelementptr i8, i8* %169, i64 %168, !dbg !4584
  %170 = load i8, i8* %arrayidx270, align 1, !dbg !4584, !tbaa !1604
  %conv271 = zext i8 %170 to i32, !dbg !4584
  %cmp272 = icmp slt i32 %conv271, 33, !dbg !4585
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.321, !dbg !4586

land.lhs.true.274:                                ; preds = %lor.lhs.false.269
  %171 = load i64, i64* %in, align 8, !dbg !4587, !tbaa !1601
  %172 = load i8*, i8** %databuf, align 8, !dbg !4588, !tbaa !1021
  %arrayidx275 = getelementptr i8, i8* %172, i64 %171, !dbg !4588
  %173 = load i8, i8* %arrayidx275, align 1, !dbg !4588, !tbaa !1604
  %conv276 = zext i8 %173 to i32, !dbg !4588
  %cmp277 = icmp ne i32 %conv276, 13, !dbg !4589
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.321, !dbg !4590

land.lhs.true.279:                                ; preds = %land.lhs.true.274
  %174 = load i64, i64* %in, align 8, !dbg !4591, !tbaa !1601
  %175 = load i8*, i8** %databuf, align 8, !dbg !4592, !tbaa !1021
  %arrayidx280 = getelementptr i8, i8* %175, i64 %174, !dbg !4592
  %176 = load i8, i8* %arrayidx280, align 1, !dbg !4592, !tbaa !1604
  %conv281 = zext i8 %176 to i32, !dbg !4592
  %cmp282 = icmp ne i32 %conv281, 10, !dbg !4593
  br i1 %cmp282, label %land.lhs.true.284, label %if.else.321, !dbg !4594

land.lhs.true.284:                                ; preds = %land.lhs.true.279
  %177 = load i32, i32* %quotetabs.addr, align 4, !dbg !4595, !tbaa !1332
  %tobool285 = icmp ne i32 %177, 0, !dbg !4595
  br i1 %tobool285, label %if.then.298, label %lor.lhs.false.286, !dbg !4596

lor.lhs.false.286:                                ; preds = %land.lhs.true.284
  %178 = load i32, i32* %quotetabs.addr, align 4, !dbg !4597, !tbaa !1332
  %tobool287 = icmp ne i32 %178, 0, !dbg !4597
  br i1 %tobool287, label %if.else.321, label %land.lhs.true.288, !dbg !4598

land.lhs.true.288:                                ; preds = %lor.lhs.false.286
  %179 = load i64, i64* %in, align 8, !dbg !4599, !tbaa !1601
  %180 = load i8*, i8** %databuf, align 8, !dbg !4600, !tbaa !1021
  %arrayidx289 = getelementptr i8, i8* %180, i64 %179, !dbg !4600
  %181 = load i8, i8* %arrayidx289, align 1, !dbg !4600, !tbaa !1604
  %conv290 = zext i8 %181 to i32, !dbg !4600
  %cmp291 = icmp ne i32 %conv290, 9, !dbg !4601
  br i1 %cmp291, label %land.lhs.true.293, label %if.else.321, !dbg !4602

land.lhs.true.293:                                ; preds = %land.lhs.true.288
  %182 = load i64, i64* %in, align 8, !dbg !4603, !tbaa !1601
  %183 = load i8*, i8** %databuf, align 8, !dbg !4604, !tbaa !1021
  %arrayidx294 = getelementptr i8, i8* %183, i64 %182, !dbg !4604
  %184 = load i8, i8* %arrayidx294, align 1, !dbg !4604, !tbaa !1604
  %conv295 = zext i8 %184 to i32, !dbg !4604
  %cmp296 = icmp ne i32 %conv295, 32, !dbg !4605
  br i1 %cmp296, label %if.then.298, label %if.else.321, !dbg !4606

if.then.298:                                      ; preds = %land.lhs.true.293, %land.lhs.true.284, %land.lhs.true.265, %lor.lhs.false.250, %land.lhs.true.245, %lor.lhs.false.237, %lor.lhs.false.231, %land.lhs.true.225, %land.lhs.true.212, %lor.lhs.false.205, %while.body.200
  %185 = load i32, i32* %linelen, align 4, !dbg !4607, !tbaa !1332
  %add299 = add i32 %185, 3, !dbg !4610
  %cmp300 = icmp uge i32 %add299, 76, !dbg !4611
  br i1 %cmp300, label %if.then.302, label %if.end.312, !dbg !4612

if.then.302:                                      ; preds = %if.then.298
  %186 = load i64, i64* %out, align 8, !dbg !4613, !tbaa !1601
  %inc303 = add i64 %186, 1, !dbg !4613
  store i64 %inc303, i64* %out, align 8, !dbg !4613, !tbaa !1601
  %187 = load i8*, i8** %odata, align 8, !dbg !4615, !tbaa !1021
  %arrayidx304 = getelementptr i8, i8* %187, i64 %186, !dbg !4615
  store i8 61, i8* %arrayidx304, align 1, !dbg !4616, !tbaa !1604
  %188 = load i32, i32* %crlf, align 4, !dbg !4617, !tbaa !1332
  %tobool305 = icmp ne i32 %188, 0, !dbg !4617
  br i1 %tobool305, label %if.then.306, label %if.end.309, !dbg !4619

if.then.306:                                      ; preds = %if.then.302
  %189 = load i64, i64* %out, align 8, !dbg !4620, !tbaa !1601
  %inc307 = add i64 %189, 1, !dbg !4620
  store i64 %inc307, i64* %out, align 8, !dbg !4620, !tbaa !1601
  %190 = load i8*, i8** %odata, align 8, !dbg !4622, !tbaa !1021
  %arrayidx308 = getelementptr i8, i8* %190, i64 %189, !dbg !4622
  store i8 13, i8* %arrayidx308, align 1, !dbg !4623, !tbaa !1604
  br label %if.end.309, !dbg !4622

if.end.309:                                       ; preds = %if.then.306, %if.then.302
  %191 = load i64, i64* %out, align 8, !dbg !4624, !tbaa !1601
  %inc310 = add i64 %191, 1, !dbg !4624
  store i64 %inc310, i64* %out, align 8, !dbg !4624, !tbaa !1601
  %192 = load i8*, i8** %odata, align 8, !dbg !4625, !tbaa !1021
  %arrayidx311 = getelementptr i8, i8* %192, i64 %191, !dbg !4625
  store i8 10, i8* %arrayidx311, align 1, !dbg !4626, !tbaa !1604
  store i32 0, i32* %linelen, align 4, !dbg !4627, !tbaa !1332
  br label %if.end.312, !dbg !4628

if.end.312:                                       ; preds = %if.end.309, %if.then.298
  %193 = load i64, i64* %out, align 8, !dbg !4629, !tbaa !1601
  %inc313 = add i64 %193, 1, !dbg !4629
  store i64 %inc313, i64* %out, align 8, !dbg !4629, !tbaa !1601
  %194 = load i8*, i8** %odata, align 8, !dbg !4630, !tbaa !1021
  %arrayidx314 = getelementptr i8, i8* %194, i64 %193, !dbg !4630
  store i8 61, i8* %arrayidx314, align 1, !dbg !4631, !tbaa !1604
  %195 = load i64, i64* %in, align 8, !dbg !4632, !tbaa !1601
  %196 = load i8*, i8** %databuf, align 8, !dbg !4633, !tbaa !1021
  %arrayidx315 = getelementptr i8, i8* %196, i64 %195, !dbg !4633
  %197 = load i8, i8* %arrayidx315, align 1, !dbg !4633, !tbaa !1604
  %198 = load i64, i64* %out, align 8, !dbg !4634, !tbaa !1601
  %199 = load i8*, i8** %odata, align 8, !dbg !4635, !tbaa !1021
  %arrayidx316 = getelementptr i8, i8* %199, i64 %198, !dbg !4635
  %call317 = call i32 @to_hex(i8 zeroext %197, i8* %arrayidx316), !dbg !4636
  %200 = load i64, i64* %out, align 8, !dbg !4637, !tbaa !1601
  %add318 = add i64 %200, 2, !dbg !4637
  store i64 %add318, i64* %out, align 8, !dbg !4637, !tbaa !1601
  %201 = load i64, i64* %in, align 8, !dbg !4638, !tbaa !1601
  %inc319 = add i64 %201, 1, !dbg !4638
  store i64 %inc319, i64* %in, align 8, !dbg !4638, !tbaa !1601
  %202 = load i32, i32* %linelen, align 4, !dbg !4639, !tbaa !1332
  %add320 = add i32 %202, 3, !dbg !4639
  store i32 %add320, i32* %linelen, align 4, !dbg !4639, !tbaa !1332
  br label %if.end.425, !dbg !4640

if.else.321:                                      ; preds = %land.lhs.true.293, %land.lhs.true.288, %lor.lhs.false.286, %land.lhs.true.279, %land.lhs.true.274, %lor.lhs.false.269
  %203 = load i32, i32* %istext.addr, align 4, !dbg !4641, !tbaa !1332
  %tobool322 = icmp ne i32 %203, 0, !dbg !4641
  br i1 %tobool322, label %land.lhs.true.323, label %if.else.382, !dbg !4644

land.lhs.true.323:                                ; preds = %if.else.321
  %204 = load i64, i64* %in, align 8, !dbg !4645, !tbaa !1601
  %205 = load i8*, i8** %databuf, align 8, !dbg !4646, !tbaa !1021
  %arrayidx324 = getelementptr i8, i8* %205, i64 %204, !dbg !4646
  %206 = load i8, i8* %arrayidx324, align 1, !dbg !4646, !tbaa !1604
  %conv325 = zext i8 %206 to i32, !dbg !4646
  %cmp326 = icmp eq i32 %conv325, 10, !dbg !4647
  br i1 %cmp326, label %if.then.343, label %lor.lhs.false.328, !dbg !4648

lor.lhs.false.328:                                ; preds = %land.lhs.true.323
  %207 = load i64, i64* %in, align 8, !dbg !4649, !tbaa !1601
  %add329 = add i64 %207, 1, !dbg !4650
  %208 = load i64, i64* %datalen, align 8, !dbg !4651, !tbaa !1601
  %cmp330 = icmp slt i64 %add329, %208, !dbg !4652
  br i1 %cmp330, label %land.lhs.true.332, label %if.else.382, !dbg !4653

land.lhs.true.332:                                ; preds = %lor.lhs.false.328
  %209 = load i64, i64* %in, align 8, !dbg !4654, !tbaa !1601
  %210 = load i8*, i8** %databuf, align 8, !dbg !4656, !tbaa !1021
  %arrayidx333 = getelementptr i8, i8* %210, i64 %209, !dbg !4656
  %211 = load i8, i8* %arrayidx333, align 1, !dbg !4656, !tbaa !1604
  %conv334 = zext i8 %211 to i32, !dbg !4656
  %cmp335 = icmp eq i32 %conv334, 13, !dbg !4657
  br i1 %cmp335, label %land.lhs.true.337, label %if.else.382, !dbg !4658

land.lhs.true.337:                                ; preds = %land.lhs.true.332
  %212 = load i64, i64* %in, align 8, !dbg !4659, !tbaa !1601
  %add338 = add i64 %212, 1, !dbg !4660
  %213 = load i8*, i8** %databuf, align 8, !dbg !4661, !tbaa !1021
  %arrayidx339 = getelementptr i8, i8* %213, i64 %add338, !dbg !4661
  %214 = load i8, i8* %arrayidx339, align 1, !dbg !4661, !tbaa !1604
  %conv340 = zext i8 %214 to i32, !dbg !4661
  %cmp341 = icmp eq i32 %conv340, 10, !dbg !4662
  br i1 %cmp341, label %if.then.343, label %if.else.382, !dbg !4663

if.then.343:                                      ; preds = %land.lhs.true.337, %land.lhs.true.323
  store i32 0, i32* %linelen, align 4, !dbg !4664, !tbaa !1332
  %215 = load i64, i64* %out, align 8, !dbg !4666, !tbaa !1601
  %tobool344 = icmp ne i64 %215, 0, !dbg !4666
  br i1 %tobool344, label %land.lhs.true.345, label %if.end.365, !dbg !4668

land.lhs.true.345:                                ; preds = %if.then.343
  %216 = load i64, i64* %out, align 8, !dbg !4669, !tbaa !1601
  %sub346 = sub i64 %216, 1, !dbg !4671
  %217 = load i8*, i8** %odata, align 8, !dbg !4672, !tbaa !1021
  %arrayidx347 = getelementptr i8, i8* %217, i64 %sub346, !dbg !4672
  %218 = load i8, i8* %arrayidx347, align 1, !dbg !4672, !tbaa !1604
  %conv348 = zext i8 %218 to i32, !dbg !4672
  %cmp349 = icmp eq i32 %conv348, 32, !dbg !4673
  br i1 %cmp349, label %if.then.357, label %lor.lhs.false.351, !dbg !4674

lor.lhs.false.351:                                ; preds = %land.lhs.true.345
  %219 = load i64, i64* %out, align 8, !dbg !4675, !tbaa !1601
  %sub352 = sub i64 %219, 1, !dbg !4677
  %220 = load i8*, i8** %odata, align 8, !dbg !4678, !tbaa !1021
  %arrayidx353 = getelementptr i8, i8* %220, i64 %sub352, !dbg !4678
  %221 = load i8, i8* %arrayidx353, align 1, !dbg !4678, !tbaa !1604
  %conv354 = zext i8 %221 to i32, !dbg !4678
  %cmp355 = icmp eq i32 %conv354, 9, !dbg !4679
  br i1 %cmp355, label %if.then.357, label %if.end.365, !dbg !4680

if.then.357:                                      ; preds = %lor.lhs.false.351, %land.lhs.true.345
  %222 = load i64, i64* %out, align 8, !dbg !4681, !tbaa !1601
  %sub358 = sub i64 %222, 1, !dbg !4683
  %223 = load i8*, i8** %odata, align 8, !dbg !4684, !tbaa !1021
  %arrayidx359 = getelementptr i8, i8* %223, i64 %sub358, !dbg !4684
  %224 = load i8, i8* %arrayidx359, align 1, !dbg !4684, !tbaa !1604
  store i8 %224, i8* %ch, align 1, !dbg !4685, !tbaa !1604
  %225 = load i64, i64* %out, align 8, !dbg !4686, !tbaa !1601
  %sub360 = sub i64 %225, 1, !dbg !4687
  %226 = load i8*, i8** %odata, align 8, !dbg !4688, !tbaa !1021
  %arrayidx361 = getelementptr i8, i8* %226, i64 %sub360, !dbg !4688
  store i8 61, i8* %arrayidx361, align 1, !dbg !4689, !tbaa !1604
  %227 = load i8, i8* %ch, align 1, !dbg !4690, !tbaa !1604
  %228 = load i64, i64* %out, align 8, !dbg !4691, !tbaa !1601
  %229 = load i8*, i8** %odata, align 8, !dbg !4692, !tbaa !1021
  %arrayidx362 = getelementptr i8, i8* %229, i64 %228, !dbg !4692
  %call363 = call i32 @to_hex(i8 zeroext %227, i8* %arrayidx362), !dbg !4693
  %230 = load i64, i64* %out, align 8, !dbg !4694, !tbaa !1601
  %add364 = add i64 %230, 2, !dbg !4694
  store i64 %add364, i64* %out, align 8, !dbg !4694, !tbaa !1601
  br label %if.end.365, !dbg !4695

if.end.365:                                       ; preds = %if.then.357, %lor.lhs.false.351, %if.then.343
  %231 = load i32, i32* %crlf, align 4, !dbg !4696, !tbaa !1332
  %tobool366 = icmp ne i32 %231, 0, !dbg !4696
  br i1 %tobool366, label %if.then.367, label %if.end.370, !dbg !4698

if.then.367:                                      ; preds = %if.end.365
  %232 = load i64, i64* %out, align 8, !dbg !4699, !tbaa !1601
  %inc368 = add i64 %232, 1, !dbg !4699
  store i64 %inc368, i64* %out, align 8, !dbg !4699, !tbaa !1601
  %233 = load i8*, i8** %odata, align 8, !dbg !4701, !tbaa !1021
  %arrayidx369 = getelementptr i8, i8* %233, i64 %232, !dbg !4701
  store i8 13, i8* %arrayidx369, align 1, !dbg !4702, !tbaa !1604
  br label %if.end.370, !dbg !4701

if.end.370:                                       ; preds = %if.then.367, %if.end.365
  %234 = load i64, i64* %out, align 8, !dbg !4703, !tbaa !1601
  %inc371 = add i64 %234, 1, !dbg !4703
  store i64 %inc371, i64* %out, align 8, !dbg !4703, !tbaa !1601
  %235 = load i8*, i8** %odata, align 8, !dbg !4704, !tbaa !1021
  %arrayidx372 = getelementptr i8, i8* %235, i64 %234, !dbg !4704
  store i8 10, i8* %arrayidx372, align 1, !dbg !4705, !tbaa !1604
  %236 = load i64, i64* %in, align 8, !dbg !4706, !tbaa !1601
  %237 = load i8*, i8** %databuf, align 8, !dbg !4708, !tbaa !1021
  %arrayidx373 = getelementptr i8, i8* %237, i64 %236, !dbg !4708
  %238 = load i8, i8* %arrayidx373, align 1, !dbg !4708, !tbaa !1604
  %conv374 = zext i8 %238 to i32, !dbg !4708
  %cmp375 = icmp eq i32 %conv374, 13, !dbg !4709
  br i1 %cmp375, label %if.then.377, label %if.else.379, !dbg !4710

if.then.377:                                      ; preds = %if.end.370
  %239 = load i64, i64* %in, align 8, !dbg !4711, !tbaa !1601
  %add378 = add i64 %239, 2, !dbg !4711
  store i64 %add378, i64* %in, align 8, !dbg !4711, !tbaa !1601
  br label %if.end.381, !dbg !4712

if.else.379:                                      ; preds = %if.end.370
  %240 = load i64, i64* %in, align 8, !dbg !4713, !tbaa !1601
  %inc380 = add i64 %240, 1, !dbg !4713
  store i64 %inc380, i64* %in, align 8, !dbg !4713, !tbaa !1601
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.377
  br label %if.end.424, !dbg !4714

if.else.382:                                      ; preds = %land.lhs.true.337, %land.lhs.true.332, %lor.lhs.false.328, %if.else.321
  %241 = load i64, i64* %in, align 8, !dbg !4715, !tbaa !1601
  %add383 = add i64 %241, 1, !dbg !4718
  %242 = load i64, i64* %datalen, align 8, !dbg !4719, !tbaa !1601
  %cmp384 = icmp ne i64 %add383, %242, !dbg !4720
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.406, !dbg !4721

land.lhs.true.386:                                ; preds = %if.else.382
  %243 = load i64, i64* %in, align 8, !dbg !4722, !tbaa !1601
  %add387 = add i64 %243, 1, !dbg !4723
  %244 = load i8*, i8** %databuf, align 8, !dbg !4724, !tbaa !1021
  %arrayidx388 = getelementptr i8, i8* %244, i64 %add387, !dbg !4724
  %245 = load i8, i8* %arrayidx388, align 1, !dbg !4724, !tbaa !1604
  %conv389 = zext i8 %245 to i32, !dbg !4724
  %cmp390 = icmp ne i32 %conv389, 10, !dbg !4725
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.406, !dbg !4726

land.lhs.true.392:                                ; preds = %land.lhs.true.386
  %246 = load i32, i32* %linelen, align 4, !dbg !4727, !tbaa !1332
  %add393 = add i32 %246, 1, !dbg !4728
  %cmp394 = icmp uge i32 %add393, 76, !dbg !4729
  br i1 %cmp394, label %if.then.396, label %if.end.406, !dbg !4730

if.then.396:                                      ; preds = %land.lhs.true.392
  %247 = load i64, i64* %out, align 8, !dbg !4731, !tbaa !1601
  %inc397 = add i64 %247, 1, !dbg !4731
  store i64 %inc397, i64* %out, align 8, !dbg !4731, !tbaa !1601
  %248 = load i8*, i8** %odata, align 8, !dbg !4733, !tbaa !1021
  %arrayidx398 = getelementptr i8, i8* %248, i64 %247, !dbg !4733
  store i8 61, i8* %arrayidx398, align 1, !dbg !4734, !tbaa !1604
  %249 = load i32, i32* %crlf, align 4, !dbg !4735, !tbaa !1332
  %tobool399 = icmp ne i32 %249, 0, !dbg !4735
  br i1 %tobool399, label %if.then.400, label %if.end.403, !dbg !4737

if.then.400:                                      ; preds = %if.then.396
  %250 = load i64, i64* %out, align 8, !dbg !4738, !tbaa !1601
  %inc401 = add i64 %250, 1, !dbg !4738
  store i64 %inc401, i64* %out, align 8, !dbg !4738, !tbaa !1601
  %251 = load i8*, i8** %odata, align 8, !dbg !4740, !tbaa !1021
  %arrayidx402 = getelementptr i8, i8* %251, i64 %250, !dbg !4740
  store i8 13, i8* %arrayidx402, align 1, !dbg !4741, !tbaa !1604
  br label %if.end.403, !dbg !4740

if.end.403:                                       ; preds = %if.then.400, %if.then.396
  %252 = load i64, i64* %out, align 8, !dbg !4742, !tbaa !1601
  %inc404 = add i64 %252, 1, !dbg !4742
  store i64 %inc404, i64* %out, align 8, !dbg !4742, !tbaa !1601
  %253 = load i8*, i8** %odata, align 8, !dbg !4743, !tbaa !1021
  %arrayidx405 = getelementptr i8, i8* %253, i64 %252, !dbg !4743
  store i8 10, i8* %arrayidx405, align 1, !dbg !4744, !tbaa !1604
  store i32 0, i32* %linelen, align 4, !dbg !4745, !tbaa !1332
  br label %if.end.406, !dbg !4746

if.end.406:                                       ; preds = %if.end.403, %land.lhs.true.392, %land.lhs.true.386, %if.else.382
  %254 = load i32, i32* %linelen, align 4, !dbg !4747, !tbaa !1332
  %inc407 = add i32 %254, 1, !dbg !4747
  store i32 %inc407, i32* %linelen, align 4, !dbg !4747, !tbaa !1332
  %255 = load i32, i32* %header.addr, align 4, !dbg !4748, !tbaa !1332
  %tobool408 = icmp ne i32 %255, 0, !dbg !4748
  br i1 %tobool408, label %land.lhs.true.409, label %if.else.418, !dbg !4750

land.lhs.true.409:                                ; preds = %if.end.406
  %256 = load i64, i64* %in, align 8, !dbg !4751, !tbaa !1601
  %257 = load i8*, i8** %databuf, align 8, !dbg !4753, !tbaa !1021
  %arrayidx410 = getelementptr i8, i8* %257, i64 %256, !dbg !4753
  %258 = load i8, i8* %arrayidx410, align 1, !dbg !4753, !tbaa !1604
  %conv411 = zext i8 %258 to i32, !dbg !4753
  %cmp412 = icmp eq i32 %conv411, 32, !dbg !4754
  br i1 %cmp412, label %if.then.414, label %if.else.418, !dbg !4755

if.then.414:                                      ; preds = %land.lhs.true.409
  %259 = load i64, i64* %out, align 8, !dbg !4756, !tbaa !1601
  %inc415 = add i64 %259, 1, !dbg !4756
  store i64 %inc415, i64* %out, align 8, !dbg !4756, !tbaa !1601
  %260 = load i8*, i8** %odata, align 8, !dbg !4758, !tbaa !1021
  %arrayidx416 = getelementptr i8, i8* %260, i64 %259, !dbg !4758
  store i8 95, i8* %arrayidx416, align 1, !dbg !4759, !tbaa !1604
  %261 = load i64, i64* %in, align 8, !dbg !4760, !tbaa !1601
  %inc417 = add i64 %261, 1, !dbg !4760
  store i64 %inc417, i64* %in, align 8, !dbg !4760, !tbaa !1601
  br label %if.end.423, !dbg !4761

if.else.418:                                      ; preds = %land.lhs.true.409, %if.end.406
  %262 = load i64, i64* %in, align 8, !dbg !4762, !tbaa !1601
  %inc419 = add i64 %262, 1, !dbg !4762
  store i64 %inc419, i64* %in, align 8, !dbg !4762, !tbaa !1601
  %263 = load i8*, i8** %databuf, align 8, !dbg !4764, !tbaa !1021
  %arrayidx420 = getelementptr i8, i8* %263, i64 %262, !dbg !4764
  %264 = load i8, i8* %arrayidx420, align 1, !dbg !4764, !tbaa !1604
  %265 = load i64, i64* %out, align 8, !dbg !4765, !tbaa !1601
  %inc421 = add i64 %265, 1, !dbg !4765
  store i64 %inc421, i64* %out, align 8, !dbg !4765, !tbaa !1601
  %266 = load i8*, i8** %odata, align 8, !dbg !4766, !tbaa !1021
  %arrayidx422 = getelementptr i8, i8* %266, i64 %265, !dbg !4766
  store i8 %264, i8* %arrayidx422, align 1, !dbg !4767, !tbaa !1604
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.418, %if.then.414
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.381
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.end.312
  br label %while.cond.197, !dbg !4515

while.end.426:                                    ; preds = %while.cond.197
  %267 = load i8*, i8** %odata, align 8, !dbg !4768, !tbaa !1021
  %268 = load i64, i64* %out, align 8, !dbg !4770, !tbaa !1601
  %call427 = call %struct._object* @PyBytes_FromStringAndSize(i8* %267, i64 %268), !dbg !4771
  store %struct._object* %call427, %struct._object** %rv, align 8, !dbg !4772, !tbaa !1021
  %cmp428 = icmp eq %struct._object* %call427, null, !dbg !4773
  br i1 %cmp428, label %if.then.430, label %if.end.431, !dbg !4774

if.then.430:                                      ; preds = %while.end.426
  %269 = load i8*, i8** %odata, align 8, !dbg !4775, !tbaa !1021
  call void @PyMem_Free(i8* %269), !dbg !4777
  store %struct._object* null, %struct._object** %retval, !dbg !4778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4778

if.end.431:                                       ; preds = %while.end.426
  %270 = load i8*, i8** %odata, align 8, !dbg !4779, !tbaa !1021
  call void @PyMem_Free(i8* %270), !dbg !4780
  %271 = load %struct._object*, %struct._object** %rv, align 8, !dbg !4781, !tbaa !1021
  store %struct._object* %271, %struct._object** %retval, !dbg !4782
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4782

cleanup:                                          ; preds = %if.end.431, %if.then.430, %if.then.194
  %272 = bitcast i8** %p to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %272) #1, !dbg !4783
  %273 = bitcast i32* %crlf to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 4, i8* %273) #1, !dbg !4783
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1, !dbg !4783
  %274 = bitcast i32* %linelen to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 4, i8* %274) #1, !dbg !4783
  %275 = bitcast %struct._object** %rv to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %275) #1, !dbg !4783
  %276 = bitcast i64* %odatalen to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %276) #1, !dbg !4783
  %277 = bitcast i64* %datalen to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %277) #1, !dbg !4783
  %278 = bitcast i8** %odata to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %278) #1, !dbg !4783
  %279 = bitcast i8** %databuf to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %279) #1, !dbg !4783
  %280 = bitcast i64* %out to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %280) #1, !dbg !4783
  %281 = bitcast i64* %in to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 8, i8* %281) #1, !dbg !4783
  %282 = load %struct._object*, %struct._object** %retval, !dbg !4783
  ret %struct._object* %282, !dbg !4783
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @to_hex(i8 zeroext %ch, i8* %s) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %uvalue = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !1604
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !920, metadata !1016), !dbg !4784
  store i8* %s, i8** %s.addr, align 8, !tbaa !1021
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !921, metadata !1016), !dbg !4785
  %0 = bitcast i32* %uvalue to i8*, !dbg !4786
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4786
  call void @llvm.dbg.declare(metadata i32* %uvalue, metadata !922, metadata !1016), !dbg !4787
  %1 = load i8, i8* %ch.addr, align 1, !dbg !4788, !tbaa !1604
  %conv = zext i8 %1 to i32, !dbg !4788
  store i32 %conv, i32* %uvalue, align 4, !dbg !4787, !tbaa !1332
  %2 = load i32, i32* %uvalue, align 4, !dbg !4789, !tbaa !1332
  %rem = urem i32 %2, 16, !dbg !4790
  %idxprom = zext i32 %rem to i64, !dbg !4791
  %arrayidx = getelementptr [17 x i8], [17 x i8]* @.str.53, i32 0, i64 %idxprom, !dbg !4791
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4791, !tbaa !1604
  %4 = load i8*, i8** %s.addr, align 8, !dbg !4792, !tbaa !1021
  %arrayidx1 = getelementptr i8, i8* %4, i64 1, !dbg !4792
  store i8 %3, i8* %arrayidx1, align 1, !dbg !4793, !tbaa !1604
  %5 = load i32, i32* %uvalue, align 4, !dbg !4794, !tbaa !1332
  %div = udiv i32 %5, 16, !dbg !4795
  store i32 %div, i32* %uvalue, align 4, !dbg !4796, !tbaa !1332
  %6 = load i32, i32* %uvalue, align 4, !dbg !4797, !tbaa !1332
  %rem2 = urem i32 %6, 16, !dbg !4798
  %idxprom3 = zext i32 %rem2 to i64, !dbg !4799
  %arrayidx4 = getelementptr [17 x i8], [17 x i8]* @.str.53, i32 0, i64 %idxprom3, !dbg !4799
  %7 = load i8, i8* %arrayidx4, align 1, !dbg !4799, !tbaa !1604
  %8 = load i8*, i8** %s.addr, align 8, !dbg !4800, !tbaa !1021
  %arrayidx5 = getelementptr i8, i8* %8, i64 0, !dbg !4800
  store i8 %7, i8* %arrayidx5, align 1, !dbg !4801, !tbaa !1604
  %9 = bitcast i32* %uvalue to i8*, !dbg !4802
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !4802
  ret i32 0, !dbg !4803
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1011, !1012, !1013}
!llvm.ident = !{!1014}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !401, globals: !923)
!1 = !DIFile(filename: "binascii.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !362, !365, !373, !389, !390, !11, !94, !364, !17, !341, !44, !96, !398, !52}
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
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !345, line: 351, baseType: !346)
!345 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 217, size: 384, align: 64, elements: !347)
!347 = !{!348, !349, !350, !351, !359}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 291, baseType: !6, size: 128, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !346, file: !345, line: 292, baseType: !11, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !346, file: !345, line: 293, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !345, line: 349, baseType: !352, size: 32, align: 32, offset: 256)
!352 = !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !345, line: 294, size: 32, align: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !352, file: !345, line: 303, baseType: !341, size: 2, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !352, file: !345, line: 331, baseType: !341, size: 3, align: 32, offset: 2)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !352, file: !345, line: 336, baseType: !341, size: 1, align: 32, offset: 5)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !352, file: !345, line: 340, baseType: !341, size: 1, align: 32, offset: 6)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !352, file: !345, line: 345, baseType: !341, size: 1, align: 32, offset: 7)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !346, file: !345, line: 350, baseType: !360, size: 64, align: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !44)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !345, line: 134, baseType: !364)
!364 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !345, line: 363, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 356, size: 576, align: 64, elements: !368)
!368 = !{!369, !370, !371, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !367, file: !345, line: 357, baseType: !344, size: 384, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !367, file: !345, line: 358, baseType: !11, size: 64, align: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !367, file: !345, line: 360, baseType: !52, size: 64, align: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !367, file: !345, line: 361, baseType: !11, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !345, line: 376, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 368, size: 640, align: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !375, file: !345, line: 369, baseType: !366, size: 576, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !375, file: !345, line: 375, baseType: !379, size: 64, align: 64, offset: 576)
!379 = !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !345, line: 370, size: 64, align: 64, elements: !380)
!380 = !{!381, !382, !383, !386}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !379, file: !345, line: 371, baseType: !4, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !379, file: !345, line: 372, baseType: !362, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !379, file: !345, line: 373, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !345, line: 129, baseType: !77)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !379, file: !345, line: 374, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !345, line: 121, baseType: !341)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !392, line: 41, baseType: !393)
!392 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!393 = !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 31, size: 320, align: 64, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !393, file: !392, line: 32, baseType: !23, size: 192, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !393, file: !392, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !393, file: !392, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !400, line: 365, baseType: !364)
!400 = !DIFile(filename: "/usr/include/zconf.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!401 = !{!402, !413, !446, !452, !480, !486, !505, !511, !541, !551, !557, !576, !582, !618, !624, !643, !649, !666, !671, !677, !691, !697, !716, !722, !826, !834, !844, !852, !862, !872, !886, !896, !916}
!402 = !DISubprogram(name: "PyInit_binascii", scope: !403, file: !403, line: 1569, type: !404, isLocal: false, isDefinition: true, scopeLine: 1570, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_binascii, variables: !406)
!403 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/binascii.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!404 = !DISubroutineType(types: !405)
!405 = !{!5}
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !402, file: !403, line: 1571, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !402, file: !403, line: 1571, type: !5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !410, file: !403, line: 1585, type: !5)
!410 = distinct !DILexicalBlock(scope: !411, file: !403, line: 1585, column: 12)
!411 = distinct !DILexicalBlock(scope: !412, file: !403, line: 1584, column: 27)
!412 = distinct !DILexicalBlock(scope: !402, file: !403, line: 1584, column: 9)
!413 = !DISubprogram(name: "binascii_a2b_uu", scope: !414, file: !414, line: 18, type: !415, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_uu, variables: !441)
!414 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/clinic/binascii.c.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!415 = !DISubroutineType(types: !416)
!416 = !{!5, !417, !5}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !419, line: 57, baseType: !420)
!419 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !419, line: 47, size: 832, align: 64, elements: !421)
!421 = !{!422, !431, !432, !433, !434, !437, !438, !439, !440}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !420, file: !419, line: 48, baseType: !423, size: 320, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !419, line: 38, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !419, line: 33, size: 320, align: 64, elements: !425)
!425 = !{!426, !427, !429, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !424, file: !419, line: 34, baseType: !6, size: 128, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !424, file: !419, line: 35, baseType: !428, size: 64, align: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !424, file: !419, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !424, file: !419, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !420, file: !419, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !420, file: !419, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !420, file: !419, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !420, file: !419, line: 52, baseType: !435, size: 64, align: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !420, file: !419, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !420, file: !419, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !420, file: !419, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !420, file: !419, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!441 = !{!442, !443, !444, !445}
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !413, file: !414, line: 18, type: !417)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !413, file: !414, line: 18, type: !5)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !413, file: !414, line: 20, type: !5)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !413, file: !414, line: 21, type: !236)
!446 = !DISubprogram(name: "ascii_buffer_converter", scope: !403, file: !403, line: 208, type: !447, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.bufferinfo*)* @ascii_buffer_converter, variables: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!44, !5, !235}
!449 = !{!450, !451}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !446, file: !403, line: 208, type: !5)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !446, file: !403, line: 208, type: !235)
!452 = !DISubprogram(name: "binascii_a2b_uu_impl", scope: !403, file: !403, line: 256, type: !453, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_a2b_uu_impl, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!5, !417, !235}
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !475}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !452, file: !403, line: 256, type: !417)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !452, file: !403, line: 256, type: !235)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !452, file: !403, line: 259, type: !389)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !452, file: !403, line: 259, type: !389)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !452, file: !403, line: 260, type: !44)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !452, file: !403, line: 261, type: !364)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !452, file: !403, line: 262, type: !341)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !452, file: !403, line: 263, type: !5)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_len", scope: !452, file: !403, line: 264, type: !11)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_len", scope: !452, file: !403, line: 264, type: !11)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !403, line: 297, type: !5)
!467 = distinct !DILexicalBlock(scope: !468, file: !403, line: 297, column: 20)
!468 = distinct !DILexicalBlock(scope: !469, file: !403, line: 295, column: 57)
!469 = distinct !DILexicalBlock(scope: !470, file: !403, line: 295, column: 18)
!470 = distinct !DILexicalBlock(scope: !471, file: !403, line: 289, column: 16)
!471 = distinct !DILexicalBlock(scope: !472, file: !403, line: 283, column: 14)
!472 = distinct !DILexicalBlock(scope: !473, file: !403, line: 280, column: 54)
!473 = distinct !DILexicalBlock(scope: !474, file: !403, line: 280, column: 5)
!474 = distinct !DILexicalBlock(scope: !452, file: !403, line: 280, column: 5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !403, line: 325, type: !5)
!476 = distinct !DILexicalBlock(scope: !477, file: !403, line: 325, column: 16)
!477 = distinct !DILexicalBlock(scope: !478, file: !403, line: 323, column: 51)
!478 = distinct !DILexicalBlock(scope: !479, file: !403, line: 322, column: 14)
!479 = distinct !DILexicalBlock(scope: !452, file: !403, line: 319, column: 30)
!480 = !DISubprogram(name: "binascii_b2a_uu", scope: !414, file: !414, line: 50, type: !415, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_uu, variables: !481)
!481 = !{!482, !483, !484, !485}
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !480, file: !414, line: 50, type: !417)
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !480, file: !414, line: 50, type: !5)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !480, file: !414, line: 52, type: !5)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !480, file: !414, line: 53, type: !236)
!486 = !DISubprogram(name: "binascii_b2a_uu_impl", scope: !403, file: !403, line: 342, type: !453, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_b2a_uu_impl, variables: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !501}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !486, file: !403, line: 342, type: !417)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !486, file: !403, line: 342, type: !235)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !486, file: !403, line: 345, type: !389)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !486, file: !403, line: 345, type: !389)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !486, file: !403, line: 346, type: !44)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !486, file: !403, line: 347, type: !364)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !486, file: !403, line: 348, type: !341)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !486, file: !403, line: 349, type: !5)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_len", scope: !486, file: !403, line: 350, type: !11)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !498, file: !403, line: 388, type: !5)
!498 = distinct !DILexicalBlock(scope: !499, file: !403, line: 388, column: 12)
!499 = distinct !DILexicalBlock(scope: !500, file: !403, line: 387, column: 100)
!500 = distinct !DILexicalBlock(scope: !486, file: !403, line: 385, column: 9)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !403, line: 388, type: !5)
!502 = distinct !DILexicalBlock(scope: !503, file: !403, line: 388, column: 103)
!503 = distinct !DILexicalBlock(scope: !504, file: !403, line: 388, column: 79)
!504 = distinct !DILexicalBlock(scope: !498, file: !403, line: 388, column: 56)
!505 = !DISubprogram(name: "binascii_a2b_base64", scope: !414, file: !414, line: 82, type: !415, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_base64, variables: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !505, file: !414, line: 82, type: !417)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !505, file: !414, line: 82, type: !5)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !505, file: !414, line: 84, type: !5)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !505, file: !414, line: 85, type: !236)
!511 = !DISubprogram(name: "binascii_a2b_base64_impl", scope: !403, file: !403, line: 429, type: !453, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_a2b_base64_impl, variables: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !528, !534, !538}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !511, file: !403, line: 429, type: !417)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !511, file: !403, line: 429, type: !235)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !511, file: !403, line: 432, type: !389)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !511, file: !403, line: 432, type: !389)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !511, file: !403, line: 433, type: !44)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !511, file: !403, line: 434, type: !364)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !511, file: !403, line: 435, type: !341)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !511, file: !403, line: 436, type: !5)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_len", scope: !511, file: !403, line: 437, type: !11)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_len", scope: !511, file: !403, line: 437, type: !11)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quad_pos", scope: !511, file: !403, line: 438, type: !44)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !403, line: 506, type: !5)
!525 = distinct !DILexicalBlock(scope: !526, file: !403, line: 506, column: 12)
!526 = distinct !DILexicalBlock(scope: !527, file: !403, line: 504, column: 24)
!527 = distinct !DILexicalBlock(scope: !511, file: !403, line: 504, column: 9)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !529, file: !403, line: 516, type: !5)
!529 = distinct !DILexicalBlock(scope: !530, file: !403, line: 516, column: 16)
!530 = distinct !DILexicalBlock(scope: !531, file: !403, line: 515, column: 48)
!531 = distinct !DILexicalBlock(scope: !532, file: !403, line: 515, column: 13)
!532 = distinct !DILexicalBlock(scope: !533, file: !403, line: 514, column: 22)
!533 = distinct !DILexicalBlock(scope: !511, file: !403, line: 514, column: 9)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !535, file: !403, line: 516, type: !5)
!535 = distinct !DILexicalBlock(scope: !536, file: !403, line: 516, column: 107)
!536 = distinct !DILexicalBlock(scope: !537, file: !403, line: 516, column: 83)
!537 = distinct !DILexicalBlock(scope: !529, file: !403, line: 516, column: 60)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !539, file: !403, line: 520, type: !5)
!539 = distinct !DILexicalBlock(scope: !540, file: !403, line: 520, column: 12)
!540 = distinct !DILexicalBlock(scope: !533, file: !403, line: 519, column: 10)
!541 = !DISubprogram(name: "binascii_find_valid", scope: !403, file: !403, line: 395, type: !542, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i32)* @binascii_find_valid, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!44, !389, !11, !44}
!544 = !{!545, !546, !547, !548, !549, !550}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !541, file: !403, line: 395, type: !389)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slen", arg: 2, scope: !541, file: !403, line: 395, type: !11)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 3, scope: !541, file: !403, line: 395, type: !44)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !541, file: !403, line: 401, type: !44)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !541, file: !403, line: 402, type: !364)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b64val", scope: !541, file: !403, line: 402, type: !364)
!551 = !DISubprogram(name: "binascii_b2a_base64", scope: !414, file: !414, line: 114, type: !415, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_base64, variables: !552)
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !551, file: !414, line: 114, type: !417)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !551, file: !414, line: 114, type: !5)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !551, file: !414, line: 116, type: !5)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !551, file: !414, line: 117, type: !236)
!557 = !DISubprogram(name: "binascii_b2a_base64_impl", scope: !403, file: !403, line: 537, type: !453, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_b2a_base64_impl, variables: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !572}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !557, file: !403, line: 537, type: !417)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !557, file: !403, line: 537, type: !235)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !557, file: !403, line: 540, type: !389)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !557, file: !403, line: 540, type: !389)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !557, file: !403, line: 541, type: !44)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !557, file: !403, line: 542, type: !364)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !557, file: !403, line: 543, type: !341)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !557, file: !403, line: 544, type: !5)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_len", scope: !557, file: !403, line: 545, type: !11)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !569, file: !403, line: 589, type: !5)
!569 = distinct !DILexicalBlock(scope: !570, file: !403, line: 589, column: 12)
!570 = distinct !DILexicalBlock(scope: !571, file: !403, line: 588, column: 100)
!571 = distinct !DILexicalBlock(scope: !557, file: !403, line: 586, column: 9)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !573, file: !403, line: 589, type: !5)
!573 = distinct !DILexicalBlock(scope: !574, file: !403, line: 589, column: 103)
!574 = distinct !DILexicalBlock(scope: !575, file: !403, line: 589, column: 79)
!575 = distinct !DILexicalBlock(scope: !569, file: !403, line: 589, column: 56)
!576 = !DISubprogram(name: "binascii_a2b_hqx", scope: !414, file: !414, line: 146, type: !415, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_hqx, variables: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !576, file: !414, line: 146, type: !417)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !576, file: !414, line: 146, type: !5)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !576, file: !414, line: 148, type: !5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !576, file: !414, line: 149, type: !236)
!582 = !DISubprogram(name: "binascii_a2b_hqx_impl", scope: !403, file: !403, line: 604, type: !453, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_a2b_hqx_impl, variables: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !601, !605, !609, !613, !616}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !582, file: !403, line: 604, type: !417)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !582, file: !403, line: 604, type: !235)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !582, file: !403, line: 607, type: !389)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !582, file: !403, line: 607, type: !389)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !582, file: !403, line: 608, type: !44)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !582, file: !403, line: 609, type: !364)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !582, file: !403, line: 610, type: !341)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !582, file: !403, line: 611, type: !5)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !582, file: !403, line: 612, type: !11)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "done", scope: !582, file: !403, line: 613, type: !44)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !403, line: 637, type: !5)
!595 = distinct !DILexicalBlock(scope: !596, file: !403, line: 637, column: 16)
!596 = distinct !DILexicalBlock(scope: !597, file: !403, line: 635, column: 32)
!597 = distinct !DILexicalBlock(scope: !598, file: !403, line: 635, column: 14)
!598 = distinct !DILexicalBlock(scope: !599, file: !403, line: 630, column: 44)
!599 = distinct !DILexicalBlock(scope: !600, file: !403, line: 630, column: 5)
!600 = distinct !DILexicalBlock(scope: !582, file: !403, line: 630, column: 5)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !403, line: 659, type: !5)
!602 = distinct !DILexicalBlock(scope: !603, file: !403, line: 659, column: 12)
!603 = distinct !DILexicalBlock(scope: !604, file: !403, line: 656, column: 30)
!604 = distinct !DILexicalBlock(scope: !582, file: !403, line: 656, column: 10)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !606, file: !403, line: 665, type: !5)
!606 = distinct !DILexicalBlock(scope: !607, file: !403, line: 665, column: 12)
!607 = distinct !DILexicalBlock(scope: !608, file: !403, line: 664, column: 100)
!608 = distinct !DILexicalBlock(scope: !582, file: !403, line: 662, column: 9)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !403, line: 665, type: !5)
!610 = distinct !DILexicalBlock(scope: !611, file: !403, line: 665, column: 103)
!611 = distinct !DILexicalBlock(scope: !612, file: !403, line: 665, column: 79)
!612 = distinct !DILexicalBlock(scope: !606, file: !403, line: 665, column: 56)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rrv", scope: !614, file: !403, line: 668, type: !5)
!614 = distinct !DILexicalBlock(scope: !615, file: !403, line: 667, column: 13)
!615 = distinct !DILexicalBlock(scope: !582, file: !403, line: 667, column: 9)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !403, line: 669, type: !5)
!617 = distinct !DILexicalBlock(scope: !614, file: !403, line: 669, column: 12)
!618 = !DISubprogram(name: "binascii_b2a_hqx", scope: !414, file: !414, line: 210, type: !415, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_hqx, variables: !619)
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !618, file: !414, line: 210, type: !417)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !618, file: !414, line: 210, type: !5)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !618, file: !414, line: 212, type: !5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !618, file: !414, line: 213, type: !236)
!624 = !DISubprogram(name: "binascii_b2a_hqx_impl", scope: !403, file: !403, line: 751, type: !453, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_b2a_hqx_impl, variables: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !639}
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !624, file: !403, line: 751, type: !417)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !624, file: !403, line: 751, type: !235)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !624, file: !403, line: 754, type: !389)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !624, file: !403, line: 754, type: !389)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftbits", scope: !624, file: !403, line: 755, type: !44)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ch", scope: !624, file: !403, line: 756, type: !364)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftchar", scope: !624, file: !403, line: 757, type: !341)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !624, file: !403, line: 758, type: !5)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !624, file: !403, line: 759, type: !11)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !636, file: !403, line: 792, type: !5)
!636 = distinct !DILexicalBlock(scope: !637, file: !403, line: 792, column: 12)
!637 = distinct !DILexicalBlock(scope: !638, file: !403, line: 791, column: 100)
!638 = distinct !DILexicalBlock(scope: !624, file: !403, line: 789, column: 9)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !640, file: !403, line: 792, type: !5)
!640 = distinct !DILexicalBlock(scope: !641, file: !403, line: 792, column: 103)
!641 = distinct !DILexicalBlock(scope: !642, file: !403, line: 792, column: 79)
!642 = distinct !DILexicalBlock(scope: !636, file: !403, line: 792, column: 56)
!643 = !DISubprogram(name: "binascii_a2b_hex", scope: !414, file: !414, line: 386, type: !415, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_a2b_hex, variables: !644)
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !643, file: !414, line: 386, type: !417)
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !643, file: !414, line: 386, type: !5)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !643, file: !414, line: 388, type: !5)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hexstr", scope: !643, file: !414, line: 389, type: !236)
!649 = !DISubprogram(name: "binascii_a2b_hex_impl", scope: !403, file: !403, line: 1179, type: !453, isLocal: true, isDefinition: true, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_a2b_hex_impl, variables: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !663, !664}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !649, file: !403, line: 1179, type: !417)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hexstr", arg: 2, scope: !649, file: !403, line: 1179, type: !235)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argbuf", scope: !649, file: !403, line: 1182, type: !52)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglen", scope: !649, file: !403, line: 1183, type: !11)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !649, file: !403, line: 1184, type: !5)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retbuf", scope: !649, file: !403, line: 1185, type: !52)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !649, file: !403, line: 1186, type: !11)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !649, file: !403, line: 1186, type: !11)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !660, file: !403, line: 1208, type: !44)
!660 = distinct !DILexicalBlock(scope: !661, file: !403, line: 1207, column: 37)
!661 = distinct !DILexicalBlock(scope: !662, file: !403, line: 1207, column: 5)
!662 = distinct !DILexicalBlock(scope: !649, file: !403, line: 1207, column: 5)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bot", scope: !660, file: !403, line: 1209, type: !44)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !665, file: !403, line: 1220, type: !5)
!665 = distinct !DILexicalBlock(scope: !649, file: !403, line: 1220, column: 8)
!666 = !DISubprogram(name: "to_int", scope: !403, file: !403, line: 1152, type: !667, isLocal: true, isDefinition: true, scopeLine: 1153, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @to_int, variables: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!44, !44}
!669 = !{!670}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !666, file: !403, line: 1152, type: !44)
!671 = !DISubprogram(name: "binascii_b2a_hex", scope: !414, file: !414, line: 351, type: !415, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_b2a_hex, variables: !672)
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !671, file: !414, line: 351, type: !417)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !671, file: !414, line: 351, type: !5)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !671, file: !414, line: 353, type: !5)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !671, file: !414, line: 354, type: !236)
!677 = !DISubprogram(name: "binascii_b2a_hex_impl", scope: !403, file: !403, line: 1118, type: !453, isLocal: true, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_b2a_hex_impl, variables: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687}
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !677, file: !403, line: 1118, type: !417)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !677, file: !403, line: 1118, type: !235)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argbuf", scope: !677, file: !403, line: 1121, type: !52)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglen", scope: !677, file: !403, line: 1122, type: !11)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !677, file: !403, line: 1123, type: !5)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retbuf", scope: !677, file: !403, line: 1124, type: !52)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !677, file: !403, line: 1125, type: !11)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !677, file: !403, line: 1125, type: !11)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !688, file: !403, line: 1141, type: !364)
!688 = distinct !DILexicalBlock(scope: !689, file: !403, line: 1140, column: 34)
!689 = distinct !DILexicalBlock(scope: !690, file: !403, line: 1140, column: 5)
!690 = distinct !DILexicalBlock(scope: !677, file: !403, line: 1140, column: 5)
!691 = !DISubprogram(name: "binascii_rlecode_hqx", scope: !414, file: !414, line: 178, type: !415, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_rlecode_hqx, variables: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !691, file: !414, line: 178, type: !417)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !691, file: !414, line: 178, type: !5)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !691, file: !414, line: 180, type: !5)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !691, file: !414, line: 181, type: !236)
!697 = !DISubprogram(name: "binascii_rlecode_hqx_impl", scope: !403, file: !403, line: 687, type: !453, isLocal: true, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_rlecode_hqx_impl, variables: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !712}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !697, file: !403, line: 687, type: !417)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !697, file: !403, line: 687, type: !235)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_data", scope: !697, file: !403, line: 690, type: !389)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_data", scope: !697, file: !403, line: 690, type: !389)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !697, file: !403, line: 691, type: !5)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !697, file: !403, line: 692, type: !364)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !697, file: !403, line: 693, type: !11)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inend", scope: !697, file: !403, line: 693, type: !11)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !697, file: !403, line: 693, type: !11)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !709, file: !403, line: 735, type: !5)
!709 = distinct !DILexicalBlock(scope: !710, file: !403, line: 735, column: 12)
!710 = distinct !DILexicalBlock(scope: !711, file: !403, line: 734, column: 100)
!711 = distinct !DILexicalBlock(scope: !697, file: !403, line: 732, column: 9)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !713, file: !403, line: 735, type: !5)
!713 = distinct !DILexicalBlock(scope: !714, file: !403, line: 735, column: 103)
!714 = distinct !DILexicalBlock(scope: !715, file: !403, line: 735, column: 79)
!715 = distinct !DILexicalBlock(scope: !709, file: !403, line: 735, column: 56)
!716 = !DISubprogram(name: "binascii_rledecode_hqx", scope: !414, file: !414, line: 242, type: !415, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_rledecode_hqx, variables: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !716, file: !414, line: 242, type: !417)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !716, file: !414, line: 242, type: !5)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !716, file: !414, line: 244, type: !5)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !716, file: !414, line: 245, type: !236)
!722 = !DISubprogram(name: "binascii_rledecode_hqx_impl", scope: !403, file: !403, line: 808, type: !453, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*)* @binascii_rledecode_hqx_impl, variables: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !739, !746, !750, !757, !760, !768, !771, !777, !784, !793, !796, !804, !807, !815, !818, !822}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !722, file: !403, line: 808, type: !417)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !722, file: !403, line: 808, type: !235)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_data", scope: !722, file: !403, line: 811, type: !389)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_data", scope: !722, file: !403, line: 811, type: !389)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_byte", scope: !722, file: !403, line: 812, type: !364)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_repeat", scope: !722, file: !403, line: 812, type: !364)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !722, file: !403, line: 813, type: !5)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_len", scope: !722, file: !403, line: 814, type: !11)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_len", scope: !722, file: !403, line: 814, type: !11)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_len_left", scope: !722, file: !403, line: 814, type: !11)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !735, file: !403, line: 866, type: !5)
!735 = distinct !DILexicalBlock(scope: !736, file: !403, line: 866, column: 72)
!736 = distinct !DILexicalBlock(scope: !737, file: !403, line: 866, column: 34)
!737 = distinct !DILexicalBlock(scope: !738, file: !403, line: 866, column: 19)
!738 = distinct !DILexicalBlock(scope: !722, file: !403, line: 866, column: 12)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !740, file: !403, line: 869, type: !5)
!740 = distinct !DILexicalBlock(scope: !741, file: !403, line: 869, column: 72)
!741 = distinct !DILexicalBlock(scope: !742, file: !403, line: 869, column: 34)
!742 = distinct !DILexicalBlock(scope: !743, file: !403, line: 869, column: 19)
!743 = distinct !DILexicalBlock(scope: !744, file: !403, line: 869, column: 12)
!744 = distinct !DILexicalBlock(scope: !745, file: !403, line: 868, column: 26)
!745 = distinct !DILexicalBlock(scope: !722, file: !403, line: 868, column: 9)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !747, file: !403, line: 875, type: !5)
!747 = distinct !DILexicalBlock(scope: !748, file: !403, line: 875, column: 16)
!748 = distinct !DILexicalBlock(scope: !749, file: !403, line: 870, column: 29)
!749 = distinct !DILexicalBlock(scope: !744, file: !403, line: 870, column: 13)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !751, file: !403, line: 878, type: !5)
!751 = distinct !DILexicalBlock(scope: !752, file: !403, line: 878, column: 165)
!752 = distinct !DILexicalBlock(scope: !753, file: !403, line: 878, column: 160)
!753 = distinct !DILexicalBlock(scope: !754, file: !403, line: 878, column: 123)
!754 = distinct !DILexicalBlock(scope: !755, file: !403, line: 878, column: 40)
!755 = distinct !DILexicalBlock(scope: !756, file: !403, line: 878, column: 19)
!756 = distinct !DILexicalBlock(scope: !744, file: !403, line: 878, column: 12)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !758, file: !403, line: 878, type: !5)
!758 = distinct !DILexicalBlock(scope: !759, file: !403, line: 878, column: 251)
!759 = distinct !DILexicalBlock(scope: !751, file: !403, line: 878, column: 217)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !761, file: !403, line: 880, type: !5)
!761 = distinct !DILexicalBlock(scope: !762, file: !403, line: 880, column: 165)
!762 = distinct !DILexicalBlock(scope: !763, file: !403, line: 880, column: 160)
!763 = distinct !DILexicalBlock(scope: !764, file: !403, line: 880, column: 123)
!764 = distinct !DILexicalBlock(scope: !765, file: !403, line: 880, column: 40)
!765 = distinct !DILexicalBlock(scope: !766, file: !403, line: 880, column: 19)
!766 = distinct !DILexicalBlock(scope: !767, file: !403, line: 880, column: 12)
!767 = distinct !DILexicalBlock(scope: !745, file: !403, line: 879, column: 12)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !403, line: 880, type: !5)
!769 = distinct !DILexicalBlock(scope: !770, file: !403, line: 880, column: 251)
!770 = distinct !DILexicalBlock(scope: !761, file: !403, line: 880, column: 217)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !772, file: !403, line: 884, type: !5)
!772 = distinct !DILexicalBlock(scope: !773, file: !403, line: 884, column: 72)
!773 = distinct !DILexicalBlock(scope: !774, file: !403, line: 884, column: 34)
!774 = distinct !DILexicalBlock(scope: !775, file: !403, line: 884, column: 19)
!775 = distinct !DILexicalBlock(scope: !776, file: !403, line: 884, column: 12)
!776 = distinct !DILexicalBlock(scope: !722, file: !403, line: 883, column: 25)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !778, file: !403, line: 887, type: !5)
!778 = distinct !DILexicalBlock(scope: !779, file: !403, line: 887, column: 76)
!779 = distinct !DILexicalBlock(scope: !780, file: !403, line: 887, column: 38)
!780 = distinct !DILexicalBlock(scope: !781, file: !403, line: 887, column: 23)
!781 = distinct !DILexicalBlock(scope: !782, file: !403, line: 887, column: 16)
!782 = distinct !DILexicalBlock(scope: !783, file: !403, line: 886, column: 30)
!783 = distinct !DILexicalBlock(scope: !776, file: !403, line: 886, column: 13)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !785, file: !403, line: 890, type: !5)
!785 = distinct !DILexicalBlock(scope: !786, file: !403, line: 890, column: 173)
!786 = distinct !DILexicalBlock(scope: !787, file: !403, line: 890, column: 168)
!787 = distinct !DILexicalBlock(scope: !788, file: !403, line: 890, column: 131)
!788 = distinct !DILexicalBlock(scope: !789, file: !403, line: 890, column: 48)
!789 = distinct !DILexicalBlock(scope: !790, file: !403, line: 890, column: 27)
!790 = distinct !DILexicalBlock(scope: !791, file: !403, line: 890, column: 20)
!791 = distinct !DILexicalBlock(scope: !792, file: !403, line: 888, column: 35)
!792 = distinct !DILexicalBlock(scope: !782, file: !403, line: 888, column: 18)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !403, line: 890, type: !5)
!794 = distinct !DILexicalBlock(scope: !795, file: !403, line: 890, column: 259)
!795 = distinct !DILexicalBlock(scope: !785, file: !403, line: 890, column: 225)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !797, file: !403, line: 895, type: !5)
!797 = distinct !DILexicalBlock(scope: !798, file: !403, line: 895, column: 177)
!798 = distinct !DILexicalBlock(scope: !799, file: !403, line: 895, column: 172)
!799 = distinct !DILexicalBlock(scope: !800, file: !403, line: 895, column: 135)
!800 = distinct !DILexicalBlock(scope: !801, file: !403, line: 895, column: 52)
!801 = distinct !DILexicalBlock(scope: !802, file: !403, line: 895, column: 31)
!802 = distinct !DILexicalBlock(scope: !803, file: !403, line: 895, column: 24)
!803 = distinct !DILexicalBlock(scope: !792, file: !403, line: 891, column: 20)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !805, file: !403, line: 895, type: !5)
!805 = distinct !DILexicalBlock(scope: !806, file: !403, line: 895, column: 263)
!806 = distinct !DILexicalBlock(scope: !797, file: !403, line: 895, column: 229)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !808, file: !403, line: 899, type: !5)
!808 = distinct !DILexicalBlock(scope: !809, file: !403, line: 899, column: 169)
!809 = distinct !DILexicalBlock(scope: !810, file: !403, line: 899, column: 164)
!810 = distinct !DILexicalBlock(scope: !811, file: !403, line: 899, column: 127)
!811 = distinct !DILexicalBlock(scope: !812, file: !403, line: 899, column: 44)
!812 = distinct !DILexicalBlock(scope: !813, file: !403, line: 899, column: 23)
!813 = distinct !DILexicalBlock(scope: !814, file: !403, line: 899, column: 16)
!814 = distinct !DILexicalBlock(scope: !783, file: !403, line: 897, column: 16)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !816, file: !403, line: 899, type: !5)
!816 = distinct !DILexicalBlock(scope: !817, file: !403, line: 899, column: 255)
!817 = distinct !DILexicalBlock(scope: !808, file: !403, line: 899, column: 221)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !819, file: !403, line: 905, type: !5)
!819 = distinct !DILexicalBlock(scope: !820, file: !403, line: 905, column: 12)
!820 = distinct !DILexicalBlock(scope: !821, file: !403, line: 904, column: 100)
!821 = distinct !DILexicalBlock(scope: !722, file: !403, line: 902, column: 9)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !823, file: !403, line: 905, type: !5)
!823 = distinct !DILexicalBlock(scope: !824, file: !403, line: 905, column: 103)
!824 = distinct !DILexicalBlock(scope: !825, file: !403, line: 905, column: 79)
!825 = distinct !DILexicalBlock(scope: !819, file: !403, line: 905, column: 56)
!826 = !DISubprogram(name: "binascii_crc_hqx", scope: !414, file: !414, line: 274, type: !415, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_crc_hqx, variables: !827)
!827 = !{!828, !829, !830, !831, !832, !833}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !826, file: !414, line: 274, type: !417)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !826, file: !414, line: 274, type: !5)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !826, file: !414, line: 276, type: !5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !826, file: !414, line: 277, type: !236)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !826, file: !414, line: 278, type: !44)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_return_value", scope: !826, file: !414, line: 279, type: !44)
!834 = !DISubprogram(name: "binascii_crc_hqx_impl", scope: !403, file: !403, line: 922, type: !835, isLocal: true, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @binascii_crc_hqx_impl, variables: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!44, !417, !235, !44}
!837 = !{!838, !839, !840, !841, !842, !843}
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !834, file: !403, line: 922, type: !417)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !834, file: !403, line: 922, type: !235)
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "crc", arg: 3, scope: !834, file: !403, line: 922, type: !44)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin_data", scope: !834, file: !403, line: 925, type: !389)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ucrc", scope: !834, file: !403, line: 926, type: !341)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !834, file: !403, line: 927, type: !11)
!844 = !DISubprogram(name: "binascii_crc32", scope: !414, file: !414, line: 311, type: !415, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @binascii_crc32, variables: !845)
!845 = !{!846, !847, !848, !849, !850, !851}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !844, file: !414, line: 311, type: !417)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !844, file: !414, line: 311, type: !5)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !844, file: !414, line: 313, type: !5)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !844, file: !414, line: 314, type: !236)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !844, file: !414, line: 315, type: !341)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_return_value", scope: !844, file: !414, line: 316, type: !341)
!852 = !DISubprogram(name: "binascii_crc32_impl", scope: !403, file: !403, line: 1070, type: !853, isLocal: true, isDefinition: true, scopeLine: 1075, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @binascii_crc32_impl, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!341, !417, !235, !341}
!855 = !{!856, !857, !858, !859, !860, !861}
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !852, file: !403, line: 1070, type: !417)
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !852, file: !403, line: 1070, type: !235)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "crc", arg: 3, scope: !852, file: !403, line: 1070, type: !341)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !852, file: !403, line: 1076, type: !398)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !852, file: !403, line: 1077, type: !11)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signed_val", scope: !852, file: !403, line: 1078, type: !44)
!862 = !DISubprogram(name: "binascii_a2b_qp", scope: !414, file: !414, line: 418, type: !863, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @binascii_a2b_qp, variables: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!5, !417, !5, !5}
!865 = !{!866, !867, !868, !869, !870, !871}
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !862, file: !414, line: 418, type: !417)
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !862, file: !414, line: 418, type: !5)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !862, file: !414, line: 418, type: !5)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !862, file: !414, line: 420, type: !5)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !862, file: !414, line: 422, type: !236)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header", scope: !862, file: !414, line: 423, type: !44)
!872 = !DISubprogram(name: "binascii_a2b_qp_impl", scope: !403, file: !403, line: 1250, type: !873, isLocal: true, isDefinition: true, scopeLine: 1252, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @binascii_a2b_qp_impl, variables: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{!5, !417, !235, !44}
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !872, file: !403, line: 1250, type: !417)
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !872, file: !403, line: 1250, type: !235)
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "header", arg: 3, scope: !872, file: !403, line: 1250, type: !44)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !872, file: !403, line: 1253, type: !11)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !872, file: !403, line: 1253, type: !11)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !872, file: !403, line: 1254, type: !31)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_data", scope: !872, file: !403, line: 1255, type: !389)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "odata", scope: !872, file: !403, line: 1255, type: !389)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "datalen", scope: !872, file: !403, line: 1256, type: !11)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !872, file: !403, line: 1257, type: !5)
!886 = !DISubprogram(name: "binascii_b2a_qp", scope: !414, file: !414, line: 456, type: !863, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @binascii_b2a_qp, variables: !887)
!887 = !{!888, !889, !890, !891, !892, !893, !894, !895}
!888 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !886, file: !414, line: 456, type: !417)
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !886, file: !414, line: 456, type: !5)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !886, file: !414, line: 456, type: !5)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !886, file: !414, line: 458, type: !5)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !886, file: !414, line: 460, type: !236)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quotetabs", scope: !886, file: !414, line: 461, type: !44)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istext", scope: !886, file: !414, line: 462, type: !44)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header", scope: !886, file: !414, line: 463, type: !44)
!896 = !DISubprogram(name: "binascii_b2a_qp_impl", scope: !403, file: !403, line: 1356, type: !897, isLocal: true, isDefinition: true, scopeLine: 1358, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32, i32, i32)* @binascii_b2a_qp_impl, variables: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{!5, !417, !235, !44, !44, !44}
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915}
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !896, file: !403, line: 1356, type: !417)
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !896, file: !403, line: 1356, type: !235)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quotetabs", arg: 3, scope: !896, file: !403, line: 1356, type: !44)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istext", arg: 4, scope: !896, file: !403, line: 1356, type: !44)
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "header", arg: 5, scope: !896, file: !403, line: 1356, type: !44)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !896, file: !403, line: 1359, type: !11)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !896, file: !403, line: 1359, type: !11)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "databuf", scope: !896, file: !403, line: 1360, type: !389)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "odata", scope: !896, file: !403, line: 1360, type: !389)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "datalen", scope: !896, file: !403, line: 1361, type: !11)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "odatalen", scope: !896, file: !403, line: 1361, type: !11)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !896, file: !403, line: 1362, type: !5)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linelen", scope: !896, file: !403, line: 1363, type: !341)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !896, file: !403, line: 1364, type: !364)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crlf", scope: !896, file: !403, line: 1365, type: !44)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !896, file: !403, line: 1366, type: !389)
!916 = !DISubprogram(name: "to_hex", scope: !403, file: !403, line: 1326, type: !917, isLocal: true, isDefinition: true, scopeLine: 1327, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i8*)* @to_hex, variables: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{!44, !364, !389}
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ch", arg: 1, scope: !916, file: !403, line: 1326, type: !364)
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !916, file: !403, line: 1326, type: !389)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uvalue", scope: !916, file: !403, line: 1328, type: !341)
!923 = !{!924, !925, !926, !927, !931, !935, !939, !943, !947, !951, !955, !959, !963, !967, !968, !972, !976, !980, !981, !985, !987, !991, !993, !997, !999, !1003, !1007}
!924 = !DIGlobalVariable(name: "Error", scope: !0, file: !403, line: 63, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @Error)
!925 = !DIGlobalVariable(name: "Incomplete", scope: !0, file: !403, line: 64, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @Incomplete)
!926 = !DIGlobalVariable(name: "binasciimodule", scope: !0, file: !403, line: 1556, type: !420, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @binasciimodule)
!927 = !DIGlobalVariable(name: "doc_binascii", scope: !0, file: !403, line: 1553, type: !928, isLocal: true, isDefinition: true, variable: [41 x i8]* @doc_binascii)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 328, align: 8, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 41)
!931 = !DIGlobalVariable(name: "binascii_module_methods", scope: !0, file: !403, line: 1529, type: !932, isLocal: true, isDefinition: true, variable: [17 x %struct.PyMethodDef]* @binascii_module_methods)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4352, align: 64, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 17)
!935 = !DIGlobalVariable(name: "binascii_a2b_uu__doc__", scope: !0, file: !414, line: 5, type: !936, isLocal: true, isDefinition: true, variable: [62 x i8]* @binascii_a2b_uu__doc__)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 496, align: 8, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 62)
!939 = !DIGlobalVariable(name: "binascii_b2a_uu__doc__", scope: !0, file: !414, line: 37, type: !940, isLocal: true, isDefinition: true, variable: [52 x i8]* @binascii_b2a_uu__doc__)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 416, align: 8, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 52)
!943 = !DIGlobalVariable(name: "table_a2b_base64", scope: !0, file: !403, line: 130, type: !944, isLocal: true, isDefinition: true, variable: [128 x i8]* @table_a2b_base64)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, align: 8, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 128)
!947 = !DIGlobalVariable(name: "binascii_a2b_base64__doc__", scope: !0, file: !414, line: 69, type: !948, isLocal: true, isDefinition: true, variable: [63 x i8]* @binascii_a2b_base64__doc__)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 504, align: 8, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 63)
!951 = !DIGlobalVariable(name: "table_b2a_base64", scope: !0, file: !403, line: 146, type: !952, isLocal: true, isDefinition: true, variable: [65 x i8]* @table_b2a_base64)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 520, align: 8, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 65)
!955 = !DIGlobalVariable(name: "binascii_b2a_base64__doc__", scope: !0, file: !414, line: 101, type: !956, isLocal: true, isDefinition: true, variable: [59 x i8]* @binascii_b2a_base64__doc__)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 472, align: 8, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 59)
!959 = !DIGlobalVariable(name: "table_a2b_hqx", scope: !0, file: !403, line: 76, type: !960, isLocal: true, isDefinition: true, variable: [256 x i8]* @table_a2b_hqx)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 2048, align: 8, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 256)
!963 = !DIGlobalVariable(name: "binascii_a2b_hqx__doc__", scope: !0, file: !414, line: 133, type: !964, isLocal: true, isDefinition: true, variable: [50 x i8]* @binascii_a2b_hqx__doc__)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 400, align: 8, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 50)
!967 = !DIGlobalVariable(name: "table_b2a_hqx", scope: !0, file: !403, line: 127, type: !952, isLocal: true, isDefinition: true, variable: [65 x i8]* @table_b2a_hqx)
!968 = !DIGlobalVariable(name: "binascii_b2a_hqx__doc__", scope: !0, file: !414, line: 197, type: !969, isLocal: true, isDefinition: true, variable: [48 x i8]* @binascii_b2a_hqx__doc__)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, align: 8, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 48)
!972 = !DIGlobalVariable(name: "binascii_a2b_hex__doc__", scope: !0, file: !414, line: 370, type: !973, isLocal: true, isDefinition: true, variable: [198 x i8]* @binascii_a2b_hex__doc__)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1584, align: 8, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 198)
!976 = !DIGlobalVariable(name: "binascii_b2a_hex__doc__", scope: !0, file: !414, line: 335, type: !977, isLocal: true, isDefinition: true, variable: [159 x i8]* @binascii_b2a_hex__doc__)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1272, align: 8, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 159)
!980 = !DIGlobalVariable(name: "binascii_rlecode_hqx__doc__", scope: !0, file: !414, line: 165, type: !948, isLocal: true, isDefinition: true, variable: [63 x i8]* @binascii_rlecode_hqx__doc__)
!981 = !DIGlobalVariable(name: "binascii_rledecode_hqx__doc__", scope: !0, file: !414, line: 229, type: !982, isLocal: true, isDefinition: true, variable: [68 x i8]* @binascii_rledecode_hqx__doc__)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 544, align: 8, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 68)
!985 = !DIGlobalVariable(name: "crctab_hqx", scope: !0, file: !403, line: 151, type: !986, isLocal: true, isDefinition: true, variable: [256 x i16]* @crctab_hqx)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 4096, align: 16, elements: !961)
!987 = !DIGlobalVariable(name: "binascii_crc_hqx__doc__", scope: !0, file: !414, line: 261, type: !988, isLocal: true, isDefinition: true, variable: [66 x i8]* @binascii_crc_hqx__doc__)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 528, align: 8, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 66)
!991 = !DIGlobalVariable(name: "binascii_crc32__doc__", scope: !0, file: !414, line: 298, type: !992, isLocal: true, isDefinition: true, variable: [65 x i8]* @binascii_crc32__doc__)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 520, align: 8, elements: !953)
!993 = !DIGlobalVariable(name: "_keywords", scope: !862, file: !414, line: 421, type: !994, isLocal: true, isDefinition: true, variable: [3 x i8*]* @binascii_a2b_qp._keywords)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, align: 64, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 3)
!997 = !DIGlobalVariable(name: "table_hex", scope: !0, file: !403, line: 1224, type: !998, isLocal: true, isDefinition: true, variable: [128 x i32]* @table_hex)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 4096, align: 32, elements: !945)
!999 = !DIGlobalVariable(name: "binascii_a2b_qp__doc__", scope: !0, file: !414, line: 405, type: !1000, isLocal: true, isDefinition: true, variable: [79 x i8]* @binascii_a2b_qp__doc__)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 632, align: 8, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 79)
!1003 = !DIGlobalVariable(name: "_keywords", scope: !886, file: !414, line: 459, type: !1004, isLocal: true, isDefinition: true, variable: [5 x i8*]* @binascii_b2a_qp._keywords)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 320, align: 64, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 5)
!1007 = !DIGlobalVariable(name: "binascii_b2a_qp__doc__", scope: !0, file: !414, line: 439, type: !1008, isLocal: true, isDefinition: true, variable: [331 x i8]* @binascii_b2a_qp__doc__)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2648, align: 8, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 331)
!1011 = !{i32 2, !"Dwarf Version", i32 4}
!1012 = !{i32 2, !"Debug Info Version", i32 3}
!1013 = !{i32 1, !"PIC Level", i32 2}
!1014 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1015 = !DILocation(line: 1571, column: 5, scope: !402)
!1016 = !DIExpression()
!1017 = !DILocation(line: 1571, column: 15, scope: !402)
!1018 = !DILocation(line: 1571, column: 19, scope: !402)
!1019 = !DILocation(line: 1574, column: 9, scope: !402)
!1020 = !DILocation(line: 1574, column: 7, scope: !402)
!1021 = !{!1022, !1022, i64 0}
!1022 = !{!"any pointer", !1023, i64 0}
!1023 = !{!"omnipotent char", !1024, i64 0}
!1024 = !{!"Simple C/C++ TBAA"}
!1025 = !DILocation(line: 1575, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !402, file: !403, line: 1575, column: 9)
!1027 = !DILocation(line: 1575, column: 11, scope: !1026)
!1028 = !DILocation(line: 1575, column: 9, scope: !402)
!1029 = !DILocation(line: 1576, column: 9, scope: !1026)
!1030 = !DILocation(line: 1578, column: 26, scope: !402)
!1031 = !DILocation(line: 1578, column: 9, scope: !402)
!1032 = !DILocation(line: 1578, column: 7, scope: !402)
!1033 = !DILocation(line: 1580, column: 50, scope: !402)
!1034 = !DILocation(line: 1580, column: 13, scope: !402)
!1035 = !DILocation(line: 1580, column: 11, scope: !402)
!1036 = !DILocation(line: 1581, column: 26, scope: !402)
!1037 = !DILocation(line: 1581, column: 38, scope: !402)
!1038 = !DILocation(line: 1581, column: 5, scope: !402)
!1039 = !DILocation(line: 1582, column: 18, scope: !402)
!1040 = !DILocation(line: 1582, column: 16, scope: !402)
!1041 = !DILocation(line: 1583, column: 26, scope: !402)
!1042 = !DILocation(line: 1583, column: 43, scope: !402)
!1043 = !DILocation(line: 1583, column: 5, scope: !402)
!1044 = !DILocation(line: 1584, column: 9, scope: !412)
!1045 = !DILocation(line: 1584, column: 9, scope: !402)
!1046 = !DILocation(line: 1585, column: 9, scope: !411)
!1047 = !DILocation(line: 1585, column: 14, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !410, file: !403, discriminator: 1)
!1049 = !DILocation(line: 1585, column: 24, scope: !410)
!1050 = !DILocation(line: 1585, column: 54, scope: !410)
!1051 = !DILocation(line: 1585, column: 66, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !410, file: !403, line: 1585, column: 63)
!1053 = !DILocation(line: 1585, column: 83, scope: !1052)
!1054 = !DILocation(line: 1585, column: 63, scope: !1052)
!1055 = !{!1056, !1057, i64 0}
!1056 = !{!"_object", !1057, i64 0, !1022, i64 8}
!1057 = !{!"long", !1023, i64 0}
!1058 = !DILocation(line: 1585, column: 93, scope: !1052)
!1059 = !DILocation(line: 1585, column: 63, scope: !410)
!1060 = !DILocation(line: 1585, column: 63, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !410, file: !403, discriminator: 2)
!1062 = !DILocation(line: 1585, column: 124, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1052, file: !403, discriminator: 3)
!1064 = !DILocation(line: 1585, column: 142, scope: !1052)
!1065 = !{!1056, !1022, i64 8}
!1066 = !DILocation(line: 1585, column: 152, scope: !1052)
!1067 = !{!1068, !1022, i64 48}
!1068 = !{!"_typeobject", !1069, i64 0, !1022, i64 24, !1057, i64 32, !1057, i64 40, !1022, i64 48, !1022, i64 56, !1022, i64 64, !1022, i64 72, !1022, i64 80, !1022, i64 88, !1022, i64 96, !1022, i64 104, !1022, i64 112, !1022, i64 120, !1022, i64 128, !1022, i64 136, !1022, i64 144, !1022, i64 152, !1022, i64 160, !1057, i64 168, !1022, i64 176, !1022, i64 184, !1022, i64 192, !1022, i64 200, !1057, i64 208, !1022, i64 216, !1022, i64 224, !1022, i64 232, !1022, i64 240, !1022, i64 248, !1022, i64 256, !1022, i64 264, !1022, i64 272, !1022, i64 280, !1057, i64 288, !1022, i64 296, !1022, i64 304, !1022, i64 312, !1022, i64 320, !1022, i64 328, !1022, i64 336, !1022, i64 344, !1022, i64 352, !1022, i64 360, !1022, i64 368, !1022, i64 376, !1070, i64 384, !1022, i64 392}
!1069 = !{!"", !1056, i64 0, !1057, i64 16}
!1070 = !{!"int", !1023, i64 0}
!1071 = !DILocation(line: 1585, column: 177, scope: !1052)
!1072 = !DILocation(line: 1585, column: 108, scope: !1052)
!1073 = !DILocation(line: 1585, column: 196, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !411, file: !403, discriminator: 4)
!1075 = !DILocation(line: 1585, column: 196, scope: !410)
!1076 = !DILocation(line: 1585, column: 196, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !410, file: !403, discriminator: 5)
!1078 = !DILocation(line: 1586, column: 11, scope: !411)
!1079 = !DILocation(line: 1587, column: 5, scope: !411)
!1080 = !DILocation(line: 1588, column: 12, scope: !402)
!1081 = !DILocation(line: 1588, column: 5, scope: !402)
!1082 = !DILocation(line: 1589, column: 1, scope: !402)
!1083 = !DILocation(line: 18, column: 30, scope: !413)
!1084 = !DILocation(line: 18, column: 48, scope: !413)
!1085 = !DILocation(line: 20, column: 5, scope: !413)
!1086 = !DILocation(line: 20, column: 15, scope: !413)
!1087 = !DILocation(line: 21, column: 5, scope: !413)
!1088 = !DILocation(line: 21, column: 15, scope: !413)
!1089 = !DILocation(line: 23, column: 34, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !413, file: !414, line: 23, column: 9)
!1091 = !DILocation(line: 23, column: 10, scope: !1090)
!1092 = !DILocation(line: 23, column: 9, scope: !413)
!1093 = !DILocation(line: 26, column: 9, scope: !1090)
!1094 = !DILocation(line: 27, column: 41, scope: !413)
!1095 = !DILocation(line: 27, column: 20, scope: !413)
!1096 = !DILocation(line: 27, column: 18, scope: !413)
!1097 = !DILocation(line: 27, column: 5, scope: !413)
!1098 = !DILocation(line: 31, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !413, file: !414, line: 31, column: 9)
!1100 = !{!1101, !1022, i64 8}
!1101 = !{!"bufferinfo", !1022, i64 0, !1022, i64 8, !1057, i64 16, !1057, i64 24, !1070, i64 32, !1070, i64 36, !1022, i64 40, !1022, i64 48, !1022, i64 56, !1022, i64 64, !1022, i64 72}
!1102 = !DILocation(line: 31, column: 9, scope: !1099)
!1103 = !DILocation(line: 31, column: 9, scope: !413)
!1104 = !DILocation(line: 32, column: 8, scope: !1099)
!1105 = !DILocation(line: 34, column: 12, scope: !413)
!1106 = !DILocation(line: 35, column: 1, scope: !413)
!1107 = !DILocation(line: 34, column: 5, scope: !413)
!1108 = !DILocation(line: 50, column: 30, scope: !480)
!1109 = !DILocation(line: 50, column: 48, scope: !480)
!1110 = !DILocation(line: 52, column: 5, scope: !480)
!1111 = !DILocation(line: 52, column: 15, scope: !480)
!1112 = !DILocation(line: 53, column: 5, scope: !480)
!1113 = !DILocation(line: 53, column: 15, scope: !480)
!1114 = !DILocation(line: 55, column: 34, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !480, file: !414, line: 55, column: 9)
!1116 = !DILocation(line: 55, column: 10, scope: !1115)
!1117 = !DILocation(line: 55, column: 9, scope: !480)
!1118 = !DILocation(line: 58, column: 9, scope: !1115)
!1119 = !DILocation(line: 59, column: 41, scope: !480)
!1120 = !DILocation(line: 59, column: 20, scope: !480)
!1121 = !DILocation(line: 59, column: 18, scope: !480)
!1122 = !DILocation(line: 59, column: 5, scope: !480)
!1123 = !DILocation(line: 63, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !480, file: !414, line: 63, column: 9)
!1125 = !DILocation(line: 63, column: 9, scope: !1124)
!1126 = !DILocation(line: 63, column: 9, scope: !480)
!1127 = !DILocation(line: 64, column: 8, scope: !1124)
!1128 = !DILocation(line: 66, column: 12, scope: !480)
!1129 = !DILocation(line: 67, column: 1, scope: !480)
!1130 = !DILocation(line: 66, column: 5, scope: !480)
!1131 = !DILocation(line: 82, column: 34, scope: !505)
!1132 = !DILocation(line: 82, column: 52, scope: !505)
!1133 = !DILocation(line: 84, column: 5, scope: !505)
!1134 = !DILocation(line: 84, column: 15, scope: !505)
!1135 = !DILocation(line: 85, column: 5, scope: !505)
!1136 = !DILocation(line: 85, column: 15, scope: !505)
!1137 = !DILocation(line: 87, column: 34, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !505, file: !414, line: 87, column: 9)
!1139 = !DILocation(line: 87, column: 10, scope: !1138)
!1140 = !DILocation(line: 87, column: 9, scope: !505)
!1141 = !DILocation(line: 90, column: 9, scope: !1138)
!1142 = !DILocation(line: 91, column: 45, scope: !505)
!1143 = !DILocation(line: 91, column: 20, scope: !505)
!1144 = !DILocation(line: 91, column: 18, scope: !505)
!1145 = !DILocation(line: 91, column: 5, scope: !505)
!1146 = !DILocation(line: 95, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !505, file: !414, line: 95, column: 9)
!1148 = !DILocation(line: 95, column: 9, scope: !1147)
!1149 = !DILocation(line: 95, column: 9, scope: !505)
!1150 = !DILocation(line: 96, column: 8, scope: !1147)
!1151 = !DILocation(line: 98, column: 12, scope: !505)
!1152 = !DILocation(line: 99, column: 1, scope: !505)
!1153 = !DILocation(line: 98, column: 5, scope: !505)
!1154 = !DILocation(line: 114, column: 34, scope: !551)
!1155 = !DILocation(line: 114, column: 52, scope: !551)
!1156 = !DILocation(line: 116, column: 5, scope: !551)
!1157 = !DILocation(line: 116, column: 15, scope: !551)
!1158 = !DILocation(line: 117, column: 5, scope: !551)
!1159 = !DILocation(line: 117, column: 15, scope: !551)
!1160 = !DILocation(line: 119, column: 34, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !551, file: !414, line: 119, column: 9)
!1162 = !DILocation(line: 119, column: 10, scope: !1161)
!1163 = !DILocation(line: 119, column: 9, scope: !551)
!1164 = !DILocation(line: 122, column: 9, scope: !1161)
!1165 = !DILocation(line: 123, column: 45, scope: !551)
!1166 = !DILocation(line: 123, column: 20, scope: !551)
!1167 = !DILocation(line: 123, column: 18, scope: !551)
!1168 = !DILocation(line: 123, column: 5, scope: !551)
!1169 = !DILocation(line: 127, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !551, file: !414, line: 127, column: 9)
!1171 = !DILocation(line: 127, column: 9, scope: !1170)
!1172 = !DILocation(line: 127, column: 9, scope: !551)
!1173 = !DILocation(line: 128, column: 8, scope: !1170)
!1174 = !DILocation(line: 130, column: 12, scope: !551)
!1175 = !DILocation(line: 131, column: 1, scope: !551)
!1176 = !DILocation(line: 130, column: 5, scope: !551)
!1177 = !DILocation(line: 146, column: 31, scope: !576)
!1178 = !DILocation(line: 146, column: 49, scope: !576)
!1179 = !DILocation(line: 148, column: 5, scope: !576)
!1180 = !DILocation(line: 148, column: 15, scope: !576)
!1181 = !DILocation(line: 149, column: 5, scope: !576)
!1182 = !DILocation(line: 149, column: 15, scope: !576)
!1183 = !DILocation(line: 151, column: 34, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !576, file: !414, line: 151, column: 9)
!1185 = !DILocation(line: 151, column: 10, scope: !1184)
!1186 = !DILocation(line: 151, column: 9, scope: !576)
!1187 = !DILocation(line: 154, column: 9, scope: !1184)
!1188 = !DILocation(line: 155, column: 42, scope: !576)
!1189 = !DILocation(line: 155, column: 20, scope: !576)
!1190 = !DILocation(line: 155, column: 18, scope: !576)
!1191 = !DILocation(line: 155, column: 5, scope: !576)
!1192 = !DILocation(line: 159, column: 14, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !576, file: !414, line: 159, column: 9)
!1194 = !DILocation(line: 159, column: 9, scope: !1193)
!1195 = !DILocation(line: 159, column: 9, scope: !576)
!1196 = !DILocation(line: 160, column: 8, scope: !1193)
!1197 = !DILocation(line: 162, column: 12, scope: !576)
!1198 = !DILocation(line: 163, column: 1, scope: !576)
!1199 = !DILocation(line: 162, column: 5, scope: !576)
!1200 = !DILocation(line: 210, column: 31, scope: !618)
!1201 = !DILocation(line: 210, column: 49, scope: !618)
!1202 = !DILocation(line: 212, column: 5, scope: !618)
!1203 = !DILocation(line: 212, column: 15, scope: !618)
!1204 = !DILocation(line: 213, column: 5, scope: !618)
!1205 = !DILocation(line: 213, column: 15, scope: !618)
!1206 = !DILocation(line: 215, column: 34, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !618, file: !414, line: 215, column: 9)
!1208 = !DILocation(line: 215, column: 10, scope: !1207)
!1209 = !DILocation(line: 215, column: 9, scope: !618)
!1210 = !DILocation(line: 218, column: 9, scope: !1207)
!1211 = !DILocation(line: 219, column: 42, scope: !618)
!1212 = !DILocation(line: 219, column: 20, scope: !618)
!1213 = !DILocation(line: 219, column: 18, scope: !618)
!1214 = !DILocation(line: 219, column: 5, scope: !618)
!1215 = !DILocation(line: 223, column: 14, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !618, file: !414, line: 223, column: 9)
!1217 = !DILocation(line: 223, column: 9, scope: !1216)
!1218 = !DILocation(line: 223, column: 9, scope: !618)
!1219 = !DILocation(line: 224, column: 8, scope: !1216)
!1220 = !DILocation(line: 226, column: 12, scope: !618)
!1221 = !DILocation(line: 227, column: 1, scope: !618)
!1222 = !DILocation(line: 226, column: 5, scope: !618)
!1223 = !DILocation(line: 386, column: 31, scope: !643)
!1224 = !DILocation(line: 386, column: 49, scope: !643)
!1225 = !DILocation(line: 388, column: 5, scope: !643)
!1226 = !DILocation(line: 388, column: 15, scope: !643)
!1227 = !DILocation(line: 389, column: 5, scope: !643)
!1228 = !DILocation(line: 389, column: 15, scope: !643)
!1229 = !DILocation(line: 391, column: 34, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !643, file: !414, line: 391, column: 9)
!1231 = !DILocation(line: 391, column: 10, scope: !1230)
!1232 = !DILocation(line: 391, column: 9, scope: !643)
!1233 = !DILocation(line: 394, column: 9, scope: !1230)
!1234 = !DILocation(line: 395, column: 42, scope: !643)
!1235 = !DILocation(line: 395, column: 20, scope: !643)
!1236 = !DILocation(line: 395, column: 18, scope: !643)
!1237 = !DILocation(line: 395, column: 5, scope: !643)
!1238 = !DILocation(line: 399, column: 16, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !643, file: !414, line: 399, column: 9)
!1240 = !DILocation(line: 399, column: 9, scope: !1239)
!1241 = !DILocation(line: 399, column: 9, scope: !643)
!1242 = !DILocation(line: 400, column: 8, scope: !1239)
!1243 = !DILocation(line: 402, column: 12, scope: !643)
!1244 = !DILocation(line: 403, column: 1, scope: !643)
!1245 = !DILocation(line: 402, column: 5, scope: !643)
!1246 = !DILocation(line: 351, column: 31, scope: !671)
!1247 = !DILocation(line: 351, column: 49, scope: !671)
!1248 = !DILocation(line: 353, column: 5, scope: !671)
!1249 = !DILocation(line: 353, column: 15, scope: !671)
!1250 = !DILocation(line: 354, column: 5, scope: !671)
!1251 = !DILocation(line: 354, column: 15, scope: !671)
!1252 = !DILocation(line: 356, column: 34, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !671, file: !414, line: 356, column: 9)
!1254 = !DILocation(line: 356, column: 10, scope: !1253)
!1255 = !DILocation(line: 356, column: 9, scope: !671)
!1256 = !DILocation(line: 359, column: 9, scope: !1253)
!1257 = !DILocation(line: 360, column: 42, scope: !671)
!1258 = !DILocation(line: 360, column: 20, scope: !671)
!1259 = !DILocation(line: 360, column: 18, scope: !671)
!1260 = !DILocation(line: 360, column: 5, scope: !671)
!1261 = !DILocation(line: 364, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !671, file: !414, line: 364, column: 9)
!1263 = !DILocation(line: 364, column: 9, scope: !1262)
!1264 = !DILocation(line: 364, column: 9, scope: !671)
!1265 = !DILocation(line: 365, column: 8, scope: !1262)
!1266 = !DILocation(line: 367, column: 12, scope: !671)
!1267 = !DILocation(line: 368, column: 1, scope: !671)
!1268 = !DILocation(line: 367, column: 5, scope: !671)
!1269 = !DILocation(line: 178, column: 35, scope: !691)
!1270 = !DILocation(line: 178, column: 53, scope: !691)
!1271 = !DILocation(line: 180, column: 5, scope: !691)
!1272 = !DILocation(line: 180, column: 15, scope: !691)
!1273 = !DILocation(line: 181, column: 5, scope: !691)
!1274 = !DILocation(line: 181, column: 15, scope: !691)
!1275 = !DILocation(line: 183, column: 34, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !691, file: !414, line: 183, column: 9)
!1277 = !DILocation(line: 183, column: 10, scope: !1276)
!1278 = !DILocation(line: 183, column: 9, scope: !691)
!1279 = !DILocation(line: 186, column: 9, scope: !1276)
!1280 = !DILocation(line: 187, column: 46, scope: !691)
!1281 = !DILocation(line: 187, column: 20, scope: !691)
!1282 = !DILocation(line: 187, column: 18, scope: !691)
!1283 = !DILocation(line: 187, column: 5, scope: !691)
!1284 = !DILocation(line: 191, column: 14, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !691, file: !414, line: 191, column: 9)
!1286 = !DILocation(line: 191, column: 9, scope: !1285)
!1287 = !DILocation(line: 191, column: 9, scope: !691)
!1288 = !DILocation(line: 192, column: 8, scope: !1285)
!1289 = !DILocation(line: 194, column: 12, scope: !691)
!1290 = !DILocation(line: 195, column: 1, scope: !691)
!1291 = !DILocation(line: 194, column: 5, scope: !691)
!1292 = !DILocation(line: 242, column: 37, scope: !716)
!1293 = !DILocation(line: 242, column: 55, scope: !716)
!1294 = !DILocation(line: 244, column: 5, scope: !716)
!1295 = !DILocation(line: 244, column: 15, scope: !716)
!1296 = !DILocation(line: 245, column: 5, scope: !716)
!1297 = !DILocation(line: 245, column: 15, scope: !716)
!1298 = !DILocation(line: 247, column: 34, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !716, file: !414, line: 247, column: 9)
!1300 = !DILocation(line: 247, column: 10, scope: !1299)
!1301 = !DILocation(line: 247, column: 9, scope: !716)
!1302 = !DILocation(line: 250, column: 9, scope: !1299)
!1303 = !DILocation(line: 251, column: 48, scope: !716)
!1304 = !DILocation(line: 251, column: 20, scope: !716)
!1305 = !DILocation(line: 251, column: 18, scope: !716)
!1306 = !DILocation(line: 251, column: 5, scope: !716)
!1307 = !DILocation(line: 255, column: 14, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !716, file: !414, line: 255, column: 9)
!1309 = !DILocation(line: 255, column: 9, scope: !1308)
!1310 = !DILocation(line: 255, column: 9, scope: !716)
!1311 = !DILocation(line: 256, column: 8, scope: !1308)
!1312 = !DILocation(line: 258, column: 12, scope: !716)
!1313 = !DILocation(line: 259, column: 1, scope: !716)
!1314 = !DILocation(line: 258, column: 5, scope: !716)
!1315 = !DILocation(line: 274, column: 31, scope: !826)
!1316 = !DILocation(line: 274, column: 49, scope: !826)
!1317 = !DILocation(line: 276, column: 5, scope: !826)
!1318 = !DILocation(line: 276, column: 15, scope: !826)
!1319 = !DILocation(line: 277, column: 5, scope: !826)
!1320 = !DILocation(line: 277, column: 15, scope: !826)
!1321 = !DILocation(line: 278, column: 5, scope: !826)
!1322 = !DILocation(line: 278, column: 9, scope: !826)
!1323 = !DILocation(line: 279, column: 5, scope: !826)
!1324 = !DILocation(line: 279, column: 9, scope: !826)
!1325 = !DILocation(line: 281, column: 34, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !826, file: !414, line: 281, column: 9)
!1327 = !DILocation(line: 281, column: 10, scope: !1326)
!1328 = !DILocation(line: 281, column: 9, scope: !826)
!1329 = !DILocation(line: 284, column: 9, scope: !1326)
!1330 = !DILocation(line: 285, column: 43, scope: !826)
!1331 = !DILocation(line: 285, column: 58, scope: !826)
!1332 = !{!1070, !1070, i64 0}
!1333 = !DILocation(line: 285, column: 21, scope: !826)
!1334 = !DILocation(line: 285, column: 19, scope: !826)
!1335 = !DILocation(line: 286, column: 10, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !826, file: !414, line: 286, column: 9)
!1337 = !DILocation(line: 286, column: 24, scope: !1336)
!1338 = !DILocation(line: 286, column: 31, scope: !1336)
!1339 = !DILocation(line: 286, column: 34, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1336, file: !414, discriminator: 1)
!1341 = !DILocation(line: 286, column: 9, scope: !826)
!1342 = !DILocation(line: 287, column: 9, scope: !1336)
!1343 = !DILocation(line: 288, column: 42, scope: !826)
!1344 = !DILocation(line: 288, column: 36, scope: !826)
!1345 = !DILocation(line: 288, column: 20, scope: !826)
!1346 = !DILocation(line: 288, column: 18, scope: !826)
!1347 = !DILocation(line: 288, column: 5, scope: !826)
!1348 = !DILocation(line: 292, column: 14, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !826, file: !414, line: 292, column: 9)
!1350 = !DILocation(line: 292, column: 9, scope: !1349)
!1351 = !DILocation(line: 292, column: 9, scope: !826)
!1352 = !DILocation(line: 293, column: 8, scope: !1349)
!1353 = !DILocation(line: 295, column: 12, scope: !826)
!1354 = !DILocation(line: 296, column: 1, scope: !826)
!1355 = !DILocation(line: 295, column: 5, scope: !826)
!1356 = !DILocation(line: 311, column: 29, scope: !844)
!1357 = !DILocation(line: 311, column: 47, scope: !844)
!1358 = !DILocation(line: 313, column: 5, scope: !844)
!1359 = !DILocation(line: 313, column: 15, scope: !844)
!1360 = !DILocation(line: 314, column: 5, scope: !844)
!1361 = !DILocation(line: 314, column: 15, scope: !844)
!1362 = !DILocation(line: 315, column: 5, scope: !844)
!1363 = !DILocation(line: 315, column: 18, scope: !844)
!1364 = !DILocation(line: 316, column: 5, scope: !844)
!1365 = !DILocation(line: 316, column: 18, scope: !844)
!1366 = !DILocation(line: 318, column: 34, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !844, file: !414, line: 318, column: 9)
!1368 = !DILocation(line: 318, column: 10, scope: !1367)
!1369 = !DILocation(line: 318, column: 9, scope: !844)
!1370 = !DILocation(line: 321, column: 9, scope: !1367)
!1371 = !DILocation(line: 322, column: 41, scope: !844)
!1372 = !DILocation(line: 322, column: 56, scope: !844)
!1373 = !DILocation(line: 322, column: 21, scope: !844)
!1374 = !DILocation(line: 322, column: 19, scope: !844)
!1375 = !DILocation(line: 323, column: 10, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !844, file: !414, line: 323, column: 9)
!1377 = !DILocation(line: 323, column: 24, scope: !1376)
!1378 = !DILocation(line: 323, column: 31, scope: !1376)
!1379 = !DILocation(line: 323, column: 34, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1376, file: !414, discriminator: 1)
!1381 = !DILocation(line: 323, column: 9, scope: !844)
!1382 = !DILocation(line: 324, column: 9, scope: !1376)
!1383 = !DILocation(line: 325, column: 59, scope: !844)
!1384 = !DILocation(line: 325, column: 44, scope: !844)
!1385 = !DILocation(line: 325, column: 20, scope: !844)
!1386 = !DILocation(line: 325, column: 18, scope: !844)
!1387 = !DILocation(line: 325, column: 5, scope: !844)
!1388 = !DILocation(line: 329, column: 14, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !844, file: !414, line: 329, column: 9)
!1390 = !DILocation(line: 329, column: 9, scope: !1389)
!1391 = !DILocation(line: 329, column: 9, scope: !844)
!1392 = !DILocation(line: 330, column: 8, scope: !1389)
!1393 = !DILocation(line: 332, column: 12, scope: !844)
!1394 = !DILocation(line: 333, column: 1, scope: !844)
!1395 = !DILocation(line: 332, column: 5, scope: !844)
!1396 = !DILocation(line: 418, column: 30, scope: !862)
!1397 = !DILocation(line: 418, column: 48, scope: !862)
!1398 = !DILocation(line: 418, column: 64, scope: !862)
!1399 = !DILocation(line: 420, column: 5, scope: !862)
!1400 = !DILocation(line: 420, column: 15, scope: !862)
!1401 = !DILocation(line: 422, column: 5, scope: !862)
!1402 = !DILocation(line: 422, column: 15, scope: !862)
!1403 = !DILocation(line: 423, column: 5, scope: !862)
!1404 = !DILocation(line: 423, column: 9, scope: !862)
!1405 = !DILocation(line: 425, column: 45, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !862, file: !414, line: 425, column: 9)
!1407 = !DILocation(line: 425, column: 51, scope: !1406)
!1408 = !DILocation(line: 425, column: 10, scope: !1406)
!1409 = !DILocation(line: 425, column: 9, scope: !862)
!1410 = !DILocation(line: 428, column: 9, scope: !1406)
!1411 = !DILocation(line: 429, column: 41, scope: !862)
!1412 = !DILocation(line: 429, column: 56, scope: !862)
!1413 = !DILocation(line: 429, column: 20, scope: !862)
!1414 = !DILocation(line: 429, column: 18, scope: !862)
!1415 = !DILocation(line: 429, column: 5, scope: !862)
!1416 = !DILocation(line: 433, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !862, file: !414, line: 433, column: 9)
!1418 = !DILocation(line: 433, column: 9, scope: !1417)
!1419 = !DILocation(line: 433, column: 9, scope: !862)
!1420 = !DILocation(line: 434, column: 8, scope: !1417)
!1421 = !DILocation(line: 436, column: 12, scope: !862)
!1422 = !DILocation(line: 437, column: 1, scope: !862)
!1423 = !DILocation(line: 436, column: 5, scope: !862)
!1424 = !DILocation(line: 456, column: 30, scope: !886)
!1425 = !DILocation(line: 456, column: 48, scope: !886)
!1426 = !DILocation(line: 456, column: 64, scope: !886)
!1427 = !DILocation(line: 458, column: 5, scope: !886)
!1428 = !DILocation(line: 458, column: 15, scope: !886)
!1429 = !DILocation(line: 460, column: 5, scope: !886)
!1430 = !DILocation(line: 460, column: 15, scope: !886)
!1431 = !DILocation(line: 461, column: 5, scope: !886)
!1432 = !DILocation(line: 461, column: 9, scope: !886)
!1433 = !DILocation(line: 462, column: 5, scope: !886)
!1434 = !DILocation(line: 462, column: 9, scope: !886)
!1435 = !DILocation(line: 463, column: 5, scope: !886)
!1436 = !DILocation(line: 463, column: 9, scope: !886)
!1437 = !DILocation(line: 465, column: 45, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !886, file: !414, line: 465, column: 9)
!1439 = !DILocation(line: 465, column: 51, scope: !1438)
!1440 = !DILocation(line: 465, column: 10, scope: !1438)
!1441 = !DILocation(line: 465, column: 9, scope: !886)
!1442 = !DILocation(line: 468, column: 9, scope: !1438)
!1443 = !DILocation(line: 469, column: 41, scope: !886)
!1444 = !DILocation(line: 469, column: 56, scope: !886)
!1445 = !DILocation(line: 469, column: 67, scope: !886)
!1446 = !DILocation(line: 469, column: 75, scope: !886)
!1447 = !DILocation(line: 469, column: 20, scope: !886)
!1448 = !DILocation(line: 469, column: 18, scope: !886)
!1449 = !DILocation(line: 469, column: 5, scope: !886)
!1450 = !DILocation(line: 473, column: 14, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !886, file: !414, line: 473, column: 9)
!1452 = !DILocation(line: 473, column: 9, scope: !1451)
!1453 = !DILocation(line: 473, column: 9, scope: !886)
!1454 = !DILocation(line: 474, column: 8, scope: !1451)
!1455 = !DILocation(line: 476, column: 12, scope: !886)
!1456 = !DILocation(line: 477, column: 1, scope: !886)
!1457 = !DILocation(line: 476, column: 5, scope: !886)
!1458 = !DILocation(line: 208, column: 34, scope: !446)
!1459 = !DILocation(line: 208, column: 50, scope: !446)
!1460 = !DILocation(line: 210, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !446, file: !403, line: 210, column: 9)
!1462 = !DILocation(line: 210, column: 13, scope: !1461)
!1463 = !DILocation(line: 210, column: 9, scope: !446)
!1464 = !DILocation(line: 211, column: 26, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !403, line: 210, column: 28)
!1466 = !DILocation(line: 211, column: 9, scope: !1465)
!1467 = !DILocation(line: 212, column: 9, scope: !1465)
!1468 = !DILocation(line: 214, column: 26, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !446, file: !403, line: 214, column: 9)
!1470 = !DILocation(line: 214, column: 33, scope: !1469)
!1471 = !DILocation(line: 214, column: 44, scope: !1469)
!1472 = !{!1068, !1057, i64 168}
!1473 = !DILocation(line: 214, column: 53, scope: !1469)
!1474 = !DILocation(line: 214, column: 70, scope: !1469)
!1475 = !DILocation(line: 214, column: 9, scope: !446)
!1476 = !DILocation(line: 215, column: 47, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !403, line: 215, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !403, line: 214, column: 77)
!1479 = !DILocation(line: 215, column: 31, scope: !1477)
!1480 = !DILocation(line: 215, column: 53, scope: !1477)
!1481 = !DILocation(line: 215, column: 59, scope: !1477)
!1482 = !DILocation(line: 215, column: 29, scope: !1477)
!1483 = !DILocation(line: 215, column: 29, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1477, file: !403, discriminator: 1)
!1485 = !DILocation(line: 215, column: 102, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1477, file: !403, discriminator: 2)
!1487 = !DILocation(line: 215, column: 72, scope: !1477)
!1488 = !DILocation(line: 215, column: 110, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !403, discriminator: 4)
!1490 = !DILexicalBlockFile(scope: !1477, file: !403, discriminator: 3)
!1491 = !DILocation(line: 215, column: 13, scope: !1478)
!1492 = !DILocation(line: 216, column: 13, scope: !1477)
!1493 = !DILocation(line: 217, column: 60, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1478, file: !403, line: 217, column: 13)
!1495 = !DILocation(line: 217, column: 44, scope: !1494)
!1496 = !DILocation(line: 217, column: 66, scope: !1494)
!1497 = !DILocation(line: 217, column: 72, scope: !1494)
!1498 = !DILocation(line: 217, column: 41, scope: !1494)
!1499 = !DILocation(line: 217, column: 13, scope: !1478)
!1500 = !DILocation(line: 218, column: 29, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1494, file: !403, line: 217, column: 80)
!1502 = !DILocation(line: 218, column: 13, scope: !1501)
!1503 = !DILocation(line: 220, column: 13, scope: !1501)
!1504 = !DILocation(line: 223, column: 74, scope: !1478)
!1505 = !DILocation(line: 223, column: 57, scope: !1478)
!1506 = !DILocation(line: 223, column: 81, scope: !1478)
!1507 = !DILocation(line: 223, column: 87, scope: !1478)
!1508 = !DILocation(line: 223, column: 55, scope: !1478)
!1509 = !DILocation(line: 223, column: 145, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 1)
!1511 = !DILocation(line: 223, column: 129, scope: !1478)
!1512 = !DILocation(line: 223, column: 151, scope: !1478)
!1513 = !DILocation(line: 223, column: 157, scope: !1478)
!1514 = !DILocation(line: 223, column: 99, scope: !1478)
!1515 = !DILocation(line: 223, column: 192, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 3)
!1517 = !DILocation(line: 223, column: 175, scope: !1478)
!1518 = !DILocation(line: 223, column: 197, scope: !1478)
!1519 = !DILocation(line: 223, column: 167, scope: !1478)
!1520 = !DILocation(line: 223, column: 240, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 4)
!1522 = !DILocation(line: 223, column: 214, scope: !1478)
!1523 = !DILocation(line: 223, column: 245, scope: !1478)
!1524 = !DILocation(line: 223, column: 206, scope: !1478)
!1525 = !DILocation(line: 223, column: 55, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !403, discriminator: 6)
!1527 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 5)
!1528 = !DILocation(line: 223, column: 292, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 2)
!1530 = !DILocation(line: 223, column: 272, scope: !1478)
!1531 = !DILocation(line: 223, column: 299, scope: !1478)
!1532 = !DILocation(line: 223, column: 304, scope: !1478)
!1533 = !DILocation(line: 223, column: 9, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !403, discriminator: 8)
!1535 = !DILexicalBlockFile(scope: !1478, file: !403, discriminator: 7)
!1536 = !DILocation(line: 223, column: 14, scope: !1478)
!1537 = !DILocation(line: 223, column: 18, scope: !1478)
!1538 = !{!1101, !1022, i64 0}
!1539 = !DILocation(line: 224, column: 68, scope: !1478)
!1540 = !DILocation(line: 224, column: 50, scope: !1478)
!1541 = !DILocation(line: 224, column: 75, scope: !1478)
!1542 = !{!1543, !1057, i64 16}
!1543 = !{!"", !1056, i64 0, !1057, i64 16, !1057, i64 24, !1544, i64 32, !1022, i64 40}
!1544 = !{!"", !1070, i64 0, !1070, i64 0, !1070, i64 0, !1070, i64 0, !1070, i64 0, !1070, i64 1}
!1545 = !DILocation(line: 224, column: 9, scope: !1478)
!1546 = !DILocation(line: 224, column: 14, scope: !1478)
!1547 = !DILocation(line: 224, column: 18, scope: !1478)
!1548 = !{!1101, !1057, i64 16}
!1549 = !DILocation(line: 225, column: 9, scope: !1478)
!1550 = !DILocation(line: 225, column: 14, scope: !1478)
!1551 = !DILocation(line: 225, column: 18, scope: !1478)
!1552 = !DILocation(line: 226, column: 9, scope: !1478)
!1553 = !DILocation(line: 228, column: 28, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !446, file: !403, line: 228, column: 9)
!1555 = !DILocation(line: 228, column: 33, scope: !1554)
!1556 = !DILocation(line: 228, column: 9, scope: !1554)
!1557 = !DILocation(line: 228, column: 41, scope: !1554)
!1558 = !DILocation(line: 228, column: 9, scope: !446)
!1559 = !DILocation(line: 229, column: 22, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1554, file: !403, line: 228, column: 47)
!1561 = !DILocation(line: 231, column: 46, scope: !1560)
!1562 = !DILocation(line: 231, column: 53, scope: !1560)
!1563 = !DILocation(line: 229, column: 9, scope: !1560)
!1564 = !DILocation(line: 232, column: 9, scope: !1560)
!1565 = !DILocation(line: 234, column: 32, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !446, file: !403, line: 234, column: 9)
!1567 = !DILocation(line: 234, column: 10, scope: !1566)
!1568 = !DILocation(line: 234, column: 9, scope: !446)
!1569 = !DILocation(line: 235, column: 22, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !403, line: 234, column: 43)
!1571 = !DILocation(line: 237, column: 46, scope: !1570)
!1572 = !DILocation(line: 237, column: 53, scope: !1570)
!1573 = !DILocation(line: 235, column: 9, scope: !1570)
!1574 = !DILocation(line: 238, column: 26, scope: !1570)
!1575 = !DILocation(line: 238, column: 9, scope: !1570)
!1576 = !DILocation(line: 239, column: 9, scope: !1570)
!1577 = !DILocation(line: 241, column: 5, scope: !446)
!1578 = !DILocation(line: 242, column: 1, scope: !446)
!1579 = !DILocation(line: 256, column: 35, scope: !452)
!1580 = !DILocation(line: 256, column: 54, scope: !452)
!1581 = !DILocation(line: 259, column: 5, scope: !452)
!1582 = !DILocation(line: 259, column: 20, scope: !452)
!1583 = !DILocation(line: 259, column: 33, scope: !452)
!1584 = !DILocation(line: 260, column: 5, scope: !452)
!1585 = !DILocation(line: 260, column: 9, scope: !452)
!1586 = !DILocation(line: 261, column: 5, scope: !452)
!1587 = !DILocation(line: 261, column: 19, scope: !452)
!1588 = !DILocation(line: 262, column: 5, scope: !452)
!1589 = !DILocation(line: 262, column: 18, scope: !452)
!1590 = !DILocation(line: 263, column: 5, scope: !452)
!1591 = !DILocation(line: 263, column: 15, scope: !452)
!1592 = !DILocation(line: 264, column: 5, scope: !452)
!1593 = !DILocation(line: 264, column: 16, scope: !452)
!1594 = !DILocation(line: 264, column: 27, scope: !452)
!1595 = !DILocation(line: 266, column: 18, scope: !452)
!1596 = !DILocation(line: 266, column: 24, scope: !452)
!1597 = !DILocation(line: 266, column: 16, scope: !452)
!1598 = !DILocation(line: 267, column: 17, scope: !452)
!1599 = !DILocation(line: 267, column: 23, scope: !452)
!1600 = !DILocation(line: 267, column: 15, scope: !452)
!1601 = !{!1057, !1057, i64 0}
!1602 = !DILocation(line: 272, column: 27, scope: !452)
!1603 = !DILocation(line: 272, column: 16, scope: !452)
!1604 = !{!1023, !1023, i64 0}
!1605 = !DILocation(line: 272, column: 30, scope: !452)
!1606 = !DILocation(line: 272, column: 37, scope: !452)
!1607 = !DILocation(line: 272, column: 15, scope: !452)
!1608 = !DILocation(line: 272, column: 13, scope: !452)
!1609 = !DILocation(line: 273, column: 14, scope: !452)
!1610 = !DILocation(line: 276, column: 52, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !452, file: !403, line: 276, column: 10)
!1612 = !DILocation(line: 276, column: 14, scope: !1611)
!1613 = !DILocation(line: 276, column: 13, scope: !1611)
!1614 = !DILocation(line: 276, column: 62, scope: !1611)
!1615 = !DILocation(line: 276, column: 10, scope: !452)
!1616 = !DILocation(line: 277, column: 9, scope: !1611)
!1617 = !DILocation(line: 278, column: 68, scope: !452)
!1618 = !DILocation(line: 278, column: 50, scope: !452)
!1619 = !DILocation(line: 278, column: 74, scope: !452)
!1620 = !DILocation(line: 278, column: 48, scope: !452)
!1621 = !DILocation(line: 278, column: 14, scope: !452)
!1622 = !DILocation(line: 280, column: 5, scope: !452)
!1623 = !DILocation(line: 280, column: 12, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !403, discriminator: 2)
!1625 = !DILexicalBlockFile(scope: !473, file: !403, discriminator: 1)
!1626 = !DILocation(line: 280, column: 20, scope: !473)
!1627 = !DILocation(line: 280, column: 5, scope: !474)
!1628 = !DILocation(line: 282, column: 20, scope: !472)
!1629 = !DILocation(line: 282, column: 30, scope: !472)
!1630 = !DILocation(line: 282, column: 19, scope: !472)
!1631 = !DILocation(line: 282, column: 38, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !472, file: !403, discriminator: 1)
!1633 = !DILocation(line: 282, column: 37, scope: !472)
!1634 = !DILocation(line: 282, column: 19, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !472, file: !403, discriminator: 2)
!1636 = !DILocation(line: 282, column: 19, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !403, discriminator: 4)
!1638 = !DILexicalBlockFile(scope: !472, file: !403, discriminator: 3)
!1639 = !DILocation(line: 282, column: 17, scope: !472)
!1640 = !DILocation(line: 283, column: 14, scope: !471)
!1641 = !DILocation(line: 283, column: 22, scope: !471)
!1642 = !DILocation(line: 283, column: 30, scope: !471)
!1643 = !DILocation(line: 283, column: 33, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !471, file: !403, discriminator: 1)
!1645 = !DILocation(line: 283, column: 41, scope: !471)
!1646 = !DILocation(line: 283, column: 49, scope: !471)
!1647 = !DILocation(line: 283, column: 52, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !471, file: !403, discriminator: 2)
!1649 = !DILocation(line: 283, column: 62, scope: !471)
!1650 = !DILocation(line: 283, column: 14, scope: !472)
!1651 = !DILocation(line: 288, column: 21, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !471, file: !403, line: 283, column: 68)
!1653 = !DILocation(line: 289, column: 9, scope: !1652)
!1654 = !DILocation(line: 295, column: 18, scope: !469)
!1655 = !DILocation(line: 295, column: 26, scope: !469)
!1656 = !DILocation(line: 295, column: 32, scope: !469)
!1657 = !DILocation(line: 295, column: 35, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !469, file: !403, discriminator: 1)
!1659 = !DILocation(line: 295, column: 43, scope: !469)
!1660 = !DILocation(line: 295, column: 18, scope: !470)
!1661 = !DILocation(line: 296, column: 33, scope: !468)
!1662 = !DILocation(line: 296, column: 17, scope: !468)
!1663 = !DILocation(line: 297, column: 17, scope: !468)
!1664 = !DILocation(line: 297, column: 22, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !467, file: !403, discriminator: 1)
!1666 = !DILocation(line: 297, column: 32, scope: !467)
!1667 = !DILocation(line: 297, column: 62, scope: !467)
!1668 = !DILocation(line: 297, column: 75, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !467, file: !403, line: 297, column: 72)
!1670 = !DILocation(line: 297, column: 92, scope: !1669)
!1671 = !DILocation(line: 297, column: 72, scope: !1669)
!1672 = !DILocation(line: 297, column: 102, scope: !1669)
!1673 = !DILocation(line: 297, column: 72, scope: !467)
!1674 = !DILocation(line: 297, column: 72, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !467, file: !403, discriminator: 2)
!1676 = !DILocation(line: 297, column: 133, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1669, file: !403, discriminator: 3)
!1678 = !DILocation(line: 297, column: 151, scope: !1669)
!1679 = !DILocation(line: 297, column: 161, scope: !1669)
!1680 = !DILocation(line: 297, column: 186, scope: !1669)
!1681 = !DILocation(line: 297, column: 117, scope: !1669)
!1682 = !DILocation(line: 297, column: 205, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !468, file: !403, discriminator: 4)
!1684 = !DILocation(line: 297, column: 205, scope: !467)
!1685 = !DILocation(line: 297, column: 205, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !467, file: !403, discriminator: 5)
!1687 = !DILocation(line: 298, column: 17, scope: !468)
!1688 = !DILocation(line: 300, column: 24, scope: !470)
!1689 = !DILocation(line: 300, column: 32, scope: !470)
!1690 = !DILocation(line: 300, column: 39, scope: !470)
!1691 = !DILocation(line: 300, column: 23, scope: !470)
!1692 = !DILocation(line: 300, column: 21, scope: !470)
!1693 = !DILocation(line: 306, column: 21, scope: !472)
!1694 = !DILocation(line: 306, column: 30, scope: !472)
!1695 = !DILocation(line: 306, column: 39, scope: !472)
!1696 = !DILocation(line: 306, column: 38, scope: !472)
!1697 = !DILocation(line: 306, column: 36, scope: !472)
!1698 = !DILocation(line: 306, column: 18, scope: !472)
!1699 = !DILocation(line: 307, column: 18, scope: !472)
!1700 = !DILocation(line: 308, column: 14, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !472, file: !403, line: 308, column: 14)
!1702 = !DILocation(line: 308, column: 23, scope: !1701)
!1703 = !DILocation(line: 308, column: 14, scope: !472)
!1704 = !DILocation(line: 309, column: 22, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !403, line: 308, column: 30)
!1706 = !DILocation(line: 310, column: 28, scope: !1705)
!1707 = !DILocation(line: 310, column: 40, scope: !1705)
!1708 = !DILocation(line: 310, column: 37, scope: !1705)
!1709 = !DILocation(line: 310, column: 50, scope: !1705)
!1710 = !DILocation(line: 310, column: 27, scope: !1705)
!1711 = !DILocation(line: 310, column: 22, scope: !1705)
!1712 = !DILocation(line: 310, column: 25, scope: !1705)
!1713 = !DILocation(line: 311, column: 32, scope: !1705)
!1714 = !DILocation(line: 311, column: 29, scope: !1705)
!1715 = !DILocation(line: 311, column: 42, scope: !1705)
!1716 = !DILocation(line: 311, column: 22, scope: !1705)
!1717 = !DILocation(line: 312, column: 20, scope: !1705)
!1718 = !DILocation(line: 313, column: 9, scope: !1705)
!1719 = !DILocation(line: 314, column: 5, scope: !472)
!1720 = !DILocation(line: 280, column: 35, scope: !473)
!1721 = !DILocation(line: 280, column: 49, scope: !473)
!1722 = !DILocation(line: 280, column: 5, scope: !473)
!1723 = !DILocation(line: 319, column: 5, scope: !452)
!1724 = !DILocation(line: 319, column: 21, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !403, discriminator: 2)
!1726 = !DILexicalBlockFile(scope: !452, file: !403, discriminator: 1)
!1727 = !DILocation(line: 319, column: 24, scope: !452)
!1728 = !DILocation(line: 320, column: 30, scope: !479)
!1729 = !DILocation(line: 320, column: 19, scope: !479)
!1730 = !DILocation(line: 320, column: 17, scope: !479)
!1731 = !DILocation(line: 322, column: 14, scope: !478)
!1732 = !DILocation(line: 322, column: 22, scope: !478)
!1733 = !DILocation(line: 322, column: 29, scope: !478)
!1734 = !DILocation(line: 322, column: 32, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !478, file: !403, discriminator: 1)
!1736 = !DILocation(line: 322, column: 40, scope: !478)
!1737 = !DILocation(line: 322, column: 50, scope: !478)
!1738 = !DILocation(line: 323, column: 14, scope: !478)
!1739 = !DILocation(line: 323, column: 22, scope: !478)
!1740 = !DILocation(line: 323, column: 30, scope: !478)
!1741 = !DILocation(line: 323, column: 33, scope: !1735)
!1742 = !DILocation(line: 323, column: 41, scope: !478)
!1743 = !DILocation(line: 322, column: 14, scope: !479)
!1744 = !DILocation(line: 324, column: 29, scope: !477)
!1745 = !DILocation(line: 324, column: 13, scope: !477)
!1746 = !DILocation(line: 325, column: 13, scope: !477)
!1747 = !DILocation(line: 325, column: 18, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !476, file: !403, discriminator: 1)
!1749 = !DILocation(line: 325, column: 28, scope: !476)
!1750 = !DILocation(line: 325, column: 58, scope: !476)
!1751 = !DILocation(line: 325, column: 71, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !476, file: !403, line: 325, column: 68)
!1753 = !DILocation(line: 325, column: 88, scope: !1752)
!1754 = !DILocation(line: 325, column: 68, scope: !1752)
!1755 = !DILocation(line: 325, column: 98, scope: !1752)
!1756 = !DILocation(line: 325, column: 68, scope: !476)
!1757 = !DILocation(line: 325, column: 68, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !476, file: !403, discriminator: 2)
!1759 = !DILocation(line: 325, column: 129, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1752, file: !403, discriminator: 3)
!1761 = !DILocation(line: 325, column: 147, scope: !1752)
!1762 = !DILocation(line: 325, column: 157, scope: !1752)
!1763 = !DILocation(line: 325, column: 182, scope: !1752)
!1764 = !DILocation(line: 325, column: 113, scope: !1752)
!1765 = !DILocation(line: 325, column: 201, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !477, file: !403, discriminator: 4)
!1767 = !DILocation(line: 325, column: 201, scope: !476)
!1768 = !DILocation(line: 325, column: 201, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !476, file: !403, discriminator: 5)
!1770 = !DILocation(line: 326, column: 13, scope: !477)
!1771 = !DILocation(line: 329, column: 12, scope: !452)
!1772 = !DILocation(line: 329, column: 5, scope: !452)
!1773 = !DILocation(line: 330, column: 1, scope: !452)
!1774 = !DILocation(line: 342, column: 35, scope: !486)
!1775 = !DILocation(line: 342, column: 54, scope: !486)
!1776 = !DILocation(line: 345, column: 5, scope: !486)
!1777 = !DILocation(line: 345, column: 20, scope: !486)
!1778 = !DILocation(line: 345, column: 33, scope: !486)
!1779 = !DILocation(line: 346, column: 5, scope: !486)
!1780 = !DILocation(line: 346, column: 9, scope: !486)
!1781 = !DILocation(line: 347, column: 5, scope: !486)
!1782 = !DILocation(line: 347, column: 19, scope: !486)
!1783 = !DILocation(line: 348, column: 5, scope: !486)
!1784 = !DILocation(line: 348, column: 18, scope: !486)
!1785 = !DILocation(line: 349, column: 5, scope: !486)
!1786 = !DILocation(line: 349, column: 15, scope: !486)
!1787 = !DILocation(line: 350, column: 5, scope: !486)
!1788 = !DILocation(line: 350, column: 16, scope: !486)
!1789 = !DILocation(line: 352, column: 16, scope: !486)
!1790 = !DILocation(line: 352, column: 22, scope: !486)
!1791 = !DILocation(line: 352, column: 14, scope: !486)
!1792 = !DILocation(line: 353, column: 15, scope: !486)
!1793 = !DILocation(line: 353, column: 21, scope: !486)
!1794 = !DILocation(line: 353, column: 13, scope: !486)
!1795 = !DILocation(line: 354, column: 10, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !486, file: !403, line: 354, column: 10)
!1797 = !DILocation(line: 354, column: 18, scope: !1796)
!1798 = !DILocation(line: 354, column: 10, scope: !486)
!1799 = !DILocation(line: 356, column: 25, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !403, line: 354, column: 25)
!1801 = !DILocation(line: 356, column: 9, scope: !1800)
!1802 = !DILocation(line: 357, column: 9, scope: !1800)
!1803 = !DILocation(line: 361, column: 57, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !486, file: !403, line: 361, column: 10)
!1805 = !DILocation(line: 361, column: 64, scope: !1804)
!1806 = !DILocation(line: 361, column: 67, scope: !1804)
!1807 = !DILocation(line: 361, column: 69, scope: !1804)
!1808 = !DILocation(line: 361, column: 54, scope: !1804)
!1809 = !DILocation(line: 361, column: 14, scope: !1804)
!1810 = !DILocation(line: 361, column: 13, scope: !1804)
!1811 = !DILocation(line: 361, column: 74, scope: !1804)
!1812 = !DILocation(line: 361, column: 10, scope: !486)
!1813 = !DILocation(line: 362, column: 9, scope: !1804)
!1814 = !DILocation(line: 363, column: 70, scope: !486)
!1815 = !DILocation(line: 363, column: 52, scope: !486)
!1816 = !DILocation(line: 363, column: 76, scope: !486)
!1817 = !DILocation(line: 363, column: 50, scope: !486)
!1818 = !DILocation(line: 363, column: 16, scope: !486)
!1819 = !DILocation(line: 366, column: 28, scope: !486)
!1820 = !DILocation(line: 366, column: 36, scope: !486)
!1821 = !DILocation(line: 366, column: 25, scope: !486)
!1822 = !DILocation(line: 366, column: 21, scope: !486)
!1823 = !DILocation(line: 366, column: 16, scope: !486)
!1824 = !DILocation(line: 366, column: 19, scope: !486)
!1825 = !DILocation(line: 368, column: 5, scope: !486)
!1826 = !DILocation(line: 368, column: 12, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1828, file: !403, discriminator: 5)
!1828 = !DILexicalBlockFile(scope: !1829, file: !403, discriminator: 1)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !403, line: 368, column: 5)
!1830 = distinct !DILexicalBlock(scope: !486, file: !403, line: 368, column: 5)
!1831 = !DILocation(line: 368, column: 20, scope: !1829)
!1832 = !DILocation(line: 368, column: 24, scope: !1829)
!1833 = !DILocation(line: 368, column: 27, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1829, file: !403, discriminator: 3)
!1835 = !DILocation(line: 368, column: 36, scope: !1829)
!1836 = !DILocation(line: 368, column: 5, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !403, discriminator: 4)
!1838 = !DILexicalBlockFile(scope: !1830, file: !403, discriminator: 2)
!1839 = !DILocation(line: 370, column: 14, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !403, line: 370, column: 14)
!1841 = distinct !DILexicalBlock(scope: !1829, file: !403, line: 368, column: 67)
!1842 = !DILocation(line: 370, column: 22, scope: !1840)
!1843 = !DILocation(line: 370, column: 14, scope: !1841)
!1844 = !DILocation(line: 371, column: 25, scope: !1840)
!1845 = !DILocation(line: 371, column: 34, scope: !1840)
!1846 = !DILocation(line: 371, column: 43, scope: !1840)
!1847 = !DILocation(line: 371, column: 42, scope: !1840)
!1848 = !DILocation(line: 371, column: 40, scope: !1840)
!1849 = !DILocation(line: 371, column: 22, scope: !1840)
!1850 = !DILocation(line: 371, column: 13, scope: !1840)
!1851 = !DILocation(line: 373, column: 22, scope: !1840)
!1852 = !DILocation(line: 374, column: 18, scope: !1841)
!1853 = !DILocation(line: 377, column: 9, scope: !1841)
!1854 = !DILocation(line: 377, column: 17, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !403, discriminator: 2)
!1856 = !DILexicalBlockFile(scope: !1841, file: !403, discriminator: 1)
!1857 = !DILocation(line: 377, column: 26, scope: !1841)
!1858 = !DILocation(line: 378, column: 24, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1841, file: !403, line: 377, column: 33)
!1860 = !DILocation(line: 378, column: 37, scope: !1859)
!1861 = !DILocation(line: 378, column: 45, scope: !1859)
!1862 = !DILocation(line: 378, column: 33, scope: !1859)
!1863 = !DILocation(line: 378, column: 50, scope: !1859)
!1864 = !DILocation(line: 378, column: 23, scope: !1859)
!1865 = !DILocation(line: 378, column: 21, scope: !1859)
!1866 = !DILocation(line: 379, column: 22, scope: !1859)
!1867 = !DILocation(line: 380, column: 29, scope: !1859)
!1868 = !DILocation(line: 380, column: 37, scope: !1859)
!1869 = !DILocation(line: 380, column: 24, scope: !1859)
!1870 = !DILocation(line: 380, column: 27, scope: !1859)
!1871 = !DILocation(line: 382, column: 5, scope: !1841)
!1872 = !DILocation(line: 368, column: 50, scope: !1829)
!1873 = !DILocation(line: 368, column: 62, scope: !1829)
!1874 = !DILocation(line: 368, column: 5, scope: !1829)
!1875 = !DILocation(line: 383, column: 16, scope: !486)
!1876 = !DILocation(line: 383, column: 19, scope: !486)
!1877 = !DILocation(line: 386, column: 25, scope: !500)
!1878 = !DILocation(line: 387, column: 77, scope: !500)
!1879 = !DILocation(line: 387, column: 59, scope: !500)
!1880 = !DILocation(line: 387, column: 83, scope: !500)
!1881 = !DILocation(line: 387, column: 57, scope: !500)
!1882 = !DILocation(line: 386, column: 36, scope: !500)
!1883 = !DILocation(line: 385, column: 9, scope: !500)
!1884 = !DILocation(line: 387, column: 95, scope: !500)
!1885 = !DILocation(line: 385, column: 9, scope: !486)
!1886 = !DILocation(line: 388, column: 9, scope: !499)
!1887 = !DILocation(line: 388, column: 14, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !498, file: !403, discriminator: 1)
!1889 = !DILocation(line: 388, column: 24, scope: !498)
!1890 = !DILocation(line: 388, column: 47, scope: !498)
!1891 = !DILocation(line: 388, column: 56, scope: !504)
!1892 = !DILocation(line: 388, column: 64, scope: !504)
!1893 = !DILocation(line: 388, column: 56, scope: !498)
!1894 = !DILocation(line: 388, column: 86, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !503, file: !403, discriminator: 2)
!1896 = !DILocation(line: 388, column: 100, scope: !503)
!1897 = !DILocation(line: 388, column: 105, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !502, file: !403, discriminator: 4)
!1899 = !DILocation(line: 388, column: 115, scope: !502)
!1900 = !DILocation(line: 388, column: 145, scope: !502)
!1901 = !DILocation(line: 388, column: 163, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !502, file: !403, line: 388, column: 160)
!1903 = !DILocation(line: 388, column: 180, scope: !1902)
!1904 = !DILocation(line: 388, column: 160, scope: !1902)
!1905 = !DILocation(line: 388, column: 190, scope: !1902)
!1906 = !DILocation(line: 388, column: 160, scope: !502)
!1907 = !DILocation(line: 388, column: 160, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !502, file: !403, discriminator: 5)
!1909 = !DILocation(line: 388, column: 221, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1902, file: !403, discriminator: 6)
!1911 = !DILocation(line: 388, column: 239, scope: !1902)
!1912 = !DILocation(line: 388, column: 249, scope: !1902)
!1913 = !DILocation(line: 388, column: 274, scope: !1902)
!1914 = !DILocation(line: 388, column: 205, scope: !1902)
!1915 = !DILocation(line: 388, column: 293, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !503, file: !403, discriminator: 7)
!1917 = !DILocation(line: 388, column: 293, scope: !502)
!1918 = !DILocation(line: 388, column: 293, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !502, file: !403, discriminator: 8)
!1920 = !DILocation(line: 388, column: 306, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !503, file: !403, discriminator: 9)
!1922 = !DILocation(line: 388, column: 308, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1924, file: !403, discriminator: 10)
!1924 = !DILexicalBlockFile(scope: !499, file: !403, discriminator: 3)
!1925 = !DILocation(line: 388, column: 308, scope: !498)
!1926 = !DILocation(line: 388, column: 308, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !498, file: !403, discriminator: 11)
!1928 = !DILocation(line: 389, column: 5, scope: !499)
!1929 = !DILocation(line: 390, column: 12, scope: !486)
!1930 = !DILocation(line: 390, column: 5, scope: !486)
!1931 = !DILocation(line: 391, column: 1, scope: !486)
!1932 = !DILocation(line: 429, column: 39, scope: !511)
!1933 = !DILocation(line: 429, column: 58, scope: !511)
!1934 = !DILocation(line: 432, column: 5, scope: !511)
!1935 = !DILocation(line: 432, column: 20, scope: !511)
!1936 = !DILocation(line: 432, column: 33, scope: !511)
!1937 = !DILocation(line: 433, column: 5, scope: !511)
!1938 = !DILocation(line: 433, column: 9, scope: !511)
!1939 = !DILocation(line: 434, column: 5, scope: !511)
!1940 = !DILocation(line: 434, column: 19, scope: !511)
!1941 = !DILocation(line: 435, column: 5, scope: !511)
!1942 = !DILocation(line: 435, column: 18, scope: !511)
!1943 = !DILocation(line: 436, column: 5, scope: !511)
!1944 = !DILocation(line: 436, column: 15, scope: !511)
!1945 = !DILocation(line: 437, column: 5, scope: !511)
!1946 = !DILocation(line: 437, column: 16, scope: !511)
!1947 = !DILocation(line: 437, column: 27, scope: !511)
!1948 = !DILocation(line: 438, column: 5, scope: !511)
!1949 = !DILocation(line: 438, column: 9, scope: !511)
!1950 = !DILocation(line: 440, column: 18, scope: !511)
!1951 = !DILocation(line: 440, column: 24, scope: !511)
!1952 = !DILocation(line: 440, column: 16, scope: !511)
!1953 = !DILocation(line: 441, column: 17, scope: !511)
!1954 = !DILocation(line: 441, column: 23, scope: !511)
!1955 = !DILocation(line: 441, column: 15, scope: !511)
!1956 = !DILocation(line: 445, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !511, file: !403, line: 445, column: 9)
!1958 = !DILocation(line: 445, column: 19, scope: !1957)
!1959 = !DILocation(line: 445, column: 9, scope: !511)
!1960 = !DILocation(line: 446, column: 16, scope: !1957)
!1961 = !DILocation(line: 446, column: 9, scope: !1957)
!1962 = !DILocation(line: 448, column: 17, scope: !511)
!1963 = !DILocation(line: 448, column: 26, scope: !511)
!1964 = !DILocation(line: 448, column: 29, scope: !511)
!1965 = !DILocation(line: 448, column: 32, scope: !511)
!1966 = !DILocation(line: 448, column: 13, scope: !511)
!1967 = !DILocation(line: 451, column: 52, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !511, file: !403, line: 451, column: 10)
!1969 = !DILocation(line: 451, column: 14, scope: !1968)
!1970 = !DILocation(line: 451, column: 13, scope: !1968)
!1971 = !DILocation(line: 451, column: 62, scope: !1968)
!1972 = !DILocation(line: 451, column: 10, scope: !511)
!1973 = !DILocation(line: 452, column: 9, scope: !1968)
!1974 = !DILocation(line: 453, column: 68, scope: !511)
!1975 = !DILocation(line: 453, column: 50, scope: !511)
!1976 = !DILocation(line: 453, column: 74, scope: !511)
!1977 = !DILocation(line: 453, column: 48, scope: !511)
!1978 = !DILocation(line: 453, column: 14, scope: !511)
!1979 = !DILocation(line: 454, column: 13, scope: !511)
!1980 = !DILocation(line: 456, column: 5, scope: !511)
!1981 = !DILocation(line: 456, column: 12, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !403, discriminator: 2)
!1983 = !DILexicalBlockFile(scope: !1984, file: !403, discriminator: 1)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !403, line: 456, column: 5)
!1985 = distinct !DILexicalBlock(scope: !511, file: !403, line: 456, column: 5)
!1986 = !DILocation(line: 456, column: 22, scope: !1984)
!1987 = !DILocation(line: 456, column: 5, scope: !1985)
!1988 = !DILocation(line: 457, column: 20, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !403, line: 456, column: 54)
!1990 = !DILocation(line: 457, column: 19, scope: !1989)
!1991 = !DILocation(line: 457, column: 17, scope: !1989)
!1992 = !DILocation(line: 459, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !403, line: 459, column: 13)
!1994 = !DILocation(line: 459, column: 21, scope: !1993)
!1995 = !DILocation(line: 459, column: 28, scope: !1993)
!1996 = !DILocation(line: 460, column: 13, scope: !1993)
!1997 = !DILocation(line: 460, column: 21, scope: !1993)
!1998 = !DILocation(line: 460, column: 29, scope: !1993)
!1999 = !DILocation(line: 460, column: 32, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1993, file: !403, discriminator: 1)
!2001 = !DILocation(line: 460, column: 40, scope: !1993)
!2002 = !DILocation(line: 460, column: 48, scope: !1993)
!2003 = !DILocation(line: 460, column: 51, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1993, file: !403, discriminator: 2)
!2005 = !DILocation(line: 460, column: 59, scope: !1993)
!2006 = !DILocation(line: 459, column: 13, scope: !1989)
!2007 = !DILocation(line: 461, column: 13, scope: !1993)
!2008 = !DILocation(line: 466, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1989, file: !403, line: 466, column: 13)
!2010 = !DILocation(line: 466, column: 21, scope: !2009)
!2011 = !DILocation(line: 466, column: 13, scope: !1989)
!2012 = !DILocation(line: 467, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !403, line: 467, column: 18)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !403, line: 466, column: 29)
!2015 = !DILocation(line: 467, column: 28, scope: !2013)
!2016 = !DILocation(line: 467, column: 33, scope: !2013)
!2017 = !DILocation(line: 468, column: 20, scope: !2013)
!2018 = !DILocation(line: 468, column: 29, scope: !2013)
!2019 = !DILocation(line: 468, column: 35, scope: !2013)
!2020 = !DILocation(line: 469, column: 40, scope: !2013)
!2021 = !DILocation(line: 469, column: 52, scope: !2013)
!2022 = !DILocation(line: 469, column: 20, scope: !2013)
!2023 = !DILocation(line: 470, column: 20, scope: !2013)
!2024 = !DILocation(line: 467, column: 18, scope: !2014)
!2025 = !DILocation(line: 472, column: 17, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2013, file: !403, line: 471, column: 13)
!2027 = !DILocation(line: 479, column: 26, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2013, file: !403, line: 474, column: 18)
!2029 = !DILocation(line: 480, column: 17, scope: !2028)
!2030 = !DILocation(line: 484, column: 37, scope: !1989)
!2031 = !DILocation(line: 484, column: 36, scope: !1989)
!2032 = !DILocation(line: 484, column: 19, scope: !1989)
!2033 = !DILocation(line: 484, column: 17, scope: !1989)
!2034 = !DILocation(line: 485, column: 14, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1989, file: !403, line: 485, column: 14)
!2036 = !DILocation(line: 485, column: 22, scope: !2035)
!2037 = !DILocation(line: 485, column: 14, scope: !1989)
!2038 = !DILocation(line: 486, column: 13, scope: !2035)
!2039 = !DILocation(line: 492, column: 21, scope: !1989)
!2040 = !DILocation(line: 492, column: 30, scope: !1989)
!2041 = !DILocation(line: 492, column: 35, scope: !1989)
!2042 = !DILocation(line: 492, column: 18, scope: !1989)
!2043 = !DILocation(line: 493, column: 21, scope: !1989)
!2044 = !DILocation(line: 493, column: 30, scope: !1989)
!2045 = !DILocation(line: 493, column: 39, scope: !1989)
!2046 = !DILocation(line: 493, column: 38, scope: !1989)
!2047 = !DILocation(line: 493, column: 36, scope: !1989)
!2048 = !DILocation(line: 493, column: 18, scope: !1989)
!2049 = !DILocation(line: 494, column: 18, scope: !1989)
!2050 = !DILocation(line: 496, column: 14, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1989, file: !403, line: 496, column: 14)
!2052 = !DILocation(line: 496, column: 23, scope: !2051)
!2053 = !DILocation(line: 496, column: 14, scope: !1989)
!2054 = !DILocation(line: 497, column: 22, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !403, line: 496, column: 30)
!2056 = !DILocation(line: 498, column: 28, scope: !2055)
!2057 = !DILocation(line: 498, column: 40, scope: !2055)
!2058 = !DILocation(line: 498, column: 37, scope: !2055)
!2059 = !DILocation(line: 498, column: 50, scope: !2055)
!2060 = !DILocation(line: 498, column: 27, scope: !2055)
!2061 = !DILocation(line: 498, column: 22, scope: !2055)
!2062 = !DILocation(line: 498, column: 25, scope: !2055)
!2063 = !DILocation(line: 499, column: 20, scope: !2055)
!2064 = !DILocation(line: 500, column: 32, scope: !2055)
!2065 = !DILocation(line: 500, column: 29, scope: !2055)
!2066 = !DILocation(line: 500, column: 42, scope: !2055)
!2067 = !DILocation(line: 500, column: 22, scope: !2055)
!2068 = !DILocation(line: 501, column: 9, scope: !2055)
!2069 = !DILocation(line: 502, column: 5, scope: !1989)
!2070 = !DILocation(line: 456, column: 36, scope: !1984)
!2071 = !DILocation(line: 456, column: 50, scope: !1984)
!2072 = !DILocation(line: 456, column: 5, scope: !1984)
!2073 = !DILocation(line: 504, column: 9, scope: !527)
!2074 = !DILocation(line: 504, column: 18, scope: !527)
!2075 = !DILocation(line: 504, column: 9, scope: !511)
!2076 = !DILocation(line: 505, column: 25, scope: !526)
!2077 = !DILocation(line: 505, column: 9, scope: !526)
!2078 = !DILocation(line: 506, column: 9, scope: !526)
!2079 = !DILocation(line: 506, column: 14, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !525, file: !403, discriminator: 1)
!2081 = !DILocation(line: 506, column: 24, scope: !525)
!2082 = !DILocation(line: 506, column: 54, scope: !525)
!2083 = !DILocation(line: 506, column: 67, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !525, file: !403, line: 506, column: 64)
!2085 = !DILocation(line: 506, column: 84, scope: !2084)
!2086 = !DILocation(line: 506, column: 64, scope: !2084)
!2087 = !DILocation(line: 506, column: 94, scope: !2084)
!2088 = !DILocation(line: 506, column: 64, scope: !525)
!2089 = !DILocation(line: 506, column: 64, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !525, file: !403, discriminator: 2)
!2091 = !DILocation(line: 506, column: 125, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2084, file: !403, discriminator: 3)
!2093 = !DILocation(line: 506, column: 143, scope: !2084)
!2094 = !DILocation(line: 506, column: 153, scope: !2084)
!2095 = !DILocation(line: 506, column: 178, scope: !2084)
!2096 = !DILocation(line: 506, column: 109, scope: !2084)
!2097 = !DILocation(line: 506, column: 197, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !526, file: !403, discriminator: 4)
!2099 = !DILocation(line: 506, column: 197, scope: !525)
!2100 = !DILocation(line: 506, column: 197, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !525, file: !403, discriminator: 5)
!2102 = !DILocation(line: 507, column: 9, scope: !526)
!2103 = !DILocation(line: 514, column: 9, scope: !533)
!2104 = !DILocation(line: 514, column: 17, scope: !533)
!2105 = !DILocation(line: 514, column: 9, scope: !511)
!2106 = !DILocation(line: 515, column: 34, scope: !531)
!2107 = !DILocation(line: 515, column: 13, scope: !531)
!2108 = !DILocation(line: 515, column: 43, scope: !531)
!2109 = !DILocation(line: 515, column: 13, scope: !532)
!2110 = !DILocation(line: 516, column: 13, scope: !530)
!2111 = !DILocation(line: 516, column: 18, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !529, file: !403, discriminator: 1)
!2113 = !DILocation(line: 516, column: 28, scope: !529)
!2114 = !DILocation(line: 516, column: 51, scope: !529)
!2115 = !DILocation(line: 516, column: 60, scope: !537)
!2116 = !DILocation(line: 516, column: 68, scope: !537)
!2117 = !DILocation(line: 516, column: 60, scope: !529)
!2118 = !DILocation(line: 516, column: 90, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !536, file: !403, discriminator: 2)
!2120 = !DILocation(line: 516, column: 104, scope: !536)
!2121 = !DILocation(line: 516, column: 109, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !535, file: !403, discriminator: 4)
!2123 = !DILocation(line: 516, column: 119, scope: !535)
!2124 = !DILocation(line: 516, column: 149, scope: !535)
!2125 = !DILocation(line: 516, column: 167, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !535, file: !403, line: 516, column: 164)
!2127 = !DILocation(line: 516, column: 184, scope: !2126)
!2128 = !DILocation(line: 516, column: 164, scope: !2126)
!2129 = !DILocation(line: 516, column: 194, scope: !2126)
!2130 = !DILocation(line: 516, column: 164, scope: !535)
!2131 = !DILocation(line: 516, column: 164, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !535, file: !403, discriminator: 5)
!2133 = !DILocation(line: 516, column: 225, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2126, file: !403, discriminator: 6)
!2135 = !DILocation(line: 516, column: 243, scope: !2126)
!2136 = !DILocation(line: 516, column: 253, scope: !2126)
!2137 = !DILocation(line: 516, column: 278, scope: !2126)
!2138 = !DILocation(line: 516, column: 209, scope: !2126)
!2139 = !DILocation(line: 516, column: 297, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !536, file: !403, discriminator: 7)
!2141 = !DILocation(line: 516, column: 297, scope: !535)
!2142 = !DILocation(line: 516, column: 297, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !535, file: !403, discriminator: 8)
!2144 = !DILocation(line: 516, column: 310, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !536, file: !403, discriminator: 9)
!2146 = !DILocation(line: 516, column: 312, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !403, discriminator: 10)
!2148 = !DILexicalBlockFile(scope: !530, file: !403, discriminator: 3)
!2149 = !DILocation(line: 516, column: 312, scope: !529)
!2150 = !DILocation(line: 516, column: 312, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !529, file: !403, discriminator: 11)
!2152 = !DILocation(line: 517, column: 9, scope: !530)
!2153 = !DILocation(line: 518, column: 5, scope: !532)
!2154 = !DILocation(line: 520, column: 9, scope: !540)
!2155 = !DILocation(line: 520, column: 14, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !539, file: !403, discriminator: 1)
!2157 = !DILocation(line: 520, column: 24, scope: !539)
!2158 = !DILocation(line: 520, column: 54, scope: !539)
!2159 = !DILocation(line: 520, column: 67, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !539, file: !403, line: 520, column: 64)
!2161 = !DILocation(line: 520, column: 84, scope: !2160)
!2162 = !DILocation(line: 520, column: 64, scope: !2160)
!2163 = !DILocation(line: 520, column: 94, scope: !2160)
!2164 = !DILocation(line: 520, column: 64, scope: !539)
!2165 = !DILocation(line: 520, column: 64, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !539, file: !403, discriminator: 2)
!2167 = !DILocation(line: 520, column: 125, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2160, file: !403, discriminator: 3)
!2169 = !DILocation(line: 520, column: 143, scope: !2160)
!2170 = !DILocation(line: 520, column: 153, scope: !2160)
!2171 = !DILocation(line: 520, column: 178, scope: !2160)
!2172 = !DILocation(line: 520, column: 109, scope: !2160)
!2173 = !DILocation(line: 520, column: 197, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !540, file: !403, discriminator: 4)
!2175 = !DILocation(line: 520, column: 197, scope: !539)
!2176 = !DILocation(line: 520, column: 197, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !539, file: !403, discriminator: 5)
!2178 = !DILocation(line: 521, column: 14, scope: !540)
!2179 = !DILocation(line: 521, column: 12, scope: !540)
!2180 = !DILocation(line: 523, column: 12, scope: !511)
!2181 = !DILocation(line: 523, column: 5, scope: !511)
!2182 = !DILocation(line: 524, column: 1, scope: !511)
!2183 = !DILocation(line: 395, column: 36, scope: !541)
!2184 = !DILocation(line: 395, column: 50, scope: !541)
!2185 = !DILocation(line: 395, column: 60, scope: !541)
!2186 = !DILocation(line: 401, column: 5, scope: !541)
!2187 = !DILocation(line: 401, column: 9, scope: !541)
!2188 = !DILocation(line: 402, column: 5, scope: !541)
!2189 = !DILocation(line: 402, column: 19, scope: !541)
!2190 = !DILocation(line: 402, column: 22, scope: !541)
!2191 = !DILocation(line: 404, column: 5, scope: !541)
!2192 = !DILocation(line: 404, column: 13, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2194, file: !403, discriminator: 4)
!2194 = !DILexicalBlockFile(scope: !541, file: !403, discriminator: 1)
!2195 = !DILocation(line: 404, column: 18, scope: !541)
!2196 = !DILocation(line: 404, column: 23, scope: !541)
!2197 = !DILocation(line: 404, column: 27, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !541, file: !403, discriminator: 2)
!2199 = !DILocation(line: 404, column: 31, scope: !541)
!2200 = !DILocation(line: 404, column: 5, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !541, file: !403, discriminator: 3)
!2202 = !DILocation(line: 405, column: 14, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !541, file: !403, line: 404, column: 39)
!2204 = !DILocation(line: 405, column: 13, scope: !2203)
!2205 = !DILocation(line: 405, column: 11, scope: !2203)
!2206 = !DILocation(line: 406, column: 35, scope: !2203)
!2207 = !DILocation(line: 406, column: 37, scope: !2203)
!2208 = !DILocation(line: 406, column: 18, scope: !2203)
!2209 = !DILocation(line: 406, column: 16, scope: !2203)
!2210 = !DILocation(line: 407, column: 16, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2203, file: !403, line: 407, column: 14)
!2212 = !DILocation(line: 407, column: 18, scope: !2211)
!2213 = !DILocation(line: 407, column: 27, scope: !2211)
!2214 = !DILocation(line: 407, column: 31, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2211, file: !403, discriminator: 1)
!2216 = !DILocation(line: 407, column: 38, scope: !2211)
!2217 = !DILocation(line: 407, column: 14, scope: !2203)
!2218 = !DILocation(line: 408, column: 17, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !403, line: 408, column: 17)
!2220 = distinct !DILexicalBlock(scope: !2211, file: !403, line: 407, column: 63)
!2221 = !DILocation(line: 408, column: 21, scope: !2219)
!2222 = !DILocation(line: 408, column: 17, scope: !2220)
!2223 = !DILocation(line: 409, column: 24, scope: !2219)
!2224 = !DILocation(line: 409, column: 23, scope: !2219)
!2225 = !DILocation(line: 409, column: 21, scope: !2219)
!2226 = !DILocation(line: 409, column: 17, scope: !2219)
!2227 = !DILocation(line: 410, column: 16, scope: !2220)
!2228 = !DILocation(line: 411, column: 9, scope: !2220)
!2229 = !DILocation(line: 413, column: 10, scope: !2203)
!2230 = !DILocation(line: 414, column: 13, scope: !2203)
!2231 = !DILocation(line: 416, column: 12, scope: !541)
!2232 = !DILocation(line: 417, column: 1, scope: !541)
!2233 = !DILocation(line: 416, column: 5, scope: !541)
!2234 = !DILocation(line: 537, column: 39, scope: !557)
!2235 = !DILocation(line: 537, column: 58, scope: !557)
!2236 = !DILocation(line: 540, column: 5, scope: !557)
!2237 = !DILocation(line: 540, column: 20, scope: !557)
!2238 = !DILocation(line: 540, column: 33, scope: !557)
!2239 = !DILocation(line: 541, column: 5, scope: !557)
!2240 = !DILocation(line: 541, column: 9, scope: !557)
!2241 = !DILocation(line: 542, column: 5, scope: !557)
!2242 = !DILocation(line: 542, column: 19, scope: !557)
!2243 = !DILocation(line: 543, column: 5, scope: !557)
!2244 = !DILocation(line: 543, column: 18, scope: !557)
!2245 = !DILocation(line: 544, column: 5, scope: !557)
!2246 = !DILocation(line: 544, column: 15, scope: !557)
!2247 = !DILocation(line: 545, column: 5, scope: !557)
!2248 = !DILocation(line: 545, column: 16, scope: !557)
!2249 = !DILocation(line: 547, column: 16, scope: !557)
!2250 = !DILocation(line: 547, column: 22, scope: !557)
!2251 = !DILocation(line: 547, column: 14, scope: !557)
!2252 = !DILocation(line: 548, column: 15, scope: !557)
!2253 = !DILocation(line: 548, column: 21, scope: !557)
!2254 = !DILocation(line: 548, column: 13, scope: !557)
!2255 = !DILocation(line: 552, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !557, file: !403, line: 552, column: 10)
!2257 = !DILocation(line: 552, column: 18, scope: !2256)
!2258 = !DILocation(line: 552, column: 10, scope: !557)
!2259 = !DILocation(line: 553, column: 25, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !403, line: 552, column: 66)
!2261 = !DILocation(line: 553, column: 9, scope: !2260)
!2262 = !DILocation(line: 554, column: 9, scope: !2260)
!2263 = !DILocation(line: 560, column: 52, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !557, file: !403, line: 560, column: 10)
!2265 = !DILocation(line: 560, column: 59, scope: !2264)
!2266 = !DILocation(line: 560, column: 62, scope: !2264)
!2267 = !DILocation(line: 560, column: 14, scope: !2264)
!2268 = !DILocation(line: 560, column: 13, scope: !2264)
!2269 = !DILocation(line: 560, column: 68, scope: !2264)
!2270 = !DILocation(line: 560, column: 10, scope: !557)
!2271 = !DILocation(line: 561, column: 9, scope: !2264)
!2272 = !DILocation(line: 562, column: 70, scope: !557)
!2273 = !DILocation(line: 562, column: 52, scope: !557)
!2274 = !DILocation(line: 562, column: 76, scope: !557)
!2275 = !DILocation(line: 562, column: 50, scope: !557)
!2276 = !DILocation(line: 562, column: 16, scope: !557)
!2277 = !DILocation(line: 564, column: 5, scope: !557)
!2278 = !DILocation(line: 564, column: 12, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !403, discriminator: 2)
!2280 = !DILexicalBlockFile(scope: !2281, file: !403, discriminator: 1)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !403, line: 564, column: 5)
!2282 = distinct !DILexicalBlock(scope: !557, file: !403, line: 564, column: 5)
!2283 = !DILocation(line: 564, column: 20, scope: !2281)
!2284 = !DILocation(line: 564, column: 5, scope: !2282)
!2285 = !DILocation(line: 566, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !403, line: 564, column: 50)
!2287 = !DILocation(line: 566, column: 30, scope: !2286)
!2288 = !DILocation(line: 566, column: 39, scope: !2286)
!2289 = !DILocation(line: 566, column: 38, scope: !2286)
!2290 = !DILocation(line: 566, column: 36, scope: !2286)
!2291 = !DILocation(line: 566, column: 18, scope: !2286)
!2292 = !DILocation(line: 567, column: 18, scope: !2286)
!2293 = !DILocation(line: 570, column: 9, scope: !2286)
!2294 = !DILocation(line: 570, column: 17, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !403, discriminator: 2)
!2296 = !DILexicalBlockFile(scope: !2286, file: !403, discriminator: 1)
!2297 = !DILocation(line: 570, column: 26, scope: !2286)
!2298 = !DILocation(line: 571, column: 24, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2286, file: !403, line: 570, column: 33)
!2300 = !DILocation(line: 571, column: 37, scope: !2299)
!2301 = !DILocation(line: 571, column: 45, scope: !2299)
!2302 = !DILocation(line: 571, column: 33, scope: !2299)
!2303 = !DILocation(line: 571, column: 50, scope: !2299)
!2304 = !DILocation(line: 571, column: 23, scope: !2299)
!2305 = !DILocation(line: 571, column: 21, scope: !2299)
!2306 = !DILocation(line: 572, column: 22, scope: !2299)
!2307 = !DILocation(line: 573, column: 46, scope: !2299)
!2308 = !DILocation(line: 573, column: 29, scope: !2299)
!2309 = !DILocation(line: 573, column: 24, scope: !2299)
!2310 = !DILocation(line: 573, column: 27, scope: !2299)
!2311 = !DILocation(line: 575, column: 5, scope: !2286)
!2312 = !DILocation(line: 564, column: 33, scope: !2281)
!2313 = !DILocation(line: 564, column: 45, scope: !2281)
!2314 = !DILocation(line: 564, column: 5, scope: !2281)
!2315 = !DILocation(line: 576, column: 10, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !557, file: !403, line: 576, column: 10)
!2317 = !DILocation(line: 576, column: 19, scope: !2316)
!2318 = !DILocation(line: 576, column: 10, scope: !557)
!2319 = !DILocation(line: 577, column: 43, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !403, line: 576, column: 26)
!2321 = !DILocation(line: 577, column: 51, scope: !2320)
!2322 = !DILocation(line: 577, column: 55, scope: !2320)
!2323 = !DILocation(line: 577, column: 25, scope: !2320)
!2324 = !DILocation(line: 577, column: 20, scope: !2320)
!2325 = !DILocation(line: 577, column: 23, scope: !2320)
!2326 = !DILocation(line: 578, column: 20, scope: !2320)
!2327 = !DILocation(line: 578, column: 23, scope: !2320)
!2328 = !DILocation(line: 579, column: 20, scope: !2320)
!2329 = !DILocation(line: 579, column: 23, scope: !2320)
!2330 = !DILocation(line: 580, column: 5, scope: !2320)
!2331 = !DILocation(line: 580, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2316, file: !403, line: 580, column: 17)
!2333 = !DILocation(line: 580, column: 26, scope: !2332)
!2334 = !DILocation(line: 580, column: 17, scope: !2316)
!2335 = !DILocation(line: 581, column: 43, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !403, line: 580, column: 33)
!2337 = !DILocation(line: 581, column: 51, scope: !2336)
!2338 = !DILocation(line: 581, column: 57, scope: !2336)
!2339 = !DILocation(line: 581, column: 25, scope: !2336)
!2340 = !DILocation(line: 581, column: 20, scope: !2336)
!2341 = !DILocation(line: 581, column: 23, scope: !2336)
!2342 = !DILocation(line: 582, column: 20, scope: !2336)
!2343 = !DILocation(line: 582, column: 23, scope: !2336)
!2344 = !DILocation(line: 583, column: 5, scope: !2336)
!2345 = !DILocation(line: 584, column: 16, scope: !557)
!2346 = !DILocation(line: 584, column: 19, scope: !557)
!2347 = !DILocation(line: 587, column: 25, scope: !571)
!2348 = !DILocation(line: 588, column: 77, scope: !571)
!2349 = !DILocation(line: 588, column: 59, scope: !571)
!2350 = !DILocation(line: 588, column: 83, scope: !571)
!2351 = !DILocation(line: 588, column: 57, scope: !571)
!2352 = !DILocation(line: 587, column: 36, scope: !571)
!2353 = !DILocation(line: 586, column: 9, scope: !571)
!2354 = !DILocation(line: 588, column: 95, scope: !571)
!2355 = !DILocation(line: 586, column: 9, scope: !557)
!2356 = !DILocation(line: 589, column: 9, scope: !570)
!2357 = !DILocation(line: 589, column: 14, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !569, file: !403, discriminator: 1)
!2359 = !DILocation(line: 589, column: 24, scope: !569)
!2360 = !DILocation(line: 589, column: 47, scope: !569)
!2361 = !DILocation(line: 589, column: 56, scope: !575)
!2362 = !DILocation(line: 589, column: 64, scope: !575)
!2363 = !DILocation(line: 589, column: 56, scope: !569)
!2364 = !DILocation(line: 589, column: 86, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !574, file: !403, discriminator: 2)
!2366 = !DILocation(line: 589, column: 100, scope: !574)
!2367 = !DILocation(line: 589, column: 105, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !573, file: !403, discriminator: 4)
!2369 = !DILocation(line: 589, column: 115, scope: !573)
!2370 = !DILocation(line: 589, column: 145, scope: !573)
!2371 = !DILocation(line: 589, column: 163, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !573, file: !403, line: 589, column: 160)
!2373 = !DILocation(line: 589, column: 180, scope: !2372)
!2374 = !DILocation(line: 589, column: 160, scope: !2372)
!2375 = !DILocation(line: 589, column: 190, scope: !2372)
!2376 = !DILocation(line: 589, column: 160, scope: !573)
!2377 = !DILocation(line: 589, column: 160, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !573, file: !403, discriminator: 5)
!2379 = !DILocation(line: 589, column: 221, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2372, file: !403, discriminator: 6)
!2381 = !DILocation(line: 589, column: 239, scope: !2372)
!2382 = !DILocation(line: 589, column: 249, scope: !2372)
!2383 = !DILocation(line: 589, column: 274, scope: !2372)
!2384 = !DILocation(line: 589, column: 205, scope: !2372)
!2385 = !DILocation(line: 589, column: 293, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !574, file: !403, discriminator: 7)
!2387 = !DILocation(line: 589, column: 293, scope: !573)
!2388 = !DILocation(line: 589, column: 293, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !573, file: !403, discriminator: 8)
!2390 = !DILocation(line: 589, column: 306, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !574, file: !403, discriminator: 9)
!2392 = !DILocation(line: 589, column: 308, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2394, file: !403, discriminator: 10)
!2394 = !DILexicalBlockFile(scope: !570, file: !403, discriminator: 3)
!2395 = !DILocation(line: 589, column: 308, scope: !569)
!2396 = !DILocation(line: 589, column: 308, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !569, file: !403, discriminator: 11)
!2398 = !DILocation(line: 590, column: 5, scope: !570)
!2399 = !DILocation(line: 591, column: 12, scope: !557)
!2400 = !DILocation(line: 591, column: 5, scope: !557)
!2401 = !DILocation(line: 592, column: 1, scope: !557)
!2402 = !DILocation(line: 604, column: 36, scope: !582)
!2403 = !DILocation(line: 604, column: 55, scope: !582)
!2404 = !DILocation(line: 607, column: 5, scope: !582)
!2405 = !DILocation(line: 607, column: 20, scope: !582)
!2406 = !DILocation(line: 607, column: 33, scope: !582)
!2407 = !DILocation(line: 608, column: 5, scope: !582)
!2408 = !DILocation(line: 608, column: 9, scope: !582)
!2409 = !DILocation(line: 609, column: 5, scope: !582)
!2410 = !DILocation(line: 609, column: 19, scope: !582)
!2411 = !DILocation(line: 610, column: 5, scope: !582)
!2412 = !DILocation(line: 610, column: 18, scope: !582)
!2413 = !DILocation(line: 611, column: 5, scope: !582)
!2414 = !DILocation(line: 611, column: 15, scope: !582)
!2415 = !DILocation(line: 612, column: 5, scope: !582)
!2416 = !DILocation(line: 612, column: 16, scope: !582)
!2417 = !DILocation(line: 613, column: 5, scope: !582)
!2418 = !DILocation(line: 613, column: 9, scope: !582)
!2419 = !DILocation(line: 615, column: 18, scope: !582)
!2420 = !DILocation(line: 615, column: 24, scope: !582)
!2421 = !DILocation(line: 615, column: 16, scope: !582)
!2422 = !DILocation(line: 616, column: 11, scope: !582)
!2423 = !DILocation(line: 616, column: 17, scope: !582)
!2424 = !DILocation(line: 616, column: 9, scope: !582)
!2425 = !DILocation(line: 620, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !582, file: !403, line: 620, column: 9)
!2427 = !DILocation(line: 620, column: 13, scope: !2426)
!2428 = !DILocation(line: 620, column: 9, scope: !582)
!2429 = !DILocation(line: 621, column: 16, scope: !2426)
!2430 = !DILocation(line: 621, column: 9, scope: !2426)
!2431 = !DILocation(line: 626, column: 52, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !582, file: !403, line: 626, column: 10)
!2433 = !DILocation(line: 626, column: 55, scope: !2432)
!2434 = !DILocation(line: 626, column: 14, scope: !2432)
!2435 = !DILocation(line: 626, column: 13, scope: !2432)
!2436 = !DILocation(line: 626, column: 60, scope: !2432)
!2437 = !DILocation(line: 626, column: 10, scope: !582)
!2438 = !DILocation(line: 627, column: 9, scope: !2432)
!2439 = !DILocation(line: 628, column: 68, scope: !582)
!2440 = !DILocation(line: 628, column: 50, scope: !582)
!2441 = !DILocation(line: 628, column: 74, scope: !582)
!2442 = !DILocation(line: 628, column: 48, scope: !582)
!2443 = !DILocation(line: 628, column: 14, scope: !582)
!2444 = !DILocation(line: 630, column: 5, scope: !582)
!2445 = !DILocation(line: 630, column: 12, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2447, file: !403, discriminator: 2)
!2447 = !DILexicalBlockFile(scope: !599, file: !403, discriminator: 1)
!2448 = !DILocation(line: 630, column: 16, scope: !599)
!2449 = !DILocation(line: 630, column: 5, scope: !600)
!2450 = !DILocation(line: 632, column: 34, scope: !598)
!2451 = !DILocation(line: 632, column: 33, scope: !598)
!2452 = !DILocation(line: 632, column: 19, scope: !598)
!2453 = !DILocation(line: 632, column: 17, scope: !598)
!2454 = !DILocation(line: 633, column: 14, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !598, file: !403, line: 633, column: 14)
!2456 = !DILocation(line: 633, column: 22, scope: !2455)
!2457 = !DILocation(line: 633, column: 14, scope: !598)
!2458 = !DILocation(line: 634, column: 13, scope: !2455)
!2459 = !DILocation(line: 635, column: 14, scope: !597)
!2460 = !DILocation(line: 635, column: 22, scope: !597)
!2461 = !DILocation(line: 635, column: 14, scope: !598)
!2462 = !DILocation(line: 636, column: 29, scope: !596)
!2463 = !DILocation(line: 636, column: 13, scope: !596)
!2464 = !DILocation(line: 637, column: 13, scope: !596)
!2465 = !DILocation(line: 637, column: 18, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !595, file: !403, discriminator: 1)
!2467 = !DILocation(line: 637, column: 28, scope: !595)
!2468 = !DILocation(line: 637, column: 58, scope: !595)
!2469 = !DILocation(line: 637, column: 71, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !595, file: !403, line: 637, column: 68)
!2471 = !DILocation(line: 637, column: 88, scope: !2470)
!2472 = !DILocation(line: 637, column: 68, scope: !2470)
!2473 = !DILocation(line: 637, column: 98, scope: !2470)
!2474 = !DILocation(line: 637, column: 68, scope: !595)
!2475 = !DILocation(line: 637, column: 68, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !595, file: !403, discriminator: 2)
!2477 = !DILocation(line: 637, column: 129, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2470, file: !403, discriminator: 3)
!2479 = !DILocation(line: 637, column: 147, scope: !2470)
!2480 = !DILocation(line: 637, column: 157, scope: !2470)
!2481 = !DILocation(line: 637, column: 182, scope: !2470)
!2482 = !DILocation(line: 637, column: 113, scope: !2470)
!2483 = !DILocation(line: 637, column: 201, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !596, file: !403, discriminator: 4)
!2485 = !DILocation(line: 637, column: 201, scope: !595)
!2486 = !DILocation(line: 637, column: 201, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !595, file: !403, discriminator: 5)
!2488 = !DILocation(line: 638, column: 13, scope: !596)
!2489 = !DILocation(line: 640, column: 14, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !598, file: !403, line: 640, column: 14)
!2491 = !DILocation(line: 640, column: 22, scope: !2490)
!2492 = !DILocation(line: 640, column: 14, scope: !598)
!2493 = !DILocation(line: 642, column: 18, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !403, line: 640, column: 32)
!2495 = !DILocation(line: 643, column: 13, scope: !2494)
!2496 = !DILocation(line: 647, column: 21, scope: !598)
!2497 = !DILocation(line: 647, column: 30, scope: !598)
!2498 = !DILocation(line: 647, column: 39, scope: !598)
!2499 = !DILocation(line: 647, column: 38, scope: !598)
!2500 = !DILocation(line: 647, column: 36, scope: !598)
!2501 = !DILocation(line: 647, column: 18, scope: !598)
!2502 = !DILocation(line: 648, column: 18, scope: !598)
!2503 = !DILocation(line: 649, column: 14, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !598, file: !403, line: 649, column: 14)
!2505 = !DILocation(line: 649, column: 23, scope: !2504)
!2506 = !DILocation(line: 649, column: 14, scope: !598)
!2507 = !DILocation(line: 650, column: 22, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !403, line: 649, column: 30)
!2509 = !DILocation(line: 651, column: 28, scope: !2508)
!2510 = !DILocation(line: 651, column: 40, scope: !2508)
!2511 = !DILocation(line: 651, column: 37, scope: !2508)
!2512 = !DILocation(line: 651, column: 50, scope: !2508)
!2513 = !DILocation(line: 651, column: 27, scope: !2508)
!2514 = !DILocation(line: 651, column: 22, scope: !2508)
!2515 = !DILocation(line: 651, column: 25, scope: !2508)
!2516 = !DILocation(line: 652, column: 32, scope: !2508)
!2517 = !DILocation(line: 652, column: 29, scope: !2508)
!2518 = !DILocation(line: 652, column: 42, scope: !2508)
!2519 = !DILocation(line: 652, column: 22, scope: !2508)
!2520 = !DILocation(line: 653, column: 9, scope: !2508)
!2521 = !DILocation(line: 654, column: 5, scope: !598)
!2522 = !DILocation(line: 630, column: 25, scope: !599)
!2523 = !DILocation(line: 630, column: 39, scope: !599)
!2524 = !DILocation(line: 630, column: 5, scope: !599)
!2525 = !DILocation(line: 656, column: 10, scope: !604)
!2526 = !DILocation(line: 656, column: 19, scope: !604)
!2527 = !DILocation(line: 656, column: 23, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !604, file: !403, discriminator: 1)
!2529 = !DILocation(line: 656, column: 10, scope: !582)
!2530 = !DILocation(line: 657, column: 25, scope: !603)
!2531 = !DILocation(line: 657, column: 9, scope: !603)
!2532 = !DILocation(line: 659, column: 9, scope: !603)
!2533 = !DILocation(line: 659, column: 14, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !602, file: !403, discriminator: 1)
!2535 = !DILocation(line: 659, column: 24, scope: !602)
!2536 = !DILocation(line: 659, column: 54, scope: !602)
!2537 = !DILocation(line: 659, column: 67, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !602, file: !403, line: 659, column: 64)
!2539 = !DILocation(line: 659, column: 84, scope: !2538)
!2540 = !DILocation(line: 659, column: 64, scope: !2538)
!2541 = !DILocation(line: 659, column: 94, scope: !2538)
!2542 = !DILocation(line: 659, column: 64, scope: !602)
!2543 = !DILocation(line: 659, column: 64, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !602, file: !403, discriminator: 2)
!2545 = !DILocation(line: 659, column: 125, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2538, file: !403, discriminator: 3)
!2547 = !DILocation(line: 659, column: 143, scope: !2538)
!2548 = !DILocation(line: 659, column: 153, scope: !2538)
!2549 = !DILocation(line: 659, column: 178, scope: !2538)
!2550 = !DILocation(line: 659, column: 109, scope: !2538)
!2551 = !DILocation(line: 659, column: 197, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !603, file: !403, discriminator: 4)
!2553 = !DILocation(line: 659, column: 197, scope: !602)
!2554 = !DILocation(line: 659, column: 197, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !602, file: !403, discriminator: 5)
!2556 = !DILocation(line: 660, column: 9, scope: !603)
!2557 = !DILocation(line: 663, column: 25, scope: !608)
!2558 = !DILocation(line: 664, column: 77, scope: !608)
!2559 = !DILocation(line: 664, column: 59, scope: !608)
!2560 = !DILocation(line: 664, column: 83, scope: !608)
!2561 = !DILocation(line: 664, column: 57, scope: !608)
!2562 = !DILocation(line: 663, column: 34, scope: !608)
!2563 = !DILocation(line: 662, column: 9, scope: !608)
!2564 = !DILocation(line: 664, column: 95, scope: !608)
!2565 = !DILocation(line: 662, column: 9, scope: !582)
!2566 = !DILocation(line: 665, column: 9, scope: !607)
!2567 = !DILocation(line: 665, column: 14, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !606, file: !403, discriminator: 1)
!2569 = !DILocation(line: 665, column: 24, scope: !606)
!2570 = !DILocation(line: 665, column: 47, scope: !606)
!2571 = !DILocation(line: 665, column: 56, scope: !612)
!2572 = !DILocation(line: 665, column: 64, scope: !612)
!2573 = !DILocation(line: 665, column: 56, scope: !606)
!2574 = !DILocation(line: 665, column: 86, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !611, file: !403, discriminator: 2)
!2576 = !DILocation(line: 665, column: 100, scope: !611)
!2577 = !DILocation(line: 665, column: 105, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !610, file: !403, discriminator: 4)
!2579 = !DILocation(line: 665, column: 115, scope: !610)
!2580 = !DILocation(line: 665, column: 145, scope: !610)
!2581 = !DILocation(line: 665, column: 163, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !610, file: !403, line: 665, column: 160)
!2583 = !DILocation(line: 665, column: 180, scope: !2582)
!2584 = !DILocation(line: 665, column: 160, scope: !2582)
!2585 = !DILocation(line: 665, column: 190, scope: !2582)
!2586 = !DILocation(line: 665, column: 160, scope: !610)
!2587 = !DILocation(line: 665, column: 160, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !610, file: !403, discriminator: 5)
!2589 = !DILocation(line: 665, column: 221, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2582, file: !403, discriminator: 6)
!2591 = !DILocation(line: 665, column: 239, scope: !2582)
!2592 = !DILocation(line: 665, column: 249, scope: !2582)
!2593 = !DILocation(line: 665, column: 274, scope: !2582)
!2594 = !DILocation(line: 665, column: 205, scope: !2582)
!2595 = !DILocation(line: 665, column: 293, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !611, file: !403, discriminator: 7)
!2597 = !DILocation(line: 665, column: 293, scope: !610)
!2598 = !DILocation(line: 665, column: 293, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !610, file: !403, discriminator: 8)
!2600 = !DILocation(line: 665, column: 306, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !611, file: !403, discriminator: 9)
!2602 = !DILocation(line: 665, column: 308, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !403, discriminator: 10)
!2604 = !DILexicalBlockFile(scope: !607, file: !403, discriminator: 3)
!2605 = !DILocation(line: 665, column: 308, scope: !606)
!2606 = !DILocation(line: 665, column: 308, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !606, file: !403, discriminator: 11)
!2608 = !DILocation(line: 666, column: 5, scope: !607)
!2609 = !DILocation(line: 667, column: 9, scope: !615)
!2610 = !DILocation(line: 667, column: 9, scope: !582)
!2611 = !DILocation(line: 668, column: 9, scope: !614)
!2612 = !DILocation(line: 668, column: 19, scope: !614)
!2613 = !DILocation(line: 668, column: 52, scope: !614)
!2614 = !DILocation(line: 668, column: 56, scope: !614)
!2615 = !DILocation(line: 668, column: 25, scope: !614)
!2616 = !DILocation(line: 669, column: 9, scope: !614)
!2617 = !DILocation(line: 669, column: 14, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !617, file: !403, discriminator: 1)
!2619 = !DILocation(line: 669, column: 24, scope: !617)
!2620 = !DILocation(line: 669, column: 54, scope: !617)
!2621 = !DILocation(line: 669, column: 67, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !617, file: !403, line: 669, column: 64)
!2623 = !DILocation(line: 669, column: 84, scope: !2622)
!2624 = !DILocation(line: 669, column: 64, scope: !2622)
!2625 = !DILocation(line: 669, column: 94, scope: !2622)
!2626 = !DILocation(line: 669, column: 64, scope: !617)
!2627 = !DILocation(line: 669, column: 64, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !617, file: !403, discriminator: 2)
!2629 = !DILocation(line: 669, column: 125, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2622, file: !403, discriminator: 3)
!2631 = !DILocation(line: 669, column: 143, scope: !2622)
!2632 = !DILocation(line: 669, column: 153, scope: !2622)
!2633 = !DILocation(line: 669, column: 178, scope: !2622)
!2634 = !DILocation(line: 669, column: 109, scope: !2622)
!2635 = !DILocation(line: 669, column: 197, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !614, file: !403, discriminator: 4)
!2637 = !DILocation(line: 669, column: 197, scope: !617)
!2638 = !DILocation(line: 669, column: 197, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !617, file: !403, discriminator: 5)
!2640 = !DILocation(line: 670, column: 16, scope: !614)
!2641 = !DILocation(line: 670, column: 9, scope: !614)
!2642 = !DILocation(line: 671, column: 5, scope: !615)
!2643 = !DILocation(line: 673, column: 5, scope: !582)
!2644 = !DILocation(line: 674, column: 1, scope: !582)
!2645 = !DILocation(line: 751, column: 36, scope: !624)
!2646 = !DILocation(line: 751, column: 55, scope: !624)
!2647 = !DILocation(line: 754, column: 5, scope: !624)
!2648 = !DILocation(line: 754, column: 20, scope: !624)
!2649 = !DILocation(line: 754, column: 33, scope: !624)
!2650 = !DILocation(line: 755, column: 5, scope: !624)
!2651 = !DILocation(line: 755, column: 9, scope: !624)
!2652 = !DILocation(line: 756, column: 5, scope: !624)
!2653 = !DILocation(line: 756, column: 19, scope: !624)
!2654 = !DILocation(line: 757, column: 5, scope: !624)
!2655 = !DILocation(line: 757, column: 18, scope: !624)
!2656 = !DILocation(line: 758, column: 5, scope: !624)
!2657 = !DILocation(line: 758, column: 15, scope: !624)
!2658 = !DILocation(line: 759, column: 5, scope: !624)
!2659 = !DILocation(line: 759, column: 16, scope: !624)
!2660 = !DILocation(line: 761, column: 16, scope: !624)
!2661 = !DILocation(line: 761, column: 22, scope: !624)
!2662 = !DILocation(line: 761, column: 14, scope: !624)
!2663 = !DILocation(line: 762, column: 11, scope: !624)
!2664 = !DILocation(line: 762, column: 17, scope: !624)
!2665 = !DILocation(line: 762, column: 9, scope: !624)
!2666 = !DILocation(line: 766, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !624, file: !403, line: 766, column: 9)
!2668 = !DILocation(line: 766, column: 13, scope: !2667)
!2669 = !DILocation(line: 766, column: 9, scope: !624)
!2670 = !DILocation(line: 767, column: 16, scope: !2667)
!2671 = !DILocation(line: 767, column: 9, scope: !2667)
!2672 = !DILocation(line: 770, column: 52, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !624, file: !403, line: 770, column: 10)
!2674 = !DILocation(line: 770, column: 55, scope: !2673)
!2675 = !DILocation(line: 770, column: 57, scope: !2673)
!2676 = !DILocation(line: 770, column: 14, scope: !2673)
!2677 = !DILocation(line: 770, column: 13, scope: !2673)
!2678 = !DILocation(line: 770, column: 62, scope: !2673)
!2679 = !DILocation(line: 770, column: 10, scope: !624)
!2680 = !DILocation(line: 771, column: 9, scope: !2673)
!2681 = !DILocation(line: 772, column: 70, scope: !624)
!2682 = !DILocation(line: 772, column: 52, scope: !624)
!2683 = !DILocation(line: 772, column: 76, scope: !624)
!2684 = !DILocation(line: 772, column: 50, scope: !624)
!2685 = !DILocation(line: 772, column: 16, scope: !624)
!2686 = !DILocation(line: 774, column: 5, scope: !624)
!2687 = !DILocation(line: 774, column: 12, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2689, file: !403, discriminator: 2)
!2689 = !DILexicalBlockFile(scope: !2690, file: !403, discriminator: 1)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !403, line: 774, column: 5)
!2691 = distinct !DILexicalBlock(scope: !624, file: !403, line: 774, column: 5)
!2692 = !DILocation(line: 774, column: 16, scope: !2690)
!2693 = !DILocation(line: 774, column: 5, scope: !2691)
!2694 = !DILocation(line: 776, column: 21, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2690, file: !403, line: 774, column: 42)
!2696 = !DILocation(line: 776, column: 30, scope: !2695)
!2697 = !DILocation(line: 776, column: 39, scope: !2695)
!2698 = !DILocation(line: 776, column: 38, scope: !2695)
!2699 = !DILocation(line: 776, column: 36, scope: !2695)
!2700 = !DILocation(line: 776, column: 18, scope: !2695)
!2701 = !DILocation(line: 777, column: 18, scope: !2695)
!2702 = !DILocation(line: 778, column: 9, scope: !2695)
!2703 = !DILocation(line: 778, column: 17, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2705, file: !403, discriminator: 2)
!2705 = !DILexicalBlockFile(scope: !2695, file: !403, discriminator: 1)
!2706 = !DILocation(line: 778, column: 26, scope: !2695)
!2707 = !DILocation(line: 779, column: 24, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2695, file: !403, line: 778, column: 33)
!2709 = !DILocation(line: 779, column: 37, scope: !2708)
!2710 = !DILocation(line: 779, column: 45, scope: !2708)
!2711 = !DILocation(line: 779, column: 33, scope: !2708)
!2712 = !DILocation(line: 779, column: 50, scope: !2708)
!2713 = !DILocation(line: 779, column: 23, scope: !2708)
!2714 = !DILocation(line: 779, column: 21, scope: !2708)
!2715 = !DILocation(line: 780, column: 22, scope: !2708)
!2716 = !DILocation(line: 781, column: 43, scope: !2708)
!2717 = !DILocation(line: 781, column: 29, scope: !2708)
!2718 = !DILocation(line: 781, column: 24, scope: !2708)
!2719 = !DILocation(line: 781, column: 27, scope: !2708)
!2720 = !DILocation(line: 783, column: 5, scope: !2695)
!2721 = !DILocation(line: 774, column: 25, scope: !2690)
!2722 = !DILocation(line: 774, column: 37, scope: !2690)
!2723 = !DILocation(line: 774, column: 5, scope: !2690)
!2724 = !DILocation(line: 785, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !624, file: !403, line: 785, column: 10)
!2726 = !DILocation(line: 785, column: 10, scope: !624)
!2727 = !DILocation(line: 786, column: 25, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !403, line: 785, column: 21)
!2729 = !DILocation(line: 786, column: 24, scope: !2728)
!2730 = !DILocation(line: 786, column: 18, scope: !2728)
!2731 = !DILocation(line: 787, column: 39, scope: !2728)
!2732 = !DILocation(line: 787, column: 48, scope: !2728)
!2733 = !DILocation(line: 787, column: 25, scope: !2728)
!2734 = !DILocation(line: 787, column: 20, scope: !2728)
!2735 = !DILocation(line: 787, column: 23, scope: !2728)
!2736 = !DILocation(line: 788, column: 5, scope: !2728)
!2737 = !DILocation(line: 790, column: 25, scope: !638)
!2738 = !DILocation(line: 791, column: 77, scope: !638)
!2739 = !DILocation(line: 791, column: 59, scope: !638)
!2740 = !DILocation(line: 791, column: 83, scope: !638)
!2741 = !DILocation(line: 791, column: 57, scope: !638)
!2742 = !DILocation(line: 790, column: 36, scope: !638)
!2743 = !DILocation(line: 789, column: 9, scope: !638)
!2744 = !DILocation(line: 791, column: 95, scope: !638)
!2745 = !DILocation(line: 789, column: 9, scope: !624)
!2746 = !DILocation(line: 792, column: 9, scope: !637)
!2747 = !DILocation(line: 792, column: 14, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !636, file: !403, discriminator: 1)
!2749 = !DILocation(line: 792, column: 24, scope: !636)
!2750 = !DILocation(line: 792, column: 47, scope: !636)
!2751 = !DILocation(line: 792, column: 56, scope: !642)
!2752 = !DILocation(line: 792, column: 64, scope: !642)
!2753 = !DILocation(line: 792, column: 56, scope: !636)
!2754 = !DILocation(line: 792, column: 86, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !641, file: !403, discriminator: 2)
!2756 = !DILocation(line: 792, column: 100, scope: !641)
!2757 = !DILocation(line: 792, column: 105, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !640, file: !403, discriminator: 4)
!2759 = !DILocation(line: 792, column: 115, scope: !640)
!2760 = !DILocation(line: 792, column: 145, scope: !640)
!2761 = !DILocation(line: 792, column: 163, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !640, file: !403, line: 792, column: 160)
!2763 = !DILocation(line: 792, column: 180, scope: !2762)
!2764 = !DILocation(line: 792, column: 160, scope: !2762)
!2765 = !DILocation(line: 792, column: 190, scope: !2762)
!2766 = !DILocation(line: 792, column: 160, scope: !640)
!2767 = !DILocation(line: 792, column: 160, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !640, file: !403, discriminator: 5)
!2769 = !DILocation(line: 792, column: 221, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2762, file: !403, discriminator: 6)
!2771 = !DILocation(line: 792, column: 239, scope: !2762)
!2772 = !DILocation(line: 792, column: 249, scope: !2762)
!2773 = !DILocation(line: 792, column: 274, scope: !2762)
!2774 = !DILocation(line: 792, column: 205, scope: !2762)
!2775 = !DILocation(line: 792, column: 293, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !641, file: !403, discriminator: 7)
!2777 = !DILocation(line: 792, column: 293, scope: !640)
!2778 = !DILocation(line: 792, column: 293, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !640, file: !403, discriminator: 8)
!2780 = !DILocation(line: 792, column: 306, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !641, file: !403, discriminator: 9)
!2782 = !DILocation(line: 792, column: 308, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !403, discriminator: 10)
!2784 = !DILexicalBlockFile(scope: !637, file: !403, discriminator: 3)
!2785 = !DILocation(line: 792, column: 308, scope: !636)
!2786 = !DILocation(line: 792, column: 308, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !636, file: !403, discriminator: 11)
!2788 = !DILocation(line: 793, column: 5, scope: !637)
!2789 = !DILocation(line: 794, column: 12, scope: !624)
!2790 = !DILocation(line: 794, column: 5, scope: !624)
!2791 = !DILocation(line: 795, column: 1, scope: !624)
!2792 = !DILocation(line: 1179, column: 36, scope: !649)
!2793 = !DILocation(line: 1179, column: 55, scope: !649)
!2794 = !DILocation(line: 1182, column: 5, scope: !649)
!2795 = !DILocation(line: 1182, column: 11, scope: !649)
!2796 = !DILocation(line: 1183, column: 5, scope: !649)
!2797 = !DILocation(line: 1183, column: 16, scope: !649)
!2798 = !DILocation(line: 1184, column: 5, scope: !649)
!2799 = !DILocation(line: 1184, column: 15, scope: !649)
!2800 = !DILocation(line: 1185, column: 5, scope: !649)
!2801 = !DILocation(line: 1185, column: 11, scope: !649)
!2802 = !DILocation(line: 1186, column: 5, scope: !649)
!2803 = !DILocation(line: 1186, column: 16, scope: !649)
!2804 = !DILocation(line: 1186, column: 19, scope: !649)
!2805 = !DILocation(line: 1188, column: 14, scope: !649)
!2806 = !DILocation(line: 1188, column: 22, scope: !649)
!2807 = !DILocation(line: 1188, column: 12, scope: !649)
!2808 = !DILocation(line: 1189, column: 14, scope: !649)
!2809 = !DILocation(line: 1189, column: 22, scope: !649)
!2810 = !DILocation(line: 1189, column: 12, scope: !649)
!2811 = !DILocation(line: 1197, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !649, file: !403, line: 1197, column: 9)
!2813 = !DILocation(line: 1197, column: 16, scope: !2812)
!2814 = !DILocation(line: 1197, column: 9, scope: !649)
!2815 = !DILocation(line: 1198, column: 25, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !403, line: 1197, column: 21)
!2817 = !DILocation(line: 1198, column: 9, scope: !2816)
!2818 = !DILocation(line: 1199, column: 9, scope: !2816)
!2819 = !DILocation(line: 1202, column: 53, scope: !649)
!2820 = !DILocation(line: 1202, column: 59, scope: !649)
!2821 = !DILocation(line: 1202, column: 14, scope: !649)
!2822 = !DILocation(line: 1202, column: 12, scope: !649)
!2823 = !DILocation(line: 1203, column: 10, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !649, file: !403, line: 1203, column: 9)
!2825 = !DILocation(line: 1203, column: 9, scope: !649)
!2826 = !DILocation(line: 1204, column: 9, scope: !2824)
!2827 = !DILocation(line: 1205, column: 49, scope: !649)
!2828 = !DILocation(line: 1205, column: 31, scope: !649)
!2829 = !DILocation(line: 1205, column: 59, scope: !649)
!2830 = !DILocation(line: 1205, column: 29, scope: !649)
!2831 = !DILocation(line: 1205, column: 12, scope: !649)
!2832 = !DILocation(line: 1207, column: 13, scope: !662)
!2833 = !DILocation(line: 1207, column: 11, scope: !662)
!2834 = !DILocation(line: 1207, column: 10, scope: !662)
!2835 = !DILocation(line: 1207, column: 17, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2837, file: !403, discriminator: 2)
!2837 = !DILexicalBlockFile(scope: !661, file: !403, discriminator: 1)
!2838 = !DILocation(line: 1207, column: 21, scope: !661)
!2839 = !DILocation(line: 1207, column: 19, scope: !661)
!2840 = !DILocation(line: 1207, column: 5, scope: !662)
!2841 = !DILocation(line: 1208, column: 9, scope: !660)
!2842 = !DILocation(line: 1208, column: 13, scope: !660)
!2843 = !DILocation(line: 1208, column: 51, scope: !660)
!2844 = !DILocation(line: 1208, column: 44, scope: !660)
!2845 = !DILocation(line: 1208, column: 43, scope: !660)
!2846 = !DILocation(line: 1208, column: 55, scope: !660)
!2847 = !DILocation(line: 1208, column: 27, scope: !660)
!2848 = !DILocation(line: 1208, column: 26, scope: !660)
!2849 = !DILocation(line: 1208, column: 19, scope: !660)
!2850 = !DILocation(line: 1209, column: 9, scope: !660)
!2851 = !DILocation(line: 1209, column: 13, scope: !660)
!2852 = !DILocation(line: 1209, column: 51, scope: !660)
!2853 = !DILocation(line: 1209, column: 52, scope: !660)
!2854 = !DILocation(line: 1209, column: 44, scope: !660)
!2855 = !DILocation(line: 1209, column: 43, scope: !660)
!2856 = !DILocation(line: 1209, column: 57, scope: !660)
!2857 = !DILocation(line: 1209, column: 27, scope: !660)
!2858 = !DILocation(line: 1209, column: 26, scope: !660)
!2859 = !DILocation(line: 1209, column: 19, scope: !660)
!2860 = !DILocation(line: 1210, column: 13, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !660, file: !403, line: 1210, column: 13)
!2862 = !DILocation(line: 1210, column: 17, scope: !2861)
!2863 = !DILocation(line: 1210, column: 23, scope: !2861)
!2864 = !DILocation(line: 1210, column: 26, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2861, file: !403, discriminator: 1)
!2866 = !DILocation(line: 1210, column: 30, scope: !2861)
!2867 = !DILocation(line: 1210, column: 13, scope: !660)
!2868 = !DILocation(line: 1211, column: 29, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2861, file: !403, line: 1210, column: 37)
!2870 = !DILocation(line: 1211, column: 13, scope: !2869)
!2871 = !DILocation(line: 1213, column: 13, scope: !2869)
!2872 = !DILocation(line: 1215, column: 24, scope: !660)
!2873 = !DILocation(line: 1215, column: 28, scope: !660)
!2874 = !DILocation(line: 1215, column: 36, scope: !660)
!2875 = !DILocation(line: 1215, column: 34, scope: !660)
!2876 = !DILocation(line: 1215, column: 23, scope: !660)
!2877 = !DILocation(line: 1215, column: 17, scope: !660)
!2878 = !DILocation(line: 1215, column: 9, scope: !660)
!2879 = !DILocation(line: 1215, column: 21, scope: !660)
!2880 = !DILocation(line: 1216, column: 5, scope: !661)
!2881 = !DILocation(line: 1216, column: 5, scope: !2837)
!2882 = !DILocation(line: 1216, column: 5, scope: !660)
!2883 = !DILocation(line: 1207, column: 31, scope: !661)
!2884 = !DILocation(line: 1207, column: 5, scope: !661)
!2885 = !DILocation(line: 1217, column: 12, scope: !649)
!2886 = !DILocation(line: 1217, column: 5, scope: !649)
!2887 = !DILocation(line: 1220, column: 5, scope: !649)
!2888 = !DILocation(line: 1220, column: 10, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !665, file: !403, discriminator: 1)
!2890 = !DILocation(line: 1220, column: 20, scope: !665)
!2891 = !DILocation(line: 1220, column: 50, scope: !665)
!2892 = !DILocation(line: 1220, column: 67, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !665, file: !403, line: 1220, column: 64)
!2894 = !DILocation(line: 1220, column: 84, scope: !2893)
!2895 = !DILocation(line: 1220, column: 64, scope: !2893)
!2896 = !DILocation(line: 1220, column: 94, scope: !2893)
!2897 = !DILocation(line: 1220, column: 64, scope: !665)
!2898 = !DILocation(line: 1220, column: 64, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !665, file: !403, discriminator: 2)
!2900 = !DILocation(line: 1220, column: 125, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2893, file: !403, discriminator: 3)
!2902 = !DILocation(line: 1220, column: 143, scope: !2893)
!2903 = !DILocation(line: 1220, column: 153, scope: !2893)
!2904 = !DILocation(line: 1220, column: 178, scope: !2893)
!2905 = !DILocation(line: 1220, column: 109, scope: !2893)
!2906 = !DILocation(line: 1220, column: 197, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !649, file: !403, discriminator: 4)
!2908 = !DILocation(line: 1220, column: 197, scope: !665)
!2909 = !DILocation(line: 1220, column: 197, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !665, file: !403, discriminator: 5)
!2911 = !DILocation(line: 1221, column: 5, scope: !649)
!2912 = !DILocation(line: 1222, column: 1, scope: !649)
!2913 = !DILocation(line: 1152, column: 12, scope: !666)
!2914 = !DILocation(line: 1154, column: 44, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !666, file: !403, line: 1154, column: 9)
!2916 = !DILocation(line: 1154, column: 47, scope: !2915)
!2917 = !DILocation(line: 1154, column: 27, scope: !2915)
!2918 = !DILocation(line: 1154, column: 10, scope: !2915)
!2919 = !DILocation(line: 1154, column: 57, scope: !2915)
!2920 = !DILocation(line: 1154, column: 9, scope: !666)
!2921 = !DILocation(line: 1155, column: 16, scope: !2915)
!2922 = !DILocation(line: 1155, column: 18, scope: !2915)
!2923 = !DILocation(line: 1155, column: 9, scope: !2915)
!2924 = !DILocation(line: 1157, column: 48, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !403, line: 1157, column: 13)
!2926 = distinct !DILexicalBlock(scope: !2915, file: !403, line: 1156, column: 10)
!2927 = !DILocation(line: 1157, column: 51, scope: !2925)
!2928 = !DILocation(line: 1157, column: 31, scope: !2925)
!2929 = !DILocation(line: 1157, column: 14, scope: !2925)
!2930 = !DILocation(line: 1157, column: 61, scope: !2925)
!2931 = !DILocation(line: 1157, column: 13, scope: !2926)
!2932 = !DILocation(line: 1158, column: 54, scope: !2925)
!2933 = !DILocation(line: 1158, column: 57, scope: !2925)
!2934 = !DILocation(line: 1158, column: 37, scope: !2925)
!2935 = !DILocation(line: 1158, column: 18, scope: !2925)
!2936 = !DILocation(line: 1158, column: 17, scope: !2925)
!2937 = !DILocation(line: 1158, column: 15, scope: !2925)
!2938 = !DILocation(line: 1158, column: 13, scope: !2925)
!2939 = !DILocation(line: 1159, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2926, file: !403, line: 1159, column: 13)
!2941 = !DILocation(line: 1159, column: 15, scope: !2940)
!2942 = !DILocation(line: 1159, column: 22, scope: !2940)
!2943 = !DILocation(line: 1159, column: 25, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2940, file: !403, discriminator: 1)
!2945 = !DILocation(line: 1159, column: 27, scope: !2940)
!2946 = !DILocation(line: 1159, column: 13, scope: !2926)
!2947 = !DILocation(line: 1160, column: 20, scope: !2940)
!2948 = !DILocation(line: 1160, column: 22, scope: !2940)
!2949 = !DILocation(line: 1160, column: 28, scope: !2940)
!2950 = !DILocation(line: 1160, column: 13, scope: !2940)
!2951 = !DILocation(line: 1162, column: 5, scope: !666)
!2952 = !DILocation(line: 1163, column: 1, scope: !666)
!2953 = !DILocation(line: 1118, column: 36, scope: !677)
!2954 = !DILocation(line: 1118, column: 55, scope: !677)
!2955 = !DILocation(line: 1121, column: 5, scope: !677)
!2956 = !DILocation(line: 1121, column: 11, scope: !677)
!2957 = !DILocation(line: 1122, column: 5, scope: !677)
!2958 = !DILocation(line: 1122, column: 16, scope: !677)
!2959 = !DILocation(line: 1123, column: 5, scope: !677)
!2960 = !DILocation(line: 1123, column: 15, scope: !677)
!2961 = !DILocation(line: 1124, column: 5, scope: !677)
!2962 = !DILocation(line: 1124, column: 11, scope: !677)
!2963 = !DILocation(line: 1125, column: 5, scope: !677)
!2964 = !DILocation(line: 1125, column: 16, scope: !677)
!2965 = !DILocation(line: 1125, column: 19, scope: !677)
!2966 = !DILocation(line: 1127, column: 14, scope: !677)
!2967 = !DILocation(line: 1127, column: 20, scope: !677)
!2968 = !DILocation(line: 1127, column: 12, scope: !677)
!2969 = !DILocation(line: 1128, column: 14, scope: !677)
!2970 = !DILocation(line: 1128, column: 20, scope: !677)
!2971 = !DILocation(line: 1128, column: 12, scope: !677)
!2972 = !DILocation(line: 1131, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !677, file: !403, line: 1131, column: 9)
!2974 = !DILocation(line: 1131, column: 16, scope: !2973)
!2975 = !DILocation(line: 1131, column: 9, scope: !677)
!2976 = !DILocation(line: 1132, column: 16, scope: !2973)
!2977 = !DILocation(line: 1132, column: 9, scope: !2973)
!2978 = !DILocation(line: 1134, column: 52, scope: !677)
!2979 = !DILocation(line: 1134, column: 58, scope: !677)
!2980 = !DILocation(line: 1134, column: 14, scope: !677)
!2981 = !DILocation(line: 1134, column: 12, scope: !677)
!2982 = !DILocation(line: 1135, column: 10, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !677, file: !403, line: 1135, column: 9)
!2984 = !DILocation(line: 1135, column: 9, scope: !677)
!2985 = !DILocation(line: 1136, column: 9, scope: !2983)
!2986 = !DILocation(line: 1137, column: 49, scope: !677)
!2987 = !DILocation(line: 1137, column: 31, scope: !677)
!2988 = !DILocation(line: 1137, column: 59, scope: !677)
!2989 = !DILocation(line: 1137, column: 29, scope: !677)
!2990 = !DILocation(line: 1137, column: 12, scope: !677)
!2991 = !DILocation(line: 1140, column: 13, scope: !690)
!2992 = !DILocation(line: 1140, column: 11, scope: !690)
!2993 = !DILocation(line: 1140, column: 10, scope: !690)
!2994 = !DILocation(line: 1140, column: 17, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2996, file: !403, discriminator: 2)
!2996 = !DILexicalBlockFile(scope: !689, file: !403, discriminator: 1)
!2997 = !DILocation(line: 1140, column: 21, scope: !689)
!2998 = !DILocation(line: 1140, column: 19, scope: !689)
!2999 = !DILocation(line: 1140, column: 5, scope: !690)
!3000 = !DILocation(line: 1141, column: 9, scope: !688)
!3001 = !DILocation(line: 1141, column: 23, scope: !688)
!3002 = !DILocation(line: 1142, column: 21, scope: !688)
!3003 = !DILocation(line: 1142, column: 14, scope: !688)
!3004 = !DILocation(line: 1142, column: 24, scope: !688)
!3005 = !DILocation(line: 1142, column: 30, scope: !688)
!3006 = !DILocation(line: 1142, column: 13, scope: !688)
!3007 = !DILocation(line: 1142, column: 11, scope: !688)
!3008 = !DILocation(line: 1143, column: 36, scope: !688)
!3009 = !DILocation(line: 1143, column: 23, scope: !688)
!3010 = !DILocation(line: 1143, column: 17, scope: !688)
!3011 = !DILocation(line: 1143, column: 9, scope: !688)
!3012 = !DILocation(line: 1143, column: 21, scope: !688)
!3013 = !DILocation(line: 1144, column: 20, scope: !688)
!3014 = !DILocation(line: 1144, column: 13, scope: !688)
!3015 = !DILocation(line: 1144, column: 23, scope: !688)
!3016 = !DILocation(line: 1144, column: 11, scope: !688)
!3017 = !DILocation(line: 1145, column: 36, scope: !688)
!3018 = !DILocation(line: 1145, column: 23, scope: !688)
!3019 = !DILocation(line: 1145, column: 17, scope: !688)
!3020 = !DILocation(line: 1145, column: 9, scope: !688)
!3021 = !DILocation(line: 1145, column: 21, scope: !688)
!3022 = !DILocation(line: 1146, column: 5, scope: !689)
!3023 = !DILocation(line: 1146, column: 5, scope: !688)
!3024 = !DILocation(line: 1140, column: 30, scope: !689)
!3025 = !DILocation(line: 1140, column: 5, scope: !689)
!3026 = !DILocation(line: 1147, column: 12, scope: !677)
!3027 = !DILocation(line: 1147, column: 5, scope: !677)
!3028 = !DILocation(line: 1148, column: 1, scope: !677)
!3029 = !DILocation(line: 687, column: 40, scope: !697)
!3030 = !DILocation(line: 687, column: 59, scope: !697)
!3031 = !DILocation(line: 690, column: 5, scope: !697)
!3032 = !DILocation(line: 690, column: 20, scope: !697)
!3033 = !DILocation(line: 690, column: 30, scope: !697)
!3034 = !DILocation(line: 691, column: 5, scope: !697)
!3035 = !DILocation(line: 691, column: 15, scope: !697)
!3036 = !DILocation(line: 692, column: 5, scope: !697)
!3037 = !DILocation(line: 692, column: 19, scope: !697)
!3038 = !DILocation(line: 693, column: 5, scope: !697)
!3039 = !DILocation(line: 693, column: 16, scope: !697)
!3040 = !DILocation(line: 693, column: 20, scope: !697)
!3041 = !DILocation(line: 693, column: 27, scope: !697)
!3042 = !DILocation(line: 695, column: 15, scope: !697)
!3043 = !DILocation(line: 695, column: 21, scope: !697)
!3044 = !DILocation(line: 695, column: 13, scope: !697)
!3045 = !DILocation(line: 696, column: 11, scope: !697)
!3046 = !DILocation(line: 696, column: 17, scope: !697)
!3047 = !DILocation(line: 696, column: 9, scope: !697)
!3048 = !DILocation(line: 700, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !697, file: !403, line: 700, column: 9)
!3050 = !DILocation(line: 700, column: 13, scope: !3049)
!3051 = !DILocation(line: 700, column: 9, scope: !697)
!3052 = !DILocation(line: 701, column: 16, scope: !3049)
!3053 = !DILocation(line: 701, column: 9, scope: !3049)
!3054 = !DILocation(line: 704, column: 52, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !697, file: !403, line: 704, column: 10)
!3056 = !DILocation(line: 704, column: 55, scope: !3055)
!3057 = !DILocation(line: 704, column: 57, scope: !3055)
!3058 = !DILocation(line: 704, column: 14, scope: !3055)
!3059 = !DILocation(line: 704, column: 13, scope: !3055)
!3060 = !DILocation(line: 704, column: 62, scope: !3055)
!3061 = !DILocation(line: 704, column: 10, scope: !697)
!3062 = !DILocation(line: 705, column: 9, scope: !3055)
!3063 = !DILocation(line: 706, column: 68, scope: !697)
!3064 = !DILocation(line: 706, column: 50, scope: !697)
!3065 = !DILocation(line: 706, column: 74, scope: !697)
!3066 = !DILocation(line: 706, column: 48, scope: !697)
!3067 = !DILocation(line: 706, column: 14, scope: !697)
!3068 = !DILocation(line: 708, column: 12, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !697, file: !403, line: 708, column: 5)
!3070 = !DILocation(line: 708, column: 10, scope: !3069)
!3071 = !DILocation(line: 708, column: 16, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3073, file: !403, discriminator: 2)
!3073 = !DILexicalBlockFile(scope: !3074, file: !403, discriminator: 1)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !403, line: 708, column: 5)
!3075 = !DILocation(line: 708, column: 19, scope: !3074)
!3076 = !DILocation(line: 708, column: 18, scope: !3074)
!3077 = !DILocation(line: 708, column: 5, scope: !3069)
!3078 = !DILocation(line: 709, column: 22, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !403, line: 708, column: 30)
!3080 = !DILocation(line: 709, column: 14, scope: !3079)
!3081 = !DILocation(line: 709, column: 12, scope: !3079)
!3082 = !DILocation(line: 710, column: 14, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !403, line: 710, column: 14)
!3084 = !DILocation(line: 710, column: 17, scope: !3083)
!3085 = !DILocation(line: 710, column: 14, scope: !3079)
!3086 = !DILocation(line: 712, column: 22, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !403, line: 710, column: 27)
!3088 = !DILocation(line: 712, column: 25, scope: !3087)
!3089 = !DILocation(line: 713, column: 22, scope: !3087)
!3090 = !DILocation(line: 713, column: 25, scope: !3087)
!3091 = !DILocation(line: 714, column: 9, scope: !3087)
!3092 = !DILocation(line: 716, column: 23, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !403, line: 716, column: 13)
!3094 = distinct !DILexicalBlock(scope: !3083, file: !403, line: 714, column: 16)
!3095 = !DILocation(line: 716, column: 25, scope: !3093)
!3096 = !DILocation(line: 716, column: 22, scope: !3093)
!3097 = !DILocation(line: 716, column: 17, scope: !3093)
!3098 = !DILocation(line: 717, column: 17, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3093, file: !403, line: 716, column: 13)
!3100 = !DILocation(line: 717, column: 23, scope: !3099)
!3101 = !DILocation(line: 717, column: 22, scope: !3099)
!3102 = !DILocation(line: 717, column: 27, scope: !3099)
!3103 = !DILocation(line: 717, column: 38, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3099, file: !403, discriminator: 1)
!3105 = !DILocation(line: 717, column: 30, scope: !3099)
!3106 = !DILocation(line: 717, column: 48, scope: !3099)
!3107 = !DILocation(line: 717, column: 45, scope: !3099)
!3108 = !DILocation(line: 717, column: 51, scope: !3099)
!3109 = !DILocation(line: 718, column: 21, scope: !3099)
!3110 = !DILocation(line: 718, column: 29, scope: !3099)
!3111 = !DILocation(line: 718, column: 31, scope: !3099)
!3112 = !DILocation(line: 718, column: 27, scope: !3099)
!3113 = !DILocation(line: 716, column: 13, scope: !3093)
!3114 = !DILocation(line: 716, column: 13, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3093, file: !403, discriminator: 1)
!3116 = !DILocation(line: 719, column: 22, scope: !3099)
!3117 = !DILocation(line: 716, column: 13, scope: !3099)
!3118 = !DILocation(line: 720, column: 18, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3094, file: !403, line: 720, column: 18)
!3120 = !DILocation(line: 720, column: 26, scope: !3119)
!3121 = !DILocation(line: 720, column: 24, scope: !3119)
!3122 = !DILocation(line: 720, column: 29, scope: !3119)
!3123 = !DILocation(line: 720, column: 18, scope: !3094)
!3124 = !DILocation(line: 722, column: 31, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3119, file: !403, line: 720, column: 35)
!3126 = !DILocation(line: 722, column: 26, scope: !3125)
!3127 = !DILocation(line: 722, column: 29, scope: !3125)
!3128 = !DILocation(line: 723, column: 26, scope: !3125)
!3129 = !DILocation(line: 723, column: 29, scope: !3125)
!3130 = !DILocation(line: 724, column: 48, scope: !3125)
!3131 = !DILocation(line: 724, column: 54, scope: !3125)
!3132 = !DILocation(line: 724, column: 53, scope: !3125)
!3133 = !DILocation(line: 724, column: 31, scope: !3125)
!3134 = !DILocation(line: 724, column: 26, scope: !3125)
!3135 = !DILocation(line: 724, column: 29, scope: !3125)
!3136 = !DILocation(line: 725, column: 22, scope: !3125)
!3137 = !DILocation(line: 725, column: 27, scope: !3125)
!3138 = !DILocation(line: 725, column: 20, scope: !3125)
!3139 = !DILocation(line: 726, column: 13, scope: !3125)
!3140 = !DILocation(line: 728, column: 31, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3119, file: !403, line: 726, column: 20)
!3142 = !DILocation(line: 728, column: 26, scope: !3141)
!3143 = !DILocation(line: 728, column: 29, scope: !3141)
!3144 = !DILocation(line: 731, column: 5, scope: !3079)
!3145 = !DILocation(line: 708, column: 26, scope: !3074)
!3146 = !DILocation(line: 708, column: 5, scope: !3074)
!3147 = !DILocation(line: 733, column: 25, scope: !711)
!3148 = !DILocation(line: 734, column: 77, scope: !711)
!3149 = !DILocation(line: 734, column: 59, scope: !711)
!3150 = !DILocation(line: 734, column: 83, scope: !711)
!3151 = !DILocation(line: 734, column: 57, scope: !711)
!3152 = !DILocation(line: 733, column: 34, scope: !711)
!3153 = !DILocation(line: 732, column: 9, scope: !711)
!3154 = !DILocation(line: 734, column: 95, scope: !711)
!3155 = !DILocation(line: 732, column: 9, scope: !697)
!3156 = !DILocation(line: 735, column: 9, scope: !710)
!3157 = !DILocation(line: 735, column: 14, scope: !3158)
!3158 = !DILexicalBlockFile(scope: !709, file: !403, discriminator: 1)
!3159 = !DILocation(line: 735, column: 24, scope: !709)
!3160 = !DILocation(line: 735, column: 47, scope: !709)
!3161 = !DILocation(line: 735, column: 56, scope: !715)
!3162 = !DILocation(line: 735, column: 64, scope: !715)
!3163 = !DILocation(line: 735, column: 56, scope: !709)
!3164 = !DILocation(line: 735, column: 86, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !714, file: !403, discriminator: 2)
!3166 = !DILocation(line: 735, column: 100, scope: !714)
!3167 = !DILocation(line: 735, column: 105, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !713, file: !403, discriminator: 4)
!3169 = !DILocation(line: 735, column: 115, scope: !713)
!3170 = !DILocation(line: 735, column: 145, scope: !713)
!3171 = !DILocation(line: 735, column: 163, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !713, file: !403, line: 735, column: 160)
!3173 = !DILocation(line: 735, column: 180, scope: !3172)
!3174 = !DILocation(line: 735, column: 160, scope: !3172)
!3175 = !DILocation(line: 735, column: 190, scope: !3172)
!3176 = !DILocation(line: 735, column: 160, scope: !713)
!3177 = !DILocation(line: 735, column: 160, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !713, file: !403, discriminator: 5)
!3179 = !DILocation(line: 735, column: 221, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3172, file: !403, discriminator: 6)
!3181 = !DILocation(line: 735, column: 239, scope: !3172)
!3182 = !DILocation(line: 735, column: 249, scope: !3172)
!3183 = !DILocation(line: 735, column: 274, scope: !3172)
!3184 = !DILocation(line: 735, column: 205, scope: !3172)
!3185 = !DILocation(line: 735, column: 293, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !714, file: !403, discriminator: 7)
!3187 = !DILocation(line: 735, column: 293, scope: !713)
!3188 = !DILocation(line: 735, column: 293, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !713, file: !403, discriminator: 8)
!3190 = !DILocation(line: 735, column: 306, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !714, file: !403, discriminator: 9)
!3192 = !DILocation(line: 735, column: 308, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3194, file: !403, discriminator: 10)
!3194 = !DILexicalBlockFile(scope: !710, file: !403, discriminator: 3)
!3195 = !DILocation(line: 735, column: 308, scope: !709)
!3196 = !DILocation(line: 735, column: 308, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !709, file: !403, discriminator: 11)
!3198 = !DILocation(line: 736, column: 5, scope: !710)
!3199 = !DILocation(line: 737, column: 12, scope: !697)
!3200 = !DILocation(line: 737, column: 5, scope: !697)
!3201 = !DILocation(line: 738, column: 1, scope: !697)
!3202 = !DILocation(line: 808, column: 42, scope: !722)
!3203 = !DILocation(line: 808, column: 61, scope: !722)
!3204 = !DILocation(line: 811, column: 5, scope: !722)
!3205 = !DILocation(line: 811, column: 20, scope: !722)
!3206 = !DILocation(line: 811, column: 30, scope: !722)
!3207 = !DILocation(line: 812, column: 5, scope: !722)
!3208 = !DILocation(line: 812, column: 19, scope: !722)
!3209 = !DILocation(line: 812, column: 28, scope: !722)
!3210 = !DILocation(line: 813, column: 5, scope: !722)
!3211 = !DILocation(line: 813, column: 15, scope: !722)
!3212 = !DILocation(line: 814, column: 5, scope: !722)
!3213 = !DILocation(line: 814, column: 16, scope: !722)
!3214 = !DILocation(line: 814, column: 24, scope: !722)
!3215 = !DILocation(line: 814, column: 33, scope: !722)
!3216 = !DILocation(line: 816, column: 15, scope: !722)
!3217 = !DILocation(line: 816, column: 21, scope: !722)
!3218 = !DILocation(line: 816, column: 13, scope: !722)
!3219 = !DILocation(line: 817, column: 14, scope: !722)
!3220 = !DILocation(line: 817, column: 20, scope: !722)
!3221 = !DILocation(line: 817, column: 12, scope: !722)
!3222 = !DILocation(line: 822, column: 10, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !722, file: !403, line: 822, column: 10)
!3224 = !DILocation(line: 822, column: 17, scope: !3223)
!3225 = !DILocation(line: 822, column: 10, scope: !722)
!3226 = !DILocation(line: 823, column: 16, scope: !3223)
!3227 = !DILocation(line: 823, column: 9, scope: !3223)
!3228 = !DILocation(line: 824, column: 14, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !403, line: 824, column: 14)
!3230 = !DILocation(line: 824, column: 21, scope: !3229)
!3231 = !DILocation(line: 824, column: 14, scope: !3223)
!3232 = !DILocation(line: 825, column: 16, scope: !3229)
!3233 = !DILocation(line: 825, column: 9, scope: !3229)
!3234 = !DILocation(line: 828, column: 15, scope: !722)
!3235 = !DILocation(line: 828, column: 21, scope: !722)
!3236 = !DILocation(line: 828, column: 13, scope: !722)
!3237 = !DILocation(line: 829, column: 52, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !722, file: !403, line: 829, column: 10)
!3239 = !DILocation(line: 829, column: 14, scope: !3238)
!3240 = !DILocation(line: 829, column: 13, scope: !3238)
!3241 = !DILocation(line: 829, column: 62, scope: !3238)
!3242 = !DILocation(line: 829, column: 10, scope: !722)
!3243 = !DILocation(line: 830, column: 9, scope: !3238)
!3244 = !DILocation(line: 831, column: 20, scope: !722)
!3245 = !DILocation(line: 831, column: 18, scope: !722)
!3246 = !DILocation(line: 832, column: 68, scope: !722)
!3247 = !DILocation(line: 832, column: 50, scope: !722)
!3248 = !DILocation(line: 832, column: 74, scope: !722)
!3249 = !DILocation(line: 832, column: 48, scope: !722)
!3250 = !DILocation(line: 832, column: 14, scope: !722)
!3251 = !DILocation(line: 866, column: 9, scope: !722)
!3252 = !DILocation(line: 866, column: 19, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !737, file: !403, discriminator: 1)
!3254 = !DILocation(line: 866, column: 28, scope: !737)
!3255 = !DILocation(line: 866, column: 19, scope: !738)
!3256 = !DILocation(line: 866, column: 52, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !736, file: !403, discriminator: 2)
!3258 = !DILocation(line: 866, column: 36, scope: !736)
!3259 = !DILocation(line: 866, column: 69, scope: !736)
!3260 = !DILocation(line: 866, column: 74, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !735, file: !403, discriminator: 4)
!3262 = !DILocation(line: 866, column: 84, scope: !735)
!3263 = !DILocation(line: 866, column: 114, scope: !735)
!3264 = !DILocation(line: 866, column: 127, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !735, file: !403, line: 866, column: 124)
!3266 = !DILocation(line: 866, column: 144, scope: !3265)
!3267 = !DILocation(line: 866, column: 124, scope: !3265)
!3268 = !DILocation(line: 866, column: 154, scope: !3265)
!3269 = !DILocation(line: 866, column: 124, scope: !735)
!3270 = !DILocation(line: 866, column: 124, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !735, file: !403, discriminator: 5)
!3272 = !DILocation(line: 866, column: 185, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3265, file: !403, discriminator: 6)
!3274 = !DILocation(line: 866, column: 203, scope: !3265)
!3275 = !DILocation(line: 866, column: 213, scope: !3265)
!3276 = !DILocation(line: 866, column: 238, scope: !3265)
!3277 = !DILocation(line: 866, column: 169, scope: !3265)
!3278 = !DILocation(line: 866, column: 257, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !736, file: !403, discriminator: 7)
!3280 = !DILocation(line: 866, column: 257, scope: !735)
!3281 = !DILocation(line: 866, column: 257, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !735, file: !403, discriminator: 8)
!3283 = !DILocation(line: 866, column: 270, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !736, file: !403, discriminator: 9)
!3285 = !DILocation(line: 866, column: 270, scope: !736)
!3286 = !DILocation(line: 866, column: 309, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !738, file: !403, discriminator: 3)
!3288 = !DILocation(line: 866, column: 301, scope: !738)
!3289 = !DILocation(line: 866, column: 299, scope: !738)
!3290 = !DILocation(line: 866, column: 313, scope: !738)
!3291 = !DILocation(line: 866, column: 313, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !738, file: !403, discriminator: 10)
!3293 = !DILocation(line: 868, column: 9, scope: !745)
!3294 = !DILocation(line: 868, column: 17, scope: !745)
!3295 = !DILocation(line: 868, column: 9, scope: !722)
!3296 = !DILocation(line: 869, column: 9, scope: !744)
!3297 = !DILocation(line: 869, column: 19, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !742, file: !403, discriminator: 1)
!3299 = !DILocation(line: 869, column: 28, scope: !742)
!3300 = !DILocation(line: 869, column: 19, scope: !743)
!3301 = !DILocation(line: 869, column: 52, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !741, file: !403, discriminator: 2)
!3303 = !DILocation(line: 869, column: 36, scope: !741)
!3304 = !DILocation(line: 869, column: 69, scope: !741)
!3305 = !DILocation(line: 869, column: 74, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !740, file: !403, discriminator: 4)
!3307 = !DILocation(line: 869, column: 84, scope: !740)
!3308 = !DILocation(line: 869, column: 114, scope: !740)
!3309 = !DILocation(line: 869, column: 127, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !740, file: !403, line: 869, column: 124)
!3311 = !DILocation(line: 869, column: 144, scope: !3310)
!3312 = !DILocation(line: 869, column: 124, scope: !3310)
!3313 = !DILocation(line: 869, column: 154, scope: !3310)
!3314 = !DILocation(line: 869, column: 124, scope: !740)
!3315 = !DILocation(line: 869, column: 124, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !740, file: !403, discriminator: 5)
!3317 = !DILocation(line: 869, column: 185, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3310, file: !403, discriminator: 6)
!3319 = !DILocation(line: 869, column: 203, scope: !3310)
!3320 = !DILocation(line: 869, column: 213, scope: !3310)
!3321 = !DILocation(line: 869, column: 238, scope: !3310)
!3322 = !DILocation(line: 869, column: 169, scope: !3310)
!3323 = !DILocation(line: 869, column: 257, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !741, file: !403, discriminator: 7)
!3325 = !DILocation(line: 869, column: 257, scope: !740)
!3326 = !DILocation(line: 869, column: 257, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !740, file: !403, discriminator: 8)
!3328 = !DILocation(line: 869, column: 270, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !741, file: !403, discriminator: 9)
!3330 = !DILocation(line: 869, column: 270, scope: !741)
!3331 = !DILocation(line: 869, column: 311, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !743, file: !403, discriminator: 3)
!3333 = !DILocation(line: 869, column: 303, scope: !743)
!3334 = !DILocation(line: 869, column: 301, scope: !743)
!3335 = !DILocation(line: 869, column: 315, scope: !743)
!3336 = !DILocation(line: 869, column: 315, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !743, file: !403, discriminator: 10)
!3338 = !DILocation(line: 870, column: 13, scope: !749)
!3339 = !DILocation(line: 870, column: 23, scope: !749)
!3340 = !DILocation(line: 870, column: 13, scope: !744)
!3341 = !DILocation(line: 874, column: 29, scope: !748)
!3342 = !DILocation(line: 874, column: 13, scope: !748)
!3343 = !DILocation(line: 875, column: 13, scope: !748)
!3344 = !DILocation(line: 875, column: 18, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !747, file: !403, discriminator: 1)
!3346 = !DILocation(line: 875, column: 28, scope: !747)
!3347 = !DILocation(line: 875, column: 58, scope: !747)
!3348 = !DILocation(line: 875, column: 71, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !747, file: !403, line: 875, column: 68)
!3350 = !DILocation(line: 875, column: 88, scope: !3349)
!3351 = !DILocation(line: 875, column: 68, scope: !3349)
!3352 = !DILocation(line: 875, column: 98, scope: !3349)
!3353 = !DILocation(line: 875, column: 68, scope: !747)
!3354 = !DILocation(line: 875, column: 68, scope: !3355)
!3355 = !DILexicalBlockFile(scope: !747, file: !403, discriminator: 2)
!3356 = !DILocation(line: 875, column: 129, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3349, file: !403, discriminator: 3)
!3358 = !DILocation(line: 875, column: 147, scope: !3349)
!3359 = !DILocation(line: 875, column: 157, scope: !3349)
!3360 = !DILocation(line: 875, column: 182, scope: !3349)
!3361 = !DILocation(line: 875, column: 113, scope: !3349)
!3362 = !DILocation(line: 875, column: 201, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !748, file: !403, discriminator: 4)
!3364 = !DILocation(line: 875, column: 201, scope: !747)
!3365 = !DILocation(line: 875, column: 201, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !747, file: !403, discriminator: 5)
!3367 = !DILocation(line: 876, column: 13, scope: !748)
!3368 = !DILocation(line: 878, column: 9, scope: !744)
!3369 = !DILocation(line: 878, column: 19, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !755, file: !403, discriminator: 1)
!3371 = !DILocation(line: 878, column: 34, scope: !755)
!3372 = !DILocation(line: 878, column: 19, scope: !756)
!3373 = !DILocation(line: 878, column: 47, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3375, file: !403, discriminator: 2)
!3375 = distinct !DILexicalBlock(scope: !754, file: !403, line: 878, column: 47)
!3376 = !DILocation(line: 878, column: 55, scope: !3375)
!3377 = !DILocation(line: 878, column: 47, scope: !754)
!3378 = !DILocation(line: 878, column: 101, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3375, file: !403, discriminator: 4)
!3380 = !DILocation(line: 878, column: 94, scope: !3375)
!3381 = !DILocation(line: 878, column: 146, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !753, file: !403, discriminator: 5)
!3383 = !DILocation(line: 878, column: 145, scope: !753)
!3384 = !DILocation(line: 878, column: 123, scope: !753)
!3385 = !DILocation(line: 878, column: 155, scope: !753)
!3386 = !DILocation(line: 878, column: 123, scope: !754)
!3387 = !DILocation(line: 878, column: 162, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !752, file: !403, discriminator: 6)
!3389 = !DILocation(line: 878, column: 167, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !751, file: !403, discriminator: 8)
!3391 = !DILocation(line: 878, column: 177, scope: !751)
!3392 = !DILocation(line: 878, column: 208, scope: !751)
!3393 = !DILocation(line: 878, column: 217, scope: !759)
!3394 = !DILocation(line: 878, column: 233, scope: !759)
!3395 = !DILocation(line: 878, column: 217, scope: !751)
!3396 = !DILocation(line: 878, column: 248, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !759, file: !403, discriminator: 9)
!3398 = !DILocation(line: 878, column: 253, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !758, file: !403, discriminator: 11)
!3400 = !DILocation(line: 878, column: 263, scope: !758)
!3401 = !DILocation(line: 878, column: 293, scope: !758)
!3402 = !DILocation(line: 878, column: 319, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !758, file: !403, line: 878, column: 316)
!3404 = !DILocation(line: 878, column: 336, scope: !3403)
!3405 = !DILocation(line: 878, column: 316, scope: !3403)
!3406 = !DILocation(line: 878, column: 346, scope: !3403)
!3407 = !DILocation(line: 878, column: 316, scope: !758)
!3408 = !DILocation(line: 878, column: 316, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !758, file: !403, discriminator: 12)
!3410 = !DILocation(line: 878, column: 377, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3403, file: !403, discriminator: 13)
!3412 = !DILocation(line: 878, column: 395, scope: !3403)
!3413 = !DILocation(line: 878, column: 405, scope: !3403)
!3414 = !DILocation(line: 878, column: 430, scope: !3403)
!3415 = !DILocation(line: 878, column: 361, scope: !3403)
!3416 = !DILocation(line: 878, column: 449, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !759, file: !403, discriminator: 14)
!3418 = !DILocation(line: 878, column: 449, scope: !758)
!3419 = !DILocation(line: 878, column: 449, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !758, file: !403, discriminator: 15)
!3421 = !DILocation(line: 878, column: 449, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !758, file: !403, discriminator: 16)
!3423 = !DILocation(line: 878, column: 462, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3425, file: !403, discriminator: 17)
!3425 = !DILexicalBlockFile(scope: !752, file: !403, discriminator: 10)
!3426 = !DILocation(line: 878, column: 462, scope: !751)
!3427 = !DILocation(line: 878, column: 462, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !751, file: !403, discriminator: 18)
!3429 = !DILocation(line: 878, column: 475, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !752, file: !403, discriminator: 19)
!3431 = !DILocation(line: 878, column: 475, scope: !752)
!3432 = !DILocation(line: 878, column: 559, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !754, file: !403, discriminator: 7)
!3434 = !DILocation(line: 878, column: 541, scope: !754)
!3435 = !DILocation(line: 878, column: 565, scope: !754)
!3436 = !DILocation(line: 878, column: 539, scope: !754)
!3437 = !DILocation(line: 878, column: 577, scope: !754)
!3438 = !DILocation(line: 878, column: 575, scope: !754)
!3439 = !DILocation(line: 878, column: 505, scope: !754)
!3440 = !DILocation(line: 878, column: 601, scope: !754)
!3441 = !DILocation(line: 878, column: 608, scope: !754)
!3442 = !DILocation(line: 878, column: 599, scope: !754)
!3443 = !DILocation(line: 878, column: 622, scope: !754)
!3444 = !DILocation(line: 878, column: 630, scope: !754)
!3445 = !DILocation(line: 878, column: 620, scope: !754)
!3446 = !DILocation(line: 878, column: 635, scope: !754)
!3447 = !DILocation(line: 878, column: 646, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3449, file: !403, discriminator: 20)
!3449 = !DILexicalBlockFile(scope: !756, file: !403, discriminator: 3)
!3450 = !DILocation(line: 878, column: 649, scope: !756)
!3451 = !DILocation(line: 878, column: 657, scope: !756)
!3452 = !DILocation(line: 878, column: 657, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !756, file: !403, discriminator: 21)
!3454 = !DILocation(line: 879, column: 5, scope: !744)
!3455 = !DILocation(line: 880, column: 9, scope: !767)
!3456 = !DILocation(line: 880, column: 19, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !765, file: !403, discriminator: 1)
!3458 = !DILocation(line: 880, column: 34, scope: !765)
!3459 = !DILocation(line: 880, column: 19, scope: !766)
!3460 = !DILocation(line: 880, column: 47, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3462, file: !403, discriminator: 2)
!3462 = distinct !DILexicalBlock(scope: !764, file: !403, line: 880, column: 47)
!3463 = !DILocation(line: 880, column: 55, scope: !3462)
!3464 = !DILocation(line: 880, column: 47, scope: !764)
!3465 = !DILocation(line: 880, column: 101, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3462, file: !403, discriminator: 4)
!3467 = !DILocation(line: 880, column: 94, scope: !3462)
!3468 = !DILocation(line: 880, column: 146, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !763, file: !403, discriminator: 5)
!3470 = !DILocation(line: 880, column: 145, scope: !763)
!3471 = !DILocation(line: 880, column: 123, scope: !763)
!3472 = !DILocation(line: 880, column: 155, scope: !763)
!3473 = !DILocation(line: 880, column: 123, scope: !764)
!3474 = !DILocation(line: 880, column: 162, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !762, file: !403, discriminator: 6)
!3476 = !DILocation(line: 880, column: 167, scope: !3477)
!3477 = !DILexicalBlockFile(scope: !761, file: !403, discriminator: 8)
!3478 = !DILocation(line: 880, column: 177, scope: !761)
!3479 = !DILocation(line: 880, column: 208, scope: !761)
!3480 = !DILocation(line: 880, column: 217, scope: !770)
!3481 = !DILocation(line: 880, column: 233, scope: !770)
!3482 = !DILocation(line: 880, column: 217, scope: !761)
!3483 = !DILocation(line: 880, column: 248, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !770, file: !403, discriminator: 9)
!3485 = !DILocation(line: 880, column: 253, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !769, file: !403, discriminator: 11)
!3487 = !DILocation(line: 880, column: 263, scope: !769)
!3488 = !DILocation(line: 880, column: 293, scope: !769)
!3489 = !DILocation(line: 880, column: 319, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !769, file: !403, line: 880, column: 316)
!3491 = !DILocation(line: 880, column: 336, scope: !3490)
!3492 = !DILocation(line: 880, column: 316, scope: !3490)
!3493 = !DILocation(line: 880, column: 346, scope: !3490)
!3494 = !DILocation(line: 880, column: 316, scope: !769)
!3495 = !DILocation(line: 880, column: 316, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !769, file: !403, discriminator: 12)
!3497 = !DILocation(line: 880, column: 377, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3490, file: !403, discriminator: 13)
!3499 = !DILocation(line: 880, column: 395, scope: !3490)
!3500 = !DILocation(line: 880, column: 405, scope: !3490)
!3501 = !DILocation(line: 880, column: 430, scope: !3490)
!3502 = !DILocation(line: 880, column: 361, scope: !3490)
!3503 = !DILocation(line: 880, column: 449, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !770, file: !403, discriminator: 14)
!3505 = !DILocation(line: 880, column: 449, scope: !769)
!3506 = !DILocation(line: 880, column: 449, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !769, file: !403, discriminator: 15)
!3508 = !DILocation(line: 880, column: 449, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !769, file: !403, discriminator: 16)
!3510 = !DILocation(line: 880, column: 462, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3512, file: !403, discriminator: 17)
!3512 = !DILexicalBlockFile(scope: !762, file: !403, discriminator: 10)
!3513 = !DILocation(line: 880, column: 462, scope: !761)
!3514 = !DILocation(line: 880, column: 462, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !761, file: !403, discriminator: 18)
!3516 = !DILocation(line: 880, column: 475, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !762, file: !403, discriminator: 19)
!3518 = !DILocation(line: 880, column: 475, scope: !762)
!3519 = !DILocation(line: 880, column: 559, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !764, file: !403, discriminator: 7)
!3521 = !DILocation(line: 880, column: 541, scope: !764)
!3522 = !DILocation(line: 880, column: 565, scope: !764)
!3523 = !DILocation(line: 880, column: 539, scope: !764)
!3524 = !DILocation(line: 880, column: 577, scope: !764)
!3525 = !DILocation(line: 880, column: 575, scope: !764)
!3526 = !DILocation(line: 880, column: 505, scope: !764)
!3527 = !DILocation(line: 880, column: 601, scope: !764)
!3528 = !DILocation(line: 880, column: 608, scope: !764)
!3529 = !DILocation(line: 880, column: 599, scope: !764)
!3530 = !DILocation(line: 880, column: 622, scope: !764)
!3531 = !DILocation(line: 880, column: 630, scope: !764)
!3532 = !DILocation(line: 880, column: 620, scope: !764)
!3533 = !DILocation(line: 880, column: 635, scope: !764)
!3534 = !DILocation(line: 880, column: 651, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3536, file: !403, discriminator: 20)
!3536 = !DILexicalBlockFile(scope: !766, file: !403, discriminator: 3)
!3537 = !DILocation(line: 880, column: 646, scope: !766)
!3538 = !DILocation(line: 880, column: 649, scope: !766)
!3539 = !DILocation(line: 880, column: 660, scope: !766)
!3540 = !DILocation(line: 880, column: 660, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !766, file: !403, discriminator: 21)
!3542 = !DILocation(line: 883, column: 5, scope: !722)
!3543 = !DILocation(line: 883, column: 12, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3545, file: !403, discriminator: 2)
!3545 = !DILexicalBlockFile(scope: !722, file: !403, discriminator: 1)
!3546 = !DILocation(line: 883, column: 19, scope: !722)
!3547 = !DILocation(line: 884, column: 9, scope: !776)
!3548 = !DILocation(line: 884, column: 19, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !774, file: !403, discriminator: 1)
!3550 = !DILocation(line: 884, column: 28, scope: !774)
!3551 = !DILocation(line: 884, column: 19, scope: !775)
!3552 = !DILocation(line: 884, column: 52, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !773, file: !403, discriminator: 2)
!3554 = !DILocation(line: 884, column: 36, scope: !773)
!3555 = !DILocation(line: 884, column: 69, scope: !773)
!3556 = !DILocation(line: 884, column: 74, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !772, file: !403, discriminator: 4)
!3558 = !DILocation(line: 884, column: 84, scope: !772)
!3559 = !DILocation(line: 884, column: 114, scope: !772)
!3560 = !DILocation(line: 884, column: 127, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !772, file: !403, line: 884, column: 124)
!3562 = !DILocation(line: 884, column: 144, scope: !3561)
!3563 = !DILocation(line: 884, column: 124, scope: !3561)
!3564 = !DILocation(line: 884, column: 154, scope: !3561)
!3565 = !DILocation(line: 884, column: 124, scope: !772)
!3566 = !DILocation(line: 884, column: 124, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !772, file: !403, discriminator: 5)
!3568 = !DILocation(line: 884, column: 185, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3561, file: !403, discriminator: 6)
!3570 = !DILocation(line: 884, column: 203, scope: !3561)
!3571 = !DILocation(line: 884, column: 213, scope: !3561)
!3572 = !DILocation(line: 884, column: 238, scope: !3561)
!3573 = !DILocation(line: 884, column: 169, scope: !3561)
!3574 = !DILocation(line: 884, column: 257, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !773, file: !403, discriminator: 7)
!3576 = !DILocation(line: 884, column: 257, scope: !772)
!3577 = !DILocation(line: 884, column: 257, scope: !3578)
!3578 = !DILexicalBlockFile(scope: !772, file: !403, discriminator: 8)
!3579 = !DILocation(line: 884, column: 270, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !773, file: !403, discriminator: 9)
!3581 = !DILocation(line: 884, column: 270, scope: !773)
!3582 = !DILocation(line: 884, column: 309, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !775, file: !403, discriminator: 3)
!3584 = !DILocation(line: 884, column: 301, scope: !775)
!3585 = !DILocation(line: 884, column: 299, scope: !775)
!3586 = !DILocation(line: 884, column: 313, scope: !775)
!3587 = !DILocation(line: 884, column: 313, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !775, file: !403, discriminator: 10)
!3589 = !DILocation(line: 886, column: 13, scope: !783)
!3590 = !DILocation(line: 886, column: 21, scope: !783)
!3591 = !DILocation(line: 886, column: 13, scope: !776)
!3592 = !DILocation(line: 887, column: 13, scope: !782)
!3593 = !DILocation(line: 887, column: 23, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !780, file: !403, discriminator: 1)
!3595 = !DILocation(line: 887, column: 32, scope: !780)
!3596 = !DILocation(line: 887, column: 23, scope: !781)
!3597 = !DILocation(line: 887, column: 56, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !779, file: !403, discriminator: 2)
!3599 = !DILocation(line: 887, column: 40, scope: !779)
!3600 = !DILocation(line: 887, column: 73, scope: !779)
!3601 = !DILocation(line: 887, column: 78, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !778, file: !403, discriminator: 4)
!3603 = !DILocation(line: 887, column: 88, scope: !778)
!3604 = !DILocation(line: 887, column: 118, scope: !778)
!3605 = !DILocation(line: 887, column: 131, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !778, file: !403, line: 887, column: 128)
!3607 = !DILocation(line: 887, column: 148, scope: !3606)
!3608 = !DILocation(line: 887, column: 128, scope: !3606)
!3609 = !DILocation(line: 887, column: 158, scope: !3606)
!3610 = !DILocation(line: 887, column: 128, scope: !778)
!3611 = !DILocation(line: 887, column: 128, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !778, file: !403, discriminator: 5)
!3613 = !DILocation(line: 887, column: 189, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3606, file: !403, discriminator: 6)
!3615 = !DILocation(line: 887, column: 207, scope: !3606)
!3616 = !DILocation(line: 887, column: 217, scope: !3606)
!3617 = !DILocation(line: 887, column: 242, scope: !3606)
!3618 = !DILocation(line: 887, column: 173, scope: !3606)
!3619 = !DILocation(line: 887, column: 261, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !779, file: !403, discriminator: 7)
!3621 = !DILocation(line: 887, column: 261, scope: !778)
!3622 = !DILocation(line: 887, column: 261, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !778, file: !403, discriminator: 8)
!3624 = !DILocation(line: 887, column: 274, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !779, file: !403, discriminator: 9)
!3626 = !DILocation(line: 887, column: 274, scope: !779)
!3627 = !DILocation(line: 887, column: 315, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !781, file: !403, discriminator: 3)
!3629 = !DILocation(line: 887, column: 307, scope: !781)
!3630 = !DILocation(line: 887, column: 305, scope: !781)
!3631 = !DILocation(line: 887, column: 319, scope: !781)
!3632 = !DILocation(line: 887, column: 319, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !781, file: !403, discriminator: 10)
!3634 = !DILocation(line: 888, column: 18, scope: !792)
!3635 = !DILocation(line: 888, column: 28, scope: !792)
!3636 = !DILocation(line: 888, column: 18, scope: !782)
!3637 = !DILocation(line: 890, column: 17, scope: !791)
!3638 = !DILocation(line: 890, column: 27, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !789, file: !403, discriminator: 1)
!3640 = !DILocation(line: 890, column: 42, scope: !789)
!3641 = !DILocation(line: 890, column: 27, scope: !790)
!3642 = !DILocation(line: 890, column: 55, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3644, file: !403, discriminator: 2)
!3644 = distinct !DILexicalBlock(scope: !788, file: !403, line: 890, column: 55)
!3645 = !DILocation(line: 890, column: 63, scope: !3644)
!3646 = !DILocation(line: 890, column: 55, scope: !788)
!3647 = !DILocation(line: 890, column: 109, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3644, file: !403, discriminator: 4)
!3649 = !DILocation(line: 890, column: 102, scope: !3644)
!3650 = !DILocation(line: 890, column: 154, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !787, file: !403, discriminator: 5)
!3652 = !DILocation(line: 890, column: 153, scope: !787)
!3653 = !DILocation(line: 890, column: 131, scope: !787)
!3654 = !DILocation(line: 890, column: 163, scope: !787)
!3655 = !DILocation(line: 890, column: 131, scope: !788)
!3656 = !DILocation(line: 890, column: 170, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !786, file: !403, discriminator: 6)
!3658 = !DILocation(line: 890, column: 175, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !785, file: !403, discriminator: 8)
!3660 = !DILocation(line: 890, column: 185, scope: !785)
!3661 = !DILocation(line: 890, column: 216, scope: !785)
!3662 = !DILocation(line: 890, column: 225, scope: !795)
!3663 = !DILocation(line: 890, column: 241, scope: !795)
!3664 = !DILocation(line: 890, column: 225, scope: !785)
!3665 = !DILocation(line: 890, column: 256, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !795, file: !403, discriminator: 9)
!3667 = !DILocation(line: 890, column: 261, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !794, file: !403, discriminator: 11)
!3669 = !DILocation(line: 890, column: 271, scope: !794)
!3670 = !DILocation(line: 890, column: 301, scope: !794)
!3671 = !DILocation(line: 890, column: 327, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !794, file: !403, line: 890, column: 324)
!3673 = !DILocation(line: 890, column: 344, scope: !3672)
!3674 = !DILocation(line: 890, column: 324, scope: !3672)
!3675 = !DILocation(line: 890, column: 354, scope: !3672)
!3676 = !DILocation(line: 890, column: 324, scope: !794)
!3677 = !DILocation(line: 890, column: 324, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !794, file: !403, discriminator: 12)
!3679 = !DILocation(line: 890, column: 385, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3672, file: !403, discriminator: 13)
!3681 = !DILocation(line: 890, column: 403, scope: !3672)
!3682 = !DILocation(line: 890, column: 413, scope: !3672)
!3683 = !DILocation(line: 890, column: 438, scope: !3672)
!3684 = !DILocation(line: 890, column: 369, scope: !3672)
!3685 = !DILocation(line: 890, column: 457, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !795, file: !403, discriminator: 14)
!3687 = !DILocation(line: 890, column: 457, scope: !794)
!3688 = !DILocation(line: 890, column: 457, scope: !3689)
!3689 = !DILexicalBlockFile(scope: !794, file: !403, discriminator: 15)
!3690 = !DILocation(line: 890, column: 457, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !794, file: !403, discriminator: 16)
!3692 = !DILocation(line: 890, column: 470, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3694, file: !403, discriminator: 17)
!3694 = !DILexicalBlockFile(scope: !786, file: !403, discriminator: 10)
!3695 = !DILocation(line: 890, column: 470, scope: !785)
!3696 = !DILocation(line: 890, column: 470, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !785, file: !403, discriminator: 18)
!3698 = !DILocation(line: 890, column: 483, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !786, file: !403, discriminator: 19)
!3700 = !DILocation(line: 890, column: 483, scope: !786)
!3701 = !DILocation(line: 890, column: 567, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !788, file: !403, discriminator: 7)
!3703 = !DILocation(line: 890, column: 549, scope: !788)
!3704 = !DILocation(line: 890, column: 573, scope: !788)
!3705 = !DILocation(line: 890, column: 547, scope: !788)
!3706 = !DILocation(line: 890, column: 585, scope: !788)
!3707 = !DILocation(line: 890, column: 583, scope: !788)
!3708 = !DILocation(line: 890, column: 513, scope: !788)
!3709 = !DILocation(line: 890, column: 609, scope: !788)
!3710 = !DILocation(line: 890, column: 616, scope: !788)
!3711 = !DILocation(line: 890, column: 607, scope: !788)
!3712 = !DILocation(line: 890, column: 630, scope: !788)
!3713 = !DILocation(line: 890, column: 638, scope: !788)
!3714 = !DILocation(line: 890, column: 628, scope: !788)
!3715 = !DILocation(line: 890, column: 643, scope: !788)
!3716 = !DILocation(line: 890, column: 654, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3718, file: !403, discriminator: 20)
!3718 = !DILexicalBlockFile(scope: !790, file: !403, discriminator: 3)
!3719 = !DILocation(line: 890, column: 657, scope: !790)
!3720 = !DILocation(line: 890, column: 665, scope: !790)
!3721 = !DILocation(line: 890, column: 665, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !790, file: !403, discriminator: 21)
!3723 = !DILocation(line: 891, column: 13, scope: !791)
!3724 = !DILocation(line: 893, column: 27, scope: !803)
!3725 = !DILocation(line: 893, column: 25, scope: !803)
!3726 = !DILocation(line: 894, column: 17, scope: !803)
!3727 = !DILocation(line: 894, column: 25, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3729, file: !403, discriminator: 2)
!3729 = !DILexicalBlockFile(scope: !803, file: !403, discriminator: 1)
!3730 = !DILocation(line: 894, column: 37, scope: !803)
!3731 = !DILocation(line: 895, column: 21, scope: !803)
!3732 = !DILocation(line: 895, column: 31, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !801, file: !403, discriminator: 1)
!3734 = !DILocation(line: 895, column: 46, scope: !801)
!3735 = !DILocation(line: 895, column: 31, scope: !802)
!3736 = !DILocation(line: 895, column: 59, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3738, file: !403, discriminator: 2)
!3738 = distinct !DILexicalBlock(scope: !800, file: !403, line: 895, column: 59)
!3739 = !DILocation(line: 895, column: 67, scope: !3738)
!3740 = !DILocation(line: 895, column: 59, scope: !800)
!3741 = !DILocation(line: 895, column: 113, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3738, file: !403, discriminator: 4)
!3743 = !DILocation(line: 895, column: 106, scope: !3738)
!3744 = !DILocation(line: 895, column: 158, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !799, file: !403, discriminator: 5)
!3746 = !DILocation(line: 895, column: 157, scope: !799)
!3747 = !DILocation(line: 895, column: 135, scope: !799)
!3748 = !DILocation(line: 895, column: 167, scope: !799)
!3749 = !DILocation(line: 895, column: 135, scope: !800)
!3750 = !DILocation(line: 895, column: 174, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !798, file: !403, discriminator: 6)
!3752 = !DILocation(line: 895, column: 179, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !797, file: !403, discriminator: 8)
!3754 = !DILocation(line: 895, column: 189, scope: !797)
!3755 = !DILocation(line: 895, column: 220, scope: !797)
!3756 = !DILocation(line: 895, column: 229, scope: !806)
!3757 = !DILocation(line: 895, column: 245, scope: !806)
!3758 = !DILocation(line: 895, column: 229, scope: !797)
!3759 = !DILocation(line: 895, column: 260, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !806, file: !403, discriminator: 9)
!3761 = !DILocation(line: 895, column: 265, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !805, file: !403, discriminator: 11)
!3763 = !DILocation(line: 895, column: 275, scope: !805)
!3764 = !DILocation(line: 895, column: 305, scope: !805)
!3765 = !DILocation(line: 895, column: 331, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !805, file: !403, line: 895, column: 328)
!3767 = !DILocation(line: 895, column: 348, scope: !3766)
!3768 = !DILocation(line: 895, column: 328, scope: !3766)
!3769 = !DILocation(line: 895, column: 358, scope: !3766)
!3770 = !DILocation(line: 895, column: 328, scope: !805)
!3771 = !DILocation(line: 895, column: 328, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !805, file: !403, discriminator: 12)
!3773 = !DILocation(line: 895, column: 389, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3766, file: !403, discriminator: 13)
!3775 = !DILocation(line: 895, column: 407, scope: !3766)
!3776 = !DILocation(line: 895, column: 417, scope: !3766)
!3777 = !DILocation(line: 895, column: 442, scope: !3766)
!3778 = !DILocation(line: 895, column: 373, scope: !3766)
!3779 = !DILocation(line: 895, column: 461, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !806, file: !403, discriminator: 14)
!3781 = !DILocation(line: 895, column: 461, scope: !805)
!3782 = !DILocation(line: 895, column: 461, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !805, file: !403, discriminator: 15)
!3784 = !DILocation(line: 895, column: 461, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !805, file: !403, discriminator: 16)
!3786 = !DILocation(line: 895, column: 474, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3788, file: !403, discriminator: 17)
!3788 = !DILexicalBlockFile(scope: !798, file: !403, discriminator: 10)
!3789 = !DILocation(line: 895, column: 474, scope: !797)
!3790 = !DILocation(line: 895, column: 474, scope: !3791)
!3791 = !DILexicalBlockFile(scope: !797, file: !403, discriminator: 18)
!3792 = !DILocation(line: 895, column: 487, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !798, file: !403, discriminator: 19)
!3794 = !DILocation(line: 895, column: 487, scope: !798)
!3795 = !DILocation(line: 895, column: 571, scope: !3796)
!3796 = !DILexicalBlockFile(scope: !800, file: !403, discriminator: 7)
!3797 = !DILocation(line: 895, column: 553, scope: !800)
!3798 = !DILocation(line: 895, column: 577, scope: !800)
!3799 = !DILocation(line: 895, column: 551, scope: !800)
!3800 = !DILocation(line: 895, column: 589, scope: !800)
!3801 = !DILocation(line: 895, column: 587, scope: !800)
!3802 = !DILocation(line: 895, column: 517, scope: !800)
!3803 = !DILocation(line: 895, column: 613, scope: !800)
!3804 = !DILocation(line: 895, column: 620, scope: !800)
!3805 = !DILocation(line: 895, column: 611, scope: !800)
!3806 = !DILocation(line: 895, column: 634, scope: !800)
!3807 = !DILocation(line: 895, column: 642, scope: !800)
!3808 = !DILocation(line: 895, column: 632, scope: !800)
!3809 = !DILocation(line: 895, column: 647, scope: !800)
!3810 = !DILocation(line: 895, column: 663, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3812, file: !403, discriminator: 20)
!3812 = !DILexicalBlockFile(scope: !802, file: !403, discriminator: 3)
!3813 = !DILocation(line: 895, column: 658, scope: !802)
!3814 = !DILocation(line: 895, column: 661, scope: !802)
!3815 = !DILocation(line: 895, column: 672, scope: !802)
!3816 = !DILocation(line: 895, column: 672, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !802, file: !403, discriminator: 21)
!3818 = !DILocation(line: 897, column: 9, scope: !782)
!3819 = !DILocation(line: 899, column: 13, scope: !814)
!3820 = !DILocation(line: 899, column: 23, scope: !3821)
!3821 = !DILexicalBlockFile(scope: !812, file: !403, discriminator: 1)
!3822 = !DILocation(line: 899, column: 38, scope: !812)
!3823 = !DILocation(line: 899, column: 23, scope: !813)
!3824 = !DILocation(line: 899, column: 51, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3826, file: !403, discriminator: 2)
!3826 = distinct !DILexicalBlock(scope: !811, file: !403, line: 899, column: 51)
!3827 = !DILocation(line: 899, column: 59, scope: !3826)
!3828 = !DILocation(line: 899, column: 51, scope: !811)
!3829 = !DILocation(line: 899, column: 105, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3826, file: !403, discriminator: 4)
!3831 = !DILocation(line: 899, column: 98, scope: !3826)
!3832 = !DILocation(line: 899, column: 150, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !810, file: !403, discriminator: 5)
!3834 = !DILocation(line: 899, column: 149, scope: !810)
!3835 = !DILocation(line: 899, column: 127, scope: !810)
!3836 = !DILocation(line: 899, column: 159, scope: !810)
!3837 = !DILocation(line: 899, column: 127, scope: !811)
!3838 = !DILocation(line: 899, column: 166, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !809, file: !403, discriminator: 6)
!3840 = !DILocation(line: 899, column: 171, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !808, file: !403, discriminator: 8)
!3842 = !DILocation(line: 899, column: 181, scope: !808)
!3843 = !DILocation(line: 899, column: 212, scope: !808)
!3844 = !DILocation(line: 899, column: 221, scope: !817)
!3845 = !DILocation(line: 899, column: 237, scope: !817)
!3846 = !DILocation(line: 899, column: 221, scope: !808)
!3847 = !DILocation(line: 899, column: 252, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !817, file: !403, discriminator: 9)
!3849 = !DILocation(line: 899, column: 257, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !816, file: !403, discriminator: 11)
!3851 = !DILocation(line: 899, column: 267, scope: !816)
!3852 = !DILocation(line: 899, column: 297, scope: !816)
!3853 = !DILocation(line: 899, column: 323, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !816, file: !403, line: 899, column: 320)
!3855 = !DILocation(line: 899, column: 340, scope: !3854)
!3856 = !DILocation(line: 899, column: 320, scope: !3854)
!3857 = !DILocation(line: 899, column: 350, scope: !3854)
!3858 = !DILocation(line: 899, column: 320, scope: !816)
!3859 = !DILocation(line: 899, column: 320, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !816, file: !403, discriminator: 12)
!3861 = !DILocation(line: 899, column: 381, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3854, file: !403, discriminator: 13)
!3863 = !DILocation(line: 899, column: 399, scope: !3854)
!3864 = !DILocation(line: 899, column: 409, scope: !3854)
!3865 = !DILocation(line: 899, column: 434, scope: !3854)
!3866 = !DILocation(line: 899, column: 365, scope: !3854)
!3867 = !DILocation(line: 899, column: 453, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !817, file: !403, discriminator: 14)
!3869 = !DILocation(line: 899, column: 453, scope: !816)
!3870 = !DILocation(line: 899, column: 453, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !816, file: !403, discriminator: 15)
!3872 = !DILocation(line: 899, column: 453, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !816, file: !403, discriminator: 16)
!3874 = !DILocation(line: 899, column: 466, scope: !3875)
!3875 = !DILexicalBlockFile(scope: !3876, file: !403, discriminator: 17)
!3876 = !DILexicalBlockFile(scope: !809, file: !403, discriminator: 10)
!3877 = !DILocation(line: 899, column: 466, scope: !808)
!3878 = !DILocation(line: 899, column: 466, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !808, file: !403, discriminator: 18)
!3880 = !DILocation(line: 899, column: 479, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !809, file: !403, discriminator: 19)
!3882 = !DILocation(line: 899, column: 479, scope: !809)
!3883 = !DILocation(line: 899, column: 563, scope: !3884)
!3884 = !DILexicalBlockFile(scope: !811, file: !403, discriminator: 7)
!3885 = !DILocation(line: 899, column: 545, scope: !811)
!3886 = !DILocation(line: 899, column: 569, scope: !811)
!3887 = !DILocation(line: 899, column: 543, scope: !811)
!3888 = !DILocation(line: 899, column: 581, scope: !811)
!3889 = !DILocation(line: 899, column: 579, scope: !811)
!3890 = !DILocation(line: 899, column: 509, scope: !811)
!3891 = !DILocation(line: 899, column: 605, scope: !811)
!3892 = !DILocation(line: 899, column: 612, scope: !811)
!3893 = !DILocation(line: 899, column: 603, scope: !811)
!3894 = !DILocation(line: 899, column: 626, scope: !811)
!3895 = !DILocation(line: 899, column: 634, scope: !811)
!3896 = !DILocation(line: 899, column: 624, scope: !811)
!3897 = !DILocation(line: 899, column: 639, scope: !811)
!3898 = !DILocation(line: 899, column: 655, scope: !3899)
!3899 = !DILexicalBlockFile(scope: !3900, file: !403, discriminator: 20)
!3900 = !DILexicalBlockFile(scope: !813, file: !403, discriminator: 3)
!3901 = !DILocation(line: 899, column: 650, scope: !813)
!3902 = !DILocation(line: 899, column: 653, scope: !813)
!3903 = !DILocation(line: 899, column: 664, scope: !813)
!3904 = !DILocation(line: 899, column: 664, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !813, file: !403, discriminator: 21)
!3906 = !DILocation(line: 903, column: 25, scope: !821)
!3907 = !DILocation(line: 904, column: 77, scope: !821)
!3908 = !DILocation(line: 904, column: 59, scope: !821)
!3909 = !DILocation(line: 904, column: 83, scope: !821)
!3910 = !DILocation(line: 904, column: 57, scope: !821)
!3911 = !DILocation(line: 903, column: 34, scope: !821)
!3912 = !DILocation(line: 902, column: 9, scope: !821)
!3913 = !DILocation(line: 904, column: 95, scope: !821)
!3914 = !DILocation(line: 902, column: 9, scope: !722)
!3915 = !DILocation(line: 905, column: 9, scope: !820)
!3916 = !DILocation(line: 905, column: 14, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !819, file: !403, discriminator: 1)
!3918 = !DILocation(line: 905, column: 24, scope: !819)
!3919 = !DILocation(line: 905, column: 47, scope: !819)
!3920 = !DILocation(line: 905, column: 56, scope: !825)
!3921 = !DILocation(line: 905, column: 64, scope: !825)
!3922 = !DILocation(line: 905, column: 56, scope: !819)
!3923 = !DILocation(line: 905, column: 86, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !824, file: !403, discriminator: 2)
!3925 = !DILocation(line: 905, column: 100, scope: !824)
!3926 = !DILocation(line: 905, column: 105, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !823, file: !403, discriminator: 4)
!3928 = !DILocation(line: 905, column: 115, scope: !823)
!3929 = !DILocation(line: 905, column: 145, scope: !823)
!3930 = !DILocation(line: 905, column: 163, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !823, file: !403, line: 905, column: 160)
!3932 = !DILocation(line: 905, column: 180, scope: !3931)
!3933 = !DILocation(line: 905, column: 160, scope: !3931)
!3934 = !DILocation(line: 905, column: 190, scope: !3931)
!3935 = !DILocation(line: 905, column: 160, scope: !823)
!3936 = !DILocation(line: 905, column: 160, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !823, file: !403, discriminator: 5)
!3938 = !DILocation(line: 905, column: 221, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3931, file: !403, discriminator: 6)
!3940 = !DILocation(line: 905, column: 239, scope: !3931)
!3941 = !DILocation(line: 905, column: 249, scope: !3931)
!3942 = !DILocation(line: 905, column: 274, scope: !3931)
!3943 = !DILocation(line: 905, column: 205, scope: !3931)
!3944 = !DILocation(line: 905, column: 293, scope: !3945)
!3945 = !DILexicalBlockFile(scope: !824, file: !403, discriminator: 7)
!3946 = !DILocation(line: 905, column: 293, scope: !823)
!3947 = !DILocation(line: 905, column: 293, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !823, file: !403, discriminator: 8)
!3949 = !DILocation(line: 905, column: 306, scope: !3950)
!3950 = !DILexicalBlockFile(scope: !824, file: !403, discriminator: 9)
!3951 = !DILocation(line: 905, column: 308, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3953, file: !403, discriminator: 10)
!3953 = !DILexicalBlockFile(scope: !820, file: !403, discriminator: 3)
!3954 = !DILocation(line: 905, column: 308, scope: !819)
!3955 = !DILocation(line: 905, column: 308, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !819, file: !403, discriminator: 11)
!3957 = !DILocation(line: 906, column: 5, scope: !820)
!3958 = !DILocation(line: 907, column: 12, scope: !722)
!3959 = !DILocation(line: 907, column: 5, scope: !722)
!3960 = !DILocation(line: 908, column: 1, scope: !722)
!3961 = !DILocation(line: 922, column: 36, scope: !834)
!3962 = !DILocation(line: 922, column: 55, scope: !834)
!3963 = !DILocation(line: 922, column: 65, scope: !834)
!3964 = !DILocation(line: 925, column: 5, scope: !834)
!3965 = !DILocation(line: 925, column: 20, scope: !834)
!3966 = !DILocation(line: 926, column: 5, scope: !834)
!3967 = !DILocation(line: 926, column: 18, scope: !834)
!3968 = !DILocation(line: 926, column: 39, scope: !834)
!3969 = !DILocation(line: 927, column: 5, scope: !834)
!3970 = !DILocation(line: 927, column: 16, scope: !834)
!3971 = !DILocation(line: 929, column: 16, scope: !834)
!3972 = !DILocation(line: 929, column: 22, scope: !834)
!3973 = !DILocation(line: 929, column: 14, scope: !834)
!3974 = !DILocation(line: 930, column: 11, scope: !834)
!3975 = !DILocation(line: 930, column: 17, scope: !834)
!3976 = !DILocation(line: 930, column: 9, scope: !834)
!3977 = !DILocation(line: 932, column: 5, scope: !834)
!3978 = !DILocation(line: 932, column: 14, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !3980, file: !403, discriminator: 2)
!3980 = !DILexicalBlockFile(scope: !834, file: !403, discriminator: 1)
!3981 = !DILocation(line: 932, column: 17, scope: !834)
!3982 = !DILocation(line: 933, column: 16, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !834, file: !403, line: 932, column: 22)
!3984 = !DILocation(line: 933, column: 20, scope: !3983)
!3985 = !DILocation(line: 933, column: 24, scope: !3983)
!3986 = !DILocation(line: 933, column: 46, scope: !3983)
!3987 = !DILocation(line: 933, column: 50, scope: !3983)
!3988 = !DILocation(line: 933, column: 54, scope: !3983)
!3989 = !DILocation(line: 933, column: 70, scope: !3983)
!3990 = !DILocation(line: 933, column: 61, scope: !3983)
!3991 = !DILocation(line: 933, column: 60, scope: !3983)
!3992 = !DILocation(line: 933, column: 33, scope: !3983)
!3993 = !{!3994, !3994, i64 0}
!3994 = !{!"short", !1023, i64 0}
!3995 = !DILocation(line: 933, column: 32, scope: !3983)
!3996 = !DILocation(line: 933, column: 13, scope: !3983)
!3997 = !DILocation(line: 936, column: 17, scope: !834)
!3998 = !DILocation(line: 937, column: 1, scope: !834)
!3999 = !DILocation(line: 936, column: 5, scope: !834)
!4000 = !DILocation(line: 1070, column: 34, scope: !852)
!4001 = !DILocation(line: 1070, column: 53, scope: !852)
!4002 = !DILocation(line: 1070, column: 72, scope: !852)
!4003 = !DILocation(line: 1076, column: 5, scope: !852)
!4004 = !DILocation(line: 1076, column: 11, scope: !852)
!4005 = !DILocation(line: 1077, column: 5, scope: !852)
!4006 = !DILocation(line: 1077, column: 16, scope: !852)
!4007 = !DILocation(line: 1078, column: 5, scope: !852)
!4008 = !DILocation(line: 1078, column: 9, scope: !852)
!4009 = !DILocation(line: 1080, column: 18, scope: !852)
!4010 = !DILocation(line: 1080, column: 24, scope: !852)
!4011 = !DILocation(line: 1080, column: 9, scope: !852)
!4012 = !DILocation(line: 1081, column: 11, scope: !852)
!4013 = !DILocation(line: 1081, column: 17, scope: !852)
!4014 = !DILocation(line: 1081, column: 9, scope: !852)
!4015 = !DILocation(line: 1082, column: 24, scope: !852)
!4016 = !DILocation(line: 1082, column: 29, scope: !852)
!4017 = !DILocation(line: 1082, column: 34, scope: !852)
!4018 = !DILocation(line: 1082, column: 18, scope: !852)
!4019 = !DILocation(line: 1082, column: 16, scope: !852)
!4020 = !DILocation(line: 1083, column: 26, scope: !852)
!4021 = !DILocation(line: 1084, column: 1, scope: !852)
!4022 = !DILocation(line: 1083, column: 5, scope: !852)
!4023 = !DILocation(line: 1250, column: 35, scope: !872)
!4024 = !DILocation(line: 1250, column: 54, scope: !872)
!4025 = !DILocation(line: 1250, column: 64, scope: !872)
!4026 = !DILocation(line: 1253, column: 5, scope: !872)
!4027 = !DILocation(line: 1253, column: 16, scope: !872)
!4028 = !DILocation(line: 1253, column: 20, scope: !872)
!4029 = !DILocation(line: 1254, column: 5, scope: !872)
!4030 = !DILocation(line: 1254, column: 10, scope: !872)
!4031 = !DILocation(line: 1255, column: 5, scope: !872)
!4032 = !DILocation(line: 1255, column: 20, scope: !872)
!4033 = !DILocation(line: 1255, column: 33, scope: !872)
!4034 = !DILocation(line: 1256, column: 5, scope: !872)
!4035 = !DILocation(line: 1256, column: 16, scope: !872)
!4036 = !DILocation(line: 1257, column: 5, scope: !872)
!4037 = !DILocation(line: 1257, column: 15, scope: !872)
!4038 = !DILocation(line: 1259, column: 18, scope: !872)
!4039 = !DILocation(line: 1259, column: 24, scope: !872)
!4040 = !DILocation(line: 1259, column: 16, scope: !872)
!4041 = !DILocation(line: 1260, column: 15, scope: !872)
!4042 = !DILocation(line: 1260, column: 21, scope: !872)
!4043 = !DILocation(line: 1260, column: 13, scope: !872)
!4044 = !DILocation(line: 1266, column: 44, scope: !872)
!4045 = !DILocation(line: 1266, column: 31, scope: !872)
!4046 = !DILocation(line: 1266, column: 11, scope: !872)
!4047 = !DILocation(line: 1267, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !872, file: !403, line: 1267, column: 9)
!4049 = !DILocation(line: 1267, column: 15, scope: !4048)
!4050 = !DILocation(line: 1267, column: 9, scope: !872)
!4051 = !DILocation(line: 1268, column: 9, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4048, file: !403, line: 1267, column: 30)
!4053 = !DILocation(line: 1269, column: 9, scope: !4052)
!4054 = !DILocation(line: 1271, column: 12, scope: !872)
!4055 = !DILocation(line: 1271, column: 22, scope: !872)
!4056 = !DILocation(line: 1271, column: 5, scope: !872)
!4057 = !DILocation(line: 1273, column: 14, scope: !872)
!4058 = !DILocation(line: 1273, column: 8, scope: !872)
!4059 = !DILocation(line: 1274, column: 5, scope: !872)
!4060 = !DILocation(line: 1274, column: 12, scope: !4061)
!4061 = !DILexicalBlockFile(scope: !4062, file: !403, discriminator: 2)
!4062 = !DILexicalBlockFile(scope: !872, file: !403, discriminator: 1)
!4063 = !DILocation(line: 1274, column: 17, scope: !872)
!4064 = !DILocation(line: 1274, column: 15, scope: !872)
!4065 = !DILocation(line: 1275, column: 24, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !403, line: 1275, column: 13)
!4067 = distinct !DILexicalBlock(scope: !872, file: !403, line: 1274, column: 26)
!4068 = !DILocation(line: 1275, column: 13, scope: !4066)
!4069 = !DILocation(line: 1275, column: 28, scope: !4066)
!4070 = !DILocation(line: 1275, column: 13, scope: !4067)
!4071 = !DILocation(line: 1276, column: 15, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4066, file: !403, line: 1275, column: 36)
!4073 = !DILocation(line: 1277, column: 17, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4072, file: !403, line: 1277, column: 17)
!4075 = !DILocation(line: 1277, column: 23, scope: !4074)
!4076 = !DILocation(line: 1277, column: 20, scope: !4074)
!4077 = !DILocation(line: 1277, column: 17, scope: !4072)
!4078 = !DILocation(line: 1277, column: 32, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !4074, file: !403, discriminator: 1)
!4080 = !DILocation(line: 1279, column: 29, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4072, file: !403, line: 1279, column: 17)
!4082 = !DILocation(line: 1279, column: 18, scope: !4081)
!4083 = !DILocation(line: 1279, column: 33, scope: !4081)
!4084 = !DILocation(line: 1279, column: 42, scope: !4081)
!4085 = !DILocation(line: 1279, column: 57, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4081, file: !403, discriminator: 1)
!4087 = !DILocation(line: 1279, column: 46, scope: !4081)
!4088 = !DILocation(line: 1279, column: 61, scope: !4081)
!4089 = !DILocation(line: 1279, column: 17, scope: !4072)
!4090 = !DILocation(line: 1280, column: 32, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !403, line: 1280, column: 21)
!4092 = distinct !DILexicalBlock(scope: !4081, file: !403, line: 1279, column: 71)
!4093 = !DILocation(line: 1280, column: 21, scope: !4091)
!4094 = !DILocation(line: 1280, column: 36, scope: !4091)
!4095 = !DILocation(line: 1280, column: 21, scope: !4092)
!4096 = !DILocation(line: 1281, column: 21, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !403, line: 1280, column: 45)
!4098 = !DILocation(line: 1281, column: 28, scope: !4099)
!4099 = !DILexicalBlockFile(scope: !4100, file: !403, discriminator: 5)
!4100 = !DILexicalBlockFile(scope: !4097, file: !403, discriminator: 1)
!4101 = !DILocation(line: 1281, column: 33, scope: !4097)
!4102 = !DILocation(line: 1281, column: 31, scope: !4097)
!4103 = !DILocation(line: 1281, column: 41, scope: !4097)
!4104 = !DILocation(line: 1281, column: 55, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4097, file: !403, discriminator: 2)
!4106 = !DILocation(line: 1281, column: 44, scope: !4097)
!4107 = !DILocation(line: 1281, column: 59, scope: !4097)
!4108 = !DILocation(line: 1281, column: 21, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4097, file: !403, discriminator: 3)
!4110 = !DILocation(line: 1281, column: 70, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !4097, file: !403, discriminator: 4)
!4112 = !DILocation(line: 1282, column: 17, scope: !4097)
!4113 = !DILocation(line: 1283, column: 21, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4092, file: !403, line: 1283, column: 21)
!4115 = !DILocation(line: 1283, column: 26, scope: !4114)
!4116 = !DILocation(line: 1283, column: 24, scope: !4114)
!4117 = !DILocation(line: 1283, column: 21, scope: !4092)
!4118 = !DILocation(line: 1283, column: 37, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !4114, file: !403, discriminator: 1)
!4120 = !DILocation(line: 1283, column: 35, scope: !4114)
!4121 = !DILocation(line: 1284, column: 13, scope: !4092)
!4122 = !DILocation(line: 1285, column: 33, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4081, file: !403, line: 1285, column: 22)
!4124 = !DILocation(line: 1285, column: 22, scope: !4123)
!4125 = !DILocation(line: 1285, column: 37, scope: !4123)
!4126 = !DILocation(line: 1285, column: 22, scope: !4081)
!4127 = !DILocation(line: 1287, column: 26, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4123, file: !403, line: 1285, column: 45)
!4129 = !DILocation(line: 1287, column: 17, scope: !4128)
!4130 = !DILocation(line: 1287, column: 30, scope: !4128)
!4131 = !DILocation(line: 1288, column: 19, scope: !4128)
!4132 = !DILocation(line: 1289, column: 13, scope: !4128)
!4133 = !DILocation(line: 1290, column: 35, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4123, file: !403, line: 1290, column: 22)
!4135 = !DILocation(line: 1290, column: 24, scope: !4134)
!4136 = !DILocation(line: 1290, column: 39, scope: !4134)
!4137 = !DILocation(line: 1290, column: 46, scope: !4134)
!4138 = !DILocation(line: 1290, column: 60, scope: !4139)
!4139 = !DILexicalBlockFile(scope: !4134, file: !403, discriminator: 1)
!4140 = !DILocation(line: 1290, column: 49, scope: !4134)
!4141 = !DILocation(line: 1290, column: 64, scope: !4134)
!4142 = !DILocation(line: 1290, column: 72, scope: !4134)
!4143 = !DILocation(line: 1291, column: 35, scope: !4134)
!4144 = !DILocation(line: 1291, column: 24, scope: !4134)
!4145 = !DILocation(line: 1291, column: 39, scope: !4134)
!4146 = !DILocation(line: 1291, column: 46, scope: !4134)
!4147 = !DILocation(line: 1291, column: 60, scope: !4139)
!4148 = !DILocation(line: 1291, column: 49, scope: !4134)
!4149 = !DILocation(line: 1291, column: 64, scope: !4134)
!4150 = !DILocation(line: 1291, column: 72, scope: !4134)
!4151 = !DILocation(line: 1292, column: 35, scope: !4134)
!4152 = !DILocation(line: 1292, column: 24, scope: !4134)
!4153 = !DILocation(line: 1292, column: 39, scope: !4134)
!4154 = !DILocation(line: 1292, column: 46, scope: !4134)
!4155 = !DILocation(line: 1292, column: 60, scope: !4139)
!4156 = !DILocation(line: 1292, column: 49, scope: !4134)
!4157 = !DILocation(line: 1292, column: 64, scope: !4134)
!4158 = !DILocation(line: 1292, column: 73, scope: !4134)
!4159 = !DILocation(line: 1293, column: 35, scope: !4134)
!4160 = !DILocation(line: 1293, column: 37, scope: !4134)
!4161 = !DILocation(line: 1293, column: 24, scope: !4134)
!4162 = !DILocation(line: 1293, column: 41, scope: !4134)
!4163 = !DILocation(line: 1293, column: 48, scope: !4134)
!4164 = !DILocation(line: 1293, column: 62, scope: !4139)
!4165 = !DILocation(line: 1293, column: 64, scope: !4134)
!4166 = !DILocation(line: 1293, column: 51, scope: !4134)
!4167 = !DILocation(line: 1293, column: 68, scope: !4134)
!4168 = !DILocation(line: 1293, column: 76, scope: !4134)
!4169 = !DILocation(line: 1294, column: 35, scope: !4134)
!4170 = !DILocation(line: 1294, column: 37, scope: !4134)
!4171 = !DILocation(line: 1294, column: 24, scope: !4134)
!4172 = !DILocation(line: 1294, column: 41, scope: !4134)
!4173 = !DILocation(line: 1294, column: 48, scope: !4134)
!4174 = !DILocation(line: 1294, column: 62, scope: !4139)
!4175 = !DILocation(line: 1294, column: 64, scope: !4134)
!4176 = !DILocation(line: 1294, column: 51, scope: !4134)
!4177 = !DILocation(line: 1294, column: 68, scope: !4134)
!4178 = !DILocation(line: 1294, column: 76, scope: !4134)
!4179 = !DILocation(line: 1295, column: 35, scope: !4134)
!4180 = !DILocation(line: 1295, column: 37, scope: !4134)
!4181 = !DILocation(line: 1295, column: 24, scope: !4134)
!4182 = !DILocation(line: 1295, column: 41, scope: !4134)
!4183 = !DILocation(line: 1295, column: 48, scope: !4134)
!4184 = !DILocation(line: 1295, column: 62, scope: !4139)
!4185 = !DILocation(line: 1295, column: 64, scope: !4134)
!4186 = !DILocation(line: 1295, column: 51, scope: !4134)
!4187 = !DILocation(line: 1295, column: 68, scope: !4134)
!4188 = !DILocation(line: 1290, column: 22, scope: !4123)
!4189 = !DILocation(line: 1297, column: 58, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4134, file: !403, line: 1295, column: 78)
!4191 = !DILocation(line: 1297, column: 47, scope: !4190)
!4192 = !DILocation(line: 1297, column: 32, scope: !4190)
!4193 = !DILocation(line: 1297, column: 22, scope: !4190)
!4194 = !DILocation(line: 1297, column: 64, scope: !4190)
!4195 = !DILocation(line: 1297, column: 20, scope: !4190)
!4196 = !DILocation(line: 1298, column: 19, scope: !4190)
!4197 = !DILocation(line: 1299, column: 59, scope: !4190)
!4198 = !DILocation(line: 1299, column: 48, scope: !4190)
!4199 = !DILocation(line: 1299, column: 33, scope: !4190)
!4200 = !DILocation(line: 1299, column: 23, scope: !4190)
!4201 = !DILocation(line: 1299, column: 20, scope: !4190)
!4202 = !DILocation(line: 1300, column: 19, scope: !4190)
!4203 = !DILocation(line: 1301, column: 32, scope: !4190)
!4204 = !DILocation(line: 1301, column: 26, scope: !4190)
!4205 = !DILocation(line: 1301, column: 17, scope: !4190)
!4206 = !DILocation(line: 1301, column: 30, scope: !4190)
!4207 = !DILocation(line: 1302, column: 13, scope: !4190)
!4208 = !DILocation(line: 1304, column: 24, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4134, file: !403, line: 1303, column: 18)
!4210 = !DILocation(line: 1304, column: 15, scope: !4209)
!4211 = !DILocation(line: 1304, column: 28, scope: !4209)
!4212 = !DILocation(line: 1306, column: 9, scope: !4072)
!4213 = !DILocation(line: 1307, column: 18, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4066, file: !403, line: 1307, column: 18)
!4215 = !DILocation(line: 1307, column: 25, scope: !4214)
!4216 = !DILocation(line: 1307, column: 39, scope: !4217)
!4217 = !DILexicalBlockFile(scope: !4214, file: !403, discriminator: 1)
!4218 = !DILocation(line: 1307, column: 28, scope: !4214)
!4219 = !DILocation(line: 1307, column: 43, scope: !4214)
!4220 = !DILocation(line: 1307, column: 18, scope: !4066)
!4221 = !DILocation(line: 1308, column: 22, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !403, line: 1307, column: 51)
!4223 = !DILocation(line: 1308, column: 13, scope: !4222)
!4224 = !DILocation(line: 1308, column: 26, scope: !4222)
!4225 = !DILocation(line: 1309, column: 15, scope: !4222)
!4226 = !DILocation(line: 1310, column: 9, scope: !4222)
!4227 = !DILocation(line: 1312, column: 37, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4214, file: !403, line: 1311, column: 14)
!4229 = !DILocation(line: 1312, column: 26, scope: !4228)
!4230 = !DILocation(line: 1312, column: 19, scope: !4228)
!4231 = !DILocation(line: 1312, column: 13, scope: !4228)
!4232 = !DILocation(line: 1312, column: 24, scope: !4228)
!4233 = !DILocation(line: 1313, column: 15, scope: !4228)
!4234 = !DILocation(line: 1314, column: 16, scope: !4228)
!4235 = !DILocation(line: 1317, column: 49, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !872, file: !403, line: 1317, column: 9)
!4237 = !DILocation(line: 1317, column: 56, scope: !4236)
!4238 = !DILocation(line: 1317, column: 15, scope: !4236)
!4239 = !DILocation(line: 1317, column: 13, scope: !4236)
!4240 = !DILocation(line: 1317, column: 62, scope: !4236)
!4241 = !DILocation(line: 1317, column: 9, scope: !872)
!4242 = !DILocation(line: 1318, column: 20, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4236, file: !403, line: 1317, column: 77)
!4244 = !DILocation(line: 1318, column: 9, scope: !4243)
!4245 = !DILocation(line: 1319, column: 9, scope: !4243)
!4246 = !DILocation(line: 1321, column: 16, scope: !872)
!4247 = !DILocation(line: 1321, column: 5, scope: !872)
!4248 = !DILocation(line: 1322, column: 12, scope: !872)
!4249 = !DILocation(line: 1322, column: 5, scope: !872)
!4250 = !DILocation(line: 1323, column: 1, scope: !872)
!4251 = !DILocation(line: 1356, column: 35, scope: !896)
!4252 = !DILocation(line: 1356, column: 54, scope: !896)
!4253 = !DILocation(line: 1356, column: 64, scope: !896)
!4254 = !DILocation(line: 1356, column: 79, scope: !896)
!4255 = !DILocation(line: 1356, column: 91, scope: !896)
!4256 = !DILocation(line: 1359, column: 5, scope: !896)
!4257 = !DILocation(line: 1359, column: 16, scope: !896)
!4258 = !DILocation(line: 1359, column: 20, scope: !896)
!4259 = !DILocation(line: 1360, column: 5, scope: !896)
!4260 = !DILocation(line: 1360, column: 20, scope: !896)
!4261 = !DILocation(line: 1360, column: 30, scope: !896)
!4262 = !DILocation(line: 1361, column: 5, scope: !896)
!4263 = !DILocation(line: 1361, column: 16, scope: !896)
!4264 = !DILocation(line: 1361, column: 29, scope: !896)
!4265 = !DILocation(line: 1362, column: 5, scope: !896)
!4266 = !DILocation(line: 1362, column: 15, scope: !896)
!4267 = !DILocation(line: 1363, column: 5, scope: !896)
!4268 = !DILocation(line: 1363, column: 18, scope: !896)
!4269 = !DILocation(line: 1364, column: 5, scope: !896)
!4270 = !DILocation(line: 1364, column: 19, scope: !896)
!4271 = !DILocation(line: 1365, column: 5, scope: !896)
!4272 = !DILocation(line: 1365, column: 9, scope: !896)
!4273 = !DILocation(line: 1366, column: 5, scope: !896)
!4274 = !DILocation(line: 1366, column: 20, scope: !896)
!4275 = !DILocation(line: 1368, column: 15, scope: !896)
!4276 = !DILocation(line: 1368, column: 21, scope: !896)
!4277 = !DILocation(line: 1368, column: 13, scope: !896)
!4278 = !DILocation(line: 1369, column: 15, scope: !896)
!4279 = !DILocation(line: 1369, column: 21, scope: !896)
!4280 = !DILocation(line: 1369, column: 13, scope: !896)
!4281 = !DILocation(line: 1375, column: 34, scope: !896)
!4282 = !DILocation(line: 1375, column: 49, scope: !896)
!4283 = !DILocation(line: 1375, column: 27, scope: !896)
!4284 = !DILocation(line: 1375, column: 7, scope: !896)
!4285 = !DILocation(line: 1376, column: 10, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !896, file: !403, line: 1376, column: 9)
!4287 = !DILocation(line: 1376, column: 12, scope: !4286)
!4288 = !DILocation(line: 1376, column: 27, scope: !4286)
!4289 = !DILocation(line: 1376, column: 31, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4286, file: !403, discriminator: 1)
!4291 = !DILocation(line: 1376, column: 35, scope: !4286)
!4292 = !DILocation(line: 1376, column: 33, scope: !4286)
!4293 = !DILocation(line: 1376, column: 44, scope: !4286)
!4294 = !DILocation(line: 1376, column: 50, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4286, file: !403, discriminator: 2)
!4296 = !DILocation(line: 1376, column: 51, scope: !4286)
!4297 = !DILocation(line: 1376, column: 48, scope: !4286)
!4298 = !DILocation(line: 1376, column: 55, scope: !4286)
!4299 = !DILocation(line: 1376, column: 9, scope: !896)
!4300 = !DILocation(line: 1377, column: 14, scope: !4286)
!4301 = !DILocation(line: 1377, column: 9, scope: !4286)
!4302 = !DILocation(line: 1380, column: 8, scope: !896)
!4303 = !DILocation(line: 1381, column: 5, scope: !896)
!4304 = !DILocation(line: 1381, column: 12, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !4306, file: !403, discriminator: 2)
!4306 = !DILexicalBlockFile(scope: !896, file: !403, discriminator: 1)
!4307 = !DILocation(line: 1381, column: 17, scope: !896)
!4308 = !DILocation(line: 1381, column: 15, scope: !896)
!4309 = !DILocation(line: 1382, column: 22, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !403, line: 1382, column: 13)
!4311 = distinct !DILexicalBlock(scope: !896, file: !403, line: 1381, column: 26)
!4312 = !DILocation(line: 1382, column: 14, scope: !4310)
!4313 = !DILocation(line: 1382, column: 26, scope: !4310)
!4314 = !DILocation(line: 1382, column: 33, scope: !4310)
!4315 = !DILocation(line: 1383, column: 22, scope: !4310)
!4316 = !DILocation(line: 1383, column: 14, scope: !4310)
!4317 = !DILocation(line: 1383, column: 26, scope: !4310)
!4318 = !DILocation(line: 1383, column: 34, scope: !4310)
!4319 = !DILocation(line: 1384, column: 14, scope: !4310)
!4320 = !DILocation(line: 1384, column: 21, scope: !4310)
!4321 = !DILocation(line: 1384, column: 32, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4310, file: !403, discriminator: 1)
!4323 = !DILocation(line: 1384, column: 24, scope: !4310)
!4324 = !DILocation(line: 1384, column: 36, scope: !4310)
!4325 = !DILocation(line: 1384, column: 44, scope: !4310)
!4326 = !DILocation(line: 1385, column: 23, scope: !4310)
!4327 = !DILocation(line: 1385, column: 15, scope: !4310)
!4328 = !DILocation(line: 1385, column: 27, scope: !4310)
!4329 = !DILocation(line: 1385, column: 35, scope: !4310)
!4330 = !DILocation(line: 1385, column: 39, scope: !4322)
!4331 = !DILocation(line: 1385, column: 47, scope: !4310)
!4332 = !DILocation(line: 1385, column: 53, scope: !4310)
!4333 = !DILocation(line: 1386, column: 23, scope: !4310)
!4334 = !DILocation(line: 1386, column: 25, scope: !4310)
!4335 = !DILocation(line: 1386, column: 15, scope: !4310)
!4336 = !DILocation(line: 1386, column: 29, scope: !4310)
!4337 = !DILocation(line: 1386, column: 37, scope: !4310)
!4338 = !DILocation(line: 1386, column: 48, scope: !4322)
!4339 = !DILocation(line: 1386, column: 50, scope: !4310)
!4340 = !DILocation(line: 1386, column: 40, scope: !4310)
!4341 = !DILocation(line: 1386, column: 54, scope: !4310)
!4342 = !DILocation(line: 1386, column: 62, scope: !4310)
!4343 = !DILocation(line: 1386, column: 73, scope: !4344)
!4344 = !DILexicalBlockFile(scope: !4310, file: !403, discriminator: 2)
!4345 = !DILocation(line: 1386, column: 75, scope: !4310)
!4346 = !DILocation(line: 1386, column: 65, scope: !4310)
!4347 = !DILocation(line: 1386, column: 79, scope: !4310)
!4348 = !DILocation(line: 1386, column: 86, scope: !4310)
!4349 = !DILocation(line: 1387, column: 15, scope: !4310)
!4350 = !DILocation(line: 1387, column: 22, scope: !4310)
!4351 = !DILocation(line: 1387, column: 35, scope: !4322)
!4352 = !DILocation(line: 1387, column: 27, scope: !4310)
!4353 = !DILocation(line: 1387, column: 39, scope: !4310)
!4354 = !DILocation(line: 1387, column: 48, scope: !4310)
!4355 = !DILocation(line: 1387, column: 60, scope: !4344)
!4356 = !DILocation(line: 1387, column: 52, scope: !4310)
!4357 = !DILocation(line: 1387, column: 64, scope: !4310)
!4358 = !DILocation(line: 1387, column: 75, scope: !4310)
!4359 = !DILocation(line: 1388, column: 23, scope: !4310)
!4360 = !DILocation(line: 1388, column: 15, scope: !4310)
!4361 = !DILocation(line: 1388, column: 27, scope: !4310)
!4362 = !DILocation(line: 1388, column: 35, scope: !4310)
!4363 = !DILocation(line: 1388, column: 46, scope: !4344)
!4364 = !DILocation(line: 1388, column: 38, scope: !4310)
!4365 = !DILocation(line: 1388, column: 50, scope: !4310)
!4366 = !DILocation(line: 1388, column: 58, scope: !4310)
!4367 = !DILocation(line: 1388, column: 62, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !4322, file: !403, discriminator: 3)
!4369 = !DILocation(line: 1388, column: 65, scope: !4310)
!4370 = !DILocation(line: 1388, column: 72, scope: !4310)
!4371 = !DILocation(line: 1388, column: 69, scope: !4310)
!4372 = !DILocation(line: 1388, column: 82, scope: !4310)
!4373 = !DILocation(line: 1389, column: 23, scope: !4310)
!4374 = !DILocation(line: 1389, column: 15, scope: !4310)
!4375 = !DILocation(line: 1389, column: 27, scope: !4310)
!4376 = !DILocation(line: 1389, column: 33, scope: !4310)
!4377 = !DILocation(line: 1390, column: 23, scope: !4310)
!4378 = !DILocation(line: 1390, column: 15, scope: !4310)
!4379 = !DILocation(line: 1390, column: 27, scope: !4310)
!4380 = !DILocation(line: 1390, column: 36, scope: !4310)
!4381 = !DILocation(line: 1390, column: 48, scope: !4322)
!4382 = !DILocation(line: 1390, column: 40, scope: !4310)
!4383 = !DILocation(line: 1390, column: 52, scope: !4310)
!4384 = !DILocation(line: 1390, column: 61, scope: !4310)
!4385 = !DILocation(line: 1391, column: 15, scope: !4310)
!4386 = !DILocation(line: 1391, column: 25, scope: !4310)
!4387 = !DILocation(line: 1391, column: 38, scope: !4322)
!4388 = !DILocation(line: 1391, column: 30, scope: !4310)
!4389 = !DILocation(line: 1391, column: 42, scope: !4310)
!4390 = !DILocation(line: 1391, column: 51, scope: !4310)
!4391 = !DILocation(line: 1391, column: 63, scope: !4344)
!4392 = !DILocation(line: 1391, column: 55, scope: !4310)
!4393 = !DILocation(line: 1391, column: 67, scope: !4310)
!4394 = !DILocation(line: 1382, column: 13, scope: !4311)
!4395 = !DILocation(line: 1393, column: 18, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !403, line: 1393, column: 17)
!4397 = distinct !DILexicalBlock(scope: !4310, file: !403, line: 1392, column: 9)
!4398 = !DILocation(line: 1393, column: 26, scope: !4396)
!4399 = !DILocation(line: 1393, column: 31, scope: !4396)
!4400 = !DILocation(line: 1393, column: 17, scope: !4397)
!4401 = !DILocation(line: 1394, column: 25, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4396, file: !403, line: 1393, column: 38)
!4403 = !DILocation(line: 1395, column: 21, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4402, file: !403, line: 1395, column: 21)
!4405 = !DILocation(line: 1395, column: 21, scope: !4402)
!4406 = !DILocation(line: 1396, column: 30, scope: !4404)
!4407 = !DILocation(line: 1396, column: 21, scope: !4404)
!4408 = !DILocation(line: 1398, column: 30, scope: !4404)
!4409 = !DILocation(line: 1399, column: 13, scope: !4402)
!4410 = !DILocation(line: 1400, column: 21, scope: !4397)
!4411 = !DILocation(line: 1401, column: 22, scope: !4397)
!4412 = !DILocation(line: 1402, column: 15, scope: !4397)
!4413 = !DILocation(line: 1403, column: 9, scope: !4397)
!4414 = !DILocation(line: 1405, column: 17, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !403, line: 1405, column: 17)
!4416 = distinct !DILexicalBlock(scope: !4310, file: !403, line: 1404, column: 14)
!4417 = !DILocation(line: 1405, column: 24, scope: !4415)
!4418 = !DILocation(line: 1406, column: 27, scope: !4415)
!4419 = !DILocation(line: 1406, column: 19, scope: !4415)
!4420 = !DILocation(line: 1406, column: 31, scope: !4415)
!4421 = !DILocation(line: 1406, column: 40, scope: !4415)
!4422 = !DILocation(line: 1407, column: 20, scope: !4415)
!4423 = !DILocation(line: 1407, column: 22, scope: !4415)
!4424 = !DILocation(line: 1407, column: 27, scope: !4415)
!4425 = !DILocation(line: 1407, column: 25, scope: !4415)
!4426 = !DILocation(line: 1407, column: 36, scope: !4415)
!4427 = !DILocation(line: 1407, column: 48, scope: !4428)
!4428 = !DILexicalBlockFile(scope: !4415, file: !403, discriminator: 1)
!4429 = !DILocation(line: 1407, column: 40, scope: !4415)
!4430 = !DILocation(line: 1407, column: 52, scope: !4415)
!4431 = !DILocation(line: 1407, column: 61, scope: !4415)
!4432 = !DILocation(line: 1408, column: 27, scope: !4415)
!4433 = !DILocation(line: 1408, column: 29, scope: !4415)
!4434 = !DILocation(line: 1408, column: 19, scope: !4415)
!4435 = !DILocation(line: 1408, column: 33, scope: !4415)
!4436 = !DILocation(line: 1405, column: 17, scope: !4416)
!4437 = !DILocation(line: 1410, column: 25, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4415, file: !403, line: 1409, column: 13)
!4439 = !DILocation(line: 1412, column: 21, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4438, file: !403, line: 1412, column: 21)
!4441 = !DILocation(line: 1412, column: 24, scope: !4440)
!4442 = !DILocation(line: 1412, column: 37, scope: !4443)
!4443 = !DILexicalBlockFile(scope: !4440, file: !403, discriminator: 1)
!4444 = !DILocation(line: 1412, column: 39, scope: !4440)
!4445 = !DILocation(line: 1412, column: 29, scope: !4440)
!4446 = !DILocation(line: 1412, column: 43, scope: !4440)
!4447 = !DILocation(line: 1412, column: 51, scope: !4440)
!4448 = !DILocation(line: 1412, column: 63, scope: !4449)
!4449 = !DILexicalBlockFile(scope: !4440, file: !403, discriminator: 2)
!4450 = !DILocation(line: 1412, column: 65, scope: !4440)
!4451 = !DILocation(line: 1412, column: 55, scope: !4440)
!4452 = !DILocation(line: 1412, column: 69, scope: !4440)
!4453 = !DILocation(line: 1412, column: 21, scope: !4438)
!4454 = !DILocation(line: 1413, column: 30, scope: !4440)
!4455 = !DILocation(line: 1413, column: 21, scope: !4440)
!4456 = !DILocation(line: 1414, column: 21, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4438, file: !403, line: 1414, column: 21)
!4458 = !DILocation(line: 1414, column: 21, scope: !4438)
!4459 = !DILocation(line: 1415, column: 30, scope: !4457)
!4460 = !DILocation(line: 1415, column: 21, scope: !4457)
!4461 = !DILocation(line: 1417, column: 30, scope: !4457)
!4462 = !DILocation(line: 1418, column: 29, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4438, file: !403, line: 1418, column: 21)
!4464 = !DILocation(line: 1418, column: 21, scope: !4463)
!4465 = !DILocation(line: 1418, column: 33, scope: !4463)
!4466 = !DILocation(line: 1418, column: 21, scope: !4438)
!4467 = !DILocation(line: 1419, column: 24, scope: !4463)
!4468 = !DILocation(line: 1419, column: 21, scope: !4463)
!4469 = !DILocation(line: 1421, column: 23, scope: !4463)
!4470 = !DILocation(line: 1422, column: 13, scope: !4438)
!4471 = !DILocation(line: 1424, column: 22, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !403, line: 1424, column: 21)
!4473 = distinct !DILexicalBlock(scope: !4415, file: !403, line: 1423, column: 18)
!4474 = !DILocation(line: 1424, column: 25, scope: !4472)
!4475 = !DILocation(line: 1424, column: 32, scope: !4472)
!4476 = !DILocation(line: 1424, column: 29, scope: !4472)
!4477 = !DILocation(line: 1424, column: 41, scope: !4472)
!4478 = !DILocation(line: 1425, column: 30, scope: !4472)
!4479 = !DILocation(line: 1425, column: 32, scope: !4472)
!4480 = !DILocation(line: 1425, column: 22, scope: !4472)
!4481 = !DILocation(line: 1425, column: 36, scope: !4472)
!4482 = !DILocation(line: 1425, column: 45, scope: !4472)
!4483 = !DILocation(line: 1426, column: 22, scope: !4472)
!4484 = !DILocation(line: 1426, column: 30, scope: !4472)
!4485 = !DILocation(line: 1426, column: 35, scope: !4472)
!4486 = !DILocation(line: 1424, column: 21, scope: !4473)
!4487 = !DILocation(line: 1427, column: 29, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4472, file: !403, line: 1426, column: 42)
!4489 = !DILocation(line: 1428, column: 25, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4488, file: !403, line: 1428, column: 25)
!4491 = !DILocation(line: 1428, column: 25, scope: !4488)
!4492 = !DILocation(line: 1429, column: 34, scope: !4490)
!4493 = !DILocation(line: 1429, column: 25, scope: !4490)
!4494 = !DILocation(line: 1431, column: 34, scope: !4490)
!4495 = !DILocation(line: 1432, column: 17, scope: !4488)
!4496 = !DILocation(line: 1433, column: 24, scope: !4473)
!4497 = !DILocation(line: 1434, column: 25, scope: !4473)
!4498 = !DILocation(line: 1435, column: 19, scope: !4473)
!4499 = !DILocation(line: 1444, column: 44, scope: !896)
!4500 = !DILocation(line: 1444, column: 31, scope: !896)
!4501 = !DILocation(line: 1444, column: 11, scope: !896)
!4502 = !DILocation(line: 1445, column: 9, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !896, file: !403, line: 1445, column: 9)
!4504 = !DILocation(line: 1445, column: 15, scope: !4503)
!4505 = !DILocation(line: 1445, column: 9, scope: !896)
!4506 = !DILocation(line: 1446, column: 9, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !403, line: 1445, column: 30)
!4508 = !DILocation(line: 1447, column: 9, scope: !4507)
!4509 = !DILocation(line: 1449, column: 12, scope: !896)
!4510 = !DILocation(line: 1449, column: 22, scope: !896)
!4511 = !DILocation(line: 1449, column: 5, scope: !896)
!4512 = !DILocation(line: 1451, column: 24, scope: !896)
!4513 = !DILocation(line: 1451, column: 14, scope: !896)
!4514 = !DILocation(line: 1451, column: 8, scope: !896)
!4515 = !DILocation(line: 1452, column: 5, scope: !896)
!4516 = !DILocation(line: 1452, column: 12, scope: !4305)
!4517 = !DILocation(line: 1452, column: 17, scope: !896)
!4518 = !DILocation(line: 1452, column: 15, scope: !896)
!4519 = !DILocation(line: 1453, column: 22, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !403, line: 1453, column: 13)
!4521 = distinct !DILexicalBlock(scope: !896, file: !403, line: 1452, column: 26)
!4522 = !DILocation(line: 1453, column: 14, scope: !4520)
!4523 = !DILocation(line: 1453, column: 26, scope: !4520)
!4524 = !DILocation(line: 1453, column: 33, scope: !4520)
!4525 = !DILocation(line: 1454, column: 22, scope: !4520)
!4526 = !DILocation(line: 1454, column: 14, scope: !4520)
!4527 = !DILocation(line: 1454, column: 26, scope: !4520)
!4528 = !DILocation(line: 1454, column: 34, scope: !4520)
!4529 = !DILocation(line: 1455, column: 14, scope: !4520)
!4530 = !DILocation(line: 1455, column: 21, scope: !4520)
!4531 = !DILocation(line: 1455, column: 32, scope: !4532)
!4532 = !DILexicalBlockFile(scope: !4520, file: !403, discriminator: 1)
!4533 = !DILocation(line: 1455, column: 24, scope: !4520)
!4534 = !DILocation(line: 1455, column: 36, scope: !4520)
!4535 = !DILocation(line: 1455, column: 44, scope: !4520)
!4536 = !DILocation(line: 1456, column: 23, scope: !4520)
!4537 = !DILocation(line: 1456, column: 15, scope: !4520)
!4538 = !DILocation(line: 1456, column: 27, scope: !4520)
!4539 = !DILocation(line: 1456, column: 35, scope: !4520)
!4540 = !DILocation(line: 1456, column: 39, scope: !4532)
!4541 = !DILocation(line: 1456, column: 47, scope: !4520)
!4542 = !DILocation(line: 1456, column: 53, scope: !4520)
!4543 = !DILocation(line: 1457, column: 23, scope: !4520)
!4544 = !DILocation(line: 1457, column: 25, scope: !4520)
!4545 = !DILocation(line: 1457, column: 15, scope: !4520)
!4546 = !DILocation(line: 1457, column: 29, scope: !4520)
!4547 = !DILocation(line: 1457, column: 37, scope: !4520)
!4548 = !DILocation(line: 1457, column: 48, scope: !4532)
!4549 = !DILocation(line: 1457, column: 50, scope: !4520)
!4550 = !DILocation(line: 1457, column: 40, scope: !4520)
!4551 = !DILocation(line: 1457, column: 54, scope: !4520)
!4552 = !DILocation(line: 1457, column: 62, scope: !4520)
!4553 = !DILocation(line: 1457, column: 73, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !4520, file: !403, discriminator: 2)
!4555 = !DILocation(line: 1457, column: 75, scope: !4520)
!4556 = !DILocation(line: 1457, column: 65, scope: !4520)
!4557 = !DILocation(line: 1457, column: 79, scope: !4520)
!4558 = !DILocation(line: 1457, column: 86, scope: !4520)
!4559 = !DILocation(line: 1458, column: 15, scope: !4520)
!4560 = !DILocation(line: 1458, column: 22, scope: !4520)
!4561 = !DILocation(line: 1458, column: 35, scope: !4532)
!4562 = !DILocation(line: 1458, column: 27, scope: !4520)
!4563 = !DILocation(line: 1458, column: 39, scope: !4520)
!4564 = !DILocation(line: 1458, column: 48, scope: !4520)
!4565 = !DILocation(line: 1458, column: 60, scope: !4554)
!4566 = !DILocation(line: 1458, column: 52, scope: !4520)
!4567 = !DILocation(line: 1458, column: 64, scope: !4520)
!4568 = !DILocation(line: 1458, column: 75, scope: !4520)
!4569 = !DILocation(line: 1459, column: 23, scope: !4520)
!4570 = !DILocation(line: 1459, column: 15, scope: !4520)
!4571 = !DILocation(line: 1459, column: 27, scope: !4520)
!4572 = !DILocation(line: 1459, column: 35, scope: !4520)
!4573 = !DILocation(line: 1459, column: 46, scope: !4554)
!4574 = !DILocation(line: 1459, column: 38, scope: !4520)
!4575 = !DILocation(line: 1459, column: 50, scope: !4520)
!4576 = !DILocation(line: 1459, column: 58, scope: !4520)
!4577 = !DILocation(line: 1459, column: 62, scope: !4578)
!4578 = !DILexicalBlockFile(scope: !4532, file: !403, discriminator: 3)
!4579 = !DILocation(line: 1459, column: 65, scope: !4520)
!4580 = !DILocation(line: 1459, column: 72, scope: !4520)
!4581 = !DILocation(line: 1459, column: 69, scope: !4520)
!4582 = !DILocation(line: 1459, column: 82, scope: !4520)
!4583 = !DILocation(line: 1460, column: 23, scope: !4520)
!4584 = !DILocation(line: 1460, column: 15, scope: !4520)
!4585 = !DILocation(line: 1460, column: 27, scope: !4520)
!4586 = !DILocation(line: 1460, column: 33, scope: !4520)
!4587 = !DILocation(line: 1461, column: 23, scope: !4520)
!4588 = !DILocation(line: 1461, column: 15, scope: !4520)
!4589 = !DILocation(line: 1461, column: 27, scope: !4520)
!4590 = !DILocation(line: 1461, column: 36, scope: !4520)
!4591 = !DILocation(line: 1461, column: 48, scope: !4532)
!4592 = !DILocation(line: 1461, column: 40, scope: !4520)
!4593 = !DILocation(line: 1461, column: 52, scope: !4520)
!4594 = !DILocation(line: 1461, column: 61, scope: !4520)
!4595 = !DILocation(line: 1462, column: 15, scope: !4520)
!4596 = !DILocation(line: 1462, column: 25, scope: !4520)
!4597 = !DILocation(line: 1463, column: 15, scope: !4520)
!4598 = !DILocation(line: 1463, column: 25, scope: !4520)
!4599 = !DILocation(line: 1463, column: 38, scope: !4532)
!4600 = !DILocation(line: 1463, column: 30, scope: !4520)
!4601 = !DILocation(line: 1463, column: 42, scope: !4520)
!4602 = !DILocation(line: 1463, column: 51, scope: !4520)
!4603 = !DILocation(line: 1463, column: 63, scope: !4554)
!4604 = !DILocation(line: 1463, column: 55, scope: !4520)
!4605 = !DILocation(line: 1463, column: 67, scope: !4520)
!4606 = !DILocation(line: 1453, column: 13, scope: !4521)
!4607 = !DILocation(line: 1465, column: 18, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !403, line: 1465, column: 17)
!4609 = distinct !DILexicalBlock(scope: !4520, file: !403, line: 1464, column: 9)
!4610 = !DILocation(line: 1465, column: 26, scope: !4608)
!4611 = !DILocation(line: 1465, column: 31, scope: !4608)
!4612 = !DILocation(line: 1465, column: 17, scope: !4609)
!4613 = !DILocation(line: 1466, column: 26, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4608, file: !403, line: 1465, column: 38)
!4615 = !DILocation(line: 1466, column: 17, scope: !4614)
!4616 = !DILocation(line: 1466, column: 30, scope: !4614)
!4617 = !DILocation(line: 1467, column: 21, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !403, line: 1467, column: 21)
!4619 = !DILocation(line: 1467, column: 21, scope: !4614)
!4620 = !DILocation(line: 1467, column: 36, scope: !4621)
!4621 = !DILexicalBlockFile(scope: !4618, file: !403, discriminator: 1)
!4622 = !DILocation(line: 1467, column: 27, scope: !4618)
!4623 = !DILocation(line: 1467, column: 40, scope: !4618)
!4624 = !DILocation(line: 1468, column: 26, scope: !4614)
!4625 = !DILocation(line: 1468, column: 17, scope: !4614)
!4626 = !DILocation(line: 1468, column: 30, scope: !4614)
!4627 = !DILocation(line: 1469, column: 25, scope: !4614)
!4628 = !DILocation(line: 1470, column: 13, scope: !4614)
!4629 = !DILocation(line: 1471, column: 22, scope: !4609)
!4630 = !DILocation(line: 1471, column: 13, scope: !4609)
!4631 = !DILocation(line: 1471, column: 26, scope: !4609)
!4632 = !DILocation(line: 1472, column: 28, scope: !4609)
!4633 = !DILocation(line: 1472, column: 20, scope: !4609)
!4634 = !DILocation(line: 1472, column: 40, scope: !4609)
!4635 = !DILocation(line: 1472, column: 34, scope: !4609)
!4636 = !DILocation(line: 1472, column: 13, scope: !4609)
!4637 = !DILocation(line: 1473, column: 17, scope: !4609)
!4638 = !DILocation(line: 1474, column: 15, scope: !4609)
!4639 = !DILocation(line: 1475, column: 21, scope: !4609)
!4640 = !DILocation(line: 1476, column: 9, scope: !4609)
!4641 = !DILocation(line: 1478, column: 17, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !403, line: 1478, column: 17)
!4643 = distinct !DILexicalBlock(scope: !4520, file: !403, line: 1477, column: 14)
!4644 = !DILocation(line: 1478, column: 24, scope: !4642)
!4645 = !DILocation(line: 1479, column: 27, scope: !4642)
!4646 = !DILocation(line: 1479, column: 19, scope: !4642)
!4647 = !DILocation(line: 1479, column: 31, scope: !4642)
!4648 = !DILocation(line: 1479, column: 40, scope: !4642)
!4649 = !DILocation(line: 1480, column: 20, scope: !4642)
!4650 = !DILocation(line: 1480, column: 22, scope: !4642)
!4651 = !DILocation(line: 1480, column: 27, scope: !4642)
!4652 = !DILocation(line: 1480, column: 25, scope: !4642)
!4653 = !DILocation(line: 1480, column: 36, scope: !4642)
!4654 = !DILocation(line: 1480, column: 48, scope: !4655)
!4655 = !DILexicalBlockFile(scope: !4642, file: !403, discriminator: 1)
!4656 = !DILocation(line: 1480, column: 40, scope: !4642)
!4657 = !DILocation(line: 1480, column: 52, scope: !4642)
!4658 = !DILocation(line: 1480, column: 61, scope: !4642)
!4659 = !DILocation(line: 1481, column: 27, scope: !4642)
!4660 = !DILocation(line: 1481, column: 29, scope: !4642)
!4661 = !DILocation(line: 1481, column: 19, scope: !4642)
!4662 = !DILocation(line: 1481, column: 33, scope: !4642)
!4663 = !DILocation(line: 1478, column: 17, scope: !4643)
!4664 = !DILocation(line: 1483, column: 25, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4642, file: !403, line: 1482, column: 13)
!4666 = !DILocation(line: 1485, column: 21, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4665, file: !403, line: 1485, column: 21)
!4668 = !DILocation(line: 1485, column: 25, scope: !4667)
!4669 = !DILocation(line: 1485, column: 36, scope: !4670)
!4670 = !DILexicalBlockFile(scope: !4667, file: !403, discriminator: 1)
!4671 = !DILocation(line: 1485, column: 39, scope: !4667)
!4672 = !DILocation(line: 1485, column: 30, scope: !4667)
!4673 = !DILocation(line: 1485, column: 43, scope: !4667)
!4674 = !DILocation(line: 1485, column: 51, scope: !4667)
!4675 = !DILocation(line: 1485, column: 61, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !4667, file: !403, discriminator: 2)
!4677 = !DILocation(line: 1485, column: 64, scope: !4667)
!4678 = !DILocation(line: 1485, column: 55, scope: !4667)
!4679 = !DILocation(line: 1485, column: 68, scope: !4667)
!4680 = !DILocation(line: 1485, column: 21, scope: !4665)
!4681 = !DILocation(line: 1486, column: 32, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4667, file: !403, line: 1485, column: 79)
!4683 = !DILocation(line: 1486, column: 35, scope: !4682)
!4684 = !DILocation(line: 1486, column: 26, scope: !4682)
!4685 = !DILocation(line: 1486, column: 24, scope: !4682)
!4686 = !DILocation(line: 1487, column: 27, scope: !4682)
!4687 = !DILocation(line: 1487, column: 30, scope: !4682)
!4688 = !DILocation(line: 1487, column: 21, scope: !4682)
!4689 = !DILocation(line: 1487, column: 34, scope: !4682)
!4690 = !DILocation(line: 1488, column: 28, scope: !4682)
!4691 = !DILocation(line: 1488, column: 39, scope: !4682)
!4692 = !DILocation(line: 1488, column: 33, scope: !4682)
!4693 = !DILocation(line: 1488, column: 21, scope: !4682)
!4694 = !DILocation(line: 1489, column: 25, scope: !4682)
!4695 = !DILocation(line: 1490, column: 17, scope: !4682)
!4696 = !DILocation(line: 1492, column: 21, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4665, file: !403, line: 1492, column: 21)
!4698 = !DILocation(line: 1492, column: 21, scope: !4665)
!4699 = !DILocation(line: 1492, column: 36, scope: !4700)
!4700 = !DILexicalBlockFile(scope: !4697, file: !403, discriminator: 1)
!4701 = !DILocation(line: 1492, column: 27, scope: !4697)
!4702 = !DILocation(line: 1492, column: 40, scope: !4697)
!4703 = !DILocation(line: 1493, column: 26, scope: !4665)
!4704 = !DILocation(line: 1493, column: 17, scope: !4665)
!4705 = !DILocation(line: 1493, column: 30, scope: !4665)
!4706 = !DILocation(line: 1494, column: 29, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4665, file: !403, line: 1494, column: 21)
!4708 = !DILocation(line: 1494, column: 21, scope: !4707)
!4709 = !DILocation(line: 1494, column: 33, scope: !4707)
!4710 = !DILocation(line: 1494, column: 21, scope: !4665)
!4711 = !DILocation(line: 1495, column: 24, scope: !4707)
!4712 = !DILocation(line: 1495, column: 21, scope: !4707)
!4713 = !DILocation(line: 1497, column: 23, scope: !4707)
!4714 = !DILocation(line: 1498, column: 13, scope: !4665)
!4715 = !DILocation(line: 1500, column: 22, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !403, line: 1500, column: 21)
!4717 = distinct !DILexicalBlock(scope: !4642, file: !403, line: 1499, column: 18)
!4718 = !DILocation(line: 1500, column: 25, scope: !4716)
!4719 = !DILocation(line: 1500, column: 32, scope: !4716)
!4720 = !DILocation(line: 1500, column: 29, scope: !4716)
!4721 = !DILocation(line: 1500, column: 41, scope: !4716)
!4722 = !DILocation(line: 1501, column: 30, scope: !4716)
!4723 = !DILocation(line: 1501, column: 32, scope: !4716)
!4724 = !DILocation(line: 1501, column: 22, scope: !4716)
!4725 = !DILocation(line: 1501, column: 36, scope: !4716)
!4726 = !DILocation(line: 1501, column: 45, scope: !4716)
!4727 = !DILocation(line: 1502, column: 22, scope: !4716)
!4728 = !DILocation(line: 1502, column: 30, scope: !4716)
!4729 = !DILocation(line: 1502, column: 35, scope: !4716)
!4730 = !DILocation(line: 1500, column: 21, scope: !4717)
!4731 = !DILocation(line: 1503, column: 30, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4716, file: !403, line: 1502, column: 42)
!4733 = !DILocation(line: 1503, column: 21, scope: !4732)
!4734 = !DILocation(line: 1503, column: 34, scope: !4732)
!4735 = !DILocation(line: 1504, column: 25, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4732, file: !403, line: 1504, column: 25)
!4737 = !DILocation(line: 1504, column: 25, scope: !4732)
!4738 = !DILocation(line: 1504, column: 40, scope: !4739)
!4739 = !DILexicalBlockFile(scope: !4736, file: !403, discriminator: 1)
!4740 = !DILocation(line: 1504, column: 31, scope: !4736)
!4741 = !DILocation(line: 1504, column: 44, scope: !4736)
!4742 = !DILocation(line: 1505, column: 30, scope: !4732)
!4743 = !DILocation(line: 1505, column: 21, scope: !4732)
!4744 = !DILocation(line: 1505, column: 34, scope: !4732)
!4745 = !DILocation(line: 1506, column: 29, scope: !4732)
!4746 = !DILocation(line: 1507, column: 17, scope: !4732)
!4747 = !DILocation(line: 1508, column: 24, scope: !4717)
!4748 = !DILocation(line: 1509, column: 21, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4717, file: !403, line: 1509, column: 21)
!4750 = !DILocation(line: 1509, column: 28, scope: !4749)
!4751 = !DILocation(line: 1509, column: 39, scope: !4752)
!4752 = !DILexicalBlockFile(scope: !4749, file: !403, discriminator: 1)
!4753 = !DILocation(line: 1509, column: 31, scope: !4749)
!4754 = !DILocation(line: 1509, column: 43, scope: !4749)
!4755 = !DILocation(line: 1509, column: 21, scope: !4717)
!4756 = !DILocation(line: 1510, column: 30, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4749, file: !403, line: 1509, column: 51)
!4758 = !DILocation(line: 1510, column: 21, scope: !4757)
!4759 = !DILocation(line: 1510, column: 34, scope: !4757)
!4760 = !DILocation(line: 1511, column: 23, scope: !4757)
!4761 = !DILocation(line: 1512, column: 17, scope: !4757)
!4762 = !DILocation(line: 1514, column: 46, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4749, file: !403, line: 1513, column: 22)
!4764 = !DILocation(line: 1514, column: 36, scope: !4763)
!4765 = !DILocation(line: 1514, column: 30, scope: !4763)
!4766 = !DILocation(line: 1514, column: 21, scope: !4763)
!4767 = !DILocation(line: 1514, column: 34, scope: !4763)
!4768 = !DILocation(line: 1519, column: 49, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !896, file: !403, line: 1519, column: 9)
!4770 = !DILocation(line: 1519, column: 56, scope: !4769)
!4771 = !DILocation(line: 1519, column: 15, scope: !4769)
!4772 = !DILocation(line: 1519, column: 13, scope: !4769)
!4773 = !DILocation(line: 1519, column: 62, scope: !4769)
!4774 = !DILocation(line: 1519, column: 9, scope: !896)
!4775 = !DILocation(line: 1520, column: 20, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4769, file: !403, line: 1519, column: 77)
!4777 = !DILocation(line: 1520, column: 9, scope: !4776)
!4778 = !DILocation(line: 1521, column: 9, scope: !4776)
!4779 = !DILocation(line: 1523, column: 16, scope: !896)
!4780 = !DILocation(line: 1523, column: 5, scope: !896)
!4781 = !DILocation(line: 1524, column: 12, scope: !896)
!4782 = !DILocation(line: 1524, column: 5, scope: !896)
!4783 = !DILocation(line: 1525, column: 1, scope: !896)
!4784 = !DILocation(line: 1326, column: 23, scope: !916)
!4785 = !DILocation(line: 1326, column: 42, scope: !916)
!4786 = !DILocation(line: 1328, column: 5, scope: !916)
!4787 = !DILocation(line: 1328, column: 18, scope: !916)
!4788 = !DILocation(line: 1328, column: 27, scope: !916)
!4789 = !DILocation(line: 1330, column: 31, scope: !916)
!4790 = !DILocation(line: 1330, column: 38, scope: !916)
!4791 = !DILocation(line: 1330, column: 12, scope: !916)
!4792 = !DILocation(line: 1330, column: 5, scope: !916)
!4793 = !DILocation(line: 1330, column: 10, scope: !916)
!4794 = !DILocation(line: 1331, column: 15, scope: !916)
!4795 = !DILocation(line: 1331, column: 22, scope: !916)
!4796 = !DILocation(line: 1331, column: 12, scope: !916)
!4797 = !DILocation(line: 1332, column: 31, scope: !916)
!4798 = !DILocation(line: 1332, column: 38, scope: !916)
!4799 = !DILocation(line: 1332, column: 12, scope: !916)
!4800 = !DILocation(line: 1332, column: 5, scope: !916)
!4801 = !DILocation(line: 1332, column: 10, scope: !916)
!4802 = !DILocation(line: 1334, column: 1, scope: !916)
!4803 = !DILocation(line: 1333, column: 5, scope: !916)
