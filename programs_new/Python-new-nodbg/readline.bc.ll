; ModuleID = './readline.bc'
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
%struct.timeval = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._keymap_entry = type { i8, i32 (i32, i32)* }
%struct.readlinestate = type { %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct._hist_entry = type { i8*, i8*, i8* }
%struct._hist_state = type { %struct._hist_entry**, i32, i32, i32, i32 }
%struct.fd_set = type { [16 x i64] }

@readlinemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @doc_module, i32 0, i32 0), i64 48, %struct.PyMethodDef* getelementptr inbounds ([26 x %struct.PyMethodDef], [26 x %struct.PyMethodDef]* @readline_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @readline_traverse, i32 (%struct._object*)* @readline_clear, void (i8*)* @readline_free }, align 8
@PyOS_ReadlineFunctionPointer = external global i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, align 8
@.str = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@doc_module = internal global [71 x i8] c"Importing this module enables command line editing using GNU readline.\00", align 16
@readline_methods = internal global [26 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @parse_and_bind, i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @doc_parse_and_bind, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_line_buffer, i32 4, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @doc_get_line_buffer, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @insert_text, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @doc_insert_text, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @redisplay, i32 4, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @doc_redisplay, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @read_init_file, i32 1, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @doc_read_init_file, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @read_history_file, i32 1, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @doc_read_history_file, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @write_history_file, i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @doc_write_history_file, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_history_item, i32 1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @doc_get_history_item, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_current_history_length, i32 4, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @doc_get_current_history_length, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_history_length, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @set_history_length_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_history_length, i32 4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @get_history_length_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_completer, i32 1, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @doc_set_completer, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_completer, i32 4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @doc_get_completer, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_completion_type, i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @doc_get_completion_type, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_begidx, i32 4, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @doc_get_begidx, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_endidx, i32 4, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @doc_get_endidx, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_completer_delims, i32 1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @doc_set_completer_delims, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_add_history, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @doc_add_history, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_remove_history, i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @doc_remove_history, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_replace_history, i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @doc_replace_history, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_completer_delims, i32 4, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @doc_get_completer_delims, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_completion_display_matches_hook, i32 1, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @doc_set_completion_display_matches_hook, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_startup_hook, i32 1, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @doc_set_startup_hook, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_pre_input_hook, i32 1, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @doc_set_pre_input_hook, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_clear_history, i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @doc_clear_history, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"parse_and_bind\00", align 1
@doc_parse_and_bind = internal global [86 x i8] c"parse_and_bind(string) -> None\0AParse and execute single line of a readline init file.\00", align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"get_line_buffer\00", align 1
@doc_get_line_buffer = internal global [76 x i8] c"get_line_buffer() -> string\0Areturn the current contents of the line buffer.\00", align 16
@.str.3 = private unnamed_addr constant [12 x i8] c"insert_text\00", align 1
@doc_insert_text = internal global [63 x i8] c"insert_text(string) -> None\0AInsert text into the command line.\00", align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"redisplay\00", align 1
@doc_redisplay = internal global [110 x i8] c"redisplay() -> None\0AChange what's displayed on the screen to reflect the current\0Acontents of the line buffer.\00", align 16
@.str.5 = private unnamed_addr constant [15 x i8] c"read_init_file\00", align 1
@doc_read_init_file = internal global [121 x i8] c"read_init_file([filename]) -> None\0AParse a readline initialization file.\0AThe default filename is the last filename used.\00", align 16
@.str.6 = private unnamed_addr constant [18 x i8] c"read_history_file\00", align 1
@doc_read_history_file = internal global [104 x i8] c"read_history_file([filename]) -> None\0ALoad a readline history file.\0AThe default filename is ~/.history.\00", align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"write_history_file\00", align 1
@doc_write_history_file = internal global [105 x i8] c"write_history_file([filename]) -> None\0ASave a readline history file.\0AThe default filename is ~/.history.\00", align 16
@.str.8 = private unnamed_addr constant [17 x i8] c"get_history_item\00", align 1
@doc_get_history_item = internal global [83 x i8] c"get_history_item() -> string\0Areturn the current contents of history item at index.\00", align 16
@.str.9 = private unnamed_addr constant [27 x i8] c"get_current_history_length\00", align 1
@doc_get_current_history_length = internal global [96 x i8] c"get_current_history_length() -> integer\0Areturn the current (not the maximum) length of history.\00", align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"set_history_length\00", align 1
@set_history_length_doc = internal global [167 x i8] c"set_history_length(length) -> None\0Aset the maximal number of items which will be written to\0Athe history file. A negative length is used to inhibit\0Ahistory truncation.\00", align 16
@.str.11 = private unnamed_addr constant [19 x i8] c"get_history_length\00", align 1
@get_history_length_doc = internal global [105 x i8] c"get_history_length() -> int\0Areturn the maximum number of items that will be written to\0Athe history file.\00", align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"set_completer\00", align 1
@doc_set_completer = internal global [247 x i8] c"set_completer([function]) -> None\0ASet or remove the completer function.\0AThe function is called as function(text, state),\0Afor state in 0, 1, 2, ..., until it returns a non-string.\0AIt should return the next possible completion starting with 'text'.\00", align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"get_completer\00", align 1
@doc_get_completer = internal global [65 x i8] c"get_completer() -> function\0A\0AReturns current completer function.\00", align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"get_completion_type\00", align 1
@doc_get_completion_type = internal global [73 x i8] c"get_completion_type() -> int\0AGet the type of completion being attempted.\00", align 16
@.str.15 = private unnamed_addr constant [11 x i8] c"get_begidx\00", align 1
@doc_get_begidx = internal global [81 x i8] c"get_begidx() -> int\0Aget the beginning index of the readline tab-completion scope\00", align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"get_endidx\00", align 1
@doc_get_endidx = internal global [78 x i8] c"get_endidx() -> int\0Aget the ending index of the readline tab-completion scope\00", align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"set_completer_delims\00", align 1
@doc_set_completer_delims = internal global [89 x i8] c"set_completer_delims(string) -> None\0Aset the readline word delimiters for tab-completion\00", align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"add_history\00", align 1
@doc_add_history = internal global [61 x i8] c"add_history(string) -> None\0Aadd a line to the history buffer\00", align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"remove_history_item\00", align 1
@doc_remove_history = internal global [75 x i8] c"remove_history_item(pos) -> None\0Aremove history item given by its position\00", align 16
@.str.20 = private unnamed_addr constant [21 x i8] c"replace_history_item\00", align 1
@doc_replace_history = internal global [106 x i8] c"replace_history_item(pos, line) -> None\0Areplaces history item given by its position with contents of line\00", align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"get_completer_delims\00", align 1
@doc_get_completer_delims = internal global [85 x i8] c"get_completer_delims() -> string\0Aget the readline word delimiters for tab-completion\00", align 16
@.str.22 = private unnamed_addr constant [36 x i8] c"set_completion_display_matches_hook\00", align 1
@doc_set_completion_display_matches_hook = internal global [232 x i8] c"set_completion_display_matches_hook([function]) -> None\0ASet or remove the completion display function.\0AThe function is called as\0A  function(substitution, [matches], longest_match_length)\0Aonce each time matches need to be displayed.\00", align 16
@.str.23 = private unnamed_addr constant [17 x i8] c"set_startup_hook\00", align 1
@doc_set_startup_hook = internal global [165 x i8] c"set_startup_hook([function]) -> None\0ASet or remove the startup_hook function.\0AThe function is called with no arguments just\0Abefore readline prints the first prompt.\00", align 16
@.str.24 = private unnamed_addr constant [19 x i8] c"set_pre_input_hook\00", align 1
@doc_set_pre_input_hook = internal global [221 x i8] c"set_pre_input_hook([function]) -> None\0ASet or remove the pre_input_hook function.\0AThe function is called with no arguments after the first prompt\0Ahas been printed and just before readline starts reading input\0Acharacters.\00", align 16
@.str.25 = private unnamed_addr constant [14 x i8] c"clear_history\00", align 1
@doc_clear_history = internal global [60 x i8] c"clear_history() -> None\0AClear the current readline history.\00", align 16
@.str.26 = private unnamed_addr constant [17 x i8] c"s:parse_and_bind\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@rl_line_buffer = external global i8*, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"s:insert_text\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"|O:read_init_file\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"|O:read_history_file\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"|O:write_history_file\00", align 1
@_history_length = internal global i32 -1, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"i:index\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"i:set_history_length\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"completer\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"|O:set_%.50s\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.35 = private unnamed_addr constant [39 x i8] c"set_%.50s(func): argument not callable\00", align 1
@rl_completion_type = external global i32, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"s:set_completer_delims\00", align 1
@completer_word_break_characters = internal global i8* null, align 8
@rl_completer_word_break_characters = external global i8*, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"s:add_history\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"i:remove_history\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.39 = private unnamed_addr constant [33 x i8] c"History index cannot be negative\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"No history item at position %d\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"is:replace_history\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"completion_display_matches_hook\00", align 1
@rl_completion_display_matches_hook = external global void (i8**, i32, i32)*, align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"sOi\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"startup_hook\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"pre_input_hook\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"not enough memory to save locale\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rl_instream = external global %struct._IO_FILE*, align 8
@rl_outstream = external global %struct._IO_FILE*, align 8
@rl_catch_signals = external global i32, align 4
@completed_input_string = internal global i8* null, align 8
@readline_until_enter_or_signal.timeout = private unnamed_addr constant %struct.timeval { i64 0, i64 100000 }, align 8
@PyOS_InputHook = external global i32 ()*, align 8
@_PyOS_ReadlineTState = external global %struct._ts*, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@rl_readline_name = external global i8*, align 8
@emacs_meta_keymap = external global [257 x %struct._keymap_entry], align 16
@rl_startup_hook = external global i32 ()*, align 8
@rl_pre_input_hook = external global i32 ()*, align 8
@rl_attempted_completion_function = external global i8** (i8*, i32, i32)*, align 8
@.str.49 = private unnamed_addr constant [34 x i8] c" \09\0A`~!@#$%^&*()-=+[{]}\5C|;:'\22,<>/?\00", align 1
@rl_completion_append_character = external global i32, align 4
@rl_completion_suppress_append = external global i32, align 4
@rl_attempted_completion_over = external global i32, align 4
@.str.50 = private unnamed_addr constant [3 x i8] c"si\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_readline() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %mod_state = alloca %struct.readlinestate*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @readlinemodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %1)
  %2 = bitcast i8* %call1 to %struct.readlinestate*
  store %struct.readlinestate* %2, %struct.readlinestate** %mod_state, align 8
  store i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @call_readline, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8
  %3 = load %struct.readlinestate*, %struct.readlinestate** %mod_state, align 8
  call void @setup_readline(%struct.readlinestate* %3)
  %4 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i8* @PyModule_GetState(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i8* @call_readline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  %retval = alloca i8*, align 8
  %sys_stdin.addr = alloca %struct._IO_FILE*, align 8
  %sys_stdout.addr = alloca %struct._IO_FILE*, align 8
  %prompt.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %signal = alloca i32, align 4
  %saved_locale = alloca i8*, align 8
  %line = alloca i8*, align 8
  %length = alloca i32, align 4
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8
  store i8* %prompt, i8** %prompt.addr, align 8
  %call = call i8* @setlocale(i32 0, i8* null) #6
  %call1 = call noalias i8* @strdup(i8* %call) #6
  store i8* %call1, i8** %saved_locale, align 8
  %0 = load i8*, i8** %saved_locale, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0)) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, %2
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_outstream, align 8
  %cmp3 = icmp ne %struct._IO_FILE* %3, %4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @rl_instream, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** @rl_outstream, align 8
  call void @rl_prep_terminal(i32 1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  %7 = load i8*, i8** %prompt.addr, align 8
  %call6 = call i8* @readline_until_enter_or_signal(i8* %7, i32* %signal)
  store i8* %call6, i8** %p, align 8
  %8 = load i32, i32* %signal, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %saved_locale, align 8
  %call9 = call i8* @setlocale(i32 0, i8* %9) #6
  %10 = load i8*, i8** %saved_locale, align 8
  call void @free(i8* %10) #6
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %11 = load i8*, i8** %p, align 8
  %cmp11 = icmp eq i8* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.10
  %call13 = call i8* @PyMem_RawMalloc(i64 1)
  store i8* %call13, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %cmp14 = icmp ne i8* %12, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %13 = load i8*, i8** %p, align 8
  store i8 0, i8* %13, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %14 = load i8*, i8** %saved_locale, align 8
  %call17 = call i8* @setlocale(i32 0, i8* %14) #6
  %15 = load i8*, i8** %saved_locale, align 8
  call void @free(i8* %15) #6
  %16 = load i8*, i8** %p, align 8
  store i8* %16, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %17 = load i8*, i8** %p, align 8
  %call19 = call i64 @strlen(i8* %17) #8
  store i64 %call19, i64* %n, align 8
  %18 = load i64, i64* %n, align 8
  %cmp20 = icmp ugt i64 %18, 0
  br i1 %cmp20, label %if.then.21, label %if.end.32

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i32 @_py_get_history_length()
  store i32 %call22, i32* %length, align 4
  %19 = load i32, i32* %length, align 4
  %cmp23 = icmp sgt i32 %19, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.21
  %20 = load i32, i32* %length, align 4
  %call25 = call %struct._hist_entry* @history_get(i32 %20)
  %line26 = getelementptr inbounds %struct._hist_entry, %struct._hist_entry* %call25, i32 0, i32 0
  %21 = load i8*, i8** %line26, align 8
  store i8* %21, i8** %line, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.then.21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %line, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  %22 = load i8*, i8** %p, align 8
  %23 = load i8*, i8** %line, align 8
  %call28 = call i32 @strcmp(i8* %22, i8* %23) #8
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %24 = load i8*, i8** %p, align 8
  call void @add_history(i8* %24)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.18
  %25 = load i8*, i8** %p, align 8
  store i8* %25, i8** %q, align 8
  %26 = load i64, i64* %n, align 8
  %add = add i64 %26, 2
  %call33 = call i8* @PyMem_RawMalloc(i64 %add)
  store i8* %call33, i8** %p, align 8
  %27 = load i8*, i8** %p, align 8
  %cmp34 = icmp ne i8* %27, null
  br i1 %cmp34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %q, align 8
  %30 = load i64, i64* %n, align 8
  %call36 = call i8* @strncpy(i8* %28, i8* %29, i64 %30) #6
  %31 = load i64, i64* %n, align 8
  %32 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %32, i64 %31
  store i8 10, i8* %arrayidx, align 1
  %33 = load i64, i64* %n, align 8
  %add37 = add i64 %33, 1
  %34 = load i8*, i8** %p, align 8
  %arrayidx38 = getelementptr i8, i8* %34, i64 %add37
  store i8 0, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  %35 = load i8*, i8** %q, align 8
  call void @free(i8* %35) #6
  %36 = load i8*, i8** %saved_locale, align 8
  %call40 = call i8* @setlocale(i32 0, i8* %36) #6
  %37 = load i8*, i8** %saved_locale, align 8
  call void @free(i8* %37) #6
  %38 = load i8*, i8** %p, align 8
  store i8* %38, i8** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.end.16, %if.then.8
  %39 = load i8*, i8** %retval
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define internal void @setup_readline(%struct.readlinestate* %mod_state) #0 {
entry:
  %mod_state.addr = alloca %struct.readlinestate*, align 8
  %saved_locale = alloca i8*, align 8
  store %struct.readlinestate* %mod_state, %struct.readlinestate** %mod_state.addr, align 8
  %call = call i8* @setlocale(i32 0, i8* null) #6
  %call1 = call noalias i8* @strdup(i8* %call) #6
  store i8* %call1, i8** %saved_locale, align 8
  %0 = load i8*, i8** %saved_locale, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @using_history()
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8** @rl_readline_name, align 8
  %call2 = call i32 @rl_bind_key(i32 9, i32 (i32, i32)* @rl_insert)
  %call3 = call i32 @rl_bind_key_in_map(i32 9, i32 (i32, i32)* @rl_complete, %struct._keymap_entry* getelementptr inbounds ([257 x %struct._keymap_entry], [257 x %struct._keymap_entry]* @emacs_meta_keymap, i32 0, i32 0))
  %call4 = call i32 @rl_bind_key_in_map(i32 27, i32 (i32, i32)* @rl_complete, %struct._keymap_entry* getelementptr inbounds ([257 x %struct._keymap_entry], [257 x %struct._keymap_entry]* @emacs_meta_keymap, i32 0, i32 0))
  store i32 ()* @on_startup_hook, i32 ()** @rl_startup_hook, align 8
  store i32 ()* @on_pre_input_hook, i32 ()** @rl_pre_input_hook, align 8
  store i8** (i8*, i32, i32)* @flex_complete, i8** (i8*, i32, i32)** @rl_attempted_completion_function, align 8
  %call5 = call noalias i8* @strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0)) #6
  store i8* %call5, i8** @rl_completer_word_break_characters, align 8
  store i8* %call5, i8** @completer_word_break_characters, align 8
  %call6 = call %struct._object* @PyLong_FromLong(i64 0)
  %1 = load %struct.readlinestate*, %struct.readlinestate** %mod_state.addr, align 8
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %1, i32 0, i32 4
  store %struct._object* %call6, %struct._object** %begidx, align 8
  %call7 = call %struct._object* @PyLong_FromLong(i64 0)
  %2 = load %struct.readlinestate*, %struct.readlinestate** %mod_state.addr, align 8
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 5
  store %struct._object* %call7, %struct._object** %endidx, align 8
  %call8 = call i32 @rl_initialize()
  %3 = load i8*, i8** %saved_locale, align 8
  %call9 = call i8* @setlocale(i32 0, i8* %3) #6
  %4 = load i8*, i8** %saved_locale, align 8
  call void @free(i8* %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @readline_traverse(%struct._object* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %state = alloca %struct.readlinestate*, align 8
  %vret = alloca i32, align 4
  %vret9 = alloca i32, align 4
  %vret20 = alloca i32, align 4
  %vret31 = alloca i32, align 4
  %vret42 = alloca i32, align 4
  %vret53 = alloca i32, align 4
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.readlinestate*
  store %struct.readlinestate* %1, %struct.readlinestate** %state, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completion_display_matches_hook1 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %completion_display_matches_hook1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call2 = call i32 %4(%struct._object* %6, i8* %7)
  store i32 %call2, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %10 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %startup_hook, align 8
  %tobool7 = icmp ne %struct._object* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %do.body.6
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %startup_hook10 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %startup_hook10, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call11 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call11, i32* %vret9, align 4
  %16 = load i32, i32* %vret9, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  %17 = load i32, i32* %vret9, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.6
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %18 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %18, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %pre_input_hook, align 8
  %tobool18 = icmp ne %struct._object* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %do.body.17
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %pre_input_hook21 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %21, i32 0, i32 2
  %22 = load %struct._object*, %struct._object** %pre_input_hook21, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call22 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call22, i32* %vret20, align 4
  %24 = load i32, i32* %vret20, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.19
  %25 = load i32, i32* %vret20, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %do.body.17
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %26 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %26, i32 0, i32 3
  %27 = load %struct._object*, %struct._object** %completer, align 8
  %tobool29 = icmp ne %struct._object* %27, null
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %do.body.28
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completer32 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %29, i32 0, i32 3
  %30 = load %struct._object*, %struct._object** %completer32, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call33 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call33, i32* %vret31, align 4
  %32 = load i32, i32* %vret31, align 4
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.30
  %33 = load i32, i32* %vret31, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.body.28
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %34 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %34, i32 0, i32 4
  %35 = load %struct._object*, %struct._object** %begidx, align 8
  %tobool40 = icmp ne %struct._object* %35, null
  br i1 %tobool40, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %do.body.39
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %37 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %begidx43 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %37, i32 0, i32 4
  %38 = load %struct._object*, %struct._object** %begidx43, align 8
  %39 = load i8*, i8** %arg.addr, align 8
  %call44 = call i32 %36(%struct._object* %38, i8* %39)
  store i32 %call44, i32* %vret42, align 4
  %40 = load i32, i32* %vret42, align 4
  %tobool45 = icmp ne i32 %40, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.41
  %41 = load i32, i32* %vret42, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body.39
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %42 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %42, i32 0, i32 5
  %43 = load %struct._object*, %struct._object** %endidx, align 8
  %tobool51 = icmp ne %struct._object* %43, null
  br i1 %tobool51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %do.body.50
  %44 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %45 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %endidx54 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %45, i32 0, i32 5
  %46 = load %struct._object*, %struct._object** %endidx54, align 8
  %47 = load i8*, i8** %arg.addr, align 8
  %call55 = call i32 %44(%struct._object* %46, i8* %47)
  store i32 %call55, i32* %vret53, align 4
  %48 = load i32, i32* %vret53, align 4
  %tobool56 = icmp ne i32 %48, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.52
  %49 = load i32, i32* %vret53, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %do.body.50
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.60, %if.then.57, %if.then.46, %if.then.35, %if.then.24, %if.then.13, %if.then.4
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @readline_clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %state = alloca %struct.readlinestate*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.readlinestate*
  store %struct.readlinestate* %1, %struct.readlinestate** %state, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completion_display_matches_hook1 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %5, i32 0, i32 0
  store %struct._object* null, %struct._object** %completion_display_matches_hook1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %13 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %startup_hook, align 8
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %startup_hook11 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %16, i32 0, i32 1
  store %struct._object* null, %struct._object** %startup_hook11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %24 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %24, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %pre_input_hook, align 8
  store %struct._object* %25, %struct._object** %_py_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %27 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %pre_input_hook29 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %27, i32 0, i32 2
  store %struct._object* null, %struct._object** %pre_input_hook29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %28 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %30, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %33(%struct._object* %34)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %35 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %35, i32 0, i32 3
  %36 = load %struct._object*, %struct._object** %completer, align 8
  store %struct._object* %36, %struct._object** %_py_tmp44, align 8
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %37, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %38 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %completer47 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %38, i32 0, i32 3
  store %struct._object* null, %struct._object** %completer47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %39 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp49, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %41, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %44(%struct._object* %45)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %46 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %46, i32 0, i32 4
  %47 = load %struct._object*, %struct._object** %begidx, align 8
  store %struct._object* %47, %struct._object** %_py_tmp62, align 8
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %48, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %49 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %begidx65 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %49, i32 0, i32 4
  store %struct._object* null, %struct._object** %begidx65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %50 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp67, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %52, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %55(%struct._object* %56)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %57 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %57, i32 0, i32 5
  %58 = load %struct._object*, %struct._object** %endidx, align 8
  store %struct._object* %58, %struct._object** %_py_tmp80, align 8
  %59 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %59, null
  br i1 %cmp81, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.79
  %60 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8
  %endidx83 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %60, i32 0, i32 5
  store %struct._object* null, %struct._object** %endidx83, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %61 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp85, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %63, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %66(%struct._object* %67)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @readline_free(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8
  %0 = load i8*, i8** %m.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %call = call i32 @readline_clear(%struct._object* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parse_and_bind(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %copy = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8** %s)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %add = add i64 1, %call1
  %call2 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call2, i8** %copy, align 8
  %2 = load i8*, i8** %copy, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i8*, i8** %copy, align 8
  %4 = load i8*, i8** %s, align 8
  %call6 = call i8* @strcpy(i8* %3, i8* %4) #6
  %5 = load i8*, i8** %copy, align 8
  %call7 = call i32 @rl_parse_and_bind(i8* %5)
  %6 = load i8*, i8** %copy, align 8
  call void @PyMem_Free(i8* %6)
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_line_buffer(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load i8*, i8** @rl_line_buffer, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insert_text(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8** %s)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s, align 8
  %call1 = call i32 @rl_insert_text(i8* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @redisplay(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  call void @rl_redisplay()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_init_file(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %filename_bytes = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), %struct._object** %filename_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %filename_obj, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else.12

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %filename_obj, align 8
  %3 = bitcast %struct._object** %filename_bytes to i8*
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %2, i8* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %filename_bytes, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %4)
  %call7 = call i32 @rl_read_init_file(i8* %call6)
  %call8 = call i32* @__errno_location() #9
  store i32 %call7, i32* %call8, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %5 = load %struct._object*, %struct._object** %filename_bytes, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.15

if.else.12:                                       ; preds = %if.end
  %call13 = call i32 @rl_read_init_file(i8* null)
  %call14 = call i32* @__errno_location() #9
  store i32 %call13, i32* %call14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %do.end
  %call16 = call i32* @__errno_location() #9
  %12 = load i32, i32* %call16, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_history_file(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %filename_bytes = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), %struct._object** %filename_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %filename_obj, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else.12

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %filename_obj, align 8
  %3 = bitcast %struct._object** %filename_bytes to i8*
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %2, i8* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %filename_bytes, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %4)
  %call7 = call i32 @read_history(i8* %call6)
  %call8 = call i32* @__errno_location() #9
  store i32 %call7, i32* %call8, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %5 = load %struct._object*, %struct._object** %filename_bytes, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.15

if.else.12:                                       ; preds = %if.end
  %call13 = call i32 @read_history(i8* null)
  %call14 = call i32* @__errno_location() #9
  store i32 %call13, i32* %call14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %do.end
  %call16 = call i32* @__errno_location() #9
  %12 = load i32, i32* %call16, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @write_history_file(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %filename_bytes = alloca %struct._object*, align 8
  %filename = alloca i8*, align 8
  %err = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), %struct._object** %filename_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %filename_obj, align 8
  %cmp = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %filename_obj, align 8
  %3 = bitcast %struct._object** %filename_bytes to i8*
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %2, i8* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %filename_bytes, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %4)
  store i8* %call6, i8** %filename, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store %struct._object* null, %struct._object** %filename_bytes, align 8
  store i8* null, i8** %filename, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end.5
  %5 = load i8*, i8** %filename, align 8
  %call8 = call i32 @write_history(i8* %5)
  store i32 %call8, i32* %err, align 4
  %call9 = call i32* @__errno_location() #9
  store i32 %call8, i32* %call9, align 4
  %6 = load i32, i32* %err, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %if.end.14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.7
  %7 = load i32, i32* @_history_length, align 4
  %cmp11 = icmp sge i32 %7, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %8 = load i8*, i8** %filename, align 8
  %9 = load i32, i32* @_history_length, align 4
  %call13 = call i32 @history_truncate_file(i8* %8, i32 %9)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %10 = load %struct._object*, %struct._object** %filename_bytes, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp15 = icmp ne %struct._object* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %19 = load i32, i32* %err, align 4
  %call24 = call i32* @__errno_location() #9
  store i32 %19, i32* %call24, align 4
  %call25 = call i32* @__errno_location() #9
  %20 = load i32, i32* %call25, align 4
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.23
  %21 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call28 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %do.end.23
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %if.then.4, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_history_item(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %idx = alloca i32, align 4
  %hist_ent = alloca %struct._hist_entry*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %idx, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32* %idx)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %idx, align 4
  %call1 = call %struct._hist_entry* @history_get(i32 %1)
  store %struct._hist_entry* %call1, %struct._hist_entry** %hist_ent, align 8
  %tobool2 = icmp ne %struct._hist_entry* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._hist_entry*, %struct._hist_entry** %hist_ent, align 8
  %line = getelementptr inbounds %struct._hist_entry, %struct._hist_entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %line, align 8
  %call4 = call %struct._object* @PyUnicode_FromString(i8* %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_current_history_length(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %call = call i32 @_py_get_history_length()
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_history_length(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @_history_length, align 4
  store i32 %0, i32* %length, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %length, align 4
  store i32 %2, i32* @_history_length, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_history_length(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load i32, i32* @_history_length, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct._object** %completer, %struct._object* %1)
  ret %struct._object* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completer(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %completer, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2)
  %3 = bitcast i8* %call3 to %struct.readlinestate*
  %completer4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %completer4, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc5 = add i64 %5, 1
  store i64 %inc5, i64* %ob_refcnt, align 8
  %call6 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call7 = call i8* @PyModule_GetState(%struct._object* %call6)
  %6 = bitcast i8* %call7 to %struct.readlinestate*
  %completer8 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %completer8, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completion_type(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load i32, i32* @rl_completion_type, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_begidx(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %begidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2)
  %3 = bitcast i8* %call3 to %struct.readlinestate*
  %begidx4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %begidx4, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_endidx(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %endidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2)
  %3 = bitcast i8* %call3 to %struct.readlinestate*
  %endidx4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 5
  %4 = load %struct._object*, %struct._object** %endidx4, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completer_delims(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %break_chars = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8** %break_chars)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @completer_word_break_characters, align 8
  call void @free(i8* %1) #6
  %2 = load i8*, i8** %break_chars, align 8
  %call1 = call noalias i8* @strdup(i8* %2) #6
  store i8* %call1, i8** @completer_word_break_characters, align 8
  %3 = load i8*, i8** @completer_word_break_characters, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** @completer_word_break_characters, align 8
  store i8* %4, i8** @rl_completer_word_break_characters, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_add_history(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %line = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8** %line)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %line, align 8
  call void @add_history(i8* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_remove_history(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %entry_number = alloca i32, align 4
  %entry1 = alloca %struct._hist_entry*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32* %entry_number)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %entry_number, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %entry_number, align 4
  %call4 = call %struct._hist_entry* @remove_history(i32 %3)
  store %struct._hist_entry* %call4, %struct._hist_entry** %entry1, align 8
  %4 = load %struct._hist_entry*, %struct._hist_entry** %entry1, align 8
  %tobool5 = icmp ne %struct._hist_entry* %4, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %6 = load i32, i32* %entry_number, align 4
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i32 %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %7 = load %struct._hist_entry*, %struct._hist_entry** %entry1, align 8
  call void @_py_free_history_entry(%struct._hist_entry* %7)
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_replace_history(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %entry_number = alloca i32, align 4
  %line = alloca i8*, align 8
  %old_entry = alloca %struct._hist_entry*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32* %entry_number, i8** %line)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %entry_number, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %entry_number, align 4
  %4 = load i8*, i8** %line, align 8
  %call3 = call %struct._hist_entry* @replace_history_entry(i32 %3, i8* %4, i8* null)
  store %struct._hist_entry* %call3, %struct._hist_entry** %old_entry, align 8
  %5 = load %struct._hist_entry*, %struct._hist_entry** %old_entry, align 8
  %tobool4 = icmp ne %struct._hist_entry* %5, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %7 = load i32, i32* %entry_number, align 4
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i32 %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %8 = load %struct._hist_entry*, %struct._hist_entry** %old_entry, align 8
  call void @_py_free_history_entry(%struct._hist_entry* %8)
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.1, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completer_delims(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  %0 = load i8*, i8** @rl_completer_word_break_characters, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completion_display_matches_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 0
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), %struct._object** %completion_display_matches_hook, %struct._object* %1)
  store %struct._object* %call2, %struct._object** %result, align 8
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3)
  %2 = bitcast i8* %call4 to %struct.readlinestate*
  %completion_display_matches_hook5 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %completion_display_matches_hook5, align 8
  %tobool = icmp ne %struct._object* %3, null
  %cond = select i1 %tobool, void (i8**, i32, i32)* @on_completion_display_matches_hook, void (i8**, i32, i32)* null
  store void (i8**, i32, i32)* %cond, void (i8**, i32, i32)** @rl_completion_display_matches_hook, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_startup_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), %struct._object** %startup_hook, %struct._object* %1)
  ret %struct._object* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_pre_input_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), %struct._object** %pre_input_hook, %struct._object* %1)
  ret %struct._object* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_clear_history(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8
  call void @clear_history()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @rl_parse_and_bind(i8*) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @rl_insert_text(i8*) #1

declare void @rl_redisplay() #1

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

declare i32 @rl_read_init_file(i8*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i32 @read_history(i8*) #1

declare i32 @write_history(i8*) #1

declare i32 @history_truncate_file(i8*, i32) #1

declare %struct._hist_entry* @history_get(i32) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @_py_get_history_length() #0 {
entry:
  %hist_st = alloca %struct._hist_state*, align 8
  %length = alloca i32, align 4
  %call = call %struct._hist_state* @history_get_history_state()
  store %struct._hist_state* %call, %struct._hist_state** %hist_st, align 8
  %0 = load %struct._hist_state*, %struct._hist_state** %hist_st, align 8
  %length1 = getelementptr inbounds %struct._hist_state, %struct._hist_state* %0, i32 0, i32 2
  %1 = load i32, i32* %length1, align 4
  store i32 %1, i32* %length, align 4
  %2 = load %struct._hist_state*, %struct._hist_state** %hist_st, align 8
  %3 = bitcast %struct._hist_state* %2 to i8*
  call void @free(i8* %3) #6
  %4 = load i32, i32* %length, align 4
  ret i32 %4
}

declare %struct._hist_state* @history_get_history_state() #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_hook(i8* %funcname, %struct._object** %hook_var, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %funcname.addr = alloca i8*, align 8
  %hook_var.addr = alloca %struct._object**, align 8
  %args.addr = alloca %struct._object*, align 8
  %function = alloca %struct._object*, align 8
  %buf = alloca [80 x i8], align 16
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store %struct._object** %hook_var, %struct._object*** %hook_var.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %function, align 8
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %funcname.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* %0)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %arraydecay1 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* %arraydecay1, %struct._object** %function)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %function, align 8
  %cmp = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp, label %if.then.3, label %if.else.12

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %3 = load %struct._object**, %struct._object*** %hook_var.addr, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp4 = icmp ne %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  %6 = load %struct._object**, %struct._object*** %hook_var.addr, align 8
  store %struct._object* null, %struct._object** %6, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %if.end.38

if.else.12:                                       ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %function, align 8
  %call13 = call i32 @PyCallable_Check(%struct._object* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.35

if.then.15:                                       ; preds = %if.else.12
  %15 = load %struct._object**, %struct._object*** %hook_var.addr, align 8
  %16 = load %struct._object*, %struct._object** %15, align 8
  store %struct._object* %16, %struct._object** %tmp, align 8
  %17 = load %struct._object*, %struct._object** %function, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %function, align 8
  %20 = load %struct._object**, %struct._object*** %hook_var.addr, align 8
  store %struct._object* %19, %struct._object** %20, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp19 = icmp ne %struct._object* %22, null
  br i1 %cmp19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %do.body.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp23, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %25, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %28(%struct._object* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.17
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.37

if.else.35:                                       ; preds = %if.else.12
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %31 = load i8*, i8** %funcname.addr, align 8
  %call36 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i8* %31)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %do.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end.11
  %32 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc39 = add i64 %32, 1
  store i64 %inc39, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.else.35, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

declare void @add_history(i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._hist_entry* @remove_history(i32) #1

; Function Attrs: nounwind uwtable
define internal void @_py_free_history_entry(%struct._hist_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct._hist_entry*, align 8
  %data = alloca i8*, align 8
  store %struct._hist_entry* %entry1, %struct._hist_entry** %entry.addr, align 8
  %0 = load %struct._hist_entry*, %struct._hist_entry** %entry.addr, align 8
  %call = call i8* @free_history_entry(%struct._hist_entry* %0)
  store i8* %call, i8** %data, align 8
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* %1) #6
  ret void
}

declare i8* @free_history_entry(%struct._hist_entry*) #1

declare %struct._hist_entry* @replace_history_entry(i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @on_completion_display_matches_hook(i8** %matches, i32 %num_matches, i32 %max_length) #0 {
entry:
  %matches.addr = alloca i8**, align 8
  %num_matches.addr = alloca i32, align 4
  %max_length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  store i8** %matches, i8*** %matches.addr, align 8
  store i32 %num_matches, i32* %num_matches.addr, align 4
  store i32 %max_length, i32* %max_length.addr, align 4
  store %struct._object* null, %struct._object** %m, align 8
  store %struct._object* null, %struct._object** %s, align 8
  store %struct._object* null, %struct._object** %r, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %0 = load i32, i32* %num_matches.addr, align 4
  %conv = sext i32 %0 to i64
  %call1 = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call1, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_matches.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load i8**, i8*** %matches.addr, align 8
  %arrayidx = getelementptr i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %6)
  store %struct._object* %call5, %struct._object** %s, align 8
  %7 = load %struct._object*, %struct._object** %s, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %error

if.end.9:                                         ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %m, align 8
  %9 = load i32, i32* %i, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load %struct._object*, %struct._object** %s, align 8
  %call11 = call i32 @PyList_SetItem(%struct._object* %8, i64 %conv10, %struct._object* %10)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  br label %error

if.end.15:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call16 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call17 = call i8* @PyModule_GetState(%struct._object* %call16)
  %12 = bitcast i8* %call17 to %struct.readlinestate*
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %12, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8
  %14 = load i8**, i8*** %matches.addr, align 8
  %arrayidx18 = getelementptr i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx18, align 8
  %16 = load %struct._object*, %struct._object** %m, align 8
  %17 = load i32, i32* %max_length.addr, align 4
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* %15, %struct._object* %16, i32 %17)
  store %struct._object* %call19, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  %18 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  store %struct._object* null, %struct._object** %m, align 8
  %25 = load %struct._object*, %struct._object** %r, align 8
  %cmp24 = icmp eq %struct._object* %25, null
  br i1 %cmp24, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %26 = load %struct._object*, %struct._object** %r, align 8
  %cmp26 = icmp ne %struct._object* %26, @_Py_NoneStruct
  br i1 %cmp26, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %r, align 8
  %call28 = call i64 @PyLong_AsLong(%struct._object* %27)
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.34

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call32, null
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.31, %do.end
  br label %error

if.end.34:                                        ; preds = %land.lhs.true.31, %land.lhs.true, %lor.lhs.false
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.34
  %28 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %28, %struct._object** %_py_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp36 = icmp ne %struct._object* %29, null
  br i1 %cmp36, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %do.body.35
  store %struct._object* null, %struct._object** %r, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %30 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp40, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %32, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %35(%struct._object* %36)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.35
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br i1 false, label %if.then.53, label %if.end.91

if.then.53:                                       ; preds = %do.end.52
  br label %error

error:                                            ; preds = %if.then.53, %if.then.33, %if.then.14, %if.then.8, %if.then
  call void @PyErr_Clear()
  br label %do.body.54

do.body.54:                                       ; preds = %error
  %37 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp55 = icmp ne %struct._object* %38, null
  br i1 %cmp55, label %if.then.57, label %if.end.70

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp59, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %41, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.58
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.58
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %44(%struct._object* %45)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %do.body.54
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %46 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp73, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %47, null
  br i1 %cmp74, label %if.then.76, label %if.end.89

if.then.76:                                       ; preds = %do.body.72
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp78, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %50, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.77
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.77
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %53(%struct._object* %54)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.body.72
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %do.end.52
  %55 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %55)
  ret void
}

declare i32 @PyGILState_Ensure() #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare void @PyGILState_Release(i32) #1

declare void @clear_history() #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

declare void @rl_prep_terminal(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @readline_until_enter_or_signal(i8* %prompt, i32* %signal) #0 {
entry:
  %prompt.addr = alloca i8*, align 8
  %signal.addr = alloca i32*, align 8
  %not_done_reading = alloca i8*, align 8
  %selectset = alloca %struct.fd_set, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %has_input = alloca i32, align 4
  %err = alloca i32, align 4
  %timeout = alloca %struct.timeval, align 8
  %timeoutp = alloca %struct.timeval*, align 8
  %s = alloca i32, align 4
  store i8* %prompt, i8** %prompt.addr, align 8
  store i32* %signal, i32** %signal.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %not_done_reading, align 8
  %0 = load i32*, i32** %signal.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* @rl_catch_signals, align 4
  %1 = load i8*, i8** %prompt.addr, align 8
  call void @rl_callback_handler_install(i8* %1, void (i8*)* @rlhandler)
  br label %do.body

do.body:                                          ; preds = %entry
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %selectset, i32 0, i32 0
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %2 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #6, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %2, 0
  %asmresult1 = extractvalue { i64, i64* } %2, 1
  %3 = trunc i64 %asmresult to i32
  store i32 %3, i32* %__d0, align 4
  %4 = ptrtoint i64* %asmresult1 to i64
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %not_done_reading, align 8
  store i8* %6, i8** @completed_input_string, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %do.end
  %7 = load i8*, i8** @completed_input_string, align 8
  %8 = load i8*, i8** %not_done_reading, align 8
  %cmp = icmp eq i8* %7, %8
  br i1 %cmp, label %while.body, label %while.end.26

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %has_input, align 4
  store i32 0, i32* %err, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.14, %while.body
  %9 = load i32, i32* %has_input, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.2
  %10 = bitcast %struct.timeval* %timeout to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.timeval* @readline_until_enter_or_signal.timeout to i8*), i64 16, i32 8, i1 false)
  store %struct.timeval* null, %struct.timeval** %timeoutp, align 8
  %11 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8
  %tobool4 = icmp ne i32 ()* %11, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.3
  store %struct.timeval* %timeout, %struct.timeval** %timeoutp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %12) #6
  %rem = srem i32 %call, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8
  %call5 = call i32 @fileno(%struct._IO_FILE* %13) #6
  %div = sdiv i32 %call5, 64
  %idxprom = sext i32 %div to i64
  %fds_bits6 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %selectset, i32 0, i32 0
  %arrayidx7 = getelementptr [16 x i64], [16 x i64]* %fds_bits6, i32 0, i64 %idxprom
  %14 = load i64, i64* %arrayidx7, align 8
  %or = or i64 %14, %shl
  store i64 %or, i64* %arrayidx7, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8
  %call8 = call i32 @fileno(%struct._IO_FILE* %15) #6
  %add = add i32 %call8, 1
  %16 = load %struct.timeval*, %struct.timeval** %timeoutp, align 8
  %call9 = call i32 @select(i32 %add, %struct.fd_set* %selectset, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %16)
  store i32 %call9, i32* %has_input, align 4
  %call10 = call i32* @__errno_location() #9
  %17 = load i32, i32* %call10, align 4
  store i32 %17, i32* %err, align 4
  %18 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8
  %tobool11 = icmp ne i32 ()* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %19 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8
  %call13 = call i32 %19()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %20 = load i32, i32* %has_input, align 4
  %cmp15 = icmp sgt i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.end
  call void @rl_callback_read_char()
  br label %if.end.25

if.else:                                          ; preds = %while.end
  %21 = load i32, i32* %err, align 4
  %cmp17 = icmp eq i32 %21, 4
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.else
  %22 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8
  call void @PyEval_RestoreThread(%struct._ts* %22)
  %call19 = call i32 @PyErr_CheckSignals()
  store i32 %call19, i32* %s, align 4
  %call20 = call %struct._ts* @PyEval_SaveThread()
  %23 = load i32, i32* %s, align 4
  %cmp21 = icmp slt i32 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  call void @rl_free_line_state()
  call void @rl_cleanup_after_signal()
  call void @rl_callback_handler_remove()
  %24 = load i32*, i32** %signal.addr, align 8
  store i32 1, i32* %24, align 4
  store i8* null, i8** @completed_input_string, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.16
  br label %while.cond

while.end.26:                                     ; preds = %while.cond
  %25 = load i8*, i8** @completed_input_string, align 8
  ret i8* %25
}

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @rl_callback_handler_install(i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @rlhandler(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  store i8* %0, i8** @completed_input_string, align 8
  call void @rl_callback_handler_remove()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare void @rl_callback_read_char() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare i32 @PyErr_CheckSignals() #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @rl_free_line_state() #1

declare void @rl_cleanup_after_signal() #1

declare void @rl_callback_handler_remove() #1

declare void @using_history() #1

declare i32 @rl_bind_key(i32, i32 (i32, i32)*) #1

declare i32 @rl_insert(i32, i32) #1

declare i32 @rl_bind_key_in_map(i32, i32 (i32, i32)*, %struct._keymap_entry*) #1

declare i32 @rl_complete(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @on_startup_hook() #0 {
entry:
  %r = alloca i32, align 4
  %gilstate = alloca i32, align 4
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1)
  %0 = bitcast i8* %call2 to %struct.readlinestate*
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %startup_hook, align 8
  %call3 = call i32 @on_hook(%struct._object* %1)
  store i32 %call3, i32* %r, align 4
  %2 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %2)
  %3 = load i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @on_pre_input_hook() #0 {
entry:
  %r = alloca i32, align 4
  %gilstate = alloca i32, align 4
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1)
  %0 = bitcast i8* %call2 to %struct.readlinestate*
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %pre_input_hook, align 8
  %call3 = call i32 @on_hook(%struct._object* %1)
  store i32 %call3, i32* %r, align 4
  %2 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %2)
  %3 = load i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i8** @flex_complete(i8* %text, i32 %start, i32 %end) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %result = alloca i8**, align 8
  %gilstate = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  store i32 0, i32* @rl_completion_append_character, align 4
  store i32 0, i32* @rl_completion_suppress_append, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1)
  %0 = bitcast i8* %call2 to %struct.readlinestate*
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %begidx, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %call10 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call11 = call i8* @PyModule_GetState(%struct._object* %call10)
  %10 = bitcast i8* %call11 to %struct.readlinestate*
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %10, i32 0, i32 5
  %11 = load %struct._object*, %struct._object** %endidx, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp9, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  %cmp12 = icmp ne %struct._object* %12, null
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.body.8
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp15, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %15, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %18(%struct._object* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %20 = load i32, i32* %start.addr, align 4
  %conv = sext i32 %20 to i64
  %call27 = call %struct._object* @PyLong_FromLong(i64 %conv)
  %call28 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call29 = call i8* @PyModule_GetState(%struct._object* %call28)
  %21 = bitcast i8* %call29 to %struct.readlinestate*
  %begidx30 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %21, i32 0, i32 4
  store %struct._object* %call27, %struct._object** %begidx30, align 8
  %22 = load i32, i32* %end.addr, align 4
  %conv31 = sext i32 %22 to i64
  %call32 = call %struct._object* @PyLong_FromLong(i64 %conv31)
  %call33 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call34 = call i8* @PyModule_GetState(%struct._object* %call33)
  %23 = bitcast i8* %call34 to %struct.readlinestate*
  %endidx35 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %23, i32 0, i32 5
  store %struct._object* %call32, %struct._object** %endidx35, align 8
  %24 = load i8*, i8** %text.addr, align 8
  %call36 = call i8** @rl_completion_matches(i8* %24, i8* (i8*, i32)* @on_completion)
  store i8** %call36, i8*** %result, align 8
  %25 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %25)
  %26 = load i8**, i8*** %result, align 8
  ret i8** %26
}

declare i32 @rl_initialize() #1

; Function Attrs: nounwind uwtable
define internal i32 @on_hook(%struct._object* %func) #0 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct._object*, %struct._object** %func.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %func.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %r, align 8
  %2 = load %struct._object*, %struct._object** %r, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %r, align 8
  %cmp3 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %result, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %r, align 8
  %call5 = call i64 @PyLong_AsLong(%struct._object* %4)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %result, align 4
  %5 = load i32, i32* %result, align 4
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.else
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call8, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %error

if.end.10:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %6 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %done

error:                                            ; preds = %if.then.9, %if.then.2
  call void @PyErr_Clear()
  br label %do.body.17

do.body.17:                                       ; preds = %error
  %13 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %14, null
  br i1 %cmp18, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %do.body.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp22, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %17, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %20(%struct._object* %21)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.17
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %done

done:                                             ; preds = %do.end.34, %do.end
  %22 = load i32, i32* %result, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.35:                                        ; preds = %entry
  %23 = load i32, i32* %result, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %done
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i8** @rl_completion_matches(i8*, i8* (i8*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal i8* @on_completion(i8* %text, i32 %state) #0 {
entry:
  %retval = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %r = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %s = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i8* null, i8** %result, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct.readlinestate*
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %completer, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %call2 = call i32 @PyGILState_Ensure()
  store i32 %call2, i32* %gilstate, align 4
  store i32 1, i32* @rl_attempted_completion_over, align 4
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule)
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3)
  %2 = bitcast i8* %call4 to %struct.readlinestate*
  %completer5 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %completer5, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i32, i32* %state.addr, align 4
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* %4, i32 %5)
  store %struct._object* %call6, %struct._object** %r, align 8
  %6 = load %struct._object*, %struct._object** %r, align 8
  %cmp7 = icmp eq %struct._object* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %r, align 8
  %cmp9 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  store i8* null, i8** %result, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %r, align 8
  %call11 = call i8* @PyUnicode_AsUTF8(%struct._object* %8)
  store i8* %call11, i8** %s, align 8
  %9 = load i8*, i8** %s, align 8
  %cmp12 = icmp eq i8* %9, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  br label %error

if.end.14:                                        ; preds = %if.else
  %10 = load i8*, i8** %s, align 8
  %call15 = call noalias i8* @strdup(i8* %10) #6
  store i8* %call15, i8** %result, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %if.then.10
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %11 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else.19:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %done

error:                                            ; preds = %if.then.13, %if.then.8
  call void @PyErr_Clear()
  br label %do.body.21

do.body.21:                                       ; preds = %error
  %18 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp22 = icmp ne %struct._object* %19, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %do.body.21
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp25, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %22, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %25(%struct._object* %26)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %do.body.21
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %done

done:                                             ; preds = %do.end.36, %do.end
  %27 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %27)
  %28 = load i8*, i8** %result, align 8
  store i8* %28, i8** %retval
  br label %return

if.end.37:                                        ; preds = %entry
  %29 = load i8*, i8** %result, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %if.end.37, %done
  %30 = load i8*, i8** %retval
  ret i8* %30
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 331388}
