; ModuleID = 'Parser.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { {}*, {}*, i32 (%struct.sv*, %struct.magic*)*, {}*, {}*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.xpv = type { i8*, i64, i64 }
%struct.literal_tag = type { i32, i8*, i32 }
%struct.p_state = type { i32, %struct.sv*, i64, i64, i64, i8, i8, i8*, i8, i8, i8*, %struct.sv*, i8, i64, i64, i64, %struct.sv*, i32, %struct.av*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sv*, [9 x %struct.p_handler], i8, %struct.hv*, %struct.hv*, %struct.hv*, %struct.sv*, i32, %struct.hv*, %struct.sv* }
%struct.p_handler = type { %struct.sv*, %struct.sv* }
%struct.xrv = type { %struct.sv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.token_pos = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tokenpos\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tagname\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"@attr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"attrseq\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dtext\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"is_cdata\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"skipped_text\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"offset_end\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@argname = global [20 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)], align 16
@vtbl_free_pstate = global { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* } { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @magic_free_pstate, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str.20 = private unnamed_addr constant [41 x i8] c"Usage: HTML::Parser::_alloc_pstate(self)\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Not a reference to a hash\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"HTML::Entities::entity2char\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"_hparser_xs_state\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Usage: HTML::Parser::parse(self, chunk)\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Parse loop not allowed\00", align 1
@PL_markstack_max = external global i32*, align 8
@PL_errgv = external global %struct.gv*, align 8
@PL_Xpv = external global %struct.xpv*, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"Usage: HTML::Parser::eof(self)\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Usage: %s(pstate, ...)\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Unknown boolean attribute (%d)\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.29 = private unnamed_addr constant [58 x i8] c"Usage: HTML::Parser::boolean_attribute_value(pstate, ...)\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.30 = private unnamed_addr constant [32 x i8] c"Unknown tag-list attribute (%d)\00", align 1
@PL_op = external global %struct.op*, align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"Can't report tag lists yet\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Tag list must be plain scalars and arrays\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"Usage: HTML::Parser::handler(pstate, eventname, ...)\00", align 1
@event_id_str = internal global [9 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0)], align 16
@.str.34 = private unnamed_addr constant [25 x i8] c"No handler for %s events\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Can't inline decode readonly string\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"Usage: HTML::Entities::_decode_entities(string, entities, ...)\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"2nd argument must be hash reference\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"Usage: HTML::Entities::_probably_utf8_chunk(string)\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"Usage: HTML::Entities::UNICODE_SUPPORT()\00", align 1
@PL_curpad = external global %struct.sv**, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"Parser.c\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"HTML::Parser::_alloc_pstate\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"HTML::Parser::parse\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"HTML::Parser::eof\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"HTML::Parser::closing_plaintext\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"HTML::Parser::strict_end\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"HTML::Parser::marked_sections\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"HTML::Parser::case_sensitive\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"HTML::Parser::unbroken_text\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"HTML::Parser::strict_comment\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"HTML::Parser::xml_mode\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"HTML::Parser::attr_encoded\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"HTML::Parser::strict_names\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"HTML::Parser::utf8_mode\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"HTML::Parser::boolean_attribute_value\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"HTML::Parser::ignore_tags\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"HTML::Parser::ignore_elements\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"HTML::Parser::report_tags\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"HTML::Parser::handler\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"HTML::Entities::decode_entities\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"HTML::Entities::_decode_entities\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"HTML::Entities::_probably_utf8_chunk\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"HTML::Entities::UNICODE_SUPPORT\00", align 1
@.str.63 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"Bad signature in parser state object at %p\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"_hparser_xs_state element is not a reference\00", align 1
@.str.66 = private unnamed_addr constant [60 x i8] c"Can't find '_hparser_xs_state' element in HTML::Parser hash\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@PL_dowarn = external global i8, align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"\C3\AF\C2\BB\C2\BF\00", align 1
@.str.70 = private unnamed_addr constant [68 x i8] c"Parsing of undecoded UTF-8 will give garbage when decoding entities\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"Parsing string decoded with wrong endianess\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"\00\00\FE\FF\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"\FE\FF\00\00\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-32\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-16\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@hctype = internal global [256 x i8] c"xxxxxxxxx\01\01x\01\01xxxxxxxxxxxxxxxxxx\01xxxxxxxxxxxx||X||||||||||~xx(\00xx~~~~~~~~~~~~~~~~~~~~~~~~~~xxxx~x~~~~~~~~~~~~~~~~~~~~~~~~~~xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", align 16
@.str.80 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"rcdata\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@literal_mode_elem = internal global [7 x %struct.literal_tag] [%struct.literal_tag { i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1 }, %struct.literal_tag { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i32 1 }, %struct.literal_tag { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 1 }, %struct.literal_tag { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 1 }, %struct.literal_tag { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 0 }, %struct.literal_tag { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 0 }, %struct.literal_tag zeroinitializer], align 16
@.str.84 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"textarea\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"DOCTYPE\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"ENTITY\00", align 1
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@.str.89 = private unnamed_addr constant [8 x i8] c"!##/#?#\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@.str.90 = private unnamed_addr constant [15 x i8] c"Bad argspec %d\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.91 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"start_document\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"end_document\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"Unrecognized identifier %.*s in argspec\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"Literal string is longer than 255 chars in argspec\00", align 1
@.str.101 = private unnamed_addr constant [49 x i8] c"Backslash reserved for literal string in argspec\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"Unterminated literal string in argspec\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"Bad argspec (%s)\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"Bad argspec: stuff after @{...} (%s)\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"Missing comma separator in argspec\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"Only code or array references allowed as handler\00", align 1
@PL_hexdigit = external global i8*, align 8
@PL_utf8skip = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define internal i32 @magic_free_pstate(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call %struct.p_state* @get_pstate_iv(%struct.sv* %0)
  call void @free_pstate(%struct.p_state* %call)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser__alloc_pstate(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %pstate = alloca %struct.p_state*, align 8
  %sv = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %mg = alloca %struct.magic*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %self, align 8
  %12 = load %struct.sv*, %struct.sv** %self, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any, align 8
  %14 = bitcast i8* %13 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %14, i32 0, i32 0
  %15 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %15, %struct.sv** %sv, align 8
  %16 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %16, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and = and i32 %18, 255
  %cmp8 = icmp ne i32 %and, 11
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %20 = bitcast %struct.sv* %19 to %struct.hv*
  store %struct.hv* %20, %struct.hv** %hv, align 8
  %call = call i8* @Perl_safesysmalloc(i64 368)
  %21 = bitcast i8* %call to %struct.p_state*
  store %struct.p_state* %21, %struct.p_state** %pstate, align 8
  %22 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %23 = bitcast %struct.p_state* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 368, i32 1, i1 false)
  %24 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %signature = getelementptr inbounds %struct.p_state, %struct.p_state* %24, i32 0, i32 0
  store i32 369695076, i32* %signature, align 4
  %call12 = call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %25 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %entity2char = getelementptr inbounds %struct.p_state, %struct.p_state* %25, i32 0, i32 37
  store %struct.hv* %call12, %struct.hv** %entity2char, align 8
  %call13 = call %struct.sv* @Perl_newSV(i64 20)
  %26 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %tmp = getelementptr inbounds %struct.p_state, %struct.p_state* %26, i32 0, i32 38
  store %struct.sv* %call13, %struct.sv** %tmp, align 8
  %27 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %28 = ptrtoint %struct.p_state* %27 to i64
  %call14 = call %struct.sv* @Perl_newSViv(i64 %28)
  store %struct.sv* %call14, %struct.sv** %sv, align 8
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_magic(%struct.sv* %29, %struct.sv* null, i32 126, i8* null, i32 0)
  %30 = load %struct.sv*, %struct.sv** %sv, align 8
  %call15 = call %struct.magic* @Perl_mg_find(%struct.sv* %30, i32 126)
  store %struct.magic* %call15, %struct.magic** %mg, align 8
  %31 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_virtual = getelementptr inbounds %struct.magic, %struct.magic* %31, i32 0, i32 1
  store %struct.mgvtbl* bitcast ({ i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }* @vtbl_free_pstate to %struct.mgvtbl*), %struct.mgvtbl** %mg_virtual, align 8
  %32 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags16, align 4
  %or = or i32 %33, 8388608
  store i32 %or, i32* %sv_flags16, align 4
  %34 = load %struct.hv*, %struct.hv** %hv, align 8
  %35 = load %struct.sv*, %struct.sv** %sv, align 8
  %call17 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %35)
  %call18 = call %struct.sv** @Perl_hv_store(%struct.hv* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 17, %struct.sv* %call17, i32 0)
  store i64 0, i64* %tmpXSoff, align 8
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %37 = load i32, i32* %ax, align 4
  %idx.ext20 = sext i32 %37 to i64
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idx.ext20
  %38 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %38, 1
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr21, i64 %sub
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct.hv* @Perl_get_hv(i8*, i32) #1

declare %struct.sv* @Perl_newSV(i64) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_parse(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %chunk = alloca %struct.sv*, align 8
  %p_state = alloca %struct.p_state*, align 8
  %generator = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %count = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %13, %struct.sv** %self, align 8
  %14 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %14, 1
  %idxprom11 = sext i32 %add10 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom11
  %16 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  store %struct.sv* %16, %struct.sv** %chunk, align 8
  %17 = load %struct.sv*, %struct.sv** %self, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %17)
  store %struct.p_state* %call, %struct.p_state** %p_state, align 8
  %18 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing = getelementptr inbounds %struct.p_state, %struct.p_state* %18, i32 0, i32 5
  %19 = load i8, i8* %parsing, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %20 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing15 = getelementptr inbounds %struct.p_state, %struct.p_state* %20, i32 0, i32 5
  store i8 1, i8* %parsing15, align 1
  %21 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and = and i32 %22, 524288
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else.128

land.lhs.true:                                    ; preds = %if.end.14
  %23 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any, align 8
  %25 = bitcast i8* %24 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %27, 255
  %cmp19 = icmp eq i32 %and18, 12
  br i1 %cmp19, label %if.then.21, label %if.else.128

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load %struct.sv*, %struct.sv** %chunk, align 8
  store %struct.sv* %28, %struct.sv** %generator, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.21
  %29 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8
  %30 = load i32*, i32** @PL_markstack_max, align 8
  %cmp23 = icmp eq i32* %incdec.ptr22, %30
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.body
  call void @Perl_markstack_grow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %do.body
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast27 = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.rhs.cast28 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub.ptr.div30 = sdiv exact i64 %sub.ptr.sub29, 8
  %conv31 = trunc i64 %sub.ptr.div30 to i32
  %33 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv31, i32* %33, align 4
  store i32 %conv31, i32* %tmp
  %34 = load i32, i32* %tmp
  %35 = load %struct.sv*, %struct.sv** %generator, align 8
  %call32 = call i32 @Perl_call_sv(%struct.sv* %35, i32 4)
  store i32 %call32, i32* %count, align 4
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %36, %struct.sv*** %sp, align 8
  %37 = load i32, i32* %count, align 4
  %tobool33 = icmp ne i32 %37, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i32 -1
  store %struct.sv** %incdec.ptr34, %struct.sv*** %sp, align 8
  %39 = load %struct.sv*, %struct.sv** %38, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %chunk, align 8
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %40, %struct.sv*** @PL_stack_sp, align 8
  %41 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any35 = getelementptr inbounds %struct.gv, %struct.gv* %41, i32 0, i32 0
  %42 = load %struct.xpvgv*, %struct.xpvgv** %sv_any35, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %42, i32 0, i32 7
  %43 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %43, i32 0, i32 0
  %44 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool36 = icmp ne %struct.sv* %44, null
  br i1 %tobool36, label %cond.false.38, label %cond.true.37

cond.true.37:                                     ; preds = %cond.end
  br i1 false, label %if.then.97, label %if.end.99

cond.false.38:                                    ; preds = %cond.end
  %45 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any39 = getelementptr inbounds %struct.gv, %struct.gv* %45, i32 0, i32 0
  %46 = load %struct.xpvgv*, %struct.xpvgv** %sv_any39, align 8
  %xgv_gp40 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %46, i32 0, i32 7
  %47 = load %struct.gp*, %struct.gp** %xgv_gp40, align 8
  %gp_sv41 = getelementptr inbounds %struct.gp, %struct.gp* %47, i32 0, i32 0
  %48 = load %struct.sv*, %struct.sv** %gp_sv41, align 8
  %sv_flags42 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags42, align 4
  %and43 = and i32 %49, 262144
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.62

cond.true.45:                                     ; preds = %cond.false.38
  %50 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any46 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 0
  %51 = load %struct.xpvgv*, %struct.xpvgv** %sv_any46, align 8
  %xgv_gp47 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %51, i32 0, i32 7
  %52 = load %struct.gp*, %struct.gp** %xgv_gp47, align 8
  %gp_sv48 = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 0
  %53 = load %struct.sv*, %struct.sv** %gp_sv48, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any49, align 8
  %55 = bitcast i8* %54 to %struct.xpv*
  store %struct.xpv* %55, %struct.xpv** @PL_Xpv, align 8
  %tobool50 = icmp ne %struct.xpv* %55, null
  br i1 %tobool50, label %land.lhs.true.51, label %cond.false.61

land.lhs.true.51:                                 ; preds = %cond.true.45
  %56 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %56, i32 0, i32 1
  %57 = load i64, i64* %xpv_cur, align 8
  %cmp52 = icmp ugt i64 %57, 1
  br i1 %cmp52, label %cond.true.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.51
  %58 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur54 = getelementptr inbounds %struct.xpv, %struct.xpv* %58, i32 0, i32 1
  %59 = load i64, i64* %xpv_cur54, align 8
  %tobool55 = icmp ne i64 %59, 0
  br i1 %tobool55, label %land.lhs.true.56, label %cond.false.61

land.lhs.true.56:                                 ; preds = %lor.lhs.false
  %60 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %60, i32 0, i32 0
  %61 = load i8*, i8** %xpv_pv, align 8
  %62 = load i8, i8* %61, align 1
  %conv57 = sext i8 %62 to i32
  %cmp58 = icmp ne i32 %conv57, 48
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %land.lhs.true.56, %land.lhs.true.51
  br i1 true, label %if.then.97, label %if.end.99

cond.false.61:                                    ; preds = %land.lhs.true.56, %lor.lhs.false, %cond.true.45
  br i1 false, label %if.then.97, label %if.end.99

cond.false.62:                                    ; preds = %cond.false.38
  %63 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any63 = getelementptr inbounds %struct.gv, %struct.gv* %63, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any63, align 8
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 7
  %65 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_sv65 = getelementptr inbounds %struct.gp, %struct.gp* %65, i32 0, i32 0
  %66 = load %struct.sv*, %struct.sv** %gp_sv65, align 8
  %sv_flags66 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 2
  %67 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %67, 65536
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.76

cond.true.69:                                     ; preds = %cond.false.62
  %68 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %68, i32 0, i32 0
  %69 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %69, i32 0, i32 7
  %70 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_sv72 = getelementptr inbounds %struct.gp, %struct.gp* %70, i32 0, i32 0
  %71 = load %struct.sv*, %struct.sv** %gp_sv72, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 0
  %72 = load i8*, i8** %sv_any73, align 8
  %73 = bitcast i8* %72 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %73, i32 0, i32 3
  %74 = load i64, i64* %xiv_iv, align 8
  %cmp74 = icmp ne i64 %74, 0
  br i1 %cmp74, label %if.then.97, label %if.end.99

cond.false.76:                                    ; preds = %cond.false.62
  %75 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_sv79 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 0
  %78 = load %struct.sv*, %struct.sv** %gp_sv79, align 8
  %sv_flags80 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 2
  %79 = load i32, i32* %sv_flags80, align 4
  %and81 = and i32 %79, 131072
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.90

cond.true.83:                                     ; preds = %cond.false.76
  %80 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any84 = getelementptr inbounds %struct.gv, %struct.gv* %80, i32 0, i32 0
  %81 = load %struct.xpvgv*, %struct.xpvgv** %sv_any84, align 8
  %xgv_gp85 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %81, i32 0, i32 7
  %82 = load %struct.gp*, %struct.gp** %xgv_gp85, align 8
  %gp_sv86 = getelementptr inbounds %struct.gp, %struct.gp* %82, i32 0, i32 0
  %83 = load %struct.sv*, %struct.sv** %gp_sv86, align 8
  %sv_any87 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any87, align 8
  %85 = bitcast i8* %84 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %85, i32 0, i32 4
  %86 = load double, double* %xnv_nv, align 8
  %cmp88 = fcmp une double %86, 0.000000e+00
  br i1 %cmp88, label %if.then.97, label %if.end.99

cond.false.90:                                    ; preds = %cond.false.76
  %87 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any91 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 0
  %88 = load %struct.xpvgv*, %struct.xpvgv** %sv_any91, align 8
  %xgv_gp92 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 7
  %89 = load %struct.gp*, %struct.gp** %xgv_gp92, align 8
  %gp_sv93 = getelementptr inbounds %struct.gp, %struct.gp* %89, i32 0, i32 0
  %90 = load %struct.sv*, %struct.sv** %gp_sv93, align 8
  %call94 = call signext i8 @Perl_sv_2bool(%struct.sv* %90)
  %conv95 = sext i8 %call94 to i32
  %tobool96 = icmp ne i32 %conv95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %cond.false.90, %cond.true.83, %cond.true.69, %cond.false.61, %cond.true.60, %cond.true.37
  %91 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing98 = getelementptr inbounds %struct.p_state, %struct.p_state* %91, i32 0, i32 5
  store i8 0, i8* %parsing98, align 1
  %92 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %eof = getelementptr inbounds %struct.p_state, %struct.p_state* %92, i32 0, i32 6
  store i8 0, i8* %eof, align 1
  call void (i8*, ...) @Perl_croak(i8* null)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %cond.false.90, %cond.true.83, %cond.true.69, %cond.false.61, %cond.true.60, %cond.true.37
  %93 = load %struct.sv*, %struct.sv** %chunk, align 8
  %tobool100 = icmp ne %struct.sv* %93, null
  br i1 %tobool100, label %land.lhs.true.101, label %if.else

land.lhs.true.101:                                ; preds = %if.end.99
  %94 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_flags102 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 2
  %95 = load i32, i32* %sv_flags102, align 4
  %and103 = and i32 %95, 118423552
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %land.lhs.true.101
  %96 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_flags106 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 2
  %97 = load i32, i32* %sv_flags106, align 4
  %and107 = and i32 %97, 262144
  %cmp108 = icmp eq i32 %and107, 262144
  br i1 %cmp108, label %cond.true.110, label %cond.false.115

cond.true.110:                                    ; preds = %if.then.105
  %98 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_any111 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 0
  %99 = load i8*, i8** %sv_any111, align 8
  %100 = bitcast i8* %99 to %struct.xpv*
  %xpv_cur112 = getelementptr inbounds %struct.xpv, %struct.xpv* %100, i32 0, i32 1
  %101 = load i64, i64* %xpv_cur112, align 8
  store i64 %101, i64* %len, align 8
  %102 = load %struct.sv*, %struct.sv** %chunk, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 0
  %103 = load i8*, i8** %sv_any113, align 8
  %104 = bitcast i8* %103 to %struct.xpv*
  %xpv_pv114 = getelementptr inbounds %struct.xpv, %struct.xpv* %104, i32 0, i32 0
  %105 = load i8*, i8** %xpv_pv114, align 8
  br label %cond.end.117

cond.false.115:                                   ; preds = %if.then.105
  %106 = load %struct.sv*, %struct.sv** %chunk, align 8
  %call116 = call i8* @Perl_sv_2pv_flags(%struct.sv* %106, i64* %len, i32 2)
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.115, %cond.true.110
  %cond118 = phi i8* [ %105, %cond.true.110 ], [ %call116, %cond.false.115 ]
  br label %if.end.119

if.else:                                          ; preds = %land.lhs.true.101, %if.end.99
  store i64 0, i64* %len, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %cond.end.117
  %107 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %108 = load i64, i64* %len, align 8
  %tobool120 = icmp ne i64 %108, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.end.119
  %109 = load %struct.sv*, %struct.sv** %chunk, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.end.119
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi %struct.sv* [ %109, %cond.true.121 ], [ null, %cond.false.122 ]
  %110 = load %struct.sv*, %struct.sv** %self, align 8
  call void @parse(%struct.p_state* %107, %struct.sv* %cond124, %struct.sv* %110)
  %111 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %111, %struct.sv*** %sp, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.123
  %112 = load i64, i64* %len, align 8
  %tobool125 = icmp ne i64 %112, 0
  br i1 %tobool125, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %113 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %eof126 = getelementptr inbounds %struct.p_state, %struct.p_state* %113, i32 0, i32 6
  %114 = load i8, i8* %eof126, align 1
  %tobool127 = icmp ne i8 %114, 0
  %lnot = xor i1 %tobool127, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %115 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %115, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.129

if.else.128:                                      ; preds = %land.lhs.true, %if.end.14
  %116 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %117 = load %struct.sv*, %struct.sv** %chunk, align 8
  %118 = load %struct.sv*, %struct.sv** %self, align 8
  call void @parse(%struct.p_state* %116, %struct.sv* %117, %struct.sv* %118)
  %119 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %119, %struct.sv*** %sp, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %do.end
  %120 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing130 = getelementptr inbounds %struct.p_state, %struct.p_state* %120, i32 0, i32 5
  store i8 0, i8* %parsing130, align 1
  %121 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %eof131 = getelementptr inbounds %struct.p_state, %struct.p_state* %121, i32 0, i32 6
  %122 = load i8, i8* %eof131, align 1
  %tobool132 = icmp ne i8 %122, 0
  br i1 %tobool132, label %if.then.133, label %if.else.137

if.then.133:                                      ; preds = %if.end.129
  %123 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %eof134 = getelementptr inbounds %struct.p_state, %struct.p_state* %123, i32 0, i32 6
  store i8 0, i8* %eof134, align 1
  %call135 = call %struct.sv* @Perl_sv_newmortal()
  %124 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr136 = getelementptr inbounds %struct.sv*, %struct.sv** %124, i32 1
  store %struct.sv** %incdec.ptr136, %struct.sv*** %sp, align 8
  store %struct.sv* %call135, %struct.sv** %incdec.ptr136, align 8
  br label %if.end.139

if.else.137:                                      ; preds = %if.end.129
  %125 = load %struct.sv*, %struct.sv** %self, align 8
  %126 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr138 = getelementptr inbounds %struct.sv*, %struct.sv** %126, i32 1
  store %struct.sv** %incdec.ptr138, %struct.sv*** %sp, align 8
  store %struct.sv* %125, %struct.sv** %incdec.ptr138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.133
  %127 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %127, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.p_state* @get_pstate_hv(%struct.sv* %sv) #0 {
entry:
  %retval = alloca %struct.p_state*, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %2, i32 0, i32 0
  %3 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %3, %struct.sv** %sv.addr, align 8
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 255
  %cmp = icmp ne i32 %and, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %8 = bitcast %struct.sv* %7 to %struct.hv*
  store %struct.hv* %8, %struct.hv** %hv, align 8
  %9 = load %struct.hv*, %struct.hv** %hv, align 8
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 17, i32 0)
  store %struct.sv** %call, %struct.sv*** %svp, align 8
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool1 = icmp ne %struct.sv** %10, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %svp, align 8
  %12 = load %struct.sv*, %struct.sv** %11, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %13, 524288
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  %14 = load %struct.sv**, %struct.sv*** %svp, align 8
  %15 = load %struct.sv*, %struct.sv** %14, align 8
  %sv_any7 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any7, align 8
  %17 = bitcast i8* %16 to %struct.xrv*
  %xrv_rv8 = getelementptr inbounds %struct.xrv, %struct.xrv* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %xrv_rv8, align 8
  %call9 = call %struct.p_state* @get_pstate_iv(%struct.sv* %18)
  store %struct.p_state* %call9, %struct.p_state** %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.66, i32 0, i32 0))
  store %struct.p_state* null, %struct.p_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.6
  %19 = load %struct.p_state*, %struct.p_state** %retval
  ret %struct.p_state* %19
}

declare void @Perl_markstack_grow() #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @parse(%struct.p_state* %p_state, %struct.sv* %chunk, %struct.sv* %self) #0 {
entry:
  %p_state.addr = alloca %struct.p_state*, align 8
  %chunk.addr = alloca %struct.sv*, align 8
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %beg = alloca i8*, align 8
  %end = alloca i8*, align 8
  %utf8 = alloca i32, align 4
  %len = alloca i64, align 8
  %empty = alloca [1 x i8], align 1
  %token = alloca %struct.token_pos, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store %struct.sv* %chunk, %struct.sv** %chunk.addr, align 8
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  store i32 0, i32* %utf8, align 4
  %0 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end.75, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 1
  %2 = load %struct.sv*, %struct.sv** %buf, align 8
  %tobool1 = icmp ne %struct.sv* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf2 = getelementptr inbounds %struct.p_state, %struct.p_state* %3, i32 0, i32 1
  %4 = load %struct.sv*, %struct.sv** %buf2, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 118423552
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.55

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf5 = getelementptr inbounds %struct.p_state, %struct.p_state* %6, i32 0, i32 1
  %7 = load %struct.sv*, %struct.sv** %buf5, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %8, 262144
  %cmp = icmp eq i32 %and7, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %9 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf8 = getelementptr inbounds %struct.p_state, %struct.p_state* %9, i32 0, i32 1
  %10 = load %struct.sv*, %struct.sv** %buf8, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 1
  %13 = load i64, i64* %xpv_cur, align 8
  store i64 %13, i64* %len, align 8
  %14 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf9 = getelementptr inbounds %struct.p_state, %struct.p_state* %14, i32 0, i32 1
  %15 = load %struct.sv*, %struct.sv** %buf9, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any10, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 0
  %18 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %19 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf11 = getelementptr inbounds %struct.p_state, %struct.p_state* %19, i32 0, i32 1
  %20 = load %struct.sv*, %struct.sv** %buf11, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %20, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %21 = load i8*, i8** %s, align 8
  %22 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %add.ptr, i8** %end, align 8
  %23 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf12 = getelementptr inbounds %struct.p_state, %struct.p_state* %23, i32 0, i32 1
  %24 = load %struct.sv*, %struct.sv** %buf12, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %25, 536870912
  store i32 %and14, i32* %utf8, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.then.34, %if.end, %cond.end
  %26 = load i8*, i8** %s, align 8
  %27 = load i8*, i8** %end, align 8
  %cmp15 = icmp ult i8* %26, %27
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %28, i32 0, i32 7
  %29 = load i8*, i8** %literal_mode, align 8
  %tobool16 = icmp ne i8* %29, null
  br i1 %tobool16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %while.body
  %30 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode18 = getelementptr inbounds %struct.p_state, %struct.p_state* %30, i32 0, i32 7
  %31 = load i8*, i8** %literal_mode18, align 8
  %call19 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %if.then.17
  %32 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %closing_plaintext = getelementptr inbounds %struct.p_state, %struct.p_state* %32, i32 0, i32 27
  %33 = load i8, i8* %closing_plaintext, align 1
  %tobool22 = icmp ne i8 %33, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.21, %if.then.17
  %34 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode24 = getelementptr inbounds %struct.p_state, %struct.p_state* %34, i32 0, i32 7
  %35 = load i8*, i8** %literal_mode24, align 8
  %36 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag = getelementptr inbounds %struct.p_state, %struct.p_state* %36, i32 0, i32 10
  store i8* %35, i8** %pending_end_tag, align 8
  %37 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode25 = getelementptr inbounds %struct.p_state, %struct.p_state* %37, i32 0, i32 7
  store i8* null, i8** %literal_mode25, align 8
  %38 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %39 = load i8*, i8** %s, align 8
  %40 = load i8*, i8** %end, align 8
  %41 = load i32, i32* %utf8, align 4
  %42 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call26 = call i8* @parse_buf(%struct.p_state* %38, i8* %39, i8* %40, i32 %41, %struct.sv* %42)
  store i8* %call26, i8** %s, align 8
  br label %while.cond

if.end.27:                                        ; preds = %while.body
  %43 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_comment = getelementptr inbounds %struct.p_state, %struct.p_state* %43, i32 0, i32 20
  %44 = load i8, i8* %strict_comment, align 1
  %tobool28 = icmp ne i8 %44, 0
  br i1 %tobool28, label %if.end.37, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.end.27
  %45 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %no_dash_dash_comment_end = getelementptr inbounds %struct.p_state, %struct.p_state* %45, i32 0, i32 9
  %46 = load i8, i8* %no_dash_dash_comment_end, align 1
  %tobool30 = icmp ne i8 %46, 0
  br i1 %tobool30, label %if.end.37, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv = sext i8 %48 to i32
  %cmp32 = icmp eq i32 %conv, 60
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %land.lhs.true.31
  %49 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %no_dash_dash_comment_end35 = getelementptr inbounds %struct.p_state, %struct.p_state* %49, i32 0, i32 9
  store i8 1, i8* %no_dash_dash_comment_end35, align 1
  %50 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %51 = load i8*, i8** %s, align 8
  %52 = load i8*, i8** %end, align 8
  %53 = load i32, i32* %utf8, align 4
  %54 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call36 = call i8* @parse_buf(%struct.p_state* %50, i8* %51, i8* %52, i32 %53, %struct.sv* %54)
  store i8* %call36, i8** %s, align 8
  br label %while.cond

if.end.37:                                        ; preds = %land.lhs.true.31, %land.lhs.true.29, %if.end.27
  %55 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_comment38 = getelementptr inbounds %struct.p_state, %struct.p_state* %55, i32 0, i32 20
  %56 = load i8, i8* %strict_comment38, align 1
  %tobool39 = icmp ne i8 %56, 0
  br i1 %tobool39, label %if.end.48, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %if.end.37
  %57 = load i8*, i8** %s, align 8
  %58 = load i8, i8* %57, align 1
  %conv41 = sext i8 %58 to i32
  %cmp42 = icmp eq i32 %conv41, 60
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %land.lhs.true.40
  %59 = load i8*, i8** %s, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %59, i64 1
  %beg46 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 0
  store i8* %add.ptr45, i8** %beg46, align 8
  %60 = load i8*, i8** %end, align 8
  %end47 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 1
  store i8* %60, i8** %end47, align 8
  %61 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %62 = load i8*, i8** %s, align 8
  %63 = load i8*, i8** %end, align 8
  %64 = load i32, i32* %utf8, align 4
  %65 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %61, i32 1, i8* %62, i8* %63, i32 %64, %struct.token_pos* %token, i32 1, %struct.sv* %65)
  %66 = load i8*, i8** %end, align 8
  store i8* %66, i8** %s, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %land.lhs.true.40, %if.end.37
  br label %while.end

while.end:                                        ; preds = %if.end.48, %if.then.23, %while.cond
  %67 = load i8*, i8** %s, align 8
  %68 = load i8*, i8** %end, align 8
  %cmp49 = icmp ult i8* %67, %68
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %while.end
  %69 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %70 = load i8*, i8** %s, align 8
  %71 = load i8*, i8** %end, align 8
  %72 = load i32, i32* %utf8, align 4
  %73 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %69, i32 4, i8* %70, i8* %71, i32 %72, %struct.token_pos* null, i32 0, %struct.sv* %73)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %while.end
  %74 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf53 = getelementptr inbounds %struct.p_state, %struct.p_state* %74, i32 0, i32 1
  %75 = load %struct.sv*, %struct.sv** %buf53, align 8
  call void @Perl_sv_free(%struct.sv* %75)
  %76 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf54 = getelementptr inbounds %struct.p_state, %struct.p_state* %76, i32 0, i32 1
  store %struct.sv* null, %struct.sv** %buf54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.52, %land.lhs.true, %if.then
  %77 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text = getelementptr inbounds %struct.p_state, %struct.p_state* %77, i32 0, i32 11
  %78 = load %struct.sv*, %struct.sv** %pend_text, align 8
  %tobool56 = icmp ne %struct.sv* %78, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.63

land.lhs.true.57:                                 ; preds = %if.end.55
  %79 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text58 = getelementptr inbounds %struct.p_state, %struct.p_state* %79, i32 0, i32 11
  %80 = load %struct.sv*, %struct.sv** %pend_text58, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 2
  %81 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %81, 118423552
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.57
  %82 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %83 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @flush_pending_text(%struct.p_state* %82, %struct.sv* %83)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.57, %if.end.55
  %84 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element = getelementptr inbounds %struct.p_state, %struct.p_state* %84, i32 0, i32 35
  %85 = load %struct.sv*, %struct.sv** %ignoring_element, align 8
  %tobool64 = icmp ne %struct.sv* %85, null
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.63
  %86 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element66 = getelementptr inbounds %struct.p_state, %struct.p_state* %86, i32 0, i32 35
  %87 = load %struct.sv*, %struct.sv** %ignoring_element66, align 8
  call void @Perl_sv_free(%struct.sv* %87)
  %88 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element67 = getelementptr inbounds %struct.p_state, %struct.p_state* %88, i32 0, i32 35
  store %struct.sv* null, %struct.sv** %ignoring_element67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.63
  %89 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %empty, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [1 x i8], [1 x i8]* %empty, i32 0, i32 0
  %90 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %89, i32 7, i8* %arraydecay, i8* %arraydecay69, i32 0, %struct.token_pos* null, i32 0, %struct.sv* %90)
  %91 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset = getelementptr inbounds %struct.p_state, %struct.p_state* %91, i32 0, i32 2
  store i64 0, i64* %offset, align 8
  %92 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line = getelementptr inbounds %struct.p_state, %struct.p_state* %92, i32 0, i32 3
  %93 = load i64, i64* %line, align 8
  %tobool70 = icmp ne i64 %93, 0
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %94 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line72 = getelementptr inbounds %struct.p_state, %struct.p_state* %94, i32 0, i32 3
  store i64 1, i64* %line72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  %95 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column = getelementptr inbounds %struct.p_state, %struct.p_state* %95, i32 0, i32 4
  store i64 0, i64* %column, align 8
  %96 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode74 = getelementptr inbounds %struct.p_state, %struct.p_state* %96, i32 0, i32 7
  store i8* null, i8** %literal_mode74, align 8
  %97 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %97, i32 0, i32 8
  store i8 0, i8* %is_cdata, align 1
  br label %return

if.end.75:                                        ; preds = %entry
  %98 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %98, i32 0, i32 28
  %99 = load i8, i8* %utf8_mode, align 1
  %tobool76 = icmp ne i8 %99, 0
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.75
  %100 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %call78 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %100, i8 signext 0)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.75
  %101 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf80 = getelementptr inbounds %struct.p_state, %struct.p_state* %101, i32 0, i32 1
  %102 = load %struct.sv*, %struct.sv** %buf80, align 8
  %tobool81 = icmp ne %struct.sv* %102, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else

land.lhs.true.82:                                 ; preds = %if.end.79
  %103 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf83 = getelementptr inbounds %struct.p_state, %struct.p_state* %103, i32 0, i32 1
  %104 = load %struct.sv*, %struct.sv** %buf83, align 8
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %105, 118423552
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %land.lhs.true.82
  %106 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf88 = getelementptr inbounds %struct.p_state, %struct.p_state* %106, i32 0, i32 1
  %107 = load %struct.sv*, %struct.sv** %buf88, align 8
  %108 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %107, %struct.sv* %108, i32 2)
  %109 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf89 = getelementptr inbounds %struct.p_state, %struct.p_state* %109, i32 0, i32 1
  %110 = load %struct.sv*, %struct.sv** %buf89, align 8
  %sv_flags90 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 2
  %111 = load i32, i32* %sv_flags90, align 4
  %and91 = and i32 %111, 262144
  %cmp92 = icmp eq i32 %and91, 262144
  br i1 %cmp92, label %cond.true.94, label %cond.false.101

cond.true.94:                                     ; preds = %if.then.87
  %112 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf95 = getelementptr inbounds %struct.p_state, %struct.p_state* %112, i32 0, i32 1
  %113 = load %struct.sv*, %struct.sv** %buf95, align 8
  %sv_any96 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 0
  %114 = load i8*, i8** %sv_any96, align 8
  %115 = bitcast i8* %114 to %struct.xpv*
  %xpv_cur97 = getelementptr inbounds %struct.xpv, %struct.xpv* %115, i32 0, i32 1
  %116 = load i64, i64* %xpv_cur97, align 8
  store i64 %116, i64* %len, align 8
  %117 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf98 = getelementptr inbounds %struct.p_state, %struct.p_state* %117, i32 0, i32 1
  %118 = load %struct.sv*, %struct.sv** %buf98, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 0
  %119 = load i8*, i8** %sv_any99, align 8
  %120 = bitcast i8* %119 to %struct.xpv*
  %xpv_pv100 = getelementptr inbounds %struct.xpv, %struct.xpv* %120, i32 0, i32 0
  %121 = load i8*, i8** %xpv_pv100, align 8
  br label %cond.end.104

cond.false.101:                                   ; preds = %if.then.87
  %122 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf102 = getelementptr inbounds %struct.p_state, %struct.p_state* %122, i32 0, i32 1
  %123 = load %struct.sv*, %struct.sv** %buf102, align 8
  %call103 = call i8* @Perl_sv_2pv_flags(%struct.sv* %123, i64* %len, i32 2)
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.101, %cond.true.94
  %cond105 = phi i8* [ %121, %cond.true.94 ], [ %call103, %cond.false.101 ]
  store i8* %cond105, i8** %beg, align 8
  %124 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf106 = getelementptr inbounds %struct.p_state, %struct.p_state* %124, i32 0, i32 1
  %125 = load %struct.sv*, %struct.sv** %buf106, align 8
  %sv_flags107 = getelementptr inbounds %struct.sv, %struct.sv* %125, i32 0, i32 2
  %126 = load i32, i32* %sv_flags107, align 4
  %and108 = and i32 %126, 536870912
  store i32 %and108, i32* %utf8, align 4
  br label %if.end.204

if.else:                                          ; preds = %land.lhs.true.82, %if.end.79
  %127 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %sv_flags109 = getelementptr inbounds %struct.sv, %struct.sv* %127, i32 0, i32 2
  %128 = load i32, i32* %sv_flags109, align 4
  %and110 = and i32 %128, 262144
  %cmp111 = icmp eq i32 %and110, 262144
  br i1 %cmp111, label %cond.true.113, label %cond.false.118

cond.true.113:                                    ; preds = %if.else
  %129 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %sv_any114 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 0
  %130 = load i8*, i8** %sv_any114, align 8
  %131 = bitcast i8* %130 to %struct.xpv*
  %xpv_cur115 = getelementptr inbounds %struct.xpv, %struct.xpv* %131, i32 0, i32 1
  %132 = load i64, i64* %xpv_cur115, align 8
  store i64 %132, i64* %len, align 8
  %133 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %sv_any116 = getelementptr inbounds %struct.sv, %struct.sv* %133, i32 0, i32 0
  %134 = load i8*, i8** %sv_any116, align 8
  %135 = bitcast i8* %134 to %struct.xpv*
  %xpv_pv117 = getelementptr inbounds %struct.xpv, %struct.xpv* %135, i32 0, i32 0
  %136 = load i8*, i8** %xpv_pv117, align 8
  br label %cond.end.120

cond.false.118:                                   ; preds = %if.else
  %137 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %call119 = call i8* @Perl_sv_2pv_flags(%struct.sv* %137, i64* %len, i32 2)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.113
  %cond121 = phi i8* [ %136, %cond.true.113 ], [ %call119, %cond.false.118 ]
  store i8* %cond121, i8** %beg, align 8
  %138 = load %struct.sv*, %struct.sv** %chunk.addr, align 8
  %sv_flags122 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 2
  %139 = load i32, i32* %sv_flags122, align 4
  %and123 = and i32 %139, 536870912
  store i32 %and123, i32* %utf8, align 4
  %140 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset124 = getelementptr inbounds %struct.p_state, %struct.p_state* %140, i32 0, i32 2
  %141 = load i64, i64* %offset124, align 8
  %cmp125 = icmp eq i64 %141, 0
  br i1 %cmp125, label %if.then.127, label %if.end.203

if.then.127:                                      ; preds = %cond.end.120
  %142 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %143 = load i8*, i8** %beg, align 8
  %144 = load i8*, i8** %beg, align 8
  %145 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %142, i32 6, i8* %143, i8* %144, i32 0, %struct.token_pos* null, i32 0, %struct.sv* %145)
  %146 = load i8, i8* @PL_dowarn, align 1
  %conv128 = zext i8 %146 to i32
  %and129 = and i32 %conv128, 1
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.159

land.lhs.true.131:                                ; preds = %if.then.127
  %147 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %argspec_entity_decode = getelementptr inbounds %struct.p_state, %struct.p_state* %147, i32 0, i32 31
  %148 = load i8, i8* %argspec_entity_decode, align 1
  %conv132 = sext i8 %148 to i32
  %tobool133 = icmp ne i32 %conv132, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.end.159

land.lhs.true.134:                                ; preds = %land.lhs.true.131
  %149 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode135 = getelementptr inbounds %struct.p_state, %struct.p_state* %149, i32 0, i32 28
  %150 = load i8, i8* %utf8_mode135, align 1
  %tobool136 = icmp ne i8 %150, 0
  br i1 %tobool136, label %if.end.159, label %land.lhs.true.137

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %151 = load i32, i32* %utf8, align 4
  %tobool138 = icmp ne i32 %151, 0
  br i1 %tobool138, label %lor.lhs.false, label %land.lhs.true.139

land.lhs.true.139:                                ; preds = %land.lhs.true.137
  %152 = load i64, i64* %len, align 8
  %cmp140 = icmp uge i64 %152, 3
  br i1 %cmp140, label %land.lhs.true.142, label %lor.lhs.false

land.lhs.true.142:                                ; preds = %land.lhs.true.139
  %153 = load i8*, i8** %beg, align 8
  %call143 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i64 3)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %lor.lhs.false, label %if.then.158

lor.lhs.false:                                    ; preds = %land.lhs.true.142, %land.lhs.true.139, %land.lhs.true.137
  %154 = load i32, i32* %utf8, align 4
  %tobool145 = icmp ne i32 %154, 0
  br i1 %tobool145, label %land.lhs.true.146, label %lor.lhs.false.152

land.lhs.true.146:                                ; preds = %lor.lhs.false
  %155 = load i64, i64* %len, align 8
  %cmp147 = icmp uge i64 %155, 6
  br i1 %cmp147, label %land.lhs.true.149, label %lor.lhs.false.152

land.lhs.true.149:                                ; preds = %land.lhs.true.146
  %156 = load i8*, i8** %beg, align 8
  %call150 = call i32 @strncmp(i8* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i64 6)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %lor.lhs.false.152, label %if.then.158

lor.lhs.false.152:                                ; preds = %land.lhs.true.149, %land.lhs.true.146, %lor.lhs.false
  %157 = load i32, i32* %utf8, align 4
  %tobool153 = icmp ne i32 %157, 0
  br i1 %tobool153, label %if.end.159, label %land.lhs.true.154

land.lhs.true.154:                                ; preds = %lor.lhs.false.152
  %158 = load i8*, i8** %beg, align 8
  %159 = load i64, i64* %len, align 8
  %call155 = call signext i8 @probably_utf8_chunk(i8* %158, i64 %159)
  %conv156 = sext i8 %call155 to i32
  %tobool157 = icmp ne i32 %conv156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %land.lhs.true.154, %land.lhs.true.149, %land.lhs.true.142
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %land.lhs.true.154, %lor.lhs.false.152, %land.lhs.true.134, %land.lhs.true.131, %if.then.127
  %160 = load i8, i8* @PL_dowarn, align 1
  %conv160 = zext i8 %160 to i32
  %and161 = and i32 %conv160, 1
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.172

land.lhs.true.163:                                ; preds = %if.end.159
  %161 = load i32, i32* %utf8, align 4
  %tobool164 = icmp ne i32 %161, 0
  br i1 %tobool164, label %land.lhs.true.165, label %if.end.172

land.lhs.true.165:                                ; preds = %land.lhs.true.163
  %162 = load i64, i64* %len, align 8
  %cmp166 = icmp uge i64 %162, 2
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.172

land.lhs.true.168:                                ; preds = %land.lhs.true.165
  %163 = load i8*, i8** %beg, align 8
  %call169 = call i32 @strncmp(i8* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i64 2)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %land.lhs.true.168
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %land.lhs.true.168, %land.lhs.true.165, %land.lhs.true.163, %if.end.159
  %164 = load i8, i8* @PL_dowarn, align 1
  %conv173 = zext i8 %164 to i32
  %and174 = and i32 %conv173, 1
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.202

if.then.176:                                      ; preds = %if.end.172
  %165 = load i32, i32* %utf8, align 4
  %tobool177 = icmp ne i32 %165, 0
  br i1 %tobool177, label %if.else.188, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.then.176
  %166 = load i64, i64* %len, align 8
  %cmp179 = icmp uge i64 %166, 4
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.188

land.lhs.true.181:                                ; preds = %land.lhs.true.178
  %167 = load i8*, i8** %beg, align 8
  %call182 = call i32 @strncmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i64 4)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %lor.lhs.false.184, label %if.then.187

lor.lhs.false.184:                                ; preds = %land.lhs.true.181
  %168 = load i8*, i8** %beg, align 8
  %call185 = call i32 @strncmp(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.else.188, label %if.then.187

if.then.187:                                      ; preds = %lor.lhs.false.184, %land.lhs.true.181
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.201

if.else.188:                                      ; preds = %lor.lhs.false.184, %land.lhs.true.178, %if.then.176
  %169 = load i32, i32* %utf8, align 4
  %tobool189 = icmp ne i32 %169, 0
  br i1 %tobool189, label %if.end.200, label %land.lhs.true.190

land.lhs.true.190:                                ; preds = %if.else.188
  %170 = load i64, i64* %len, align 8
  %cmp191 = icmp uge i64 %170, 2
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.200

land.lhs.true.193:                                ; preds = %land.lhs.true.190
  %171 = load i8*, i8** %beg, align 8
  %call194 = call i32 @strncmp(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i64 2)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %lor.lhs.false.196, label %if.then.199

lor.lhs.false.196:                                ; preds = %land.lhs.true.193
  %172 = load i8*, i8** %beg, align 8
  %call197 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i64 2)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %lor.lhs.false.196, %land.lhs.true.193
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %lor.lhs.false.196, %land.lhs.true.190, %if.else.188
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.187
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.172
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %cond.end.120
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %cond.end.104
  %173 = load i64, i64* %len, align 8
  %tobool205 = icmp ne i64 %173, 0
  br i1 %tobool205, label %if.end.207, label %if.then.206

if.then.206:                                      ; preds = %if.end.204
  br label %return

if.end.207:                                       ; preds = %if.end.204
  %174 = load i8*, i8** %beg, align 8
  %175 = load i64, i64* %len, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %add.ptr208, i8** %end, align 8
  %176 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %177 = load i8*, i8** %beg, align 8
  %178 = load i8*, i8** %end, align 8
  %179 = load i32, i32* %utf8, align 4
  %180 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call209 = call i8* @parse_buf(%struct.p_state* %176, i8* %177, i8* %178, i32 %179, %struct.sv* %180)
  store i8* %call209, i8** %s, align 8
  %181 = load i8*, i8** %s, align 8
  %182 = load i8*, i8** %end, align 8
  %cmp210 = icmp eq i8* %181, %182
  br i1 %cmp210, label %if.then.215, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %if.end.207
  %183 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %eof = getelementptr inbounds %struct.p_state, %struct.p_state* %183, i32 0, i32 6
  %184 = load i8, i8* %eof, align 1
  %conv213 = sext i8 %184 to i32
  %tobool214 = icmp ne i32 %conv213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.230

if.then.215:                                      ; preds = %lor.lhs.false.212, %if.end.207
  %185 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf216 = getelementptr inbounds %struct.p_state, %struct.p_state* %185, i32 0, i32 1
  %186 = load %struct.sv*, %struct.sv** %buf216, align 8
  %tobool217 = icmp ne %struct.sv* %186, null
  br i1 %tobool217, label %if.then.218, label %if.end.229

if.then.218:                                      ; preds = %if.then.215
  %187 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf219 = getelementptr inbounds %struct.p_state, %struct.p_state* %187, i32 0, i32 1
  %188 = load %struct.sv*, %struct.sv** %buf219, align 8
  %sv_flags220 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags220, align 4
  %and221 = and i32 %189, 1223753727
  store i32 %and221, i32* %sv_flags220, align 4
  %190 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf222 = getelementptr inbounds %struct.p_state, %struct.p_state* %190, i32 0, i32 1
  %191 = load %struct.sv*, %struct.sv** %buf222, align 8
  %sv_flags223 = getelementptr inbounds %struct.sv, %struct.sv* %191, i32 0, i32 2
  %192 = load i32, i32* %sv_flags223, align 4
  %and224 = and i32 %192, 2097152
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.218
  %193 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf226 = getelementptr inbounds %struct.p_state, %struct.p_state* %193, i32 0, i32 1
  %194 = load %struct.sv*, %struct.sv** %buf226, align 8
  %call227 = call i32 @Perl_sv_backoff(%struct.sv* %194)
  %tobool228 = icmp ne i32 %call227, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.218
  %195 = phi i1 [ false, %if.then.218 ], [ %tobool228, %land.rhs ]
  %land.ext = zext i1 %195 to i32
  br label %if.end.229

if.end.229:                                       ; preds = %land.end, %if.then.215
  br label %if.end.265

if.else.230:                                      ; preds = %lor.lhs.false.212
  %196 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf231 = getelementptr inbounds %struct.p_state, %struct.p_state* %196, i32 0, i32 1
  %197 = load %struct.sv*, %struct.sv** %buf231, align 8
  %tobool232 = icmp ne %struct.sv* %197, null
  br i1 %tobool232, label %if.then.233, label %if.else.252

if.then.233:                                      ; preds = %if.else.230
  %198 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf234 = getelementptr inbounds %struct.p_state, %struct.p_state* %198, i32 0, i32 1
  %199 = load %struct.sv*, %struct.sv** %buf234, align 8
  %sv_flags235 = getelementptr inbounds %struct.sv, %struct.sv* %199, i32 0, i32 2
  %200 = load i32, i32* %sv_flags235, align 4
  %and236 = and i32 %200, 118423552
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then.238, label %if.else.240

if.then.238:                                      ; preds = %if.then.233
  %201 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf239 = getelementptr inbounds %struct.p_state, %struct.p_state* %201, i32 0, i32 1
  %202 = load %struct.sv*, %struct.sv** %buf239, align 8
  %203 = load i8*, i8** %s, align 8
  call void @Perl_sv_chop(%struct.sv* %202, i8* %203)
  br label %if.end.251

if.else.240:                                      ; preds = %if.then.233
  %204 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf241 = getelementptr inbounds %struct.p_state, %struct.p_state* %204, i32 0, i32 1
  %205 = load %struct.sv*, %struct.sv** %buf241, align 8
  %206 = load i8*, i8** %s, align 8
  %207 = load i8*, i8** %end, align 8
  %208 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %207 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %208 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %205, i8* %206, i64 %sub.ptr.sub)
  %209 = load i32, i32* %utf8, align 4
  %tobool242 = icmp ne i32 %209, 0
  br i1 %tobool242, label %if.then.243, label %if.else.246

if.then.243:                                      ; preds = %if.else.240
  %210 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf244 = getelementptr inbounds %struct.p_state, %struct.p_state* %210, i32 0, i32 1
  %211 = load %struct.sv*, %struct.sv** %buf244, align 8
  %sv_flags245 = getelementptr inbounds %struct.sv, %struct.sv* %211, i32 0, i32 2
  %212 = load i32, i32* %sv_flags245, align 4
  %or = or i32 %212, 536870912
  store i32 %or, i32* %sv_flags245, align 4
  br label %if.end.250

if.else.246:                                      ; preds = %if.else.240
  %213 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf247 = getelementptr inbounds %struct.p_state, %struct.p_state* %213, i32 0, i32 1
  %214 = load %struct.sv*, %struct.sv** %buf247, align 8
  %sv_flags248 = getelementptr inbounds %struct.sv, %struct.sv* %214, i32 0, i32 2
  %215 = load i32, i32* %sv_flags248, align 4
  %and249 = and i32 %215, -536870913
  store i32 %and249, i32* %sv_flags248, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.246, %if.then.243
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.238
  br label %if.end.264

if.else.252:                                      ; preds = %if.else.230
  %216 = load i8*, i8** %s, align 8
  %217 = load i8*, i8** %end, align 8
  %218 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast253 = ptrtoint i8* %217 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %218 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %call256 = call %struct.sv* @Perl_newSVpv(i8* %216, i64 %sub.ptr.sub255)
  %219 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf257 = getelementptr inbounds %struct.p_state, %struct.p_state* %219, i32 0, i32 1
  store %struct.sv* %call256, %struct.sv** %buf257, align 8
  %220 = load i32, i32* %utf8, align 4
  %tobool258 = icmp ne i32 %220, 0
  br i1 %tobool258, label %if.then.259, label %if.end.263

if.then.259:                                      ; preds = %if.else.252
  %221 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %buf260 = getelementptr inbounds %struct.p_state, %struct.p_state* %221, i32 0, i32 1
  %222 = load %struct.sv*, %struct.sv** %buf260, align 8
  %sv_flags261 = getelementptr inbounds %struct.sv, %struct.sv* %222, i32 0, i32 2
  %223 = load i32, i32* %sv_flags261, align 4
  %or262 = or i32 %223, 536870912
  store i32 %or262, i32* %sv_flags261, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.259, %if.else.252
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.end.251
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.229
  br label %return

return:                                           ; preds = %if.end.265, %if.then.206, %if.end.73
  ret void
}

declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_eof(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %p_state = alloca %struct.p_state*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %13, %struct.sv** %self, align 8
  %14 = load %struct.sv*, %struct.sv** %self, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %14)
  store %struct.p_state* %call, %struct.p_state** %p_state, align 8
  %15 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing = getelementptr inbounds %struct.p_state, %struct.p_state* %15, i32 0, i32 5
  %16 = load i8, i8* %parsing, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %17 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %eof = getelementptr inbounds %struct.p_state, %struct.p_state* %17, i32 0, i32 6
  store i8 1, i8* %eof, align 1
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %18 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing11 = getelementptr inbounds %struct.p_state, %struct.p_state* %18, i32 0, i32 5
  store i8 1, i8* %parsing11, align 1
  %19 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %20 = load %struct.sv*, %struct.sv** %self, align 8
  call void @parse(%struct.p_state* %19, %struct.sv* null, %struct.sv* %20)
  %21 = load %struct.p_state*, %struct.p_state** %p_state, align 8
  %parsing12 = getelementptr inbounds %struct.p_state, %struct.p_state* %21, i32 0, i32 5
  store i8 0, i8* %parsing12, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %22 = load %struct.sv*, %struct.sv** %self, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i32 1
  store %struct.sv** %incdec.ptr14, %struct.sv*** %sp, align 8
  store %struct.sv* %22, %struct.sv** %incdec.ptr14, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %24, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_strict_comment(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %pstate = alloca %struct.p_state*, align 8
  %attr = alloca i8*, align 8
  %RETVAL = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %10 = load i32, i32* %any_i32, align 4
  store i32 %10, i32* %ix, align 4
  %11 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 12
  %14 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %14, i32 0, i32 0
  %15 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 8
  %16 = load i8*, i8** %xgv_name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %17, 0
  %idxprom = sext i32 %add9 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %19)
  store %struct.p_state* %call, %struct.p_state** %pstate, align 8
  %20 = load i32, i32* %ix, align 4
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.11
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.15
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %21 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %strict_comment = getelementptr inbounds %struct.p_state, %struct.p_state* %21, i32 0, i32 20
  store i8* %strict_comment, i8** %attr, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %22 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %strict_names = getelementptr inbounds %struct.p_state, %struct.p_state* %22, i32 0, i32 21
  store i8* %strict_names, i8** %attr, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %23 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %23, i32 0, i32 23
  store i8* %xml_mode, i8** %attr, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %24 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %unbroken_text = getelementptr inbounds %struct.p_state, %struct.p_state* %24, i32 0, i32 24
  store i8* %unbroken_text, i8** %attr, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %25 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %marked_sections = getelementptr inbounds %struct.p_state, %struct.p_state* %25, i32 0, i32 19
  store i8* %marked_sections, i8** %attr, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %26 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %attr_encoded = getelementptr inbounds %struct.p_state, %struct.p_state* %26, i32 0, i32 25
  store i8* %attr_encoded, i8** %attr, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %27 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %case_sensitive = getelementptr inbounds %struct.p_state, %struct.p_state* %27, i32 0, i32 26
  store i8* %case_sensitive, i8** %attr, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %28 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %strict_end = getelementptr inbounds %struct.p_state, %struct.p_state* %28, i32 0, i32 22
  store i8* %strict_end, i8** %attr, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %29 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %closing_plaintext = getelementptr inbounds %struct.p_state, %struct.p_state* %29, i32 0, i32 27
  store i8* %closing_plaintext, i8** %attr, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %30 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %utf8_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %30, i32 0, i32 28
  store i8* %utf8_mode, i8** %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %31 = load i32, i32* %ix, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i32 %31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb
  %32 = load i8*, i8** %attr, align 8
  %33 = load i8, i8* %32, align 1
  %conv19 = sext i8 %33 to i32
  %tobool = icmp ne i32 %conv19, 0
  %cond = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond, %struct.sv** %RETVAL, align 8
  %34 = load i32, i32* %items, align 4
  %cmp20 = icmp sgt i32 %34, 1
  br i1 %cmp20, label %if.then.22, label %if.end.89

if.then.22:                                       ; preds = %sw.epilog
  %35 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %35, 1
  %idxprom24 = sext i32 %add23 to i64
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom24
  %37 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %tobool26 = icmp ne %struct.sv* %37, null
  br i1 %tobool26, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.22
  br label %cond.end.86

cond.false:                                       ; preds = %if.then.22
  %38 = load i32, i32* %ax, align 4
  %add27 = add nsw i32 %38, 1
  %idxprom28 = sext i32 %add27 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom28
  %40 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags, align 4
  %and = and i32 %41, 262144
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.47

cond.true.31:                                     ; preds = %cond.false
  %42 = load i32, i32* %ax, align 4
  %add32 = add nsw i32 %42, 1
  %idxprom33 = sext i32 %add32 to i64
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx34 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idxprom33
  %44 = load %struct.sv*, %struct.sv** %arrayidx34, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any35, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  store %struct.xpv* %46, %struct.xpv** @PL_Xpv, align 8
  %tobool36 = icmp ne %struct.xpv* %46, null
  br i1 %tobool36, label %land.rhs, label %land.end.45

land.rhs:                                         ; preds = %cond.true.31
  %47 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %47, i32 0, i32 1
  %48 = load i64, i64* %xpv_cur, align 8
  %cmp37 = icmp ugt i64 %48, 1
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %49 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur39 = getelementptr inbounds %struct.xpv, %struct.xpv* %49, i32 0, i32 1
  %50 = load i64, i64* %xpv_cur39, align 8
  %tobool40 = icmp ne i64 %50, 0
  br i1 %tobool40, label %land.rhs.41, label %land.end

land.rhs.41:                                      ; preds = %lor.rhs
  %51 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %51, i32 0, i32 0
  %52 = load i8*, i8** %xpv_pv, align 8
  %53 = load i8, i8* %52, align 1
  %conv42 = sext i8 %53 to i32
  %cmp43 = icmp ne i32 %conv42, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.41, %lor.rhs
  %54 = phi i1 [ false, %lor.rhs ], [ %cmp43, %land.rhs.41 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %55 = phi i1 [ true, %land.rhs ], [ %54, %land.end ]
  br label %land.end.45

land.end.45:                                      ; preds = %lor.end, %cond.true.31
  %56 = phi i1 [ false, %cond.true.31 ], [ %55, %lor.end ]
  %cond46 = select i1 %56, i32 1, i32 0
  br label %cond.end.84

cond.false.47:                                    ; preds = %cond.false
  %57 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %57, 1
  %idxprom49 = sext i32 %add48 to i64
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %idxprom49
  %59 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %60, 65536
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.61

cond.true.54:                                     ; preds = %cond.false.47
  %61 = load i32, i32* %ax, align 4
  %add55 = add nsw i32 %61, 1
  %idxprom56 = sext i32 %add55 to i64
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx57 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i64 %idxprom56
  %63 = load %struct.sv*, %struct.sv** %arrayidx57, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any58, align 8
  %65 = bitcast i8* %64 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %65, i32 0, i32 3
  %66 = load i64, i64* %xiv_iv, align 8
  %cmp59 = icmp ne i64 %66, 0
  %conv60 = zext i1 %cmp59 to i32
  br label %cond.end.82

cond.false.61:                                    ; preds = %cond.false.47
  %67 = load i32, i32* %ax, align 4
  %add62 = add nsw i32 %67, 1
  %idxprom63 = sext i32 %add62 to i64
  %68 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx64 = getelementptr inbounds %struct.sv*, %struct.sv** %68, i64 %idxprom63
  %69 = load %struct.sv*, %struct.sv** %arrayidx64, align 8
  %sv_flags65 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %70, 131072
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.75

cond.true.68:                                     ; preds = %cond.false.61
  %71 = load i32, i32* %ax, align 4
  %add69 = add nsw i32 %71, 1
  %idxprom70 = sext i32 %add69 to i64
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx71 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i64 %idxprom70
  %73 = load %struct.sv*, %struct.sv** %arrayidx71, align 8
  %sv_any72 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any72, align 8
  %75 = bitcast i8* %74 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %75, i32 0, i32 4
  %76 = load double, double* %xnv_nv, align 8
  %cmp73 = fcmp une double %76, 0.000000e+00
  %conv74 = zext i1 %cmp73 to i32
  br label %cond.end

cond.false.75:                                    ; preds = %cond.false.61
  %77 = load i32, i32* %ax, align 4
  %add76 = add nsw i32 %77, 1
  %idxprom77 = sext i32 %add76 to i64
  %78 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx78 = getelementptr inbounds %struct.sv*, %struct.sv** %78, i64 %idxprom77
  %79 = load %struct.sv*, %struct.sv** %arrayidx78, align 8
  %call79 = call signext i8 @Perl_sv_2bool(%struct.sv* %79)
  %conv80 = sext i8 %call79 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.75, %cond.true.68
  %cond81 = phi i32 [ %conv74, %cond.true.68 ], [ %conv80, %cond.false.75 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end, %cond.true.54
  %cond83 = phi i32 [ %conv60, %cond.true.54 ], [ %cond81, %cond.end ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %land.end.45
  %cond85 = phi i32 [ %cond46, %land.end.45 ], [ %cond83, %cond.end.82 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true
  %cond87 = phi i32 [ 0, %cond.true ], [ %cond85, %cond.end.84 ]
  %conv88 = trunc i32 %cond87 to i8
  %80 = load i8*, i8** %attr, align 8
  store i8 %conv88, i8* %80, align 1
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.86, %sw.epilog
  %81 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %82 = load i32, i32* %ax, align 4
  %add90 = add nsw i32 %82, 0
  %idxprom91 = sext i32 %add90 to i64
  %83 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx92 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i64 %idxprom91
  store %struct.sv* %81, %struct.sv** %arrayidx92, align 8
  %84 = load i32, i32* %ax, align 4
  %add93 = add nsw i32 %84, 0
  %idxprom94 = sext i32 %add93 to i64
  %85 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx95 = getelementptr inbounds %struct.sv*, %struct.sv** %85, i64 %idxprom94
  %86 = load %struct.sv*, %struct.sv** %arrayidx95, align 8
  %call96 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %86)
  store i64 1, i64* %tmpXSoff, align 8
  %87 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %88 = load i32, i32* %ax, align 4
  %idx.ext97 = sext i32 %88 to i64
  %add.ptr98 = getelementptr inbounds %struct.sv*, %struct.sv** %87, i64 %idx.ext97
  %89 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %89, 1
  %add.ptr99 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr98, i64 %sub
  store %struct.sv** %add.ptr99, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_boolean_attribute_value(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %pstate = alloca %struct.p_state*, align 8
  %RETVAL = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %11)
  store %struct.p_state* %call, %struct.p_state** %pstate, align 8
  %12 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %bool_attr_val = getelementptr inbounds %struct.p_state, %struct.p_state* %12, i32 0, i32 29
  %13 = load %struct.sv*, %struct.sv** %bool_attr_val, align 8
  %tobool = icmp ne %struct.sv* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %bool_attr_val8 = getelementptr inbounds %struct.p_state, %struct.p_state* %14, i32 0, i32 29
  %15 = load %struct.sv*, %struct.sv** %bool_attr_val8, align 8
  %call9 = call %struct.sv* @Perl_newSVsv(%struct.sv* %15)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %call9, %cond.true ], [ @PL_sv_undef, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %RETVAL, align 8
  %16 = load i32, i32* %items, align 4
  %cmp10 = icmp sgt i32 %16, 1
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %cond.end
  %17 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %bool_attr_val13 = getelementptr inbounds %struct.p_state, %struct.p_state* %17, i32 0, i32 29
  %18 = load %struct.sv*, %struct.sv** %bool_attr_val13, align 8
  call void @Perl_sv_free(%struct.sv* %18)
  %19 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %19, 1
  %idxprom15 = sext i32 %add14 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom15
  %21 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %call17 = call %struct.sv* @Perl_newSVsv(%struct.sv* %21)
  %22 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %bool_attr_val18 = getelementptr inbounds %struct.p_state, %struct.p_state* %22, i32 0, i32 29
  store %struct.sv* %call17, %struct.sv** %bool_attr_val18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %cond.end
  %23 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %24 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %24, 0
  %idxprom21 = sext i32 %add20 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom21
  store %struct.sv* %23, %struct.sv** %arrayidx22, align 8
  %26 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %26, 0
  %idxprom24 = sext i32 %add23 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom24
  %28 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %call26 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %28)
  store i64 1, i64* %tmpXSoff, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %ax, align 4
  %idx.ext27 = sext i32 %30 to i64
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext27
  %31 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %31, 1
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr28, i64 %sub
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_ignore_tags(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %pstate = alloca %struct.p_state*, align 8
  %attr = alloca %struct.hv**, align 8
  %i = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %av = alloca %struct.av*, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  %svp = alloca %struct.sv**, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %10 = load i32, i32* %any_i32, align 4
  store i32 %10, i32* %ix, align 4
  %11 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 12
  %14 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %14, i32 0, i32 0
  %15 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 8
  %16 = load i8*, i8** %xgv_name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %17, 0
  %idxprom = sext i32 %add9 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %19)
  store %struct.p_state* %call, %struct.p_state** %pstate, align 8
  %20 = load i32, i32* %ix, align 4
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %21 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %report_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %21, i32 0, i32 32
  store %struct.hv** %report_tags, %struct.hv*** %attr, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %22 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %ignore_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %22, i32 0, i32 33
  store %struct.hv** %ignore_tags, %struct.hv*** %attr, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %23 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %ignore_elements = getelementptr inbounds %struct.p_state, %struct.p_state* %23, i32 0, i32 34
  store %struct.hv** %ignore_elements, %struct.hv*** %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %24 = load i32, i32* %ix, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i32 %24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb
  %25 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %25, i32 0, i32 6
  %26 = load i8, i8* %op_flags, align 1
  %conv12 = zext i8 %26 to i32
  %and = and i32 %conv12, 3
  %cmp13 = icmp eq i32 %and, 1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end.32

cond.false:                                       ; preds = %sw.epilog
  %27 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags15 = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 6
  %28 = load i8, i8* %op_flags15, align 1
  %conv16 = zext i8 %28 to i32
  %and17 = and i32 %conv16, 3
  %cmp18 = icmp eq i32 %and17, 2
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end.30

cond.false.21:                                    ; preds = %cond.false
  %29 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags22 = getelementptr inbounds %struct.op, %struct.op* %29, i32 0, i32 6
  %30 = load i8, i8* %op_flags22, align 1
  %conv23 = zext i8 %30 to i32
  %and24 = and i32 %conv23, 3
  %cmp25 = icmp eq i32 %and24, 3
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.21
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false.21
  %call29 = call i32 @Perl_block_gimme()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi i32 [ 1, %cond.true.27 ], [ %call29, %cond.false.28 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true.20
  %cond31 = phi i32 [ 0, %cond.true.20 ], [ %cond, %cond.end ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true
  %cond33 = phi i32 [ 128, %cond.true ], [ %cond31, %cond.end.30 ]
  %cmp34 = icmp ne i32 %cond33, 128
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %cond.end.32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %cond.end.32
  %31 = load i32, i32* %items, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %items, align 4
  %32 = load i32, i32* %items, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.38, label %if.else.81

if.then.38:                                       ; preds = %if.end.37
  %33 = load %struct.hv**, %struct.hv*** %attr, align 8
  %34 = load %struct.hv*, %struct.hv** %33, align 8
  %tobool39 = icmp ne %struct.hv* %34, null
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.38
  %35 = load %struct.hv**, %struct.hv*** %attr, align 8
  %36 = load %struct.hv*, %struct.hv** %35, align 8
  call void @Perl_hv_clear(%struct.hv* %36)
  br label %if.end.42

if.else:                                          ; preds = %if.then.38
  %call41 = call %struct.hv* @Perl_newHV()
  %37 = load %struct.hv**, %struct.hv*** %attr, align 8
  store %struct.hv* %call41, %struct.hv** %37, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.40
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end.42
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %items, align 4
  %cmp43 = icmp slt i32 %38, %39
  br i1 %cmp43, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %ax, align 4
  %41 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %41, 1
  %add46 = add nsw i32 %40, %add45
  %idxprom47 = sext i32 %add46 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx48 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom47
  %43 = load %struct.sv*, %struct.sv** %arrayidx48, align 8
  store %struct.sv* %43, %struct.sv** %sv, align 8
  %44 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 2
  %45 = load i32, i32* %sv_flags, align 4
  %and49 = and i32 %45, 524288
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.74

if.then.51:                                       ; preds = %for.body
  %46 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any52, align 8
  %48 = bitcast i8* %47 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %48, i32 0, i32 0
  %49 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %49, %struct.sv** %sv, align 8
  %50 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags53 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 2
  %51 = load i32, i32* %sv_flags53, align 4
  %and54 = and i32 %51, 255
  %cmp55 = icmp eq i32 %and54, 10
  br i1 %cmp55, label %if.then.57, label %if.else.72

if.then.57:                                       ; preds = %if.then.51
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  %53 = bitcast %struct.sv* %52 to %struct.av*
  store %struct.av* %53, %struct.av** %av, align 8
  %54 = load %struct.av*, %struct.av** %av, align 8
  %call58 = call i32 @Perl_av_len(%struct.av* %54)
  %add59 = add nsw i32 %call58, 1
  %conv60 = sext i32 %add59 to i64
  store i64 %conv60, i64* %len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.then.57
  %55 = load i64, i64* %j, align 8
  %56 = load i64, i64* %len, align 8
  %cmp62 = icmp ult i64 %55, %56
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.61
  %57 = load %struct.av*, %struct.av** %av, align 8
  %58 = load i64, i64* %j, align 8
  %conv65 = trunc i64 %58 to i32
  %call66 = call %struct.sv** @Perl_av_fetch(%struct.av* %57, i32 %conv65, i32 0)
  store %struct.sv** %call66, %struct.sv*** %svp, align 8
  %59 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool67 = icmp ne %struct.sv** %59, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %for.body.64
  %60 = load %struct.hv**, %struct.hv*** %attr, align 8
  %61 = load %struct.hv*, %struct.hv** %60, align 8
  %62 = load %struct.sv**, %struct.sv*** %svp, align 8
  %63 = load %struct.sv*, %struct.sv** %62, align 8
  %call69 = call %struct.sv* @Perl_newSViv(i64 0)
  %call70 = call %struct.he* @Perl_hv_store_ent(%struct.hv* %61, %struct.sv* %63, %struct.sv* %call69, i32 0)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %for.body.64
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %64 = load i64, i64* %j, align 8
  %inc = add i64 %64, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %if.end.73

if.else.72:                                       ; preds = %if.then.51
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %for.end
  br label %if.end.77

if.else.74:                                       ; preds = %for.body
  %65 = load %struct.hv**, %struct.hv*** %attr, align 8
  %66 = load %struct.hv*, %struct.hv** %65, align 8
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %call75 = call %struct.sv* @Perl_newSViv(i64 0)
  %call76 = call %struct.he* @Perl_hv_store_ent(%struct.hv* %66, %struct.sv* %67, %struct.sv* %call75, i32 0)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.end.73
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %68 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %68, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  br label %if.end.85

if.else.81:                                       ; preds = %if.end.37
  %69 = load %struct.hv**, %struct.hv*** %attr, align 8
  %70 = load %struct.hv*, %struct.hv** %69, align 8
  %tobool82 = icmp ne %struct.hv* %70, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.81
  %71 = load %struct.hv**, %struct.hv*** %attr, align 8
  %72 = load %struct.hv*, %struct.hv** %71, align 8
  %73 = bitcast %struct.hv* %72 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %73)
  %74 = load %struct.hv**, %struct.hv*** %attr, align 8
  store %struct.hv* null, %struct.hv** %74, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.81
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.end.80
  store i64 0, i64* %tmpXSoff, align 8
  %75 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %76 = load i32, i32* %ax, align 4
  %idx.ext86 = sext i32 %76 to i64
  %add.ptr87 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i64 %idx.ext86
  %77 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %77, 1
  %add.ptr88 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr87, i64 %sub
  store %struct.sv** %add.ptr88, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @Perl_block_gimme() #1

declare void @Perl_hv_clear(%struct.hv*) #1

declare %struct.hv* @Perl_newHV() #1

declare i32 @Perl_av_len(%struct.av*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare %struct.he* @Perl_hv_store_ent(%struct.hv*, %struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define void @XS_HTML__Parser_handler(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %pstate = alloca %struct.p_state*, align 8
  %eventname = alloca %struct.sv*, align 8
  %name_len = alloca i64, align 8
  %name = alloca i8*, align 8
  %event = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca %struct.p_handler*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.p_state* @get_pstate_hv(%struct.sv* %13)
  store %struct.p_state* %call, %struct.p_state** %pstate, align 8
  %14 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %14, 1
  %idxprom11 = sext i32 %add10 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom11
  %16 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  store %struct.sv* %16, %struct.sv** %eventname, align 8
  %17 = load %struct.sv*, %struct.sv** %eventname, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and = and i32 %18, 262144
  %cmp13 = icmp eq i32 %and, 262144
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load %struct.sv*, %struct.sv** %eventname, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 1
  %22 = load i64, i64* %xpv_cur, align 8
  store i64 %22, i64* %name_len, align 8
  %23 = load %struct.sv*, %struct.sv** %eventname, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any15, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 0
  %26 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load %struct.sv*, %struct.sv** %eventname, align 8
  %call16 = call i8* @Perl_sv_2pv_flags(%struct.sv* %27, i64* %name_len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ %call16, %cond.false ]
  store i8* %cond, i8** %name, align 8
  store i32 -1, i32* %event, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %28 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %28, 9
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %name, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds [9 x i8*], [9 x i8*]* @event_id_str, i32 0, i64 %idxprom19
  %31 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strcmp(i8* %29, i8* %31)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  store i32 %32, i32* %event, align 4
  br label %for.end

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %for.cond
  %34 = load i32, i32* %event, align 4
  %cmp24 = icmp slt i32 %34, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end
  %35 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* %35)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %for.end
  %36 = load i32, i32* %event, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %handlers = getelementptr inbounds %struct.p_state, %struct.p_state* %37, i32 0, i32 30
  %arrayidx29 = getelementptr inbounds [9 x %struct.p_handler], [9 x %struct.p_handler]* %handlers, i32 0, i64 %idxprom28
  store %struct.p_handler* %arrayidx29, %struct.p_handler** %h, align 8
  %38 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb = getelementptr inbounds %struct.p_handler, %struct.p_handler* %38, i32 0, i32 0
  %39 = load %struct.sv*, %struct.sv** %cb, align 8
  %tobool30 = icmp ne %struct.sv* %39, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.27
  %40 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb32 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %40, i32 0, i32 0
  %41 = load %struct.sv*, %struct.sv** %cb32, align 8
  %sv_flags33 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags33, align 4
  %and34 = and i32 %42, 255
  %cmp35 = icmp eq i32 %and34, 10
  br i1 %cmp35, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %if.then.31
  %43 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb38 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %43, i32 0, i32 0
  %44 = load %struct.sv*, %struct.sv** %cb38, align 8
  %call39 = call %struct.sv* @Perl_newRV(%struct.sv* %44)
  %call40 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call39)
  br label %cond.end.45

cond.false.41:                                    ; preds = %if.then.31
  %45 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb42 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %45, i32 0, i32 0
  %46 = load %struct.sv*, %struct.sv** %cb42, align 8
  %call43 = call %struct.sv* @Perl_newSVsv(%struct.sv* %46)
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.37
  %cond46 = phi %struct.sv* [ %call40, %cond.true.37 ], [ %call44, %cond.false.41 ]
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %cond46, %struct.sv** %incdec.ptr47, align 8
  br label %if.end.49

if.else:                                          ; preds = %if.end.27
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr48 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 1
  store %struct.sv** %incdec.ptr48, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %cond.end.45
  %49 = load i32, i32* %items, align 4
  %cmp50 = icmp sgt i32 %49, 3
  br i1 %cmp50, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %if.end.49
  %50 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec = getelementptr inbounds %struct.p_handler, %struct.p_handler* %50, i32 0, i32 1
  %51 = load %struct.sv*, %struct.sv** %argspec, align 8
  call void @Perl_sv_free(%struct.sv* %51)
  %52 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec53 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %52, i32 0, i32 1
  store %struct.sv* null, %struct.sv** %argspec53, align 8
  %53 = load i32, i32* %ax, align 4
  %add54 = add nsw i32 %53, 3
  %idxprom55 = sext i32 %add54 to i64
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx56 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom55
  %55 = load %struct.sv*, %struct.sv** %arrayidx56, align 8
  %56 = load %struct.p_state*, %struct.p_state** %pstate, align 8
  %call57 = call %struct.sv* @argspec_compile(%struct.sv* %55, %struct.p_state* %56)
  %57 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec58 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %57, i32 0, i32 1
  store %struct.sv* %call57, %struct.sv** %argspec58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.52, %if.end.49
  %58 = load i32, i32* %items, align 4
  %cmp60 = icmp sgt i32 %58, 2
  br i1 %cmp60, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.59
  %59 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb63 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %59, i32 0, i32 0
  %60 = load %struct.sv*, %struct.sv** %cb63, align 8
  call void @Perl_sv_free(%struct.sv* %60)
  %61 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb64 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %61, i32 0, i32 0
  store %struct.sv* null, %struct.sv** %cb64, align 8
  %62 = load i32, i32* %ax, align 4
  %add65 = add nsw i32 %62, 2
  %idxprom66 = sext i32 %add65 to i64
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx67 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i64 %idxprom66
  %64 = load %struct.sv*, %struct.sv** %arrayidx67, align 8
  %call68 = call %struct.sv* @check_handler(%struct.sv* %64)
  %65 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb69 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %65, i32 0, i32 0
  store %struct.sv* %call68, %struct.sv** %cb69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.62, %if.end.59
  %66 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %66, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal %struct.sv* @argspec_compile(%struct.sv* %src, %struct.p_state* %p_state) #0 {
entry:
  %src.addr = alloca %struct.sv*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %argspec = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %end = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %c = alloca i8, align 1
  %name = alloca i8*, align 8
  %a = alloca i32, align 4
  %arg_name = alloca i8**, align 8
  %c83 = alloca i8, align 1
  %string_beg = alloca i8*, align 8
  %len151 = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  store %struct.sv* %src, %struct.sv** %src.addr, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %argspec, align 8
  %0 = load %struct.sv*, %struct.sv** %src.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %src.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %src.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %src.addr, align 8
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %11 = load i8*, i8** %s, align 8
  %12 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %end, align 8
  %13 = load %struct.sv*, %struct.sv** %src.addr, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %14, 536870912
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %15 = load %struct.sv*, %struct.sv** %argspec, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags5, align 4
  %or = or i32 %16, 536870912
  store i32 %or, i32* %sv_flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom = zext i8 %18 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %and6 = and i32 %conv, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %conv8 = sext i8 %22 to i32
  %cmp9 = icmp eq i32 %conv8, 64
  br i1 %cmp9, label %if.then.11, label %if.end.38

if.then.11:                                       ; preds = %while.end
  %23 = load i8*, i8** %s, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr12, i8** %tmp, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.19, %if.then.11
  %24 = load i8*, i8** %tmp, align 8
  %25 = load i8, i8* %24, align 1
  %idxprom14 = zext i8 %25 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom14
  %26 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %26 to i32
  %and17 = and i32 %conv16, 1
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %while.body.19, label %while.end.21

while.body.19:                                    ; preds = %while.cond.13
  %27 = load i8*, i8** %tmp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr20, i8** %tmp, align 8
  br label %while.cond.13

while.end.21:                                     ; preds = %while.cond.13
  %28 = load i8*, i8** %tmp, align 8
  %29 = load i8, i8* %28, align 1
  %conv22 = sext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 123
  br i1 %cmp23, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %while.end.21
  store i8 22, i8* %c, align 1
  %30 = load %struct.sv*, %struct.sv** %argspec, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %30, i8* %c, i64 1, i32 2)
  %31 = load i8*, i8** %tmp, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %tmp, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.34, %if.then.25
  %32 = load i8*, i8** %tmp, align 8
  %33 = load i8, i8* %32, align 1
  %idxprom29 = zext i8 %33 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom29
  %34 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %34 to i32
  %and32 = and i32 %conv31, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %while.body.34, label %while.end.36

while.body.34:                                    ; preds = %while.cond.28
  %35 = load i8*, i8** %tmp, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr35, i8** %tmp, align 8
  br label %while.cond.28

while.end.36:                                     ; preds = %while.cond.28
  %36 = load i8*, i8** %tmp, align 8
  store i8* %36, i8** %s, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %while.end.36, %while.end.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %while.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.end.231, %if.end.38
  %37 = load i8*, i8** %s, align 8
  %38 = load i8*, i8** %end, align 8
  %cmp40 = icmp ult i8* %37, %38
  br i1 %cmp40, label %while.body.42, label %while.end.232

while.body.42:                                    ; preds = %while.cond.39
  %39 = load i8*, i8** %s, align 8
  %40 = load i8, i8* %39, align 1
  %idxprom43 = zext i8 %40 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom43
  %41 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %41 to i32
  %and46 = and i32 %conv45, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.42
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv48 = sext i8 %43 to i32
  %cmp49 = icmp eq i32 %conv48, 64
  br i1 %cmp49, label %if.then.51, label %if.else.120

if.then.51:                                       ; preds = %lor.lhs.false, %while.body.42
  %44 = load i8*, i8** %s, align 8
  store i8* %44, i8** %name, align 8
  store i32 1, i32* %a, align 4
  %45 = load i8*, i8** %s, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr55, i8** %s, align 8
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.62, %if.then.51
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %idxprom57 = zext i8 %47 to i64
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom57
  %48 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %48 to i32
  %and60 = and i32 %conv59, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %while.body.62, label %while.end.64

while.body.62:                                    ; preds = %while.cond.56
  %49 = load i8*, i8** %s, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr63, i8** %s, align 8
  br label %while.cond.56

while.end.64:                                     ; preds = %while.cond.56
  store i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @argname, i32 0, i32 0), i8*** %arg_name, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.64
  %50 = load i32, i32* %a, align 4
  %cmp65 = icmp slt i32 %50, 21
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i8**, i8*** %arg_name, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %name, align 8
  %54 = load i8*, i8** %s, align 8
  %55 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call67 = call i32 @strncmp(i8* %52, i8* %53, i64 %sub.ptr.sub)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.77, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %56 = load i8*, i8** %s, align 8
  %57 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast69 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %57 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %58 = load i8**, i8*** %arg_name, align 8
  %59 = load i8*, i8** %58, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %59, i64 %sub.ptr.sub71
  %60 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %60 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.77:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %61 = load i32, i32* %a, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %a, align 4
  %62 = load i8**, i8*** %arg_name, align 8
  %incdec.ptr78 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %incdec.ptr78, i8*** %arg_name, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.76, %for.cond
  %63 = load i32, i32* %a, align 4
  %cmp79 = icmp slt i32 %63, 21
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %for.end
  %64 = load i32, i32* %a, align 4
  %conv84 = trunc i32 %64 to i8
  store i8 %conv84, i8* %c83, align 1
  %65 = load %struct.sv*, %struct.sv** %argspec, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %65, i8* %c83, i64 1, i32 2)
  %66 = load i32, i32* %a, align 4
  %cmp85 = icmp eq i32 %66, 17
  br i1 %cmp85, label %if.then.90, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.then.81
  %67 = load i32, i32* %a, align 4
  %cmp88 = icmp eq i32 %67, 18
  br i1 %cmp88, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %lor.lhs.false.87, %if.then.81
  %68 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line = getelementptr inbounds %struct.p_state, %struct.p_state* %68, i32 0, i32 3
  %69 = load i64, i64* %line, align 8
  %tobool91 = icmp ne i64 %69, 0
  br i1 %tobool91, label %if.end.94, label %if.then.92

if.then.92:                                       ; preds = %if.then.90
  %70 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line93 = getelementptr inbounds %struct.p_state, %struct.p_state* %70, i32 0, i32 3
  store i64 1, i64* %line93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.then.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false.87
  %71 = load i32, i32* %a, align 4
  %cmp96 = icmp eq i32 %71, 13
  br i1 %cmp96, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %if.end.95
  %72 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text = getelementptr inbounds %struct.p_state, %struct.p_state* %72, i32 0, i32 16
  %73 = load %struct.sv*, %struct.sv** %skipped_text, align 8
  %tobool99 = icmp ne %struct.sv* %73, null
  br i1 %tobool99, label %if.end.103, label %if.then.100

if.then.100:                                      ; preds = %if.then.98
  %call101 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), i64 0)
  %74 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text102 = getelementptr inbounds %struct.p_state, %struct.p_state* %74, i32 0, i32 16
  store %struct.sv* %call101, %struct.sv** %skipped_text102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.then.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.95
  %75 = load i32, i32* %a, align 4
  %cmp105 = icmp eq i32 %75, 7
  br i1 %cmp105, label %if.then.113, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.end.104
  %76 = load i32, i32* %a, align 4
  %cmp108 = icmp eq i32 %76, 8
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.107
  %77 = load i32, i32* %a, align 4
  %cmp111 = icmp eq i32 %77, 11
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %lor.lhs.false.110, %lor.lhs.false.107, %if.end.104
  %78 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %argspec_entity_decode = getelementptr inbounds %struct.p_state, %struct.p_state* %78, i32 0, i32 31
  %79 = load i8, i8* %argspec_entity_decode, align 1
  %inc114 = add i8 %79, 1
  store i8 %inc114, i8* %argspec_entity_decode, align 1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %lor.lhs.false.110
  br label %if.end.119

if.else:                                          ; preds = %for.end
  %80 = load i8*, i8** %s, align 8
  %81 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast116 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %81 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %82 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.99, i32 0, i32 0), i64 %sub.ptr.sub118, i8* %82)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %if.end.115
  br label %if.end.177

if.else.120:                                      ; preds = %lor.lhs.false
  %83 = load i8*, i8** %s, align 8
  %84 = load i8, i8* %83, align 1
  %conv121 = sext i8 %84 to i32
  %cmp122 = icmp eq i32 %conv121, 34
  br i1 %cmp122, label %if.then.128, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.else.120
  %85 = load i8*, i8** %s, align 8
  %86 = load i8, i8* %85, align 1
  %conv125 = sext i8 %86 to i32
  %cmp126 = icmp eq i32 %conv125, 39
  br i1 %cmp126, label %if.then.128, label %if.else.175

if.then.128:                                      ; preds = %lor.lhs.false.124, %if.else.120
  %87 = load i8*, i8** %s, align 8
  store i8* %87, i8** %string_beg, align 8
  %88 = load i8*, i8** %s, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr130, i8** %s, align 8
  br label %while.cond.131

while.cond.131:                                   ; preds = %while.body.142, %if.then.128
  %89 = load i8*, i8** %s, align 8
  %90 = load i8*, i8** %end, align 8
  %cmp132 = icmp ult i8* %89, %90
  br i1 %cmp132, label %land.lhs.true.134, label %land.end

land.lhs.true.134:                                ; preds = %while.cond.131
  %91 = load i8*, i8** %s, align 8
  %92 = load i8, i8* %91, align 1
  %conv135 = sext i8 %92 to i32
  %93 = load i8*, i8** %string_beg, align 8
  %94 = load i8, i8* %93, align 1
  %conv136 = sext i8 %94 to i32
  %cmp137 = icmp ne i32 %conv135, %conv136
  br i1 %cmp137, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.134
  %95 = load i8*, i8** %s, align 8
  %96 = load i8, i8* %95, align 1
  %conv139 = sext i8 %96 to i32
  %cmp140 = icmp ne i32 %conv139, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.134, %while.cond.131
  %97 = phi i1 [ false, %land.lhs.true.134 ], [ false, %while.cond.131 ], [ %cmp140, %land.rhs ]
  br i1 %97, label %while.body.142, label %while.end.144

while.body.142:                                   ; preds = %land.end
  %98 = load i8*, i8** %s, align 8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr143, i8** %s, align 8
  br label %while.cond.131

while.end.144:                                    ; preds = %land.end
  %99 = load i8*, i8** %s, align 8
  %100 = load i8, i8* %99, align 1
  %conv145 = sext i8 %100 to i32
  %101 = load i8*, i8** %string_beg, align 8
  %102 = load i8, i8* %101, align 1
  %conv146 = sext i8 %102 to i32
  %cmp147 = icmp eq i32 %conv145, %conv146
  br i1 %cmp147, label %if.then.149, label %if.else.167

if.then.149:                                      ; preds = %while.end.144
  %103 = load i8*, i8** %s, align 8
  %104 = load i8*, i8** %string_beg, align 8
  %sub.ptr.lhs.cast152 = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %104 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %sub = sub nsw i64 %sub.ptr.sub154, 1
  %conv155 = trunc i64 %sub to i32
  store i32 %conv155, i32* %len151, align 4
  %105 = load i32, i32* %len151, align 4
  %cmp157 = icmp sgt i32 %105, 255
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.then.149
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.then.149
  %arrayidx161 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 21, i8* %arrayidx161, align 1
  %106 = load i32, i32* %len151, align 4
  %conv162 = trunc i32 %106 to i8
  %arrayidx163 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 %conv162, i8* %arrayidx163, align 1
  %107 = load %struct.sv*, %struct.sv** %argspec, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  call void @Perl_sv_catpvn_flags(%struct.sv* %107, i8* %arraydecay, i64 2, i32 2)
  %108 = load %struct.sv*, %struct.sv** %argspec, align 8
  %109 = load i8*, i8** %string_beg, align 8
  %add.ptr164 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i32, i32* %len151, align 4
  %conv165 = sext i32 %110 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %108, i8* %add.ptr164, i64 %conv165, i32 2)
  %111 = load i8*, i8** %s, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr166, i8** %s, align 8
  br label %if.end.174

if.else.167:                                      ; preds = %while.end.144
  %112 = load i8*, i8** %s, align 8
  %113 = load i8, i8* %112, align 1
  %conv168 = sext i8 %113 to i32
  %cmp169 = icmp eq i32 %conv168, 92
  br i1 %cmp169, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %if.else.167
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.173

if.else.172:                                      ; preds = %if.else.167
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.172, %if.then.171
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.160
  br label %if.end.176

if.else.175:                                      ; preds = %lor.lhs.false.124
  %114 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* %114)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.175, %if.end.174
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.119
  br label %while.cond.178

while.cond.178:                                   ; preds = %while.body.184, %if.end.177
  %115 = load i8*, i8** %s, align 8
  %116 = load i8, i8* %115, align 1
  %idxprom179 = zext i8 %116 to i64
  %arrayidx180 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom179
  %117 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %117 to i32
  %and182 = and i32 %conv181, 1
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %while.body.184, label %while.end.186

while.body.184:                                   ; preds = %while.cond.178
  %118 = load i8*, i8** %s, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr185, i8** %s, align 8
  br label %while.cond.178

while.end.186:                                    ; preds = %while.cond.178
  %119 = load i8*, i8** %s, align 8
  %120 = load i8, i8* %119, align 1
  %conv187 = sext i8 %120 to i32
  %cmp188 = icmp eq i32 %conv187, 125
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.212

land.lhs.true.190:                                ; preds = %while.end.186
  %121 = load %struct.sv*, %struct.sv** %argspec, align 8
  %sv_any191 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 0
  %122 = load i8*, i8** %sv_any191, align 8
  %123 = bitcast i8* %122 to %struct.xpv*
  %xpv_pv192 = getelementptr inbounds %struct.xpv, %struct.xpv* %123, i32 0, i32 0
  %124 = load i8*, i8** %xpv_pv192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %125 to i32
  %cmp195 = icmp eq i32 %conv194, 22
  br i1 %cmp195, label %if.then.197, label %if.end.212

if.then.197:                                      ; preds = %land.lhs.true.190
  %126 = load i8*, i8** %s, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr198, i8** %s, align 8
  br label %while.cond.199

while.cond.199:                                   ; preds = %while.body.205, %if.then.197
  %127 = load i8*, i8** %s, align 8
  %128 = load i8, i8* %127, align 1
  %idxprom200 = zext i8 %128 to i64
  %arrayidx201 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom200
  %129 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %129 to i32
  %and203 = and i32 %conv202, 1
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %while.body.205, label %while.end.207

while.body.205:                                   ; preds = %while.cond.199
  %130 = load i8*, i8** %s, align 8
  %incdec.ptr206 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr206, i8** %s, align 8
  br label %while.cond.199

while.end.207:                                    ; preds = %while.cond.199
  %131 = load i8*, i8** %s, align 8
  %132 = load i8*, i8** %end, align 8
  %cmp208 = icmp ult i8* %131, %132
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %while.end.207
  %133 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.104, i32 0, i32 0), i8* %133)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %while.end.207
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %land.lhs.true.190, %while.end.186
  %134 = load i8*, i8** %s, align 8
  %135 = load i8*, i8** %end, align 8
  %cmp213 = icmp eq i8* %134, %135
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.212
  br label %while.end.232

if.end.216:                                       ; preds = %if.end.212
  %136 = load i8*, i8** %s, align 8
  %137 = load i8, i8* %136, align 1
  %conv217 = sext i8 %137 to i32
  %cmp218 = icmp ne i32 %conv217, 44
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.216
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.216
  %138 = load i8*, i8** %s, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr222, i8** %s, align 8
  br label %while.cond.223

while.cond.223:                                   ; preds = %while.body.229, %if.end.221
  %139 = load i8*, i8** %s, align 8
  %140 = load i8, i8* %139, align 1
  %idxprom224 = zext i8 %140 to i64
  %arrayidx225 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom224
  %141 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %141 to i32
  %and227 = and i32 %conv226, 1
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %while.body.229, label %while.end.231

while.body.229:                                   ; preds = %while.cond.223
  %142 = load i8*, i8** %s, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr230, i8** %s, align 8
  br label %while.cond.223

while.end.231:                                    ; preds = %while.cond.223
  br label %while.cond.39

while.end.232:                                    ; preds = %if.then.215, %while.cond.39
  %143 = load %struct.sv*, %struct.sv** %argspec, align 8
  ret %struct.sv* %143
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @check_handler(%struct.sv* %h) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %h.addr = alloca %struct.sv*, align 8
  %myref = alloca %struct.sv*, align 8
  store %struct.sv* %h, %struct.sv** %h.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %h.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %h.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %4, i32 0, i32 0
  %5 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %5, %struct.sv** %myref, align 8
  %6 = load %struct.sv*, %struct.sv** %myref, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %7, 255
  %cmp = icmp eq i32 %and2, 12
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.sv*, %struct.sv** %h.addr, align 8
  %call = call %struct.sv* @Perl_newSVsv(%struct.sv* %8)
  store %struct.sv* %call, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.sv*, %struct.sv** %myref, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %10, 255
  %cmp6 = icmp eq i32 %and5, 10
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.sv*, %struct.sv** %myref, align 8
  store %struct.sv* %11, %struct.sv** @PL_Sv, align 8
  %12 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool8 = icmp ne %struct.sv* %12, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.7
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 1
  %14 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool9 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.7
  %15 = phi i1 [ false, %if.then.7 ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  %16 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %16, %struct.sv** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.106, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %17 = load %struct.sv*, %struct.sv** %h.addr, align 8
  %sv_flags12 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags12, align 4
  %and13 = and i32 %18, 118423552
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %19 = load %struct.sv*, %struct.sv** %h.addr, align 8
  %call15 = call %struct.sv* @Perl_newSVsv(%struct.sv* %19)
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %call15, %cond.true ], [ null, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %retval
  br label %return

return:                                           ; preds = %cond.end, %land.end, %if.then.3
  %20 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %20
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Entities_decode_entities(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %entity2char = alloca %struct.hv*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext6 = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idx.neg
  store %struct.sv** %add.ptr7, %struct.sv*** %sp, align 8
  %call = call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i32 0)
  store %struct.hv* %call, %struct.hv** %entity2char, align 8
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 6
  %11 = load i8, i8* %op_flags, align 1
  %conv8 = zext i8 %11 to i32
  %and = and i32 %conv8, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.27

cond.false:                                       ; preds = %entry
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 6
  %13 = load i8, i8* %op_flags10, align 1
  %conv11 = zext i8 %13 to i32
  %and12 = and i32 %conv11, 3
  %cmp13 = icmp eq i32 %and12, 2
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end.25

cond.false.16:                                    ; preds = %cond.false
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags17 = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 6
  %15 = load i8, i8* %op_flags17, align 1
  %conv18 = zext i8 %15 to i32
  %and19 = and i32 %conv18, 3
  %cmp20 = icmp eq i32 %and19, 3
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false.16
  br label %cond.end

cond.false.23:                                    ; preds = %cond.false.16
  %call24 = call i32 @Perl_block_gimme()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.23, %cond.true.22
  %cond = phi i32 [ 1, %cond.true.22 ], [ %call24, %cond.false.23 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end, %cond.true.15
  %cond26 = phi i32 [ 0, %cond.true.15 ], [ %cond, %cond.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true
  %cond28 = phi i32 [ 128, %cond.true ], [ %cond26, %cond.end.25 ]
  %cmp29 = icmp eq i32 %cond28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.27
  %16 = load i32, i32* %items, align 4
  %cmp31 = icmp sgt i32 %16, 1
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %items, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end.27
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %items, align 4
  %cmp33 = icmp slt i32 %17, %18
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags35 = getelementptr inbounds %struct.op, %struct.op* %19, i32 0, i32 6
  %20 = load i8, i8* %op_flags35, align 1
  %conv36 = zext i8 %20 to i32
  %and37 = and i32 %conv36, 3
  %cmp38 = icmp eq i32 %and37, 1
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %for.body
  br label %cond.end.61

cond.false.41:                                    ; preds = %for.body
  %21 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags42 = getelementptr inbounds %struct.op, %struct.op* %21, i32 0, i32 6
  %22 = load i8, i8* %op_flags42, align 1
  %conv43 = zext i8 %22 to i32
  %and44 = and i32 %conv43, 3
  %cmp45 = icmp eq i32 %and44, 2
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.41
  br label %cond.end.59

cond.false.48:                                    ; preds = %cond.false.41
  %23 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags49 = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 6
  %24 = load i8, i8* %op_flags49, align 1
  %conv50 = zext i8 %24 to i32
  %and51 = and i32 %conv50, 3
  %cmp52 = icmp eq i32 %and51, 3
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false.48
  br label %cond.end.57

cond.false.55:                                    ; preds = %cond.false.48
  %call56 = call i32 @Perl_block_gimme()
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.54
  %cond58 = phi i32 [ 1, %cond.true.54 ], [ %call56, %cond.false.55 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.47
  %cond60 = phi i32 [ 0, %cond.true.47 ], [ %cond58, %cond.end.57 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.40
  %cond62 = phi i32 [ 128, %cond.true.40 ], [ %cond60, %cond.end.59 ]
  %cmp63 = icmp ne i32 %cond62, 128
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %cond.end.61
  %25 = load i32, i32* %ax, align 4
  %26 = load i32, i32* %i, align 4
  %add66 = add nsw i32 %25, %26
  %idxprom = sext i32 %add66 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom
  %28 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call67 = call %struct.sv* @Perl_newSVsv(%struct.sv* %28)
  %call68 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67)
  %29 = load i32, i32* %ax, align 4
  %30 = load i32, i32* %i, align 4
  %add69 = add nsw i32 %29, %30
  %idxprom70 = sext i32 %add69 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx71 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom70
  store %struct.sv* %call68, %struct.sv** %arrayidx71, align 8
  br label %if.end.78

if.else:                                          ; preds = %cond.end.61
  %32 = load i32, i32* %ax, align 4
  %33 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %32, %33
  %idxprom73 = sext i32 %add72 to i64
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx74 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idxprom73
  %35 = load %struct.sv*, %struct.sv** %arrayidx74, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags, align 4
  %and75 = and i32 %36, 8388608
  %tobool = icmp ne i32 %and75, 0
  br i1 %tobool, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.65
  %37 = load i32, i32* %ax, align 4
  %38 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %37, %38
  %idxprom80 = sext i32 %add79 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx81 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom80
  %40 = load %struct.sv*, %struct.sv** %arrayidx81, align 8
  %41 = load %struct.hv*, %struct.hv** %entity2char, align 8
  %call82 = call %struct.sv* @decode_entities(%struct.sv* %40, %struct.hv* %41, i8 signext 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %items, align 4
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext83 = sext i32 %43 to i64
  %add.ptr84 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i64 %idx.ext83
  store %struct.sv** %add.ptr84, %struct.sv*** %sp, align 8
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %45, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @decode_entities(%struct.sv* %sv, %struct.hv* %entity2char, i8 signext %allow_unterminated) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %entity2char.addr = alloca %struct.hv*, align 8
  %allow_unterminated.addr = alloca i8, align 1
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %end = alloca i8*, align 8
  %ent_start = alloca i8*, align 8
  %repl = alloca i8*, align 8
  %repl_len = alloca i64, align 8
  %buf = alloca [13 x i8], align 1
  %repl_utf8 = alloca i32, align 4
  %high_surrogate = alloca i32, align 4
  %num = alloca i64, align 8
  %prev = alloca i64, align 8
  %ok = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %tmp64 = alloca i8*, align 8
  %ent_name = alloca i8*, align 8
  %svp = alloca %struct.sv**, align 8
  %ss = alloca i8*, align 8
  %repl_allocated = alloca i8*, align 8
  %before_gap_len = alloca i64, align 8
  %before_gap = alloca i8*, align 8
  %after_gap_len = alloca i64, align 8
  %after_gap = alloca i8*, align 8
  %tmp295 = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.hv* %entity2char, %struct.hv** %entity2char.addr, align 8
  store i8 %allow_unterminated, i8* %allow_unterminated.addr, align 1
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %11 = load i8*, i8** %s, align 8
  store i8* %11, i8** %t, align 8
  %12 = load i8*, i8** %s, align 8
  %13 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %add.ptr, i8** %end, align 8
  store i32 0, i32* %high_surrogate, align 4
  store i32 0, i32* %repl_utf8, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.293, %if.then, %cond.end
  %14 = load i8*, i8** %s, align 8
  %15 = load i8*, i8** %end, align 8
  %cmp2 = icmp ult i8* %14, %15
  br i1 %cmp2, label %while.body, label %while.end.294

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %t, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr3, i8** %t, align 8
  store i8 %17, i8* %18, align 1
  %conv = sext i8 %17 to i32
  %cmp4 = icmp ne i32 %conv, 38
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %19 = load i8*, i8** %s, align 8
  store i8* %19, i8** %ent_start, align 8
  store i8* null, i8** %repl, align 8
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv6 = sext i8 %21 to i32
  %cmp7 = icmp eq i32 %conv6, 35
  br i1 %cmp7, label %if.then.9, label %if.else.113

if.then.9:                                        ; preds = %if.end
  store i64 0, i64* %num, align 8
  store i64 0, i64* %prev, align 8
  store i32 0, i32* %ok, align 4
  %22 = load i8*, i8** %s, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr10, i8** %s, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv11 = sext i8 %24 to i32
  %cmp12 = icmp eq i32 %conv11, 120
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv14 = sext i8 %26 to i32
  %cmp15 = icmp eq i32 %conv14, 88
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.9
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr18, i8** %s, align 8
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.31, %if.then.17
  %28 = load i8*, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.19
  %30 = load i8*, i8** @PL_hexdigit, align 8
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv21 = sext i8 %32 to i32
  %call22 = call i8* @strchr(i8* %30, i32 %conv21)
  store i8* %call22, i8** %tmp, align 8
  %33 = load i8*, i8** %tmp, align 8
  %tobool23 = icmp ne i8* %33, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %while.body.20
  br label %while.end

if.end.25:                                        ; preds = %while.body.20
  %34 = load i64, i64* %num, align 8
  %shl = shl i64 %34, 4
  %35 = load i8*, i8** %tmp, align 8
  %36 = load i8*, i8** @PL_hexdigit, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and26 = and i64 %sub.ptr.sub, 15
  %or = or i64 %shl, %and26
  store i64 %or, i64* %num, align 8
  %37 = load i64, i64* %prev, align 8
  %tobool27 = icmp ne i64 %37, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.25
  %38 = load i64, i64* %num, align 8
  %39 = load i64, i64* %prev, align 8
  %cmp28 = icmp ule i64 %38, %39
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 0, i32* %ok, align 4
  br label %while.end

if.end.31:                                        ; preds = %land.lhs.true, %if.end.25
  %40 = load i64, i64* %num, align 8
  store i64 %40, i64* %prev, align 8
  %41 = load i8*, i8** %s, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr32, i8** %s, align 8
  store i32 1, i32* %ok, align 4
  br label %while.cond.19

while.end:                                        ; preds = %if.then.30, %if.then.24, %while.cond.19
  br label %if.end.51

if.else:                                          ; preds = %lor.lhs.false
  br label %while.cond.33

while.cond.33:                                    ; preds = %if.end.48, %if.else
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv34 = sext i8 %43 to i32
  %cmp35 = icmp sge i32 %conv34, 48
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.33
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv37 = sext i8 %45 to i32
  %cmp38 = icmp sle i32 %conv37, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.33
  %46 = phi i1 [ false, %while.cond.33 ], [ %cmp38, %land.rhs ]
  br i1 %46, label %while.body.40, label %while.end.50

while.body.40:                                    ; preds = %land.end
  %47 = load i64, i64* %num, align 8
  %mul = mul i64 %47, 10
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %conv41 = sext i8 %49 to i32
  %sub = sub nsw i32 %conv41, 48
  %conv42 = sext i32 %sub to i64
  %add = add i64 %mul, %conv42
  store i64 %add, i64* %num, align 8
  %50 = load i64, i64* %prev, align 8
  %tobool43 = icmp ne i64 %50, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.48

land.lhs.true.44:                                 ; preds = %while.body.40
  %51 = load i64, i64* %num, align 8
  %52 = load i64, i64* %prev, align 8
  %cmp45 = icmp ult i64 %51, %52
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.44
  store i32 0, i32* %ok, align 4
  br label %while.end.50

if.end.48:                                        ; preds = %land.lhs.true.44, %while.body.40
  %53 = load i64, i64* %num, align 8
  store i64 %53, i64* %prev, align 8
  %54 = load i8*, i8** %s, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8
  store i32 1, i32* %ok, align 4
  br label %while.cond.33

while.end.50:                                     ; preds = %if.then.47, %land.end
  br label %if.end.51

if.end.51:                                        ; preds = %while.end.50, %while.end
  %55 = load i32, i32* %ok, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %if.then.53, label %if.end.112

if.then.53:                                       ; preds = %if.end.51
  %56 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags54 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %57, 536870912
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.else.62, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.then.53
  %58 = load i64, i64* %num, align 8
  %cmp58 = icmp ule i64 %58, 255
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %land.lhs.true.57
  %59 = load i64, i64* %num, align 8
  %conv61 = trunc i64 %59 to i8
  %arrayidx = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i64 0
  store i8 %conv61, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %repl, align 8
  store i64 1, i64* %repl_len, align 8
  store i32 0, i32* %repl_utf8, align 4
  br label %if.end.111

if.else.62:                                       ; preds = %land.lhs.true.57, %if.then.53
  %60 = load i64, i64* %num, align 8
  %and65 = and i64 %60, 4294966272
  %cmp66 = icmp eq i64 %and65, 56320
  br i1 %cmp66, label %if.then.68, label %if.else.81

if.then.68:                                       ; preds = %if.else.62
  %61 = load i32, i32* %high_surrogate, align 4
  %cmp69 = icmp ne i32 %61, 0
  br i1 %cmp69, label %if.then.71, label %if.else.79

if.then.71:                                       ; preds = %if.then.68
  %62 = load i8*, i8** %t, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %62, i64 -3
  store i8* %add.ptr72, i8** %t, align 8
  %63 = load i32, i32* %high_surrogate, align 4
  %sub73 = sub nsw i32 %63, 55296
  %shl74 = shl i32 %sub73, 10
  %conv75 = sext i32 %shl74 to i64
  %64 = load i64, i64* %num, align 8
  %sub76 = sub i64 %64, 56320
  %add77 = add i64 %conv75, %sub76
  %add78 = add i64 %add77, 65536
  store i64 %add78, i64* %num, align 8
  store i32 0, i32* %high_surrogate, align 4
  br label %if.end.80

if.else.79:                                       ; preds = %if.then.68
  store i64 65533, i64* %num, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.71
  br label %if.end.103

if.else.81:                                       ; preds = %if.else.62
  %65 = load i64, i64* %num, align 8
  %and82 = and i64 %65, 4294966272
  %cmp83 = icmp eq i64 %and82, 55296
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.81
  %66 = load i64, i64* %num, align 8
  %conv86 = trunc i64 %66 to i32
  store i32 %conv86, i32* %high_surrogate, align 4
  store i64 65533, i64* %num, align 8
  br label %if.end.102

if.else.87:                                       ; preds = %if.else.81
  store i32 0, i32* %high_surrogate, align 4
  %67 = load i64, i64* %num, align 8
  %cmp88 = icmp uge i64 %67, 64976
  br i1 %cmp88, label %land.lhs.true.90, label %lor.lhs.false.93

land.lhs.true.90:                                 ; preds = %if.else.87
  %68 = load i64, i64* %num, align 8
  %cmp91 = icmp ule i64 %68, 65007
  br i1 %cmp91, label %if.then.100, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.90, %if.else.87
  %69 = load i64, i64* %num, align 8
  %and94 = and i64 %69, 65534
  %cmp95 = icmp eq i64 %and94, 65534
  br i1 %cmp95, label %if.then.100, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.93
  %70 = load i64, i64* %num, align 8
  %cmp98 = icmp ugt i64 %70, 1114111
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false.93, %land.lhs.true.90
  store i64 65533, i64* %num, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %lor.lhs.false.97
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.85
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.80
  %arraydecay104 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %71 = load i64, i64* %num, align 8
  %call105 = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay104, i64 %71)
  store i8* %call105, i8** %tmp64, align 8
  %arraydecay106 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay106, i8** %repl, align 8
  %72 = load i8*, i8** %tmp64, align 8
  %arraydecay107 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast108 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast109 = ptrtoint i8* %arraydecay107 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  store i64 %sub.ptr.sub110, i64* %repl_len, align 8
  store i32 1, i32* %repl_utf8, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.103, %if.then.60
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.51
  br label %if.end.210

if.else.113:                                      ; preds = %if.end
  %73 = load i8*, i8** %s, align 8
  store i8* %73, i8** %ent_name, align 8
  br label %while.cond.115

while.cond.115:                                   ; preds = %while.body.142, %if.else.113
  %74 = load i8*, i8** %s, align 8
  %75 = load i8, i8* %74, align 1
  %conv116 = sext i8 %75 to i32
  %cmp117 = icmp sge i32 %conv116, 65
  br i1 %cmp117, label %land.lhs.true.119, label %lor.lhs.false.123

land.lhs.true.119:                                ; preds = %while.cond.115
  %76 = load i8*, i8** %s, align 8
  %77 = load i8, i8* %76, align 1
  %conv120 = sext i8 %77 to i32
  %cmp121 = icmp sle i32 %conv120, 90
  br i1 %cmp121, label %lor.end, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.119, %while.cond.115
  %78 = load i8*, i8** %s, align 8
  %79 = load i8, i8* %78, align 1
  %conv124 = sext i8 %79 to i32
  %cmp125 = icmp sge i32 %conv124, 97
  br i1 %cmp125, label %land.lhs.true.127, label %lor.lhs.false.131

land.lhs.true.127:                                ; preds = %lor.lhs.false.123
  %80 = load i8*, i8** %s, align 8
  %81 = load i8, i8* %80, align 1
  %conv128 = sext i8 %81 to i32
  %cmp129 = icmp sle i32 %conv128, 122
  br i1 %cmp129, label %lor.end, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.127, %lor.lhs.false.123
  %82 = load i8*, i8** %s, align 8
  %83 = load i8, i8* %82, align 1
  %conv132 = sext i8 %83 to i32
  %cmp133 = icmp sge i32 %conv132, 48
  br i1 %cmp133, label %land.lhs.true.135, label %lor.rhs

land.lhs.true.135:                                ; preds = %lor.lhs.false.131
  %84 = load i8*, i8** %s, align 8
  %85 = load i8, i8* %84, align 1
  %conv136 = sext i8 %85 to i32
  %cmp137 = icmp sle i32 %conv136, 57
  br i1 %cmp137, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.135, %lor.lhs.false.131
  %86 = load i8*, i8** %s, align 8
  %87 = load i8, i8* %86, align 1
  %conv139 = sext i8 %87 to i32
  %cmp140 = icmp eq i32 %conv139, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.135, %land.lhs.true.127, %land.lhs.true.119
  %88 = phi i1 [ true, %land.lhs.true.135 ], [ true, %land.lhs.true.127 ], [ true, %land.lhs.true.119 ], [ %cmp140, %lor.rhs ]
  br i1 %88, label %while.body.142, label %while.end.144

while.body.142:                                   ; preds = %lor.end
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr143, i8** %s, align 8
  br label %while.cond.115

while.end.144:                                    ; preds = %lor.end
  %90 = load i8*, i8** %ent_name, align 8
  %91 = load i8*, i8** %s, align 8
  %cmp145 = icmp ne i8* %90, %91
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.209

land.lhs.true.147:                                ; preds = %while.end.144
  %92 = load %struct.hv*, %struct.hv** %entity2char.addr, align 8
  %tobool148 = icmp ne %struct.hv* %92, null
  br i1 %tobool148, label %if.then.149, label %if.end.209

if.then.149:                                      ; preds = %land.lhs.true.147
  %93 = load %struct.hv*, %struct.hv** %entity2char.addr, align 8
  %94 = load i8*, i8** %ent_name, align 8
  %95 = load i8*, i8** %s, align 8
  %96 = load i8*, i8** %ent_name, align 8
  %sub.ptr.lhs.cast151 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast152 = ptrtoint i8* %96 to i64
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast152
  %conv154 = trunc i64 %sub.ptr.sub153 to i32
  %call155 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %93, i8* %94, i32 %conv154, i32 0)
  store %struct.sv** %call155, %struct.sv*** %svp, align 8
  %97 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool156 = icmp ne %struct.sv** %97, null
  br i1 %tobool156, label %if.then.157, label %if.else.173

if.then.157:                                      ; preds = %if.then.149
  %98 = load %struct.sv**, %struct.sv*** %svp, align 8
  %99 = load %struct.sv*, %struct.sv** %98, align 8
  %sv_flags158 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 2
  %100 = load i32, i32* %sv_flags158, align 4
  %and159 = and i32 %100, 262144
  %cmp160 = icmp eq i32 %and159, 262144
  br i1 %cmp160, label %cond.true.162, label %cond.false.167

cond.true.162:                                    ; preds = %if.then.157
  %101 = load %struct.sv**, %struct.sv*** %svp, align 8
  %102 = load %struct.sv*, %struct.sv** %101, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 0
  %103 = load i8*, i8** %sv_any163, align 8
  %104 = bitcast i8* %103 to %struct.xpv*
  %xpv_cur164 = getelementptr inbounds %struct.xpv, %struct.xpv* %104, i32 0, i32 1
  %105 = load i64, i64* %xpv_cur164, align 8
  store i64 %105, i64* %repl_len, align 8
  %106 = load %struct.sv**, %struct.sv*** %svp, align 8
  %107 = load %struct.sv*, %struct.sv** %106, align 8
  %sv_any165 = getelementptr inbounds %struct.sv, %struct.sv* %107, i32 0, i32 0
  %108 = load i8*, i8** %sv_any165, align 8
  %109 = bitcast i8* %108 to %struct.xpv*
  %xpv_pv166 = getelementptr inbounds %struct.xpv, %struct.xpv* %109, i32 0, i32 0
  %110 = load i8*, i8** %xpv_pv166, align 8
  br label %cond.end.169

cond.false.167:                                   ; preds = %if.then.157
  %111 = load %struct.sv**, %struct.sv*** %svp, align 8
  %112 = load %struct.sv*, %struct.sv** %111, align 8
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %112, i64* %repl_len, i32 2)
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.167, %cond.true.162
  %cond170 = phi i8* [ %110, %cond.true.162 ], [ %call168, %cond.false.167 ]
  store i8* %cond170, i8** %repl, align 8
  %113 = load %struct.sv**, %struct.sv*** %svp, align 8
  %114 = load %struct.sv*, %struct.sv** %113, align 8
  %sv_flags171 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags171, align 4
  %and172 = and i32 %115, 536870912
  store i32 %and172, i32* %repl_utf8, align 4
  br label %if.end.208

if.else.173:                                      ; preds = %if.then.149
  %116 = load i8, i8* %allow_unterminated.addr, align 1
  %tobool174 = icmp ne i8 %116, 0
  br i1 %tobool174, label %if.then.175, label %if.end.207

if.then.175:                                      ; preds = %if.else.173
  %117 = load i8*, i8** %s, align 8
  %add.ptr177 = getelementptr inbounds i8, i8* %117, i64 -1
  store i8* %add.ptr177, i8** %ss, align 8
  br label %while.cond.178

while.cond.178:                                   ; preds = %if.end.204, %if.then.175
  %118 = load i8*, i8** %ss, align 8
  %119 = load i8*, i8** %ent_name, align 8
  %cmp179 = icmp ugt i8* %118, %119
  br i1 %cmp179, label %while.body.181, label %while.end.206

while.body.181:                                   ; preds = %while.cond.178
  %120 = load %struct.hv*, %struct.hv** %entity2char.addr, align 8
  %121 = load i8*, i8** %ent_name, align 8
  %122 = load i8*, i8** %ss, align 8
  %123 = load i8*, i8** %ent_name, align 8
  %sub.ptr.lhs.cast182 = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %123 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast183
  %conv185 = trunc i64 %sub.ptr.sub184 to i32
  %call186 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %120, i8* %121, i32 %conv185, i32 0)
  store %struct.sv** %call186, %struct.sv*** %svp, align 8
  %124 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool187 = icmp ne %struct.sv** %124, null
  br i1 %tobool187, label %if.then.188, label %if.end.204

if.then.188:                                      ; preds = %while.body.181
  %125 = load %struct.sv**, %struct.sv*** %svp, align 8
  %126 = load %struct.sv*, %struct.sv** %125, align 8
  %sv_flags189 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 2
  %127 = load i32, i32* %sv_flags189, align 4
  %and190 = and i32 %127, 262144
  %cmp191 = icmp eq i32 %and190, 262144
  br i1 %cmp191, label %cond.true.193, label %cond.false.198

cond.true.193:                                    ; preds = %if.then.188
  %128 = load %struct.sv**, %struct.sv*** %svp, align 8
  %129 = load %struct.sv*, %struct.sv** %128, align 8
  %sv_any194 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 0
  %130 = load i8*, i8** %sv_any194, align 8
  %131 = bitcast i8* %130 to %struct.xpv*
  %xpv_cur195 = getelementptr inbounds %struct.xpv, %struct.xpv* %131, i32 0, i32 1
  %132 = load i64, i64* %xpv_cur195, align 8
  store i64 %132, i64* %repl_len, align 8
  %133 = load %struct.sv**, %struct.sv*** %svp, align 8
  %134 = load %struct.sv*, %struct.sv** %133, align 8
  %sv_any196 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 0
  %135 = load i8*, i8** %sv_any196, align 8
  %136 = bitcast i8* %135 to %struct.xpv*
  %xpv_pv197 = getelementptr inbounds %struct.xpv, %struct.xpv* %136, i32 0, i32 0
  %137 = load i8*, i8** %xpv_pv197, align 8
  br label %cond.end.200

cond.false.198:                                   ; preds = %if.then.188
  %138 = load %struct.sv**, %struct.sv*** %svp, align 8
  %139 = load %struct.sv*, %struct.sv** %138, align 8
  %call199 = call i8* @Perl_sv_2pv_flags(%struct.sv* %139, i64* %repl_len, i32 2)
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.198, %cond.true.193
  %cond201 = phi i8* [ %137, %cond.true.193 ], [ %call199, %cond.false.198 ]
  store i8* %cond201, i8** %repl, align 8
  %140 = load %struct.sv**, %struct.sv*** %svp, align 8
  %141 = load %struct.sv*, %struct.sv** %140, align 8
  %sv_flags202 = getelementptr inbounds %struct.sv, %struct.sv* %141, i32 0, i32 2
  %142 = load i32, i32* %sv_flags202, align 4
  %and203 = and i32 %142, 536870912
  store i32 %and203, i32* %repl_utf8, align 4
  %143 = load i8*, i8** %ss, align 8
  store i8* %143, i8** %s, align 8
  br label %while.end.206

if.end.204:                                       ; preds = %while.body.181
  %144 = load i8*, i8** %ss, align 8
  %incdec.ptr205 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %incdec.ptr205, i8** %ss, align 8
  br label %while.cond.178

while.end.206:                                    ; preds = %cond.end.200, %while.cond.178
  br label %if.end.207

if.end.207:                                       ; preds = %while.end.206, %if.else.173
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %cond.end.169
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.147, %while.end.144
  store i32 0, i32* %high_surrogate, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.112
  %145 = load i8*, i8** %repl, align 8
  %tobool211 = icmp ne i8* %145, null
  br i1 %tobool211, label %if.then.212, label %if.else.285

if.then.212:                                      ; preds = %if.end.210
  store i8* null, i8** %repl_allocated, align 8
  %146 = load i8*, i8** %s, align 8
  %147 = load i8, i8* %146, align 1
  %conv214 = sext i8 %147 to i32
  %cmp215 = icmp eq i32 %conv214, 59
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %if.then.212
  %148 = load i8*, i8** %s, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr218, i8** %s, align 8
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %if.then.212
  %149 = load i8*, i8** %t, align 8
  %incdec.ptr220 = getelementptr inbounds i8, i8* %149, i32 -1
  store i8* %incdec.ptr220, i8** %t, align 8
  %150 = load i8*, i8** %s, align 8
  %151 = load i8, i8* %150, align 1
  %conv221 = sext i8 %151 to i32
  %cmp222 = icmp ne i32 %conv221, 38
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.219
  store i32 0, i32* %high_surrogate, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.219
  %152 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags226 = getelementptr inbounds %struct.sv, %struct.sv* %152, i32 0, i32 2
  %153 = load i32, i32* %sv_flags226, align 4
  %and227 = and i32 %153, 536870912
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.else.257, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %if.end.225
  %154 = load i32, i32* %repl_utf8, align 4
  %tobool230 = icmp ne i32 %154, 0
  br i1 %tobool230, label %if.then.231, label %if.else.257

if.then.231:                                      ; preds = %land.lhs.true.229
  %155 = load i8*, i8** %t, align 8
  %156 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any233 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 0
  %157 = load i8*, i8** %sv_any233, align 8
  %158 = bitcast i8* %157 to %struct.xpv*
  %xpv_pv234 = getelementptr inbounds %struct.xpv, %struct.xpv* %158, i32 0, i32 0
  %159 = load i8*, i8** %xpv_pv234, align 8
  %sub.ptr.lhs.cast235 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast236 = ptrtoint i8* %159 to i64
  %sub.ptr.sub237 = sub i64 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  store i64 %sub.ptr.sub237, i64* %before_gap_len, align 8
  %160 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any239 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 0
  %161 = load i8*, i8** %sv_any239, align 8
  %162 = bitcast i8* %161 to %struct.xpv*
  %xpv_pv240 = getelementptr inbounds %struct.xpv, %struct.xpv* %162, i32 0, i32 0
  %163 = load i8*, i8** %xpv_pv240, align 8
  %call241 = call i8* @Perl_bytes_to_utf8(i8* %163, i64* %before_gap_len)
  store i8* %call241, i8** %before_gap, align 8
  %164 = load i8*, i8** %end, align 8
  %165 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast243 = ptrtoint i8* %164 to i64
  %sub.ptr.rhs.cast244 = ptrtoint i8* %165 to i64
  %sub.ptr.sub245 = sub i64 %sub.ptr.lhs.cast243, %sub.ptr.rhs.cast244
  store i64 %sub.ptr.sub245, i64* %after_gap_len, align 8
  %166 = load i8*, i8** %s, align 8
  %call247 = call i8* @Perl_bytes_to_utf8(i8* %166, i64* %after_gap_len)
  store i8* %call247, i8** %after_gap, align 8
  %167 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %168 = load i8*, i8** %before_gap, align 8
  %169 = load i64, i64* %before_gap_len, align 8
  call void @Perl_sv_setpvn(%struct.sv* %167, i8* %168, i64 %169)
  %170 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %171 = load i8*, i8** %after_gap, align 8
  %172 = load i64, i64* %after_gap_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %170, i8* %171, i64 %172, i32 2)
  %173 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags248 = getelementptr inbounds %struct.sv, %struct.sv* %173, i32 0, i32 2
  %174 = load i32, i32* %sv_flags248, align 4
  %or249 = or i32 %174, 536870912
  store i32 %or249, i32* %sv_flags248, align 4
  %175 = load i8*, i8** %before_gap, align 8
  call void @Perl_safesysfree(i8* %175)
  %176 = load i8*, i8** %after_gap, align 8
  call void @Perl_safesysfree(i8* %176)
  %177 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any250 = getelementptr inbounds %struct.sv, %struct.sv* %177, i32 0, i32 0
  %178 = load i8*, i8** %sv_any250, align 8
  %179 = bitcast i8* %178 to %struct.xpv*
  %xpv_pv251 = getelementptr inbounds %struct.xpv, %struct.xpv* %179, i32 0, i32 0
  %180 = load i8*, i8** %xpv_pv251, align 8
  %181 = load i64, i64* %before_gap_len, align 8
  %add.ptr252 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %add.ptr252, i8** %t, align 8
  store i8* %add.ptr252, i8** %s, align 8
  %182 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any253 = getelementptr inbounds %struct.sv, %struct.sv* %182, i32 0, i32 0
  %183 = load i8*, i8** %sv_any253, align 8
  %184 = bitcast i8* %183 to %struct.xpv*
  %xpv_pv254 = getelementptr inbounds %struct.xpv, %struct.xpv* %184, i32 0, i32 0
  %185 = load i8*, i8** %xpv_pv254, align 8
  %186 = load i64, i64* %before_gap_len, align 8
  %add.ptr255 = getelementptr inbounds i8, i8* %185, i64 %186
  %187 = load i64, i64* %after_gap_len, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %add.ptr255, i64 %187
  store i8* %add.ptr256, i8** %end, align 8
  br label %if.end.266

if.else.257:                                      ; preds = %land.lhs.true.229, %if.end.225
  %188 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags258 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags258, align 4
  %and259 = and i32 %189, 536870912
  %tobool260 = icmp ne i32 %and259, 0
  br i1 %tobool260, label %land.lhs.true.261, label %if.end.265

land.lhs.true.261:                                ; preds = %if.else.257
  %190 = load i32, i32* %repl_utf8, align 4
  %tobool262 = icmp ne i32 %190, 0
  br i1 %tobool262, label %if.end.265, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.261
  %191 = load i8*, i8** %repl, align 8
  %call264 = call i8* @Perl_bytes_to_utf8(i8* %191, i64* %repl_len)
  store i8* %call264, i8** %repl, align 8
  %192 = load i8*, i8** %repl, align 8
  store i8* %192, i8** %repl_allocated, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %land.lhs.true.261, %if.else.257
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.231
  %193 = load i8*, i8** %t, align 8
  %194 = load i64, i64* %repl_len, align 8
  %add.ptr267 = getelementptr inbounds i8, i8* %193, i64 %194
  %195 = load i8*, i8** %s, align 8
  %cmp268 = icmp ugt i8* %add.ptr267, %195
  br i1 %cmp268, label %if.then.270, label %if.end.275

if.then.270:                                      ; preds = %if.end.266
  %196 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %197 = load i64, i64* %repl_len, align 8
  %198 = load i8*, i8** %s, align 8
  %199 = load i8*, i8** %t, align 8
  %sub.ptr.lhs.cast271 = ptrtoint i8* %198 to i64
  %sub.ptr.rhs.cast272 = ptrtoint i8* %199 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %sub274 = sub i64 %197, %sub.ptr.sub273
  call void @grow_gap(%struct.sv* %196, i64 %sub274, i8** %t, i8** %s, i8** %end)
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.270, %if.end.266
  br label %while.cond.276

while.cond.276:                                   ; preds = %while.body.278, %if.end.275
  %200 = load i64, i64* %repl_len, align 8
  %dec = add i64 %200, -1
  store i64 %dec, i64* %repl_len, align 8
  %tobool277 = icmp ne i64 %200, 0
  br i1 %tobool277, label %while.body.278, label %while.end.281

while.body.278:                                   ; preds = %while.cond.276
  %201 = load i8*, i8** %repl, align 8
  %incdec.ptr279 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr279, i8** %repl, align 8
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %t, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr280, i8** %t, align 8
  store i8 %202, i8* %203, align 1
  br label %while.cond.276

while.end.281:                                    ; preds = %while.cond.276
  %204 = load i8*, i8** %repl_allocated, align 8
  %tobool282 = icmp ne i8* %204, null
  br i1 %tobool282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %while.end.281
  %205 = load i8*, i8** %repl_allocated, align 8
  call void @Perl_safesysfree(i8* %205)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %while.end.281
  br label %if.end.293

if.else.285:                                      ; preds = %if.end.210
  br label %while.cond.286

while.cond.286:                                   ; preds = %while.body.289, %if.else.285
  %206 = load i8*, i8** %ent_start, align 8
  %207 = load i8*, i8** %s, align 8
  %cmp287 = icmp ult i8* %206, %207
  br i1 %cmp287, label %while.body.289, label %while.end.292

while.body.289:                                   ; preds = %while.cond.286
  %208 = load i8*, i8** %ent_start, align 8
  %incdec.ptr290 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr290, i8** %ent_start, align 8
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %t, align 8
  %incdec.ptr291 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr291, i8** %t, align 8
  store i8 %209, i8* %210, align 1
  br label %while.cond.286

while.end.292:                                    ; preds = %while.cond.286
  br label %if.end.293

if.end.293:                                       ; preds = %while.end.292, %if.end.284
  br label %while.cond

while.end.294:                                    ; preds = %while.cond
  %211 = load i8*, i8** %t, align 8
  store i8 0, i8* %211, align 1
  %212 = load i8*, i8** %t, align 8
  %213 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any296 = getelementptr inbounds %struct.sv, %struct.sv* %213, i32 0, i32 0
  %214 = load i8*, i8** %sv_any296, align 8
  %215 = bitcast i8* %214 to %struct.xpv*
  %xpv_pv297 = getelementptr inbounds %struct.xpv, %struct.xpv* %215, i32 0, i32 0
  %216 = load i8*, i8** %xpv_pv297, align 8
  %sub.ptr.lhs.cast298 = ptrtoint i8* %212 to i64
  %sub.ptr.rhs.cast299 = ptrtoint i8* %216 to i64
  %sub.ptr.sub300 = sub i64 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %217 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any301 = getelementptr inbounds %struct.sv, %struct.sv* %217, i32 0, i32 0
  %218 = load i8*, i8** %sv_any301, align 8
  %219 = bitcast i8* %218 to %struct.xpv*
  %xpv_cur302 = getelementptr inbounds %struct.xpv, %struct.xpv* %219, i32 0, i32 1
  store i64 %sub.ptr.sub300, i64* %xpv_cur302, align 8
  store i64 %sub.ptr.sub300, i64* %tmp295
  %220 = load i64, i64* %tmp295
  %221 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  ret %struct.sv* %221
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Entities__decode_entities(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %string = alloca %struct.sv*, align 8
  %entities = alloca %struct.sv*, align 8
  %entities_hv = alloca %struct.hv*, align 8
  %allow_unterminated = alloca i8, align 1
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %string, align 8
  %12 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %12, 1
  %idxprom9 = sext i32 %add8 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom9
  %14 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  store %struct.sv* %14, %struct.sv** %entities, align 8
  %15 = load i32, i32* %items, align 4
  %cmp11 = icmp sgt i32 %15, 2
  br i1 %cmp11, label %cond.true, label %cond.false.75

cond.true:                                        ; preds = %if.end
  %16 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %16, 2
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom14
  %18 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %tobool = icmp ne %struct.sv* %18, null
  br i1 %tobool, label %cond.false, label %cond.true.16

cond.true.16:                                     ; preds = %cond.true
  br label %cond.end.73

cond.false:                                       ; preds = %cond.true
  %19 = load i32, i32* %ax, align 4
  %add17 = add nsw i32 %19, 2
  %idxprom18 = sext i32 %add17 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom18
  %21 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and = and i32 %22, 262144
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.35

cond.true.21:                                     ; preds = %cond.false
  %23 = load i32, i32* %ax, align 4
  %add22 = add nsw i32 %23, 2
  %idxprom23 = sext i32 %add22 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom23
  %25 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  store %struct.xpv* %27, %struct.xpv** @PL_Xpv, align 8
  %tobool25 = icmp ne %struct.xpv* %27, null
  br i1 %tobool25, label %land.rhs, label %land.end.34

land.rhs:                                         ; preds = %cond.true.21
  %28 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 1
  %29 = load i64, i64* %xpv_cur, align 8
  %cmp26 = icmp ugt i64 %29, 1
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %30 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur28 = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 1
  %31 = load i64, i64* %xpv_cur28, align 8
  %tobool29 = icmp ne i64 %31, 0
  br i1 %tobool29, label %land.rhs.30, label %land.end

land.rhs.30:                                      ; preds = %lor.rhs
  %32 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv, align 8
  %34 = load i8, i8* %33, align 1
  %conv31 = sext i8 %34 to i32
  %cmp32 = icmp ne i32 %conv31, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.30, %lor.rhs
  %35 = phi i1 [ false, %lor.rhs ], [ %cmp32, %land.rhs.30 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %36 = phi i1 [ true, %land.rhs ], [ %35, %land.end ]
  br label %land.end.34

land.end.34:                                      ; preds = %lor.end, %cond.true.21
  %37 = phi i1 [ false, %cond.true.21 ], [ %36, %lor.end ]
  %cond = select i1 %37, i32 1, i32 0
  br label %cond.end.71

cond.false.35:                                    ; preds = %cond.false
  %38 = load i32, i32* %ax, align 4
  %add36 = add nsw i32 %38, 2
  %idxprom37 = sext i32 %add36 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx38 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom37
  %40 = load %struct.sv*, %struct.sv** %arrayidx38, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %41, 65536
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.false.35
  %42 = load i32, i32* %ax, align 4
  %add43 = add nsw i32 %42, 2
  %idxprom44 = sext i32 %add43 to i64
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx45 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idxprom44
  %44 = load %struct.sv*, %struct.sv** %arrayidx45, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any46, align 8
  %46 = bitcast i8* %45 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %46, i32 0, i32 3
  %47 = load i64, i64* %xiv_iv, align 8
  %cmp47 = icmp ne i64 %47, 0
  %conv48 = zext i1 %cmp47 to i32
  br label %cond.end.69

cond.false.49:                                    ; preds = %cond.false.35
  %48 = load i32, i32* %ax, align 4
  %add50 = add nsw i32 %48, 2
  %idxprom51 = sext i32 %add50 to i64
  %49 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx52 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i64 %idxprom51
  %50 = load %struct.sv*, %struct.sv** %arrayidx52, align 8
  %sv_flags53 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 2
  %51 = load i32, i32* %sv_flags53, align 4
  %and54 = and i32 %51, 131072
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.63

cond.true.56:                                     ; preds = %cond.false.49
  %52 = load i32, i32* %ax, align 4
  %add57 = add nsw i32 %52, 2
  %idxprom58 = sext i32 %add57 to i64
  %53 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx59 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %idxprom58
  %54 = load %struct.sv*, %struct.sv** %arrayidx59, align 8
  %sv_any60 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any60, align 8
  %56 = bitcast i8* %55 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %56, i32 0, i32 4
  %57 = load double, double* %xnv_nv, align 8
  %cmp61 = fcmp une double %57, 0.000000e+00
  %conv62 = zext i1 %cmp61 to i32
  br label %cond.end

cond.false.63:                                    ; preds = %cond.false.49
  %58 = load i32, i32* %ax, align 4
  %add64 = add nsw i32 %58, 2
  %idxprom65 = sext i32 %add64 to i64
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx66 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idxprom65
  %60 = load %struct.sv*, %struct.sv** %arrayidx66, align 8
  %call = call signext i8 @Perl_sv_2bool(%struct.sv* %60)
  %conv67 = sext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.56
  %cond68 = phi i32 [ %conv62, %cond.true.56 ], [ %conv67, %cond.false.63 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end, %cond.true.42
  %cond70 = phi i32 [ %conv48, %cond.true.42 ], [ %cond68, %cond.end ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %land.end.34
  %cond72 = phi i32 [ %cond, %land.end.34 ], [ %cond70, %cond.end.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.16
  %cond74 = phi i32 [ 0, %cond.true.16 ], [ %cond72, %cond.end.71 ]
  br label %cond.end.76

cond.false.75:                                    ; preds = %if.end
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.end.73
  %cond77 = phi i32 [ %cond74, %cond.end.73 ], [ 0, %cond.false.75 ]
  %conv78 = trunc i32 %cond77 to i8
  store i8 %conv78, i8* %allow_unterminated, align 1
  %61 = load %struct.sv*, %struct.sv** %entities, align 8
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 2
  %62 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %62, 118423552
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.95

if.then.82:                                       ; preds = %cond.end.76
  %63 = load %struct.sv*, %struct.sv** %entities, align 8
  %sv_flags83 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags83, align 4
  %and84 = and i32 %64, 524288
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.82
  %65 = load %struct.sv*, %struct.sv** %entities, align 8
  %sv_any86 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any86, align 8
  %67 = bitcast i8* %66 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %67, i32 0, i32 0
  %68 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags87 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags87, align 4
  %and88 = and i32 %69, 255
  %cmp89 = icmp eq i32 %and88, 11
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %land.lhs.true
  %70 = load %struct.sv*, %struct.sv** %entities, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any92, align 8
  %72 = bitcast i8* %71 to %struct.xrv*
  %xrv_rv93 = getelementptr inbounds %struct.xrv, %struct.xrv* %72, i32 0, i32 0
  %73 = load %struct.sv*, %struct.sv** %xrv_rv93, align 8
  %74 = bitcast %struct.sv* %73 to %struct.hv*
  store %struct.hv* %74, %struct.hv** %entities_hv, align 8
  br label %if.end.94

if.else:                                          ; preds = %land.lhs.true, %if.then.82
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.91
  br label %if.end.96

if.else.95:                                       ; preds = %cond.end.76
  store %struct.hv* null, %struct.hv** %entities_hv, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.end.94
  %75 = load %struct.sv*, %struct.sv** %string, align 8
  %sv_flags97 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags97, align 4
  %and98 = and i32 %76, 8388608
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.96
  %77 = load %struct.sv*, %struct.sv** %string, align 8
  %78 = load %struct.hv*, %struct.hv** %entities_hv, align 8
  %79 = load i8, i8* %allow_unterminated, align 1
  %call102 = call %struct.sv* @decode_entities(%struct.sv* %77, %struct.hv* %78, i8 signext %79)
  store i64 0, i64* %tmpXSoff, align 8
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %81 = load i32, i32* %ax, align 4
  %idx.ext103 = sext i32 %81 to i64
  %add.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %idx.ext103
  %82 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %82, 1
  %add.ptr105 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr104, i64 %sub
  store %struct.sv** %add.ptr105, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Entities__probably_utf8_chunk(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %string = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %RETVAL = alloca i8, align 1
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %string, align 8
  %12 = load %struct.sv*, %struct.sv** %string, align 8
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %12, i8 signext 0)
  %13 = load %struct.sv*, %struct.sv** %string, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %string, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 1
  %18 = load i64, i64* %xpv_cur, align 8
  store i64 %18, i64* %len, align 8
  %19 = load %struct.sv*, %struct.sv** %string, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any10, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 0
  %22 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load %struct.sv*, %struct.sv** %string, align 8
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %23, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %call11, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %24 = load i8*, i8** %s, align 8
  %25 = load i64, i64* %len, align 8
  %call12 = call signext i8 @probably_utf8_chunk(i8* %24, i64 %25)
  store i8 %call12, i8* %RETVAL, align 1
  %26 = load i8, i8* %RETVAL, align 1
  %conv13 = sext i8 %26 to i32
  %tobool = icmp ne i32 %conv13, 0
  %cond14 = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %27 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %27, 0
  %idxprom16 = sext i32 %add15 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom16
  store %struct.sv* %cond14, %struct.sv** %arrayidx17, align 8
  %29 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %29, 0
  %idxprom19 = sext i32 %add18 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom19
  %31 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %call21 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %31)
  store i64 1, i64* %tmpXSoff, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %33 = load i32, i32* %ax, align 4
  %idx.ext22 = sext i32 %33 to i64
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idx.ext22
  %34 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %34, 1
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr23, i64 %sub
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @probably_utf8_chunk(i8* %s, i64 %len) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %e = alloca i8*, align 8
  %clen = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8*, i8** %e, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end.9

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %e, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 -1
  %5 = load i8, i8* %add.ptr1, align 1
  %conv = zext i8 %5 to i32
  %cmp2 = icmp sge i32 %conv, 128
  br i1 %cmp2, label %land.rhs.4, label %land.end

land.rhs.4:                                       ; preds = %land.rhs
  %6 = load i8*, i8** %e, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 -1
  %7 = load i8, i8* %add.ptr5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp sle i32 %conv6, 191
  br label %land.end

land.end:                                         ; preds = %land.rhs.4, %land.rhs
  %8 = phi i1 [ false, %land.rhs ], [ %cmp7, %land.rhs.4 ]
  br label %land.end.9

land.end.9:                                       ; preds = %land.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %land.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.9
  %10 = load i8*, i8** %e, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %e, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.9
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8*, i8** %e, align 8
  %cmp10 = icmp ult i8* %11, %12
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %13 = load i8*, i8** %e, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %add.ptr12, align 1
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp sge i32 %conv13, 192
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %15 = load i8*, i8** %e, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %15, i64 -1
  %16 = load i8, i8* %add.ptr17, align 1
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp sle i32 %conv18, 253
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  %17 = load i8*, i8** %e, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr21, i8** %e, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true, %while.end
  %18 = load i64, i64* %len.addr, align 8
  %19 = load i8*, i8** %e, align 8
  %20 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %18, %sub.ptr.sub
  store i64 %sub, i64* %clen, align 8
  %21 = load i64, i64* %clen, align 8
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.end
  %22 = load i8*, i8** %e, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom = zext i8 %23 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %24 to i64
  %25 = load i64, i64* %clen, align 8
  %cmp24 = icmp eq i64 %conv23, %25
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.22
  %26 = load i8*, i8** %s.addr, align 8
  %27 = load i64, i64* %len.addr, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %add.ptr27, i8** %e, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.22, %if.end
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8*, i8** %e, align 8
  %call = call signext i8 @has_hibit(i8* %28, i8* %29)
  %tobool29 = icmp ne i8 %call, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  store i8 0, i8* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8*, i8** %e, align 8
  %32 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast32 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %32 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %call35 = call signext i8 @Perl_is_utf8_string(i8* %30, i64 %sub.ptr.sub34)
  store i8 %call35, i8* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30
  %33 = load i8, i8* %retval
  ret i8 %33
}

; Function Attrs: nounwind uwtable
define void @XS_HTML__Entities_UNICODE_SUPPORT(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 7
  %10 = load i8, i8* %op_private, align 1
  %conv7 = zext i8 %10 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 3
  %12 = load i64, i64* %op_targ, align 8
  %13 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %12
  %14 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %14, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  store i32 1, i32* %RETVAL, align 4
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %16 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 -1
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %18 = load i32, i32* %RETVAL, align 4
  %conv11 = sext i32 %18 to i64
  call void @Perl_sv_setiv(%struct.sv* %17, i64 %conv11)
  %19 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags, align 4
  %and12 = and i32 %20, 16384
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %cond.end
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %call15 = call i32 @Perl_mg_set(%struct.sv* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %cond.end
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i32 1
  store %struct.sv** %incdec.ptr17, %struct.sv*** %sp, align 8
  store %struct.sv* %22, %struct.sv** %incdec.ptr17, align 8
  store %struct.sv* %22, %struct.sv** %tmp
  %24 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %26 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext19
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @boot_HTML__Parser(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %cv6 = alloca %struct.cv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser__alloc_pstate, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_parse, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_eof, i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %11)
  store %struct.cv* %call9, %struct.cv** %cv6, align 8
  %12 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 9, i32* %any_i32, align 4
  %14 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %14)
  store %struct.cv* %call10, %struct.cv** %cv6, align 8
  %15 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any11 = getelementptr inbounds %struct.cv, %struct.cv* %15, i32 0, i32 0
  %16 = load %struct.xpvcv*, %struct.xpvcv** %sv_any11, align 8
  %xcv_xsubany12 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %16, i32 0, i32 11
  %any_i3213 = bitcast %union.any* %xcv_xsubany12 to i32*
  store i32 8, i32* %any_i3213, align 4
  %17 = load i8*, i8** %file, align 8
  %call14 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %17)
  store %struct.cv* %call14, %struct.cv** %cv6, align 8
  %18 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any15 = getelementptr inbounds %struct.cv, %struct.cv* %18, i32 0, i32 0
  %19 = load %struct.xpvcv*, %struct.xpvcv** %sv_any15, align 8
  %xcv_xsubany16 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %19, i32 0, i32 11
  %any_i3217 = bitcast %union.any* %xcv_xsubany16 to i32*
  store i32 5, i32* %any_i3217, align 4
  %20 = load i8*, i8** %file, align 8
  %call18 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %20)
  store %struct.cv* %call18, %struct.cv** %cv6, align 8
  %21 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any19 = getelementptr inbounds %struct.cv, %struct.cv* %21, i32 0, i32 0
  %22 = load %struct.xpvcv*, %struct.xpvcv** %sv_any19, align 8
  %xcv_xsubany20 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %22, i32 0, i32 11
  %any_i3221 = bitcast %union.any* %xcv_xsubany20 to i32*
  store i32 7, i32* %any_i3221, align 4
  %23 = load i8*, i8** %file, align 8
  %call22 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %23)
  store %struct.cv* %call22, %struct.cv** %cv6, align 8
  %24 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any23 = getelementptr inbounds %struct.cv, %struct.cv* %24, i32 0, i32 0
  %25 = load %struct.xpvcv*, %struct.xpvcv** %sv_any23, align 8
  %xcv_xsubany24 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %25, i32 0, i32 11
  %any_i3225 = bitcast %union.any* %xcv_xsubany24 to i32*
  store i32 4, i32* %any_i3225, align 4
  %26 = load i8*, i8** %file, align 8
  %call26 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %26)
  store %struct.cv* %call26, %struct.cv** %cv6, align 8
  %27 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any27 = getelementptr inbounds %struct.cv, %struct.cv* %27, i32 0, i32 0
  %28 = load %struct.xpvcv*, %struct.xpvcv** %sv_any27, align 8
  %xcv_xsubany28 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %28, i32 0, i32 11
  %any_i3229 = bitcast %union.any* %xcv_xsubany28 to i32*
  store i32 1, i32* %any_i3229, align 4
  %29 = load i8*, i8** %file, align 8
  %call30 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %29)
  store %struct.cv* %call30, %struct.cv** %cv6, align 8
  %30 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any31 = getelementptr inbounds %struct.cv, %struct.cv* %30, i32 0, i32 0
  %31 = load %struct.xpvcv*, %struct.xpvcv** %sv_any31, align 8
  %xcv_xsubany32 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %31, i32 0, i32 11
  %any_i3233 = bitcast %union.any* %xcv_xsubany32 to i32*
  store i32 3, i32* %any_i3233, align 4
  %32 = load i8*, i8** %file, align 8
  %call34 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %32)
  store %struct.cv* %call34, %struct.cv** %cv6, align 8
  %33 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any35 = getelementptr inbounds %struct.cv, %struct.cv* %33, i32 0, i32 0
  %34 = load %struct.xpvcv*, %struct.xpvcv** %sv_any35, align 8
  %xcv_xsubany36 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %34, i32 0, i32 11
  %any_i3237 = bitcast %union.any* %xcv_xsubany36 to i32*
  store i32 6, i32* %any_i3237, align 4
  %35 = load i8*, i8** %file, align 8
  %call38 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %35)
  store %struct.cv* %call38, %struct.cv** %cv6, align 8
  %36 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any39 = getelementptr inbounds %struct.cv, %struct.cv* %36, i32 0, i32 0
  %37 = load %struct.xpvcv*, %struct.xpvcv** %sv_any39, align 8
  %xcv_xsubany40 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %37, i32 0, i32 11
  %any_i3241 = bitcast %union.any* %xcv_xsubany40 to i32*
  store i32 2, i32* %any_i3241, align 4
  %38 = load i8*, i8** %file, align 8
  %call42 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* %38)
  store %struct.cv* %call42, %struct.cv** %cv6, align 8
  %39 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any43 = getelementptr inbounds %struct.cv, %struct.cv* %39, i32 0, i32 0
  %40 = load %struct.xpvcv*, %struct.xpvcv** %sv_any43, align 8
  %xcv_xsubany44 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %40, i32 0, i32 11
  %any_i3245 = bitcast %union.any* %xcv_xsubany44 to i32*
  store i32 10, i32* %any_i3245, align 4
  %41 = load i8*, i8** %file, align 8
  %call46 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_boolean_attribute_value, i8* %41)
  %42 = load i8*, i8** %file, align 8
  %call47 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* %42)
  store %struct.cv* %call47, %struct.cv** %cv6, align 8
  %43 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any48 = getelementptr inbounds %struct.cv, %struct.cv* %43, i32 0, i32 0
  %44 = load %struct.xpvcv*, %struct.xpvcv** %sv_any48, align 8
  %xcv_xsubany49 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %44, i32 0, i32 11
  %any_i3250 = bitcast %union.any* %xcv_xsubany49 to i32*
  store i32 2, i32* %any_i3250, align 4
  %45 = load i8*, i8** %file, align 8
  %call51 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* %45)
  store %struct.cv* %call51, %struct.cv** %cv6, align 8
  %46 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any52 = getelementptr inbounds %struct.cv, %struct.cv* %46, i32 0, i32 0
  %47 = load %struct.xpvcv*, %struct.xpvcv** %sv_any52, align 8
  %xcv_xsubany53 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %47, i32 0, i32 11
  %any_i3254 = bitcast %union.any* %xcv_xsubany53 to i32*
  store i32 3, i32* %any_i3254, align 4
  %48 = load i8*, i8** %file, align 8
  %call55 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* %48)
  store %struct.cv* %call55, %struct.cv** %cv6, align 8
  %49 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any56 = getelementptr inbounds %struct.cv, %struct.cv* %49, i32 0, i32 0
  %50 = load %struct.xpvcv*, %struct.xpvcv** %sv_any56, align 8
  %xcv_xsubany57 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %50, i32 0, i32 11
  %any_i3258 = bitcast %union.any* %xcv_xsubany57 to i32*
  store i32 1, i32* %any_i3258, align 4
  %51 = load i8*, i8** %file, align 8
  %call59 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Parser_handler, i8* %51)
  %52 = load i8*, i8** %file, align 8
  %call60 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Entities_decode_entities, i8* %52)
  %53 = load i8*, i8** %file, align 8
  %call61 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Entities__decode_entities, i8* %53)
  %54 = load i8*, i8** %file, align 8
  %call62 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Entities__probably_utf8_chunk, i8* %54)
  %55 = load i8*, i8** %file, align 8
  %call63 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), void (%struct.cv*)* @XS_HTML__Entities_UNICODE_SUPPORT, i8* %55)
  %56 = bitcast %struct.cv* %call63 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0))
  %57 = load i32, i32* %ax, align 4
  %add64 = add nsw i32 %57, 0
  %idxprom = sext i32 %add64 to i64
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %60 = load i32, i32* %ax, align 4
  %idx.ext65 = sext i32 %60 to i64
  %add.ptr66 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idx.ext65
  %61 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %61, 1
  %add.ptr67 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr66, i64 %sub
  store %struct.sv** %add.ptr67, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @free_pstate(%struct.p_state* %pstate) #0 {
entry:
  %pstate.addr = alloca %struct.p_state*, align 8
  %i = alloca i32, align 4
  store %struct.p_state* %pstate, %struct.p_state** %pstate.addr, align 8
  %0 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %buf = getelementptr inbounds %struct.p_state, %struct.p_state* %0, i32 0, i32 1
  %1 = load %struct.sv*, %struct.sv** %buf, align 8
  call void @Perl_sv_free(%struct.sv* %1)
  %2 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %pend_text = getelementptr inbounds %struct.p_state, %struct.p_state* %2, i32 0, i32 11
  %3 = load %struct.sv*, %struct.sv** %pend_text, align 8
  call void @Perl_sv_free(%struct.sv* %3)
  %4 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %skipped_text = getelementptr inbounds %struct.p_state, %struct.p_state* %4, i32 0, i32 16
  %5 = load %struct.sv*, %struct.sv** %skipped_text, align 8
  call void @Perl_sv_free(%struct.sv* %5)
  %6 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %ms_stack = getelementptr inbounds %struct.p_state, %struct.p_state* %6, i32 0, i32 18
  %7 = load %struct.av*, %struct.av** %ms_stack, align 8
  %8 = bitcast %struct.av* %7 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %8)
  %9 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %bool_attr_val = getelementptr inbounds %struct.p_state, %struct.p_state* %9, i32 0, i32 29
  %10 = load %struct.sv*, %struct.sv** %bool_attr_val, align 8
  call void @Perl_sv_free(%struct.sv* %10)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %handlers = getelementptr inbounds %struct.p_state, %struct.p_state* %13, i32 0, i32 30
  %arrayidx = getelementptr inbounds [9 x %struct.p_handler], [9 x %struct.p_handler]* %handlers, i32 0, i64 %idxprom
  %cb = getelementptr inbounds %struct.p_handler, %struct.p_handler* %arrayidx, i32 0, i32 0
  %14 = load %struct.sv*, %struct.sv** %cb, align 8
  call void @Perl_sv_free(%struct.sv* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %15 to i64
  %16 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %handlers2 = getelementptr inbounds %struct.p_state, %struct.p_state* %16, i32 0, i32 30
  %arrayidx3 = getelementptr inbounds [9 x %struct.p_handler], [9 x %struct.p_handler]* %handlers2, i32 0, i64 %idxprom1
  %argspec = getelementptr inbounds %struct.p_handler, %struct.p_handler* %arrayidx3, i32 0, i32 1
  %17 = load %struct.sv*, %struct.sv** %argspec, align 8
  call void @Perl_sv_free(%struct.sv* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %report_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %19, i32 0, i32 32
  %20 = load %struct.hv*, %struct.hv** %report_tags, align 8
  %21 = bitcast %struct.hv* %20 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %21)
  %22 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %ignore_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %22, i32 0, i32 33
  %23 = load %struct.hv*, %struct.hv** %ignore_tags, align 8
  %24 = bitcast %struct.hv* %23 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %24)
  %25 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %ignore_elements = getelementptr inbounds %struct.p_state, %struct.p_state* %25, i32 0, i32 34
  %26 = load %struct.hv*, %struct.hv** %ignore_elements, align 8
  %27 = bitcast %struct.hv* %26 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %27)
  %28 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %ignoring_element = getelementptr inbounds %struct.p_state, %struct.p_state* %28, i32 0, i32 35
  %29 = load %struct.sv*, %struct.sv** %ignoring_element, align 8
  call void @Perl_sv_free(%struct.sv* %29)
  %30 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %tmp = getelementptr inbounds %struct.p_state, %struct.p_state* %30, i32 0, i32 38
  %31 = load %struct.sv*, %struct.sv** %tmp, align 8
  call void @Perl_sv_free(%struct.sv* %31)
  %32 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %signature = getelementptr inbounds %struct.p_state, %struct.p_state* %32, i32 0, i32 0
  store i32 0, i32* %signature, align 4
  %33 = load %struct.p_state*, %struct.p_state** %pstate.addr, align 8
  %34 = bitcast %struct.p_state* %33 to i8*
  call void @Perl_safesysfree(i8* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.p_state* @get_pstate_iv(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %p = alloca %struct.p_state*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %4, i32 0, i32 3
  %5 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %7 = inttoptr i64 %cond to %struct.p_state*
  store %struct.p_state* %7, %struct.p_state** %p, align 8
  %8 = load %struct.p_state*, %struct.p_state** %p, align 8
  %signature = getelementptr inbounds %struct.p_state, %struct.p_state* %8, i32 0, i32 0
  %9 = load i32, i32* %signature, align 4
  %cmp = icmp ne i32 %9, 369695076
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load %struct.p_state*, %struct.p_state** %p, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.64, i32 0, i32 0), %struct.p_state* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load %struct.p_state*, %struct.p_state** %p, align 8
  ret %struct.p_state* %11
}

declare void @Perl_safesysfree(i8*) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @parse_buf(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %new_pos = alloca i8*, align 8
  %l = alloca i8*, align 8
  %skip_quoted_end = alloca i8, align 1
  %inside_quote = alloca i8, align 1
  %escape_next = alloca i8, align 1
  %end_text = alloca i8*, align 8
  %end_token = alloca %struct.token_pos, align 8
  %end_text143 = alloca i8*, align 8
  %end_text184 = alloca i8*, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %beg.addr, align 8
  store i8* %1, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.308, %entry
  %2 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %eof = getelementptr inbounds %struct.p_state, %struct.p_state* %2, i32 0, i32 6
  %3 = load i8, i8* %eof, align 1
  %tobool = icmp ne i8 %3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.309

while.body:                                       ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.116, %while.body
  %4 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %4, i32 0, i32 7
  %5 = load i8*, i8** %literal_mode, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %while.body.3, label %while.end.117

while.body.3:                                     ; preds = %while.cond.1
  %6 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode4 = getelementptr inbounds %struct.p_state, %struct.p_state* %6, i32 0, i32 7
  %7 = load i8*, i8** %literal_mode4, align 8
  store i8* %7, i8** %l, align 8
  %8 = load i8*, i8** %l, align 8
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.body.3
  %9 = load i8*, i8** %l, align 8
  %call6 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.body.3
  %10 = phi i1 [ true, %while.body.3 ], [ %lnot8, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %conv = trunc i32 %lor.ext to i8
  store i8 %conv, i8* %skip_quoted_end, align 1
  store i8 0, i8* %inside_quote, align 1
  store i8 0, i8* %escape_next, align 1
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.57, %lor.end
  %11 = load i8*, i8** %s, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %11, %12
  br i1 %cmp, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.9
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 60
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body.11
  %15 = load i8, i8* %inside_quote, align 1
  %tobool15 = icmp ne i8 %15, 0
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %while.body.11
  %16 = load i8, i8* %skip_quoted_end, align 1
  %tobool16 = icmp ne i8 %16, 0
  br i1 %tobool16, label %if.then.17, label %if.end.57

if.then.17:                                       ; preds = %if.end
  %17 = load i8, i8* %escape_next, align 1
  %tobool18 = icmp ne i8 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  store i8 0, i8* %escape_next, align 1
  br label %if.end.56

if.else:                                          ; preds = %if.then.17
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 92
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i8 1, i8* %escape_next, align 1
  br label %if.end.55

if.else.24:                                       ; preds = %if.else
  %20 = load i8, i8* %inside_quote, align 1
  %conv25 = sext i8 %20 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.33

land.lhs.true.27:                                 ; preds = %if.else.24
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %conv28 = sext i8 %22 to i32
  %23 = load i8, i8* %inside_quote, align 1
  %conv29 = sext i8 %23 to i32
  %cmp30 = icmp eq i32 %conv28, %conv29
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.27
  store i8 0, i8* %inside_quote, align 1
  br label %if.end.54

if.else.33:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv34 = sext i8 %25 to i32
  %cmp35 = icmp eq i32 %conv34, 13
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.33
  %26 = load i8*, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %conv37 = sext i8 %27 to i32
  %cmp38 = icmp eq i32 %conv37, 10
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.else.33
  store i8 0, i8* %inside_quote, align 1
  br label %if.end.53

if.else.41:                                       ; preds = %lor.lhs.false
  %28 = load i8, i8* %inside_quote, align 1
  %tobool42 = icmp ne i8 %28, 0
  br i1 %tobool42, label %if.end.52, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %if.else.41
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv44 = sext i8 %30 to i32
  %cmp45 = icmp eq i32 %conv44, 34
  br i1 %cmp45, label %if.then.51, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.43
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv48 = sext i8 %32 to i32
  %cmp49 = icmp eq i32 %conv48, 39
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false.47, %land.lhs.true.43
  %33 = load i8*, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %inside_quote, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %lor.lhs.false.47, %if.else.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.40
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.32
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.23
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.19
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.9

while.end:                                        ; preds = %if.then, %while.cond.9
  %36 = load i8*, i8** %s, align 8
  %37 = load i8*, i8** %end.addr, align 8
  %cmp58 = icmp eq i8* %36, %37
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.end
  %38 = load i8*, i8** %t, align 8
  store i8* %38, i8** %s, align 8
  br label %DONE

if.end.61:                                        ; preds = %while.end
  %39 = load i8*, i8** %s, align 8
  store i8* %39, i8** %end_text, align 8
  %40 = load i8*, i8** %s, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr62, i8** %s, align 8
  %41 = load i8*, i8** %s, align 8
  %42 = load i8, i8* %41, align 1
  %conv63 = sext i8 %42 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %if.then.66, label %if.end.116

if.then.66:                                       ; preds = %if.end.61
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr67, i8** %s, align 8
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.83, %if.then.66
  %44 = load i8*, i8** %l, align 8
  %45 = load i8, i8* %44, align 1
  %conv69 = sext i8 %45 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.68
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %conv71 = sext i8 %47 to i32
  %cmp72 = icmp sge i32 %conv71, 65
  br i1 %cmp72, label %land.lhs.true.74, label %cond.false

land.lhs.true.74:                                 ; preds = %land.rhs
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %conv75 = sext i8 %49 to i32
  %cmp76 = icmp sle i32 %conv75, 90
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.74
  %50 = load i8*, i8** %s, align 8
  %51 = load i8, i8* %50, align 1
  %conv78 = sext i8 %51 to i32
  %add = add nsw i32 %conv78, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.74, %land.rhs
  %52 = load i8*, i8** %s, align 8
  %53 = load i8, i8* %52, align 1
  %conv79 = sext i8 %53 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv79, %cond.false ]
  %54 = load i8*, i8** %l, align 8
  %55 = load i8, i8* %54, align 1
  %conv80 = sext i8 %55 to i32
  %cmp81 = icmp eq i32 %cond, %conv80
  br label %land.end

land.end:                                         ; preds = %cond.end, %while.cond.68
  %56 = phi i1 [ false, %while.cond.68 ], [ %cmp81, %cond.end ]
  br i1 %56, label %while.body.83, label %while.end.86

while.body.83:                                    ; preds = %land.end
  %57 = load i8*, i8** %s, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr84, i8** %s, align 8
  %58 = load i8*, i8** %l, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr85, i8** %l, align 8
  br label %while.cond.68

while.end.86:                                     ; preds = %land.end
  %59 = load i8*, i8** %l, align 8
  %60 = load i8, i8* %59, align 1
  %tobool87 = icmp ne i8 %60, 0
  br i1 %tobool87, label %if.end.115, label %land.lhs.true.88

land.lhs.true.88:                                 ; preds = %while.end.86
  %61 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode89 = getelementptr inbounds %struct.p_state, %struct.p_state* %61, i32 0, i32 7
  %62 = load i8*, i8** %literal_mode89, align 8
  %call90 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0))
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.88
  %63 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %closing_plaintext = getelementptr inbounds %struct.p_state, %struct.p_state* %63, i32 0, i32 27
  %64 = load i8, i8* %closing_plaintext, align 1
  %conv93 = sext i8 %64 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.115

if.then.95:                                       ; preds = %lor.lhs.false.92, %land.lhs.true.88
  %65 = load i8*, i8** %end_text, align 8
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 2
  %beg96 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %end_token, i32 0, i32 0
  store i8* %add.ptr, i8** %beg96, align 8
  %66 = load i8*, i8** %s, align 8
  %end97 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %end_token, i32 0, i32 1
  store i8* %66, i8** %end97, align 8
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.body.101, %if.then.95
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %idxprom = zext i8 %68 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %69 = load i8, i8* %arrayidx, align 1
  %conv99 = zext i8 %69 to i32
  %and = and i32 %conv99, 1
  %tobool100 = icmp ne i32 %and, 0
  br i1 %tobool100, label %while.body.101, label %while.end.103

while.body.101:                                   ; preds = %while.cond.98
  %70 = load i8*, i8** %s, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr102, i8** %s, align 8
  br label %while.cond.98

while.end.103:                                    ; preds = %while.cond.98
  %71 = load i8*, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv104 = sext i8 %72 to i32
  %cmp105 = icmp eq i32 %conv104, 62
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %while.end.103
  %73 = load i8*, i8** %s, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr108, i8** %s, align 8
  %74 = load i8*, i8** %t, align 8
  %75 = load i8*, i8** %end_text, align 8
  %cmp109 = icmp ne i8* %74, %75
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.107
  %76 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %77 = load i8*, i8** %t, align 8
  %78 = load i8*, i8** %end_text, align 8
  %79 = load i32, i32* %utf8.addr, align 4
  %80 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %76, i32 4, i8* %77, i8* %78, i32 %79, %struct.token_pos* null, i32 0, %struct.sv* %80)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.then.107
  %81 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %82 = load i8*, i8** %end_text, align 8
  %83 = load i8*, i8** %s, align 8
  %84 = load i32, i32* %utf8.addr, align 4
  %85 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %81, i32 3, i8* %82, i8* %83, i32 %84, %struct.token_pos* %end_token, i32 1, %struct.sv* %85)
  %86 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode113 = getelementptr inbounds %struct.p_state, %struct.p_state* %86, i32 0, i32 7
  store i8* null, i8** %literal_mode113, align 8
  %87 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %87, i32 0, i32 8
  store i8 0, i8* %is_cdata, align 1
  %88 = load i8*, i8** %s, align 8
  store i8* %88, i8** %t, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.112, %while.end.103
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %lor.lhs.false.92, %while.end.86
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.61
  br label %while.cond.1

while.end.117:                                    ; preds = %while.cond.1
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.166, %if.end.158, %while.end.117
  %89 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms = getelementptr inbounds %struct.p_state, %struct.p_state* %89, i32 0, i32 17
  %90 = load i32, i32* %ms, align 4
  %cmp119 = icmp eq i32 %90, 3
  br i1 %cmp119, label %lor.end.125, label %lor.rhs.121

lor.rhs.121:                                      ; preds = %while.cond.118
  %91 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms122 = getelementptr inbounds %struct.p_state, %struct.p_state* %91, i32 0, i32 17
  %92 = load i32, i32* %ms122, align 4
  %cmp123 = icmp eq i32 %92, 2
  br label %lor.end.125

lor.end.125:                                      ; preds = %lor.rhs.121, %while.cond.118
  %93 = phi i1 [ true, %while.cond.118 ], [ %cmp123, %lor.rhs.121 ]
  br i1 %93, label %while.body.127, label %while.end.167

while.body.127:                                   ; preds = %lor.end.125
  br label %while.cond.128

while.cond.128:                                   ; preds = %while.body.136, %while.body.127
  %94 = load i8*, i8** %s, align 8
  %95 = load i8*, i8** %end.addr, align 8
  %cmp129 = icmp ult i8* %94, %95
  br i1 %cmp129, label %land.rhs.131, label %land.end.135

land.rhs.131:                                     ; preds = %while.cond.128
  %96 = load i8*, i8** %s, align 8
  %97 = load i8, i8* %96, align 1
  %conv132 = sext i8 %97 to i32
  %cmp133 = icmp ne i32 %conv132, 93
  br label %land.end.135

land.end.135:                                     ; preds = %land.rhs.131, %while.cond.128
  %98 = phi i1 [ false, %while.cond.128 ], [ %cmp133, %land.rhs.131 ]
  br i1 %98, label %while.body.136, label %while.end.138

while.body.136:                                   ; preds = %land.end.135
  %99 = load i8*, i8** %s, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr137, i8** %s, align 8
  br label %while.cond.128

while.end.138:                                    ; preds = %land.end.135
  %100 = load i8*, i8** %s, align 8
  %101 = load i8, i8* %100, align 1
  %conv139 = sext i8 %101 to i32
  %cmp140 = icmp eq i32 %conv139, 93
  br i1 %cmp140, label %if.then.142, label %if.end.162

if.then.142:                                      ; preds = %while.end.138
  %102 = load i8*, i8** %s, align 8
  store i8* %102, i8** %end_text143, align 8
  %103 = load i8*, i8** %s, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr144, i8** %s, align 8
  %104 = load i8*, i8** %s, align 8
  %105 = load i8, i8* %104, align 1
  %conv145 = sext i8 %105 to i32
  %cmp146 = icmp eq i32 %conv145, 93
  br i1 %cmp146, label %if.then.148, label %if.end.161

if.then.148:                                      ; preds = %if.then.142
  %106 = load i8*, i8** %s, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr149, i8** %s, align 8
  %107 = load i8*, i8** %s, align 8
  %108 = load i8, i8* %107, align 1
  %conv150 = sext i8 %108 to i32
  %cmp151 = icmp eq i32 %conv150, 62
  br i1 %cmp151, label %if.then.153, label %if.end.160

if.then.153:                                      ; preds = %if.then.148
  %109 = load i8*, i8** %s, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr154, i8** %s, align 8
  %110 = load i8*, i8** %t, align 8
  %111 = load i8*, i8** %end_text143, align 8
  %cmp155 = icmp ne i8* %110, %111
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.then.153
  %112 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %113 = load i8*, i8** %t, align 8
  %114 = load i8*, i8** %end_text143, align 8
  %115 = load i32, i32* %utf8.addr, align 4
  %116 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %112, i32 4, i8* %113, i8* %114, i32 %115, %struct.token_pos* null, i32 0, %struct.sv* %116)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.then.153
  %117 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %118 = load i8*, i8** %end_text143, align 8
  %119 = load i8*, i8** %s, align 8
  %120 = load i32, i32* %utf8.addr, align 4
  %121 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %117, i32 10, i8* %118, i8* %119, i32 %120, %struct.token_pos* null, i32 0, %struct.sv* %121)
  %122 = load i8*, i8** %s, align 8
  store i8* %122, i8** %t, align 8
  %123 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack = getelementptr inbounds %struct.p_state, %struct.p_state* %123, i32 0, i32 18
  %124 = load %struct.av*, %struct.av** %ms_stack, align 8
  %call159 = call %struct.sv* @Perl_av_pop(%struct.av* %124)
  call void @Perl_sv_free(%struct.sv* %call159)
  %125 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  call void @marked_section_update(%struct.p_state* %125)
  br label %while.cond.118

if.end.160:                                       ; preds = %if.then.148
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.142
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %while.end.138
  %126 = load i8*, i8** %s, align 8
  %127 = load i8*, i8** %end.addr, align 8
  %cmp163 = icmp eq i8* %126, %127
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  %128 = load i8*, i8** %t, align 8
  store i8* %128, i8** %s, align 8
  br label %DONE

if.end.166:                                       ; preds = %if.end.162
  br label %while.cond.118

while.end.167:                                    ; preds = %lor.end.125
  br label %while.cond.168

while.cond.168:                                   ; preds = %if.end.200, %if.then.194, %while.end.167
  %129 = load i8*, i8** %s, align 8
  %130 = load i8*, i8** %end.addr, align 8
  %cmp169 = icmp ult i8* %129, %130
  br i1 %cmp169, label %land.rhs.171, label %land.end.175

land.rhs.171:                                     ; preds = %while.cond.168
  %131 = load i8*, i8** %s, align 8
  %132 = load i8, i8* %131, align 1
  %conv172 = sext i8 %132 to i32
  %cmp173 = icmp ne i32 %conv172, 60
  br label %land.end.175

land.end.175:                                     ; preds = %land.rhs.171, %while.cond.168
  %133 = phi i1 [ false, %while.cond.168 ], [ %cmp173, %land.rhs.171 ]
  br i1 %133, label %while.body.176, label %while.end.202

while.body.176:                                   ; preds = %land.end.175
  %134 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms177 = getelementptr inbounds %struct.p_state, %struct.p_state* %134, i32 0, i32 17
  %135 = load i32, i32* %ms177, align 4
  %tobool178 = icmp ne i32 %135, 0
  br i1 %tobool178, label %land.lhs.true.179, label %if.end.200

land.lhs.true.179:                                ; preds = %while.body.176
  %136 = load i8*, i8** %s, align 8
  %137 = load i8, i8* %136, align 1
  %conv180 = sext i8 %137 to i32
  %cmp181 = icmp eq i32 %conv180, 93
  br i1 %cmp181, label %if.then.183, label %if.end.200

if.then.183:                                      ; preds = %land.lhs.true.179
  %138 = load i8*, i8** %s, align 8
  store i8* %138, i8** %end_text184, align 8
  %139 = load i8*, i8** %s, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr185, i8** %s, align 8
  %140 = load i8*, i8** %s, align 8
  %141 = load i8, i8* %140, align 1
  %conv186 = sext i8 %141 to i32
  %cmp187 = icmp eq i32 %conv186, 93
  br i1 %cmp187, label %if.then.189, label %if.end.199

if.then.189:                                      ; preds = %if.then.183
  %142 = load i8*, i8** %s, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr190, i8** %s, align 8
  %143 = load i8*, i8** %s, align 8
  %144 = load i8, i8* %143, align 1
  %conv191 = sext i8 %144 to i32
  %cmp192 = icmp eq i32 %conv191, 62
  br i1 %cmp192, label %if.then.194, label %if.end.198

if.then.194:                                      ; preds = %if.then.189
  %145 = load i8*, i8** %s, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr195, i8** %s, align 8
  %146 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %147 = load i8*, i8** %t, align 8
  %148 = load i8*, i8** %end_text184, align 8
  %149 = load i32, i32* %utf8.addr, align 4
  %150 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %146, i32 4, i8* %147, i8* %148, i32 %149, %struct.token_pos* null, i32 0, %struct.sv* %150)
  %151 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %152 = load i8*, i8** %end_text184, align 8
  %153 = load i8*, i8** %s, align 8
  %154 = load i32, i32* %utf8.addr, align 4
  %155 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %151, i32 10, i8* %152, i8* %153, i32 %154, %struct.token_pos* null, i32 0, %struct.sv* %155)
  %156 = load i8*, i8** %s, align 8
  store i8* %156, i8** %t, align 8
  %157 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack196 = getelementptr inbounds %struct.p_state, %struct.p_state* %157, i32 0, i32 18
  %158 = load %struct.av*, %struct.av** %ms_stack196, align 8
  %call197 = call %struct.sv* @Perl_av_pop(%struct.av* %158)
  call void @Perl_sv_free(%struct.sv* %call197)
  %159 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  call void @marked_section_update(%struct.p_state* %159)
  br label %while.cond.168

if.end.198:                                       ; preds = %if.then.189
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.183
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %land.lhs.true.179, %while.body.176
  %160 = load i8*, i8** %s, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr201, i8** %s, align 8
  br label %while.cond.168

while.end.202:                                    ; preds = %land.end.175
  %161 = load i8*, i8** %s, align 8
  %162 = load i8*, i8** %t, align 8
  %cmp203 = icmp ne i8* %161, %162
  br i1 %cmp203, label %if.then.205, label %if.end.266

if.then.205:                                      ; preds = %while.end.202
  %163 = load i8*, i8** %s, align 8
  %164 = load i8, i8* %163, align 1
  %conv206 = sext i8 %164 to i32
  %cmp207 = icmp eq i32 %conv206, 60
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %if.then.205
  %165 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %166 = load i8*, i8** %t, align 8
  %167 = load i8*, i8** %s, align 8
  %168 = load i32, i32* %utf8.addr, align 4
  %169 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %165, i32 4, i8* %166, i8* %167, i32 %168, %struct.token_pos* null, i32 0, %struct.sv* %169)
  %170 = load i8*, i8** %s, align 8
  store i8* %170, i8** %t, align 8
  br label %if.end.265

if.else.210:                                      ; preds = %if.then.205
  %171 = load i8*, i8** %s, align 8
  %incdec.ptr211 = getelementptr inbounds i8, i8* %171, i32 -1
  store i8* %incdec.ptr211, i8** %s, align 8
  %172 = load i8*, i8** %s, align 8
  %173 = load i8, i8* %172, align 1
  %idxprom212 = zext i8 %173 to i64
  %arrayidx213 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom212
  %174 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %174 to i32
  %and215 = and i32 %conv214, 1
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.else.231

if.then.217:                                      ; preds = %if.else.210
  br label %while.cond.218

while.cond.218:                                   ; preds = %while.body.228, %if.then.217
  %175 = load i8*, i8** %s, align 8
  %176 = load i8*, i8** %t, align 8
  %cmp219 = icmp uge i8* %175, %176
  br i1 %cmp219, label %land.rhs.221, label %land.end.227

land.rhs.221:                                     ; preds = %while.cond.218
  %177 = load i8*, i8** %s, align 8
  %178 = load i8, i8* %177, align 1
  %idxprom222 = zext i8 %178 to i64
  %arrayidx223 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom222
  %179 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %179 to i32
  %and225 = and i32 %conv224, 1
  %tobool226 = icmp ne i32 %and225, 0
  br label %land.end.227

land.end.227:                                     ; preds = %land.rhs.221, %while.cond.218
  %180 = phi i1 [ false, %while.cond.218 ], [ %tobool226, %land.rhs.221 ]
  br i1 %180, label %while.body.228, label %while.end.230

while.body.228:                                   ; preds = %land.end.227
  %181 = load i8*, i8** %s, align 8
  %incdec.ptr229 = getelementptr inbounds i8, i8* %181, i32 -1
  store i8* %incdec.ptr229, i8** %s, align 8
  br label %while.cond.218

while.end.230:                                    ; preds = %land.end.227
  br label %if.end.259

if.else.231:                                      ; preds = %if.else.210
  br label %while.cond.232

while.cond.232:                                   ; preds = %while.body.243, %if.else.231
  %182 = load i8*, i8** %s, align 8
  %183 = load i8*, i8** %t, align 8
  %cmp233 = icmp uge i8* %182, %183
  br i1 %cmp233, label %land.rhs.235, label %land.end.242

land.rhs.235:                                     ; preds = %while.cond.232
  %184 = load i8*, i8** %s, align 8
  %185 = load i8, i8* %184, align 1
  %idxprom236 = zext i8 %185 to i64
  %arrayidx237 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom236
  %186 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %186 to i32
  %and239 = and i32 %conv238, 1
  %tobool240 = icmp ne i32 %and239, 0
  %lnot241 = xor i1 %tobool240, true
  br label %land.end.242

land.end.242:                                     ; preds = %land.rhs.235, %while.cond.232
  %187 = phi i1 [ false, %while.cond.232 ], [ %lnot241, %land.rhs.235 ]
  br i1 %187, label %while.body.243, label %while.end.245

while.body.243:                                   ; preds = %land.end.242
  %188 = load i8*, i8** %s, align 8
  %incdec.ptr244 = getelementptr inbounds i8, i8* %188, i32 -1
  store i8* %incdec.ptr244, i8** %s, align 8
  br label %while.cond.232

while.end.245:                                    ; preds = %land.end.242
  br label %while.cond.246

while.cond.246:                                   ; preds = %while.body.256, %while.end.245
  %189 = load i8*, i8** %s, align 8
  %190 = load i8*, i8** %t, align 8
  %cmp247 = icmp uge i8* %189, %190
  br i1 %cmp247, label %land.rhs.249, label %land.end.255

land.rhs.249:                                     ; preds = %while.cond.246
  %191 = load i8*, i8** %s, align 8
  %192 = load i8, i8* %191, align 1
  %idxprom250 = zext i8 %192 to i64
  %arrayidx251 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom250
  %193 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %193 to i32
  %and253 = and i32 %conv252, 1
  %tobool254 = icmp ne i32 %and253, 0
  br label %land.end.255

land.end.255:                                     ; preds = %land.rhs.249, %while.cond.246
  %194 = phi i1 [ false, %while.cond.246 ], [ %tobool254, %land.rhs.249 ]
  br i1 %194, label %while.body.256, label %while.end.258

while.body.256:                                   ; preds = %land.end.255
  %195 = load i8*, i8** %s, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %195, i32 -1
  store i8* %incdec.ptr257, i8** %s, align 8
  br label %while.cond.246

while.end.258:                                    ; preds = %land.end.255
  br label %if.end.259

if.end.259:                                       ; preds = %while.end.258, %while.end.230
  %196 = load i8*, i8** %s, align 8
  %incdec.ptr260 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr260, i8** %s, align 8
  %197 = load i8*, i8** %s, align 8
  %198 = load i8*, i8** %t, align 8
  %cmp261 = icmp ne i8* %197, %198
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.259
  %199 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %200 = load i8*, i8** %t, align 8
  %201 = load i8*, i8** %s, align 8
  %202 = load i32, i32* %utf8.addr, align 4
  %203 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %199, i32 4, i8* %200, i8* %201, i32 %202, %struct.token_pos* null, i32 0, %struct.sv* %203)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %if.end.259
  br label %while.end.309

if.end.265:                                       ; preds = %if.then.209
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %while.end.202
  %204 = load i8*, i8** %end.addr, align 8
  %205 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %204 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %205 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp267 = icmp slt i64 %sub.ptr.sub, 3
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.266
  br label %while.end.309

if.end.270:                                       ; preds = %if.end.266
  %206 = load i8*, i8** %s, align 8
  %incdec.ptr271 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr271, i8** %s, align 8
  %207 = load i8*, i8** %s, align 8
  %208 = load i8, i8* %207, align 1
  %idxprom272 = zext i8 %208 to i64
  %arrayidx273 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom272
  %209 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %209 to i32
  %and275 = and i32 %conv274, 2
  %tobool276 = icmp ne i32 %and275, 0
  br i1 %tobool276, label %if.then.277, label %if.else.279

if.then.277:                                      ; preds = %if.end.270
  %210 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %211 = load i8*, i8** %t, align 8
  %212 = load i8*, i8** %end.addr, align 8
  %213 = load i32, i32* %utf8.addr, align 4
  %214 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call278 = call i8* @parse_start(%struct.p_state* %210, i8* %211, i8* %212, i32 %213, %struct.sv* %214)
  store i8* %call278, i8** %new_pos, align 8
  br label %if.end.301

if.else.279:                                      ; preds = %if.end.270
  %215 = load i8*, i8** %s, align 8
  %216 = load i8, i8* %215, align 1
  %conv280 = sext i8 %216 to i32
  %cmp281 = icmp eq i32 %conv280, 47
  br i1 %cmp281, label %if.then.283, label %if.else.285

if.then.283:                                      ; preds = %if.else.279
  %217 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %218 = load i8*, i8** %t, align 8
  %219 = load i8*, i8** %end.addr, align 8
  %220 = load i32, i32* %utf8.addr, align 4
  %221 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call284 = call i8* @parse_end(%struct.p_state* %217, i8* %218, i8* %219, i32 %220, %struct.sv* %221)
  store i8* %call284, i8** %new_pos, align 8
  br label %if.end.300

if.else.285:                                      ; preds = %if.else.279
  %222 = load i8*, i8** %s, align 8
  %223 = load i8, i8* %222, align 1
  %conv286 = sext i8 %223 to i32
  %cmp287 = icmp eq i32 %conv286, 33
  br i1 %cmp287, label %if.then.289, label %if.else.291

if.then.289:                                      ; preds = %if.else.285
  %224 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %225 = load i8*, i8** %t, align 8
  %226 = load i8*, i8** %end.addr, align 8
  %227 = load i32, i32* %utf8.addr, align 4
  %228 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call290 = call i8* @parse_decl(%struct.p_state* %224, i8* %225, i8* %226, i32 %227, %struct.sv* %228)
  store i8* %call290, i8** %new_pos, align 8
  br label %if.end.299

if.else.291:                                      ; preds = %if.else.285
  %229 = load i8*, i8** %s, align 8
  %230 = load i8, i8* %229, align 1
  %conv292 = sext i8 %230 to i32
  %cmp293 = icmp eq i32 %conv292, 63
  br i1 %cmp293, label %if.then.295, label %if.else.297

if.then.295:                                      ; preds = %if.else.291
  %231 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %232 = load i8*, i8** %t, align 8
  %233 = load i8*, i8** %end.addr, align 8
  %234 = load i32, i32* %utf8.addr, align 4
  %235 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call296 = call i8* @parse_process(%struct.p_state* %231, i8* %232, i8* %233, i32 %234, %struct.sv* %235)
  store i8* %call296, i8** %new_pos, align 8
  br label %if.end.298

if.else.297:                                      ; preds = %if.else.291
  store i8* null, i8** %new_pos, align 8
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.297, %if.then.295
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.289
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.283
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.277
  %236 = load i8*, i8** %new_pos, align 8
  %tobool302 = icmp ne i8* %236, null
  br i1 %tobool302, label %if.then.303, label %if.end.308

if.then.303:                                      ; preds = %if.end.301
  %237 = load i8*, i8** %new_pos, align 8
  %238 = load i8*, i8** %t, align 8
  %cmp304 = icmp eq i8* %237, %238
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.then.303
  %239 = load i8*, i8** %t, align 8
  store i8* %239, i8** %s, align 8
  br label %while.end.309

if.end.307:                                       ; preds = %if.then.303
  %240 = load i8*, i8** %new_pos, align 8
  store i8* %240, i8** %s, align 8
  store i8* %240, i8** %t, align 8
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.301
  br label %while.cond

while.end.309:                                    ; preds = %if.then.306, %if.then.269, %if.end.264, %while.cond
  br label %DONE

DONE:                                             ; preds = %while.end.309, %if.then.165, %if.then.60
  %241 = load i8*, i8** %s, align 8
  ret i8* %241
}

; Function Attrs: nounwind uwtable
define internal void @report_event(%struct.p_state* %p_state, i32 %event, i8* %beg, i8* %end, i32 %utf8, %struct.token_pos* %tokens, i32 %num_tokens, %struct.sv* %self) #0 {
entry:
  %p_state.addr = alloca %struct.p_state*, align 8
  %event.addr = alloca i32, align 4
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %tokens.addr = alloca %struct.token_pos*, align 8
  %num_tokens.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %h = alloca %struct.p_handler*, align 8
  %sp = alloca %struct.sv**, align 8
  %array = alloca %struct.av*, align 8
  %my_na = alloca i64, align 8
  %argspec = alloca i8*, align 8
  %s = alloca i8*, align 8
  %offset = alloca i64, align 8
  %line = alloca i64, align 8
  %column = alloca i64, align 8
  %t = alloca %struct.token_pos, align 8
  %dummy = alloca i8, align 1
  %s17 = alloca i8*, align 8
  %nl = alloca i8*, align 8
  %tagname = alloca %struct.sv*, align 8
  %tmp266 = alloca %struct.sv*, align 8
  %tmp335 = alloca i32, align 4
  %arg = alloca %struct.sv*, align 8
  %push_arg = alloca i32, align 4
  %argcode = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %prev_token = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %av406 = alloca %struct.av*, align 8
  %i409 = alloca i32, align 4
  %e_type = alloca i8*, align 8
  %hv = alloca %struct.hv*, align 8
  %i517 = alloca i32, align 4
  %attrname = alloca %struct.sv*, align 8
  %attrval = alloca %struct.sv*, align 8
  %beg557 = alloca i8*, align 8
  %len = alloca i64, align 8
  %tmp645 = alloca %struct.sv*, align 8
  %tmp657 = alloca %struct.sv*, align 8
  %av676 = alloca %struct.av*, align 8
  %i679 = alloca i32, align 4
  %attrname685 = alloca %struct.sv*, align 8
  %len817 = alloca i32, align 4
  %tmp860 = alloca %struct.sv*, align 8
  %method = alloca i8*, align 8
  %tmp986 = alloca i64, align 8
  %tmp1029 = alloca %struct.sv*, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.token_pos* %tokens, %struct.token_pos** %tokens.addr, align 8
  store i32 %num_tokens, i32* %num_tokens.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset1 = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 2
  %2 = load i64, i64* %offset1, align 8
  store i64 %2, i64* %offset, align 8
  %3 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line2 = getelementptr inbounds %struct.p_state, %struct.p_state* %3, i32 0, i32 3
  %4 = load i64, i64* %line2, align 8
  store i64 %4, i64* %line, align 8
  %5 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column3 = getelementptr inbounds %struct.p_state, %struct.p_state* %5, i32 0, i32 4
  %6 = load i64, i64* %column3, align 8
  store i64 %6, i64* %column, align 8
  %7 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag = getelementptr inbounds %struct.p_state, %struct.p_state* %7, i32 0, i32 10
  %8 = load i8*, i8** %pending_end_tag, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %event.addr, align 4
  %cmp = icmp ne i32 %9, 4
  br i1 %cmp, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %event.addr, align 4
  %cmp5 = icmp ne i32 %10, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %11 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag6 = getelementptr inbounds %struct.p_state, %struct.p_state* %11, i32 0, i32 10
  %12 = load i8*, i8** %pending_end_tag6, align 8
  %beg7 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %t, i32 0, i32 0
  store i8* %12, i8** %beg7, align 8
  %13 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag8 = getelementptr inbounds %struct.p_state, %struct.p_state* %13, i32 0, i32 10
  %14 = load i8*, i8** %pending_end_tag8, align 8
  %15 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag9 = getelementptr inbounds %struct.p_state, %struct.p_state* %15, i32 0, i32 10
  %16 = load i8*, i8** %pending_end_tag9, align 8
  %call = call i64 @strlen(i8* %16)
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %call
  %end10 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %t, i32 0, i32 1
  store i8* %add.ptr, i8** %end10, align 8
  %17 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pending_end_tag11 = getelementptr inbounds %struct.p_state, %struct.p_state* %17, i32 0, i32 10
  store i8* null, i8** %pending_end_tag11, align 8
  %18 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %19 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %18, i32 3, i8* %dummy, i8* %dummy, i32 0, %struct.token_pos* %t, i32 1, %struct.sv* %19)
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %20, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  %21 = load i32, i32* %utf8.addr, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load i8*, i8** %end.addr, align 8
  %23 = load i8*, i8** %beg.addr, align 8
  %call13 = call i64 @Perl_utf8_distance(i8* %22, i8* %23)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load i8*, i8** %end.addr, align 8
  %25 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %26 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset14 = getelementptr inbounds %struct.p_state, %struct.p_state* %26, i32 0, i32 2
  %27 = load i64, i64* %offset14, align 8
  %add = add i64 %27, %cond
  store i64 %add, i64* %offset14, align 8
  %28 = load i64, i64* %line, align 8
  %tobool15 = icmp ne i64 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %cond.end
  %29 = load i8*, i8** %beg.addr, align 8
  store i8* %29, i8** %s17, align 8
  store i8* null, i8** %nl, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.then.16
  %30 = load i8*, i8** %s17, align 8
  %31 = load i8*, i8** %end.addr, align 8
  %cmp18 = icmp ult i8* %30, %31
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %s17, align 8
  %33 = load i8, i8* %32, align 1
  %conv = sext i8 %33 to i32
  %cmp19 = icmp eq i32 %conv, 10
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %while.body
  %34 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line22 = getelementptr inbounds %struct.p_state, %struct.p_state* %34, i32 0, i32 3
  %35 = load i64, i64* %line22, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %line22, align 8
  %36 = load i8*, i8** %s17, align 8
  store i8* %36, i8** %nl, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %while.body
  %37 = load i8*, i8** %s17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %s17, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i8*, i8** %nl, align 8
  %tobool24 = icmp ne i8* %38, null
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %while.end
  %39 = load i32, i32* %utf8.addr, align 4
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %if.then.25
  %40 = load i8*, i8** %end.addr, align 8
  %41 = load i8*, i8** %nl, align 8
  %call28 = call i64 @Perl_utf8_distance(i8* %40, i8* %41)
  br label %cond.end.33

cond.false.29:                                    ; preds = %if.then.25
  %42 = load i8*, i8** %end.addr, align 8
  %43 = load i8*, i8** %nl, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %43 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.27
  %cond34 = phi i64 [ %call28, %cond.true.27 ], [ %sub.ptr.sub32, %cond.false.29 ]
  %sub = sub nsw i64 %cond34, 1
  %44 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column35 = getelementptr inbounds %struct.p_state, %struct.p_state* %44, i32 0, i32 4
  store i64 %sub, i64* %column35, align 8
  br label %if.end.47

if.else:                                          ; preds = %while.end
  %45 = load i32, i32* %utf8.addr, align 4
  %tobool36 = icmp ne i32 %45, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %if.else
  %46 = load i8*, i8** %end.addr, align 8
  %47 = load i8*, i8** %beg.addr, align 8
  %call38 = call i64 @Perl_utf8_distance(i8* %46, i8* %47)
  br label %cond.end.43

cond.false.39:                                    ; preds = %if.else
  %48 = load i8*, i8** %end.addr, align 8
  %49 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast40 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %49 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.39, %cond.true.37
  %cond44 = phi i64 [ %call38, %cond.true.37 ], [ %sub.ptr.sub42, %cond.false.39 ]
  %50 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column45 = getelementptr inbounds %struct.p_state, %struct.p_state* %50, i32 0, i32 4
  %51 = load i64, i64* %column45, align 8
  %add46 = add i64 %51, %cond44
  store i64 %add46, i64* %column45, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end.43, %cond.end.33
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %cond.end
  %52 = load i32, i32* %event.addr, align 4
  %cmp49 = icmp eq i32 %52, 10
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  br label %IGNORE_EVENT

if.end.52:                                        ; preds = %if.end.48
  %53 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms = getelementptr inbounds %struct.p_state, %struct.p_state* %53, i32 0, i32 17
  %54 = load i32, i32* %ms, align 4
  %cmp53 = icmp eq i32 %54, 4
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  br label %IGNORE_EVENT

if.end.56:                                        ; preds = %if.end.52
  %55 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %55, i32 0, i32 33
  %56 = load %struct.hv*, %struct.hv** %ignore_tags, align 8
  %tobool57 = icmp ne %struct.hv* %56, null
  br i1 %tobool57, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.56
  %57 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %report_tags = getelementptr inbounds %struct.p_state, %struct.p_state* %57, i32 0, i32 32
  %58 = load %struct.hv*, %struct.hv** %report_tags, align 8
  %tobool58 = icmp ne %struct.hv* %58, null
  br i1 %tobool58, label %if.then.61, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false
  %59 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_elements = getelementptr inbounds %struct.p_state, %struct.p_state* %59, i32 0, i32 34
  %60 = load %struct.hv*, %struct.hv** %ignore_elements, align 8
  %tobool60 = icmp ne %struct.hv* %60, null
  br i1 %tobool60, label %if.then.61, label %if.end.143

if.then.61:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false, %if.end.56
  %61 = load i32, i32* %event.addr, align 4
  %cmp62 = icmp eq i32 %61, 2
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.then.61
  %62 = load i32, i32* %event.addr, align 4
  %cmp65 = icmp eq i32 %62, 3
  br i1 %cmp65, label %if.then.67, label %if.else.137

if.then.67:                                       ; preds = %lor.lhs.false.64, %if.then.61
  %63 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %tmp = getelementptr inbounds %struct.p_state, %struct.p_state* %63, i32 0, i32 38
  %64 = load %struct.sv*, %struct.sv** %tmp, align 8
  store %struct.sv* %64, %struct.sv** %tagname, align 8
  %65 = load %struct.sv*, %struct.sv** %tagname, align 8
  %66 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx = getelementptr inbounds %struct.token_pos, %struct.token_pos* %66, i64 0
  %beg68 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx, i32 0, i32 0
  %67 = load i8*, i8** %beg68, align 8
  %68 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %68, i64 0
  %end70 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx69, i32 0, i32 1
  %69 = load i8*, i8** %end70, align 8
  %70 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %70, i64 0
  %beg72 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx71, i32 0, i32 0
  %71 = load i8*, i8** %beg72, align 8
  %sub.ptr.lhs.cast73 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %71 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  call void @Perl_sv_setpvn(%struct.sv* %65, i8* %67, i64 %sub.ptr.sub75)
  %72 = load i32, i32* %utf8.addr, align 4
  %tobool76 = icmp ne i32 %72, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.then.67
  %73 = load %struct.sv*, %struct.sv** %tagname, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 2
  %74 = load i32, i32* %sv_flags, align 4
  %or = or i32 %74, 536870912
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.80

if.else.78:                                       ; preds = %if.then.67
  %75 = load %struct.sv*, %struct.sv** %tagname, align 8
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags79, align 4
  %and = and i32 %76, -536870913
  store i32 %and, i32* %sv_flags79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.77
  %77 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %77, i32 0, i32 23
  %78 = load i8, i8* %xml_mode, align 1
  %conv81 = sext i8 %78 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %if.end.88, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.end.80
  %79 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %case_sensitive = getelementptr inbounds %struct.p_state, %struct.p_state* %79, i32 0, i32 26
  %80 = load i8, i8* %case_sensitive, align 1
  %conv84 = sext i8 %80 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %if.end.88, label %if.then.86

if.then.86:                                       ; preds = %lor.lhs.false.83
  %81 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call87 = call %struct.sv* @sv_lower(%struct.sv* %81)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %lor.lhs.false.83, %if.end.80
  %82 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element = getelementptr inbounds %struct.p_state, %struct.p_state* %82, i32 0, i32 35
  %83 = load %struct.sv*, %struct.sv** %ignoring_element, align 8
  %tobool89 = icmp ne %struct.sv* %83, null
  br i1 %tobool89, label %if.then.90, label %if.end.109

if.then.90:                                       ; preds = %if.end.88
  %84 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element91 = getelementptr inbounds %struct.p_state, %struct.p_state* %84, i32 0, i32 35
  %85 = load %struct.sv*, %struct.sv** %ignoring_element91, align 8
  %86 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call92 = call i32 @Perl_sv_eq(%struct.sv* %85, %struct.sv* %86)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.108

if.then.94:                                       ; preds = %if.then.90
  %87 = load i32, i32* %event.addr, align 4
  %cmp95 = icmp eq i32 %87, 2
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.then.94
  %88 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_depth = getelementptr inbounds %struct.p_state, %struct.p_state* %88, i32 0, i32 36
  %89 = load i32, i32* %ignore_depth, align 4
  %inc98 = add nsw i32 %89, 1
  store i32 %inc98, i32* %ignore_depth, align 4
  br label %if.end.107

if.else.99:                                       ; preds = %if.then.94
  %90 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_depth100 = getelementptr inbounds %struct.p_state, %struct.p_state* %90, i32 0, i32 36
  %91 = load i32, i32* %ignore_depth100, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %ignore_depth100, align 4
  %cmp101 = icmp eq i32 %dec, 0
  br i1 %cmp101, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.else.99
  %92 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element104 = getelementptr inbounds %struct.p_state, %struct.p_state* %92, i32 0, i32 35
  %93 = load %struct.sv*, %struct.sv** %ignoring_element104, align 8
  call void @Perl_sv_free(%struct.sv* %93)
  %94 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element105 = getelementptr inbounds %struct.p_state, %struct.p_state* %94, i32 0, i32 35
  store %struct.sv* null, %struct.sv** %ignoring_element105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.else.99
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.97
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.90
  br label %IGNORE_EVENT

if.end.109:                                       ; preds = %if.end.88
  %95 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_elements110 = getelementptr inbounds %struct.p_state, %struct.p_state* %95, i32 0, i32 34
  %96 = load %struct.hv*, %struct.hv** %ignore_elements110, align 8
  %tobool111 = icmp ne %struct.hv* %96, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.120

land.lhs.true.112:                                ; preds = %if.end.109
  %97 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_elements113 = getelementptr inbounds %struct.p_state, %struct.p_state* %97, i32 0, i32 34
  %98 = load %struct.hv*, %struct.hv** %ignore_elements113, align 8
  %99 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call114 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %98, %struct.sv* %99, i32 0, i32 0)
  %tobool115 = icmp ne %struct.he* %call114, null
  br i1 %tobool115, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %land.lhs.true.112
  %100 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call117 = call %struct.sv* @Perl_newSVsv(%struct.sv* %100)
  %101 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element118 = getelementptr inbounds %struct.p_state, %struct.p_state* %101, i32 0, i32 35
  store %struct.sv* %call117, %struct.sv** %ignoring_element118, align 8
  %102 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_depth119 = getelementptr inbounds %struct.p_state, %struct.p_state* %102, i32 0, i32 36
  store i32 1, i32* %ignore_depth119, align 4
  br label %IGNORE_EVENT

if.end.120:                                       ; preds = %land.lhs.true.112, %if.end.109
  %103 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_tags121 = getelementptr inbounds %struct.p_state, %struct.p_state* %103, i32 0, i32 33
  %104 = load %struct.hv*, %struct.hv** %ignore_tags121, align 8
  %tobool122 = icmp ne %struct.hv* %104, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.128

land.lhs.true.123:                                ; preds = %if.end.120
  %105 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignore_tags124 = getelementptr inbounds %struct.p_state, %struct.p_state* %105, i32 0, i32 33
  %106 = load %struct.hv*, %struct.hv** %ignore_tags124, align 8
  %107 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call125 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %106, %struct.sv* %107, i32 0, i32 0)
  %tobool126 = icmp ne %struct.he* %call125, null
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.123
  br label %IGNORE_EVENT

if.end.128:                                       ; preds = %land.lhs.true.123, %if.end.120
  %108 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %report_tags129 = getelementptr inbounds %struct.p_state, %struct.p_state* %108, i32 0, i32 32
  %109 = load %struct.hv*, %struct.hv** %report_tags129, align 8
  %tobool130 = icmp ne %struct.hv* %109, null
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.136

land.lhs.true.131:                                ; preds = %if.end.128
  %110 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %report_tags132 = getelementptr inbounds %struct.p_state, %struct.p_state* %110, i32 0, i32 32
  %111 = load %struct.hv*, %struct.hv** %report_tags132, align 8
  %112 = load %struct.sv*, %struct.sv** %tagname, align 8
  %call133 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %111, %struct.sv* %112, i32 0, i32 0)
  %tobool134 = icmp ne %struct.he* %call133, null
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.131
  br label %IGNORE_EVENT

if.end.136:                                       ; preds = %land.lhs.true.131, %if.end.128
  br label %if.end.142

if.else.137:                                      ; preds = %lor.lhs.false.64
  %113 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ignoring_element138 = getelementptr inbounds %struct.p_state, %struct.p_state* %113, i32 0, i32 35
  %114 = load %struct.sv*, %struct.sv** %ignoring_element138, align 8
  %tobool139 = icmp ne %struct.sv* %114, null
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.else.137
  br label %IGNORE_EVENT

if.end.141:                                       ; preds = %if.else.137
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.136
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %lor.lhs.false.59
  %115 = load i32, i32* %event.addr, align 4
  %idxprom = zext i32 %115 to i64
  %116 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %handlers = getelementptr inbounds %struct.p_state, %struct.p_state* %116, i32 0, i32 30
  %arrayidx144 = getelementptr inbounds [9 x %struct.p_handler], [9 x %struct.p_handler]* %handlers, i32 0, i64 %idxprom
  store %struct.p_handler* %arrayidx144, %struct.p_handler** %h, align 8
  %117 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb = getelementptr inbounds %struct.p_handler, %struct.p_handler* %117, i32 0, i32 0
  %118 = load %struct.sv*, %struct.sv** %cb, align 8
  %tobool145 = icmp ne %struct.sv* %118, null
  br i1 %tobool145, label %if.end.153, label %if.then.146

if.then.146:                                      ; preds = %if.end.143
  %119 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %handlers147 = getelementptr inbounds %struct.p_state, %struct.p_state* %119, i32 0, i32 30
  %arrayidx148 = getelementptr inbounds [9 x %struct.p_handler], [9 x %struct.p_handler]* %handlers147, i32 0, i64 8
  store %struct.p_handler* %arrayidx148, %struct.p_handler** %h, align 8
  %120 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb149 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %120, i32 0, i32 0
  %121 = load %struct.sv*, %struct.sv** %cb149, align 8
  %tobool150 = icmp ne %struct.sv* %121, null
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %if.then.146
  br label %IGNORE_EVENT

if.end.152:                                       ; preds = %if.then.146
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.143
  %122 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb154 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %122, i32 0, i32 0
  %123 = load %struct.sv*, %struct.sv** %cb154, align 8
  %sv_flags155 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags155, align 4
  %and156 = and i32 %124, 255
  %cmp157 = icmp ne i32 %and156, 10
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.209

land.lhs.true.159:                                ; preds = %if.end.153
  %125 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb160 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %125, i32 0, i32 0
  %126 = load %struct.sv*, %struct.sv** %cb160, align 8
  %tobool161 = icmp ne %struct.sv* %126, null
  br i1 %tobool161, label %cond.false.163, label %cond.true.162

cond.true.162:                                    ; preds = %land.lhs.true.159
  br i1 false, label %if.end.209, label %if.then.208

cond.false.163:                                   ; preds = %land.lhs.true.159
  %127 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb164 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %127, i32 0, i32 0
  %128 = load %struct.sv*, %struct.sv** %cb164, align 8
  %sv_flags165 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 2
  %129 = load i32, i32* %sv_flags165, align 4
  %and166 = and i32 %129, 262144
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.183

cond.true.168:                                    ; preds = %cond.false.163
  %130 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb169 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %130, i32 0, i32 0
  %131 = load %struct.sv*, %struct.sv** %cb169, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %131, i32 0, i32 0
  %132 = load i8*, i8** %sv_any, align 8
  %133 = bitcast i8* %132 to %struct.xpv*
  store %struct.xpv* %133, %struct.xpv** @PL_Xpv, align 8
  %tobool170 = icmp ne %struct.xpv* %133, null
  br i1 %tobool170, label %land.lhs.true.171, label %cond.false.182

land.lhs.true.171:                                ; preds = %cond.true.168
  %134 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %134, i32 0, i32 1
  %135 = load i64, i64* %xpv_cur, align 8
  %cmp172 = icmp ugt i64 %135, 1
  br i1 %cmp172, label %cond.true.181, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %land.lhs.true.171
  %136 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur175 = getelementptr inbounds %struct.xpv, %struct.xpv* %136, i32 0, i32 1
  %137 = load i64, i64* %xpv_cur175, align 8
  %tobool176 = icmp ne i64 %137, 0
  br i1 %tobool176, label %land.lhs.true.177, label %cond.false.182

land.lhs.true.177:                                ; preds = %lor.lhs.false.174
  %138 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %138, i32 0, i32 0
  %139 = load i8*, i8** %xpv_pv, align 8
  %140 = load i8, i8* %139, align 1
  %conv178 = sext i8 %140 to i32
  %cmp179 = icmp ne i32 %conv178, 48
  br i1 %cmp179, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %land.lhs.true.177, %land.lhs.true.171
  br i1 true, label %if.end.209, label %if.then.208

cond.false.182:                                   ; preds = %land.lhs.true.177, %lor.lhs.false.174, %cond.true.168
  br i1 false, label %if.end.209, label %if.then.208

cond.false.183:                                   ; preds = %cond.false.163
  %141 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb184 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %141, i32 0, i32 0
  %142 = load %struct.sv*, %struct.sv** %cb184, align 8
  %sv_flags185 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 2
  %143 = load i32, i32* %sv_flags185, align 4
  %and186 = and i32 %143, 65536
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %cond.true.188, label %cond.false.193

cond.true.188:                                    ; preds = %cond.false.183
  %144 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb189 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %144, i32 0, i32 0
  %145 = load %struct.sv*, %struct.sv** %cb189, align 8
  %sv_any190 = getelementptr inbounds %struct.sv, %struct.sv* %145, i32 0, i32 0
  %146 = load i8*, i8** %sv_any190, align 8
  %147 = bitcast i8* %146 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %147, i32 0, i32 3
  %148 = load i64, i64* %xiv_iv, align 8
  %cmp191 = icmp ne i64 %148, 0
  br i1 %cmp191, label %if.end.209, label %if.then.208

cond.false.193:                                   ; preds = %cond.false.183
  %149 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb194 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %149, i32 0, i32 0
  %150 = load %struct.sv*, %struct.sv** %cb194, align 8
  %sv_flags195 = getelementptr inbounds %struct.sv, %struct.sv* %150, i32 0, i32 2
  %151 = load i32, i32* %sv_flags195, align 4
  %and196 = and i32 %151, 131072
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %cond.true.198, label %cond.false.203

cond.true.198:                                    ; preds = %cond.false.193
  %152 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb199 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %152, i32 0, i32 0
  %153 = load %struct.sv*, %struct.sv** %cb199, align 8
  %sv_any200 = getelementptr inbounds %struct.sv, %struct.sv* %153, i32 0, i32 0
  %154 = load i8*, i8** %sv_any200, align 8
  %155 = bitcast i8* %154 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %155, i32 0, i32 4
  %156 = load double, double* %xnv_nv, align 8
  %cmp201 = fcmp une double %156, 0.000000e+00
  br i1 %cmp201, label %if.end.209, label %if.then.208

cond.false.203:                                   ; preds = %cond.false.193
  %157 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb204 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %157, i32 0, i32 0
  %158 = load %struct.sv*, %struct.sv** %cb204, align 8
  %call205 = call signext i8 @Perl_sv_2bool(%struct.sv* %158)
  %conv206 = sext i8 %call205 to i32
  %tobool207 = icmp ne i32 %conv206, 0
  br i1 %tobool207, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %cond.false.203, %cond.true.198, %cond.true.188, %cond.false.182, %cond.true.181, %cond.true.162
  br label %return

if.end.209:                                       ; preds = %cond.false.203, %cond.true.198, %cond.true.188, %cond.false.182, %cond.true.181, %cond.true.162, %if.end.153
  %159 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %unbroken_text = getelementptr inbounds %struct.p_state, %struct.p_state* %159, i32 0, i32 24
  %160 = load i8, i8* %unbroken_text, align 1
  %conv210 = sext i8 %160 to i32
  %tobool211 = icmp ne i32 %conv210, 0
  br i1 %tobool211, label %land.lhs.true.212, label %if.else.274

land.lhs.true.212:                                ; preds = %if.end.209
  %161 = load i32, i32* %event.addr, align 4
  %cmp213 = icmp eq i32 %161, 4
  br i1 %cmp213, label %if.then.215, label %if.else.274

if.then.215:                                      ; preds = %land.lhs.true.212
  %162 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text = getelementptr inbounds %struct.p_state, %struct.p_state* %162, i32 0, i32 11
  %163 = load %struct.sv*, %struct.sv** %pend_text, align 8
  %tobool216 = icmp ne %struct.sv* %163, null
  br i1 %tobool216, label %if.end.220, label %if.then.217

if.then.217:                                      ; preds = %if.then.215
  %call218 = call %struct.sv* @Perl_newSV(i64 256)
  %164 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text219 = getelementptr inbounds %struct.p_state, %struct.p_state* %164, i32 0, i32 11
  store %struct.sv* %call218, %struct.sv** %pend_text219, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %if.then.215
  %165 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text221 = getelementptr inbounds %struct.p_state, %struct.p_state* %165, i32 0, i32 11
  %166 = load %struct.sv*, %struct.sv** %pend_text221, align 8
  %sv_flags222 = getelementptr inbounds %struct.sv, %struct.sv* %166, i32 0, i32 2
  %167 = load i32, i32* %sv_flags222, align 4
  %and223 = and i32 %167, 118423552
  %tobool224 = icmp ne i32 %and223, 0
  br i1 %tobool224, label %if.then.225, label %if.else.232

if.then.225:                                      ; preds = %if.end.220
  %168 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %168, i32 0, i32 8
  %169 = load i8, i8* %is_cdata, align 1
  %conv226 = sext i8 %169 to i32
  %170 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %170, i32 0, i32 12
  %171 = load i8, i8* %pend_text_is_cdata, align 1
  %conv227 = sext i8 %171 to i32
  %cmp228 = icmp ne i32 %conv226, %conv227
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.then.225
  %172 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %173 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @flush_pending_text(%struct.p_state* %172, %struct.sv* %173)
  %174 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %174, %struct.sv*** %sp, align 8
  br label %INIT_PEND_TEXT

if.end.231:                                       ; preds = %if.then.225
  br label %if.end.242

if.else.232:                                      ; preds = %if.end.220
  br label %INIT_PEND_TEXT

INIT_PEND_TEXT:                                   ; preds = %if.else.232, %if.then.230
  %175 = load i64, i64* %offset, align 8
  %176 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_offset = getelementptr inbounds %struct.p_state, %struct.p_state* %176, i32 0, i32 13
  store i64 %175, i64* %pend_text_offset, align 8
  %177 = load i64, i64* %line, align 8
  %178 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_line = getelementptr inbounds %struct.p_state, %struct.p_state* %178, i32 0, i32 14
  store i64 %177, i64* %pend_text_line, align 8
  %179 = load i64, i64* %column, align 8
  %180 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_column = getelementptr inbounds %struct.p_state, %struct.p_state* %180, i32 0, i32 15
  store i64 %179, i64* %pend_text_column, align 8
  %181 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata233 = getelementptr inbounds %struct.p_state, %struct.p_state* %181, i32 0, i32 8
  %182 = load i8, i8* %is_cdata233, align 1
  %183 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_is_cdata234 = getelementptr inbounds %struct.p_state, %struct.p_state* %183, i32 0, i32 12
  store i8 %182, i8* %pend_text_is_cdata234, align 1
  %184 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text235 = getelementptr inbounds %struct.p_state, %struct.p_state* %184, i32 0, i32 11
  %185 = load %struct.sv*, %struct.sv** %pend_text235, align 8
  call void @Perl_sv_setpvn(%struct.sv* %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), i64 0)
  %186 = load i32, i32* %utf8.addr, align 4
  %tobool236 = icmp ne i32 %186, 0
  br i1 %tobool236, label %if.end.241, label %if.then.237

if.then.237:                                      ; preds = %INIT_PEND_TEXT
  %187 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text238 = getelementptr inbounds %struct.p_state, %struct.p_state* %187, i32 0, i32 11
  %188 = load %struct.sv*, %struct.sv** %pend_text238, align 8
  %sv_flags239 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags239, align 4
  %and240 = and i32 %189, -536870913
  store i32 %and240, i32* %sv_flags239, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.237, %INIT_PEND_TEXT
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.231
  %190 = load i32, i32* %utf8.addr, align 4
  %tobool243 = icmp ne i32 %190, 0
  br i1 %tobool243, label %land.lhs.true.244, label %if.end.252

land.lhs.true.244:                                ; preds = %if.end.242
  %191 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text245 = getelementptr inbounds %struct.p_state, %struct.p_state* %191, i32 0, i32 11
  %192 = load %struct.sv*, %struct.sv** %pend_text245, align 8
  %sv_flags246 = getelementptr inbounds %struct.sv, %struct.sv* %192, i32 0, i32 2
  %193 = load i32, i32* %sv_flags246, align 4
  %and247 = and i32 %193, 536870912
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %if.end.252, label %if.then.249

if.then.249:                                      ; preds = %land.lhs.true.244
  %194 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text250 = getelementptr inbounds %struct.p_state, %struct.p_state* %194, i32 0, i32 11
  %195 = load %struct.sv*, %struct.sv** %pend_text250, align 8
  %call251 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %195, i32 2)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.249, %land.lhs.true.244, %if.end.242
  %196 = load i32, i32* %utf8.addr, align 4
  %tobool253 = icmp ne i32 %196, 0
  br i1 %tobool253, label %if.then.259, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %if.end.252
  %197 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text255 = getelementptr inbounds %struct.p_state, %struct.p_state* %197, i32 0, i32 11
  %198 = load %struct.sv*, %struct.sv** %pend_text255, align 8
  %sv_flags256 = getelementptr inbounds %struct.sv, %struct.sv* %198, i32 0, i32 2
  %199 = load i32, i32* %sv_flags256, align 4
  %and257 = and i32 %199, 536870912
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %if.else.264, label %if.then.259

if.then.259:                                      ; preds = %lor.lhs.false.254, %if.end.252
  %200 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text260 = getelementptr inbounds %struct.p_state, %struct.p_state* %200, i32 0, i32 11
  %201 = load %struct.sv*, %struct.sv** %pend_text260, align 8
  %202 = load i8*, i8** %beg.addr, align 8
  %203 = load i8*, i8** %end.addr, align 8
  %204 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast261 = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast262 = ptrtoint i8* %204 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  call void @Perl_sv_catpvn_flags(%struct.sv* %201, i8* %202, i64 %sub.ptr.sub263, i32 2)
  br label %if.end.273

if.else.264:                                      ; preds = %lor.lhs.false.254
  %205 = load i8*, i8** %beg.addr, align 8
  %206 = load i8*, i8** %end.addr, align 8
  %207 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast267 = ptrtoint i8* %206 to i64
  %sub.ptr.rhs.cast268 = ptrtoint i8* %207 to i64
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
  %call270 = call %struct.sv* @Perl_newSVpvn(i8* %205, i64 %sub.ptr.sub269)
  store %struct.sv* %call270, %struct.sv** %tmp266, align 8
  %208 = load %struct.sv*, %struct.sv** %tmp266, align 8
  %call271 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %208, i32 2)
  %209 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text272 = getelementptr inbounds %struct.p_state, %struct.p_state* %209, i32 0, i32 11
  %210 = load %struct.sv*, %struct.sv** %pend_text272, align 8
  %211 = load %struct.sv*, %struct.sv** %tmp266, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %210, %struct.sv* %211, i32 2)
  %212 = load %struct.sv*, %struct.sv** %tmp266, align 8
  call void @Perl_sv_free(%struct.sv* %212)
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.264, %if.then.259
  br label %return

if.else.274:                                      ; preds = %land.lhs.true.212, %if.end.209
  %213 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text275 = getelementptr inbounds %struct.p_state, %struct.p_state* %213, i32 0, i32 11
  %214 = load %struct.sv*, %struct.sv** %pend_text275, align 8
  %tobool276 = icmp ne %struct.sv* %214, null
  br i1 %tobool276, label %land.lhs.true.277, label %if.end.283

land.lhs.true.277:                                ; preds = %if.else.274
  %215 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text278 = getelementptr inbounds %struct.p_state, %struct.p_state* %215, i32 0, i32 11
  %216 = load %struct.sv*, %struct.sv** %pend_text278, align 8
  %sv_flags279 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 2
  %217 = load i32, i32* %sv_flags279, align 4
  %and280 = and i32 %217, 118423552
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %land.lhs.true.277
  %218 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %219 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @flush_pending_text(%struct.p_state* %218, %struct.sv* %219)
  %220 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %220, %struct.sv*** %sp, align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %land.lhs.true.277, %if.else.274
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283
  %221 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec285 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %221, i32 0, i32 1
  %222 = load %struct.sv*, %struct.sv** %argspec285, align 8
  %tobool286 = icmp ne %struct.sv* %222, null
  br i1 %tobool286, label %cond.true.287, label %cond.false.305

cond.true.287:                                    ; preds = %if.end.284
  %223 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec288 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %223, i32 0, i32 1
  %224 = load %struct.sv*, %struct.sv** %argspec288, align 8
  %sv_flags289 = getelementptr inbounds %struct.sv, %struct.sv* %224, i32 0, i32 2
  %225 = load i32, i32* %sv_flags289, align 4
  %and290 = and i32 %225, 262144
  %cmp291 = icmp eq i32 %and290, 262144
  br i1 %cmp291, label %cond.true.293, label %cond.false.300

cond.true.293:                                    ; preds = %cond.true.287
  %226 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec294 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %226, i32 0, i32 1
  %227 = load %struct.sv*, %struct.sv** %argspec294, align 8
  %sv_any295 = getelementptr inbounds %struct.sv, %struct.sv* %227, i32 0, i32 0
  %228 = load i8*, i8** %sv_any295, align 8
  %229 = bitcast i8* %228 to %struct.xpv*
  %xpv_cur296 = getelementptr inbounds %struct.xpv, %struct.xpv* %229, i32 0, i32 1
  %230 = load i64, i64* %xpv_cur296, align 8
  store i64 %230, i64* %my_na, align 8
  %231 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec297 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %231, i32 0, i32 1
  %232 = load %struct.sv*, %struct.sv** %argspec297, align 8
  %sv_any298 = getelementptr inbounds %struct.sv, %struct.sv* %232, i32 0, i32 0
  %233 = load i8*, i8** %sv_any298, align 8
  %234 = bitcast i8* %233 to %struct.xpv*
  %xpv_pv299 = getelementptr inbounds %struct.xpv, %struct.xpv* %234, i32 0, i32 0
  %235 = load i8*, i8** %xpv_pv299, align 8
  br label %cond.end.303

cond.false.300:                                   ; preds = %cond.true.287
  %236 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec301 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %236, i32 0, i32 1
  %237 = load %struct.sv*, %struct.sv** %argspec301, align 8
  %call302 = call i8* @Perl_sv_2pv_flags(%struct.sv* %237, i64* %my_na, i32 2)
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.300, %cond.true.293
  %cond304 = phi i8* [ %235, %cond.true.293 ], [ %call302, %cond.false.300 ]
  br label %cond.end.306

cond.false.305:                                   ; preds = %if.end.284
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.305, %cond.end.303
  %cond307 = phi i8* [ %cond304, %cond.end.303 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), %cond.false.305 ]
  store i8* %cond307, i8** %argspec, align 8
  %238 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb308 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %238, i32 0, i32 0
  %239 = load %struct.sv*, %struct.sv** %cb308, align 8
  %sv_flags309 = getelementptr inbounds %struct.sv, %struct.sv* %239, i32 0, i32 2
  %240 = load i32, i32* %sv_flags309, align 4
  %and310 = and i32 %240, 255
  %cmp311 = icmp eq i32 %and310, 10
  br i1 %cmp311, label %if.then.313, label %if.else.323

if.then.313:                                      ; preds = %cond.end.306
  %241 = load i8*, i8** %argspec, align 8
  %242 = load i8, i8* %241, align 1
  %conv314 = sext i8 %242 to i32
  %cmp315 = icmp eq i32 %conv314, 22
  br i1 %cmp315, label %if.then.317, label %if.else.320

if.then.317:                                      ; preds = %if.then.313
  %243 = load i8*, i8** %argspec, align 8
  %incdec.ptr318 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %incdec.ptr318, i8** %argspec, align 8
  %244 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb319 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %244, i32 0, i32 0
  %245 = load %struct.sv*, %struct.sv** %cb319, align 8
  %246 = bitcast %struct.sv* %245 to %struct.av*
  store %struct.av* %246, %struct.av** %array, align 8
  br label %if.end.322

if.else.320:                                      ; preds = %if.then.313
  %call321 = call %struct.av* @Perl_newAV()
  store %struct.av* %call321, %struct.av** %array, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.else.320, %if.then.317
  br label %if.end.340

if.else.323:                                      ; preds = %cond.end.306
  store %struct.av* null, %struct.av** %array, align 8
  %247 = load i8*, i8** %argspec, align 8
  %248 = load i8, i8* %247, align 1
  %conv324 = sext i8 %248 to i32
  %cmp325 = icmp eq i32 %conv324, 22
  br i1 %cmp325, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %if.else.323
  %249 = load i8*, i8** %argspec, align 8
  %incdec.ptr328 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr328, i8** %argspec, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %if.else.323
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %250 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %250, i32* @PL_tmps_floor, align 4
  %251 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr330 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %incdec.ptr330, i32** @PL_markstack_ptr, align 8
  %252 = load i32*, i32** @PL_markstack_max, align 8
  %cmp331 = icmp eq i32* %incdec.ptr330, %252
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.329
  call void @Perl_markstack_grow()
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.333, %if.end.329
  %253 = load %struct.sv**, %struct.sv*** %sp, align 8
  %254 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast336 = ptrtoint %struct.sv** %253 to i64
  %sub.ptr.rhs.cast337 = ptrtoint %struct.sv** %254 to i64
  %sub.ptr.sub338 = sub i64 %sub.ptr.lhs.cast336, %sub.ptr.rhs.cast337
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub338, 8
  %conv339 = trunc i64 %sub.ptr.div to i32
  %255 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv339, i32* %255, align 4
  store i32 %conv339, i32* %tmp335
  %256 = load i32, i32* %tmp335
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.334, %if.end.322
  %257 = load i8*, i8** %argspec, align 8
  store i8* %257, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.864, %if.end.340
  %258 = load i8*, i8** %s, align 8
  %259 = load i8, i8* %258, align 1
  %tobool341 = icmp ne i8 %259, 0
  br i1 %tobool341, label %for.body, label %for.end.866

for.body:                                         ; preds = %for.cond
  store %struct.sv* null, %struct.sv** %arg, align 8
  store i32 1, i32* %push_arg, align 4
  %260 = load i8*, i8** %s, align 8
  %261 = load i8, i8* %260, align 1
  %conv345 = sext i8 %261 to i32
  store i32 %conv345, i32* %argcode, align 4
  %262 = load i32, i32* %argcode, align 4
  switch i32 %262, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.347
    i32 3, label %sw.bb.396
    i32 4, label %sw.bb.467
    i32 5, label %sw.bb.467
    i32 6, label %sw.bb.467
    i32 7, label %sw.bb.511
    i32 8, label %sw.bb.511
    i32 9, label %sw.bb.671
    i32 10, label %sw.bb.720
    i32 11, label %sw.bb.731
    i32 12, label %sw.bb.763
    i32 13, label %sw.bb.772
    i32 14, label %sw.bb.776
    i32 15, label %sw.bb.779
    i32 16, label %sw.bb.792
    i32 17, label %sw.bb.804
    i32 18, label %sw.bb.807
    i32 19, label %sw.bb.810
    i32 21, label %sw.bb.815
    i32 20, label %sw.bb.834
  ]

sw.bb:                                            ; preds = %for.body
  %263 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call346 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %263)
  store %struct.sv* %call346, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.347:                                        ; preds = %for.body
  %264 = load i32, i32* %num_tokens.addr, align 4
  %cmp348 = icmp sge i32 %264, 1
  br i1 %cmp348, label %if.then.350, label %if.end.395

if.then.350:                                      ; preds = %sw.bb.347
  %call352 = call %struct.av* @Perl_newAV()
  store %struct.av* %call352, %struct.av** %av, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %prev_token, align 8
  %265 = load %struct.av*, %struct.av** %av, align 8
  %266 = load i32, i32* %num_tokens.addr, align 4
  call void @Perl_av_extend(%struct.av* %265, i32 %266)
  store i32 0, i32* %i, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc, %if.then.350
  %267 = load i32, i32* %i, align 4
  %268 = load i32, i32* %num_tokens.addr, align 4
  %cmp356 = icmp slt i32 %267, %268
  br i1 %cmp356, label %for.body.358, label %for.end

for.body.358:                                     ; preds = %for.cond.355
  %269 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %269 to i64
  %270 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx360 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %270, i64 %idxprom359
  %beg361 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx360, i32 0, i32 0
  %271 = load i8*, i8** %beg361, align 8
  %tobool362 = icmp ne i8* %271, null
  br i1 %tobool362, label %if.then.363, label %if.else.382

if.then.363:                                      ; preds = %for.body.358
  %272 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %272 to i64
  %273 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx365 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %273, i64 %idxprom364
  %beg366 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx365, i32 0, i32 0
  %274 = load i8*, i8** %beg366, align 8
  %275 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %275 to i64
  %276 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx368 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %276, i64 %idxprom367
  %end369 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx368, i32 0, i32 1
  %277 = load i8*, i8** %end369, align 8
  %278 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %278 to i64
  %279 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx371 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %279, i64 %idxprom370
  %beg372 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx371, i32 0, i32 0
  %280 = load i8*, i8** %beg372, align 8
  %sub.ptr.lhs.cast373 = ptrtoint i8* %277 to i64
  %sub.ptr.rhs.cast374 = ptrtoint i8* %280 to i64
  %sub.ptr.sub375 = sub i64 %sub.ptr.lhs.cast373, %sub.ptr.rhs.cast374
  %call376 = call %struct.sv* @Perl_newSVpvn(i8* %274, i64 %sub.ptr.sub375)
  store %struct.sv* %call376, %struct.sv** %prev_token, align 8
  %281 = load i32, i32* %utf8.addr, align 4
  %tobool377 = icmp ne i32 %281, 0
  br i1 %tobool377, label %if.then.378, label %if.end.381

if.then.378:                                      ; preds = %if.then.363
  %282 = load %struct.sv*, %struct.sv** %prev_token, align 8
  %sv_flags379 = getelementptr inbounds %struct.sv, %struct.sv* %282, i32 0, i32 2
  %283 = load i32, i32* %sv_flags379, align 4
  %or380 = or i32 %283, 536870912
  store i32 %or380, i32* %sv_flags379, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.378, %if.then.363
  %284 = load %struct.av*, %struct.av** %av, align 8
  %285 = load %struct.sv*, %struct.sv** %prev_token, align 8
  call void @Perl_av_push(%struct.av* %284, %struct.sv* %285)
  br label %if.end.391

if.else.382:                                      ; preds = %for.body.358
  %286 = load %struct.av*, %struct.av** %av, align 8
  %287 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %bool_attr_val = getelementptr inbounds %struct.p_state, %struct.p_state* %287, i32 0, i32 29
  %288 = load %struct.sv*, %struct.sv** %bool_attr_val, align 8
  %tobool383 = icmp ne %struct.sv* %288, null
  br i1 %tobool383, label %cond.true.384, label %cond.false.387

cond.true.384:                                    ; preds = %if.else.382
  %289 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %bool_attr_val385 = getelementptr inbounds %struct.p_state, %struct.p_state* %289, i32 0, i32 29
  %290 = load %struct.sv*, %struct.sv** %bool_attr_val385, align 8
  %call386 = call %struct.sv* @Perl_newSVsv(%struct.sv* %290)
  br label %cond.end.389

cond.false.387:                                   ; preds = %if.else.382
  %291 = load %struct.sv*, %struct.sv** %prev_token, align 8
  %call388 = call %struct.sv* @Perl_newSVsv(%struct.sv* %291)
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.false.387, %cond.true.384
  %cond390 = phi %struct.sv* [ %call386, %cond.true.384 ], [ %call388, %cond.false.387 ]
  call void @Perl_av_push(%struct.av* %286, %struct.sv* %cond390)
  br label %if.end.391

if.end.391:                                       ; preds = %cond.end.389, %if.end.381
  br label %for.inc

for.inc:                                          ; preds = %if.end.391
  %292 = load i32, i32* %i, align 4
  %inc392 = add nsw i32 %292, 1
  store i32 %inc392, i32* %i, align 4
  br label %for.cond.355

for.end:                                          ; preds = %for.cond.355
  %293 = load %struct.av*, %struct.av** %av, align 8
  %294 = bitcast %struct.av* %293 to %struct.sv*
  %call393 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %294)
  %call394 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call393)
  store %struct.sv* %call394, %struct.sv** %arg, align 8
  br label %if.end.395

if.end.395:                                       ; preds = %for.end, %sw.bb.347
  br label %sw.epilog

sw.bb.396:                                        ; preds = %for.body
  %295 = load i32, i32* %num_tokens.addr, align 4
  %cmp397 = icmp sge i32 %295, 1
  br i1 %cmp397, label %land.lhs.true.399, label %if.end.466

land.lhs.true.399:                                ; preds = %sw.bb.396
  %296 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx400 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %296, i64 0
  %beg401 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx400, i32 0, i32 0
  %297 = load i8*, i8** %beg401, align 8
  %298 = load i8*, i8** %beg.addr, align 8
  %cmp402 = icmp uge i8* %297, %298
  br i1 %cmp402, label %if.then.404, label %if.end.466

if.then.404:                                      ; preds = %land.lhs.true.399
  %call407 = call %struct.av* @Perl_newAV()
  store %struct.av* %call407, %struct.av** %av406, align 8
  %299 = load %struct.av*, %struct.av** %av406, align 8
  %300 = load i32, i32* %num_tokens.addr, align 4
  %mul = mul nsw i32 %300, 2
  call void @Perl_av_extend(%struct.av* %299, i32 %mul)
  store i32 0, i32* %i409, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.461, %if.then.404
  %301 = load i32, i32* %i409, align 4
  %302 = load i32, i32* %num_tokens.addr, align 4
  %cmp411 = icmp slt i32 %301, %302
  br i1 %cmp411, label %for.body.413, label %for.end.463

for.body.413:                                     ; preds = %for.cond.410
  %303 = load i32, i32* %i409, align 4
  %idxprom414 = sext i32 %303 to i64
  %304 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx415 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %304, i64 %idxprom414
  %beg416 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx415, i32 0, i32 0
  %305 = load i8*, i8** %beg416, align 8
  %tobool417 = icmp ne i8* %305, null
  br i1 %tobool417, label %if.then.418, label %if.else.457

if.then.418:                                      ; preds = %for.body.413
  %306 = load %struct.av*, %struct.av** %av406, align 8
  %307 = load i32, i32* %utf8.addr, align 4
  %tobool419 = icmp ne i32 %307, 0
  br i1 %tobool419, label %cond.true.420, label %cond.false.425

cond.true.420:                                    ; preds = %if.then.418
  %308 = load i32, i32* %i409, align 4
  %idxprom421 = sext i32 %308 to i64
  %309 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx422 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %309, i64 %idxprom421
  %beg423 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx422, i32 0, i32 0
  %310 = load i8*, i8** %beg423, align 8
  %311 = load i8*, i8** %beg.addr, align 8
  %call424 = call i64 @Perl_utf8_distance(i8* %310, i8* %311)
  br label %cond.end.432

cond.false.425:                                   ; preds = %if.then.418
  %312 = load i32, i32* %i409, align 4
  %idxprom426 = sext i32 %312 to i64
  %313 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx427 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %313, i64 %idxprom426
  %beg428 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx427, i32 0, i32 0
  %314 = load i8*, i8** %beg428, align 8
  %315 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast429 = ptrtoint i8* %314 to i64
  %sub.ptr.rhs.cast430 = ptrtoint i8* %315 to i64
  %sub.ptr.sub431 = sub i64 %sub.ptr.lhs.cast429, %sub.ptr.rhs.cast430
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.425, %cond.true.420
  %cond433 = phi i64 [ %call424, %cond.true.420 ], [ %sub.ptr.sub431, %cond.false.425 ]
  %call434 = call %struct.sv* @Perl_newSViv(i64 %cond433)
  call void @Perl_av_push(%struct.av* %306, %struct.sv* %call434)
  %316 = load %struct.av*, %struct.av** %av406, align 8
  %317 = load i32, i32* %utf8.addr, align 4
  %tobool435 = icmp ne i32 %317, 0
  br i1 %tobool435, label %cond.true.436, label %cond.false.444

cond.true.436:                                    ; preds = %cond.end.432
  %318 = load i32, i32* %i409, align 4
  %idxprom437 = sext i32 %318 to i64
  %319 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx438 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %319, i64 %idxprom437
  %end439 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx438, i32 0, i32 1
  %320 = load i8*, i8** %end439, align 8
  %321 = load i32, i32* %i409, align 4
  %idxprom440 = sext i32 %321 to i64
  %322 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx441 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %322, i64 %idxprom440
  %beg442 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx441, i32 0, i32 0
  %323 = load i8*, i8** %beg442, align 8
  %call443 = call i64 @Perl_utf8_distance(i8* %320, i8* %323)
  br label %cond.end.454

cond.false.444:                                   ; preds = %cond.end.432
  %324 = load i32, i32* %i409, align 4
  %idxprom445 = sext i32 %324 to i64
  %325 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx446 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %325, i64 %idxprom445
  %end447 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx446, i32 0, i32 1
  %326 = load i8*, i8** %end447, align 8
  %327 = load i32, i32* %i409, align 4
  %idxprom448 = sext i32 %327 to i64
  %328 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx449 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %328, i64 %idxprom448
  %beg450 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx449, i32 0, i32 0
  %329 = load i8*, i8** %beg450, align 8
  %sub.ptr.lhs.cast451 = ptrtoint i8* %326 to i64
  %sub.ptr.rhs.cast452 = ptrtoint i8* %329 to i64
  %sub.ptr.sub453 = sub i64 %sub.ptr.lhs.cast451, %sub.ptr.rhs.cast452
  br label %cond.end.454

cond.end.454:                                     ; preds = %cond.false.444, %cond.true.436
  %cond455 = phi i64 [ %call443, %cond.true.436 ], [ %sub.ptr.sub453, %cond.false.444 ]
  %call456 = call %struct.sv* @Perl_newSViv(i64 %cond455)
  call void @Perl_av_push(%struct.av* %316, %struct.sv* %call456)
  br label %if.end.460

if.else.457:                                      ; preds = %for.body.413
  %330 = load %struct.av*, %struct.av** %av406, align 8
  %call458 = call %struct.sv* @Perl_newSViv(i64 0)
  call void @Perl_av_push(%struct.av* %330, %struct.sv* %call458)
  %331 = load %struct.av*, %struct.av** %av406, align 8
  %call459 = call %struct.sv* @Perl_newSViv(i64 0)
  call void @Perl_av_push(%struct.av* %331, %struct.sv* %call459)
  br label %if.end.460

if.end.460:                                       ; preds = %if.else.457, %cond.end.454
  br label %for.inc.461

for.inc.461:                                      ; preds = %if.end.460
  %332 = load i32, i32* %i409, align 4
  %inc462 = add nsw i32 %332, 1
  store i32 %inc462, i32* %i409, align 4
  br label %for.cond.410

for.end.463:                                      ; preds = %for.cond.410
  %333 = load %struct.av*, %struct.av** %av406, align 8
  %334 = bitcast %struct.av* %333 to %struct.sv*
  %call464 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %334)
  %call465 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call464)
  store %struct.sv* %call465, %struct.sv** %arg, align 8
  br label %if.end.466

if.end.466:                                       ; preds = %for.end.463, %land.lhs.true.399, %sw.bb.396
  br label %sw.epilog

sw.bb.467:                                        ; preds = %for.body, %for.body, %for.body
  %335 = load i32, i32* %num_tokens.addr, align 4
  %cmp468 = icmp sge i32 %335, 1
  br i1 %cmp468, label %if.then.470, label %if.end.510

if.then.470:                                      ; preds = %sw.bb.467
  %336 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx471 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %336, i64 0
  %beg472 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx471, i32 0, i32 0
  %337 = load i8*, i8** %beg472, align 8
  %338 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx473 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %338, i64 0
  %end474 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx473, i32 0, i32 1
  %339 = load i8*, i8** %end474, align 8
  %340 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx475 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %340, i64 0
  %beg476 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx475, i32 0, i32 0
  %341 = load i8*, i8** %beg476, align 8
  %sub.ptr.lhs.cast477 = ptrtoint i8* %339 to i64
  %sub.ptr.rhs.cast478 = ptrtoint i8* %341 to i64
  %sub.ptr.sub479 = sub i64 %sub.ptr.lhs.cast477, %sub.ptr.rhs.cast478
  %call480 = call %struct.sv* @Perl_newSVpvn(i8* %337, i64 %sub.ptr.sub479)
  %call481 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call480)
  store %struct.sv* %call481, %struct.sv** %arg, align 8
  %342 = load i32, i32* %utf8.addr, align 4
  %tobool482 = icmp ne i32 %342, 0
  br i1 %tobool482, label %if.then.483, label %if.end.486

if.then.483:                                      ; preds = %if.then.470
  %343 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags484 = getelementptr inbounds %struct.sv, %struct.sv* %343, i32 0, i32 2
  %344 = load i32, i32* %sv_flags484, align 4
  %or485 = or i32 %344, 536870912
  store i32 %or485, i32* %sv_flags484, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.483, %if.then.470
  %345 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode487 = getelementptr inbounds %struct.p_state, %struct.p_state* %345, i32 0, i32 23
  %346 = load i8, i8* %xml_mode487, align 1
  %conv488 = sext i8 %346 to i32
  %tobool489 = icmp ne i32 %conv488, 0
  br i1 %tobool489, label %if.end.499, label %lor.lhs.false.490

lor.lhs.false.490:                                ; preds = %if.end.486
  %347 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %case_sensitive491 = getelementptr inbounds %struct.p_state, %struct.p_state* %347, i32 0, i32 26
  %348 = load i8, i8* %case_sensitive491, align 1
  %conv492 = sext i8 %348 to i32
  %tobool493 = icmp ne i32 %conv492, 0
  br i1 %tobool493, label %if.end.499, label %land.lhs.true.494

land.lhs.true.494:                                ; preds = %lor.lhs.false.490
  %349 = load i32, i32* %argcode, align 4
  %cmp495 = icmp ne i32 %349, 4
  br i1 %cmp495, label %if.then.497, label %if.end.499

if.then.497:                                      ; preds = %land.lhs.true.494
  %350 = load %struct.sv*, %struct.sv** %arg, align 8
  %call498 = call %struct.sv* @sv_lower(%struct.sv* %350)
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.497, %land.lhs.true.494, %lor.lhs.false.490, %if.end.486
  %351 = load i32, i32* %argcode, align 4
  %cmp500 = icmp eq i32 %351, 6
  br i1 %cmp500, label %land.lhs.true.502, label %if.end.509

land.lhs.true.502:                                ; preds = %if.end.499
  %352 = load i32, i32* %event.addr, align 4
  %cmp503 = icmp ne i32 %352, 2
  br i1 %cmp503, label %if.then.505, label %if.end.509

if.then.505:                                      ; preds = %land.lhs.true.502
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8** %e_type, align 8
  %353 = load %struct.sv*, %struct.sv** %arg, align 8
  %354 = load i32, i32* %event.addr, align 4
  %idxprom507 = zext i32 %354 to i64
  %355 = load i8*, i8** %e_type, align 8
  %arrayidx508 = getelementptr inbounds i8, i8* %355, i64 %idxprom507
  call void @Perl_sv_insert(%struct.sv* %353, i64 0, i64 0, i8* %arrayidx508, i64 1)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.505, %land.lhs.true.502, %if.end.499
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %sw.bb.467
  br label %sw.epilog

sw.bb.511:                                        ; preds = %for.body, %for.body
  %356 = load i32, i32* %event.addr, align 4
  %cmp512 = icmp eq i32 %356, 2
  br i1 %cmp512, label %if.then.514, label %if.else.665

if.then.514:                                      ; preds = %sw.bb.511
  %357 = load i32, i32* %argcode, align 4
  %cmp518 = icmp eq i32 %357, 7
  br i1 %cmp518, label %if.then.520, label %if.else.524

if.then.520:                                      ; preds = %if.then.514
  %call521 = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call521, %struct.hv** %hv, align 8
  %358 = load %struct.hv*, %struct.hv** %hv, align 8
  %359 = bitcast %struct.hv* %358 to %struct.sv*
  %call522 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %359)
  %call523 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call522)
  store %struct.sv* %call523, %struct.sv** %arg, align 8
  br label %if.end.525

if.else.524:                                      ; preds = %if.then.514
  store %struct.hv* null, %struct.hv** %hv, align 8
  store i32 0, i32* %push_arg, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.524, %if.then.520
  store i32 1, i32* %i517, align 4
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.662, %if.end.525
  %360 = load i32, i32* %i517, align 4
  %361 = load i32, i32* %num_tokens.addr, align 4
  %cmp527 = icmp slt i32 %360, %361
  br i1 %cmp527, label %for.body.529, label %for.end.664

for.body.529:                                     ; preds = %for.cond.526
  %362 = load i32, i32* %i517, align 4
  %idxprom531 = sext i32 %362 to i64
  %363 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx532 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %363, i64 %idxprom531
  %beg533 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx532, i32 0, i32 0
  %364 = load i8*, i8** %beg533, align 8
  %365 = load i32, i32* %i517, align 4
  %idxprom534 = sext i32 %365 to i64
  %366 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx535 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %366, i64 %idxprom534
  %end536 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx535, i32 0, i32 1
  %367 = load i8*, i8** %end536, align 8
  %368 = load i32, i32* %i517, align 4
  %idxprom537 = sext i32 %368 to i64
  %369 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx538 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %369, i64 %idxprom537
  %beg539 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx538, i32 0, i32 0
  %370 = load i8*, i8** %beg539, align 8
  %sub.ptr.lhs.cast540 = ptrtoint i8* %367 to i64
  %sub.ptr.rhs.cast541 = ptrtoint i8* %370 to i64
  %sub.ptr.sub542 = sub i64 %sub.ptr.lhs.cast540, %sub.ptr.rhs.cast541
  %call543 = call %struct.sv* @Perl_newSVpvn(i8* %364, i64 %sub.ptr.sub542)
  store %struct.sv* %call543, %struct.sv** %attrname, align 8
  %371 = load i32, i32* %utf8.addr, align 4
  %tobool545 = icmp ne i32 %371, 0
  br i1 %tobool545, label %if.then.546, label %if.end.549

if.then.546:                                      ; preds = %for.body.529
  %372 = load %struct.sv*, %struct.sv** %attrname, align 8
  %sv_flags547 = getelementptr inbounds %struct.sv, %struct.sv* %372, i32 0, i32 2
  %373 = load i32, i32* %sv_flags547, align 4
  %or548 = or i32 %373, 536870912
  store i32 %or548, i32* %sv_flags547, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.546, %for.body.529
  %374 = load i32, i32* %i517, align 4
  %add550 = add nsw i32 %374, 1
  %idxprom551 = sext i32 %add550 to i64
  %375 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx552 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %375, i64 %idxprom551
  %beg553 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx552, i32 0, i32 0
  %376 = load i8*, i8** %beg553, align 8
  %tobool554 = icmp ne i8* %376, null
  br i1 %tobool554, label %if.then.555, label %if.else.601

if.then.555:                                      ; preds = %if.end.549
  %377 = load i32, i32* %i517, align 4
  %add558 = add nsw i32 %377, 1
  %idxprom559 = sext i32 %add558 to i64
  %378 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx560 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %378, i64 %idxprom559
  %beg561 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx560, i32 0, i32 0
  %379 = load i8*, i8** %beg561, align 8
  store i8* %379, i8** %beg557, align 8
  %380 = load i32, i32* %i517, align 4
  %add563 = add nsw i32 %380, 1
  %idxprom564 = sext i32 %add563 to i64
  %381 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx565 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %381, i64 %idxprom564
  %end566 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx565, i32 0, i32 1
  %382 = load i8*, i8** %end566, align 8
  %383 = load i8*, i8** %beg557, align 8
  %sub.ptr.lhs.cast567 = ptrtoint i8* %382 to i64
  %sub.ptr.rhs.cast568 = ptrtoint i8* %383 to i64
  %sub.ptr.sub569 = sub i64 %sub.ptr.lhs.cast567, %sub.ptr.rhs.cast568
  store i64 %sub.ptr.sub569, i64* %len, align 8
  %384 = load i8*, i8** %beg557, align 8
  %385 = load i8, i8* %384, align 1
  %conv570 = sext i8 %385 to i32
  %cmp571 = icmp eq i32 %conv570, 34
  br i1 %cmp571, label %if.then.577, label %lor.lhs.false.573

lor.lhs.false.573:                                ; preds = %if.then.555
  %386 = load i8*, i8** %beg557, align 8
  %387 = load i8, i8* %386, align 1
  %conv574 = sext i8 %387 to i32
  %cmp575 = icmp eq i32 %conv574, 39
  br i1 %cmp575, label %if.then.577, label %if.end.580

if.then.577:                                      ; preds = %lor.lhs.false.573, %if.then.555
  %388 = load i8*, i8** %beg557, align 8
  %incdec.ptr578 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %incdec.ptr578, i8** %beg557, align 8
  %389 = load i64, i64* %len, align 8
  %sub579 = sub i64 %389, 2
  store i64 %sub579, i64* %len, align 8
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.577, %lor.lhs.false.573
  %390 = load i8*, i8** %beg557, align 8
  %391 = load i64, i64* %len, align 8
  %call581 = call %struct.sv* @Perl_newSVpvn(i8* %390, i64 %391)
  store %struct.sv* %call581, %struct.sv** %attrval, align 8
  %392 = load i32, i32* %utf8.addr, align 4
  %tobool582 = icmp ne i32 %392, 0
  br i1 %tobool582, label %if.then.583, label %if.end.586

if.then.583:                                      ; preds = %if.end.580
  %393 = load %struct.sv*, %struct.sv** %attrval, align 8
  %sv_flags584 = getelementptr inbounds %struct.sv, %struct.sv* %393, i32 0, i32 2
  %394 = load i32, i32* %sv_flags584, align 4
  %or585 = or i32 %394, 536870912
  store i32 %or585, i32* %sv_flags584, align 4
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.583, %if.end.580
  %395 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %attr_encoded = getelementptr inbounds %struct.p_state, %struct.p_state* %395, i32 0, i32 25
  %396 = load i8, i8* %attr_encoded, align 1
  %tobool587 = icmp ne i8 %396, 0
  br i1 %tobool587, label %if.end.600, label %if.then.588

if.then.588:                                      ; preds = %if.end.586
  %397 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %397, i32 0, i32 28
  %398 = load i8, i8* %utf8_mode, align 1
  %tobool589 = icmp ne i8 %398, 0
  br i1 %tobool589, label %if.then.590, label %if.end.592

if.then.590:                                      ; preds = %if.then.588
  %399 = load %struct.sv*, %struct.sv** %attrval, align 8
  %call591 = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %399)
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.590, %if.then.588
  %400 = load %struct.sv*, %struct.sv** %attrval, align 8
  %401 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %entity2char = getelementptr inbounds %struct.p_state, %struct.p_state* %401, i32 0, i32 37
  %402 = load %struct.hv*, %struct.hv** %entity2char, align 8
  %call593 = call %struct.sv* @decode_entities(%struct.sv* %400, %struct.hv* %402, i8 signext 0)
  %403 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode594 = getelementptr inbounds %struct.p_state, %struct.p_state* %403, i32 0, i32 28
  %404 = load i8, i8* %utf8_mode594, align 1
  %tobool595 = icmp ne i8 %404, 0
  br i1 %tobool595, label %if.then.596, label %if.end.599

if.then.596:                                      ; preds = %if.end.592
  %405 = load %struct.sv*, %struct.sv** %attrval, align 8
  %sv_flags597 = getelementptr inbounds %struct.sv, %struct.sv* %405, i32 0, i32 2
  %406 = load i32, i32* %sv_flags597, align 4
  %and598 = and i32 %406, -536870913
  store i32 %and598, i32* %sv_flags597, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.596, %if.end.592
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %if.end.586
  br label %if.end.610

if.else.601:                                      ; preds = %if.end.549
  %407 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %bool_attr_val602 = getelementptr inbounds %struct.p_state, %struct.p_state* %407, i32 0, i32 29
  %408 = load %struct.sv*, %struct.sv** %bool_attr_val602, align 8
  %tobool603 = icmp ne %struct.sv* %408, null
  br i1 %tobool603, label %if.then.604, label %if.else.607

if.then.604:                                      ; preds = %if.else.601
  %409 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %bool_attr_val605 = getelementptr inbounds %struct.p_state, %struct.p_state* %409, i32 0, i32 29
  %410 = load %struct.sv*, %struct.sv** %bool_attr_val605, align 8
  %call606 = call %struct.sv* @Perl_newSVsv(%struct.sv* %410)
  store %struct.sv* %call606, %struct.sv** %attrval, align 8
  br label %if.end.609

if.else.607:                                      ; preds = %if.else.601
  %411 = load %struct.sv*, %struct.sv** %attrname, align 8
  %call608 = call %struct.sv* @Perl_newSVsv(%struct.sv* %411)
  store %struct.sv* %call608, %struct.sv** %attrval, align 8
  br label %if.end.609

if.end.609:                                       ; preds = %if.else.607, %if.then.604
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %if.end.600
  %412 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode611 = getelementptr inbounds %struct.p_state, %struct.p_state* %412, i32 0, i32 23
  %413 = load i8, i8* %xml_mode611, align 1
  %conv612 = sext i8 %413 to i32
  %tobool613 = icmp ne i32 %conv612, 0
  br i1 %tobool613, label %if.end.620, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %if.end.610
  %414 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %case_sensitive615 = getelementptr inbounds %struct.p_state, %struct.p_state* %414, i32 0, i32 26
  %415 = load i8, i8* %case_sensitive615, align 1
  %conv616 = sext i8 %415 to i32
  %tobool617 = icmp ne i32 %conv616, 0
  br i1 %tobool617, label %if.end.620, label %if.then.618

if.then.618:                                      ; preds = %lor.lhs.false.614
  %416 = load %struct.sv*, %struct.sv** %attrname, align 8
  %call619 = call %struct.sv* @sv_lower(%struct.sv* %416)
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.618, %lor.lhs.false.614, %if.end.610
  %417 = load i32, i32* %argcode, align 4
  %cmp621 = icmp eq i32 %417, 7
  br i1 %cmp621, label %if.then.623, label %if.else.632

if.then.623:                                      ; preds = %if.end.620
  %418 = load %struct.hv*, %struct.hv** %hv, align 8
  %419 = load %struct.sv*, %struct.sv** %attrname, align 8
  %call624 = call signext i8 @Perl_hv_exists_ent(%struct.hv* %418, %struct.sv* %419, i32 0)
  %conv625 = sext i8 %call624 to i32
  %tobool626 = icmp ne i32 %conv625, 0
  br i1 %tobool626, label %if.then.630, label %lor.lhs.false.627

lor.lhs.false.627:                                ; preds = %if.then.623
  %420 = load %struct.hv*, %struct.hv** %hv, align 8
  %421 = load %struct.sv*, %struct.sv** %attrname, align 8
  %422 = load %struct.sv*, %struct.sv** %attrval, align 8
  %call628 = call %struct.he* @Perl_hv_store_ent(%struct.hv* %420, %struct.sv* %421, %struct.sv* %422, i32 0)
  %tobool629 = icmp ne %struct.he* %call628, null
  br i1 %tobool629, label %if.end.631, label %if.then.630

if.then.630:                                      ; preds = %lor.lhs.false.627, %if.then.623
  %423 = load %struct.sv*, %struct.sv** %attrval, align 8
  call void @Perl_sv_free(%struct.sv* %423)
  br label %if.end.631

if.end.631:                                       ; preds = %if.then.630, %lor.lhs.false.627
  %424 = load %struct.sv*, %struct.sv** %attrname, align 8
  call void @Perl_sv_free(%struct.sv* %424)
  br label %if.end.661

if.else.632:                                      ; preds = %if.end.620
  %425 = load %struct.av*, %struct.av** %array, align 8
  %tobool633 = icmp ne %struct.av* %425, null
  br i1 %tobool633, label %if.then.634, label %if.else.635

if.then.634:                                      ; preds = %if.else.632
  %426 = load %struct.av*, %struct.av** %array, align 8
  %427 = load %struct.sv*, %struct.sv** %attrname, align 8
  call void @Perl_av_push(%struct.av* %426, %struct.sv* %427)
  %428 = load %struct.av*, %struct.av** %array, align 8
  %429 = load %struct.sv*, %struct.sv** %attrval, align 8
  call void @Perl_av_push(%struct.av* %428, %struct.sv* %429)
  br label %if.end.660

if.else.635:                                      ; preds = %if.else.632
  %430 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %431 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast636 = ptrtoint %struct.sv** %430 to i64
  %sub.ptr.rhs.cast637 = ptrtoint %struct.sv** %431 to i64
  %sub.ptr.sub638 = sub i64 %sub.ptr.lhs.cast636, %sub.ptr.rhs.cast637
  %sub.ptr.div639 = sdiv exact i64 %sub.ptr.sub638, 8
  %cmp640 = icmp slt i64 %sub.ptr.div639, 1
  br i1 %cmp640, label %if.then.642, label %if.end.644

if.then.642:                                      ; preds = %if.else.635
  %432 = load %struct.sv**, %struct.sv*** %sp, align 8
  %433 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call643 = call %struct.sv** @Perl_stack_grow(%struct.sv** %432, %struct.sv** %433, i32 1)
  store %struct.sv** %call643, %struct.sv*** %sp, align 8
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.642, %if.else.635
  %434 = load %struct.sv*, %struct.sv** %attrname, align 8
  %call646 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %434)
  %435 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr647 = getelementptr inbounds %struct.sv*, %struct.sv** %435, i32 1
  store %struct.sv** %incdec.ptr647, %struct.sv*** %sp, align 8
  store %struct.sv* %call646, %struct.sv** %incdec.ptr647, align 8
  store %struct.sv* %call646, %struct.sv** %tmp645
  %436 = load %struct.sv*, %struct.sv** %tmp645
  %437 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %438 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast648 = ptrtoint %struct.sv** %437 to i64
  %sub.ptr.rhs.cast649 = ptrtoint %struct.sv** %438 to i64
  %sub.ptr.sub650 = sub i64 %sub.ptr.lhs.cast648, %sub.ptr.rhs.cast649
  %sub.ptr.div651 = sdiv exact i64 %sub.ptr.sub650, 8
  %cmp652 = icmp slt i64 %sub.ptr.div651, 1
  br i1 %cmp652, label %if.then.654, label %if.end.656

if.then.654:                                      ; preds = %if.end.644
  %439 = load %struct.sv**, %struct.sv*** %sp, align 8
  %440 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call655 = call %struct.sv** @Perl_stack_grow(%struct.sv** %439, %struct.sv** %440, i32 1)
  store %struct.sv** %call655, %struct.sv*** %sp, align 8
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.654, %if.end.644
  %441 = load %struct.sv*, %struct.sv** %attrval, align 8
  %call658 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %441)
  %442 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr659 = getelementptr inbounds %struct.sv*, %struct.sv** %442, i32 1
  store %struct.sv** %incdec.ptr659, %struct.sv*** %sp, align 8
  store %struct.sv* %call658, %struct.sv** %incdec.ptr659, align 8
  store %struct.sv* %call658, %struct.sv** %tmp657
  %443 = load %struct.sv*, %struct.sv** %tmp657
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.656, %if.then.634
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %if.end.631
  br label %for.inc.662

for.inc.662:                                      ; preds = %if.end.661
  %444 = load i32, i32* %i517, align 4
  %add663 = add nsw i32 %444, 2
  store i32 %add663, i32* %i517, align 4
  br label %for.cond.526

for.end.664:                                      ; preds = %for.cond.526
  br label %if.end.670

if.else.665:                                      ; preds = %sw.bb.511
  %445 = load i32, i32* %argcode, align 4
  %cmp666 = icmp eq i32 %445, 8
  br i1 %cmp666, label %if.then.668, label %if.end.669

if.then.668:                                      ; preds = %if.else.665
  store i32 0, i32* %push_arg, align 4
  br label %if.end.669

if.end.669:                                       ; preds = %if.then.668, %if.else.665
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %for.end.664
  br label %sw.epilog

sw.bb.671:                                        ; preds = %for.body
  %446 = load i32, i32* %event.addr, align 4
  %cmp672 = icmp eq i32 %446, 2
  br i1 %cmp672, label %if.then.674, label %if.end.719

if.then.674:                                      ; preds = %sw.bb.671
  %call677 = call %struct.av* @Perl_newAV()
  store %struct.av* %call677, %struct.av** %av676, align 8
  store i32 1, i32* %i679, align 4
  br label %for.cond.680

for.cond.680:                                     ; preds = %for.inc.714, %if.then.674
  %447 = load i32, i32* %i679, align 4
  %448 = load i32, i32* %num_tokens.addr, align 4
  %cmp681 = icmp slt i32 %447, %448
  br i1 %cmp681, label %for.body.683, label %for.end.716

for.body.683:                                     ; preds = %for.cond.680
  %449 = load i32, i32* %i679, align 4
  %idxprom686 = sext i32 %449 to i64
  %450 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx687 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %450, i64 %idxprom686
  %beg688 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx687, i32 0, i32 0
  %451 = load i8*, i8** %beg688, align 8
  %452 = load i32, i32* %i679, align 4
  %idxprom689 = sext i32 %452 to i64
  %453 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx690 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %453, i64 %idxprom689
  %end691 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx690, i32 0, i32 1
  %454 = load i8*, i8** %end691, align 8
  %455 = load i32, i32* %i679, align 4
  %idxprom692 = sext i32 %455 to i64
  %456 = load %struct.token_pos*, %struct.token_pos** %tokens.addr, align 8
  %arrayidx693 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %456, i64 %idxprom692
  %beg694 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx693, i32 0, i32 0
  %457 = load i8*, i8** %beg694, align 8
  %sub.ptr.lhs.cast695 = ptrtoint i8* %454 to i64
  %sub.ptr.rhs.cast696 = ptrtoint i8* %457 to i64
  %sub.ptr.sub697 = sub i64 %sub.ptr.lhs.cast695, %sub.ptr.rhs.cast696
  %call698 = call %struct.sv* @Perl_newSVpvn(i8* %451, i64 %sub.ptr.sub697)
  store %struct.sv* %call698, %struct.sv** %attrname685, align 8
  %458 = load i32, i32* %utf8.addr, align 4
  %tobool699 = icmp ne i32 %458, 0
  br i1 %tobool699, label %if.then.700, label %if.end.703

if.then.700:                                      ; preds = %for.body.683
  %459 = load %struct.sv*, %struct.sv** %attrname685, align 8
  %sv_flags701 = getelementptr inbounds %struct.sv, %struct.sv* %459, i32 0, i32 2
  %460 = load i32, i32* %sv_flags701, align 4
  %or702 = or i32 %460, 536870912
  store i32 %or702, i32* %sv_flags701, align 4
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.700, %for.body.683
  %461 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode704 = getelementptr inbounds %struct.p_state, %struct.p_state* %461, i32 0, i32 23
  %462 = load i8, i8* %xml_mode704, align 1
  %conv705 = sext i8 %462 to i32
  %tobool706 = icmp ne i32 %conv705, 0
  br i1 %tobool706, label %if.end.713, label %lor.lhs.false.707

lor.lhs.false.707:                                ; preds = %if.end.703
  %463 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %case_sensitive708 = getelementptr inbounds %struct.p_state, %struct.p_state* %463, i32 0, i32 26
  %464 = load i8, i8* %case_sensitive708, align 1
  %conv709 = sext i8 %464 to i32
  %tobool710 = icmp ne i32 %conv709, 0
  br i1 %tobool710, label %if.end.713, label %if.then.711

if.then.711:                                      ; preds = %lor.lhs.false.707
  %465 = load %struct.sv*, %struct.sv** %attrname685, align 8
  %call712 = call %struct.sv* @sv_lower(%struct.sv* %465)
  br label %if.end.713

if.end.713:                                       ; preds = %if.then.711, %lor.lhs.false.707, %if.end.703
  %466 = load %struct.av*, %struct.av** %av676, align 8
  %467 = load %struct.sv*, %struct.sv** %attrname685, align 8
  call void @Perl_av_push(%struct.av* %466, %struct.sv* %467)
  br label %for.inc.714

for.inc.714:                                      ; preds = %if.end.713
  %468 = load i32, i32* %i679, align 4
  %add715 = add nsw i32 %468, 2
  store i32 %add715, i32* %i679, align 4
  br label %for.cond.680

for.end.716:                                      ; preds = %for.cond.680
  %469 = load %struct.av*, %struct.av** %av676, align 8
  %470 = bitcast %struct.av* %469 to %struct.sv*
  %call717 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %470)
  %call718 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call717)
  store %struct.sv* %call718, %struct.sv** %arg, align 8
  br label %if.end.719

if.end.719:                                       ; preds = %for.end.716, %sw.bb.671
  br label %sw.epilog

sw.bb.720:                                        ; preds = %for.body
  %471 = load i8*, i8** %beg.addr, align 8
  %472 = load i8*, i8** %end.addr, align 8
  %473 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast721 = ptrtoint i8* %472 to i64
  %sub.ptr.rhs.cast722 = ptrtoint i8* %473 to i64
  %sub.ptr.sub723 = sub i64 %sub.ptr.lhs.cast721, %sub.ptr.rhs.cast722
  %call724 = call %struct.sv* @Perl_newSVpvn(i8* %471, i64 %sub.ptr.sub723)
  %call725 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call724)
  store %struct.sv* %call725, %struct.sv** %arg, align 8
  %474 = load i32, i32* %utf8.addr, align 4
  %tobool726 = icmp ne i32 %474, 0
  br i1 %tobool726, label %if.then.727, label %if.end.730

if.then.727:                                      ; preds = %sw.bb.720
  %475 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags728 = getelementptr inbounds %struct.sv, %struct.sv* %475, i32 0, i32 2
  %476 = load i32, i32* %sv_flags728, align 4
  %or729 = or i32 %476, 536870912
  store i32 %or729, i32* %sv_flags728, align 4
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.727, %sw.bb.720
  br label %sw.epilog

sw.bb.731:                                        ; preds = %for.body
  %477 = load i32, i32* %event.addr, align 4
  %cmp732 = icmp eq i32 %477, 4
  br i1 %cmp732, label %if.then.734, label %if.end.762

if.then.734:                                      ; preds = %sw.bb.731
  %478 = load i8*, i8** %beg.addr, align 8
  %479 = load i8*, i8** %end.addr, align 8
  %480 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast735 = ptrtoint i8* %479 to i64
  %sub.ptr.rhs.cast736 = ptrtoint i8* %480 to i64
  %sub.ptr.sub737 = sub i64 %sub.ptr.lhs.cast735, %sub.ptr.rhs.cast736
  %call738 = call %struct.sv* @Perl_newSVpvn(i8* %478, i64 %sub.ptr.sub737)
  %call739 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call738)
  store %struct.sv* %call739, %struct.sv** %arg, align 8
  %481 = load i32, i32* %utf8.addr, align 4
  %tobool740 = icmp ne i32 %481, 0
  br i1 %tobool740, label %if.then.741, label %if.end.744

if.then.741:                                      ; preds = %if.then.734
  %482 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags742 = getelementptr inbounds %struct.sv, %struct.sv* %482, i32 0, i32 2
  %483 = load i32, i32* %sv_flags742, align 4
  %or743 = or i32 %483, 536870912
  store i32 %or743, i32* %sv_flags742, align 4
  br label %if.end.744

if.end.744:                                       ; preds = %if.then.741, %if.then.734
  %484 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata745 = getelementptr inbounds %struct.p_state, %struct.p_state* %484, i32 0, i32 8
  %485 = load i8, i8* %is_cdata745, align 1
  %tobool746 = icmp ne i8 %485, 0
  br i1 %tobool746, label %if.end.761, label %if.then.747

if.then.747:                                      ; preds = %if.end.744
  %486 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode748 = getelementptr inbounds %struct.p_state, %struct.p_state* %486, i32 0, i32 28
  %487 = load i8, i8* %utf8_mode748, align 1
  %tobool749 = icmp ne i8 %487, 0
  br i1 %tobool749, label %if.then.750, label %if.end.752

if.then.750:                                      ; preds = %if.then.747
  %488 = load %struct.sv*, %struct.sv** %arg, align 8
  %call751 = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %488)
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.750, %if.then.747
  %489 = load %struct.sv*, %struct.sv** %arg, align 8
  %490 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %entity2char753 = getelementptr inbounds %struct.p_state, %struct.p_state* %490, i32 0, i32 37
  %491 = load %struct.hv*, %struct.hv** %entity2char753, align 8
  %call754 = call %struct.sv* @decode_entities(%struct.sv* %489, %struct.hv* %491, i8 signext 1)
  %492 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %utf8_mode755 = getelementptr inbounds %struct.p_state, %struct.p_state* %492, i32 0, i32 28
  %493 = load i8, i8* %utf8_mode755, align 1
  %tobool756 = icmp ne i8 %493, 0
  br i1 %tobool756, label %if.then.757, label %if.end.760

if.then.757:                                      ; preds = %if.end.752
  %494 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags758 = getelementptr inbounds %struct.sv, %struct.sv* %494, i32 0, i32 2
  %495 = load i32, i32* %sv_flags758, align 4
  %and759 = and i32 %495, -536870913
  store i32 %and759, i32* %sv_flags758, align 4
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.757, %if.end.752
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.744
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.761, %sw.bb.731
  br label %sw.epilog

sw.bb.763:                                        ; preds = %for.body
  %496 = load i32, i32* %event.addr, align 4
  %cmp764 = icmp eq i32 %496, 4
  br i1 %cmp764, label %if.then.766, label %if.end.771

if.then.766:                                      ; preds = %sw.bb.763
  %497 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata767 = getelementptr inbounds %struct.p_state, %struct.p_state* %497, i32 0, i32 8
  %498 = load i8, i8* %is_cdata767, align 1
  %conv768 = sext i8 %498 to i32
  %tobool769 = icmp ne i32 %conv768, 0
  %cond770 = select i1 %tobool769, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond770, %struct.sv** %arg, align 8
  br label %if.end.771

if.end.771:                                       ; preds = %if.then.766, %sw.bb.763
  br label %sw.epilog

sw.bb.772:                                        ; preds = %for.body
  %499 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text = getelementptr inbounds %struct.p_state, %struct.p_state* %499, i32 0, i32 16
  %500 = load %struct.sv*, %struct.sv** %skipped_text, align 8
  %call773 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %500)
  store %struct.sv* %call773, %struct.sv** %arg, align 8
  %call774 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.63, i32 0, i32 0), i64 0)
  %501 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text775 = getelementptr inbounds %struct.p_state, %struct.p_state* %501, i32 0, i32 16
  store %struct.sv* %call774, %struct.sv** %skipped_text775, align 8
  br label %sw.epilog

sw.bb.776:                                        ; preds = %for.body
  %502 = load i64, i64* %offset, align 8
  %call777 = call %struct.sv* @Perl_newSViv(i64 %502)
  %call778 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call777)
  store %struct.sv* %call778, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.779:                                        ; preds = %for.body
  %503 = load i64, i64* %offset, align 8
  %504 = load i32, i32* %utf8.addr, align 4
  %tobool780 = icmp ne i32 %504, 0
  br i1 %tobool780, label %cond.true.781, label %cond.false.783

cond.true.781:                                    ; preds = %sw.bb.779
  %505 = load i8*, i8** %end.addr, align 8
  %506 = load i8*, i8** %beg.addr, align 8
  %call782 = call i64 @Perl_utf8_distance(i8* %505, i8* %506)
  br label %cond.end.787

cond.false.783:                                   ; preds = %sw.bb.779
  %507 = load i8*, i8** %end.addr, align 8
  %508 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast784 = ptrtoint i8* %507 to i64
  %sub.ptr.rhs.cast785 = ptrtoint i8* %508 to i64
  %sub.ptr.sub786 = sub i64 %sub.ptr.lhs.cast784, %sub.ptr.rhs.cast785
  br label %cond.end.787

cond.end.787:                                     ; preds = %cond.false.783, %cond.true.781
  %cond788 = phi i64 [ %call782, %cond.true.781 ], [ %sub.ptr.sub786, %cond.false.783 ]
  %add789 = add i64 %503, %cond788
  %call790 = call %struct.sv* @Perl_newSViv(i64 %add789)
  %call791 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call790)
  store %struct.sv* %call791, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.792:                                        ; preds = %for.body
  %509 = load i32, i32* %utf8.addr, align 4
  %tobool793 = icmp ne i32 %509, 0
  br i1 %tobool793, label %cond.true.794, label %cond.false.796

cond.true.794:                                    ; preds = %sw.bb.792
  %510 = load i8*, i8** %end.addr, align 8
  %511 = load i8*, i8** %beg.addr, align 8
  %call795 = call i64 @Perl_utf8_distance(i8* %510, i8* %511)
  br label %cond.end.800

cond.false.796:                                   ; preds = %sw.bb.792
  %512 = load i8*, i8** %end.addr, align 8
  %513 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast797 = ptrtoint i8* %512 to i64
  %sub.ptr.rhs.cast798 = ptrtoint i8* %513 to i64
  %sub.ptr.sub799 = sub i64 %sub.ptr.lhs.cast797, %sub.ptr.rhs.cast798
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.796, %cond.true.794
  %cond801 = phi i64 [ %call795, %cond.true.794 ], [ %sub.ptr.sub799, %cond.false.796 ]
  %call802 = call %struct.sv* @Perl_newSViv(i64 %cond801)
  %call803 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call802)
  store %struct.sv* %call803, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.804:                                        ; preds = %for.body
  %514 = load i64, i64* %line, align 8
  %call805 = call %struct.sv* @Perl_newSViv(i64 %514)
  %call806 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call805)
  store %struct.sv* %call806, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.807:                                        ; preds = %for.body
  %515 = load i64, i64* %column, align 8
  %call808 = call %struct.sv* @Perl_newSViv(i64 %515)
  %call809 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call808)
  store %struct.sv* %call809, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.810:                                        ; preds = %for.body
  %516 = load i32, i32* %event.addr, align 4
  %idxprom811 = zext i32 %516 to i64
  %arrayidx812 = getelementptr inbounds [9 x i8*], [9 x i8*]* @event_id_str, i32 0, i64 %idxprom811
  %517 = load i8*, i8** %arrayidx812, align 8
  %call813 = call %struct.sv* @Perl_newSVpv(i8* %517, i64 0)
  %call814 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call813)
  store %struct.sv* %call814, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.bb.815:                                        ; preds = %for.body
  %518 = load i8*, i8** %s, align 8
  %arrayidx818 = getelementptr inbounds i8, i8* %518, i64 1
  %519 = load i8, i8* %arrayidx818, align 1
  %conv819 = zext i8 %519 to i32
  store i32 %conv819, i32* %len817, align 4
  %520 = load i8*, i8** %s, align 8
  %add.ptr820 = getelementptr inbounds i8, i8* %520, i64 2
  %521 = load i32, i32* %len817, align 4
  %conv821 = sext i32 %521 to i64
  %call822 = call %struct.sv* @Perl_newSVpvn(i8* %add.ptr820, i64 %conv821)
  %call823 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call822)
  store %struct.sv* %call823, %struct.sv** %arg, align 8
  %522 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %argspec824 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %522, i32 0, i32 1
  %523 = load %struct.sv*, %struct.sv** %argspec824, align 8
  %sv_flags825 = getelementptr inbounds %struct.sv, %struct.sv* %523, i32 0, i32 2
  %524 = load i32, i32* %sv_flags825, align 4
  %and826 = and i32 %524, 536870912
  %tobool827 = icmp ne i32 %and826, 0
  br i1 %tobool827, label %if.then.828, label %if.end.831

if.then.828:                                      ; preds = %sw.bb.815
  %525 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags829 = getelementptr inbounds %struct.sv, %struct.sv* %525, i32 0, i32 2
  %526 = load i32, i32* %sv_flags829, align 4
  %or830 = or i32 %526, 536870912
  store i32 %or830, i32* %sv_flags829, align 4
  br label %if.end.831

if.end.831:                                       ; preds = %if.then.828, %sw.bb.815
  %527 = load i32, i32* %len817, align 4
  %add832 = add nsw i32 %527, 1
  %528 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %add832 to i64
  %add.ptr833 = getelementptr inbounds i8, i8* %528, i64 %idx.ext
  store i8* %add.ptr833, i8** %s, align 8
  br label %sw.epilog

sw.bb.834:                                        ; preds = %for.body
  %call835 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef)
  store %struct.sv* %call835, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %529 = load i8*, i8** %s, align 8
  %530 = load i8, i8* %529, align 1
  %conv836 = sext i8 %530 to i32
  %call837 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i32 %conv836)
  %call838 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call837)
  store %struct.sv* %call838, %struct.sv** %arg, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.834, %if.end.831, %sw.bb.810, %sw.bb.807, %sw.bb.804, %cond.end.800, %cond.end.787, %sw.bb.776, %sw.bb.772, %if.end.771, %if.end.762, %if.end.730, %if.end.719, %if.end.670, %if.end.510, %if.end.466, %if.end.395, %sw.bb
  %531 = load i32, i32* %push_arg, align 4
  %tobool839 = icmp ne i32 %531, 0
  br i1 %tobool839, label %if.then.840, label %if.end.863

if.then.840:                                      ; preds = %sw.epilog
  %532 = load %struct.sv*, %struct.sv** %arg, align 8
  %tobool841 = icmp ne %struct.sv* %532, null
  br i1 %tobool841, label %if.end.844, label %if.then.842

if.then.842:                                      ; preds = %if.then.840
  %call843 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef)
  store %struct.sv* %call843, %struct.sv** %arg, align 8
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.842, %if.then.840
  %533 = load %struct.av*, %struct.av** %array, align 8
  %tobool845 = icmp ne %struct.av* %533, null
  br i1 %tobool845, label %if.then.846, label %if.else.850

if.then.846:                                      ; preds = %if.end.844
  %534 = load %struct.av*, %struct.av** %array, align 8
  %535 = load %struct.sv*, %struct.sv** %arg, align 8
  store %struct.sv* %535, %struct.sv** @PL_Sv, align 8
  %536 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool847 = icmp ne %struct.sv* %536, null
  br i1 %tobool847, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.846
  %537 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %537, i32 0, i32 1
  %538 = load i32, i32* %sv_refcnt, align 4
  %inc848 = add i32 %538, 1
  store i32 %inc848, i32* %sv_refcnt, align 4
  %tobool849 = icmp ne i32 %inc848, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.846
  %539 = phi i1 [ false, %if.then.846 ], [ %tobool849, %land.rhs ]
  %land.ext = zext i1 %539 to i32
  %540 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_av_push(%struct.av* %534, %struct.sv* %540)
  br label %if.end.862

if.else.850:                                      ; preds = %if.end.844
  %541 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %542 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast851 = ptrtoint %struct.sv** %541 to i64
  %sub.ptr.rhs.cast852 = ptrtoint %struct.sv** %542 to i64
  %sub.ptr.sub853 = sub i64 %sub.ptr.lhs.cast851, %sub.ptr.rhs.cast852
  %sub.ptr.div854 = sdiv exact i64 %sub.ptr.sub853, 8
  %cmp855 = icmp slt i64 %sub.ptr.div854, 1
  br i1 %cmp855, label %if.then.857, label %if.end.859

if.then.857:                                      ; preds = %if.else.850
  %543 = load %struct.sv**, %struct.sv*** %sp, align 8
  %544 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call858 = call %struct.sv** @Perl_stack_grow(%struct.sv** %543, %struct.sv** %544, i32 1)
  store %struct.sv** %call858, %struct.sv*** %sp, align 8
  br label %if.end.859

if.end.859:                                       ; preds = %if.then.857, %if.else.850
  %545 = load %struct.sv*, %struct.sv** %arg, align 8
  %546 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr861 = getelementptr inbounds %struct.sv*, %struct.sv** %546, i32 1
  store %struct.sv** %incdec.ptr861, %struct.sv*** %sp, align 8
  store %struct.sv* %545, %struct.sv** %incdec.ptr861, align 8
  store %struct.sv* %545, %struct.sv** %tmp860
  %547 = load %struct.sv*, %struct.sv** %tmp860
  br label %if.end.862

if.end.862:                                       ; preds = %if.end.859, %land.end
  br label %if.end.863

if.end.863:                                       ; preds = %if.end.862, %sw.epilog
  br label %for.inc.864

for.inc.864:                                      ; preds = %if.end.863
  %548 = load i8*, i8** %s, align 8
  %incdec.ptr865 = getelementptr inbounds i8, i8* %548, i32 1
  store i8* %incdec.ptr865, i8** %s, align 8
  br label %for.cond

for.end.866:                                      ; preds = %for.cond
  %549 = load %struct.av*, %struct.av** %array, align 8
  %tobool867 = icmp ne %struct.av* %549, null
  br i1 %tobool867, label %if.then.868, label %if.else.876

if.then.868:                                      ; preds = %for.end.866
  %550 = load %struct.av*, %struct.av** %array, align 8
  %551 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb869 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %551, i32 0, i32 0
  %552 = load %struct.sv*, %struct.sv** %cb869, align 8
  %553 = bitcast %struct.sv* %552 to %struct.av*
  %cmp870 = icmp ne %struct.av* %550, %553
  br i1 %cmp870, label %if.then.872, label %if.end.875

if.then.872:                                      ; preds = %if.then.868
  %554 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb873 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %554, i32 0, i32 0
  %555 = load %struct.sv*, %struct.sv** %cb873, align 8
  %556 = bitcast %struct.sv* %555 to %struct.av*
  %557 = load %struct.av*, %struct.av** %array, align 8
  %558 = bitcast %struct.av* %557 to %struct.sv*
  %call874 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %558)
  call void @Perl_av_push(%struct.av* %556, %struct.sv* %call874)
  br label %if.end.875

if.end.875:                                       ; preds = %if.then.872, %if.then.868
  br label %if.end.982

if.else.876:                                      ; preds = %for.end.866
  %559 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %559, %struct.sv*** @PL_stack_sp, align 8
  %560 = load i8*, i8** %argspec, align 8
  %561 = load i8, i8* %560, align 1
  %conv877 = sext i8 %561 to i32
  %cmp878 = icmp eq i32 %conv877, 1
  br i1 %cmp878, label %land.lhs.true.880, label %if.else.905

land.lhs.true.880:                                ; preds = %if.else.876
  %562 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb881 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %562, i32 0, i32 0
  %563 = load %struct.sv*, %struct.sv** %cb881, align 8
  %sv_flags882 = getelementptr inbounds %struct.sv, %struct.sv* %563, i32 0, i32 2
  %564 = load i32, i32* %sv_flags882, align 4
  %and883 = and i32 %564, 524288
  %tobool884 = icmp ne i32 %and883, 0
  br i1 %tobool884, label %if.else.905, label %if.then.885

if.then.885:                                      ; preds = %land.lhs.true.880
  %565 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb887 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %565, i32 0, i32 0
  %566 = load %struct.sv*, %struct.sv** %cb887, align 8
  %sv_flags888 = getelementptr inbounds %struct.sv, %struct.sv* %566, i32 0, i32 2
  %567 = load i32, i32* %sv_flags888, align 4
  %and889 = and i32 %567, 262144
  %cmp890 = icmp eq i32 %and889, 262144
  br i1 %cmp890, label %cond.true.892, label %cond.false.899

cond.true.892:                                    ; preds = %if.then.885
  %568 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb893 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %568, i32 0, i32 0
  %569 = load %struct.sv*, %struct.sv** %cb893, align 8
  %sv_any894 = getelementptr inbounds %struct.sv, %struct.sv* %569, i32 0, i32 0
  %570 = load i8*, i8** %sv_any894, align 8
  %571 = bitcast i8* %570 to %struct.xpv*
  %xpv_cur895 = getelementptr inbounds %struct.xpv, %struct.xpv* %571, i32 0, i32 1
  %572 = load i64, i64* %xpv_cur895, align 8
  store i64 %572, i64* %my_na, align 8
  %573 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb896 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %573, i32 0, i32 0
  %574 = load %struct.sv*, %struct.sv** %cb896, align 8
  %sv_any897 = getelementptr inbounds %struct.sv, %struct.sv* %574, i32 0, i32 0
  %575 = load i8*, i8** %sv_any897, align 8
  %576 = bitcast i8* %575 to %struct.xpv*
  %xpv_pv898 = getelementptr inbounds %struct.xpv, %struct.xpv* %576, i32 0, i32 0
  %577 = load i8*, i8** %xpv_pv898, align 8
  br label %cond.end.902

cond.false.899:                                   ; preds = %if.then.885
  %578 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb900 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %578, i32 0, i32 0
  %579 = load %struct.sv*, %struct.sv** %cb900, align 8
  %call901 = call i8* @Perl_sv_2pv_flags(%struct.sv* %579, i64* %my_na, i32 2)
  br label %cond.end.902

cond.end.902:                                     ; preds = %cond.false.899, %cond.true.892
  %cond903 = phi i8* [ %577, %cond.true.892 ], [ %call901, %cond.false.899 ]
  store i8* %cond903, i8** %method, align 8
  %580 = load i8*, i8** %method, align 8
  %call904 = call i32 @Perl_call_method(i8* %580, i32 134)
  br label %if.end.908

if.else.905:                                      ; preds = %land.lhs.true.880, %if.else.876
  %581 = load %struct.p_handler*, %struct.p_handler** %h, align 8
  %cb906 = getelementptr inbounds %struct.p_handler, %struct.p_handler* %581, i32 0, i32 0
  %582 = load %struct.sv*, %struct.sv** %cb906, align 8
  %call907 = call i32 @Perl_call_sv(%struct.sv* %582, i32 134)
  br label %if.end.908

if.end.908:                                       ; preds = %if.else.905, %cond.end.902
  %583 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any909 = getelementptr inbounds %struct.gv, %struct.gv* %583, i32 0, i32 0
  %584 = load %struct.xpvgv*, %struct.xpvgv** %sv_any909, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %584, i32 0, i32 7
  %585 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %585, i32 0, i32 0
  %586 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool910 = icmp ne %struct.sv* %586, null
  br i1 %tobool910, label %cond.false.912, label %cond.true.911

cond.true.911:                                    ; preds = %if.end.908
  br i1 false, label %if.then.976, label %if.end.977

cond.false.912:                                   ; preds = %if.end.908
  %587 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any913 = getelementptr inbounds %struct.gv, %struct.gv* %587, i32 0, i32 0
  %588 = load %struct.xpvgv*, %struct.xpvgv** %sv_any913, align 8
  %xgv_gp914 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %588, i32 0, i32 7
  %589 = load %struct.gp*, %struct.gp** %xgv_gp914, align 8
  %gp_sv915 = getelementptr inbounds %struct.gp, %struct.gp* %589, i32 0, i32 0
  %590 = load %struct.sv*, %struct.sv** %gp_sv915, align 8
  %sv_flags916 = getelementptr inbounds %struct.sv, %struct.sv* %590, i32 0, i32 2
  %591 = load i32, i32* %sv_flags916, align 4
  %and917 = and i32 %591, 262144
  %tobool918 = icmp ne i32 %and917, 0
  br i1 %tobool918, label %cond.true.919, label %cond.false.939

cond.true.919:                                    ; preds = %cond.false.912
  %592 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any920 = getelementptr inbounds %struct.gv, %struct.gv* %592, i32 0, i32 0
  %593 = load %struct.xpvgv*, %struct.xpvgv** %sv_any920, align 8
  %xgv_gp921 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %593, i32 0, i32 7
  %594 = load %struct.gp*, %struct.gp** %xgv_gp921, align 8
  %gp_sv922 = getelementptr inbounds %struct.gp, %struct.gp* %594, i32 0, i32 0
  %595 = load %struct.sv*, %struct.sv** %gp_sv922, align 8
  %sv_any923 = getelementptr inbounds %struct.sv, %struct.sv* %595, i32 0, i32 0
  %596 = load i8*, i8** %sv_any923, align 8
  %597 = bitcast i8* %596 to %struct.xpv*
  store %struct.xpv* %597, %struct.xpv** @PL_Xpv, align 8
  %tobool924 = icmp ne %struct.xpv* %597, null
  br i1 %tobool924, label %land.lhs.true.925, label %cond.false.938

land.lhs.true.925:                                ; preds = %cond.true.919
  %598 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur926 = getelementptr inbounds %struct.xpv, %struct.xpv* %598, i32 0, i32 1
  %599 = load i64, i64* %xpv_cur926, align 8
  %cmp927 = icmp ugt i64 %599, 1
  br i1 %cmp927, label %cond.true.937, label %lor.lhs.false.929

lor.lhs.false.929:                                ; preds = %land.lhs.true.925
  %600 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur930 = getelementptr inbounds %struct.xpv, %struct.xpv* %600, i32 0, i32 1
  %601 = load i64, i64* %xpv_cur930, align 8
  %tobool931 = icmp ne i64 %601, 0
  br i1 %tobool931, label %land.lhs.true.932, label %cond.false.938

land.lhs.true.932:                                ; preds = %lor.lhs.false.929
  %602 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv933 = getelementptr inbounds %struct.xpv, %struct.xpv* %602, i32 0, i32 0
  %603 = load i8*, i8** %xpv_pv933, align 8
  %604 = load i8, i8* %603, align 1
  %conv934 = sext i8 %604 to i32
  %cmp935 = icmp ne i32 %conv934, 48
  br i1 %cmp935, label %cond.true.937, label %cond.false.938

cond.true.937:                                    ; preds = %land.lhs.true.932, %land.lhs.true.925
  br i1 true, label %if.then.976, label %if.end.977

cond.false.938:                                   ; preds = %land.lhs.true.932, %lor.lhs.false.929, %cond.true.919
  br i1 false, label %if.then.976, label %if.end.977

cond.false.939:                                   ; preds = %cond.false.912
  %605 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any940 = getelementptr inbounds %struct.gv, %struct.gv* %605, i32 0, i32 0
  %606 = load %struct.xpvgv*, %struct.xpvgv** %sv_any940, align 8
  %xgv_gp941 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %606, i32 0, i32 7
  %607 = load %struct.gp*, %struct.gp** %xgv_gp941, align 8
  %gp_sv942 = getelementptr inbounds %struct.gp, %struct.gp* %607, i32 0, i32 0
  %608 = load %struct.sv*, %struct.sv** %gp_sv942, align 8
  %sv_flags943 = getelementptr inbounds %struct.sv, %struct.sv* %608, i32 0, i32 2
  %609 = load i32, i32* %sv_flags943, align 4
  %and944 = and i32 %609, 65536
  %tobool945 = icmp ne i32 %and944, 0
  br i1 %tobool945, label %cond.true.946, label %cond.false.954

cond.true.946:                                    ; preds = %cond.false.939
  %610 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any947 = getelementptr inbounds %struct.gv, %struct.gv* %610, i32 0, i32 0
  %611 = load %struct.xpvgv*, %struct.xpvgv** %sv_any947, align 8
  %xgv_gp948 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %611, i32 0, i32 7
  %612 = load %struct.gp*, %struct.gp** %xgv_gp948, align 8
  %gp_sv949 = getelementptr inbounds %struct.gp, %struct.gp* %612, i32 0, i32 0
  %613 = load %struct.sv*, %struct.sv** %gp_sv949, align 8
  %sv_any950 = getelementptr inbounds %struct.sv, %struct.sv* %613, i32 0, i32 0
  %614 = load i8*, i8** %sv_any950, align 8
  %615 = bitcast i8* %614 to %struct.xpviv*
  %xiv_iv951 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %615, i32 0, i32 3
  %616 = load i64, i64* %xiv_iv951, align 8
  %cmp952 = icmp ne i64 %616, 0
  br i1 %cmp952, label %if.then.976, label %if.end.977

cond.false.954:                                   ; preds = %cond.false.939
  %617 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any955 = getelementptr inbounds %struct.gv, %struct.gv* %617, i32 0, i32 0
  %618 = load %struct.xpvgv*, %struct.xpvgv** %sv_any955, align 8
  %xgv_gp956 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %618, i32 0, i32 7
  %619 = load %struct.gp*, %struct.gp** %xgv_gp956, align 8
  %gp_sv957 = getelementptr inbounds %struct.gp, %struct.gp* %619, i32 0, i32 0
  %620 = load %struct.sv*, %struct.sv** %gp_sv957, align 8
  %sv_flags958 = getelementptr inbounds %struct.sv, %struct.sv* %620, i32 0, i32 2
  %621 = load i32, i32* %sv_flags958, align 4
  %and959 = and i32 %621, 131072
  %tobool960 = icmp ne i32 %and959, 0
  br i1 %tobool960, label %cond.true.961, label %cond.false.969

cond.true.961:                                    ; preds = %cond.false.954
  %622 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any962 = getelementptr inbounds %struct.gv, %struct.gv* %622, i32 0, i32 0
  %623 = load %struct.xpvgv*, %struct.xpvgv** %sv_any962, align 8
  %xgv_gp963 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %623, i32 0, i32 7
  %624 = load %struct.gp*, %struct.gp** %xgv_gp963, align 8
  %gp_sv964 = getelementptr inbounds %struct.gp, %struct.gp* %624, i32 0, i32 0
  %625 = load %struct.sv*, %struct.sv** %gp_sv964, align 8
  %sv_any965 = getelementptr inbounds %struct.sv, %struct.sv* %625, i32 0, i32 0
  %626 = load i8*, i8** %sv_any965, align 8
  %627 = bitcast i8* %626 to %struct.xpvnv*
  %xnv_nv966 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %627, i32 0, i32 4
  %628 = load double, double* %xnv_nv966, align 8
  %cmp967 = fcmp une double %628, 0.000000e+00
  br i1 %cmp967, label %if.then.976, label %if.end.977

cond.false.969:                                   ; preds = %cond.false.954
  %629 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any970 = getelementptr inbounds %struct.gv, %struct.gv* %629, i32 0, i32 0
  %630 = load %struct.xpvgv*, %struct.xpvgv** %sv_any970, align 8
  %xgv_gp971 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %630, i32 0, i32 7
  %631 = load %struct.gp*, %struct.gp** %xgv_gp971, align 8
  %gp_sv972 = getelementptr inbounds %struct.gp, %struct.gp* %631, i32 0, i32 0
  %632 = load %struct.sv*, %struct.sv** %gp_sv972, align 8
  %call973 = call signext i8 @Perl_sv_2bool(%struct.sv* %632)
  %conv974 = sext i8 %call973 to i32
  %tobool975 = icmp ne i32 %conv974, 0
  br i1 %tobool975, label %if.then.976, label %if.end.977

if.then.976:                                      ; preds = %cond.false.969, %cond.true.961, %cond.true.946, %cond.false.938, %cond.true.937, %cond.true.911
  call void (i8*, ...) @Perl_croak(i8* null)
  br label %if.end.977

if.end.977:                                       ; preds = %if.then.976, %cond.false.969, %cond.true.961, %cond.true.946, %cond.false.938, %cond.true.937, %cond.true.911
  %633 = load i32, i32* @PL_tmps_ix, align 4
  %634 = load i32, i32* @PL_tmps_floor, align 4
  %cmp978 = icmp sgt i32 %633, %634
  br i1 %cmp978, label %if.then.980, label %if.end.981

if.then.980:                                      ; preds = %if.end.977
  call void @Perl_free_tmps()
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.980, %if.end.977
  call void @Perl_pop_scope()
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.end.875
  %635 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text983 = getelementptr inbounds %struct.p_state, %struct.p_state* %635, i32 0, i32 16
  %636 = load %struct.sv*, %struct.sv** %skipped_text983, align 8
  %tobool984 = icmp ne %struct.sv* %636, null
  br i1 %tobool984, label %if.then.985, label %if.end.990

if.then.985:                                      ; preds = %if.end.982
  %637 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text987 = getelementptr inbounds %struct.p_state, %struct.p_state* %637, i32 0, i32 16
  %638 = load %struct.sv*, %struct.sv** %skipped_text987, align 8
  %sv_any988 = getelementptr inbounds %struct.sv, %struct.sv* %638, i32 0, i32 0
  %639 = load i8*, i8** %sv_any988, align 8
  %640 = bitcast i8* %639 to %struct.xpv*
  %xpv_cur989 = getelementptr inbounds %struct.xpv, %struct.xpv* %640, i32 0, i32 1
  store i64 0, i64* %xpv_cur989, align 8
  store i64 0, i64* %tmp986
  %641 = load i64, i64* %tmp986
  br label %if.end.990

if.end.990:                                       ; preds = %if.then.985, %if.end.982
  br label %return

IGNORE_EVENT:                                     ; preds = %if.then.151, %if.then.140, %if.then.135, %if.then.127, %if.then.116, %if.end.108, %if.then.55, %if.then.51
  %642 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text991 = getelementptr inbounds %struct.p_state, %struct.p_state* %642, i32 0, i32 16
  %643 = load %struct.sv*, %struct.sv** %skipped_text991, align 8
  %tobool992 = icmp ne %struct.sv* %643, null
  br i1 %tobool992, label %if.then.993, label %if.end.1037

if.then.993:                                      ; preds = %IGNORE_EVENT
  %644 = load i32, i32* %event.addr, align 4
  %cmp994 = icmp ne i32 %644, 4
  br i1 %cmp994, label %land.lhs.true.996, label %if.end.1005

land.lhs.true.996:                                ; preds = %if.then.993
  %645 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text997 = getelementptr inbounds %struct.p_state, %struct.p_state* %645, i32 0, i32 11
  %646 = load %struct.sv*, %struct.sv** %pend_text997, align 8
  %tobool998 = icmp ne %struct.sv* %646, null
  br i1 %tobool998, label %land.lhs.true.999, label %if.end.1005

land.lhs.true.999:                                ; preds = %land.lhs.true.996
  %647 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text1000 = getelementptr inbounds %struct.p_state, %struct.p_state* %647, i32 0, i32 11
  %648 = load %struct.sv*, %struct.sv** %pend_text1000, align 8
  %sv_flags1001 = getelementptr inbounds %struct.sv, %struct.sv* %648, i32 0, i32 2
  %649 = load i32, i32* %sv_flags1001, align 4
  %and1002 = and i32 %649, 118423552
  %tobool1003 = icmp ne i32 %and1002, 0
  br i1 %tobool1003, label %if.then.1004, label %if.end.1005

if.then.1004:                                     ; preds = %land.lhs.true.999
  %650 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %651 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @flush_pending_text(%struct.p_state* %650, %struct.sv* %651)
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.then.1004, %land.lhs.true.999, %land.lhs.true.996, %if.then.993
  %652 = load i32, i32* %utf8.addr, align 4
  %tobool1006 = icmp ne i32 %652, 0
  br i1 %tobool1006, label %land.lhs.true.1007, label %if.end.1015

land.lhs.true.1007:                               ; preds = %if.end.1005
  %653 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text1008 = getelementptr inbounds %struct.p_state, %struct.p_state* %653, i32 0, i32 16
  %654 = load %struct.sv*, %struct.sv** %skipped_text1008, align 8
  %sv_flags1009 = getelementptr inbounds %struct.sv, %struct.sv* %654, i32 0, i32 2
  %655 = load i32, i32* %sv_flags1009, align 4
  %and1010 = and i32 %655, 536870912
  %tobool1011 = icmp ne i32 %and1010, 0
  br i1 %tobool1011, label %if.end.1015, label %if.then.1012

if.then.1012:                                     ; preds = %land.lhs.true.1007
  %656 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text1013 = getelementptr inbounds %struct.p_state, %struct.p_state* %656, i32 0, i32 16
  %657 = load %struct.sv*, %struct.sv** %skipped_text1013, align 8
  %call1014 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %657, i32 2)
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.then.1012, %land.lhs.true.1007, %if.end.1005
  %658 = load i32, i32* %utf8.addr, align 4
  %tobool1016 = icmp ne i32 %658, 0
  br i1 %tobool1016, label %if.then.1022, label %lor.lhs.false.1017

lor.lhs.false.1017:                               ; preds = %if.end.1015
  %659 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text1018 = getelementptr inbounds %struct.p_state, %struct.p_state* %659, i32 0, i32 16
  %660 = load %struct.sv*, %struct.sv** %skipped_text1018, align 8
  %sv_flags1019 = getelementptr inbounds %struct.sv, %struct.sv* %660, i32 0, i32 2
  %661 = load i32, i32* %sv_flags1019, align 4
  %and1020 = and i32 %661, 536870912
  %tobool1021 = icmp ne i32 %and1020, 0
  br i1 %tobool1021, label %if.else.1027, label %if.then.1022

if.then.1022:                                     ; preds = %lor.lhs.false.1017, %if.end.1015
  %662 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %skipped_text1023 = getelementptr inbounds %struct.p_state, %struct.p_state* %662, i32 0, i32 16
  %663 = load %struct.sv*, %struct.sv** %skipped_text1023, align 8
  %664 = load i8*, i8** %beg.addr, align 8
  %665 = load i8*, i8** %end.addr, align 8
  %666 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast1024 = ptrtoint i8* %665 to i64
  %sub.ptr.rhs.cast1025 = ptrtoint i8* %666 to i64
  %sub.ptr.sub1026 = sub i64 %sub.ptr.lhs.cast1024, %sub.ptr.rhs.cast1025
  call void @Perl_sv_catpvn_flags(%struct.sv* %663, i8* %664, i64 %sub.ptr.sub1026, i32 2)
  br label %if.end.1036

if.else.1027:                                     ; preds = %lor.lhs.false.1017
  %667 = load i8*, i8** %beg.addr, align 8
  %668 = load i8*, i8** %end.addr, align 8
  %669 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast1030 = ptrtoint i8* %668 to i64
  %sub.ptr.rhs.cast1031 = ptrtoint i8* %669 to i64
  %sub.ptr.sub1032 = sub i64 %sub.ptr.lhs.cast1030, %sub.ptr.rhs.cast1031
  %call1033 = call %struct.sv* @Perl_newSVpvn(i8* %667, i64 %sub.ptr.sub1032)
  store %struct.sv* %call1033, %struct.sv** %tmp1029, align 8
  %670 = load %struct.sv*, %struct.sv** %tmp1029, align 8
  %call1034 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %670, i32 2)
  %671 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text1035 = getelementptr inbounds %struct.p_state, %struct.p_state* %671, i32 0, i32 11
  %672 = load %struct.sv*, %struct.sv** %pend_text1035, align 8
  %673 = load %struct.sv*, %struct.sv** %tmp1029, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %672, %struct.sv* %673, i32 2)
  %674 = load %struct.sv*, %struct.sv** %tmp1029, align 8
  call void @Perl_sv_free(%struct.sv* %674)
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.else.1027, %if.then.1022
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.end.1036, %IGNORE_EVENT
  br label %return

return:                                           ; preds = %if.end.1037, %if.end.990, %if.end.273, %if.then.208
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #0 {
entry:
  %p_state.addr = alloca %struct.p_state*, align 8
  %self.addr = alloca %struct.sv*, align 8
  %old_unbroken_text = alloca i8, align 1
  %old_pend_text = alloca %struct.sv*, align 8
  %old_is_cdata = alloca i8, align 1
  %old_offset = alloca i64, align 8
  %old_line = alloca i64, align 8
  %old_column = alloca i64, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %unbroken_text = getelementptr inbounds %struct.p_state, %struct.p_state* %0, i32 0, i32 24
  %1 = load i8, i8* %unbroken_text, align 1
  store i8 %1, i8* %old_unbroken_text, align 1
  %2 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text = getelementptr inbounds %struct.p_state, %struct.p_state* %2, i32 0, i32 11
  %3 = load %struct.sv*, %struct.sv** %pend_text, align 8
  store %struct.sv* %3, %struct.sv** %old_pend_text, align 8
  %4 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %4, i32 0, i32 8
  %5 = load i8, i8* %is_cdata, align 1
  store i8 %5, i8* %old_is_cdata, align 1
  %6 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset = getelementptr inbounds %struct.p_state, %struct.p_state* %6, i32 0, i32 2
  %7 = load i64, i64* %offset, align 8
  store i64 %7, i64* %old_offset, align 8
  %8 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line = getelementptr inbounds %struct.p_state, %struct.p_state* %8, i32 0, i32 3
  %9 = load i64, i64* %line, align 8
  store i64 %9, i64* %old_line, align 8
  %10 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column = getelementptr inbounds %struct.p_state, %struct.p_state* %10, i32 0, i32 4
  %11 = load i64, i64* %column, align 8
  store i64 %11, i64* %old_column, align 8
  %12 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %unbroken_text1 = getelementptr inbounds %struct.p_state, %struct.p_state* %12, i32 0, i32 24
  store i8 0, i8* %unbroken_text1, align 1
  %13 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text2 = getelementptr inbounds %struct.p_state, %struct.p_state* %13, i32 0, i32 11
  store %struct.sv* null, %struct.sv** %pend_text2, align 8
  %14 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %14, i32 0, i32 12
  %15 = load i8, i8* %pend_text_is_cdata, align 1
  %16 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata3 = getelementptr inbounds %struct.p_state, %struct.p_state* %16, i32 0, i32 8
  store i8 %15, i8* %is_cdata3, align 1
  %17 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_offset = getelementptr inbounds %struct.p_state, %struct.p_state* %17, i32 0, i32 13
  %18 = load i64, i64* %pend_text_offset, align 8
  %19 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset4 = getelementptr inbounds %struct.p_state, %struct.p_state* %19, i32 0, i32 2
  store i64 %18, i64* %offset4, align 8
  %20 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_line = getelementptr inbounds %struct.p_state, %struct.p_state* %20, i32 0, i32 14
  %21 = load i64, i64* %pend_text_line, align 8
  %22 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line5 = getelementptr inbounds %struct.p_state, %struct.p_state* %22, i32 0, i32 3
  store i64 %21, i64* %line5, align 8
  %23 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text_column = getelementptr inbounds %struct.p_state, %struct.p_state* %23, i32 0, i32 15
  %24 = load i64, i64* %pend_text_column, align 8
  %25 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column6 = getelementptr inbounds %struct.p_state, %struct.p_state* %25, i32 0, i32 4
  store i64 %24, i64* %column6, align 8
  %26 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %27 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 0
  %30 = load i8*, i8** %xpv_pv, align 8
  %31 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_any7 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any7, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv8 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv8, align 8
  %35 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any9, align 8
  %37 = bitcast i8* %36 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %37, i32 0, i32 1
  %38 = load i64, i64* %xpv_cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %38
  %39 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags, align 4
  %and = and i32 %40, 536870912
  %41 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %26, i32 4, i8* %30, i8* %add.ptr, i32 %and, %struct.token_pos* null, i32 0, %struct.sv* %41)
  %42 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 2
  %43 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %43, 1223753727
  store i32 %and11, i32* %sv_flags10, align 4
  %44 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %sv_flags12 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 2
  %45 = load i32, i32* %sv_flags12, align 4
  %and13 = and i32 %45, 2097152
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %46 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %call = call i32 @Perl_sv_backoff(%struct.sv* %46)
  %tobool14 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %47 = phi i1 [ false, %entry ], [ %tobool14, %land.rhs ]
  %land.ext = zext i1 %47 to i32
  %48 = load i8, i8* %old_unbroken_text, align 1
  %49 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %unbroken_text15 = getelementptr inbounds %struct.p_state, %struct.p_state* %49, i32 0, i32 24
  store i8 %48, i8* %unbroken_text15, align 1
  %50 = load %struct.sv*, %struct.sv** %old_pend_text, align 8
  %51 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %pend_text16 = getelementptr inbounds %struct.p_state, %struct.p_state* %51, i32 0, i32 11
  store %struct.sv* %50, %struct.sv** %pend_text16, align 8
  %52 = load i8, i8* %old_is_cdata, align 1
  %53 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata17 = getelementptr inbounds %struct.p_state, %struct.p_state* %53, i32 0, i32 8
  store i8 %52, i8* %is_cdata17, align 1
  %54 = load i64, i64* %old_offset, align 8
  %55 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %offset18 = getelementptr inbounds %struct.p_state, %struct.p_state* %55, i32 0, i32 2
  store i64 %54, i64* %offset18, align 8
  %56 = load i64, i64* %old_line, align 8
  %57 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %line19 = getelementptr inbounds %struct.p_state, %struct.p_state* %57, i32 0, i32 3
  store i64 %56, i64* %line19, align 8
  %58 = load i64, i64* %old_column, align 8
  %59 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %column20 = getelementptr inbounds %struct.p_state, %struct.p_state* %59, i32 0, i32 4
  store i64 %58, i64* %column20, align 8
  ret void
}

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare void @Perl_warn(i8*, ...) #1

declare i32 @Perl_sv_backoff(%struct.sv*) #1

declare void @Perl_sv_chop(%struct.sv*, i8*) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

declare %struct.sv* @Perl_av_pop(%struct.av*) #1

; Function Attrs: nounwind uwtable
define internal void @marked_section_update(%struct.p_state* %p_state) #0 {
entry:
  %p_state.addr = alloca %struct.p_state*, align 8
  %ms_stack = alloca %struct.av*, align 8
  %stack_len = alloca i32, align 4
  %stack_idx = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %tokens = alloca %struct.av*, align 8
  %tokens_len = alloca i32, align 4
  %i = alloca i32, align 4
  %svp9 = alloca %struct.sv**, align 8
  %len = alloca i64, align 8
  %token_str = alloca i8*, align 8
  %token = alloca i32, align 4
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  %0 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack1 = getelementptr inbounds %struct.p_state, %struct.p_state* %0, i32 0, i32 18
  %1 = load %struct.av*, %struct.av** %ms_stack1, align 8
  store %struct.av* %1, %struct.av** %ms_stack, align 8
  %2 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms = getelementptr inbounds %struct.p_state, %struct.p_state* %2, i32 0, i32 17
  store i32 0, i32* %ms, align 4
  %3 = load %struct.av*, %struct.av** %ms_stack, align 8
  %tobool = icmp ne %struct.av* %3, null
  br i1 %tobool, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  %4 = load %struct.av*, %struct.av** %ms_stack, align 8
  %call = call i32 @Perl_av_len(%struct.av* %4)
  store i32 %call, i32* %stack_len, align 4
  store i32 0, i32* %stack_idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %if.then
  %5 = load i32, i32* %stack_idx, align 4
  %6 = load i32, i32* %stack_len, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %7 = load %struct.av*, %struct.av** %ms_stack, align 8
  %8 = load i32, i32* %stack_idx, align 4
  %call2 = call %struct.sv** @Perl_av_fetch(%struct.av* %7, i32 %8, i32 0)
  store %struct.sv** %call2, %struct.sv*** %svp, align 8
  %9 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool3 = icmp ne %struct.sv** %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.41

if.then.4:                                        ; preds = %for.body
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %13, i32 0, i32 0
  %14 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %15 = bitcast %struct.sv* %14 to %struct.av*
  store %struct.av* %15, %struct.av** %tokens, align 8
  %16 = load %struct.av*, %struct.av** %tokens, align 8
  %call5 = call i32 @Perl_av_len(%struct.av* %16)
  store i32 %call5, i32* %tokens_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then.4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %tokens_len, align 4
  %cmp7 = icmp sle i32 %17, %18
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %19 = load %struct.av*, %struct.av** %tokens, align 8
  %20 = load i32, i32* %i, align 4
  %call10 = call %struct.sv** @Perl_av_fetch(%struct.av* %19, i32 %20, i32 0)
  store %struct.sv** %call10, %struct.sv*** %svp9, align 8
  %21 = load %struct.sv**, %struct.sv*** %svp9, align 8
  %tobool11 = icmp ne %struct.sv** %21, null
  br i1 %tobool11, label %if.then.12, label %if.end.40

if.then.12:                                       ; preds = %for.body.8
  %22 = load %struct.sv**, %struct.sv*** %svp9, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags, align 4
  %and = and i32 %24, 262144
  %cmp13 = icmp eq i32 %and, 262144
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %25 = load %struct.sv**, %struct.sv*** %svp9, align 8
  %26 = load %struct.sv*, %struct.sv** %25, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any14, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 1
  %29 = load i64, i64* %xpv_cur, align 8
  store i64 %29, i64* %len, align 8
  %30 = load %struct.sv**, %struct.sv*** %svp9, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any15, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %35 = load %struct.sv**, %struct.sv*** %svp9, align 8
  %36 = load %struct.sv*, %struct.sv** %35, align 8
  %call16 = call i8* @Perl_sv_2pv_flags(%struct.sv* %36, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ %call16, %cond.false ]
  store i8* %cond, i8** %token_str, align 8
  %37 = load i8*, i8** %token_str, align 8
  %call17 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %cond.end
  store i32 1, i32* %token, align 4
  br label %if.end.34

if.else:                                          ; preds = %cond.end
  %38 = load i8*, i8** %token_str, align 8
  %call20 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %if.else
  store i32 2, i32* %token, align 4
  br label %if.end.33

if.else.23:                                       ; preds = %if.else
  %39 = load i8*, i8** %token_str, align 8
  %call24 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.else.23
  store i32 3, i32* %token, align 4
  br label %if.end.32

if.else.27:                                       ; preds = %if.else.23
  %40 = load i8*, i8** %token_str, align 8
  %call28 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  store i32 4, i32* %token, align 4
  br label %if.end

if.else.31:                                       ; preds = %if.else.27
  store i32 0, i32* %token, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.19
  %41 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms35 = getelementptr inbounds %struct.p_state, %struct.p_state* %41, i32 0, i32 17
  %42 = load i32, i32* %ms35, align 4
  %43 = load i32, i32* %token, align 4
  %cmp36 = icmp ult i32 %42, %43
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.34
  %44 = load i32, i32* %token, align 4
  %45 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms38 = getelementptr inbounds %struct.p_state, %struct.p_state* %45, i32 0, i32 17
  store i32 %44, i32* %ms38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %for.body
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %47 = load i32, i32* %stack_idx, align 4
  %inc43 = add nsw i32 %47, 1
  store i32 %inc43, i32* %stack_idx, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.44, %entry
  %48 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms46 = getelementptr inbounds %struct.p_state, %struct.p_state* %48, i32 0, i32 17
  %49 = load i32, i32* %ms46, align 4
  %cmp47 = icmp eq i32 %49, 3
  %conv = zext i1 %cmp47 to i32
  %conv48 = trunc i32 %conv to i8
  %50 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata = getelementptr inbounds %struct.p_state, %struct.p_state* %50, i32 0, i32 8
  store i8 %conv48, i8* %is_cdata, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_start(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %empty_tag = alloca i32, align 4
  %token_buf = alloca [16 x %struct.token_pos], align 16
  %token_lim = alloca i32, align 4
  %tokens = alloca %struct.token_pos*, align 8
  %num_tokens = alloca i32, align 4
  %tag_name_first = alloca i8, align 1
  %tag_name_char = alloca i8, align 1
  %attr_name_first = alloca i8, align 1
  %attr_name_char = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %attr_name_beg = alloca i8*, align 8
  %attr_name_end = alloca i8*, align 8
  %tmp78 = alloca i8*, align 8
  %tmp131 = alloca i8*, align 8
  %str_beg = alloca i8*, align 8
  %tmp177 = alloca i8*, align 8
  %word_start = alloca i8*, align 8
  %tmp222 = alloca i8*, align 8
  %tmp255 = alloca i8*, align 8
  %i = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %s304 = alloca i8*, align 8
  %t = alloca i8*, align 8
  %len310 = alloca i32, align 4
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  store i8* %0, i8** %s, align 8
  store i32 0, i32* %empty_tag, align 4
  store i32 16, i32* %token_lim, align 4
  %arraydecay = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  store %struct.token_pos* %arraydecay, %struct.token_pos** %tokens, align 8
  store i32 0, i32* %num_tokens, align 4
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_names = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 21
  %2 = load i8, i8* %strict_names, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %3, i32 0, i32 23
  %4 = load i8, i8* %xml_mode, align 1
  %conv1 = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 2, i8* %attr_name_first, align 1
  store i8 2, i8* %tag_name_first, align 1
  store i8 4, i8* %attr_name_char, align 1
  store i8 4, i8* %tag_name_char, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i8 8, i8* %tag_name_char, align 1
  store i8 8, i8* %tag_name_first, align 1
  store i8 8, i8* %attr_name_first, align 1
  store i8 16, i8* %attr_name_char, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i8*, i8** %s, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %10 to i32
  %11 = load i8, i8* %tag_name_char, align 1
  %conv5 = zext i8 %11 to i32
  %and = and i32 %conv4, %conv5
  %tobool6 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %num_tokens, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %num_tokens, align 4
  %15 = load i32, i32* %num_tokens, align 4
  %16 = load i32, i32* %token_lim, align 4
  %cmp7 = icmp eq i32 %15, %16
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %while.end
  %17 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay10 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp11 = icmp ne %struct.token_pos* %17, %arraydecay10
  %conv12 = zext i1 %cmp11 to i32
  %conv13 = trunc i32 %conv12 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %while.end
  %18 = load i8*, i8** %beg.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i32, i32* %num_tokens, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom16 = sext i32 %sub to i64
  %20 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx17 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %20, i64 %idxprom16
  %beg18 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx17, i32 0, i32 0
  store i8* %add.ptr15, i8** %beg18, align 8
  %21 = load i8*, i8** %s, align 8
  %22 = load i32, i32* %num_tokens, align 4
  %sub19 = sub nsw i32 %22, 1
  %idxprom20 = sext i32 %sub19 to i64
  %23 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx21 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %23, i64 %idxprom20
  %end22 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx21, i32 0, i32 1
  store i8* %21, i8** %end22, align 8
  store i8* %21, i8** %tmp
  %24 = load i8*, i8** %tmp
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.29, %if.end.14
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom24 = zext i8 %26 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom24
  %27 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %and27 = and i32 %conv26, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %while.cond.23
  %28 = load i8*, i8** %s, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr30, i8** %s, align 8
  br label %while.cond.23

while.end.31:                                     ; preds = %while.cond.23
  %29 = load i8*, i8** %s, align 8
  %30 = load i8*, i8** %end.addr, align 8
  %cmp32 = icmp eq i8* %29, %30
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.end.31
  br label %PREMATURE

if.end.35:                                        ; preds = %while.end.31
  br label %while.cond.36

while.cond.36:                                    ; preds = %if.end.260, %if.end.35
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %idxprom37 = zext i8 %32 to i64
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom37
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %34 = load i8, i8* %attr_name_first, align 1
  %conv40 = zext i8 %34 to i32
  %and41 = and i32 %conv39, %conv40
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %while.body.43, label %while.end.261

while.body.43:                                    ; preds = %while.cond.36
  %35 = load i8*, i8** %s, align 8
  store i8* %35, i8** %attr_name_beg, align 8
  %36 = load i8*, i8** %s, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr46, i8** %s, align 8
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.58, %while.body.43
  %37 = load i8*, i8** %s, align 8
  %38 = load i8*, i8** %end.addr, align 8
  %cmp48 = icmp ult i8* %37, %38
  br i1 %cmp48, label %land.rhs.50, label %land.end.57

land.rhs.50:                                      ; preds = %while.cond.47
  %39 = load i8*, i8** %s, align 8
  %40 = load i8, i8* %39, align 1
  %idxprom51 = zext i8 %40 to i64
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom51
  %41 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %41 to i32
  %42 = load i8, i8* %attr_name_char, align 1
  %conv54 = zext i8 %42 to i32
  %and55 = and i32 %conv53, %conv54
  %tobool56 = icmp ne i32 %and55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.50, %while.cond.47
  %43 = phi i1 [ false, %while.cond.47 ], [ %tobool56, %land.rhs.50 ]
  br i1 %43, label %while.body.58, label %while.end.60

while.body.58:                                    ; preds = %land.end.57
  %44 = load i8*, i8** %s, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr59, i8** %s, align 8
  br label %while.cond.47

while.end.60:                                     ; preds = %land.end.57
  %45 = load i8*, i8** %s, align 8
  %46 = load i8*, i8** %end.addr, align 8
  %cmp61 = icmp eq i8* %45, %46
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.end.60
  br label %PREMATURE

if.end.64:                                        ; preds = %while.end.60
  %47 = load i8*, i8** %s, align 8
  store i8* %47, i8** %attr_name_end, align 8
  %48 = load i32, i32* %num_tokens, align 4
  %inc65 = add nsw i32 %48, 1
  store i32 %inc65, i32* %num_tokens, align 4
  %49 = load i32, i32* %num_tokens, align 4
  %50 = load i32, i32* %token_lim, align 4
  %cmp66 = icmp eq i32 %49, %50
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.64
  %51 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay69 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp70 = icmp ne %struct.token_pos* %51, %arraydecay69
  %conv71 = zext i1 %cmp70 to i32
  %conv72 = trunc i32 %conv71 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.64
  %52 = load i8*, i8** %attr_name_beg, align 8
  %53 = load i32, i32* %num_tokens, align 4
  %sub74 = sub nsw i32 %53, 1
  %idxprom75 = sext i32 %sub74 to i64
  %54 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx76 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %54, i64 %idxprom75
  %beg77 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx76, i32 0, i32 0
  store i8* %52, i8** %beg77, align 8
  %55 = load i8*, i8** %attr_name_end, align 8
  %56 = load i32, i32* %num_tokens, align 4
  %sub79 = sub nsw i32 %56, 1
  %idxprom80 = sext i32 %sub79 to i64
  %57 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx81 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %57, i64 %idxprom80
  %end82 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx81, i32 0, i32 1
  store i8* %55, i8** %end82, align 8
  store i8* %55, i8** %tmp78
  %58 = load i8*, i8** %tmp78
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.89, %if.end.73
  %59 = load i8*, i8** %s, align 8
  %60 = load i8, i8* %59, align 1
  %idxprom84 = zext i8 %60 to i64
  %arrayidx85 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom84
  %61 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %61 to i32
  %and87 = and i32 %conv86, 1
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %while.body.89, label %while.end.91

while.body.89:                                    ; preds = %while.cond.83
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr90, i8** %s, align 8
  br label %while.cond.83

while.end.91:                                     ; preds = %while.cond.83
  %63 = load i8*, i8** %s, align 8
  %64 = load i8*, i8** %end.addr, align 8
  %cmp92 = icmp eq i8* %63, %64
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %while.end.91
  br label %PREMATURE

if.end.95:                                        ; preds = %while.end.91
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv96 = sext i8 %66 to i32
  %cmp97 = icmp eq i32 %conv96, 61
  br i1 %cmp97, label %if.then.99, label %if.else.241

if.then.99:                                       ; preds = %if.end.95
  %67 = load i8*, i8** %s, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr100, i8** %s, align 8
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.107, %if.then.99
  %68 = load i8*, i8** %s, align 8
  %69 = load i8, i8* %68, align 1
  %idxprom102 = zext i8 %69 to i64
  %arrayidx103 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom102
  %70 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %70 to i32
  %and105 = and i32 %conv104, 1
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %while.body.107, label %while.end.109

while.body.107:                                   ; preds = %while.cond.101
  %71 = load i8*, i8** %s, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr108, i8** %s, align 8
  br label %while.cond.101

while.end.109:                                    ; preds = %while.cond.101
  %72 = load i8*, i8** %s, align 8
  %73 = load i8*, i8** %end.addr, align 8
  %cmp110 = icmp eq i8* %72, %73
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %while.end.109
  br label %PREMATURE

if.end.113:                                       ; preds = %while.end.109
  %74 = load i8*, i8** %s, align 8
  %75 = load i8, i8* %74, align 1
  %conv114 = sext i8 %75 to i32
  %cmp115 = icmp eq i32 %conv114, 62
  br i1 %cmp115, label %if.then.117, label %if.end.136

if.then.117:                                      ; preds = %if.end.113
  %76 = load i32, i32* %num_tokens, align 4
  %inc118 = add nsw i32 %76, 1
  store i32 %inc118, i32* %num_tokens, align 4
  %77 = load i32, i32* %num_tokens, align 4
  %78 = load i32, i32* %token_lim, align 4
  %cmp119 = icmp eq i32 %77, %78
  br i1 %cmp119, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %if.then.117
  %79 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay122 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp123 = icmp ne %struct.token_pos* %79, %arraydecay122
  %conv124 = zext i1 %cmp123 to i32
  %conv125 = trunc i32 %conv124 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv125)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.121, %if.then.117
  %80 = load i8*, i8** %s, align 8
  %81 = load i32, i32* %num_tokens, align 4
  %sub127 = sub nsw i32 %81, 1
  %idxprom128 = sext i32 %sub127 to i64
  %82 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx129 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %82, i64 %idxprom128
  %beg130 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx129, i32 0, i32 0
  store i8* %80, i8** %beg130, align 8
  %83 = load i8*, i8** %s, align 8
  %84 = load i32, i32* %num_tokens, align 4
  %sub132 = sub nsw i32 %84, 1
  %idxprom133 = sext i32 %sub132 to i64
  %85 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx134 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %85, i64 %idxprom133
  %end135 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx134, i32 0, i32 1
  store i8* %83, i8** %end135, align 8
  store i8* %83, i8** %tmp131
  %86 = load i8*, i8** %tmp131
  br label %while.end.261

if.end.136:                                       ; preds = %if.end.113
  %87 = load i8*, i8** %s, align 8
  %88 = load i8, i8* %87, align 1
  %conv137 = sext i8 %88 to i32
  %cmp138 = icmp eq i32 %conv137, 34
  br i1 %cmp138, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.end.136
  %89 = load i8*, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %conv141 = sext i8 %90 to i32
  %cmp142 = icmp eq i32 %conv141, 39
  br i1 %cmp142, label %if.then.144, label %if.else.182

if.then.144:                                      ; preds = %lor.lhs.false.140, %if.end.136
  %91 = load i8*, i8** %s, align 8
  store i8* %91, i8** %str_beg, align 8
  %92 = load i8*, i8** %s, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr146, i8** %s, align 8
  br label %while.cond.147

while.cond.147:                                   ; preds = %while.body.156, %if.then.144
  %93 = load i8*, i8** %s, align 8
  %94 = load i8*, i8** %end.addr, align 8
  %cmp148 = icmp ult i8* %93, %94
  br i1 %cmp148, label %land.rhs.150, label %land.end.155

land.rhs.150:                                     ; preds = %while.cond.147
  %95 = load i8*, i8** %s, align 8
  %96 = load i8, i8* %95, align 1
  %conv151 = sext i8 %96 to i32
  %97 = load i8*, i8** %str_beg, align 8
  %98 = load i8, i8* %97, align 1
  %conv152 = sext i8 %98 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br label %land.end.155

land.end.155:                                     ; preds = %land.rhs.150, %while.cond.147
  %99 = phi i1 [ false, %while.cond.147 ], [ %cmp153, %land.rhs.150 ]
  br i1 %99, label %while.body.156, label %while.end.158

while.body.156:                                   ; preds = %land.end.155
  %100 = load i8*, i8** %s, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr157, i8** %s, align 8
  br label %while.cond.147

while.end.158:                                    ; preds = %land.end.155
  %101 = load i8*, i8** %s, align 8
  %102 = load i8*, i8** %end.addr, align 8
  %cmp159 = icmp eq i8* %101, %102
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %while.end.158
  br label %PREMATURE

if.end.162:                                       ; preds = %while.end.158
  %103 = load i8*, i8** %s, align 8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr163, i8** %s, align 8
  %104 = load i32, i32* %num_tokens, align 4
  %inc164 = add nsw i32 %104, 1
  store i32 %inc164, i32* %num_tokens, align 4
  %105 = load i32, i32* %num_tokens, align 4
  %106 = load i32, i32* %token_lim, align 4
  %cmp165 = icmp eq i32 %105, %106
  br i1 %cmp165, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %if.end.162
  %107 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay168 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp169 = icmp ne %struct.token_pos* %107, %arraydecay168
  %conv170 = zext i1 %cmp169 to i32
  %conv171 = trunc i32 %conv170 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv171)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.167, %if.end.162
  %108 = load i8*, i8** %str_beg, align 8
  %109 = load i32, i32* %num_tokens, align 4
  %sub173 = sub nsw i32 %109, 1
  %idxprom174 = sext i32 %sub173 to i64
  %110 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx175 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %110, i64 %idxprom174
  %beg176 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx175, i32 0, i32 0
  store i8* %108, i8** %beg176, align 8
  %111 = load i8*, i8** %s, align 8
  %112 = load i32, i32* %num_tokens, align 4
  %sub178 = sub nsw i32 %112, 1
  %idxprom179 = sext i32 %sub178 to i64
  %113 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx180 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %113, i64 %idxprom179
  %end181 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx180, i32 0, i32 1
  store i8* %111, i8** %end181, align 8
  store i8* %111, i8** %tmp177
  %114 = load i8*, i8** %tmp177
  br label %if.end.227

if.else.182:                                      ; preds = %lor.lhs.false.140
  %115 = load i8*, i8** %s, align 8
  store i8* %115, i8** %word_start, align 8
  br label %while.cond.184

while.cond.184:                                   ; preds = %if.end.202, %if.else.182
  %116 = load i8*, i8** %s, align 8
  %117 = load i8*, i8** %end.addr, align 8
  %cmp185 = icmp ult i8* %116, %117
  br i1 %cmp185, label %land.rhs.187, label %land.end.193

land.rhs.187:                                     ; preds = %while.cond.184
  %118 = load i8*, i8** %s, align 8
  %119 = load i8, i8* %118, align 1
  %idxprom188 = zext i8 %119 to i64
  %arrayidx189 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom188
  %120 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %120 to i32
  %and191 = and i32 %conv190, 8
  %tobool192 = icmp ne i32 %and191, 0
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.187, %while.cond.184
  %121 = phi i1 [ false, %while.cond.184 ], [ %tobool192, %land.rhs.187 ]
  br i1 %121, label %while.body.194, label %while.end.204

while.body.194:                                   ; preds = %land.end.193
  %122 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode195 = getelementptr inbounds %struct.p_state, %struct.p_state* %122, i32 0, i32 23
  %123 = load i8, i8* %xml_mode195, align 1
  %conv196 = sext i8 %123 to i32
  %tobool197 = icmp ne i32 %conv196, 0
  br i1 %tobool197, label %land.lhs.true, label %if.end.202

land.lhs.true:                                    ; preds = %while.body.194
  %124 = load i8*, i8** %s, align 8
  %125 = load i8, i8* %124, align 1
  %conv198 = sext i8 %125 to i32
  %cmp199 = icmp eq i32 %conv198, 47
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %land.lhs.true
  br label %while.end.204

if.end.202:                                       ; preds = %land.lhs.true, %while.body.194
  %126 = load i8*, i8** %s, align 8
  %incdec.ptr203 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr203, i8** %s, align 8
  br label %while.cond.184

while.end.204:                                    ; preds = %if.then.201, %land.end.193
  %127 = load i8*, i8** %s, align 8
  %128 = load i8*, i8** %end.addr, align 8
  %cmp205 = icmp eq i8* %127, %128
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %while.end.204
  br label %PREMATURE

if.end.208:                                       ; preds = %while.end.204
  %129 = load i32, i32* %num_tokens, align 4
  %inc209 = add nsw i32 %129, 1
  store i32 %inc209, i32* %num_tokens, align 4
  %130 = load i32, i32* %num_tokens, align 4
  %131 = load i32, i32* %token_lim, align 4
  %cmp210 = icmp eq i32 %130, %131
  br i1 %cmp210, label %if.then.212, label %if.end.217

if.then.212:                                      ; preds = %if.end.208
  %132 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay213 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp214 = icmp ne %struct.token_pos* %132, %arraydecay213
  %conv215 = zext i1 %cmp214 to i32
  %conv216 = trunc i32 %conv215 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv216)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.212, %if.end.208
  %133 = load i8*, i8** %word_start, align 8
  %134 = load i32, i32* %num_tokens, align 4
  %sub218 = sub nsw i32 %134, 1
  %idxprom219 = sext i32 %sub218 to i64
  %135 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx220 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %135, i64 %idxprom219
  %beg221 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx220, i32 0, i32 0
  store i8* %133, i8** %beg221, align 8
  %136 = load i8*, i8** %s, align 8
  %137 = load i32, i32* %num_tokens, align 4
  %sub223 = sub nsw i32 %137, 1
  %idxprom224 = sext i32 %sub223 to i64
  %138 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx225 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %138, i64 %idxprom224
  %end226 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx225, i32 0, i32 1
  store i8* %136, i8** %end226, align 8
  store i8* %136, i8** %tmp222
  %139 = load i8*, i8** %tmp222
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.217, %if.end.172
  br label %while.cond.228

while.cond.228:                                   ; preds = %while.body.234, %if.end.227
  %140 = load i8*, i8** %s, align 8
  %141 = load i8, i8* %140, align 1
  %idxprom229 = zext i8 %141 to i64
  %arrayidx230 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom229
  %142 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %142 to i32
  %and232 = and i32 %conv231, 1
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %while.body.234, label %while.end.236

while.body.234:                                   ; preds = %while.cond.228
  %143 = load i8*, i8** %s, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr235, i8** %s, align 8
  br label %while.cond.228

while.end.236:                                    ; preds = %while.cond.228
  %144 = load i8*, i8** %s, align 8
  %145 = load i8*, i8** %end.addr, align 8
  %cmp237 = icmp eq i8* %144, %145
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %while.end.236
  br label %PREMATURE

if.end.240:                                       ; preds = %while.end.236
  br label %if.end.260

if.else.241:                                      ; preds = %if.end.95
  %146 = load i32, i32* %num_tokens, align 4
  %inc242 = add nsw i32 %146, 1
  store i32 %inc242, i32* %num_tokens, align 4
  %147 = load i32, i32* %num_tokens, align 4
  %148 = load i32, i32* %token_lim, align 4
  %cmp243 = icmp eq i32 %147, %148
  br i1 %cmp243, label %if.then.245, label %if.end.250

if.then.245:                                      ; preds = %if.else.241
  %149 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay246 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp247 = icmp ne %struct.token_pos* %149, %arraydecay246
  %conv248 = zext i1 %cmp247 to i32
  %conv249 = trunc i32 %conv248 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv249)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.245, %if.else.241
  %150 = load i32, i32* %num_tokens, align 4
  %sub251 = sub nsw i32 %150, 1
  %idxprom252 = sext i32 %sub251 to i64
  %151 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx253 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %151, i64 %idxprom252
  %beg254 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx253, i32 0, i32 0
  store i8* null, i8** %beg254, align 8
  %152 = load i32, i32* %num_tokens, align 4
  %sub256 = sub nsw i32 %152, 1
  %idxprom257 = sext i32 %sub256 to i64
  %153 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx258 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %153, i64 %idxprom257
  %end259 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx258, i32 0, i32 1
  store i8* null, i8** %end259, align 8
  store i8* null, i8** %tmp255
  %154 = load i8*, i8** %tmp255
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.250, %if.end.240
  br label %while.cond.36

while.end.261:                                    ; preds = %if.end.126, %while.cond.36
  %155 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode262 = getelementptr inbounds %struct.p_state, %struct.p_state* %155, i32 0, i32 23
  %156 = load i8, i8* %xml_mode262, align 1
  %conv263 = sext i8 %156 to i32
  %tobool264 = icmp ne i32 %conv263, 0
  br i1 %tobool264, label %land.lhs.true.265, label %if.end.275

land.lhs.true.265:                                ; preds = %while.end.261
  %157 = load i8*, i8** %s, align 8
  %158 = load i8, i8* %157, align 1
  %conv266 = sext i8 %158 to i32
  %cmp267 = icmp eq i32 %conv266, 47
  br i1 %cmp267, label %if.then.269, label %if.end.275

if.then.269:                                      ; preds = %land.lhs.true.265
  %159 = load i8*, i8** %s, align 8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr270, i8** %s, align 8
  %160 = load i8*, i8** %s, align 8
  %161 = load i8*, i8** %end.addr, align 8
  %cmp271 = icmp eq i8* %160, %161
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.269
  br label %PREMATURE

if.end.274:                                       ; preds = %if.then.269
  store i32 1, i32* %empty_tag, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.265, %while.end.261
  %162 = load i8*, i8** %s, align 8
  %163 = load i8, i8* %162, align 1
  %conv276 = sext i8 %163 to i32
  %cmp277 = icmp eq i32 %conv276, 62
  br i1 %cmp277, label %if.then.279, label %if.end.349

if.then.279:                                      ; preds = %if.end.275
  %164 = load i8*, i8** %s, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr280, i8** %s, align 8
  %165 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %166 = load i8*, i8** %beg.addr, align 8
  %167 = load i8*, i8** %s, align 8
  %168 = load i32, i32* %utf8.addr, align 4
  %169 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %170 = load i32, i32* %num_tokens, align 4
  %171 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %165, i32 2, i8* %166, i8* %167, i32 %168, %struct.token_pos* %169, i32 %170, %struct.sv* %171)
  %172 = load i32, i32* %empty_tag, align 4
  %tobool281 = icmp ne i32 %172, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.then.279
  %173 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %174 = load i8*, i8** %s, align 8
  %175 = load i8*, i8** %s, align 8
  %176 = load i32, i32* %utf8.addr, align 4
  %177 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %178 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %173, i32 3, i8* %174, i8* %175, i32 %176, %struct.token_pos* %177, i32 1, %struct.sv* %178)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %if.then.279
  %179 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode284 = getelementptr inbounds %struct.p_state, %struct.p_state* %179, i32 0, i32 23
  %180 = load i8, i8* %xml_mode284, align 1
  %tobool285 = icmp ne i8 %180, 0
  br i1 %tobool285, label %if.end.343, label %if.then.286

if.then.286:                                      ; preds = %if.end.283
  %181 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx289 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %181, i64 0
  %end290 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx289, i32 0, i32 1
  %182 = load i8*, i8** %end290, align 8
  %183 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx291 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %183, i64 0
  %beg292 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx291, i32 0, i32 0
  %184 = load i8*, i8** %beg292, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %184 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv293 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv293, i32* %tag_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.286
  %185 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %185 to i64
  %arrayidx295 = getelementptr inbounds [7 x %struct.literal_tag], [7 x %struct.literal_tag]* @literal_mode_elem, i32 0, i64 %idxprom294
  %len = getelementptr inbounds %struct.literal_tag, %struct.literal_tag* %arrayidx295, i32 0, i32 0
  %186 = load i32, i32* %len, align 4
  %tobool296 = icmp ne i32 %186, 0
  br i1 %tobool296, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %187 = load i32, i32* %tag_len, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %188 to i64
  %arrayidx298 = getelementptr inbounds [7 x %struct.literal_tag], [7 x %struct.literal_tag]* @literal_mode_elem, i32 0, i64 %idxprom297
  %len299 = getelementptr inbounds %struct.literal_tag, %struct.literal_tag* %arrayidx298, i32 0, i32 0
  %189 = load i32, i32* %len299, align 4
  %cmp300 = icmp eq i32 %187, %189
  br i1 %cmp300, label %if.then.302, label %if.end.341

if.then.302:                                      ; preds = %for.body
  %190 = load i8*, i8** %beg.addr, align 8
  %add.ptr305 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %add.ptr305, i8** %s304, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %191 to i64
  %arrayidx308 = getelementptr inbounds [7 x %struct.literal_tag], [7 x %struct.literal_tag]* @literal_mode_elem, i32 0, i64 %idxprom307
  %str = getelementptr inbounds %struct.literal_tag, %struct.literal_tag* %arrayidx308, i32 0, i32 1
  %192 = load i8*, i8** %str, align 8
  store i8* %192, i8** %t, align 8
  %193 = load i32, i32* %tag_len, align 4
  store i32 %193, i32* %len310, align 4
  br label %while.cond.311

while.cond.311:                                   ; preds = %if.end.339, %if.then.302
  %194 = load i32, i32* %len310, align 4
  %tobool312 = icmp ne i32 %194, 0
  br i1 %tobool312, label %while.body.313, label %while.end.340

while.body.313:                                   ; preds = %while.cond.311
  %195 = load i8*, i8** %s304, align 8
  %196 = load i8, i8* %195, align 1
  %conv314 = sext i8 %196 to i32
  %cmp315 = icmp sge i32 %conv314, 65
  br i1 %cmp315, label %land.lhs.true.317, label %cond.false

land.lhs.true.317:                                ; preds = %while.body.313
  %197 = load i8*, i8** %s304, align 8
  %198 = load i8, i8* %197, align 1
  %conv318 = sext i8 %198 to i32
  %cmp319 = icmp sle i32 %conv318, 90
  br i1 %cmp319, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.317
  %199 = load i8*, i8** %s304, align 8
  %200 = load i8, i8* %199, align 1
  %conv321 = sext i8 %200 to i32
  %add = add nsw i32 %conv321, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.317, %while.body.313
  %201 = load i8*, i8** %s304, align 8
  %202 = load i8, i8* %201, align 1
  %conv322 = sext i8 %202 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv322, %cond.false ]
  %203 = load i8*, i8** %t, align 8
  %204 = load i8, i8* %203, align 1
  %conv323 = sext i8 %204 to i32
  %cmp324 = icmp ne i32 %cond, %conv323
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %cond.end
  br label %while.end.340

if.end.327:                                       ; preds = %cond.end
  %205 = load i8*, i8** %s304, align 8
  %incdec.ptr328 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr328, i8** %s304, align 8
  %206 = load i8*, i8** %t, align 8
  %incdec.ptr329 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr329, i8** %t, align 8
  %207 = load i32, i32* %len310, align 4
  %dec = add nsw i32 %207, -1
  store i32 %dec, i32* %len310, align 4
  %tobool330 = icmp ne i32 %dec, 0
  br i1 %tobool330, label %if.end.339, label %if.then.331

if.then.331:                                      ; preds = %if.end.327
  %208 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %208 to i64
  %arrayidx333 = getelementptr inbounds [7 x %struct.literal_tag], [7 x %struct.literal_tag]* @literal_mode_elem, i32 0, i64 %idxprom332
  %str334 = getelementptr inbounds %struct.literal_tag, %struct.literal_tag* %arrayidx333, i32 0, i32 1
  %209 = load i8*, i8** %str334, align 8
  %210 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %literal_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %210, i32 0, i32 7
  store i8* %209, i8** %literal_mode, align 8
  %211 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %211 to i64
  %arrayidx336 = getelementptr inbounds [7 x %struct.literal_tag], [7 x %struct.literal_tag]* @literal_mode_elem, i32 0, i64 %idxprom335
  %is_cdata = getelementptr inbounds %struct.literal_tag, %struct.literal_tag* %arrayidx336, i32 0, i32 2
  %212 = load i32, i32* %is_cdata, align 4
  %conv337 = trunc i32 %212 to i8
  %213 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %is_cdata338 = getelementptr inbounds %struct.p_state, %struct.p_state* %213, i32 0, i32 8
  store i8 %conv337, i8* %is_cdata338, align 1
  br label %END_OF_LITERAL_SEARCH

if.end.339:                                       ; preds = %if.end.327
  br label %while.cond.311

while.end.340:                                    ; preds = %if.then.326, %while.cond.311
  br label %if.end.341

if.end.341:                                       ; preds = %while.end.340, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.341
  %214 = load i32, i32* %i, align 4
  %inc342 = add nsw i32 %214, 1
  store i32 %inc342, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %END_OF_LITERAL_SEARCH

END_OF_LITERAL_SEARCH:                            ; preds = %for.end, %if.then.331
  br label %if.end.343

if.end.343:                                       ; preds = %END_OF_LITERAL_SEARCH, %if.end.283
  %215 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay344 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp345 = icmp ne %struct.token_pos* %215, %arraydecay344
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %if.end.343
  %216 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %217 = bitcast %struct.token_pos* %216 to i8*
  call void @Perl_safesysfree(i8* %217)
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.347, %if.end.343
  %218 = load i8*, i8** %s, align 8
  store i8* %218, i8** %retval
  br label %return

if.end.349:                                       ; preds = %if.end.275
  %219 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay350 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp351 = icmp ne %struct.token_pos* %219, %arraydecay350
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.end.349
  %220 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %221 = bitcast %struct.token_pos* %220 to i8*
  call void @Perl_safesysfree(i8* %221)
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %if.end.349
  store i8* null, i8** %retval
  br label %return

PREMATURE:                                        ; preds = %if.then.273, %if.then.239, %if.then.207, %if.then.161, %if.then.112, %if.then.94, %if.then.63, %if.then.34
  %222 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay355 = getelementptr inbounds [16 x %struct.token_pos], [16 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp356 = icmp ne %struct.token_pos* %222, %arraydecay355
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %PREMATURE
  %223 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %224 = bitcast %struct.token_pos* %223 to i8*
  call void @Perl_safesysfree(i8* %224)
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %PREMATURE
  %225 = load i8*, i8** %beg.addr, align 8
  store i8* %225, i8** %retval
  br label %return

return:                                           ; preds = %if.end.359, %if.end.354, %if.end.348
  %226 = load i8*, i8** %retval
  ret i8* %226
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_end(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %name_first = alloca i8, align 1
  %name_char = alloca i8, align 1
  %tagname = alloca %struct.token_pos, align 8
  %token = alloca %struct.token_pos, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_names = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 21
  %2 = load i8, i8* %strict_names, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %3, i32 0, i32 23
  %4 = load i8, i8* %xml_mode, align 1
  %conv1 = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 2, i8* %name_first, align 1
  store i8 4, i8* %name_char, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i8 8, i8* %name_char, align 1
  store i8 8, i8* %name_first, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %8 = load i8, i8* %name_first, align 1
  %conv4 = zext i8 %8 to i32
  %and = and i32 %conv3, %conv4
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.else.41

if.then.6:                                        ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %beg7 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %tagname, i32 0, i32 0
  store i8* %9, i8** %beg7, align 8
  %10 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.6
  %11 = load i8*, i8** %s, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %11, %12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %idxprom9 = zext i8 %14 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %16 = load i8, i8* %name_char, align 1
  %conv12 = zext i8 %16 to i32
  %and13 = and i32 %conv11, %conv12
  %tobool14 = icmp ne i32 %and13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr15, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i8*, i8** %s, align 8
  %end16 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %tagname, i32 0, i32 1
  store i8* %19, i8** %end16, align 8
  %20 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_end = getelementptr inbounds %struct.p_state, %struct.p_state* %20, i32 0, i32 22
  %21 = load i8, i8* %strict_end, align 1
  %tobool17 = icmp ne i8 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.else.28

if.then.18:                                       ; preds = %while.end
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %if.then.18
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom20 = zext i8 %23 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom20
  %24 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %24 to i32
  %and23 = and i32 %conv22, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %while.body.25, label %while.end.27

while.body.25:                                    ; preds = %while.cond.19
  %25 = load i8*, i8** %s, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr26, i8** %s, align 8
  br label %while.cond.19

while.end.27:                                     ; preds = %while.cond.19
  br label %if.end.29

if.else.28:                                       ; preds = %while.end
  %26 = load i8*, i8** %s, align 8
  %27 = load i8*, i8** %end.addr, align 8
  %call = call i8* @skip_until_gt(i8* %26, i8* %27)
  store i8* %call, i8** %s, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %while.end.27
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %end.addr, align 8
  %cmp30 = icmp ult i8* %28, %29
  br i1 %cmp30, label %if.then.32, label %if.else.39

if.then.32:                                       ; preds = %if.end.29
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %conv33 = sext i8 %31 to i32
  %cmp34 = icmp eq i32 %conv33, 62
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.32
  %32 = load i8*, i8** %s, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr37, i8** %s, align 8
  %33 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %34 = load i8*, i8** %beg.addr, align 8
  %35 = load i8*, i8** %s, align 8
  %36 = load i32, i32* %utf8.addr, align 4
  %37 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %33, i32 3, i8* %34, i8* %35, i32 %36, %struct.token_pos* %tagname, i32 1, %struct.sv* %37)
  %38 = load i8*, i8** %s, align 8
  store i8* %38, i8** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.32
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.29
  %39 = load i8*, i8** %beg.addr, align 8
  store i8* %39, i8** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.38
  br label %if.end.54

if.else.41:                                       ; preds = %if.end
  %40 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_comment = getelementptr inbounds %struct.p_state, %struct.p_state* %40, i32 0, i32 20
  %41 = load i8, i8* %strict_comment, align 1
  %tobool42 = icmp ne i8 %41, 0
  br i1 %tobool42, label %if.end.53, label %if.then.43

if.then.43:                                       ; preds = %if.else.41
  %42 = load i8*, i8** %s, align 8
  %43 = load i8*, i8** %end.addr, align 8
  %call44 = call i8* @skip_until_gt(i8* %42, i8* %43)
  store i8* %call44, i8** %s, align 8
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %end.addr, align 8
  %cmp45 = icmp ult i8* %44, %45
  br i1 %cmp45, label %if.then.47, label %if.else.52

if.then.47:                                       ; preds = %if.then.43
  %46 = load i8*, i8** %beg.addr, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %46, i64 2
  %beg49 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 0
  store i8* %add.ptr48, i8** %beg49, align 8
  %47 = load i8*, i8** %s, align 8
  %end50 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 1
  store i8* %47, i8** %end50, align 8
  %48 = load i8*, i8** %s, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr51, i8** %s, align 8
  %49 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %50 = load i8*, i8** %beg.addr, align 8
  %51 = load i8*, i8** %s, align 8
  %52 = load i32, i32* %utf8.addr, align 4
  %53 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %49, i32 1, i8* %50, i8* %51, i32 %52, %struct.token_pos* %token, i32 1, %struct.sv* %53)
  %54 = load i8*, i8** %s, align 8
  store i8* %54, i8** %retval
  br label %return

if.else.52:                                       ; preds = %if.then.43
  %55 = load i8*, i8** %beg.addr, align 8
  store i8* %55, i8** %retval
  br label %return

if.end.53:                                        ; preds = %if.else.41
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.40
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.else.52, %if.then.47, %if.else.39, %if.then.36
  %56 = load i8*, i8** %retval
  ret i8* %56
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_decl(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %tmp19 = alloca i8*, align 8
  %token = alloca %struct.token_pos, align 8
  %token_buf = alloca [8 x %struct.token_pos], align 16
  %token_lim = alloca i32, align 4
  %tokens = alloca %struct.token_pos*, align 8
  %num_tokens = alloca i32, align 4
  %decl_id = alloca i8*, align 8
  %decl_id_len = alloca i64, align 8
  %tmp95 = alloca i8*, align 8
  %str_beg = alloca i8*, align 8
  %tmp169 = alloca i8*, align 8
  %com_beg = alloca i8*, align 8
  %tmp230 = alloca i8*, align 8
  %word_beg = alloca i8*, align 8
  %tmp274 = alloca i8*, align 8
  %token318 = alloca %struct.token_pos, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp eq i8* %4, %5
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load i8*, i8** %beg.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %DECL_FAIL

if.end.9:                                         ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr10, i8** %s, align 8
  %10 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %11 = load i8*, i8** %s, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %13 = load i32, i32* %utf8.addr, align 4
  %14 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call = call i8* @parse_comment(%struct.p_state* %10, i8* %11, i8* %12, i32 %13, %struct.sv* %14)
  store i8* %call, i8** %tmp, align 8
  %15 = load i8*, i8** %tmp, align 8
  %16 = load i8*, i8** %s, align 8
  %cmp11 = icmp eq i8* %15, %16
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load i8*, i8** %beg.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %18 = load i8*, i8** %tmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ %18, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

if.end.13:                                        ; preds = %entry
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = sext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, 91
  br i1 %cmp15, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %if.end.13
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr20, i8** %s, align 8
  %22 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i8*, i8** %end.addr, align 8
  %25 = load i32, i32* %utf8.addr, align 4
  %26 = load %struct.sv*, %struct.sv** %self.addr, align 8
  %call21 = call i8* @parse_marked_section(%struct.p_state* %22, i8* %23, i8* %24, i32 %25, %struct.sv* %26)
  store i8* %call21, i8** %tmp19, align 8
  %27 = load i8*, i8** %tmp19, align 8
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.17
  br label %DECL_FAIL

if.end.23:                                        ; preds = %if.then.17
  %28 = load i8*, i8** %tmp19, align 8
  %29 = load i8*, i8** %s, align 8
  %cmp24 = icmp eq i8* %28, %29
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.23
  %30 = load i8*, i8** %beg.addr, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.end.23
  %31 = load i8*, i8** %tmp19, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i8* [ %30, %cond.true.26 ], [ %31, %cond.false.27 ]
  store i8* %cond29, i8** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.13
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv31 = sext i8 %33 to i32
  %cmp32 = icmp eq i32 %conv31, 62
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.30
  %34 = load i8*, i8** %s, align 8
  %beg36 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 0
  store i8* %34, i8** %beg36, align 8
  %35 = load i8*, i8** %s, align 8
  %end37 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 1
  store i8* %35, i8** %end37, align 8
  %36 = load i8*, i8** %s, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr38, i8** %s, align 8
  %37 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %38 = load i8*, i8** %beg.addr, align 8
  %39 = load i8*, i8** %s, align 8
  %40 = load i32, i32* %utf8.addr, align 4
  %41 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %37, i32 1, i8* %38, i8* %39, i32 %40, %struct.token_pos* %token, i32 1, %struct.sv* %41)
  %42 = load i8*, i8** %s, align 8
  store i8* %42, i8** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.30
  %43 = load i8*, i8** %s, align 8
  %44 = load i8, i8* %43, align 1
  %conv40 = sext i8 %44 to i32
  %cmp41 = icmp sge i32 %conv40, 65
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.39
  %45 = load i8*, i8** %s, align 8
  %46 = load i8, i8* %45, align 1
  %conv43 = sext i8 %46 to i32
  %cmp44 = icmp sle i32 %conv43, 90
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.39
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv46 = sext i8 %48 to i32
  %cmp47 = icmp sge i32 %conv46, 97
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.309

land.lhs.true.49:                                 ; preds = %lor.lhs.false
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv50 = sext i8 %50 to i32
  %cmp51 = icmp sle i32 %conv50, 122
  br i1 %cmp51, label %if.then.53, label %if.end.309

if.then.53:                                       ; preds = %land.lhs.true.49, %land.lhs.true
  store i32 8, i32* %token_lim, align 4
  %arraydecay = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  store %struct.token_pos* %arraydecay, %struct.token_pos** %tokens, align 8
  store i32 0, i32* %num_tokens, align 4
  %51 = load i8*, i8** %s, align 8
  store i8* %51, i8** %decl_id, align 8
  %52 = load i8*, i8** %s, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr60, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.53
  %53 = load i8*, i8** %s, align 8
  %54 = load i8*, i8** %end.addr, align 8
  %cmp61 = icmp ult i8* %53, %54
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %55 = load i8*, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %idxprom = zext i8 %56 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %57 = load i8, i8* %arrayidx, align 1
  %conv63 = zext i8 %57 to i32
  %and = and i32 %conv63, 4
  %tobool64 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %tobool64, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %59 = load i8*, i8** %s, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr65, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %60 = load i8*, i8** %s, align 8
  %61 = load i8*, i8** %decl_id, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %decl_id_len, align 8
  %62 = load i64, i64* %decl_id_len, align 8
  %cmp66 = icmp eq i64 %62, 7
  br i1 %cmp66, label %land.lhs.true.68, label %lor.lhs.false.72

land.lhs.true.68:                                 ; preds = %while.end
  %63 = load i8*, i8** %decl_id, align 8
  %64 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %64, i32 0, i32 23
  %65 = load i8, i8* %xml_mode, align 1
  %tobool69 = icmp ne i8 %65, 0
  %lnot = xor i1 %tobool69, true
  %lnot.ext = zext i1 %lnot to i32
  %call70 = call i32 @strnEQx(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i64 7, i32 %lnot.ext)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.83, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.68, %while.end
  %66 = load i64, i64* %decl_id_len, align 8
  %cmp73 = icmp eq i64 %66, 6
  br i1 %cmp73, label %land.lhs.true.75, label %if.then.82

land.lhs.true.75:                                 ; preds = %lor.lhs.false.72
  %67 = load i8*, i8** %decl_id, align 8
  %68 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode76 = getelementptr inbounds %struct.p_state, %struct.p_state* %68, i32 0, i32 23
  %69 = load i8, i8* %xml_mode76, align 1
  %tobool77 = icmp ne i8 %69, 0
  %lnot78 = xor i1 %tobool77, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %call80 = call i32 @strnEQx(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i64 6, i32 %lnot.ext79)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.75, %lor.lhs.false.72
  br label %FAIL

if.end.83:                                        ; preds = %land.lhs.true.75, %land.lhs.true.68
  %70 = load i32, i32* %num_tokens, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %num_tokens, align 4
  %71 = load i32, i32* %num_tokens, align 4
  %72 = load i32, i32* %token_lim, align 4
  %cmp84 = icmp eq i32 %71, %72
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.end.83
  %73 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay87 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp88 = icmp ne %struct.token_pos* %73, %arraydecay87
  %conv89 = zext i1 %cmp88 to i32
  %conv90 = trunc i32 %conv89 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv90)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.end.83
  %74 = load i8*, i8** %decl_id, align 8
  %75 = load i32, i32* %num_tokens, align 4
  %sub = sub nsw i32 %75, 1
  %idxprom92 = sext i32 %sub to i64
  %76 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx93 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %76, i64 %idxprom92
  %beg94 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx93, i32 0, i32 0
  store i8* %74, i8** %beg94, align 8
  %77 = load i8*, i8** %s, align 8
  %78 = load i32, i32* %num_tokens, align 4
  %sub96 = sub nsw i32 %78, 1
  %idxprom97 = sext i32 %sub96 to i64
  %79 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx98 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %79, i64 %idxprom97
  %end99 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx98, i32 0, i32 1
  store i8* %77, i8** %end99, align 8
  store i8* %77, i8** %tmp95
  %80 = load i8*, i8** %tmp95
  br label %while.cond.100

while.cond.100:                                   ; preds = %if.end.282, %if.end.91
  %81 = load i8*, i8** %s, align 8
  %82 = load i8*, i8** %end.addr, align 8
  %cmp101 = icmp ult i8* %81, %82
  br i1 %cmp101, label %land.rhs.103, label %land.end.109

land.rhs.103:                                     ; preds = %while.cond.100
  %83 = load i8*, i8** %s, align 8
  %84 = load i8, i8* %83, align 1
  %idxprom104 = zext i8 %84 to i64
  %arrayidx105 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom104
  %85 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %85 to i32
  %and107 = and i32 %conv106, 1
  %tobool108 = icmp ne i32 %and107, 0
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.103, %while.cond.100
  %86 = phi i1 [ false, %while.cond.100 ], [ %tobool108, %land.rhs.103 ]
  br i1 %86, label %while.body.110, label %while.end.283

while.body.110:                                   ; preds = %land.end.109
  %87 = load i8*, i8** %s, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr111, i8** %s, align 8
  br label %while.cond.112

while.cond.112:                                   ; preds = %while.body.122, %while.body.110
  %88 = load i8*, i8** %s, align 8
  %89 = load i8*, i8** %end.addr, align 8
  %cmp113 = icmp ult i8* %88, %89
  br i1 %cmp113, label %land.rhs.115, label %land.end.121

land.rhs.115:                                     ; preds = %while.cond.112
  %90 = load i8*, i8** %s, align 8
  %91 = load i8, i8* %90, align 1
  %idxprom116 = zext i8 %91 to i64
  %arrayidx117 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom116
  %92 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %92 to i32
  %and119 = and i32 %conv118, 1
  %tobool120 = icmp ne i32 %and119, 0
  br label %land.end.121

land.end.121:                                     ; preds = %land.rhs.115, %while.cond.112
  %93 = phi i1 [ false, %while.cond.112 ], [ %tobool120, %land.rhs.115 ]
  br i1 %93, label %while.body.122, label %while.end.124

while.body.122:                                   ; preds = %land.end.121
  %94 = load i8*, i8** %s, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr123, i8** %s, align 8
  br label %while.cond.112

while.end.124:                                    ; preds = %land.end.121
  %95 = load i8*, i8** %s, align 8
  %96 = load i8*, i8** %end.addr, align 8
  %cmp125 = icmp eq i8* %95, %96
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %while.end.124
  br label %PREMATURE

if.end.128:                                       ; preds = %while.end.124
  %97 = load i8*, i8** %s, align 8
  %98 = load i8, i8* %97, align 1
  %conv129 = sext i8 %98 to i32
  %cmp130 = icmp eq i32 %conv129, 34
  br i1 %cmp130, label %if.then.136, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.end.128
  %99 = load i8*, i8** %s, align 8
  %100 = load i8, i8* %99, align 1
  %conv133 = sext i8 %100 to i32
  %cmp134 = icmp eq i32 %conv133, 39
  br i1 %cmp134, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %lor.lhs.false.132, %if.end.128
  %101 = load i8*, i8** %s, align 8
  store i8* %101, i8** %str_beg, align 8
  %102 = load i8*, i8** %s, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr138, i8** %s, align 8
  br label %while.cond.139

while.cond.139:                                   ; preds = %while.body.148, %if.then.136
  %103 = load i8*, i8** %s, align 8
  %104 = load i8*, i8** %end.addr, align 8
  %cmp140 = icmp ult i8* %103, %104
  br i1 %cmp140, label %land.rhs.142, label %land.end.147

land.rhs.142:                                     ; preds = %while.cond.139
  %105 = load i8*, i8** %s, align 8
  %106 = load i8, i8* %105, align 1
  %conv143 = sext i8 %106 to i32
  %107 = load i8*, i8** %str_beg, align 8
  %108 = load i8, i8* %107, align 1
  %conv144 = sext i8 %108 to i32
  %cmp145 = icmp ne i32 %conv143, %conv144
  br label %land.end.147

land.end.147:                                     ; preds = %land.rhs.142, %while.cond.139
  %109 = phi i1 [ false, %while.cond.139 ], [ %cmp145, %land.rhs.142 ]
  br i1 %109, label %while.body.148, label %while.end.150

while.body.148:                                   ; preds = %land.end.147
  %110 = load i8*, i8** %s, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr149, i8** %s, align 8
  br label %while.cond.139

while.end.150:                                    ; preds = %land.end.147
  %111 = load i8*, i8** %s, align 8
  %112 = load i8*, i8** %end.addr, align 8
  %cmp151 = icmp eq i8* %111, %112
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %while.end.150
  br label %PREMATURE

if.end.154:                                       ; preds = %while.end.150
  %113 = load i8*, i8** %s, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr155, i8** %s, align 8
  %114 = load i32, i32* %num_tokens, align 4
  %inc156 = add nsw i32 %114, 1
  store i32 %inc156, i32* %num_tokens, align 4
  %115 = load i32, i32* %num_tokens, align 4
  %116 = load i32, i32* %token_lim, align 4
  %cmp157 = icmp eq i32 %115, %116
  br i1 %cmp157, label %if.then.159, label %if.end.164

if.then.159:                                      ; preds = %if.end.154
  %117 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay160 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp161 = icmp ne %struct.token_pos* %117, %arraydecay160
  %conv162 = zext i1 %cmp161 to i32
  %conv163 = trunc i32 %conv162 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv163)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.159, %if.end.154
  %118 = load i8*, i8** %str_beg, align 8
  %119 = load i32, i32* %num_tokens, align 4
  %sub165 = sub nsw i32 %119, 1
  %idxprom166 = sext i32 %sub165 to i64
  %120 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx167 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %120, i64 %idxprom166
  %beg168 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx167, i32 0, i32 0
  store i8* %118, i8** %beg168, align 8
  %121 = load i8*, i8** %s, align 8
  %122 = load i32, i32* %num_tokens, align 4
  %sub170 = sub nsw i32 %122, 1
  %idxprom171 = sext i32 %sub170 to i64
  %123 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx172 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %123, i64 %idxprom171
  %end173 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx172, i32 0, i32 1
  store i8* %121, i8** %end173, align 8
  store i8* %121, i8** %tmp169
  %124 = load i8*, i8** %tmp169
  br label %if.end.282

if.else:                                          ; preds = %lor.lhs.false.132
  %125 = load i8*, i8** %s, align 8
  %126 = load i8, i8* %125, align 1
  %conv174 = sext i8 %126 to i32
  %cmp175 = icmp eq i32 %conv174, 45
  br i1 %cmp175, label %if.then.177, label %if.else.237

if.then.177:                                      ; preds = %if.else
  %127 = load i8*, i8** %s, align 8
  store i8* %127, i8** %com_beg, align 8
  %128 = load i8*, i8** %s, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr179, i8** %s, align 8
  %129 = load i8*, i8** %s, align 8
  %130 = load i8*, i8** %end.addr, align 8
  %cmp180 = icmp eq i8* %129, %130
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.177
  br label %PREMATURE

if.end.183:                                       ; preds = %if.then.177
  %131 = load i8*, i8** %s, align 8
  %132 = load i8, i8* %131, align 1
  %conv184 = sext i8 %132 to i32
  %cmp185 = icmp ne i32 %conv184, 45
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.183
  br label %FAIL

if.end.188:                                       ; preds = %if.end.183
  %133 = load i8*, i8** %s, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr189, i8** %s, align 8
  br label %while.body.191

while.body.191:                                   ; preds = %if.end.188, %if.end.235
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.200, %while.body.191
  %134 = load i8*, i8** %s, align 8
  %135 = load i8*, i8** %end.addr, align 8
  %cmp193 = icmp ult i8* %134, %135
  br i1 %cmp193, label %land.rhs.195, label %land.end.199

land.rhs.195:                                     ; preds = %while.cond.192
  %136 = load i8*, i8** %s, align 8
  %137 = load i8, i8* %136, align 1
  %conv196 = sext i8 %137 to i32
  %cmp197 = icmp ne i32 %conv196, 45
  br label %land.end.199

land.end.199:                                     ; preds = %land.rhs.195, %while.cond.192
  %138 = phi i1 [ false, %while.cond.192 ], [ %cmp197, %land.rhs.195 ]
  br i1 %138, label %while.body.200, label %while.end.202

while.body.200:                                   ; preds = %land.end.199
  %139 = load i8*, i8** %s, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr201, i8** %s, align 8
  br label %while.cond.192

while.end.202:                                    ; preds = %land.end.199
  %140 = load i8*, i8** %s, align 8
  %141 = load i8*, i8** %end.addr, align 8
  %cmp203 = icmp eq i8* %140, %141
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %while.end.202
  br label %PREMATURE

if.end.206:                                       ; preds = %while.end.202
  %142 = load i8*, i8** %s, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr207, i8** %s, align 8
  %143 = load i8*, i8** %s, align 8
  %144 = load i8*, i8** %end.addr, align 8
  %cmp208 = icmp eq i8* %143, %144
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.206
  br label %PREMATURE

if.end.211:                                       ; preds = %if.end.206
  %145 = load i8*, i8** %s, align 8
  %146 = load i8, i8* %145, align 1
  %conv212 = sext i8 %146 to i32
  %cmp213 = icmp eq i32 %conv212, 45
  br i1 %cmp213, label %if.then.215, label %if.end.235

if.then.215:                                      ; preds = %if.end.211
  %147 = load i8*, i8** %s, align 8
  %incdec.ptr216 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr216, i8** %s, align 8
  %148 = load i32, i32* %num_tokens, align 4
  %inc217 = add nsw i32 %148, 1
  store i32 %inc217, i32* %num_tokens, align 4
  %149 = load i32, i32* %num_tokens, align 4
  %150 = load i32, i32* %token_lim, align 4
  %cmp218 = icmp eq i32 %149, %150
  br i1 %cmp218, label %if.then.220, label %if.end.225

if.then.220:                                      ; preds = %if.then.215
  %151 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay221 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp222 = icmp ne %struct.token_pos* %151, %arraydecay221
  %conv223 = zext i1 %cmp222 to i32
  %conv224 = trunc i32 %conv223 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv224)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.220, %if.then.215
  %152 = load i8*, i8** %com_beg, align 8
  %153 = load i32, i32* %num_tokens, align 4
  %sub226 = sub nsw i32 %153, 1
  %idxprom227 = sext i32 %sub226 to i64
  %154 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx228 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %154, i64 %idxprom227
  %beg229 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx228, i32 0, i32 0
  store i8* %152, i8** %beg229, align 8
  %155 = load i8*, i8** %s, align 8
  %156 = load i32, i32* %num_tokens, align 4
  %sub231 = sub nsw i32 %156, 1
  %idxprom232 = sext i32 %sub231 to i64
  %157 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx233 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %157, i64 %idxprom232
  %end234 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx233, i32 0, i32 1
  store i8* %155, i8** %end234, align 8
  store i8* %155, i8** %tmp230
  %158 = load i8*, i8** %tmp230
  br label %while.end.236

if.end.235:                                       ; preds = %if.end.211
  br label %while.body.191

while.end.236:                                    ; preds = %if.end.225
  br label %if.end.281

if.else.237:                                      ; preds = %if.else
  %159 = load i8*, i8** %s, align 8
  %160 = load i8, i8* %159, align 1
  %conv238 = sext i8 %160 to i32
  %cmp239 = icmp ne i32 %conv238, 62
  br i1 %cmp239, label %if.then.241, label %if.else.279

if.then.241:                                      ; preds = %if.else.237
  %161 = load i8*, i8** %s, align 8
  store i8* %161, i8** %word_beg, align 8
  %162 = load i8*, i8** %s, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr243, i8** %s, align 8
  br label %while.cond.244

while.cond.244:                                   ; preds = %while.body.254, %if.then.241
  %163 = load i8*, i8** %s, align 8
  %164 = load i8*, i8** %end.addr, align 8
  %cmp245 = icmp ult i8* %163, %164
  br i1 %cmp245, label %land.rhs.247, label %land.end.253

land.rhs.247:                                     ; preds = %while.cond.244
  %165 = load i8*, i8** %s, align 8
  %166 = load i8, i8* %165, align 1
  %idxprom248 = zext i8 %166 to i64
  %arrayidx249 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom248
  %167 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %167 to i32
  %and251 = and i32 %conv250, 8
  %tobool252 = icmp ne i32 %and251, 0
  br label %land.end.253

land.end.253:                                     ; preds = %land.rhs.247, %while.cond.244
  %168 = phi i1 [ false, %while.cond.244 ], [ %tobool252, %land.rhs.247 ]
  br i1 %168, label %while.body.254, label %while.end.256

while.body.254:                                   ; preds = %land.end.253
  %169 = load i8*, i8** %s, align 8
  %incdec.ptr255 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr255, i8** %s, align 8
  br label %while.cond.244

while.end.256:                                    ; preds = %land.end.253
  %170 = load i8*, i8** %s, align 8
  %171 = load i8*, i8** %end.addr, align 8
  %cmp257 = icmp eq i8* %170, %171
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %while.end.256
  br label %PREMATURE

if.end.260:                                       ; preds = %while.end.256
  %172 = load i32, i32* %num_tokens, align 4
  %inc261 = add nsw i32 %172, 1
  store i32 %inc261, i32* %num_tokens, align 4
  %173 = load i32, i32* %num_tokens, align 4
  %174 = load i32, i32* %token_lim, align 4
  %cmp262 = icmp eq i32 %173, %174
  br i1 %cmp262, label %if.then.264, label %if.end.269

if.then.264:                                      ; preds = %if.end.260
  %175 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay265 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp266 = icmp ne %struct.token_pos* %175, %arraydecay265
  %conv267 = zext i1 %cmp266 to i32
  %conv268 = trunc i32 %conv267 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv268)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.264, %if.end.260
  %176 = load i8*, i8** %word_beg, align 8
  %177 = load i32, i32* %num_tokens, align 4
  %sub270 = sub nsw i32 %177, 1
  %idxprom271 = sext i32 %sub270 to i64
  %178 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx272 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %178, i64 %idxprom271
  %beg273 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx272, i32 0, i32 0
  store i8* %176, i8** %beg273, align 8
  %179 = load i8*, i8** %s, align 8
  %180 = load i32, i32* %num_tokens, align 4
  %sub275 = sub nsw i32 %180, 1
  %idxprom276 = sext i32 %sub275 to i64
  %181 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx277 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %181, i64 %idxprom276
  %end278 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx277, i32 0, i32 1
  store i8* %179, i8** %end278, align 8
  store i8* %179, i8** %tmp274
  %182 = load i8*, i8** %tmp274
  br label %if.end.280

if.else.279:                                      ; preds = %if.else.237
  br label %while.end.283

if.end.280:                                       ; preds = %if.end.269
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %while.end.236
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.164
  br label %while.cond.100

while.end.283:                                    ; preds = %if.else.279, %land.end.109
  %183 = load i8*, i8** %s, align 8
  %184 = load i8*, i8** %end.addr, align 8
  %cmp284 = icmp eq i8* %183, %184
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %while.end.283
  br label %PREMATURE

if.end.287:                                       ; preds = %while.end.283
  %185 = load i8*, i8** %s, align 8
  %186 = load i8, i8* %185, align 1
  %conv288 = sext i8 %186 to i32
  %cmp289 = icmp eq i32 %conv288, 62
  br i1 %cmp289, label %if.then.291, label %if.end.298

if.then.291:                                      ; preds = %if.end.287
  %187 = load i8*, i8** %s, align 8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr292, i8** %s, align 8
  %188 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %189 = load i8*, i8** %beg.addr, align 8
  %190 = load i8*, i8** %s, align 8
  %191 = load i32, i32* %utf8.addr, align 4
  %192 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %193 = load i32, i32* %num_tokens, align 4
  %194 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %188, i32 0, i8* %189, i8* %190, i32 %191, %struct.token_pos* %192, i32 %193, %struct.sv* %194)
  %195 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay293 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp294 = icmp ne %struct.token_pos* %195, %arraydecay293
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.then.291
  %196 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %197 = bitcast %struct.token_pos* %196 to i8*
  call void @Perl_safesysfree(i8* %197)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.then.291
  %198 = load i8*, i8** %s, align 8
  store i8* %198, i8** %retval
  br label %return

if.end.298:                                       ; preds = %if.end.287
  br label %FAIL

FAIL:                                             ; preds = %if.end.298, %if.then.187, %if.then.82
  %199 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay299 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp300 = icmp ne %struct.token_pos* %199, %arraydecay299
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %FAIL
  %200 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %201 = bitcast %struct.token_pos* %200 to i8*
  call void @Perl_safesysfree(i8* %201)
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %FAIL
  br label %DECL_FAIL

PREMATURE:                                        ; preds = %if.then.286, %if.then.259, %if.then.210, %if.then.205, %if.then.182, %if.then.153, %if.then.127
  %202 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay304 = getelementptr inbounds [8 x %struct.token_pos], [8 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp305 = icmp ne %struct.token_pos* %202, %arraydecay304
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %PREMATURE
  %203 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %204 = bitcast %struct.token_pos* %203 to i8*
  call void @Perl_safesysfree(i8* %204)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %PREMATURE
  %205 = load i8*, i8** %beg.addr, align 8
  store i8* %205, i8** %retval
  br label %return

if.end.309:                                       ; preds = %land.lhs.true.49, %lor.lhs.false
  br label %DECL_FAIL

DECL_FAIL:                                        ; preds = %if.end.309, %if.end.303, %if.then.22, %if.then.8
  %206 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_comment = getelementptr inbounds %struct.p_state, %struct.p_state* %206, i32 0, i32 20
  %207 = load i8, i8* %strict_comment, align 1
  %tobool310 = icmp ne i8 %207, 0
  br i1 %tobool310, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %DECL_FAIL
  store i8* null, i8** %retval
  br label %return

if.end.312:                                       ; preds = %DECL_FAIL
  %208 = load i8*, i8** %s, align 8
  %209 = load i8*, i8** %end.addr, align 8
  %call313 = call i8* @skip_until_gt(i8* %208, i8* %209)
  store i8* %call313, i8** %s, align 8
  %210 = load i8*, i8** %s, align 8
  %211 = load i8*, i8** %end.addr, align 8
  %cmp314 = icmp ult i8* %210, %211
  br i1 %cmp314, label %if.then.316, label %if.else.323

if.then.316:                                      ; preds = %if.end.312
  %212 = load i8*, i8** %beg.addr, align 8
  %add.ptr319 = getelementptr inbounds i8, i8* %212, i64 2
  %beg320 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token318, i32 0, i32 0
  store i8* %add.ptr319, i8** %beg320, align 8
  %213 = load i8*, i8** %s, align 8
  %end321 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token318, i32 0, i32 1
  store i8* %213, i8** %end321, align 8
  %214 = load i8*, i8** %s, align 8
  %incdec.ptr322 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr322, i8** %s, align 8
  %215 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %216 = load i8*, i8** %beg.addr, align 8
  %217 = load i8*, i8** %s, align 8
  %218 = load i32, i32* %utf8.addr, align 4
  %219 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %215, i32 1, i8* %216, i8* %217, i32 %218, %struct.token_pos* %token318, i32 1, %struct.sv* %219)
  %220 = load i8*, i8** %s, align 8
  store i8* %220, i8** %retval
  br label %return

if.else.323:                                      ; preds = %if.end.312
  %221 = load i8*, i8** %beg.addr, align 8
  store i8* %221, i8** %retval
  br label %return

return:                                           ; preds = %if.else.323, %if.then.316, %if.then.311, %if.end.308, %if.end.297, %if.then.34, %cond.end.28, %cond.end, %if.then.4
  %222 = load i8*, i8** %retval
  ret i8* %222
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_process(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %token_pos = alloca %struct.token_pos, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %beg1 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token_pos, i32 0, i32 0
  store i8* %1, i8** %beg1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.then.11, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 62
  br i1 %cmp2, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %s, align 8
  %end4 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token_pos, i32 0, i32 1
  store i8* %6, i8** %end4, align 8
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %8 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %xml_mode = getelementptr inbounds %struct.p_state, %struct.p_state* %8, i32 0, i32 23
  %9 = load i8, i8* %xml_mode, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.then
  %10 = load i8*, i8** %s, align 8
  %11 = load i8*, i8** %beg.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp6 = icmp slt i64 %sub.ptr.sub, 4
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %12 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 -2
  %13 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv8, 63
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.5
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i8*, i8** %s, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 -2
  %end13 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token_pos, i32 0, i32 1
  store i8* %add.ptr12, i8** %end13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %15 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %16 = load i8*, i8** %beg.addr, align 8
  %17 = load i8*, i8** %s, align 8
  %18 = load i32, i32* %utf8.addr, align 4
  %19 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %15, i32 5, i8* %16, i8* %17, i32 %18, %struct.token_pos* %token_pos, i32 1, %struct.sv* %19)
  %20 = load i8*, i8** %s, align 8
  store i8* %20, i8** %retval
  br label %return

if.end.15:                                        ; preds = %while.body
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr16, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %beg.addr, align 8
  store i8* %22, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.14
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal void @tokens_grow(%struct.token_pos** %token_ptr, i32* %token_lim_ptr, i8 signext %tokens_on_heap) #0 {
entry:
  %token_ptr.addr = alloca %struct.token_pos**, align 8
  %token_lim_ptr.addr = alloca i32*, align 8
  %tokens_on_heap.addr = alloca i8, align 1
  %new_lim = alloca i32, align 4
  %new_tokens = alloca %struct.token_pos*, align 8
  %i = alloca i32, align 4
  store %struct.token_pos** %token_ptr, %struct.token_pos*** %token_ptr.addr, align 8
  store i32* %token_lim_ptr, i32** %token_lim_ptr.addr, align 8
  store i8 %tokens_on_heap, i8* %tokens_on_heap.addr, align 1
  %0 = load i32*, i32** %token_lim_ptr.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %new_lim, align 4
  %2 = load i32, i32* %new_lim, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %new_lim, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %new_lim, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, i32* %new_lim, align 4
  %4 = load i8, i8* %tokens_on_heap.addr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.token_pos**, %struct.token_pos*** %token_ptr.addr, align 8
  %6 = load %struct.token_pos*, %struct.token_pos** %5, align 8
  %7 = bitcast %struct.token_pos* %6 to i8*
  %8 = load i32, i32* %new_lim, align 4
  %conv = sext i32 %8 to i64
  %mul2 = mul i64 %conv, 16
  %call = call i8* @Perl_safesysrealloc(i8* %7, i64 %mul2)
  %9 = bitcast i8* %call to %struct.token_pos*
  %10 = load %struct.token_pos**, %struct.token_pos*** %token_ptr.addr, align 8
  store %struct.token_pos* %9, %struct.token_pos** %10, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %new_lim, align 4
  %conv3 = sext i32 %11 to i64
  %mul4 = mul i64 %conv3, 16
  %call5 = call i8* @Perl_safesysmalloc(i64 %mul4)
  %12 = bitcast i8* %call5 to %struct.token_pos*
  store %struct.token_pos* %12, %struct.token_pos** %new_tokens, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i32, i32* %i, align 4
  %14 = load i32*, i32** %token_lim_ptr.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp6 = icmp slt i32 %13, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.token_pos*, %struct.token_pos** %new_tokens, align 8
  %arrayidx = getelementptr inbounds %struct.token_pos, %struct.token_pos* %17, i64 %idxprom
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.token_pos**, %struct.token_pos*** %token_ptr.addr, align 8
  %20 = load %struct.token_pos*, %struct.token_pos** %19, align 8
  %arrayidx9 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %20, i64 %idxprom8
  %21 = bitcast %struct.token_pos* %arrayidx to i8*
  %22 = bitcast %struct.token_pos* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.token_pos*, %struct.token_pos** %new_tokens, align 8
  %25 = load %struct.token_pos**, %struct.token_pos*** %token_ptr.addr, align 8
  store %struct.token_pos* %24, %struct.token_pos** %25, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then.1
  %26 = load i32, i32* %new_lim, align 4
  %27 = load i32*, i32** %token_lim_ptr.addr, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i8* @skip_until_gt(i8* %beg, i8* %end) #0 {
entry:
  %retval = alloca i8*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %quote = alloca i8, align 1
  %prev = alloca i8, align 1
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  store i8* %0, i8** %s, align 8
  store i8 0, i8* %quote, align 1
  store i8 32, i8* %prev, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, i8* %quote, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 62
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %s, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 34
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 39
  br i1 %cmp7, label %if.then.9, label %if.end.27

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %13 = load i8, i8* %quote, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv10, %conv11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.9
  store i8 0, i8* %quote, align 1
  br label %if.end.26

if.else:                                          ; preds = %if.then.9
  %14 = load i8, i8* %quote, align 1
  %tobool15 = icmp ne i8 %14, 0
  br i1 %tobool15, label %if.end.25, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %if.else
  %15 = load i8, i8* %prev, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 32
  br i1 %cmp18, label %if.then.24, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.16
  %16 = load i8, i8* %prev, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 61
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.20, %land.lhs.true.16
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %quote, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false.20, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %prev, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %end.addr, align 8
  store i8* %21, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_comment(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %token_buf = alloca [4 x %struct.token_pos], align 16
  %token_lim = alloca i32, align 4
  %tokens = alloca %struct.token_pos*, align 8
  %num_tokens = alloca i32, align 4
  %start_com = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %token = alloca %struct.token_pos, align 8
  %token87 = alloca %struct.token_pos, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %strict_comment = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 20
  %2 = load i8, i8* %strict_comment, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else.63

if.then:                                          ; preds = %entry
  store i32 4, i32* %token_lim, align 4
  %arraydecay = getelementptr inbounds [4 x %struct.token_pos], [4 x %struct.token_pos]* %token_buf, i32 0, i32 0
  store %struct.token_pos* %arraydecay, %struct.token_pos** %tokens, align 8
  store i32 0, i32* %num_tokens, align 4
  %3 = load i8*, i8** %s, align 8
  store i8* %3, i8** %start_com, align 8
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.62
  br label %FIND_DASH_DASH

FIND_DASH_DASH:                                   ; preds = %if.then.22, %while.body
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.7, %FIND_DASH_DASH
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.1
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp ne i32 %conv, 45
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv4, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.1
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.1 ], [ %cmp5, %land.rhs ]
  br i1 %10, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %cmp8 = icmp eq i8* %12, %13
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %while.end
  %14 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay11 = getelementptr inbounds [4 x %struct.token_pos], [4 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp12 = icmp ne %struct.token_pos* %14, %arraydecay11
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.10
  %15 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %16 = bitcast %struct.token_pos* %15 to i8*
  call void @Perl_safesysfree(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.10
  %17 = load i8*, i8** %beg.addr, align 8
  store i8* %17, i8** %retval
  br label %return

if.end.15:                                        ; preds = %while.end
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 62
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.end.15
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %s, align 8
  %21 = load i8*, i8** %start_com, align 8
  %tobool21 = icmp ne i8* %21, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  br label %FIND_DASH_DASH

if.end.23:                                        ; preds = %if.then.19
  %22 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %23 = load i8*, i8** %beg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 -4
  %24 = load i8*, i8** %s, align 8
  %25 = load i32, i32* %utf8.addr, align 4
  %26 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %27 = load i32, i32* %num_tokens, align 4
  %28 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %22, i32 1, i8* %add.ptr, i8* %24, i32 %25, %struct.token_pos* %26, i32 %27, %struct.sv* %28)
  %29 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay24 = getelementptr inbounds [4 x %struct.token_pos], [4 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp25 = icmp ne %struct.token_pos* %29, %arraydecay24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %30 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %31 = bitcast %struct.token_pos* %30 to i8*
  call void @Perl_safesysfree(i8* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.23
  %32 = load i8*, i8** %s, align 8
  store i8* %32, i8** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.15
  %33 = load i8*, i8** %s, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr30, i8** %s, align 8
  %34 = load i8*, i8** %s, align 8
  %35 = load i8*, i8** %end.addr, align 8
  %cmp31 = icmp eq i8* %34, %35
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.29
  %36 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay34 = getelementptr inbounds [4 x %struct.token_pos], [4 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp35 = icmp ne %struct.token_pos* %36, %arraydecay34
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  %37 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %38 = bitcast %struct.token_pos* %37 to i8*
  call void @Perl_safesysfree(i8* %38)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.33
  %39 = load i8*, i8** %beg.addr, align 8
  store i8* %39, i8** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.29
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv40 = sext i8 %41 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %if.then.43, label %if.end.62

if.then.43:                                       ; preds = %if.end.39
  %42 = load i8*, i8** %s, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr44, i8** %s, align 8
  %43 = load i8*, i8** %start_com, align 8
  %tobool45 = icmp ne i8* %43, null
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.43
  %44 = load i32, i32* %num_tokens, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %num_tokens, align 4
  %45 = load i32, i32* %num_tokens, align 4
  %46 = load i32, i32* %token_lim, align 4
  %cmp47 = icmp eq i32 %45, %46
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.then.46
  %47 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arraydecay50 = getelementptr inbounds [4 x %struct.token_pos], [4 x %struct.token_pos]* %token_buf, i32 0, i32 0
  %cmp51 = icmp ne %struct.token_pos* %47, %arraydecay50
  %conv52 = zext i1 %cmp51 to i32
  %conv53 = trunc i32 %conv52 to i8
  call void @tokens_grow(%struct.token_pos** %tokens, i32* %token_lim, i8 signext %conv53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.then.46
  %48 = load i8*, i8** %start_com, align 8
  %49 = load i32, i32* %num_tokens, align 4
  %sub = sub nsw i32 %49, 1
  %idxprom = sext i32 %sub to i64
  %50 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx = getelementptr inbounds %struct.token_pos, %struct.token_pos* %50, i64 %idxprom
  %beg55 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx, i32 0, i32 0
  store i8* %48, i8** %beg55, align 8
  %51 = load i8*, i8** %s, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %51, i64 -2
  %52 = load i32, i32* %num_tokens, align 4
  %sub57 = sub nsw i32 %52, 1
  %idxprom58 = sext i32 %sub57 to i64
  %53 = load %struct.token_pos*, %struct.token_pos** %tokens, align 8
  %arrayidx59 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %53, i64 %idxprom58
  %end60 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %arrayidx59, i32 0, i32 1
  store i8* %add.ptr56, i8** %end60, align 8
  store i8* %add.ptr56, i8** %tmp
  %54 = load i8*, i8** %tmp
  store i8* null, i8** %start_com, align 8
  br label %if.end.61

if.else:                                          ; preds = %if.then.43
  %55 = load i8*, i8** %s, align 8
  store i8* %55, i8** %start_com, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.end.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.39
  br label %while.body

if.else.63:                                       ; preds = %entry
  %56 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %no_dash_dash_comment_end = getelementptr inbounds %struct.p_state, %struct.p_state* %56, i32 0, i32 9
  %57 = load i8, i8* %no_dash_dash_comment_end, align 1
  %tobool64 = icmp ne i8 %57, 0
  br i1 %tobool64, label %if.then.65, label %if.else.85

if.then.65:                                       ; preds = %if.else.63
  %58 = load i8*, i8** %beg.addr, align 8
  %beg67 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 0
  store i8* %58, i8** %beg67, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.75, %if.then.65
  %59 = load i8*, i8** %s, align 8
  %60 = load i8*, i8** %end.addr, align 8
  %cmp68 = icmp ult i8* %59, %60
  br i1 %cmp68, label %land.rhs.70, label %land.end.74

land.rhs.70:                                      ; preds = %while.cond
  %61 = load i8*, i8** %s, align 8
  %62 = load i8, i8* %61, align 1
  %conv71 = sext i8 %62 to i32
  %cmp72 = icmp ne i32 %conv71, 62
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.70, %while.cond
  %63 = phi i1 [ false, %while.cond ], [ %cmp72, %land.rhs.70 ]
  br i1 %63, label %while.body.75, label %while.end.77

while.body.75:                                    ; preds = %land.end.74
  %64 = load i8*, i8** %s, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr76, i8** %s, align 8
  br label %while.cond

while.end.77:                                     ; preds = %land.end.74
  %65 = load i8*, i8** %s, align 8
  %end78 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token, i32 0, i32 1
  store i8* %65, i8** %end78, align 8
  %66 = load i8*, i8** %s, align 8
  %67 = load i8*, i8** %end.addr, align 8
  %cmp79 = icmp ult i8* %66, %67
  br i1 %cmp79, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %while.end.77
  %68 = load i8*, i8** %s, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr82, i8** %s, align 8
  %69 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %70 = load i8*, i8** %beg.addr, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %70, i64 -4
  %71 = load i8*, i8** %s, align 8
  %72 = load i32, i32* %utf8.addr, align 4
  %73 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %69, i32 1, i8* %add.ptr83, i8* %71, i32 %72, %struct.token_pos* %token, i32 1, %struct.sv* %73)
  %74 = load i8*, i8** %s, align 8
  store i8* %74, i8** %retval
  br label %return

if.else.84:                                       ; preds = %while.end.77
  %75 = load i8*, i8** %beg.addr, align 8
  store i8* %75, i8** %retval
  br label %return

if.else.85:                                       ; preds = %if.else.63
  %76 = load i8*, i8** %beg.addr, align 8
  %beg88 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token87, i32 0, i32 0
  store i8* %76, i8** %beg88, align 8
  br label %LOCATE_END

LOCATE_END:                                       ; preds = %if.then.128, %if.else.85
  br label %while.cond.89

while.cond.89:                                    ; preds = %while.body.97, %LOCATE_END
  %77 = load i8*, i8** %s, align 8
  %78 = load i8*, i8** %end.addr, align 8
  %cmp90 = icmp ult i8* %77, %78
  br i1 %cmp90, label %land.rhs.92, label %land.end.96

land.rhs.92:                                      ; preds = %while.cond.89
  %79 = load i8*, i8** %s, align 8
  %80 = load i8, i8* %79, align 1
  %conv93 = sext i8 %80 to i32
  %cmp94 = icmp ne i32 %conv93, 45
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.92, %while.cond.89
  %81 = phi i1 [ false, %while.cond.89 ], [ %cmp94, %land.rhs.92 ]
  br i1 %81, label %while.body.97, label %while.end.99

while.body.97:                                    ; preds = %land.end.96
  %82 = load i8*, i8** %s, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr98, i8** %s, align 8
  br label %while.cond.89

while.end.99:                                     ; preds = %land.end.96
  %83 = load i8*, i8** %s, align 8
  %end100 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token87, i32 0, i32 1
  store i8* %83, i8** %end100, align 8
  %84 = load i8*, i8** %s, align 8
  %85 = load i8*, i8** %end.addr, align 8
  %cmp101 = icmp ult i8* %84, %85
  br i1 %cmp101, label %if.then.103, label %if.end.132

if.then.103:                                      ; preds = %while.end.99
  %86 = load i8*, i8** %s, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr104, i8** %s, align 8
  %87 = load i8*, i8** %s, align 8
  %88 = load i8, i8* %87, align 1
  %conv105 = sext i8 %88 to i32
  %cmp106 = icmp eq i32 %conv105, 45
  br i1 %cmp106, label %if.then.108, label %if.end.125

if.then.108:                                      ; preds = %if.then.103
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr109, i8** %s, align 8
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.115, %if.then.108
  %90 = load i8*, i8** %s, align 8
  %91 = load i8, i8* %90, align 1
  %idxprom111 = zext i8 %91 to i64
  %arrayidx112 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom111
  %92 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %92 to i32
  %and = and i32 %conv113, 1
  %tobool114 = icmp ne i32 %and, 0
  br i1 %tobool114, label %while.body.115, label %while.end.117

while.body.115:                                   ; preds = %while.cond.110
  %93 = load i8*, i8** %s, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr116, i8** %s, align 8
  br label %while.cond.110

while.end.117:                                    ; preds = %while.cond.110
  %94 = load i8*, i8** %s, align 8
  %95 = load i8, i8* %94, align 1
  %conv118 = sext i8 %95 to i32
  %cmp119 = icmp eq i32 %conv118, 62
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %while.end.117
  %96 = load i8*, i8** %s, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr122, i8** %s, align 8
  %97 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %98 = load i8*, i8** %beg.addr, align 8
  %add.ptr123 = getelementptr inbounds i8, i8* %98, i64 -4
  %99 = load i8*, i8** %s, align 8
  %100 = load i32, i32* %utf8.addr, align 4
  %101 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %97, i32 1, i8* %add.ptr123, i8* %99, i32 %100, %struct.token_pos* %token87, i32 1, %struct.sv* %101)
  %102 = load i8*, i8** %s, align 8
  store i8* %102, i8** %retval
  br label %return

if.end.124:                                       ; preds = %while.end.117
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.103
  %103 = load i8*, i8** %s, align 8
  %104 = load i8*, i8** %end.addr, align 8
  %cmp126 = icmp ult i8* %103, %104
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.125
  %end129 = getelementptr inbounds %struct.token_pos, %struct.token_pos* %token87, i32 0, i32 1
  %105 = load i8*, i8** %end129, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %add.ptr130, i8** %s, align 8
  br label %LOCATE_END

if.end.131:                                       ; preds = %if.end.125
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %while.end.99
  %106 = load i8*, i8** %s, align 8
  %107 = load i8*, i8** %end.addr, align 8
  %cmp133 = icmp eq i8* %106, %107
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  %108 = load i8*, i8** %beg.addr, align 8
  store i8* %108, i8** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.132
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.138, %if.then.135, %if.then.121, %if.else.84, %if.then.81, %if.end.38, %if.end.28, %if.end
  %109 = load i8*, i8** %retval
  ret i8* %109
}

; Function Attrs: nounwind uwtable
define internal i8* @parse_marked_section(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %p_state.addr = alloca %struct.p_state*, align 8
  %beg.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %utf8.addr = alloca i32, align 4
  %self.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %tokens = alloca %struct.av*, align 8
  %name_start = alloca i8*, align 8
  %name_end = alloca i8*, align 8
  %name = alloca %struct.sv*, align 8
  store %struct.p_state* %p_state, %struct.p_state** %p_state.addr, align 8
  store i8* %beg, i8** %beg.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %utf8, i32* %utf8.addr, align 4
  store %struct.sv* %self, %struct.sv** %self.addr, align 8
  %0 = load i8*, i8** %beg.addr, align 8
  store i8* %0, i8** %s, align 8
  store %struct.av* null, %struct.av** %tokens, align 8
  %1 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %marked_sections = getelementptr inbounds %struct.p_state, %struct.p_state* %1, i32 0, i32 19
  %2 = load i8, i8* %marked_sections, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %FIND_NAMES

FIND_NAMES:                                       ; preds = %if.then.69, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %FIND_NAMES
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.37, %while.end
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %idxprom3 = zext i8 %8 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %and6 = and i32 %conv5, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %while.body.8, label %while.end.39

while.body.8:                                     ; preds = %while.cond.2
  %10 = load i8*, i8** %s, align 8
  store i8* %10, i8** %name_start, align 8
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr9, i8** %s, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.16, %while.body.8
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom11 = zext i8 %13 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %and14 = and i32 %conv13, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %while.body.16, label %while.end.18

while.body.16:                                    ; preds = %while.cond.10
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** %s, align 8
  br label %while.cond.10

while.end.18:                                     ; preds = %while.cond.10
  %16 = load i8*, i8** %s, align 8
  store i8* %16, i8** %name_end, align 8
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %while.end.18
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %idxprom20 = zext i8 %18 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @hctype, i32 0, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %and23 = and i32 %conv22, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %while.body.25, label %while.end.27

while.body.25:                                    ; preds = %while.cond.19
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr26, i8** %s, align 8
  br label %while.cond.19

while.end.27:                                     ; preds = %while.cond.19
  %21 = load i8*, i8** %s, align 8
  %22 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %21, %22
  br i1 %cmp, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end.27
  br label %PREMATURE

if.end.30:                                        ; preds = %while.end.27
  %23 = load %struct.av*, %struct.av** %tokens, align 8
  %tobool31 = icmp ne %struct.av* %23, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %call = call %struct.av* @Perl_newAV()
  store %struct.av* %call, %struct.av** %tokens, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %24 = load i8*, i8** %name_start, align 8
  %25 = load i8*, i8** %name_end, align 8
  %26 = load i8*, i8** %name_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call34 = call %struct.sv* @Perl_newSVpvn(i8* %24, i64 %sub.ptr.sub)
  store %struct.sv* %call34, %struct.sv** %name, align 8
  %27 = load i32, i32* %utf8.addr, align 4
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %28 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags, align 4
  %or = or i32 %29, 536870912
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %30 = load %struct.av*, %struct.av** %tokens, align 8
  %31 = load %struct.sv*, %struct.sv** %name, align 8
  %call38 = call %struct.sv* @sv_lower(%struct.sv* %31)
  call void @Perl_av_push(%struct.av* %30, %struct.sv* %call38)
  br label %while.cond.2

while.end.39:                                     ; preds = %while.cond.2
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv40 = sext i8 %33 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %if.then.43, label %if.end.72

if.then.43:                                       ; preds = %while.end.39
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr44, i8** %s, align 8
  %35 = load i8*, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %conv45 = sext i8 %36 to i32
  %cmp46 = icmp eq i32 %conv45, 45
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.43
  %37 = load i8*, i8** %s, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8
  br label %while.body.51

while.body.51:                                    ; preds = %if.then.48, %if.end.71
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.58, %while.body.51
  %38 = load i8*, i8** %s, align 8
  %39 = load i8*, i8** %end.addr, align 8
  %cmp53 = icmp ult i8* %38, %39
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.52
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv55 = sext i8 %41 to i32
  %cmp56 = icmp ne i32 %conv55, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.52
  %42 = phi i1 [ false, %while.cond.52 ], [ %cmp56, %land.rhs ]
  br i1 %42, label %while.body.58, label %while.end.60

while.body.58:                                    ; preds = %land.end
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr59, i8** %s, align 8
  br label %while.cond.52

while.end.60:                                     ; preds = %land.end
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %end.addr, align 8
  %cmp61 = icmp eq i8* %44, %45
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.end.60
  br label %PREMATURE

if.end.64:                                        ; preds = %while.end.60
  %46 = load i8*, i8** %s, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr65, i8** %s, align 8
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv66 = sext i8 %48 to i32
  %cmp67 = icmp eq i32 %conv66, 45
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.64
  %49 = load i8*, i8** %s, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr70, i8** %s, align 8
  br label %FIND_NAMES

if.end.71:                                        ; preds = %if.end.64
  br label %while.body.51

if.else:                                          ; preds = %if.then.43
  br label %FAIL

if.end.72:                                        ; preds = %while.end.39
  %50 = load i8*, i8** %s, align 8
  %51 = load i8, i8* %50, align 1
  %conv73 = sext i8 %51 to i32
  %cmp74 = icmp eq i32 %conv73, 91
  br i1 %cmp74, label %if.then.76, label %if.end.90

if.then.76:                                       ; preds = %if.end.72
  %52 = load i8*, i8** %s, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr77, i8** %s, align 8
  %53 = load %struct.av*, %struct.av** %tokens, align 8
  %tobool78 = icmp ne %struct.av* %53, null
  br i1 %tobool78, label %if.end.82, label %if.then.79

if.then.79:                                       ; preds = %if.then.76
  %call80 = call %struct.av* @Perl_newAV()
  store %struct.av* %call80, %struct.av** %tokens, align 8
  %54 = load %struct.av*, %struct.av** %tokens, align 8
  %call81 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i64 7)
  call void @Perl_av_push(%struct.av* %54, %struct.sv* %call81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.then.76
  %55 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack = getelementptr inbounds %struct.p_state, %struct.p_state* %55, i32 0, i32 18
  %56 = load %struct.av*, %struct.av** %ms_stack, align 8
  %tobool83 = icmp ne %struct.av* %56, null
  br i1 %tobool83, label %if.end.87, label %if.then.84

if.then.84:                                       ; preds = %if.end.82
  %call85 = call %struct.av* @Perl_newAV()
  %57 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack86 = getelementptr inbounds %struct.p_state, %struct.p_state* %57, i32 0, i32 18
  store %struct.av* %call85, %struct.av** %ms_stack86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.82
  %58 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %ms_stack88 = getelementptr inbounds %struct.p_state, %struct.p_state* %58, i32 0, i32 18
  %59 = load %struct.av*, %struct.av** %ms_stack88, align 8
  %60 = load %struct.av*, %struct.av** %tokens, align 8
  %61 = bitcast %struct.av* %60 to %struct.sv*
  %call89 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %61)
  call void @Perl_av_push(%struct.av* %59, %struct.sv* %call89)
  %62 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  call void @marked_section_update(%struct.p_state* %62)
  %63 = load %struct.p_state*, %struct.p_state** %p_state.addr, align 8
  %64 = load i8*, i8** %beg.addr, align 8
  %65 = load i8*, i8** %s, align 8
  %66 = load i32, i32* %utf8.addr, align 4
  %67 = load %struct.sv*, %struct.sv** %self.addr, align 8
  call void @report_event(%struct.p_state* %63, i32 10, i8* %64, i8* %65, i32 %66, %struct.token_pos* null, i32 0, %struct.sv* %67)
  %68 = load i8*, i8** %s, align 8
  store i8* %68, i8** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.72
  br label %FAIL

FAIL:                                             ; preds = %if.end.90, %if.else
  %69 = load %struct.av*, %struct.av** %tokens, align 8
  %70 = bitcast %struct.av* %69 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %70)
  store i8* null, i8** %retval
  br label %return

PREMATURE:                                        ; preds = %if.then.63, %if.then.29
  %71 = load %struct.av*, %struct.av** %tokens, align 8
  %72 = bitcast %struct.av* %71 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %72)
  %73 = load i8*, i8** %beg.addr, align 8
  store i8* %73, i8** %retval
  br label %return

return:                                           ; preds = %PREMATURE, %FAIL, %if.end.87, %if.then
  %74 = load i8*, i8** %retval
  ret i8* %74
}

; Function Attrs: nounwind uwtable
define internal i32 @strnEQx(i8* %s1, i8* %s2, i64 %n, i32 %ignore_case) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ignore_case.addr = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %ignore_case, i32* %ignore_case.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %0 = load i64, i64* %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %ignore_case.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8*, i8** %s1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp sle i32 %conv3, 90
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %s1.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %add = add nsw i32 %conv6, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %8 = load i8*, i8** %s1.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv7, %cond.false ]
  %10 = load i8*, i8** %s2.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp sge i32 %conv8, 65
  br i1 %cmp9, label %land.lhs.true.11, label %cond.false.18

land.lhs.true.11:                                 ; preds = %cond.end
  %12 = load i8*, i8** %s2.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp sle i32 %conv12, 90
  br i1 %cmp13, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %land.lhs.true.11
  %14 = load i8*, i8** %s2.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = sext i8 %15 to i32
  %add17 = add nsw i32 %conv16, 32
  br label %cond.end.20

cond.false.18:                                    ; preds = %land.lhs.true.11, %cond.end
  %16 = load i8*, i8** %s2.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = sext i8 %17 to i32
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.15
  %cond21 = phi i32 [ %add17, %cond.true.15 ], [ %conv19, %cond.false.18 ]
  %cmp22 = icmp ne i32 %cond, %cond21
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %cond.end.20
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.20
  br label %if.end.31

if.else:                                          ; preds = %while.body
  %18 = load i8*, i8** %s1.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv25 = sext i8 %19 to i32
  %20 = load i8*, i8** %s2.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp ne i32 %conv25, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  %22 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %23 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr32, i8** %s2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.29, %if.then.24
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct.av* @Perl_newAV() #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal %struct.sv* @sv_lower(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i64, i64* %len, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %len, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp2 = icmp sge i32 %conv, 65
  br i1 %cmp2, label %land.lhs.true, label %cond.false.9

land.lhs.true:                                    ; preds = %for.body
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv4 = sext i8 %15 to i32
  %cmp5 = icmp sle i32 %conv4, 90
  br i1 %cmp5, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %land.lhs.true
  %16 = load i8*, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  %conv8 = sext i8 %17 to i32
  %add = add nsw i32 %conv8, 32
  br label %cond.end.11

cond.false.9:                                     ; preds = %land.lhs.true, %for.body
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %conv10 = sext i8 %19 to i32
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.7
  %cond12 = phi i32 [ %add, %cond.true.7 ], [ %conv10, %cond.false.9 ]
  %conv13 = trunc i32 %cond12 to i8
  %20 = load i8*, i8** %s, align 8
  store i8 %conv13, i8* %20, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.11
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  ret %struct.sv* %22
}

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

declare i64 @strlen(i8*) #1

declare i64 @Perl_utf8_distance(i8*, i8*) #1

declare i32 @Perl_sv_eq(%struct.sv*, %struct.sv*) #1

declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare void @Perl_push_scope() #1

declare void @Perl_save_int(i32*) #1

declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

declare void @Perl_av_extend(%struct.av*, i32) #1

declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #1

declare signext i8 @Perl_hv_exists_ent(%struct.hv*, %struct.sv*, i32) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare void @Perl_free_tmps() #1

declare void @Perl_pop_scope() #1

declare i8* @strchr(i8*, i32) #1

declare i8* @Perl_uvuni_to_utf8(i8*, i64) #1

declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: nounwind uwtable
define internal void @grow_gap(%struct.sv* %sv, i64 %grow, i8** %t, i8** %s, i8** %e) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %grow.addr = alloca i64, align 8
  %t.addr = alloca i8**, align 8
  %s.addr = alloca i8**, align 8
  %e.addr = alloca i8**, align 8
  %t_offset = alloca i64, align 8
  %s_offset = alloca i64, align 8
  %e_offset = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i64 %grow, i64* %grow.addr, align 8
  store i8** %t, i8*** %t.addr, align 8
  store i8** %s, i8*** %s.addr, align 8
  store i8** %e, i8*** %e.addr, align 8
  %0 = load i8**, i8*** %t.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 0
  %5 = load i8*, i8** %xpv_pv, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %t_offset, align 8
  %6 = load i8**, i8*** %s.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any1, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv2 = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv2, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %11 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  store i64 %sub.ptr.sub5, i64* %s_offset, align 8
  %12 = load i8**, i8*** %e.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any6, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv7 = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv7, align 8
  %sub.ptr.lhs.cast8 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %17 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  store i64 %sub.ptr.sub10, i64* %e_offset, align 8
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any11, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 2
  %21 = load i64, i64* %xpv_len, align 8
  %22 = load i64, i64* %e_offset, align 8
  %23 = load i64, i64* %grow.addr, align 8
  %add = add i64 %22, %23
  %add12 = add i64 %add, 1
  %cmp = icmp ult i64 %21, %add12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %25 = load i64, i64* %e_offset, align 8
  %26 = load i64, i64* %grow.addr, align 8
  %add13 = add i64 %25, %26
  %add14 = add i64 %add13, 1
  %call = call i8* @Perl_sv_grow(%struct.sv* %24, i64 %add14)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any15, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_pv16 = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 0
  %30 = load i8*, i8** %xpv_pv16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %30, %cond.false ]
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any17, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv18 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv18, align 8
  %35 = load i64, i64* %t_offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %35
  %36 = load i8**, i8*** %t.addr, align 8
  store i8* %add.ptr, i8** %36, align 8
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any19, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_pv20 = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 0
  %40 = load i8*, i8** %xpv_pv20, align 8
  %41 = load i64, i64* %s_offset, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i8**, i8*** %s.addr, align 8
  store i8* %add.ptr21, i8** %42, align 8
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any22, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  %xpv_pv23 = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 0
  %46 = load i8*, i8** %xpv_pv23, align 8
  %47 = load i64, i64* %e_offset, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %46, i64 %47
  %48 = load i8**, i8*** %e.addr, align 8
  store i8* %add.ptr24, i8** %48, align 8
  %49 = load i8**, i8*** %s.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %grow.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %50, i64 %51
  %52 = load i8**, i8*** %s.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %e.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %s.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %57 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %mul = mul i64 %sub.ptr.sub28, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr25, i8* %53, i64 %mul, i32 1, i1 false)
  %58 = load i64, i64* %grow.addr, align 8
  %59 = load i8**, i8*** %s.addr, align 8
  %60 = load i8*, i8** %59, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %60, i64 %58
  store i8* %add.ptr29, i8** %59, align 8
  %61 = load i64, i64* %grow.addr, align 8
  %62 = load i8**, i8*** %e.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %63, i64 %61
  store i8* %add.ptr30, i8** %62, align 8
  ret void
}

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @has_hibit(i8* %s, i8* %e) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %ch = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %e.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %ch, align 1
  %4 = load i8, i8* %ch, align 1
  %conv = zext i8 %4 to i64
  %cmp1 = icmp ult i64 %conv, 128
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i8, i8* %retval
  ret i8 %5
}

declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
