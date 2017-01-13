; ModuleID = './app/pdb/text-layer-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
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
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"gimp-text-layer-new\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Creates a new text layer.\00", align 1
@.str.2 = private unnamed_addr constant [340 x i8] c"This procedure creates a new text layer. The arguments are kept as simple as necessary for the normal case. All text attributes, however, can be modified with the appropriate gimp_text_layer_set_*() procedures. The new layer still needs to be added to the image, as this is not automatic. Add the new layer using 'gimp-image-insert-layer'.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Marcus Heese <heese@cip.ifi.lmu.de>\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Marcus Heese\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"The text to generate (in UTF-8 encoding)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"fontname\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"The name of the font\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"The size of text in either pixels or points\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"The units of specified size\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"The new text layer.\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-get-text\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Get the text from a text layer as string.\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"This procedure returns the text from a text layer as a string.\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"The text layer\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"The text from the specified text layer.\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-set-text\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Set the text of a text layer.\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"This procedure changes the text of a text layer.\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"The new text to set\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-get-markup\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Get the markup from a text layer as string.\00", align 1
@.str.29 = private unnamed_addr constant [281 x i8] c"This procedure returns the markup of the styles from a text layer. The markup will be in the form of Pango's markup - See http://www.pango.org/ for more information about Pango and its markup. Note: Setting the markup of a text layer using Pango's markup is not supported for now.\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Barak Itkin <lightningismyname@gmail.com>\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Barak Itkin\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"The markup which represents the style of the specified text layer.\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-get-font\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Get the font from a text layer as string.\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"This procedure returns the name of the font from a text layer.\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"The font which is used in the specified text layer.\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-set-font\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Set the font of a text layer.\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c"This procedure modifies the font used in the specified text layer.\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"The new font to use\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-get-font-size\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"Get the font size from a text layer.\00", align 1
@.str.46 = private unnamed_addr constant [141 x i8] c"This procedure returns the size of the font which is used in a text layer. You will receive the size as a float 'font-size' in 'unit' units.\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"font size\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"The font size\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"The unit used for the font size\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-set-font-size\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Set the font size.\00", align 1
@.str.53 = private unnamed_addr constant [122 x i8] c"This procedure changes the font size of a text layer. The size of your font will be a double 'font-size' of 'unit' units.\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"The unit to use for the font size\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-get-antialias\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"Check if antialiasing is used in the text layer.\00", align 1
@.str.57 = private unnamed_addr constant [78 x i8] c"This procedure checks if antialiasing is enabled in the specified text layer.\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.59 = private unnamed_addr constant [87 x i8] c"A flag which is true if antialiasing is used for rendering the font in the text layer.\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-set-antialias\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"Enable/disable anti-aliasing in a text layer.\00", align 1
@.str.62 = private unnamed_addr constant [78 x i8] c"This procedure enables or disables anti-aliasing of the text in a text layer.\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"Enable/disable antialiasing of the text\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"gimp-text-layer-get-hint-style\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"Get information about hinting in the specified text layer.\00", align 1
@.str.66 = private unnamed_addr constant [174 x i8] c"This procedure provides information about the hinting that is being used in a text layer. Hinting can be optimized for fidelity or contrast or it can be turned entirely off.\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"The hint style used for font outlines\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"gimp-text-layer-set-hint-style\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"Control how font outlines are hinted in a text layer.\00", align 1
@.str.71 = private unnamed_addr constant [189 x i8] c"This procedure sets the hint style for font outlines in a text layer. This controls whether to fit font outlines to the pixel grid, and if so, whether to optimize for fidelity or contrast.\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"The new hint style\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-get-kerning\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"Check if kerning is used in the text layer.\00", align 1
@.str.77 = private unnamed_addr constant [73 x i8] c"This procedure checks if kerning is enabled in the specified text layer.\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"kerning\00", align 1
@.str.79 = private unnamed_addr constant [59 x i8] c"A flag which is true if kerning is used in the text layer.\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-set-kerning\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"Enable/disable kerning in a text layer.\00", align 1
@.str.82 = private unnamed_addr constant [60 x i8] c"This procedure enables or disables kerning in a text layer.\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"Enable/disable kerning in the text\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"gimp-text-layer-get-language\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c"Get the language used in the text layer.\00", align 1
@.str.86 = private unnamed_addr constant [88 x i8] c"This procedure returns the language string which is set for the text in the text layer.\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"The text layer.\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"The language used in the text layer.\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"gimp-text-layer-set-language\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"Set the language of the text layer.\00", align 1
@.str.92 = private unnamed_addr constant [136 x i8] c"This procedure sets the language of the text in text layer. For some scripts the language has an influence of how the text is rendered.\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"The new language to use for the text layer\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-get-base-direction\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"Get the base direction used for rendering the text layer.\00", align 1
@.str.96 = private unnamed_addr constant [88 x i8] c"This procedure returns the base direction used for rendering the text in the text layer\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"The based direction used for the text layer.\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-set-base-direction\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"Set the base direction in the text layer.\00", align 1
@.str.101 = private unnamed_addr constant [117 x i8] c"This procedure sets the base direction used in applying the Unicode bidirectional algorithm when rendering the text.\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"The base direction of the text.\00", align 1
@.str.103 = private unnamed_addr constant [34 x i8] c"gimp-text-layer-get-justification\00", align 1
@.str.104 = private unnamed_addr constant [58 x i8] c"Get the text justification information of the text layer.\00", align 1
@.str.105 = private unnamed_addr constant [92 x i8] c"This procedure returns the alignment of the lines in the text layer relative to each other.\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.107 = private unnamed_addr constant [42 x i8] c"The justification used in the text layer.\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"gimp-text-layer-set-justification\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"Set the justification of the text in a text layer.\00", align 1
@.str.110 = private unnamed_addr constant [89 x i8] c"This procedure sets the alignment of the lines in the text layer relative to each other.\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"The justification for your text.\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"gimp-text-layer-get-color\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"Get the color of the text in a text layer.\00", align 1
@.str.114 = private unnamed_addr constant [62 x i8] c"This procedure returns the color of the text in a text layer.\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"The color of the text.\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"gimp-text-layer-set-color\00", align 1
@.str.118 = private unnamed_addr constant [45 x i8] c"Set the color of the text in the text layer.\00", align 1
@.str.119 = private unnamed_addr constant [62 x i8] c"This procedure sets the text color in the text layer 'layer'.\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"The color to use for the text\00", align 1
@.str.121 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-get-indent\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"Get the line indentation of text layer.\00", align 1
@.str.123 = private unnamed_addr constant [74 x i8] c"This procedure returns the indentation of the first line in a text layer.\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.125 = private unnamed_addr constant [41 x i8] c"The indentation value of the first line.\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-set-indent\00", align 1
@.str.127 = private unnamed_addr constant [55 x i8] c"Set the indentation of the first line in a text layer.\00", align 1
@.str.128 = private unnamed_addr constant [73 x i8] c"This procedure sets the indentation of the first line in the text layer.\00", align 1
@.str.129 = private unnamed_addr constant [36 x i8] c"The indentation for the first line.\00", align 1
@.str.130 = private unnamed_addr constant [33 x i8] c"gimp-text-layer-get-line-spacing\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"Get the spacing between lines of text.\00", align 1
@.str.132 = private unnamed_addr constant [79 x i8] c"This procedure returns the line-spacing between lines of text in a text layer.\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"line-spacing\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"line spacing\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"The line-spacing value.\00", align 1
@.str.136 = private unnamed_addr constant [33 x i8] c"gimp-text-layer-set-line-spacing\00", align 1
@.str.137 = private unnamed_addr constant [41 x i8] c"Adjust the line spacing in a text layer.\00", align 1
@.str.138 = private unnamed_addr constant [76 x i8] c"This procedure sets the additional spacing used between lines a text layer.\00", align 1
@.str.139 = private unnamed_addr constant [36 x i8] c"The additional line spacing to use.\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-get-letter-spacing\00", align 1
@.str.141 = private unnamed_addr constant [45 x i8] c"Get the letter spacing used in a text layer.\00", align 1
@.str.142 = private unnamed_addr constant [88 x i8] c"This procedure returns the additional spacing between the single glyps in a text layer.\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"letter-spacing\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"letter spacing\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"The letter-spacing value.\00", align 1
@.str.146 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-set-letter-spacing\00", align 1
@.str.147 = private unnamed_addr constant [43 x i8] c"Adjust the letter spacing in a text layer.\00", align 1
@.str.148 = private unnamed_addr constant [86 x i8] c"This procedure sets the additional spacing between the single glyphs in a text layer.\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"The additional letter spacing to use.\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"gimp-text-layer-resize\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c"Resize the box of a text layer.\00", align 1
@.str.152 = private unnamed_addr constant [162 x i8] c"This procedure changes the width and height of a text layer while keeping it as a text layer and not converting it to a bitmap like 'gimp-layer-resize' would do.\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"2009\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.155 = private unnamed_addr constant [28 x i8] c"The new box width in pixels\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.157 = private unnamed_addr constant [29 x i8] c"The new box height in pixels\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-get-hinting\00", align 1
@.str.159 = private unnamed_addr constant [58 x i8] c"Deprecated: Use 'gimp-text-layer-get-hint-style' instead.\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"hinting\00", align 1
@.str.162 = private unnamed_addr constant [53 x i8] c"A flag which is true if hinting is used on the font.\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"autohint\00", align 1
@.str.164 = private unnamed_addr constant [86 x i8] c"A flag which is true if the text layer is forced to use the autohinter from FreeType.\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-set-hinting\00", align 1
@.str.166 = private unnamed_addr constant [51 x i8] c"Enable/disable the use of hinting in a text layer.\00", align 1
@.str.167 = private unnamed_addr constant [195 x i8] c"This procedure enables or disables hinting on the text of a text layer. If you enable 'auto-hint', FreeType's automatic hinter will be used and hinting information from the font will be ignored.\00", align 1
@.str.168 = private unnamed_addr constant [46 x i8] c"Enable/disable the use of hinting on the text\00", align 1
@.str.169 = private unnamed_addr constant [58 x i8] c"Force the use of the autohinter provided through FreeType\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"font-size-unit\00", align 1
@.str.171 = private unnamed_addr constant [28 x i8] c"Failed to create text layer\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"Set text layer attribute\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"hint-style\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"base-direction\00", align 1
@text_layer_get_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.175 = private unnamed_addr constant [9 x i8] c"box-mode\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"box-width\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"box-height\00", align 1

; Function Attrs: nounwind uwtable
define void @register_text_layer_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([340 x i8], [340 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), double 0.000000e+00, double 8.192000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %9, %struct._GParamSpec* %call6)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call7)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), %struct._Gimp* %13, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %11, %struct._GParamSpec* %call9)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %14, %struct._GimpProcedure* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to i8*
  call void @g_object_unref(i8* %17)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_text_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0))
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp13 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %24, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call14)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call15)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_text_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %36, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call21)
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %38, %struct._GimpProcedure* %39)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to i8*
  call void @g_object_unref(i8* %41)
  %call22 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_markup_invoker)
  store %struct._GimpProcedure* %call22, %struct._GimpProcedure** %procedure, align 8
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = bitcast %struct._GimpProcedure* %42 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_object_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call23)
  %44 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp25 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %47, i32 0, i32 1
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp25, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %48, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %46, %struct._GParamSpec* %call26)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %49, %struct._GParamSpec* %call27)
  %50 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %50, %struct._GimpProcedure* %51)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = bitcast %struct._GimpProcedure* %52 to i8*
  call void @g_object_unref(i8* %53)
  %call28 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_font_invoker)
  store %struct._GimpProcedure* %call28, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %55 = bitcast %struct._GimpProcedure* %54 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call29)
  %56 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0))
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp31 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %59, i32 0, i32 1
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %60, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %58, %struct._GParamSpec* %call32)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %61, %struct._GParamSpec* %call33)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %62, %struct._GimpProcedure* %63)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to i8*
  call void @g_object_unref(i8* %65)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_font_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = bitcast %struct._GimpProcedure* %66 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call35)
  %68 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0))
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp37 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %71, i32 0, i32 1
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %72, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call38)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %73, %struct._GParamSpec* %call39)
  %74 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %74, %struct._GimpProcedure* %75)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %77 = bitcast %struct._GimpProcedure* %76 to i8*
  call void @g_object_unref(i8* %77)
  %call40 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_font_size_invoker)
  store %struct._GimpProcedure* %call40, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_object_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call41)
  %80 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0))
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp43 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %83, i32 0, i32 1
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp43, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %84, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call44)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %85, %struct._GParamSpec* %call45)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %86, %struct._GParamSpec* %call46)
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %87, %struct._GimpProcedure* %88)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = bitcast %struct._GimpProcedure* %89 to i8*
  call void @g_object_unref(i8* %90)
  %call47 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_font_size_invoker)
  store %struct._GimpProcedure* %call47, %struct._GimpProcedure** %procedure, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call48)
  %93 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %96, i32 0, i32 1
  %97 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %97, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call51)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), double 0.000000e+00, double 8.192000e+03, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call52)
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %99, %struct._GParamSpec* %call53)
  %100 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %100, %struct._GimpProcedure* %101)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to i8*
  call void @g_object_unref(i8* %103)
  %call54 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_antialias_invoker)
  store %struct._GimpProcedure* %call54, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call55)
  %106 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0))
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %109 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp57 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %109, i32 0, i32 1
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp57, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %110, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call58)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %111, %struct._GParamSpec* %call59)
  %112 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %112, %struct._GimpProcedure* %113)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to i8*
  call void @g_object_unref(i8* %115)
  %call60 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_antialias_invoker)
  store %struct._GimpProcedure* %call60, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %117 = bitcast %struct._GimpProcedure* %116 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call61)
  %118 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0))
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp63 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %121, i32 0, i32 1
  %122 = load %struct._Gimp*, %struct._Gimp** %gimp63, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %122, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %120, %struct._GParamSpec* %call64)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call65)
  %124 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %124, %struct._GimpProcedure* %125)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %127 = bitcast %struct._GimpProcedure* %126 to i8*
  call void @g_object_unref(i8* %127)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_hint_style_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %129 = bitcast %struct._GimpProcedure* %128 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call67)
  %130 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0))
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %133 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp69 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %133, i32 0, i32 1
  %134 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %134, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %132, %struct._GParamSpec* %call70)
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call i64 @gimp_text_hint_style_get_type() #5
  %call72 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), i64 %call71, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %135, %struct._GParamSpec* %call72)
  %136 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %136, %struct._GimpProcedure* %137)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = bitcast %struct._GimpProcedure* %138 to i8*
  call void @g_object_unref(i8* %139)
  %call73 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_hint_style_invoker)
  store %struct._GimpProcedure* %call73, %struct._GimpProcedure** %procedure, align 8
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = bitcast %struct._GimpProcedure* %140 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_object_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call74)
  %142 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0))
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp76 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %145, i32 0, i32 1
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp76, align 8
  %call77 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %146, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call77)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call i64 @gimp_text_hint_style_get_type() #5
  %call79 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0), i64 %call78, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call79)
  %148 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %148, %struct._GimpProcedure* %149)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = bitcast %struct._GimpProcedure* %150 to i8*
  call void @g_object_unref(i8* %151)
  %call80 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_kerning_invoker)
  store %struct._GimpProcedure* %call80, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %153 = bitcast %struct._GimpProcedure* %152 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_object_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call81)
  %154 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0))
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp83 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %157, i32 0, i32 1
  %158 = load %struct._Gimp*, %struct._Gimp** %gimp83, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %158, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %156, %struct._GParamSpec* %call84)
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %159, %struct._GParamSpec* %call85)
  %160 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %160, %struct._GimpProcedure* %161)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = bitcast %struct._GimpProcedure* %162 to i8*
  call void @g_object_unref(i8* %163)
  %call86 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_kerning_invoker)
  store %struct._GimpProcedure* %call86, %struct._GimpProcedure** %procedure, align 8
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %165 = bitcast %struct._GimpProcedure* %164 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_object_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call87)
  %166 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0))
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %169 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp89 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %169, i32 0, i32 1
  %170 = load %struct._Gimp*, %struct._Gimp** %gimp89, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %170, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %168, %struct._GParamSpec* %call90)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %171, %struct._GParamSpec* %call91)
  %172 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %172, %struct._GimpProcedure* %173)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = bitcast %struct._GimpProcedure* %174 to i8*
  call void @g_object_unref(i8* %175)
  %call92 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_language_invoker)
  store %struct._GimpProcedure* %call92, %struct._GimpProcedure** %procedure, align 8
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %177 = bitcast %struct._GimpProcedure* %176 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_object_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call93)
  %178 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0))
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %181 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp95 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %181, i32 0, i32 1
  %182 = load %struct._Gimp*, %struct._Gimp** %gimp95, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %182, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %180, %struct._GParamSpec* %call96)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %183, %struct._GParamSpec* %call97)
  %184 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %184, %struct._GimpProcedure* %185)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %187 = bitcast %struct._GimpProcedure* %186 to i8*
  call void @g_object_unref(i8* %187)
  %call98 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_language_invoker)
  store %struct._GimpProcedure* %call98, %struct._GimpProcedure** %procedure, align 8
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %189 = bitcast %struct._GimpProcedure* %188 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_object_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call99)
  %190 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i32 0, i32 0))
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp101 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %193, i32 0, i32 1
  %194 = load %struct._Gimp*, %struct._Gimp** %gimp101, align 8
  %call102 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %194, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %192, %struct._GParamSpec* %call102)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %195, %struct._GParamSpec* %call103)
  %196 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %196, %struct._GimpProcedure* %197)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %199 = bitcast %struct._GimpProcedure* %198 to i8*
  call void @g_object_unref(i8* %199)
  %call104 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_base_direction_invoker)
  store %struct._GimpProcedure* %call104, %struct._GimpProcedure** %procedure, align 8
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = bitcast %struct._GimpProcedure* %200 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_object_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call105)
  %202 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i32 0, i32 0))
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %205 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp107 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %205, i32 0, i32 1
  %206 = load %struct._Gimp*, %struct._Gimp** %gimp107, align 8
  %call108 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %206, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %204, %struct._GParamSpec* %call108)
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call i64 @gimp_text_direction_get_type() #5
  %call110 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.98, i32 0, i32 0), i64 %call109, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %207, %struct._GParamSpec* %call110)
  %208 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %208, %struct._GimpProcedure* %209)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %211 = bitcast %struct._GimpProcedure* %210 to i8*
  call void @g_object_unref(i8* %211)
  %call111 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_base_direction_invoker)
  store %struct._GimpProcedure* %call111, %struct._GimpProcedure** %procedure, align 8
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %213 = bitcast %struct._GimpProcedure* %212 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_object_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %213, i64 %call112)
  %214 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %214, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i32 0, i32 0))
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %216 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %217 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp114 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %217, i32 0, i32 1
  %218 = load %struct._Gimp*, %struct._Gimp** %gimp114, align 8
  %call115 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %218, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %216, %struct._GParamSpec* %call115)
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call i64 @gimp_text_direction_get_type() #5
  %call117 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.102, i32 0, i32 0), i64 %call116, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %219, %struct._GParamSpec* %call117)
  %220 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %221 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %220, %struct._GimpProcedure* %221)
  %222 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %223 = bitcast %struct._GimpProcedure* %222 to i8*
  call void @g_object_unref(i8* %223)
  %call118 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_justification_invoker)
  store %struct._GimpProcedure* %call118, %struct._GimpProcedure** %procedure, align 8
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %225 = bitcast %struct._GimpProcedure* %224 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_object_get_type() #5
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 %call119)
  %226 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %226, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.103, i32 0, i32 0))
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %229 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp121 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %229, i32 0, i32 1
  %230 = load %struct._Gimp*, %struct._Gimp** %gimp121, align 8
  %call122 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %230, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %228, %struct._GParamSpec* %call122)
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call123 = call i64 @gimp_text_justification_get_type() #5
  %call124 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.107, i32 0, i32 0), i64 %call123, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %231, %struct._GParamSpec* %call124)
  %232 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %232, %struct._GimpProcedure* %233)
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %235 = bitcast %struct._GimpProcedure* %234 to i8*
  call void @g_object_unref(i8* %235)
  %call125 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_justification_invoker)
  store %struct._GimpProcedure* %call125, %struct._GimpProcedure** %procedure, align 8
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %237 = bitcast %struct._GimpProcedure* %236 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_object_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %237, i64 %call126)
  %238 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %238, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.108, i32 0, i32 0))
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %239, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %240 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %241 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp128 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %241, i32 0, i32 1
  %242 = load %struct._Gimp*, %struct._Gimp** %gimp128, align 8
  %call129 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %242, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %240, %struct._GParamSpec* %call129)
  %243 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call130 = call i64 @gimp_text_justification_get_type() #5
  %call131 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i32 0, i32 0), i64 %call130, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %243, %struct._GParamSpec* %call131)
  %244 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %244, %struct._GimpProcedure* %245)
  %246 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %247 = bitcast %struct._GimpProcedure* %246 to i8*
  call void @g_object_unref(i8* %247)
  %call132 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_color_invoker)
  store %struct._GimpProcedure* %call132, %struct._GimpProcedure** %procedure, align 8
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = bitcast %struct._GimpProcedure* %248 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_object_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call133)
  %250 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %250, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0))
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %251, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %252 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %253 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp135 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %253, i32 0, i32 1
  %254 = load %struct._Gimp*, %struct._Gimp** %gimp135, align 8
  %call136 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %254, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %252, %struct._GParamSpec* %call136)
  %255 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %255, %struct._GParamSpec* %call137)
  %256 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %257 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %256, %struct._GimpProcedure* %257)
  %258 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %259 = bitcast %struct._GimpProcedure* %258 to i8*
  call void @g_object_unref(i8* %259)
  %call138 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_color_invoker)
  store %struct._GimpProcedure* %call138, %struct._GimpProcedure** %procedure, align 8
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %261 = bitcast %struct._GimpProcedure* %260 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_object_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call139)
  %262 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i32 0, i32 0))
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %263, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %264 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %265 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp141 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %265, i32 0, i32 1
  %266 = load %struct._Gimp*, %struct._Gimp** %gimp141, align 8
  %call142 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %266, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %264, %struct._GParamSpec* %call142)
  %267 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call143 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.120, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %267, %struct._GParamSpec* %call143)
  %268 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %268, %struct._GimpProcedure* %269)
  %270 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %271 = bitcast %struct._GimpProcedure* %270 to i8*
  call void @g_object_unref(i8* %271)
  %call144 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_indent_invoker)
  store %struct._GimpProcedure* %call144, %struct._GimpProcedure** %procedure, align 8
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %273 = bitcast %struct._GimpProcedure* %272 to %struct._GTypeInstance*
  %call145 = call i64 @gimp_object_get_type() #5
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call145)
  %274 = bitcast %struct._GTypeInstance* %call146 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i32 0, i32 0))
  %275 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %275, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %276 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %277 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp147 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %277, i32 0, i32 1
  %278 = load %struct._Gimp*, %struct._Gimp** %gimp147, align 8
  %call148 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %278, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %276, %struct._GParamSpec* %call148)
  %279 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call149 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.125, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %279, %struct._GParamSpec* %call149)
  %280 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %280, %struct._GimpProcedure* %281)
  %282 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %283 = bitcast %struct._GimpProcedure* %282 to i8*
  call void @g_object_unref(i8* %283)
  %call150 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_indent_invoker)
  store %struct._GimpProcedure* %call150, %struct._GimpProcedure** %procedure, align 8
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %285 = bitcast %struct._GimpProcedure* %284 to %struct._GTypeInstance*
  %call151 = call i64 @gimp_object_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %285, i64 %call151)
  %286 = bitcast %struct._GTypeInstance* %call152 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i32 0, i32 0))
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %287, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %288 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %289 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp153 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %289, i32 0, i32 1
  %290 = load %struct._Gimp*, %struct._Gimp** %gimp153, align 8
  %call154 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %290, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %288, %struct._GParamSpec* %call154)
  %291 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call155 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.129, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double -8.192000e+03, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %291, %struct._GParamSpec* %call155)
  %292 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %293 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %292, %struct._GimpProcedure* %293)
  %294 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %295 = bitcast %struct._GimpProcedure* %294 to i8*
  call void @g_object_unref(i8* %295)
  %call156 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_line_spacing_invoker)
  store %struct._GimpProcedure* %call156, %struct._GimpProcedure** %procedure, align 8
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %297 = bitcast %struct._GimpProcedure* %296 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_object_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %297, i64 %call157)
  %298 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %298, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0))
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %299, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %300 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %301 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp159 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %301, i32 0, i32 1
  %302 = load %struct._Gimp*, %struct._Gimp** %gimp159, align 8
  %call160 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %302, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %300, %struct._GParamSpec* %call160)
  %303 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call161 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.135, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %303, %struct._GParamSpec* %call161)
  %304 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %305 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %304, %struct._GimpProcedure* %305)
  %306 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %307 = bitcast %struct._GimpProcedure* %306 to i8*
  call void @g_object_unref(i8* %307)
  %call162 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_line_spacing_invoker)
  store %struct._GimpProcedure* %call162, %struct._GimpProcedure** %procedure, align 8
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %309 = bitcast %struct._GimpProcedure* %308 to %struct._GTypeInstance*
  %call163 = call i64 @gimp_object_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %309, i64 %call163)
  %310 = bitcast %struct._GTypeInstance* %call164 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %310, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.136, i32 0, i32 0))
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %311, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %313 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp165 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %313, i32 0, i32 1
  %314 = load %struct._Gimp*, %struct._Gimp** %gimp165, align 8
  %call166 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %314, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %312, %struct._GParamSpec* %call166)
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call167 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.139, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double -8.192000e+03, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %315, %struct._GParamSpec* %call167)
  %316 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %316, %struct._GimpProcedure* %317)
  %318 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %319 = bitcast %struct._GimpProcedure* %318 to i8*
  call void @g_object_unref(i8* %319)
  %call168 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_letter_spacing_invoker)
  store %struct._GimpProcedure* %call168, %struct._GimpProcedure** %procedure, align 8
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %321 = bitcast %struct._GimpProcedure* %320 to %struct._GTypeInstance*
  %call169 = call i64 @gimp_object_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call169)
  %322 = bitcast %struct._GTypeInstance* %call170 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %322, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0))
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %323, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %325 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp171 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %325, i32 0, i32 1
  %326 = load %struct._Gimp*, %struct._Gimp** %gimp171, align 8
  %call172 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), %struct._Gimp* %326, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call172)
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call173 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %327, %struct._GParamSpec* %call173)
  %328 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %329 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %328, %struct._GimpProcedure* %329)
  %330 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %331 = bitcast %struct._GimpProcedure* %330 to i8*
  call void @g_object_unref(i8* %331)
  %call174 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_letter_spacing_invoker)
  store %struct._GimpProcedure* %call174, %struct._GimpProcedure** %procedure, align 8
  %332 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %333 = bitcast %struct._GimpProcedure* %332 to %struct._GTypeInstance*
  %call175 = call i64 @gimp_object_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %333, i64 %call175)
  %334 = bitcast %struct._GTypeInstance* %call176 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %334, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.146, i32 0, i32 0))
  %335 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %335, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %336 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %337 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp177 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %337, i32 0, i32 1
  %338 = load %struct._Gimp*, %struct._Gimp** %gimp177, align 8
  %call178 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %338, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %336, %struct._GParamSpec* %call178)
  %339 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call179 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.149, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double -8.192000e+03, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %339, %struct._GParamSpec* %call179)
  %340 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %341 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %340, %struct._GimpProcedure* %341)
  %342 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %343 = bitcast %struct._GimpProcedure* %342 to i8*
  call void @g_object_unref(i8* %343)
  %call180 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_resize_invoker)
  store %struct._GimpProcedure* %call180, %struct._GimpProcedure** %procedure, align 8
  %344 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %345 = bitcast %struct._GimpProcedure* %344 to %struct._GTypeInstance*
  %call181 = call i64 @gimp_object_get_type() #5
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %345, i64 %call181)
  %346 = bitcast %struct._GTypeInstance* %call182 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %346, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.150, i32 0, i32 0))
  %347 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %347, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i8* null)
  %348 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %349 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp183 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %349, i32 0, i32 1
  %350 = load %struct._Gimp*, %struct._Gimp** %gimp183, align 8
  %call184 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %350, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %348, %struct._GParamSpec* %call184)
  %351 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call185 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.155, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %351, %struct._GParamSpec* %call185)
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call186 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.157, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %352, %struct._GParamSpec* %call186)
  %353 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %354 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %353, %struct._GimpProcedure* %354)
  %355 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %356 = bitcast %struct._GimpProcedure* %355 to i8*
  call void @g_object_unref(i8* %356)
  %call187 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_get_hinting_invoker)
  store %struct._GimpProcedure* %call187, %struct._GimpProcedure** %procedure, align 8
  %357 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %358 = bitcast %struct._GimpProcedure* %357 to %struct._GTypeInstance*
  %call188 = call i64 @gimp_object_get_type() #5
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %358, i64 %call188)
  %359 = bitcast %struct._GTypeInstance* %call189 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %359, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i32 0, i32 0))
  %360 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %360, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0))
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %362 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp190 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %362, i32 0, i32 1
  %363 = load %struct._Gimp*, %struct._Gimp** %gimp190, align 8
  %call191 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %363, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %361, %struct._GParamSpec* %call191)
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call192 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.162, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %364, %struct._GParamSpec* %call192)
  %365 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call193 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.164, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %365, %struct._GParamSpec* %call193)
  %366 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %367 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %366, %struct._GimpProcedure* %367)
  %368 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %369 = bitcast %struct._GimpProcedure* %368 to i8*
  call void @g_object_unref(i8* %369)
  %call194 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_layer_set_hinting_invoker)
  store %struct._GimpProcedure* %call194, %struct._GimpProcedure** %procedure, align 8
  %370 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %371 = bitcast %struct._GimpProcedure* %370 to %struct._GTypeInstance*
  %call195 = call i64 @gimp_object_get_type() #5
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %371, i64 %call195)
  %372 = bitcast %struct._GTypeInstance* %call196 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %372, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0))
  %373 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %373, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0))
  %374 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %375 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp197 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %375, i32 0, i32 1
  %376 = load %struct._Gimp*, %struct._Gimp** %gimp197, align 8
  %call198 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %376, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %374, %struct._GParamSpec* %call198)
  %377 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call199 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.168, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %377, %struct._GParamSpec* %call199)
  %378 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call200 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %378, %struct._GParamSpec* %call200)
  %379 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %380 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %379, %struct._GimpProcedure* %380)
  %381 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %382 = bitcast %struct._GimpProcedure* %381 to i8*
  call void @g_object_unref(i8* %382)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca i8*, align 8
  %fontname = alloca i8*, align 8
  %size = alloca double, align 8
  %unit = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %gimp_text = alloca %struct._GimpText*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %text, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %fontname, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %size, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %unit, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %12, %struct._GimpRGB* %color)
  %call13 = call i64 @gimp_text_get_type() #5
  %13 = load i8*, i8** %text, align 8
  %14 = load i8*, i8** %fontname, align 8
  %15 = load double, double* %size, align 8
  %16 = load i32, i32* %unit, align 4
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), double %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  %17 = bitcast i8* %call14 to %struct._GimpText*
  store %struct._GimpText* %17, %struct._GimpText** %gimp_text, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpText*, %struct._GimpText** %gimp_text, align 8
  %call15 = call %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage* %18, %struct._GimpText* %19)
  store %struct._GimpLayer* %call15, %struct._GimpLayer** %layer, align 8
  %20 = load %struct._GimpText*, %struct._GimpText** %gimp_text, align 8
  %21 = bitcast %struct._GimpText* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool16 = icmp ne %struct._GimpLayer* %22, null
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_error_quark() #5
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.171, i32 0, i32 0)) #4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %23, i32 %call18, i32 3, i8* %call19)
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %26, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %28, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %24, i32 %25, %struct._GError* %cond)
  store %struct._GValueArray* %call22, %struct._GValueArray** %return_vals, align 8
  %29 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 1
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx26, %struct._GimpLayer* %32)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %33
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_text_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %text, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8** %text, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %text, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx13, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_text_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %text, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i8*, i8** %text, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_markup_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %markup = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %markup, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8** %markup, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %markup, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx13, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_font_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %font = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %font, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8** %font, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %font, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx13, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_font_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %font = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %font, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i8*, i8** %font, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_font_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %font_size = alloca double, align 8
  %unit = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %font_size, align 8
  store i32 0, i32* %unit, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), double* %font_size, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i32* %unit, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load double, double* %font_size, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %18)
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %21 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx15, i32 %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_font_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %font_size = alloca double, align 8
  %unit = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %font_size, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %unit, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %8, i32 1, %struct._GError** %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_text_layer_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTextLayer*
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %13 = load i32, i32* %unit, align 4
  %14 = load double, double* %font_size, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %12, i8* %call12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), double %14, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %17, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_antialias_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %antialias = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %antialias, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32* %antialias, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_antialias_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %antialias = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %antialias, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %antialias, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_hint_style_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %style = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %style, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i32 0, i32 0), i32* %style, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %style, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_hint_style_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_hint_style_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %style = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %style, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %style, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_kerning_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %kerning = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %kerning, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i32* %kerning, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %kerning, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_kerning_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %kerning = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %kerning, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %kerning, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_language_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %language = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %language, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8** %language, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %language, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx13, i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_language_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %language = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %language, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i8*, i8** %language, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_base_direction_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %direction = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %direction, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i32* %direction, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %direction, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_direction_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_base_direction_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %direction = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %direction, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %direction, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_justification_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %justify = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %justify, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i32* %justify, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %justify, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_justification_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_justification_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %justify = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %justify, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %justify, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @text_layer_get_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %5, i32 0, %struct._GError** %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = bitcast %struct._GimpLayer* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %9)
  %color7 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %call6, i32 0, i32 11
  %10 = bitcast %struct._GimpRGB* %color to i8*
  %11 = bitcast %struct._GimpRGB* %color7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %14, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx14, %struct._GimpRGB* %color)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %color)
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_text_layer_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTextLayer*
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %13, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_indent_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %indent = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %indent, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), double* %indent, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load double, double* %indent, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_indent_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %indent = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %indent, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load double, double* %indent, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_line_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %line_spacing = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %line_spacing, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), double* %line_spacing, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load double, double* %line_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_line_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %line_spacing = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %line_spacing, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load double, double* %line_spacing, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_letter_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %letter_spacing = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %letter_spacing, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), double* %letter_spacing, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load double, double* %letter_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx13, double %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_letter_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %letter_spacing = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %letter_spacing, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load double, double* %letter_spacing, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), double %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_resize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %text = alloca %struct._GimpText*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %width, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %height, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %8, i32 1, %struct._GError** %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_text_layer_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTextLayer*
  %call12 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %12)
  store %struct._GimpText* %call12, %struct._GimpText** %text, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call15, double* %xres, double* %yres)
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_text_layer_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTextLayer*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %19 = load double, double* %width, align 8
  %20 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %20, i32 0, i32 20
  %21 = load i32, i32* %box_unit, align 4
  %22 = load double, double* %xres, align 8
  %call19 = call double @gimp_pixels_to_units(double %19, i32 %21, double %22)
  %23 = load double, double* %height, align 8
  %24 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_unit20 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %24, i32 0, i32 20
  %25 = load i32, i32* %box_unit20, align 4
  %26 = load double, double* %yres, align 8
  %call21 = call double @gimp_pixels_to_units(double %23, i32 %25, double %26)
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %18, i8* %call18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), double %call19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), double %call21, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool23 = icmp ne %struct._GError** %29, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %31, %cond.true ], [ null, %cond.false ]
  %call24 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond)
  ret %struct._GValueArray* %call24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_get_hinting_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %hinting = alloca i32, align 4
  %autohint = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %hinting, align 4
  store i32 0, i32* %autohint, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  %call6 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %8)
  %9 = bitcast %struct._GimpText* %call6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i32* %hinting, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %hinting, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %21 = load i32, i32* %autohint, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx15, i32 %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_layer_set_hinting_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %hinting = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %hinting, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %6, i32 1, %struct._GError** %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0)) #4
  %11 = load i32, i32* %hinting, align 4
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %10, i8* %call9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i32 %11, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage*, %struct._GimpText*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer*, i32, %struct._GError**) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare void @gimp_text_layer_set(%struct._GimpTextLayer*, i8*, i8*, ...) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare double @gimp_pixels_to_units(double, i32, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
