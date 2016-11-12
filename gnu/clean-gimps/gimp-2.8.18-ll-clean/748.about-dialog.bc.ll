; ModuleID = './app/dialogs/about-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpAboutDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._PangoLayout*, i32, [101 x i32], i32, i32, i32, [2 x i32], i32, i32 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GRand = type opaque
%struct._PangoAttrList = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque

@about_dialog_create.dialog = internal global %struct.GimpAboutDialog zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.about_dialog_create = private unnamed_addr constant [20 x i8] c"about_dialog_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Copyright \C2\A9 1995-%s\0ASpencer Kimball, Peter Mattis and the GIMP Development Team\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2016\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gimp-about\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"window-position\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"About GIMP\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"program-name\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"GIMP\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"2.8.18\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"comments\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.17 = private unnamed_addr constant [585 x i8] c"GIMP is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.\0A\0AGIMP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.\0A\0AYou should have received a copy of the GNU General Public License along with GIMP. If not, see: http://www.gnu.org/licenses/\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"wrap-license\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"logo\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"website\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"http://www.gimp.org/\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"website-label\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Visit the GIMP website\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"authors\00", align 1
@authors = internal constant [102 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.133, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [8 x i8] c"artists\00", align 1
@artists = internal constant [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"documenters\00", align 1
@documenters = internal constant [6 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0), i8* null], align 16
@.str.27 = private unnamed_addr constant [19 x i8] c"translator-credits\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"%s: ooops, no box in this container?\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"about-dialog.c:164\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Peter Mattis\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Fredrik Alstr\C3\B6mer\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Rob Antonishen\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Jerry Baker\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Hendrik Boom\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"Richard Bowers\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Hans Breuer\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Simon Budig\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Jo\C3\A3o S. O. Bueno\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Seth Burgess\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Marco Ciampa\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Winston Chang\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"Lars-Peter Clausen\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Sven Claussner\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"Kevin Cozens\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Alexia Death\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Nicholas Doyle\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Daniel Eddeland\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Ulf-D. Ehlert\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Saul Goode\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"David Gowers\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"Cameron Gregory\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Eric Grivel\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Stephen Griffiths\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"Tim Harder\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Michael Henning\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Lukasz Hladowski\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"Patrick Horgan\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Daniel Hornung\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Christopher Howard\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"Alexander H\C3\A4mmerle\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Barak Itkin\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"Javier Jard\C3\B3n\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Tim Jedlicka\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Jehan\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"R\C3\B3man Joost\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"Alexander Jones\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Aurimas Ju\C5\A1ka\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"Malay Keshav\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"\C3\98yvind Kol\C3\A5s\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Lloyd Konneker\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Kretynofil\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Christian Krippendorf\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"Eric Lamarque\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"Simone Karin Lehmann\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"Dave Lichterman\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Tor Lillqvist\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"Mikael Magnusson\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Luidnel Maignan\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"Takeshi Matsuyama\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"T\C3\A9o Mazars\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"Mike Melancon\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"Christopher Montgomery\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"Tobias Mueller\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"Michael Mur\C3\A9\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"Andreas Neustifter\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Jon Nordby\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"Martin Nordholts\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"David Odin\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"Nelson A. de Oliveira\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"Victor Oliveira\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"Benjamin Otte\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"Petr Ovtchenkov\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"Ville P\C3\A4tsi\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"Akkana Peck\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Nils Philippsen\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"Mircea Purdea\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"Dennis Ranke\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Martin Renold\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Gilles Rochefort\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Marco Rossini\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Karthikeyan S\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Daniel Sabo\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"Enrico Schr\C3\B6der\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"Michael Schumacher\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"Peter Sikking\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"Ry\C5\8DTa SimaMoto\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"SHIRAKAWA Akira\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"Jernej Simon\C4\8Di\C4\8D\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Manish Singh\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"Mukund Sivaraman\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"Ville Sokk\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"Jakub Steiner\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"Omari Stephens\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"Bogdan Szczurek\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Tal Trachtman\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"Mason Thomas\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"Andreas Turtschan\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"Massimo Valentini\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"Thorsten Vollmer\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"Clayton Walker\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"Rupert Weber\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"Alexis Wilhelm\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"Andrew Wyatt\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"Yoshinori Yamakawa\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"Zhenfeng Zhao\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"Simon Zilliken\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"Przemyslaw Zych\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"Bernhard Stockmann\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"Alexandre Prokoudine\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"GIMP is brought to you by\00", align 1
@.str.137 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"about-dialog.c\00", align 1
@__func__.about_dialog_timer = private unnamed_addr constant [19 x i8] c"about_dialog_timer\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.decorate_text = private unnamed_addr constant [14 x i8] c"decorate_text\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"Unknown animation type %d\0A\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"gimp-logo.png\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @about_dialog_create(%struct._GimpContext* %context) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %container = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %children = alloca %struct._GList*, align 8
  %copyright = alloca i8*, align 8
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.about_dialog_create, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GimpAboutDialog, %struct.GimpAboutDialog* @about_dialog_create.dialog, i32 0, i32 0), align 8
  %tobool11 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool11, label %if.end.69, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32 101, i32* getelementptr inbounds (%struct.GimpAboutDialog, %struct.GimpAboutDialog* @about_dialog_create.dialog, i32 0, i32 3), align 4
  %call18 = call %struct._GdkPixbuf* @about_dialog_load_logo()
  store %struct._GdkPixbuf* %call18, %struct._GdkPixbuf** %pixbuf, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i32 0, i32 0)) #5
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call20, i8** %copyright, align 8
  %call21 = call i64 @gtk_about_dialog_get_type() #7
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #5
  %14 = load i8*, i8** %copyright, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0)) #5
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([585 x i8], [585 x i8]* @.str.17, i32 0, i32 0)) #5
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0)) #5
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0)) #5
  %call28 = call i8* (i64, i8*, ...) @g_object_new(i64 %call21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %call22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* %call23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* %call24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %call25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._GdkPixbuf* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* %call26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8** getelementptr inbounds ([102 x i8*], [102 x i8*]* @authors, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @artists, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @documenters, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* %call27, i8* null)
  %16 = bitcast i8* %call28 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %widget, align 8
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool29 = icmp ne %struct._GdkPixbuf* %17, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.12
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %19 = bitcast %struct._GdkPixbuf* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.12
  %20 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %21, %struct._GtkWidget** getelementptr inbounds (%struct.GimpAboutDialog, %struct.GimpAboutDialog* @about_dialog_create.dialog, i32 0, i32 0), align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %24, i8** bitcast (%struct.GimpAboutDialog* @about_dialog_create.dialog to i8**))
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GimpAboutDialog*)* @about_dialog_map to void ()*), i8* bitcast (%struct.GimpAboutDialog* @about_dialog_create.dialog to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GimpAboutDialog*)* @about_dialog_unmap to void ()*), i8* bitcast (%struct.GimpAboutDialog* @about_dialog_create.dialog to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_dialog_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call36)
  %33 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkDialog*
  %call38 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %33)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %container, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %container, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call39)
  %36 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %call41 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %36)
  store %struct._GList* %call41, %struct._GList** %children, align 8
  %37 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8
  %39 = bitcast i8* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gtk_box_get_type() #7
  store i64 %call46, i64* %__t45, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.31
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %if.end.31
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type56, align 8
  %46 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %45, %46
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %48 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #8
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %49 = load i32, i32* %__r48, align 4
  store i32 %49, i32* %tmp63
  %50 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %50, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.62
  %51 = load %struct._GList*, %struct._GList** %children, align 8
  %data66 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  %52 = load i8*, i8** %data66, align 8
  %53 = bitcast i8* %52 to %struct._GtkWidget*
  call void @about_dialog_add_animation(%struct._GtkWidget* %53, %struct.GimpAboutDialog* @about_dialog_create.dialog)
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.62
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.65
  %54 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %54)
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.end
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GimpAboutDialog, %struct.GimpAboutDialog* @about_dialog_create.dialog, i32 0, i32 0), align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_window_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call70)
  %57 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.GimpAboutDialog, %struct.GimpAboutDialog* @about_dialog_create.dialog, i32 0, i32 0), align 8
  store %struct._GtkWidget* %58, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.else.9
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %59
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @about_dialog_load_logo() #0 {
entry:
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %filename = alloca i8*, align 8
  %call = call i8* @gimp_data_directory() #7
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i8* null)
  store i8* %call1, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %call2 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %0, %struct._GError** null)
  store %struct._GdkPixbuf* %call2, %struct._GdkPixbuf** %pixbuf, align 8
  %1 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  ret %struct._GdkPixbuf* %2
}

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_about_dialog_get_type() #1

declare void @g_object_unref(i8*) #3

declare void @g_free(i8*) #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal void @about_dialog_map(%struct._GtkWidget* %widget, %struct.GimpAboutDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  %0 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %0, i32 0, i32 2
  %1 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %timer = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %2, i32 0, i32 5
  %3 = load i32, i32* %timer, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %state = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %4, i32 0, i32 9
  store i32 0, i32* %state, align 4
  %5 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %index = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %5, i32 0, i32 6
  store i32 0, i32* %index, align 4
  %6 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %animstep = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %6, i32 0, i32 7
  store i32 0, i32* %animstep, align 4
  %7 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %visible = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %7, i32 0, i32 10
  store i32 0, i32* %visible, align 4
  %8 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  call void @about_dialog_reshuffle(%struct.GimpAboutDialog* %8)
  %9 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %10 = bitcast %struct.GimpAboutDialog* %9 to i8*
  %call = call i32 @g_timeout_add(i32 800, i32 (i8*)* @about_dialog_timer, i8* %10)
  %11 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %timer1 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %11, i32 0, i32 5
  store i32 %call, i32* %timer1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @about_dialog_unmap(%struct._GtkWidget* %widget, %struct.GimpAboutDialog* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  %0 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %timer = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %0, i32 0, i32 5
  %1 = load i32, i32* %timer, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %timer1 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %2, i32 0, i32 5
  %3 = load i32, i32* %timer1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %timer2 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %4, i32 0, i32 5
  store i32 0, i32* %timer2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @about_dialog_add_animation(%struct._GtkWidget* %vbox, %struct.GimpAboutDialog* %dialog) #0 {
entry:
  %vbox.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  %height = alloca i32, align 4
  store %struct._GtkWidget* %vbox, %struct._GtkWidget** %vbox.addr, align 8
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @gtk_drawing_area_new()
  %0 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %0, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %anim_area, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %4 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area3 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %9 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area6 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area6, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %8, %struct._GtkWidget* %10, i32 4)
  %11 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area7 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %11, i32 0, i32 1
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area8 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area8, align 8
  %call9 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %14, i8* null)
  %15 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %15, i32 0, i32 2
  store %struct._PangoLayout* %call9, %struct._PangoLayout** %layout, align 8
  %16 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area10 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %20 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout12 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %20, i32 0, i32 2
  %21 = load %struct._PangoLayout*, %struct._PangoLayout** %layout12, align 8
  %22 = bitcast %struct._PangoLayout* %21 to i8*
  call void @g_object_weak_ref(%struct._GObject* %19, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_object_unref to void (i8*, %struct._GObject*)*), i8* %22)
  %23 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout13 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %23, i32 0, i32 2
  %24 = load %struct._PangoLayout*, %struct._PangoLayout** %layout13, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %24, i32* null, i32* %height)
  %25 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area14 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area14, align 8
  %27 = load i32, i32* %height, align 4
  %mul = mul nsw i32 2, %27
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %26, i32 -1, i32 %mul)
  %28 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area15 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area15, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %32 = bitcast %struct.GimpAboutDialog* %31 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.GimpAboutDialog*)* @about_dialog_anim_expose to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_list_free(%struct._GList*) #3

declare void @gtk_window_present(%struct._GtkWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @about_dialog_reshuffle(%struct.GimpAboutDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  %gr = alloca %struct._GRand*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %n_authors = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %1, i32 0, i32 3
  %2 = load i32, i32* %n_authors, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %shuffle = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 4, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.20, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %n_authors2 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %8, i32 0, i32 3
  %9 = load i32, i32* %n_authors2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body.4, label %for.end.22

for.body.4:                                       ; preds = %for.cond.1
  %10 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %11 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %n_authors5 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %11, i32 0, i32 3
  %12 = load i32, i32* %n_authors5, align 4
  %call6 = call i32 @g_rand_int_range(%struct._GRand* %10, i32 4, i32 %12)
  store i32 %call6, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %cmp7 = icmp ne i32 %13, %14
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %15 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %shuffle9 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %16, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle9, i32 0, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  store i32 %17, i32* %t, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %shuffle12 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %19, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle12, i32 0, i64 %idxprom11
  %20 = load i32, i32* %arrayidx13, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %shuffle15 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %22, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle15, i32 0, i64 %idxprom14
  store i32 %20, i32* %arrayidx16, align 4
  %23 = load i32, i32* %t, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %shuffle18 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %25, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle18, i32 0, i64 %idxprom17
  store i32 %23, i32* %arrayidx19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  %27 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %27)
  ret void
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @about_dialog_timer(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct.GimpAboutDialog*, align 8
  %timeout = alloca i32, align 4
  %text = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpAboutDialog*
  store %struct.GimpAboutDialog* %1, %struct.GimpAboutDialog** %dialog, align 8
  store i32 0, i32* %timeout, align 4
  %2 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %2, i32 0, i32 7
  %3 = load i32, i32* %animstep, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  store i8* null, i8** %text, align 8
  %4 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %visible = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %4, i32 0, i32 10
  store i32 1, i32* %visible, align 4
  %5 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %state = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %5, i32 0, i32 9
  %6 = load i32, i32* %state, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %8 = bitcast %struct.GimpAboutDialog* %7 to i8*
  %call = call i32 @g_timeout_add(i32 30, i32 (i8*)* @about_dialog_timer, i8* %8)
  %9 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %timer = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %9, i32 0, i32 5
  store i32 %call, i32* %timer, align 4
  %10 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %state1 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %10, i32 0, i32 9
  %11 = load i32, i32* %state1, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %state1, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.then
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i32 0, i32 0)) #5
  %call4 = call i8* @insert_spacers(i8* %call3)
  store i8* %call4, i8** %text, align 8
  %12 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %state5 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %12, i32 0, i32 9
  %13 = load i32, i32* %state5, align 4
  %add6 = add nsw i32 %13, 1
  store i32 %add6, i32* %state5, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %14 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %index = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %14, i32 0, i32 6
  %15 = load i32, i32* %index, align 4
  %16 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %n_authors = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %16, i32 0, i32 3
  %17 = load i32, i32* %n_authors, align 4
  %cmp8 = icmp slt i32 %15, %17
  br i1 %cmp8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.7
  %18 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %index10 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %18, i32 0, i32 6
  store i32 0, i32* %index10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %sw.bb.7
  %19 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %index11 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %19, i32 0, i32 6
  %20 = load i32, i32* %index11, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %shuffle = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %21, i32 0, i32 4
  %arrayidx = getelementptr inbounds [101 x i32], [101 x i32]* %shuffle, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds [102 x i8*], [102 x i8*]* @authors, i32 0, i64 %idxprom12
  %23 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i8* @insert_spacers(i8* %23)
  store i8* %call14, i8** %text, align 8
  %24 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %index15 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %24, i32 0, i32 6
  %25 = load i32, i32* %index15, align 4
  %add16 = add nsw i32 %25, 1
  store i32 %add16, i32* %index15, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i32 0, i32 0), i32 534, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.about_dialog_timer, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.2
  br label %do.body.17

do.body.17:                                       ; preds = %sw.epilog
  %26 = load i8*, i8** %text, align 8
  %cmp18 = icmp ne i8* %26, null
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.20

if.else:                                          ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.about_dialog_timer, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.19
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %27 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %layout = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %27, i32 0, i32 2
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %29 = load i8*, i8** %text, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %28, i8* %29, i32 -1)
  %30 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %layout22 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %30, i32 0, i32 2
  %31 = load %struct._PangoLayout*, %struct._PangoLayout** %layout22, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %31, %struct._PangoAttrList* null)
  %32 = load i8*, i8** %text, align 8
  call void @g_free(i8* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.21, %entry
  %33 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep24 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %33, i32 0, i32 7
  %34 = load i32, i32* %animstep24, align 4
  %cmp25 = icmp slt i32 %34, 16
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.23
  %35 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %36 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep27 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %36, i32 0, i32 7
  %37 = load i32, i32* %animstep27, align 4
  %conv = sitofp i32 %37 to float
  %conv28 = fpext float %conv to double
  %div = fdiv double %conv28, 1.500000e+01
  call void @decorate_text(%struct.GimpAboutDialog* %35, i32 2, double %div)
  br label %if.end.62

if.else.29:                                       ; preds = %if.end.23
  %38 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep30 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %38, i32 0, i32 7
  %39 = load i32, i32* %animstep30, align 4
  %cmp31 = icmp eq i32 %39, 16
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.29
  store i32 800, i32* %timeout, align 4
  br label %if.end.61

if.else.34:                                       ; preds = %if.else.29
  %40 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep35 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %40, i32 0, i32 7
  %41 = load i32, i32* %animstep35, align 4
  %cmp36 = icmp eq i32 %41, 17
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.34
  store i32 30, i32* %timeout, align 4
  br label %if.end.60

if.else.39:                                       ; preds = %if.else.34
  %42 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep40 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %42, i32 0, i32 7
  %43 = load i32, i32* %animstep40, align 4
  %cmp41 = icmp slt i32 %43, 33
  br i1 %cmp41, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.else.39
  %44 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %45 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep44 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %45, i32 0, i32 7
  %46 = load i32, i32* %animstep44, align 4
  %sub = sub nsw i32 %46, 17
  %conv45 = sitofp i32 %sub to float
  %conv46 = fpext float %conv45 to double
  %div47 = fdiv double %conv46, 1.500000e+01
  %sub48 = fsub double 1.000000e+00, %div47
  call void @decorate_text(%struct.GimpAboutDialog* %44, i32 1, double %sub48)
  br label %if.end.59

if.else.49:                                       ; preds = %if.else.39
  %47 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep50 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %47, i32 0, i32 7
  %48 = load i32, i32* %animstep50, align 4
  %cmp51 = icmp eq i32 %48, 33
  br i1 %cmp51, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else.49
  %49 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %visible54 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %49, i32 0, i32 10
  store i32 0, i32* %visible54, align 4
  store i32 300, i32* %timeout, align 4
  br label %if.end.58

if.else.55:                                       ; preds = %if.else.49
  %50 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %visible56 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %50, i32 0, i32 10
  store i32 0, i32* %visible56, align 4
  %51 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep57 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %51, i32 0, i32 7
  store i32 -1, i32* %animstep57, align 4
  store i32 30, i32* %timeout, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.43
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.38
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.33
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.26
  %52 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %animstep63 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %52, i32 0, i32 7
  %53 = load i32, i32* %animstep63, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %animstep63, align 4
  %54 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %anim_area = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %54, i32 0, i32 1
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %55)
  %56 = load i32, i32* %timeout, align 4
  %cmp64 = icmp sgt i32 %56, 0
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.62
  %57 = load i32, i32* %timeout, align 4
  %58 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %59 = bitcast %struct.GimpAboutDialog* %58 to i8*
  %call67 = call i32 @g_timeout_add(i32 %57, i32 (i8*)* @about_dialog_timer, i8* %59)
  %60 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog, align 8
  %timer68 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %60, i32 0, i32 5
  store i32 %call67, i32* %timer68, align 4
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.62
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.66, %if.else, %do.body, %sw.bb
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare %struct._GRand* @g_rand_new() #3

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #3

declare void @g_rand_free(%struct._GRand*) #3

; Function Attrs: nounwind uwtable
define internal i8* @insert_spacers(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %str = alloca %struct._GString*, align 8
  %normalized = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %unichr = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %str, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call1 = call noalias i8* @g_utf8_normalize(i8* %0, i64 -1, i32 1)
  store i8* %call1, i8** %normalized, align 8
  %1 = load i8*, i8** %normalized, align 8
  store i8* %1, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %ptr, align 8
  %call2 = call i32 @g_utf8_get_char(i8* %2) #8
  store i32 %call2, i32* %unichr, align 4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GString*, %struct._GString** %str, align 8
  %4 = load i32, i32* %unichr, align 4
  %call3 = call %struct._GString* @g_string_append_unichar(%struct._GString* %3, i32 %4)
  %5 = load %struct._GString*, %struct._GString** %str, align 8
  %call4 = call %struct._GString* @g_string_append_unichar(%struct._GString* %5, i32 8203)
  %6 = load i8*, i8** %ptr, align 8
  %7 = load i8*, i8** %ptr, align 8
  %8 = load i8, i8* %7, align 1
  %idxprom = zext i8 %8 to i64
  %9 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i8*, i8** %normalized, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GString*, %struct._GString** %str, align 8
  %call5 = call i8* @g_string_free(%struct._GString* %12, i32 0)
  ret i8* %call5
}

declare void @g_log(i8*, i32, i8*, ...) #3

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #3

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #3

; Function Attrs: nounwind uwtable
define internal void @decorate_text(%struct.GimpAboutDialog* %dialog, i32 %anim_type, double %time) #0 {
entry:
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  %anim_type.addr = alloca i32, align 4
  %time.addr = alloca double, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %text = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %letter_count = alloca i32, align 4
  %text_length = alloca i32, align 4
  %text_bytelen = alloca i32, align 4
  %cluster_start = alloca i32, align 4
  %cluster_end = alloca i32, align 4
  %unichr = alloca i32, align 4
  %attrlist = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %irect = alloca %struct._PangoRectangle, align 4
  %lrect = alloca %struct._PangoRectangle, align 4
  %mix = alloca %struct._GdkColor, align 4
  %border = alloca i32, align 4
  %pos = alloca double, align 8
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  store i32 %anim_type, i32* %anim_type.addr, align 4
  store double %time, double* %time.addr, align 8
  %0 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %anim_area = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %anim_area, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  store i32 0, i32* %letter_count, align 4
  store i32 0, i32* %text_length, align 4
  store i32 0, i32* %text_bytelen, align 4
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %attrlist, align 8
  %2 = bitcast %struct._PangoRectangle* %irect to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 4, i1 false)
  %3 = bitcast %struct._PangoRectangle* %lrect to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  %4 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arraydecay, i64 0
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %5, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i32 0
  %add.ptr2 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arraydecay1, i64 0
  %6 = load double, double* %time.addr, align 8
  call void @mix_colors(%struct._GdkColor* %add.ptr, %struct._GdkColor* %add.ptr2, %struct._GdkColor* %mix, double %6)
  %7 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %7, i32 0, i32 2
  %8 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %call3 = call i8* @pango_layout_get_text(%struct._PangoLayout* %8)
  store i8* %call3, i8** %text, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load i8*, i8** %text, align 8
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.decorate_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load i8*, i8** %text, align 8
  %call4 = call i64 @g_utf8_strlen(i8* %10, i64 -1) #8
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %text_length, align 4
  %11 = load i8*, i8** %text, align 8
  %call5 = call i64 @strlen(i8* %11) #8
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %text_bytelen, align 4
  %call7 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call7, %struct._PangoAttrList** %attrlist, align 8
  %12 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %textrange = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %12, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %textrange, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %13 = load i32, i32* %text_bytelen, align 4
  %14 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %textrange8 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %14, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %textrange8, i32 0, i64 1
  store i32 %13, i32* %arrayidx9, align 4
  %15 = load i32, i32* %anim_type.addr, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %do.end
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 1
  %16 = load i16, i16* %red, align 2
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 2
  %17 = load i16, i16* %green, align 2
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 3
  %18 = load i16, i16* %blue, align 2
  %call10 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %16, i16 zeroext %17, i16 zeroext %18)
  store %struct._PangoAttribute* %call10, %struct._PangoAttribute** %attr, align 8
  %19 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %19, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %20 = load i32, i32* %text_bytelen, align 4
  %21 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %21, i32 0, i32 2
  store i32 %20, i32* %end_index, align 4
  %22 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %23 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %22, %struct._PangoAttribute* %23)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %red12 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 1
  %24 = load i16, i16* %red12, align 2
  %green13 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 2
  %25 = load i16, i16* %green13, align 2
  %blue14 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 3
  %26 = load i16, i16* %blue14, align 2
  %call15 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %24, i16 zeroext %25, i16 zeroext %26)
  store %struct._PangoAttribute* %call15, %struct._PangoAttribute** %attr, align 8
  %27 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index16 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %27, i32 0, i32 1
  store i32 0, i32* %start_index16, align 4
  %28 = load i32, i32* %text_bytelen, align 4
  %29 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index17 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %29, i32 0, i32 2
  store i32 %28, i32* %end_index17, align 4
  %30 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %31 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_change(%struct._PangoAttrList* %30, %struct._PangoAttribute* %31)
  %32 = load i8*, i8** %text, align 8
  store i8* %32, i8** %ptr, align 8
  store i32 0, i32* %cluster_start, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %sw.bb.11
  %33 = load i8*, i8** %ptr, align 8
  %call18 = call i32 @g_utf8_get_char(i8* %33) #8
  store i32 %call18, i32* %unichr, align 4
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i8*, i8** %ptr, align 8
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i8, i8* %35, align 1
  %idxprom = zext i8 %36 to i64
  %37 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %38 to i32
  %idx.ext = sext i32 %conv20 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr21, i8** %ptr, align 8
  %39 = load i8*, i8** %ptr, align 8
  %40 = load i8*, i8** %text, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv22, i32* %cluster_end, align 4
  %41 = load i32, i32* %unichr, align 4
  %cmp23 = icmp eq i32 %41, 8203
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %while.body
  %42 = load double, double* %time.addr, align 8
  %sub = fsub double 1.000000e+00, %42
  %mul = fmul double %sub, 1.500000e+01
  %mul26 = fmul double %mul, 1.024000e+03
  %add = fadd double %mul26, 5.000000e-01
  %conv27 = fptosi double %add to i32
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %lrect, i32 0, i32 2
  store i32 %conv27, i32* %width, align 4
  %call28 = call %struct._PangoAttribute* @pango_attr_shape_new(%struct._PangoRectangle* %irect, %struct._PangoRectangle* %lrect)
  store %struct._PangoAttribute* %call28, %struct._PangoAttribute** %attr, align 8
  %43 = load i32, i32* %cluster_start, align 4
  %44 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index29 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %44, i32 0, i32 1
  store i32 %43, i32* %start_index29, align 4
  %45 = load i32, i32* %cluster_end, align 4
  %46 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index30 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %46, i32 0, i32 2
  store i32 %45, i32* %end_index30, align 4
  %47 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %48 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_change(%struct._PangoAttrList* %47, %struct._PangoAttribute* %48)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %while.body
  %49 = load i32, i32* %cluster_end, align 4
  store i32 %49, i32* %cluster_start, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end
  %red33 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 1
  %50 = load i16, i16* %red33, align 2
  %green34 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 2
  %51 = load i16, i16* %green34, align 2
  %blue35 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 3
  %52 = load i16, i16* %blue35, align 2
  %call36 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %50, i16 zeroext %51, i16 zeroext %52)
  store %struct._PangoAttribute* %call36, %struct._PangoAttribute** %attr, align 8
  %53 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index37 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %53, i32 0, i32 1
  store i32 0, i32* %start_index37, align 4
  %54 = load i32, i32* %text_bytelen, align 4
  %55 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index38 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %55, i32 0, i32 2
  store i32 %54, i32* %end_index38, align 4
  %56 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %57 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_change(%struct._PangoAttrList* %56, %struct._PangoAttribute* %57)
  %58 = load i8*, i8** %text, align 8
  store i8* %58, i8** %ptr, align 8
  store i32 0, i32* %cluster_start, align 4
  br label %while.cond.39

while.cond.39:                                    ; preds = %if.end.63, %sw.bb.32
  %59 = load i8*, i8** %ptr, align 8
  %call40 = call i32 @g_utf8_get_char(i8* %59) #8
  store i32 %call40, i32* %unichr, align 4
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %while.body.42, label %while.end.69

while.body.42:                                    ; preds = %while.cond.39
  %60 = load i32, i32* %unichr, align 4
  %cmp43 = icmp eq i32 %60, 8203
  br i1 %cmp43, label %if.then.45, label %if.end.63

if.then.45:                                       ; preds = %while.body.42
  %61 = load i8*, i8** %ptr, align 8
  %62 = load i8*, i8** %text, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %62 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %conv49 = trunc i64 %sub.ptr.sub48 to i32
  store i32 %conv49, i32* %cluster_end, align 4
  %63 = load double, double* %time.addr, align 8
  %sub50 = fsub double 1.000000e+00, %63
  %mul51 = fmul double %sub50, 1.800000e+04
  %64 = load double, double* %time.addr, align 8
  %mul52 = fmul double 4.000000e+00, %64
  %65 = load i32, i32* %letter_count, align 4
  %conv53 = sitofp i32 %65 to float
  %conv54 = fpext float %conv53 to double
  %mul55 = fmul double %conv54, 7.000000e-01
  %add56 = fadd double %mul52, %mul55
  %call57 = call double @sin(double %add56) #5
  %mul58 = fmul double %mul51, %call57
  %conv59 = fptosi double %mul58 to i32
  %call60 = call %struct._PangoAttribute* @pango_attr_rise_new(i32 %conv59)
  store %struct._PangoAttribute* %call60, %struct._PangoAttribute** %attr, align 8
  %66 = load i32, i32* %cluster_start, align 4
  %67 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index61 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %67, i32 0, i32 1
  store i32 %66, i32* %start_index61, align 4
  %68 = load i32, i32* %cluster_end, align 4
  %69 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index62 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %69, i32 0, i32 2
  store i32 %68, i32* %end_index62, align 4
  %70 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %71 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_change(%struct._PangoAttrList* %70, %struct._PangoAttribute* %71)
  %72 = load i32, i32* %letter_count, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %letter_count, align 4
  %73 = load i32, i32* %cluster_end, align 4
  store i32 %73, i32* %cluster_start, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.45, %while.body.42
  %74 = load i8*, i8** %ptr, align 8
  %75 = load i8*, i8** %ptr, align 8
  %76 = load i8, i8* %75, align 1
  %idxprom64 = zext i8 %76 to i64
  %77 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %77, i64 %idxprom64
  %78 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %78 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %74, i64 %idx.ext67
  store i8* %add.ptr68, i8** %ptr, align 8
  br label %while.cond.39

while.end.69:                                     ; preds = %while.cond.39
  br label %sw.epilog

sw.bb.70:                                         ; preds = %do.end
  %79 = load i8*, i8** %text, align 8
  store i8* %79, i8** %ptr, align 8
  store i32 0, i32* %letter_count, align 4
  store i32 0, i32* %cluster_start, align 4
  br label %while.cond.71

while.cond.71:                                    ; preds = %if.end.119, %sw.bb.70
  %80 = load i8*, i8** %ptr, align 8
  %call72 = call i32 @g_utf8_get_char(i8* %80) #8
  store i32 %call72, i32* %unichr, align 4
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %while.body.74, label %while.end.121

while.body.74:                                    ; preds = %while.cond.71
  %81 = load i32, i32* %text_length, align 4
  %add75 = add nsw i32 %81, 15
  %conv76 = sitofp i32 %add75 to double
  %82 = load double, double* %time.addr, align 8
  %mul77 = fmul double %conv76, %82
  %sub78 = fsub double %mul77, 1.500000e+01
  %conv79 = fptosi double %sub78 to i32
  store i32 %conv79, i32* %border, align 4
  %83 = load i32, i32* %letter_count, align 4
  %84 = load i32, i32* %border, align 4
  %cmp80 = icmp slt i32 %83, %84
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %while.body.74
  store double 0.000000e+00, double* %pos, align 8
  br label %if.end.92

if.else.83:                                       ; preds = %while.body.74
  %85 = load i32, i32* %letter_count, align 4
  %86 = load i32, i32* %border, align 4
  %add84 = add nsw i32 %86, 15
  %cmp85 = icmp sgt i32 %85, %add84
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.83
  store double 1.000000e+00, double* %pos, align 8
  br label %if.end.91

if.else.88:                                       ; preds = %if.else.83
  %87 = load i32, i32* %letter_count, align 4
  %88 = load i32, i32* %border, align 4
  %sub89 = sub nsw i32 %87, %88
  %conv90 = sitofp i32 %sub89 to double
  %div = fdiv double %conv90, 1.500000e+01
  store double %div, double* %pos, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.82
  %89 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg93 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %89, i32 0, i32 1
  %arraydecay94 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg93, i32 0, i32 0
  %add.ptr95 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arraydecay94, i64 0
  %90 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg96 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %90, i32 0, i32 2
  %arraydecay97 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg96, i32 0, i32 0
  %add.ptr98 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arraydecay97, i64 0
  %91 = load double, double* %pos, align 8
  call void @mix_colors(%struct._GdkColor* %add.ptr95, %struct._GdkColor* %add.ptr98, %struct._GdkColor* %mix, double %91)
  %92 = load i8*, i8** %ptr, align 8
  %93 = load i8*, i8** %ptr, align 8
  %94 = load i8, i8* %93, align 1
  %idxprom99 = zext i8 %94 to i64
  %95 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %95, i64 %idxprom99
  %96 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %96 to i32
  %idx.ext102 = sext i32 %conv101 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %92, i64 %idx.ext102
  store i8* %add.ptr103, i8** %ptr, align 8
  %97 = load i8*, i8** %ptr, align 8
  %98 = load i8*, i8** %text, align 8
  %sub.ptr.lhs.cast104 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %98 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %conv107 = trunc i64 %sub.ptr.sub106 to i32
  store i32 %conv107, i32* %cluster_end, align 4
  %red108 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 1
  %99 = load i16, i16* %red108, align 2
  %green109 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 2
  %100 = load i16, i16* %green109, align 2
  %blue110 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %mix, i32 0, i32 3
  %101 = load i16, i16* %blue110, align 2
  %call111 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %99, i16 zeroext %100, i16 zeroext %101)
  store %struct._PangoAttribute* %call111, %struct._PangoAttribute** %attr, align 8
  %102 = load i32, i32* %cluster_start, align 4
  %103 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index112 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %103, i32 0, i32 1
  store i32 %102, i32* %start_index112, align 4
  %104 = load i32, i32* %cluster_end, align 4
  %105 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index113 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %105, i32 0, i32 2
  store i32 %104, i32* %end_index113, align 4
  %106 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  %107 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_change(%struct._PangoAttrList* %106, %struct._PangoAttribute* %107)
  %108 = load double, double* %pos, align 8
  %cmp114 = fcmp olt double %108, 1.000000e+00
  br i1 %cmp114, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.end.92
  %109 = load i32, i32* %cluster_end, align 4
  %110 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %textrange117 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %110, i32 0, i32 8
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %textrange117, i32 0, i64 1
  store i32 %109, i32* %arrayidx118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.end.92
  %111 = load i32, i32* %letter_count, align 4
  %inc120 = add nsw i32 %111, 1
  store i32 %inc120, i32* %letter_count, align 4
  %112 = load i32, i32* %cluster_end, align 4
  store i32 %112, i32* %cluster_start, align 4
  br label %while.cond.71

while.end.121:                                    ; preds = %while.cond.71
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %113 = load i32, i32* %anim_type.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.140, i32 0, i32 0), i32 %113)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end.121, %while.end.69, %while.end, %sw.bb
  %114 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout122 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %114, i32 0, i32 2
  %115 = load %struct._PangoLayout*, %struct._PangoLayout** %layout122, align 8
  %116 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %115, %struct._PangoAttrList* %116)
  %117 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrlist, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %117)
  br label %return

return:                                           ; preds = %sw.epilog, %if.else
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #3

declare %struct._GString* @g_string_new(i8*) #3

declare noalias i8* @g_utf8_normalize(i8*, i64, i32) #3

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #2

declare %struct._GString* @g_string_append_unichar(%struct._GString*, i32) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @mix_colors(%struct._GdkColor* %start, %struct._GdkColor* %end, %struct._GdkColor* %target, double %pos) #6 {
entry:
  %start.addr = alloca %struct._GdkColor*, align 8
  %end.addr = alloca %struct._GdkColor*, align 8
  %target.addr = alloca %struct._GdkColor*, align 8
  %pos.addr = alloca double, align 8
  store %struct._GdkColor* %start, %struct._GdkColor** %start.addr, align 8
  store %struct._GdkColor* %end, %struct._GdkColor** %end.addr, align 8
  store %struct._GdkColor* %target, %struct._GdkColor** %target.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load %struct._GdkColor*, %struct._GdkColor** %start.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %0, i32 0, i32 1
  %1 = load i16, i16* %red, align 2
  %conv = zext i16 %1 to i32
  %conv1 = sitofp i32 %conv to double
  %2 = load double, double* %pos.addr, align 8
  %sub = fsub double 1.000000e+00, %2
  %mul = fmul double %conv1, %sub
  %3 = load %struct._GdkColor*, %struct._GdkColor** %end.addr, align 8
  %red2 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %3, i32 0, i32 1
  %4 = load i16, i16* %red2, align 2
  %conv3 = zext i16 %4 to i32
  %conv4 = sitofp i32 %conv3 to double
  %5 = load double, double* %pos.addr, align 8
  %mul5 = fmul double %conv4, %5
  %add = fadd double %mul, %mul5
  %conv6 = fptoui double %add to i16
  %6 = load %struct._GdkColor*, %struct._GdkColor** %target.addr, align 8
  %red7 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %6, i32 0, i32 1
  store i16 %conv6, i16* %red7, align 2
  %7 = load %struct._GdkColor*, %struct._GdkColor** %start.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %7, i32 0, i32 2
  %8 = load i16, i16* %green, align 2
  %conv8 = zext i16 %8 to i32
  %conv9 = sitofp i32 %conv8 to double
  %9 = load double, double* %pos.addr, align 8
  %sub10 = fsub double 1.000000e+00, %9
  %mul11 = fmul double %conv9, %sub10
  %10 = load %struct._GdkColor*, %struct._GdkColor** %end.addr, align 8
  %green12 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %10, i32 0, i32 2
  %11 = load i16, i16* %green12, align 2
  %conv13 = zext i16 %11 to i32
  %conv14 = sitofp i32 %conv13 to double
  %12 = load double, double* %pos.addr, align 8
  %mul15 = fmul double %conv14, %12
  %add16 = fadd double %mul11, %mul15
  %conv17 = fptoui double %add16 to i16
  %13 = load %struct._GdkColor*, %struct._GdkColor** %target.addr, align 8
  %green18 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %13, i32 0, i32 2
  store i16 %conv17, i16* %green18, align 2
  %14 = load %struct._GdkColor*, %struct._GdkColor** %start.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %14, i32 0, i32 3
  %15 = load i16, i16* %blue, align 2
  %conv19 = zext i16 %15 to i32
  %conv20 = sitofp i32 %conv19 to double
  %16 = load double, double* %pos.addr, align 8
  %sub21 = fsub double 1.000000e+00, %16
  %mul22 = fmul double %conv20, %sub21
  %17 = load %struct._GdkColor*, %struct._GdkColor** %end.addr, align 8
  %blue23 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %17, i32 0, i32 3
  %18 = load i16, i16* %blue23, align 2
  %conv24 = zext i16 %18 to i32
  %conv25 = sitofp i32 %conv24 to double
  %19 = load double, double* %pos.addr, align 8
  %mul26 = fmul double %conv25, %19
  %add27 = fadd double %mul22, %mul26
  %conv28 = fptoui double %add27 to i16
  %20 = load %struct._GdkColor*, %struct._GdkColor** %target.addr, align 8
  %blue29 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %20, i32 0, i32 3
  store i16 %conv28, i16* %blue29, align 2
  ret void
}

declare i8* @pango_layout_get_text(%struct._PangoLayout*) #3

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._PangoAttrList* @pango_attr_list_new() #3

declare %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext, i16 zeroext, i16 zeroext) #3

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #3

declare void @pango_attr_list_change(%struct._PangoAttrList*, %struct._PangoAttribute*) #3

declare %struct._PangoAttribute* @pango_attr_shape_new(%struct._PangoRectangle*, %struct._PangoRectangle*) #3

declare %struct._PangoAttribute* @pango_attr_rise_new(i32) #3

; Function Attrs: nounwind
declare double @sin(double) #4

declare void @g_printerr(i8*, ...) #3

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #3

declare i32 @g_source_remove(i32) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #3

declare %struct._GtkWidget* @gtk_drawing_area_new() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @about_dialog_anim_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct.GimpAboutDialog* %dialog) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %dialog.addr = alloca %struct.GimpAboutDialog*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %covered_region = alloca %struct._GdkRegion*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct.GimpAboutDialog* %dialog, %struct.GimpAboutDialog** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %visible = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %1, i32 0, i32 10
  %2 = load i32, i32* %visible, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %4)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %5, %struct._GdkColor* %arrayidx)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %allocation)
  %8 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %8, i32 0, i32 2
  %9 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %9, i32* %width, i32* %height)
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %10 = load i32, i32* %width2, align 4
  %11 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %10, %11
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %height3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %12 = load i32, i32* %height3, align 4
  %13 = load i32, i32* %height, align 4
  %sub4 = sub nsw i32 %12, %13
  %div5 = sdiv i32 %sub4, 2
  store i32 %div5, i32* %y, align 4
  %14 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %textrange = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %14, i32 0, i32 8
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %textrange, i32 0, i64 1
  %15 = load i32, i32* %arrayidx6, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout8 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %16, i32 0, i32 2
  %17 = load %struct._PangoLayout*, %struct._PangoLayout** %layout8, align 8
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %20 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %textrange9 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %20, i32 0, i32 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %textrange9, i32 0, i32 0
  %call10 = call %struct._GdkRegion* @gdk_pango_layout_get_clip_region(%struct._PangoLayout* %17, i32 %18, i32 %19, i32* %arraydecay, i32 1)
  store %struct._GdkRegion* %call10, %struct._GdkRegion** %covered_region, align 8
  %21 = load %struct._GdkRegion*, %struct._GdkRegion** %covered_region, align 8
  %22 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %22, i32 0, i32 4
  %23 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_region_intersect(%struct._GdkRegion* %21, %struct._GdkRegion* %23)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %25 = load %struct._GdkRegion*, %struct._GdkRegion** %covered_region, align 8
  call void @gdk_cairo_region(%struct._cairo* %24, %struct._GdkRegion* %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %26)
  %27 = load %struct._GdkRegion*, %struct._GdkRegion** %covered_region, align 8
  call void @gdk_region_destroy(%struct._GdkRegion* %27)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load i32, i32* %x, align 4
  %conv = sitofp i32 %29 to double
  %30 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %30 to double
  call void @cairo_move_to(%struct._cairo* %28, double %conv, double %conv12)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load %struct.GimpAboutDialog*, %struct.GimpAboutDialog** %dialog.addr, align 8
  %layout13 = getelementptr inbounds %struct.GimpAboutDialog, %struct.GimpAboutDialog* %32, i32 0, i32 2
  %33 = load %struct._PangoLayout*, %struct._PangoLayout** %layout13, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %31, %struct._PangoLayout* %33)
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %34)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #3

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #3

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #3

declare %struct._GdkRegion* @gdk_pango_layout_get_clip_region(%struct._PangoLayout*, i32, i32, i32*, i32) #3

declare void @gdk_region_intersect(%struct._GdkRegion*, %struct._GdkRegion*) #3

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #3

declare void @cairo_clip(%struct._cairo*) #3

declare void @gdk_region_destroy(%struct._GdkRegion*) #3

declare void @cairo_move_to(%struct._cairo*, double, double) #3

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #3

declare void @cairo_destroy(%struct._cairo*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
