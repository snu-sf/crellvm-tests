; ModuleID = './app/main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GOptionContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@be_verbose = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"--no-interface\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@no_interface = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"[FILE|URI...]\00", align 1
@main_entries = internal constant [27 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 118, i32 8, i32 3, i8* bitcast (void ()* @gimp_show_version_and_exit to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 8, i32 3, i8* bitcast (void ()* @gimp_show_license_and_exit to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, i32 0, i8* bitcast (i32* @be_verbose to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8 110, i32 0, i32 0, i8* bitcast (i32* @new_instance to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8 97, i32 0, i32 0, i8* bitcast (i32* @as_new to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8 105, i32 0, i32 0, i8* bitcast (i32* @no_interface to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8 100, i32 0, i32 0, i8* bitcast (i32* @no_data to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8 102, i32 0, i32 0, i8* bitcast (i32* @no_fonts to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8 115, i32 0, i32 0, i8* bitcast (i32* @no_splash to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8 0, i32 4, i32 0, i8* bitcast (i32* @use_shm to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 4, i32 0, i8* bitcast (i32* @use_cpu_accel to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, i32 4, i8* bitcast (i8** @session_name to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8 103, i32 0, i32 4, i8* bitcast (i8** @user_gimprc to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, i32 4, i8* bitcast (i8** @system_gimprc to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8 98, i32 0, i32 5, i8* bitcast (i8*** @batch_commands to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8 0, i32 0, i32 1, i8* bitcast (i8** @batch_interpreter to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i8 99, i32 0, i32 0, i8* bitcast (i32* @console_messages to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_pdb_compat_mode to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8 0, i32 0, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_stack_trace_mode to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8 0, i32 0, i32 0, i8* bitcast (i32* @use_debug_handler to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8 0, i32 8, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_fatal_warnings to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8 0, i32 8, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_dump_gimprc to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0), i8 0, i32 9, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_dump_gimprc to i8*), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8 0, i32 9, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_dump_gimprc to i8*), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0), i8 0, i32 9, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @gimp_option_dump_pdb_procedures_deprecated to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.62, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), i8 0, i32 0, i32 6, i8* bitcast (i8*** @filenames to i8*), i8* null, i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"gimp20\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [118 x i8] c"GIMP could not initialize the graphical user interface.\0AMake sure a proper setup for your display environment exists.\00", align 1
@console_messages = internal global i32 0, align 4
@batch_commands = internal global i8** null, align 8
@new_instance = internal global i32 0, align 4
@stack_trace_mode = internal global i32 0, align 4
@filenames = internal global i8** null, align 8
@system_gimprc = internal global i8* null, align 8
@user_gimprc = internal global i8* null, align 8
@session_name = internal global i8* null, align 8
@batch_interpreter = internal global i8* null, align 8
@as_new = internal global i32 0, align 4
@no_data = internal global i32 0, align 4
@no_fonts = internal global i32 0, align 4
@no_splash = internal global i32 0, align 4
@use_shm = internal global i32 1, align 4
@use_cpu_accel = internal global i32 1, align 4
@use_debug_handler = internal global i32 0, align 4
@pdb_compat_mode = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Show version information and exit\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Show license information and exit\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Be more verbose\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"new-instance\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Start a new GIMP instance\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"as-new\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Open images as new\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"no-interface\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Run without a user interface\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"no-data\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Do not load brushes, gradients, patterns, ...\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"no-fonts\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Do not load any fonts\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"no-splash\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Do not show a splash screen\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"no-shm\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"Do not use shared memory between GIMP and plugins\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"no-cpu-accel\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"Do not use special CPU acceleration functions\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Use an alternate sessionrc file\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Use an alternate user gimprc file\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"<filename>\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"system-gimprc\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Use an alternate system gimprc file\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"Batch command to run (can be used multiple times)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"<command>\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"batch-interpreter\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"The procedure to process batch commands with\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"<proc>\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"console-messages\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"Send messages to console instead of using a dialog\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"pdb-compat-mode\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"PDB compatibility mode (off|on|warn)\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"<mode>\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"stack-trace-mode\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"Debug in case of a crash (never|query|always)\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"debug-handlers\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"Enable non-fatal debugging signal handlers\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"g-fatal-warnings\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"Make all warnings fatal\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"dump-gimprc\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"Output a gimprc file with default settings\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"dump-gimprc-system\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"dump-gimprc-manpage\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"dump-pdb-procedures-deprecated\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"Output a sorted list of deprecated procedures in the PDB\00", align 1
@.str.63 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [585 x i8] c"GIMP is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.\0A\0AGIMP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.\0A\0AYou should have received a copy of the GNU General Public License along with GIMP. If not, see: http://www.gnu.org/licenses/\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"--dump-gimprc\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"--dump-gimprc-system\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"--dump-gimprc-manpage\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %context = alloca %struct._GOptionContext*, align 8
  %error = alloca %struct._GError*, align 8
  %abort_message = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %i = alloca i32, align 4
  %arg = alloca i8*, align 8
  %arg19 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  call void @g_thread_init(i8* null)
  call void @gimp_init_malloc()
  call void @gimp_env_init(i32 0)
  call void @gimp_log_init()
  call void @gimp_init_i18n()
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #7
  call void @g_set_application_name(i8* %call)
  %0 = load i8**, i8*** %argv.addr, align 8
  %call1 = call noalias i8** @g_strdupv(i8** %0)
  store i8** %call1, i8*** %argv.addr, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call2 = call noalias i8* @g_path_get_basename(i8* %2)
  store i8* %call2, i8** %basename, align 8
  %3 = load i8*, i8** %basename, align 8
  call void @g_set_prgname(i8* %3)
  %4 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %4)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx3, align 8
  store i8* %9, i8** %arg, align 8
  %10 = load i8*, i8** %arg, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv, 45
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load i8*, i8** %arg, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i8*, i8** %arg, align 8
  %call10 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* @be_verbose, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.14, %if.then
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.46, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body.18, label %for.end.48

for.body.18:                                      ; preds = %for.cond.15
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %18, i64 %idxprom20
  %19 = load i8*, i8** %arrayidx21, align 8
  store i8* %19, i8** %arg19, align 8
  %20 = load i8*, i8** %arg19, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp ne i32 %conv23, 45
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.18
  br label %for.inc.46

if.end.27:                                        ; preds = %for.body.18
  %22 = load i8*, i8** %arg19, align 8
  %call28 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.27
  %23 = load i8*, i8** %arg19, align 8
  %call32 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #8
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.end.27
  store i32 1, i32* @no_interface, align 4
  br label %if.end.45

if.else:                                          ; preds = %lor.lhs.false.31
  %24 = load i8*, i8** %arg19, align 8
  %call36 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.else
  %25 = load i8*, i8** %arg19, align 8
  %call40 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.39, %if.else
  call void @gimp_show_version_and_exit() #9
  unreachable

if.end.44:                                        ; preds = %lor.lhs.false.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.35
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45, %if.then.26
  %26 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %26, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.15

for.end.48:                                       ; preds = %for.cond.15
  store i32 1, i32* @no_interface, align 4
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #7
  %call50 = call %struct._GOptionContext* @g_option_context_new(i8* %call49)
  store %struct._GOptionContext* %call50, %struct._GOptionContext** %context, align 8
  %27 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #7
  call void @g_option_context_set_summary(%struct._GOptionContext* %27, i8* %call51)
  %28 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %28, %struct._GOptionEntry* getelementptr inbounds ([27 x %struct._GOptionEntry], [27 x %struct._GOptionEntry]* @main_entries, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %29 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %30 = load i32, i32* @no_interface, align 4
  call void @app_libs_init(%struct._GOptionContext* %29, i32 %30)
  %31 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call52 = call i32 @g_option_context_parse_strv(%struct._GOptionContext* %31, i8*** %argv.addr, %struct._GError** %error)
  %tobool = icmp ne i32 %call52, 0
  br i1 %tobool, label %if.end.59, label %if.then.53

if.then.53:                                       ; preds = %for.end.48
  %32 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool54 = icmp ne %struct._GError* %32, null
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.53
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2
  %34 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %34)
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %35)
  br label %if.end.58

if.else.56:                                       ; preds = %if.then.53
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.9, i32 0, i32 0)) #7
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  call void @app_exit(i32 1) #9
  unreachable

if.end.59:                                        ; preds = %for.end.48
  %36 = load i32, i32* @no_interface, align 4
  %tobool60 = icmp ne i32 %36, 0
  br i1 %tobool60, label %if.then.68, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.59
  %37 = load i32, i32* @be_verbose, align 4
  %tobool62 = icmp ne i32 %37, 0
  br i1 %tobool62, label %if.then.68, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %38 = load i32, i32* @console_messages, align 4
  %tobool64 = icmp ne i32 %38, 0
  br i1 %tobool64, label %if.then.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %39 = load i8**, i8*** @batch_commands, align 8
  %cmp66 = icmp ne i8** %39, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.63, %lor.lhs.false.61, %if.end.59
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %lor.lhs.false.65
  %40 = load i32, i32* @no_interface, align 4
  %tobool70 = icmp ne i32 %40, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  store i32 1, i32* @new_instance, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %call73 = call i8* @sanity_check()
  store i8* %call73, i8** %abort_message, align 8
  %41 = load i8*, i8** %abort_message, align 8
  %tobool74 = icmp ne i8* %41, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  %42 = load i32, i32* @no_interface, align 4
  %43 = load i8*, i8** %abort_message, align 8
  call void @app_abort(i32 %42, i8* %43) #9
  unreachable

if.end.76:                                        ; preds = %if.end.72
  %44 = load i32, i32* @stack_trace_mode, align 4
  call void @gimp_init_signal_handlers(i32 %44)
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx77, align 8
  %47 = load i8**, i8*** @filenames, align 8
  %48 = load i8*, i8** @system_gimprc, align 8
  %49 = load i8*, i8** @user_gimprc, align 8
  %50 = load i8*, i8** @session_name, align 8
  %51 = load i8*, i8** @batch_interpreter, align 8
  %52 = load i8**, i8*** @batch_commands, align 8
  %53 = load i32, i32* @as_new, align 4
  %54 = load i32, i32* @no_interface, align 4
  %55 = load i32, i32* @no_data, align 4
  %56 = load i32, i32* @no_fonts, align 4
  %57 = load i32, i32* @no_splash, align 4
  %58 = load i32, i32* @be_verbose, align 4
  %59 = load i32, i32* @use_shm, align 4
  %60 = load i32, i32* @use_cpu_accel, align 4
  %61 = load i32, i32* @console_messages, align 4
  %62 = load i32, i32* @use_debug_handler, align 4
  %63 = load i32, i32* @stack_trace_mode, align 4
  %64 = load i32, i32* @pdb_compat_mode, align 4
  call void @app_run(i8* %46, i8** %47, i8* %48, i8* %49, i8* %50, i8* %51, i8** %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %65 = load i8**, i8*** %argv.addr, align 8
  call void @g_strfreev(i8** %65)
  %66 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_free(%struct._GOptionContext* %66)
  ret i32 0
}

declare void @g_thread_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_init_malloc() #0 {
entry:
  %call = call i32 @mallopt(i32 -3, i32 4096) #7
  ret void
}

declare void @gimp_env_init(i32) #1

declare void @gimp_log_init() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_init_i18n() #0 {
entry:
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0)) #7
  %call1 = call i8* @gimp_locale_directory() #10
  %call2 = call i8* @bindtextdomain(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* %call1) #7
  %call3 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0)) #7
  %call4 = call i8* @gimp_locale_directory() #10
  %call5 = call i8* @bindtextdomain(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %call4) #7
  %call6 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0)) #7
  %call7 = call i8* @textdomain(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #7
  ret void
}

declare void @g_set_application_name(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare noalias i8** @g_strdupv(i8**) #1

declare noalias i8* @g_path_get_basename(i8*) #1

declare void @g_set_prgname(i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind uwtable
define internal void @gimp_show_version_and_exit() #4 {
entry:
  %0 = load i32, i32* @be_verbose, align 4
  call void @gimp_version_show(i32 %0)
  call void @app_exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct._GOptionContext* @g_option_context_new(i8*) #1

declare void @g_option_context_set_summary(%struct._GOptionContext*, i8*) #1

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #1

declare void @app_libs_init(%struct._GOptionContext*, i32) #1

declare i32 @g_option_context_parse_strv(%struct._GOptionContext*, i8***, %struct._GError**) #1

declare void @g_print(i8*, ...) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: noreturn
declare void @app_exit(i32) #5

declare i8* @sanity_check() #1

; Function Attrs: noreturn
declare void @app_abort(i32, i8*) #5

declare void @gimp_init_signal_handlers(i32) #1

declare void @app_run(i8*, i8**, i8*, i8*, i8*, i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @g_strfreev(i8**) #1

declare void @g_option_context_free(%struct._GOptionContext*) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @gimp_show_license_and_exit() #4 {
entry:
  %0 = load i32, i32* @be_verbose, align 4
  call void @gimp_version_show(i32 %0)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  %call = call i8* @gettext(i8* getelementptr inbounds ([585 x i8], [585 x i8]* @.str.65, i32 0, i32 0)) #7
  call void (i8*, ...) @g_print(i8* %call)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  call void @app_exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_option_pdb_compat_mode(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @pdb_compat_mode, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* @pdb_compat_mode, align 4
  br label %if.end.9

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %value.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0)) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %if.else.4
  store i32 2, i32* @pdb_compat_mode, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.8
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_option_stack_trace_mode(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @stack_trace_mode, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0)) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* @stack_trace_mode, align 4
  br label %if.end.9

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %value.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 2, i32* @stack_trace_mode, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.8
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_option_fatal_warnings(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fatal_mask = alloca i32, align 4
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %call = call i32 @g_log_set_always_fatal(i32 5)
  store i32 %call, i32* %fatal_mask, align 4
  %0 = load i32, i32* %fatal_mask, align 4
  %or = or i32 %0, 24
  store i32 %or, i32* %fatal_mask, align 4
  %1 = load i32, i32* %fatal_mask, align 4
  %call1 = call i32 @g_log_set_always_fatal(i32 %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_option_dump_gimprc(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %format = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  %success = alloca i32, align 4
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %format, align 4
  %0 = load i8*, i8** %option_name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %format, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %option_name.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0)) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 2, i32* %format, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %option_name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0)) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 3, i32* %format, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %3 = load i32, i32* %format, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.8
  %call10 = call i64 @gimp_get_type() #10
  %call11 = call i8* (i64, i8*, ...) @g_object_new(i64 %call10, i8* null)
  %4 = bitcast i8* %call11 to %struct._Gimp*
  store %struct._Gimp* %4, %struct._Gimp** %gimp, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @units_init(%struct._Gimp* %5)
  %6 = load i32, i32* %format, align 4
  %call12 = call i32 @gimp_config_dump(i32 %6)
  store i32 %call12, i32* %success, align 4
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = bitcast %struct._Gimp* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %9, 0
  %cond = select i1 %tobool13, i32 0, i32 1
  call void @app_exit(i32 %cond) #9
  unreachable

if.end.14:                                        ; preds = %if.end.8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_option_dump_pdb_procedures_deprecated(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %deprecated_procs = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %call = call i64 @gimp_get_type() #10
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._Gimp*
  store %struct._Gimp* %0, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb_compat_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 13
  store i32 1, i32* %pdb_compat_mode, align 4
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 44
  %3 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  call void @internal_procs_init(%struct._GimpPDB* %3)
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 44
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb2, align 8
  %call3 = call %struct._GList* @gimp_pdb_get_deprecated_procedures(%struct._GimpPDB* %5)
  store %struct._GList* %call3, %struct._GList** %deprecated_procs, align 8
  %6 = load %struct._GList*, %struct._GList** %deprecated_procs, align 8
  store %struct._GList* %6, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %7 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %iter, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data4, align 8
  %10 = bitcast i8* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_procedure_get_type() #10
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %11, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %12, i32 0, i32 3
  %13 = load i8*, i8** %original_name, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool7 = icmp ne %struct._GList* %14, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %15 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %deprecated_procs, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = bitcast %struct._Gimp* %18 to i8*
  call void @g_object_unref(i8* %19)
  call void @app_exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gimp_version_show(i32) #1

declare i32 @g_log_set_always_fatal(i32) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #6

declare void @units_init(%struct._Gimp*) #1

declare i32 @gimp_config_dump(i32) #1

declare void @g_object_unref(i8*) #1

declare void @internal_procs_init(%struct._GimpPDB*) #1

declare %struct._GList* @gimp_pdb_get_deprecated_procedures(%struct._GimpPDB*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #6

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind
declare i32 @mallopt(i32, i32) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #6

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
