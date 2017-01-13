; ModuleID = './src/bytecode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.byte_stack = type { i8*, i64, i8*, %struct.byte_stack* }
%struct.Lisp_Symbol = type { i16, i64, %union.anon, i64, i64, %struct.Lisp_Symbol* }
%union.anon = type { i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.handler = type { i32, i64, i64, %struct.handler*, %struct.handler*, i64*, i32, [1 x %struct.__jmp_buf_tag], i64, i64, i32, i32, %struct.byte_stack* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }

@byte_stack_list = common global %struct.byte_stack* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown args template!\00", align 1
@exec_byte_code.targets = internal constant [256 x i8*] [i8* blockaddress(@exec_byte_code, %insn_Bstack_ref), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref1), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref2), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref3), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref4), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref5), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref6), i8* blockaddress(@exec_byte_code, %insn_Bstack_ref7), i8* blockaddress(@exec_byte_code, %insn_Bvarref), i8* blockaddress(@exec_byte_code, %insn_Bvarref1), i8* blockaddress(@exec_byte_code, %insn_Bvarref2), i8* blockaddress(@exec_byte_code, %insn_Bvarref3), i8* blockaddress(@exec_byte_code, %insn_Bvarref4), i8* blockaddress(@exec_byte_code, %insn_Bvarref5), i8* blockaddress(@exec_byte_code, %insn_Bvarref6), i8* blockaddress(@exec_byte_code, %insn_Bvarref7), i8* blockaddress(@exec_byte_code, %insn_Bvarset), i8* blockaddress(@exec_byte_code, %insn_Bvarset1), i8* blockaddress(@exec_byte_code, %insn_Bvarset2), i8* blockaddress(@exec_byte_code, %insn_Bvarset3), i8* blockaddress(@exec_byte_code, %insn_Bvarset4), i8* blockaddress(@exec_byte_code, %insn_Bvarset5), i8* blockaddress(@exec_byte_code, %insn_Bvarset6), i8* blockaddress(@exec_byte_code, %insn_Bvarset7), i8* blockaddress(@exec_byte_code, %insn_Bvarbind), i8* blockaddress(@exec_byte_code, %insn_Bvarbind1), i8* blockaddress(@exec_byte_code, %insn_Bvarbind2), i8* blockaddress(@exec_byte_code, %insn_Bvarbind3), i8* blockaddress(@exec_byte_code, %insn_Bvarbind4), i8* blockaddress(@exec_byte_code, %insn_Bvarbind5), i8* blockaddress(@exec_byte_code, %insn_Bvarbind6), i8* blockaddress(@exec_byte_code, %insn_Bvarbind7), i8* blockaddress(@exec_byte_code, %insn_Bcall), i8* blockaddress(@exec_byte_code, %insn_Bcall1), i8* blockaddress(@exec_byte_code, %insn_Bcall2), i8* blockaddress(@exec_byte_code, %insn_Bcall3), i8* blockaddress(@exec_byte_code, %insn_Bcall4), i8* blockaddress(@exec_byte_code, %insn_Bcall5), i8* blockaddress(@exec_byte_code, %insn_Bcall6), i8* blockaddress(@exec_byte_code, %insn_Bcall7), i8* blockaddress(@exec_byte_code, %insn_Bunbind), i8* blockaddress(@exec_byte_code, %insn_Bunbind1), i8* blockaddress(@exec_byte_code, %insn_Bunbind2), i8* blockaddress(@exec_byte_code, %insn_Bunbind3), i8* blockaddress(@exec_byte_code, %insn_Bunbind4), i8* blockaddress(@exec_byte_code, %insn_Bunbind5), i8* blockaddress(@exec_byte_code, %insn_Bunbind6), i8* blockaddress(@exec_byte_code, %insn_Bunbind7), i8* blockaddress(@exec_byte_code, %insn_Bpophandler), i8* blockaddress(@exec_byte_code, %insn_Bpushconditioncase), i8* blockaddress(@exec_byte_code, %insn_Bpushcatch), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_Bnth), i8* blockaddress(@exec_byte_code, %insn_Bsymbolp), i8* blockaddress(@exec_byte_code, %insn_Bconsp), i8* blockaddress(@exec_byte_code, %insn_Bstringp), i8* blockaddress(@exec_byte_code, %insn_Blistp), i8* blockaddress(@exec_byte_code, %insn_Beq), i8* blockaddress(@exec_byte_code, %insn_Bmemq), i8* blockaddress(@exec_byte_code, %insn_Bnot), i8* blockaddress(@exec_byte_code, %insn_Bcar), i8* blockaddress(@exec_byte_code, %insn_Bcdr), i8* blockaddress(@exec_byte_code, %insn_Bcons), i8* blockaddress(@exec_byte_code, %insn_Blist1), i8* blockaddress(@exec_byte_code, %insn_Blist2), i8* blockaddress(@exec_byte_code, %insn_Blist3), i8* blockaddress(@exec_byte_code, %insn_Blist4), i8* blockaddress(@exec_byte_code, %insn_Blength), i8* blockaddress(@exec_byte_code, %insn_Baref), i8* blockaddress(@exec_byte_code, %insn_Baset), i8* blockaddress(@exec_byte_code, %insn_Bsymbol_value), i8* blockaddress(@exec_byte_code, %insn_Bsymbol_function), i8* blockaddress(@exec_byte_code, %insn_Bset), i8* blockaddress(@exec_byte_code, %insn_Bfset), i8* blockaddress(@exec_byte_code, %insn_Bget), i8* blockaddress(@exec_byte_code, %insn_Bsubstring), i8* blockaddress(@exec_byte_code, %insn_Bconcat2), i8* blockaddress(@exec_byte_code, %insn_Bconcat3), i8* blockaddress(@exec_byte_code, %insn_Bconcat4), i8* blockaddress(@exec_byte_code, %insn_Bsub1), i8* blockaddress(@exec_byte_code, %insn_Badd1), i8* blockaddress(@exec_byte_code, %insn_Beqlsign), i8* blockaddress(@exec_byte_code, %insn_Bgtr), i8* blockaddress(@exec_byte_code, %insn_Blss), i8* blockaddress(@exec_byte_code, %insn_Bleq), i8* blockaddress(@exec_byte_code, %insn_Bgeq), i8* blockaddress(@exec_byte_code, %insn_Bdiff), i8* blockaddress(@exec_byte_code, %insn_Bnegate), i8* blockaddress(@exec_byte_code, %insn_Bplus), i8* blockaddress(@exec_byte_code, %insn_Bmax), i8* blockaddress(@exec_byte_code, %insn_Bmin), i8* blockaddress(@exec_byte_code, %insn_Bmult), i8* blockaddress(@exec_byte_code, %insn_Bpoint), i8* blockaddress(@exec_byte_code, %insn_Bsave_current_buffer), i8* blockaddress(@exec_byte_code, %insn_Bgoto_char), i8* blockaddress(@exec_byte_code, %insn_Binsert), i8* blockaddress(@exec_byte_code, %insn_Bpoint_max), i8* blockaddress(@exec_byte_code, %insn_Bpoint_min), i8* blockaddress(@exec_byte_code, %insn_Bchar_after), i8* blockaddress(@exec_byte_code, %insn_Bfollowing_char), i8* blockaddress(@exec_byte_code, %insn_Bpreceding_char), i8* blockaddress(@exec_byte_code, %insn_Bcurrent_column), i8* blockaddress(@exec_byte_code, %insn_Bindent_to), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_Beolp), i8* blockaddress(@exec_byte_code, %insn_Beobp), i8* blockaddress(@exec_byte_code, %insn_Bbolp), i8* blockaddress(@exec_byte_code, %insn_Bbobp), i8* blockaddress(@exec_byte_code, %insn_Bcurrent_buffer), i8* blockaddress(@exec_byte_code, %insn_Bset_buffer), i8* blockaddress(@exec_byte_code, %insn_Bsave_current_buffer_1), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_Binteractive_p), i8* blockaddress(@exec_byte_code, %insn_Bforward_char), i8* blockaddress(@exec_byte_code, %insn_Bforward_word), i8* blockaddress(@exec_byte_code, %insn_Bskip_chars_forward), i8* blockaddress(@exec_byte_code, %insn_Bskip_chars_backward), i8* blockaddress(@exec_byte_code, %insn_Bforward_line), i8* blockaddress(@exec_byte_code, %insn_Bchar_syntax), i8* blockaddress(@exec_byte_code, %insn_Bbuffer_substring), i8* blockaddress(@exec_byte_code, %insn_Bdelete_region), i8* blockaddress(@exec_byte_code, %insn_Bnarrow_to_region), i8* blockaddress(@exec_byte_code, %insn_Bwiden), i8* blockaddress(@exec_byte_code, %insn_Bend_of_line), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_Bconstant2), i8* blockaddress(@exec_byte_code, %insn_Bgoto), i8* blockaddress(@exec_byte_code, %insn_Bgotoifnil), i8* blockaddress(@exec_byte_code, %insn_Bgotoifnonnil), i8* blockaddress(@exec_byte_code, %insn_Bgotoifnilelsepop), i8* blockaddress(@exec_byte_code, %insn_Bgotoifnonnilelsepop), i8* blockaddress(@exec_byte_code, %insn_Breturn), i8* blockaddress(@exec_byte_code, %insn_Bdiscard), i8* blockaddress(@exec_byte_code, %insn_Bdup), i8* blockaddress(@exec_byte_code, %insn_Bsave_excursion), i8* blockaddress(@exec_byte_code, %insn_Bsave_window_excursion), i8* blockaddress(@exec_byte_code, %insn_Bsave_restriction), i8* blockaddress(@exec_byte_code, %insn_Bcatch), i8* blockaddress(@exec_byte_code, %insn_Bunwind_protect), i8* blockaddress(@exec_byte_code, %insn_Bcondition_case), i8* blockaddress(@exec_byte_code, %insn_Btemp_output_buffer_setup), i8* blockaddress(@exec_byte_code, %insn_Btemp_output_buffer_show), i8* blockaddress(@exec_byte_code, %insn_Bunbind_all), i8* blockaddress(@exec_byte_code, %insn_Bset_marker), i8* blockaddress(@exec_byte_code, %insn_Bmatch_beginning), i8* blockaddress(@exec_byte_code, %insn_Bmatch_end), i8* blockaddress(@exec_byte_code, %insn_Bupcase), i8* blockaddress(@exec_byte_code, %insn_Bdowncase), i8* blockaddress(@exec_byte_code, %insn_Bstringeqlsign), i8* blockaddress(@exec_byte_code, %insn_Bstringlss), i8* blockaddress(@exec_byte_code, %insn_Bequal), i8* blockaddress(@exec_byte_code, %insn_Bnthcdr), i8* blockaddress(@exec_byte_code, %insn_Belt), i8* blockaddress(@exec_byte_code, %insn_Bmember), i8* blockaddress(@exec_byte_code, %insn_Bassq), i8* blockaddress(@exec_byte_code, %insn_Bnreverse), i8* blockaddress(@exec_byte_code, %insn_Bsetcar), i8* blockaddress(@exec_byte_code, %insn_Bsetcdr), i8* blockaddress(@exec_byte_code, %insn_Bcar_safe), i8* blockaddress(@exec_byte_code, %insn_Bcdr_safe), i8* blockaddress(@exec_byte_code, %insn_Bnconc), i8* blockaddress(@exec_byte_code, %insn_Bquo), i8* blockaddress(@exec_byte_code, %insn_Brem), i8* blockaddress(@exec_byte_code, %insn_Bnumberp), i8* blockaddress(@exec_byte_code, %insn_Bintegerp), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_BRgoto), i8* blockaddress(@exec_byte_code, %insn_BRgotoifnil), i8* blockaddress(@exec_byte_code, %insn_BRgotoifnonnil), i8* blockaddress(@exec_byte_code, %insn_BRgotoifnilelsepop), i8* blockaddress(@exec_byte_code, %insn_BRgotoifnonnilelsepop), i8* blockaddress(@exec_byte_code, %insn_BlistN), i8* blockaddress(@exec_byte_code, %insn_BconcatN), i8* blockaddress(@exec_byte_code, %insn_BinsertN), i8* blockaddress(@exec_byte_code, %insn_Bstack_set), i8* blockaddress(@exec_byte_code, %insn_Bstack_set2), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_BdiscardN), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_default), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant), i8* blockaddress(@exec_byte_code, %insn_Bconstant)], align 16
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@globals = external global %struct.emacs_globals, align 8
@pending_signals = external global i8, align 1
@handlerlist = external global %struct.handler*, align 8
@immediate_quit = external global i8, align 1
@current_buffer = external global %struct.buffer*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"interactive-p\00", align 1
@syntax_code_spec = external constant [16 x i8], align 16
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid byte opcode: op=%s, ptr=%d\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"binding stack not balanced (serious byte compiler bug)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"byte-code\00", align 1
@Sbyte_code = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbyte_code }, i16 3, i16 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @relocate_byte_stack() #0 {
entry:
  %stack = alloca %struct.byte_stack*, align 8
  %offset = alloca i64, align 8
  %0 = load %struct.byte_stack*, %struct.byte_stack** @byte_stack_list, align 8
  store %struct.byte_stack* %0, %struct.byte_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %tobool = icmp ne %struct.byte_stack* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string_start = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %2, i32 0, i32 2
  %3 = load i8*, i8** %byte_string_start, align 8
  %4 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %4, i32 0, i32 1
  %5 = load i64, i64* %byte_string, align 8
  %call = call i8* @SDATA(i64 %5)
  %cmp = icmp ne i8* %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %pc = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %6, i32 0, i32 0
  %7 = load i8*, i8** %pc, align 8
  %8 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string_start1 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %8, i32 0, i32 2
  %9 = load i8*, i8** %byte_string_start1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %offset, align 8
  %10 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string2 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %10, i32 0, i32 1
  %11 = load i64, i64* %byte_string2, align 8
  %call3 = call i8* @SDATA(i64 %11)
  %12 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string_start4 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %12, i32 0, i32 2
  store i8* %call3, i8** %byte_string_start4, align 8
  %13 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %byte_string_start5 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %13, i32 0, i32 2
  %14 = load i8*, i8** %byte_string_start5, align 8
  %15 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %pc6 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %16, i32 0, i32 0
  store i8* %add.ptr, i8** %pc6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.byte_stack*, %struct.byte_stack** %stack, align 8
  %next = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %17, i32 0, i32 3
  %18 = load %struct.byte_stack*, %struct.byte_stack** %next, align 8
  store %struct.byte_stack* %18, %struct.byte_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fbyte_code(i64 %bytestr, i64 %vector, i64 %maxdepth) #0 {
entry:
  %bytestr.addr = alloca i64, align 8
  %vector.addr = alloca i64, align 8
  %maxdepth.addr = alloca i64, align 8
  store i64 %bytestr, i64* %bytestr.addr, align 8
  store i64 %vector, i64* %vector.addr, align 8
  store i64 %maxdepth, i64* %maxdepth.addr, align 8
  %0 = load i64, i64* %bytestr.addr, align 8
  %1 = load i64, i64* %vector.addr, align 8
  %2 = load i64, i64* %maxdepth.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @exec_byte_code(i64 %0, i64 %1, i64 %2, i64 %call, i64 0, i64* null)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @exec_byte_code(i64 %bytestr, i64 %vector, i64 %maxdepth, i64 %args_template, i64 %nargs, i64* %args) #0 {
entry:
  %bytestr.addr = alloca i64, align 8
  %vector.addr = alloca i64, align 8
  %maxdepth.addr = alloca i64, align 8
  %args_template.addr = alloca i64, align 8
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %count = alloca i64, align 8
  %op = alloca i32, align 4
  %vectorp = alloca i64*, align 8
  %stack = alloca %struct.byte_stack, align 8
  %top = alloca i64*, align 8
  %result = alloca i64, align 8
  %type = alloca i32, align 4
  %at = alloca i64, align 8
  %rest = alloca i8, align 1
  %mandatory = alloca i32, align 4
  %nonrest = alloca i64, align 8
  %i = alloca i64, align 8
  %i59 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v1134 = alloca i64, align 8
  %flag = alloca i64, align 8
  %v1180 = alloca i64, align 8
  %v1202 = alloca i64, align 8
  %v1217 = alloca i64, align 8
  %v1225 = alloca i64, align 8
  %sym = alloca i64, align 8
  %val259 = alloca i64, align 8
  %v1300 = alloca i64, align 8
  %flag389 = alloca i64, align 8
  %v1422 = alloca i64, align 8
  %flag447 = alloca i64, align 8
  %flag496 = alloca i64, align 8
  %flag547 = alloca i64, align 8
  %flag586 = alloca i64, align 8
  %v1613 = alloca i64, align 8
  %flag630 = alloca i64, align 8
  %v1660 = alloca i64, align 8
  %flag677 = alloca i64, align 8
  %flag725 = alloca i64, align 8
  %flag771 = alloca i64, align 8
  %count1 = alloca i64, align 8
  %v1849 = alloca i64, align 8
  %tag = alloca i64, align 8
  %dest = alloca i32, align 4
  %c = alloca %struct.handler*, align 8
  %c871 = alloca %struct.handler*, align 8
  %dest872 = alloca i32, align 4
  %handler = alloca i64, align 8
  %handlers = alloca i64, align 8
  %body = alloca i64, align 8
  %v1922 = alloca i64, align 8
  %v1933 = alloca i64, align 8
  %v2934 = alloca i64, align 8
  %n = alloca i64, align 8
  %v11039 = alloca i64, align 8
  %v11053 = alloca i64, align 8
  %v11095 = alloca i64, align 8
  %v11103 = alloca i64, align 8
  %v21104 = alloca i64, align 8
  %v11125 = alloca i64, align 8
  %v11133 = alloca i64, align 8
  %v11141 = alloca i64, align 8
  %v11149 = alloca i64, align 8
  %v21150 = alloca i64, align 8
  %v11194 = alloca i64, align 8
  %v11213 = alloca i64, align 8
  %v11232 = alloca i64, align 8
  %v21233 = alloca i64, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  %v11334 = alloca i64, align 8
  %v11342 = alloca i64, align 8
  %v11350 = alloca i64, align 8
  %v11358 = alloca i64, align 8
  %v11373 = alloca i64, align 8
  %v11427 = alloca i64, align 8
  %v11435 = alloca i64, align 8
  %v11470 = alloca i64, align 8
  %v11478 = alloca i64, align 8
  %v11492 = alloca i64, align 8
  %v11500 = alloca i64, align 8
  %v11508 = alloca i64, align 8
  %v11585 = alloca i64, align 8
  %v11593 = alloca i64, align 8
  %c1607 = alloca i32, align 4
  %v11649 = alloca i64, align 8
  %v11657 = alloca i64, align 8
  %v11665 = alloca i64, align 8
  %v11686 = alloca i64, align 8
  %v21687 = alloca i64, align 8
  %v11720 = alloca i64, align 8
  %v11728 = alloca i64, align 8
  %v11736 = alloca i64, align 8
  %v11744 = alloca i64, align 8
  %v11752 = alloca i64, align 8
  %v21753 = alloca i64, align 8
  %n1759 = alloca i64, align 8
  %v11796 = alloca i64, align 8
  %v11804 = alloca i64, align 8
  %v11818 = alloca i64, align 8
  %v11826 = alloca i64, align 8
  %v11834 = alloca i64, align 8
  %v11841 = alloca i64, align 8
  %ptr = alloca i64*, align 8
  %ptr1905 = alloca i64*, align 8
  %ptr1918 = alloca i64*, align 8
  %ptr1936 = alloca i64*, align 8
  %ptr1949 = alloca i64*, align 8
  store i64 %bytestr, i64* %bytestr.addr, align 8
  store i64 %vector, i64* %vector.addr, align 8
  store i64 %maxdepth, i64* %maxdepth.addr, align 8
  store i64 %args_template, i64* %args_template.addr, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %bytestr.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %vector.addr, align 8
  call void @CHECK_VECTOR(i64 %1)
  %2 = load i64, i64* %maxdepth.addr, align 8
  call void @CHECK_NATNUM(i64 %2)
  %3 = load i64, i64* %bytestr.addr, align 8
  %call1 = call zeroext i1 @STRING_MULTIBYTE(i64 %3)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %bytestr.addr, align 8
  %call2 = call i64 @Fstring_as_unibyte(i64 %4)
  store i64 %call2, i64* %bytestr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %vector.addr, align 8
  %call3 = call %struct.Lisp_Vector* @XVECTOR(i64 %5)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %vectorp, align 8
  %6 = load i64, i64* %bytestr.addr, align 8
  %byte_string = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 1
  store i64 %6, i64* %byte_string, align 8
  %7 = load i64, i64* %bytestr.addr, align 8
  %call4 = call i8* @SDATA(i64 %7)
  %byte_string_start = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  store i8* %call4, i8** %byte_string_start, align 8
  %pc = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %call4, i8** %pc, align 8
  %8 = load i64, i64* %maxdepth.addr, align 8
  %shr = ashr i64 %8, 2
  %cmp = icmp sle i64 2048, %shr
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @memory_full(i64 -1) #4
  unreachable

if.end.6:                                         ; preds = %if.end
  %9 = load i64, i64* %maxdepth.addr, align 8
  %shr7 = ashr i64 %9, 2
  %add = add nsw i64 %shr7, 1
  %mul = mul i64 %add, 8
  %10 = alloca i8, i64 %mul
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %top, align 8
  %12 = load %struct.byte_stack*, %struct.byte_stack** @byte_stack_list, align 8
  %next = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 3
  store %struct.byte_stack* %12, %struct.byte_stack** %next, align 8
  store %struct.byte_stack* %stack, %struct.byte_stack** @byte_stack_list, align 8
  %13 = load i64, i64* %args_template.addr, align 8
  %and = and i64 %13, 7
  %conv = trunc i64 %and to i32
  %and8 = and i32 %conv, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %if.then.11, label %if.else.85

if.then.11:                                       ; preds = %if.end.6
  %14 = load i64, i64* %args_template.addr, align 8
  %shr12 = ashr i64 %14, 2
  store i64 %shr12, i64* %at, align 8
  %15 = load i64, i64* %at, align 8
  %and13 = and i64 %15, 128
  %cmp14 = icmp ne i64 %and13, 0
  %frombool = zext i1 %cmp14 to i8
  store i8 %frombool, i8* %rest, align 1
  %16 = load i64, i64* %at, align 8
  %and16 = and i64 %16, 127
  %conv17 = trunc i64 %and16 to i32
  store i32 %conv17, i32* %mandatory, align 4
  %17 = load i64, i64* %at, align 8
  %shr18 = ashr i64 %17, 8
  store i64 %shr18, i64* %nonrest, align 8
  %18 = load i64, i64* %nargs.addr, align 8
  %19 = load i64, i64* %nonrest, align 8
  %cmp19 = icmp sle i64 %18, %19
  br i1 %cmp19, label %if.then.21, label %if.else.56

if.then.21:                                       ; preds = %if.then.11
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %nargs.addr, align 8
  %cmp22 = icmp slt i64 %20, %21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64*, i64** %top, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %incdec.ptr, i64** %top, align 8
  %23 = load i64*, i64** %args.addr, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %top, align 8
  store i64 %24, i64* %25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i64, i64* %i, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %i, align 8
  %27 = load i64*, i64** %args.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %incdec.ptr24, i64** %args.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %nargs.addr, align 8
  %29 = load i32, i32* %mandatory, align 4
  %conv25 = sext i32 %29 to i64
  %cmp26 = icmp slt i64 %28, %conv25
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.end
  %call29 = call i64 @builtin_lisp_symbol(i32 1043)
  %30 = load i32, i32* %mandatory, align 4
  %conv30 = sext i32 %30 to i64
  %shl = shl i64 %conv30, 2
  %add31 = add i64 %shl, 2
  %31 = load i8, i8* %rest, align 1
  %tobool = trunc i8 %31 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %call33 = call i64 @builtin_lisp_symbol(i32 173)
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %32 = load i64, i64* %nonrest, align 8
  %shl34 = shl i64 %32, 2
  %add35 = add i64 %shl34, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call33, %cond.true ], [ %add35, %cond.false ]
  %call36 = call i64 @Fcons(i64 %add31, i64 %cond)
  %33 = load i64, i64* %nargs.addr, align 8
  %shl37 = shl i64 %33, 2
  %add38 = add i64 %shl37, 2
  %call39 = call i64 @list2(i64 %call36, i64 %add38)
  %call40 = call i64 @Fsignal(i64 %call29, i64 %call39)
  br label %if.end.55

if.else:                                          ; preds = %for.end
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.47, %if.else
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %nonrest, align 8
  %cmp42 = icmp slt i64 %34, %35
  br i1 %cmp42, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.41
  %36 = load i64*, i64** %top, align 8
  %incdec.ptr45 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %incdec.ptr45, i64** %top, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %37 = load i64*, i64** %top, align 8
  store i64 %call46, i64* %37, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %38 = load i64, i64* %i, align 8
  %inc48 = add nsw i64 %38, 1
  store i64 %inc48, i64* %i, align 8
  br label %for.cond.41

for.end.49:                                       ; preds = %for.cond.41
  %39 = load i8, i8* %rest, align 1
  %tobool50 = trunc i8 %39 to i1
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %for.end.49
  %40 = load i64*, i64** %top, align 8
  %incdec.ptr52 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %incdec.ptr52, i64** %top, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %41 = load i64*, i64** %top, align 8
  store i64 %call53, i64* %41, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %for.end.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %cond.end
  br label %if.end.84

if.else.56:                                       ; preds = %if.then.11
  %42 = load i8, i8* %rest, align 1
  %tobool57 = trunc i8 %42 to i1
  br i1 %tobool57, label %if.then.58, label %if.else.71

if.then.58:                                       ; preds = %if.else.56
  store i64 0, i64* %i59, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.65, %if.then.58
  %43 = load i64, i64* %i59, align 8
  %44 = load i64, i64* %nonrest, align 8
  %cmp61 = icmp slt i64 %43, %44
  br i1 %cmp61, label %for.body.63, label %for.end.68

for.body.63:                                      ; preds = %for.cond.60
  %45 = load i64*, i64** %top, align 8
  %incdec.ptr64 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %incdec.ptr64, i64** %top, align 8
  %46 = load i64*, i64** %args.addr, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %top, align 8
  store i64 %47, i64* %48, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.63
  %49 = load i64, i64* %i59, align 8
  %inc66 = add nsw i64 %49, 1
  store i64 %inc66, i64* %i59, align 8
  %50 = load i64*, i64** %args.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %incdec.ptr67, i64** %args.addr, align 8
  br label %for.cond.60

for.end.68:                                       ; preds = %for.cond.60
  %51 = load i64*, i64** %top, align 8
  %incdec.ptr69 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %incdec.ptr69, i64** %top, align 8
  %52 = load i64, i64* %nargs.addr, align 8
  %53 = load i64, i64* %nonrest, align 8
  %sub = sub nsw i64 %52, %53
  %54 = load i64*, i64** %args.addr, align 8
  %call70 = call i64 @Flist(i64 %sub, i64* %54)
  %55 = load i64*, i64** %top, align 8
  store i64 %call70, i64* %55, align 8
  br label %if.end.83

if.else.71:                                       ; preds = %if.else.56
  %call72 = call i64 @builtin_lisp_symbol(i32 1043)
  %56 = load i32, i32* %mandatory, align 4
  %conv73 = sext i32 %56 to i64
  %shl74 = shl i64 %conv73, 2
  %add75 = add i64 %shl74, 2
  %57 = load i64, i64* %nonrest, align 8
  %shl76 = shl i64 %57, 2
  %add77 = add i64 %shl76, 2
  %call78 = call i64 @Fcons(i64 %add75, i64 %add77)
  %58 = load i64, i64* %nargs.addr, align 8
  %shl79 = shl i64 %58, 2
  %add80 = add i64 %shl79, 2
  %call81 = call i64 @list2(i64 %call78, i64 %add80)
  %call82 = call i64 @Fsignal(i64 %call72, i64 %call81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.71, %for.end.68
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.55
  br label %if.end.91

if.else.85:                                       ; preds = %if.end.6
  %59 = load i64, i64* %args_template.addr, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %59, %call86
  br i1 %cmp87, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.else.85
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.end.90:                                        ; preds = %if.else.85
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.84
  br label %while.body

while.body:                                       ; preds = %if.end.91
  %pc92 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %60 = load i8*, i8** %pc92, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr93, i8** %pc92, align 8
  %61 = load i8, i8* %60, align 1
  %conv94 = zext i8 %61 to i32
  store i32 %conv94, i32* %op, align 4
  %idxprom = sext i32 %conv94 to i64
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom
  %62 = load i8*, i8** %arrayidx, align 8
  br label %indirectgoto

insn_Bvarref7:                                    ; preds = %indirectgoto
  %pc95 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %63 = load i8*, i8** %pc95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr96, i8** %pc95, align 8
  %64 = load i8, i8* %63, align 1
  %conv97 = zext i8 %64 to i32
  store i32 %conv97, i32* %op, align 4
  %65 = load i32, i32* %op, align 4
  %pc98 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %66 = load i8*, i8** %pc98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr99, i8** %pc98, align 8
  %67 = load i8, i8* %66, align 1
  %conv100 = zext i8 %67 to i32
  %shl101 = shl i32 %conv100, 8
  %add102 = add nsw i32 %65, %shl101
  store i32 %add102, i32* %op, align 4
  br label %varref

insn_Bvarref:                                     ; preds = %indirectgoto
  br label %insn_Bvarref1

insn_Bvarref1:                                    ; preds = %insn_Bvarref, %indirectgoto
  br label %insn_Bvarref2

insn_Bvarref2:                                    ; preds = %insn_Bvarref1, %indirectgoto
  br label %insn_Bvarref3

insn_Bvarref3:                                    ; preds = %insn_Bvarref2, %indirectgoto
  br label %insn_Bvarref4

insn_Bvarref4:                                    ; preds = %insn_Bvarref3, %indirectgoto
  br label %insn_Bvarref5

insn_Bvarref5:                                    ; preds = %insn_Bvarref4, %indirectgoto
  %68 = load i32, i32* %op, align 4
  %sub103 = sub nsw i32 %68, 8
  store i32 %sub103, i32* %op, align 4
  br label %varref

insn_Bvarref6:                                    ; preds = %indirectgoto
  %pc104 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %69 = load i8*, i8** %pc104, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr105, i8** %pc104, align 8
  %70 = load i8, i8* %69, align 1
  %conv106 = zext i8 %70 to i32
  store i32 %conv106, i32* %op, align 4
  br label %varref

varref:                                           ; preds = %insn_Bvarref6, %insn_Bvarref5, %insn_Bvarref7
  %71 = load i32, i32* %op, align 4
  %idxprom107 = sext i32 %71 to i64
  %72 = load i64*, i64** %vectorp, align 8
  %arrayidx108 = getelementptr inbounds i64, i64* %72, i64 %idxprom107
  %73 = load i64, i64* %arrayidx108, align 8
  store i64 %73, i64* %v1, align 8
  %74 = load i64, i64* %v1, align 8
  %and109 = and i64 %74, 7
  %conv110 = trunc i64 %and109 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.125

if.then.113:                                      ; preds = %varref
  %75 = load i64, i64* %v1, align 8
  %sub114 = sub nsw i64 %75, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub114
  %76 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %77 = bitcast %struct.Lisp_Symbol* %76 to i16*
  %bf.load = load i16, i16* %77, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp115 = icmp ne i32 %bf.cast, 4
  br i1 %cmp115, label %if.then.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.113
  %78 = load i64, i64* %v1, align 8
  %sub117 = sub nsw i64 %78, 0
  %add.ptr118 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub117
  %79 = bitcast i8* %add.ptr118 to %struct.Lisp_Symbol*
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %79, i32 0, i32 2
  %value = bitcast %union.anon* %val to i64*
  %80 = load i64, i64* %value, align 8
  store i64 %80, i64* %v2, align 8
  %81 = load i64, i64* %v2, align 8
  %call119 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp120 = icmp eq i64 %81, %call119
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %lor.lhs.false, %if.then.113
  %82 = load i64, i64* %v1, align 8
  %call123 = call i64 @Fsymbol_value(i64 %82)
  store i64 %call123, i64* %v2, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %lor.lhs.false
  br label %if.end.127

if.else.125:                                      ; preds = %varref
  %83 = load i64, i64* %v1, align 8
  %call126 = call i64 @Fsymbol_value(i64 %83)
  store i64 %call126, i64* %v2, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.125, %if.end.124
  %84 = load i64*, i64** %top, align 8
  %incdec.ptr128 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %incdec.ptr128, i64** %top, align 8
  %85 = load i64, i64* %v2, align 8
  %86 = load i64*, i64** %top, align 8
  store i64 %85, i64* %86, align 8
  %pc129 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %87 = load i8*, i8** %pc129, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr130, i8** %pc129, align 8
  %88 = load i8, i8* %87, align 1
  %conv131 = zext i8 %88 to i32
  store i32 %conv131, i32* %op, align 4
  %idxprom132 = sext i32 %conv131 to i64
  %arrayidx133 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom132
  %89 = load i8*, i8** %arrayidx133, align 8
  br label %indirectgoto

insn_Bgotoifnil:                                  ; preds = %indirectgoto
  br label %do.body

do.body:                                          ; preds = %insn_Bgotoifnil
  call void @maybe_gc()
  br label %do.end

do.end:                                           ; preds = %do.body
  %pc135 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %90 = load i8*, i8** %pc135, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr136, i8** %pc135, align 8
  %91 = load i8, i8* %90, align 1
  %conv137 = zext i8 %91 to i32
  store i32 %conv137, i32* %op, align 4
  %92 = load i32, i32* %op, align 4
  %pc138 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %93 = load i8*, i8** %pc138, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr139, i8** %pc138, align 8
  %94 = load i8, i8* %93, align 1
  %conv140 = zext i8 %94 to i32
  %shl141 = shl i32 %conv140, 8
  %add142 = add nsw i32 %92, %shl141
  store i32 %add142, i32* %op, align 4
  %95 = load i64*, i64** %top, align 8
  %incdec.ptr143 = getelementptr inbounds i64, i64* %95, i32 -1
  store i64* %incdec.ptr143, i64** %top, align 8
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %v1134, align 8
  %97 = load i64, i64* %v1134, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %97, %call144
  br i1 %cmp145, label %if.then.147, label %if.end.174

if.then.147:                                      ; preds = %do.end
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  %98 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %98, %call149
  br i1 %cmp150, label %if.else.165, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.148
  %99 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call152 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp153 = icmp eq i64 %99, %call152
  br i1 %cmp153, label %if.then.155, label %if.else.165

if.then.155:                                      ; preds = %land.lhs.true
  %100 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %100, i64* %flag, align 8
  %call156 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call156, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %102 = load i64, i64* %flag, align 8
  %cmp157 = icmp eq i64 %101, %102
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.then.155
  %103 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call160 = call i64 @builtin_lisp_symbol(i32 901)
  %104 = call i64 @Fthrow(i64 %103, i64 %call160) #4
  unreachable

if.end.161:                                       ; preds = %if.then.155
  %call162 = call i64 @builtin_lisp_symbol(i32 782)
  %call163 = call i64 @builtin_lisp_symbol(i32 0)
  %call164 = call i64 @Fsignal(i64 %call162, i64 %call163)
  br label %if.end.169

if.else.165:                                      ; preds = %land.lhs.true, %do.body.148
  %105 = load volatile i8, i8* @pending_signals, align 1
  %tobool166 = trunc i8 %105 to i1
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.else.165
  call void @process_pending_signals()
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.else.165
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.161
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  %byte_string_start171 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %106 = load i8*, i8** %byte_string_start171, align 8
  %107 = load i32, i32* %op, align 4
  %idx.ext = sext i32 %107 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %106, i64 %idx.ext
  %pc173 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr172, i8** %pc173, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %do.end.170, %do.end
  %pc175 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %108 = load i8*, i8** %pc175, align 8
  %incdec.ptr176 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr176, i8** %pc175, align 8
  %109 = load i8, i8* %108, align 1
  %conv177 = zext i8 %109 to i32
  store i32 %conv177, i32* %op, align 4
  %idxprom178 = sext i32 %conv177 to i64
  %arrayidx179 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom178
  %110 = load i8*, i8** %arrayidx179, align 8
  br label %indirectgoto

insn_Bcar:                                        ; preds = %indirectgoto
  %111 = load i64*, i64** %top, align 8
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %v1180, align 8
  %113 = load i64, i64* %v1180, align 8
  %and181 = and i64 %113, 7
  %conv182 = trunc i64 %and181 to i32
  %cmp183 = icmp eq i32 %conv182, 3
  br i1 %cmp183, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %insn_Bcar
  %114 = load i64, i64* %v1180, align 8
  %sub186 = sub nsw i64 %114, 3
  %115 = inttoptr i64 %sub186 to i8*
  %116 = bitcast i8* %115 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %116, i32 0, i32 0
  %117 = load i64, i64* %car, align 8
  %118 = load i64*, i64** %top, align 8
  store i64 %117, i64* %118, align 8
  br label %if.end.196

if.else.187:                                      ; preds = %insn_Bcar
  %119 = load i64, i64* %v1180, align 8
  %call188 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp189 = icmp eq i64 %119, %call188
  br i1 %cmp189, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %if.else.187
  %call192 = call i64 @builtin_lisp_symbol(i32 0)
  %120 = load i64*, i64** %top, align 8
  store i64 %call192, i64* %120, align 8
  br label %if.end.195

if.else.193:                                      ; preds = %if.else.187
  %call194 = call i64 @builtin_lisp_symbol(i32 626)
  %121 = load i64, i64* %v1180, align 8
  %122 = call i64 @wrong_type_argument(i64 %call194, i64 %121) #4
  unreachable

if.end.195:                                       ; preds = %if.then.191
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.185
  %pc197 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %123 = load i8*, i8** %pc197, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr198, i8** %pc197, align 8
  %124 = load i8, i8* %123, align 1
  %conv199 = zext i8 %124 to i32
  store i32 %conv199, i32* %op, align 4
  %idxprom200 = sext i32 %conv199 to i64
  %arrayidx201 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom200
  %125 = load i8*, i8** %arrayidx201, align 8
  br label %indirectgoto

insn_Beq:                                         ; preds = %indirectgoto
  %126 = load i64*, i64** %top, align 8
  %incdec.ptr203 = getelementptr inbounds i64, i64* %126, i32 -1
  store i64* %incdec.ptr203, i64** %top, align 8
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %v1202, align 8
  %128 = load i64, i64* %v1202, align 8
  %129 = load i64*, i64** %top, align 8
  %130 = load i64, i64* %129, align 8
  %cmp204 = icmp eq i64 %128, %130
  br i1 %cmp204, label %cond.true.206, label %cond.false.208

cond.true.206:                                    ; preds = %insn_Beq
  %call207 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.210

cond.false.208:                                   ; preds = %insn_Beq
  %call209 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.206
  %cond211 = phi i64 [ %call207, %cond.true.206 ], [ %call209, %cond.false.208 ]
  %131 = load i64*, i64** %top, align 8
  store i64 %cond211, i64* %131, align 8
  %pc212 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %132 = load i8*, i8** %pc212, align 8
  %incdec.ptr213 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr213, i8** %pc212, align 8
  %133 = load i8, i8* %132, align 1
  %conv214 = zext i8 %133 to i32
  store i32 %conv214, i32* %op, align 4
  %idxprom215 = sext i32 %conv214 to i64
  %arrayidx216 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom215
  %134 = load i8*, i8** %arrayidx216, align 8
  br label %indirectgoto

insn_Bmemq:                                       ; preds = %indirectgoto
  %135 = load i64*, i64** %top, align 8
  %incdec.ptr218 = getelementptr inbounds i64, i64* %135, i32 -1
  store i64* %incdec.ptr218, i64** %top, align 8
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %v1217, align 8
  %137 = load i64*, i64** %top, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %v1217, align 8
  %call219 = call i64 @Fmemq(i64 %138, i64 %139)
  %140 = load i64*, i64** %top, align 8
  store i64 %call219, i64* %140, align 8
  %pc220 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %141 = load i8*, i8** %pc220, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr221, i8** %pc220, align 8
  %142 = load i8, i8* %141, align 1
  %conv222 = zext i8 %142 to i32
  store i32 %conv222, i32* %op, align 4
  %idxprom223 = sext i32 %conv222 to i64
  %arrayidx224 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom223
  %143 = load i8*, i8** %arrayidx224, align 8
  br label %indirectgoto

insn_Bcdr:                                        ; preds = %indirectgoto
  %144 = load i64*, i64** %top, align 8
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %v1225, align 8
  %146 = load i64, i64* %v1225, align 8
  %and226 = and i64 %146, 7
  %conv227 = trunc i64 %and226 to i32
  %cmp228 = icmp eq i32 %conv227, 3
  br i1 %cmp228, label %if.then.230, label %if.else.232

if.then.230:                                      ; preds = %insn_Bcdr
  %147 = load i64, i64* %v1225, align 8
  %sub231 = sub nsw i64 %147, 3
  %148 = inttoptr i64 %sub231 to i8*
  %149 = bitcast i8* %148 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %149, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %150 = load i64, i64* %cdr, align 8
  %151 = load i64*, i64** %top, align 8
  store i64 %150, i64* %151, align 8
  br label %if.end.241

if.else.232:                                      ; preds = %insn_Bcdr
  %152 = load i64, i64* %v1225, align 8
  %call233 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp234 = icmp eq i64 %152, %call233
  br i1 %cmp234, label %if.then.236, label %if.else.238

if.then.236:                                      ; preds = %if.else.232
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %153 = load i64*, i64** %top, align 8
  store i64 %call237, i64* %153, align 8
  br label %if.end.240

if.else.238:                                      ; preds = %if.else.232
  %call239 = call i64 @builtin_lisp_symbol(i32 626)
  %154 = load i64, i64* %v1225, align 8
  %155 = call i64 @wrong_type_argument(i64 %call239, i64 %154) #4
  unreachable

if.end.240:                                       ; preds = %if.then.236
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.230
  %pc242 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %156 = load i8*, i8** %pc242, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr243, i8** %pc242, align 8
  %157 = load i8, i8* %156, align 1
  %conv244 = zext i8 %157 to i32
  store i32 %conv244, i32* %op, align 4
  %idxprom245 = sext i32 %conv244 to i64
  %arrayidx246 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom245
  %158 = load i8*, i8** %arrayidx246, align 8
  br label %indirectgoto

insn_Bvarset:                                     ; preds = %indirectgoto
  br label %insn_Bvarset1

insn_Bvarset1:                                    ; preds = %insn_Bvarset, %indirectgoto
  br label %insn_Bvarset2

insn_Bvarset2:                                    ; preds = %insn_Bvarset1, %indirectgoto
  br label %insn_Bvarset3

insn_Bvarset3:                                    ; preds = %insn_Bvarset2, %indirectgoto
  br label %insn_Bvarset4

insn_Bvarset4:                                    ; preds = %insn_Bvarset3, %indirectgoto
  br label %insn_Bvarset5

insn_Bvarset5:                                    ; preds = %insn_Bvarset4, %indirectgoto
  %159 = load i32, i32* %op, align 4
  %sub247 = sub nsw i32 %159, 16
  store i32 %sub247, i32* %op, align 4
  br label %varset

insn_Bvarset7:                                    ; preds = %indirectgoto
  %pc248 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %160 = load i8*, i8** %pc248, align 8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr249, i8** %pc248, align 8
  %161 = load i8, i8* %160, align 1
  %conv250 = zext i8 %161 to i32
  store i32 %conv250, i32* %op, align 4
  %162 = load i32, i32* %op, align 4
  %pc251 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %163 = load i8*, i8** %pc251, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr252, i8** %pc251, align 8
  %164 = load i8, i8* %163, align 1
  %conv253 = zext i8 %164 to i32
  %shl254 = shl i32 %conv253, 8
  %add255 = add nsw i32 %162, %shl254
  store i32 %add255, i32* %op, align 4
  br label %varset

insn_Bvarset6:                                    ; preds = %indirectgoto
  %pc256 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %165 = load i8*, i8** %pc256, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %incdec.ptr257, i8** %pc256, align 8
  %166 = load i8, i8* %165, align 1
  %conv258 = zext i8 %166 to i32
  store i32 %conv258, i32* %op, align 4
  br label %varset

varset:                                           ; preds = %insn_Bvarset6, %insn_Bvarset7, %insn_Bvarset5
  %167 = load i32, i32* %op, align 4
  %idxprom260 = sext i32 %167 to i64
  %168 = load i64*, i64** %vectorp, align 8
  %arrayidx261 = getelementptr inbounds i64, i64* %168, i64 %idxprom260
  %169 = load i64, i64* %arrayidx261, align 8
  store i64 %169, i64* %sym, align 8
  %170 = load i64*, i64** %top, align 8
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %val259, align 8
  %172 = load i64, i64* %sym, align 8
  %and262 = and i64 %172, 7
  %conv263 = trunc i64 %and262 to i32
  %cmp264 = icmp eq i32 %conv263, 0
  br i1 %cmp264, label %land.lhs.true.266, label %if.else.291

land.lhs.true.266:                                ; preds = %varset
  %173 = load i64, i64* %val259, align 8
  %call267 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp268 = icmp eq i64 %173, %call267
  br i1 %cmp268, label %if.else.291, label %land.lhs.true.270

land.lhs.true.270:                                ; preds = %land.lhs.true.266
  %174 = load i64, i64* %sym, align 8
  %sub271 = sub nsw i64 %174, 0
  %add.ptr272 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub271
  %175 = bitcast i8* %add.ptr272 to %struct.Lisp_Symbol*
  %176 = bitcast %struct.Lisp_Symbol* %175 to i16*
  %bf.load273 = load i16, i16* %176, align 8
  %bf.lshr274 = lshr i16 %bf.load273, 1
  %bf.clear275 = and i16 %bf.lshr274, 7
  %bf.cast276 = zext i16 %bf.clear275 to i32
  %tobool277 = icmp ne i32 %bf.cast276, 0
  br i1 %tobool277, label %if.else.291, label %land.lhs.true.278

land.lhs.true.278:                                ; preds = %land.lhs.true.270
  %177 = load i64, i64* %sym, align 8
  %sub279 = sub nsw i64 %177, 0
  %add.ptr280 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub279
  %178 = bitcast i8* %add.ptr280 to %struct.Lisp_Symbol*
  %179 = bitcast %struct.Lisp_Symbol* %178 to i16*
  %bf.load281 = load i16, i16* %179, align 8
  %bf.lshr282 = lshr i16 %bf.load281, 4
  %bf.clear283 = and i16 %bf.lshr282, 3
  %bf.cast284 = zext i16 %bf.clear283 to i32
  %tobool285 = icmp ne i32 %bf.cast284, 0
  br i1 %tobool285, label %if.else.291, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.278
  %180 = load i64, i64* %val259, align 8
  %181 = load i64, i64* %sym, align 8
  %sub287 = sub nsw i64 %181, 0
  %add.ptr288 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub287
  %182 = bitcast i8* %add.ptr288 to %struct.Lisp_Symbol*
  %val289 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %182, i32 0, i32 2
  %value290 = bitcast %union.anon* %val289 to i64*
  store i64 %180, i64* %value290, align 8
  br label %if.end.293

if.else.291:                                      ; preds = %land.lhs.true.278, %land.lhs.true.270, %land.lhs.true.266, %varset
  %183 = load i64, i64* %sym, align 8
  %184 = load i64, i64* %val259, align 8
  %call292 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_internal(i64 %183, i64 %184, i64 %call292, i1 zeroext false)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.291, %if.then.286
  %185 = load i64*, i64** %top, align 8
  %incdec.ptr294 = getelementptr inbounds i64, i64* %185, i32 -1
  store i64* %incdec.ptr294, i64** %top, align 8
  %186 = load i64, i64* %185, align 8
  %pc295 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %187 = load i8*, i8** %pc295, align 8
  %incdec.ptr296 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr296, i8** %pc295, align 8
  %188 = load i8, i8* %187, align 1
  %conv297 = zext i8 %188 to i32
  store i32 %conv297, i32* %op, align 4
  %idxprom298 = sext i32 %conv297 to i64
  %arrayidx299 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom298
  %189 = load i8*, i8** %arrayidx299, align 8
  br label %indirectgoto

insn_Bdup:                                        ; preds = %indirectgoto
  %190 = load i64*, i64** %top, align 8
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %v1300, align 8
  %192 = load i64*, i64** %top, align 8
  %incdec.ptr301 = getelementptr inbounds i64, i64* %192, i32 1
  store i64* %incdec.ptr301, i64** %top, align 8
  %193 = load i64, i64* %v1300, align 8
  %194 = load i64*, i64** %top, align 8
  store i64 %193, i64* %194, align 8
  %pc302 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %195 = load i8*, i8** %pc302, align 8
  %incdec.ptr303 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr303, i8** %pc302, align 8
  %196 = load i8, i8* %195, align 1
  %conv304 = zext i8 %196 to i32
  store i32 %conv304, i32* %op, align 4
  %idxprom305 = sext i32 %conv304 to i64
  %arrayidx306 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom305
  %197 = load i8*, i8** %arrayidx306, align 8
  br label %indirectgoto

insn_Bvarbind6:                                   ; preds = %indirectgoto
  %pc307 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %198 = load i8*, i8** %pc307, align 8
  %incdec.ptr308 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr308, i8** %pc307, align 8
  %199 = load i8, i8* %198, align 1
  %conv309 = zext i8 %199 to i32
  store i32 %conv309, i32* %op, align 4
  br label %varbind

insn_Bvarbind7:                                   ; preds = %indirectgoto
  %pc310 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %200 = load i8*, i8** %pc310, align 8
  %incdec.ptr311 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %incdec.ptr311, i8** %pc310, align 8
  %201 = load i8, i8* %200, align 1
  %conv312 = zext i8 %201 to i32
  store i32 %conv312, i32* %op, align 4
  %202 = load i32, i32* %op, align 4
  %pc313 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %203 = load i8*, i8** %pc313, align 8
  %incdec.ptr314 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr314, i8** %pc313, align 8
  %204 = load i8, i8* %203, align 1
  %conv315 = zext i8 %204 to i32
  %shl316 = shl i32 %conv315, 8
  %add317 = add nsw i32 %202, %shl316
  store i32 %add317, i32* %op, align 4
  br label %varbind

insn_Bvarbind:                                    ; preds = %indirectgoto
  br label %insn_Bvarbind1

insn_Bvarbind1:                                   ; preds = %insn_Bvarbind, %indirectgoto
  br label %insn_Bvarbind2

insn_Bvarbind2:                                   ; preds = %insn_Bvarbind1, %indirectgoto
  br label %insn_Bvarbind3

insn_Bvarbind3:                                   ; preds = %insn_Bvarbind2, %indirectgoto
  br label %insn_Bvarbind4

insn_Bvarbind4:                                   ; preds = %insn_Bvarbind3, %indirectgoto
  br label %insn_Bvarbind5

insn_Bvarbind5:                                   ; preds = %insn_Bvarbind4, %indirectgoto
  %205 = load i32, i32* %op, align 4
  %sub318 = sub nsw i32 %205, 24
  store i32 %sub318, i32* %op, align 4
  br label %varbind

varbind:                                          ; preds = %insn_Bvarbind5, %insn_Bvarbind7, %insn_Bvarbind6
  %206 = load i32, i32* %op, align 4
  %idxprom319 = sext i32 %206 to i64
  %207 = load i64*, i64** %vectorp, align 8
  %arrayidx320 = getelementptr inbounds i64, i64* %207, i64 %idxprom319
  %208 = load i64, i64* %arrayidx320, align 8
  %209 = load i64*, i64** %top, align 8
  %incdec.ptr321 = getelementptr inbounds i64, i64* %209, i32 -1
  store i64* %incdec.ptr321, i64** %top, align 8
  %210 = load i64, i64* %209, align 8
  call void @specbind(i64 %208, i64 %210)
  %pc322 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %211 = load i8*, i8** %pc322, align 8
  %incdec.ptr323 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr323, i8** %pc322, align 8
  %212 = load i8, i8* %211, align 1
  %conv324 = zext i8 %212 to i32
  store i32 %conv324, i32* %op, align 4
  %idxprom325 = sext i32 %conv324 to i64
  %arrayidx326 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom325
  %213 = load i8*, i8** %arrayidx326, align 8
  br label %indirectgoto

insn_Bcall6:                                      ; preds = %indirectgoto
  %pc327 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %214 = load i8*, i8** %pc327, align 8
  %incdec.ptr328 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr328, i8** %pc327, align 8
  %215 = load i8, i8* %214, align 1
  %conv329 = zext i8 %215 to i32
  store i32 %conv329, i32* %op, align 4
  br label %docall

insn_Bcall7:                                      ; preds = %indirectgoto
  %pc330 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %216 = load i8*, i8** %pc330, align 8
  %incdec.ptr331 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr331, i8** %pc330, align 8
  %217 = load i8, i8* %216, align 1
  %conv332 = zext i8 %217 to i32
  store i32 %conv332, i32* %op, align 4
  %218 = load i32, i32* %op, align 4
  %pc333 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %219 = load i8*, i8** %pc333, align 8
  %incdec.ptr334 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr334, i8** %pc333, align 8
  %220 = load i8, i8* %219, align 1
  %conv335 = zext i8 %220 to i32
  %shl336 = shl i32 %conv335, 8
  %add337 = add nsw i32 %218, %shl336
  store i32 %add337, i32* %op, align 4
  br label %docall

insn_Bcall:                                       ; preds = %indirectgoto
  br label %insn_Bcall1

insn_Bcall1:                                      ; preds = %insn_Bcall, %indirectgoto
  br label %insn_Bcall2

insn_Bcall2:                                      ; preds = %insn_Bcall1, %indirectgoto
  br label %insn_Bcall3

insn_Bcall3:                                      ; preds = %insn_Bcall2, %indirectgoto
  br label %insn_Bcall4

insn_Bcall4:                                      ; preds = %insn_Bcall3, %indirectgoto
  br label %insn_Bcall5

insn_Bcall5:                                      ; preds = %insn_Bcall4, %indirectgoto
  %221 = load i32, i32* %op, align 4
  %sub338 = sub nsw i32 %221, 32
  store i32 %sub338, i32* %op, align 4
  br label %docall

docall:                                           ; preds = %insn_Bcall5, %insn_Bcall7, %insn_Bcall6
  %222 = load i32, i32* %op, align 4
  %223 = load i64*, i64** %top, align 8
  %idx.ext339 = sext i32 %222 to i64
  %idx.neg = sub i64 0, %idx.ext339
  %add.ptr340 = getelementptr inbounds i64, i64* %223, i64 %idx.neg
  store i64* %add.ptr340, i64** %top, align 8
  %224 = load i32, i32* %op, align 4
  %add341 = add nsw i32 %224, 1
  %conv342 = sext i32 %add341 to i64
  %225 = load i64*, i64** %top, align 8
  %call343 = call i64 @Ffuncall(i64 %conv342, i64* %225)
  %226 = load i64*, i64** %top, align 8
  store i64 %call343, i64* %226, align 8
  %pc344 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %227 = load i8*, i8** %pc344, align 8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr345, i8** %pc344, align 8
  %228 = load i8, i8* %227, align 1
  %conv346 = zext i8 %228 to i32
  store i32 %conv346, i32* %op, align 4
  %idxprom347 = sext i32 %conv346 to i64
  %arrayidx348 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom347
  %229 = load i8*, i8** %arrayidx348, align 8
  br label %indirectgoto

insn_Bunbind6:                                    ; preds = %indirectgoto
  %pc349 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %230 = load i8*, i8** %pc349, align 8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr350, i8** %pc349, align 8
  %231 = load i8, i8* %230, align 1
  %conv351 = zext i8 %231 to i32
  store i32 %conv351, i32* %op, align 4
  br label %dounbind

insn_Bunbind7:                                    ; preds = %indirectgoto
  %pc352 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %232 = load i8*, i8** %pc352, align 8
  %incdec.ptr353 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr353, i8** %pc352, align 8
  %233 = load i8, i8* %232, align 1
  %conv354 = zext i8 %233 to i32
  store i32 %conv354, i32* %op, align 4
  %234 = load i32, i32* %op, align 4
  %pc355 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %235 = load i8*, i8** %pc355, align 8
  %incdec.ptr356 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr356, i8** %pc355, align 8
  %236 = load i8, i8* %235, align 1
  %conv357 = zext i8 %236 to i32
  %shl358 = shl i32 %conv357, 8
  %add359 = add nsw i32 %234, %shl358
  store i32 %add359, i32* %op, align 4
  br label %dounbind

insn_Bunbind:                                     ; preds = %indirectgoto
  br label %insn_Bunbind1

insn_Bunbind1:                                    ; preds = %insn_Bunbind, %indirectgoto
  br label %insn_Bunbind2

insn_Bunbind2:                                    ; preds = %insn_Bunbind1, %indirectgoto
  br label %insn_Bunbind3

insn_Bunbind3:                                    ; preds = %insn_Bunbind2, %indirectgoto
  br label %insn_Bunbind4

insn_Bunbind4:                                    ; preds = %insn_Bunbind3, %indirectgoto
  br label %insn_Bunbind5

insn_Bunbind5:                                    ; preds = %insn_Bunbind4, %indirectgoto
  %237 = load i32, i32* %op, align 4
  %sub360 = sub nsw i32 %237, 40
  store i32 %sub360, i32* %op, align 4
  br label %dounbind

dounbind:                                         ; preds = %insn_Bunbind5, %insn_Bunbind7, %insn_Bunbind6
  %call361 = call i64 @SPECPDL_INDEX()
  %238 = load i32, i32* %op, align 4
  %conv362 = sext i32 %238 to i64
  %sub363 = sub nsw i64 %call361, %conv362
  %call364 = call i64 @builtin_lisp_symbol(i32 0)
  %call365 = call i64 @unbind_to(i64 %sub363, i64 %call364)
  %pc366 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %239 = load i8*, i8** %pc366, align 8
  %incdec.ptr367 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr367, i8** %pc366, align 8
  %240 = load i8, i8* %239, align 1
  %conv368 = zext i8 %240 to i32
  store i32 %conv368, i32* %op, align 4
  %idxprom369 = sext i32 %conv368 to i64
  %arrayidx370 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom369
  %241 = load i8*, i8** %arrayidx370, align 8
  br label %indirectgoto

insn_Bunbind_all:                                 ; preds = %indirectgoto
  %242 = load i64, i64* %count, align 8
  %call371 = call i64 @builtin_lisp_symbol(i32 0)
  %call372 = call i64 @unbind_to(i64 %242, i64 %call371)
  %pc373 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %243 = load i8*, i8** %pc373, align 8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %incdec.ptr374, i8** %pc373, align 8
  %244 = load i8, i8* %243, align 1
  %conv375 = zext i8 %244 to i32
  store i32 %conv375, i32* %op, align 4
  %idxprom376 = sext i32 %conv375 to i64
  %arrayidx377 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom376
  %245 = load i8*, i8** %arrayidx377, align 8
  br label %indirectgoto

insn_Bgoto:                                       ; preds = %indirectgoto
  br label %do.body.378

do.body.378:                                      ; preds = %insn_Bgoto
  call void @maybe_gc()
  br label %do.end.379

do.end.379:                                       ; preds = %do.body.378
  br label %do.body.380

do.body.380:                                      ; preds = %do.end.379
  %246 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call381 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp382 = icmp eq i64 %246, %call381
  br i1 %cmp382, label %if.else.399, label %land.lhs.true.384

land.lhs.true.384:                                ; preds = %do.body.380
  %247 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call385 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp386 = icmp eq i64 %247, %call385
  br i1 %cmp386, label %if.then.388, label %if.else.399

if.then.388:                                      ; preds = %land.lhs.true.384
  %248 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %248, i64* %flag389, align 8
  %call390 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call390, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %249 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %250 = load i64, i64* %flag389, align 8
  %cmp391 = icmp eq i64 %249, %250
  br i1 %cmp391, label %if.then.393, label %if.end.395

if.then.393:                                      ; preds = %if.then.388
  %251 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call394 = call i64 @builtin_lisp_symbol(i32 901)
  %252 = call i64 @Fthrow(i64 %251, i64 %call394) #4
  unreachable

if.end.395:                                       ; preds = %if.then.388
  %call396 = call i64 @builtin_lisp_symbol(i32 782)
  %call397 = call i64 @builtin_lisp_symbol(i32 0)
  %call398 = call i64 @Fsignal(i64 %call396, i64 %call397)
  br label %if.end.403

if.else.399:                                      ; preds = %land.lhs.true.384, %do.body.380
  %253 = load volatile i8, i8* @pending_signals, align 1
  %tobool400 = trunc i8 %253 to i1
  br i1 %tobool400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.else.399
  call void @process_pending_signals()
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %if.else.399
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %if.end.395
  br label %do.end.404

do.end.404:                                       ; preds = %if.end.403
  %pc405 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %254 = load i8*, i8** %pc405, align 8
  %incdec.ptr406 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr406, i8** %pc405, align 8
  %255 = load i8, i8* %254, align 1
  %conv407 = zext i8 %255 to i32
  store i32 %conv407, i32* %op, align 4
  %256 = load i32, i32* %op, align 4
  %pc408 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %257 = load i8*, i8** %pc408, align 8
  %incdec.ptr409 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr409, i8** %pc408, align 8
  %258 = load i8, i8* %257, align 1
  %conv410 = zext i8 %258 to i32
  %shl411 = shl i32 %conv410, 8
  %add412 = add nsw i32 %256, %shl411
  store i32 %add412, i32* %op, align 4
  %byte_string_start413 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %259 = load i8*, i8** %byte_string_start413, align 8
  %260 = load i32, i32* %op, align 4
  %idx.ext414 = sext i32 %260 to i64
  %add.ptr415 = getelementptr inbounds i8, i8* %259, i64 %idx.ext414
  %pc416 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr415, i8** %pc416, align 8
  %pc417 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %261 = load i8*, i8** %pc417, align 8
  %incdec.ptr418 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr418, i8** %pc417, align 8
  %262 = load i8, i8* %261, align 1
  %conv419 = zext i8 %262 to i32
  store i32 %conv419, i32* %op, align 4
  %idxprom420 = sext i32 %conv419 to i64
  %arrayidx421 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom420
  %263 = load i8*, i8** %arrayidx421, align 8
  br label %indirectgoto

insn_Bgotoifnonnil:                               ; preds = %indirectgoto
  br label %do.body.423

do.body.423:                                      ; preds = %insn_Bgotoifnonnil
  call void @maybe_gc()
  br label %do.end.424

do.end.424:                                       ; preds = %do.body.423
  %pc425 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %264 = load i8*, i8** %pc425, align 8
  %incdec.ptr426 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr426, i8** %pc425, align 8
  %265 = load i8, i8* %264, align 1
  %conv427 = zext i8 %265 to i32
  store i32 %conv427, i32* %op, align 4
  %266 = load i32, i32* %op, align 4
  %pc428 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %267 = load i8*, i8** %pc428, align 8
  %incdec.ptr429 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr429, i8** %pc428, align 8
  %268 = load i8, i8* %267, align 1
  %conv430 = zext i8 %268 to i32
  %shl431 = shl i32 %conv430, 8
  %add432 = add nsw i32 %266, %shl431
  store i32 %add432, i32* %op, align 4
  %269 = load i64*, i64** %top, align 8
  %incdec.ptr433 = getelementptr inbounds i64, i64* %269, i32 -1
  store i64* %incdec.ptr433, i64** %top, align 8
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %v1422, align 8
  %271 = load i64, i64* %v1422, align 8
  %call434 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp435 = icmp eq i64 %271, %call434
  br i1 %cmp435, label %if.end.467, label %if.then.437

if.then.437:                                      ; preds = %do.end.424
  br label %do.body.438

do.body.438:                                      ; preds = %if.then.437
  %272 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call439 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp440 = icmp eq i64 %272, %call439
  br i1 %cmp440, label %if.else.457, label %land.lhs.true.442

land.lhs.true.442:                                ; preds = %do.body.438
  %273 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call443 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp444 = icmp eq i64 %273, %call443
  br i1 %cmp444, label %if.then.446, label %if.else.457

if.then.446:                                      ; preds = %land.lhs.true.442
  %274 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %274, i64* %flag447, align 8
  %call448 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call448, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %275 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %276 = load i64, i64* %flag447, align 8
  %cmp449 = icmp eq i64 %275, %276
  br i1 %cmp449, label %if.then.451, label %if.end.453

if.then.451:                                      ; preds = %if.then.446
  %277 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call452 = call i64 @builtin_lisp_symbol(i32 901)
  %278 = call i64 @Fthrow(i64 %277, i64 %call452) #4
  unreachable

if.end.453:                                       ; preds = %if.then.446
  %call454 = call i64 @builtin_lisp_symbol(i32 782)
  %call455 = call i64 @builtin_lisp_symbol(i32 0)
  %call456 = call i64 @Fsignal(i64 %call454, i64 %call455)
  br label %if.end.461

if.else.457:                                      ; preds = %land.lhs.true.442, %do.body.438
  %279 = load volatile i8, i8* @pending_signals, align 1
  %tobool458 = trunc i8 %279 to i1
  br i1 %tobool458, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %if.else.457
  call void @process_pending_signals()
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.459, %if.else.457
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.453
  br label %do.end.462

do.end.462:                                       ; preds = %if.end.461
  %byte_string_start463 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %280 = load i8*, i8** %byte_string_start463, align 8
  %281 = load i32, i32* %op, align 4
  %idx.ext464 = sext i32 %281 to i64
  %add.ptr465 = getelementptr inbounds i8, i8* %280, i64 %idx.ext464
  %pc466 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr465, i8** %pc466, align 8
  br label %if.end.467

if.end.467:                                       ; preds = %do.end.462, %do.end.424
  %pc468 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %282 = load i8*, i8** %pc468, align 8
  %incdec.ptr469 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr469, i8** %pc468, align 8
  %283 = load i8, i8* %282, align 1
  %conv470 = zext i8 %283 to i32
  store i32 %conv470, i32* %op, align 4
  %idxprom471 = sext i32 %conv470 to i64
  %arrayidx472 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom471
  %284 = load i8*, i8** %arrayidx472, align 8
  br label %indirectgoto

insn_Bgotoifnilelsepop:                           ; preds = %indirectgoto
  br label %do.body.473

do.body.473:                                      ; preds = %insn_Bgotoifnilelsepop
  call void @maybe_gc()
  br label %do.end.474

do.end.474:                                       ; preds = %do.body.473
  %pc475 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %285 = load i8*, i8** %pc475, align 8
  %incdec.ptr476 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %incdec.ptr476, i8** %pc475, align 8
  %286 = load i8, i8* %285, align 1
  %conv477 = zext i8 %286 to i32
  store i32 %conv477, i32* %op, align 4
  %287 = load i32, i32* %op, align 4
  %pc478 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %288 = load i8*, i8** %pc478, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr479, i8** %pc478, align 8
  %289 = load i8, i8* %288, align 1
  %conv480 = zext i8 %289 to i32
  %shl481 = shl i32 %conv480, 8
  %add482 = add nsw i32 %287, %shl481
  store i32 %add482, i32* %op, align 4
  %290 = load i64*, i64** %top, align 8
  %291 = load i64, i64* %290, align 8
  %call483 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp484 = icmp eq i64 %291, %call483
  br i1 %cmp484, label %if.then.486, label %if.else.516

if.then.486:                                      ; preds = %do.end.474
  br label %do.body.487

do.body.487:                                      ; preds = %if.then.486
  %292 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call488 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp489 = icmp eq i64 %292, %call488
  br i1 %cmp489, label %if.else.506, label %land.lhs.true.491

land.lhs.true.491:                                ; preds = %do.body.487
  %293 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call492 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp493 = icmp eq i64 %293, %call492
  br i1 %cmp493, label %if.then.495, label %if.else.506

if.then.495:                                      ; preds = %land.lhs.true.491
  %294 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %294, i64* %flag496, align 8
  %call497 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call497, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %295 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %296 = load i64, i64* %flag496, align 8
  %cmp498 = icmp eq i64 %295, %296
  br i1 %cmp498, label %if.then.500, label %if.end.502

if.then.500:                                      ; preds = %if.then.495
  %297 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call501 = call i64 @builtin_lisp_symbol(i32 901)
  %298 = call i64 @Fthrow(i64 %297, i64 %call501) #4
  unreachable

if.end.502:                                       ; preds = %if.then.495
  %call503 = call i64 @builtin_lisp_symbol(i32 782)
  %call504 = call i64 @builtin_lisp_symbol(i32 0)
  %call505 = call i64 @Fsignal(i64 %call503, i64 %call504)
  br label %if.end.510

if.else.506:                                      ; preds = %land.lhs.true.491, %do.body.487
  %299 = load volatile i8, i8* @pending_signals, align 1
  %tobool507 = trunc i8 %299 to i1
  br i1 %tobool507, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %if.else.506
  call void @process_pending_signals()
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.508, %if.else.506
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.end.502
  br label %do.end.511

do.end.511:                                       ; preds = %if.end.510
  %byte_string_start512 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %300 = load i8*, i8** %byte_string_start512, align 8
  %301 = load i32, i32* %op, align 4
  %idx.ext513 = sext i32 %301 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %300, i64 %idx.ext513
  %pc515 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr514, i8** %pc515, align 8
  br label %if.end.518

if.else.516:                                      ; preds = %do.end.474
  %302 = load i64*, i64** %top, align 8
  %add.ptr517 = getelementptr inbounds i64, i64* %302, i64 -1
  store i64* %add.ptr517, i64** %top, align 8
  br label %if.end.518

if.end.518:                                       ; preds = %if.else.516, %do.end.511
  %pc519 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %303 = load i8*, i8** %pc519, align 8
  %incdec.ptr520 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %incdec.ptr520, i8** %pc519, align 8
  %304 = load i8, i8* %303, align 1
  %conv521 = zext i8 %304 to i32
  store i32 %conv521, i32* %op, align 4
  %idxprom522 = sext i32 %conv521 to i64
  %arrayidx523 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom522
  %305 = load i8*, i8** %arrayidx523, align 8
  br label %indirectgoto

insn_Bgotoifnonnilelsepop:                        ; preds = %indirectgoto
  br label %do.body.524

do.body.524:                                      ; preds = %insn_Bgotoifnonnilelsepop
  call void @maybe_gc()
  br label %do.end.525

do.end.525:                                       ; preds = %do.body.524
  %pc526 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %306 = load i8*, i8** %pc526, align 8
  %incdec.ptr527 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %incdec.ptr527, i8** %pc526, align 8
  %307 = load i8, i8* %306, align 1
  %conv528 = zext i8 %307 to i32
  store i32 %conv528, i32* %op, align 4
  %308 = load i32, i32* %op, align 4
  %pc529 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %309 = load i8*, i8** %pc529, align 8
  %incdec.ptr530 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %incdec.ptr530, i8** %pc529, align 8
  %310 = load i8, i8* %309, align 1
  %conv531 = zext i8 %310 to i32
  %shl532 = shl i32 %conv531, 8
  %add533 = add nsw i32 %308, %shl532
  store i32 %add533, i32* %op, align 4
  %311 = load i64*, i64** %top, align 8
  %312 = load i64, i64* %311, align 8
  %call534 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp535 = icmp eq i64 %312, %call534
  br i1 %cmp535, label %if.else.567, label %if.then.537

if.then.537:                                      ; preds = %do.end.525
  br label %do.body.538

do.body.538:                                      ; preds = %if.then.537
  %313 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call539 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp540 = icmp eq i64 %313, %call539
  br i1 %cmp540, label %if.else.557, label %land.lhs.true.542

land.lhs.true.542:                                ; preds = %do.body.538
  %314 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call543 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp544 = icmp eq i64 %314, %call543
  br i1 %cmp544, label %if.then.546, label %if.else.557

if.then.546:                                      ; preds = %land.lhs.true.542
  %315 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %315, i64* %flag547, align 8
  %call548 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call548, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %316 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %317 = load i64, i64* %flag547, align 8
  %cmp549 = icmp eq i64 %316, %317
  br i1 %cmp549, label %if.then.551, label %if.end.553

if.then.551:                                      ; preds = %if.then.546
  %318 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call552 = call i64 @builtin_lisp_symbol(i32 901)
  %319 = call i64 @Fthrow(i64 %318, i64 %call552) #4
  unreachable

if.end.553:                                       ; preds = %if.then.546
  %call554 = call i64 @builtin_lisp_symbol(i32 782)
  %call555 = call i64 @builtin_lisp_symbol(i32 0)
  %call556 = call i64 @Fsignal(i64 %call554, i64 %call555)
  br label %if.end.561

if.else.557:                                      ; preds = %land.lhs.true.542, %do.body.538
  %320 = load volatile i8, i8* @pending_signals, align 1
  %tobool558 = trunc i8 %320 to i1
  br i1 %tobool558, label %if.then.559, label %if.end.560

if.then.559:                                      ; preds = %if.else.557
  call void @process_pending_signals()
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.559, %if.else.557
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %if.end.553
  br label %do.end.562

do.end.562:                                       ; preds = %if.end.561
  %byte_string_start563 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %321 = load i8*, i8** %byte_string_start563, align 8
  %322 = load i32, i32* %op, align 4
  %idx.ext564 = sext i32 %322 to i64
  %add.ptr565 = getelementptr inbounds i8, i8* %321, i64 %idx.ext564
  %pc566 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr565, i8** %pc566, align 8
  br label %if.end.569

if.else.567:                                      ; preds = %do.end.525
  %323 = load i64*, i64** %top, align 8
  %add.ptr568 = getelementptr inbounds i64, i64* %323, i64 -1
  store i64* %add.ptr568, i64** %top, align 8
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.567, %do.end.562
  %pc570 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %324 = load i8*, i8** %pc570, align 8
  %incdec.ptr571 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr571, i8** %pc570, align 8
  %325 = load i8, i8* %324, align 1
  %conv572 = zext i8 %325 to i32
  store i32 %conv572, i32* %op, align 4
  %idxprom573 = sext i32 %conv572 to i64
  %arrayidx574 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom573
  %326 = load i8*, i8** %arrayidx574, align 8
  br label %indirectgoto

insn_BRgoto:                                      ; preds = %indirectgoto
  br label %do.body.575

do.body.575:                                      ; preds = %insn_BRgoto
  call void @maybe_gc()
  br label %do.end.576

do.end.576:                                       ; preds = %do.body.575
  br label %do.body.577

do.body.577:                                      ; preds = %do.end.576
  %327 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call578 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp579 = icmp eq i64 %327, %call578
  br i1 %cmp579, label %if.else.596, label %land.lhs.true.581

land.lhs.true.581:                                ; preds = %do.body.577
  %328 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call582 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp583 = icmp eq i64 %328, %call582
  br i1 %cmp583, label %if.then.585, label %if.else.596

if.then.585:                                      ; preds = %land.lhs.true.581
  %329 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %329, i64* %flag586, align 8
  %call587 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call587, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %330 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %331 = load i64, i64* %flag586, align 8
  %cmp588 = icmp eq i64 %330, %331
  br i1 %cmp588, label %if.then.590, label %if.end.592

if.then.590:                                      ; preds = %if.then.585
  %332 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call591 = call i64 @builtin_lisp_symbol(i32 901)
  %333 = call i64 @Fthrow(i64 %332, i64 %call591) #4
  unreachable

if.end.592:                                       ; preds = %if.then.585
  %call593 = call i64 @builtin_lisp_symbol(i32 782)
  %call594 = call i64 @builtin_lisp_symbol(i32 0)
  %call595 = call i64 @Fsignal(i64 %call593, i64 %call594)
  br label %if.end.600

if.else.596:                                      ; preds = %land.lhs.true.581, %do.body.577
  %334 = load volatile i8, i8* @pending_signals, align 1
  %tobool597 = trunc i8 %334 to i1
  br i1 %tobool597, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.else.596
  call void @process_pending_signals()
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.598, %if.else.596
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %if.end.592
  br label %do.end.601

do.end.601:                                       ; preds = %if.end.600
  %pc602 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %335 = load i8*, i8** %pc602, align 8
  %336 = load i8, i8* %335, align 1
  %conv603 = zext i8 %336 to i32
  %sub604 = sub nsw i32 %conv603, 127
  %pc605 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %337 = load i8*, i8** %pc605, align 8
  %idx.ext606 = sext i32 %sub604 to i64
  %add.ptr607 = getelementptr inbounds i8, i8* %337, i64 %idx.ext606
  store i8* %add.ptr607, i8** %pc605, align 8
  %pc608 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %338 = load i8*, i8** %pc608, align 8
  %incdec.ptr609 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %incdec.ptr609, i8** %pc608, align 8
  %339 = load i8, i8* %338, align 1
  %conv610 = zext i8 %339 to i32
  store i32 %conv610, i32* %op, align 4
  %idxprom611 = sext i32 %conv610 to i64
  %arrayidx612 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom611
  %340 = load i8*, i8** %arrayidx612, align 8
  br label %indirectgoto

insn_BRgotoifnil:                                 ; preds = %indirectgoto
  br label %do.body.614

do.body.614:                                      ; preds = %insn_BRgotoifnil
  call void @maybe_gc()
  br label %do.end.615

do.end.615:                                       ; preds = %do.body.614
  %341 = load i64*, i64** %top, align 8
  %incdec.ptr616 = getelementptr inbounds i64, i64* %341, i32 -1
  store i64* %incdec.ptr616, i64** %top, align 8
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %v1613, align 8
  %343 = load i64, i64* %v1613, align 8
  %call617 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp618 = icmp eq i64 %343, %call617
  br i1 %cmp618, label %if.then.620, label %if.end.652

if.then.620:                                      ; preds = %do.end.615
  br label %do.body.621

do.body.621:                                      ; preds = %if.then.620
  %344 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call622 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp623 = icmp eq i64 %344, %call622
  br i1 %cmp623, label %if.else.640, label %land.lhs.true.625

land.lhs.true.625:                                ; preds = %do.body.621
  %345 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call626 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp627 = icmp eq i64 %345, %call626
  br i1 %cmp627, label %if.then.629, label %if.else.640

if.then.629:                                      ; preds = %land.lhs.true.625
  %346 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %346, i64* %flag630, align 8
  %call631 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call631, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %347 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %348 = load i64, i64* %flag630, align 8
  %cmp632 = icmp eq i64 %347, %348
  br i1 %cmp632, label %if.then.634, label %if.end.636

if.then.634:                                      ; preds = %if.then.629
  %349 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call635 = call i64 @builtin_lisp_symbol(i32 901)
  %350 = call i64 @Fthrow(i64 %349, i64 %call635) #4
  unreachable

if.end.636:                                       ; preds = %if.then.629
  %call637 = call i64 @builtin_lisp_symbol(i32 782)
  %call638 = call i64 @builtin_lisp_symbol(i32 0)
  %call639 = call i64 @Fsignal(i64 %call637, i64 %call638)
  br label %if.end.644

if.else.640:                                      ; preds = %land.lhs.true.625, %do.body.621
  %351 = load volatile i8, i8* @pending_signals, align 1
  %tobool641 = trunc i8 %351 to i1
  br i1 %tobool641, label %if.then.642, label %if.end.643

if.then.642:                                      ; preds = %if.else.640
  call void @process_pending_signals()
  br label %if.end.643

if.end.643:                                       ; preds = %if.then.642, %if.else.640
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.643, %if.end.636
  br label %do.end.645

do.end.645:                                       ; preds = %if.end.644
  %pc646 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %352 = load i8*, i8** %pc646, align 8
  %353 = load i8, i8* %352, align 1
  %conv647 = zext i8 %353 to i32
  %sub648 = sub nsw i32 %conv647, 128
  %pc649 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %354 = load i8*, i8** %pc649, align 8
  %idx.ext650 = sext i32 %sub648 to i64
  %add.ptr651 = getelementptr inbounds i8, i8* %354, i64 %idx.ext650
  store i8* %add.ptr651, i8** %pc649, align 8
  br label %if.end.652

if.end.652:                                       ; preds = %do.end.645, %do.end.615
  %pc653 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %355 = load i8*, i8** %pc653, align 8
  %incdec.ptr654 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %incdec.ptr654, i8** %pc653, align 8
  %pc655 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %356 = load i8*, i8** %pc655, align 8
  %incdec.ptr656 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %incdec.ptr656, i8** %pc655, align 8
  %357 = load i8, i8* %356, align 1
  %conv657 = zext i8 %357 to i32
  store i32 %conv657, i32* %op, align 4
  %idxprom658 = sext i32 %conv657 to i64
  %arrayidx659 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom658
  %358 = load i8*, i8** %arrayidx659, align 8
  br label %indirectgoto

insn_BRgotoifnonnil:                              ; preds = %indirectgoto
  br label %do.body.661

do.body.661:                                      ; preds = %insn_BRgotoifnonnil
  call void @maybe_gc()
  br label %do.end.662

do.end.662:                                       ; preds = %do.body.661
  %359 = load i64*, i64** %top, align 8
  %incdec.ptr663 = getelementptr inbounds i64, i64* %359, i32 -1
  store i64* %incdec.ptr663, i64** %top, align 8
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %v1660, align 8
  %361 = load i64, i64* %v1660, align 8
  %call664 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp665 = icmp eq i64 %361, %call664
  br i1 %cmp665, label %if.end.699, label %if.then.667

if.then.667:                                      ; preds = %do.end.662
  br label %do.body.668

do.body.668:                                      ; preds = %if.then.667
  %362 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call669 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp670 = icmp eq i64 %362, %call669
  br i1 %cmp670, label %if.else.687, label %land.lhs.true.672

land.lhs.true.672:                                ; preds = %do.body.668
  %363 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call673 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp674 = icmp eq i64 %363, %call673
  br i1 %cmp674, label %if.then.676, label %if.else.687

if.then.676:                                      ; preds = %land.lhs.true.672
  %364 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %364, i64* %flag677, align 8
  %call678 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call678, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %365 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %366 = load i64, i64* %flag677, align 8
  %cmp679 = icmp eq i64 %365, %366
  br i1 %cmp679, label %if.then.681, label %if.end.683

if.then.681:                                      ; preds = %if.then.676
  %367 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call682 = call i64 @builtin_lisp_symbol(i32 901)
  %368 = call i64 @Fthrow(i64 %367, i64 %call682) #4
  unreachable

if.end.683:                                       ; preds = %if.then.676
  %call684 = call i64 @builtin_lisp_symbol(i32 782)
  %call685 = call i64 @builtin_lisp_symbol(i32 0)
  %call686 = call i64 @Fsignal(i64 %call684, i64 %call685)
  br label %if.end.691

if.else.687:                                      ; preds = %land.lhs.true.672, %do.body.668
  %369 = load volatile i8, i8* @pending_signals, align 1
  %tobool688 = trunc i8 %369 to i1
  br i1 %tobool688, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %if.else.687
  call void @process_pending_signals()
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.689, %if.else.687
  br label %if.end.691

if.end.691:                                       ; preds = %if.end.690, %if.end.683
  br label %do.end.692

do.end.692:                                       ; preds = %if.end.691
  %pc693 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %370 = load i8*, i8** %pc693, align 8
  %371 = load i8, i8* %370, align 1
  %conv694 = zext i8 %371 to i32
  %sub695 = sub nsw i32 %conv694, 128
  %pc696 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %372 = load i8*, i8** %pc696, align 8
  %idx.ext697 = sext i32 %sub695 to i64
  %add.ptr698 = getelementptr inbounds i8, i8* %372, i64 %idx.ext697
  store i8* %add.ptr698, i8** %pc696, align 8
  br label %if.end.699

if.end.699:                                       ; preds = %do.end.692, %do.end.662
  %pc700 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %373 = load i8*, i8** %pc700, align 8
  %incdec.ptr701 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %incdec.ptr701, i8** %pc700, align 8
  %pc702 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %374 = load i8*, i8** %pc702, align 8
  %incdec.ptr703 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %incdec.ptr703, i8** %pc702, align 8
  %375 = load i8, i8* %374, align 1
  %conv704 = zext i8 %375 to i32
  store i32 %conv704, i32* %op, align 4
  %idxprom705 = sext i32 %conv704 to i64
  %arrayidx706 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom705
  %376 = load i8*, i8** %arrayidx706, align 8
  br label %indirectgoto

insn_BRgotoifnilelsepop:                          ; preds = %indirectgoto
  br label %do.body.707

do.body.707:                                      ; preds = %insn_BRgotoifnilelsepop
  call void @maybe_gc()
  br label %do.end.708

do.end.708:                                       ; preds = %do.body.707
  %pc709 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %377 = load i8*, i8** %pc709, align 8
  %incdec.ptr710 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %incdec.ptr710, i8** %pc709, align 8
  %378 = load i8, i8* %377, align 1
  %conv711 = zext i8 %378 to i32
  store i32 %conv711, i32* %op, align 4
  %379 = load i64*, i64** %top, align 8
  %380 = load i64, i64* %379, align 8
  %call712 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp713 = icmp eq i64 %380, %call712
  br i1 %cmp713, label %if.then.715, label %if.else.745

if.then.715:                                      ; preds = %do.end.708
  br label %do.body.716

do.body.716:                                      ; preds = %if.then.715
  %381 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call717 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp718 = icmp eq i64 %381, %call717
  br i1 %cmp718, label %if.else.735, label %land.lhs.true.720

land.lhs.true.720:                                ; preds = %do.body.716
  %382 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call721 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp722 = icmp eq i64 %382, %call721
  br i1 %cmp722, label %if.then.724, label %if.else.735

if.then.724:                                      ; preds = %land.lhs.true.720
  %383 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %383, i64* %flag725, align 8
  %call726 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call726, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %384 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %385 = load i64, i64* %flag725, align 8
  %cmp727 = icmp eq i64 %384, %385
  br i1 %cmp727, label %if.then.729, label %if.end.731

if.then.729:                                      ; preds = %if.then.724
  %386 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call730 = call i64 @builtin_lisp_symbol(i32 901)
  %387 = call i64 @Fthrow(i64 %386, i64 %call730) #4
  unreachable

if.end.731:                                       ; preds = %if.then.724
  %call732 = call i64 @builtin_lisp_symbol(i32 782)
  %call733 = call i64 @builtin_lisp_symbol(i32 0)
  %call734 = call i64 @Fsignal(i64 %call732, i64 %call733)
  br label %if.end.739

if.else.735:                                      ; preds = %land.lhs.true.720, %do.body.716
  %388 = load volatile i8, i8* @pending_signals, align 1
  %tobool736 = trunc i8 %388 to i1
  br i1 %tobool736, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %if.else.735
  call void @process_pending_signals()
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.737, %if.else.735
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %if.end.731
  br label %do.end.740

do.end.740:                                       ; preds = %if.end.739
  %389 = load i32, i32* %op, align 4
  %sub741 = sub nsw i32 %389, 128
  %pc742 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %390 = load i8*, i8** %pc742, align 8
  %idx.ext743 = sext i32 %sub741 to i64
  %add.ptr744 = getelementptr inbounds i8, i8* %390, i64 %idx.ext743
  store i8* %add.ptr744, i8** %pc742, align 8
  br label %if.end.747

if.else.745:                                      ; preds = %do.end.708
  %391 = load i64*, i64** %top, align 8
  %add.ptr746 = getelementptr inbounds i64, i64* %391, i64 -1
  store i64* %add.ptr746, i64** %top, align 8
  br label %if.end.747

if.end.747:                                       ; preds = %if.else.745, %do.end.740
  %pc748 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %392 = load i8*, i8** %pc748, align 8
  %incdec.ptr749 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %incdec.ptr749, i8** %pc748, align 8
  %393 = load i8, i8* %392, align 1
  %conv750 = zext i8 %393 to i32
  store i32 %conv750, i32* %op, align 4
  %idxprom751 = sext i32 %conv750 to i64
  %arrayidx752 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom751
  %394 = load i8*, i8** %arrayidx752, align 8
  br label %indirectgoto

insn_BRgotoifnonnilelsepop:                       ; preds = %indirectgoto
  br label %do.body.753

do.body.753:                                      ; preds = %insn_BRgotoifnonnilelsepop
  call void @maybe_gc()
  br label %do.end.754

do.end.754:                                       ; preds = %do.body.753
  %pc755 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %395 = load i8*, i8** %pc755, align 8
  %incdec.ptr756 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %incdec.ptr756, i8** %pc755, align 8
  %396 = load i8, i8* %395, align 1
  %conv757 = zext i8 %396 to i32
  store i32 %conv757, i32* %op, align 4
  %397 = load i64*, i64** %top, align 8
  %398 = load i64, i64* %397, align 8
  %call758 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp759 = icmp eq i64 %398, %call758
  br i1 %cmp759, label %if.else.791, label %if.then.761

if.then.761:                                      ; preds = %do.end.754
  br label %do.body.762

do.body.762:                                      ; preds = %if.then.761
  %399 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call763 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp764 = icmp eq i64 %399, %call763
  br i1 %cmp764, label %if.else.781, label %land.lhs.true.766

land.lhs.true.766:                                ; preds = %do.body.762
  %400 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call767 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp768 = icmp eq i64 %400, %call767
  br i1 %cmp768, label %if.then.770, label %if.else.781

if.then.770:                                      ; preds = %land.lhs.true.766
  %401 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %401, i64* %flag771, align 8
  %call772 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call772, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %402 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %403 = load i64, i64* %flag771, align 8
  %cmp773 = icmp eq i64 %402, %403
  br i1 %cmp773, label %if.then.775, label %if.end.777

if.then.775:                                      ; preds = %if.then.770
  %404 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 296), align 8
  %call776 = call i64 @builtin_lisp_symbol(i32 901)
  %405 = call i64 @Fthrow(i64 %404, i64 %call776) #4
  unreachable

if.end.777:                                       ; preds = %if.then.770
  %call778 = call i64 @builtin_lisp_symbol(i32 782)
  %call779 = call i64 @builtin_lisp_symbol(i32 0)
  %call780 = call i64 @Fsignal(i64 %call778, i64 %call779)
  br label %if.end.785

if.else.781:                                      ; preds = %land.lhs.true.766, %do.body.762
  %406 = load volatile i8, i8* @pending_signals, align 1
  %tobool782 = trunc i8 %406 to i1
  br i1 %tobool782, label %if.then.783, label %if.end.784

if.then.783:                                      ; preds = %if.else.781
  call void @process_pending_signals()
  br label %if.end.784

if.end.784:                                       ; preds = %if.then.783, %if.else.781
  br label %if.end.785

if.end.785:                                       ; preds = %if.end.784, %if.end.777
  br label %do.end.786

do.end.786:                                       ; preds = %if.end.785
  %407 = load i32, i32* %op, align 4
  %sub787 = sub nsw i32 %407, 128
  %pc788 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %408 = load i8*, i8** %pc788, align 8
  %idx.ext789 = sext i32 %sub787 to i64
  %add.ptr790 = getelementptr inbounds i8, i8* %408, i64 %idx.ext789
  store i8* %add.ptr790, i8** %pc788, align 8
  br label %if.end.793

if.else.791:                                      ; preds = %do.end.754
  %409 = load i64*, i64** %top, align 8
  %add.ptr792 = getelementptr inbounds i64, i64* %409, i64 -1
  store i64* %add.ptr792, i64** %top, align 8
  br label %if.end.793

if.end.793:                                       ; preds = %if.else.791, %do.end.786
  %pc794 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %410 = load i8*, i8** %pc794, align 8
  %incdec.ptr795 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %incdec.ptr795, i8** %pc794, align 8
  %411 = load i8, i8* %410, align 1
  %conv796 = zext i8 %411 to i32
  store i32 %conv796, i32* %op, align 4
  %idxprom797 = sext i32 %conv796 to i64
  %arrayidx798 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom797
  %412 = load i8*, i8** %arrayidx798, align 8
  br label %indirectgoto

insn_Breturn:                                     ; preds = %indirectgoto
  %413 = load i64*, i64** %top, align 8
  %incdec.ptr799 = getelementptr inbounds i64, i64* %413, i32 -1
  store i64* %incdec.ptr799, i64** %top, align 8
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %result, align 8
  br label %exit

insn_Bdiscard:                                    ; preds = %indirectgoto
  %415 = load i64*, i64** %top, align 8
  %add.ptr800 = getelementptr inbounds i64, i64* %415, i64 -1
  store i64* %add.ptr800, i64** %top, align 8
  %pc801 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %416 = load i8*, i8** %pc801, align 8
  %incdec.ptr802 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %incdec.ptr802, i8** %pc801, align 8
  %417 = load i8, i8* %416, align 1
  %conv803 = zext i8 %417 to i32
  store i32 %conv803, i32* %op, align 4
  %idxprom804 = sext i32 %conv803 to i64
  %arrayidx805 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom804
  %418 = load i8*, i8** %arrayidx805, align 8
  br label %indirectgoto

insn_Bconstant2:                                  ; preds = %indirectgoto
  %419 = load i64*, i64** %top, align 8
  %incdec.ptr806 = getelementptr inbounds i64, i64* %419, i32 1
  store i64* %incdec.ptr806, i64** %top, align 8
  %pc807 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %420 = load i8*, i8** %pc807, align 8
  %incdec.ptr808 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %incdec.ptr808, i8** %pc807, align 8
  %421 = load i8, i8* %420, align 1
  %conv809 = zext i8 %421 to i32
  store i32 %conv809, i32* %op, align 4
  %422 = load i32, i32* %op, align 4
  %pc810 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %423 = load i8*, i8** %pc810, align 8
  %incdec.ptr811 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %incdec.ptr811, i8** %pc810, align 8
  %424 = load i8, i8* %423, align 1
  %conv812 = zext i8 %424 to i32
  %shl813 = shl i32 %conv812, 8
  %add814 = add nsw i32 %422, %shl813
  %idxprom815 = sext i32 %add814 to i64
  %425 = load i64*, i64** %vectorp, align 8
  %arrayidx816 = getelementptr inbounds i64, i64* %425, i64 %idxprom815
  %426 = load i64, i64* %arrayidx816, align 8
  %427 = load i64*, i64** %top, align 8
  store i64 %426, i64* %427, align 8
  %pc817 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %428 = load i8*, i8** %pc817, align 8
  %incdec.ptr818 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %incdec.ptr818, i8** %pc817, align 8
  %429 = load i8, i8* %428, align 1
  %conv819 = zext i8 %429 to i32
  store i32 %conv819, i32* %op, align 4
  %idxprom820 = sext i32 %conv819 to i64
  %arrayidx821 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom820
  %430 = load i8*, i8** %arrayidx821, align 8
  br label %indirectgoto

insn_Bsave_excursion:                             ; preds = %indirectgoto
  %call822 = call i64 @save_excursion_save()
  call void @record_unwind_protect(void (i64)* @save_excursion_restore, i64 %call822)
  %pc823 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %431 = load i8*, i8** %pc823, align 8
  %incdec.ptr824 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %incdec.ptr824, i8** %pc823, align 8
  %432 = load i8, i8* %431, align 1
  %conv825 = zext i8 %432 to i32
  store i32 %conv825, i32* %op, align 4
  %idxprom826 = sext i32 %conv825 to i64
  %arrayidx827 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom826
  %433 = load i8*, i8** %arrayidx827, align 8
  br label %indirectgoto

insn_Bsave_current_buffer:                        ; preds = %indirectgoto
  br label %insn_Bsave_current_buffer_1

insn_Bsave_current_buffer_1:                      ; preds = %insn_Bsave_current_buffer, %indirectgoto
  call void @record_unwind_current_buffer()
  %pc828 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %434 = load i8*, i8** %pc828, align 8
  %incdec.ptr829 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %incdec.ptr829, i8** %pc828, align 8
  %435 = load i8, i8* %434, align 1
  %conv830 = zext i8 %435 to i32
  store i32 %conv830, i32* %op, align 4
  %idxprom831 = sext i32 %conv830 to i64
  %arrayidx832 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom831
  %436 = load i8*, i8** %arrayidx832, align 8
  br label %indirectgoto

insn_Bsave_window_excursion:                      ; preds = %indirectgoto
  %call833 = call i64 @SPECPDL_INDEX()
  store i64 %call833, i64* %count1, align 8
  %call834 = call i64 @builtin_lisp_symbol(i32 0)
  %call835 = call i64 @Fcurrent_window_configuration(i64 %call834)
  call void @record_unwind_protect(void (i64)* @restore_window_configuration, i64 %call835)
  %437 = load i64*, i64** %top, align 8
  %438 = load i64, i64* %437, align 8
  %call836 = call i64 @Fprogn(i64 %438)
  %439 = load i64*, i64** %top, align 8
  store i64 %call836, i64* %439, align 8
  %440 = load i64, i64* %count1, align 8
  %441 = load i64*, i64** %top, align 8
  %442 = load i64, i64* %441, align 8
  %call837 = call i64 @unbind_to(i64 %440, i64 %442)
  %pc838 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %443 = load i8*, i8** %pc838, align 8
  %incdec.ptr839 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %incdec.ptr839, i8** %pc838, align 8
  %444 = load i8, i8* %443, align 1
  %conv840 = zext i8 %444 to i32
  store i32 %conv840, i32* %op, align 4
  %idxprom841 = sext i32 %conv840 to i64
  %arrayidx842 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom841
  %445 = load i8*, i8** %arrayidx842, align 8
  br label %indirectgoto

insn_Bsave_restriction:                           ; preds = %indirectgoto
  %call843 = call i64 @save_restriction_save()
  call void @record_unwind_protect(void (i64)* @save_restriction_restore, i64 %call843)
  %pc844 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %446 = load i8*, i8** %pc844, align 8
  %incdec.ptr845 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %incdec.ptr845, i8** %pc844, align 8
  %447 = load i8, i8* %446, align 1
  %conv846 = zext i8 %447 to i32
  store i32 %conv846, i32* %op, align 4
  %idxprom847 = sext i32 %conv846 to i64
  %arrayidx848 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom847
  %448 = load i8*, i8** %arrayidx848, align 8
  br label %indirectgoto

insn_Bcatch:                                      ; preds = %indirectgoto
  %449 = load i64*, i64** %top, align 8
  %incdec.ptr850 = getelementptr inbounds i64, i64* %449, i32 -1
  store i64* %incdec.ptr850, i64** %top, align 8
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %v1849, align 8
  %451 = load i64*, i64** %top, align 8
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* %v1849, align 8
  %call851 = call i64 @internal_catch(i64 %452, i64 (i64)* @eval_sub, i64 %453)
  %454 = load i64*, i64** %top, align 8
  store i64 %call851, i64* %454, align 8
  %pc852 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %455 = load i8*, i8** %pc852, align 8
  %incdec.ptr853 = getelementptr inbounds i8, i8* %455, i32 1
  store i8* %incdec.ptr853, i8** %pc852, align 8
  %456 = load i8, i8* %455, align 1
  %conv854 = zext i8 %456 to i32
  store i32 %conv854, i32* %op, align 4
  %idxprom855 = sext i32 %conv854 to i64
  %arrayidx856 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom855
  %457 = load i8*, i8** %arrayidx856, align 8
  br label %indirectgoto

insn_Bpushcatch:                                  ; preds = %indirectgoto
  store i32 0, i32* %type, align 4
  br label %pushhandler

insn_Bpushconditioncase:                          ; preds = %indirectgoto
  store i32 1, i32* %type, align 4
  br label %pushhandler

pushhandler:                                      ; preds = %insn_Bpushconditioncase, %insn_Bpushcatch
  %458 = load i64*, i64** %top, align 8
  %incdec.ptr857 = getelementptr inbounds i64, i64* %458, i32 -1
  store i64* %incdec.ptr857, i64** %top, align 8
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %tag, align 8
  %pc858 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %460 = load i8*, i8** %pc858, align 8
  %incdec.ptr859 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %incdec.ptr859, i8** %pc858, align 8
  %461 = load i8, i8* %460, align 1
  %conv860 = zext i8 %461 to i32
  store i32 %conv860, i32* %op, align 4
  %462 = load i32, i32* %op, align 4
  %pc861 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %463 = load i8*, i8** %pc861, align 8
  %incdec.ptr862 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %incdec.ptr862, i8** %pc861, align 8
  %464 = load i8, i8* %463, align 1
  %conv863 = zext i8 %464 to i32
  %shl864 = shl i32 %conv863, 8
  %add865 = add nsw i32 %462, %shl864
  store i32 %add865, i32* %dest, align 4
  %465 = load i64, i64* %tag, align 8
  %466 = load i32, i32* %type, align 4
  %call866 = call %struct.handler* @push_handler(i64 %465, i32 %466)
  store %struct.handler* %call866, %struct.handler** %c, align 8
  %467 = load i32, i32* %dest, align 4
  %468 = load %struct.handler*, %struct.handler** %c, align 8
  %bytecode_dest = getelementptr inbounds %struct.handler, %struct.handler* %468, i32 0, i32 6
  store i32 %467, i32* %bytecode_dest, align 4
  %469 = load i64*, i64** %top, align 8
  %470 = load %struct.handler*, %struct.handler** %c, align 8
  %bytecode_top = getelementptr inbounds %struct.handler, %struct.handler* %470, i32 0, i32 5
  store i64* %469, i64** %bytecode_top, align 8
  %471 = load %struct.handler*, %struct.handler** %c, align 8
  %jmp = getelementptr inbounds %struct.handler, %struct.handler* %471, i32 0, i32 7
  %arraydecay867 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %jmp, i32 0, i32 0
  %call868 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay867) #5
  %tobool869 = icmp ne i32 %call868, 0
  br i1 %tobool869, label %if.then.870, label %if.end.885

if.then.870:                                      ; preds = %pushhandler
  %472 = load %struct.handler*, %struct.handler** @handlerlist, align 8
  store %struct.handler* %472, %struct.handler** %c871, align 8
  %473 = load %struct.handler*, %struct.handler** %c871, align 8
  %bytecode_top873 = getelementptr inbounds %struct.handler, %struct.handler* %473, i32 0, i32 5
  %474 = load i64*, i64** %bytecode_top873, align 8
  store i64* %474, i64** %top, align 8
  %475 = load %struct.handler*, %struct.handler** %c871, align 8
  %bytecode_dest874 = getelementptr inbounds %struct.handler, %struct.handler* %475, i32 0, i32 6
  %476 = load i32, i32* %bytecode_dest874, align 4
  store i32 %476, i32* %dest872, align 4
  %477 = load %struct.handler*, %struct.handler** %c871, align 8
  %next875 = getelementptr inbounds %struct.handler, %struct.handler* %477, i32 0, i32 3
  %478 = load %struct.handler*, %struct.handler** %next875, align 8
  store %struct.handler* %478, %struct.handler** @handlerlist, align 8
  %479 = load i64*, i64** %top, align 8
  %incdec.ptr876 = getelementptr inbounds i64, i64* %479, i32 1
  store i64* %incdec.ptr876, i64** %top, align 8
  %480 = load %struct.handler*, %struct.handler** %c871, align 8
  %val877 = getelementptr inbounds %struct.handler, %struct.handler* %480, i32 0, i32 2
  %481 = load i64, i64* %val877, align 8
  %482 = load i64*, i64** %top, align 8
  store i64 %481, i64* %482, align 8
  %byte_string878 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 1
  %483 = load i64, i64* %byte_string878, align 8
  %call879 = call i8* @SDATA(i64 %483)
  %byte_string_start880 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  store i8* %call879, i8** %byte_string_start880, align 8
  %byte_string_start881 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %484 = load i8*, i8** %byte_string_start881, align 8
  %485 = load i32, i32* %dest872, align 4
  %idx.ext882 = sext i32 %485 to i64
  %add.ptr883 = getelementptr inbounds i8, i8* %484, i64 %idx.ext882
  %pc884 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  store i8* %add.ptr883, i8** %pc884, align 8
  br label %if.end.885

if.end.885:                                       ; preds = %if.then.870, %pushhandler
  %pc886 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %486 = load i8*, i8** %pc886, align 8
  %incdec.ptr887 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %incdec.ptr887, i8** %pc886, align 8
  %487 = load i8, i8* %486, align 1
  %conv888 = zext i8 %487 to i32
  store i32 %conv888, i32* %op, align 4
  %idxprom889 = sext i32 %conv888 to i64
  %arrayidx890 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom889
  %488 = load i8*, i8** %arrayidx890, align 8
  br label %indirectgoto

insn_Bpophandler:                                 ; preds = %indirectgoto
  %489 = load %struct.handler*, %struct.handler** @handlerlist, align 8
  %next891 = getelementptr inbounds %struct.handler, %struct.handler* %489, i32 0, i32 3
  %490 = load %struct.handler*, %struct.handler** %next891, align 8
  store %struct.handler* %490, %struct.handler** @handlerlist, align 8
  %pc892 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %491 = load i8*, i8** %pc892, align 8
  %incdec.ptr893 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %incdec.ptr893, i8** %pc892, align 8
  %492 = load i8, i8* %491, align 1
  %conv894 = zext i8 %492 to i32
  store i32 %conv894, i32* %op, align 4
  %idxprom895 = sext i32 %conv894 to i64
  %arrayidx896 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom895
  %493 = load i8*, i8** %arrayidx896, align 8
  br label %indirectgoto

insn_Bunwind_protect:                             ; preds = %indirectgoto
  %494 = load i64*, i64** %top, align 8
  %incdec.ptr897 = getelementptr inbounds i64, i64* %494, i32 -1
  store i64* %incdec.ptr897, i64** %top, align 8
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %handler, align 8
  %496 = load i64, i64* %handler, align 8
  %call898 = call i64 @Ffunctionp(i64 %496)
  %call899 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp900 = icmp eq i64 %call898, %call899
  %cond902 = select i1 %cmp900, void (i64)* @unwind_body, void (i64)* @bcall0
  %497 = load i64, i64* %handler, align 8
  call void @record_unwind_protect(void (i64)* %cond902, i64 %497)
  %pc903 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %498 = load i8*, i8** %pc903, align 8
  %incdec.ptr904 = getelementptr inbounds i8, i8* %498, i32 1
  store i8* %incdec.ptr904, i8** %pc903, align 8
  %499 = load i8, i8* %498, align 1
  %conv905 = zext i8 %499 to i32
  store i32 %conv905, i32* %op, align 4
  %idxprom906 = sext i32 %conv905 to i64
  %arrayidx907 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom906
  %500 = load i8*, i8** %arrayidx907, align 8
  br label %indirectgoto

insn_Bcondition_case:                             ; preds = %indirectgoto
  %501 = load i64*, i64** %top, align 8
  %incdec.ptr908 = getelementptr inbounds i64, i64* %501, i32 -1
  store i64* %incdec.ptr908, i64** %top, align 8
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %handlers, align 8
  %503 = load i64*, i64** %top, align 8
  %incdec.ptr909 = getelementptr inbounds i64, i64* %503, i32 -1
  store i64* %incdec.ptr909, i64** %top, align 8
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %body, align 8
  %505 = load i64*, i64** %top, align 8
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* %body, align 8
  %508 = load i64, i64* %handlers, align 8
  %call910 = call i64 @internal_lisp_condition_case(i64 %506, i64 %507, i64 %508)
  %509 = load i64*, i64** %top, align 8
  store i64 %call910, i64* %509, align 8
  %pc911 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %510 = load i8*, i8** %pc911, align 8
  %incdec.ptr912 = getelementptr inbounds i8, i8* %510, i32 1
  store i8* %incdec.ptr912, i8** %pc911, align 8
  %511 = load i8, i8* %510, align 1
  %conv913 = zext i8 %511 to i32
  store i32 %conv913, i32* %op, align 4
  %idxprom914 = sext i32 %conv913 to i64
  %arrayidx915 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom914
  %512 = load i8*, i8** %arrayidx915, align 8
  br label %indirectgoto

insn_Btemp_output_buffer_setup:                   ; preds = %indirectgoto
  %513 = load i64*, i64** %top, align 8
  %514 = load i64, i64* %513, align 8
  call void @CHECK_STRING(i64 %514)
  %515 = load i64*, i64** %top, align 8
  %516 = load i64, i64* %515, align 8
  %call916 = call i8* @SSDATA(i64 %516)
  call void @temp_output_buffer_setup(i8* %call916)
  %517 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  %518 = load i64*, i64** %top, align 8
  store i64 %517, i64* %518, align 8
  %pc917 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %519 = load i8*, i8** %pc917, align 8
  %incdec.ptr918 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %incdec.ptr918, i8** %pc917, align 8
  %520 = load i8, i8* %519, align 1
  %conv919 = zext i8 %520 to i32
  store i32 %conv919, i32* %op, align 4
  %idxprom920 = sext i32 %conv919 to i64
  %arrayidx921 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom920
  %521 = load i8*, i8** %arrayidx921, align 8
  br label %indirectgoto

insn_Btemp_output_buffer_show:                    ; preds = %indirectgoto
  %522 = load i64*, i64** %top, align 8
  %incdec.ptr923 = getelementptr inbounds i64, i64* %522, i32 -1
  store i64* %incdec.ptr923, i64** %top, align 8
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %v1922, align 8
  %524 = load i64*, i64** %top, align 8
  %525 = load i64, i64* %524, align 8
  call void @temp_output_buffer_show(i64 %525)
  %526 = load i64, i64* %v1922, align 8
  %527 = load i64*, i64** %top, align 8
  store i64 %526, i64* %527, align 8
  %call924 = call i64 @SPECPDL_INDEX()
  %sub925 = sub nsw i64 %call924, 1
  %call926 = call i64 @builtin_lisp_symbol(i32 0)
  %call927 = call i64 @unbind_to(i64 %sub925, i64 %call926)
  %pc928 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %528 = load i8*, i8** %pc928, align 8
  %incdec.ptr929 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %incdec.ptr929, i8** %pc928, align 8
  %529 = load i8, i8* %528, align 1
  %conv930 = zext i8 %529 to i32
  store i32 %conv930, i32* %op, align 4
  %idxprom931 = sext i32 %conv930 to i64
  %arrayidx932 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom931
  %530 = load i8*, i8** %arrayidx932, align 8
  br label %indirectgoto

insn_Bnth:                                        ; preds = %indirectgoto
  %531 = load i64*, i64** %top, align 8
  %incdec.ptr935 = getelementptr inbounds i64, i64* %531, i32 -1
  store i64* %incdec.ptr935, i64** %top, align 8
  %532 = load i64, i64* %531, align 8
  store i64 %532, i64* %v1933, align 8
  %533 = load i64*, i64** %top, align 8
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %v2934, align 8
  %535 = load i64, i64* %v2934, align 8
  %and936 = and i64 %535, 7
  %conv937 = trunc i64 %and936 to i32
  %and938 = and i32 %conv937, -5
  %cmp939 = icmp eq i32 %and938, 2
  br i1 %cmp939, label %cond.true.941, label %cond.false.942

cond.true.941:                                    ; preds = %insn_Bnth
  br label %cond.end.944

cond.false.942:                                   ; preds = %insn_Bnth
  %call943 = call i64 @builtin_lisp_symbol(i32 559)
  %536 = load i64, i64* %v2934, align 8
  %537 = call i64 @wrong_type_argument(i64 %call943, i64 %536) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.944

cond.end.944:                                     ; preds = %538, %cond.true.941
  %539 = load i64, i64* %v2934, align 8
  %shr945 = ashr i64 %539, 2
  store i64 %shr945, i64* %n, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %while.cond.946

while.cond.946:                                   ; preds = %while.body.953, %cond.end.944
  %540 = load i64, i64* %n, align 8
  %dec = add nsw i64 %540, -1
  store i64 %dec, i64* %n, align 8
  %cmp947 = icmp sge i64 %dec, 0
  br i1 %cmp947, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.946
  %541 = load i64, i64* %v1933, align 8
  %and949 = and i64 %541, 7
  %conv950 = trunc i64 %and949 to i32
  %cmp951 = icmp eq i32 %conv950, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.946
  %542 = phi i1 [ false, %while.cond.946 ], [ %cmp951, %land.rhs ]
  br i1 %542, label %while.body.953, label %while.end

while.body.953:                                   ; preds = %land.end
  %543 = load i64, i64* %v1933, align 8
  %sub954 = sub nsw i64 %543, 3
  %544 = inttoptr i64 %sub954 to i8*
  %545 = bitcast i8* %544 to %struct.Lisp_Cons*
  %u955 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %545, i32 0, i32 1
  %cdr956 = bitcast %union.anon.0* %u955 to i64*
  %546 = load i64, i64* %cdr956, align 8
  store i64 %546, i64* %v1933, align 8
  br label %while.cond.946

while.end:                                        ; preds = %land.end
  store i8 0, i8* @immediate_quit, align 1
  %547 = load i64, i64* %v1933, align 8
  %call957 = call i64 @CAR(i64 %547)
  %548 = load i64*, i64** %top, align 8
  store i64 %call957, i64* %548, align 8
  %pc958 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %549 = load i8*, i8** %pc958, align 8
  %incdec.ptr959 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %incdec.ptr959, i8** %pc958, align 8
  %550 = load i8, i8* %549, align 1
  %conv960 = zext i8 %550 to i32
  store i32 %conv960, i32* %op, align 4
  %idxprom961 = sext i32 %conv960 to i64
  %arrayidx962 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom961
  %551 = load i8*, i8** %arrayidx962, align 8
  br label %indirectgoto

insn_Bsymbolp:                                    ; preds = %indirectgoto
  %552 = load i64*, i64** %top, align 8
  %553 = load i64, i64* %552, align 8
  %and963 = and i64 %553, 7
  %conv964 = trunc i64 %and963 to i32
  %cmp965 = icmp eq i32 %conv964, 0
  br i1 %cmp965, label %cond.true.967, label %cond.false.969

cond.true.967:                                    ; preds = %insn_Bsymbolp
  %call968 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.971

cond.false.969:                                   ; preds = %insn_Bsymbolp
  %call970 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.971

cond.end.971:                                     ; preds = %cond.false.969, %cond.true.967
  %cond972 = phi i64 [ %call968, %cond.true.967 ], [ %call970, %cond.false.969 ]
  %554 = load i64*, i64** %top, align 8
  store i64 %cond972, i64* %554, align 8
  %pc973 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %555 = load i8*, i8** %pc973, align 8
  %incdec.ptr974 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %incdec.ptr974, i8** %pc973, align 8
  %556 = load i8, i8* %555, align 1
  %conv975 = zext i8 %556 to i32
  store i32 %conv975, i32* %op, align 4
  %idxprom976 = sext i32 %conv975 to i64
  %arrayidx977 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom976
  %557 = load i8*, i8** %arrayidx977, align 8
  br label %indirectgoto

insn_Bconsp:                                      ; preds = %indirectgoto
  %558 = load i64*, i64** %top, align 8
  %559 = load i64, i64* %558, align 8
  %and978 = and i64 %559, 7
  %conv979 = trunc i64 %and978 to i32
  %cmp980 = icmp eq i32 %conv979, 3
  br i1 %cmp980, label %cond.true.982, label %cond.false.984

cond.true.982:                                    ; preds = %insn_Bconsp
  %call983 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.986

cond.false.984:                                   ; preds = %insn_Bconsp
  %call985 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.984, %cond.true.982
  %cond987 = phi i64 [ %call983, %cond.true.982 ], [ %call985, %cond.false.984 ]
  %560 = load i64*, i64** %top, align 8
  store i64 %cond987, i64* %560, align 8
  %pc988 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %561 = load i8*, i8** %pc988, align 8
  %incdec.ptr989 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %incdec.ptr989, i8** %pc988, align 8
  %562 = load i8, i8* %561, align 1
  %conv990 = zext i8 %562 to i32
  store i32 %conv990, i32* %op, align 4
  %idxprom991 = sext i32 %conv990 to i64
  %arrayidx992 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom991
  %563 = load i8*, i8** %arrayidx992, align 8
  br label %indirectgoto

insn_Bstringp:                                    ; preds = %indirectgoto
  %564 = load i64*, i64** %top, align 8
  %565 = load i64, i64* %564, align 8
  %call993 = call zeroext i1 @STRINGP(i64 %565)
  br i1 %call993, label %cond.true.995, label %cond.false.997

cond.true.995:                                    ; preds = %insn_Bstringp
  %call996 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.999

cond.false.997:                                   ; preds = %insn_Bstringp
  %call998 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.999

cond.end.999:                                     ; preds = %cond.false.997, %cond.true.995
  %cond1000 = phi i64 [ %call996, %cond.true.995 ], [ %call998, %cond.false.997 ]
  %566 = load i64*, i64** %top, align 8
  store i64 %cond1000, i64* %566, align 8
  %pc1001 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %567 = load i8*, i8** %pc1001, align 8
  %incdec.ptr1002 = getelementptr inbounds i8, i8* %567, i32 1
  store i8* %incdec.ptr1002, i8** %pc1001, align 8
  %568 = load i8, i8* %567, align 1
  %conv1003 = zext i8 %568 to i32
  store i32 %conv1003, i32* %op, align 4
  %idxprom1004 = sext i32 %conv1003 to i64
  %arrayidx1005 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1004
  %569 = load i8*, i8** %arrayidx1005, align 8
  br label %indirectgoto

insn_Blistp:                                      ; preds = %indirectgoto
  %570 = load i64*, i64** %top, align 8
  %571 = load i64, i64* %570, align 8
  %and1006 = and i64 %571, 7
  %conv1007 = trunc i64 %and1006 to i32
  %cmp1008 = icmp eq i32 %conv1007, 3
  br i1 %cmp1008, label %cond.true.1014, label %lor.lhs.false.1010

lor.lhs.false.1010:                               ; preds = %insn_Blistp
  %572 = load i64*, i64** %top, align 8
  %573 = load i64, i64* %572, align 8
  %call1011 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1012 = icmp eq i64 %573, %call1011
  br i1 %cmp1012, label %cond.true.1014, label %cond.false.1016

cond.true.1014:                                   ; preds = %lor.lhs.false.1010, %insn_Blistp
  %call1015 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1018

cond.false.1016:                                  ; preds = %lor.lhs.false.1010
  %call1017 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1018

cond.end.1018:                                    ; preds = %cond.false.1016, %cond.true.1014
  %cond1019 = phi i64 [ %call1015, %cond.true.1014 ], [ %call1017, %cond.false.1016 ]
  %574 = load i64*, i64** %top, align 8
  store i64 %cond1019, i64* %574, align 8
  %pc1020 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %575 = load i8*, i8** %pc1020, align 8
  %incdec.ptr1021 = getelementptr inbounds i8, i8* %575, i32 1
  store i8* %incdec.ptr1021, i8** %pc1020, align 8
  %576 = load i8, i8* %575, align 1
  %conv1022 = zext i8 %576 to i32
  store i32 %conv1022, i32* %op, align 4
  %idxprom1023 = sext i32 %conv1022 to i64
  %arrayidx1024 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1023
  %577 = load i8*, i8** %arrayidx1024, align 8
  br label %indirectgoto

insn_Bnot:                                        ; preds = %indirectgoto
  %578 = load i64*, i64** %top, align 8
  %579 = load i64, i64* %578, align 8
  %call1025 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1026 = icmp eq i64 %579, %call1025
  br i1 %cmp1026, label %cond.true.1028, label %cond.false.1030

cond.true.1028:                                   ; preds = %insn_Bnot
  %call1029 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1032

cond.false.1030:                                  ; preds = %insn_Bnot
  %call1031 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1032

cond.end.1032:                                    ; preds = %cond.false.1030, %cond.true.1028
  %cond1033 = phi i64 [ %call1029, %cond.true.1028 ], [ %call1031, %cond.false.1030 ]
  %580 = load i64*, i64** %top, align 8
  store i64 %cond1033, i64* %580, align 8
  %pc1034 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %581 = load i8*, i8** %pc1034, align 8
  %incdec.ptr1035 = getelementptr inbounds i8, i8* %581, i32 1
  store i8* %incdec.ptr1035, i8** %pc1034, align 8
  %582 = load i8, i8* %581, align 1
  %conv1036 = zext i8 %582 to i32
  store i32 %conv1036, i32* %op, align 4
  %idxprom1037 = sext i32 %conv1036 to i64
  %arrayidx1038 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1037
  %583 = load i8*, i8** %arrayidx1038, align 8
  br label %indirectgoto

insn_Bcons:                                       ; preds = %indirectgoto
  %584 = load i64*, i64** %top, align 8
  %incdec.ptr1040 = getelementptr inbounds i64, i64* %584, i32 -1
  store i64* %incdec.ptr1040, i64** %top, align 8
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %v11039, align 8
  %586 = load i64*, i64** %top, align 8
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* %v11039, align 8
  %call1041 = call i64 @Fcons(i64 %587, i64 %588)
  %589 = load i64*, i64** %top, align 8
  store i64 %call1041, i64* %589, align 8
  %pc1042 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %590 = load i8*, i8** %pc1042, align 8
  %incdec.ptr1043 = getelementptr inbounds i8, i8* %590, i32 1
  store i8* %incdec.ptr1043, i8** %pc1042, align 8
  %591 = load i8, i8* %590, align 1
  %conv1044 = zext i8 %591 to i32
  store i32 %conv1044, i32* %op, align 4
  %idxprom1045 = sext i32 %conv1044 to i64
  %arrayidx1046 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1045
  %592 = load i8*, i8** %arrayidx1046, align 8
  br label %indirectgoto

insn_Blist1:                                      ; preds = %indirectgoto
  %593 = load i64*, i64** %top, align 8
  %594 = load i64, i64* %593, align 8
  %call1047 = call i64 @list1(i64 %594)
  %595 = load i64*, i64** %top, align 8
  store i64 %call1047, i64* %595, align 8
  %pc1048 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %596 = load i8*, i8** %pc1048, align 8
  %incdec.ptr1049 = getelementptr inbounds i8, i8* %596, i32 1
  store i8* %incdec.ptr1049, i8** %pc1048, align 8
  %597 = load i8, i8* %596, align 1
  %conv1050 = zext i8 %597 to i32
  store i32 %conv1050, i32* %op, align 4
  %idxprom1051 = sext i32 %conv1050 to i64
  %arrayidx1052 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1051
  %598 = load i8*, i8** %arrayidx1052, align 8
  br label %indirectgoto

insn_Blist2:                                      ; preds = %indirectgoto
  %599 = load i64*, i64** %top, align 8
  %incdec.ptr1054 = getelementptr inbounds i64, i64* %599, i32 -1
  store i64* %incdec.ptr1054, i64** %top, align 8
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %v11053, align 8
  %601 = load i64*, i64** %top, align 8
  %602 = load i64, i64* %601, align 8
  %603 = load i64, i64* %v11053, align 8
  %call1055 = call i64 @list2(i64 %602, i64 %603)
  %604 = load i64*, i64** %top, align 8
  store i64 %call1055, i64* %604, align 8
  %pc1056 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %605 = load i8*, i8** %pc1056, align 8
  %incdec.ptr1057 = getelementptr inbounds i8, i8* %605, i32 1
  store i8* %incdec.ptr1057, i8** %pc1056, align 8
  %606 = load i8, i8* %605, align 1
  %conv1058 = zext i8 %606 to i32
  store i32 %conv1058, i32* %op, align 4
  %idxprom1059 = sext i32 %conv1058 to i64
  %arrayidx1060 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1059
  %607 = load i8*, i8** %arrayidx1060, align 8
  br label %indirectgoto

insn_Blist3:                                      ; preds = %indirectgoto
  %608 = load i64*, i64** %top, align 8
  %add.ptr1061 = getelementptr inbounds i64, i64* %608, i64 -2
  store i64* %add.ptr1061, i64** %top, align 8
  %609 = load i64*, i64** %top, align 8
  %call1062 = call i64 @Flist(i64 3, i64* %609)
  %610 = load i64*, i64** %top, align 8
  store i64 %call1062, i64* %610, align 8
  %pc1063 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %611 = load i8*, i8** %pc1063, align 8
  %incdec.ptr1064 = getelementptr inbounds i8, i8* %611, i32 1
  store i8* %incdec.ptr1064, i8** %pc1063, align 8
  %612 = load i8, i8* %611, align 1
  %conv1065 = zext i8 %612 to i32
  store i32 %conv1065, i32* %op, align 4
  %idxprom1066 = sext i32 %conv1065 to i64
  %arrayidx1067 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1066
  %613 = load i8*, i8** %arrayidx1067, align 8
  br label %indirectgoto

insn_Blist4:                                      ; preds = %indirectgoto
  %614 = load i64*, i64** %top, align 8
  %add.ptr1068 = getelementptr inbounds i64, i64* %614, i64 -3
  store i64* %add.ptr1068, i64** %top, align 8
  %615 = load i64*, i64** %top, align 8
  %call1069 = call i64 @Flist(i64 4, i64* %615)
  %616 = load i64*, i64** %top, align 8
  store i64 %call1069, i64* %616, align 8
  %pc1070 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %617 = load i8*, i8** %pc1070, align 8
  %incdec.ptr1071 = getelementptr inbounds i8, i8* %617, i32 1
  store i8* %incdec.ptr1071, i8** %pc1070, align 8
  %618 = load i8, i8* %617, align 1
  %conv1072 = zext i8 %618 to i32
  store i32 %conv1072, i32* %op, align 4
  %idxprom1073 = sext i32 %conv1072 to i64
  %arrayidx1074 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1073
  %619 = load i8*, i8** %arrayidx1074, align 8
  br label %indirectgoto

insn_BlistN:                                      ; preds = %indirectgoto
  %pc1075 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %620 = load i8*, i8** %pc1075, align 8
  %incdec.ptr1076 = getelementptr inbounds i8, i8* %620, i32 1
  store i8* %incdec.ptr1076, i8** %pc1075, align 8
  %621 = load i8, i8* %620, align 1
  %conv1077 = zext i8 %621 to i32
  store i32 %conv1077, i32* %op, align 4
  %622 = load i32, i32* %op, align 4
  %sub1078 = sub nsw i32 %622, 1
  %623 = load i64*, i64** %top, align 8
  %idx.ext1079 = sext i32 %sub1078 to i64
  %idx.neg1080 = sub i64 0, %idx.ext1079
  %add.ptr1081 = getelementptr inbounds i64, i64* %623, i64 %idx.neg1080
  store i64* %add.ptr1081, i64** %top, align 8
  %624 = load i32, i32* %op, align 4
  %conv1082 = sext i32 %624 to i64
  %625 = load i64*, i64** %top, align 8
  %call1083 = call i64 @Flist(i64 %conv1082, i64* %625)
  %626 = load i64*, i64** %top, align 8
  store i64 %call1083, i64* %626, align 8
  %pc1084 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %627 = load i8*, i8** %pc1084, align 8
  %incdec.ptr1085 = getelementptr inbounds i8, i8* %627, i32 1
  store i8* %incdec.ptr1085, i8** %pc1084, align 8
  %628 = load i8, i8* %627, align 1
  %conv1086 = zext i8 %628 to i32
  store i32 %conv1086, i32* %op, align 4
  %idxprom1087 = sext i32 %conv1086 to i64
  %arrayidx1088 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1087
  %629 = load i8*, i8** %arrayidx1088, align 8
  br label %indirectgoto

insn_Blength:                                     ; preds = %indirectgoto
  %630 = load i64*, i64** %top, align 8
  %631 = load i64, i64* %630, align 8
  %call1089 = call i64 @Flength(i64 %631)
  %632 = load i64*, i64** %top, align 8
  store i64 %call1089, i64* %632, align 8
  %pc1090 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %633 = load i8*, i8** %pc1090, align 8
  %incdec.ptr1091 = getelementptr inbounds i8, i8* %633, i32 1
  store i8* %incdec.ptr1091, i8** %pc1090, align 8
  %634 = load i8, i8* %633, align 1
  %conv1092 = zext i8 %634 to i32
  store i32 %conv1092, i32* %op, align 4
  %idxprom1093 = sext i32 %conv1092 to i64
  %arrayidx1094 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1093
  %635 = load i8*, i8** %arrayidx1094, align 8
  br label %indirectgoto

insn_Baref:                                       ; preds = %indirectgoto
  %636 = load i64*, i64** %top, align 8
  %incdec.ptr1096 = getelementptr inbounds i64, i64* %636, i32 -1
  store i64* %incdec.ptr1096, i64** %top, align 8
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %v11095, align 8
  %638 = load i64*, i64** %top, align 8
  %639 = load i64, i64* %638, align 8
  %640 = load i64, i64* %v11095, align 8
  %call1097 = call i64 @Faref(i64 %639, i64 %640)
  %641 = load i64*, i64** %top, align 8
  store i64 %call1097, i64* %641, align 8
  %pc1098 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %642 = load i8*, i8** %pc1098, align 8
  %incdec.ptr1099 = getelementptr inbounds i8, i8* %642, i32 1
  store i8* %incdec.ptr1099, i8** %pc1098, align 8
  %643 = load i8, i8* %642, align 1
  %conv1100 = zext i8 %643 to i32
  store i32 %conv1100, i32* %op, align 4
  %idxprom1101 = sext i32 %conv1100 to i64
  %arrayidx1102 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1101
  %644 = load i8*, i8** %arrayidx1102, align 8
  br label %indirectgoto

insn_Baset:                                       ; preds = %indirectgoto
  %645 = load i64*, i64** %top, align 8
  %incdec.ptr1105 = getelementptr inbounds i64, i64* %645, i32 -1
  store i64* %incdec.ptr1105, i64** %top, align 8
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %v21104, align 8
  %647 = load i64*, i64** %top, align 8
  %incdec.ptr1106 = getelementptr inbounds i64, i64* %647, i32 -1
  store i64* %incdec.ptr1106, i64** %top, align 8
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %v11103, align 8
  %649 = load i64*, i64** %top, align 8
  %650 = load i64, i64* %649, align 8
  %651 = load i64, i64* %v11103, align 8
  %652 = load i64, i64* %v21104, align 8
  %call1107 = call i64 @Faset(i64 %650, i64 %651, i64 %652)
  %653 = load i64*, i64** %top, align 8
  store i64 %call1107, i64* %653, align 8
  %pc1108 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %654 = load i8*, i8** %pc1108, align 8
  %incdec.ptr1109 = getelementptr inbounds i8, i8* %654, i32 1
  store i8* %incdec.ptr1109, i8** %pc1108, align 8
  %655 = load i8, i8* %654, align 1
  %conv1110 = zext i8 %655 to i32
  store i32 %conv1110, i32* %op, align 4
  %idxprom1111 = sext i32 %conv1110 to i64
  %arrayidx1112 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1111
  %656 = load i8*, i8** %arrayidx1112, align 8
  br label %indirectgoto

insn_Bsymbol_value:                               ; preds = %indirectgoto
  %657 = load i64*, i64** %top, align 8
  %658 = load i64, i64* %657, align 8
  %call1113 = call i64 @Fsymbol_value(i64 %658)
  %659 = load i64*, i64** %top, align 8
  store i64 %call1113, i64* %659, align 8
  %pc1114 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %660 = load i8*, i8** %pc1114, align 8
  %incdec.ptr1115 = getelementptr inbounds i8, i8* %660, i32 1
  store i8* %incdec.ptr1115, i8** %pc1114, align 8
  %661 = load i8, i8* %660, align 1
  %conv1116 = zext i8 %661 to i32
  store i32 %conv1116, i32* %op, align 4
  %idxprom1117 = sext i32 %conv1116 to i64
  %arrayidx1118 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1117
  %662 = load i8*, i8** %arrayidx1118, align 8
  br label %indirectgoto

insn_Bsymbol_function:                            ; preds = %indirectgoto
  %663 = load i64*, i64** %top, align 8
  %664 = load i64, i64* %663, align 8
  %call1119 = call i64 @Fsymbol_function(i64 %664)
  %665 = load i64*, i64** %top, align 8
  store i64 %call1119, i64* %665, align 8
  %pc1120 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %666 = load i8*, i8** %pc1120, align 8
  %incdec.ptr1121 = getelementptr inbounds i8, i8* %666, i32 1
  store i8* %incdec.ptr1121, i8** %pc1120, align 8
  %667 = load i8, i8* %666, align 1
  %conv1122 = zext i8 %667 to i32
  store i32 %conv1122, i32* %op, align 4
  %idxprom1123 = sext i32 %conv1122 to i64
  %arrayidx1124 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1123
  %668 = load i8*, i8** %arrayidx1124, align 8
  br label %indirectgoto

insn_Bset:                                        ; preds = %indirectgoto
  %669 = load i64*, i64** %top, align 8
  %incdec.ptr1126 = getelementptr inbounds i64, i64* %669, i32 -1
  store i64* %incdec.ptr1126, i64** %top, align 8
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %v11125, align 8
  %671 = load i64*, i64** %top, align 8
  %672 = load i64, i64* %671, align 8
  %673 = load i64, i64* %v11125, align 8
  %call1127 = call i64 @Fset(i64 %672, i64 %673)
  %674 = load i64*, i64** %top, align 8
  store i64 %call1127, i64* %674, align 8
  %pc1128 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %675 = load i8*, i8** %pc1128, align 8
  %incdec.ptr1129 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %incdec.ptr1129, i8** %pc1128, align 8
  %676 = load i8, i8* %675, align 1
  %conv1130 = zext i8 %676 to i32
  store i32 %conv1130, i32* %op, align 4
  %idxprom1131 = sext i32 %conv1130 to i64
  %arrayidx1132 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1131
  %677 = load i8*, i8** %arrayidx1132, align 8
  br label %indirectgoto

insn_Bfset:                                       ; preds = %indirectgoto
  %678 = load i64*, i64** %top, align 8
  %incdec.ptr1134 = getelementptr inbounds i64, i64* %678, i32 -1
  store i64* %incdec.ptr1134, i64** %top, align 8
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %v11133, align 8
  %680 = load i64*, i64** %top, align 8
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* %v11133, align 8
  %call1135 = call i64 @Ffset(i64 %681, i64 %682)
  %683 = load i64*, i64** %top, align 8
  store i64 %call1135, i64* %683, align 8
  %pc1136 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %684 = load i8*, i8** %pc1136, align 8
  %incdec.ptr1137 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %incdec.ptr1137, i8** %pc1136, align 8
  %685 = load i8, i8* %684, align 1
  %conv1138 = zext i8 %685 to i32
  store i32 %conv1138, i32* %op, align 4
  %idxprom1139 = sext i32 %conv1138 to i64
  %arrayidx1140 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1139
  %686 = load i8*, i8** %arrayidx1140, align 8
  br label %indirectgoto

insn_Bget:                                        ; preds = %indirectgoto
  %687 = load i64*, i64** %top, align 8
  %incdec.ptr1142 = getelementptr inbounds i64, i64* %687, i32 -1
  store i64* %incdec.ptr1142, i64** %top, align 8
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %v11141, align 8
  %689 = load i64*, i64** %top, align 8
  %690 = load i64, i64* %689, align 8
  %691 = load i64, i64* %v11141, align 8
  %call1143 = call i64 @Fget(i64 %690, i64 %691)
  %692 = load i64*, i64** %top, align 8
  store i64 %call1143, i64* %692, align 8
  %pc1144 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %693 = load i8*, i8** %pc1144, align 8
  %incdec.ptr1145 = getelementptr inbounds i8, i8* %693, i32 1
  store i8* %incdec.ptr1145, i8** %pc1144, align 8
  %694 = load i8, i8* %693, align 1
  %conv1146 = zext i8 %694 to i32
  store i32 %conv1146, i32* %op, align 4
  %idxprom1147 = sext i32 %conv1146 to i64
  %arrayidx1148 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1147
  %695 = load i8*, i8** %arrayidx1148, align 8
  br label %indirectgoto

insn_Bsubstring:                                  ; preds = %indirectgoto
  %696 = load i64*, i64** %top, align 8
  %incdec.ptr1151 = getelementptr inbounds i64, i64* %696, i32 -1
  store i64* %incdec.ptr1151, i64** %top, align 8
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %v21150, align 8
  %698 = load i64*, i64** %top, align 8
  %incdec.ptr1152 = getelementptr inbounds i64, i64* %698, i32 -1
  store i64* %incdec.ptr1152, i64** %top, align 8
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %v11149, align 8
  %700 = load i64*, i64** %top, align 8
  %701 = load i64, i64* %700, align 8
  %702 = load i64, i64* %v11149, align 8
  %703 = load i64, i64* %v21150, align 8
  %call1153 = call i64 @Fsubstring(i64 %701, i64 %702, i64 %703)
  %704 = load i64*, i64** %top, align 8
  store i64 %call1153, i64* %704, align 8
  %pc1154 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %705 = load i8*, i8** %pc1154, align 8
  %incdec.ptr1155 = getelementptr inbounds i8, i8* %705, i32 1
  store i8* %incdec.ptr1155, i8** %pc1154, align 8
  %706 = load i8, i8* %705, align 1
  %conv1156 = zext i8 %706 to i32
  store i32 %conv1156, i32* %op, align 4
  %idxprom1157 = sext i32 %conv1156 to i64
  %arrayidx1158 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1157
  %707 = load i8*, i8** %arrayidx1158, align 8
  br label %indirectgoto

insn_Bconcat2:                                    ; preds = %indirectgoto
  %708 = load i64*, i64** %top, align 8
  %add.ptr1159 = getelementptr inbounds i64, i64* %708, i64 -1
  store i64* %add.ptr1159, i64** %top, align 8
  %709 = load i64*, i64** %top, align 8
  %call1160 = call i64 @Fconcat(i64 2, i64* %709)
  %710 = load i64*, i64** %top, align 8
  store i64 %call1160, i64* %710, align 8
  %pc1161 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %711 = load i8*, i8** %pc1161, align 8
  %incdec.ptr1162 = getelementptr inbounds i8, i8* %711, i32 1
  store i8* %incdec.ptr1162, i8** %pc1161, align 8
  %712 = load i8, i8* %711, align 1
  %conv1163 = zext i8 %712 to i32
  store i32 %conv1163, i32* %op, align 4
  %idxprom1164 = sext i32 %conv1163 to i64
  %arrayidx1165 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1164
  %713 = load i8*, i8** %arrayidx1165, align 8
  br label %indirectgoto

insn_Bconcat3:                                    ; preds = %indirectgoto
  %714 = load i64*, i64** %top, align 8
  %add.ptr1166 = getelementptr inbounds i64, i64* %714, i64 -2
  store i64* %add.ptr1166, i64** %top, align 8
  %715 = load i64*, i64** %top, align 8
  %call1167 = call i64 @Fconcat(i64 3, i64* %715)
  %716 = load i64*, i64** %top, align 8
  store i64 %call1167, i64* %716, align 8
  %pc1168 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %717 = load i8*, i8** %pc1168, align 8
  %incdec.ptr1169 = getelementptr inbounds i8, i8* %717, i32 1
  store i8* %incdec.ptr1169, i8** %pc1168, align 8
  %718 = load i8, i8* %717, align 1
  %conv1170 = zext i8 %718 to i32
  store i32 %conv1170, i32* %op, align 4
  %idxprom1171 = sext i32 %conv1170 to i64
  %arrayidx1172 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1171
  %719 = load i8*, i8** %arrayidx1172, align 8
  br label %indirectgoto

insn_Bconcat4:                                    ; preds = %indirectgoto
  %720 = load i64*, i64** %top, align 8
  %add.ptr1173 = getelementptr inbounds i64, i64* %720, i64 -3
  store i64* %add.ptr1173, i64** %top, align 8
  %721 = load i64*, i64** %top, align 8
  %call1174 = call i64 @Fconcat(i64 4, i64* %721)
  %722 = load i64*, i64** %top, align 8
  store i64 %call1174, i64* %722, align 8
  %pc1175 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %723 = load i8*, i8** %pc1175, align 8
  %incdec.ptr1176 = getelementptr inbounds i8, i8* %723, i32 1
  store i8* %incdec.ptr1176, i8** %pc1175, align 8
  %724 = load i8, i8* %723, align 1
  %conv1177 = zext i8 %724 to i32
  store i32 %conv1177, i32* %op, align 4
  %idxprom1178 = sext i32 %conv1177 to i64
  %arrayidx1179 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1178
  %725 = load i8*, i8** %arrayidx1179, align 8
  br label %indirectgoto

insn_BconcatN:                                    ; preds = %indirectgoto
  %pc1180 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %726 = load i8*, i8** %pc1180, align 8
  %incdec.ptr1181 = getelementptr inbounds i8, i8* %726, i32 1
  store i8* %incdec.ptr1181, i8** %pc1180, align 8
  %727 = load i8, i8* %726, align 1
  %conv1182 = zext i8 %727 to i32
  store i32 %conv1182, i32* %op, align 4
  %728 = load i32, i32* %op, align 4
  %sub1183 = sub nsw i32 %728, 1
  %729 = load i64*, i64** %top, align 8
  %idx.ext1184 = sext i32 %sub1183 to i64
  %idx.neg1185 = sub i64 0, %idx.ext1184
  %add.ptr1186 = getelementptr inbounds i64, i64* %729, i64 %idx.neg1185
  store i64* %add.ptr1186, i64** %top, align 8
  %730 = load i32, i32* %op, align 4
  %conv1187 = sext i32 %730 to i64
  %731 = load i64*, i64** %top, align 8
  %call1188 = call i64 @Fconcat(i64 %conv1187, i64* %731)
  %732 = load i64*, i64** %top, align 8
  store i64 %call1188, i64* %732, align 8
  %pc1189 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %733 = load i8*, i8** %pc1189, align 8
  %incdec.ptr1190 = getelementptr inbounds i8, i8* %733, i32 1
  store i8* %incdec.ptr1190, i8** %pc1189, align 8
  %734 = load i8, i8* %733, align 1
  %conv1191 = zext i8 %734 to i32
  store i32 %conv1191, i32* %op, align 4
  %idxprom1192 = sext i32 %conv1191 to i64
  %arrayidx1193 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1192
  %735 = load i8*, i8** %arrayidx1193, align 8
  br label %indirectgoto

insn_Bsub1:                                       ; preds = %indirectgoto
  %736 = load i64*, i64** %top, align 8
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %v11194, align 8
  %738 = load i64, i64* %v11194, align 8
  %and1195 = and i64 %738, 7
  %conv1196 = trunc i64 %and1195 to i32
  %and1197 = and i32 %conv1196, -5
  %cmp1198 = icmp eq i32 %and1197, 2
  br i1 %cmp1198, label %if.then.1200, label %if.else.1205

if.then.1200:                                     ; preds = %insn_Bsub1
  %739 = load i64, i64* %v11194, align 8
  %shr1201 = ashr i64 %739, 2
  %sub1202 = sub nsw i64 %shr1201, 1
  %shl1203 = shl i64 %sub1202, 2
  %add1204 = add i64 %shl1203, 2
  store i64 %add1204, i64* %v11194, align 8
  %740 = load i64, i64* %v11194, align 8
  %741 = load i64*, i64** %top, align 8
  store i64 %740, i64* %741, align 8
  br label %if.end.1207

if.else.1205:                                     ; preds = %insn_Bsub1
  %742 = load i64, i64* %v11194, align 8
  %call1206 = call i64 @Fsub1(i64 %742)
  %743 = load i64*, i64** %top, align 8
  store i64 %call1206, i64* %743, align 8
  br label %if.end.1207

if.end.1207:                                      ; preds = %if.else.1205, %if.then.1200
  %pc1208 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %744 = load i8*, i8** %pc1208, align 8
  %incdec.ptr1209 = getelementptr inbounds i8, i8* %744, i32 1
  store i8* %incdec.ptr1209, i8** %pc1208, align 8
  %745 = load i8, i8* %744, align 1
  %conv1210 = zext i8 %745 to i32
  store i32 %conv1210, i32* %op, align 4
  %idxprom1211 = sext i32 %conv1210 to i64
  %arrayidx1212 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1211
  %746 = load i8*, i8** %arrayidx1212, align 8
  br label %indirectgoto

insn_Badd1:                                       ; preds = %indirectgoto
  %747 = load i64*, i64** %top, align 8
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %v11213, align 8
  %749 = load i64, i64* %v11213, align 8
  %and1214 = and i64 %749, 7
  %conv1215 = trunc i64 %and1214 to i32
  %and1216 = and i32 %conv1215, -5
  %cmp1217 = icmp eq i32 %and1216, 2
  br i1 %cmp1217, label %if.then.1219, label %if.else.1224

if.then.1219:                                     ; preds = %insn_Badd1
  %750 = load i64, i64* %v11213, align 8
  %shr1220 = ashr i64 %750, 2
  %add1221 = add nsw i64 %shr1220, 1
  %shl1222 = shl i64 %add1221, 2
  %add1223 = add i64 %shl1222, 2
  store i64 %add1223, i64* %v11213, align 8
  %751 = load i64, i64* %v11213, align 8
  %752 = load i64*, i64** %top, align 8
  store i64 %751, i64* %752, align 8
  br label %if.end.1226

if.else.1224:                                     ; preds = %insn_Badd1
  %753 = load i64, i64* %v11213, align 8
  %call1225 = call i64 @Fadd1(i64 %753)
  %754 = load i64*, i64** %top, align 8
  store i64 %call1225, i64* %754, align 8
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.else.1224, %if.then.1219
  %pc1227 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %755 = load i8*, i8** %pc1227, align 8
  %incdec.ptr1228 = getelementptr inbounds i8, i8* %755, i32 1
  store i8* %incdec.ptr1228, i8** %pc1227, align 8
  %756 = load i8, i8* %755, align 1
  %conv1229 = zext i8 %756 to i32
  store i32 %conv1229, i32* %op, align 4
  %idxprom1230 = sext i32 %conv1229 to i64
  %arrayidx1231 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1230
  %757 = load i8*, i8** %arrayidx1231, align 8
  br label %indirectgoto

insn_Beqlsign:                                    ; preds = %indirectgoto
  %758 = load i64*, i64** %top, align 8
  %incdec.ptr1234 = getelementptr inbounds i64, i64* %758, i32 -1
  store i64* %incdec.ptr1234, i64** %top, align 8
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %v21233, align 8
  %760 = load i64*, i64** %top, align 8
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %v11232, align 8
  br label %do.body.1235

do.body.1235:                                     ; preds = %insn_Beqlsign
  %762 = load i64, i64* %v11232, align 8
  %and1236 = and i64 %762, 7
  %conv1237 = trunc i64 %and1236 to i32
  %cmp1238 = icmp eq i32 %conv1237, 1
  br i1 %cmp1238, label %land.lhs.true.1240, label %if.else.1247

land.lhs.true.1240:                               ; preds = %do.body.1235
  %763 = load i64, i64* %v11232, align 8
  %call1241 = call i32 @XMISCTYPE(i64 %763)
  %cmp1242 = icmp eq i32 %call1241, 24236
  br i1 %cmp1242, label %if.then.1244, label %if.else.1247

if.then.1244:                                     ; preds = %land.lhs.true.1240
  %764 = load i64, i64* %v11232, align 8
  %call1245 = call i64 @marker_position(i64 %764)
  %call1246 = call i64 @make_natnum(i64 %call1245)
  store i64 %call1246, i64* %v11232, align 8
  br label %if.end.1254

if.else.1247:                                     ; preds = %land.lhs.true.1240, %do.body.1235
  %765 = load i64, i64* %v11232, align 8
  %call1248 = call zeroext i1 @NUMBERP(i64 %765)
  br i1 %call1248, label %cond.true.1250, label %cond.false.1251

cond.true.1250:                                   ; preds = %if.else.1247
  br label %cond.end.1253

cond.false.1251:                                  ; preds = %if.else.1247
  %call1252 = call i64 @builtin_lisp_symbol(i32 710)
  %766 = load i64, i64* %v11232, align 8
  %767 = call i64 @wrong_type_argument(i64 %call1252, i64 %766) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1253

cond.end.1253:                                    ; preds = %768, %cond.true.1250
  br label %if.end.1254

if.end.1254:                                      ; preds = %cond.end.1253, %if.then.1244
  br label %do.end.1255

do.end.1255:                                      ; preds = %if.end.1254
  br label %do.body.1256

do.body.1256:                                     ; preds = %do.end.1255
  %769 = load i64, i64* %v21233, align 8
  %and1257 = and i64 %769, 7
  %conv1258 = trunc i64 %and1257 to i32
  %cmp1259 = icmp eq i32 %conv1258, 1
  br i1 %cmp1259, label %land.lhs.true.1261, label %if.else.1268

land.lhs.true.1261:                               ; preds = %do.body.1256
  %770 = load i64, i64* %v21233, align 8
  %call1262 = call i32 @XMISCTYPE(i64 %770)
  %cmp1263 = icmp eq i32 %call1262, 24236
  br i1 %cmp1263, label %if.then.1265, label %if.else.1268

if.then.1265:                                     ; preds = %land.lhs.true.1261
  %771 = load i64, i64* %v21233, align 8
  %call1266 = call i64 @marker_position(i64 %771)
  %call1267 = call i64 @make_natnum(i64 %call1266)
  store i64 %call1267, i64* %v21233, align 8
  br label %if.end.1275

if.else.1268:                                     ; preds = %land.lhs.true.1261, %do.body.1256
  %772 = load i64, i64* %v21233, align 8
  %call1269 = call zeroext i1 @NUMBERP(i64 %772)
  br i1 %call1269, label %cond.true.1271, label %cond.false.1272

cond.true.1271:                                   ; preds = %if.else.1268
  br label %cond.end.1274

cond.false.1272:                                  ; preds = %if.else.1268
  %call1273 = call i64 @builtin_lisp_symbol(i32 710)
  %773 = load i64, i64* %v21233, align 8
  %774 = call i64 @wrong_type_argument(i64 %call1273, i64 %773) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1274

cond.end.1274:                                    ; preds = %775, %cond.true.1271
  br label %if.end.1275

if.end.1275:                                      ; preds = %cond.end.1274, %if.then.1265
  br label %do.end.1276

do.end.1276:                                      ; preds = %if.end.1275
  %776 = load i64, i64* %v11232, align 8
  %and1277 = and i64 %776, 7
  %conv1278 = trunc i64 %and1277 to i32
  %cmp1279 = icmp eq i32 %conv1278, 7
  br i1 %cmp1279, label %if.then.1286, label %lor.lhs.false.1281

lor.lhs.false.1281:                               ; preds = %do.end.1276
  %777 = load i64, i64* %v21233, align 8
  %and1282 = and i64 %777, 7
  %conv1283 = trunc i64 %and1282 to i32
  %cmp1284 = icmp eq i32 %conv1283, 7
  br i1 %cmp1284, label %if.then.1286, label %if.else.1317

if.then.1286:                                     ; preds = %lor.lhs.false.1281, %do.end.1276
  %778 = load i64, i64* %v11232, align 8
  %and1287 = and i64 %778, 7
  %conv1288 = trunc i64 %and1287 to i32
  %cmp1289 = icmp eq i32 %conv1288, 7
  br i1 %cmp1289, label %cond.true.1291, label %cond.false.1293

cond.true.1291:                                   ; preds = %if.then.1286
  %779 = load i64, i64* %v11232, align 8
  %call1292 = call double @XFLOAT_DATA(i64 %779)
  br label %cond.end.1296

cond.false.1293:                                  ; preds = %if.then.1286
  %780 = load i64, i64* %v11232, align 8
  %shr1294 = ashr i64 %780, 2
  %conv1295 = sitofp i64 %shr1294 to double
  br label %cond.end.1296

cond.end.1296:                                    ; preds = %cond.false.1293, %cond.true.1291
  %cond1297 = phi double [ %call1292, %cond.true.1291 ], [ %conv1295, %cond.false.1293 ]
  store double %cond1297, double* %f1, align 8
  %781 = load i64, i64* %v21233, align 8
  %and1298 = and i64 %781, 7
  %conv1299 = trunc i64 %and1298 to i32
  %cmp1300 = icmp eq i32 %conv1299, 7
  br i1 %cmp1300, label %cond.true.1302, label %cond.false.1304

cond.true.1302:                                   ; preds = %cond.end.1296
  %782 = load i64, i64* %v21233, align 8
  %call1303 = call double @XFLOAT_DATA(i64 %782)
  br label %cond.end.1307

cond.false.1304:                                  ; preds = %cond.end.1296
  %783 = load i64, i64* %v21233, align 8
  %shr1305 = ashr i64 %783, 2
  %conv1306 = sitofp i64 %shr1305 to double
  br label %cond.end.1307

cond.end.1307:                                    ; preds = %cond.false.1304, %cond.true.1302
  %cond1308 = phi double [ %call1303, %cond.true.1302 ], [ %conv1306, %cond.false.1304 ]
  store double %cond1308, double* %f2, align 8
  %784 = load double, double* %f1, align 8
  %785 = load double, double* %f2, align 8
  %cmp1309 = fcmp oeq double %784, %785
  br i1 %cmp1309, label %cond.true.1311, label %cond.false.1313

cond.true.1311:                                   ; preds = %cond.end.1307
  %call1312 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1315

cond.false.1313:                                  ; preds = %cond.end.1307
  %call1314 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1315

cond.end.1315:                                    ; preds = %cond.false.1313, %cond.true.1311
  %cond1316 = phi i64 [ %call1312, %cond.true.1311 ], [ %call1314, %cond.false.1313 ]
  %786 = load i64*, i64** %top, align 8
  store i64 %cond1316, i64* %786, align 8
  br label %if.end.1328

if.else.1317:                                     ; preds = %lor.lhs.false.1281
  %787 = load i64, i64* %v11232, align 8
  %shr1318 = ashr i64 %787, 2
  %788 = load i64, i64* %v21233, align 8
  %shr1319 = ashr i64 %788, 2
  %cmp1320 = icmp eq i64 %shr1318, %shr1319
  br i1 %cmp1320, label %cond.true.1322, label %cond.false.1324

cond.true.1322:                                   ; preds = %if.else.1317
  %call1323 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1326

cond.false.1324:                                  ; preds = %if.else.1317
  %call1325 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1326

cond.end.1326:                                    ; preds = %cond.false.1324, %cond.true.1322
  %cond1327 = phi i64 [ %call1323, %cond.true.1322 ], [ %call1325, %cond.false.1324 ]
  %789 = load i64*, i64** %top, align 8
  store i64 %cond1327, i64* %789, align 8
  br label %if.end.1328

if.end.1328:                                      ; preds = %cond.end.1326, %cond.end.1315
  %pc1329 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %790 = load i8*, i8** %pc1329, align 8
  %incdec.ptr1330 = getelementptr inbounds i8, i8* %790, i32 1
  store i8* %incdec.ptr1330, i8** %pc1329, align 8
  %791 = load i8, i8* %790, align 1
  %conv1331 = zext i8 %791 to i32
  store i32 %conv1331, i32* %op, align 4
  %idxprom1332 = sext i32 %conv1331 to i64
  %arrayidx1333 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1332
  %792 = load i8*, i8** %arrayidx1333, align 8
  br label %indirectgoto

insn_Bgtr:                                        ; preds = %indirectgoto
  %793 = load i64*, i64** %top, align 8
  %incdec.ptr1335 = getelementptr inbounds i64, i64* %793, i32 -1
  store i64* %incdec.ptr1335, i64** %top, align 8
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %v11334, align 8
  %795 = load i64*, i64** %top, align 8
  %796 = load i64, i64* %795, align 8
  %797 = load i64, i64* %v11334, align 8
  %call1336 = call i64 @arithcompare(i64 %796, i64 %797, i32 3)
  %798 = load i64*, i64** %top, align 8
  store i64 %call1336, i64* %798, align 8
  %pc1337 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %799 = load i8*, i8** %pc1337, align 8
  %incdec.ptr1338 = getelementptr inbounds i8, i8* %799, i32 1
  store i8* %incdec.ptr1338, i8** %pc1337, align 8
  %800 = load i8, i8* %799, align 1
  %conv1339 = zext i8 %800 to i32
  store i32 %conv1339, i32* %op, align 4
  %idxprom1340 = sext i32 %conv1339 to i64
  %arrayidx1341 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1340
  %801 = load i8*, i8** %arrayidx1341, align 8
  br label %indirectgoto

insn_Blss:                                        ; preds = %indirectgoto
  %802 = load i64*, i64** %top, align 8
  %incdec.ptr1343 = getelementptr inbounds i64, i64* %802, i32 -1
  store i64* %incdec.ptr1343, i64** %top, align 8
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %v11342, align 8
  %804 = load i64*, i64** %top, align 8
  %805 = load i64, i64* %804, align 8
  %806 = load i64, i64* %v11342, align 8
  %call1344 = call i64 @arithcompare(i64 %805, i64 %806, i32 2)
  %807 = load i64*, i64** %top, align 8
  store i64 %call1344, i64* %807, align 8
  %pc1345 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %808 = load i8*, i8** %pc1345, align 8
  %incdec.ptr1346 = getelementptr inbounds i8, i8* %808, i32 1
  store i8* %incdec.ptr1346, i8** %pc1345, align 8
  %809 = load i8, i8* %808, align 1
  %conv1347 = zext i8 %809 to i32
  store i32 %conv1347, i32* %op, align 4
  %idxprom1348 = sext i32 %conv1347 to i64
  %arrayidx1349 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1348
  %810 = load i8*, i8** %arrayidx1349, align 8
  br label %indirectgoto

insn_Bleq:                                        ; preds = %indirectgoto
  %811 = load i64*, i64** %top, align 8
  %incdec.ptr1351 = getelementptr inbounds i64, i64* %811, i32 -1
  store i64* %incdec.ptr1351, i64** %top, align 8
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %v11350, align 8
  %813 = load i64*, i64** %top, align 8
  %814 = load i64, i64* %813, align 8
  %815 = load i64, i64* %v11350, align 8
  %call1352 = call i64 @arithcompare(i64 %814, i64 %815, i32 4)
  %816 = load i64*, i64** %top, align 8
  store i64 %call1352, i64* %816, align 8
  %pc1353 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %817 = load i8*, i8** %pc1353, align 8
  %incdec.ptr1354 = getelementptr inbounds i8, i8* %817, i32 1
  store i8* %incdec.ptr1354, i8** %pc1353, align 8
  %818 = load i8, i8* %817, align 1
  %conv1355 = zext i8 %818 to i32
  store i32 %conv1355, i32* %op, align 4
  %idxprom1356 = sext i32 %conv1355 to i64
  %arrayidx1357 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1356
  %819 = load i8*, i8** %arrayidx1357, align 8
  br label %indirectgoto

insn_Bgeq:                                        ; preds = %indirectgoto
  %820 = load i64*, i64** %top, align 8
  %incdec.ptr1359 = getelementptr inbounds i64, i64* %820, i32 -1
  store i64* %incdec.ptr1359, i64** %top, align 8
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %v11358, align 8
  %822 = load i64*, i64** %top, align 8
  %823 = load i64, i64* %822, align 8
  %824 = load i64, i64* %v11358, align 8
  %call1360 = call i64 @arithcompare(i64 %823, i64 %824, i32 5)
  %825 = load i64*, i64** %top, align 8
  store i64 %call1360, i64* %825, align 8
  %pc1361 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %826 = load i8*, i8** %pc1361, align 8
  %incdec.ptr1362 = getelementptr inbounds i8, i8* %826, i32 1
  store i8* %incdec.ptr1362, i8** %pc1361, align 8
  %827 = load i8, i8* %826, align 1
  %conv1363 = zext i8 %827 to i32
  store i32 %conv1363, i32* %op, align 4
  %idxprom1364 = sext i32 %conv1363 to i64
  %arrayidx1365 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1364
  %828 = load i8*, i8** %arrayidx1365, align 8
  br label %indirectgoto

insn_Bdiff:                                       ; preds = %indirectgoto
  %829 = load i64*, i64** %top, align 8
  %add.ptr1366 = getelementptr inbounds i64, i64* %829, i64 -1
  store i64* %add.ptr1366, i64** %top, align 8
  %830 = load i64*, i64** %top, align 8
  %call1367 = call i64 @Fminus(i64 2, i64* %830)
  %831 = load i64*, i64** %top, align 8
  store i64 %call1367, i64* %831, align 8
  %pc1368 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %832 = load i8*, i8** %pc1368, align 8
  %incdec.ptr1369 = getelementptr inbounds i8, i8* %832, i32 1
  store i8* %incdec.ptr1369, i8** %pc1368, align 8
  %833 = load i8, i8* %832, align 1
  %conv1370 = zext i8 %833 to i32
  store i32 %conv1370, i32* %op, align 4
  %idxprom1371 = sext i32 %conv1370 to i64
  %arrayidx1372 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1371
  %834 = load i8*, i8** %arrayidx1372, align 8
  br label %indirectgoto

insn_Bnegate:                                     ; preds = %indirectgoto
  %835 = load i64*, i64** %top, align 8
  %836 = load i64, i64* %835, align 8
  store i64 %836, i64* %v11373, align 8
  %837 = load i64, i64* %v11373, align 8
  %and1374 = and i64 %837, 7
  %conv1375 = trunc i64 %and1374 to i32
  %and1376 = and i32 %conv1375, -5
  %cmp1377 = icmp eq i32 %and1376, 2
  br i1 %cmp1377, label %if.then.1379, label %if.else.1384

if.then.1379:                                     ; preds = %insn_Bnegate
  %838 = load i64, i64* %v11373, align 8
  %shr1380 = ashr i64 %838, 2
  %sub1381 = sub nsw i64 0, %shr1380
  %shl1382 = shl i64 %sub1381, 2
  %add1383 = add i64 %shl1382, 2
  store i64 %add1383, i64* %v11373, align 8
  %839 = load i64, i64* %v11373, align 8
  %840 = load i64*, i64** %top, align 8
  store i64 %839, i64* %840, align 8
  br label %if.end.1386

if.else.1384:                                     ; preds = %insn_Bnegate
  %841 = load i64*, i64** %top, align 8
  %call1385 = call i64 @Fminus(i64 1, i64* %841)
  %842 = load i64*, i64** %top, align 8
  store i64 %call1385, i64* %842, align 8
  br label %if.end.1386

if.end.1386:                                      ; preds = %if.else.1384, %if.then.1379
  %pc1387 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %843 = load i8*, i8** %pc1387, align 8
  %incdec.ptr1388 = getelementptr inbounds i8, i8* %843, i32 1
  store i8* %incdec.ptr1388, i8** %pc1387, align 8
  %844 = load i8, i8* %843, align 1
  %conv1389 = zext i8 %844 to i32
  store i32 %conv1389, i32* %op, align 4
  %idxprom1390 = sext i32 %conv1389 to i64
  %arrayidx1391 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1390
  %845 = load i8*, i8** %arrayidx1391, align 8
  br label %indirectgoto

insn_Bplus:                                       ; preds = %indirectgoto
  %846 = load i64*, i64** %top, align 8
  %add.ptr1392 = getelementptr inbounds i64, i64* %846, i64 -1
  store i64* %add.ptr1392, i64** %top, align 8
  %847 = load i64*, i64** %top, align 8
  %call1393 = call i64 @Fplus(i64 2, i64* %847)
  %848 = load i64*, i64** %top, align 8
  store i64 %call1393, i64* %848, align 8
  %pc1394 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %849 = load i8*, i8** %pc1394, align 8
  %incdec.ptr1395 = getelementptr inbounds i8, i8* %849, i32 1
  store i8* %incdec.ptr1395, i8** %pc1394, align 8
  %850 = load i8, i8* %849, align 1
  %conv1396 = zext i8 %850 to i32
  store i32 %conv1396, i32* %op, align 4
  %idxprom1397 = sext i32 %conv1396 to i64
  %arrayidx1398 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1397
  %851 = load i8*, i8** %arrayidx1398, align 8
  br label %indirectgoto

insn_Bmax:                                        ; preds = %indirectgoto
  %852 = load i64*, i64** %top, align 8
  %add.ptr1399 = getelementptr inbounds i64, i64* %852, i64 -1
  store i64* %add.ptr1399, i64** %top, align 8
  %853 = load i64*, i64** %top, align 8
  %call1400 = call i64 @Fmax(i64 2, i64* %853)
  %854 = load i64*, i64** %top, align 8
  store i64 %call1400, i64* %854, align 8
  %pc1401 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %855 = load i8*, i8** %pc1401, align 8
  %incdec.ptr1402 = getelementptr inbounds i8, i8* %855, i32 1
  store i8* %incdec.ptr1402, i8** %pc1401, align 8
  %856 = load i8, i8* %855, align 1
  %conv1403 = zext i8 %856 to i32
  store i32 %conv1403, i32* %op, align 4
  %idxprom1404 = sext i32 %conv1403 to i64
  %arrayidx1405 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1404
  %857 = load i8*, i8** %arrayidx1405, align 8
  br label %indirectgoto

insn_Bmin:                                        ; preds = %indirectgoto
  %858 = load i64*, i64** %top, align 8
  %add.ptr1406 = getelementptr inbounds i64, i64* %858, i64 -1
  store i64* %add.ptr1406, i64** %top, align 8
  %859 = load i64*, i64** %top, align 8
  %call1407 = call i64 @Fmin(i64 2, i64* %859)
  %860 = load i64*, i64** %top, align 8
  store i64 %call1407, i64* %860, align 8
  %pc1408 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %861 = load i8*, i8** %pc1408, align 8
  %incdec.ptr1409 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %incdec.ptr1409, i8** %pc1408, align 8
  %862 = load i8, i8* %861, align 1
  %conv1410 = zext i8 %862 to i32
  store i32 %conv1410, i32* %op, align 4
  %idxprom1411 = sext i32 %conv1410 to i64
  %arrayidx1412 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1411
  %863 = load i8*, i8** %arrayidx1412, align 8
  br label %indirectgoto

insn_Bmult:                                       ; preds = %indirectgoto
  %864 = load i64*, i64** %top, align 8
  %add.ptr1413 = getelementptr inbounds i64, i64* %864, i64 -1
  store i64* %add.ptr1413, i64** %top, align 8
  %865 = load i64*, i64** %top, align 8
  %call1414 = call i64 @Ftimes(i64 2, i64* %865)
  %866 = load i64*, i64** %top, align 8
  store i64 %call1414, i64* %866, align 8
  %pc1415 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %867 = load i8*, i8** %pc1415, align 8
  %incdec.ptr1416 = getelementptr inbounds i8, i8* %867, i32 1
  store i8* %incdec.ptr1416, i8** %pc1415, align 8
  %868 = load i8, i8* %867, align 1
  %conv1417 = zext i8 %868 to i32
  store i32 %conv1417, i32* %op, align 4
  %idxprom1418 = sext i32 %conv1417 to i64
  %arrayidx1419 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1418
  %869 = load i8*, i8** %arrayidx1419, align 8
  br label %indirectgoto

insn_Bquo:                                        ; preds = %indirectgoto
  %870 = load i64*, i64** %top, align 8
  %add.ptr1420 = getelementptr inbounds i64, i64* %870, i64 -1
  store i64* %add.ptr1420, i64** %top, align 8
  %871 = load i64*, i64** %top, align 8
  %call1421 = call i64 @Fquo(i64 2, i64* %871)
  %872 = load i64*, i64** %top, align 8
  store i64 %call1421, i64* %872, align 8
  %pc1422 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %873 = load i8*, i8** %pc1422, align 8
  %incdec.ptr1423 = getelementptr inbounds i8, i8* %873, i32 1
  store i8* %incdec.ptr1423, i8** %pc1422, align 8
  %874 = load i8, i8* %873, align 1
  %conv1424 = zext i8 %874 to i32
  store i32 %conv1424, i32* %op, align 4
  %idxprom1425 = sext i32 %conv1424 to i64
  %arrayidx1426 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1425
  %875 = load i8*, i8** %arrayidx1426, align 8
  br label %indirectgoto

insn_Brem:                                        ; preds = %indirectgoto
  %876 = load i64*, i64** %top, align 8
  %incdec.ptr1428 = getelementptr inbounds i64, i64* %876, i32 -1
  store i64* %incdec.ptr1428, i64** %top, align 8
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %v11427, align 8
  %878 = load i64*, i64** %top, align 8
  %879 = load i64, i64* %878, align 8
  %880 = load i64, i64* %v11427, align 8
  %call1429 = call i64 @Frem(i64 %879, i64 %880)
  %881 = load i64*, i64** %top, align 8
  store i64 %call1429, i64* %881, align 8
  %pc1430 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %882 = load i8*, i8** %pc1430, align 8
  %incdec.ptr1431 = getelementptr inbounds i8, i8* %882, i32 1
  store i8* %incdec.ptr1431, i8** %pc1430, align 8
  %883 = load i8, i8* %882, align 1
  %conv1432 = zext i8 %883 to i32
  store i32 %conv1432, i32* %op, align 4
  %idxprom1433 = sext i32 %conv1432 to i64
  %arrayidx1434 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1433
  %884 = load i8*, i8** %arrayidx1434, align 8
  br label %indirectgoto

insn_Bpoint:                                      ; preds = %indirectgoto
  %885 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %885, i32 0, i32 75
  %886 = load i64, i64* %pt, align 8
  %add1436 = add nsw i64 %886, 0
  %call1437 = call i64 @make_natnum(i64 %add1436)
  store i64 %call1437, i64* %v11435, align 8
  %887 = load i64*, i64** %top, align 8
  %incdec.ptr1438 = getelementptr inbounds i64, i64* %887, i32 1
  store i64* %incdec.ptr1438, i64** %top, align 8
  %888 = load i64, i64* %v11435, align 8
  %889 = load i64*, i64** %top, align 8
  store i64 %888, i64* %889, align 8
  %pc1439 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %890 = load i8*, i8** %pc1439, align 8
  %incdec.ptr1440 = getelementptr inbounds i8, i8* %890, i32 1
  store i8* %incdec.ptr1440, i8** %pc1439, align 8
  %891 = load i8, i8* %890, align 1
  %conv1441 = zext i8 %891 to i32
  store i32 %conv1441, i32* %op, align 4
  %idxprom1442 = sext i32 %conv1441 to i64
  %arrayidx1443 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1442
  %892 = load i8*, i8** %arrayidx1443, align 8
  br label %indirectgoto

insn_Bgoto_char:                                  ; preds = %indirectgoto
  %893 = load i64*, i64** %top, align 8
  %894 = load i64, i64* %893, align 8
  %call1444 = call i64 @Fgoto_char(i64 %894)
  %895 = load i64*, i64** %top, align 8
  store i64 %call1444, i64* %895, align 8
  %pc1445 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %896 = load i8*, i8** %pc1445, align 8
  %incdec.ptr1446 = getelementptr inbounds i8, i8* %896, i32 1
  store i8* %incdec.ptr1446, i8** %pc1445, align 8
  %897 = load i8, i8* %896, align 1
  %conv1447 = zext i8 %897 to i32
  store i32 %conv1447, i32* %op, align 4
  %idxprom1448 = sext i32 %conv1447 to i64
  %arrayidx1449 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1448
  %898 = load i8*, i8** %arrayidx1449, align 8
  br label %indirectgoto

insn_Binsert:                                     ; preds = %indirectgoto
  %899 = load i64*, i64** %top, align 8
  %call1450 = call i64 @Finsert(i64 1, i64* %899)
  %900 = load i64*, i64** %top, align 8
  store i64 %call1450, i64* %900, align 8
  %pc1451 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %901 = load i8*, i8** %pc1451, align 8
  %incdec.ptr1452 = getelementptr inbounds i8, i8* %901, i32 1
  store i8* %incdec.ptr1452, i8** %pc1451, align 8
  %902 = load i8, i8* %901, align 1
  %conv1453 = zext i8 %902 to i32
  store i32 %conv1453, i32* %op, align 4
  %idxprom1454 = sext i32 %conv1453 to i64
  %arrayidx1455 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1454
  %903 = load i8*, i8** %arrayidx1455, align 8
  br label %indirectgoto

insn_BinsertN:                                    ; preds = %indirectgoto
  %pc1456 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %904 = load i8*, i8** %pc1456, align 8
  %incdec.ptr1457 = getelementptr inbounds i8, i8* %904, i32 1
  store i8* %incdec.ptr1457, i8** %pc1456, align 8
  %905 = load i8, i8* %904, align 1
  %conv1458 = zext i8 %905 to i32
  store i32 %conv1458, i32* %op, align 4
  %906 = load i32, i32* %op, align 4
  %sub1459 = sub nsw i32 %906, 1
  %907 = load i64*, i64** %top, align 8
  %idx.ext1460 = sext i32 %sub1459 to i64
  %idx.neg1461 = sub i64 0, %idx.ext1460
  %add.ptr1462 = getelementptr inbounds i64, i64* %907, i64 %idx.neg1461
  store i64* %add.ptr1462, i64** %top, align 8
  %908 = load i32, i32* %op, align 4
  %conv1463 = sext i32 %908 to i64
  %909 = load i64*, i64** %top, align 8
  %call1464 = call i64 @Finsert(i64 %conv1463, i64* %909)
  %910 = load i64*, i64** %top, align 8
  store i64 %call1464, i64* %910, align 8
  %pc1465 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %911 = load i8*, i8** %pc1465, align 8
  %incdec.ptr1466 = getelementptr inbounds i8, i8* %911, i32 1
  store i8* %incdec.ptr1466, i8** %pc1465, align 8
  %912 = load i8, i8* %911, align 1
  %conv1467 = zext i8 %912 to i32
  store i32 %conv1467, i32* %op, align 4
  %idxprom1468 = sext i32 %conv1467 to i64
  %arrayidx1469 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1468
  %913 = load i8*, i8** %arrayidx1469, align 8
  br label %indirectgoto

insn_Bpoint_max:                                  ; preds = %indirectgoto
  %914 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %914, i32 0, i32 79
  %915 = load i64, i64* %zv, align 8
  %call1471 = call i64 @make_natnum(i64 %915)
  store i64 %call1471, i64* %v11470, align 8
  %916 = load i64*, i64** %top, align 8
  %incdec.ptr1472 = getelementptr inbounds i64, i64* %916, i32 1
  store i64* %incdec.ptr1472, i64** %top, align 8
  %917 = load i64, i64* %v11470, align 8
  %918 = load i64*, i64** %top, align 8
  store i64 %917, i64* %918, align 8
  %pc1473 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %919 = load i8*, i8** %pc1473, align 8
  %incdec.ptr1474 = getelementptr inbounds i8, i8* %919, i32 1
  store i8* %incdec.ptr1474, i8** %pc1473, align 8
  %920 = load i8, i8* %919, align 1
  %conv1475 = zext i8 %920 to i32
  store i32 %conv1475, i32* %op, align 4
  %idxprom1476 = sext i32 %conv1475 to i64
  %arrayidx1477 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1476
  %921 = load i8*, i8** %arrayidx1477, align 8
  br label %indirectgoto

insn_Bpoint_min:                                  ; preds = %indirectgoto
  %922 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %922, i32 0, i32 77
  %923 = load i64, i64* %begv, align 8
  %call1479 = call i64 @make_natnum(i64 %923)
  store i64 %call1479, i64* %v11478, align 8
  %924 = load i64*, i64** %top, align 8
  %incdec.ptr1480 = getelementptr inbounds i64, i64* %924, i32 1
  store i64* %incdec.ptr1480, i64** %top, align 8
  %925 = load i64, i64* %v11478, align 8
  %926 = load i64*, i64** %top, align 8
  store i64 %925, i64* %926, align 8
  %pc1481 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %927 = load i8*, i8** %pc1481, align 8
  %incdec.ptr1482 = getelementptr inbounds i8, i8* %927, i32 1
  store i8* %incdec.ptr1482, i8** %pc1481, align 8
  %928 = load i8, i8* %927, align 1
  %conv1483 = zext i8 %928 to i32
  store i32 %conv1483, i32* %op, align 4
  %idxprom1484 = sext i32 %conv1483 to i64
  %arrayidx1485 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1484
  %929 = load i8*, i8** %arrayidx1485, align 8
  br label %indirectgoto

insn_Bchar_after:                                 ; preds = %indirectgoto
  %930 = load i64*, i64** %top, align 8
  %931 = load i64, i64* %930, align 8
  %call1486 = call i64 @Fchar_after(i64 %931)
  %932 = load i64*, i64** %top, align 8
  store i64 %call1486, i64* %932, align 8
  %pc1487 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %933 = load i8*, i8** %pc1487, align 8
  %incdec.ptr1488 = getelementptr inbounds i8, i8* %933, i32 1
  store i8* %incdec.ptr1488, i8** %pc1487, align 8
  %934 = load i8, i8* %933, align 1
  %conv1489 = zext i8 %934 to i32
  store i32 %conv1489, i32* %op, align 4
  %idxprom1490 = sext i32 %conv1489 to i64
  %arrayidx1491 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1490
  %935 = load i8*, i8** %arrayidx1491, align 8
  br label %indirectgoto

insn_Bfollowing_char:                             ; preds = %indirectgoto
  %call1493 = call i64 @Ffollowing_char()
  store i64 %call1493, i64* %v11492, align 8
  %936 = load i64*, i64** %top, align 8
  %incdec.ptr1494 = getelementptr inbounds i64, i64* %936, i32 1
  store i64* %incdec.ptr1494, i64** %top, align 8
  %937 = load i64, i64* %v11492, align 8
  %938 = load i64*, i64** %top, align 8
  store i64 %937, i64* %938, align 8
  %pc1495 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %939 = load i8*, i8** %pc1495, align 8
  %incdec.ptr1496 = getelementptr inbounds i8, i8* %939, i32 1
  store i8* %incdec.ptr1496, i8** %pc1495, align 8
  %940 = load i8, i8* %939, align 1
  %conv1497 = zext i8 %940 to i32
  store i32 %conv1497, i32* %op, align 4
  %idxprom1498 = sext i32 %conv1497 to i64
  %arrayidx1499 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1498
  %941 = load i8*, i8** %arrayidx1499, align 8
  br label %indirectgoto

insn_Bpreceding_char:                             ; preds = %indirectgoto
  %call1501 = call i64 @Fprevious_char()
  store i64 %call1501, i64* %v11500, align 8
  %942 = load i64*, i64** %top, align 8
  %incdec.ptr1502 = getelementptr inbounds i64, i64* %942, i32 1
  store i64* %incdec.ptr1502, i64** %top, align 8
  %943 = load i64, i64* %v11500, align 8
  %944 = load i64*, i64** %top, align 8
  store i64 %943, i64* %944, align 8
  %pc1503 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %945 = load i8*, i8** %pc1503, align 8
  %incdec.ptr1504 = getelementptr inbounds i8, i8* %945, i32 1
  store i8* %incdec.ptr1504, i8** %pc1503, align 8
  %946 = load i8, i8* %945, align 1
  %conv1505 = zext i8 %946 to i32
  store i32 %conv1505, i32* %op, align 4
  %idxprom1506 = sext i32 %conv1505 to i64
  %arrayidx1507 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1506
  %947 = load i8*, i8** %arrayidx1507, align 8
  br label %indirectgoto

insn_Bcurrent_column:                             ; preds = %indirectgoto
  %call1509 = call i64 @current_column()
  %call1510 = call i64 @make_natnum(i64 %call1509)
  store i64 %call1510, i64* %v11508, align 8
  %948 = load i64*, i64** %top, align 8
  %incdec.ptr1511 = getelementptr inbounds i64, i64* %948, i32 1
  store i64* %incdec.ptr1511, i64** %top, align 8
  %949 = load i64, i64* %v11508, align 8
  %950 = load i64*, i64** %top, align 8
  store i64 %949, i64* %950, align 8
  %pc1512 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %951 = load i8*, i8** %pc1512, align 8
  %incdec.ptr1513 = getelementptr inbounds i8, i8* %951, i32 1
  store i8* %incdec.ptr1513, i8** %pc1512, align 8
  %952 = load i8, i8* %951, align 1
  %conv1514 = zext i8 %952 to i32
  store i32 %conv1514, i32* %op, align 4
  %idxprom1515 = sext i32 %conv1514 to i64
  %arrayidx1516 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1515
  %953 = load i8*, i8** %arrayidx1516, align 8
  br label %indirectgoto

insn_Bindent_to:                                  ; preds = %indirectgoto
  %954 = load i64*, i64** %top, align 8
  %955 = load i64, i64* %954, align 8
  %call1517 = call i64 @builtin_lisp_symbol(i32 0)
  %call1518 = call i64 @Findent_to(i64 %955, i64 %call1517)
  %956 = load i64*, i64** %top, align 8
  store i64 %call1518, i64* %956, align 8
  %pc1519 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %957 = load i8*, i8** %pc1519, align 8
  %incdec.ptr1520 = getelementptr inbounds i8, i8* %957, i32 1
  store i8* %incdec.ptr1520, i8** %pc1519, align 8
  %958 = load i8, i8* %957, align 1
  %conv1521 = zext i8 %958 to i32
  store i32 %conv1521, i32* %op, align 4
  %idxprom1522 = sext i32 %conv1521 to i64
  %arrayidx1523 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1522
  %959 = load i8*, i8** %arrayidx1523, align 8
  br label %indirectgoto

insn_Beolp:                                       ; preds = %indirectgoto
  %960 = load i64*, i64** %top, align 8
  %incdec.ptr1524 = getelementptr inbounds i64, i64* %960, i32 1
  store i64* %incdec.ptr1524, i64** %top, align 8
  %call1525 = call i64 @Feolp()
  %961 = load i64*, i64** %top, align 8
  store i64 %call1525, i64* %961, align 8
  %pc1526 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %962 = load i8*, i8** %pc1526, align 8
  %incdec.ptr1527 = getelementptr inbounds i8, i8* %962, i32 1
  store i8* %incdec.ptr1527, i8** %pc1526, align 8
  %963 = load i8, i8* %962, align 1
  %conv1528 = zext i8 %963 to i32
  store i32 %conv1528, i32* %op, align 4
  %idxprom1529 = sext i32 %conv1528 to i64
  %arrayidx1530 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1529
  %964 = load i8*, i8** %arrayidx1530, align 8
  br label %indirectgoto

insn_Beobp:                                       ; preds = %indirectgoto
  %965 = load i64*, i64** %top, align 8
  %incdec.ptr1531 = getelementptr inbounds i64, i64* %965, i32 1
  store i64* %incdec.ptr1531, i64** %top, align 8
  %call1532 = call i64 @Feobp()
  %966 = load i64*, i64** %top, align 8
  store i64 %call1532, i64* %966, align 8
  %pc1533 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %967 = load i8*, i8** %pc1533, align 8
  %incdec.ptr1534 = getelementptr inbounds i8, i8* %967, i32 1
  store i8* %incdec.ptr1534, i8** %pc1533, align 8
  %968 = load i8, i8* %967, align 1
  %conv1535 = zext i8 %968 to i32
  store i32 %conv1535, i32* %op, align 4
  %idxprom1536 = sext i32 %conv1535 to i64
  %arrayidx1537 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1536
  %969 = load i8*, i8** %arrayidx1537, align 8
  br label %indirectgoto

insn_Bbolp:                                       ; preds = %indirectgoto
  %970 = load i64*, i64** %top, align 8
  %incdec.ptr1538 = getelementptr inbounds i64, i64* %970, i32 1
  store i64* %incdec.ptr1538, i64** %top, align 8
  %call1539 = call i64 @Fbolp()
  %971 = load i64*, i64** %top, align 8
  store i64 %call1539, i64* %971, align 8
  %pc1540 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %972 = load i8*, i8** %pc1540, align 8
  %incdec.ptr1541 = getelementptr inbounds i8, i8* %972, i32 1
  store i8* %incdec.ptr1541, i8** %pc1540, align 8
  %973 = load i8, i8* %972, align 1
  %conv1542 = zext i8 %973 to i32
  store i32 %conv1542, i32* %op, align 4
  %idxprom1543 = sext i32 %conv1542 to i64
  %arrayidx1544 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1543
  %974 = load i8*, i8** %arrayidx1544, align 8
  br label %indirectgoto

insn_Bbobp:                                       ; preds = %indirectgoto
  %975 = load i64*, i64** %top, align 8
  %incdec.ptr1545 = getelementptr inbounds i64, i64* %975, i32 1
  store i64* %incdec.ptr1545, i64** %top, align 8
  %call1546 = call i64 @Fbobp()
  %976 = load i64*, i64** %top, align 8
  store i64 %call1546, i64* %976, align 8
  %pc1547 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %977 = load i8*, i8** %pc1547, align 8
  %incdec.ptr1548 = getelementptr inbounds i8, i8* %977, i32 1
  store i8* %incdec.ptr1548, i8** %pc1547, align 8
  %978 = load i8, i8* %977, align 1
  %conv1549 = zext i8 %978 to i32
  store i32 %conv1549, i32* %op, align 4
  %idxprom1550 = sext i32 %conv1549 to i64
  %arrayidx1551 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1550
  %979 = load i8*, i8** %arrayidx1551, align 8
  br label %indirectgoto

insn_Bcurrent_buffer:                             ; preds = %indirectgoto
  %980 = load i64*, i64** %top, align 8
  %incdec.ptr1552 = getelementptr inbounds i64, i64* %980, i32 1
  store i64* %incdec.ptr1552, i64** %top, align 8
  %call1553 = call i64 @Fcurrent_buffer()
  %981 = load i64*, i64** %top, align 8
  store i64 %call1553, i64* %981, align 8
  %pc1554 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %982 = load i8*, i8** %pc1554, align 8
  %incdec.ptr1555 = getelementptr inbounds i8, i8* %982, i32 1
  store i8* %incdec.ptr1555, i8** %pc1554, align 8
  %983 = load i8, i8* %982, align 1
  %conv1556 = zext i8 %983 to i32
  store i32 %conv1556, i32* %op, align 4
  %idxprom1557 = sext i32 %conv1556 to i64
  %arrayidx1558 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1557
  %984 = load i8*, i8** %arrayidx1558, align 8
  br label %indirectgoto

insn_Bset_buffer:                                 ; preds = %indirectgoto
  %985 = load i64*, i64** %top, align 8
  %986 = load i64, i64* %985, align 8
  %call1559 = call i64 @Fset_buffer(i64 %986)
  %987 = load i64*, i64** %top, align 8
  store i64 %call1559, i64* %987, align 8
  %pc1560 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %988 = load i8*, i8** %pc1560, align 8
  %incdec.ptr1561 = getelementptr inbounds i8, i8* %988, i32 1
  store i8* %incdec.ptr1561, i8** %pc1560, align 8
  %989 = load i8, i8* %988, align 1
  %conv1562 = zext i8 %989 to i32
  store i32 %conv1562, i32* %op, align 4
  %idxprom1563 = sext i32 %conv1562 to i64
  %arrayidx1564 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1563
  %990 = load i8*, i8** %arrayidx1564, align 8
  br label %indirectgoto

insn_Binteractive_p:                              ; preds = %indirectgoto
  %991 = load i64*, i64** %top, align 8
  %incdec.ptr1565 = getelementptr inbounds i64, i64* %991, i32 1
  store i64* %incdec.ptr1565, i64** %top, align 8
  %call1566 = call i64 @intern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %call1567 = call i64 @call0(i64 %call1566)
  %992 = load i64*, i64** %top, align 8
  store i64 %call1567, i64* %992, align 8
  %pc1568 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %993 = load i8*, i8** %pc1568, align 8
  %incdec.ptr1569 = getelementptr inbounds i8, i8* %993, i32 1
  store i8* %incdec.ptr1569, i8** %pc1568, align 8
  %994 = load i8, i8* %993, align 1
  %conv1570 = zext i8 %994 to i32
  store i32 %conv1570, i32* %op, align 4
  %idxprom1571 = sext i32 %conv1570 to i64
  %arrayidx1572 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1571
  %995 = load i8*, i8** %arrayidx1572, align 8
  br label %indirectgoto

insn_Bforward_char:                               ; preds = %indirectgoto
  %996 = load i64*, i64** %top, align 8
  %997 = load i64, i64* %996, align 8
  %call1573 = call i64 @Fforward_char(i64 %997)
  %998 = load i64*, i64** %top, align 8
  store i64 %call1573, i64* %998, align 8
  %pc1574 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %999 = load i8*, i8** %pc1574, align 8
  %incdec.ptr1575 = getelementptr inbounds i8, i8* %999, i32 1
  store i8* %incdec.ptr1575, i8** %pc1574, align 8
  %1000 = load i8, i8* %999, align 1
  %conv1576 = zext i8 %1000 to i32
  store i32 %conv1576, i32* %op, align 4
  %idxprom1577 = sext i32 %conv1576 to i64
  %arrayidx1578 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1577
  %1001 = load i8*, i8** %arrayidx1578, align 8
  br label %indirectgoto

insn_Bforward_word:                               ; preds = %indirectgoto
  %1002 = load i64*, i64** %top, align 8
  %1003 = load i64, i64* %1002, align 8
  %call1579 = call i64 @Fforward_word(i64 %1003)
  %1004 = load i64*, i64** %top, align 8
  store i64 %call1579, i64* %1004, align 8
  %pc1580 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1005 = load i8*, i8** %pc1580, align 8
  %incdec.ptr1581 = getelementptr inbounds i8, i8* %1005, i32 1
  store i8* %incdec.ptr1581, i8** %pc1580, align 8
  %1006 = load i8, i8* %1005, align 1
  %conv1582 = zext i8 %1006 to i32
  store i32 %conv1582, i32* %op, align 4
  %idxprom1583 = sext i32 %conv1582 to i64
  %arrayidx1584 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1583
  %1007 = load i8*, i8** %arrayidx1584, align 8
  br label %indirectgoto

insn_Bskip_chars_forward:                         ; preds = %indirectgoto
  %1008 = load i64*, i64** %top, align 8
  %incdec.ptr1586 = getelementptr inbounds i64, i64* %1008, i32 -1
  store i64* %incdec.ptr1586, i64** %top, align 8
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %v11585, align 8
  %1010 = load i64*, i64** %top, align 8
  %1011 = load i64, i64* %1010, align 8
  %1012 = load i64, i64* %v11585, align 8
  %call1587 = call i64 @Fskip_chars_forward(i64 %1011, i64 %1012)
  %1013 = load i64*, i64** %top, align 8
  store i64 %call1587, i64* %1013, align 8
  %pc1588 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1014 = load i8*, i8** %pc1588, align 8
  %incdec.ptr1589 = getelementptr inbounds i8, i8* %1014, i32 1
  store i8* %incdec.ptr1589, i8** %pc1588, align 8
  %1015 = load i8, i8* %1014, align 1
  %conv1590 = zext i8 %1015 to i32
  store i32 %conv1590, i32* %op, align 4
  %idxprom1591 = sext i32 %conv1590 to i64
  %arrayidx1592 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1591
  %1016 = load i8*, i8** %arrayidx1592, align 8
  br label %indirectgoto

insn_Bskip_chars_backward:                        ; preds = %indirectgoto
  %1017 = load i64*, i64** %top, align 8
  %incdec.ptr1594 = getelementptr inbounds i64, i64* %1017, i32 -1
  store i64* %incdec.ptr1594, i64** %top, align 8
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %v11593, align 8
  %1019 = load i64*, i64** %top, align 8
  %1020 = load i64, i64* %1019, align 8
  %1021 = load i64, i64* %v11593, align 8
  %call1595 = call i64 @Fskip_chars_backward(i64 %1020, i64 %1021)
  %1022 = load i64*, i64** %top, align 8
  store i64 %call1595, i64* %1022, align 8
  %pc1596 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1023 = load i8*, i8** %pc1596, align 8
  %incdec.ptr1597 = getelementptr inbounds i8, i8* %1023, i32 1
  store i8* %incdec.ptr1597, i8** %pc1596, align 8
  %1024 = load i8, i8* %1023, align 1
  %conv1598 = zext i8 %1024 to i32
  store i32 %conv1598, i32* %op, align 4
  %idxprom1599 = sext i32 %conv1598 to i64
  %arrayidx1600 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1599
  %1025 = load i8*, i8** %arrayidx1600, align 8
  br label %indirectgoto

insn_Bforward_line:                               ; preds = %indirectgoto
  %1026 = load i64*, i64** %top, align 8
  %1027 = load i64, i64* %1026, align 8
  %call1601 = call i64 @Fforward_line(i64 %1027)
  %1028 = load i64*, i64** %top, align 8
  store i64 %call1601, i64* %1028, align 8
  %pc1602 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1029 = load i8*, i8** %pc1602, align 8
  %incdec.ptr1603 = getelementptr inbounds i8, i8* %1029, i32 1
  store i8* %incdec.ptr1603, i8** %pc1602, align 8
  %1030 = load i8, i8* %1029, align 1
  %conv1604 = zext i8 %1030 to i32
  store i32 %conv1604, i32* %op, align 4
  %idxprom1605 = sext i32 %conv1604 to i64
  %arrayidx1606 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1605
  %1031 = load i8*, i8** %arrayidx1606, align 8
  br label %indirectgoto

insn_Bchar_syntax:                                ; preds = %indirectgoto
  %1032 = load i64*, i64** %top, align 8
  %1033 = load i64, i64* %1032, align 8
  %call1608 = call zeroext i1 @NATNUMP(i64 %1033)
  br i1 %call1608, label %land.lhs.true.1610, label %cond.false.1615

land.lhs.true.1610:                               ; preds = %insn_Bchar_syntax
  %1034 = load i64*, i64** %top, align 8
  %1035 = load i64, i64* %1034, align 8
  %shr1611 = ashr i64 %1035, 2
  %cmp1612 = icmp sle i64 %shr1611, 4194303
  br i1 %cmp1612, label %cond.true.1614, label %cond.false.1615

cond.true.1614:                                   ; preds = %land.lhs.true.1610
  br label %cond.end.1617

cond.false.1615:                                  ; preds = %land.lhs.true.1610, %insn_Bchar_syntax
  %call1616 = call i64 @builtin_lisp_symbol(i32 260)
  %1036 = load i64*, i64** %top, align 8
  %1037 = load i64, i64* %1036, align 8
  %1038 = call i64 @wrong_type_argument(i64 %call1616, i64 %1037) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1617

cond.end.1617:                                    ; preds = %1039, %cond.true.1614
  %1040 = load i64*, i64** %top, align 8
  %1041 = load i64, i64* %1040, align 8
  %shr1618 = ashr i64 %1041, 2
  %conv1619 = trunc i64 %shr1618 to i32
  store i32 %conv1619, i32* %c1607, align 4
  %1042 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1042, i32 0, i32 39
  %1043 = load i64, i64* %enable_multibyte_characters_, align 8
  %call1620 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1621 = icmp eq i64 %1043, %call1620
  br i1 %cmp1621, label %if.then.1623, label %if.end.1638

if.then.1623:                                     ; preds = %cond.end.1617
  br i1 true, label %cond.true.1624, label %cond.false.1628

cond.true.1624:                                   ; preds = %if.then.1623
  %1044 = load i32, i32* %c1607, align 4
  %add1625 = add i32 %1044, 0
  %cmp1626 = icmp ult i32 %add1625, 128
  br i1 %cmp1626, label %cond.true.1633, label %cond.false.1634

cond.false.1628:                                  ; preds = %if.then.1623
  %1045 = load i32, i32* %c1607, align 4
  %conv1629 = sext i32 %1045 to i64
  %add1630 = add i64 %conv1629, 0
  %cmp1631 = icmp ult i64 %add1630, 128
  br i1 %cmp1631, label %cond.true.1633, label %cond.false.1634

cond.true.1633:                                   ; preds = %cond.false.1628, %cond.true.1624
  %1046 = load i32, i32* %c1607, align 4
  br label %cond.end.1636

cond.false.1634:                                  ; preds = %cond.false.1628, %cond.true.1624
  %1047 = load i32, i32* %c1607, align 4
  %add1635 = add nsw i32 %1047, 4194048
  br label %cond.end.1636

cond.end.1636:                                    ; preds = %cond.false.1634, %cond.true.1633
  %cond1637 = phi i32 [ %1046, %cond.true.1633 ], [ %add1635, %cond.false.1634 ]
  store i32 %cond1637, i32* %c1607, align 4
  br label %if.end.1638

if.end.1638:                                      ; preds = %cond.end.1636, %cond.end.1617
  %1048 = load i32, i32* %c1607, align 4
  %call1639 = call i32 @SYNTAX(i32 %1048)
  %idxprom1640 = zext i32 %call1639 to i64
  %arrayidx1641 = getelementptr inbounds [16 x i8], [16 x i8]* @syntax_code_spec, i32 0, i64 %idxprom1640
  %1049 = load i8, i8* %arrayidx1641, align 1
  %conv1642 = sext i8 %1049 to i64
  %call1643 = call i64 @make_natnum(i64 %conv1642)
  %1050 = load i64*, i64** %top, align 8
  store i64 %call1643, i64* %1050, align 8
  %pc1644 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1051 = load i8*, i8** %pc1644, align 8
  %incdec.ptr1645 = getelementptr inbounds i8, i8* %1051, i32 1
  store i8* %incdec.ptr1645, i8** %pc1644, align 8
  %1052 = load i8, i8* %1051, align 1
  %conv1646 = zext i8 %1052 to i32
  store i32 %conv1646, i32* %op, align 4
  %idxprom1647 = sext i32 %conv1646 to i64
  %arrayidx1648 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1647
  %1053 = load i8*, i8** %arrayidx1648, align 8
  br label %indirectgoto

insn_Bbuffer_substring:                           ; preds = %indirectgoto
  %1054 = load i64*, i64** %top, align 8
  %incdec.ptr1650 = getelementptr inbounds i64, i64* %1054, i32 -1
  store i64* %incdec.ptr1650, i64** %top, align 8
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %v11649, align 8
  %1056 = load i64*, i64** %top, align 8
  %1057 = load i64, i64* %1056, align 8
  %1058 = load i64, i64* %v11649, align 8
  %call1651 = call i64 @Fbuffer_substring(i64 %1057, i64 %1058)
  %1059 = load i64*, i64** %top, align 8
  store i64 %call1651, i64* %1059, align 8
  %pc1652 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1060 = load i8*, i8** %pc1652, align 8
  %incdec.ptr1653 = getelementptr inbounds i8, i8* %1060, i32 1
  store i8* %incdec.ptr1653, i8** %pc1652, align 8
  %1061 = load i8, i8* %1060, align 1
  %conv1654 = zext i8 %1061 to i32
  store i32 %conv1654, i32* %op, align 4
  %idxprom1655 = sext i32 %conv1654 to i64
  %arrayidx1656 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1655
  %1062 = load i8*, i8** %arrayidx1656, align 8
  br label %indirectgoto

insn_Bdelete_region:                              ; preds = %indirectgoto
  %1063 = load i64*, i64** %top, align 8
  %incdec.ptr1658 = getelementptr inbounds i64, i64* %1063, i32 -1
  store i64* %incdec.ptr1658, i64** %top, align 8
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %v11657, align 8
  %1065 = load i64*, i64** %top, align 8
  %1066 = load i64, i64* %1065, align 8
  %1067 = load i64, i64* %v11657, align 8
  %call1659 = call i64 @Fdelete_region(i64 %1066, i64 %1067)
  %1068 = load i64*, i64** %top, align 8
  store i64 %call1659, i64* %1068, align 8
  %pc1660 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1069 = load i8*, i8** %pc1660, align 8
  %incdec.ptr1661 = getelementptr inbounds i8, i8* %1069, i32 1
  store i8* %incdec.ptr1661, i8** %pc1660, align 8
  %1070 = load i8, i8* %1069, align 1
  %conv1662 = zext i8 %1070 to i32
  store i32 %conv1662, i32* %op, align 4
  %idxprom1663 = sext i32 %conv1662 to i64
  %arrayidx1664 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1663
  %1071 = load i8*, i8** %arrayidx1664, align 8
  br label %indirectgoto

insn_Bnarrow_to_region:                           ; preds = %indirectgoto
  %1072 = load i64*, i64** %top, align 8
  %incdec.ptr1666 = getelementptr inbounds i64, i64* %1072, i32 -1
  store i64* %incdec.ptr1666, i64** %top, align 8
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %v11665, align 8
  %1074 = load i64*, i64** %top, align 8
  %1075 = load i64, i64* %1074, align 8
  %1076 = load i64, i64* %v11665, align 8
  %call1667 = call i64 @Fnarrow_to_region(i64 %1075, i64 %1076)
  %1077 = load i64*, i64** %top, align 8
  store i64 %call1667, i64* %1077, align 8
  %pc1668 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1078 = load i8*, i8** %pc1668, align 8
  %incdec.ptr1669 = getelementptr inbounds i8, i8* %1078, i32 1
  store i8* %incdec.ptr1669, i8** %pc1668, align 8
  %1079 = load i8, i8* %1078, align 1
  %conv1670 = zext i8 %1079 to i32
  store i32 %conv1670, i32* %op, align 4
  %idxprom1671 = sext i32 %conv1670 to i64
  %arrayidx1672 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1671
  %1080 = load i8*, i8** %arrayidx1672, align 8
  br label %indirectgoto

insn_Bwiden:                                      ; preds = %indirectgoto
  %1081 = load i64*, i64** %top, align 8
  %incdec.ptr1673 = getelementptr inbounds i64, i64* %1081, i32 1
  store i64* %incdec.ptr1673, i64** %top, align 8
  %call1674 = call i64 @Fwiden()
  %1082 = load i64*, i64** %top, align 8
  store i64 %call1674, i64* %1082, align 8
  %pc1675 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1083 = load i8*, i8** %pc1675, align 8
  %incdec.ptr1676 = getelementptr inbounds i8, i8* %1083, i32 1
  store i8* %incdec.ptr1676, i8** %pc1675, align 8
  %1084 = load i8, i8* %1083, align 1
  %conv1677 = zext i8 %1084 to i32
  store i32 %conv1677, i32* %op, align 4
  %idxprom1678 = sext i32 %conv1677 to i64
  %arrayidx1679 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1678
  %1085 = load i8*, i8** %arrayidx1679, align 8
  br label %indirectgoto

insn_Bend_of_line:                                ; preds = %indirectgoto
  %1086 = load i64*, i64** %top, align 8
  %1087 = load i64, i64* %1086, align 8
  %call1680 = call i64 @Fend_of_line(i64 %1087)
  %1088 = load i64*, i64** %top, align 8
  store i64 %call1680, i64* %1088, align 8
  %pc1681 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1089 = load i8*, i8** %pc1681, align 8
  %incdec.ptr1682 = getelementptr inbounds i8, i8* %1089, i32 1
  store i8* %incdec.ptr1682, i8** %pc1681, align 8
  %1090 = load i8, i8* %1089, align 1
  %conv1683 = zext i8 %1090 to i32
  store i32 %conv1683, i32* %op, align 4
  %idxprom1684 = sext i32 %conv1683 to i64
  %arrayidx1685 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1684
  %1091 = load i8*, i8** %arrayidx1685, align 8
  br label %indirectgoto

insn_Bset_marker:                                 ; preds = %indirectgoto
  %1092 = load i64*, i64** %top, align 8
  %incdec.ptr1688 = getelementptr inbounds i64, i64* %1092, i32 -1
  store i64* %incdec.ptr1688, i64** %top, align 8
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %v11686, align 8
  %1094 = load i64*, i64** %top, align 8
  %incdec.ptr1689 = getelementptr inbounds i64, i64* %1094, i32 -1
  store i64* %incdec.ptr1689, i64** %top, align 8
  %1095 = load i64, i64* %1094, align 8
  store i64 %1095, i64* %v21687, align 8
  %1096 = load i64*, i64** %top, align 8
  %1097 = load i64, i64* %1096, align 8
  %1098 = load i64, i64* %v21687, align 8
  %1099 = load i64, i64* %v11686, align 8
  %call1690 = call i64 @Fset_marker(i64 %1097, i64 %1098, i64 %1099)
  %1100 = load i64*, i64** %top, align 8
  store i64 %call1690, i64* %1100, align 8
  %pc1691 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1101 = load i8*, i8** %pc1691, align 8
  %incdec.ptr1692 = getelementptr inbounds i8, i8* %1101, i32 1
  store i8* %incdec.ptr1692, i8** %pc1691, align 8
  %1102 = load i8, i8* %1101, align 1
  %conv1693 = zext i8 %1102 to i32
  store i32 %conv1693, i32* %op, align 4
  %idxprom1694 = sext i32 %conv1693 to i64
  %arrayidx1695 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1694
  %1103 = load i8*, i8** %arrayidx1695, align 8
  br label %indirectgoto

insn_Bmatch_beginning:                            ; preds = %indirectgoto
  %1104 = load i64*, i64** %top, align 8
  %1105 = load i64, i64* %1104, align 8
  %call1696 = call i64 @Fmatch_beginning(i64 %1105)
  %1106 = load i64*, i64** %top, align 8
  store i64 %call1696, i64* %1106, align 8
  %pc1697 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1107 = load i8*, i8** %pc1697, align 8
  %incdec.ptr1698 = getelementptr inbounds i8, i8* %1107, i32 1
  store i8* %incdec.ptr1698, i8** %pc1697, align 8
  %1108 = load i8, i8* %1107, align 1
  %conv1699 = zext i8 %1108 to i32
  store i32 %conv1699, i32* %op, align 4
  %idxprom1700 = sext i32 %conv1699 to i64
  %arrayidx1701 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1700
  %1109 = load i8*, i8** %arrayidx1701, align 8
  br label %indirectgoto

insn_Bmatch_end:                                  ; preds = %indirectgoto
  %1110 = load i64*, i64** %top, align 8
  %1111 = load i64, i64* %1110, align 8
  %call1702 = call i64 @Fmatch_end(i64 %1111)
  %1112 = load i64*, i64** %top, align 8
  store i64 %call1702, i64* %1112, align 8
  %pc1703 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1113 = load i8*, i8** %pc1703, align 8
  %incdec.ptr1704 = getelementptr inbounds i8, i8* %1113, i32 1
  store i8* %incdec.ptr1704, i8** %pc1703, align 8
  %1114 = load i8, i8* %1113, align 1
  %conv1705 = zext i8 %1114 to i32
  store i32 %conv1705, i32* %op, align 4
  %idxprom1706 = sext i32 %conv1705 to i64
  %arrayidx1707 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1706
  %1115 = load i8*, i8** %arrayidx1707, align 8
  br label %indirectgoto

insn_Bupcase:                                     ; preds = %indirectgoto
  %1116 = load i64*, i64** %top, align 8
  %1117 = load i64, i64* %1116, align 8
  %call1708 = call i64 @Fupcase(i64 %1117)
  %1118 = load i64*, i64** %top, align 8
  store i64 %call1708, i64* %1118, align 8
  %pc1709 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1119 = load i8*, i8** %pc1709, align 8
  %incdec.ptr1710 = getelementptr inbounds i8, i8* %1119, i32 1
  store i8* %incdec.ptr1710, i8** %pc1709, align 8
  %1120 = load i8, i8* %1119, align 1
  %conv1711 = zext i8 %1120 to i32
  store i32 %conv1711, i32* %op, align 4
  %idxprom1712 = sext i32 %conv1711 to i64
  %arrayidx1713 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1712
  %1121 = load i8*, i8** %arrayidx1713, align 8
  br label %indirectgoto

insn_Bdowncase:                                   ; preds = %indirectgoto
  %1122 = load i64*, i64** %top, align 8
  %1123 = load i64, i64* %1122, align 8
  %call1714 = call i64 @Fdowncase(i64 %1123)
  %1124 = load i64*, i64** %top, align 8
  store i64 %call1714, i64* %1124, align 8
  %pc1715 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1125 = load i8*, i8** %pc1715, align 8
  %incdec.ptr1716 = getelementptr inbounds i8, i8* %1125, i32 1
  store i8* %incdec.ptr1716, i8** %pc1715, align 8
  %1126 = load i8, i8* %1125, align 1
  %conv1717 = zext i8 %1126 to i32
  store i32 %conv1717, i32* %op, align 4
  %idxprom1718 = sext i32 %conv1717 to i64
  %arrayidx1719 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1718
  %1127 = load i8*, i8** %arrayidx1719, align 8
  br label %indirectgoto

insn_Bstringeqlsign:                              ; preds = %indirectgoto
  %1128 = load i64*, i64** %top, align 8
  %incdec.ptr1721 = getelementptr inbounds i64, i64* %1128, i32 -1
  store i64* %incdec.ptr1721, i64** %top, align 8
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %v11720, align 8
  %1130 = load i64*, i64** %top, align 8
  %1131 = load i64, i64* %1130, align 8
  %1132 = load i64, i64* %v11720, align 8
  %call1722 = call i64 @Fstring_equal(i64 %1131, i64 %1132)
  %1133 = load i64*, i64** %top, align 8
  store i64 %call1722, i64* %1133, align 8
  %pc1723 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1134 = load i8*, i8** %pc1723, align 8
  %incdec.ptr1724 = getelementptr inbounds i8, i8* %1134, i32 1
  store i8* %incdec.ptr1724, i8** %pc1723, align 8
  %1135 = load i8, i8* %1134, align 1
  %conv1725 = zext i8 %1135 to i32
  store i32 %conv1725, i32* %op, align 4
  %idxprom1726 = sext i32 %conv1725 to i64
  %arrayidx1727 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1726
  %1136 = load i8*, i8** %arrayidx1727, align 8
  br label %indirectgoto

insn_Bstringlss:                                  ; preds = %indirectgoto
  %1137 = load i64*, i64** %top, align 8
  %incdec.ptr1729 = getelementptr inbounds i64, i64* %1137, i32 -1
  store i64* %incdec.ptr1729, i64** %top, align 8
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %v11728, align 8
  %1139 = load i64*, i64** %top, align 8
  %1140 = load i64, i64* %1139, align 8
  %1141 = load i64, i64* %v11728, align 8
  %call1730 = call i64 @Fstring_lessp(i64 %1140, i64 %1141)
  %1142 = load i64*, i64** %top, align 8
  store i64 %call1730, i64* %1142, align 8
  %pc1731 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1143 = load i8*, i8** %pc1731, align 8
  %incdec.ptr1732 = getelementptr inbounds i8, i8* %1143, i32 1
  store i8* %incdec.ptr1732, i8** %pc1731, align 8
  %1144 = load i8, i8* %1143, align 1
  %conv1733 = zext i8 %1144 to i32
  store i32 %conv1733, i32* %op, align 4
  %idxprom1734 = sext i32 %conv1733 to i64
  %arrayidx1735 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1734
  %1145 = load i8*, i8** %arrayidx1735, align 8
  br label %indirectgoto

insn_Bequal:                                      ; preds = %indirectgoto
  %1146 = load i64*, i64** %top, align 8
  %incdec.ptr1737 = getelementptr inbounds i64, i64* %1146, i32 -1
  store i64* %incdec.ptr1737, i64** %top, align 8
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %v11736, align 8
  %1148 = load i64*, i64** %top, align 8
  %1149 = load i64, i64* %1148, align 8
  %1150 = load i64, i64* %v11736, align 8
  %call1738 = call i64 @Fequal(i64 %1149, i64 %1150)
  %1151 = load i64*, i64** %top, align 8
  store i64 %call1738, i64* %1151, align 8
  %pc1739 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1152 = load i8*, i8** %pc1739, align 8
  %incdec.ptr1740 = getelementptr inbounds i8, i8* %1152, i32 1
  store i8* %incdec.ptr1740, i8** %pc1739, align 8
  %1153 = load i8, i8* %1152, align 1
  %conv1741 = zext i8 %1153 to i32
  store i32 %conv1741, i32* %op, align 4
  %idxprom1742 = sext i32 %conv1741 to i64
  %arrayidx1743 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1742
  %1154 = load i8*, i8** %arrayidx1743, align 8
  br label %indirectgoto

insn_Bnthcdr:                                     ; preds = %indirectgoto
  %1155 = load i64*, i64** %top, align 8
  %incdec.ptr1745 = getelementptr inbounds i64, i64* %1155, i32 -1
  store i64* %incdec.ptr1745, i64** %top, align 8
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %v11744, align 8
  %1157 = load i64*, i64** %top, align 8
  %1158 = load i64, i64* %1157, align 8
  %1159 = load i64, i64* %v11744, align 8
  %call1746 = call i64 @Fnthcdr(i64 %1158, i64 %1159)
  %1160 = load i64*, i64** %top, align 8
  store i64 %call1746, i64* %1160, align 8
  %pc1747 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1161 = load i8*, i8** %pc1747, align 8
  %incdec.ptr1748 = getelementptr inbounds i8, i8* %1161, i32 1
  store i8* %incdec.ptr1748, i8** %pc1747, align 8
  %1162 = load i8, i8* %1161, align 1
  %conv1749 = zext i8 %1162 to i32
  store i32 %conv1749, i32* %op, align 4
  %idxprom1750 = sext i32 %conv1749 to i64
  %arrayidx1751 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1750
  %1163 = load i8*, i8** %arrayidx1751, align 8
  br label %indirectgoto

insn_Belt:                                        ; preds = %indirectgoto
  %1164 = load i64*, i64** %top, align 8
  %1165 = load i64, i64* %1164, align 8
  %and1754 = and i64 %1165, 7
  %conv1755 = trunc i64 %and1754 to i32
  %cmp1756 = icmp eq i32 %conv1755, 3
  br i1 %cmp1756, label %if.then.1758, label %if.else.1787

if.then.1758:                                     ; preds = %insn_Belt
  %1166 = load i64*, i64** %top, align 8
  %incdec.ptr1760 = getelementptr inbounds i64, i64* %1166, i32 -1
  store i64* %incdec.ptr1760, i64** %top, align 8
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %v21753, align 8
  %1168 = load i64*, i64** %top, align 8
  %1169 = load i64, i64* %1168, align 8
  store i64 %1169, i64* %v11752, align 8
  %1170 = load i64, i64* %v21753, align 8
  %and1761 = and i64 %1170, 7
  %conv1762 = trunc i64 %and1761 to i32
  %and1763 = and i32 %conv1762, -5
  %cmp1764 = icmp eq i32 %and1763, 2
  br i1 %cmp1764, label %cond.true.1766, label %cond.false.1767

cond.true.1766:                                   ; preds = %if.then.1758
  br label %cond.end.1769

cond.false.1767:                                  ; preds = %if.then.1758
  %call1768 = call i64 @builtin_lisp_symbol(i32 559)
  %1171 = load i64, i64* %v21753, align 8
  %1172 = call i64 @wrong_type_argument(i64 %call1768, i64 %1171) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1769

cond.end.1769:                                    ; preds = %1173, %cond.true.1766
  %1174 = load i64, i64* %v21753, align 8
  %shr1770 = ashr i64 %1174, 2
  store i64 %shr1770, i64* %n1759, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %while.cond.1771

while.cond.1771:                                  ; preds = %while.body.1781, %cond.end.1769
  %1175 = load i64, i64* %n1759, align 8
  %dec1772 = add nsw i64 %1175, -1
  store i64 %dec1772, i64* %n1759, align 8
  %cmp1773 = icmp sge i64 %dec1772, 0
  br i1 %cmp1773, label %land.rhs.1775, label %land.end.1780

land.rhs.1775:                                    ; preds = %while.cond.1771
  %1176 = load i64, i64* %v11752, align 8
  %and1776 = and i64 %1176, 7
  %conv1777 = trunc i64 %and1776 to i32
  %cmp1778 = icmp eq i32 %conv1777, 3
  br label %land.end.1780

land.end.1780:                                    ; preds = %land.rhs.1775, %while.cond.1771
  %1177 = phi i1 [ false, %while.cond.1771 ], [ %cmp1778, %land.rhs.1775 ]
  br i1 %1177, label %while.body.1781, label %while.end.1785

while.body.1781:                                  ; preds = %land.end.1780
  %1178 = load i64, i64* %v11752, align 8
  %sub1782 = sub nsw i64 %1178, 3
  %1179 = inttoptr i64 %sub1782 to i8*
  %1180 = bitcast i8* %1179 to %struct.Lisp_Cons*
  %u1783 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1180, i32 0, i32 1
  %cdr1784 = bitcast %union.anon.0* %u1783 to i64*
  %1181 = load i64, i64* %cdr1784, align 8
  store i64 %1181, i64* %v11752, align 8
  br label %while.cond.1771

while.end.1785:                                   ; preds = %land.end.1780
  store i8 0, i8* @immediate_quit, align 1
  %1182 = load i64, i64* %v11752, align 8
  %call1786 = call i64 @CAR(i64 %1182)
  %1183 = load i64*, i64** %top, align 8
  store i64 %call1786, i64* %1183, align 8
  br label %if.end.1790

if.else.1787:                                     ; preds = %insn_Belt
  %1184 = load i64*, i64** %top, align 8
  %incdec.ptr1788 = getelementptr inbounds i64, i64* %1184, i32 -1
  store i64* %incdec.ptr1788, i64** %top, align 8
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %v11752, align 8
  %1186 = load i64*, i64** %top, align 8
  %1187 = load i64, i64* %1186, align 8
  %1188 = load i64, i64* %v11752, align 8
  %call1789 = call i64 @Felt(i64 %1187, i64 %1188)
  %1189 = load i64*, i64** %top, align 8
  store i64 %call1789, i64* %1189, align 8
  br label %if.end.1790

if.end.1790:                                      ; preds = %if.else.1787, %while.end.1785
  %pc1791 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1190 = load i8*, i8** %pc1791, align 8
  %incdec.ptr1792 = getelementptr inbounds i8, i8* %1190, i32 1
  store i8* %incdec.ptr1792, i8** %pc1791, align 8
  %1191 = load i8, i8* %1190, align 1
  %conv1793 = zext i8 %1191 to i32
  store i32 %conv1793, i32* %op, align 4
  %idxprom1794 = sext i32 %conv1793 to i64
  %arrayidx1795 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1794
  %1192 = load i8*, i8** %arrayidx1795, align 8
  br label %indirectgoto

insn_Bmember:                                     ; preds = %indirectgoto
  %1193 = load i64*, i64** %top, align 8
  %incdec.ptr1797 = getelementptr inbounds i64, i64* %1193, i32 -1
  store i64* %incdec.ptr1797, i64** %top, align 8
  %1194 = load i64, i64* %1193, align 8
  store i64 %1194, i64* %v11796, align 8
  %1195 = load i64*, i64** %top, align 8
  %1196 = load i64, i64* %1195, align 8
  %1197 = load i64, i64* %v11796, align 8
  %call1798 = call i64 @Fmember(i64 %1196, i64 %1197)
  %1198 = load i64*, i64** %top, align 8
  store i64 %call1798, i64* %1198, align 8
  %pc1799 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1199 = load i8*, i8** %pc1799, align 8
  %incdec.ptr1800 = getelementptr inbounds i8, i8* %1199, i32 1
  store i8* %incdec.ptr1800, i8** %pc1799, align 8
  %1200 = load i8, i8* %1199, align 1
  %conv1801 = zext i8 %1200 to i32
  store i32 %conv1801, i32* %op, align 4
  %idxprom1802 = sext i32 %conv1801 to i64
  %arrayidx1803 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1802
  %1201 = load i8*, i8** %arrayidx1803, align 8
  br label %indirectgoto

insn_Bassq:                                       ; preds = %indirectgoto
  %1202 = load i64*, i64** %top, align 8
  %incdec.ptr1805 = getelementptr inbounds i64, i64* %1202, i32 -1
  store i64* %incdec.ptr1805, i64** %top, align 8
  %1203 = load i64, i64* %1202, align 8
  store i64 %1203, i64* %v11804, align 8
  %1204 = load i64*, i64** %top, align 8
  %1205 = load i64, i64* %1204, align 8
  %1206 = load i64, i64* %v11804, align 8
  %call1806 = call i64 @Fassq(i64 %1205, i64 %1206)
  %1207 = load i64*, i64** %top, align 8
  store i64 %call1806, i64* %1207, align 8
  %pc1807 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1208 = load i8*, i8** %pc1807, align 8
  %incdec.ptr1808 = getelementptr inbounds i8, i8* %1208, i32 1
  store i8* %incdec.ptr1808, i8** %pc1807, align 8
  %1209 = load i8, i8* %1208, align 1
  %conv1809 = zext i8 %1209 to i32
  store i32 %conv1809, i32* %op, align 4
  %idxprom1810 = sext i32 %conv1809 to i64
  %arrayidx1811 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1810
  %1210 = load i8*, i8** %arrayidx1811, align 8
  br label %indirectgoto

insn_Bnreverse:                                   ; preds = %indirectgoto
  %1211 = load i64*, i64** %top, align 8
  %1212 = load i64, i64* %1211, align 8
  %call1812 = call i64 @Fnreverse(i64 %1212)
  %1213 = load i64*, i64** %top, align 8
  store i64 %call1812, i64* %1213, align 8
  %pc1813 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1214 = load i8*, i8** %pc1813, align 8
  %incdec.ptr1814 = getelementptr inbounds i8, i8* %1214, i32 1
  store i8* %incdec.ptr1814, i8** %pc1813, align 8
  %1215 = load i8, i8* %1214, align 1
  %conv1815 = zext i8 %1215 to i32
  store i32 %conv1815, i32* %op, align 4
  %idxprom1816 = sext i32 %conv1815 to i64
  %arrayidx1817 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1816
  %1216 = load i8*, i8** %arrayidx1817, align 8
  br label %indirectgoto

insn_Bsetcar:                                     ; preds = %indirectgoto
  %1217 = load i64*, i64** %top, align 8
  %incdec.ptr1819 = getelementptr inbounds i64, i64* %1217, i32 -1
  store i64* %incdec.ptr1819, i64** %top, align 8
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %v11818, align 8
  %1219 = load i64*, i64** %top, align 8
  %1220 = load i64, i64* %1219, align 8
  %1221 = load i64, i64* %v11818, align 8
  %call1820 = call i64 @Fsetcar(i64 %1220, i64 %1221)
  %1222 = load i64*, i64** %top, align 8
  store i64 %call1820, i64* %1222, align 8
  %pc1821 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1223 = load i8*, i8** %pc1821, align 8
  %incdec.ptr1822 = getelementptr inbounds i8, i8* %1223, i32 1
  store i8* %incdec.ptr1822, i8** %pc1821, align 8
  %1224 = load i8, i8* %1223, align 1
  %conv1823 = zext i8 %1224 to i32
  store i32 %conv1823, i32* %op, align 4
  %idxprom1824 = sext i32 %conv1823 to i64
  %arrayidx1825 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1824
  %1225 = load i8*, i8** %arrayidx1825, align 8
  br label %indirectgoto

insn_Bsetcdr:                                     ; preds = %indirectgoto
  %1226 = load i64*, i64** %top, align 8
  %incdec.ptr1827 = getelementptr inbounds i64, i64* %1226, i32 -1
  store i64* %incdec.ptr1827, i64** %top, align 8
  %1227 = load i64, i64* %1226, align 8
  store i64 %1227, i64* %v11826, align 8
  %1228 = load i64*, i64** %top, align 8
  %1229 = load i64, i64* %1228, align 8
  %1230 = load i64, i64* %v11826, align 8
  %call1828 = call i64 @Fsetcdr(i64 %1229, i64 %1230)
  %1231 = load i64*, i64** %top, align 8
  store i64 %call1828, i64* %1231, align 8
  %pc1829 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1232 = load i8*, i8** %pc1829, align 8
  %incdec.ptr1830 = getelementptr inbounds i8, i8* %1232, i32 1
  store i8* %incdec.ptr1830, i8** %pc1829, align 8
  %1233 = load i8, i8* %1232, align 1
  %conv1831 = zext i8 %1233 to i32
  store i32 %conv1831, i32* %op, align 4
  %idxprom1832 = sext i32 %conv1831 to i64
  %arrayidx1833 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1832
  %1234 = load i8*, i8** %arrayidx1833, align 8
  br label %indirectgoto

insn_Bcar_safe:                                   ; preds = %indirectgoto
  %1235 = load i64*, i64** %top, align 8
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %v11834, align 8
  %1237 = load i64, i64* %v11834, align 8
  %call1835 = call i64 @CAR_SAFE(i64 %1237)
  %1238 = load i64*, i64** %top, align 8
  store i64 %call1835, i64* %1238, align 8
  %pc1836 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1239 = load i8*, i8** %pc1836, align 8
  %incdec.ptr1837 = getelementptr inbounds i8, i8* %1239, i32 1
  store i8* %incdec.ptr1837, i8** %pc1836, align 8
  %1240 = load i8, i8* %1239, align 1
  %conv1838 = zext i8 %1240 to i32
  store i32 %conv1838, i32* %op, align 4
  %idxprom1839 = sext i32 %conv1838 to i64
  %arrayidx1840 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1839
  %1241 = load i8*, i8** %arrayidx1840, align 8
  br label %indirectgoto

insn_Bcdr_safe:                                   ; preds = %indirectgoto
  %1242 = load i64*, i64** %top, align 8
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %v11841, align 8
  %1244 = load i64, i64* %v11841, align 8
  %call1842 = call i64 @CDR_SAFE(i64 %1244)
  %1245 = load i64*, i64** %top, align 8
  store i64 %call1842, i64* %1245, align 8
  %pc1843 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1246 = load i8*, i8** %pc1843, align 8
  %incdec.ptr1844 = getelementptr inbounds i8, i8* %1246, i32 1
  store i8* %incdec.ptr1844, i8** %pc1843, align 8
  %1247 = load i8, i8* %1246, align 1
  %conv1845 = zext i8 %1247 to i32
  store i32 %conv1845, i32* %op, align 4
  %idxprom1846 = sext i32 %conv1845 to i64
  %arrayidx1847 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1846
  %1248 = load i8*, i8** %arrayidx1847, align 8
  br label %indirectgoto

insn_Bnconc:                                      ; preds = %indirectgoto
  %1249 = load i64*, i64** %top, align 8
  %add.ptr1848 = getelementptr inbounds i64, i64* %1249, i64 -1
  store i64* %add.ptr1848, i64** %top, align 8
  %1250 = load i64*, i64** %top, align 8
  %call1849 = call i64 @Fnconc(i64 2, i64* %1250)
  %1251 = load i64*, i64** %top, align 8
  store i64 %call1849, i64* %1251, align 8
  %pc1850 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1252 = load i8*, i8** %pc1850, align 8
  %incdec.ptr1851 = getelementptr inbounds i8, i8* %1252, i32 1
  store i8* %incdec.ptr1851, i8** %pc1850, align 8
  %1253 = load i8, i8* %1252, align 1
  %conv1852 = zext i8 %1253 to i32
  store i32 %conv1852, i32* %op, align 4
  %idxprom1853 = sext i32 %conv1852 to i64
  %arrayidx1854 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1853
  %1254 = load i8*, i8** %arrayidx1854, align 8
  br label %indirectgoto

insn_Bnumberp:                                    ; preds = %indirectgoto
  %1255 = load i64*, i64** %top, align 8
  %1256 = load i64, i64* %1255, align 8
  %call1855 = call zeroext i1 @NUMBERP(i64 %1256)
  br i1 %call1855, label %cond.true.1857, label %cond.false.1859

cond.true.1857:                                   ; preds = %insn_Bnumberp
  %call1858 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1861

cond.false.1859:                                  ; preds = %insn_Bnumberp
  %call1860 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1861

cond.end.1861:                                    ; preds = %cond.false.1859, %cond.true.1857
  %cond1862 = phi i64 [ %call1858, %cond.true.1857 ], [ %call1860, %cond.false.1859 ]
  %1257 = load i64*, i64** %top, align 8
  store i64 %cond1862, i64* %1257, align 8
  %pc1863 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1258 = load i8*, i8** %pc1863, align 8
  %incdec.ptr1864 = getelementptr inbounds i8, i8* %1258, i32 1
  store i8* %incdec.ptr1864, i8** %pc1863, align 8
  %1259 = load i8, i8* %1258, align 1
  %conv1865 = zext i8 %1259 to i32
  store i32 %conv1865, i32* %op, align 4
  %idxprom1866 = sext i32 %conv1865 to i64
  %arrayidx1867 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1866
  %1260 = load i8*, i8** %arrayidx1867, align 8
  br label %indirectgoto

insn_Bintegerp:                                   ; preds = %indirectgoto
  %1261 = load i64*, i64** %top, align 8
  %1262 = load i64, i64* %1261, align 8
  %and1868 = and i64 %1262, 7
  %conv1869 = trunc i64 %and1868 to i32
  %and1870 = and i32 %conv1869, -5
  %cmp1871 = icmp eq i32 %and1870, 2
  br i1 %cmp1871, label %cond.true.1873, label %cond.false.1875

cond.true.1873:                                   ; preds = %insn_Bintegerp
  %call1874 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1877

cond.false.1875:                                  ; preds = %insn_Bintegerp
  %call1876 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1877

cond.end.1877:                                    ; preds = %cond.false.1875, %cond.true.1873
  %cond1878 = phi i64 [ %call1874, %cond.true.1873 ], [ %call1876, %cond.false.1875 ]
  %1263 = load i64*, i64** %top, align 8
  store i64 %cond1878, i64* %1263, align 8
  %pc1879 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1264 = load i8*, i8** %pc1879, align 8
  %incdec.ptr1880 = getelementptr inbounds i8, i8* %1264, i32 1
  store i8* %incdec.ptr1880, i8** %pc1879, align 8
  %1265 = load i8, i8* %1264, align 1
  %conv1881 = zext i8 %1265 to i32
  store i32 %conv1881, i32* %op, align 4
  %idxprom1882 = sext i32 %conv1881 to i64
  %arrayidx1883 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1882
  %1266 = load i8*, i8** %arrayidx1883, align 8
  br label %indirectgoto

insn_Bstack_ref:                                  ; preds = %indirectgoto
  br label %insn_default

insn_default:                                     ; preds = %insn_Bstack_ref, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto
  %call1884 = call i64 @builtin_lisp_symbol(i32 372)
  %call1885 = call i64 @build_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  %1267 = load i32, i32* %op, align 4
  %conv1886 = sext i32 %1267 to i64
  %shl1887 = shl i64 %conv1886, 2
  %add1888 = add i64 %shl1887, 2
  %pc1889 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1268 = load i8*, i8** %pc1889, align 8
  %add.ptr1890 = getelementptr inbounds i8, i8* %1268, i64 -1
  %byte_string_start1891 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 2
  %1269 = load i8*, i8** %byte_string_start1891, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr1890 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1269 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl1892 = shl i64 %sub.ptr.sub, 2
  %add1893 = add i64 %shl1892, 2
  %call1894 = call i64 @call3(i64 %call1884, i64 %call1885, i64 %add1888, i64 %add1893)
  br label %insn_Bstack_ref1

insn_Bstack_ref1:                                 ; preds = %insn_default, %indirectgoto
  br label %insn_Bstack_ref2

insn_Bstack_ref2:                                 ; preds = %insn_Bstack_ref1, %indirectgoto
  br label %insn_Bstack_ref3

insn_Bstack_ref3:                                 ; preds = %insn_Bstack_ref2, %indirectgoto
  br label %insn_Bstack_ref4

insn_Bstack_ref4:                                 ; preds = %insn_Bstack_ref3, %indirectgoto
  br label %insn_Bstack_ref5

insn_Bstack_ref5:                                 ; preds = %insn_Bstack_ref4, %indirectgoto
  %1270 = load i64*, i64** %top, align 8
  %1271 = load i32, i32* %op, align 4
  %sub1895 = sub nsw i32 %1271, 0
  %idx.ext1896 = sext i32 %sub1895 to i64
  %idx.neg1897 = sub i64 0, %idx.ext1896
  %add.ptr1898 = getelementptr inbounds i64, i64* %1270, i64 %idx.neg1897
  store i64* %add.ptr1898, i64** %ptr, align 8
  %1272 = load i64*, i64** %top, align 8
  %incdec.ptr1899 = getelementptr inbounds i64, i64* %1272, i32 1
  store i64* %incdec.ptr1899, i64** %top, align 8
  %1273 = load i64*, i64** %ptr, align 8
  %1274 = load i64, i64* %1273, align 8
  %1275 = load i64*, i64** %top, align 8
  store i64 %1274, i64* %1275, align 8
  %pc1900 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1276 = load i8*, i8** %pc1900, align 8
  %incdec.ptr1901 = getelementptr inbounds i8, i8* %1276, i32 1
  store i8* %incdec.ptr1901, i8** %pc1900, align 8
  %1277 = load i8, i8* %1276, align 1
  %conv1902 = zext i8 %1277 to i32
  store i32 %conv1902, i32* %op, align 4
  %idxprom1903 = sext i32 %conv1902 to i64
  %arrayidx1904 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1903
  %1278 = load i8*, i8** %arrayidx1904, align 8
  br label %indirectgoto

insn_Bstack_ref6:                                 ; preds = %indirectgoto
  %1279 = load i64*, i64** %top, align 8
  %pc1906 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1280 = load i8*, i8** %pc1906, align 8
  %incdec.ptr1907 = getelementptr inbounds i8, i8* %1280, i32 1
  store i8* %incdec.ptr1907, i8** %pc1906, align 8
  %1281 = load i8, i8* %1280, align 1
  %conv1908 = zext i8 %1281 to i32
  %idx.ext1909 = sext i32 %conv1908 to i64
  %idx.neg1910 = sub i64 0, %idx.ext1909
  %add.ptr1911 = getelementptr inbounds i64, i64* %1279, i64 %idx.neg1910
  store i64* %add.ptr1911, i64** %ptr1905, align 8
  %1282 = load i64*, i64** %top, align 8
  %incdec.ptr1912 = getelementptr inbounds i64, i64* %1282, i32 1
  store i64* %incdec.ptr1912, i64** %top, align 8
  %1283 = load i64*, i64** %ptr1905, align 8
  %1284 = load i64, i64* %1283, align 8
  %1285 = load i64*, i64** %top, align 8
  store i64 %1284, i64* %1285, align 8
  %pc1913 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1286 = load i8*, i8** %pc1913, align 8
  %incdec.ptr1914 = getelementptr inbounds i8, i8* %1286, i32 1
  store i8* %incdec.ptr1914, i8** %pc1913, align 8
  %1287 = load i8, i8* %1286, align 1
  %conv1915 = zext i8 %1287 to i32
  store i32 %conv1915, i32* %op, align 4
  %idxprom1916 = sext i32 %conv1915 to i64
  %arrayidx1917 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1916
  %1288 = load i8*, i8** %arrayidx1917, align 8
  br label %indirectgoto

insn_Bstack_ref7:                                 ; preds = %indirectgoto
  %1289 = load i64*, i64** %top, align 8
  %pc1919 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1290 = load i8*, i8** %pc1919, align 8
  %incdec.ptr1920 = getelementptr inbounds i8, i8* %1290, i32 1
  store i8* %incdec.ptr1920, i8** %pc1919, align 8
  %1291 = load i8, i8* %1290, align 1
  %conv1921 = zext i8 %1291 to i32
  store i32 %conv1921, i32* %op, align 4
  %1292 = load i32, i32* %op, align 4
  %pc1922 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1293 = load i8*, i8** %pc1922, align 8
  %incdec.ptr1923 = getelementptr inbounds i8, i8* %1293, i32 1
  store i8* %incdec.ptr1923, i8** %pc1922, align 8
  %1294 = load i8, i8* %1293, align 1
  %conv1924 = zext i8 %1294 to i32
  %shl1925 = shl i32 %conv1924, 8
  %add1926 = add nsw i32 %1292, %shl1925
  %idx.ext1927 = sext i32 %add1926 to i64
  %idx.neg1928 = sub i64 0, %idx.ext1927
  %add.ptr1929 = getelementptr inbounds i64, i64* %1289, i64 %idx.neg1928
  store i64* %add.ptr1929, i64** %ptr1918, align 8
  %1295 = load i64*, i64** %top, align 8
  %incdec.ptr1930 = getelementptr inbounds i64, i64* %1295, i32 1
  store i64* %incdec.ptr1930, i64** %top, align 8
  %1296 = load i64*, i64** %ptr1918, align 8
  %1297 = load i64, i64* %1296, align 8
  %1298 = load i64*, i64** %top, align 8
  store i64 %1297, i64* %1298, align 8
  %pc1931 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1299 = load i8*, i8** %pc1931, align 8
  %incdec.ptr1932 = getelementptr inbounds i8, i8* %1299, i32 1
  store i8* %incdec.ptr1932, i8** %pc1931, align 8
  %1300 = load i8, i8* %1299, align 1
  %conv1933 = zext i8 %1300 to i32
  store i32 %conv1933, i32* %op, align 4
  %idxprom1934 = sext i32 %conv1933 to i64
  %arrayidx1935 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1934
  %1301 = load i8*, i8** %arrayidx1935, align 8
  br label %indirectgoto

insn_Bstack_set:                                  ; preds = %indirectgoto
  %1302 = load i64*, i64** %top, align 8
  %pc1937 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1303 = load i8*, i8** %pc1937, align 8
  %incdec.ptr1938 = getelementptr inbounds i8, i8* %1303, i32 1
  store i8* %incdec.ptr1938, i8** %pc1937, align 8
  %1304 = load i8, i8* %1303, align 1
  %conv1939 = zext i8 %1304 to i32
  %idx.ext1940 = sext i32 %conv1939 to i64
  %idx.neg1941 = sub i64 0, %idx.ext1940
  %add.ptr1942 = getelementptr inbounds i64, i64* %1302, i64 %idx.neg1941
  store i64* %add.ptr1942, i64** %ptr1936, align 8
  %1305 = load i64*, i64** %top, align 8
  %incdec.ptr1943 = getelementptr inbounds i64, i64* %1305, i32 -1
  store i64* %incdec.ptr1943, i64** %top, align 8
  %1306 = load i64, i64* %1305, align 8
  %1307 = load i64*, i64** %ptr1936, align 8
  store i64 %1306, i64* %1307, align 8
  %pc1944 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1308 = load i8*, i8** %pc1944, align 8
  %incdec.ptr1945 = getelementptr inbounds i8, i8* %1308, i32 1
  store i8* %incdec.ptr1945, i8** %pc1944, align 8
  %1309 = load i8, i8* %1308, align 1
  %conv1946 = zext i8 %1309 to i32
  store i32 %conv1946, i32* %op, align 4
  %idxprom1947 = sext i32 %conv1946 to i64
  %arrayidx1948 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1947
  %1310 = load i8*, i8** %arrayidx1948, align 8
  br label %indirectgoto

insn_Bstack_set2:                                 ; preds = %indirectgoto
  %1311 = load i64*, i64** %top, align 8
  %pc1950 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1312 = load i8*, i8** %pc1950, align 8
  %incdec.ptr1951 = getelementptr inbounds i8, i8* %1312, i32 1
  store i8* %incdec.ptr1951, i8** %pc1950, align 8
  %1313 = load i8, i8* %1312, align 1
  %conv1952 = zext i8 %1313 to i32
  store i32 %conv1952, i32* %op, align 4
  %1314 = load i32, i32* %op, align 4
  %pc1953 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1315 = load i8*, i8** %pc1953, align 8
  %incdec.ptr1954 = getelementptr inbounds i8, i8* %1315, i32 1
  store i8* %incdec.ptr1954, i8** %pc1953, align 8
  %1316 = load i8, i8* %1315, align 1
  %conv1955 = zext i8 %1316 to i32
  %shl1956 = shl i32 %conv1955, 8
  %add1957 = add nsw i32 %1314, %shl1956
  %idx.ext1958 = sext i32 %add1957 to i64
  %idx.neg1959 = sub i64 0, %idx.ext1958
  %add.ptr1960 = getelementptr inbounds i64, i64* %1311, i64 %idx.neg1959
  store i64* %add.ptr1960, i64** %ptr1949, align 8
  %1317 = load i64*, i64** %top, align 8
  %incdec.ptr1961 = getelementptr inbounds i64, i64* %1317, i32 -1
  store i64* %incdec.ptr1961, i64** %top, align 8
  %1318 = load i64, i64* %1317, align 8
  %1319 = load i64*, i64** %ptr1949, align 8
  store i64 %1318, i64* %1319, align 8
  %pc1962 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1320 = load i8*, i8** %pc1962, align 8
  %incdec.ptr1963 = getelementptr inbounds i8, i8* %1320, i32 1
  store i8* %incdec.ptr1963, i8** %pc1962, align 8
  %1321 = load i8, i8* %1320, align 1
  %conv1964 = zext i8 %1321 to i32
  store i32 %conv1964, i32* %op, align 4
  %idxprom1965 = sext i32 %conv1964 to i64
  %arrayidx1966 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1965
  %1322 = load i8*, i8** %arrayidx1966, align 8
  br label %indirectgoto

insn_BdiscardN:                                   ; preds = %indirectgoto
  %pc1967 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1323 = load i8*, i8** %pc1967, align 8
  %incdec.ptr1968 = getelementptr inbounds i8, i8* %1323, i32 1
  store i8* %incdec.ptr1968, i8** %pc1967, align 8
  %1324 = load i8, i8* %1323, align 1
  %conv1969 = zext i8 %1324 to i32
  store i32 %conv1969, i32* %op, align 4
  %1325 = load i32, i32* %op, align 4
  %and1970 = and i32 %1325, 128
  %tobool1971 = icmp ne i32 %and1970, 0
  br i1 %tobool1971, label %if.then.1972, label %if.end.1977

if.then.1972:                                     ; preds = %insn_BdiscardN
  %1326 = load i32, i32* %op, align 4
  %and1973 = and i32 %1326, 127
  store i32 %and1973, i32* %op, align 4
  %1327 = load i64*, i64** %top, align 8
  %1328 = load i64, i64* %1327, align 8
  %1329 = load i32, i32* %op, align 4
  %sub1974 = sub nsw i32 0, %1329
  %idxprom1975 = sext i32 %sub1974 to i64
  %1330 = load i64*, i64** %top, align 8
  %arrayidx1976 = getelementptr inbounds i64, i64* %1330, i64 %idxprom1975
  store i64 %1328, i64* %arrayidx1976, align 8
  br label %if.end.1977

if.end.1977:                                      ; preds = %if.then.1972, %insn_BdiscardN
  %1331 = load i32, i32* %op, align 4
  %1332 = load i64*, i64** %top, align 8
  %idx.ext1978 = sext i32 %1331 to i64
  %idx.neg1979 = sub i64 0, %idx.ext1978
  %add.ptr1980 = getelementptr inbounds i64, i64* %1332, i64 %idx.neg1979
  store i64* %add.ptr1980, i64** %top, align 8
  %pc1981 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1333 = load i8*, i8** %pc1981, align 8
  %incdec.ptr1982 = getelementptr inbounds i8, i8* %1333, i32 1
  store i8* %incdec.ptr1982, i8** %pc1981, align 8
  %1334 = load i8, i8* %1333, align 1
  %conv1983 = zext i8 %1334 to i32
  store i32 %conv1983, i32* %op, align 4
  %idxprom1984 = sext i32 %conv1983 to i64
  %arrayidx1985 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1984
  %1335 = load i8*, i8** %arrayidx1985, align 8
  br label %indirectgoto

insn_Bconstant:                                   ; preds = %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto, %indirectgoto
  %1336 = load i64*, i64** %top, align 8
  %incdec.ptr1986 = getelementptr inbounds i64, i64* %1336, i32 1
  store i64* %incdec.ptr1986, i64** %top, align 8
  %1337 = load i32, i32* %op, align 4
  %sub1987 = sub nsw i32 %1337, 192
  %idxprom1988 = sext i32 %sub1987 to i64
  %1338 = load i64*, i64** %vectorp, align 8
  %arrayidx1989 = getelementptr inbounds i64, i64* %1338, i64 %idxprom1988
  %1339 = load i64, i64* %arrayidx1989, align 8
  %1340 = load i64*, i64** %top, align 8
  store i64 %1339, i64* %1340, align 8
  %pc1990 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %stack, i32 0, i32 0
  %1341 = load i8*, i8** %pc1990, align 8
  %incdec.ptr1991 = getelementptr inbounds i8, i8* %1341, i32 1
  store i8* %incdec.ptr1991, i8** %pc1990, align 8
  %1342 = load i8, i8* %1341, align 1
  %conv1992 = zext i8 %1342 to i32
  store i32 %conv1992, i32* %op, align 4
  %idxprom1993 = sext i32 %conv1992 to i64
  %arrayidx1994 = getelementptr inbounds [256 x i8*], [256 x i8*]* @exec_byte_code.targets, i32 0, i64 %idxprom1993
  %1343 = load i8*, i8** %arrayidx1994, align 8
  br label %indirectgoto

exit:                                             ; preds = %insn_Breturn
  %1344 = load %struct.byte_stack*, %struct.byte_stack** @byte_stack_list, align 8
  %next1995 = getelementptr inbounds %struct.byte_stack, %struct.byte_stack* %1344, i32 0, i32 3
  %1345 = load %struct.byte_stack*, %struct.byte_stack** %next1995, align 8
  store %struct.byte_stack* %1345, %struct.byte_stack** @byte_stack_list, align 8
  %call1996 = call i64 @SPECPDL_INDEX()
  %1346 = load i64, i64* %count, align 8
  %cmp1997 = icmp ne i64 %call1996, %1346
  br i1 %cmp1997, label %if.then.1999, label %if.end.2007

if.then.1999:                                     ; preds = %exit
  %call2000 = call i64 @SPECPDL_INDEX()
  %1347 = load i64, i64* %count, align 8
  %cmp2001 = icmp sgt i64 %call2000, %1347
  br i1 %cmp2001, label %if.then.2003, label %if.end.2006

if.then.2003:                                     ; preds = %if.then.1999
  %1348 = load i64, i64* %count, align 8
  %call2004 = call i64 @builtin_lisp_symbol(i32 0)
  %call2005 = call i64 @unbind_to(i64 %1348, i64 %call2004)
  br label %if.end.2006

if.end.2006:                                      ; preds = %if.then.2003, %if.then.1999
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end.2007:                                      ; preds = %exit
  %1349 = load i64, i64* %result, align 8
  ret i64 %1349

indirectgoto:                                     ; preds = %insn_Bconstant, %if.end.1977, %insn_Bstack_set2, %insn_Bstack_set, %insn_Bstack_ref7, %insn_Bstack_ref6, %insn_Bstack_ref5, %cond.end.1877, %cond.end.1861, %insn_Bnconc, %insn_Bcdr_safe, %insn_Bcar_safe, %insn_Bsetcdr, %insn_Bsetcar, %insn_Bnreverse, %insn_Bassq, %insn_Bmember, %if.end.1790, %insn_Bnthcdr, %insn_Bequal, %insn_Bstringlss, %insn_Bstringeqlsign, %insn_Bdowncase, %insn_Bupcase, %insn_Bmatch_end, %insn_Bmatch_beginning, %insn_Bset_marker, %insn_Bend_of_line, %insn_Bwiden, %insn_Bnarrow_to_region, %insn_Bdelete_region, %insn_Bbuffer_substring, %if.end.1638, %insn_Bforward_line, %insn_Bskip_chars_backward, %insn_Bskip_chars_forward, %insn_Bforward_word, %insn_Bforward_char, %insn_Binteractive_p, %insn_Bset_buffer, %insn_Bcurrent_buffer, %insn_Bbobp, %insn_Bbolp, %insn_Beobp, %insn_Beolp, %insn_Bindent_to, %insn_Bcurrent_column, %insn_Bpreceding_char, %insn_Bfollowing_char, %insn_Bchar_after, %insn_Bpoint_min, %insn_Bpoint_max, %insn_BinsertN, %insn_Binsert, %insn_Bgoto_char, %insn_Bpoint, %insn_Brem, %insn_Bquo, %insn_Bmult, %insn_Bmin, %insn_Bmax, %insn_Bplus, %if.end.1386, %insn_Bdiff, %insn_Bgeq, %insn_Bleq, %insn_Blss, %insn_Bgtr, %if.end.1328, %if.end.1226, %if.end.1207, %insn_BconcatN, %insn_Bconcat4, %insn_Bconcat3, %insn_Bconcat2, %insn_Bsubstring, %insn_Bget, %insn_Bfset, %insn_Bset, %insn_Bsymbol_function, %insn_Bsymbol_value, %insn_Baset, %insn_Baref, %insn_Blength, %insn_BlistN, %insn_Blist4, %insn_Blist3, %insn_Blist2, %insn_Blist1, %insn_Bcons, %cond.end.1032, %cond.end.1018, %cond.end.999, %cond.end.986, %cond.end.971, %while.end, %insn_Btemp_output_buffer_show, %insn_Btemp_output_buffer_setup, %insn_Bcondition_case, %insn_Bunwind_protect, %insn_Bpophandler, %if.end.885, %insn_Bcatch, %insn_Bsave_restriction, %insn_Bsave_window_excursion, %insn_Bsave_current_buffer_1, %insn_Bsave_excursion, %insn_Bconstant2, %insn_Bdiscard, %if.end.793, %if.end.747, %if.end.699, %if.end.652, %do.end.601, %if.end.569, %if.end.518, %if.end.467, %do.end.404, %insn_Bunbind_all, %dounbind, %docall, %varbind, %insn_Bdup, %if.end.293, %if.end.241, %insn_Bmemq, %cond.end.210, %if.end.196, %if.end.174, %if.end.127, %while.body
  %indirect.goto.dest = phi i8* [ %62, %while.body ], [ %89, %if.end.127 ], [ %110, %if.end.174 ], [ %125, %if.end.196 ], [ %134, %cond.end.210 ], [ %143, %insn_Bmemq ], [ %158, %if.end.241 ], [ %189, %if.end.293 ], [ %197, %insn_Bdup ], [ %213, %varbind ], [ %229, %docall ], [ %241, %dounbind ], [ %245, %insn_Bunbind_all ], [ %263, %do.end.404 ], [ %284, %if.end.467 ], [ %305, %if.end.518 ], [ %326, %if.end.569 ], [ %340, %do.end.601 ], [ %358, %if.end.652 ], [ %376, %if.end.699 ], [ %394, %if.end.747 ], [ %412, %if.end.793 ], [ %418, %insn_Bdiscard ], [ %430, %insn_Bconstant2 ], [ %433, %insn_Bsave_excursion ], [ %436, %insn_Bsave_current_buffer_1 ], [ %445, %insn_Bsave_window_excursion ], [ %448, %insn_Bsave_restriction ], [ %457, %insn_Bcatch ], [ %488, %if.end.885 ], [ %493, %insn_Bpophandler ], [ %500, %insn_Bunwind_protect ], [ %512, %insn_Bcondition_case ], [ %521, %insn_Btemp_output_buffer_setup ], [ %530, %insn_Btemp_output_buffer_show ], [ %551, %while.end ], [ %557, %cond.end.971 ], [ %563, %cond.end.986 ], [ %569, %cond.end.999 ], [ %577, %cond.end.1018 ], [ %583, %cond.end.1032 ], [ %592, %insn_Bcons ], [ %598, %insn_Blist1 ], [ %607, %insn_Blist2 ], [ %613, %insn_Blist3 ], [ %619, %insn_Blist4 ], [ %629, %insn_BlistN ], [ %635, %insn_Blength ], [ %644, %insn_Baref ], [ %656, %insn_Baset ], [ %662, %insn_Bsymbol_value ], [ %668, %insn_Bsymbol_function ], [ %677, %insn_Bset ], [ %686, %insn_Bfset ], [ %695, %insn_Bget ], [ %707, %insn_Bsubstring ], [ %713, %insn_Bconcat2 ], [ %719, %insn_Bconcat3 ], [ %725, %insn_Bconcat4 ], [ %735, %insn_BconcatN ], [ %746, %if.end.1207 ], [ %757, %if.end.1226 ], [ %792, %if.end.1328 ], [ %801, %insn_Bgtr ], [ %810, %insn_Blss ], [ %819, %insn_Bleq ], [ %828, %insn_Bgeq ], [ %834, %insn_Bdiff ], [ %845, %if.end.1386 ], [ %851, %insn_Bplus ], [ %857, %insn_Bmax ], [ %863, %insn_Bmin ], [ %869, %insn_Bmult ], [ %875, %insn_Bquo ], [ %884, %insn_Brem ], [ %892, %insn_Bpoint ], [ %898, %insn_Bgoto_char ], [ %903, %insn_Binsert ], [ %913, %insn_BinsertN ], [ %921, %insn_Bpoint_max ], [ %929, %insn_Bpoint_min ], [ %935, %insn_Bchar_after ], [ %941, %insn_Bfollowing_char ], [ %947, %insn_Bpreceding_char ], [ %953, %insn_Bcurrent_column ], [ %959, %insn_Bindent_to ], [ %964, %insn_Beolp ], [ %969, %insn_Beobp ], [ %974, %insn_Bbolp ], [ %979, %insn_Bbobp ], [ %984, %insn_Bcurrent_buffer ], [ %990, %insn_Bset_buffer ], [ %995, %insn_Binteractive_p ], [ %1001, %insn_Bforward_char ], [ %1007, %insn_Bforward_word ], [ %1016, %insn_Bskip_chars_forward ], [ %1025, %insn_Bskip_chars_backward ], [ %1031, %insn_Bforward_line ], [ %1053, %if.end.1638 ], [ %1062, %insn_Bbuffer_substring ], [ %1071, %insn_Bdelete_region ], [ %1080, %insn_Bnarrow_to_region ], [ %1085, %insn_Bwiden ], [ %1091, %insn_Bend_of_line ], [ %1103, %insn_Bset_marker ], [ %1109, %insn_Bmatch_beginning ], [ %1115, %insn_Bmatch_end ], [ %1121, %insn_Bupcase ], [ %1127, %insn_Bdowncase ], [ %1136, %insn_Bstringeqlsign ], [ %1145, %insn_Bstringlss ], [ %1154, %insn_Bequal ], [ %1163, %insn_Bnthcdr ], [ %1192, %if.end.1790 ], [ %1201, %insn_Bmember ], [ %1210, %insn_Bassq ], [ %1216, %insn_Bnreverse ], [ %1225, %insn_Bsetcar ], [ %1234, %insn_Bsetcdr ], [ %1241, %insn_Bcar_safe ], [ %1248, %insn_Bcdr_safe ], [ %1254, %insn_Bnconc ], [ %1260, %cond.end.1861 ], [ %1266, %cond.end.1877 ], [ %1278, %insn_Bstack_ref5 ], [ %1288, %insn_Bstack_ref6 ], [ %1301, %insn_Bstack_ref7 ], [ %1310, %insn_Bstack_set ], [ %1322, %insn_Bstack_set2 ], [ %1335, %if.end.1977 ], [ %1343, %insn_Bconstant ]
  indirectbr i8* %indirect.goto.dest, [label %insn_Bstack_ref, label %insn_Bstack_ref1, label %insn_Bstack_ref2, label %insn_Bstack_ref3, label %insn_Bstack_ref4, label %insn_Bstack_ref5, label %insn_Bstack_ref6, label %insn_Bstack_ref7, label %insn_Bvarref, label %insn_Bvarref1, label %insn_Bvarref2, label %insn_Bvarref3, label %insn_Bvarref4, label %insn_Bvarref5, label %insn_Bvarref6, label %insn_Bvarref7, label %insn_Bvarset, label %insn_Bvarset1, label %insn_Bvarset2, label %insn_Bvarset3, label %insn_Bvarset4, label %insn_Bvarset5, label %insn_Bvarset6, label %insn_Bvarset7, label %insn_Bvarbind, label %insn_Bvarbind1, label %insn_Bvarbind2, label %insn_Bvarbind3, label %insn_Bvarbind4, label %insn_Bvarbind5, label %insn_Bvarbind6, label %insn_Bvarbind7, label %insn_Bcall, label %insn_Bcall1, label %insn_Bcall2, label %insn_Bcall3, label %insn_Bcall4, label %insn_Bcall5, label %insn_Bcall6, label %insn_Bcall7, label %insn_Bunbind, label %insn_Bunbind1, label %insn_Bunbind2, label %insn_Bunbind3, label %insn_Bunbind4, label %insn_Bunbind5, label %insn_Bunbind6, label %insn_Bunbind7, label %insn_Bpophandler, label %insn_Bpushconditioncase, label %insn_Bpushcatch, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_Bnth, label %insn_Bsymbolp, label %insn_Bconsp, label %insn_Bstringp, label %insn_Blistp, label %insn_Beq, label %insn_Bmemq, label %insn_Bnot, label %insn_Bcar, label %insn_Bcdr, label %insn_Bcons, label %insn_Blist1, label %insn_Blist2, label %insn_Blist3, label %insn_Blist4, label %insn_Blength, label %insn_Baref, label %insn_Baset, label %insn_Bsymbol_value, label %insn_Bsymbol_function, label %insn_Bset, label %insn_Bfset, label %insn_Bget, label %insn_Bsubstring, label %insn_Bconcat2, label %insn_Bconcat3, label %insn_Bconcat4, label %insn_Bsub1, label %insn_Badd1, label %insn_Beqlsign, label %insn_Bgtr, label %insn_Blss, label %insn_Bleq, label %insn_Bgeq, label %insn_Bdiff, label %insn_Bnegate, label %insn_Bplus, label %insn_Bmax, label %insn_Bmin, label %insn_Bmult, label %insn_Bpoint, label %insn_Bsave_current_buffer, label %insn_Bgoto_char, label %insn_Binsert, label %insn_Bpoint_max, label %insn_Bpoint_min, label %insn_Bchar_after, label %insn_Bfollowing_char, label %insn_Bpreceding_char, label %insn_Bcurrent_column, label %insn_Bindent_to, label %insn_default, label %insn_Beolp, label %insn_Beobp, label %insn_Bbolp, label %insn_Bbobp, label %insn_Bcurrent_buffer, label %insn_Bset_buffer, label %insn_Bsave_current_buffer_1, label %insn_default, label %insn_Binteractive_p, label %insn_Bforward_char, label %insn_Bforward_word, label %insn_Bskip_chars_forward, label %insn_Bskip_chars_backward, label %insn_Bforward_line, label %insn_Bchar_syntax, label %insn_Bbuffer_substring, label %insn_Bdelete_region, label %insn_Bnarrow_to_region, label %insn_Bwiden, label %insn_Bend_of_line, label %insn_default, label %insn_Bconstant2, label %insn_Bgoto, label %insn_Bgotoifnil, label %insn_Bgotoifnonnil, label %insn_Bgotoifnilelsepop, label %insn_Bgotoifnonnilelsepop, label %insn_Breturn, label %insn_Bdiscard, label %insn_Bdup, label %insn_Bsave_excursion, label %insn_Bsave_window_excursion, label %insn_Bsave_restriction, label %insn_Bcatch, label %insn_Bunwind_protect, label %insn_Bcondition_case, label %insn_Btemp_output_buffer_setup, label %insn_Btemp_output_buffer_show, label %insn_Bunbind_all, label %insn_Bset_marker, label %insn_Bmatch_beginning, label %insn_Bmatch_end, label %insn_Bupcase, label %insn_Bdowncase, label %insn_Bstringeqlsign, label %insn_Bstringlss, label %insn_Bequal, label %insn_Bnthcdr, label %insn_Belt, label %insn_Bmember, label %insn_Bassq, label %insn_Bnreverse, label %insn_Bsetcar, label %insn_Bsetcdr, label %insn_Bcar_safe, label %insn_Bcdr_safe, label %insn_Bnconc, label %insn_Bquo, label %insn_Brem, label %insn_Bnumberp, label %insn_Bintegerp, label %insn_default, label %insn_BRgoto, label %insn_BRgotoifnil, label %insn_BRgotoifnonnil, label %insn_BRgotoifnilelsepop, label %insn_BRgotoifnonnilelsepop, label %insn_BlistN, label %insn_BconcatN, label %insn_BinsertN, label %insn_Bstack_set, label %insn_Bstack_set2, label %insn_default, label %insn_default, label %insn_BdiscardN, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_default, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant, label %insn_Bconstant]
}

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @SPECPDL_INDEX() #1

declare void @CHECK_STRING(i64) #1

declare void @CHECK_VECTOR(i64) #1

declare void @CHECK_NATNUM(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @Fstring_as_unibyte(i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #2

declare i64 @Fsignal(i64, i64) #1

declare i64 @list2(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @Flist(i64, i64*) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i64 @Fsymbol_value(i64) #1

declare void @maybe_gc() #1

; Function Attrs: noreturn
declare i64 @Fthrow(i64, i64) #2

declare void @process_pending_signals() #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare i64 @Fmemq(i64, i64) #1

declare void @set_internal(i64, i64, i64, i1 zeroext) #1

declare void @specbind(i64, i64) #1

declare i64 @Ffuncall(i64, i64*) #1

declare i64 @unbind_to(i64, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @save_excursion_restore(i64) #1

declare i64 @save_excursion_save() #1

declare void @record_unwind_current_buffer() #1

declare void @restore_window_configuration(i64) #1

declare i64 @Fcurrent_window_configuration(i64) #1

declare i64 @Fprogn(i64) #1

declare void @save_restriction_restore(i64) #1

declare i64 @save_restriction_save() #1

declare i64 @internal_catch(i64, i64 (i64)*, i64) #1

declare i64 @eval_sub(i64) #1

declare %struct.handler* @push_handler(i64, i32) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #3

declare i64 @Ffunctionp(i64) #1

declare void @unwind_body(i64) #1

; Function Attrs: nounwind uwtable
define internal void @bcall0(i64 %f) #0 {
entry:
  %f.addr = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  %call = call i64 @Ffuncall(i64 1, i64* %f.addr)
  ret void
}

declare i64 @internal_lisp_condition_case(i64, i64, i64) #1

declare void @temp_output_buffer_setup(i8*) #1

declare i8* @SSDATA(i64) #1

declare void @temp_output_buffer_show(i64) #1

declare i64 @CAR(i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @list1(i64) #1

declare i64 @Flength(i64) #1

declare i64 @Faref(i64, i64) #1

declare i64 @Faset(i64, i64, i64) #1

declare i64 @Fsymbol_function(i64) #1

declare i64 @Fset(i64, i64) #1

declare i64 @Ffset(i64, i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Fsubstring(i64, i64, i64) #1

declare i64 @Fconcat(i64, i64*) #1

declare i64 @Fsub1(i64) #1

declare i64 @Fadd1(i64) #1

declare i32 @XMISCTYPE(i64) #1

declare i64 @make_natnum(i64) #1

declare i64 @marker_position(i64) #1

declare zeroext i1 @NUMBERP(i64) #1

declare double @XFLOAT_DATA(i64) #1

declare i64 @arithcompare(i64, i64, i32) #1

declare i64 @Fminus(i64, i64*) #1

declare i64 @Fplus(i64, i64*) #1

declare i64 @Fmax(i64, i64*) #1

declare i64 @Fmin(i64, i64*) #1

declare i64 @Ftimes(i64, i64*) #1

declare i64 @Fquo(i64, i64*) #1

declare i64 @Frem(i64, i64) #1

declare i64 @Fgoto_char(i64) #1

declare i64 @Finsert(i64, i64*) #1

declare i64 @Fchar_after(i64) #1

declare i64 @Ffollowing_char() #1

declare i64 @Fprevious_char() #1

declare i64 @current_column() #1

declare i64 @Findent_to(i64, i64) #1

declare i64 @Feolp() #1

declare i64 @Feobp() #1

declare i64 @Fbolp() #1

declare i64 @Fbobp() #1

declare i64 @Fcurrent_buffer() #1

declare i64 @Fset_buffer(i64) #1

declare i64 @call0(i64) #1

declare i64 @intern(i8*) #1

declare i64 @Fforward_char(i64) #1

declare i64 @Fforward_word(i64) #1

declare i64 @Fskip_chars_forward(i64, i64) #1

declare i64 @Fskip_chars_backward(i64, i64) #1

declare i64 @Fforward_line(i64) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i32 @SYNTAX(i32) #1

declare i64 @Fbuffer_substring(i64, i64) #1

declare i64 @Fdelete_region(i64, i64) #1

declare i64 @Fnarrow_to_region(i64, i64) #1

declare i64 @Fwiden() #1

declare i64 @Fend_of_line(i64) #1

declare i64 @Fset_marker(i64, i64, i64) #1

declare i64 @Fmatch_beginning(i64) #1

declare i64 @Fmatch_end(i64) #1

declare i64 @Fupcase(i64) #1

declare i64 @Fdowncase(i64) #1

declare i64 @Fstring_equal(i64, i64) #1

declare i64 @Fstring_lessp(i64, i64) #1

declare i64 @Fequal(i64, i64) #1

declare i64 @Fnthcdr(i64, i64) #1

declare i64 @Felt(i64, i64) #1

declare i64 @Fmember(i64, i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @Fnreverse(i64) #1

declare i64 @Fsetcar(i64, i64) #1

declare i64 @Fsetcdr(i64, i64) #1

declare i64 @CAR_SAFE(i64) #1

declare i64 @CDR_SAFE(i64) #1

declare i64 @Fnconc(i64, i64*) #1

declare i64 @call3(i64, i64, i64, i64) #1

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define void @syms_of_bytecode() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbyte_code to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
