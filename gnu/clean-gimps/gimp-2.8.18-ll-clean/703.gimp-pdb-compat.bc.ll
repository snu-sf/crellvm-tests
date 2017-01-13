; ModuleID = './app/pdb/gimp-pdb-compat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct.anon = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_pdb_compat_param_spec = private unnamed_addr constant [27 x i8] c"gimp_pdb_compat_param_spec\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: returning NULL for %s (%s)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: returning G_TYPE_NONE for %d (%s)\00", align 1
@__func__.gimp_pdb_compat_arg_type_to_gtype = private unnamed_addr constant [34 x i8] c"gimp_pdb_compat_arg_type_to_gtype\00", align 1
@gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"gimp-pdb-type\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"(PDB type %d unknown)\00", align 1
@gimp_pdb_compat_procs_register.compat_procs = internal constant [112 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.93, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.101, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.135, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.139, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.141, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.143, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.145, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.147, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.149, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.151, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.143, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.145, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.147, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.143, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.145, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.147, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.149, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.151, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.135, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.139, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.141, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.175, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.177, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.181, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.183, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.185, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.187, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"gimp-blend\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimp-edit-blend\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"gimp-brushes-list\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"gimp-brushes-get-list\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimp-bucket-fill\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gimp-edit-bucket-fill\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"gimp-channel-delete\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimp-item-delete\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"gimp-channel-get-name\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"gimp-item-get-name\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"gimp-channel-get-tattoo\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"gimp-item-get-tattoo\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"gimp-channel-get-visible\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"gimp-item-get-visible\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"gimp-channel-set-name\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"gimp-item-set-name\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"gimp-channel-set-tattoo\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"gimp-item-set-tattoo\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"gimp-channel-set-visible\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"gimp-item-set-visible\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"gimp-color-picker\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"gimp-image-pick-color\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"gimp-convert-grayscale\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"gimp-image-convert-grayscale\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"gimp-convert-indexed\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"gimp-image-convert-indexed\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"gimp-convert-rgb\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"gimp-image-convert-rgb\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"gimp-crop\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"gimp-image-crop\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"gimp-drawable-bytes\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"gimp-drawable-bpp\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"gimp-drawable-image\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"gimp-drawable-get-image\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"gimp-image-active-drawable\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"gimp-image-get-active-drawable\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"gimp-image-floating-selection\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"gimp-image-get-floating-sel\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"gimp-layer-delete\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"gimp-layer-get-linked\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"gimp-item-get-linked\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"gimp-layer-get-name\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"gimp-layer-get-tattoo\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"gimp-layer-get-visible\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"gimp-layer-mask\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"gimp-layer-get-mask\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"gimp-layer-set-linked\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"gimp-item-set-linked\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"gimp-layer-set-name\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"gimp-layer-set-tattoo\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"gimp-layer-set-visible\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"gimp-palette-refresh\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"gimp-palettes-refresh\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"gimp-patterns-list\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"gimp-patterns-get-list\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"gimp-temp-PDB-name\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"gimp-procedural-db-temp-name\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"gimp-undo-push-group-end\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"gimp-image-undo-group-end\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"gimp-undo-push-group-start\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"gimp-image-undo-group-start\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"gimp-brushes-get-opacity\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"gimp-context-get-opacity\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"gimp-brushes-get-paint-mode\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"gimp-context-get-paint-mode\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"gimp-brushes-set-brush\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"gimp-context-set-brush\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"gimp-brushes-set-opacity\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"gimp-context-set-opacity\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"gimp-brushes-set-paint-mode\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"gimp-context-set-paint-mode\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"gimp-channel-ops-duplicate\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"gimp-image-duplicate\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"gimp-channel-ops-offset\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"gimp-drawable-offset\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"gimp-gradients-get-active\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"gimp-context-get-gradient\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"gimp-gradients-get-gradient\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"gimp-gradients-set-active\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"gimp-context-set-gradient\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"gimp-gradients-set-gradient\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"gimp-image-get-cmap\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"gimp-image-get-colormap\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"gimp-image-set-cmap\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"gimp-image-set-colormap\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"gimp-palette-get-background\00", align 1
@.str.93 = private unnamed_addr constant [28 x i8] c"gimp-context-get-background\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"gimp-palette-get-foreground\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"gimp-context-get-foreground\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"gimp-palette-set-background\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"gimp-context-set-background\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"gimp-palette-set-default-colors\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"gimp-context-set-default-colors\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"gimp-palette-set-foreground\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"gimp-context-set-foreground\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"gimp-palette-swap-colors\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"gimp-context-swap-colors\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"gimp-palettes-set-palette\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"gimp-context-set-palette\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"gimp-patterns-set-pattern\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"gimp-context-set-pattern\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"gimp-selection-clear\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"gimp-selection-none\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"gimp-layer-get-preserve-trans\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"gimp-layer-get-lock-alpha\00", align 1
@.str.112 = private unnamed_addr constant [30 x i8] c"gimp-layer-set-preserve-trans\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"gimp-layer-set-lock-alpha\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"gimp-drawable-is-valid\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"gimp-item-is-valid\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"gimp-drawable-is-layer\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"gimp-item-is-layer\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"gimp-drawable-is-text-layer\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"gimp-item-is-text-layer\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"gimp-drawable-is-layer-mask\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"gimp-item-is-layer-mask\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"gimp-drawable-is-channel\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"gimp-item-is-channel\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"gimp-drawable-delete\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"gimp-item-get-image\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"gimp-drawable-get-name\00", align 1
@.str.127 = private unnamed_addr constant [23 x i8] c"gimp-drawable-set-name\00", align 1
@.str.128 = private unnamed_addr constant [26 x i8] c"gimp-drawable-get-visible\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"gimp-drawable-set-visible\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"gimp-drawable-get-linked\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"gimp-drawable-set-linked\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"gimp-drawable-get-tattoo\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"gimp-drawable-set-tattoo\00", align 1
@.str.134 = private unnamed_addr constant [28 x i8] c"gimp-drawable-parasite-find\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"gimp-item-get-parasite\00", align 1
@.str.136 = private unnamed_addr constant [30 x i8] c"gimp-drawable-parasite-attach\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"gimp-item-attach-parasite\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"gimp-drawable-parasite-detach\00", align 1
@.str.139 = private unnamed_addr constant [26 x i8] c"gimp-item-detach-parasite\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"gimp-drawable-parasite-list\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"gimp-item-get-parasite-list\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"gimp-image-get-layer-position\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"gimp-image-get-item-position\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"gimp-image-raise-layer\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"gimp-image-raise-item\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"gimp-image-lower-layer\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"gimp-image-lower-item\00", align 1
@.str.148 = private unnamed_addr constant [30 x i8] c"gimp-image-raise-layer-to-top\00", align 1
@.str.149 = private unnamed_addr constant [29 x i8] c"gimp-image-raise-item-to-top\00", align 1
@.str.150 = private unnamed_addr constant [33 x i8] c"gimp-image-lower-layer-to-bottom\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c"gimp-image-lower-item-to-bottom\00", align 1
@.str.152 = private unnamed_addr constant [32 x i8] c"gimp-image-get-channel-position\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"gimp-image-raise-channel\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"gimp-image-lower-channel\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"gimp-image-get-vectors-position\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"gimp-image-raise-vectors\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"gimp-image-lower-vectors\00", align 1
@.str.158 = private unnamed_addr constant [32 x i8] c"gimp-image-raise-vectors-to-top\00", align 1
@.str.159 = private unnamed_addr constant [35 x i8] c"gimp-image-lower-vectors-to-bottom\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"gimp-vectors-is-valid\00", align 1
@.str.161 = private unnamed_addr constant [23 x i8] c"gimp-vectors-get-image\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"gimp-vectors-get-name\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"gimp-vectors-set-name\00", align 1
@.str.164 = private unnamed_addr constant [25 x i8] c"gimp-vectors-get-visible\00", align 1
@.str.165 = private unnamed_addr constant [25 x i8] c"gimp-vectors-set-visible\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"gimp-vectors-get-linked\00", align 1
@.str.167 = private unnamed_addr constant [24 x i8] c"gimp-vectors-set-linked\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"gimp-vectors-get-tattoo\00", align 1
@.str.169 = private unnamed_addr constant [24 x i8] c"gimp-vectors-set-tattoo\00", align 1
@.str.170 = private unnamed_addr constant [27 x i8] c"gimp-vectors-parasite-find\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"gimp-vectors-parasite-attach\00", align 1
@.str.172 = private unnamed_addr constant [29 x i8] c"gimp-vectors-parasite-detach\00", align 1
@.str.173 = private unnamed_addr constant [27 x i8] c"gimp-vectors-parasite-list\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"gimp-image-parasite-find\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"gimp-image-get-parasite\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"gimp-image-parasite-attach\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"gimp-image-attach-parasite\00", align 1
@.str.178 = private unnamed_addr constant [27 x i8] c"gimp-image-parasite-detach\00", align 1
@.str.179 = private unnamed_addr constant [27 x i8] c"gimp-image-detach-parasite\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"gimp-image-parasite-list\00", align 1
@.str.181 = private unnamed_addr constant [29 x i8] c"gimp-image-get-parasite-list\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"gimp-parasite-find\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"gimp-get-parasite\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"gimp-parasite-attach\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"gimp-attach-parasite\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"gimp-parasite-detach\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"gimp-detach-parasite\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"gimp-parasite-list\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"gimp-get-parasite-list\00", align 1
@__func__.gimp_pdb_compat_procs_register = private unnamed_addr constant [31 x i8] c"gimp_pdb_compat_procs_register\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"GIMP_IS_PDB (pdb)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp* %gimp, i32 %arg_type, i8* %name, i8* %desc) #0 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %arg_type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %arg_type, i32* %arg_type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store %struct._GParamSpec* null, %struct._GParamSpec** %pspec, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pdb_compat_param_spec, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pdb_compat_param_spec, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* %arg_type.addr, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.26
    i32 6, label %sw.bb.28
    i32 7, label %sw.bb.30
    i32 8, label %sw.bb.32
    i32 9, label %sw.bb.34
    i32 10, label %sw.bb.36
    i32 11, label %sw.bb.38
    i32 12, label %sw.bb.40
    i32 13, label %sw.bb.42
    i32 14, label %sw.bb.44
    i32 15, label %sw.bb.46
    i32 16, label %sw.bb.48
    i32 17, label %sw.bb.50
    i32 18, label %sw.bb.52
    i32 19, label %sw.bb.54
    i32 20, label %sw.bb.56
    i32 21, label %sw.bb.58
    i32 22, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %do.end.16
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %17 = load i8*, i8** %desc.addr, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* %15, i8* %16, i8* %17, i32 -2147483648, i32 2147483647, i32 0, i32 3)
  store %struct._GParamSpec* %call17, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end.16
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i8*, i8** %desc.addr, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_int16(i8* %18, i8* %19, i8* %20, i32 -32768, i32 32767, i32 0, i32 3)
  store %struct._GParamSpec* %call19, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %do.end.16
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i8*, i8** %desc.addr, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_int8(i8* %21, i8* %22, i8* %23, i32 0, i32 255, i32 0, i32 3)
  store %struct._GParamSpec* %call21, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %do.end.16
  %24 = load i8*, i8** %name.addr, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %26 = load i8*, i8** %desc.addr, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* %24, i8* %25, i8* %26, double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 3)
  store %struct._GParamSpec* %call23, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %do.end.16
  %27 = load i8*, i8** %name.addr, align 8
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load i8*, i8** %desc.addr, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_string(i8* %27, i8* %28, i8* %29, i32 1, i32 1, i32 0, i8* null, i32 3)
  store %struct._GParamSpec* %call25, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end.16
  %30 = load i8*, i8** %name.addr, align 8
  %31 = load i8*, i8** %name.addr, align 8
  %32 = load i8*, i8** %desc.addr, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* %30, i8* %31, i8* %32, i32 3)
  store %struct._GParamSpec* %call27, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %do.end.16
  %33 = load i8*, i8** %name.addr, align 8
  %34 = load i8*, i8** %name.addr, align 8
  %35 = load i8*, i8** %desc.addr, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_int16_array(i8* %33, i8* %34, i8* %35, i32 3)
  store %struct._GParamSpec* %call29, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %do.end.16
  %36 = load i8*, i8** %name.addr, align 8
  %37 = load i8*, i8** %name.addr, align 8
  %38 = load i8*, i8** %desc.addr, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* %36, i8* %37, i8* %38, i32 3)
  store %struct._GParamSpec* %call31, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end.16
  %39 = load i8*, i8** %name.addr, align 8
  %40 = load i8*, i8** %name.addr, align 8
  %41 = load i8*, i8** %desc.addr, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* %39, i8* %40, i8* %41, i32 3)
  store %struct._GParamSpec* %call33, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %do.end.16
  %42 = load i8*, i8** %name.addr, align 8
  %43 = load i8*, i8** %name.addr, align 8
  %44 = load i8*, i8** %desc.addr, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* %42, i8* %43, i8* %44, i32 3)
  store %struct._GParamSpec* %call35, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end.16
  %45 = load i8*, i8** %name.addr, align 8
  %46 = load i8*, i8** %name.addr, align 8
  %47 = load i8*, i8** %desc.addr, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* %45, i8* %46, i8* %47, i32 1, %struct._GimpRGB* null, i32 3)
  store %struct._GParamSpec* %call37, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %do.end.16
  %48 = load i8*, i8** %name.addr, align 8
  %49 = load i8*, i8** %name.addr, align 8
  %50 = load i8*, i8** %desc.addr, align 8
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* %48, i8* %49, i8* %50, %struct._Gimp* %51, i32 1, i32 3)
  store %struct._GParamSpec* %call39, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %do.end.16
  %52 = load i8*, i8** %name.addr, align 8
  %53 = load i8*, i8** %name.addr, align 8
  %54 = load i8*, i8** %desc.addr, align 8
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_display_id(i8* %52, i8* %53, i8* %54, %struct._Gimp* %55, i32 1, i32 3)
  store %struct._GParamSpec* %call41, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.42:                                         ; preds = %do.end.16
  %56 = load i8*, i8** %name.addr, align 8
  %57 = load i8*, i8** %name.addr, align 8
  %58 = load i8*, i8** %desc.addr, align 8
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* %56, i8* %57, i8* %58, %struct._Gimp* %59, i32 1, i32 3)
  store %struct._GParamSpec* %call43, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %do.end.16
  %60 = load i8*, i8** %name.addr, align 8
  %61 = load i8*, i8** %name.addr, align 8
  %62 = load i8*, i8** %desc.addr, align 8
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* %60, i8* %61, i8* %62, %struct._Gimp* %63, i32 1, i32 3)
  store %struct._GParamSpec* %call45, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.46:                                         ; preds = %do.end.16
  %64 = load i8*, i8** %name.addr, align 8
  %65 = load i8*, i8** %name.addr, align 8
  %66 = load i8*, i8** %desc.addr, align 8
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* %64, i8* %65, i8* %66, %struct._Gimp* %67, i32 1, i32 3)
  store %struct._GParamSpec* %call47, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %do.end.16
  %68 = load i8*, i8** %name.addr, align 8
  %69 = load i8*, i8** %name.addr, align 8
  %70 = load i8*, i8** %desc.addr, align 8
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* %68, i8* %69, i8* %70, %struct._Gimp* %71, i32 1, i32 3)
  store %struct._GParamSpec* %call49, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %do.end.16
  %72 = load i8*, i8** %name.addr, align 8
  %73 = load i8*, i8** %name.addr, align 8
  %74 = load i8*, i8** %desc.addr, align 8
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_selection_id(i8* %72, i8* %73, i8* %74, %struct._Gimp* %75, i32 1, i32 3)
  store %struct._GParamSpec* %call51, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %do.end.16
  %76 = load i8*, i8** %name.addr, align 8
  %77 = load i8*, i8** %name.addr, align 8
  %78 = load i8*, i8** %desc.addr, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_color_array(i8* %76, i8* %77, i8* %78, i32 3)
  store %struct._GParamSpec* %call53, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.54:                                         ; preds = %do.end.16
  %79 = load i8*, i8** %name.addr, align 8
  %80 = load i8*, i8** %name.addr, align 8
  %81 = load i8*, i8** %desc.addr, align 8
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* %79, i8* %80, i8* %81, %struct._Gimp* %82, i32 1, i32 3)
  store %struct._GParamSpec* %call55, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %do.end.16
  %83 = load i8*, i8** %name.addr, align 8
  %84 = load i8*, i8** %name.addr, align 8
  %85 = load i8*, i8** %desc.addr, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_parasite(i8* %83, i8* %84, i8* %85, i32 3)
  store %struct._GParamSpec* %call57, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %do.end.16
  %86 = load i8*, i8** %name.addr, align 8
  %87 = load i8*, i8** %name.addr, align 8
  %88 = load i8*, i8** %desc.addr, align 8
  %call59 = call i64 @gimp_pdb_status_type_get_type() #5
  %call60 = call %struct._GParamSpec* @g_param_spec_enum(i8* %86, i8* %87, i8* %88, i64 %call59, i32 0, i32 3)
  store %struct._GParamSpec* %call60, %struct._GParamSpec** %pspec, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %do.end.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.16, %sw.bb.61, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool62 = icmp ne %struct._GParamSpec* %89, null
  br i1 %tobool62, label %if.end.65, label %if.then.63

if.then.63:                                       ; preds = %sw.epilog
  %90 = load i8*, i8** %name.addr, align 8
  %91 = load i32, i32* %arg_type.addr, align 4
  %call64 = call i8* @gimp_pdb_compat_arg_type_to_string(i32 %91)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pdb_compat_param_spec, i32 0, i32 0), i8* %90, i8* %call64)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %sw.epilog
  %92 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  store %struct._GParamSpec* %92, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.else.14, %if.else.9
  %93 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %93
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_int16(i8*, i8*, i8*, i32, i32, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_int8(i8*, i8*, i8*, i32, i32, i32, i32) #3

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_int32_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_int16_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_item_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_display_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_channel_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_selection_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_color_array(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_vectors_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_parasite(i8*, i8*, i8*, i32) #3

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_status_type_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_pdb_compat_arg_type_to_string(i32 %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call i64 @gimp_pdb_arg_type_get_type() #5
  %0 = load i32, i32* %type.addr, align 4
  %call1 = call i32 @gimp_enum_get_value(i64 %call, i32 %0, i8** %name, i8** null, i8** null, i8** null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %1)
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i64 @gimp_pdb_compat_arg_type_to_gtype(i32 %type) #0 {
entry:
  %retval = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.11
    i32 8, label %sw.bb.13
    i32 9, label %sw.bb.15
    i32 10, label %sw.bb.17
    i32 11, label %sw.bb.19
    i32 12, label %sw.bb.21
    i32 13, label %sw.bb.23
    i32 14, label %sw.bb.25
    i32 15, label %sw.bb.27
    i32 16, label %sw.bb.29
    i32 17, label %sw.bb.31
    i32 18, label %sw.bb.33
    i32 19, label %sw.bb.35
    i32 20, label %sw.bb.37
    i32 21, label %sw.bb.39
    i32 22, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %entry
  %call = call i64 @gimp_int32_get_type() #5
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i64 @gimp_int16_get_type() #5
  store i64 %call2, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call i64 @gimp_int8_get_type() #5
  store i64 %call4, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i64 60, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i64 64, i64* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %call8 = call i64 @gimp_int32_array_get_type() #5
  store i64 %call8, i64* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %call10 = call i64 @gimp_int16_array_get_type() #5
  store i64 %call10, i64* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %call12 = call i64 @gimp_int8_array_get_type() #5
  store i64 %call12, i64* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %call14 = call i64 @gimp_float_array_get_type() #5
  store i64 %call14, i64* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %call16 = call i64 @gimp_string_array_get_type() #5
  store i64 %call16, i64* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %call18 = call i64 @gimp_rgb_get_type() #5
  store i64 %call18, i64* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %call20 = call i64 @gimp_item_id_get_type() #5
  store i64 %call20, i64* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %call22 = call i64 @gimp_display_id_get_type() #5
  store i64 %call22, i64* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %call24 = call i64 @gimp_image_id_get_type() #5
  store i64 %call24, i64* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %call26 = call i64 @gimp_layer_id_get_type() #5
  store i64 %call26, i64* %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %call28 = call i64 @gimp_channel_id_get_type() #5
  store i64 %call28, i64* %retval
  br label %return

sw.bb.29:                                         ; preds = %entry
  %call30 = call i64 @gimp_drawable_id_get_type() #5
  store i64 %call30, i64* %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %call32 = call i64 @gimp_selection_id_get_type() #5
  store i64 %call32, i64* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  %call34 = call i64 @gimp_color_array_get_type() #5
  store i64 %call34, i64* %retval
  br label %return

sw.bb.35:                                         ; preds = %entry
  %call36 = call i64 @gimp_vectors_id_get_type() #5
  store i64 %call36, i64* %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  %call38 = call i64 @gimp_parasite_get_type() #5
  store i64 %call38, i64* %retval
  br label %return

sw.bb.39:                                         ; preds = %entry
  %call40 = call i64 @gimp_pdb_status_type_get_type() #5
  store i64 %call40, i64* %retval
  br label %return

sw.bb.41:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.41
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i32, i32* %type.addr, align 4
  %call42 = call i8* @gimp_pdb_compat_arg_type_to_string(i32 %2)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_pdb_compat_arg_type_to_gtype, i32 0, i32 0), i32 %1, i8* %call42)
  store i64 4, i64* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int16_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int8_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int16_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int8_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_float_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_string_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_array_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_parasite_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %pdb_type = alloca i32, align 4
  %type_mapping = alloca [27 x %struct.anon], align 16
  %i = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  %0 = load i32, i32* @gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayinit.begin = getelementptr inbounds [27 x %struct.anon], [27 x %struct.anon]* %type_mapping, i64 0, i64 0
  %g_type = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.begin, i32 0, i32 0
  %call = call i64 @gimp_int32_get_type() #5
  store i64 %call, i64* %g_type, align 8
  %pdb_type1 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.begin, i32 0, i32 1
  store i32 0, i32* %pdb_type1, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.begin, i64 1
  %g_type2 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element, i32 0, i32 0
  store i64 24, i64* %g_type2, align 8
  %pdb_type3 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element, i32 0, i32 1
  store i32 0, i32* %pdb_type3, align 4
  %arrayinit.element4 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element, i64 1
  %g_type5 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element4, i32 0, i32 0
  store i64 28, i64* %g_type5, align 8
  %pdb_type6 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element4, i32 0, i32 1
  store i32 0, i32* %pdb_type6, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element4, i64 1
  %g_type8 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element7, i32 0, i32 0
  store i64 48, i64* %g_type8, align 8
  %pdb_type9 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element7, i32 0, i32 1
  store i32 0, i32* %pdb_type9, align 4
  %arrayinit.element10 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element7, i64 1
  %g_type11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element10, i32 0, i32 0
  store i64 20, i64* %g_type11, align 8
  %pdb_type12 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element10, i32 0, i32 1
  store i32 0, i32* %pdb_type12, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element10, i64 1
  %g_type14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element13, i32 0, i32 0
  %call15 = call i64 @gimp_int16_get_type() #5
  store i64 %call15, i64* %g_type14, align 8
  %pdb_type16 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element13, i32 0, i32 1
  store i32 1, i32* %pdb_type16, align 4
  %arrayinit.element17 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element13, i64 1
  %g_type18 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element17, i32 0, i32 0
  %call19 = call i64 @gimp_int8_get_type() #5
  store i64 %call19, i64* %g_type18, align 8
  %pdb_type20 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element17, i32 0, i32 1
  store i32 2, i32* %pdb_type20, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element17, i64 1
  %g_type22 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element21, i32 0, i32 0
  store i64 60, i64* %g_type22, align 8
  %pdb_type23 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element21, i32 0, i32 1
  store i32 3, i32* %pdb_type23, align 4
  %arrayinit.element24 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element21, i64 1
  %g_type25 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element24, i32 0, i32 0
  store i64 64, i64* %g_type25, align 8
  %pdb_type26 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element24, i32 0, i32 1
  store i32 4, i32* %pdb_type26, align 4
  %arrayinit.element27 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element24, i64 1
  %g_type28 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element27, i32 0, i32 0
  %call29 = call i64 @gimp_rgb_get_type() #5
  store i64 %call29, i64* %g_type28, align 8
  %pdb_type30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element27, i32 0, i32 1
  store i32 10, i32* %pdb_type30, align 4
  %arrayinit.element31 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element27, i64 1
  %g_type32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element31, i32 0, i32 0
  %call33 = call i64 @gimp_int32_array_get_type() #5
  store i64 %call33, i64* %g_type32, align 8
  %pdb_type34 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element31, i32 0, i32 1
  store i32 5, i32* %pdb_type34, align 4
  %arrayinit.element35 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element31, i64 1
  %g_type36 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element35, i32 0, i32 0
  %call37 = call i64 @gimp_int16_array_get_type() #5
  store i64 %call37, i64* %g_type36, align 8
  %pdb_type38 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element35, i32 0, i32 1
  store i32 6, i32* %pdb_type38, align 4
  %arrayinit.element39 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element35, i64 1
  %g_type40 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element39, i32 0, i32 0
  %call41 = call i64 @gimp_int8_array_get_type() #5
  store i64 %call41, i64* %g_type40, align 8
  %pdb_type42 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element39, i32 0, i32 1
  store i32 7, i32* %pdb_type42, align 4
  %arrayinit.element43 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element39, i64 1
  %g_type44 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element43, i32 0, i32 0
  %call45 = call i64 @gimp_float_array_get_type() #5
  store i64 %call45, i64* %g_type44, align 8
  %pdb_type46 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element43, i32 0, i32 1
  store i32 8, i32* %pdb_type46, align 4
  %arrayinit.element47 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element43, i64 1
  %g_type48 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element47, i32 0, i32 0
  %call49 = call i64 @gimp_string_array_get_type() #5
  store i64 %call49, i64* %g_type48, align 8
  %pdb_type50 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element47, i32 0, i32 1
  store i32 9, i32* %pdb_type50, align 4
  %arrayinit.element51 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element47, i64 1
  %g_type52 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element51, i32 0, i32 0
  %call53 = call i64 @gimp_color_array_get_type() #5
  store i64 %call53, i64* %g_type52, align 8
  %pdb_type54 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element51, i32 0, i32 1
  store i32 18, i32* %pdb_type54, align 4
  %arrayinit.element55 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element51, i64 1
  %g_type56 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element55, i32 0, i32 0
  %call57 = call i64 @gimp_item_id_get_type() #5
  store i64 %call57, i64* %g_type56, align 8
  %pdb_type58 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element55, i32 0, i32 1
  store i32 11, i32* %pdb_type58, align 4
  %arrayinit.element59 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element55, i64 1
  %g_type60 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element59, i32 0, i32 0
  %call61 = call i64 @gimp_display_id_get_type() #5
  store i64 %call61, i64* %g_type60, align 8
  %pdb_type62 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element59, i32 0, i32 1
  store i32 12, i32* %pdb_type62, align 4
  %arrayinit.element63 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element59, i64 1
  %g_type64 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element63, i32 0, i32 0
  %call65 = call i64 @gimp_image_id_get_type() #5
  store i64 %call65, i64* %g_type64, align 8
  %pdb_type66 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element63, i32 0, i32 1
  store i32 13, i32* %pdb_type66, align 4
  %arrayinit.element67 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element63, i64 1
  %g_type68 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element67, i32 0, i32 0
  %call69 = call i64 @gimp_layer_id_get_type() #5
  store i64 %call69, i64* %g_type68, align 8
  %pdb_type70 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element67, i32 0, i32 1
  store i32 14, i32* %pdb_type70, align 4
  %arrayinit.element71 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element67, i64 1
  %g_type72 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element71, i32 0, i32 0
  %call73 = call i64 @gimp_channel_id_get_type() #5
  store i64 %call73, i64* %g_type72, align 8
  %pdb_type74 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element71, i32 0, i32 1
  store i32 15, i32* %pdb_type74, align 4
  %arrayinit.element75 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element71, i64 1
  %g_type76 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element75, i32 0, i32 0
  %call77 = call i64 @gimp_drawable_id_get_type() #5
  store i64 %call77, i64* %g_type76, align 8
  %pdb_type78 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element75, i32 0, i32 1
  store i32 16, i32* %pdb_type78, align 4
  %arrayinit.element79 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element75, i64 1
  %g_type80 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element79, i32 0, i32 0
  %call81 = call i64 @gimp_selection_id_get_type() #5
  store i64 %call81, i64* %g_type80, align 8
  %pdb_type82 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element79, i32 0, i32 1
  store i32 17, i32* %pdb_type82, align 4
  %arrayinit.element83 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element79, i64 1
  %g_type84 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element83, i32 0, i32 0
  %call85 = call i64 @gimp_layer_mask_id_get_type() #5
  store i64 %call85, i64* %g_type84, align 8
  %pdb_type86 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element83, i32 0, i32 1
  store i32 15, i32* %pdb_type86, align 4
  %arrayinit.element87 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element83, i64 1
  %g_type88 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element87, i32 0, i32 0
  %call89 = call i64 @gimp_vectors_id_get_type() #5
  store i64 %call89, i64* %g_type88, align 8
  %pdb_type90 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element87, i32 0, i32 1
  store i32 19, i32* %pdb_type90, align 4
  %arrayinit.element91 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element87, i64 1
  %g_type92 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element91, i32 0, i32 0
  %call93 = call i64 @gimp_parasite_get_type() #5
  store i64 %call93, i64* %g_type92, align 8
  %pdb_type94 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element91, i32 0, i32 1
  store i32 20, i32* %pdb_type94, align 4
  %arrayinit.element95 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element91, i64 1
  %g_type96 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element95, i32 0, i32 0
  %call97 = call i64 @gimp_pdb_status_type_get_type() #5
  store i64 %call97, i64* %g_type96, align 8
  %pdb_type98 = getelementptr inbounds %struct.anon, %struct.anon* %arrayinit.element95, i32 0, i32 1
  store i32 21, i32* %pdb_type98, align 4
  %call99 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call99, i32* @gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [27 x %struct.anon], [27 x %struct.anon]* %type_mapping, i32 0, i64 %idxprom
  %g_type101 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %3 = load i64, i64* %g_type101, align 8
  %4 = load i32, i32* @gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %5 to i64
  %arrayidx103 = getelementptr inbounds [27 x %struct.anon], [27 x %struct.anon]* %type_mapping, i32 0, i64 %idxprom102
  %pdb_type104 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx103, i32 0, i32 1
  %6 = load i32, i32* %pdb_type104, align 4
  %conv105 = zext i32 %6 to i64
  %7 = inttoptr i64 %conv105 to i8*
  call void @g_type_set_qdata(i64 %3, i32 %4, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %9 = load i64, i64* %type.addr, align 8
  %10 = load i32, i32* @gimp_pdb_compat_arg_type_from_gtype.pdb_type_quark, align 4
  %call106 = call i8* @g_type_get_qdata(i64 %9, i32 %10)
  %11 = ptrtoint i8* %call106 to i64
  %conv107 = trunc i64 %11 to i32
  store i32 %conv107, i32* %pdb_type, align 4
  %12 = load i32, i32* %pdb_type, align 4
  ret i32 %12
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_id_get_type() #1

declare i32 @g_quark_from_static_string(i8*) #3

declare void @g_type_set_qdata(i64, i32, i8*) #3

declare i8* @g_type_get_qdata(i64, i32) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_arg_type_get_type() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_pdb_compat_procs_register(%struct._GimpPDB* %pdb, i32 %compat_mode) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %compat_mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i32 %compat_mode, i32* %compat_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_pdb_compat_procs_register, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.190, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %compat_mode.addr, align 4
  %cmp11 = icmp ne i32 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %cmp14 = icmp ult i64 %conv, 112
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [112 x %struct.anon.0], [112 x %struct.anon.0]* @gimp_pdb_compat_procs_register.compat_procs, i32 0, i64 %idxprom
  %old_name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %17 = load i8*, i8** %old_name, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [112 x %struct.anon.0], [112 x %struct.anon.0]* @gimp_pdb_compat_procs_register.compat_procs, i32 0, i64 %idxprom16
  %new_name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx17, i32 0, i32 1
  %19 = load i8*, i8** %new_name, align 8
  call void @gimp_pdb_register_compat_proc_name(%struct._GimpPDB* %15, i8* %17, i8* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_get_type() #1

declare void @gimp_pdb_register_compat_proc_name(%struct._GimpPDB*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
