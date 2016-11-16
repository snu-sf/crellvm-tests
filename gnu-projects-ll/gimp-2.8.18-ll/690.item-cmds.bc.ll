; ModuleID = './app/pdb/item-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"gimp-item-is-valid\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Returns TRUE if the item is valid.\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"This procedure checks if the given item ID is valid and refers to an existing item.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"The item to check\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Whether the item ID is valid\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"gimp-item-get-image\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Returns the item's image.\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"This procedure returns the item's image.\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"The item\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"The item's image\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"gimp-item-delete\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Delete a item.\00", align 1
@.str.20 = private unnamed_addr constant [296 x i8] c"This procedure deletes the specified item. This must not be done if the image containing this item was already deleted or if the item was already removed from the image. The only case in which this procedure is useful is if you want to get rid of a item which has not yet been added to an image.\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"The item to delete\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"gimp-item-is-drawable\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Returns whether the item is a drawable.\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"This procedure returns TRUE if the specified item is a drawable.\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"TRUE if the item is a drawable, FALSE otherwise\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"gimp-item-is-layer\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Returns whether the item is a layer.\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"This procedure returns TRUE if the specified item is a layer.\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"TRUE if the item is a layer, FALSE otherwise\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"gimp-item-is-text-layer\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"Returns whether the item is a text layer.\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"This procedure returns TRUE if the specified item is a text layer.\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"text-layer\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"text layer\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"TRUE if the item is a text layer, FALSE otherwise.\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"gimp-item-is-channel\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Returns whether the item is a channel.\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"This procedure returns TRUE if the specified item is a channel.\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"TRUE if the item is a channel, FALSE otherwise\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"gimp-item-is-layer-mask\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Returns whether the item is a layer mask.\00", align 1
@.str.48 = private unnamed_addr constant [67 x i8] c"This procedure returns TRUE if the specified item is a layer mask.\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"layer-mask\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"layer mask\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"TRUE if the item is a layer mask, FALSE otherwise\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"gimp-item-is-selection\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"Returns whether the item is a selection.\00", align 1
@.str.54 = private unnamed_addr constant [66 x i8] c"This procedure returns TRUE if the specified item is a selection.\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"TRUE if the item is a selection, FALSE otherwise\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"gimp-item-is-vectors\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Returns whether the item is a vectors.\00", align 1
@.str.59 = private unnamed_addr constant [64 x i8] c"This procedure returns TRUE if the specified item is a vectors.\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"TRUE if the item is a vectors, FALSE otherwise\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"gimp-item-is-group\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"Returns whether the item is a group item.\00", align 1
@.str.64 = private unnamed_addr constant [91 x i8] c"This procedure returns TRUE if the specified item is a group item which can have children.\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.66 = private unnamed_addr constant [45 x i8] c"TRUE if the item is a group, FALSE otherwise\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"gimp-item-get-parent\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"Returns the item's parent item.\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"This procedure returns the item's parent item, if any.\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"The item's parent item\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"gimp-item-get-children\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"Returns the item's list of children.\00", align 1
@.str.74 = private unnamed_addr constant [119 x i8] c"This procedure returns the list of items which are children of the specified item. The order is topmost to bottommost.\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"num-children\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"num children\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"The item's number of children\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"child-ids\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"child ids\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"The item's list of children\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"gimp-item-get-name\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"Get the name of the specified item.\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"This procedure returns the specified item's name.\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"The item name\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"gimp-item-set-name\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Set the name of the specified item.\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"This procedure sets the specified item's name.\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"The new item name\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"gimp-item-get-visible\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"Get the visibility of the specified item.\00", align 1
@.str.92 = private unnamed_addr constant [56 x i8] c"This procedure returns the specified item's visibility.\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"The item visibility\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"gimp-item-set-visible\00", align 1
@.str.96 = private unnamed_addr constant [42 x i8] c"Set the visibility of the specified item.\00", align 1
@.str.97 = private unnamed_addr constant [53 x i8] c"This procedure sets the specified item's visibility.\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"The new item visibility\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"gimp-item-get-linked\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Get the linked state of the specified item.\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"This procedure returns the specified item's linked state.\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"Wolfgang Hofer\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"The item linked state (for moves)\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"gimp-item-set-linked\00", align 1
@.str.107 = private unnamed_addr constant [44 x i8] c"Set the linked state of the specified item.\00", align 1
@.str.108 = private unnamed_addr constant [55 x i8] c"This procedure sets the specified item's linked state.\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"The new item linked state\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"gimp-item-get-lock-content\00", align 1
@.str.111 = private unnamed_addr constant [52 x i8] c"Get the 'lock content' state of the specified item.\00", align 1
@.str.112 = private unnamed_addr constant [64 x i8] c"This procedure returns the specified item's lock content state.\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"2009\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"lock-content\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"lock content\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"Whether the item's contents are locked\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"gimp-item-set-lock-content\00", align 1
@.str.118 = private unnamed_addr constant [52 x i8] c"Set the 'lock content' state of the specified item.\00", align 1
@.str.119 = private unnamed_addr constant [61 x i8] c"This procedure sets the specified item's lock content state.\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"The new item 'lock content' state\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"gimp-item-get-tattoo\00", align 1
@.str.122 = private unnamed_addr constant [38 x i8] c"Get the tattoo of the specified item.\00", align 1
@.str.123 = private unnamed_addr constant [201 x i8] c"This procedure returns the specified item's tattoo. A tattoo is a unique and permanent identifier attached to a item that can be used to uniquely identify a item within an image even between sessions.\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"Jay Cox\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"tattoo\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"The item tattoo\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"gimp-item-set-tattoo\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"Set the tattoo of the specified item.\00", align 1
@.str.129 = private unnamed_addr constant [198 x i8] c"This procedure sets the specified item's tattoo. A tattoo is a unique and permanent identifier attached to a item that can be used to uniquely identify a item within an image even between sessions.\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"The new item tattoo\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"gimp-item-attach-parasite\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"Add a parasite to an item.\00", align 1
@.str.133 = private unnamed_addr constant [72 x i8] c"This procedure attaches a parasite to an item. It has no return values.\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"parasite\00", align 1
@.str.135 = private unnamed_addr constant [35 x i8] c"The parasite to attach to the item\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"gimp-item-detach-parasite\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"Removes a parasite from an item.\00", align 1
@.str.138 = private unnamed_addr constant [74 x i8] c"This procedure detaches a parasite from an item. It has no return values.\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"The name of the parasite to detach from the item.\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"gimp-item-get-parasite\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"Look up a parasite in an item\00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"Finds and returns the parasite that is attached to an item.\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"The name of the parasite to find\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"The found parasite\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"gimp-item-get-parasite-list\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"List all parasites.\00", align 1
@.str.147 = private unnamed_addr constant [64 x i8] c"Returns a list of all parasites currently attached the an item.\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Marc Lehmann\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"num-parasites\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"num parasites\00", align 1
@.str.152 = private unnamed_addr constant [33 x i8] c"The number of attached parasites\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"parasites\00", align 1
@.str.154 = private unnamed_addr constant [42 x i8] c"The names of currently attached parasites\00", align 1

; Function Attrs: nounwind uwtable
define void @register_item_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_valid_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_image_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %18, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call9)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct._Gimp* %21, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %19, %struct._GParamSpec* %call11)
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %22, %struct._GimpProcedure* %23)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = bitcast %struct._GimpProcedure* %24 to i8*
  call void @g_object_unref(i8* %25)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_delete_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = bitcast %struct._GimpProcedure* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %32, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call16)
  %33 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %33, %struct._GimpProcedure* %34)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %36 = bitcast %struct._GimpProcedure* %35 to i8*
  call void @g_object_unref(i8* %36)
  %call17 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_drawable_invoker)
  store %struct._GimpProcedure* %call17, %struct._GimpProcedure** %procedure, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call18)
  %39 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp20 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp20, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %43, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %41, %struct._GParamSpec* %call21)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %44, %struct._GParamSpec* %call22)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %45, %struct._GimpProcedure* %46)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_layer_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call24)
  %51 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %54, i32 0, i32 1
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %55, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call27)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call28)
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %57, %struct._GimpProcedure* %58)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to i8*
  call void @g_object_unref(i8* %60)
  %call29 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_text_layer_invoker)
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call30)
  %63 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0))
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* null)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp32 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %66, i32 0, i32 1
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp32, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %67, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call33)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call34)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call35 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_channel_invoker)
  store %struct._GimpProcedure* %call35, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_object_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call36)
  %75 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp38 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp38, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %79, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call39)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %80, %struct._GParamSpec* %call40)
  %81 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %81, %struct._GimpProcedure* %82)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %84 = bitcast %struct._GimpProcedure* %83 to i8*
  call void @g_object_unref(i8* %84)
  %call41 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_layer_mask_invoker)
  store %struct._GimpProcedure* %call41, %struct._GimpProcedure** %procedure, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_object_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call42)
  %87 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0))
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp44 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %90, i32 0, i32 1
  %91 = load %struct._Gimp*, %struct._Gimp** %gimp44, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %91, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %89, %struct._GParamSpec* %call45)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %92, %struct._GParamSpec* %call46)
  %93 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %93, %struct._GimpProcedure* %94)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = bitcast %struct._GimpProcedure* %95 to i8*
  call void @g_object_unref(i8* %96)
  %call47 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_selection_invoker)
  store %struct._GimpProcedure* %call47, %struct._GimpProcedure** %procedure, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call48)
  %99 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %102, i32 0, i32 1
  %103 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %103, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %101, %struct._GParamSpec* %call51)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %104, %struct._GParamSpec* %call52)
  %105 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %105, %struct._GimpProcedure* %106)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %108 = bitcast %struct._GimpProcedure* %107 to i8*
  call void @g_object_unref(i8* %108)
  %call53 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_vectors_invoker)
  store %struct._GimpProcedure* %call53, %struct._GimpProcedure** %procedure, align 8
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %110 = bitcast %struct._GimpProcedure* %109 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_object_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call54)
  %111 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0))
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %114 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp56 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %114, i32 0, i32 1
  %115 = load %struct._Gimp*, %struct._Gimp** %gimp56, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %115, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %113, %struct._GParamSpec* %call57)
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %116, %struct._GParamSpec* %call58)
  %117 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %117, %struct._GimpProcedure* %118)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %120 = bitcast %struct._GimpProcedure* %119 to i8*
  call void @g_object_unref(i8* %120)
  %call59 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_is_group_invoker)
  store %struct._GimpProcedure* %call59, %struct._GimpProcedure** %procedure, align 8
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %122 = bitcast %struct._GimpProcedure* %121 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call60)
  %123 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0))
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* null)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %126 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp62 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %126, i32 0, i32 1
  %127 = load %struct._Gimp*, %struct._Gimp** %gimp62, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %127, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call63)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %128, %struct._GParamSpec* %call64)
  %129 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %129, %struct._GimpProcedure* %130)
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %132 = bitcast %struct._GimpProcedure* %131 to i8*
  call void @g_object_unref(i8* %132)
  %call65 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_parent_invoker)
  store %struct._GimpProcedure* %call65, %struct._GimpProcedure** %procedure, align 8
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = bitcast %struct._GimpProcedure* %133 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_object_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call66)
  %135 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0))
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* null)
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %138 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp68 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %138, i32 0, i32 1
  %139 = load %struct._Gimp*, %struct._Gimp** %gimp68, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %139, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %137, %struct._GParamSpec* %call69)
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp70 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %141, i32 0, i32 1
  %142 = load %struct._Gimp*, %struct._Gimp** %gimp70, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), %struct._Gimp* %142, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %140, %struct._GParamSpec* %call71)
  %143 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %143, %struct._GimpProcedure* %144)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %146 = bitcast %struct._GimpProcedure* %145 to i8*
  call void @g_object_unref(i8* %146)
  %call72 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_children_invoker)
  store %struct._GimpProcedure* %call72, %struct._GimpProcedure** %procedure, align 8
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %148 = bitcast %struct._GimpProcedure* %147 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_object_get_type() #4
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call73)
  %149 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0))
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* null)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp75 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %152, i32 0, i32 1
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp75, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %153, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call76)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %154, %struct._GParamSpec* %call77)
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %155, %struct._GParamSpec* %call78)
  %156 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %156, %struct._GimpProcedure* %157)
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to i8*
  call void @g_object_unref(i8* %159)
  %call79 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_name_invoker)
  store %struct._GimpProcedure* %call79, %struct._GimpProcedure** %procedure, align 8
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %161 = bitcast %struct._GimpProcedure* %160 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_object_get_type() #4
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call80)
  %162 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0))
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %165 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp82 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %165, i32 0, i32 1
  %166 = load %struct._Gimp*, %struct._Gimp** %gimp82, align 8
  %call83 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %166, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %164, %struct._GParamSpec* %call83)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %167, %struct._GParamSpec* %call84)
  %168 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %168, %struct._GimpProcedure* %169)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %171 = bitcast %struct._GimpProcedure* %170 to i8*
  call void @g_object_unref(i8* %171)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_set_name_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %173 = bitcast %struct._GimpProcedure* %172 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call86)
  %174 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0))
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %177 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %177, i32 0, i32 1
  %178 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %178, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %176, %struct._GParamSpec* %call89)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %179, %struct._GParamSpec* %call90)
  %180 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %180, %struct._GimpProcedure* %181)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %183 = bitcast %struct._GimpProcedure* %182 to i8*
  call void @g_object_unref(i8* %183)
  %call91 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_visible_invoker)
  store %struct._GimpProcedure* %call91, %struct._GimpProcedure** %procedure, align 8
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %185 = bitcast %struct._GimpProcedure* %184 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_object_get_type() #4
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call92)
  %186 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i32 0, i32 0))
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %189 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp94 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %189, i32 0, i32 1
  %190 = load %struct._Gimp*, %struct._Gimp** %gimp94, align 8
  %call95 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %190, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %188, %struct._GParamSpec* %call95)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %191, %struct._GParamSpec* %call96)
  %192 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %192, %struct._GimpProcedure* %193)
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %195 = bitcast %struct._GimpProcedure* %194 to i8*
  call void @g_object_unref(i8* %195)
  %call97 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_set_visible_invoker)
  store %struct._GimpProcedure* %call97, %struct._GimpProcedure** %procedure, align 8
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %197 = bitcast %struct._GimpProcedure* %196 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_object_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call98)
  %198 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0))
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp100 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %201, i32 0, i32 1
  %202 = load %struct._Gimp*, %struct._Gimp** %gimp100, align 8
  %call101 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %202, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %200, %struct._GParamSpec* %call101)
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call102 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %203, %struct._GParamSpec* %call102)
  %204 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %204, %struct._GimpProcedure* %205)
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %207 = bitcast %struct._GimpProcedure* %206 to i8*
  call void @g_object_unref(i8* %207)
  %call103 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_linked_invoker)
  store %struct._GimpProcedure* %call103, %struct._GimpProcedure** %procedure, align 8
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %209 = bitcast %struct._GimpProcedure* %208 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_object_get_type() #4
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 %call104)
  %210 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0))
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %213 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp106 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %213, i32 0, i32 1
  %214 = load %struct._Gimp*, %struct._Gimp** %gimp106, align 8
  %call107 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %214, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %212, %struct._GParamSpec* %call107)
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %215, %struct._GParamSpec* %call108)
  %216 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %217 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %216, %struct._GimpProcedure* %217)
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %219 = bitcast %struct._GimpProcedure* %218 to i8*
  call void @g_object_unref(i8* %219)
  %call109 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_set_linked_invoker)
  store %struct._GimpProcedure* %call109, %struct._GimpProcedure** %procedure, align 8
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = bitcast %struct._GimpProcedure* %220 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_object_get_type() #4
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call110)
  %222 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.106, i32 0, i32 0))
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %225 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp112 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %225, i32 0, i32 1
  %226 = load %struct._Gimp*, %struct._Gimp** %gimp112, align 8
  %call113 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %226, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %224, %struct._GParamSpec* %call113)
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %227, %struct._GParamSpec* %call114)
  %228 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %228, %struct._GimpProcedure* %229)
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %231 = bitcast %struct._GimpProcedure* %230 to i8*
  call void @g_object_unref(i8* %231)
  %call115 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_lock_content_invoker)
  store %struct._GimpProcedure* %call115, %struct._GimpProcedure** %procedure, align 8
  %232 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %233 = bitcast %struct._GimpProcedure* %232 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_object_get_type() #4
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call116)
  %234 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.110, i32 0, i32 0))
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i8* null)
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %237 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp118 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %237, i32 0, i32 1
  %238 = load %struct._Gimp*, %struct._Gimp** %gimp118, align 8
  %call119 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %238, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %236, %struct._GParamSpec* %call119)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call120 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.116, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %239, %struct._GParamSpec* %call120)
  %240 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %240, %struct._GimpProcedure* %241)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %243 = bitcast %struct._GimpProcedure* %242 to i8*
  call void @g_object_unref(i8* %243)
  %call121 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_set_lock_content_invoker)
  store %struct._GimpProcedure* %call121, %struct._GimpProcedure** %procedure, align 8
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %245 = bitcast %struct._GimpProcedure* %244 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_object_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call122)
  %246 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i32 0, i32 0))
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i8* null)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp124 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %249, i32 0, i32 1
  %250 = load %struct._Gimp*, %struct._Gimp** %gimp124, align 8
  %call125 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %250, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %248, %struct._GParamSpec* %call125)
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %251, %struct._GParamSpec* %call126)
  %252 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %252, %struct._GimpProcedure* %253)
  %254 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %255 = bitcast %struct._GimpProcedure* %254 to i8*
  call void @g_object_unref(i8* %255)
  %call127 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_tattoo_invoker)
  store %struct._GimpProcedure* %call127, %struct._GimpProcedure** %procedure, align 8
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %257 = bitcast %struct._GimpProcedure* %256 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_object_get_type() #4
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call128)
  %258 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %258, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.121, i32 0, i32 0))
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %261 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp130 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %261, i32 0, i32 1
  %262 = load %struct._Gimp*, %struct._Gimp** %gimp130, align 8
  %call131 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %262, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %260, %struct._GParamSpec* %call131)
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call132 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.126, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %263, %struct._GParamSpec* %call132)
  %264 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %265 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %264, %struct._GimpProcedure* %265)
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %267 = bitcast %struct._GimpProcedure* %266 to i8*
  call void @g_object_unref(i8* %267)
  %call133 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_set_tattoo_invoker)
  store %struct._GimpProcedure* %call133, %struct._GimpProcedure** %procedure, align 8
  %268 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %269 = bitcast %struct._GimpProcedure* %268 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_object_get_type() #4
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call134)
  %270 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %270, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0))
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %271, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %273 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp136 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %273, i32 0, i32 1
  %274 = load %struct._Gimp*, %struct._Gimp** %gimp136, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %274, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %272, %struct._GParamSpec* %call137)
  %275 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call138 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.130, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %275, %struct._GParamSpec* %call138)
  %276 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %276, %struct._GimpProcedure* %277)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %279 = bitcast %struct._GimpProcedure* %278 to i8*
  call void @g_object_unref(i8* %279)
  %call139 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_attach_parasite_invoker)
  store %struct._GimpProcedure* %call139, %struct._GimpProcedure** %procedure, align 8
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %281 = bitcast %struct._GimpProcedure* %280 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_object_get_type() #4
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %281, i64 %call140)
  %282 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %282, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i32 0, i32 0))
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %285 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp142 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %285, i32 0, i32 1
  %286 = load %struct._Gimp*, %struct._Gimp** %gimp142, align 8
  %call143 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %286, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %284, %struct._GParamSpec* %call143)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call144 = call %struct._GParamSpec* @gimp_param_spec_parasite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.135, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %287, %struct._GParamSpec* %call144)
  %288 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %288, %struct._GimpProcedure* %289)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %291 = bitcast %struct._GimpProcedure* %290 to i8*
  call void @g_object_unref(i8* %291)
  %call145 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_detach_parasite_invoker)
  store %struct._GimpProcedure* %call145, %struct._GimpProcedure** %procedure, align 8
  %292 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %293 = bitcast %struct._GimpProcedure* %292 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_object_get_type() #4
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call146)
  %294 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i32 0, i32 0))
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %297 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp148 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %297, i32 0, i32 1
  %298 = load %struct._Gimp*, %struct._Gimp** %gimp148, align 8
  %call149 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %298, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %296, %struct._GParamSpec* %call149)
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call150 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.139, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %299, %struct._GParamSpec* %call150)
  %300 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %300, %struct._GimpProcedure* %301)
  %302 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %303 = bitcast %struct._GimpProcedure* %302 to i8*
  call void @g_object_unref(i8* %303)
  %call151 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_parasite_invoker)
  store %struct._GimpProcedure* %call151, %struct._GimpProcedure** %procedure, align 8
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %305 = bitcast %struct._GimpProcedure* %304 to %struct._GTypeInstance*
  %call152 = call i64 @gimp_object_get_type() #4
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %305, i64 %call152)
  %306 = bitcast %struct._GTypeInstance* %call153 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i32 0, i32 0))
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %309 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp154 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %309, i32 0, i32 1
  %310 = load %struct._Gimp*, %struct._Gimp** %gimp154, align 8
  %call155 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %310, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %308, %struct._GParamSpec* %call155)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call156 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call156)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call157 = call %struct._GParamSpec* @gimp_param_spec_parasite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.144, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %312, %struct._GParamSpec* %call157)
  %313 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %313, %struct._GimpProcedure* %314)
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %316 = bitcast %struct._GimpProcedure* %315 to i8*
  call void @g_object_unref(i8* %316)
  %call158 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_get_parasite_list_invoker)
  store %struct._GimpProcedure* %call158, %struct._GimpProcedure** %procedure, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %318 = bitcast %struct._GimpProcedure* %317 to %struct._GTypeInstance*
  %call159 = call i64 @gimp_object_get_type() #4
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 %call159)
  %319 = bitcast %struct._GTypeInstance* %call160 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %319, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0))
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %320, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* null)
  %321 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %322 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp161 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %322, i32 0, i32 1
  %323 = load %struct._Gimp*, %struct._Gimp** %gimp161, align 8
  %call162 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %323, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %321, %struct._GParamSpec* %call162)
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call163 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %324, %struct._GParamSpec* %call163)
  %325 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call164 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.154, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %325, %struct._GParamSpec* %call164)
  %326 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %326, %struct._GimpProcedure* %327)
  %328 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %329 = bitcast %struct._GimpProcedure* %328 to i8*
  call void @g_object_unref(i8* %329)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_valid_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %valid, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_item_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_is_removed(%struct._GimpItem* %18)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %19 = phi i1 [ false, %if.end.7 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, i32* %valid, align 4
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load i32, i32* %valid, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx15, i32 %23)
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_item_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_image_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %6)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx9, %struct._GimpImage* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to i8*
  %call1 = call i32 @g_object_is_floating(i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to i8*
  %call4 = call i8* @g_object_ref_sink(i8* %7)
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %9 = bitcast %struct._GimpItem* %8 to i8*
  call void @g_object_unref(i8* %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_drawable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %drawable = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %drawable, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_drawable_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %drawable, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %drawable, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %layer = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %layer, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_layer_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %layer, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %layer, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_text_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %text_layer = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %text_layer, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call1 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %4)
  store i32 %call1, i32* %text_layer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %text_layer, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %channel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %channel, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_channel_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %channel, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %channel, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_layer_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %layer_mask = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %layer_mask, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_layer_mask_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %layer_mask, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %layer_mask, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_selection_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %selection = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %selection, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_selection_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %selection, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %selection, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %vectors = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %vectors, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_vectors_get_type() #4
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  store i32 %16, i32* %vectors, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %vectors, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_is_group_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %group = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %group, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_viewable_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpViewable*
  %call3 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %6)
  %cmp = icmp ne %struct._GimpContainer* %call3, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %group, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %group, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_parent_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpItem* null, %struct._GimpItem** %parent, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call1 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %4)
  store %struct._GimpItem* %call1, %struct._GimpItem** %parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx7, %struct._GimpItem* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_children_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %num_children = alloca i32, align 4
  %child_ids = alloca i32*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_children, align 4
  store i32* null, i32** %child_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_viewable_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpViewable*
  %call3 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %6)
  store %struct._GimpContainer* %call3, %struct._GimpContainer** %children, align 8
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool4 = icmp ne %struct._GimpContainer* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %call6 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %8)
  store i32 %call6, i32* %num_children, align 4
  %9 = load i32, i32* %num_children, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %10 = load i32, i32* %num_children, align 4
  %conv = sext i32 %10 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %11 = bitcast i8* %call9 to i32*
  store i32* %11, i32** %child_ids, align 8
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %13 = bitcast %struct._GimpContainer* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_list_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpList*
  %list12 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %list12, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %16, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_ID(%struct._GimpItem* %20)
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %child_ids, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 %call16, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %23, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.5
  br label %if.end.19

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %29, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.end.20
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.end.20
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi %struct._GError* [ %31, %cond.true.22 ], [ null, %cond.false.23 ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond25)
  store %struct._GValueArray* %call26, %struct._GValueArray** %return_vals, align 8
  %32 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %32, 0
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %cond.end.24
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values29 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %33, i32 0, i32 1
  %34 = load %struct._GValue*, %struct._GValue** %values29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GValue, %struct._GValue* %34, i64 1
  %35 = load i32, i32* %num_children, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx30, i32 %35)
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %36, i32 0, i32 1
  %37 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i64 2
  %38 = load i32*, i32** %child_ids, align 8
  %39 = load i32, i32* %num_children, align 4
  %conv33 = sext i32 %39 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx32, i32* %38, i64 %conv33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %cond.end.24
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %40
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %5)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_set_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %name = alloca i8*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_item_rename(%struct._GimpItem* %8, i8* %9, %struct._GError** %10)
  store i32 %call6, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %13, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %visible = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %visible, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_visible(%struct._GimpItem* %6)
  store i32 %call3, i32* %visible, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %visible, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_set_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %visible = alloca i32, align 4
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %visible, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load i32, i32* %visible, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %8, i32 %9, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_linked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %linked = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %linked, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_linked(%struct._GimpItem* %6)
  store i32 %call3, i32* %linked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %linked, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_set_linked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %linked = alloca i32, align 4
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %linked, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load i32, i32* %linked, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %8, i32 %9, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_lock_content_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %lock_content = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %lock_content, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %6)
  store i32 %call3, i32* %lock_content, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %lock_content, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_set_lock_content_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %lock_content = alloca i32, align 4
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %lock_content, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %10 = bitcast %struct._GimpItem* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %12 = load i32, i32* %lock_content, align 4
  call void @gimp_item_set_lock_content(%struct._GimpItem* %11, i32 %12, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %15, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %tattoo = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %tattoo, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %6)
  store i32 %call3, i32* %tattoo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %tattoo, align 4
  call void @g_value_set_uint(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_set_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %tattoo = alloca i32, align 4
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_uint(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %tattoo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load i32, i32* %tattoo, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_attach_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_boxed(%struct._GValue* %arrayidx2)
  %5 = bitcast i8* %call3 to %struct._GimpParasite*
  store %struct._GimpParasite* %5, %struct._GimpParasite** %parasite, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %7, %struct._GimpParasite* %8, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

declare %struct._GParamSpec* @gimp_param_spec_parasite(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_detach_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %name = alloca i8*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = load i8*, i8** %name, align 8
  call void @gimp_item_parasite_detach(%struct._GimpItem* %6, i8* %7, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %name = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %6, i8* %7)
  %call5 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call4)
  store %struct._GimpParasite* %call5, %struct._GimpParasite** %parasite, align 8
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool6 = icmp ne %struct._GimpParasite* %8, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %11, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %14 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 1
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %18 = bitcast %struct._GimpParasite* %17 to i8*
  call void @g_value_take_boxed(%struct._GValue* %arrayidx14, i8* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_get_parasite_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %num_parasites = alloca i32, align 4
  %parasites = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_parasites, align 4
  store i8** null, i8*** %parasites, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call1 = call i8** @gimp_item_parasite_list(%struct._GimpItem* %4, i32* %num_parasites)
  store i8** %call1, i8*** %parasites, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %num_parasites, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load i8**, i8*** %parasites, align 8
  %17 = load i32, i32* %num_parasites, align 4
  %conv = sext i32 %17 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx9, i8** %16, i64 %conv)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %18
}

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

declare %struct._GimpItem* @gimp_value_get_item(%struct._GValue*, %struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_item_is_removed(%struct._GimpItem*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #1

declare i32 @g_object_is_floating(i8*) #1

declare i8* @g_object_ref_sink(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem*) #1

declare void @gimp_value_set_item(%struct._GValue*, %struct._GimpItem*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_int32array(%struct._GValue*, i32*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare i32 @gimp_item_can_lock_content(%struct._GimpItem*) #1

declare void @gimp_item_set_lock_content(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_item_get_tattoo(%struct._GimpItem*) #1

declare void @g_value_set_uint(%struct._GValue*, i32) #1

declare i32 @g_value_get_uint(%struct._GValue*) #1

declare void @gimp_item_set_tattoo(%struct._GimpItem*, i32) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare void @gimp_item_parasite_attach(%struct._GimpItem*, %struct._GimpParasite*, i32) #1

declare void @gimp_item_parasite_detach(%struct._GimpItem*, i8*, i32) #1

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

declare %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem*, i8*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare i8** @gimp_item_parasite_list(%struct._GimpItem*, i32*) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
