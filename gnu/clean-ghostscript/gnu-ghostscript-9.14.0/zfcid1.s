	.text
	.file	"zfcid1.bc"
	.align	16, 0x90
	.type	zbuildfont10,@function
zbuildfont10:                           # @zbuildfont10
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 112
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	build_gs_font_procs
	testl	%eax, %eax
	js	.LBB0_4
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cid_font_system_info_param
	testl	%eax, %eax
	js	.LBB0_4
# BB#2:                                 # %if.end.4
	movw	$3584, 56(%rsp)         # imm = 0xE00
	movl	$5, (%rsp)
	leaq	8(%rsp), %rdx
	leaq	56(%rsp), %r9
	movl	$10, %ecx
	movl	$st_gs_font_cid1, %r8d
	movq	%rbx, %rsi
	movq	%r14, %rdi
	callq	build_gs_simple_font
	testl	%eax, %eax
	js	.LBB0_4
# BB#3:                                 # %if.end.8
	movq	8(%rsp), %rsi
	movq	48(%rsp), %rax
	movq	%rax, 480(%rsi)
	movups	16(%rsp), %xmm0
	movups	32(%rsp), %xmm1
	movups	%xmm1, 464(%rsi)
	movups	%xmm0, 448(%rsi)
	movq	%r14, %rdi
	callq	define_gs_font
.LBB0_4:                                # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zbuildfont10, .Lfunc_end0-zbuildfont10
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont11,@function
zbuildfont11:                           # @zbuildfont11
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 288
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	176(%rsp), %rsi
	leaq	128(%rsp), %rdx
	movq	%rbx, %rdi
	callq	cid_font_data_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
# BB#1:                                 # %lor.lhs.false
	leaq	80(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB1_65
# BB#2:                                 # %lor.lhs.false.3
	leaq	164(%rsp), %r9
	movl	$.L.str.6, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
# BB#3:                                 # %if.end
	movq	80(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$-15, %ebp
	testb	$1, 164(%rsp)
	jne	.LBB1_65
# BB#4:                                 # %if.end.7
	leaq	104(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_6
# BB#5:                                 # %if.end.7
	cmpl	$-21, %ebp
	jne	.LBB1_65
.LBB1_6:                                # %if.end.12
	testl	%ebp, %ebp
	jle	.LBB1_24
# BB#7:                                 # %if.then.14
	movq	104(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 112(%rsp)
	movzwl	112(%rsp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB1_8
# BB#10:                                # %if.end.25
	leaq	48(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-10, %ebp
	testl	%eax, %eax
	jle	.LBB1_65
# BB#11:                                # %lor.lhs.false.29
	movq	48(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB1_65
# BB#12:                                # %for.cond.preheader
	leaq	40(%rsp), %rdx
	movl	$.L.str.8, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_65
# BB#13:                                # %lor.lhs.false.44
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB1_65
# BB#14:                                # %for.cond.53.preheader
	leaq	8(%r14), %r13
	movq	(%r13), %rdi
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_65
# BB#15:                                # %lor.lhs.false.61
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB1_65
# BB#16:                                # %if.end.69
	movq	32(%rsp), %r12
	movq	(%r13), %rdi
	movq	40(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_65
# BB#17:                                # %lor.lhs.false.61.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB1_65
# BB#18:                                # %if.end.69.1
	movq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.9, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_65
# BB#19:                                # %lor.lhs.false.44.1
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB1_65
# BB#20:                                # %for.cond.53.preheader.1
	movq	(%r13), %rdi
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_65
# BB#21:                                # %lor.lhs.false.61.1.105
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB1_65
# BB#22:                                # %if.end.69.1.107
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%r13), %rdi
	movq	40(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_65
# BB#23:                                # %lor.lhs.false.61.1.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	je	.LBB1_25
	jmp	.LBB1_65
.LBB1_24:                               # %if.else
	movq	$0, 104(%rsp)
	leaq	8(%r14), %r13
                                        # implicit-def: RAX
	movq	%rax, 16(%rsp)          # 8-byte Spill
                                        # implicit-def: R12
.LBB1_25:                               # %if.end.82
	movq	(%r13), %rdi
	leaq	144(%rsp), %rcx
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	font_string_array_param
	movl	%eax, %ebp
	cmpl	$-20, %ebp
	jne	.LBB1_26
# BB#28:                                # %sw.bb.90
	movzbl	145(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB1_31
# BB#29:                                # %sw.bb.90
	cmpl	$18, %eax
	je	.LBB1_27
# BB#30:                                # %sw.bb.90
	movl	$-20, %ebp
	cmpl	$11, %eax
	jne	.LBB1_65
	jmp	.LBB1_31
.LBB1_26:                               # %if.end.82
	testl	%ebp, %ebp
	jne	.LBB1_65
.LBB1_27:                               # %gdb
	cmpl	$0, 224(%rsp)
	movl	$-15, %ebp
	je	.LBB1_65
.LBB1_31:                               # %sw.epilog.98
	movl	$45, %eax
	cmpq	$0, 104(%rsp)
	jne	.LBB1_33
# BB#32:                                # %select.mid
	movl	$13, %eax
.LBB1_33:                               # %select.end
	movl	%eax, 8(%rsp)
	movq	$.L.str.12, (%rsp)
	leaq	168(%rsp), %rdx
	movl	$11, %ecx
	movl	$st_gs_font_cid2, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	build_gs_TrueType_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
# BB#34:                                # %if.end.106
	movq	168(%rsp), %r15
	leaq	56(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_51
# BB#35:                                # %land.lhs.true.110
	movq	56(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB1_51
# BB#36:                                # %if.then.117
	leaq	24(%rsp), %rdx
	movl	$.L.str.14, %esi
	callq	dict_find_string
	movl	$-10, %ebp
	testl	%eax, %eax
	jle	.LBB1_65
# BB#37:                                # %lor.lhs.false.121
	movq	24(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$18, %eax
	jne	.LBB1_65
# BB#38:                                # %if.end.129
	movq	(%r13), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rax
	movq	(%rax), %rbx
	jmp	.LBB1_39
.LBB1_43:                               # %for.inc.159
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	(%rbx), %rbx
.LBB1_39:                               # %if.end.129
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB1_45
# BB#40:                                # %for.body.136
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$11, 128(%rbx)
	jne	.LBB1_43
# BB#41:                                # %if.then.139
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpq	$0, 744(%rbx)
	je	.LBB1_43
# BB#42:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	24(%rsp), %rax
	movq	8(%rax), %rdi
	movl	4(%rax), %esi
	movq	672(%rbx), %rdx
	movl	680(%rbx), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB1_43
# BB#44:                                # %for.end.160
	movq	744(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB1_45
# BB#48:                                # %if.else.197
	movq	%rbx, 744(%r15)
	incq	(%rbx)
	jmp	.LBB1_49
.LBB1_45:                               # %do.body
	movq	16(%r15), %rdi
	movl	$st_subst_CID_on_WMode, %esi
	movl	$.L.str.15, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB1_65
# BB#46:                                # %do.body.171
	movq	$1, (%rbx)
	movq	16(%r15), %rax
	movq	%rax, 8(%rbx)
	movq	$rc_free_struct_only, 16(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
	movq	%rbx, 744(%r15)
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	get_subst_CID_on_WMode
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
# BB#47:                                # %if.end.191
	movq	56(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	get_subst_CID_on_WMode
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
.LBB1_49:                               # %if.end.214
	movl	$release_subst_CID_on_WMode, %esi
	movq	%r15, %rdi
	movq	%r15, %rdx
	callq	gs_font_notify_register
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_65
# BB#50:                                # %cleanup.235
	incq	(%rbx)
.LBB1_51:                               # %if.end.240
	movq	224(%rsp), %rax
	movq	%rax, 704(%r15)
	movups	176(%rsp), %xmm0
	movups	192(%rsp), %xmm1
	movups	208(%rsp), %xmm2
	movups	%xmm2, 688(%r15)
	movups	%xmm1, 672(%r15)
	movups	%xmm0, 656(%r15)
	movl	164(%rsp), %eax
	movl	%eax, 712(%r15)
	movq	168(%rsp), %rax
	movq	72(%rax), %rax
	movups	144(%rsp), %xmm0
	movups	%xmm0, 112(%rax)
	movq	$z11_CIDMap_proc, 720(%r15)
	movq	$font11_substitute_glyph_index_vertical, 488(%r15)
	movq	168(%rsp), %rax
	movq	$z11_enumerate_glyph, 216(%rax)
	movq	168(%rsp), %rax
	movq	$z11_glyph_info, 224(%rax)
	movq	168(%rsp), %rax
	movq	$z11_glyph_outline, 232(%rax)
	movq	168(%rsp), %rax
	movq	$z11_get_glyph_index, 464(%rax)
	cmpl	$0, 372(%r15)
	jne	.LBB1_53
# BB#52:                                # %if.then.254
	leaq	324(%r15), %rbx
	movq	(%r13), %rdi
	leaq	88(%rsp), %rbp
	leaq	64(%rsp), %rdx
	movq	%rbp, %rsi
	callq	get_font_name
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	copy_font_name
.LBB1_53:                               # %if.end.258
	cmpl	$0, 164(%rsp)
	je	.LBB1_55
# BB#54:                                # %if.then.260
	movq	168(%rsp), %rax
	movq	472(%rax), %rax
	movq	%rax, 728(%r15)
	movq	168(%rsp), %rax
	movq	$z11_get_outline, 472(%rax)
	movq	168(%rsp), %rax
	movq	480(%rax), %rax
	movq	%rax, 736(%r15)
	movq	168(%rsp), %rax
	movq	$z11_get_metrics, 480(%rax)
	jmp	.LBB1_63
.LBB1_55:                               # %if.else.272
	cmpq	$0, 104(%rsp)
	je	.LBB1_63
# BB#56:                                # %if.then.275
	movq	112(%rsp), %rax
	movl	%eax, %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpq	$800, %rcx              # imm = 0x320
	jne	.LBB1_8
# BB#57:                                # %do.body.296
	shrq	$32, %rax
	movq	120(%rsp), %rbx
	movzwl	264(%rbx), %ecx
	cmpl	%eax, %ecx
	je	.LBB1_62
# BB#58:                                # %if.then.304
	testw	%cx, %cx
	jne	.LBB1_61
# BB#59:                                # %land.lhs.true.309
	movzwl	266(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB1_61
# BB#60:                                # %if.then.315
	leaq	112(%rsp), %rdi
	callq	file_switch_to_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_62
	jmp	.LBB1_65
.LBB1_8:                                # %if.then.18
	movl	$-7, %ebp
	movzbl	113(%rsp), %eax
	cmpl	$3, %eax
	je	.LBB1_65
# BB#9:                                 # %cond.true
	leaq	112(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB1_64
.LBB1_61:                               # %if.else.324
	movq	256(%r14), %rbx
.LBB1_62:                               # %cleanup.341
	movq	168(%rsp), %rax
	movq	%r12, 568(%rax)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 504(%rax)
	movq	$gs_get_glyph_data_cached, 472(%rax)
	movq	168(%rsp), %rdi
	movl	$gs_type42_get_outline_from_TT_file, %edx
	movq	%rbx, %rsi
	callq	gs_glyph_cache__alloc
	movq	168(%rsp), %rcx
	movq	%rax, 624(%rcx)
.LBB1_63:                               # %if.end.345
	movq	168(%rsp), %rsi
	movq	%r14, %rdi
	callq	define_gs_font
.LBB1_64:                               # %cleanup.347
	movl	%eax, %ebp
.LBB1_65:                               # %cleanup.347
	movl	%ebp, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zbuildfont11, .Lfunc_end1-zbuildfont11
	.cfi_endproc

	.align	16, 0x90
	.type	ztype11mapcid,@function
ztype11mapcid:                          # @ztype11mapcid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB2_6
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB2_2
# BB#3:                                 # %if.end.5
	movq	(%rsp), %rdi
	movl	$-10, %eax
	cmpl	$11, 128(%rdi)
	jne	.LBB2_6
# BB#4:                                 # %if.end.9
	movq	8(%rbx), %rsi
	subq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	callq	z11_CIDMap_proc
	testl	%eax, %eax
	js	.LBB2_6
# BB#5:                                 # %if.end.14
	cltq
	movq	%rax, -8(%rbx)
	movw	$2816, -16(%rbx)        # imm = 0xB00
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_6
.LBB2_2:                                # %if.then.3
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB2_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	ztype11mapcid, .Lfunc_end2-ztype11mapcid
	.cfi_endproc

	.align	16, 0x90
	.type	zfillCIDMap,@function
zfillCIDMap:                            # @zfillCIDMap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	leaq	-64(%rax), %rcx
	movzbl	-63(%rax), %edx
	cmpl	$2, %edx
	jne	.LBB3_6
# BB#1:                                 # %if.end
	leaq	-48(%rax), %rdx
	movzbl	1(%rdx), %esi
	cmpl	$2, %esi
	jne	.LBB3_7
# BB#2:                                 # %if.end.13
	leaq	-32(%rax), %r9
	movzbl	1(%r9), %esi
	cmpl	$4, %esi
	jne	.LBB3_8
# BB#3:                                 # %if.end.22
	leaq	-16(%rax), %rdi
	movzbl	1(%rdi), %esi
	cmpl	$11, %esi
	jne	.LBB3_9
# BB#4:                                 # %if.end.31
	movzbl	1(%rax), %esi
	cmpl	$4, %esi
	jne	.LBB3_10
# BB#5:                                 # %if.end.40
	movq	8(%rbx), %rdi
	movl	-8(%rax), %r8d
	movq	%rcx, %rsi
	movq	%r9, %rcx
	movq	%rax, %r9
	callq	cid_fill_CIDMap
	addq	$-80, 624(%rbx)
	popq	%rbx
	retq
.LBB3_6:                                # %if.then
	movq	%rcx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB3_7:                                # %if.then.11
	movq	%rdx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB3_8:                                # %if.then.20
	movq	%r9, %rdi
.LBB3_9:                                # %if.then.29
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB3_10:                               # %if.then.38
	movq	%rax, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end3:
	.size	zfillCIDMap, .Lfunc_end3-zfillCIDMap
	.cfi_endproc

	.align	16, 0x90
	.type	zfillIdentityCIDMap,@function
zfillIdentityCIDMap:                    # @zfillIdentityCIDMap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movzbl	1(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB4_2
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movq	%rax, %rsi
	callq	cid_fill_Identity_CIDMap
	addq	$-16, 624(%rbx)
	popq	%rbx
	retq
.LBB4_2:                                # %if.then
	movq	%rax, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end4:
	.size	zfillIdentityCIDMap, .Lfunc_end4-zfillIdentityCIDMap
	.cfi_endproc

	.align	16, 0x90
	.type	get_subst_CID_on_WMode,@function
get_subst_CID_on_WMode:                 # @get_subst_CID_on_WMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 112
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movslq	%edx, %r13
	movq	%r13, 48(%rsp)
	movw	$2816, 40(%rsp)         # imm = 0xB00
	leaq	40(%rsp), %rax
	leaq	32(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	dict_find
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB5_8
# BB#1:                                 # %land.lhs.true
	movq	32(%rsp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$4, %edx
	jne	.LBB5_8
# BB#2:                                 # %if.then
	movl	4(%rcx), %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	8(%r15), %rdi
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB5_8
# BB#3:                                 # %for.cond.preheader
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_7
# BB#4:                                 # %for.body.lr.ph
	movslq	12(%rsp), %r14          # 4-byte Folded Reload
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movq	32(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movl	$-10, %eax
	movzbl	17(%rsp), %ecx
	cmpl	$11, %ecx
	jne	.LBB5_8
# BB#6:                                 # %if.end.27
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	24(%rsp), %eax
	movl	%eax, (%rbp,%rbx,4)
	incq	%rbx
	cmpq	%r14, %rbx
	jl	.LBB5_5
.LBB5_7:                                # %cleanup
	movq	%rbp, 24(%r15,%r13,8)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%r15,%r13,4)
	xorl	%eax, %eax
.LBB5_8:                                # %cleanup.39
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_subst_CID_on_WMode, .Lfunc_end5-get_subst_CID_on_WMode
	.cfi_endproc

	.align	16, 0x90
	.type	release_subst_CID_on_WMode,@function
release_subst_CID_on_WMode:             # @release_subst_CID_on_WMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -24
.Ltmp44:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	744(%rbx), %r14
	movl	$release_subst_CID_on_WMode, %esi
	movq	%rbx, %rdx
	callq	gs_font_notify_unregister
	movq	$0, 744(%rbx)
	testq	%r14, %r14
	je	.LBB6_3
# BB#1:                                 # %do.end
	movq	(%r14), %rax
	addq	$-2, %rax
	movq	%rax, (%r14)
	jne	.LBB6_3
# BB#2:                                 # %do.end.13
	movq	8(%r14), %rdi
	movl	$.L.str.16, %edx
	movq	%r14, %rsi
	callq	*16(%r14)
.LBB6_3:                                # %do.end.23
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	release_subst_CID_on_WMode, .Lfunc_end6-release_subst_CID_on_WMode
	.cfi_endproc

	.align	16, 0x90
	.type	z11_CIDMap_proc,@function
z11_CIDMap_proc:                        # @z11_CIDMap_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 80
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rsi, %rcx
	movq	%rdi, %r14
	movq	72(%r14), %rsi
	leaq	112(%rsi), %rax
	addq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	movzbl	113(%rsi), %edx
	cmpl	$2, %edx
	je	.LBB7_6
# BB#1:                                 # %entry
	cmpl	$11, %edx
	jne	.LBB7_2
# BB#5:                                 # %sw.bb.5
	addl	120(%rsi), %ecx
	movl	%ecx, %eax
	jmp	.LBB7_21
.LBB7_6:                                # %sw.bb.8
	movq	%rcx, 40(%rsp)
	movw	$2816, 32(%rsp)         # imm = 0xB00
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%rax, %rdi
	callq	dict_find
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB7_7
# BB#8:                                 # %if.end.18
	movq	24(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB7_21
# BB#9:                                 # %if.end.26
	movl	8(%rcx), %eax
	jmp	.LBB7_21
.LBB7_2:                                # %entry
	movslq	704(%r14), %rbx
	cmpl	$18, %edx
	jne	.LBB7_10
# BB#3:                                 # %sw.bb
	movl	116(%rsi), %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %edx
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jae	.LBB7_21
# BB#4:                                 # %if.end
	imulq	%rbx, %rcx
	addq	120(%rsi), %rcx
	movq	%rcx, 48(%rsp)
	jmp	.LBB7_12
.LBB7_10:                               # %sw.default
	movq	16(%r14), %rdi
	imulq	%rbx, %rcx
	leaq	48(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movq	$0, (%rsp)
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	%rax, %rsi
	movl	%ebx, %r8d
	callq	string_array_access_proc
	testl	%eax, %eax
	js	.LBB7_21
# BB#11:                                # %if.end.36
	movl	$-10, %eax
	jg	.LBB7_21
.LBB7_12:                               # %for.cond.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB7_19
# BB#13:                                # %for.body.lr.ph
	movq	48(%rsp), %rcx
	leal	-1(%rbx), %r8d
	xorl	%edx, %edx
	testb	$3, %bl
	movl	$0, %eax
	je	.LBB7_16
# BB#14:                                # %for.body.prol.preheader
	movl	%ebx, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB7_15:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movzbl	(%rcx,%rdx), %esi
	orl	%esi, %eax
	incq	%rdx
	cmpl	%edx, %edi
	jne	.LBB7_15
.LBB7_16:                               # %for.body.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB7_19
# BB#17:                                # %for.body.lr.ph.split.split
	subl	%edx, %ebx
	leaq	3(%rdx,%rcx), %rcx
	.align	16, 0x90
.LBB7_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movzbl	-3(%rcx), %edx
	orl	%eax, %edx
	shll	$8, %edx
	movzbl	-2(%rcx), %eax
	orl	%edx, %eax
	shll	$8, %eax
	movzbl	-1(%rcx), %edx
	orl	%eax, %edx
	shll	$8, %edx
	movzbl	(%rcx), %eax
	orl	%edx, %eax
	addq	$4, %rcx
	addl	$-4, %ebx
	jne	.LBB7_18
.LBB7_19:                               # %for.end
	cmpl	596(%r14), %eax
	jb	.LBB7_21
# BB#20:                                # %select.mid
	movl	$-10, %eax
	jmp	.LBB7_21
.LBB7_7:                                # %if.then.15
	movl	$-21, %eax
	cmovsl	%ecx, %eax
.LBB7_21:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	z11_CIDMap_proc, .Lfunc_end7-z11_CIDMap_proc
	.cfi_endproc

	.align	16, 0x90
	.type	font11_substitute_glyph_index_vertical,@function
font11_substitute_glyph_index_vertical: # @font11_substitute_glyph_index_vertical
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	leal	-2147483648(%rcx), %r8d
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	cmovbel	%ecx, %r8d
	testl	%edx, %edx
	sete	%r9b
	movq	744(%rdi), %rax
	testq	%rax, %rax
	je	.LBB8_7
# BB#1:                                 # %if.then
	testl	%edx, %edx
	sete	%bl
	movzbl	%bl, %ebp
	movl	40(%rax,%rbp,4), %r11d
	testl	%r11d, %r11d
	jle	.LBB8_7
# BB#2:                                 # %for.cond.preheader
	movzbl	%r9b, %r9d
	movq	24(%rax,%rbp,8), %r10
	movl	%r11d, %eax
	shrl	$31, %eax
	leal	(%rax,%r11), %eax
	sarl	%eax
	andl	$-2, %eax
	movslq	%eax, %rbx
	movl	(%r10,%rbx,4), %r14d
	cmpl	%r8d, %r14d
	je	.LBB8_6
# BB#3:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_4:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	leal	2(%rbx), %ebp
	cmpl	%r11d, %ebp
	jge	.LBB8_7
# BB#5:                                 # %if.end.18
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	%r8d, %r14d
	cmovbel	%eax, %ebx
	cmoval	%eax, %r11d
	leal	(%r11,%rbx), %ebp
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	andl	$-2, %eax
	movslq	%eax, %rbp
	movl	(%r10,%rbp,4), %r14d
	cmpl	%r8d, %r14d
	jne	.LBB8_4
.LBB8_6:
	movl	%r9d, %edx
.LBB8_7:                                # %if.end.26
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_type42_substitute_glyph_index_vertical # TAILCALL
.Lfunc_end8:
	.size	font11_substitute_glyph_index_vertical, .Lfunc_end8-font11_substitute_glyph_index_vertical
	.cfi_endproc

	.align	16, 0x90
	.type	z11_enumerate_glyph,@function
z11_enumerate_glyph:                    # @z11_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 64
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$2147483648, %r13d      # imm = 0x80000000
	movl	$2147483648, %esi       # imm = 0x80000000
	callq	z11_CIDMap_proc
	movl	%eax, %r12d
	movl	(%rbx), %ecx
	movl	$-15, %eax
	cmpl	696(%rbp), %ecx
	jg	.LBB9_7
	.align	16, 0x90
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rsi
	addq	%r13, %rsi
	movq	%rbp, %rdi
	callq	z11_CIDMap_proc
	testl	%eax, %eax
	js	.LBB9_2
# BB#3:                                 # %if.end.5
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	(%rbx), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, (%rbx)
	cmpl	%r12d, %eax
	jne	.LBB9_5
# BB#4:                                 # %if.end.5
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%edx, %edx
	jne	.LBB9_1
.LBB9_5:                                # %for.end
	leaq	(%rdx,%r13), %rcx
	cmpl	$1, %r15d
	movl	%eax, %eax
	leaq	1073741824(%r13,%rax), %rax
	cmovneq	%rcx, %rax
	movq	%rax, (%r14)
	jmp	.LBB9_6
.LBB9_2:                                # %if.then.4
	movl	$0, (%rbx)
.LBB9_6:                                # %cleanup
	xorl	%eax, %eax
.LBB9_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	z11_enumerate_glyph, .Lfunc_end9-z11_enumerate_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	z11_glyph_info,@function
z11_glyph_info:                         # @z11_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, (%rsp)
	movl	$z11_glyph_info_aux, %r9d
	callq	z1_glyph_info_generic
	popq	%rdx
	retq
.Lfunc_end10:
	.size	z11_glyph_info, .Lfunc_end10-z11_glyph_info
	.cfi_endproc

	.align	16, 0x90
	.type	z11_glyph_outline,@function
z11_glyph_outline:                      # @z11_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 48
.Ltmp75:
	.cfi_offset %rbx, -48
.Ltmp76:
	.cfi_offset %r12, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	callq	z11_CIDMap_proc
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movl	%ecx, %eax
	movl	$3221225472, %edx       # imm = 0xC0000000
	addq	%rax, %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_type42_glyph_outline # TAILCALL
.Lfunc_end11:
	.size	z11_glyph_outline, .Lfunc_end11-z11_glyph_outline
	.cfi_endproc

	.align	16, 0x90
	.type	z11_get_glyph_index,@function
z11_get_glyph_index:                    # @z11_get_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 16
	callq	z11_CIDMap_proc
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovsl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end12:
	.size	z11_get_glyph_index, .Lfunc_end12-z11_get_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	z11_get_outline,@function
z11_get_outline:                        # @z11_get_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	712(%rdi), %ebp
	callq	*728(%rdi)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_4
# BB#1:                                 # %if.then
	addl	%ebp, %ebp
	movl	8(%rbx), %edx
	subl	%ebp, %edx
	jbe	.LBB13_2
# BB#3:                                 # %if.else
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	gs_glyph_data_substring
	jmp	.LBB13_4
.LBB13_2:                               # %if.then.4
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
	movq	%rbx, %rdi
	callq	gs_glyph_data_from_null
.LBB13_4:                               # %if.end.6
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	z11_get_outline, .Lfunc_end13-z11_get_outline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	z11_get_metrics,@function
z11_get_metrics:                        # @z11_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 112
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	712(%rbx), %ebp
	addl	%ebp, %ebp
	movl	%r12d, %r13d
	andl	$1, %r13d
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movl	%ebp, %eax
	sarl	$2, %eax
	cmpl	%eax, %r13d
	jge	.LBB14_3
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*728(%rbx)
	testl	%eax, %eax
	js	.LBB14_3
# BB#2:                                 # %lor.lhs.false.4
	cmpl	%ebp, 16(%rsp)
	jae	.LBB14_4
.LBB14_3:                               # %if.then
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movq	%r14, %rcx
	callq	*736(%rbx)
.LBB14_11:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_4:                               # %if.end
	testb	$6, %r12b
	je	.LBB14_6
# BB#5:                                 # %if.then.10
	movl	$2, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rcx
	callq	*736(%rbx)
	testl	%eax, %eax
	js	.LBB14_11
.LBB14_6:                               # %if.end.18
	testb	$2, %r12b
	jne	.LBB14_10
# BB#7:                                 # %if.then.21
	movslq	%ebp, %rax
	addq	8(%rsp), %rax
	leal	(,%r13,4), %ecx
	subq	%rcx, %rax
	movzbl	-2(%rax), %ecx
	shll	$8, %ecx
	movzbl	-1(%rax), %edx
	orl	%ecx, %edx
	movswl	%dx, %ecx
	movzbl	-4(%rax), %edx
	shll	$8, %edx
	movzbl	-3(%rax), %eax
	orl	%edx, %eax
	movl	512(%rbx), %edx
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	testl	%r13d, %r13d
	jne	.LBB14_8
# BB#9:                                 # %if.else
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%r14)
	movl	$0, 4(%r14)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 8(%r14)
	movl	$0, 12(%r14)
	jmp	.LBB14_10
.LBB14_8:                               # %if.then.43
	movl	$0, (%r14)
	negl	%ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%r14)
	movl	$0, 8(%r14)
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%r14)
.LBB14_10:                              # %if.end.66
	leaq	8(%rsp), %rdi
	movl	$.L.str.18, %esi
	callq	gs_glyph_data_free
	xorl	%eax, %eax
	jmp	.LBB14_11
.Lfunc_end14:
	.size	z11_get_metrics, .Lfunc_end14-z11_get_metrics
	.cfi_endproc

	.align	16, 0x90
	.type	z11_glyph_info_aux,@function
z11_glyph_info_aux:                     # @z11_glyph_info_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$3221225473, %eax       # imm = 0xC0000001
	cmpq	%rax, %rbp
	jb	.LBB15_2
# BB#1:                                 # %cond.true
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	leaq	(%rax,%rbp), %r9
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*720(%rbx)
	movslq	%eax, %r9
.LBB15_3:                               # %cond.end
	testl	%r9d, %r9d
	js	.LBB15_4
# BB#5:                                 # %if.end
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	%r14, %r8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_type42_glyph_info_by_gid # TAILCALL
.LBB15_4:                               # %cleanup
	movl	%r9d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	z11_glyph_info_aux, .Lfunc_end15-z11_glyph_info_aux
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.buildfont10"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.buildfont11"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.type11mapcid"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.fillCIDMap"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.fillIdentityCIDMap"
	.size	.L.str.4, 21

	.type	zfcid1_op_defs,@object  # @zfcid1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfcid1_op_defs
	.align	16
zfcid1_op_defs:
	.quad	.L.str
	.quad	zbuildfont10
	.quad	.L.str.1
	.quad	zbuildfont11
	.quad	.L.str.2
	.quad	ztype11mapcid
	.quad	.L.str.3
	.quad	zfillCIDMap
	.quad	.L.str.4
	.quad	zfillIdentityCIDMap
	.zero	16
	.size	zfcid1_op_defs, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"CIDFontName"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"MetricsCount"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"File"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"loca"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"glyf"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file_table_pos"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CIDMap"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%Type11BuildGlyph"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"subst_CID_on_WMode"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Ordering"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"zbuildfont11"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"release_subst_CID_on_WMode"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"z11_get_outline"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"z11_get_metrics"
	.size	.L.str.18, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
