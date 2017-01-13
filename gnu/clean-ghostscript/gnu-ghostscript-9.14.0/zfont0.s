	.text
	.file	"zfont0.bc"
	.align	16, 0x90
	.type	zbuildfont0,@function
zbuildfont0:                            # @zbuildfont0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 240
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r12
	movzbl	1(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	leaq	16(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_70
# BB#3:                                 # %lor.lhs.false
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_70
# BB#4:                                 # %lor.lhs.false.11
	movq	8(%rax), %rax
	addq	$-2, %rax
	cmpq	$7, %rax
	ja	.LBB0_70
# BB#5:                                 # %lor.lhs.false.19
	leaq	176(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_70
# BB#6:                                 # %lor.lhs.false.23
	movq	176(%rsp), %rcx
	movzwl	(%rcx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_70
# BB#7:                                 # %if.end.30
	movq	16(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, 104(%rsp)
	movups	(%rcx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	84(%rsp), %ecx
	movl	%ecx, 160(%rsp)
	testl	%ecx, %ecx
	je	.LBB0_16
# BB#8:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r13
	leaq	176(%rsp), %r15
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rdi
	leaq	80(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	array_get
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	font_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_69
# BB#10:                                # %if.end.45
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	176(%rsp), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB0_14
# BB#11:                                # %if.then.48
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	376(%rax), %eax
	leal	-7(%rax), %ecx
	movl	$-10, %ebp
	cmpl	$2, %ecx
	jb	.LBB0_69
# BB#12:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$3, %eax
	jne	.LBB0_14
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	104(%rsp), %eax
	orl	$4, %eax
	cmpl	$7, %eax
	jne	.LBB0_69
.LBB0_14:                               # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%rbx
	cmpl	160(%rsp), %ebx
	jb	.LBB0_9
# BB#15:                                # %for.cond.for.end_crit_edge
	movl	104(%rsp), %eax
.LBB0_16:                               # %for.end
	addl	$-3, %eax
	cmpl	$6, %eax
	ja	.LBB0_44
# BB#17:                                # %for.end
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_18:                               # %sw.bb
	leaq	176(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_19
# BB#21:                                # %do.body.3.i
	movq	176(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_43
# BB#22:                                # %do.end.i
	movq	8(%rax), %rax
	movl	$-15, %ebp
	cmpq	$255, %rax
	ja	.LBB0_43
# BB#23:                                # %do.end.17.i
	movb	%al, 108(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB0_43
.LBB0_1:                                # %if.then
	movq	%r12, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB0_69
.LBB0_70:                               # %cleanup
	movl	$-10, %ebp
.LBB0_69:                               # %cleanup.295
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_34:                               # %sw.bb.86
	leaq	16(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_39
# BB#35:                                # %lor.lhs.false.90
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB0_39
# BB#36:                                # %lor.lhs.false.97
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB0_39
# BB#37:                                # %lor.lhs.false.102
	movq	8(%rax), %rsi
	movzbl	(%rsi), %edi
	incl	%edi
	movl	%edi, 132(%rsp)
	cmpl	$4, %edi
	ja	.LBB0_39
# BB#38:                                # %lor.lhs.false.107
	decl	%ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	testl	%edx, %edx
	je	.LBB0_40
.LBB0_39:                               # %cleanup.120.thread
	movl	$-10, %ebp
	jmp	.LBB0_69
.LBB0_24:                               # %sw.bb.79
	leaq	176(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_28
# BB#25:                                # %do.body.3.i.88
	movq	176(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_69
# BB#26:                                # %do.end.i.91
	movq	8(%rax), %rax
	movl	$-15, %ebp
	cmpq	$255, %rax
	ja	.LBB0_69
# BB#27:                                # %ensure_char_entry.exit95.thread122
	movb	%al, 109(%rsp)
	jmp	.LBB0_29
.LBB0_41:                               # %sw.bb.124
	leaq	168(%rsp), %rdi
	movq	8(%r14), %rcx
	leaq	80(%rsp), %rsi
	movq	%r12, %rdx
	callq	ztype0_get_cmap
	jmp	.LBB0_42
.LBB0_19:                               # %if.then.i
	movq	$255, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	movb	$-1, 108(%rsp)
	leaq	368(%r14), %rcx
	leaq	16(%rsp), %rdx
	movl	$.L.str.3, %esi
.LBB0_20:                               # %sw.epilog
	movq	%r12, %rdi
	callq	dict_put_string
.LBB0_42:                               # %sw.epilog
	movl	%eax, %ebp
.LBB0_43:                               # %sw.epilog
	testl	%ebp, %ebp
	jns	.LBB0_44
	jmp	.LBB0_69
.LBB0_28:                               # %ensure_char_entry.exit95
	movq	$15, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	movb	$15, 109(%rsp)
	leaq	368(%r14), %rcx
	leaq	16(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	dict_put_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_69
.LBB0_29:                               # %if.then.83
	leaq	176(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_30
# BB#31:                                # %do.body.3.i.107
	movq	176(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_43
# BB#32:                                # %do.end.i.110
	movq	8(%rax), %rax
	movl	$-15, %ebp
	cmpq	$255, %rax
	ja	.LBB0_43
# BB#33:                                # %do.end.17.i.112
	movb	%al, 110(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB0_43
.LBB0_30:                               # %if.then.i.104
	movq	$14, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	movb	$14, 110(%rsp)
	leaq	368(%r14), %rcx
	leaq	16(%rsp), %rdx
	movl	$.L.str.5, %esi
	jmp	.LBB0_20
.LBB0_40:                               # %cleanup.120
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, 128(%rsp)
	incq	%rsi
	movq	%rsi, 112(%rsp)
	movl	%ecx, 120(%rsp)
.LBB0_44:                               # %if.end.131
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_45
# BB#46:                                # %if.else
	movq	16(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 48(%rsp)
	jmp	.LBB0_47
.LBB0_45:                               # %if.then.135
	movw	$3584, 48(%rsp)         # imm = 0xE00
.LBB0_47:                               # %if.end.138
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rsi
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	callq	build_proc_name_refs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_69
# BB#48:                                # %cleanup.cont.149
	movl	$0, (%rsp)
	leaq	64(%rsp), %rdx
	leaq	16(%rsp), %r9
	xorl	%ecx, %ecx
	movl	$st_gs_font_type0, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	build_gs_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_69
# BB#49:                                # %if.end.153
	movq	64(%rsp), %rax
	movq	$gs_type0_init_fstack, 248(%rax)
	movq	64(%rsp), %rax
	movq	$ztype0_define_font, 168(%rax)
	movq	64(%rsp), %rax
	movq	$ztype0_make_font, 176(%rax)
	movq	64(%rsp), %rax
	movq	$gs_type0_next_char_glyph, 256(%rax)
	movq	64(%rsp), %rax
	movq	$gs_font_map_glyph_to_unicode, 208(%rax)
	leaq	72(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB0_51
# BB#50:                                # %if.then.161
	movl	$3584, %eax             # imm = 0xE00
	addl	76(%r14), %eax
	movw	%ax, 16(%rsp)
	leaq	368(%r14), %rcx
	leaq	16(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	dict_put_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_65
.LBB0_51:                               # %if.end.175
	movq	64(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	get_GlyphNames2Unicode
	movq	64(%rsp), %rax
	movq	72(%rax), %r15
	movl	52(%r15), %esi
	movl	%esi, 144(%rsp)
	cmpl	$6, 104(%rsp)
	jne	.LBB0_53
# BB#52:                                # %if.then.181
	movl	$-15, %ebp
	cmpl	%esi, 128(%rsp)
	jae	.LBB0_65
.LBB0_53:                               # %if.end.190
	movq	8(%r14), %rdi
	movl	$4, %edx
	movl	$.L.str.11, %ecx
	callq	*88(%rdi)
	movq	%rax, 136(%rsp)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_65
# BB#54:                                # %for.cond.204.preheader
	cmpl	$0, 144(%rsp)
	je	.LBB0_60
# BB#55:                                # %for.body.208.lr.ph
	addq	$48, %r15
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r13
.LBB0_56:                               # %for.body.208
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	array_get
	movl	$-20, %eax
	movzbl	17(%rsp), %ecx
	cmpl	$11, %ecx
	jne	.LBB0_58
# BB#57:                                # %if.end.221
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	24(%rsp), %rcx
	movl	160(%rsp), %edx
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jae	.LBB0_58
# BB#59:                                # %for.inc.238
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	136(%rsp), %rax
	movl	%ecx, (%rax,%rbx,4)
	incq	%rbx
	cmpl	144(%rsp), %ebx
	jb	.LBB0_56
.LBB0_60:                               # %for.end.240
	movq	8(%r14), %rdi
	movl	160(%rsp), %esi
	movl	$st_gs_font_ptr_element, %edx
	movl	$.L.str.12, %ecx
	callq	*104(%rdi)
	movq	%rax, 152(%rsp)
	testq	%rax, %rax
	je	.LBB0_65
# BB#61:                                # %for.cond.253.preheader
	cmpl	$0, 160(%rsp)
	je	.LBB0_64
# BB#62:                                # %for.body.257.lr.ph
	xorl	%ebx, %ebx
	leaq	80(%rsp), %r15
	leaq	16(%rsp), %rbp
	leaq	176(%rsp), %r13
.LBB0_63:                               # %for.body.257
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	array_get
	movl	$.L.str.7, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	dict_find_string
	movq	176(%rsp), %rax
	movq	8(%rax), %rax
	movq	152(%rsp), %rcx
	movq	%rax, (%rcx,%rbx,8)
	incq	%rbx
	cmpl	160(%rsp), %ebx
	jb	.LBB0_63
.LBB0_64:                               # %for.end.270
	movq	64(%rsp), %rsi
	movq	168(%rsp), %rax
	movq	%rax, 440(%rsi)
	movups	104(%rsp), %xmm0
	movups	120(%rsp), %xmm1
	movups	136(%rsp), %xmm2
	movups	152(%rsp), %xmm3
	movups	%xmm3, 424(%rsi)
	movups	%xmm2, 408(%rsi)
	movups	%xmm1, 392(%rsi)
	movups	%xmm0, 376(%rsi)
	movq	%r14, %rdi
	callq	define_gs_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_69
	jmp	.LBB0_65
.LBB0_58:                               # %cleanup.235.thread
	movl	%eax, %ebp
.LBB0_65:                               # %fail
	movzbl	49(%rsp), %eax
	cmpl	$14, %eax
	jne	.LBB0_67
# BB#66:                                # %if.then.283
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %rbx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdx
	callq	names_enter_string
	addq	$368, %r14              # imm = 0x170
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	dict_undef
	jmp	.LBB0_68
.LBB0_67:                               # %if.else.288
	addq	$368, %r14              # imm = 0x170
	leaq	48(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	dict_put_string
.LBB0_68:                               # %if.end.291
	movq	64(%rsp), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
	jmp	.LBB0_69
.Lfunc_end0:
	.size	zbuildfont0, .Lfunc_end0-zbuildfont0
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_44
	.quad	.LBB0_44
	.quad	.LBB0_34
	.quad	.LBB0_18
	.quad	.LBB0_24
	.quad	.LBB0_41

	.text
	.align	16, 0x90
	.type	ztype0_define_font,@function
ztype0_define_font:                     # @ztype0_define_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	424(%rbx), %r14
	callq	gs_type0_define_font
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	cmpq	%r14, 424(%rbx)
	je	.LBB1_2
# BB#3:                                 # %if.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	ztype0_adjust_FDepVector # TAILCALL
.LBB1_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	ztype0_define_font, .Lfunc_end1-ztype0_define_font
	.cfi_endproc

	.align	16, 0x90
	.type	ztype0_make_font,@function
ztype0_make_font:                       # @ztype0_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r13, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rbx), %rax
	movq	424(%rax), %r13
	callq	zdefault_make_font
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %if.end
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	gs_type0_make_font
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end.4
	movq	(%rbx), %rdi
	xorl	%eax, %eax
	cmpq	%r13, 424(%rdi)
	je	.LBB2_3
# BB#4:                                 # %if.end.9
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	ztype0_adjust_FDepVector # TAILCALL
.LBB2_3:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	ztype0_make_font, .Lfunc_end2-ztype0_make_font
	.cfi_endproc

	.align	16, 0x90
	.type	ztype0_adjust_FDepVector,@function
ztype0_adjust_FDepVector:               # @ztype0_adjust_FDepVector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 64
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	16(%r14), %r15
	movq	424(%r14), %rbx
	movl	432(%r14), %r12d
	leaq	(%rsp), %rsi
	movl	$96, %edx
	movl	$.L.str.14, %r8d
	movq	%r15, %rdi
	movl	%r12d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB3_5
# BB#1:                                 # %if.end
	testl	%r12d, %r12d
	je	.LBB3_4
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rbp
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbp)
	movq	%r15, %rdi
	callq	imemory_new_mask
	movzwl	(%rbp), %ecx
	orl	%eax, %ecx
	movw	%cx, (%rbp)
	addq	$16, %rbp
	addq	$8, %rbx
	decl	%r12d
	jne	.LBB3_3
.LBB3_4:                                # %for.end
	movq	72(%r14), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%ecx, %ecx
	callq	dict_put_string
.LBB3_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ztype0_adjust_FDepVector, .Lfunc_end3-ztype0_adjust_FDepVector
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.buildfont0"
	.size	.L.str, 13

	.type	zfont0_op_defs,@object  # @zfont0_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont0_op_defs
	.align	16
zfont0_op_defs:
	.quad	.L.str
	.quad	zbuildfont0
	.zero	16
	.size	zfont0_op_defs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"FMapType"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FDepVector"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"EscChar"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ShiftIn"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ShiftOut"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"SubsVector"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FID"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%Type0BuildChar"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%Type0BuildGlyph"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"PrefEnc"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"buildfont0(Encoding)"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"buildfont0(FDepVector)"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"buildfont0(font)"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ztype0_adjust_matrix"
	.size	.L.str.14, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
