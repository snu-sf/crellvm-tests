; ModuleID = 'programs_new/Python-new/readline.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !946
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !946
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !378, metadata !947), !dbg !948
  %1 = bitcast %struct.readlinestate** %mod_state to i8*, !dbg !949
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !949
  call void @llvm.dbg.declare(metadata %struct.readlinestate** %mod_state, metadata !379, metadata !947), !dbg !950
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @readlinemodule, i32 1013), !dbg !951
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !952, !tbaa !953
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !957, !tbaa !953
  %cmp = icmp eq %struct._object* %2, null, !dbg !959
  br i1 %cmp, label %if.then, label %if.end, !dbg !960

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !961

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !962, !tbaa !953
  %call1 = call i8* @PyModule_GetState(%struct._object* %3), !dbg !963
  %4 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !964
  store %struct.readlinestate* %4, %struct.readlinestate** %mod_state, align 8, !dbg !965, !tbaa !953
  store i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @call_readline, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !966, !tbaa !953
  %5 = load %struct.readlinestate*, %struct.readlinestate** %mod_state, align 8, !dbg !967, !tbaa !953
  call void @setup_readline(%struct.readlinestate* %5), !dbg !968
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !969, !tbaa !953
  store %struct._object* %6, %struct._object** %retval, !dbg !970
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !970

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.readlinestate** %mod_state to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !971
  %8 = bitcast %struct._object** %m to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !971
  %9 = load %struct._object*, %struct._object** %retval, !dbg !971
  ret %struct._object* %9, !dbg !971
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i8* @PyModule_GetState(%struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  %line = alloca i8*, align 8
  %length = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdin.addr, metadata !683, metadata !947), !dbg !972
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdout.addr, metadata !684, metadata !947), !dbg !973
  store i8* %prompt, i8** %prompt.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %prompt.addr, metadata !685, metadata !947), !dbg !974
  %0 = bitcast i64* %n to i8*, !dbg !975
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !975
  call void @llvm.dbg.declare(metadata i64* %n, metadata !686, metadata !947), !dbg !976
  %1 = bitcast i8** %p to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !977
  call void @llvm.dbg.declare(metadata i8** %p, metadata !687, metadata !947), !dbg !978
  %2 = bitcast i8** %q to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !977
  call void @llvm.dbg.declare(metadata i8** %q, metadata !688, metadata !947), !dbg !979
  %3 = bitcast i32* %signal to i8*, !dbg !980
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !980
  call void @llvm.dbg.declare(metadata i32* %signal, metadata !689, metadata !947), !dbg !981
  %4 = bitcast i8** %saved_locale to i8*, !dbg !982
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !982
  call void @llvm.dbg.declare(metadata i8** %saved_locale, metadata !690, metadata !947), !dbg !983
  %call = call i8* @setlocale(i32 0, i8* null) #1, !dbg !984
  %call1 = call noalias i8* @__strdup(i8* %call) #1, !dbg !985
  store i8* %call1, i8** %saved_locale, align 8, !dbg !983, !tbaa !953
  %5 = load i8*, i8** %saved_locale, align 8, !dbg !986, !tbaa !953
  %tobool = icmp ne i8* %5, null, !dbg !986
  br i1 %tobool, label %if.end, label %if.then, !dbg !988

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !989
  unreachable, !dbg !989

if.end:                                           ; preds = %entry
  %call2 = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0)) #1, !dbg !990
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !991, !tbaa !953
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8, !dbg !993, !tbaa !953
  %cmp = icmp ne %struct._IO_FILE* %6, %7, !dbg !994
  br i1 %cmp, label %if.then.4, label %lor.lhs.false, !dbg !995

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !996, !tbaa !953
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_outstream, align 8, !dbg !998, !tbaa !953
  %cmp3 = icmp ne %struct._IO_FILE* %8, %9, !dbg !999
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1000

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !1001, !tbaa !953
  store %struct._IO_FILE* %10, %struct._IO_FILE** @rl_instream, align 8, !dbg !1003, !tbaa !953
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !1004, !tbaa !953
  store %struct._IO_FILE* %11, %struct._IO_FILE** @rl_outstream, align 8, !dbg !1005, !tbaa !953
  call void @rl_prep_terminal(i32 1), !dbg !1006
  br label %if.end.5, !dbg !1007

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  %12 = load i8*, i8** %prompt.addr, align 8, !dbg !1008, !tbaa !953
  %call6 = call i8* @readline_until_enter_or_signal(i8* %12, i32* %signal), !dbg !1009
  store i8* %call6, i8** %p, align 8, !dbg !1010, !tbaa !953
  %13 = load i32, i32* %signal, align 4, !dbg !1011, !tbaa !1013
  %tobool7 = icmp ne i32 %13, 0, !dbg !1011
  br i1 %tobool7, label %if.then.8, label %if.end.10, !dbg !1015

if.then.8:                                        ; preds = %if.end.5
  %14 = load i8*, i8** %saved_locale, align 8, !dbg !1016, !tbaa !953
  %call9 = call i8* @setlocale(i32 0, i8* %14) #1, !dbg !1019
  %15 = load i8*, i8** %saved_locale, align 8, !dbg !1020, !tbaa !953
  call void @free(i8* %15) #1, !dbg !1021
  store i8* null, i8** %retval, !dbg !1022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1022

if.end.10:                                        ; preds = %if.end.5
  %16 = load i8*, i8** %p, align 8, !dbg !1023, !tbaa !953
  %cmp11 = icmp eq i8* %16, null, !dbg !1025
  br i1 %cmp11, label %if.then.12, label %if.end.18, !dbg !1026

if.then.12:                                       ; preds = %if.end.10
  %call13 = call i8* @PyMem_RawMalloc(i64 1), !dbg !1027
  store i8* %call13, i8** %p, align 8, !dbg !1029, !tbaa !953
  %17 = load i8*, i8** %p, align 8, !dbg !1030, !tbaa !953
  %cmp14 = icmp ne i8* %17, null, !dbg !1032
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1033

if.then.15:                                       ; preds = %if.then.12
  %18 = load i8*, i8** %p, align 8, !dbg !1034, !tbaa !953
  store i8 0, i8* %18, align 1, !dbg !1035, !tbaa !1036
  br label %if.end.16, !dbg !1037

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %19 = load i8*, i8** %saved_locale, align 8, !dbg !1038, !tbaa !953
  %call17 = call i8* @setlocale(i32 0, i8* %19) #1, !dbg !1040
  %20 = load i8*, i8** %saved_locale, align 8, !dbg !1041, !tbaa !953
  call void @free(i8* %20) #1, !dbg !1042
  %21 = load i8*, i8** %p, align 8, !dbg !1043, !tbaa !953
  store i8* %21, i8** %retval, !dbg !1044
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1044

if.end.18:                                        ; preds = %if.end.10
  %22 = load i8*, i8** %p, align 8, !dbg !1045, !tbaa !953
  %call19 = call i64 @strlen(i8* %22) #9, !dbg !1046
  store i64 %call19, i64* %n, align 8, !dbg !1047, !tbaa !1048
  %23 = load i64, i64* %n, align 8, !dbg !1050, !tbaa !1048
  %cmp20 = icmp ugt i64 %23, 0, !dbg !1051
  br i1 %cmp20, label %if.then.21, label %if.end.32, !dbg !1052

if.then.21:                                       ; preds = %if.end.18
  %24 = bitcast i8** %line to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !1053
  call void @llvm.dbg.declare(metadata i8** %line, metadata !691, metadata !947), !dbg !1054
  %25 = bitcast i32* %length to i8*, !dbg !1055
  call void @llvm.lifetime.start(i64 4, i8* %25) #1, !dbg !1055
  call void @llvm.dbg.declare(metadata i32* %length, metadata !694, metadata !947), !dbg !1056
  %call22 = call i32 @_py_get_history_length(), !dbg !1057
  store i32 %call22, i32* %length, align 4, !dbg !1056, !tbaa !1013
  %26 = load i32, i32* %length, align 4, !dbg !1058, !tbaa !1013
  %cmp23 = icmp sgt i32 %26, 0, !dbg !1060
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !1061

if.then.24:                                       ; preds = %if.then.21
  %27 = load i32, i32* %length, align 4, !dbg !1062, !tbaa !1013
  %call25 = call %struct._hist_entry* @history_get(i32 %27), !dbg !1063
  %line26 = getelementptr inbounds %struct._hist_entry, %struct._hist_entry* %call25, i32 0, i32 0, !dbg !1064
  %28 = load i8*, i8** %line26, align 8, !dbg !1064, !tbaa !1065
  store i8* %28, i8** %line, align 8, !dbg !1067, !tbaa !953
  br label %if.end.27, !dbg !1068

if.else:                                          ; preds = %if.then.21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %line, align 8, !dbg !1069, !tbaa !953
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  %29 = bitcast i64* %__s1_len to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !1070
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !695, metadata !947), !dbg !1071
  %30 = bitcast i64* %__s2_len to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1070
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !698, metadata !947), !dbg !1072
  %31 = load i8*, i8** %p, align 8, !dbg !1073, !tbaa !953
  %32 = load i8*, i8** %line, align 8, !dbg !1074, !tbaa !953
  %call28 = call i32 @strcmp(i8* %31, i8* %32) #1, !dbg !1075
  store i32 %call28, i32* %tmp, !dbg !1070, !tbaa !1013
  %33 = bitcast i64* %__s2_len to i8*, !dbg !1076
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1076
  %34 = bitcast i64* %__s1_len to i8*, !dbg !1076
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1076
  %35 = load i32, i32* %tmp, !dbg !1077, !tbaa !1013
  %tobool29 = icmp ne i32 %35, 0, !dbg !1078
  br i1 %tobool29, label %if.then.30, label %if.end.31, !dbg !1079

if.then.30:                                       ; preds = %if.end.27
  %36 = load i8*, i8** %p, align 8, !dbg !1080, !tbaa !953
  call void @add_history(i8* %36), !dbg !1081
  br label %if.end.31, !dbg !1081

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %37 = bitcast i32* %length to i8*, !dbg !1082
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !1082
  %38 = bitcast i8** %line to i8*, !dbg !1082
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !1082
  br label %if.end.32, !dbg !1083

if.end.32:                                        ; preds = %if.end.31, %if.end.18
  %39 = load i8*, i8** %p, align 8, !dbg !1084, !tbaa !953
  store i8* %39, i8** %q, align 8, !dbg !1085, !tbaa !953
  %40 = load i64, i64* %n, align 8, !dbg !1086, !tbaa !1048
  %add = add i64 %40, 2, !dbg !1087
  %call33 = call i8* @PyMem_RawMalloc(i64 %add), !dbg !1088
  store i8* %call33, i8** %p, align 8, !dbg !1089, !tbaa !953
  %41 = load i8*, i8** %p, align 8, !dbg !1090, !tbaa !953
  %cmp34 = icmp ne i8* %41, null, !dbg !1092
  br i1 %cmp34, label %if.then.35, label %if.end.39, !dbg !1093

if.then.35:                                       ; preds = %if.end.32
  %42 = load i8*, i8** %p, align 8, !dbg !1094, !tbaa !953
  %43 = load i8*, i8** %q, align 8, !dbg !1096, !tbaa !953
  %44 = load i64, i64* %n, align 8, !dbg !1097, !tbaa !1048
  %call36 = call i8* @strncpy(i8* %42, i8* %43, i64 %44) #1, !dbg !1098
  %45 = load i64, i64* %n, align 8, !dbg !1099, !tbaa !1048
  %46 = load i8*, i8** %p, align 8, !dbg !1100, !tbaa !953
  %arrayidx = getelementptr i8, i8* %46, i64 %45, !dbg !1100
  store i8 10, i8* %arrayidx, align 1, !dbg !1101, !tbaa !1036
  %47 = load i64, i64* %n, align 8, !dbg !1102, !tbaa !1048
  %add37 = add i64 %47, 1, !dbg !1103
  %48 = load i8*, i8** %p, align 8, !dbg !1104, !tbaa !953
  %arrayidx38 = getelementptr i8, i8* %48, i64 %add37, !dbg !1104
  store i8 0, i8* %arrayidx38, align 1, !dbg !1105, !tbaa !1036
  br label %if.end.39, !dbg !1106

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  %49 = load i8*, i8** %q, align 8, !dbg !1107, !tbaa !953
  call void @free(i8* %49) #1, !dbg !1108
  %50 = load i8*, i8** %saved_locale, align 8, !dbg !1109, !tbaa !953
  %call40 = call i8* @setlocale(i32 0, i8* %50) #1, !dbg !1111
  %51 = load i8*, i8** %saved_locale, align 8, !dbg !1112, !tbaa !953
  call void @free(i8* %51) #1, !dbg !1113
  %52 = load i8*, i8** %p, align 8, !dbg !1114, !tbaa !953
  store i8* %52, i8** %retval, !dbg !1115
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1115

cleanup:                                          ; preds = %if.end.39, %if.end.16, %if.then.8
  %53 = bitcast i8** %saved_locale to i8*, !dbg !1116
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1116
  %54 = bitcast i32* %signal to i8*, !dbg !1116
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !1116
  %55 = bitcast i8** %q to i8*, !dbg !1116
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !1116
  %56 = bitcast i8** %p to i8*, !dbg !1116
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1116
  %57 = bitcast i64* %n to i8*, !dbg !1116
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !1116
  %58 = load i8*, i8** %retval, !dbg !1116
  ret i8* %58, !dbg !1116
}

; Function Attrs: nounwind uwtable
define internal void @setup_readline(%struct.readlinestate* %mod_state) #0 {
entry:
  %mod_state.addr = alloca %struct.readlinestate*, align 8
  %saved_locale = alloca i8*, align 8
  %__len = alloca i64, align 8
  %__retval = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.readlinestate* %mod_state, %struct.readlinestate** %mod_state.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct.readlinestate** %mod_state.addr, metadata !745, metadata !947), !dbg !1117
  %0 = bitcast i8** %saved_locale to i8*, !dbg !1118
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1118
  call void @llvm.dbg.declare(metadata i8** %saved_locale, metadata !746, metadata !947), !dbg !1119
  %call = call i8* @setlocale(i32 0, i8* null) #1, !dbg !1120
  %call1 = call noalias i8* @__strdup(i8* %call) #1, !dbg !1121
  store i8* %call1, i8** %saved_locale, align 8, !dbg !1119, !tbaa !953
  %1 = load i8*, i8** %saved_locale, align 8, !dbg !1122, !tbaa !953
  %tobool = icmp ne i8* %1, null, !dbg !1122
  br i1 %tobool, label %if.end, label %if.then, !dbg !1124

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !1125
  unreachable, !dbg !1125

if.end:                                           ; preds = %entry
  call void @using_history(), !dbg !1126
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8** @rl_readline_name, align 8, !dbg !1127, !tbaa !953
  %call2 = call i32 @rl_bind_key(i32 9, i32 (i32, i32)* @rl_insert), !dbg !1128
  %call3 = call i32 @rl_bind_key_in_map(i32 9, i32 (i32, i32)* @rl_complete, %struct._keymap_entry* getelementptr inbounds ([257 x %struct._keymap_entry], [257 x %struct._keymap_entry]* @emacs_meta_keymap, i32 0, i32 0)), !dbg !1129
  %call4 = call i32 @rl_bind_key_in_map(i32 27, i32 (i32, i32)* @rl_complete, %struct._keymap_entry* getelementptr inbounds ([257 x %struct._keymap_entry], [257 x %struct._keymap_entry]* @emacs_meta_keymap, i32 0, i32 0)), !dbg !1130
  store i32 ()* @on_startup_hook, i32 ()** @rl_startup_hook, align 8, !dbg !1131, !tbaa !953
  store i32 ()* @on_pre_input_hook, i32 ()** @rl_pre_input_hook, align 8, !dbg !1132, !tbaa !953
  store i8** (i8*, i32, i32)* @flex_complete, i8** (i8*, i32, i32)** @rl_attempted_completion_function, align 8, !dbg !1133, !tbaa !953
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i64 1) to i64), i64 ptrtoint ([34 x i8]* @.str.49 to i64)), i64 1), label %cond.true, label %cond.false.13, !dbg !1134

cond.true:                                        ; preds = %if.end
  %2 = load i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0), align 1, !dbg !1135, !tbaa !1036
  %conv = sext i8 %2 to i32, !dbg !1135
  %cmp = icmp eq i32 %conv, 0, !dbg !1137
  br i1 %cmp, label %cond.true.6, label %cond.false, !dbg !1138

cond.true.6:                                      ; preds = %cond.true
  %call7 = call noalias i8* @calloc(i64 1, i64 1) #1, !dbg !1139
  br label %cond.end, !dbg !1138

cond.false:                                       ; preds = %cond.true
  %3 = bitcast i64* %__len to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1141
  call void @llvm.dbg.declare(metadata i64* %__len, metadata !747, metadata !947), !dbg !1143
  store i64 34, i64* %__len, align 8, !dbg !1143, !tbaa !1048
  %4 = bitcast i8** %__retval to i8*, !dbg !1144
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1144
  call void @llvm.dbg.declare(metadata i8** %__retval, metadata !749, metadata !947), !dbg !1145
  %5 = load i64, i64* %__len, align 8, !dbg !1146, !tbaa !1048
  %call8 = call noalias i8* @malloc(i64 %5) #1, !dbg !1147
  store i8* %call8, i8** %__retval, align 8, !dbg !1145, !tbaa !953
  %6 = load i8*, i8** %__retval, align 8, !dbg !1148, !tbaa !953
  %cmp9 = icmp ne i8* %6, null, !dbg !1150
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !1151

if.then.11:                                       ; preds = %cond.false
  %7 = load i8*, i8** %__retval, align 8, !dbg !1152, !tbaa !953
  %8 = load i64, i64* %__len, align 8, !dbg !1154, !tbaa !1048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0), i64 %8, i32 1, i1 false), !dbg !1155
  store i8* %7, i8** %__retval, align 8, !dbg !1156, !tbaa !953
  br label %if.end.12, !dbg !1157

if.end.12:                                        ; preds = %if.then.11, %cond.false
  %9 = load i8*, i8** %__retval, align 8, !dbg !1158, !tbaa !953
  store i8* %9, i8** %tmp, !dbg !1161, !tbaa !953
  %10 = bitcast i8** %__retval to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1162
  %11 = bitcast i64* %__len to i8*, !dbg !1162
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1162
  %12 = load i8*, i8** %tmp, !dbg !1163, !tbaa !953
  br label %cond.end, !dbg !1138

cond.end:                                         ; preds = %if.end.12, %cond.true.6
  %cond = phi i8* [ %call7, %cond.true.6 ], [ %12, %if.end.12 ], !dbg !1138
  br label %cond.end.15, !dbg !1164

cond.false.13:                                    ; preds = %if.end
  %call14 = call noalias i8* @__strdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0)) #1, !dbg !1167
  br label %cond.end.15, !dbg !1134

cond.end.15:                                      ; preds = %cond.false.13, %cond.end
  %cond16 = phi i8* [ %cond, %cond.end ], [ %call14, %cond.false.13 ], !dbg !1134
  store i8* %cond16, i8** @rl_completer_word_break_characters, align 8, !dbg !1169, !tbaa !953
  store i8* %cond16, i8** @completer_word_break_characters, align 8, !dbg !1170, !tbaa !953
  %call17 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1171
  %13 = load %struct.readlinestate*, %struct.readlinestate** %mod_state.addr, align 8, !dbg !1172, !tbaa !953
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %13, i32 0, i32 4, !dbg !1173
  store %struct._object* %call17, %struct._object** %begidx, align 8, !dbg !1174, !tbaa !1175
  %call18 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1177
  %14 = load %struct.readlinestate*, %struct.readlinestate** %mod_state.addr, align 8, !dbg !1178, !tbaa !953
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %14, i32 0, i32 5, !dbg !1179
  store %struct._object* %call18, %struct._object** %endidx, align 8, !dbg !1180, !tbaa !1181
  %call19 = call i32 @rl_initialize(), !dbg !1182
  %15 = load i8*, i8** %saved_locale, align 8, !dbg !1183, !tbaa !953
  %call20 = call i8* @setlocale(i32 0, i8* %15) #1, !dbg !1185
  %16 = load i8*, i8** %saved_locale, align 8, !dbg !1186, !tbaa !953
  call void @free(i8* %16) #1, !dbg !1187
  %17 = bitcast i8** %saved_locale to i8*, !dbg !1188
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1188
  ret void, !dbg !1188
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @readline_traverse(%struct._object* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %state = alloca %struct.readlinestate*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret9 = alloca i32, align 4
  %vret24 = alloca i32, align 4
  %vret39 = alloca i32, align 4
  %vret54 = alloca i32, align 4
  %vret69 = alloca i32, align 4
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !608, metadata !947), !dbg !1189
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !609, metadata !947), !dbg !1190
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !610, metadata !947), !dbg !1191
  %0 = bitcast %struct.readlinestate** %state to i8*, !dbg !1192
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.readlinestate** %state, metadata !611, metadata !947), !dbg !1193
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1194, !tbaa !953
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1195
  %2 = bitcast i8* %call to %struct.readlinestate*, !dbg !1196
  store %struct.readlinestate* %2, %struct.readlinestate** %state, align 8, !dbg !1193, !tbaa !953
  br label %do.body, !dbg !1197

do.body:                                          ; preds = %entry
  %3 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1198, !tbaa !953
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 0, !dbg !1200
  %4 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8, !dbg !1200, !tbaa !1201
  %tobool = icmp ne %struct._object* %4, null, !dbg !1202
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !1203

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !1204
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1204
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !612, metadata !947), !dbg !1206
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1207, !tbaa !953
  %7 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1208, !tbaa !953
  %completion_display_matches_hook1 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %7, i32 0, i32 0, !dbg !1209
  %8 = load %struct._object*, %struct._object** %completion_display_matches_hook1, align 8, !dbg !1209, !tbaa !1201
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !1210, !tbaa !953
  %call2 = call i32 %6(%struct._object* %8, i8* %9), !dbg !1207
  store i32 %call2, i32* %vret, align 4, !dbg !1206, !tbaa !1013
  %10 = load i32, i32* %vret, align 4, !dbg !1211, !tbaa !1013
  %tobool3 = icmp ne i32 %10, 0, !dbg !1211
  br i1 %tobool3, label %if.then.4, label %if.end, !dbg !1213

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %vret, align 4, !dbg !1214, !tbaa !1013
  store i32 %11, i32* %retval, !dbg !1216
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1216

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1217
  br label %cleanup, !dbg !1217

cleanup:                                          ; preds = %if.end, %if.then.4
  %12 = bitcast i32* %vret to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1219
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.5, !dbg !1222

if.end.5:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1223

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !1226

do.end:                                           ; preds = %do.cond
  br label %do.body.6, !dbg !1228

do.body.6:                                        ; preds = %do.end
  %13 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1229, !tbaa !953
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %13, i32 0, i32 1, !dbg !1231
  %14 = load %struct._object*, %struct._object** %startup_hook, align 8, !dbg !1231, !tbaa !1232
  %tobool7 = icmp ne %struct._object* %14, null, !dbg !1233
  br i1 %tobool7, label %if.then.8, label %if.end.18, !dbg !1234

if.then.8:                                        ; preds = %do.body.6
  %15 = bitcast i32* %vret9 to i8*, !dbg !1235
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !1235
  call void @llvm.dbg.declare(metadata i32* %vret9, metadata !616, metadata !947), !dbg !1237
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1238, !tbaa !953
  %17 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1239, !tbaa !953
  %startup_hook10 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %17, i32 0, i32 1, !dbg !1240
  %18 = load %struct._object*, %struct._object** %startup_hook10, align 8, !dbg !1240, !tbaa !1232
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !1241, !tbaa !953
  %call11 = call i32 %16(%struct._object* %18, i8* %19), !dbg !1238
  store i32 %call11, i32* %vret9, align 4, !dbg !1237, !tbaa !1013
  %20 = load i32, i32* %vret9, align 4, !dbg !1242, !tbaa !1013
  %tobool12 = icmp ne i32 %20, 0, !dbg !1242
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !1244

if.then.13:                                       ; preds = %if.then.8
  %21 = load i32, i32* %vret9, align 4, !dbg !1245, !tbaa !1013
  store i32 %21, i32* %retval, !dbg !1247
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !1247

if.end.14:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot, !dbg !1248
  br label %cleanup.15, !dbg !1248

cleanup.15:                                       ; preds = %if.end.14, %if.then.13
  %22 = bitcast i32* %vret9 to i8*, !dbg !1250
  call void @llvm.lifetime.end(i64 4, i8* %22) #1, !dbg !1250
  %cleanup.dest.16 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.15
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.16, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.17, label %NewDefault.1

cleanup.cont.17:                                  ; preds = %LeafBlock.2
  br label %if.end.18, !dbg !1253

if.end.18:                                        ; preds = %cleanup.cont.17, %do.body.6
  br label %do.cond.19, !dbg !1254

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !1257

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21, !dbg !1259

do.body.21:                                       ; preds = %do.end.20
  %23 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1260, !tbaa !953
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %23, i32 0, i32 2, !dbg !1262
  %24 = load %struct._object*, %struct._object** %pre_input_hook, align 8, !dbg !1262, !tbaa !1263
  %tobool22 = icmp ne %struct._object* %24, null, !dbg !1264
  br i1 %tobool22, label %if.then.23, label %if.end.33, !dbg !1265

if.then.23:                                       ; preds = %do.body.21
  %25 = bitcast i32* %vret24 to i8*, !dbg !1266
  call void @llvm.lifetime.start(i64 4, i8* %25) #1, !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %vret24, metadata !620, metadata !947), !dbg !1268
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1269, !tbaa !953
  %27 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1270, !tbaa !953
  %pre_input_hook25 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %27, i32 0, i32 2, !dbg !1271
  %28 = load %struct._object*, %struct._object** %pre_input_hook25, align 8, !dbg !1271, !tbaa !1263
  %29 = load i8*, i8** %arg.addr, align 8, !dbg !1272, !tbaa !953
  %call26 = call i32 %26(%struct._object* %28, i8* %29), !dbg !1269
  store i32 %call26, i32* %vret24, align 4, !dbg !1268, !tbaa !1013
  %30 = load i32, i32* %vret24, align 4, !dbg !1273, !tbaa !1013
  %tobool27 = icmp ne i32 %30, 0, !dbg !1273
  br i1 %tobool27, label %if.then.28, label %if.end.29, !dbg !1275

if.then.28:                                       ; preds = %if.then.23
  %31 = load i32, i32* %vret24, align 4, !dbg !1276, !tbaa !1013
  store i32 %31, i32* %retval, !dbg !1278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30, !dbg !1278

if.end.29:                                        ; preds = %if.then.23
  store i32 0, i32* %cleanup.dest.slot, !dbg !1279
  br label %cleanup.30, !dbg !1279

cleanup.30:                                       ; preds = %if.end.29, %if.then.28
  %32 = bitcast i32* %vret24 to i8*, !dbg !1281
  call void @llvm.lifetime.end(i64 4, i8* %32) #1, !dbg !1281
  %cleanup.dest.31 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.30
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.31, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.32, label %NewDefault.4

cleanup.cont.32:                                  ; preds = %LeafBlock.5
  br label %if.end.33, !dbg !1284

if.end.33:                                        ; preds = %cleanup.cont.32, %do.body.21
  br label %do.cond.34, !dbg !1285

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1288

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36, !dbg !1290

do.body.36:                                       ; preds = %do.end.35
  %33 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1291, !tbaa !953
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %33, i32 0, i32 3, !dbg !1293
  %34 = load %struct._object*, %struct._object** %completer, align 8, !dbg !1293, !tbaa !1294
  %tobool37 = icmp ne %struct._object* %34, null, !dbg !1295
  br i1 %tobool37, label %if.then.38, label %if.end.48, !dbg !1296

if.then.38:                                       ; preds = %do.body.36
  %35 = bitcast i32* %vret39 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 4, i8* %35) #1, !dbg !1297
  call void @llvm.dbg.declare(metadata i32* %vret39, metadata !624, metadata !947), !dbg !1299
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1300, !tbaa !953
  %37 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1301, !tbaa !953
  %completer40 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %37, i32 0, i32 3, !dbg !1302
  %38 = load %struct._object*, %struct._object** %completer40, align 8, !dbg !1302, !tbaa !1294
  %39 = load i8*, i8** %arg.addr, align 8, !dbg !1303, !tbaa !953
  %call41 = call i32 %36(%struct._object* %38, i8* %39), !dbg !1300
  store i32 %call41, i32* %vret39, align 4, !dbg !1299, !tbaa !1013
  %40 = load i32, i32* %vret39, align 4, !dbg !1304, !tbaa !1013
  %tobool42 = icmp ne i32 %40, 0, !dbg !1304
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !1306

if.then.43:                                       ; preds = %if.then.38
  %41 = load i32, i32* %vret39, align 4, !dbg !1307, !tbaa !1013
  store i32 %41, i32* %retval, !dbg !1309
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1309

if.end.44:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot, !dbg !1310
  br label %cleanup.45, !dbg !1310

cleanup.45:                                       ; preds = %if.end.44, %if.then.43
  %42 = bitcast i32* %vret39 to i8*, !dbg !1312
  call void @llvm.lifetime.end(i64 4, i8* %42) #1, !dbg !1312
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup.45
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest.46, 0
  br i1 %SwitchLeaf9, label %cleanup.cont.47, label %NewDefault.7

cleanup.cont.47:                                  ; preds = %LeafBlock.8
  br label %if.end.48, !dbg !1315

if.end.48:                                        ; preds = %cleanup.cont.47, %do.body.36
  br label %do.cond.49, !dbg !1316

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !1319

do.end.50:                                        ; preds = %do.cond.49
  br label %do.body.51, !dbg !1321

do.body.51:                                       ; preds = %do.end.50
  %43 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1322, !tbaa !953
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %43, i32 0, i32 4, !dbg !1324
  %44 = load %struct._object*, %struct._object** %begidx, align 8, !dbg !1324, !tbaa !1175
  %tobool52 = icmp ne %struct._object* %44, null, !dbg !1325
  br i1 %tobool52, label %if.then.53, label %if.end.63, !dbg !1326

if.then.53:                                       ; preds = %do.body.51
  %45 = bitcast i32* %vret54 to i8*, !dbg !1327
  call void @llvm.lifetime.start(i64 4, i8* %45) #1, !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %vret54, metadata !628, metadata !947), !dbg !1329
  %46 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1330, !tbaa !953
  %47 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1331, !tbaa !953
  %begidx55 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %47, i32 0, i32 4, !dbg !1332
  %48 = load %struct._object*, %struct._object** %begidx55, align 8, !dbg !1332, !tbaa !1175
  %49 = load i8*, i8** %arg.addr, align 8, !dbg !1333, !tbaa !953
  %call56 = call i32 %46(%struct._object* %48, i8* %49), !dbg !1330
  store i32 %call56, i32* %vret54, align 4, !dbg !1329, !tbaa !1013
  %50 = load i32, i32* %vret54, align 4, !dbg !1334, !tbaa !1013
  %tobool57 = icmp ne i32 %50, 0, !dbg !1334
  br i1 %tobool57, label %if.then.58, label %if.end.59, !dbg !1336

if.then.58:                                       ; preds = %if.then.53
  %51 = load i32, i32* %vret54, align 4, !dbg !1337, !tbaa !1013
  store i32 %51, i32* %retval, !dbg !1339
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60, !dbg !1339

if.end.59:                                        ; preds = %if.then.53
  store i32 0, i32* %cleanup.dest.slot, !dbg !1340
  br label %cleanup.60, !dbg !1340

cleanup.60:                                       ; preds = %if.end.59, %if.then.58
  %52 = bitcast i32* %vret54 to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 4, i8* %52) #1, !dbg !1342
  %cleanup.dest.61 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.11

LeafBlock.11:                                     ; preds = %cleanup.60
  %SwitchLeaf12 = icmp eq i32 %cleanup.dest.61, 0
  br i1 %SwitchLeaf12, label %cleanup.cont.62, label %NewDefault.10

cleanup.cont.62:                                  ; preds = %LeafBlock.11
  br label %if.end.63, !dbg !1345

if.end.63:                                        ; preds = %cleanup.cont.62, %do.body.51
  br label %do.cond.64, !dbg !1346

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !1349

do.end.65:                                        ; preds = %do.cond.64
  br label %do.body.66, !dbg !1351

do.body.66:                                       ; preds = %do.end.65
  %53 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1352, !tbaa !953
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %53, i32 0, i32 5, !dbg !1354
  %54 = load %struct._object*, %struct._object** %endidx, align 8, !dbg !1354, !tbaa !1181
  %tobool67 = icmp ne %struct._object* %54, null, !dbg !1355
  br i1 %tobool67, label %if.then.68, label %if.end.78, !dbg !1356

if.then.68:                                       ; preds = %do.body.66
  %55 = bitcast i32* %vret69 to i8*, !dbg !1357
  call void @llvm.lifetime.start(i64 4, i8* %55) #1, !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %vret69, metadata !632, metadata !947), !dbg !1359
  %56 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1360, !tbaa !953
  %57 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1361, !tbaa !953
  %endidx70 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %57, i32 0, i32 5, !dbg !1362
  %58 = load %struct._object*, %struct._object** %endidx70, align 8, !dbg !1362, !tbaa !1181
  %59 = load i8*, i8** %arg.addr, align 8, !dbg !1363, !tbaa !953
  %call71 = call i32 %56(%struct._object* %58, i8* %59), !dbg !1360
  store i32 %call71, i32* %vret69, align 4, !dbg !1359, !tbaa !1013
  %60 = load i32, i32* %vret69, align 4, !dbg !1364, !tbaa !1013
  %tobool72 = icmp ne i32 %60, 0, !dbg !1364
  br i1 %tobool72, label %if.then.73, label %if.end.74, !dbg !1366

if.then.73:                                       ; preds = %if.then.68
  %61 = load i32, i32* %vret69, align 4, !dbg !1367, !tbaa !1013
  store i32 %61, i32* %retval, !dbg !1369
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75, !dbg !1369

if.end.74:                                        ; preds = %if.then.68
  store i32 0, i32* %cleanup.dest.slot, !dbg !1370
  br label %cleanup.75, !dbg !1370

cleanup.75:                                       ; preds = %if.end.74, %if.then.73
  %62 = bitcast i32* %vret69 to i8*, !dbg !1372
  call void @llvm.lifetime.end(i64 4, i8* %62) #1, !dbg !1372
  %cleanup.dest.76 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.14

LeafBlock.14:                                     ; preds = %cleanup.75
  %SwitchLeaf15 = icmp eq i32 %cleanup.dest.76, 0
  br i1 %SwitchLeaf15, label %cleanup.cont.77, label %NewDefault.13

cleanup.cont.77:                                  ; preds = %LeafBlock.14
  br label %if.end.78, !dbg !1375

if.end.78:                                        ; preds = %cleanup.cont.77, %do.body.66
  br label %do.cond.79, !dbg !1376

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !1379

do.end.80:                                        ; preds = %do.cond.79
  store i32 0, i32* %retval, !dbg !1381
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81, !dbg !1381

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.81

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.81

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.81

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.81

NewDefault.10:                                    ; preds = %LeafBlock.11
  br label %cleanup.81

NewDefault.13:                                    ; preds = %LeafBlock.14
  br label %cleanup.81

cleanup.81:                                       ; preds = %NewDefault.13, %NewDefault.10, %NewDefault.7, %NewDefault.4, %NewDefault.1, %NewDefault, %do.end.80
  %63 = bitcast %struct.readlinestate** %state to i8*, !dbg !1382
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !1382
  %64 = load i32, i32* %retval, !dbg !1382
  ret i32 %64, !dbg !1382
}

; Function Attrs: nounwind uwtable
define internal i32 @readline_clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %state = alloca %struct.readlinestate*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !638, metadata !947), !dbg !1383
  %0 = bitcast %struct.readlinestate** %state to i8*, !dbg !1384
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1384
  call void @llvm.dbg.declare(metadata %struct.readlinestate** %state, metadata !639, metadata !947), !dbg !1385
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1386, !tbaa !953
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1387
  %2 = bitcast i8* %call to %struct.readlinestate*, !dbg !1388
  store %struct.readlinestate* %2, %struct.readlinestate** %state, align 8, !dbg !1385, !tbaa !953
  br label %do.body, !dbg !1389

do.body:                                          ; preds = %entry
  %3 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1390
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !640, metadata !947), !dbg !1392
  %4 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1393, !tbaa !953
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %4, i32 0, i32 0, !dbg !1394
  %5 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8, !dbg !1394, !tbaa !1201
  store %struct._object* %5, %struct._object** %_py_tmp, align 8, !dbg !1392, !tbaa !953
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1395, !tbaa !953
  %cmp = icmp ne %struct._object* %6, null, !dbg !1396
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1397

if.then:                                          ; preds = %do.body
  %7 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1398, !tbaa !953
  %completion_display_matches_hook1 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %7, i32 0, i32 0, !dbg !1400
  store %struct._object* null, %struct._object** %completion_display_matches_hook1, align 8, !dbg !1401, !tbaa !1201
  br label %do.body.2, !dbg !1402

do.body.2:                                        ; preds = %if.then
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1403
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !642, metadata !947), !dbg !1405
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1406, !tbaa !953
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1405, !tbaa !953
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1407, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1409
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1410, !tbaa !1411
  %dec = add i64 %11, -1, !dbg !1410
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1410, !tbaa !1411
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1413
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1414

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1415

if.else:                                          ; preds = %do.body.2
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1417, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1419
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1419, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1421
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1421, !tbaa !1422
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1425, !tbaa !953
  call void %14(%struct._object* %15), !dbg !1426
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1427
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1427
  br label %do.cond, !dbg !1429

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1430

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1432

if.end.5:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1434
  br label %do.cond.6, !dbg !1437

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !1438

do.end.7:                                         ; preds = %do.cond.6
  br label %do.body.8, !dbg !1440

do.body.8:                                        ; preds = %do.end.7
  %18 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1441
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1441
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !646, metadata !947), !dbg !1443
  %19 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1444, !tbaa !953
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %19, i32 0, i32 1, !dbg !1445
  %20 = load %struct._object*, %struct._object** %startup_hook, align 8, !dbg !1445, !tbaa !1232
  store %struct._object* %20, %struct._object** %_py_tmp9, align 8, !dbg !1443, !tbaa !953
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1446, !tbaa !953
  %cmp10 = icmp ne %struct._object* %21, null, !dbg !1447
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !1448

if.then.11:                                       ; preds = %do.body.8
  %22 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1449, !tbaa !953
  %startup_hook12 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %22, i32 0, i32 1, !dbg !1451
  store %struct._object* null, %struct._object** %startup_hook12, align 8, !dbg !1452, !tbaa !1232
  br label %do.body.13, !dbg !1453

do.body.13:                                       ; preds = %if.then.11
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !1454
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !648, metadata !947), !dbg !1456
  %24 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1457, !tbaa !953
  store %struct._object* %24, %struct._object** %_py_decref_tmp14, align 8, !dbg !1456, !tbaa !953
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1458, !tbaa !953
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1460
  %26 = load i64, i64* %ob_refcnt15, align 8, !dbg !1461, !tbaa !1411
  %dec16 = add i64 %26, -1, !dbg !1461
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1461, !tbaa !1411
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !1462
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !1463

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !1464

if.else.19:                                       ; preds = %do.body.13
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1466, !tbaa !953
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1468
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1468, !tbaa !1420
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1469
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1469, !tbaa !1422
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1470, !tbaa !953
  call void %29(%struct._object* %30), !dbg !1471
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %31 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1472
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1472
  br label %do.cond.23, !dbg !1474

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1475

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !1477

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %32 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1479
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1479
  br label %do.cond.26, !dbg !1480

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1481

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !1483

do.body.28:                                       ; preds = %do.end.27
  %33 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !1484
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp29, metadata !652, metadata !947), !dbg !1486
  %34 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1487, !tbaa !953
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %34, i32 0, i32 2, !dbg !1488
  %35 = load %struct._object*, %struct._object** %pre_input_hook, align 8, !dbg !1488, !tbaa !1263
  store %struct._object* %35, %struct._object** %_py_tmp29, align 8, !dbg !1486, !tbaa !953
  %36 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1489, !tbaa !953
  %cmp30 = icmp ne %struct._object* %36, null, !dbg !1490
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !1491

if.then.31:                                       ; preds = %do.body.28
  %37 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1492, !tbaa !953
  %pre_input_hook32 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %37, i32 0, i32 2, !dbg !1494
  store %struct._object* null, %struct._object** %pre_input_hook32, align 8, !dbg !1495, !tbaa !1263
  br label %do.body.33, !dbg !1496

do.body.33:                                       ; preds = %if.then.31
  %38 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1497
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !1497
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !654, metadata !947), !dbg !1499
  %39 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1500, !tbaa !953
  store %struct._object* %39, %struct._object** %_py_decref_tmp34, align 8, !dbg !1499, !tbaa !953
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1501, !tbaa !953
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1503
  %41 = load i64, i64* %ob_refcnt35, align 8, !dbg !1504, !tbaa !1411
  %dec36 = add i64 %41, -1, !dbg !1504
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1504, !tbaa !1411
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1505
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1506

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1507

if.else.39:                                       ; preds = %do.body.33
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1509, !tbaa !953
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !1511
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1511, !tbaa !1420
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !1512
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1512, !tbaa !1422
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1513, !tbaa !953
  call void %44(%struct._object* %45), !dbg !1514
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %46 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1515
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1515
  br label %do.cond.43, !dbg !1517

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1518

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !1520

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %47 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1522
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !1522
  br label %do.cond.46, !dbg !1523

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1524

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !1526

do.body.48:                                       ; preds = %do.end.47
  %48 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1527
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !1527
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp49, metadata !658, metadata !947), !dbg !1529
  %49 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1530, !tbaa !953
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %49, i32 0, i32 3, !dbg !1531
  %50 = load %struct._object*, %struct._object** %completer, align 8, !dbg !1531, !tbaa !1294
  store %struct._object* %50, %struct._object** %_py_tmp49, align 8, !dbg !1529, !tbaa !953
  %51 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1532, !tbaa !953
  %cmp50 = icmp ne %struct._object* %51, null, !dbg !1533
  br i1 %cmp50, label %if.then.51, label %if.end.65, !dbg !1534

if.then.51:                                       ; preds = %do.body.48
  %52 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1535, !tbaa !953
  %completer52 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %52, i32 0, i32 3, !dbg !1537
  store %struct._object* null, %struct._object** %completer52, align 8, !dbg !1538, !tbaa !1294
  br label %do.body.53, !dbg !1539

do.body.53:                                       ; preds = %if.then.51
  %53 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1540
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !1540
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !660, metadata !947), !dbg !1542
  %54 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1543, !tbaa !953
  store %struct._object* %54, %struct._object** %_py_decref_tmp54, align 8, !dbg !1542, !tbaa !953
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1544, !tbaa !953
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1546
  %56 = load i64, i64* %ob_refcnt55, align 8, !dbg !1547, !tbaa !1411
  %dec56 = add i64 %56, -1, !dbg !1547
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !1547, !tbaa !1411
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !1548
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !1549

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !1550

if.else.59:                                       ; preds = %do.body.53
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1552, !tbaa !953
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1554
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !1554, !tbaa !1420
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1555
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !1555, !tbaa !1422
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1556, !tbaa !953
  call void %59(%struct._object* %60), !dbg !1557
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %61 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1558
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !1558
  br label %do.cond.63, !dbg !1560

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !1561

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !1563

if.end.65:                                        ; preds = %do.end.64, %do.body.48
  %62 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !1565
  br label %do.cond.66, !dbg !1566

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1567

do.end.67:                                        ; preds = %do.cond.66
  br label %do.body.68, !dbg !1569

do.body.68:                                       ; preds = %do.end.67
  %63 = bitcast %struct._object** %_py_tmp69 to i8*, !dbg !1570
  call void @llvm.lifetime.start(i64 8, i8* %63) #1, !dbg !1570
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp69, metadata !664, metadata !947), !dbg !1572
  %64 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1573, !tbaa !953
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %64, i32 0, i32 4, !dbg !1574
  %65 = load %struct._object*, %struct._object** %begidx, align 8, !dbg !1574, !tbaa !1175
  store %struct._object* %65, %struct._object** %_py_tmp69, align 8, !dbg !1572, !tbaa !953
  %66 = load %struct._object*, %struct._object** %_py_tmp69, align 8, !dbg !1575, !tbaa !953
  %cmp70 = icmp ne %struct._object* %66, null, !dbg !1576
  br i1 %cmp70, label %if.then.71, label %if.end.85, !dbg !1577

if.then.71:                                       ; preds = %do.body.68
  %67 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1578, !tbaa !953
  %begidx72 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %67, i32 0, i32 4, !dbg !1580
  store %struct._object* null, %struct._object** %begidx72, align 8, !dbg !1581, !tbaa !1175
  br label %do.body.73, !dbg !1582

do.body.73:                                       ; preds = %if.then.71
  %68 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %68) #1, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !666, metadata !947), !dbg !1585
  %69 = load %struct._object*, %struct._object** %_py_tmp69, align 8, !dbg !1586, !tbaa !953
  store %struct._object* %69, %struct._object** %_py_decref_tmp74, align 8, !dbg !1585, !tbaa !953
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1587, !tbaa !953
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !1589
  %71 = load i64, i64* %ob_refcnt75, align 8, !dbg !1590, !tbaa !1411
  %dec76 = add i64 %71, -1, !dbg !1590
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1590, !tbaa !1411
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1591
  br i1 %cmp77, label %if.then.78, label %if.else.79, !dbg !1592

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82, !dbg !1593

if.else.79:                                       ; preds = %do.body.73
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1595, !tbaa !953
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !1597
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1597, !tbaa !1420
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !1598
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8, !dbg !1598, !tbaa !1422
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1599, !tbaa !953
  call void %74(%struct._object* %75), !dbg !1600
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  %76 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1601
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1601
  br label %do.cond.83, !dbg !1603

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1604

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.85, !dbg !1606

if.end.85:                                        ; preds = %do.end.84, %do.body.68
  %77 = bitcast %struct._object** %_py_tmp69 to i8*, !dbg !1608
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !1608
  br label %do.cond.86, !dbg !1609

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !1610

do.end.87:                                        ; preds = %do.cond.86
  br label %do.body.88, !dbg !1612

do.body.88:                                       ; preds = %do.end.87
  %78 = bitcast %struct._object** %_py_tmp89 to i8*, !dbg !1613
  call void @llvm.lifetime.start(i64 8, i8* %78) #1, !dbg !1613
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp89, metadata !670, metadata !947), !dbg !1615
  %79 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1616, !tbaa !953
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %79, i32 0, i32 5, !dbg !1617
  %80 = load %struct._object*, %struct._object** %endidx, align 8, !dbg !1617, !tbaa !1181
  store %struct._object* %80, %struct._object** %_py_tmp89, align 8, !dbg !1615, !tbaa !953
  %81 = load %struct._object*, %struct._object** %_py_tmp89, align 8, !dbg !1618, !tbaa !953
  %cmp90 = icmp ne %struct._object* %81, null, !dbg !1619
  br i1 %cmp90, label %if.then.91, label %if.end.105, !dbg !1620

if.then.91:                                       ; preds = %do.body.88
  %82 = load %struct.readlinestate*, %struct.readlinestate** %state, align 8, !dbg !1621, !tbaa !953
  %endidx92 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %82, i32 0, i32 5, !dbg !1623
  store %struct._object* null, %struct._object** %endidx92, align 8, !dbg !1624, !tbaa !1181
  br label %do.body.93, !dbg !1625

do.body.93:                                       ; preds = %if.then.91
  %83 = bitcast %struct._object** %_py_decref_tmp94 to i8*, !dbg !1626
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !1626
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp94, metadata !672, metadata !947), !dbg !1628
  %84 = load %struct._object*, %struct._object** %_py_tmp89, align 8, !dbg !1629, !tbaa !953
  store %struct._object* %84, %struct._object** %_py_decref_tmp94, align 8, !dbg !1628, !tbaa !953
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8, !dbg !1630, !tbaa !953
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1632
  %86 = load i64, i64* %ob_refcnt95, align 8, !dbg !1633, !tbaa !1411
  %dec96 = add i64 %86, -1, !dbg !1633
  store i64 %dec96, i64* %ob_refcnt95, align 8, !dbg !1633, !tbaa !1411
  %cmp97 = icmp ne i64 %dec96, 0, !dbg !1634
  br i1 %cmp97, label %if.then.98, label %if.else.99, !dbg !1635

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102, !dbg !1636

if.else.99:                                       ; preds = %do.body.93
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8, !dbg !1638, !tbaa !953
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !1640
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8, !dbg !1640, !tbaa !1420
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !1641
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8, !dbg !1641, !tbaa !1422
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8, !dbg !1642, !tbaa !953
  call void %89(%struct._object* %90), !dbg !1643
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  %91 = bitcast %struct._object** %_py_decref_tmp94 to i8*, !dbg !1644
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !1644
  br label %do.cond.103, !dbg !1646

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !1647

do.end.104:                                       ; preds = %do.cond.103
  br label %if.end.105, !dbg !1649

if.end.105:                                       ; preds = %do.end.104, %do.body.88
  %92 = bitcast %struct._object** %_py_tmp89 to i8*, !dbg !1651
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !1651
  br label %do.cond.106, !dbg !1652

do.cond.106:                                      ; preds = %if.end.105
  br label %do.end.107, !dbg !1653

do.end.107:                                       ; preds = %do.cond.106
  %93 = bitcast %struct.readlinestate** %state to i8*, !dbg !1655
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !1655
  ret i32 0, !dbg !1656
}

; Function Attrs: nounwind uwtable
define internal void @readline_free(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %m.addr, metadata !678, metadata !947), !dbg !1657
  %0 = load i8*, i8** %m.addr, align 8, !dbg !1658, !tbaa !953
  %1 = bitcast i8* %0 to %struct._object*, !dbg !1659
  %call = call i32 @readline_clear(%struct._object* %1), !dbg !1660
  ret void, !dbg !1661
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parse_and_bind(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !382, metadata !947), !dbg !1662
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !383, metadata !947), !dbg !1663
  %0 = bitcast i8** %s to i8*, !dbg !1664
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1664
  call void @llvm.dbg.declare(metadata i8** %s, metadata !384, metadata !947), !dbg !1665
  %1 = bitcast i8** %copy to i8*, !dbg !1664
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1664
  call void @llvm.dbg.declare(metadata i8** %copy, metadata !385, metadata !947), !dbg !1666
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1667, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8** %s), !dbg !1669
  %tobool = icmp ne i32 %call, 0, !dbg !1669
  br i1 %tobool, label %if.end, label %if.then, !dbg !1670

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1671

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s, align 8, !dbg !1672, !tbaa !953
  %call1 = call i64 @strlen(i8* %3) #9, !dbg !1673
  %add = add i64 1, %call1, !dbg !1674
  %call2 = call i8* @PyMem_Malloc(i64 %add), !dbg !1675
  store i8* %call2, i8** %copy, align 8, !dbg !1676, !tbaa !953
  %4 = load i8*, i8** %copy, align 8, !dbg !1677, !tbaa !953
  %cmp = icmp eq i8* %4, null, !dbg !1679
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !1680

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory(), !dbg !1681
  store %struct._object* %call4, %struct._object** %retval, !dbg !1682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1682

if.end.5:                                         ; preds = %if.end
  %5 = load i8*, i8** %copy, align 8, !dbg !1683, !tbaa !953
  %6 = load i8*, i8** %s, align 8, !dbg !1684, !tbaa !953
  %call6 = call i8* @strcpy(i8* %5, i8* %6) #1, !dbg !1685
  %7 = load i8*, i8** %copy, align 8, !dbg !1686, !tbaa !953
  %call7 = call i32 @rl_parse_and_bind(i8* %7), !dbg !1687
  %8 = load i8*, i8** %copy, align 8, !dbg !1688, !tbaa !953
  call void @PyMem_Free(i8* %8), !dbg !1689
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1690, !tbaa !1411
  %inc = add i64 %9, 1, !dbg !1690
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1690, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1691
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1691

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %10 = bitcast i8** %copy to i8*, !dbg !1692
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1692
  %11 = bitcast i8** %s to i8*, !dbg !1692
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1692
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1692
  ret %struct._object* %12, !dbg !1692
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_line_buffer(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !388, metadata !947), !dbg !1693
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !389, metadata !947), !dbg !1694
  %0 = load i8*, i8** @rl_line_buffer, align 8, !dbg !1695, !tbaa !953
  %call = call %struct._object* @PyUnicode_FromString(i8* %0), !dbg !1696
  ret %struct._object* %call, !dbg !1697
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insert_text(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !392, metadata !947), !dbg !1698
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !393, metadata !947), !dbg !1699
  %0 = bitcast i8** %s to i8*, !dbg !1700
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1700
  call void @llvm.dbg.declare(metadata i8** %s, metadata !394, metadata !947), !dbg !1701
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1702, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8** %s), !dbg !1704
  %tobool = icmp ne i32 %call, 0, !dbg !1704
  br i1 %tobool, label %if.end, label %if.then, !dbg !1705

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1706

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s, align 8, !dbg !1707, !tbaa !953
  %call1 = call i32 @rl_insert_text(i8* %2), !dbg !1708
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1709, !tbaa !1411
  %inc = add i64 %3, 1, !dbg !1709
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1709, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1710

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i8** %s to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !1711
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1711
  ret %struct._object* %5, !dbg !1711
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @redisplay(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !397, metadata !947), !dbg !1712
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !398, metadata !947), !dbg !1713
  call void @rl_redisplay(), !dbg !1714
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1715, !tbaa !1411
  %inc = add i64 %0, 1, !dbg !1715
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1715, !tbaa !1411
  ret %struct._object* @_Py_NoneStruct, !dbg !1716
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_init_file(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %filename_bytes = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !401, metadata !947), !dbg !1717
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !402, metadata !947), !dbg !1718
  %0 = bitcast %struct._object** %filename_obj to i8*, !dbg !1719
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct._object** %filename_obj, metadata !403, metadata !947), !dbg !1720
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8, !dbg !1720, !tbaa !953
  %1 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1719
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct._object** %filename_bytes, metadata !404, metadata !947), !dbg !1721
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1722, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), %struct._object** %filename_obj), !dbg !1724
  %tobool = icmp ne i32 %call, 0, !dbg !1724
  br i1 %tobool, label %if.end, label %if.then, !dbg !1725

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1726
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1726

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1727, !tbaa !953
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct, !dbg !1728
  br i1 %cmp, label %if.then.1, label %if.else.12, !dbg !1729

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1730, !tbaa !953
  %5 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1732
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %4, i8* %5), !dbg !1733
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1733
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !1734

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1735
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1735

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1736, !tbaa !953
  %call6 = call i8* @PyBytes_AsString(%struct._object* %6), !dbg !1737
  %call7 = call i32 @rl_read_init_file(i8* %call6), !dbg !1738
  %call8 = call i32* @__errno_location() #2, !dbg !1739
  store i32 %call7, i32* %call8, align 4, !dbg !1740, !tbaa !1013
  br label %do.body, !dbg !1741

do.body:                                          ; preds = %if.end.5
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1742
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1742
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !405, metadata !947), !dbg !1744
  %8 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1745, !tbaa !953
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1744, !tbaa !953
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1746, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1748
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1749, !tbaa !1411
  %dec = add i64 %10, -1, !dbg !1749
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1749, !tbaa !1411
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1750
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1751

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1752

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1754, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1756
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1756, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1757
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1757, !tbaa !1422
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1758, !tbaa !953
  call void %13(%struct._object* %14), !dbg !1759
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1760
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1760
  br label %do.cond, !dbg !1762

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1763

do.end:                                           ; preds = %do.cond
  br label %if.end.15, !dbg !1765

if.else.12:                                       ; preds = %if.end
  %call13 = call i32 @rl_read_init_file(i8* null), !dbg !1766
  %call14 = call i32* @__errno_location() #2, !dbg !1767
  store i32 %call13, i32* %call14, align 4, !dbg !1768, !tbaa !1013
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %do.end
  %call16 = call i32* @__errno_location() #2, !dbg !1769
  %16 = load i32, i32* %call16, align 4, !dbg !1771, !tbaa !1013
  %tobool17 = icmp ne i32 %16, 0, !dbg !1772
  br i1 %tobool17, label %if.then.18, label %if.end.20, !dbg !1773

if.then.18:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1774, !tbaa !953
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17), !dbg !1775
  store %struct._object* %call19, %struct._object** %retval, !dbg !1776
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1776

if.end.20:                                        ; preds = %if.end.15
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1777, !tbaa !1411
  %inc = add i64 %18, 1, !dbg !1777
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1777, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1778

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.4, %if.then
  %19 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1779
  %20 = bitcast %struct._object** %filename_obj to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1779
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1779
  ret %struct._object* %21, !dbg !1779
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_history_file(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %filename_bytes = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !411, metadata !947), !dbg !1780
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !412, metadata !947), !dbg !1781
  %0 = bitcast %struct._object** %filename_obj to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1782
  call void @llvm.dbg.declare(metadata %struct._object** %filename_obj, metadata !413, metadata !947), !dbg !1783
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8, !dbg !1783, !tbaa !953
  %1 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1782
  call void @llvm.dbg.declare(metadata %struct._object** %filename_bytes, metadata !414, metadata !947), !dbg !1784
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1785, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), %struct._object** %filename_obj), !dbg !1787
  %tobool = icmp ne i32 %call, 0, !dbg !1787
  br i1 %tobool, label %if.end, label %if.then, !dbg !1788

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1789
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1789

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1790, !tbaa !953
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct, !dbg !1791
  br i1 %cmp, label %if.then.1, label %if.else.12, !dbg !1792

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1793, !tbaa !953
  %5 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1795
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %4, i8* %5), !dbg !1796
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1796
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !1797

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1798

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1799, !tbaa !953
  %call6 = call i8* @PyBytes_AsString(%struct._object* %6), !dbg !1800
  %call7 = call i32 @read_history(i8* %call6), !dbg !1801
  %call8 = call i32* @__errno_location() #2, !dbg !1802
  store i32 %call7, i32* %call8, align 4, !dbg !1803, !tbaa !1013
  br label %do.body, !dbg !1804

do.body:                                          ; preds = %if.end.5
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1805
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1805
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !415, metadata !947), !dbg !1807
  %8 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1808, !tbaa !953
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1807, !tbaa !953
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1809, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1811
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1812, !tbaa !1411
  %dec = add i64 %10, -1, !dbg !1812
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1812, !tbaa !1411
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1813
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1814

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1815

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1817, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1819
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1819, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1820
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1820, !tbaa !1422
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1821, !tbaa !953
  call void %13(%struct._object* %14), !dbg !1822
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1823
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1823
  br label %do.cond, !dbg !1825

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1826

do.end:                                           ; preds = %do.cond
  br label %if.end.15, !dbg !1828

if.else.12:                                       ; preds = %if.end
  %call13 = call i32 @read_history(i8* null), !dbg !1829
  %call14 = call i32* @__errno_location() #2, !dbg !1830
  store i32 %call13, i32* %call14, align 4, !dbg !1831, !tbaa !1013
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %do.end
  %call16 = call i32* @__errno_location() #2, !dbg !1832
  %16 = load i32, i32* %call16, align 4, !dbg !1834, !tbaa !1013
  %tobool17 = icmp ne i32 %16, 0, !dbg !1835
  br i1 %tobool17, label %if.then.18, label %if.end.20, !dbg !1836

if.then.18:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1837, !tbaa !953
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17), !dbg !1838
  store %struct._object* %call19, %struct._object** %retval, !dbg !1839
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1839

if.end.20:                                        ; preds = %if.end.15
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1840, !tbaa !1411
  %inc = add i64 %18, 1, !dbg !1840
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1840, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1841

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.4, %if.then
  %19 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1842
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1842
  %20 = bitcast %struct._object** %filename_obj to i8*, !dbg !1842
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1842
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1842
  ret %struct._object* %21, !dbg !1842
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !421, metadata !947), !dbg !1843
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !422, metadata !947), !dbg !1844
  %0 = bitcast %struct._object** %filename_obj to i8*, !dbg !1845
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1845
  call void @llvm.dbg.declare(metadata %struct._object** %filename_obj, metadata !423, metadata !947), !dbg !1846
  store %struct._object* @_Py_NoneStruct, %struct._object** %filename_obj, align 8, !dbg !1846, !tbaa !953
  %1 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1845
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1845
  call void @llvm.dbg.declare(metadata %struct._object** %filename_bytes, metadata !424, metadata !947), !dbg !1847
  %2 = bitcast i8** %filename to i8*, !dbg !1848
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1848
  call void @llvm.dbg.declare(metadata i8** %filename, metadata !425, metadata !947), !dbg !1849
  %3 = bitcast i32* %err to i8*, !dbg !1850
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1850
  call void @llvm.dbg.declare(metadata i32* %err, metadata !426, metadata !947), !dbg !1851
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1852, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), %struct._object** %filename_obj), !dbg !1854
  %tobool = icmp ne i32 %call, 0, !dbg !1854
  br i1 %tobool, label %if.end, label %if.then, !dbg !1855

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1856
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1856

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1857, !tbaa !953
  %cmp = icmp ne %struct._object* %5, @_Py_NoneStruct, !dbg !1859
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1860

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %filename_obj, align 8, !dbg !1861, !tbaa !953
  %7 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1864
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %6, i8* %7), !dbg !1865
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1865
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !1866

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !1867
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1867

if.end.5:                                         ; preds = %if.then.1
  %8 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1868, !tbaa !953
  %call6 = call i8* @PyBytes_AsString(%struct._object* %8), !dbg !1869
  store i8* %call6, i8** %filename, align 8, !dbg !1870, !tbaa !953
  br label %if.end.7, !dbg !1871

if.else:                                          ; preds = %if.end
  store %struct._object* null, %struct._object** %filename_bytes, align 8, !dbg !1872, !tbaa !953
  store i8* null, i8** %filename, align 8, !dbg !1874, !tbaa !953
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end.5
  %9 = load i8*, i8** %filename, align 8, !dbg !1875, !tbaa !953
  %call8 = call i32 @write_history(i8* %9), !dbg !1876
  store i32 %call8, i32* %err, align 4, !dbg !1877, !tbaa !1013
  %call9 = call i32* @__errno_location() #2, !dbg !1878
  store i32 %call8, i32* %call9, align 4, !dbg !1879, !tbaa !1013
  %10 = load i32, i32* %err, align 4, !dbg !1880, !tbaa !1013
  %tobool10 = icmp ne i32 %10, 0, !dbg !1880
  br i1 %tobool10, label %if.end.14, label %land.lhs.true, !dbg !1882

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i32, i32* @_history_length, align 4, !dbg !1883, !tbaa !1013
  %cmp11 = icmp sge i32 %11, 0, !dbg !1885
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1886

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load i8*, i8** %filename, align 8, !dbg !1887, !tbaa !953
  %13 = load i32, i32* @_history_length, align 4, !dbg !1888, !tbaa !1013
  %call13 = call i32 @history_truncate_file(i8* %12, i32 %13), !dbg !1889
  br label %if.end.14, !dbg !1889

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.7
  br label %do.body, !dbg !1890

do.body:                                          ; preds = %if.end.14
  %14 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1891
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !427, metadata !947), !dbg !1893
  %15 = load %struct._object*, %struct._object** %filename_bytes, align 8, !dbg !1894, !tbaa !953
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1893, !tbaa !953
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1895, !tbaa !953
  %cmp15 = icmp ne %struct._object* %16, null, !dbg !1896
  br i1 %cmp15, label %if.then.16, label %if.end.22, !dbg !1897

if.then.16:                                       ; preds = %do.body
  br label %do.body.17, !dbg !1898

do.body.17:                                       ; preds = %if.then.16
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1900
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !1900
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !429, metadata !947), !dbg !1902
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1903, !tbaa !953
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !1902, !tbaa !953
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1904, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !1906
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !1907, !tbaa !1411
  %dec = add i64 %20, -1, !dbg !1907
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1907, !tbaa !1411
  %cmp18 = icmp ne i64 %dec, 0, !dbg !1908
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !1909

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21, !dbg !1910

if.else.20:                                       ; preds = %do.body.17
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1912, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1914
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1914, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !1915
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1915, !tbaa !1422
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1916, !tbaa !953
  call void %23(%struct._object* %24), !dbg !1917
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1918
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1918
  br label %do.cond, !dbg !1920

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !1921

do.end:                                           ; preds = %do.cond
  br label %if.end.22, !dbg !1923

if.end.22:                                        ; preds = %do.end, %do.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1925
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1925
  br label %do.cond.23, !dbg !1928

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1929

do.end.24:                                        ; preds = %do.cond.23
  %27 = load i32, i32* %err, align 4, !dbg !1931, !tbaa !1013
  %call25 = call i32* @__errno_location() #2, !dbg !1932
  store i32 %27, i32* %call25, align 4, !dbg !1933, !tbaa !1013
  %call26 = call i32* @__errno_location() #2, !dbg !1934
  %28 = load i32, i32* %call26, align 4, !dbg !1936, !tbaa !1013
  %tobool27 = icmp ne i32 %28, 0, !dbg !1937
  br i1 %tobool27, label %if.then.28, label %if.end.30, !dbg !1938

if.then.28:                                       ; preds = %do.end.24
  %29 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1939, !tbaa !953
  %call29 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %29), !dbg !1940
  store %struct._object* %call29, %struct._object** %retval, !dbg !1941
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1941

if.end.30:                                        ; preds = %do.end.24
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1942, !tbaa !1411
  %inc = add i64 %30, 1, !dbg !1942
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1942, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1943

cleanup:                                          ; preds = %if.end.30, %if.then.28, %if.then.4, %if.then
  %31 = bitcast i32* %err to i8*, !dbg !1944
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !1944
  %32 = bitcast i8** %filename to i8*, !dbg !1944
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1944
  %33 = bitcast %struct._object** %filename_bytes to i8*, !dbg !1944
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1944
  %34 = bitcast %struct._object** %filename_obj to i8*, !dbg !1944
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1944
  %35 = load %struct._object*, %struct._object** %retval, !dbg !1944
  ret %struct._object* %35, !dbg !1944
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_history_item(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %idx = alloca i32, align 4
  %hist_ent = alloca %struct._hist_entry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !434, metadata !947), !dbg !1945
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !435, metadata !947), !dbg !1946
  %0 = bitcast i32* %idx to i8*, !dbg !1947
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1947
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !436, metadata !947), !dbg !1948
  store i32 0, i32* %idx, align 4, !dbg !1948, !tbaa !1013
  %1 = bitcast %struct._hist_entry** %hist_ent to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._hist_entry** %hist_ent, metadata !437, metadata !947), !dbg !1950
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1951, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32* %idx), !dbg !1953
  %tobool = icmp ne i32 %call, 0, !dbg !1953
  br i1 %tobool, label %if.end, label %if.then, !dbg !1954

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1955
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1955

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %idx, align 4, !dbg !1956, !tbaa !1013
  %call1 = call %struct._hist_entry* @history_get(i32 %3), !dbg !1958
  store %struct._hist_entry* %call1, %struct._hist_entry** %hist_ent, align 8, !dbg !1959, !tbaa !953
  %tobool2 = icmp ne %struct._hist_entry* %call1, null, !dbg !1959
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !1960

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._hist_entry*, %struct._hist_entry** %hist_ent, align 8, !dbg !1961, !tbaa !953
  %line = getelementptr inbounds %struct._hist_entry, %struct._hist_entry* %4, i32 0, i32 0, !dbg !1962
  %5 = load i8*, i8** %line, align 8, !dbg !1962, !tbaa !1065
  %call4 = call %struct._object* @PyUnicode_FromString(i8* %5), !dbg !1963
  store %struct._object* %call4, %struct._object** %retval, !dbg !1964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1964

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1965, !tbaa !1411
  %inc = add i64 %6, 1, !dbg !1965
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1965, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1967
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1967

cleanup:                                          ; preds = %if.else, %if.then.3, %if.then
  %7 = bitcast %struct._hist_entry** %hist_ent to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1968
  %8 = bitcast i32* %idx to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !1968
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1968
  ret %struct._object* %9, !dbg !1968
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_current_history_length(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !449, metadata !947), !dbg !1969
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !450, metadata !947), !dbg !1970
  %call = call i32 @_py_get_history_length(), !dbg !1971
  %conv = sext i32 %call to i64, !dbg !1972
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1973
  ret %struct._object* %call1, !dbg !1974
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_history_length(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !469, metadata !947), !dbg !1975
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !470, metadata !947), !dbg !1976
  %0 = bitcast i32* %length to i8*, !dbg !1977
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1977
  call void @llvm.dbg.declare(metadata i32* %length, metadata !471, metadata !947), !dbg !1978
  %1 = load i32, i32* @_history_length, align 4, !dbg !1979, !tbaa !1013
  store i32 %1, i32* %length, align 4, !dbg !1978, !tbaa !1013
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1980, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32* %length), !dbg !1982
  %tobool = icmp ne i32 %call, 0, !dbg !1982
  br i1 %tobool, label %if.end, label %if.then, !dbg !1983

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1984
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1984

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %length, align 4, !dbg !1985, !tbaa !1013
  store i32 %3, i32* @_history_length, align 4, !dbg !1986, !tbaa !1013
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1987, !tbaa !1411
  %inc = add i64 %4, 1, !dbg !1987
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1987, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1988
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1988

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %length to i8*, !dbg !1989
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !1989
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1989
  ret %struct._object* %6, !dbg !1989
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_history_length(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !474, metadata !947), !dbg !1990
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !475, metadata !947), !dbg !1991
  %0 = load i32, i32* @_history_length, align 4, !dbg !1992, !tbaa !1013
  %conv = sext i32 %0 to i64, !dbg !1992
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1993
  ret %struct._object* %call, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !478, metadata !947), !dbg !1995
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !479, metadata !947), !dbg !1996
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !1997
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !1998
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !1999
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 3, !dbg !2000
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2001, !tbaa !953
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct._object** %completer, %struct._object* %1), !dbg !2002
  ret %struct._object* %call2, !dbg !2003
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completer(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !511, metadata !947), !dbg !2004
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noargs.addr, metadata !512, metadata !947), !dbg !2005
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2006
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2008
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2009
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 3, !dbg !2010
  %1 = load %struct._object*, %struct._object** %completer, align 8, !dbg !2010, !tbaa !1294
  %cmp = icmp eq %struct._object* %1, null, !dbg !2011
  br i1 %cmp, label %if.then, label %if.end, !dbg !2012

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2013, !tbaa !1411
  %inc = add i64 %2, 1, !dbg !2013
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2013, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2015
  br label %return, !dbg !2015

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2016
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2), !dbg !2017
  %3 = bitcast i8* %call3 to %struct.readlinestate*, !dbg !2018
  %completer4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 3, !dbg !2019
  %4 = load %struct._object*, %struct._object** %completer4, align 8, !dbg !2019, !tbaa !1294
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !2020
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2021, !tbaa !1411
  %inc5 = add i64 %5, 1, !dbg !2021
  store i64 %inc5, i64* %ob_refcnt, align 8, !dbg !2021, !tbaa !1411
  %call6 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2022
  %call7 = call i8* @PyModule_GetState(%struct._object* %call6), !dbg !2023
  %6 = bitcast i8* %call7 to %struct.readlinestate*, !dbg !2024
  %completer8 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %6, i32 0, i32 3, !dbg !2025
  %7 = load %struct._object*, %struct._object** %completer8, align 8, !dbg !2025, !tbaa !1294
  store %struct._object* %7, %struct._object** %retval, !dbg !2026
  br label %return, !dbg !2026

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2027
  ret %struct._object* %8, !dbg !2027
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completion_type(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !515, metadata !947), !dbg !2028
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !516, metadata !947), !dbg !2029
  %0 = load i32, i32* @rl_completion_type, align 4, !dbg !2030, !tbaa !1013
  %conv = sext i32 %0 to i64, !dbg !2030
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2031
  ret %struct._object* %call, !dbg !2032
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_begidx(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !519, metadata !947), !dbg !2033
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !520, metadata !947), !dbg !2034
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2035
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2036
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2037
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 4, !dbg !2038
  %1 = load %struct._object*, %struct._object** %begidx, align 8, !dbg !2038, !tbaa !1175
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !2039
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2040, !tbaa !1411
  %inc = add i64 %2, 1, !dbg !2040
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2040, !tbaa !1411
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2041
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2), !dbg !2042
  %3 = bitcast i8* %call3 to %struct.readlinestate*, !dbg !2043
  %begidx4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 4, !dbg !2044
  %4 = load %struct._object*, %struct._object** %begidx4, align 8, !dbg !2044, !tbaa !1175
  ret %struct._object* %4, !dbg !2045
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_endidx(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !523, metadata !947), !dbg !2046
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !524, metadata !947), !dbg !2047
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2048
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2049
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2050
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 5, !dbg !2051
  %1 = load %struct._object*, %struct._object** %endidx, align 8, !dbg !2051, !tbaa !1181
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !2052
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2053, !tbaa !1411
  %inc = add i64 %2, 1, !dbg !2053
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2053, !tbaa !1411
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2054
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2), !dbg !2055
  %3 = bitcast i8* %call3 to %struct.readlinestate*, !dbg !2056
  %endidx4 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 5, !dbg !2057
  %4 = load %struct._object*, %struct._object** %endidx4, align 8, !dbg !2057, !tbaa !1181
  ret %struct._object* %4, !dbg !2058
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completer_delims(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %break_chars = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !527, metadata !947), !dbg !2059
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !528, metadata !947), !dbg !2060
  %0 = bitcast i8** %break_chars to i8*, !dbg !2061
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2061
  call void @llvm.dbg.declare(metadata i8** %break_chars, metadata !529, metadata !947), !dbg !2062
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2063, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8** %break_chars), !dbg !2065
  %tobool = icmp ne i32 %call, 0, !dbg !2065
  br i1 %tobool, label %if.end, label %if.then, !dbg !2066

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2067
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2067

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @completer_word_break_characters, align 8, !dbg !2069, !tbaa !953
  call void @free(i8* %2) #1, !dbg !2070
  %3 = load i8*, i8** %break_chars, align 8, !dbg !2071, !tbaa !953
  %call1 = call noalias i8* @__strdup(i8* %3) #1, !dbg !2072
  store i8* %call1, i8** @completer_word_break_characters, align 8, !dbg !2073, !tbaa !953
  %4 = load i8*, i8** @completer_word_break_characters, align 8, !dbg !2074, !tbaa !953
  %tobool2 = icmp ne i8* %4, null, !dbg !2074
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !2076

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** @completer_word_break_characters, align 8, !dbg !2077, !tbaa !953
  store i8* %5, i8** @rl_completer_word_break_characters, align 8, !dbg !2079, !tbaa !953
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2080, !tbaa !1411
  %inc = add i64 %6, 1, !dbg !2080
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2080, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2081

if.else:                                          ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory(), !dbg !2082
  store %struct._object* %call4, %struct._object** %retval, !dbg !2083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2083

cleanup:                                          ; preds = %if.else, %if.then.3, %if.then
  %7 = bitcast i8** %break_chars to i8*, !dbg !2084
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2084
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2084
  ret %struct._object* %8, !dbg !2084
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_add_history(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !532, metadata !947), !dbg !2085
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !533, metadata !947), !dbg !2086
  %0 = bitcast i8** %line to i8*, !dbg !2087
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2087
  call void @llvm.dbg.declare(metadata i8** %line, metadata !534, metadata !947), !dbg !2088
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2089, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8** %line), !dbg !2091
  %tobool = icmp ne i32 %call, 0, !dbg !2091
  br i1 %tobool, label %if.end, label %if.then, !dbg !2092

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2093
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2093

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %line, align 8, !dbg !2095, !tbaa !953
  call void @add_history(i8* %2), !dbg !2096
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2097, !tbaa !1411
  %inc = add i64 %3, 1, !dbg !2097
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2097, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2098

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i8** %line to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !2099
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2099
  ret %struct._object* %5, !dbg !2099
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_remove_history(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %entry_number = alloca i32, align 4
  %entry1 = alloca %struct._hist_entry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !537, metadata !947), !dbg !2100
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !538, metadata !947), !dbg !2101
  %0 = bitcast i32* %entry_number to i8*, !dbg !2102
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2102
  call void @llvm.dbg.declare(metadata i32* %entry_number, metadata !539, metadata !947), !dbg !2103
  %1 = bitcast %struct._hist_entry** %entry1 to i8*, !dbg !2104
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2104
  call void @llvm.dbg.declare(metadata %struct._hist_entry** %entry1, metadata !540, metadata !947), !dbg !2105
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2106, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32* %entry_number), !dbg !2108
  %tobool = icmp ne i32 %call, 0, !dbg !2108
  br i1 %tobool, label %if.end, label %if.then, !dbg !2109

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2110
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2110

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %entry_number, align 4, !dbg !2111, !tbaa !1013
  %cmp = icmp slt i32 %3, 0, !dbg !2113
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2114

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2115, !tbaa !953
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0)), !dbg !2117
  store %struct._object* null, %struct._object** %retval, !dbg !2118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2118

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %entry_number, align 4, !dbg !2119, !tbaa !1013
  %call4 = call %struct._hist_entry* @remove_history(i32 %5), !dbg !2120
  store %struct._hist_entry* %call4, %struct._hist_entry** %entry1, align 8, !dbg !2121, !tbaa !953
  %6 = load %struct._hist_entry*, %struct._hist_entry** %entry1, align 8, !dbg !2122, !tbaa !953
  %tobool5 = icmp ne %struct._hist_entry* %6, null, !dbg !2122
  br i1 %tobool5, label %if.end.8, label %if.then.6, !dbg !2124

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2125, !tbaa !953
  %8 = load i32, i32* %entry_number, align 4, !dbg !2127, !tbaa !1013
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i32 %8), !dbg !2128
  store %struct._object* null, %struct._object** %retval, !dbg !2129
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2129

if.end.8:                                         ; preds = %if.end.3
  %9 = load %struct._hist_entry*, %struct._hist_entry** %entry1, align 8, !dbg !2130, !tbaa !953
  call void @_py_free_history_entry(%struct._hist_entry* %9), !dbg !2131
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2132, !tbaa !1411
  %inc = add i64 %10, 1, !dbg !2132
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2132, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2133

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %11 = bitcast %struct._hist_entry** %entry1 to i8*, !dbg !2134
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2134
  %12 = bitcast i32* %entry_number to i8*, !dbg !2134
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !2134
  %13 = load %struct._object*, %struct._object** %retval, !dbg !2134
  ret %struct._object* %13, !dbg !2134
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !549, metadata !947), !dbg !2135
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !550, metadata !947), !dbg !2136
  %0 = bitcast i32* %entry_number to i8*, !dbg !2137
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2137
  call void @llvm.dbg.declare(metadata i32* %entry_number, metadata !551, metadata !947), !dbg !2138
  %1 = bitcast i8** %line to i8*, !dbg !2139
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2139
  call void @llvm.dbg.declare(metadata i8** %line, metadata !552, metadata !947), !dbg !2140
  %2 = bitcast %struct._hist_entry** %old_entry to i8*, !dbg !2141
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct._hist_entry** %old_entry, metadata !553, metadata !947), !dbg !2142
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2143, !tbaa !953
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32* %entry_number, i8** %line), !dbg !2145
  %tobool = icmp ne i32 %call, 0, !dbg !2145
  br i1 %tobool, label %if.end, label %if.then, !dbg !2146

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2147
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2147

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %entry_number, align 4, !dbg !2149, !tbaa !1013
  %cmp = icmp slt i32 %4, 0, !dbg !2151
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2152

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2153, !tbaa !953
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0)), !dbg !2155
  store %struct._object* null, %struct._object** %retval, !dbg !2156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2156

if.end.2:                                         ; preds = %if.end
  %6 = load i32, i32* %entry_number, align 4, !dbg !2157, !tbaa !1013
  %7 = load i8*, i8** %line, align 8, !dbg !2158, !tbaa !953
  %call3 = call %struct._hist_entry* @replace_history_entry(i32 %6, i8* %7, i8* null), !dbg !2159
  store %struct._hist_entry* %call3, %struct._hist_entry** %old_entry, align 8, !dbg !2160, !tbaa !953
  %8 = load %struct._hist_entry*, %struct._hist_entry** %old_entry, align 8, !dbg !2161, !tbaa !953
  %tobool4 = icmp ne %struct._hist_entry* %8, null, !dbg !2161
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !2163

if.then.5:                                        ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2164, !tbaa !953
  %10 = load i32, i32* %entry_number, align 4, !dbg !2166, !tbaa !1013
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i32 %10), !dbg !2167
  store %struct._object* null, %struct._object** %retval, !dbg !2168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2168

if.end.7:                                         ; preds = %if.end.2
  %11 = load %struct._hist_entry*, %struct._hist_entry** %old_entry, align 8, !dbg !2169, !tbaa !953
  call void @_py_free_history_entry(%struct._hist_entry* %11), !dbg !2170
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2171, !tbaa !1411
  %inc = add i64 %12, 1, !dbg !2171
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2171, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2172

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.1, %if.then
  %13 = bitcast %struct._hist_entry** %old_entry to i8*, !dbg !2173
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !2173
  %14 = bitcast i8** %line to i8*, !dbg !2173
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2173
  %15 = bitcast i32* %entry_number to i8*, !dbg !2173
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !2173
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2173
  ret %struct._object* %16, !dbg !2173
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_completer_delims(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !556, metadata !947), !dbg !2174
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !557, metadata !947), !dbg !2175
  %0 = load i8*, i8** @rl_completer_word_break_characters, align 8, !dbg !2176, !tbaa !953
  %call = call %struct._object* @PyUnicode_FromString(i8* %0), !dbg !2177
  ret %struct._object* %call, !dbg !2178
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_completion_display_matches_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !560, metadata !947), !dbg !2179
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !561, metadata !947), !dbg !2180
  %0 = bitcast %struct._object** %result to i8*, !dbg !2181
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !562, metadata !947), !dbg !2182
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2183
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2184
  %1 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2185
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %1, i32 0, i32 0, !dbg !2186
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2187, !tbaa !953
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), %struct._object** %completion_display_matches_hook, %struct._object* %2), !dbg !2188
  store %struct._object* %call2, %struct._object** %result, align 8, !dbg !2182, !tbaa !953
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2189
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3), !dbg !2190
  %3 = bitcast i8* %call4 to %struct.readlinestate*, !dbg !2191
  %completion_display_matches_hook5 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 0, !dbg !2192
  %4 = load %struct._object*, %struct._object** %completion_display_matches_hook5, align 8, !dbg !2192, !tbaa !1201
  %tobool = icmp ne %struct._object* %4, null, !dbg !2193
  %cond = select i1 %tobool, void (i8**, i32, i32)* @on_completion_display_matches_hook, void (i8**, i32, i32)* null, !dbg !2193
  store void (i8**, i32, i32)* %cond, void (i8**, i32, i32)** @rl_completion_display_matches_hook, align 8, !dbg !2194, !tbaa !953
  %5 = load %struct._object*, %struct._object** %result, align 8, !dbg !2195, !tbaa !953
  %6 = bitcast %struct._object** %result to i8*, !dbg !2196
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !2196
  ret %struct._object* %5, !dbg !2197
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_startup_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !596, metadata !947), !dbg !2198
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !597, metadata !947), !dbg !2199
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2200
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2201
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2202
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 1, !dbg !2203
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2204, !tbaa !953
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), %struct._object** %startup_hook, %struct._object* %1), !dbg !2205
  ret %struct._object* %call2, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_pre_input_hook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !600, metadata !947), !dbg !2207
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !601, metadata !947), !dbg !2208
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2209
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2210
  %0 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2211
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %0, i32 0, i32 2, !dbg !2212
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2213, !tbaa !953
  %call2 = call %struct._object* @set_hook(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), %struct._object** %pre_input_hook, %struct._object* %1), !dbg !2214
  ret %struct._object* %call2, !dbg !2215
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_clear_history(%struct._object* %self, %struct._object* %noarg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noarg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !604, metadata !947), !dbg !2216
  store %struct._object* %noarg, %struct._object** %noarg.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %noarg.addr, metadata !605, metadata !947), !dbg !2217
  call void @clear_history(), !dbg !2218
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2219, !tbaa !1411
  %inc = add i64 %0, 1, !dbg !2219
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2219, !tbaa !1411
  ret %struct._object* @_Py_NoneStruct, !dbg !2220
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare i32 @rl_parse_and_bind(i8*) #3

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare i32 @rl_insert_text(i8*) #3

declare void @rl_redisplay() #3

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #3

declare i32 @rl_read_init_file(i8*) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare i32 @read_history(i8*) #3

declare i32 @write_history(i8*) #3

declare i32 @history_truncate_file(i8*, i32) #3

declare %struct._hist_entry* @history_get(i32) #3

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @_py_get_history_length() #0 {
entry:
  %hist_st = alloca %struct._hist_state*, align 8
  %length = alloca i32, align 4
  %0 = bitcast %struct._hist_state** %hist_st to i8*, !dbg !2221
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2221
  call void @llvm.dbg.declare(metadata %struct._hist_state** %hist_st, metadata !455, metadata !947), !dbg !2222
  %call = call %struct._hist_state* @history_get_history_state(), !dbg !2223
  store %struct._hist_state* %call, %struct._hist_state** %hist_st, align 8, !dbg !2222, !tbaa !953
  %1 = bitcast i32* %length to i8*, !dbg !2224
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2224
  call void @llvm.dbg.declare(metadata i32* %length, metadata !466, metadata !947), !dbg !2225
  %2 = load %struct._hist_state*, %struct._hist_state** %hist_st, align 8, !dbg !2226, !tbaa !953
  %length1 = getelementptr inbounds %struct._hist_state, %struct._hist_state* %2, i32 0, i32 2, !dbg !2227
  %3 = load i32, i32* %length1, align 4, !dbg !2227, !tbaa !2228
  store i32 %3, i32* %length, align 4, !dbg !2225, !tbaa !1013
  %4 = load %struct._hist_state*, %struct._hist_state** %hist_st, align 8, !dbg !2230, !tbaa !953
  %5 = bitcast %struct._hist_state* %4 to i8*, !dbg !2230
  call void @free(i8* %5) #1, !dbg !2231
  %6 = load i32, i32* %length, align 4, !dbg !2232, !tbaa !1013
  %7 = bitcast i32* %length to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2233
  %8 = bitcast %struct._hist_state** %hist_st to i8*, !dbg !2233
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2233
  ret i32 %6, !dbg !2234
}

declare %struct._hist_state* @history_get_history_state() #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_hook(i8* %funcname, %struct._object** %hook_var, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %funcname.addr = alloca i8*, align 8
  %hook_var.addr = alloca %struct._object**, align 8
  %args.addr = alloca %struct._object*, align 8
  %function = alloca %struct._object*, align 8
  %buf = alloca [80 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !485, metadata !947), !dbg !2235
  store %struct._object** %hook_var, %struct._object*** %hook_var.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object*** %hook_var.addr, metadata !486, metadata !947), !dbg !2236
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !487, metadata !947), !dbg !2237
  %0 = bitcast %struct._object** %function to i8*, !dbg !2238
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2238
  call void @llvm.dbg.declare(metadata %struct._object** %function, metadata !488, metadata !947), !dbg !2239
  store %struct._object* @_Py_NoneStruct, %struct._object** %function, align 8, !dbg !2239, !tbaa !953
  %1 = bitcast [80 x i8]* %buf to i8*, !dbg !2240
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !2240
  call void @llvm.dbg.declare(metadata [80 x i8]* %buf, metadata !489, metadata !947), !dbg !2241
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0, !dbg !2242
  %2 = load i8*, i8** %funcname.addr, align 8, !dbg !2243, !tbaa !953
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* %2), !dbg !2244
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2245, !tbaa !953
  %arraydecay1 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0, !dbg !2247
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* %arraydecay1, %struct._object** %function), !dbg !2248
  %tobool = icmp ne i32 %call2, 0, !dbg !2248
  br i1 %tobool, label %if.end, label %if.then, !dbg !2249

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2250

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %function, align 8, !dbg !2251, !tbaa !953
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !2252
  br i1 %cmp, label %if.then.3, label %if.else.13, !dbg !2253

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !2254

do.body:                                          ; preds = %if.then.3
  %5 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2255
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2255
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !493, metadata !947), !dbg !2257
  %6 = load %struct._object**, %struct._object*** %hook_var.addr, align 8, !dbg !2258, !tbaa !953
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !2259, !tbaa !953
  store %struct._object* %7, %struct._object** %_py_tmp, align 8, !dbg !2257, !tbaa !953
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2260, !tbaa !953
  %cmp4 = icmp ne %struct._object* %8, null, !dbg !2261
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !2262

if.then.5:                                        ; preds = %do.body
  %9 = load %struct._object**, %struct._object*** %hook_var.addr, align 8, !dbg !2263, !tbaa !953
  store %struct._object* null, %struct._object** %9, align 8, !dbg !2265, !tbaa !953
  br label %do.body.6, !dbg !2266

do.body.6:                                        ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2267
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2267
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !497, metadata !947), !dbg !2269
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2270, !tbaa !953
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2269, !tbaa !953
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2271, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2273
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !1411
  %dec = add i64 %13, -1, !dbg !2274
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !1411
  %cmp7 = icmp ne i64 %dec, 0, !dbg !2275
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2276

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9, !dbg !2277

if.else:                                          ; preds = %do.body.6
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2279, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2281
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2281, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2282
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2282, !tbaa !1422
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2283, !tbaa !953
  call void %16(%struct._object* %17), !dbg !2284
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2285
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !2285
  br label %do.cond, !dbg !2287

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2288

do.end:                                           ; preds = %do.cond
  br label %if.end.10, !dbg !2290

if.end.10:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2292
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !2292
  br label %do.cond.11, !dbg !2295

do.cond.11:                                       ; preds = %if.end.10
  br label %do.end.12, !dbg !2296

do.end.12:                                        ; preds = %do.cond.11
  br label %if.end.41, !dbg !2298

if.else.13:                                       ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %function, align 8, !dbg !2299, !tbaa !953
  %call14 = call i32 @PyCallable_Check(%struct._object* %20), !dbg !2300
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2300
  br i1 %tobool15, label %if.then.16, label %if.else.38, !dbg !2301

if.then.16:                                       ; preds = %if.else.13
  %21 = bitcast %struct._object** %tmp to i8*, !dbg !2302
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !501, metadata !947), !dbg !2303
  %22 = load %struct._object**, %struct._object*** %hook_var.addr, align 8, !dbg !2304, !tbaa !953
  %23 = load %struct._object*, %struct._object** %22, align 8, !dbg !2305, !tbaa !953
  store %struct._object* %23, %struct._object** %tmp, align 8, !dbg !2303, !tbaa !953
  %24 = load %struct._object*, %struct._object** %function, align 8, !dbg !2306, !tbaa !953
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2307
  %25 = load i64, i64* %ob_refcnt17, align 8, !dbg !2308, !tbaa !1411
  %inc = add i64 %25, 1, !dbg !2308
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !2308, !tbaa !1411
  %26 = load %struct._object*, %struct._object** %function, align 8, !dbg !2309, !tbaa !953
  %27 = load %struct._object**, %struct._object*** %hook_var.addr, align 8, !dbg !2310, !tbaa !953
  store %struct._object* %26, %struct._object** %27, align 8, !dbg !2311, !tbaa !953
  br label %do.body.18, !dbg !2312

do.body.18:                                       ; preds = %if.then.16
  %28 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2313
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2313
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !504, metadata !947), !dbg !2315
  %29 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2316, !tbaa !953
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2315, !tbaa !953
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2317, !tbaa !953
  %cmp20 = icmp ne %struct._object* %30, null, !dbg !2318
  br i1 %cmp20, label %if.then.21, label %if.end.35, !dbg !2319

if.then.21:                                       ; preds = %do.body.18
  br label %do.body.22, !dbg !2320

do.body.22:                                       ; preds = %if.then.21
  %31 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !2322
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !506, metadata !947), !dbg !2324
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2325, !tbaa !953
  store %struct._object* %32, %struct._object** %_py_decref_tmp24, align 8, !dbg !2324, !tbaa !953
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2326, !tbaa !953
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2328
  %34 = load i64, i64* %ob_refcnt25, align 8, !dbg !2329, !tbaa !1411
  %dec26 = add i64 %34, -1, !dbg !2329
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !2329, !tbaa !1411
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !2330
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !2331

if.then.28:                                       ; preds = %do.body.22
  br label %if.end.32, !dbg !2332

if.else.29:                                       ; preds = %do.body.22
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2334, !tbaa !953
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2336
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2336, !tbaa !1420
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2337
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !2337, !tbaa !1422
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2338, !tbaa !953
  call void %37(%struct._object* %38), !dbg !2339
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %39 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2340
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2340
  br label %do.cond.33, !dbg !2342

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !2343

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !2345

if.end.35:                                        ; preds = %do.end.34, %do.body.18
  %40 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2347
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2347
  br label %do.cond.36, !dbg !2350

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !2351

do.end.37:                                        ; preds = %do.cond.36
  %41 = bitcast %struct._object** %tmp to i8*, !dbg !2353
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2353
  br label %if.end.40, !dbg !2354

if.else.38:                                       ; preds = %if.else.13
  %42 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2355, !tbaa !953
  %43 = load i8*, i8** %funcname.addr, align 8, !dbg !2357, !tbaa !953
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i8* %43), !dbg !2358
  store %struct._object* null, %struct._object** %retval, !dbg !2359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2359

if.end.40:                                        ; preds = %do.end.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %do.end.12
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2360, !tbaa !1411
  %inc42 = add i64 %44, 1, !dbg !2360
  store i64 %inc42, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2360, !tbaa !1411
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2361
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2361

cleanup:                                          ; preds = %if.end.41, %if.else.38, %if.then
  %45 = bitcast [80 x i8]* %buf to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 80, i8* %45) #1, !dbg !2362
  %46 = bitcast %struct._object** %function to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2362
  %47 = load %struct._object*, %struct._object** %retval, !dbg !2362
  ret %struct._object* %47, !dbg !2362
}

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8*) #5

declare void @add_history(i8*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._hist_entry* @remove_history(i32) #3

; Function Attrs: nounwind uwtable
define internal void @_py_free_history_entry(%struct._hist_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct._hist_entry*, align 8
  %data = alloca i8*, align 8
  store %struct._hist_entry* %entry1, %struct._hist_entry** %entry.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._hist_entry** %entry.addr, metadata !545, metadata !947), !dbg !2363
  %0 = bitcast i8** %data to i8*, !dbg !2364
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2364
  call void @llvm.dbg.declare(metadata i8** %data, metadata !546, metadata !947), !dbg !2365
  %1 = load %struct._hist_entry*, %struct._hist_entry** %entry.addr, align 8, !dbg !2366, !tbaa !953
  %call = call i8* @free_history_entry(%struct._hist_entry* %1), !dbg !2367
  store i8* %call, i8** %data, align 8, !dbg !2365, !tbaa !953
  %2 = load i8*, i8** %data, align 8, !dbg !2368, !tbaa !953
  call void @free(i8* %2) #1, !dbg !2369
  %3 = bitcast i8** %data to i8*, !dbg !2370
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !2370
  ret void, !dbg !2370
}

declare i8* @free_history_entry(%struct._hist_entry*) #3

declare %struct._hist_entry* @replace_history_entry(i32, i8*, i8*) #3

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
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_xdecref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store i8** %matches, i8*** %matches.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8*** %matches.addr, metadata !565, metadata !947), !dbg !2371
  store i32 %num_matches, i32* %num_matches.addr, align 4, !tbaa !1013
  call void @llvm.dbg.declare(metadata i32* %num_matches.addr, metadata !566, metadata !947), !dbg !2372
  store i32 %max_length, i32* %max_length.addr, align 4, !tbaa !1013
  call void @llvm.dbg.declare(metadata i32* %max_length.addr, metadata !567, metadata !947), !dbg !2373
  %0 = bitcast i32* %i to i8*, !dbg !2374
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2374
  call void @llvm.dbg.declare(metadata i32* %i, metadata !568, metadata !947), !dbg !2375
  %1 = bitcast %struct._object** %m to i8*, !dbg !2376
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !569, metadata !947), !dbg !2377
  store %struct._object* null, %struct._object** %m, align 8, !dbg !2377, !tbaa !953
  %2 = bitcast %struct._object** %s to i8*, !dbg !2376
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !570, metadata !947), !dbg !2378
  store %struct._object* null, %struct._object** %s, align 8, !dbg !2378, !tbaa !953
  %3 = bitcast %struct._object** %r to i8*, !dbg !2376
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !571, metadata !947), !dbg !2379
  store %struct._object* null, %struct._object** %r, align 8, !dbg !2379, !tbaa !953
  %4 = bitcast i32* %gilstate to i8*, !dbg !2380
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2380
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !572, metadata !947), !dbg !2381
  %call = call i32 @PyGILState_Ensure(), !dbg !2382
  store i32 %call, i32* %gilstate, align 4, !dbg !2381, !tbaa !1036
  %5 = load i32, i32* %num_matches.addr, align 4, !dbg !2383, !tbaa !1013
  %conv = sext i32 %5 to i64, !dbg !2383
  %call1 = call %struct._object* @PyList_New(i64 %conv), !dbg !2384
  store %struct._object* %call1, %struct._object** %m, align 8, !dbg !2385, !tbaa !953
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !2386, !tbaa !953
  %cmp = icmp eq %struct._object* %6, null, !dbg !2388
  br i1 %cmp, label %if.then, label %if.end, !dbg !2389

if.then:                                          ; preds = %entry
  br label %error, !dbg !2390

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2391, !tbaa !1013
  br label %for.cond, !dbg !2393

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !2394, !tbaa !1013
  %8 = load i32, i32* %num_matches.addr, align 4, !dbg !2398, !tbaa !1013
  %cmp3 = icmp slt i32 %7, %8, !dbg !2399
  br i1 %cmp3, label %for.body, label %for.end, !dbg !2400

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !2401, !tbaa !1013
  %add = add i32 %9, 1, !dbg !2403
  %idxprom = sext i32 %add to i64, !dbg !2404
  %10 = load i8**, i8*** %matches.addr, align 8, !dbg !2404, !tbaa !953
  %arrayidx = getelementptr i8*, i8** %10, i64 %idxprom, !dbg !2404
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !2404, !tbaa !953
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %11), !dbg !2405
  store %struct._object* %call5, %struct._object** %s, align 8, !dbg !2406, !tbaa !953
  %12 = load %struct._object*, %struct._object** %s, align 8, !dbg !2407, !tbaa !953
  %cmp6 = icmp eq %struct._object* %12, null, !dbg !2409
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !2410

if.then.8:                                        ; preds = %for.body
  br label %error, !dbg !2411

if.end.9:                                         ; preds = %for.body
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !2412, !tbaa !953
  %14 = load i32, i32* %i, align 4, !dbg !2414, !tbaa !1013
  %conv10 = sext i32 %14 to i64, !dbg !2414
  %15 = load %struct._object*, %struct._object** %s, align 8, !dbg !2415, !tbaa !953
  %call11 = call i32 @PyList_SetItem(%struct._object* %13, i64 %conv10, %struct._object* %15), !dbg !2416
  %cmp12 = icmp eq i32 %call11, -1, !dbg !2417
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !2418

if.then.14:                                       ; preds = %if.end.9
  br label %error, !dbg !2419

if.end.15:                                        ; preds = %if.end.9
  br label %for.inc, !dbg !2420

for.inc:                                          ; preds = %if.end.15
  %16 = load i32, i32* %i, align 4, !dbg !2421, !tbaa !1013
  %inc = add i32 %16, 1, !dbg !2421
  store i32 %inc, i32* %i, align 4, !dbg !2421, !tbaa !1013
  br label %for.cond, !dbg !2422

for.end:                                          ; preds = %for.cond
  %call16 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2423
  %call17 = call i8* @PyModule_GetState(%struct._object* %call16), !dbg !2424
  %17 = bitcast i8* %call17 to %struct.readlinestate*, !dbg !2425
  %completion_display_matches_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %17, i32 0, i32 0, !dbg !2426
  %18 = load %struct._object*, %struct._object** %completion_display_matches_hook, align 8, !dbg !2426, !tbaa !1201
  %19 = load i8**, i8*** %matches.addr, align 8, !dbg !2427, !tbaa !953
  %arrayidx18 = getelementptr i8*, i8** %19, i64 0, !dbg !2427
  %20 = load i8*, i8** %arrayidx18, align 8, !dbg !2427, !tbaa !953
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !2428, !tbaa !953
  %22 = load i32, i32* %max_length.addr, align 4, !dbg !2429, !tbaa !1013
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* %20, %struct._object* %21, i32 %22), !dbg !2430
  store %struct._object* %call19, %struct._object** %r, align 8, !dbg !2431, !tbaa !953
  br label %do.body, !dbg !2432

do.body:                                          ; preds = %for.end
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2433
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !574, metadata !947), !dbg !2435
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !2436, !tbaa !953
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !2435, !tbaa !953
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2437, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2439
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !2440, !tbaa !1411
  %dec = add i64 %26, -1, !dbg !2440
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2440, !tbaa !1411
  %cmp20 = icmp ne i64 %dec, 0, !dbg !2441
  br i1 %cmp20, label %if.then.22, label %if.else, !dbg !2442

if.then.22:                                       ; preds = %do.body
  br label %if.end.23, !dbg !2443

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2445, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2447
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2447, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !2448
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2448, !tbaa !1422
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2449, !tbaa !953
  call void %29(%struct._object* %30), !dbg !2450
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2451
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2451
  br label %do.cond, !dbg !2453

do.cond:                                          ; preds = %if.end.23
  br label %do.end, !dbg !2454

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %m, align 8, !dbg !2456, !tbaa !953
  %32 = load %struct._object*, %struct._object** %r, align 8, !dbg !2458, !tbaa !953
  %cmp24 = icmp eq %struct._object* %32, null, !dbg !2460
  br i1 %cmp24, label %if.then.33, label %lor.lhs.false, !dbg !2461

lor.lhs.false:                                    ; preds = %do.end
  %33 = load %struct._object*, %struct._object** %r, align 8, !dbg !2462, !tbaa !953
  %cmp26 = icmp ne %struct._object* %33, @_Py_NoneStruct, !dbg !2463
  br i1 %cmp26, label %land.lhs.true, label %if.end.34, !dbg !2464

land.lhs.true:                                    ; preds = %lor.lhs.false
  %34 = load %struct._object*, %struct._object** %r, align 8, !dbg !2465, !tbaa !953
  %call28 = call i64 @PyLong_AsLong(%struct._object* %34), !dbg !2467
  %cmp29 = icmp eq i64 %call28, -1, !dbg !2468
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.34, !dbg !2469

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %call32 = call %struct._object* @PyErr_Occurred(), !dbg !2470
  %tobool = icmp ne %struct._object* %call32, null, !dbg !2470
  br i1 %tobool, label %if.then.33, label %if.end.34, !dbg !2472

if.then.33:                                       ; preds = %land.lhs.true.31, %do.end
  br label %error, !dbg !2473

if.end.34:                                        ; preds = %land.lhs.true.31, %land.lhs.true, %lor.lhs.false
  br label %do.body.35, !dbg !2475

do.body.35:                                       ; preds = %if.end.34
  %35 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2476
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !2476
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !576, metadata !947), !dbg !2478
  %36 = load %struct._object*, %struct._object** %r, align 8, !dbg !2479, !tbaa !953
  store %struct._object* %36, %struct._object** %_py_tmp, align 8, !dbg !2478, !tbaa !953
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2480, !tbaa !953
  %cmp36 = icmp ne %struct._object* %37, null, !dbg !2481
  br i1 %cmp36, label %if.then.38, label %if.end.52, !dbg !2482

if.then.38:                                       ; preds = %do.body.35
  store %struct._object* null, %struct._object** %r, align 8, !dbg !2483, !tbaa !953
  br label %do.body.39, !dbg !2485

do.body.39:                                       ; preds = %if.then.38
  %38 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !2486
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !2486
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !578, metadata !947), !dbg !2488
  %39 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2489, !tbaa !953
  store %struct._object* %39, %struct._object** %_py_decref_tmp40, align 8, !dbg !2488, !tbaa !953
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2490, !tbaa !953
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2492
  %41 = load i64, i64* %ob_refcnt41, align 8, !dbg !2493, !tbaa !1411
  %dec42 = add i64 %41, -1, !dbg !2493
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !2493, !tbaa !1411
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !2494
  br i1 %cmp43, label %if.then.45, label %if.else.46, !dbg !2495

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49, !dbg !2496

if.else.46:                                       ; preds = %do.body.39
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2498, !tbaa !953
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !2500
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2500, !tbaa !1420
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !2501
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !2501, !tbaa !1422
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !2502, !tbaa !953
  call void %44(%struct._object* %45), !dbg !2503
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %46 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !2504
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2504
  br label %do.cond.50, !dbg !2506

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !2507

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.52, !dbg !2509

if.end.52:                                        ; preds = %do.end.51, %do.body.35
  %47 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2511
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2511
  br label %do.cond.53, !dbg !2514

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !2515

do.end.54:                                        ; preds = %do.cond.53
  br i1 false, label %if.then.55, label %if.end.97, !dbg !2517

if.then.55:                                       ; preds = %do.end.54
  br label %error, !dbg !2518

error:                                            ; preds = %if.then.55, %if.then.33, %if.then.14, %if.then.8, %if.then
  call void @PyErr_Clear(), !dbg !2520
  br label %do.body.56, !dbg !2521

do.body.56:                                       ; preds = %error
  %48 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2522
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !2522
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !582, metadata !947), !dbg !2524
  %49 = load %struct._object*, %struct._object** %m, align 8, !dbg !2525, !tbaa !953
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2524, !tbaa !953
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2526, !tbaa !953
  %cmp57 = icmp ne %struct._object* %50, null, !dbg !2527
  br i1 %cmp57, label %if.then.59, label %if.end.73, !dbg !2528

if.then.59:                                       ; preds = %do.body.56
  br label %do.body.60, !dbg !2529

do.body.60:                                       ; preds = %if.then.59
  %51 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2531
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !2531
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !586, metadata !947), !dbg !2533
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2534, !tbaa !953
  store %struct._object* %52, %struct._object** %_py_decref_tmp61, align 8, !dbg !2533, !tbaa !953
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2535, !tbaa !953
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !2537
  %54 = load i64, i64* %ob_refcnt62, align 8, !dbg !2538, !tbaa !1411
  %dec63 = add i64 %54, -1, !dbg !2538
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !2538, !tbaa !1411
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !2539
  br i1 %cmp64, label %if.then.66, label %if.else.67, !dbg !2540

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70, !dbg !2541

if.else.67:                                       ; preds = %do.body.60
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2543, !tbaa !953
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !2545
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !2545, !tbaa !1420
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !2546
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8, !dbg !2546, !tbaa !1422
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !2547, !tbaa !953
  call void %57(%struct._object* %58), !dbg !2548
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  %59 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !2549
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !2549
  br label %do.cond.71, !dbg !2551

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !2552

do.end.72:                                        ; preds = %do.cond.71
  br label %if.end.73, !dbg !2554

if.end.73:                                        ; preds = %do.end.72, %do.body.56
  %60 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2556
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !2556
  br label %do.cond.74, !dbg !2559

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75, !dbg !2560

do.end.75:                                        ; preds = %do.cond.74
  br label %do.body.76, !dbg !2562

do.body.76:                                       ; preds = %do.end.75
  %61 = bitcast %struct._object** %_py_xdecref_tmp77 to i8*, !dbg !2563
  call void @llvm.lifetime.start(i64 8, i8* %61) #1, !dbg !2563
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp77, metadata !589, metadata !947), !dbg !2565
  %62 = load %struct._object*, %struct._object** %r, align 8, !dbg !2566, !tbaa !953
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp77, align 8, !dbg !2565, !tbaa !953
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8, !dbg !2567, !tbaa !953
  %cmp78 = icmp ne %struct._object* %63, null, !dbg !2568
  br i1 %cmp78, label %if.then.80, label %if.end.94, !dbg !2569

if.then.80:                                       ; preds = %do.body.76
  br label %do.body.81, !dbg !2570

do.body.81:                                       ; preds = %if.then.80
  %64 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !2572
  call void @llvm.lifetime.start(i64 8, i8* %64) #1, !dbg !2572
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !591, metadata !947), !dbg !2574
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8, !dbg !2575, !tbaa !953
  store %struct._object* %65, %struct._object** %_py_decref_tmp82, align 8, !dbg !2574, !tbaa !953
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2576, !tbaa !953
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !2578
  %67 = load i64, i64* %ob_refcnt83, align 8, !dbg !2579, !tbaa !1411
  %dec84 = add i64 %67, -1, !dbg !2579
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !2579, !tbaa !1411
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !2580
  br i1 %cmp85, label %if.then.87, label %if.else.88, !dbg !2581

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91, !dbg !2582

if.else.88:                                       ; preds = %do.body.81
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2584, !tbaa !953
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !2586
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !2586, !tbaa !1420
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !2587
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !2587, !tbaa !1422
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2588, !tbaa !953
  call void %70(%struct._object* %71), !dbg !2589
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  %72 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !2590
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !2590
  br label %do.cond.92, !dbg !2592

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !2593

do.end.93:                                        ; preds = %do.cond.92
  br label %if.end.94, !dbg !2595

if.end.94:                                        ; preds = %do.end.93, %do.body.76
  %73 = bitcast %struct._object** %_py_xdecref_tmp77 to i8*, !dbg !2597
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !2597
  br label %do.cond.95, !dbg !2598

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !2599

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97, !dbg !2601

if.end.97:                                        ; preds = %do.end.96, %do.end.54
  %74 = load i32, i32* %gilstate, align 4, !dbg !2602, !tbaa !1036
  call void @PyGILState_Release(i32 %74), !dbg !2603
  %75 = bitcast i32* %gilstate to i8*, !dbg !2604
  call void @llvm.lifetime.end(i64 4, i8* %75) #1, !dbg !2604
  %76 = bitcast %struct._object** %r to i8*, !dbg !2604
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !2604
  %77 = bitcast %struct._object** %s to i8*, !dbg !2604
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !2604
  %78 = bitcast %struct._object** %m to i8*, !dbg !2604
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !2604
  %79 = bitcast i32* %i to i8*, !dbg !2604
  call void @llvm.lifetime.end(i64 4, i8* %79) #1, !dbg !2604
  ret void, !dbg !2604
}

declare i32 @PyGILState_Ensure() #3

declare %struct._object* @PyList_New(i64) #3

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_Clear() #3

declare void @PyGILState_Release(i32) #3

declare void @clear_history() #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #5

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #7

declare void @rl_prep_terminal(i32) #3

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
  store i8* %prompt, i8** %prompt.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %prompt.addr, metadata !704, metadata !947), !dbg !2605
  store i32* %signal, i32** %signal.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i32** %signal.addr, metadata !705, metadata !947), !dbg !2606
  %0 = bitcast i8** %not_done_reading to i8*, !dbg !2607
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2607
  call void @llvm.dbg.declare(metadata i8** %not_done_reading, metadata !706, metadata !947), !dbg !2608
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %not_done_reading, align 8, !dbg !2608, !tbaa !953
  %1 = bitcast %struct.fd_set* %selectset to i8*, !dbg !2609
  call void @llvm.lifetime.start(i64 128, i8* %1) #1, !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.fd_set* %selectset, metadata !707, metadata !947), !dbg !2610
  %2 = load i32*, i32** %signal.addr, align 8, !dbg !2611, !tbaa !953
  store i32 0, i32* %2, align 4, !dbg !2612, !tbaa !1013
  store i32 0, i32* @rl_catch_signals, align 4, !dbg !2613, !tbaa !1013
  %3 = load i8*, i8** %prompt.addr, align 8, !dbg !2614, !tbaa !953
  call void @rl_callback_handler_install(i8* %3, void (i8*)* @rlhandler), !dbg !2615
  br label %do.body, !dbg !2616

do.body:                                          ; preds = %entry
  %4 = bitcast i32* %__d0 to i8*, !dbg !2617
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2617
  call void @llvm.dbg.declare(metadata i32* %__d0, metadata !715, metadata !947), !dbg !2619
  %5 = bitcast i32* %__d1 to i8*, !dbg !2620
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2620
  call void @llvm.dbg.declare(metadata i32* %__d1, metadata !717, metadata !947), !dbg !2621
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %selectset, i32 0, i32 0, !dbg !2622
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0, !dbg !2623
  %6 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #1, !dbg !2624, !srcloc !2625
  %asmresult = extractvalue { i64, i64* } %6, 0, !dbg !2624
  %asmresult1 = extractvalue { i64, i64* } %6, 1, !dbg !2624
  %7 = trunc i64 %asmresult to i32, !dbg !2624
  store i32 %7, i32* %__d0, align 4, !dbg !2624, !tbaa !1013
  %8 = ptrtoint i64* %asmresult1 to i64, !dbg !2624
  %9 = trunc i64 %8 to i32, !dbg !2624
  store i32 %9, i32* %__d1, align 4, !dbg !2624, !tbaa !1013
  %10 = bitcast i32* %__d1 to i8*, !dbg !2626
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !2626
  %11 = bitcast i32* %__d0 to i8*, !dbg !2626
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !2626
  br label %do.cond, !dbg !2627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2628

do.end:                                           ; preds = %do.cond
  %12 = load i8*, i8** %not_done_reading, align 8, !dbg !2630, !tbaa !953
  store i8* %12, i8** @completed_input_string, align 8, !dbg !2631, !tbaa !953
  br label %while.cond, !dbg !2632

while.cond:                                       ; preds = %if.end.25, %do.end
  %13 = load i8*, i8** @completed_input_string, align 8, !dbg !2633, !tbaa !953
  %14 = load i8*, i8** %not_done_reading, align 8, !dbg !2636, !tbaa !953
  %cmp = icmp eq i8* %13, %14, !dbg !2637
  br i1 %cmp, label %while.body, label %while.end.26, !dbg !2632

while.body:                                       ; preds = %while.cond
  %15 = bitcast i32* %has_input to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %has_input, metadata !718, metadata !947), !dbg !2639
  store i32 0, i32* %has_input, align 4, !dbg !2639, !tbaa !1013
  %16 = bitcast i32* %err to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %err, metadata !720, metadata !947), !dbg !2640
  store i32 0, i32* %err, align 4, !dbg !2640, !tbaa !1013
  br label %while.cond.2, !dbg !2641

while.cond.2:                                     ; preds = %if.end.14, %while.body
  %17 = load i32, i32* %has_input, align 4, !dbg !2642, !tbaa !1013
  %tobool = icmp ne i32 %17, 0, !dbg !2645
  %lnot = xor i1 %tobool, true, !dbg !2645
  br i1 %lnot, label %while.body.3, label %while.end, !dbg !2641

while.body.3:                                     ; preds = %while.cond.2
  %18 = bitcast %struct.timeval* %timeout to i8*, !dbg !2646
  call void @llvm.lifetime.start(i64 16, i8* %18) #1, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.timeval* %timeout, metadata !721, metadata !947), !dbg !2647
  %19 = bitcast %struct.timeval* %timeout to i8*, !dbg !2647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.timeval* @readline_until_enter_or_signal.timeout to i8*), i64 16, i32 8, i1 false), !dbg !2647
  %20 = bitcast %struct.timeval** %timeoutp to i8*, !dbg !2648
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2648
  call void @llvm.dbg.declare(metadata %struct.timeval** %timeoutp, metadata !730, metadata !947), !dbg !2649
  store %struct.timeval* null, %struct.timeval** %timeoutp, align 8, !dbg !2649, !tbaa !953
  %21 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !2650, !tbaa !953
  %tobool4 = icmp ne i32 ()* %21, null, !dbg !2650
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2652

if.then:                                          ; preds = %while.body.3
  store %struct.timeval* %timeout, %struct.timeval** %timeoutp, align 8, !dbg !2653, !tbaa !953
  br label %if.end, !dbg !2654

if.end:                                           ; preds = %if.then, %while.body.3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8, !dbg !2655, !tbaa !953
  %call = call i32 @fileno(%struct._IO_FILE* %22) #1, !dbg !2656
  %rem = srem i32 %call, 64, !dbg !2657
  %sh_prom = zext i32 %rem to i64, !dbg !2658
  %shl = shl i64 1, %sh_prom, !dbg !2658
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8, !dbg !2659, !tbaa !953
  %call5 = call i32 @fileno(%struct._IO_FILE* %23) #1, !dbg !2660
  %div = sdiv i32 %call5, 64, !dbg !2661
  %idxprom = sext i32 %div to i64, !dbg !2662
  %fds_bits6 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %selectset, i32 0, i32 0, !dbg !2663
  %arrayidx7 = getelementptr [16 x i64], [16 x i64]* %fds_bits6, i32 0, i64 %idxprom, !dbg !2662
  %24 = load i64, i64* %arrayidx7, align 8, !dbg !2664, !tbaa !1048
  %or = or i64 %24, %shl, !dbg !2664
  store i64 %or, i64* %arrayidx7, align 8, !dbg !2664, !tbaa !1048
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @rl_instream, align 8, !dbg !2665, !tbaa !953
  %call8 = call i32 @fileno(%struct._IO_FILE* %25) #1, !dbg !2666
  %add = add i32 %call8, 1, !dbg !2667
  %26 = load %struct.timeval*, %struct.timeval** %timeoutp, align 8, !dbg !2668, !tbaa !953
  %call9 = call i32 @select(i32 %add, %struct.fd_set* %selectset, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %26), !dbg !2669
  store i32 %call9, i32* %has_input, align 4, !dbg !2670, !tbaa !1013
  %call10 = call i32* @__errno_location() #2, !dbg !2671
  %27 = load i32, i32* %call10, align 4, !dbg !2672, !tbaa !1013
  store i32 %27, i32* %err, align 4, !dbg !2673, !tbaa !1013
  %28 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !2674, !tbaa !953
  %tobool11 = icmp ne i32 ()* %28, null, !dbg !2674
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !2676

if.then.12:                                       ; preds = %if.end
  %29 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !2677, !tbaa !953
  %call13 = call i32 %29(), !dbg !2677
  br label %if.end.14, !dbg !2677

if.end.14:                                        ; preds = %if.then.12, %if.end
  %30 = bitcast %struct.timeval** %timeoutp to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2679
  %31 = bitcast %struct.timeval* %timeout to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 16, i8* %31) #1, !dbg !2679
  br label %while.cond.2, !dbg !2641

while.end:                                        ; preds = %while.cond.2
  %32 = load i32, i32* %has_input, align 4, !dbg !2680, !tbaa !1013
  %cmp15 = icmp sgt i32 %32, 0, !dbg !2681
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !2682

if.then.16:                                       ; preds = %while.end
  call void @rl_callback_read_char(), !dbg !2683
  br label %if.end.25, !dbg !2685

if.else:                                          ; preds = %while.end
  %33 = load i32, i32* %err, align 4, !dbg !2686, !tbaa !1013
  %cmp17 = icmp eq i32 %33, 4, !dbg !2687
  br i1 %cmp17, label %if.then.18, label %if.end.24, !dbg !2688

if.then.18:                                       ; preds = %if.else
  %34 = bitcast i32* %s to i8*, !dbg !2689
  call void @llvm.lifetime.start(i64 4, i8* %34) #1, !dbg !2689
  call void @llvm.dbg.declare(metadata i32* %s, metadata !732, metadata !947), !dbg !2690
  %35 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !2691, !tbaa !953
  call void @PyEval_RestoreThread(%struct._ts* %35), !dbg !2692
  %call19 = call i32 @PyErr_CheckSignals(), !dbg !2693
  store i32 %call19, i32* %s, align 4, !dbg !2694, !tbaa !1013
  %call20 = call %struct._ts* @PyEval_SaveThread(), !dbg !2695
  %36 = load i32, i32* %s, align 4, !dbg !2696, !tbaa !1013
  %cmp21 = icmp slt i32 %36, 0, !dbg !2698
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !2699

if.then.22:                                       ; preds = %if.then.18
  call void @rl_free_line_state(), !dbg !2700
  call void @rl_cleanup_after_signal(), !dbg !2702
  call void @rl_callback_handler_remove(), !dbg !2703
  %37 = load i32*, i32** %signal.addr, align 8, !dbg !2704, !tbaa !953
  store i32 1, i32* %37, align 4, !dbg !2705, !tbaa !1013
  store i8* null, i8** @completed_input_string, align 8, !dbg !2706, !tbaa !953
  br label %if.end.23, !dbg !2707

if.end.23:                                        ; preds = %if.then.22, %if.then.18
  %38 = bitcast i32* %s to i8*, !dbg !2708
  call void @llvm.lifetime.end(i64 4, i8* %38) #1, !dbg !2708
  br label %if.end.24, !dbg !2709

if.end.24:                                        ; preds = %if.end.23, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.16
  %39 = bitcast i32* %err to i8*, !dbg !2710
  call void @llvm.lifetime.end(i64 4, i8* %39) #1, !dbg !2710
  %40 = bitcast i32* %has_input to i8*, !dbg !2710
  call void @llvm.lifetime.end(i64 4, i8* %40) #1, !dbg !2710
  br label %while.cond, !dbg !2632

while.end.26:                                     ; preds = %while.cond
  %41 = load i8*, i8** @completed_input_string, align 8, !dbg !2711, !tbaa !953
  %42 = bitcast %struct.fd_set* %selectset to i8*, !dbg !2712
  call void @llvm.lifetime.end(i64 128, i8* %42) #1, !dbg !2712
  %43 = bitcast i8** %not_done_reading to i8*, !dbg !2712
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2712
  ret i8* %41, !dbg !2713
}

declare i8* @PyMem_RawMalloc(i64) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare void @rl_callback_handler_install(i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @rlhandler(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %text.addr, metadata !740, metadata !947), !dbg !2714
  %0 = load i8*, i8** %text.addr, align 8, !dbg !2715, !tbaa !953
  store i8* %0, i8** @completed_input_string, align 8, !dbg !2716, !tbaa !953
  call void @rl_callback_handler_remove(), !dbg !2717
  ret void, !dbg !2718
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare void @rl_callback_read_char() #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare i32 @PyErr_CheckSignals() #3

declare %struct._ts* @PyEval_SaveThread() #3

declare void @rl_free_line_state() #3

declare void @rl_cleanup_after_signal() #3

declare void @rl_callback_handler_remove() #3

declare void @using_history() #3

declare i32 @rl_bind_key(i32, i32 (i32, i32)*) #3

declare i32 @rl_insert(i32, i32) #3

declare i32 @rl_bind_key_in_map(i32, i32 (i32, i32)*, %struct._keymap_entry*) #3

declare i32 @rl_complete(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @on_startup_hook() #0 {
entry:
  %r = alloca i32, align 4
  %gilstate = alloca i32, align 4
  %0 = bitcast i32* %r to i8*, !dbg !2719
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2719
  call void @llvm.dbg.declare(metadata i32* %r, metadata !752, metadata !947), !dbg !2720
  %1 = bitcast i32* %gilstate to i8*, !dbg !2721
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2721
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !753, metadata !947), !dbg !2722
  %call = call i32 @PyGILState_Ensure(), !dbg !2723
  store i32 %call, i32* %gilstate, align 4, !dbg !2722, !tbaa !1036
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2724
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1), !dbg !2725
  %2 = bitcast i8* %call2 to %struct.readlinestate*, !dbg !2726
  %startup_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 1, !dbg !2727
  %3 = load %struct._object*, %struct._object** %startup_hook, align 8, !dbg !2727, !tbaa !1232
  %call3 = call i32 @on_hook(%struct._object* %3), !dbg !2728
  store i32 %call3, i32* %r, align 4, !dbg !2729, !tbaa !1013
  %4 = load i32, i32* %gilstate, align 4, !dbg !2730, !tbaa !1036
  call void @PyGILState_Release(i32 %4), !dbg !2731
  %5 = load i32, i32* %r, align 4, !dbg !2732, !tbaa !1013
  %6 = bitcast i32* %gilstate to i8*, !dbg !2733
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !2733
  %7 = bitcast i32* %r to i8*, !dbg !2733
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2733
  ret i32 %5, !dbg !2734
}

; Function Attrs: nounwind uwtable
define internal i32 @on_pre_input_hook() #0 {
entry:
  %r = alloca i32, align 4
  %gilstate = alloca i32, align 4
  %0 = bitcast i32* %r to i8*, !dbg !2735
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2735
  call void @llvm.dbg.declare(metadata i32* %r, metadata !770, metadata !947), !dbg !2736
  %1 = bitcast i32* %gilstate to i8*, !dbg !2737
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2737
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !771, metadata !947), !dbg !2738
  %call = call i32 @PyGILState_Ensure(), !dbg !2739
  store i32 %call, i32* %gilstate, align 4, !dbg !2738, !tbaa !1036
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2740
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1), !dbg !2741
  %2 = bitcast i8* %call2 to %struct.readlinestate*, !dbg !2742
  %pre_input_hook = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %2, i32 0, i32 2, !dbg !2743
  %3 = load %struct._object*, %struct._object** %pre_input_hook, align 8, !dbg !2743, !tbaa !1263
  %call3 = call i32 @on_hook(%struct._object* %3), !dbg !2744
  store i32 %call3, i32* %r, align 4, !dbg !2745, !tbaa !1013
  %4 = load i32, i32* %gilstate, align 4, !dbg !2746, !tbaa !1036
  call void @PyGILState_Release(i32 %4), !dbg !2747
  %5 = load i32, i32* %r, align 4, !dbg !2748, !tbaa !1013
  %6 = bitcast i32* %gilstate to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !2749
  %7 = bitcast i32* %r to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2749
  ret i32 %5, !dbg !2750
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
  %_py_xdecref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store i8* %text, i8** %text.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %text.addr, metadata !776, metadata !947), !dbg !2751
  store i32 %start, i32* %start.addr, align 4, !tbaa !1013
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !777, metadata !947), !dbg !2752
  store i32 %end, i32* %end.addr, align 4, !tbaa !1013
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !778, metadata !947), !dbg !2753
  %0 = bitcast i8*** %result to i8*, !dbg !2754
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2754
  call void @llvm.dbg.declare(metadata i8*** %result, metadata !779, metadata !947), !dbg !2755
  %1 = bitcast i32* %gilstate to i8*, !dbg !2756
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2756
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !780, metadata !947), !dbg !2757
  %call = call i32 @PyGILState_Ensure(), !dbg !2758
  store i32 %call, i32* %gilstate, align 4, !dbg !2757, !tbaa !1036
  store i32 0, i32* @rl_completion_append_character, align 4, !dbg !2759, !tbaa !1013
  store i32 0, i32* @rl_completion_suppress_append, align 4, !dbg !2760, !tbaa !1013
  br label %do.body, !dbg !2761

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2762
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !781, metadata !947), !dbg !2764
  %call1 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2765
  %call2 = call i8* @PyModule_GetState(%struct._object* %call1), !dbg !2766
  %3 = bitcast i8* %call2 to %struct.readlinestate*, !dbg !2767
  %begidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %3, i32 0, i32 4, !dbg !2768
  %4 = load %struct._object*, %struct._object** %begidx, align 8, !dbg !2768, !tbaa !1175
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2764, !tbaa !953
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2769, !tbaa !953
  %cmp = icmp ne %struct._object* %5, null, !dbg !2770
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !2771

if.then:                                          ; preds = %do.body
  br label %do.body.3, !dbg !2772

do.body.3:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2774
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !783, metadata !947), !dbg !2776
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2777, !tbaa !953
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2776, !tbaa !953
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2778, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2780
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2781, !tbaa !1411
  %dec = add i64 %9, -1, !dbg !2781
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2781, !tbaa !1411
  %cmp4 = icmp ne i64 %dec, 0, !dbg !2782
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2783

if.then.5:                                        ; preds = %do.body.3
  br label %if.end, !dbg !2784

if.else:                                          ; preds = %do.body.3
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2786, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2788
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2788, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2789
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2789, !tbaa !1422
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2790, !tbaa !953
  call void %12(%struct._object* %13), !dbg !2791
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2792
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2792
  br label %do.cond, !dbg !2794

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2795

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !2797

if.end.6:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2799
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2799
  br label %do.cond.7, !dbg !2802

do.cond.7:                                        ; preds = %if.end.6
  br label %do.end.8, !dbg !2803

do.end.8:                                         ; preds = %do.cond.7
  br label %do.body.9, !dbg !2805

do.body.9:                                        ; preds = %do.end.8
  %16 = bitcast %struct._object** %_py_xdecref_tmp10 to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !2806
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp10, metadata !786, metadata !947), !dbg !2808
  %call11 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2809
  %call12 = call i8* @PyModule_GetState(%struct._object* %call11), !dbg !2810
  %17 = bitcast i8* %call12 to %struct.readlinestate*, !dbg !2811
  %endidx = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %17, i32 0, i32 5, !dbg !2812
  %18 = load %struct._object*, %struct._object** %endidx, align 8, !dbg !2812, !tbaa !1181
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp10, align 8, !dbg !2808, !tbaa !953
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8, !dbg !2813, !tbaa !953
  %cmp13 = icmp ne %struct._object* %19, null, !dbg !2814
  br i1 %cmp13, label %if.then.14, label %if.end.27, !dbg !2815

if.then.14:                                       ; preds = %do.body.9
  br label %do.body.15, !dbg !2816

do.body.15:                                       ; preds = %if.then.14
  %20 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp16, metadata !788, metadata !947), !dbg !2820
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp10, align 8, !dbg !2821, !tbaa !953
  store %struct._object* %21, %struct._object** %_py_decref_tmp16, align 8, !dbg !2820, !tbaa !953
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2822, !tbaa !953
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2824
  %23 = load i64, i64* %ob_refcnt17, align 8, !dbg !2825, !tbaa !1411
  %dec18 = add i64 %23, -1, !dbg !2825
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !2825, !tbaa !1411
  %cmp19 = icmp ne i64 %dec18, 0, !dbg !2826
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !2827

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24, !dbg !2828

if.else.21:                                       ; preds = %do.body.15
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2830, !tbaa !953
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2832
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !2832, !tbaa !1420
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2833
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !2833, !tbaa !1422
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2834, !tbaa !953
  call void %26(%struct._object* %27), !dbg !2835
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  %28 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2836
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2836
  br label %do.cond.25, !dbg !2838

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !2839

do.end.26:                                        ; preds = %do.cond.25
  br label %if.end.27, !dbg !2841

if.end.27:                                        ; preds = %do.end.26, %do.body.9
  %29 = bitcast %struct._object** %_py_xdecref_tmp10 to i8*, !dbg !2843
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2843
  br label %do.cond.28, !dbg !2844

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2845

do.end.29:                                        ; preds = %do.cond.28
  %30 = load i32, i32* %start.addr, align 4, !dbg !2847, !tbaa !1013
  %conv = sext i32 %30 to i64, !dbg !2848
  %call30 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2849
  %call31 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2850
  %call32 = call i8* @PyModule_GetState(%struct._object* %call31), !dbg !2851
  %31 = bitcast i8* %call32 to %struct.readlinestate*, !dbg !2852
  %begidx33 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %31, i32 0, i32 4, !dbg !2853
  store %struct._object* %call30, %struct._object** %begidx33, align 8, !dbg !2854, !tbaa !1175
  %32 = load i32, i32* %end.addr, align 4, !dbg !2855, !tbaa !1013
  %conv34 = sext i32 %32 to i64, !dbg !2856
  %call35 = call %struct._object* @PyLong_FromLong(i64 %conv34), !dbg !2857
  %call36 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2858
  %call37 = call i8* @PyModule_GetState(%struct._object* %call36), !dbg !2859
  %33 = bitcast i8* %call37 to %struct.readlinestate*, !dbg !2860
  %endidx38 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %33, i32 0, i32 5, !dbg !2861
  store %struct._object* %call35, %struct._object** %endidx38, align 8, !dbg !2862, !tbaa !1181
  %34 = load i8*, i8** %text.addr, align 8, !dbg !2863, !tbaa !953
  %call39 = call i8** @rl_completion_matches(i8* %34, i8* (i8*, i32)* @on_completion), !dbg !2864
  store i8** %call39, i8*** %result, align 8, !dbg !2865, !tbaa !953
  %35 = load i32, i32* %gilstate, align 4, !dbg !2866, !tbaa !1036
  call void @PyGILState_Release(i32 %35), !dbg !2867
  %36 = load i8**, i8*** %result, align 8, !dbg !2868, !tbaa !953
  %37 = bitcast i32* %gilstate to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !2869
  %38 = bitcast i8*** %result to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2869
  ret i8** %36, !dbg !2870
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i32 @rl_initialize() #3

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !756, metadata !947), !dbg !2871
  %0 = bitcast i32* %result to i8*, !dbg !2872
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2872
  call void @llvm.dbg.declare(metadata i32* %result, metadata !757, metadata !947), !dbg !2873
  store i32 0, i32* %result, align 4, !dbg !2873, !tbaa !1013
  %1 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2874, !tbaa !953
  %cmp = icmp ne %struct._object* %1, null, !dbg !2875
  br i1 %cmp, label %if.then, label %if.end.37, !dbg !2876

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %r to i8*, !dbg !2877
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2877
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !758, metadata !947), !dbg !2878
  %3 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !2879, !tbaa !953
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %3, i8* null), !dbg !2880
  store %struct._object* %call, %struct._object** %r, align 8, !dbg !2881, !tbaa !953
  %4 = load %struct._object*, %struct._object** %r, align 8, !dbg !2882, !tbaa !953
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !2884
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2885

if.then.2:                                        ; preds = %if.then
  br label %error, !dbg !2886

if.end:                                           ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %r, align 8, !dbg !2887, !tbaa !953
  %cmp3 = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !2889
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !2890

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %result, align 4, !dbg !2891, !tbaa !1013
  br label %if.end.11, !dbg !2892

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %r, align 8, !dbg !2893, !tbaa !953
  %call5 = call i64 @PyLong_AsLong(%struct._object* %6), !dbg !2895
  %conv = trunc i64 %call5 to i32, !dbg !2895
  store i32 %conv, i32* %result, align 4, !dbg !2896, !tbaa !1013
  %7 = load i32, i32* %result, align 4, !dbg !2897, !tbaa !1013
  %cmp6 = icmp eq i32 %7, -1, !dbg !2899
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !2900

land.lhs.true:                                    ; preds = %if.else
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !2901
  %tobool = icmp ne %struct._object* %call8, null, !dbg !2901
  br i1 %tobool, label %if.then.9, label %if.end.10, !dbg !2903

if.then.9:                                        ; preds = %land.lhs.true
  br label %error, !dbg !2904

if.end.10:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  br label %do.body, !dbg !2905

do.body:                                          ; preds = %if.end.11
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2906
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !2906
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !761, metadata !947), !dbg !2908
  %9 = load %struct._object*, %struct._object** %r, align 8, !dbg !2909, !tbaa !953
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !2908, !tbaa !953
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2910, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !2912
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2913, !tbaa !1411
  %dec = add i64 %11, -1, !dbg !2913
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2913, !tbaa !1411
  %cmp12 = icmp ne i64 %dec, 0, !dbg !2914
  br i1 %cmp12, label %if.then.14, label %if.else.15, !dbg !2915

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !2916

if.else.15:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2918, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2920
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2920, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !2921
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2921, !tbaa !1422
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2922, !tbaa !953
  call void %14(%struct._object* %15), !dbg !2923
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2924
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2924
  br label %do.cond, !dbg !2926

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !2927

do.end:                                           ; preds = %do.cond
  br label %done, !dbg !2929

error:                                            ; preds = %if.then.9, %if.then.2
  call void @PyErr_Clear(), !dbg !2930
  br label %do.body.17, !dbg !2931

do.body.17:                                       ; preds = %error
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2932
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !763, metadata !947), !dbg !2934
  %18 = load %struct._object*, %struct._object** %r, align 8, !dbg !2935, !tbaa !953
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2934, !tbaa !953
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2936, !tbaa !953
  %cmp18 = icmp ne %struct._object* %19, null, !dbg !2937
  br i1 %cmp18, label %if.then.20, label %if.end.34, !dbg !2938

if.then.20:                                       ; preds = %do.body.17
  br label %do.body.21, !dbg !2939

do.body.21:                                       ; preds = %if.then.20
  %20 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !2941
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2941
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !765, metadata !947), !dbg !2943
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2944, !tbaa !953
  store %struct._object* %21, %struct._object** %_py_decref_tmp22, align 8, !dbg !2943, !tbaa !953
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !2945, !tbaa !953
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2947
  %23 = load i64, i64* %ob_refcnt23, align 8, !dbg !2948, !tbaa !1411
  %dec24 = add i64 %23, -1, !dbg !2948
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !2948, !tbaa !1411
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !2949
  br i1 %cmp25, label %if.then.27, label %if.else.28, !dbg !2950

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31, !dbg !2951

if.else.28:                                       ; preds = %do.body.21
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !2953, !tbaa !953
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2955
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2955, !tbaa !1420
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2956
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2956, !tbaa !1422
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !2957, !tbaa !953
  call void %26(%struct._object* %27), !dbg !2958
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %28 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !2959
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2959
  br label %do.cond.32, !dbg !2961

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !2962

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34, !dbg !2964

if.end.34:                                        ; preds = %do.end.33, %do.body.17
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2966
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2966
  br label %do.cond.35, !dbg !2969

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2970

do.end.36:                                        ; preds = %do.cond.35
  br label %done, !dbg !2972

done:                                             ; preds = %do.end.36, %do.end
  %30 = load i32, i32* %result, align 4, !dbg !2974, !tbaa !1013
  store i32 %30, i32* %retval, !dbg !2975
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast %struct._object** %r to i8*, !dbg !2976
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2976
  br label %cleanup

if.end.37:                                        ; preds = %entry
  %32 = load i32, i32* %result, align 4, !dbg !2977, !tbaa !1013
  store i32 %32, i32* %retval, !dbg !2978
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2978

cleanup:                                          ; preds = %if.end.37, %done
  %33 = bitcast i32* %result to i8*, !dbg !2979
  call void @llvm.lifetime.end(i64 4, i8* %33) #1, !dbg !2979
  %34 = load i32, i32* %retval, !dbg !2979
  ret i32 %34, !dbg !2979
}

declare i8** @rl_completion_matches(i8*, i8* (i8*, i32)*) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store i8* %text, i8** %text.addr, align 8, !tbaa !953
  call void @llvm.dbg.declare(metadata i8** %text.addr, metadata !793, metadata !947), !dbg !2980
  store i32 %state, i32* %state.addr, align 4, !tbaa !1013
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !794, metadata !947), !dbg !2981
  %0 = bitcast i8** %result to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2982
  call void @llvm.dbg.declare(metadata i8** %result, metadata !795, metadata !947), !dbg !2983
  store i8* null, i8** %result, align 8, !dbg !2983, !tbaa !953
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2984
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2985
  %1 = bitcast i8* %call1 to %struct.readlinestate*, !dbg !2986
  %completer = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %1, i32 0, i32 3, !dbg !2987
  %2 = load %struct._object*, %struct._object** %completer, align 8, !dbg !2987, !tbaa !1294
  %cmp = icmp ne %struct._object* %2, null, !dbg !2988
  br i1 %cmp, label %if.then, label %if.end.41, !dbg !2989

if.then:                                          ; preds = %entry
  %3 = bitcast %struct._object** %r to i8*, !dbg !2990
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2990
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !796, metadata !947), !dbg !2991
  %4 = bitcast i32* %gilstate to i8*, !dbg !2992
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !799, metadata !947), !dbg !2993
  %call2 = call i32 @PyGILState_Ensure(), !dbg !2994
  store i32 %call2, i32* %gilstate, align 4, !dbg !2993, !tbaa !1036
  store i32 1, i32* @rl_attempted_completion_over, align 4, !dbg !2995, !tbaa !1013
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @readlinemodule), !dbg !2996
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3), !dbg !2997
  %5 = bitcast i8* %call4 to %struct.readlinestate*, !dbg !2998
  %completer5 = getelementptr inbounds %struct.readlinestate, %struct.readlinestate* %5, i32 0, i32 3, !dbg !2999
  %6 = load %struct._object*, %struct._object** %completer5, align 8, !dbg !2999, !tbaa !1294
  %7 = load i8*, i8** %text.addr, align 8, !dbg !3000, !tbaa !953
  %8 = load i32, i32* %state.addr, align 4, !dbg !3001, !tbaa !1013
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* %7, i32 %8), !dbg !3002
  store %struct._object* %call6, %struct._object** %r, align 8, !dbg !3003, !tbaa !953
  %9 = load %struct._object*, %struct._object** %r, align 8, !dbg !3004, !tbaa !953
  %cmp7 = icmp eq %struct._object* %9, null, !dbg !3006
  br i1 %cmp7, label %if.then.8, label %if.end, !dbg !3007

if.then.8:                                        ; preds = %if.then
  br label %error, !dbg !3008

if.end:                                           ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %r, align 8, !dbg !3009, !tbaa !953
  %cmp9 = icmp eq %struct._object* %10, @_Py_NoneStruct, !dbg !3010
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !3011

if.then.10:                                       ; preds = %if.end
  store i8* null, i8** %result, align 8, !dbg !3012, !tbaa !953
  br label %if.end.16, !dbg !3014

if.else:                                          ; preds = %if.end
  %11 = bitcast i8** %s to i8*, !dbg !3015
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !3015
  call void @llvm.dbg.declare(metadata i8** %s, metadata !800, metadata !947), !dbg !3016
  %12 = load %struct._object*, %struct._object** %r, align 8, !dbg !3017, !tbaa !953
  %call11 = call i8* @PyUnicode_AsUTF8(%struct._object* %12), !dbg !3018
  store i8* %call11, i8** %s, align 8, !dbg !3016, !tbaa !953
  %13 = load i8*, i8** %s, align 8, !dbg !3019, !tbaa !953
  %cmp12 = icmp eq i8* %13, null, !dbg !3021
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !3022

if.then.13:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3023

if.end.14:                                        ; preds = %if.else
  %14 = load i8*, i8** %s, align 8, !dbg !3024, !tbaa !953
  %call15 = call noalias i8* @__strdup(i8* %14) #1, !dbg !3025
  store i8* %call15, i8** %result, align 8, !dbg !3026, !tbaa !953
  store i32 0, i32* %cleanup.dest.slot, !dbg !3027
  br label %cleanup, !dbg !3027

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %15 = bitcast i8** %s to i8*, !dbg !3028
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3028
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 2
  br i1 %SwitchLeaf2, label %error, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %if.then.10
  br label %do.body, !dbg !3030

do.body:                                          ; preds = %if.end.16
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !3031
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !803, metadata !947), !dbg !3033
  %17 = load %struct._object*, %struct._object** %r, align 8, !dbg !3034, !tbaa !953
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !3033, !tbaa !953
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3035, !tbaa !953
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !3037
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !3038, !tbaa !1411
  %dec = add i64 %19, -1, !dbg !3038
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3038, !tbaa !1411
  %cmp17 = icmp ne i64 %dec, 0, !dbg !3039
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3040

if.then.18:                                       ; preds = %do.body
  br label %if.end.20, !dbg !3041

if.else.19:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3043, !tbaa !953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !3045
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3045, !tbaa !1420
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !3046
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3046, !tbaa !1422
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3047, !tbaa !953
  call void %22(%struct._object* %23), !dbg !3048
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3049
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3049
  br label %do.cond, !dbg !3051

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !3052

do.end:                                           ; preds = %do.cond
  br label %done, !dbg !3054

error:                                            ; preds = %LeafBlock.1, %if.then.8
  call void @PyErr_Clear(), !dbg !3055
  br label %do.body.21, !dbg !3056

do.body.21:                                       ; preds = %error
  %25 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3057
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !3057
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !805, metadata !947), !dbg !3059
  %26 = load %struct._object*, %struct._object** %r, align 8, !dbg !3060, !tbaa !953
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3059, !tbaa !953
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3061, !tbaa !953
  %cmp22 = icmp ne %struct._object* %27, null, !dbg !3062
  br i1 %cmp22, label %if.then.23, label %if.end.36, !dbg !3063

if.then.23:                                       ; preds = %do.body.21
  br label %do.body.24, !dbg !3064

do.body.24:                                       ; preds = %if.then.23
  %28 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !3066
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !3066
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !807, metadata !947), !dbg !3068
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3069, !tbaa !953
  store %struct._object* %29, %struct._object** %_py_decref_tmp25, align 8, !dbg !3068, !tbaa !953
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !3070, !tbaa !953
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !3072
  %31 = load i64, i64* %ob_refcnt26, align 8, !dbg !3073, !tbaa !1411
  %dec27 = add i64 %31, -1, !dbg !3073
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !3073, !tbaa !1411
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !3074
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !3075

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !3076

if.else.30:                                       ; preds = %do.body.24
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !3078, !tbaa !953
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !3080
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !3080, !tbaa !1420
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !3081
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !3081, !tbaa !1422
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !3082, !tbaa !953
  call void %34(%struct._object* %35), !dbg !3083
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %36 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !3084
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3084
  br label %do.cond.34, !dbg !3086

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !3087

do.end.35:                                        ; preds = %do.cond.34
  br label %if.end.36, !dbg !3089

if.end.36:                                        ; preds = %do.end.35, %do.body.21
  %37 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3091
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3091
  br label %do.cond.37, !dbg !3094

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !3095

do.end.38:                                        ; preds = %do.cond.37
  br label %done, !dbg !3097

done:                                             ; preds = %do.end.38, %do.end
  %38 = load i32, i32* %gilstate, align 4, !dbg !3099, !tbaa !1036
  call void @PyGILState_Release(i32 %38), !dbg !3100
  %39 = load i8*, i8** %result, align 8, !dbg !3101, !tbaa !953
  store i8* %39, i8** %retval, !dbg !3102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39, !dbg !3102

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.39

cleanup.39:                                       ; preds = %NewDefault, %done
  %40 = bitcast i32* %gilstate to i8*, !dbg !3103
  call void @llvm.lifetime.end(i64 4, i8* %40) #1, !dbg !3103
  %41 = bitcast %struct._object** %r to i8*, !dbg !3103
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !3103
  br label %cleanup.42

if.end.41:                                        ; preds = %entry
  %42 = load i8*, i8** %result, align 8, !dbg !3104, !tbaa !953
  store i8* %42, i8** %retval, !dbg !3105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !3105

cleanup.42:                                       ; preds = %if.end.41, %cleanup.39
  %43 = bitcast i8** %result to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !3106
  %44 = load i8*, i8** %retval, !dbg !3106
  ret i8* %44, !dbg !3106
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!942, !943, !944}
!llvm.ident = !{!945}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !373, globals: !810)
!1 = !DIFile(filename: "readline.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 190, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!7 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!8 = !{!9, !10, !16, !28, !359, !40, !365, !55, !105, !367, !63, !369}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "readlinestate", file: !12, line: 87, baseType: !13)
!12 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/readline.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 80, size: 384, align: 64, elements: !14)
!14 = !{!15, !354, !355, !356, !357, !358}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "completion_display_matches_hook", scope: !13, file: !12, line: 81, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !32)
!32 = !{!33, !39, !43, !44, !45, !50, !113, !118, !123, !124, !129, !181, !212, !224, !230, !231, !232, !234, !236, !267, !268, !269, !278, !279, !284, !285, !287, !289, !299, !302, !320, !321, !322, !324, !326, !327, !329, !334, !339, !344, !345, !346, !347, !348, !349, !350, !351, !353}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !18, line: 335, baseType: !34, size: 192, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !31, file: !18, line: 336, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !31, file: !18, line: 341, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !16}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !31, file: !18, line: 342, baseType: !51, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !16, !56, !55}
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 246, size: 1728, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!60 = !{!61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !82, !83, !84, !85, !87, !89, !91, !95, !98, !100, !101, !102, !103, !104, !108, !109}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 247, baseType: !55, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 252, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 253, baseType: !63, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 254, baseType: !63, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 255, baseType: !63, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 256, baseType: !63, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 257, baseType: !63, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 258, baseType: !63, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 259, baseType: !63, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 261, baseType: !63, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 262, baseType: !63, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 263, baseType: !63, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 265, baseType: !75, size: 64, align: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 161, size: 192, align: 64, elements: !77)
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !76, file: !59, line: 162, baseType: !75, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !76, file: !59, line: 163, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !76, file: !59, line: 167, baseType: !55, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 267, baseType: !80, size: 64, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 269, baseType: !55, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 273, baseType: !55, size: 32, align: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 275, baseType: !86, size: 64, align: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !28)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 279, baseType: !88, size: 16, align: 16, offset: 1024)
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 280, baseType: !90, size: 8, align: 8, offset: 1040)
!90 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 281, baseType: !92, size: 8, align: 8, offset: 1048)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 285, baseType: !96, size: 64, align: 64, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 155, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 294, baseType: !99, size: 64, align: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !28)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !58, file: !59, line: 303, baseType: !9, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !58, file: !59, line: 304, baseType: !9, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !58, file: !59, line: 305, baseType: !9, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !58, file: !59, line: 306, baseType: !9, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 307, baseType: !105, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 309, baseType: !55, size: 32, align: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 311, baseType: !110, size: 160, align: 8, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !31, file: !18, line: 343, baseType: !114, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !16, !63}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !31, file: !18, line: 344, baseType: !119, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!55, !16, !63, !16}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !31, file: !18, line: 345, baseType: !9, size: 64, align: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !31, file: !18, line: 346, baseType: !125, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!16, !16}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !31, file: !18, line: 350, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !133)
!133 = !{!134, !139, !140, !141, !142, !143, !148, !150, !151, !152, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !132, file: !18, line: 241, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!16, !16, !16}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !132, file: !18, line: 242, baseType: !135, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !132, file: !18, line: 243, baseType: !135, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !132, file: !18, line: 244, baseType: !135, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !132, file: !18, line: 245, baseType: !135, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !132, file: !18, line: 246, baseType: !144, size: 64, align: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!16, !16, !16, !16}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !132, file: !18, line: 247, baseType: !149, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !126)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !132, file: !18, line: 248, baseType: !149, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !132, file: !18, line: 249, baseType: !149, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !132, file: !18, line: 250, baseType: !153, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!55, !16}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !132, file: !18, line: 251, baseType: !149, size: 64, align: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !132, file: !18, line: 252, baseType: !135, size: 64, align: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !132, file: !18, line: 253, baseType: !135, size: 64, align: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !132, file: !18, line: 254, baseType: !135, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !132, file: !18, line: 255, baseType: !135, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !132, file: !18, line: 256, baseType: !135, size: 64, align: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !132, file: !18, line: 257, baseType: !149, size: 64, align: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !132, file: !18, line: 258, baseType: !9, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !132, file: !18, line: 259, baseType: !149, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !132, file: !18, line: 261, baseType: !135, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !132, file: !18, line: 262, baseType: !135, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !132, file: !18, line: 263, baseType: !135, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !132, file: !18, line: 264, baseType: !135, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !132, file: !18, line: 265, baseType: !144, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !132, file: !18, line: 266, baseType: !135, size: 64, align: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !132, file: !18, line: 267, baseType: !135, size: 64, align: 64, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !132, file: !18, line: 268, baseType: !135, size: 64, align: 64, offset: 1664)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !132, file: !18, line: 269, baseType: !135, size: 64, align: 64, offset: 1728)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !132, file: !18, line: 270, baseType: !135, size: 64, align: 64, offset: 1792)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !132, file: !18, line: 272, baseType: !135, size: 64, align: 64, offset: 1856)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !132, file: !18, line: 273, baseType: !135, size: 64, align: 64, offset: 1920)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !132, file: !18, line: 274, baseType: !135, size: 64, align: 64, offset: 1984)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !132, file: !18, line: 275, baseType: !135, size: 64, align: 64, offset: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !132, file: !18, line: 277, baseType: !149, size: 64, align: 64, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !31, file: !18, line: 351, baseType: !182, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !185)
!185 = !{!186, !191, !192, !197, !198, !199, !204, !205, !210, !211}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !184, file: !18, line: 281, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!22, !16}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !184, file: !18, line: 282, baseType: !135, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !184, file: !18, line: 283, baseType: !193, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!16, !16, !22}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !184, file: !18, line: 284, baseType: !193, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !184, file: !18, line: 285, baseType: !9, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !184, file: !18, line: 286, baseType: !200, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!55, !16, !22, !16}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !184, file: !18, line: 287, baseType: !9, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !184, file: !18, line: 288, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!55, !16, !16}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !184, file: !18, line: 290, baseType: !135, size: 64, align: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !184, file: !18, line: 291, baseType: !193, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !31, file: !18, line: 352, baseType: !213, size: 64, align: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !215, file: !18, line: 295, baseType: !187, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !215, file: !18, line: 296, baseType: !135, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !215, file: !18, line: 297, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!55, !16, !16, !16}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !31, file: !18, line: 356, baseType: !225, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !16}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !31, file: !18, line: 357, baseType: !144, size: 64, align: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !31, file: !18, line: 358, baseType: !125, size: 64, align: 64, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !31, file: !18, line: 359, baseType: !233, size: 64, align: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !136)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !31, file: !18, line: 360, baseType: !235, size: 64, align: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !221)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !31, file: !18, line: 363, baseType: !237, size: 64, align: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !240)
!240 = !{!241, !262}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !239, file: !18, line: 302, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!55, !16, !246, !55}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !18, line: 179, baseType: !9, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !248, file: !18, line: 180, baseType: !16, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !248, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !248, file: !18, line: 184, baseType: !55, size: 32, align: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !248, file: !18, line: 185, baseType: !55, size: 32, align: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !248, file: !18, line: 186, baseType: !63, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !248, file: !18, line: 187, baseType: !258, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !248, file: !18, line: 188, baseType: !258, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !248, file: !18, line: 189, baseType: !258, size: 64, align: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !248, file: !18, line: 190, baseType: !9, size: 64, align: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !239, file: !18, line: 303, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !16, !246}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !31, file: !18, line: 366, baseType: !107, size: 64, align: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !31, file: !18, line: 368, baseType: !40, size: 64, align: 64, offset: 1408)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !31, file: !18, line: 372, baseType: !270, size: 64, align: 64, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!55, !16, !274, !9}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!55, !16, !9}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !31, file: !18, line: 375, baseType: !153, size: 64, align: 64, offset: 1536)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !31, file: !18, line: 379, baseType: !280, size: 64, align: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !16, !16, !55}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !31, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !31, file: !18, line: 385, baseType: !286, size: 64, align: 64, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !126)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !31, file: !18, line: 386, baseType: !288, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !126)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !31, file: !18, line: 389, baseType: !290, size: 64, align: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !292, line: 40, size: 256, align: 64, elements: !293)
!292 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!293 = !{!294, !295, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !291, file: !292, line: 41, baseType: !40, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !291, file: !292, line: 42, baseType: !296, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !292, line: 18, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !291, file: !292, line: 43, baseType: !55, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !291, file: !292, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !300, size: 64, align: 64, offset: 1920)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !18, line: 390, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !303, size: 64, align: 64, offset: 1984)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !305, line: 11, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!306 = !{!307, !308, !313, !318, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 12, baseType: !63, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !304, file: !305, line: 13, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !305, line: 8, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!16, !16, !9}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !304, file: !305, line: 14, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !305, line: 9, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!55, !16, !16, !9}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 15, baseType: !63, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !304, file: !305, line: 16, baseType: !9, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !31, file: !18, line: 392, baseType: !30, size: 64, align: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !31, file: !18, line: 393, baseType: !16, size: 64, align: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !31, file: !18, line: 394, baseType: !323, size: 64, align: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !145)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !31, file: !18, line: 395, baseType: !325, size: 64, align: 64, offset: 2240)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !221)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !31, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !31, file: !18, line: 397, baseType: !328, size: 64, align: 64, offset: 2368)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !221)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !31, file: !18, line: 398, baseType: !330, size: 64, align: 64, offset: 2432)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!16, !30, !22}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !31, file: !18, line: 399, baseType: !335, size: 64, align: 64, offset: 2496)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!16, !30, !16, !16}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !31, file: !18, line: 400, baseType: !340, size: 64, align: 64, offset: 2560)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !9}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !31, file: !18, line: 401, baseType: !153, size: 64, align: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !31, file: !18, line: 402, baseType: !16, size: 64, align: 64, offset: 2688)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !31, file: !18, line: 403, baseType: !16, size: 64, align: 64, offset: 2752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !31, file: !18, line: 404, baseType: !16, size: 64, align: 64, offset: 2816)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !31, file: !18, line: 405, baseType: !16, size: 64, align: 64, offset: 2880)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !31, file: !18, line: 406, baseType: !16, size: 64, align: 64, offset: 2944)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !31, file: !18, line: 407, baseType: !46, size: 64, align: 64, offset: 3008)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !31, file: !18, line: 410, baseType: !352, size: 32, align: 32, offset: 3072)
!352 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !31, file: !18, line: 412, baseType: !46, size: 64, align: 64, offset: 3136)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "startup_hook", scope: !13, file: !12, line: 82, baseType: !16, size: 64, align: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pre_input_hook", scope: !13, file: !12, line: 83, baseType: !16, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !13, file: !12, line: 84, baseType: !16, size: 64, align: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "begidx", scope: !13, file: !12, line: 85, baseType: !16, size: 64, align: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "endidx", scope: !13, file: !12, line: 86, baseType: !16, size: 64, align: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "rl_compdisp_func_t", file: !361, line: 58, baseType: !362)
!361 = !DIFile(filename: "/usr/include/readline/rltypedefs.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364, !55, !55}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !366, line: 54, baseType: !28)
!366 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "rl_compentry_func_t", file: !361, line: 50, baseType: !371)
!371 = !DISubroutineType(types: !372)
!372 = !{!63, !40, !55}
!373 = !{!374, !380, !386, !390, !395, !399, !409, !419, !432, !447, !451, !467, !472, !476, !480, !509, !513, !517, !521, !525, !530, !535, !541, !547, !554, !558, !563, !594, !598, !602, !606, !636, !676, !679, !699, !736, !741, !750, !754, !768, !772, !791}
!374 = !DISubprogram(name: "PyInit_readline", scope: !12, file: !12, line: 1250, type: !375, isLocal: false, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_readline, variables: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!16}
!377 = !{!378, !379}
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !374, file: !12, line: 1252, type: !16)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod_state", scope: !374, file: !12, line: 1253, type: !10)
!380 = !DISubprogram(name: "parse_and_bind", scope: !12, file: !12, line: 132, type: !137, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @parse_and_bind, variables: !381)
!381 = !{!382, !383, !384, !385}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !380, file: !12, line: 132, type: !16)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !380, file: !12, line: 132, type: !16)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !380, file: !12, line: 134, type: !63)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy", scope: !380, file: !12, line: 134, type: !63)
!386 = !DISubprogram(name: "get_line_buffer", scope: !12, file: !12, line: 678, type: !137, isLocal: true, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_line_buffer, variables: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !386, file: !12, line: 678, type: !16)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !386, file: !12, line: 678, type: !16)
!390 = !DISubprogram(name: "insert_text", scope: !12, file: !12, line: 708, type: !137, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @insert_text, variables: !391)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !390, file: !12, line: 708, type: !16)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !390, file: !12, line: 708, type: !16)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !390, file: !12, line: 710, type: !63)
!395 = !DISubprogram(name: "redisplay", scope: !12, file: !12, line: 725, type: !137, isLocal: true, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @redisplay, variables: !396)
!396 = !{!397, !398}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !12, line: 725, type: !16)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !395, file: !12, line: 725, type: !16)
!399 = !DISubprogram(name: "read_init_file", scope: !12, file: !12, line: 156, type: !137, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @read_init_file, variables: !400)
!400 = !{!401, !402, !403, !404, !405}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !399, file: !12, line: 156, type: !16)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !399, file: !12, line: 156, type: !16)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_obj", scope: !399, file: !12, line: 158, type: !16)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_bytes", scope: !399, file: !12, line: 158, type: !16)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !12, line: 165, type: !16)
!406 = distinct !DILexicalBlock(scope: !407, file: !12, line: 165, column: 12)
!407 = distinct !DILexicalBlock(scope: !408, file: !12, line: 161, column: 44)
!408 = distinct !DILexicalBlock(scope: !399, file: !12, line: 161, column: 9)
!409 = !DISubprogram(name: "read_history_file", scope: !12, file: !12, line: 182, type: !137, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @read_history_file, variables: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !12, line: 182, type: !16)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !12, line: 182, type: !16)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_obj", scope: !409, file: !12, line: 184, type: !16)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_bytes", scope: !409, file: !12, line: 184, type: !16)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !12, line: 191, type: !16)
!416 = distinct !DILexicalBlock(scope: !417, file: !12, line: 191, column: 12)
!417 = distinct !DILexicalBlock(scope: !418, file: !12, line: 187, column: 44)
!418 = distinct !DILexicalBlock(scope: !409, file: !12, line: 187, column: 9)
!419 = !DISubprogram(name: "write_history_file", scope: !12, file: !12, line: 209, type: !137, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @write_history_file, variables: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !429}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !419, file: !12, line: 209, type: !16)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !419, file: !12, line: 209, type: !16)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_obj", scope: !419, file: !12, line: 211, type: !16)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename_bytes", scope: !419, file: !12, line: 211, type: !16)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !419, file: !12, line: 212, type: !63)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !419, file: !12, line: 213, type: !55)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !428, file: !12, line: 227, type: !16)
!428 = distinct !DILexicalBlock(scope: !419, file: !12, line: 227, column: 8)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !430, file: !12, line: 227, type: !16)
!430 = distinct !DILexicalBlock(scope: !431, file: !12, line: 227, column: 106)
!431 = distinct !DILexicalBlock(scope: !428, file: !12, line: 227, column: 72)
!432 = !DISubprogram(name: "get_history_item", scope: !12, file: !12, line: 622, type: !137, isLocal: true, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_history_item, variables: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !432, file: !12, line: 622, type: !16)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !432, file: !12, line: 622, type: !16)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !432, file: !12, line: 624, type: !55)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hist_ent", scope: !432, file: !12, line: 625, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "HIST_ENTRY", file: !440, line: 50, baseType: !441)
!440 = !DIFile(filename: "/usr/include/readline/history.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "_hist_entry", file: !440, line: 46, size: 192, align: 64, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !441, file: !440, line: 47, baseType: !63, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !441, file: !440, line: 48, baseType: !63, size: 64, align: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !440, line: 49, baseType: !446, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "histdata_t", file: !440, line: 40, baseType: !9)
!447 = !DISubprogram(name: "get_current_history_length", scope: !12, file: !12, line: 665, type: !137, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_current_history_length, variables: !448)
!448 = !{!449, !450}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !447, file: !12, line: 665, type: !16)
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !447, file: !12, line: 665, type: !16)
!451 = !DISubprogram(name: "_py_get_history_length", scope: !12, file: !12, line: 606, type: !452, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_py_get_history_length, variables: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!55}
!454 = !{!455, !466}
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hist_st", scope: !451, file: !12, line: 608, type: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_STATE", file: !440, line: 62, baseType: !458)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "_hist_state", file: !440, line: 56, size: 192, align: 64, elements: !459)
!459 = !{!460, !462, !463, !464, !465}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !458, file: !440, line: 57, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !458, file: !440, line: 58, baseType: !55, size: 32, align: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !458, file: !440, line: 59, baseType: !55, size: 32, align: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !458, file: !440, line: 60, baseType: !55, size: 32, align: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !440, line: 61, baseType: !55, size: 32, align: 32, offset: 160)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !451, file: !12, line: 609, type: !55)
!467 = !DISubprogram(name: "set_history_length", scope: !12, file: !12, line: 243, type: !137, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_history_length, variables: !468)
!468 = !{!469, !470, !471}
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !467, file: !12, line: 243, type: !16)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !467, file: !12, line: 243, type: !16)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !467, file: !12, line: 245, type: !55)
!472 = !DISubprogram(name: "get_history_length", scope: !12, file: !12, line: 262, type: !137, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_history_length, variables: !473)
!473 = !{!474, !475}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !472, file: !12, line: 262, type: !16)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !472, file: !12, line: 262, type: !16)
!476 = !DISubprogram(name: "set_completer", scope: !12, file: !12, line: 572, type: !137, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_completer, variables: !477)
!477 = !{!478, !479}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !476, file: !12, line: 572, type: !16)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !476, file: !12, line: 572, type: !16)
!480 = !DISubprogram(name: "set_hook", scope: !12, file: !12, line: 276, type: !481, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object**, %struct._object*)* @set_hook, variables: !484)
!481 = !DISubroutineType(types: !482)
!482 = !{!16, !40, !483, !16}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!484 = !{!485, !486, !487, !488, !489, !493, !497, !501, !504, !506}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !480, file: !12, line: 276, type: !40)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hook_var", arg: 2, scope: !480, file: !12, line: 276, type: !483)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 3, scope: !480, file: !12, line: 276, type: !16)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !480, file: !12, line: 278, type: !16)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !480, file: !12, line: 279, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 640, align: 8, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 80)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !494, file: !12, line: 284, type: !16)
!494 = distinct !DILexicalBlock(scope: !495, file: !12, line: 284, column: 12)
!495 = distinct !DILexicalBlock(scope: !496, file: !12, line: 283, column: 40)
!496 = distinct !DILexicalBlock(scope: !480, file: !12, line: 283, column: 9)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !498, file: !12, line: 284, type: !16)
!498 = distinct !DILexicalBlock(scope: !499, file: !12, line: 284, column: 117)
!499 = distinct !DILexicalBlock(scope: !500, file: !12, line: 284, column: 86)
!500 = distinct !DILexicalBlock(scope: !494, file: !12, line: 284, column: 63)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !502, file: !12, line: 287, type: !16)
!502 = distinct !DILexicalBlock(scope: !503, file: !12, line: 286, column: 42)
!503 = distinct !DILexicalBlock(scope: !496, file: !12, line: 286, column: 14)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !505, file: !12, line: 290, type: !16)
!505 = distinct !DILexicalBlock(scope: !502, file: !12, line: 290, column: 12)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !507, file: !12, line: 290, type: !16)
!507 = distinct !DILexicalBlock(scope: !508, file: !12, line: 290, column: 99)
!508 = distinct !DILexicalBlock(scope: !505, file: !12, line: 290, column: 65)
!509 = !DISubprogram(name: "get_completer", scope: !12, file: !12, line: 586, type: !137, isLocal: true, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_completer, variables: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !12, line: 586, type: !16)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noargs", arg: 2, scope: !509, file: !12, line: 586, type: !16)
!513 = !DISubprogram(name: "get_completion_type", scope: !12, file: !12, line: 379, type: !137, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_completion_type, variables: !514)
!514 = !{!515, !516}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !513, file: !12, line: 379, type: !16)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !513, file: !12, line: 379, type: !16)
!517 = !DISubprogram(name: "get_begidx", scope: !12, file: !12, line: 392, type: !137, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_begidx, variables: !518)
!518 = !{!519, !520}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !12, line: 392, type: !16)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !517, file: !12, line: 392, type: !16)
!521 = !DISubprogram(name: "get_endidx", scope: !12, file: !12, line: 406, type: !137, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_endidx, variables: !522)
!522 = !{!523, !524}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !521, file: !12, line: 406, type: !16)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !521, file: !12, line: 406, type: !16)
!525 = !DISubprogram(name: "set_completer_delims", scope: !12, file: !12, line: 420, type: !137, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_completer_delims, variables: !526)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !525, file: !12, line: 420, type: !16)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !525, file: !12, line: 420, type: !16)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "break_chars", scope: !525, file: !12, line: 422, type: !63)
!530 = !DISubprogram(name: "py_add_history", scope: !12, file: !12, line: 540, type: !137, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_add_history, variables: !531)
!531 = !{!532, !533, !534}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !530, file: !12, line: 540, type: !16)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !530, file: !12, line: 540, type: !16)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !530, file: !12, line: 542, type: !63)
!535 = !DISubprogram(name: "py_remove_history", scope: !12, file: !12, line: 477, type: !137, isLocal: true, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_remove_history, variables: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !535, file: !12, line: 477, type: !16)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !535, file: !12, line: 477, type: !16)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_number", scope: !535, file: !12, line: 479, type: !55)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !535, file: !12, line: 480, type: !438)
!541 = !DISubprogram(name: "_py_free_history_entry", scope: !12, file: !12, line: 454, type: !542, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._hist_entry*)* @_py_free_history_entry, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !438}
!544 = !{!545, !546}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 1, scope: !541, file: !12, line: 454, type: !438)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !541, file: !12, line: 456, type: !446)
!547 = !DISubprogram(name: "py_replace_history", scope: !12, file: !12, line: 506, type: !137, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_replace_history, variables: !548)
!548 = !{!549, !550, !551, !552, !553}
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !547, file: !12, line: 506, type: !16)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !547, file: !12, line: 506, type: !16)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_number", scope: !547, file: !12, line: 508, type: !55)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !547, file: !12, line: 509, type: !63)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_entry", scope: !547, file: !12, line: 510, type: !438)
!554 = !DISubprogram(name: "get_completer_delims", scope: !12, file: !12, line: 559, type: !137, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_completer_delims, variables: !555)
!555 = !{!556, !557}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !554, file: !12, line: 559, type: !16)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !554, file: !12, line: 559, type: !16)
!558 = !DISubprogram(name: "set_completion_display_matches_hook", scope: !12, file: !12, line: 310, type: !137, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_completion_display_matches_hook, variables: !559)
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !558, file: !12, line: 310, type: !16)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !558, file: !12, line: 310, type: !16)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !558, file: !12, line: 312, type: !16)
!563 = !DISubprogram(name: "on_completion_display_matches_hook", scope: !12, file: !12, line: 860, type: !362, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32)* @on_completion_display_matches_hook, variables: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !574, !576, !578, !582, !586, !589, !591}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "matches", arg: 1, scope: !563, file: !12, line: 860, type: !364)
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_matches", arg: 2, scope: !563, file: !12, line: 861, type: !55)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_length", arg: 3, scope: !563, file: !12, line: 861, type: !55)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !563, file: !12, line: 863, type: !55)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !563, file: !12, line: 864, type: !16)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !563, file: !12, line: 864, type: !16)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !563, file: !12, line: 864, type: !16)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !563, file: !12, line: 866, type: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !4, line: 191, baseType: !3)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !575, file: !12, line: 881, type: !16)
!575 = distinct !DILexicalBlock(scope: !563, file: !12, line: 881, column: 8)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !577, file: !12, line: 887, type: !16)
!577 = distinct !DILexicalBlock(scope: !563, file: !12, line: 887, column: 8)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !12, line: 887, type: !16)
!579 = distinct !DILexicalBlock(scope: !580, file: !12, line: 887, column: 97)
!580 = distinct !DILexicalBlock(scope: !581, file: !12, line: 887, column: 74)
!581 = distinct !DILexicalBlock(scope: !577, file: !12, line: 887, column: 51)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !583, file: !12, line: 892, type: !16)
!583 = distinct !DILexicalBlock(scope: !584, file: !12, line: 892, column: 12)
!584 = distinct !DILexicalBlock(scope: !585, file: !12, line: 889, column: 12)
!585 = distinct !DILexicalBlock(scope: !563, file: !12, line: 889, column: 9)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !12, line: 892, type: !16)
!587 = distinct !DILexicalBlock(scope: !588, file: !12, line: 892, column: 97)
!588 = distinct !DILexicalBlock(scope: !583, file: !12, line: 892, column: 63)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !590, file: !12, line: 893, type: !16)
!590 = distinct !DILexicalBlock(scope: !584, file: !12, line: 893, column: 12)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !12, line: 893, type: !16)
!592 = distinct !DILexicalBlock(scope: !593, file: !12, line: 893, column: 97)
!593 = distinct !DILexicalBlock(scope: !590, file: !12, line: 893, column: 63)
!594 = !DISubprogram(name: "set_startup_hook", scope: !12, file: !12, line: 337, type: !137, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_startup_hook, variables: !595)
!595 = !{!596, !597}
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !594, file: !12, line: 337, type: !16)
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !594, file: !12, line: 337, type: !16)
!598 = !DISubprogram(name: "set_pre_input_hook", scope: !12, file: !12, line: 354, type: !137, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_pre_input_hook, variables: !599)
!599 = !{!600, !601}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !598, file: !12, line: 354, type: !16)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !598, file: !12, line: 354, type: !16)
!602 = !DISubprogram(name: "py_clear_history", scope: !12, file: !12, line: 693, type: !137, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_clear_history, variables: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !602, file: !12, line: 693, type: !16)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noarg", arg: 2, scope: !602, file: !12, line: 693, type: !16)
!606 = !DISubprogram(name: "readline_traverse", scope: !12, file: !12, line: 106, type: !272, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @readline_traverse, variables: !607)
!607 = !{!608, !609, !610, !611, !612, !616, !620, !624, !628, !632}
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !606, file: !12, line: 106, type: !16)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !606, file: !12, line: 106, type: !274)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !606, file: !12, line: 106, type: !9)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !606, file: !12, line: 108, type: !10)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !613, file: !12, line: 109, type: !55)
!613 = distinct !DILexicalBlock(scope: !614, file: !12, line: 109, column: 54)
!614 = distinct !DILexicalBlock(scope: !615, file: !12, line: 109, column: 14)
!615 = distinct !DILexicalBlock(scope: !606, file: !12, line: 109, column: 8)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !617, file: !12, line: 110, type: !55)
!617 = distinct !DILexicalBlock(scope: !618, file: !12, line: 110, column: 35)
!618 = distinct !DILexicalBlock(scope: !619, file: !12, line: 110, column: 14)
!619 = distinct !DILexicalBlock(scope: !606, file: !12, line: 110, column: 8)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !621, file: !12, line: 111, type: !55)
!621 = distinct !DILexicalBlock(scope: !622, file: !12, line: 111, column: 37)
!622 = distinct !DILexicalBlock(scope: !623, file: !12, line: 111, column: 14)
!623 = distinct !DILexicalBlock(scope: !606, file: !12, line: 111, column: 8)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !625, file: !12, line: 112, type: !55)
!625 = distinct !DILexicalBlock(scope: !626, file: !12, line: 112, column: 32)
!626 = distinct !DILexicalBlock(scope: !627, file: !12, line: 112, column: 14)
!627 = distinct !DILexicalBlock(scope: !606, file: !12, line: 112, column: 8)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !629, file: !12, line: 113, type: !55)
!629 = distinct !DILexicalBlock(scope: !630, file: !12, line: 113, column: 29)
!630 = distinct !DILexicalBlock(scope: !631, file: !12, line: 113, column: 14)
!631 = distinct !DILexicalBlock(scope: !606, file: !12, line: 113, column: 8)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !633, file: !12, line: 114, type: !55)
!633 = distinct !DILexicalBlock(scope: !634, file: !12, line: 114, column: 29)
!634 = distinct !DILexicalBlock(scope: !635, file: !12, line: 114, column: 14)
!635 = distinct !DILexicalBlock(scope: !606, file: !12, line: 114, column: 8)
!636 = !DISubprogram(name: "readline_clear", scope: !12, file: !12, line: 93, type: !155, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @readline_clear, variables: !637)
!637 = !{!638, !639, !640, !642, !646, !648, !652, !654, !658, !660, !664, !666, !670, !672}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !636, file: !12, line: 93, type: !16)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !636, file: !12, line: 95, type: !10)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !641, file: !12, line: 96, type: !16)
!641 = distinct !DILexicalBlock(scope: !636, file: !12, line: 96, column: 7)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !643, file: !12, line: 96, type: !16)
!643 = distinct !DILexicalBlock(scope: !644, file: !12, line: 96, column: 170)
!644 = distinct !DILexicalBlock(scope: !645, file: !12, line: 96, column: 110)
!645 = distinct !DILexicalBlock(scope: !641, file: !12, line: 96, column: 87)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !647, file: !12, line: 97, type: !16)
!647 = distinct !DILexicalBlock(scope: !636, file: !12, line: 97, column: 7)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !649, file: !12, line: 97, type: !16)
!649 = distinct !DILexicalBlock(scope: !650, file: !12, line: 97, column: 132)
!650 = distinct !DILexicalBlock(scope: !651, file: !12, line: 97, column: 91)
!651 = distinct !DILexicalBlock(scope: !647, file: !12, line: 97, column: 68)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !653, file: !12, line: 98, type: !16)
!653 = distinct !DILexicalBlock(scope: !636, file: !12, line: 98, column: 7)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !655, file: !12, line: 98, type: !16)
!655 = distinct !DILexicalBlock(scope: !656, file: !12, line: 98, column: 136)
!656 = distinct !DILexicalBlock(scope: !657, file: !12, line: 98, column: 93)
!657 = distinct !DILexicalBlock(scope: !653, file: !12, line: 98, column: 70)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !659, file: !12, line: 99, type: !16)
!659 = distinct !DILexicalBlock(scope: !636, file: !12, line: 99, column: 7)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !12, line: 99, type: !16)
!661 = distinct !DILexicalBlock(scope: !662, file: !12, line: 99, column: 126)
!662 = distinct !DILexicalBlock(scope: !663, file: !12, line: 99, column: 88)
!663 = distinct !DILexicalBlock(scope: !659, file: !12, line: 99, column: 65)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !665, file: !12, line: 100, type: !16)
!665 = distinct !DILexicalBlock(scope: !636, file: !12, line: 100, column: 7)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !667, file: !12, line: 100, type: !16)
!667 = distinct !DILexicalBlock(scope: !668, file: !12, line: 100, column: 120)
!668 = distinct !DILexicalBlock(scope: !669, file: !12, line: 100, column: 85)
!669 = distinct !DILexicalBlock(scope: !665, file: !12, line: 100, column: 62)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !671, file: !12, line: 101, type: !16)
!671 = distinct !DILexicalBlock(scope: !636, file: !12, line: 101, column: 7)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !12, line: 101, type: !16)
!673 = distinct !DILexicalBlock(scope: !674, file: !12, line: 101, column: 120)
!674 = distinct !DILexicalBlock(scope: !675, file: !12, line: 101, column: 85)
!675 = distinct !DILexicalBlock(scope: !671, file: !12, line: 101, column: 62)
!676 = !DISubprogram(name: "readline_free", scope: !12, file: !12, line: 119, type: !342, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @readline_free, variables: !677)
!677 = !{!678}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !676, file: !12, line: 119, type: !9)
!679 = !DISubprogram(name: "call_readline", scope: !12, file: !12, line: 1155, type: !680, isLocal: true, isDefinition: true, scopeLine: 1156, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @call_readline, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!63, !56, !56, !40}
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !694, !695, !698}
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdin", arg: 1, scope: !679, file: !12, line: 1155, type: !56)
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdout", arg: 2, scope: !679, file: !12, line: 1155, type: !56)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 3, scope: !679, file: !12, line: 1155, type: !40)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !679, file: !12, line: 1157, type: !105)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !679, file: !12, line: 1158, type: !63)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !679, file: !12, line: 1158, type: !63)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signal", scope: !679, file: !12, line: 1159, type: !55)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saved_locale", scope: !679, file: !12, line: 1162, type: !63)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !692, file: !12, line: 1196, type: !40)
!692 = distinct !DILexicalBlock(scope: !693, file: !12, line: 1195, column: 16)
!693 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1195, column: 9)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !692, file: !12, line: 1197, type: !55)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !696, file: !12, line: 1208, type: !105)
!696 = distinct !DILexicalBlock(scope: !697, file: !12, line: 1208, column: 28)
!697 = distinct !DILexicalBlock(scope: !692, file: !12, line: 1208, column: 13)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !696, file: !12, line: 1208, type: !105)
!699 = !DISubprogram(name: "readline_until_enter_or_signal", scope: !12, file: !12, line: 1053, type: !700, isLocal: true, isDefinition: true, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32*)* @readline_until_enter_or_signal, variables: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!63, !40, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!703 = !{!704, !705, !706, !707, !715, !717, !718, !720, !721, !730, !732}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 1, scope: !699, file: !12, line: 1053, type: !40)
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signal", arg: 2, scope: !699, file: !12, line: 1053, type: !702)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "not_done_reading", scope: !699, file: !12, line: 1055, type: !63)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "selectset", scope: !699, file: !12, line: 1056, type: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !366, line: 75, baseType: !709)
!709 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 64, size: 1024, align: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !709, file: !366, line: 69, baseType: !712, size: 1024, align: 64)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 1024, align: 64, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 16)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d0", scope: !716, file: !12, line: 1064, type: !55)
!716 = distinct !DILexicalBlock(scope: !699, file: !12, line: 1064, column: 8)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d1", scope: !716, file: !12, line: 1064, type: !55)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_input", scope: !719, file: !12, line: 1069, type: !55)
!719 = distinct !DILexicalBlock(scope: !699, file: !12, line: 1068, column: 56)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !719, file: !12, line: 1069, type: !55)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !722, file: !12, line: 1072, type: !723)
!722 = distinct !DILexicalBlock(scope: !719, file: !12, line: 1072, column: 9)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !724, line: 30, size: 128, align: 64, elements: !725)
!724 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!725 = !{!726, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !723, file: !724, line: 32, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !27, line: 148, baseType: !28)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !723, file: !724, line: 33, baseType: !729, size: 64, align: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !27, line: 150, baseType: !28)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeoutp", scope: !722, file: !12, line: 1076, type: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !733, file: !12, line: 1091, type: !55)
!733 = distinct !DILexicalBlock(scope: !734, file: !12, line: 1090, column: 28)
!734 = distinct !DILexicalBlock(scope: !735, file: !12, line: 1090, column: 18)
!735 = distinct !DILexicalBlock(scope: !719, file: !12, line: 1087, column: 13)
!736 = !DISubprogram(name: "rlhandler", scope: !12, file: !12, line: 1044, type: !737, isLocal: true, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @rlhandler, variables: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !63}
!739 = !{!740}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !736, file: !12, line: 1044, type: !63)
!741 = !DISubprogram(name: "setup_readline", scope: !12, file: !12, line: 972, type: !742, isLocal: true, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.readlinestate*)* @setup_readline, variables: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !10}
!744 = !{!745, !746, !747, !749}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod_state", arg: 1, scope: !741, file: !12, line: 972, type: !10)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saved_locale", scope: !741, file: !12, line: 975, type: !63)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__len", scope: !748, file: !12, line: 1017, type: !105)
!748 = distinct !DILexicalBlock(scope: !741, file: !12, line: 1017, column: 353)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__retval", scope: !748, file: !12, line: 1017, type: !63)
!750 = !DISubprogram(name: "on_startup_hook", scope: !12, file: !12, line: 819, type: !452, isLocal: true, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @on_startup_hook, variables: !751)
!751 = !{!752, !753}
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !750, file: !12, line: 824, type: !55)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !750, file: !12, line: 826, type: !573)
!754 = !DISubprogram(name: "on_hook", scope: !12, file: !12, line: 791, type: !155, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @on_hook, variables: !755)
!755 = !{!756, !757, !758, !761, !763, !765}
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !754, file: !12, line: 791, type: !16)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !754, file: !12, line: 793, type: !55)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !759, file: !12, line: 795, type: !16)
!759 = distinct !DILexicalBlock(scope: !760, file: !12, line: 794, column: 29)
!760 = distinct !DILexicalBlock(scope: !754, file: !12, line: 794, column: 9)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !762, file: !12, line: 806, type: !16)
!762 = distinct !DILexicalBlock(scope: !759, file: !12, line: 806, column: 12)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !764, file: !12, line: 810, type: !16)
!764 = distinct !DILexicalBlock(scope: !759, file: !12, line: 810, column: 12)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !12, line: 810, type: !16)
!766 = distinct !DILexicalBlock(scope: !767, file: !12, line: 810, column: 97)
!767 = distinct !DILexicalBlock(scope: !764, file: !12, line: 810, column: 63)
!768 = !DISubprogram(name: "on_pre_input_hook", scope: !12, file: !12, line: 838, type: !452, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @on_pre_input_hook, variables: !769)
!769 = !{!770, !771}
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !768, file: !12, line: 843, type: !55)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !768, file: !12, line: 845, type: !573)
!772 = !DISubprogram(name: "flex_complete", scope: !12, file: !12, line: 945, type: !773, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, function: i8** (i8*, i32, i32)* @flex_complete, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!364, !40, !55, !55}
!775 = !{!776, !777, !778, !779, !780, !781, !783, !786, !788}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !772, file: !12, line: 945, type: !40)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !772, file: !12, line: 945, type: !55)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 3, scope: !772, file: !12, line: 945, type: !55)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !772, file: !12, line: 947, type: !364)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !772, file: !12, line: 949, type: !573)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !782, file: !12, line: 957, type: !16)
!782 = distinct !DILexicalBlock(scope: !772, file: !12, line: 957, column: 8)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !12, line: 957, type: !16)
!784 = distinct !DILexicalBlock(scope: !785, file: !12, line: 957, column: 173)
!785 = distinct !DILexicalBlock(scope: !782, file: !12, line: 957, column: 139)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !12, line: 958, type: !16)
!787 = distinct !DILexicalBlock(scope: !772, file: !12, line: 958, column: 8)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !12, line: 958, type: !16)
!789 = distinct !DILexicalBlock(scope: !790, file: !12, line: 958, column: 173)
!790 = distinct !DILexicalBlock(scope: !787, file: !12, line: 958, column: 139)
!791 = !DISubprogram(name: "on_completion", scope: !12, file: !12, line: 905, type: !371, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @on_completion, variables: !792)
!792 = !{!793, !794, !795, !796, !799, !800, !803, !805, !807}
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !791, file: !12, line: 905, type: !40)
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !791, file: !12, line: 905, type: !55)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !791, file: !12, line: 907, type: !63)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !797, file: !12, line: 909, type: !16)
!797 = distinct !DILexicalBlock(scope: !798, file: !12, line: 908, column: 109)
!798 = distinct !DILexicalBlock(scope: !791, file: !12, line: 908, column: 9)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !797, file: !12, line: 911, type: !573)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !801, file: !12, line: 921, type: !63)
!801 = distinct !DILexicalBlock(scope: !802, file: !12, line: 920, column: 14)
!802 = distinct !DILexicalBlock(scope: !797, file: !12, line: 917, column: 13)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !804, file: !12, line: 926, type: !16)
!804 = distinct !DILexicalBlock(scope: !797, file: !12, line: 926, column: 12)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !806, file: !12, line: 930, type: !16)
!806 = distinct !DILexicalBlock(scope: !797, file: !12, line: 930, column: 12)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !12, line: 930, type: !16)
!808 = distinct !DILexicalBlock(scope: !809, file: !12, line: 930, column: 97)
!809 = distinct !DILexicalBlock(scope: !806, file: !12, line: 930, column: 63)
!810 = !{!811, !834, !838, !842, !846, !850, !854, !858, !862, !866, !867, !871, !875, !879, !883, !884, !888, !892, !896, !900, !904, !905, !909, !913, !917, !921, !925, !929, !933, !937, !941}
!811 = !DIGlobalVariable(name: "readlinemodule", scope: !0, file: !12, line: 1236, type: !812, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @readlinemodule)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !813, line: 47, size: 832, align: 64, elements: !814)
!813 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!814 = !{!815, !824, !825, !826, !827, !830, !831, !832, !833}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !812, file: !813, line: 48, baseType: !816, size: 320, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !813, line: 38, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !813, line: 33, size: 320, align: 64, elements: !818)
!818 = !{!819, !820, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !817, file: !813, line: 34, baseType: !17, size: 128, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !817, file: !813, line: 35, baseType: !821, size: 64, align: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !817, file: !813, line: 36, baseType: !22, size: 64, align: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !817, file: !813, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !812, file: !813, line: 49, baseType: !40, size: 64, align: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !812, file: !813, line: 50, baseType: !40, size: 64, align: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !812, file: !813, line: 51, baseType: !22, size: 64, align: 64, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !812, file: !813, line: 52, baseType: !828, size: 64, align: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !292, line: 47, baseType: !291)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !812, file: !813, line: 53, baseType: !153, size: 64, align: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !812, file: !813, line: 54, baseType: !270, size: 64, align: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !812, file: !813, line: 55, baseType: !153, size: 64, align: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !812, file: !813, line: 56, baseType: !340, size: 64, align: 64, offset: 768)
!834 = !DIGlobalVariable(name: "doc_module", scope: !0, file: !12, line: 1228, type: !835, isLocal: true, isDefinition: true, variable: [71 x i8]* @doc_module)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 568, align: 8, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 71)
!838 = !DIGlobalVariable(name: "readline_methods", scope: !0, file: !12, line: 739, type: !839, isLocal: true, isDefinition: true, variable: [26 x %struct.PyMethodDef]* @readline_methods)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 6656, align: 64, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 26)
!842 = !DIGlobalVariable(name: "doc_parse_and_bind", scope: !0, file: !12, line: 148, type: !843, isLocal: true, isDefinition: true, variable: [86 x i8]* @doc_parse_and_bind)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 688, align: 8, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 86)
!846 = !DIGlobalVariable(name: "doc_get_line_buffer", scope: !0, file: !12, line: 683, type: !847, isLocal: true, isDefinition: true, variable: [76 x i8]* @doc_get_line_buffer)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 608, align: 8, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 76)
!850 = !DIGlobalVariable(name: "doc_insert_text", scope: !0, file: !12, line: 717, type: !851, isLocal: true, isDefinition: true, variable: [63 x i8]* @doc_insert_text)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 504, align: 8, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 63)
!854 = !DIGlobalVariable(name: "doc_redisplay", scope: !0, file: !12, line: 731, type: !855, isLocal: true, isDefinition: true, variable: [110 x i8]* @doc_redisplay)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 880, align: 8, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 110)
!858 = !DIGlobalVariable(name: "doc_read_init_file", scope: !0, file: !12, line: 173, type: !859, isLocal: true, isDefinition: true, variable: [121 x i8]* @doc_read_init_file)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 968, align: 8, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 121)
!862 = !DIGlobalVariable(name: "doc_read_history_file", scope: !0, file: !12, line: 200, type: !863, isLocal: true, isDefinition: true, variable: [104 x i8]* @doc_read_history_file)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 832, align: 8, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 104)
!866 = !DIGlobalVariable(name: "_history_length", scope: !0, file: !12, line: 199, type: !55, isLocal: true, isDefinition: true, variable: i32* @_history_length)
!867 = !DIGlobalVariable(name: "doc_write_history_file", scope: !0, file: !12, line: 234, type: !868, isLocal: true, isDefinition: true, variable: [105 x i8]* @doc_write_history_file)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 840, align: 8, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 105)
!871 = !DIGlobalVariable(name: "doc_get_history_item", scope: !0, file: !12, line: 657, type: !872, isLocal: true, isDefinition: true, variable: [83 x i8]* @doc_get_history_item)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 664, align: 8, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 83)
!875 = !DIGlobalVariable(name: "doc_get_current_history_length", scope: !0, file: !12, line: 670, type: !876, isLocal: true, isDefinition: true, variable: [96 x i8]* @doc_get_current_history_length)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 768, align: 8, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 96)
!879 = !DIGlobalVariable(name: "set_history_length_doc", scope: !0, file: !12, line: 252, type: !880, isLocal: true, isDefinition: true, variable: [167 x i8]* @set_history_length_doc)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1336, align: 8, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 167)
!883 = !DIGlobalVariable(name: "get_history_length_doc", scope: !0, file: !12, line: 267, type: !868, isLocal: true, isDefinition: true, variable: [105 x i8]* @get_history_length_doc)
!884 = !DIGlobalVariable(name: "doc_set_completer", scope: !0, file: !12, line: 577, type: !885, isLocal: true, isDefinition: true, variable: [247 x i8]* @doc_set_completer)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1976, align: 8, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 247)
!888 = !DIGlobalVariable(name: "doc_get_completer", scope: !0, file: !12, line: 595, type: !889, isLocal: true, isDefinition: true, variable: [65 x i8]* @doc_get_completer)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 520, align: 8, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 65)
!892 = !DIGlobalVariable(name: "doc_get_completion_type", scope: !0, file: !12, line: 384, type: !893, isLocal: true, isDefinition: true, variable: [73 x i8]* @doc_get_completion_type)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 584, align: 8, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 73)
!896 = !DIGlobalVariable(name: "doc_get_begidx", scope: !0, file: !12, line: 398, type: !897, isLocal: true, isDefinition: true, variable: [81 x i8]* @doc_get_begidx)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 648, align: 8, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 81)
!900 = !DIGlobalVariable(name: "doc_get_endidx", scope: !0, file: !12, line: 412, type: !901, isLocal: true, isDefinition: true, variable: [78 x i8]* @doc_get_endidx)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 624, align: 8, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 78)
!904 = !DIGlobalVariable(name: "completer_word_break_characters", scope: !0, file: !12, line: 78, type: !63, isLocal: true, isDefinition: true, variable: i8** @completer_word_break_characters)
!905 = !DIGlobalVariable(name: "doc_set_completer_delims", scope: !0, file: !12, line: 440, type: !906, isLocal: true, isDefinition: true, variable: [89 x i8]* @doc_set_completer_delims)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 712, align: 8, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 89)
!909 = !DIGlobalVariable(name: "doc_add_history", scope: !0, file: !12, line: 551, type: !910, isLocal: true, isDefinition: true, variable: [61 x i8]* @doc_add_history)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 488, align: 8, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 61)
!913 = !DIGlobalVariable(name: "doc_remove_history", scope: !0, file: !12, line: 501, type: !914, isLocal: true, isDefinition: true, variable: [75 x i8]* @doc_remove_history)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 600, align: 8, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 75)
!917 = !DIGlobalVariable(name: "doc_replace_history", scope: !0, file: !12, line: 533, type: !918, isLocal: true, isDefinition: true, variable: [106 x i8]* @doc_replace_history)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 848, align: 8, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 106)
!921 = !DIGlobalVariable(name: "doc_get_completer_delims", scope: !0, file: !12, line: 564, type: !922, isLocal: true, isDefinition: true, variable: [85 x i8]* @doc_get_completer_delims)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 680, align: 8, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 85)
!925 = !DIGlobalVariable(name: "doc_set_completion_display_matches_hook", scope: !0, file: !12, line: 329, type: !926, isLocal: true, isDefinition: true, variable: [232 x i8]* @doc_set_completion_display_matches_hook)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1856, align: 8, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 232)
!929 = !DIGlobalVariable(name: "doc_set_startup_hook", scope: !0, file: !12, line: 342, type: !930, isLocal: true, isDefinition: true, variable: [165 x i8]* @doc_set_startup_hook)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1320, align: 8, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 165)
!933 = !DIGlobalVariable(name: "doc_set_pre_input_hook", scope: !0, file: !12, line: 359, type: !934, isLocal: true, isDefinition: true, variable: [221 x i8]* @doc_set_pre_input_hook)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1768, align: 8, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 221)
!937 = !DIGlobalVariable(name: "doc_clear_history", scope: !0, file: !12, line: 699, type: !938, isLocal: true, isDefinition: true, variable: [60 x i8]* @doc_clear_history)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 480, align: 8, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 60)
!941 = !DIGlobalVariable(name: "completed_input_string", scope: !0, file: !12, line: 1042, type: !63, isLocal: true, isDefinition: true, variable: i8** @completed_input_string)
!942 = !{i32 2, !"Dwarf Version", i32 4}
!943 = !{i32 2, !"Debug Info Version", i32 3}
!944 = !{i32 1, !"PIC Level", i32 2}
!945 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!946 = !DILocation(line: 1252, column: 5, scope: !374)
!947 = !DIExpression()
!948 = !DILocation(line: 1252, column: 15, scope: !374)
!949 = !DILocation(line: 1253, column: 5, scope: !374)
!950 = !DILocation(line: 1253, column: 20, scope: !374)
!951 = !DILocation(line: 1265, column: 9, scope: !374)
!952 = !DILocation(line: 1265, column: 7, scope: !374)
!953 = !{!954, !954, i64 0}
!954 = !{!"any pointer", !955, i64 0}
!955 = !{!"omnipotent char", !956, i64 0}
!956 = !{!"Simple C/C++ TBAA"}
!957 = !DILocation(line: 1267, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !374, file: !12, line: 1267, column: 9)
!959 = !DILocation(line: 1267, column: 11, scope: !958)
!960 = !DILocation(line: 1267, column: 9, scope: !374)
!961 = !DILocation(line: 1268, column: 9, scope: !958)
!962 = !DILocation(line: 1270, column: 53, scope: !374)
!963 = !DILocation(line: 1270, column: 35, scope: !374)
!964 = !DILocation(line: 1270, column: 17, scope: !374)
!965 = !DILocation(line: 1270, column: 15, scope: !374)
!966 = !DILocation(line: 1271, column: 34, scope: !374)
!967 = !DILocation(line: 1272, column: 20, scope: !374)
!968 = !DILocation(line: 1272, column: 5, scope: !374)
!969 = !DILocation(line: 1273, column: 12, scope: !374)
!970 = !DILocation(line: 1273, column: 5, scope: !374)
!971 = !DILocation(line: 1274, column: 1, scope: !374)
!972 = !DILocation(line: 1155, column: 21, scope: !679)
!973 = !DILocation(line: 1155, column: 38, scope: !679)
!974 = !DILocation(line: 1155, column: 62, scope: !679)
!975 = !DILocation(line: 1157, column: 5, scope: !679)
!976 = !DILocation(line: 1157, column: 12, scope: !679)
!977 = !DILocation(line: 1158, column: 5, scope: !679)
!978 = !DILocation(line: 1158, column: 11, scope: !679)
!979 = !DILocation(line: 1158, column: 15, scope: !679)
!980 = !DILocation(line: 1159, column: 5, scope: !679)
!981 = !DILocation(line: 1159, column: 9, scope: !679)
!982 = !DILocation(line: 1162, column: 5, scope: !679)
!983 = !DILocation(line: 1162, column: 11, scope: !679)
!984 = !DILocation(line: 1162, column: 534, scope: !679)
!985 = !DILocation(line: 1162, column: 524, scope: !679)
!986 = !DILocation(line: 1163, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1163, column: 9)
!988 = !DILocation(line: 1163, column: 9, scope: !679)
!989 = !DILocation(line: 1164, column: 9, scope: !987)
!990 = !DILocation(line: 1165, column: 5, scope: !679)
!991 = !DILocation(line: 1168, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1168, column: 9)
!993 = !DILocation(line: 1168, column: 22, scope: !992)
!994 = !DILocation(line: 1168, column: 19, scope: !992)
!995 = !DILocation(line: 1168, column: 34, scope: !992)
!996 = !DILocation(line: 1168, column: 37, scope: !997)
!997 = !DILexicalBlockFile(scope: !992, file: !12, discriminator: 1)
!998 = !DILocation(line: 1168, column: 51, scope: !992)
!999 = !DILocation(line: 1168, column: 48, scope: !992)
!1000 = !DILocation(line: 1168, column: 9, scope: !679)
!1001 = !DILocation(line: 1169, column: 23, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !992, file: !12, line: 1168, column: 65)
!1003 = !DILocation(line: 1169, column: 21, scope: !1002)
!1004 = !DILocation(line: 1170, column: 24, scope: !1002)
!1005 = !DILocation(line: 1170, column: 22, scope: !1002)
!1006 = !DILocation(line: 1172, column: 9, scope: !1002)
!1007 = !DILocation(line: 1174, column: 5, scope: !1002)
!1008 = !DILocation(line: 1176, column: 40, scope: !679)
!1009 = !DILocation(line: 1176, column: 9, scope: !679)
!1010 = !DILocation(line: 1176, column: 7, scope: !679)
!1011 = !DILocation(line: 1179, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1179, column: 9)
!1013 = !{!1014, !1014, i64 0}
!1014 = !{!"int", !955, i64 0}
!1015 = !DILocation(line: 1179, column: 9, scope: !679)
!1016 = !DILocation(line: 1180, column: 24, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !12, line: 1180, column: 9)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !12, line: 1179, column: 17)
!1019 = !DILocation(line: 1180, column: 11, scope: !1017)
!1020 = !DILocation(line: 1180, column: 44, scope: !1017)
!1021 = !DILocation(line: 1180, column: 39, scope: !1017)
!1022 = !DILocation(line: 1181, column: 9, scope: !1018)
!1023 = !DILocation(line: 1185, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1185, column: 9)
!1025 = !DILocation(line: 1185, column: 11, scope: !1024)
!1026 = !DILocation(line: 1185, column: 9, scope: !679)
!1027 = !DILocation(line: 1186, column: 13, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !12, line: 1185, column: 26)
!1029 = !DILocation(line: 1186, column: 11, scope: !1028)
!1030 = !DILocation(line: 1187, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !12, line: 1187, column: 13)
!1032 = !DILocation(line: 1187, column: 15, scope: !1031)
!1033 = !DILocation(line: 1187, column: 13, scope: !1028)
!1034 = !DILocation(line: 1188, column: 14, scope: !1031)
!1035 = !DILocation(line: 1188, column: 16, scope: !1031)
!1036 = !{!955, !955, i64 0}
!1037 = !DILocation(line: 1188, column: 13, scope: !1031)
!1038 = !DILocation(line: 1189, column: 24, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1028, file: !12, line: 1189, column: 9)
!1040 = !DILocation(line: 1189, column: 11, scope: !1039)
!1041 = !DILocation(line: 1189, column: 44, scope: !1039)
!1042 = !DILocation(line: 1189, column: 39, scope: !1039)
!1043 = !DILocation(line: 1190, column: 16, scope: !1028)
!1044 = !DILocation(line: 1190, column: 9, scope: !1028)
!1045 = !DILocation(line: 1194, column: 16, scope: !679)
!1046 = !DILocation(line: 1194, column: 9, scope: !679)
!1047 = !DILocation(line: 1194, column: 7, scope: !679)
!1048 = !{!1049, !1049, i64 0}
!1049 = !{!"long", !955, i64 0}
!1050 = !DILocation(line: 1195, column: 9, scope: !693)
!1051 = !DILocation(line: 1195, column: 11, scope: !693)
!1052 = !DILocation(line: 1195, column: 9, scope: !679)
!1053 = !DILocation(line: 1196, column: 9, scope: !692)
!1054 = !DILocation(line: 1196, column: 21, scope: !692)
!1055 = !DILocation(line: 1197, column: 9, scope: !692)
!1056 = !DILocation(line: 1197, column: 13, scope: !692)
!1057 = !DILocation(line: 1197, column: 22, scope: !692)
!1058 = !DILocation(line: 1198, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !692, file: !12, line: 1198, column: 13)
!1060 = !DILocation(line: 1198, column: 20, scope: !1059)
!1061 = !DILocation(line: 1198, column: 13, scope: !692)
!1062 = !DILocation(line: 1205, column: 46, scope: !1059)
!1063 = !DILocation(line: 1205, column: 34, scope: !1059)
!1064 = !DILocation(line: 1205, column: 55, scope: !1059)
!1065 = !{!1066, !954, i64 0}
!1066 = !{!"_hist_entry", !954, i64 0, !954, i64 8, !954, i64 16}
!1067 = !DILocation(line: 1205, column: 18, scope: !1059)
!1068 = !DILocation(line: 1205, column: 13, scope: !1059)
!1069 = !DILocation(line: 1207, column: 18, scope: !1059)
!1070 = !DILocation(line: 1208, column: 30, scope: !696)
!1071 = !DILocation(line: 1208, column: 37, scope: !696)
!1072 = !DILocation(line: 1208, column: 47, scope: !696)
!1073 = !DILocation(line: 1208, column: 2008, scope: !696)
!1074 = !DILocation(line: 1208, column: 2011, scope: !696)
!1075 = !DILocation(line: 1208, column: 1990, scope: !696)
!1076 = !DILocation(line: 1208, column: 2021, scope: !697)
!1077 = !DILocation(line: 1208, column: 2021, scope: !696)
!1078 = !DILocation(line: 1208, column: 27, scope: !697)
!1079 = !DILocation(line: 1208, column: 13, scope: !692)
!1080 = !DILocation(line: 1209, column: 25, scope: !697)
!1081 = !DILocation(line: 1209, column: 13, scope: !697)
!1082 = !DILocation(line: 1210, column: 5, scope: !693)
!1083 = !DILocation(line: 1210, column: 5, scope: !692)
!1084 = !DILocation(line: 1213, column: 9, scope: !679)
!1085 = !DILocation(line: 1213, column: 7, scope: !679)
!1086 = !DILocation(line: 1214, column: 25, scope: !679)
!1087 = !DILocation(line: 1214, column: 26, scope: !679)
!1088 = !DILocation(line: 1214, column: 9, scope: !679)
!1089 = !DILocation(line: 1214, column: 7, scope: !679)
!1090 = !DILocation(line: 1215, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1215, column: 9)
!1092 = !DILocation(line: 1215, column: 11, scope: !1091)
!1093 = !DILocation(line: 1215, column: 9, scope: !679)
!1094 = !DILocation(line: 1216, column: 28, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !12, line: 1215, column: 26)
!1096 = !DILocation(line: 1216, column: 31, scope: !1095)
!1097 = !DILocation(line: 1216, column: 34, scope: !1095)
!1098 = !DILocation(line: 1216, column: 9, scope: !1095)
!1099 = !DILocation(line: 1217, column: 11, scope: !1095)
!1100 = !DILocation(line: 1217, column: 9, scope: !1095)
!1101 = !DILocation(line: 1217, column: 14, scope: !1095)
!1102 = !DILocation(line: 1218, column: 11, scope: !1095)
!1103 = !DILocation(line: 1218, column: 12, scope: !1095)
!1104 = !DILocation(line: 1218, column: 9, scope: !1095)
!1105 = !DILocation(line: 1218, column: 16, scope: !1095)
!1106 = !DILocation(line: 1219, column: 5, scope: !1095)
!1107 = !DILocation(line: 1220, column: 10, scope: !679)
!1108 = !DILocation(line: 1220, column: 5, scope: !679)
!1109 = !DILocation(line: 1221, column: 20, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !679, file: !12, line: 1221, column: 5)
!1111 = !DILocation(line: 1221, column: 7, scope: !1110)
!1112 = !DILocation(line: 1221, column: 40, scope: !1110)
!1113 = !DILocation(line: 1221, column: 35, scope: !1110)
!1114 = !DILocation(line: 1222, column: 12, scope: !679)
!1115 = !DILocation(line: 1222, column: 5, scope: !679)
!1116 = !DILocation(line: 1223, column: 1, scope: !679)
!1117 = !DILocation(line: 972, column: 31, scope: !741)
!1118 = !DILocation(line: 975, column: 5, scope: !741)
!1119 = !DILocation(line: 975, column: 11, scope: !741)
!1120 = !DILocation(line: 975, column: 534, scope: !741)
!1121 = !DILocation(line: 975, column: 524, scope: !741)
!1122 = !DILocation(line: 976, column: 10, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !741, file: !12, line: 976, column: 9)
!1124 = !DILocation(line: 976, column: 9, scope: !741)
!1125 = !DILocation(line: 977, column: 9, scope: !1123)
!1126 = !DILocation(line: 999, column: 5, scope: !741)
!1127 = !DILocation(line: 1001, column: 22, scope: !741)
!1128 = !DILocation(line: 1003, column: 5, scope: !741)
!1129 = !DILocation(line: 1005, column: 5, scope: !741)
!1130 = !DILocation(line: 1006, column: 5, scope: !741)
!1131 = !DILocation(line: 1008, column: 21, scope: !741)
!1132 = !DILocation(line: 1010, column: 23, scope: !741)
!1133 = !DILocation(line: 1013, column: 38, scope: !741)
!1134 = !DILocation(line: 1017, column: 25, scope: !741)
!1135 = !DILocation(line: 1017, column: 237, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !741, file: !12, discriminator: 1)
!1137 = !DILocation(line: 1017, column: 299, scope: !741)
!1138 = !DILocation(line: 1017, column: 237, scope: !741)
!1139 = !DILocation(line: 1017, column: 318, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !741, file: !12, discriminator: 3)
!1141 = !DILocation(line: 1017, column: 355, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !748, file: !12, discriminator: 4)
!1143 = !DILocation(line: 1017, column: 362, scope: !748)
!1144 = !DILocation(line: 1017, column: 424, scope: !748)
!1145 = !DILocation(line: 1017, column: 430, scope: !748)
!1146 = !DILocation(line: 1017, column: 458, scope: !748)
!1147 = !DILocation(line: 1017, column: 450, scope: !748)
!1148 = !DILocation(line: 1017, column: 470, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !748, file: !12, line: 1017, column: 470)
!1150 = !DILocation(line: 1017, column: 479, scope: !1149)
!1151 = !DILocation(line: 1017, column: 470, scope: !748)
!1152 = !DILocation(line: 1017, column: 522, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1149, file: !12, discriminator: 6)
!1154 = !DILocation(line: 1017, column: 573, scope: !1149)
!1155 = !DILocation(line: 1017, column: 514, scope: !1149)
!1156 = !DILocation(line: 1017, column: 503, scope: !1149)
!1157 = !DILocation(line: 1017, column: 494, scope: !1149)
!1158 = !DILocation(line: 1017, column: 581, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !12, discriminator: 8)
!1160 = !DILexicalBlockFile(scope: !748, file: !12, discriminator: 7)
!1161 = !DILocation(line: 1017, column: 491, scope: !1149)
!1162 = !DILocation(line: 1017, column: 591, scope: !741)
!1163 = !DILocation(line: 1017, column: 591, scope: !748)
!1164 = !DILocation(line: 1017, column: 25, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !12, discriminator: 9)
!1166 = !DILexicalBlockFile(scope: !741, file: !12, discriminator: 5)
!1167 = !DILocation(line: 1017, column: 597, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !741, file: !12, discriminator: 2)
!1169 = !DILocation(line: 1016, column: 44, scope: !741)
!1170 = !DILocation(line: 1015, column: 37, scope: !741)
!1171 = !DILocation(line: 1020, column: 25, scope: !741)
!1172 = !DILocation(line: 1020, column: 5, scope: !741)
!1173 = !DILocation(line: 1020, column: 16, scope: !741)
!1174 = !DILocation(line: 1020, column: 23, scope: !741)
!1175 = !{!1176, !954, i64 32}
!1176 = !{!"", !954, i64 0, !954, i64 8, !954, i64 16, !954, i64 24, !954, i64 32, !954, i64 40}
!1177 = !DILocation(line: 1021, column: 25, scope: !741)
!1178 = !DILocation(line: 1021, column: 5, scope: !741)
!1179 = !DILocation(line: 1021, column: 16, scope: !741)
!1180 = !DILocation(line: 1021, column: 23, scope: !741)
!1181 = !{!1176, !954, i64 40}
!1182 = !DILocation(line: 1032, column: 9, scope: !741)
!1183 = !DILocation(line: 1034, column: 20, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !741, file: !12, line: 1034, column: 5)
!1185 = !DILocation(line: 1034, column: 7, scope: !1184)
!1186 = !DILocation(line: 1034, column: 40, scope: !1184)
!1187 = !DILocation(line: 1034, column: 35, scope: !1184)
!1188 = !DILocation(line: 1035, column: 1, scope: !741)
!1189 = !DILocation(line: 106, column: 29, scope: !606)
!1190 = !DILocation(line: 106, column: 42, scope: !606)
!1191 = !DILocation(line: 106, column: 55, scope: !606)
!1192 = !DILocation(line: 108, column: 5, scope: !606)
!1193 = !DILocation(line: 108, column: 20, scope: !606)
!1194 = !DILocation(line: 108, column: 64, scope: !606)
!1195 = !DILocation(line: 108, column: 46, scope: !606)
!1196 = !DILocation(line: 108, column: 29, scope: !606)
!1197 = !DILocation(line: 109, column: 5, scope: !606)
!1198 = !DILocation(line: 109, column: 14, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !614, file: !12, discriminator: 1)
!1200 = !DILocation(line: 109, column: 21, scope: !614)
!1201 = !{!1176, !954, i64 0}
!1202 = !DILocation(line: 109, column: 14, scope: !614)
!1203 = !DILocation(line: 109, column: 14, scope: !615)
!1204 = !DILocation(line: 109, column: 56, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !613, file: !12, discriminator: 2)
!1206 = !DILocation(line: 109, column: 60, scope: !613)
!1207 = !DILocation(line: 109, column: 67, scope: !613)
!1208 = !DILocation(line: 109, column: 86, scope: !613)
!1209 = !DILocation(line: 109, column: 93, scope: !613)
!1210 = !DILocation(line: 109, column: 127, scope: !613)
!1211 = !DILocation(line: 109, column: 137, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !613, file: !12, line: 109, column: 137)
!1213 = !DILocation(line: 109, column: 137, scope: !613)
!1214 = !DILocation(line: 109, column: 150, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1212, file: !12, discriminator: 4)
!1216 = !DILocation(line: 109, column: 143, scope: !1212)
!1217 = !DILocation(line: 109, column: 156, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !614, file: !12, discriminator: 5)
!1219 = !DILocation(line: 109, column: 156, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !12, discriminator: 7)
!1221 = !DILexicalBlockFile(scope: !614, file: !12, discriminator: 6)
!1222 = !DILocation(line: 109, column: 156, scope: !613)
!1223 = !DILocation(line: 109, column: 158, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !12, discriminator: 8)
!1225 = !DILexicalBlockFile(scope: !615, file: !12, discriminator: 3)
!1226 = !DILocation(line: 109, column: 158, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !615, file: !12, discriminator: 9)
!1228 = !DILocation(line: 110, column: 5, scope: !606)
!1229 = !DILocation(line: 110, column: 14, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !618, file: !12, discriminator: 1)
!1231 = !DILocation(line: 110, column: 21, scope: !618)
!1232 = !{!1176, !954, i64 8}
!1233 = !DILocation(line: 110, column: 14, scope: !618)
!1234 = !DILocation(line: 110, column: 14, scope: !619)
!1235 = !DILocation(line: 110, column: 37, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !617, file: !12, discriminator: 2)
!1237 = !DILocation(line: 110, column: 41, scope: !617)
!1238 = !DILocation(line: 110, column: 48, scope: !617)
!1239 = !DILocation(line: 110, column: 67, scope: !617)
!1240 = !DILocation(line: 110, column: 74, scope: !617)
!1241 = !DILocation(line: 110, column: 89, scope: !617)
!1242 = !DILocation(line: 110, column: 99, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !617, file: !12, line: 110, column: 99)
!1244 = !DILocation(line: 110, column: 99, scope: !617)
!1245 = !DILocation(line: 110, column: 112, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1243, file: !12, discriminator: 4)
!1247 = !DILocation(line: 110, column: 105, scope: !1243)
!1248 = !DILocation(line: 110, column: 118, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !618, file: !12, discriminator: 5)
!1250 = !DILocation(line: 110, column: 118, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !12, discriminator: 7)
!1252 = !DILexicalBlockFile(scope: !618, file: !12, discriminator: 6)
!1253 = !DILocation(line: 110, column: 118, scope: !617)
!1254 = !DILocation(line: 110, column: 120, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !12, discriminator: 8)
!1256 = !DILexicalBlockFile(scope: !619, file: !12, discriminator: 3)
!1257 = !DILocation(line: 110, column: 120, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !619, file: !12, discriminator: 9)
!1259 = !DILocation(line: 111, column: 5, scope: !606)
!1260 = !DILocation(line: 111, column: 14, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !622, file: !12, discriminator: 1)
!1262 = !DILocation(line: 111, column: 21, scope: !622)
!1263 = !{!1176, !954, i64 16}
!1264 = !DILocation(line: 111, column: 14, scope: !622)
!1265 = !DILocation(line: 111, column: 14, scope: !623)
!1266 = !DILocation(line: 111, column: 39, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !621, file: !12, discriminator: 2)
!1268 = !DILocation(line: 111, column: 43, scope: !621)
!1269 = !DILocation(line: 111, column: 50, scope: !621)
!1270 = !DILocation(line: 111, column: 69, scope: !621)
!1271 = !DILocation(line: 111, column: 76, scope: !621)
!1272 = !DILocation(line: 111, column: 93, scope: !621)
!1273 = !DILocation(line: 111, column: 103, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !621, file: !12, line: 111, column: 103)
!1275 = !DILocation(line: 111, column: 103, scope: !621)
!1276 = !DILocation(line: 111, column: 116, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1274, file: !12, discriminator: 4)
!1278 = !DILocation(line: 111, column: 109, scope: !1274)
!1279 = !DILocation(line: 111, column: 122, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !622, file: !12, discriminator: 5)
!1281 = !DILocation(line: 111, column: 122, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !12, discriminator: 7)
!1283 = !DILexicalBlockFile(scope: !622, file: !12, discriminator: 6)
!1284 = !DILocation(line: 111, column: 122, scope: !621)
!1285 = !DILocation(line: 111, column: 124, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !12, discriminator: 8)
!1287 = !DILexicalBlockFile(scope: !623, file: !12, discriminator: 3)
!1288 = !DILocation(line: 111, column: 124, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !623, file: !12, discriminator: 9)
!1290 = !DILocation(line: 112, column: 5, scope: !606)
!1291 = !DILocation(line: 112, column: 14, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !626, file: !12, discriminator: 1)
!1293 = !DILocation(line: 112, column: 21, scope: !626)
!1294 = !{!1176, !954, i64 24}
!1295 = !DILocation(line: 112, column: 14, scope: !626)
!1296 = !DILocation(line: 112, column: 14, scope: !627)
!1297 = !DILocation(line: 112, column: 34, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !625, file: !12, discriminator: 2)
!1299 = !DILocation(line: 112, column: 38, scope: !625)
!1300 = !DILocation(line: 112, column: 45, scope: !625)
!1301 = !DILocation(line: 112, column: 64, scope: !625)
!1302 = !DILocation(line: 112, column: 71, scope: !625)
!1303 = !DILocation(line: 112, column: 83, scope: !625)
!1304 = !DILocation(line: 112, column: 93, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !625, file: !12, line: 112, column: 93)
!1306 = !DILocation(line: 112, column: 93, scope: !625)
!1307 = !DILocation(line: 112, column: 106, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1305, file: !12, discriminator: 4)
!1309 = !DILocation(line: 112, column: 99, scope: !1305)
!1310 = !DILocation(line: 112, column: 112, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !626, file: !12, discriminator: 5)
!1312 = !DILocation(line: 112, column: 112, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !12, discriminator: 7)
!1314 = !DILexicalBlockFile(scope: !626, file: !12, discriminator: 6)
!1315 = !DILocation(line: 112, column: 112, scope: !625)
!1316 = !DILocation(line: 112, column: 114, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !12, discriminator: 8)
!1318 = !DILexicalBlockFile(scope: !627, file: !12, discriminator: 3)
!1319 = !DILocation(line: 112, column: 114, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !627, file: !12, discriminator: 9)
!1321 = !DILocation(line: 113, column: 5, scope: !606)
!1322 = !DILocation(line: 113, column: 14, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !630, file: !12, discriminator: 1)
!1324 = !DILocation(line: 113, column: 21, scope: !630)
!1325 = !DILocation(line: 113, column: 14, scope: !630)
!1326 = !DILocation(line: 113, column: 14, scope: !631)
!1327 = !DILocation(line: 113, column: 31, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !629, file: !12, discriminator: 2)
!1329 = !DILocation(line: 113, column: 35, scope: !629)
!1330 = !DILocation(line: 113, column: 42, scope: !629)
!1331 = !DILocation(line: 113, column: 61, scope: !629)
!1332 = !DILocation(line: 113, column: 68, scope: !629)
!1333 = !DILocation(line: 113, column: 77, scope: !629)
!1334 = !DILocation(line: 113, column: 87, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !629, file: !12, line: 113, column: 87)
!1336 = !DILocation(line: 113, column: 87, scope: !629)
!1337 = !DILocation(line: 113, column: 100, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1335, file: !12, discriminator: 4)
!1339 = !DILocation(line: 113, column: 93, scope: !1335)
!1340 = !DILocation(line: 113, column: 106, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !630, file: !12, discriminator: 5)
!1342 = !DILocation(line: 113, column: 106, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !12, discriminator: 7)
!1344 = !DILexicalBlockFile(scope: !630, file: !12, discriminator: 6)
!1345 = !DILocation(line: 113, column: 106, scope: !629)
!1346 = !DILocation(line: 113, column: 108, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !12, discriminator: 8)
!1348 = !DILexicalBlockFile(scope: !631, file: !12, discriminator: 3)
!1349 = !DILocation(line: 113, column: 108, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !631, file: !12, discriminator: 9)
!1351 = !DILocation(line: 114, column: 5, scope: !606)
!1352 = !DILocation(line: 114, column: 14, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !634, file: !12, discriminator: 1)
!1354 = !DILocation(line: 114, column: 21, scope: !634)
!1355 = !DILocation(line: 114, column: 14, scope: !634)
!1356 = !DILocation(line: 114, column: 14, scope: !635)
!1357 = !DILocation(line: 114, column: 31, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !633, file: !12, discriminator: 2)
!1359 = !DILocation(line: 114, column: 35, scope: !633)
!1360 = !DILocation(line: 114, column: 42, scope: !633)
!1361 = !DILocation(line: 114, column: 61, scope: !633)
!1362 = !DILocation(line: 114, column: 68, scope: !633)
!1363 = !DILocation(line: 114, column: 77, scope: !633)
!1364 = !DILocation(line: 114, column: 87, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !633, file: !12, line: 114, column: 87)
!1366 = !DILocation(line: 114, column: 87, scope: !633)
!1367 = !DILocation(line: 114, column: 100, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1365, file: !12, discriminator: 4)
!1369 = !DILocation(line: 114, column: 93, scope: !1365)
!1370 = !DILocation(line: 114, column: 106, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !634, file: !12, discriminator: 5)
!1372 = !DILocation(line: 114, column: 106, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1374, file: !12, discriminator: 7)
!1374 = !DILexicalBlockFile(scope: !634, file: !12, discriminator: 6)
!1375 = !DILocation(line: 114, column: 106, scope: !633)
!1376 = !DILocation(line: 114, column: 108, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !12, discriminator: 8)
!1378 = !DILexicalBlockFile(scope: !635, file: !12, discriminator: 3)
!1379 = !DILocation(line: 114, column: 108, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !635, file: !12, discriminator: 9)
!1381 = !DILocation(line: 115, column: 5, scope: !606)
!1382 = !DILocation(line: 116, column: 1, scope: !606)
!1383 = !DILocation(line: 93, column: 26, scope: !636)
!1384 = !DILocation(line: 95, column: 4, scope: !636)
!1385 = !DILocation(line: 95, column: 19, scope: !636)
!1386 = !DILocation(line: 95, column: 63, scope: !636)
!1387 = !DILocation(line: 95, column: 45, scope: !636)
!1388 = !DILocation(line: 95, column: 28, scope: !636)
!1389 = !DILocation(line: 96, column: 4, scope: !636)
!1390 = !DILocation(line: 96, column: 9, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !641, file: !12, discriminator: 1)
!1392 = !DILocation(line: 96, column: 19, scope: !641)
!1393 = !DILocation(line: 96, column: 42, scope: !641)
!1394 = !DILocation(line: 96, column: 49, scope: !641)
!1395 = !DILocation(line: 96, column: 87, scope: !645)
!1396 = !DILocation(line: 96, column: 95, scope: !645)
!1397 = !DILocation(line: 96, column: 87, scope: !641)
!1398 = !DILocation(line: 96, column: 113, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !644, file: !12, discriminator: 2)
!1400 = !DILocation(line: 96, column: 120, scope: !644)
!1401 = !DILocation(line: 96, column: 153, scope: !644)
!1402 = !DILocation(line: 96, column: 167, scope: !644)
!1403 = !DILocation(line: 96, column: 172, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !643, file: !12, discriminator: 4)
!1405 = !DILocation(line: 96, column: 182, scope: !643)
!1406 = !DILocation(line: 96, column: 212, scope: !643)
!1407 = !DILocation(line: 96, column: 230, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !643, file: !12, line: 96, column: 227)
!1409 = !DILocation(line: 96, column: 247, scope: !1408)
!1410 = !DILocation(line: 96, column: 227, scope: !1408)
!1411 = !{!1412, !1049, i64 0}
!1412 = !{!"_object", !1049, i64 0, !954, i64 8}
!1413 = !DILocation(line: 96, column: 257, scope: !1408)
!1414 = !DILocation(line: 96, column: 227, scope: !643)
!1415 = !DILocation(line: 96, column: 227, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !643, file: !12, discriminator: 5)
!1417 = !DILocation(line: 96, column: 288, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1408, file: !12, discriminator: 6)
!1419 = !DILocation(line: 96, column: 306, scope: !1408)
!1420 = !{!1412, !954, i64 8}
!1421 = !DILocation(line: 96, column: 316, scope: !1408)
!1422 = !{!1423, !954, i64 48}
!1423 = !{!"_typeobject", !1424, i64 0, !954, i64 24, !1049, i64 32, !1049, i64 40, !954, i64 48, !954, i64 56, !954, i64 64, !954, i64 72, !954, i64 80, !954, i64 88, !954, i64 96, !954, i64 104, !954, i64 112, !954, i64 120, !954, i64 128, !954, i64 136, !954, i64 144, !954, i64 152, !954, i64 160, !1049, i64 168, !954, i64 176, !954, i64 184, !954, i64 192, !954, i64 200, !1049, i64 208, !954, i64 216, !954, i64 224, !954, i64 232, !954, i64 240, !954, i64 248, !954, i64 256, !954, i64 264, !954, i64 272, !954, i64 280, !1049, i64 288, !954, i64 296, !954, i64 304, !954, i64 312, !954, i64 320, !954, i64 328, !954, i64 336, !954, i64 344, !954, i64 352, !954, i64 360, !954, i64 368, !954, i64 376, !1014, i64 384, !954, i64 392}
!1424 = !{!"", !1412, i64 0, !1049, i64 16}
!1425 = !DILocation(line: 96, column: 341, scope: !1408)
!1426 = !DILocation(line: 96, column: 272, scope: !1408)
!1427 = !DILocation(line: 96, column: 360, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !644, file: !12, discriminator: 7)
!1429 = !DILocation(line: 96, column: 360, scope: !643)
!1430 = !DILocation(line: 96, column: 360, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !643, file: !12, discriminator: 8)
!1432 = !DILocation(line: 96, column: 373, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !644, file: !12, discriminator: 9)
!1434 = !DILocation(line: 96, column: 375, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !12, discriminator: 10)
!1436 = !DILexicalBlockFile(scope: !636, file: !12, discriminator: 3)
!1437 = !DILocation(line: 96, column: 375, scope: !641)
!1438 = !DILocation(line: 96, column: 375, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !641, file: !12, discriminator: 11)
!1440 = !DILocation(line: 97, column: 4, scope: !636)
!1441 = !DILocation(line: 97, column: 9, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !647, file: !12, discriminator: 1)
!1443 = !DILocation(line: 97, column: 19, scope: !647)
!1444 = !DILocation(line: 97, column: 42, scope: !647)
!1445 = !DILocation(line: 97, column: 49, scope: !647)
!1446 = !DILocation(line: 97, column: 68, scope: !651)
!1447 = !DILocation(line: 97, column: 76, scope: !651)
!1448 = !DILocation(line: 97, column: 68, scope: !647)
!1449 = !DILocation(line: 97, column: 94, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !650, file: !12, discriminator: 2)
!1451 = !DILocation(line: 97, column: 101, scope: !650)
!1452 = !DILocation(line: 97, column: 115, scope: !650)
!1453 = !DILocation(line: 97, column: 129, scope: !650)
!1454 = !DILocation(line: 97, column: 134, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !649, file: !12, discriminator: 4)
!1456 = !DILocation(line: 97, column: 144, scope: !649)
!1457 = !DILocation(line: 97, column: 174, scope: !649)
!1458 = !DILocation(line: 97, column: 192, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !649, file: !12, line: 97, column: 189)
!1460 = !DILocation(line: 97, column: 209, scope: !1459)
!1461 = !DILocation(line: 97, column: 189, scope: !1459)
!1462 = !DILocation(line: 97, column: 219, scope: !1459)
!1463 = !DILocation(line: 97, column: 189, scope: !649)
!1464 = !DILocation(line: 97, column: 189, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !649, file: !12, discriminator: 5)
!1466 = !DILocation(line: 97, column: 250, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1459, file: !12, discriminator: 6)
!1468 = !DILocation(line: 97, column: 268, scope: !1459)
!1469 = !DILocation(line: 97, column: 278, scope: !1459)
!1470 = !DILocation(line: 97, column: 303, scope: !1459)
!1471 = !DILocation(line: 97, column: 234, scope: !1459)
!1472 = !DILocation(line: 97, column: 322, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !650, file: !12, discriminator: 7)
!1474 = !DILocation(line: 97, column: 322, scope: !649)
!1475 = !DILocation(line: 97, column: 322, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !649, file: !12, discriminator: 8)
!1477 = !DILocation(line: 97, column: 335, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !650, file: !12, discriminator: 9)
!1479 = !DILocation(line: 97, column: 337, scope: !1435)
!1480 = !DILocation(line: 97, column: 337, scope: !647)
!1481 = !DILocation(line: 97, column: 337, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !647, file: !12, discriminator: 11)
!1483 = !DILocation(line: 98, column: 4, scope: !636)
!1484 = !DILocation(line: 98, column: 9, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !653, file: !12, discriminator: 1)
!1486 = !DILocation(line: 98, column: 19, scope: !653)
!1487 = !DILocation(line: 98, column: 42, scope: !653)
!1488 = !DILocation(line: 98, column: 49, scope: !653)
!1489 = !DILocation(line: 98, column: 70, scope: !657)
!1490 = !DILocation(line: 98, column: 78, scope: !657)
!1491 = !DILocation(line: 98, column: 70, scope: !653)
!1492 = !DILocation(line: 98, column: 96, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !656, file: !12, discriminator: 2)
!1494 = !DILocation(line: 98, column: 103, scope: !656)
!1495 = !DILocation(line: 98, column: 119, scope: !656)
!1496 = !DILocation(line: 98, column: 133, scope: !656)
!1497 = !DILocation(line: 98, column: 138, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !655, file: !12, discriminator: 4)
!1499 = !DILocation(line: 98, column: 148, scope: !655)
!1500 = !DILocation(line: 98, column: 178, scope: !655)
!1501 = !DILocation(line: 98, column: 196, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !655, file: !12, line: 98, column: 193)
!1503 = !DILocation(line: 98, column: 213, scope: !1502)
!1504 = !DILocation(line: 98, column: 193, scope: !1502)
!1505 = !DILocation(line: 98, column: 223, scope: !1502)
!1506 = !DILocation(line: 98, column: 193, scope: !655)
!1507 = !DILocation(line: 98, column: 193, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !655, file: !12, discriminator: 5)
!1509 = !DILocation(line: 98, column: 254, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1502, file: !12, discriminator: 6)
!1511 = !DILocation(line: 98, column: 272, scope: !1502)
!1512 = !DILocation(line: 98, column: 282, scope: !1502)
!1513 = !DILocation(line: 98, column: 307, scope: !1502)
!1514 = !DILocation(line: 98, column: 238, scope: !1502)
!1515 = !DILocation(line: 98, column: 326, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !656, file: !12, discriminator: 7)
!1517 = !DILocation(line: 98, column: 326, scope: !655)
!1518 = !DILocation(line: 98, column: 326, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !655, file: !12, discriminator: 8)
!1520 = !DILocation(line: 98, column: 339, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !656, file: !12, discriminator: 9)
!1522 = !DILocation(line: 98, column: 341, scope: !1435)
!1523 = !DILocation(line: 98, column: 341, scope: !653)
!1524 = !DILocation(line: 98, column: 341, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !653, file: !12, discriminator: 11)
!1526 = !DILocation(line: 99, column: 4, scope: !636)
!1527 = !DILocation(line: 99, column: 9, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !659, file: !12, discriminator: 1)
!1529 = !DILocation(line: 99, column: 19, scope: !659)
!1530 = !DILocation(line: 99, column: 42, scope: !659)
!1531 = !DILocation(line: 99, column: 49, scope: !659)
!1532 = !DILocation(line: 99, column: 65, scope: !663)
!1533 = !DILocation(line: 99, column: 73, scope: !663)
!1534 = !DILocation(line: 99, column: 65, scope: !659)
!1535 = !DILocation(line: 99, column: 91, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !662, file: !12, discriminator: 2)
!1537 = !DILocation(line: 99, column: 98, scope: !662)
!1538 = !DILocation(line: 99, column: 109, scope: !662)
!1539 = !DILocation(line: 99, column: 123, scope: !662)
!1540 = !DILocation(line: 99, column: 128, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !661, file: !12, discriminator: 4)
!1542 = !DILocation(line: 99, column: 138, scope: !661)
!1543 = !DILocation(line: 99, column: 168, scope: !661)
!1544 = !DILocation(line: 99, column: 186, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !661, file: !12, line: 99, column: 183)
!1546 = !DILocation(line: 99, column: 203, scope: !1545)
!1547 = !DILocation(line: 99, column: 183, scope: !1545)
!1548 = !DILocation(line: 99, column: 213, scope: !1545)
!1549 = !DILocation(line: 99, column: 183, scope: !661)
!1550 = !DILocation(line: 99, column: 183, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !661, file: !12, discriminator: 5)
!1552 = !DILocation(line: 99, column: 244, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1545, file: !12, discriminator: 6)
!1554 = !DILocation(line: 99, column: 262, scope: !1545)
!1555 = !DILocation(line: 99, column: 272, scope: !1545)
!1556 = !DILocation(line: 99, column: 297, scope: !1545)
!1557 = !DILocation(line: 99, column: 228, scope: !1545)
!1558 = !DILocation(line: 99, column: 316, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !662, file: !12, discriminator: 7)
!1560 = !DILocation(line: 99, column: 316, scope: !661)
!1561 = !DILocation(line: 99, column: 316, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !661, file: !12, discriminator: 8)
!1563 = !DILocation(line: 99, column: 329, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !662, file: !12, discriminator: 9)
!1565 = !DILocation(line: 99, column: 331, scope: !1435)
!1566 = !DILocation(line: 99, column: 331, scope: !659)
!1567 = !DILocation(line: 99, column: 331, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !659, file: !12, discriminator: 11)
!1569 = !DILocation(line: 100, column: 4, scope: !636)
!1570 = !DILocation(line: 100, column: 9, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !665, file: !12, discriminator: 1)
!1572 = !DILocation(line: 100, column: 19, scope: !665)
!1573 = !DILocation(line: 100, column: 42, scope: !665)
!1574 = !DILocation(line: 100, column: 49, scope: !665)
!1575 = !DILocation(line: 100, column: 62, scope: !669)
!1576 = !DILocation(line: 100, column: 70, scope: !669)
!1577 = !DILocation(line: 100, column: 62, scope: !665)
!1578 = !DILocation(line: 100, column: 88, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !668, file: !12, discriminator: 2)
!1580 = !DILocation(line: 100, column: 95, scope: !668)
!1581 = !DILocation(line: 100, column: 103, scope: !668)
!1582 = !DILocation(line: 100, column: 117, scope: !668)
!1583 = !DILocation(line: 100, column: 122, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !667, file: !12, discriminator: 4)
!1585 = !DILocation(line: 100, column: 132, scope: !667)
!1586 = !DILocation(line: 100, column: 162, scope: !667)
!1587 = !DILocation(line: 100, column: 180, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !667, file: !12, line: 100, column: 177)
!1589 = !DILocation(line: 100, column: 197, scope: !1588)
!1590 = !DILocation(line: 100, column: 177, scope: !1588)
!1591 = !DILocation(line: 100, column: 207, scope: !1588)
!1592 = !DILocation(line: 100, column: 177, scope: !667)
!1593 = !DILocation(line: 100, column: 177, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !667, file: !12, discriminator: 5)
!1595 = !DILocation(line: 100, column: 238, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1588, file: !12, discriminator: 6)
!1597 = !DILocation(line: 100, column: 256, scope: !1588)
!1598 = !DILocation(line: 100, column: 266, scope: !1588)
!1599 = !DILocation(line: 100, column: 291, scope: !1588)
!1600 = !DILocation(line: 100, column: 222, scope: !1588)
!1601 = !DILocation(line: 100, column: 310, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !668, file: !12, discriminator: 7)
!1603 = !DILocation(line: 100, column: 310, scope: !667)
!1604 = !DILocation(line: 100, column: 310, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !667, file: !12, discriminator: 8)
!1606 = !DILocation(line: 100, column: 323, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !668, file: !12, discriminator: 9)
!1608 = !DILocation(line: 100, column: 325, scope: !1435)
!1609 = !DILocation(line: 100, column: 325, scope: !665)
!1610 = !DILocation(line: 100, column: 325, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !665, file: !12, discriminator: 11)
!1612 = !DILocation(line: 101, column: 4, scope: !636)
!1613 = !DILocation(line: 101, column: 9, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !671, file: !12, discriminator: 1)
!1615 = !DILocation(line: 101, column: 19, scope: !671)
!1616 = !DILocation(line: 101, column: 42, scope: !671)
!1617 = !DILocation(line: 101, column: 49, scope: !671)
!1618 = !DILocation(line: 101, column: 62, scope: !675)
!1619 = !DILocation(line: 101, column: 70, scope: !675)
!1620 = !DILocation(line: 101, column: 62, scope: !671)
!1621 = !DILocation(line: 101, column: 88, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !674, file: !12, discriminator: 2)
!1623 = !DILocation(line: 101, column: 95, scope: !674)
!1624 = !DILocation(line: 101, column: 103, scope: !674)
!1625 = !DILocation(line: 101, column: 117, scope: !674)
!1626 = !DILocation(line: 101, column: 122, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !673, file: !12, discriminator: 4)
!1628 = !DILocation(line: 101, column: 132, scope: !673)
!1629 = !DILocation(line: 101, column: 162, scope: !673)
!1630 = !DILocation(line: 101, column: 180, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !673, file: !12, line: 101, column: 177)
!1632 = !DILocation(line: 101, column: 197, scope: !1631)
!1633 = !DILocation(line: 101, column: 177, scope: !1631)
!1634 = !DILocation(line: 101, column: 207, scope: !1631)
!1635 = !DILocation(line: 101, column: 177, scope: !673)
!1636 = !DILocation(line: 101, column: 177, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !673, file: !12, discriminator: 5)
!1638 = !DILocation(line: 101, column: 238, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1631, file: !12, discriminator: 6)
!1640 = !DILocation(line: 101, column: 256, scope: !1631)
!1641 = !DILocation(line: 101, column: 266, scope: !1631)
!1642 = !DILocation(line: 101, column: 291, scope: !1631)
!1643 = !DILocation(line: 101, column: 222, scope: !1631)
!1644 = !DILocation(line: 101, column: 310, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !674, file: !12, discriminator: 7)
!1646 = !DILocation(line: 101, column: 310, scope: !673)
!1647 = !DILocation(line: 101, column: 310, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !673, file: !12, discriminator: 8)
!1649 = !DILocation(line: 101, column: 323, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !674, file: !12, discriminator: 9)
!1651 = !DILocation(line: 101, column: 325, scope: !1435)
!1652 = !DILocation(line: 101, column: 325, scope: !671)
!1653 = !DILocation(line: 101, column: 325, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !671, file: !12, discriminator: 11)
!1655 = !DILocation(line: 103, column: 1, scope: !636)
!1656 = !DILocation(line: 102, column: 4, scope: !636)
!1657 = !DILocation(line: 119, column: 21, scope: !676)
!1658 = !DILocation(line: 121, column: 32, scope: !676)
!1659 = !DILocation(line: 121, column: 20, scope: !676)
!1660 = !DILocation(line: 121, column: 5, scope: !676)
!1661 = !DILocation(line: 122, column: 1, scope: !676)
!1662 = !DILocation(line: 132, column: 26, scope: !380)
!1663 = !DILocation(line: 132, column: 42, scope: !380)
!1664 = !DILocation(line: 134, column: 5, scope: !380)
!1665 = !DILocation(line: 134, column: 11, scope: !380)
!1666 = !DILocation(line: 134, column: 15, scope: !380)
!1667 = !DILocation(line: 135, column: 27, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !380, file: !12, line: 135, column: 9)
!1669 = !DILocation(line: 135, column: 10, scope: !1668)
!1670 = !DILocation(line: 135, column: 9, scope: !380)
!1671 = !DILocation(line: 136, column: 9, scope: !1668)
!1672 = !DILocation(line: 139, column: 36, scope: !380)
!1673 = !DILocation(line: 139, column: 29, scope: !380)
!1674 = !DILocation(line: 139, column: 27, scope: !380)
!1675 = !DILocation(line: 139, column: 12, scope: !380)
!1676 = !DILocation(line: 139, column: 10, scope: !380)
!1677 = !DILocation(line: 140, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !380, file: !12, line: 140, column: 9)
!1679 = !DILocation(line: 140, column: 14, scope: !1678)
!1680 = !DILocation(line: 140, column: 9, scope: !380)
!1681 = !DILocation(line: 141, column: 16, scope: !1678)
!1682 = !DILocation(line: 141, column: 9, scope: !1678)
!1683 = !DILocation(line: 142, column: 12, scope: !380)
!1684 = !DILocation(line: 142, column: 18, scope: !380)
!1685 = !DILocation(line: 142, column: 5, scope: !380)
!1686 = !DILocation(line: 143, column: 23, scope: !380)
!1687 = !DILocation(line: 143, column: 5, scope: !380)
!1688 = !DILocation(line: 144, column: 16, scope: !380)
!1689 = !DILocation(line: 144, column: 5, scope: !380)
!1690 = !DILocation(line: 145, column: 58, scope: !380)
!1691 = !DILocation(line: 145, column: 5, scope: !380)
!1692 = !DILocation(line: 146, column: 1, scope: !380)
!1693 = !DILocation(line: 678, column: 27, scope: !386)
!1694 = !DILocation(line: 678, column: 43, scope: !386)
!1695 = !DILocation(line: 680, column: 33, scope: !386)
!1696 = !DILocation(line: 680, column: 12, scope: !386)
!1697 = !DILocation(line: 680, column: 5, scope: !386)
!1698 = !DILocation(line: 708, column: 23, scope: !390)
!1699 = !DILocation(line: 708, column: 39, scope: !390)
!1700 = !DILocation(line: 710, column: 5, scope: !390)
!1701 = !DILocation(line: 710, column: 11, scope: !390)
!1702 = !DILocation(line: 711, column: 27, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !390, file: !12, line: 711, column: 9)
!1704 = !DILocation(line: 711, column: 10, scope: !1703)
!1705 = !DILocation(line: 711, column: 9, scope: !390)
!1706 = !DILocation(line: 712, column: 9, scope: !1703)
!1707 = !DILocation(line: 713, column: 20, scope: !390)
!1708 = !DILocation(line: 713, column: 5, scope: !390)
!1709 = !DILocation(line: 714, column: 58, scope: !390)
!1710 = !DILocation(line: 714, column: 5, scope: !390)
!1711 = !DILocation(line: 715, column: 1, scope: !390)
!1712 = !DILocation(line: 725, column: 21, scope: !395)
!1713 = !DILocation(line: 725, column: 37, scope: !395)
!1714 = !DILocation(line: 727, column: 5, scope: !395)
!1715 = !DILocation(line: 728, column: 58, scope: !395)
!1716 = !DILocation(line: 728, column: 5, scope: !395)
!1717 = !DILocation(line: 156, column: 26, scope: !399)
!1718 = !DILocation(line: 156, column: 42, scope: !399)
!1719 = !DILocation(line: 158, column: 5, scope: !399)
!1720 = !DILocation(line: 158, column: 15, scope: !399)
!1721 = !DILocation(line: 158, column: 50, scope: !399)
!1722 = !DILocation(line: 159, column: 27, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !399, file: !12, line: 159, column: 9)
!1724 = !DILocation(line: 159, column: 10, scope: !1723)
!1725 = !DILocation(line: 159, column: 9, scope: !399)
!1726 = !DILocation(line: 160, column: 9, scope: !1723)
!1727 = !DILocation(line: 161, column: 9, scope: !408)
!1728 = !DILocation(line: 161, column: 22, scope: !408)
!1729 = !DILocation(line: 161, column: 9, scope: !399)
!1730 = !DILocation(line: 162, column: 36, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !407, file: !12, line: 162, column: 13)
!1732 = !DILocation(line: 162, column: 50, scope: !1731)
!1733 = !DILocation(line: 162, column: 14, scope: !1731)
!1734 = !DILocation(line: 162, column: 13, scope: !407)
!1735 = !DILocation(line: 163, column: 13, scope: !1731)
!1736 = !DILocation(line: 164, column: 69, scope: !407)
!1737 = !DILocation(line: 164, column: 52, scope: !407)
!1738 = !DILocation(line: 164, column: 34, scope: !407)
!1739 = !DILocation(line: 164, column: 11, scope: !407)
!1740 = !DILocation(line: 164, column: 32, scope: !407)
!1741 = !DILocation(line: 165, column: 9, scope: !407)
!1742 = !DILocation(line: 165, column: 14, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !406, file: !12, discriminator: 1)
!1744 = !DILocation(line: 165, column: 24, scope: !406)
!1745 = !DILocation(line: 165, column: 54, scope: !406)
!1746 = !DILocation(line: 165, column: 79, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !406, file: !12, line: 165, column: 76)
!1748 = !DILocation(line: 165, column: 96, scope: !1747)
!1749 = !DILocation(line: 165, column: 76, scope: !1747)
!1750 = !DILocation(line: 165, column: 106, scope: !1747)
!1751 = !DILocation(line: 165, column: 76, scope: !406)
!1752 = !DILocation(line: 165, column: 76, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !406, file: !12, discriminator: 2)
!1754 = !DILocation(line: 165, column: 137, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1747, file: !12, discriminator: 3)
!1756 = !DILocation(line: 165, column: 155, scope: !1747)
!1757 = !DILocation(line: 165, column: 165, scope: !1747)
!1758 = !DILocation(line: 165, column: 190, scope: !1747)
!1759 = !DILocation(line: 165, column: 121, scope: !1747)
!1760 = !DILocation(line: 165, column: 209, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !407, file: !12, discriminator: 4)
!1762 = !DILocation(line: 165, column: 209, scope: !406)
!1763 = !DILocation(line: 165, column: 209, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !406, file: !12, discriminator: 5)
!1765 = !DILocation(line: 166, column: 5, scope: !407)
!1766 = !DILocation(line: 167, column: 34, scope: !408)
!1767 = !DILocation(line: 167, column: 11, scope: !408)
!1768 = !DILocation(line: 167, column: 32, scope: !408)
!1769 = !DILocation(line: 168, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !399, file: !12, line: 168, column: 9)
!1771 = !DILocation(line: 168, column: 10, scope: !1770)
!1772 = !DILocation(line: 168, column: 9, scope: !1770)
!1773 = !DILocation(line: 168, column: 9, scope: !399)
!1774 = !DILocation(line: 169, column: 35, scope: !1770)
!1775 = !DILocation(line: 169, column: 16, scope: !1770)
!1776 = !DILocation(line: 169, column: 9, scope: !1770)
!1777 = !DILocation(line: 170, column: 58, scope: !399)
!1778 = !DILocation(line: 170, column: 5, scope: !399)
!1779 = !DILocation(line: 171, column: 1, scope: !399)
!1780 = !DILocation(line: 182, column: 29, scope: !409)
!1781 = !DILocation(line: 182, column: 45, scope: !409)
!1782 = !DILocation(line: 184, column: 5, scope: !409)
!1783 = !DILocation(line: 184, column: 15, scope: !409)
!1784 = !DILocation(line: 184, column: 50, scope: !409)
!1785 = !DILocation(line: 185, column: 27, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !409, file: !12, line: 185, column: 9)
!1787 = !DILocation(line: 185, column: 10, scope: !1786)
!1788 = !DILocation(line: 185, column: 9, scope: !409)
!1789 = !DILocation(line: 186, column: 9, scope: !1786)
!1790 = !DILocation(line: 187, column: 9, scope: !418)
!1791 = !DILocation(line: 187, column: 22, scope: !418)
!1792 = !DILocation(line: 187, column: 9, scope: !409)
!1793 = !DILocation(line: 188, column: 36, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !417, file: !12, line: 188, column: 13)
!1795 = !DILocation(line: 188, column: 50, scope: !1794)
!1796 = !DILocation(line: 188, column: 14, scope: !1794)
!1797 = !DILocation(line: 188, column: 13, scope: !417)
!1798 = !DILocation(line: 189, column: 13, scope: !1794)
!1799 = !DILocation(line: 190, column: 64, scope: !417)
!1800 = !DILocation(line: 190, column: 47, scope: !417)
!1801 = !DILocation(line: 190, column: 34, scope: !417)
!1802 = !DILocation(line: 190, column: 11, scope: !417)
!1803 = !DILocation(line: 190, column: 32, scope: !417)
!1804 = !DILocation(line: 191, column: 9, scope: !417)
!1805 = !DILocation(line: 191, column: 14, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !416, file: !12, discriminator: 1)
!1807 = !DILocation(line: 191, column: 24, scope: !416)
!1808 = !DILocation(line: 191, column: 54, scope: !416)
!1809 = !DILocation(line: 191, column: 79, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !416, file: !12, line: 191, column: 76)
!1811 = !DILocation(line: 191, column: 96, scope: !1810)
!1812 = !DILocation(line: 191, column: 76, scope: !1810)
!1813 = !DILocation(line: 191, column: 106, scope: !1810)
!1814 = !DILocation(line: 191, column: 76, scope: !416)
!1815 = !DILocation(line: 191, column: 76, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !416, file: !12, discriminator: 2)
!1817 = !DILocation(line: 191, column: 137, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1810, file: !12, discriminator: 3)
!1819 = !DILocation(line: 191, column: 155, scope: !1810)
!1820 = !DILocation(line: 191, column: 165, scope: !1810)
!1821 = !DILocation(line: 191, column: 190, scope: !1810)
!1822 = !DILocation(line: 191, column: 121, scope: !1810)
!1823 = !DILocation(line: 191, column: 209, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !417, file: !12, discriminator: 4)
!1825 = !DILocation(line: 191, column: 209, scope: !416)
!1826 = !DILocation(line: 191, column: 209, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !416, file: !12, discriminator: 5)
!1828 = !DILocation(line: 192, column: 5, scope: !417)
!1829 = !DILocation(line: 193, column: 34, scope: !418)
!1830 = !DILocation(line: 193, column: 11, scope: !418)
!1831 = !DILocation(line: 193, column: 32, scope: !418)
!1832 = !DILocation(line: 194, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !409, file: !12, line: 194, column: 9)
!1834 = !DILocation(line: 194, column: 10, scope: !1833)
!1835 = !DILocation(line: 194, column: 9, scope: !1833)
!1836 = !DILocation(line: 194, column: 9, scope: !409)
!1837 = !DILocation(line: 195, column: 35, scope: !1833)
!1838 = !DILocation(line: 195, column: 16, scope: !1833)
!1839 = !DILocation(line: 195, column: 9, scope: !1833)
!1840 = !DILocation(line: 196, column: 58, scope: !409)
!1841 = !DILocation(line: 196, column: 5, scope: !409)
!1842 = !DILocation(line: 197, column: 1, scope: !409)
!1843 = !DILocation(line: 209, column: 30, scope: !419)
!1844 = !DILocation(line: 209, column: 46, scope: !419)
!1845 = !DILocation(line: 211, column: 5, scope: !419)
!1846 = !DILocation(line: 211, column: 15, scope: !419)
!1847 = !DILocation(line: 211, column: 50, scope: !419)
!1848 = !DILocation(line: 212, column: 5, scope: !419)
!1849 = !DILocation(line: 212, column: 11, scope: !419)
!1850 = !DILocation(line: 213, column: 5, scope: !419)
!1851 = !DILocation(line: 213, column: 9, scope: !419)
!1852 = !DILocation(line: 214, column: 27, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !419, file: !12, line: 214, column: 9)
!1854 = !DILocation(line: 214, column: 10, scope: !1853)
!1855 = !DILocation(line: 214, column: 9, scope: !419)
!1856 = !DILocation(line: 215, column: 9, scope: !1853)
!1857 = !DILocation(line: 216, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !419, file: !12, line: 216, column: 9)
!1859 = !DILocation(line: 216, column: 22, scope: !1858)
!1860 = !DILocation(line: 216, column: 9, scope: !419)
!1861 = !DILocation(line: 217, column: 36, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !12, line: 217, column: 13)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !12, line: 216, column: 44)
!1864 = !DILocation(line: 217, column: 50, scope: !1862)
!1865 = !DILocation(line: 217, column: 14, scope: !1862)
!1866 = !DILocation(line: 217, column: 13, scope: !1863)
!1867 = !DILocation(line: 218, column: 13, scope: !1862)
!1868 = !DILocation(line: 219, column: 37, scope: !1863)
!1869 = !DILocation(line: 219, column: 20, scope: !1863)
!1870 = !DILocation(line: 219, column: 18, scope: !1863)
!1871 = !DILocation(line: 220, column: 5, scope: !1863)
!1872 = !DILocation(line: 221, column: 24, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1858, file: !12, line: 220, column: 12)
!1874 = !DILocation(line: 222, column: 18, scope: !1873)
!1875 = !DILocation(line: 224, column: 50, scope: !419)
!1876 = !DILocation(line: 224, column: 36, scope: !419)
!1877 = !DILocation(line: 224, column: 34, scope: !419)
!1878 = !DILocation(line: 224, column: 7, scope: !419)
!1879 = !DILocation(line: 224, column: 28, scope: !419)
!1880 = !DILocation(line: 225, column: 10, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !419, file: !12, line: 225, column: 9)
!1882 = !DILocation(line: 225, column: 14, scope: !1881)
!1883 = !DILocation(line: 225, column: 17, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1881, file: !12, discriminator: 1)
!1885 = !DILocation(line: 225, column: 33, scope: !1881)
!1886 = !DILocation(line: 225, column: 9, scope: !419)
!1887 = !DILocation(line: 226, column: 31, scope: !1881)
!1888 = !DILocation(line: 226, column: 41, scope: !1881)
!1889 = !DILocation(line: 226, column: 9, scope: !1881)
!1890 = !DILocation(line: 227, column: 5, scope: !419)
!1891 = !DILocation(line: 227, column: 10, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !428, file: !12, discriminator: 1)
!1893 = !DILocation(line: 227, column: 20, scope: !428)
!1894 = !DILocation(line: 227, column: 51, scope: !428)
!1895 = !DILocation(line: 227, column: 72, scope: !431)
!1896 = !DILocation(line: 227, column: 88, scope: !431)
!1897 = !DILocation(line: 227, column: 72, scope: !428)
!1898 = !DILocation(line: 227, column: 103, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !431, file: !12, discriminator: 2)
!1900 = !DILocation(line: 227, column: 108, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !430, file: !12, discriminator: 4)
!1902 = !DILocation(line: 227, column: 118, scope: !430)
!1903 = !DILocation(line: 227, column: 148, scope: !430)
!1904 = !DILocation(line: 227, column: 174, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !430, file: !12, line: 227, column: 171)
!1906 = !DILocation(line: 227, column: 191, scope: !1905)
!1907 = !DILocation(line: 227, column: 171, scope: !1905)
!1908 = !DILocation(line: 227, column: 201, scope: !1905)
!1909 = !DILocation(line: 227, column: 171, scope: !430)
!1910 = !DILocation(line: 227, column: 171, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !430, file: !12, discriminator: 5)
!1912 = !DILocation(line: 227, column: 232, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1905, file: !12, discriminator: 6)
!1914 = !DILocation(line: 227, column: 250, scope: !1905)
!1915 = !DILocation(line: 227, column: 260, scope: !1905)
!1916 = !DILocation(line: 227, column: 285, scope: !1905)
!1917 = !DILocation(line: 227, column: 216, scope: !1905)
!1918 = !DILocation(line: 227, column: 304, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !431, file: !12, discriminator: 7)
!1920 = !DILocation(line: 227, column: 304, scope: !430)
!1921 = !DILocation(line: 227, column: 304, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !430, file: !12, discriminator: 8)
!1923 = !DILocation(line: 227, column: 304, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !430, file: !12, discriminator: 9)
!1925 = !DILocation(line: 227, column: 317, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !12, discriminator: 10)
!1927 = !DILexicalBlockFile(scope: !419, file: !12, discriminator: 3)
!1928 = !DILocation(line: 227, column: 317, scope: !428)
!1929 = !DILocation(line: 227, column: 317, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !428, file: !12, discriminator: 11)
!1931 = !DILocation(line: 228, column: 30, scope: !419)
!1932 = !DILocation(line: 228, column: 7, scope: !419)
!1933 = !DILocation(line: 228, column: 28, scope: !419)
!1934 = !DILocation(line: 229, column: 11, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !419, file: !12, line: 229, column: 9)
!1936 = !DILocation(line: 229, column: 10, scope: !1935)
!1937 = !DILocation(line: 229, column: 9, scope: !1935)
!1938 = !DILocation(line: 229, column: 9, scope: !419)
!1939 = !DILocation(line: 230, column: 35, scope: !1935)
!1940 = !DILocation(line: 230, column: 16, scope: !1935)
!1941 = !DILocation(line: 230, column: 9, scope: !1935)
!1942 = !DILocation(line: 231, column: 58, scope: !419)
!1943 = !DILocation(line: 231, column: 5, scope: !419)
!1944 = !DILocation(line: 232, column: 1, scope: !419)
!1945 = !DILocation(line: 622, column: 28, scope: !432)
!1946 = !DILocation(line: 622, column: 44, scope: !432)
!1947 = !DILocation(line: 624, column: 5, scope: !432)
!1948 = !DILocation(line: 624, column: 9, scope: !432)
!1949 = !DILocation(line: 625, column: 5, scope: !432)
!1950 = !DILocation(line: 625, column: 17, scope: !432)
!1951 = !DILocation(line: 627, column: 27, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !432, file: !12, line: 627, column: 9)
!1953 = !DILocation(line: 627, column: 10, scope: !1952)
!1954 = !DILocation(line: 627, column: 9, scope: !432)
!1955 = !DILocation(line: 628, column: 9, scope: !1952)
!1956 = !DILocation(line: 650, column: 33, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !432, file: !12, line: 650, column: 9)
!1958 = !DILocation(line: 650, column: 21, scope: !1957)
!1959 = !DILocation(line: 650, column: 19, scope: !1957)
!1960 = !DILocation(line: 650, column: 9, scope: !432)
!1961 = !DILocation(line: 651, column: 37, scope: !1957)
!1962 = !DILocation(line: 651, column: 47, scope: !1957)
!1963 = !DILocation(line: 651, column: 16, scope: !1957)
!1964 = !DILocation(line: 651, column: 9, scope: !1957)
!1965 = !DILocation(line: 653, column: 62, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1957, file: !12, line: 652, column: 10)
!1967 = !DILocation(line: 653, column: 9, scope: !1966)
!1968 = !DILocation(line: 655, column: 1, scope: !432)
!1969 = !DILocation(line: 665, column: 38, scope: !447)
!1970 = !DILocation(line: 665, column: 54, scope: !447)
!1971 = !DILocation(line: 667, column: 34, scope: !447)
!1972 = !DILocation(line: 667, column: 28, scope: !447)
!1973 = !DILocation(line: 667, column: 12, scope: !447)
!1974 = !DILocation(line: 667, column: 5, scope: !447)
!1975 = !DILocation(line: 243, column: 30, scope: !467)
!1976 = !DILocation(line: 243, column: 46, scope: !467)
!1977 = !DILocation(line: 245, column: 5, scope: !467)
!1978 = !DILocation(line: 245, column: 9, scope: !467)
!1979 = !DILocation(line: 245, column: 18, scope: !467)
!1980 = !DILocation(line: 246, column: 27, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !467, file: !12, line: 246, column: 9)
!1982 = !DILocation(line: 246, column: 10, scope: !1981)
!1983 = !DILocation(line: 246, column: 9, scope: !467)
!1984 = !DILocation(line: 247, column: 9, scope: !1981)
!1985 = !DILocation(line: 248, column: 23, scope: !467)
!1986 = !DILocation(line: 248, column: 21, scope: !467)
!1987 = !DILocation(line: 249, column: 58, scope: !467)
!1988 = !DILocation(line: 249, column: 5, scope: !467)
!1989 = !DILocation(line: 250, column: 1, scope: !467)
!1990 = !DILocation(line: 262, column: 30, scope: !472)
!1991 = !DILocation(line: 262, column: 46, scope: !472)
!1992 = !DILocation(line: 264, column: 28, scope: !472)
!1993 = !DILocation(line: 264, column: 12, scope: !472)
!1994 = !DILocation(line: 264, column: 5, scope: !472)
!1995 = !DILocation(line: 572, column: 25, scope: !476)
!1996 = !DILocation(line: 572, column: 41, scope: !476)
!1997 = !DILocation(line: 574, column: 71, scope: !476)
!1998 = !DILocation(line: 574, column: 53, scope: !476)
!1999 = !DILocation(line: 574, column: 36, scope: !476)
!2000 = !DILocation(line: 574, column: 110, scope: !476)
!2001 = !DILocation(line: 574, column: 121, scope: !476)
!2002 = !DILocation(line: 574, column: 12, scope: !476)
!2003 = !DILocation(line: 574, column: 5, scope: !476)
!2004 = !DILocation(line: 586, column: 25, scope: !509)
!2005 = !DILocation(line: 586, column: 41, scope: !509)
!2006 = !DILocation(line: 588, column: 45, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !509, file: !12, line: 588, column: 9)
!2008 = !DILocation(line: 588, column: 27, scope: !2007)
!2009 = !DILocation(line: 588, column: 10, scope: !2007)
!2010 = !DILocation(line: 588, column: 84, scope: !2007)
!2011 = !DILocation(line: 588, column: 94, scope: !2007)
!2012 = !DILocation(line: 588, column: 9, scope: !509)
!2013 = !DILocation(line: 589, column: 62, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2007, file: !12, line: 588, column: 109)
!2015 = !DILocation(line: 589, column: 9, scope: !2014)
!2016 = !DILocation(line: 591, column: 57, scope: !509)
!2017 = !DILocation(line: 591, column: 39, scope: !509)
!2018 = !DILocation(line: 591, column: 22, scope: !509)
!2019 = !DILocation(line: 591, column: 96, scope: !509)
!2020 = !DILocation(line: 591, column: 109, scope: !509)
!2021 = !DILocation(line: 591, column: 118, scope: !509)
!2022 = !DILocation(line: 592, column: 48, scope: !509)
!2023 = !DILocation(line: 592, column: 30, scope: !509)
!2024 = !DILocation(line: 592, column: 13, scope: !509)
!2025 = !DILocation(line: 592, column: 87, scope: !509)
!2026 = !DILocation(line: 592, column: 5, scope: !509)
!2027 = !DILocation(line: 593, column: 1, scope: !509)
!2028 = !DILocation(line: 379, column: 31, scope: !513)
!2029 = !DILocation(line: 379, column: 47, scope: !513)
!2030 = !DILocation(line: 381, column: 26, scope: !513)
!2031 = !DILocation(line: 381, column: 10, scope: !513)
!2032 = !DILocation(line: 381, column: 3, scope: !513)
!2033 = !DILocation(line: 392, column: 22, scope: !517)
!2034 = !DILocation(line: 392, column: 38, scope: !517)
!2035 = !DILocation(line: 394, column: 57, scope: !517)
!2036 = !DILocation(line: 394, column: 39, scope: !517)
!2037 = !DILocation(line: 394, column: 22, scope: !517)
!2038 = !DILocation(line: 394, column: 96, scope: !517)
!2039 = !DILocation(line: 394, column: 106, scope: !517)
!2040 = !DILocation(line: 394, column: 115, scope: !517)
!2041 = !DILocation(line: 395, column: 48, scope: !517)
!2042 = !DILocation(line: 395, column: 30, scope: !517)
!2043 = !DILocation(line: 395, column: 13, scope: !517)
!2044 = !DILocation(line: 395, column: 87, scope: !517)
!2045 = !DILocation(line: 395, column: 5, scope: !517)
!2046 = !DILocation(line: 406, column: 22, scope: !521)
!2047 = !DILocation(line: 406, column: 38, scope: !521)
!2048 = !DILocation(line: 408, column: 57, scope: !521)
!2049 = !DILocation(line: 408, column: 39, scope: !521)
!2050 = !DILocation(line: 408, column: 22, scope: !521)
!2051 = !DILocation(line: 408, column: 96, scope: !521)
!2052 = !DILocation(line: 408, column: 106, scope: !521)
!2053 = !DILocation(line: 408, column: 115, scope: !521)
!2054 = !DILocation(line: 409, column: 48, scope: !521)
!2055 = !DILocation(line: 409, column: 30, scope: !521)
!2056 = !DILocation(line: 409, column: 13, scope: !521)
!2057 = !DILocation(line: 409, column: 87, scope: !521)
!2058 = !DILocation(line: 409, column: 5, scope: !521)
!2059 = !DILocation(line: 420, column: 32, scope: !525)
!2060 = !DILocation(line: 420, column: 48, scope: !525)
!2061 = !DILocation(line: 422, column: 5, scope: !525)
!2062 = !DILocation(line: 422, column: 11, scope: !525)
!2063 = !DILocation(line: 424, column: 27, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !525, file: !12, line: 424, column: 9)
!2065 = !DILocation(line: 424, column: 10, scope: !2064)
!2066 = !DILocation(line: 424, column: 9, scope: !525)
!2067 = !DILocation(line: 425, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !12, line: 424, column: 74)
!2069 = !DILocation(line: 430, column: 10, scope: !525)
!2070 = !DILocation(line: 430, column: 5, scope: !525)
!2071 = !DILocation(line: 431, column: 469, scope: !525)
!2072 = !DILocation(line: 431, column: 459, scope: !525)
!2073 = !DILocation(line: 431, column: 37, scope: !525)
!2074 = !DILocation(line: 432, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !525, file: !12, line: 432, column: 9)
!2076 = !DILocation(line: 432, column: 9, scope: !525)
!2077 = !DILocation(line: 433, column: 46, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !12, line: 432, column: 42)
!2079 = !DILocation(line: 433, column: 44, scope: !2078)
!2080 = !DILocation(line: 434, column: 62, scope: !2078)
!2081 = !DILocation(line: 434, column: 9, scope: !2078)
!2082 = !DILocation(line: 437, column: 16, scope: !2075)
!2083 = !DILocation(line: 437, column: 9, scope: !2075)
!2084 = !DILocation(line: 438, column: 1, scope: !525)
!2085 = !DILocation(line: 540, column: 26, scope: !530)
!2086 = !DILocation(line: 540, column: 42, scope: !530)
!2087 = !DILocation(line: 542, column: 5, scope: !530)
!2088 = !DILocation(line: 542, column: 11, scope: !530)
!2089 = !DILocation(line: 544, column: 26, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !530, file: !12, line: 544, column: 8)
!2091 = !DILocation(line: 544, column: 9, scope: !2090)
!2092 = !DILocation(line: 544, column: 8, scope: !530)
!2093 = !DILocation(line: 545, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !12, line: 544, column: 57)
!2095 = !DILocation(line: 547, column: 17, scope: !530)
!2096 = !DILocation(line: 547, column: 5, scope: !530)
!2097 = !DILocation(line: 548, column: 58, scope: !530)
!2098 = !DILocation(line: 548, column: 5, scope: !530)
!2099 = !DILocation(line: 549, column: 1, scope: !530)
!2100 = !DILocation(line: 477, column: 29, scope: !535)
!2101 = !DILocation(line: 477, column: 45, scope: !535)
!2102 = !DILocation(line: 479, column: 5, scope: !535)
!2103 = !DILocation(line: 479, column: 9, scope: !535)
!2104 = !DILocation(line: 480, column: 5, scope: !535)
!2105 = !DILocation(line: 480, column: 17, scope: !535)
!2106 = !DILocation(line: 482, column: 27, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !535, file: !12, line: 482, column: 9)
!2108 = !DILocation(line: 482, column: 10, scope: !2107)
!2109 = !DILocation(line: 482, column: 9, scope: !535)
!2110 = !DILocation(line: 483, column: 9, scope: !2107)
!2111 = !DILocation(line: 484, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !535, file: !12, line: 484, column: 9)
!2113 = !DILocation(line: 484, column: 22, scope: !2112)
!2114 = !DILocation(line: 484, column: 9, scope: !535)
!2115 = !DILocation(line: 485, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !12, line: 484, column: 27)
!2117 = !DILocation(line: 485, column: 9, scope: !2116)
!2118 = !DILocation(line: 487, column: 9, scope: !2116)
!2119 = !DILocation(line: 489, column: 28, scope: !535)
!2120 = !DILocation(line: 489, column: 13, scope: !535)
!2121 = !DILocation(line: 489, column: 11, scope: !535)
!2122 = !DILocation(line: 490, column: 10, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !535, file: !12, line: 490, column: 9)
!2124 = !DILocation(line: 490, column: 9, scope: !535)
!2125 = !DILocation(line: 491, column: 22, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !12, line: 490, column: 17)
!2127 = !DILocation(line: 493, column: 23, scope: !2126)
!2128 = !DILocation(line: 491, column: 9, scope: !2126)
!2129 = !DILocation(line: 494, column: 9, scope: !2126)
!2130 = !DILocation(line: 497, column: 28, scope: !535)
!2131 = !DILocation(line: 497, column: 5, scope: !535)
!2132 = !DILocation(line: 498, column: 58, scope: !535)
!2133 = !DILocation(line: 498, column: 5, scope: !535)
!2134 = !DILocation(line: 499, column: 1, scope: !535)
!2135 = !DILocation(line: 506, column: 30, scope: !547)
!2136 = !DILocation(line: 506, column: 46, scope: !547)
!2137 = !DILocation(line: 508, column: 5, scope: !547)
!2138 = !DILocation(line: 508, column: 9, scope: !547)
!2139 = !DILocation(line: 509, column: 5, scope: !547)
!2140 = !DILocation(line: 509, column: 11, scope: !547)
!2141 = !DILocation(line: 510, column: 5, scope: !547)
!2142 = !DILocation(line: 510, column: 17, scope: !547)
!2143 = !DILocation(line: 512, column: 27, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !547, file: !12, line: 512, column: 9)
!2145 = !DILocation(line: 512, column: 10, scope: !2144)
!2146 = !DILocation(line: 512, column: 9, scope: !547)
!2147 = !DILocation(line: 514, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !12, line: 513, column: 35)
!2149 = !DILocation(line: 516, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !547, file: !12, line: 516, column: 9)
!2151 = !DILocation(line: 516, column: 22, scope: !2150)
!2152 = !DILocation(line: 516, column: 9, scope: !547)
!2153 = !DILocation(line: 517, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !12, line: 516, column: 27)
!2155 = !DILocation(line: 517, column: 9, scope: !2154)
!2156 = !DILocation(line: 519, column: 9, scope: !2154)
!2157 = !DILocation(line: 521, column: 39, scope: !547)
!2158 = !DILocation(line: 521, column: 53, scope: !547)
!2159 = !DILocation(line: 521, column: 17, scope: !547)
!2160 = !DILocation(line: 521, column: 15, scope: !547)
!2161 = !DILocation(line: 522, column: 10, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !547, file: !12, line: 522, column: 9)
!2163 = !DILocation(line: 522, column: 9, scope: !547)
!2164 = !DILocation(line: 523, column: 22, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !12, line: 522, column: 21)
!2166 = !DILocation(line: 525, column: 22, scope: !2165)
!2167 = !DILocation(line: 523, column: 9, scope: !2165)
!2168 = !DILocation(line: 526, column: 9, scope: !2165)
!2169 = !DILocation(line: 529, column: 28, scope: !547)
!2170 = !DILocation(line: 529, column: 5, scope: !547)
!2171 = !DILocation(line: 530, column: 58, scope: !547)
!2172 = !DILocation(line: 530, column: 5, scope: !547)
!2173 = !DILocation(line: 531, column: 1, scope: !547)
!2174 = !DILocation(line: 559, column: 32, scope: !554)
!2175 = !DILocation(line: 559, column: 48, scope: !554)
!2176 = !DILocation(line: 561, column: 33, scope: !554)
!2177 = !DILocation(line: 561, column: 12, scope: !554)
!2178 = !DILocation(line: 561, column: 5, scope: !554)
!2179 = !DILocation(line: 310, column: 47, scope: !558)
!2180 = !DILocation(line: 310, column: 63, scope: !558)
!2181 = !DILocation(line: 312, column: 5, scope: !558)
!2182 = !DILocation(line: 312, column: 15, scope: !558)
!2183 = !DILocation(line: 313, column: 58, scope: !558)
!2184 = !DILocation(line: 313, column: 40, scope: !558)
!2185 = !DILocation(line: 313, column: 23, scope: !558)
!2186 = !DILocation(line: 313, column: 97, scope: !558)
!2187 = !DILocation(line: 313, column: 130, scope: !558)
!2188 = !DILocation(line: 312, column: 24, scope: !558)
!2189 = !DILocation(line: 318, column: 45, scope: !558)
!2190 = !DILocation(line: 318, column: 27, scope: !558)
!2191 = !DILocation(line: 318, column: 10, scope: !558)
!2192 = !DILocation(line: 318, column: 84, scope: !558)
!2193 = !DILocation(line: 318, column: 9, scope: !558)
!2194 = !DILocation(line: 317, column: 40, scope: !558)
!2195 = !DILocation(line: 325, column: 12, scope: !558)
!2196 = !DILocation(line: 327, column: 1, scope: !558)
!2197 = !DILocation(line: 325, column: 5, scope: !558)
!2198 = !DILocation(line: 337, column: 28, scope: !594)
!2199 = !DILocation(line: 337, column: 44, scope: !594)
!2200 = !DILocation(line: 339, column: 74, scope: !594)
!2201 = !DILocation(line: 339, column: 56, scope: !594)
!2202 = !DILocation(line: 339, column: 39, scope: !594)
!2203 = !DILocation(line: 339, column: 113, scope: !594)
!2204 = !DILocation(line: 339, column: 127, scope: !594)
!2205 = !DILocation(line: 339, column: 12, scope: !594)
!2206 = !DILocation(line: 339, column: 5, scope: !594)
!2207 = !DILocation(line: 354, column: 30, scope: !598)
!2208 = !DILocation(line: 354, column: 46, scope: !598)
!2209 = !DILocation(line: 356, column: 76, scope: !598)
!2210 = !DILocation(line: 356, column: 58, scope: !598)
!2211 = !DILocation(line: 356, column: 41, scope: !598)
!2212 = !DILocation(line: 356, column: 115, scope: !598)
!2213 = !DILocation(line: 356, column: 131, scope: !598)
!2214 = !DILocation(line: 356, column: 12, scope: !598)
!2215 = !DILocation(line: 356, column: 5, scope: !598)
!2216 = !DILocation(line: 693, column: 28, scope: !602)
!2217 = !DILocation(line: 693, column: 44, scope: !602)
!2218 = !DILocation(line: 695, column: 5, scope: !602)
!2219 = !DILocation(line: 696, column: 58, scope: !602)
!2220 = !DILocation(line: 696, column: 5, scope: !602)
!2221 = !DILocation(line: 608, column: 5, scope: !451)
!2222 = !DILocation(line: 608, column: 20, scope: !451)
!2223 = !DILocation(line: 608, column: 30, scope: !451)
!2224 = !DILocation(line: 609, column: 5, scope: !451)
!2225 = !DILocation(line: 609, column: 9, scope: !451)
!2226 = !DILocation(line: 609, column: 18, scope: !451)
!2227 = !DILocation(line: 609, column: 27, scope: !451)
!2228 = !{!2229, !1014, i64 12}
!2229 = !{!"_hist_state", !954, i64 0, !1014, i64 8, !1014, i64 12, !1014, i64 16, !1014, i64 20}
!2230 = !DILocation(line: 615, column: 10, scope: !451)
!2231 = !DILocation(line: 615, column: 5, scope: !451)
!2232 = !DILocation(line: 616, column: 12, scope: !451)
!2233 = !DILocation(line: 617, column: 1, scope: !451)
!2234 = !DILocation(line: 616, column: 5, scope: !451)
!2235 = !DILocation(line: 276, column: 22, scope: !480)
!2236 = !DILocation(line: 276, column: 43, scope: !480)
!2237 = !DILocation(line: 276, column: 63, scope: !480)
!2238 = !DILocation(line: 278, column: 5, scope: !480)
!2239 = !DILocation(line: 278, column: 15, scope: !480)
!2240 = !DILocation(line: 279, column: 5, scope: !480)
!2241 = !DILocation(line: 279, column: 10, scope: !480)
!2242 = !DILocation(line: 280, column: 19, scope: !480)
!2243 = !DILocation(line: 280, column: 53, scope: !480)
!2244 = !DILocation(line: 280, column: 5, scope: !480)
!2245 = !DILocation(line: 281, column: 27, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !480, file: !12, line: 281, column: 9)
!2247 = !DILocation(line: 281, column: 33, scope: !2246)
!2248 = !DILocation(line: 281, column: 10, scope: !2246)
!2249 = !DILocation(line: 281, column: 9, scope: !480)
!2250 = !DILocation(line: 282, column: 9, scope: !2246)
!2251 = !DILocation(line: 283, column: 9, scope: !496)
!2252 = !DILocation(line: 283, column: 18, scope: !496)
!2253 = !DILocation(line: 283, column: 9, scope: !480)
!2254 = !DILocation(line: 284, column: 9, scope: !495)
!2255 = !DILocation(line: 284, column: 14, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !494, file: !12, discriminator: 1)
!2257 = !DILocation(line: 284, column: 24, scope: !494)
!2258 = !DILocation(line: 284, column: 48, scope: !494)
!2259 = !DILocation(line: 284, column: 47, scope: !494)
!2260 = !DILocation(line: 284, column: 63, scope: !500)
!2261 = !DILocation(line: 284, column: 71, scope: !500)
!2262 = !DILocation(line: 284, column: 63, scope: !494)
!2263 = !DILocation(line: 284, column: 90, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !499, file: !12, discriminator: 2)
!2265 = !DILocation(line: 284, column: 100, scope: !499)
!2266 = !DILocation(line: 284, column: 114, scope: !499)
!2267 = !DILocation(line: 284, column: 119, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !498, file: !12, discriminator: 4)
!2269 = !DILocation(line: 284, column: 129, scope: !498)
!2270 = !DILocation(line: 284, column: 159, scope: !498)
!2271 = !DILocation(line: 284, column: 177, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !498, file: !12, line: 284, column: 174)
!2273 = !DILocation(line: 284, column: 194, scope: !2272)
!2274 = !DILocation(line: 284, column: 174, scope: !2272)
!2275 = !DILocation(line: 284, column: 204, scope: !2272)
!2276 = !DILocation(line: 284, column: 174, scope: !498)
!2277 = !DILocation(line: 284, column: 174, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !498, file: !12, discriminator: 5)
!2279 = !DILocation(line: 284, column: 235, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2272, file: !12, discriminator: 6)
!2281 = !DILocation(line: 284, column: 253, scope: !2272)
!2282 = !DILocation(line: 284, column: 263, scope: !2272)
!2283 = !DILocation(line: 284, column: 288, scope: !2272)
!2284 = !DILocation(line: 284, column: 219, scope: !2272)
!2285 = !DILocation(line: 284, column: 307, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !499, file: !12, discriminator: 7)
!2287 = !DILocation(line: 284, column: 307, scope: !498)
!2288 = !DILocation(line: 284, column: 307, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !498, file: !12, discriminator: 8)
!2290 = !DILocation(line: 284, column: 320, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !499, file: !12, discriminator: 9)
!2292 = !DILocation(line: 284, column: 322, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2294, file: !12, discriminator: 10)
!2294 = !DILexicalBlockFile(scope: !495, file: !12, discriminator: 3)
!2295 = !DILocation(line: 284, column: 322, scope: !494)
!2296 = !DILocation(line: 284, column: 322, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !494, file: !12, discriminator: 11)
!2298 = !DILocation(line: 285, column: 5, scope: !495)
!2299 = !DILocation(line: 286, column: 31, scope: !503)
!2300 = !DILocation(line: 286, column: 14, scope: !503)
!2301 = !DILocation(line: 286, column: 14, scope: !496)
!2302 = !DILocation(line: 287, column: 9, scope: !502)
!2303 = !DILocation(line: 287, column: 19, scope: !502)
!2304 = !DILocation(line: 287, column: 26, scope: !502)
!2305 = !DILocation(line: 287, column: 25, scope: !502)
!2306 = !DILocation(line: 288, column: 25, scope: !502)
!2307 = !DILocation(line: 288, column: 37, scope: !502)
!2308 = !DILocation(line: 288, column: 46, scope: !502)
!2309 = !DILocation(line: 289, column: 21, scope: !502)
!2310 = !DILocation(line: 289, column: 10, scope: !502)
!2311 = !DILocation(line: 289, column: 19, scope: !502)
!2312 = !DILocation(line: 290, column: 9, scope: !502)
!2313 = !DILocation(line: 290, column: 14, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !505, file: !12, discriminator: 1)
!2315 = !DILocation(line: 290, column: 24, scope: !505)
!2316 = !DILocation(line: 290, column: 55, scope: !505)
!2317 = !DILocation(line: 290, column: 65, scope: !508)
!2318 = !DILocation(line: 290, column: 81, scope: !508)
!2319 = !DILocation(line: 290, column: 65, scope: !505)
!2320 = !DILocation(line: 290, column: 96, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !508, file: !12, discriminator: 2)
!2322 = !DILocation(line: 290, column: 101, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !507, file: !12, discriminator: 4)
!2324 = !DILocation(line: 290, column: 111, scope: !507)
!2325 = !DILocation(line: 290, column: 141, scope: !507)
!2326 = !DILocation(line: 290, column: 167, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !507, file: !12, line: 290, column: 164)
!2328 = !DILocation(line: 290, column: 184, scope: !2327)
!2329 = !DILocation(line: 290, column: 164, scope: !2327)
!2330 = !DILocation(line: 290, column: 194, scope: !2327)
!2331 = !DILocation(line: 290, column: 164, scope: !507)
!2332 = !DILocation(line: 290, column: 164, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !507, file: !12, discriminator: 5)
!2334 = !DILocation(line: 290, column: 225, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2327, file: !12, discriminator: 6)
!2336 = !DILocation(line: 290, column: 243, scope: !2327)
!2337 = !DILocation(line: 290, column: 253, scope: !2327)
!2338 = !DILocation(line: 290, column: 278, scope: !2327)
!2339 = !DILocation(line: 290, column: 209, scope: !2327)
!2340 = !DILocation(line: 290, column: 297, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !508, file: !12, discriminator: 7)
!2342 = !DILocation(line: 290, column: 297, scope: !507)
!2343 = !DILocation(line: 290, column: 297, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !507, file: !12, discriminator: 8)
!2345 = !DILocation(line: 290, column: 297, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !507, file: !12, discriminator: 9)
!2347 = !DILocation(line: 290, column: 310, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !12, discriminator: 10)
!2349 = !DILexicalBlockFile(scope: !502, file: !12, discriminator: 3)
!2350 = !DILocation(line: 290, column: 310, scope: !505)
!2351 = !DILocation(line: 290, column: 310, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !505, file: !12, discriminator: 11)
!2353 = !DILocation(line: 291, column: 5, scope: !503)
!2354 = !DILocation(line: 291, column: 5, scope: !502)
!2355 = !DILocation(line: 293, column: 22, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !503, file: !12, line: 292, column: 10)
!2357 = !DILocation(line: 295, column: 22, scope: !2356)
!2358 = !DILocation(line: 293, column: 9, scope: !2356)
!2359 = !DILocation(line: 296, column: 9, scope: !2356)
!2360 = !DILocation(line: 298, column: 58, scope: !480)
!2361 = !DILocation(line: 298, column: 5, scope: !480)
!2362 = !DILocation(line: 299, column: 1, scope: !480)
!2363 = !DILocation(line: 454, column: 36, scope: !541)
!2364 = !DILocation(line: 456, column: 5, scope: !541)
!2365 = !DILocation(line: 456, column: 16, scope: !541)
!2366 = !DILocation(line: 456, column: 42, scope: !541)
!2367 = !DILocation(line: 456, column: 23, scope: !541)
!2368 = !DILocation(line: 457, column: 10, scope: !541)
!2369 = !DILocation(line: 457, column: 5, scope: !541)
!2370 = !DILocation(line: 458, column: 1, scope: !541)
!2371 = !DILocation(line: 860, column: 43, scope: !563)
!2372 = !DILocation(line: 861, column: 40, scope: !563)
!2373 = !DILocation(line: 861, column: 57, scope: !563)
!2374 = !DILocation(line: 863, column: 5, scope: !563)
!2375 = !DILocation(line: 863, column: 9, scope: !563)
!2376 = !DILocation(line: 864, column: 5, scope: !563)
!2377 = !DILocation(line: 864, column: 15, scope: !563)
!2378 = !DILocation(line: 864, column: 30, scope: !563)
!2379 = !DILocation(line: 864, column: 45, scope: !563)
!2380 = !DILocation(line: 866, column: 5, scope: !563)
!2381 = !DILocation(line: 866, column: 22, scope: !563)
!2382 = !DILocation(line: 866, column: 33, scope: !563)
!2383 = !DILocation(line: 868, column: 20, scope: !563)
!2384 = !DILocation(line: 868, column: 9, scope: !563)
!2385 = !DILocation(line: 868, column: 7, scope: !563)
!2386 = !DILocation(line: 869, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !563, file: !12, line: 869, column: 9)
!2388 = !DILocation(line: 869, column: 11, scope: !2387)
!2389 = !DILocation(line: 869, column: 9, scope: !563)
!2390 = !DILocation(line: 870, column: 9, scope: !2387)
!2391 = !DILocation(line: 871, column: 12, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !563, file: !12, line: 871, column: 5)
!2393 = !DILocation(line: 871, column: 10, scope: !2392)
!2394 = !DILocation(line: 871, column: 17, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2396, file: !12, discriminator: 2)
!2396 = !DILexicalBlockFile(scope: !2397, file: !12, discriminator: 1)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !12, line: 871, column: 5)
!2398 = !DILocation(line: 871, column: 21, scope: !2397)
!2399 = !DILocation(line: 871, column: 19, scope: !2397)
!2400 = !DILocation(line: 871, column: 5, scope: !2392)
!2401 = !DILocation(line: 872, column: 42, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !12, line: 871, column: 39)
!2403 = !DILocation(line: 872, column: 43, scope: !2402)
!2404 = !DILocation(line: 872, column: 34, scope: !2402)
!2405 = !DILocation(line: 872, column: 13, scope: !2402)
!2406 = !DILocation(line: 872, column: 11, scope: !2402)
!2407 = !DILocation(line: 873, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !12, line: 873, column: 13)
!2409 = !DILocation(line: 873, column: 15, scope: !2408)
!2410 = !DILocation(line: 873, column: 13, scope: !2402)
!2411 = !DILocation(line: 874, column: 13, scope: !2408)
!2412 = !DILocation(line: 875, column: 28, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2402, file: !12, line: 875, column: 13)
!2414 = !DILocation(line: 875, column: 31, scope: !2413)
!2415 = !DILocation(line: 875, column: 34, scope: !2413)
!2416 = !DILocation(line: 875, column: 13, scope: !2413)
!2417 = !DILocation(line: 875, column: 37, scope: !2413)
!2418 = !DILocation(line: 875, column: 13, scope: !2402)
!2419 = !DILocation(line: 876, column: 13, scope: !2413)
!2420 = !DILocation(line: 877, column: 5, scope: !2402)
!2421 = !DILocation(line: 871, column: 35, scope: !2397)
!2422 = !DILocation(line: 871, column: 5, scope: !2397)
!2423 = !DILocation(line: 878, column: 67, scope: !563)
!2424 = !DILocation(line: 878, column: 49, scope: !563)
!2425 = !DILocation(line: 878, column: 32, scope: !563)
!2426 = !DILocation(line: 878, column: 106, scope: !563)
!2427 = !DILocation(line: 879, column: 38, scope: !563)
!2428 = !DILocation(line: 879, column: 50, scope: !563)
!2429 = !DILocation(line: 879, column: 53, scope: !563)
!2430 = !DILocation(line: 878, column: 9, scope: !563)
!2431 = !DILocation(line: 878, column: 7, scope: !563)
!2432 = !DILocation(line: 881, column: 5, scope: !563)
!2433 = !DILocation(line: 881, column: 10, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !575, file: !12, discriminator: 1)
!2435 = !DILocation(line: 881, column: 20, scope: !575)
!2436 = !DILocation(line: 881, column: 50, scope: !575)
!2437 = !DILocation(line: 881, column: 62, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !575, file: !12, line: 881, column: 59)
!2439 = !DILocation(line: 881, column: 79, scope: !2438)
!2440 = !DILocation(line: 881, column: 59, scope: !2438)
!2441 = !DILocation(line: 881, column: 89, scope: !2438)
!2442 = !DILocation(line: 881, column: 59, scope: !575)
!2443 = !DILocation(line: 881, column: 59, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !575, file: !12, discriminator: 2)
!2445 = !DILocation(line: 881, column: 120, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2438, file: !12, discriminator: 3)
!2447 = !DILocation(line: 881, column: 138, scope: !2438)
!2448 = !DILocation(line: 881, column: 148, scope: !2438)
!2449 = !DILocation(line: 881, column: 173, scope: !2438)
!2450 = !DILocation(line: 881, column: 104, scope: !2438)
!2451 = !DILocation(line: 881, column: 192, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !563, file: !12, discriminator: 4)
!2453 = !DILocation(line: 881, column: 192, scope: !575)
!2454 = !DILocation(line: 881, column: 192, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !575, file: !12, discriminator: 5)
!2456 = !DILocation(line: 881, column: 206, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !563, file: !12, discriminator: 6)
!2458 = !DILocation(line: 883, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !563, file: !12, line: 883, column: 9)
!2460 = !DILocation(line: 883, column: 11, scope: !2459)
!2461 = !DILocation(line: 883, column: 25, scope: !2459)
!2462 = !DILocation(line: 884, column: 10, scope: !2459)
!2463 = !DILocation(line: 884, column: 12, scope: !2459)
!2464 = !DILocation(line: 884, column: 33, scope: !2459)
!2465 = !DILocation(line: 884, column: 50, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2459, file: !12, discriminator: 1)
!2467 = !DILocation(line: 884, column: 36, scope: !2459)
!2468 = !DILocation(line: 884, column: 53, scope: !2459)
!2469 = !DILocation(line: 884, column: 59, scope: !2459)
!2470 = !DILocation(line: 884, column: 62, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2459, file: !12, discriminator: 2)
!2472 = !DILocation(line: 883, column: 9, scope: !563)
!2473 = !DILocation(line: 885, column: 9, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2459, file: !12, line: 884, column: 81)
!2475 = !DILocation(line: 887, column: 5, scope: !563)
!2476 = !DILocation(line: 887, column: 10, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !577, file: !12, discriminator: 1)
!2478 = !DILocation(line: 887, column: 20, scope: !577)
!2479 = !DILocation(line: 887, column: 43, scope: !577)
!2480 = !DILocation(line: 887, column: 51, scope: !581)
!2481 = !DILocation(line: 887, column: 59, scope: !581)
!2482 = !DILocation(line: 887, column: 51, scope: !577)
!2483 = !DILocation(line: 887, column: 80, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !580, file: !12, discriminator: 2)
!2485 = !DILocation(line: 887, column: 94, scope: !580)
!2486 = !DILocation(line: 887, column: 99, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !579, file: !12, discriminator: 4)
!2488 = !DILocation(line: 887, column: 109, scope: !579)
!2489 = !DILocation(line: 887, column: 139, scope: !579)
!2490 = !DILocation(line: 887, column: 157, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !579, file: !12, line: 887, column: 154)
!2492 = !DILocation(line: 887, column: 174, scope: !2491)
!2493 = !DILocation(line: 887, column: 154, scope: !2491)
!2494 = !DILocation(line: 887, column: 184, scope: !2491)
!2495 = !DILocation(line: 887, column: 154, scope: !579)
!2496 = !DILocation(line: 887, column: 154, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !579, file: !12, discriminator: 5)
!2498 = !DILocation(line: 887, column: 215, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2491, file: !12, discriminator: 6)
!2500 = !DILocation(line: 887, column: 233, scope: !2491)
!2501 = !DILocation(line: 887, column: 243, scope: !2491)
!2502 = !DILocation(line: 887, column: 268, scope: !2491)
!2503 = !DILocation(line: 887, column: 199, scope: !2491)
!2504 = !DILocation(line: 887, column: 287, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !580, file: !12, discriminator: 7)
!2506 = !DILocation(line: 887, column: 287, scope: !579)
!2507 = !DILocation(line: 887, column: 287, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !579, file: !12, discriminator: 8)
!2509 = !DILocation(line: 887, column: 300, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !580, file: !12, discriminator: 9)
!2511 = !DILocation(line: 887, column: 302, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2513, file: !12, discriminator: 10)
!2513 = !DILexicalBlockFile(scope: !563, file: !12, discriminator: 3)
!2514 = !DILocation(line: 887, column: 302, scope: !577)
!2515 = !DILocation(line: 887, column: 302, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !577, file: !12, discriminator: 11)
!2517 = !DILocation(line: 889, column: 9, scope: !563)
!2518 = !DILocation(line: 889, column: 12, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !585, file: !12, discriminator: 1)
!2520 = !DILocation(line: 891, column: 9, scope: !584)
!2521 = !DILocation(line: 892, column: 9, scope: !584)
!2522 = !DILocation(line: 892, column: 14, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !583, file: !12, discriminator: 1)
!2524 = !DILocation(line: 892, column: 24, scope: !583)
!2525 = !DILocation(line: 892, column: 55, scope: !583)
!2526 = !DILocation(line: 892, column: 63, scope: !588)
!2527 = !DILocation(line: 892, column: 79, scope: !588)
!2528 = !DILocation(line: 892, column: 63, scope: !583)
!2529 = !DILocation(line: 892, column: 94, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !588, file: !12, discriminator: 2)
!2531 = !DILocation(line: 892, column: 99, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !587, file: !12, discriminator: 4)
!2533 = !DILocation(line: 892, column: 109, scope: !587)
!2534 = !DILocation(line: 892, column: 139, scope: !587)
!2535 = !DILocation(line: 892, column: 165, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !587, file: !12, line: 892, column: 162)
!2537 = !DILocation(line: 892, column: 182, scope: !2536)
!2538 = !DILocation(line: 892, column: 162, scope: !2536)
!2539 = !DILocation(line: 892, column: 192, scope: !2536)
!2540 = !DILocation(line: 892, column: 162, scope: !587)
!2541 = !DILocation(line: 892, column: 162, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !587, file: !12, discriminator: 5)
!2543 = !DILocation(line: 892, column: 223, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2536, file: !12, discriminator: 6)
!2545 = !DILocation(line: 892, column: 241, scope: !2536)
!2546 = !DILocation(line: 892, column: 251, scope: !2536)
!2547 = !DILocation(line: 892, column: 276, scope: !2536)
!2548 = !DILocation(line: 892, column: 207, scope: !2536)
!2549 = !DILocation(line: 892, column: 295, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !588, file: !12, discriminator: 7)
!2551 = !DILocation(line: 892, column: 295, scope: !587)
!2552 = !DILocation(line: 892, column: 295, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !587, file: !12, discriminator: 8)
!2554 = !DILocation(line: 892, column: 295, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !587, file: !12, discriminator: 9)
!2556 = !DILocation(line: 892, column: 308, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2558, file: !12, discriminator: 10)
!2558 = !DILexicalBlockFile(scope: !584, file: !12, discriminator: 3)
!2559 = !DILocation(line: 892, column: 308, scope: !583)
!2560 = !DILocation(line: 892, column: 308, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !583, file: !12, discriminator: 11)
!2562 = !DILocation(line: 893, column: 9, scope: !584)
!2563 = !DILocation(line: 893, column: 14, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !590, file: !12, discriminator: 1)
!2565 = !DILocation(line: 893, column: 24, scope: !590)
!2566 = !DILocation(line: 893, column: 55, scope: !590)
!2567 = !DILocation(line: 893, column: 63, scope: !593)
!2568 = !DILocation(line: 893, column: 79, scope: !593)
!2569 = !DILocation(line: 893, column: 63, scope: !590)
!2570 = !DILocation(line: 893, column: 94, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !593, file: !12, discriminator: 2)
!2572 = !DILocation(line: 893, column: 99, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !592, file: !12, discriminator: 4)
!2574 = !DILocation(line: 893, column: 109, scope: !592)
!2575 = !DILocation(line: 893, column: 139, scope: !592)
!2576 = !DILocation(line: 893, column: 165, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !592, file: !12, line: 893, column: 162)
!2578 = !DILocation(line: 893, column: 182, scope: !2577)
!2579 = !DILocation(line: 893, column: 162, scope: !2577)
!2580 = !DILocation(line: 893, column: 192, scope: !2577)
!2581 = !DILocation(line: 893, column: 162, scope: !592)
!2582 = !DILocation(line: 893, column: 162, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !592, file: !12, discriminator: 5)
!2584 = !DILocation(line: 893, column: 223, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2577, file: !12, discriminator: 6)
!2586 = !DILocation(line: 893, column: 241, scope: !2577)
!2587 = !DILocation(line: 893, column: 251, scope: !2577)
!2588 = !DILocation(line: 893, column: 276, scope: !2577)
!2589 = !DILocation(line: 893, column: 207, scope: !2577)
!2590 = !DILocation(line: 893, column: 295, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !593, file: !12, discriminator: 7)
!2592 = !DILocation(line: 893, column: 295, scope: !592)
!2593 = !DILocation(line: 893, column: 295, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !592, file: !12, discriminator: 8)
!2595 = !DILocation(line: 893, column: 295, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !592, file: !12, discriminator: 9)
!2597 = !DILocation(line: 893, column: 308, scope: !2557)
!2598 = !DILocation(line: 893, column: 308, scope: !590)
!2599 = !DILocation(line: 893, column: 308, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !590, file: !12, discriminator: 11)
!2601 = !DILocation(line: 894, column: 5, scope: !584)
!2602 = !DILocation(line: 896, column: 24, scope: !563)
!2603 = !DILocation(line: 896, column: 5, scope: !563)
!2604 = !DILocation(line: 898, column: 1, scope: !563)
!2605 = !DILocation(line: 1053, column: 44, scope: !699)
!2606 = !DILocation(line: 1053, column: 57, scope: !699)
!2607 = !DILocation(line: 1055, column: 5, scope: !699)
!2608 = !DILocation(line: 1055, column: 12, scope: !699)
!2609 = !DILocation(line: 1056, column: 5, scope: !699)
!2610 = !DILocation(line: 1056, column: 12, scope: !699)
!2611 = !DILocation(line: 1058, column: 6, scope: !699)
!2612 = !DILocation(line: 1058, column: 13, scope: !699)
!2613 = !DILocation(line: 1060, column: 22, scope: !699)
!2614 = !DILocation(line: 1063, column: 34, scope: !699)
!2615 = !DILocation(line: 1063, column: 5, scope: !699)
!2616 = !DILocation(line: 1064, column: 5, scope: !699)
!2617 = !DILocation(line: 1064, column: 10, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !716, file: !12, discriminator: 1)
!2619 = !DILocation(line: 1064, column: 14, scope: !716)
!2620 = !DILocation(line: 1064, column: 10, scope: !716)
!2621 = !DILocation(line: 1064, column: 20, scope: !716)
!2622 = !DILocation(line: 1064, column: 172, scope: !716)
!2623 = !DILocation(line: 1064, column: 157, scope: !716)
!2624 = !DILocation(line: 1064, column: 26, scope: !716)
!2625 = !{i32 351070}
!2626 = !DILocation(line: 1064, column: 199, scope: !699)
!2627 = !DILocation(line: 1064, column: 199, scope: !716)
!2628 = !DILocation(line: 1064, column: 199, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !716, file: !12, discriminator: 2)
!2630 = !DILocation(line: 1066, column: 30, scope: !699)
!2631 = !DILocation(line: 1066, column: 28, scope: !699)
!2632 = !DILocation(line: 1068, column: 5, scope: !699)
!2633 = !DILocation(line: 1068, column: 12, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !12, discriminator: 2)
!2635 = !DILexicalBlockFile(scope: !699, file: !12, discriminator: 1)
!2636 = !DILocation(line: 1068, column: 38, scope: !699)
!2637 = !DILocation(line: 1068, column: 35, scope: !699)
!2638 = !DILocation(line: 1069, column: 9, scope: !719)
!2639 = !DILocation(line: 1069, column: 13, scope: !719)
!2640 = !DILocation(line: 1069, column: 28, scope: !719)
!2641 = !DILocation(line: 1071, column: 9, scope: !719)
!2642 = !DILocation(line: 1071, column: 17, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2644, file: !12, discriminator: 2)
!2644 = !DILexicalBlockFile(scope: !719, file: !12, discriminator: 1)
!2645 = !DILocation(line: 1071, column: 16, scope: !719)
!2646 = !DILocation(line: 1072, column: 11, scope: !722)
!2647 = !DILocation(line: 1072, column: 26, scope: !722)
!2648 = !DILocation(line: 1076, column: 13, scope: !722)
!2649 = !DILocation(line: 1076, column: 29, scope: !722)
!2650 = !DILocation(line: 1077, column: 17, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !722, file: !12, line: 1077, column: 17)
!2652 = !DILocation(line: 1077, column: 17, scope: !722)
!2653 = !DILocation(line: 1078, column: 26, scope: !2651)
!2654 = !DILocation(line: 1078, column: 17, scope: !2651)
!2655 = !DILocation(line: 1079, column: 135, scope: !722)
!2656 = !DILocation(line: 1079, column: 128, scope: !722)
!2657 = !DILocation(line: 1079, column: 149, scope: !722)
!2658 = !DILocation(line: 1079, column: 123, scope: !722)
!2659 = !DILocation(line: 1079, column: 56, scope: !722)
!2660 = !DILocation(line: 1079, column: 49, scope: !722)
!2661 = !DILocation(line: 1079, column: 70, scope: !722)
!2662 = !DILocation(line: 1079, column: 22, scope: !722)
!2663 = !DILocation(line: 1079, column: 37, scope: !722)
!2664 = !DILocation(line: 1079, column: 105, scope: !722)
!2665 = !DILocation(line: 1081, column: 39, scope: !722)
!2666 = !DILocation(line: 1081, column: 32, scope: !722)
!2667 = !DILocation(line: 1081, column: 52, scope: !722)
!2668 = !DILocation(line: 1082, column: 56, scope: !722)
!2669 = !DILocation(line: 1081, column: 25, scope: !722)
!2670 = !DILocation(line: 1081, column: 23, scope: !722)
!2671 = !DILocation(line: 1083, column: 21, scope: !722)
!2672 = !DILocation(line: 1083, column: 20, scope: !722)
!2673 = !DILocation(line: 1083, column: 17, scope: !722)
!2674 = !DILocation(line: 1084, column: 16, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !722, file: !12, line: 1084, column: 16)
!2676 = !DILocation(line: 1084, column: 16, scope: !722)
!2677 = !DILocation(line: 1084, column: 32, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2675, file: !12, discriminator: 1)
!2679 = !DILocation(line: 1085, column: 9, scope: !719)
!2680 = !DILocation(line: 1087, column: 13, scope: !735)
!2681 = !DILocation(line: 1087, column: 23, scope: !735)
!2682 = !DILocation(line: 1087, column: 13, scope: !719)
!2683 = !DILocation(line: 1088, column: 13, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !735, file: !12, line: 1087, column: 28)
!2685 = !DILocation(line: 1089, column: 9, scope: !2684)
!2686 = !DILocation(line: 1090, column: 18, scope: !734)
!2687 = !DILocation(line: 1090, column: 22, scope: !734)
!2688 = !DILocation(line: 1090, column: 18, scope: !735)
!2689 = !DILocation(line: 1091, column: 13, scope: !733)
!2690 = !DILocation(line: 1091, column: 17, scope: !733)
!2691 = !DILocation(line: 1093, column: 34, scope: !733)
!2692 = !DILocation(line: 1093, column: 13, scope: !733)
!2693 = !DILocation(line: 1095, column: 17, scope: !733)
!2694 = !DILocation(line: 1095, column: 15, scope: !733)
!2695 = !DILocation(line: 1097, column: 13, scope: !733)
!2696 = !DILocation(line: 1099, column: 17, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !733, file: !12, line: 1099, column: 17)
!2698 = !DILocation(line: 1099, column: 19, scope: !2697)
!2699 = !DILocation(line: 1099, column: 17, scope: !733)
!2700 = !DILocation(line: 1100, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !12, line: 1099, column: 24)
!2702 = !DILocation(line: 1101, column: 17, scope: !2701)
!2703 = !DILocation(line: 1102, column: 17, scope: !2701)
!2704 = !DILocation(line: 1103, column: 18, scope: !2701)
!2705 = !DILocation(line: 1103, column: 25, scope: !2701)
!2706 = !DILocation(line: 1104, column: 40, scope: !2701)
!2707 = !DILocation(line: 1105, column: 13, scope: !2701)
!2708 = !DILocation(line: 1106, column: 9, scope: !734)
!2709 = !DILocation(line: 1106, column: 9, scope: !733)
!2710 = !DILocation(line: 1107, column: 5, scope: !699)
!2711 = !DILocation(line: 1109, column: 12, scope: !699)
!2712 = !DILocation(line: 1110, column: 1, scope: !699)
!2713 = !DILocation(line: 1109, column: 5, scope: !699)
!2714 = !DILocation(line: 1044, column: 17, scope: !736)
!2715 = !DILocation(line: 1046, column: 30, scope: !736)
!2716 = !DILocation(line: 1046, column: 28, scope: !736)
!2717 = !DILocation(line: 1047, column: 5, scope: !736)
!2718 = !DILocation(line: 1048, column: 1, scope: !736)
!2719 = !DILocation(line: 824, column: 5, scope: !750)
!2720 = !DILocation(line: 824, column: 9, scope: !750)
!2721 = !DILocation(line: 826, column: 5, scope: !750)
!2722 = !DILocation(line: 826, column: 22, scope: !750)
!2723 = !DILocation(line: 826, column: 33, scope: !750)
!2724 = !DILocation(line: 828, column: 53, scope: !750)
!2725 = !DILocation(line: 828, column: 35, scope: !750)
!2726 = !DILocation(line: 828, column: 18, scope: !750)
!2727 = !DILocation(line: 828, column: 92, scope: !750)
!2728 = !DILocation(line: 828, column: 9, scope: !750)
!2729 = !DILocation(line: 828, column: 7, scope: !750)
!2730 = !DILocation(line: 830, column: 24, scope: !750)
!2731 = !DILocation(line: 830, column: 5, scope: !750)
!2732 = !DILocation(line: 832, column: 12, scope: !750)
!2733 = !DILocation(line: 833, column: 1, scope: !750)
!2734 = !DILocation(line: 832, column: 5, scope: !750)
!2735 = !DILocation(line: 843, column: 5, scope: !768)
!2736 = !DILocation(line: 843, column: 9, scope: !768)
!2737 = !DILocation(line: 845, column: 5, scope: !768)
!2738 = !DILocation(line: 845, column: 22, scope: !768)
!2739 = !DILocation(line: 845, column: 33, scope: !768)
!2740 = !DILocation(line: 847, column: 53, scope: !768)
!2741 = !DILocation(line: 847, column: 35, scope: !768)
!2742 = !DILocation(line: 847, column: 18, scope: !768)
!2743 = !DILocation(line: 847, column: 92, scope: !768)
!2744 = !DILocation(line: 847, column: 9, scope: !768)
!2745 = !DILocation(line: 847, column: 7, scope: !768)
!2746 = !DILocation(line: 849, column: 24, scope: !768)
!2747 = !DILocation(line: 849, column: 5, scope: !768)
!2748 = !DILocation(line: 851, column: 12, scope: !768)
!2749 = !DILocation(line: 852, column: 1, scope: !768)
!2750 = !DILocation(line: 851, column: 5, scope: !768)
!2751 = !DILocation(line: 945, column: 27, scope: !772)
!2752 = !DILocation(line: 945, column: 37, scope: !772)
!2753 = !DILocation(line: 945, column: 48, scope: !772)
!2754 = !DILocation(line: 947, column: 5, scope: !772)
!2755 = !DILocation(line: 947, column: 12, scope: !772)
!2756 = !DILocation(line: 949, column: 5, scope: !772)
!2757 = !DILocation(line: 949, column: 22, scope: !772)
!2758 = !DILocation(line: 949, column: 33, scope: !772)
!2759 = !DILocation(line: 952, column: 36, scope: !772)
!2760 = !DILocation(line: 955, column: 35, scope: !772)
!2761 = !DILocation(line: 957, column: 5, scope: !772)
!2762 = !DILocation(line: 957, column: 10, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !782, file: !12, discriminator: 1)
!2764 = !DILocation(line: 957, column: 20, scope: !782)
!2765 = !DILocation(line: 957, column: 87, scope: !782)
!2766 = !DILocation(line: 957, column: 69, scope: !782)
!2767 = !DILocation(line: 957, column: 52, scope: !782)
!2768 = !DILocation(line: 957, column: 126, scope: !782)
!2769 = !DILocation(line: 957, column: 139, scope: !785)
!2770 = !DILocation(line: 957, column: 155, scope: !785)
!2771 = !DILocation(line: 957, column: 139, scope: !782)
!2772 = !DILocation(line: 957, column: 170, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !785, file: !12, discriminator: 2)
!2774 = !DILocation(line: 957, column: 175, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !784, file: !12, discriminator: 4)
!2776 = !DILocation(line: 957, column: 185, scope: !784)
!2777 = !DILocation(line: 957, column: 215, scope: !784)
!2778 = !DILocation(line: 957, column: 241, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !784, file: !12, line: 957, column: 238)
!2780 = !DILocation(line: 957, column: 258, scope: !2779)
!2781 = !DILocation(line: 957, column: 238, scope: !2779)
!2782 = !DILocation(line: 957, column: 268, scope: !2779)
!2783 = !DILocation(line: 957, column: 238, scope: !784)
!2784 = !DILocation(line: 957, column: 238, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !784, file: !12, discriminator: 5)
!2786 = !DILocation(line: 957, column: 299, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2779, file: !12, discriminator: 6)
!2788 = !DILocation(line: 957, column: 317, scope: !2779)
!2789 = !DILocation(line: 957, column: 327, scope: !2779)
!2790 = !DILocation(line: 957, column: 352, scope: !2779)
!2791 = !DILocation(line: 957, column: 283, scope: !2779)
!2792 = !DILocation(line: 957, column: 371, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !785, file: !12, discriminator: 7)
!2794 = !DILocation(line: 957, column: 371, scope: !784)
!2795 = !DILocation(line: 957, column: 371, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !784, file: !12, discriminator: 8)
!2797 = !DILocation(line: 957, column: 371, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !784, file: !12, discriminator: 9)
!2799 = !DILocation(line: 957, column: 384, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2801, file: !12, discriminator: 10)
!2801 = !DILexicalBlockFile(scope: !772, file: !12, discriminator: 3)
!2802 = !DILocation(line: 957, column: 384, scope: !782)
!2803 = !DILocation(line: 957, column: 384, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !782, file: !12, discriminator: 11)
!2805 = !DILocation(line: 958, column: 5, scope: !772)
!2806 = !DILocation(line: 958, column: 10, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !787, file: !12, discriminator: 1)
!2808 = !DILocation(line: 958, column: 20, scope: !787)
!2809 = !DILocation(line: 958, column: 87, scope: !787)
!2810 = !DILocation(line: 958, column: 69, scope: !787)
!2811 = !DILocation(line: 958, column: 52, scope: !787)
!2812 = !DILocation(line: 958, column: 126, scope: !787)
!2813 = !DILocation(line: 958, column: 139, scope: !790)
!2814 = !DILocation(line: 958, column: 155, scope: !790)
!2815 = !DILocation(line: 958, column: 139, scope: !787)
!2816 = !DILocation(line: 958, column: 170, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !790, file: !12, discriminator: 2)
!2818 = !DILocation(line: 958, column: 175, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !789, file: !12, discriminator: 4)
!2820 = !DILocation(line: 958, column: 185, scope: !789)
!2821 = !DILocation(line: 958, column: 215, scope: !789)
!2822 = !DILocation(line: 958, column: 241, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !789, file: !12, line: 958, column: 238)
!2824 = !DILocation(line: 958, column: 258, scope: !2823)
!2825 = !DILocation(line: 958, column: 238, scope: !2823)
!2826 = !DILocation(line: 958, column: 268, scope: !2823)
!2827 = !DILocation(line: 958, column: 238, scope: !789)
!2828 = !DILocation(line: 958, column: 238, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !789, file: !12, discriminator: 5)
!2830 = !DILocation(line: 958, column: 299, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2823, file: !12, discriminator: 6)
!2832 = !DILocation(line: 958, column: 317, scope: !2823)
!2833 = !DILocation(line: 958, column: 327, scope: !2823)
!2834 = !DILocation(line: 958, column: 352, scope: !2823)
!2835 = !DILocation(line: 958, column: 283, scope: !2823)
!2836 = !DILocation(line: 958, column: 371, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !790, file: !12, discriminator: 7)
!2838 = !DILocation(line: 958, column: 371, scope: !789)
!2839 = !DILocation(line: 958, column: 371, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !789, file: !12, discriminator: 8)
!2841 = !DILocation(line: 958, column: 371, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !789, file: !12, discriminator: 9)
!2843 = !DILocation(line: 958, column: 384, scope: !2800)
!2844 = !DILocation(line: 958, column: 384, scope: !787)
!2845 = !DILocation(line: 958, column: 384, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !787, file: !12, discriminator: 11)
!2847 = !DILocation(line: 959, column: 112, scope: !772)
!2848 = !DILocation(line: 959, column: 105, scope: !772)
!2849 = !DILocation(line: 959, column: 89, scope: !772)
!2850 = !DILocation(line: 959, column: 41, scope: !772)
!2851 = !DILocation(line: 959, column: 23, scope: !772)
!2852 = !DILocation(line: 959, column: 6, scope: !772)
!2853 = !DILocation(line: 959, column: 80, scope: !772)
!2854 = !DILocation(line: 959, column: 87, scope: !772)
!2855 = !DILocation(line: 960, column: 112, scope: !772)
!2856 = !DILocation(line: 960, column: 105, scope: !772)
!2857 = !DILocation(line: 960, column: 89, scope: !772)
!2858 = !DILocation(line: 960, column: 41, scope: !772)
!2859 = !DILocation(line: 960, column: 23, scope: !772)
!2860 = !DILocation(line: 960, column: 6, scope: !772)
!2861 = !DILocation(line: 960, column: 80, scope: !772)
!2862 = !DILocation(line: 960, column: 87, scope: !772)
!2863 = !DILocation(line: 961, column: 37, scope: !772)
!2864 = !DILocation(line: 961, column: 14, scope: !772)
!2865 = !DILocation(line: 961, column: 12, scope: !772)
!2866 = !DILocation(line: 963, column: 24, scope: !772)
!2867 = !DILocation(line: 963, column: 5, scope: !772)
!2868 = !DILocation(line: 965, column: 12, scope: !772)
!2869 = !DILocation(line: 966, column: 1, scope: !772)
!2870 = !DILocation(line: 965, column: 5, scope: !772)
!2871 = !DILocation(line: 791, column: 19, scope: !754)
!2872 = !DILocation(line: 793, column: 5, scope: !754)
!2873 = !DILocation(line: 793, column: 9, scope: !754)
!2874 = !DILocation(line: 794, column: 9, scope: !760)
!2875 = !DILocation(line: 794, column: 14, scope: !760)
!2876 = !DILocation(line: 794, column: 9, scope: !754)
!2877 = !DILocation(line: 795, column: 9, scope: !759)
!2878 = !DILocation(line: 795, column: 19, scope: !759)
!2879 = !DILocation(line: 796, column: 35, scope: !759)
!2880 = !DILocation(line: 796, column: 13, scope: !759)
!2881 = !DILocation(line: 796, column: 11, scope: !759)
!2882 = !DILocation(line: 797, column: 13, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !759, file: !12, line: 797, column: 13)
!2884 = !DILocation(line: 797, column: 15, scope: !2883)
!2885 = !DILocation(line: 797, column: 13, scope: !759)
!2886 = !DILocation(line: 798, column: 13, scope: !2883)
!2887 = !DILocation(line: 799, column: 13, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !759, file: !12, line: 799, column: 13)
!2889 = !DILocation(line: 799, column: 15, scope: !2888)
!2890 = !DILocation(line: 799, column: 13, scope: !759)
!2891 = !DILocation(line: 800, column: 20, scope: !2888)
!2892 = !DILocation(line: 800, column: 13, scope: !2888)
!2893 = !DILocation(line: 802, column: 36, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !12, line: 801, column: 14)
!2895 = !DILocation(line: 802, column: 22, scope: !2894)
!2896 = !DILocation(line: 802, column: 20, scope: !2894)
!2897 = !DILocation(line: 803, column: 17, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !12, line: 803, column: 17)
!2899 = !DILocation(line: 803, column: 24, scope: !2898)
!2900 = !DILocation(line: 803, column: 30, scope: !2898)
!2901 = !DILocation(line: 803, column: 33, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2898, file: !12, discriminator: 1)
!2903 = !DILocation(line: 803, column: 17, scope: !2894)
!2904 = !DILocation(line: 804, column: 17, scope: !2898)
!2905 = !DILocation(line: 806, column: 9, scope: !759)
!2906 = !DILocation(line: 806, column: 14, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !762, file: !12, discriminator: 1)
!2908 = !DILocation(line: 806, column: 24, scope: !762)
!2909 = !DILocation(line: 806, column: 54, scope: !762)
!2910 = !DILocation(line: 806, column: 66, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !762, file: !12, line: 806, column: 63)
!2912 = !DILocation(line: 806, column: 83, scope: !2911)
!2913 = !DILocation(line: 806, column: 63, scope: !2911)
!2914 = !DILocation(line: 806, column: 93, scope: !2911)
!2915 = !DILocation(line: 806, column: 63, scope: !762)
!2916 = !DILocation(line: 806, column: 63, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !762, file: !12, discriminator: 2)
!2918 = !DILocation(line: 806, column: 124, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2911, file: !12, discriminator: 3)
!2920 = !DILocation(line: 806, column: 142, scope: !2911)
!2921 = !DILocation(line: 806, column: 152, scope: !2911)
!2922 = !DILocation(line: 806, column: 177, scope: !2911)
!2923 = !DILocation(line: 806, column: 108, scope: !2911)
!2924 = !DILocation(line: 806, column: 196, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !759, file: !12, discriminator: 4)
!2926 = !DILocation(line: 806, column: 196, scope: !762)
!2927 = !DILocation(line: 806, column: 196, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !762, file: !12, discriminator: 5)
!2929 = !DILocation(line: 807, column: 9, scope: !759)
!2930 = !DILocation(line: 809, column: 9, scope: !759)
!2931 = !DILocation(line: 810, column: 9, scope: !759)
!2932 = !DILocation(line: 810, column: 14, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !764, file: !12, discriminator: 1)
!2934 = !DILocation(line: 810, column: 24, scope: !764)
!2935 = !DILocation(line: 810, column: 55, scope: !764)
!2936 = !DILocation(line: 810, column: 63, scope: !767)
!2937 = !DILocation(line: 810, column: 79, scope: !767)
!2938 = !DILocation(line: 810, column: 63, scope: !764)
!2939 = !DILocation(line: 810, column: 94, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !767, file: !12, discriminator: 2)
!2941 = !DILocation(line: 810, column: 99, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !766, file: !12, discriminator: 4)
!2943 = !DILocation(line: 810, column: 109, scope: !766)
!2944 = !DILocation(line: 810, column: 139, scope: !766)
!2945 = !DILocation(line: 810, column: 165, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !766, file: !12, line: 810, column: 162)
!2947 = !DILocation(line: 810, column: 182, scope: !2946)
!2948 = !DILocation(line: 810, column: 162, scope: !2946)
!2949 = !DILocation(line: 810, column: 192, scope: !2946)
!2950 = !DILocation(line: 810, column: 162, scope: !766)
!2951 = !DILocation(line: 810, column: 162, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !766, file: !12, discriminator: 5)
!2953 = !DILocation(line: 810, column: 223, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2946, file: !12, discriminator: 6)
!2955 = !DILocation(line: 810, column: 241, scope: !2946)
!2956 = !DILocation(line: 810, column: 251, scope: !2946)
!2957 = !DILocation(line: 810, column: 276, scope: !2946)
!2958 = !DILocation(line: 810, column: 207, scope: !2946)
!2959 = !DILocation(line: 810, column: 295, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !767, file: !12, discriminator: 7)
!2961 = !DILocation(line: 810, column: 295, scope: !766)
!2962 = !DILocation(line: 810, column: 295, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !766, file: !12, discriminator: 8)
!2964 = !DILocation(line: 810, column: 295, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !766, file: !12, discriminator: 9)
!2966 = !DILocation(line: 810, column: 308, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !12, discriminator: 10)
!2968 = !DILexicalBlockFile(scope: !759, file: !12, discriminator: 3)
!2969 = !DILocation(line: 810, column: 308, scope: !764)
!2970 = !DILocation(line: 810, column: 308, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !764, file: !12, discriminator: 11)
!2972 = !DILocation(line: 810, column: 308, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !764, file: !12, discriminator: 12)
!2974 = !DILocation(line: 812, column: 16, scope: !759)
!2975 = !DILocation(line: 812, column: 9, scope: !759)
!2976 = !DILocation(line: 813, column: 5, scope: !760)
!2977 = !DILocation(line: 814, column: 12, scope: !754)
!2978 = !DILocation(line: 814, column: 5, scope: !754)
!2979 = !DILocation(line: 815, column: 1, scope: !754)
!2980 = !DILocation(line: 905, column: 27, scope: !791)
!2981 = !DILocation(line: 905, column: 37, scope: !791)
!2982 = !DILocation(line: 907, column: 5, scope: !791)
!2983 = !DILocation(line: 907, column: 11, scope: !791)
!2984 = !DILocation(line: 908, column: 45, scope: !798)
!2985 = !DILocation(line: 908, column: 27, scope: !798)
!2986 = !DILocation(line: 908, column: 10, scope: !798)
!2987 = !DILocation(line: 908, column: 84, scope: !798)
!2988 = !DILocation(line: 908, column: 94, scope: !798)
!2989 = !DILocation(line: 908, column: 9, scope: !791)
!2990 = !DILocation(line: 909, column: 9, scope: !797)
!2991 = !DILocation(line: 909, column: 19, scope: !797)
!2992 = !DILocation(line: 911, column: 9, scope: !797)
!2993 = !DILocation(line: 911, column: 26, scope: !797)
!2994 = !DILocation(line: 911, column: 37, scope: !797)
!2995 = !DILocation(line: 913, column: 38, scope: !797)
!2996 = !DILocation(line: 914, column: 71, scope: !797)
!2997 = !DILocation(line: 914, column: 53, scope: !797)
!2998 = !DILocation(line: 914, column: 36, scope: !797)
!2999 = !DILocation(line: 914, column: 110, scope: !797)
!3000 = !DILocation(line: 914, column: 127, scope: !797)
!3001 = !DILocation(line: 914, column: 133, scope: !797)
!3002 = !DILocation(line: 914, column: 13, scope: !797)
!3003 = !DILocation(line: 914, column: 11, scope: !797)
!3004 = !DILocation(line: 915, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !797, file: !12, line: 915, column: 13)
!3006 = !DILocation(line: 915, column: 15, scope: !3005)
!3007 = !DILocation(line: 915, column: 13, scope: !797)
!3008 = !DILocation(line: 916, column: 13, scope: !3005)
!3009 = !DILocation(line: 917, column: 13, scope: !802)
!3010 = !DILocation(line: 917, column: 15, scope: !802)
!3011 = !DILocation(line: 917, column: 13, scope: !797)
!3012 = !DILocation(line: 918, column: 20, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !802, file: !12, line: 917, column: 37)
!3014 = !DILocation(line: 919, column: 9, scope: !3013)
!3015 = !DILocation(line: 921, column: 13, scope: !801)
!3016 = !DILocation(line: 921, column: 19, scope: !801)
!3017 = !DILocation(line: 921, column: 40, scope: !801)
!3018 = !DILocation(line: 921, column: 23, scope: !801)
!3019 = !DILocation(line: 922, column: 17, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !801, file: !12, line: 922, column: 17)
!3021 = !DILocation(line: 922, column: 19, scope: !3020)
!3022 = !DILocation(line: 922, column: 17, scope: !801)
!3023 = !DILocation(line: 923, column: 17, scope: !3020)
!3024 = !DILocation(line: 924, column: 392, scope: !801)
!3025 = !DILocation(line: 924, column: 382, scope: !801)
!3026 = !DILocation(line: 924, column: 20, scope: !801)
!3027 = !DILocation(line: 925, column: 9, scope: !802)
!3028 = !DILocation(line: 925, column: 9, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !802, file: !12, discriminator: 1)
!3030 = !DILocation(line: 926, column: 9, scope: !797)
!3031 = !DILocation(line: 926, column: 14, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !804, file: !12, discriminator: 1)
!3033 = !DILocation(line: 926, column: 24, scope: !804)
!3034 = !DILocation(line: 926, column: 54, scope: !804)
!3035 = !DILocation(line: 926, column: 66, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !804, file: !12, line: 926, column: 63)
!3037 = !DILocation(line: 926, column: 83, scope: !3036)
!3038 = !DILocation(line: 926, column: 63, scope: !3036)
!3039 = !DILocation(line: 926, column: 93, scope: !3036)
!3040 = !DILocation(line: 926, column: 63, scope: !804)
!3041 = !DILocation(line: 926, column: 63, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !804, file: !12, discriminator: 2)
!3043 = !DILocation(line: 926, column: 124, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3036, file: !12, discriminator: 3)
!3045 = !DILocation(line: 926, column: 142, scope: !3036)
!3046 = !DILocation(line: 926, column: 152, scope: !3036)
!3047 = !DILocation(line: 926, column: 177, scope: !3036)
!3048 = !DILocation(line: 926, column: 108, scope: !3036)
!3049 = !DILocation(line: 926, column: 196, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !797, file: !12, discriminator: 4)
!3051 = !DILocation(line: 926, column: 196, scope: !804)
!3052 = !DILocation(line: 926, column: 196, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !804, file: !12, discriminator: 5)
!3054 = !DILocation(line: 927, column: 9, scope: !797)
!3055 = !DILocation(line: 929, column: 9, scope: !797)
!3056 = !DILocation(line: 930, column: 9, scope: !797)
!3057 = !DILocation(line: 930, column: 14, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !806, file: !12, discriminator: 1)
!3059 = !DILocation(line: 930, column: 24, scope: !806)
!3060 = !DILocation(line: 930, column: 55, scope: !806)
!3061 = !DILocation(line: 930, column: 63, scope: !809)
!3062 = !DILocation(line: 930, column: 79, scope: !809)
!3063 = !DILocation(line: 930, column: 63, scope: !806)
!3064 = !DILocation(line: 930, column: 94, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !809, file: !12, discriminator: 2)
!3066 = !DILocation(line: 930, column: 99, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !808, file: !12, discriminator: 4)
!3068 = !DILocation(line: 930, column: 109, scope: !808)
!3069 = !DILocation(line: 930, column: 139, scope: !808)
!3070 = !DILocation(line: 930, column: 165, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !808, file: !12, line: 930, column: 162)
!3072 = !DILocation(line: 930, column: 182, scope: !3071)
!3073 = !DILocation(line: 930, column: 162, scope: !3071)
!3074 = !DILocation(line: 930, column: 192, scope: !3071)
!3075 = !DILocation(line: 930, column: 162, scope: !808)
!3076 = !DILocation(line: 930, column: 162, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !808, file: !12, discriminator: 5)
!3078 = !DILocation(line: 930, column: 223, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3071, file: !12, discriminator: 6)
!3080 = !DILocation(line: 930, column: 241, scope: !3071)
!3081 = !DILocation(line: 930, column: 251, scope: !3071)
!3082 = !DILocation(line: 930, column: 276, scope: !3071)
!3083 = !DILocation(line: 930, column: 207, scope: !3071)
!3084 = !DILocation(line: 930, column: 295, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !809, file: !12, discriminator: 7)
!3086 = !DILocation(line: 930, column: 295, scope: !808)
!3087 = !DILocation(line: 930, column: 295, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !808, file: !12, discriminator: 8)
!3089 = !DILocation(line: 930, column: 295, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !808, file: !12, discriminator: 9)
!3091 = !DILocation(line: 930, column: 308, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3093, file: !12, discriminator: 10)
!3093 = !DILexicalBlockFile(scope: !797, file: !12, discriminator: 3)
!3094 = !DILocation(line: 930, column: 308, scope: !806)
!3095 = !DILocation(line: 930, column: 308, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !806, file: !12, discriminator: 11)
!3097 = !DILocation(line: 930, column: 308, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !806, file: !12, discriminator: 12)
!3099 = !DILocation(line: 933, column: 28, scope: !797)
!3100 = !DILocation(line: 933, column: 9, scope: !797)
!3101 = !DILocation(line: 935, column: 16, scope: !797)
!3102 = !DILocation(line: 935, column: 9, scope: !797)
!3103 = !DILocation(line: 936, column: 5, scope: !798)
!3104 = !DILocation(line: 937, column: 12, scope: !791)
!3105 = !DILocation(line: 937, column: 5, scope: !791)
!3106 = !DILocation(line: 938, column: 1, scope: !791)
